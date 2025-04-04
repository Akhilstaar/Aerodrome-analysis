#include "Aerodrome.h"
#include "parse.h"
using namespace std;

static void vector_init(VectorClock* vc, int size) {
    vc->clocks.resize(size, 0);
}

static void vector_join(VectorClock* dst, const VectorClock* src) {
    for(size_t i=0; i<dst->clocks.size(); i++) {
        dst->clocks[i] = std::max(dst->clocks[i], src->clocks[i]);
    }
}

static bool vector_leq(const VectorClock* a, const VectorClock* b) {
    return std::equal(a->clocks.begin(), a->clocks.end(), b->clocks.begin(),
        [](int ai, int bi) { return ai <= bi; });
}

static void check_and_get(AerodromeState* state, int tid, const VectorClock* clk) {
    TransactionState* txn = &state->transactions[tid];
    
    if(txn->active && vector_leq(&txn->begin_clock, clk)) {
        printf("CONFLICT DETECTED! Violation of conflict serializability\n");
        exit(1);
    }
    
    vector_join(&state->C[tid], clk);
}

void aerodrome_init(AerodromeState* state, int num_threads) {
    state->num_threads = num_threads;
    
    state->C.resize(num_threads);
    state->C_begin.resize(num_threads);
    state->transactions.resize(num_threads);
    
    for(int i=0; i<num_threads; i++) {
        vector_init(&state->C[i], num_threads);
        vector_init(&state->C_begin[i], num_threads);
        vector_init(&state->transactions[i].begin_clock, num_threads);
    }

    for(int i=0; i<num_threads; i++){
        state->C[i].clocks[i] = 1;
    }
}


void aerodrome_process_event(AerodromeState* state, const Event* event) {
    const int t = event->tid;
    TransactionState* txn = &state->transactions[t];
    
    switch(static_cast<EventType>(event->type)) {
        case EventType::THREAD_BEGIN: {
            int parent = event->parent_tid;
            vector_join(&state->C[t], &state->C[parent]);
            break;
        }
        
        case LOCK_ACQUIRE: {
            auto& lock = state->locks[event->addr];
            if(lock.last_rel_tid != t) {
                check_and_get(state, t, &lock.L);
            }
            break;
        }
        
        case LOCK_RELEASE: {
            auto& lock = state->locks[event->addr];
            lock.L = state->C[t];
            lock.last_rel_tid = t;
            break;
        }
        
        case READ: {
            auto& var = state->vars[event->addr];
            if(var.last_w_tid != t) {
                check_and_get(state, t, &var.W);
            }
            var.R[t] = state->C[t];
            break;
        }
        
        case WRITE: {
            auto& var = state->vars[event->addr];
            if(var.last_w_tid != t) {
                check_and_get(state, t, &var.W);
                for(int u=0; u<state->num_threads; u++) {
                    if(u != t) check_and_get(state, t, &var.R[u]);
                }
            }
            var.W = state->C[t];
            var.last_w_tid = t;
            break;
        }
        
        case TXN_BEGIN: {
            if(txn->nesting_level++ == 0) {
                txn->active = true;
                state->C[t].clocks[t]++;
                txn->begin_clock = state->C[t];
            }
            break;
        }
        
        case TXN_END: {
            if(--txn->nesting_level == 0) {
                txn->active = false;
                // Update resource clocks
                for(auto& [addr, lock] : state->locks) {
                    if(vector_leq(&txn->begin_clock, &lock.L)) {
                        vector_join(&lock.L, &state->C[t]);
                    }
                }
                for(auto& [addr, var] : state->vars) {
                    if(vector_leq(&txn->begin_clock, &var.W)) {
                        vector_join(&var.W, &state->C[t]);
                    }
                    for(int u=0; u<state->num_threads; u++) {
                        if(vector_leq(&txn->begin_clock, &var.R[u])) {
                            vector_join(&var.R[u], &state->C[t]);
                        }
                    }
                }
            }
            break;
        }
        
        case THREAD_END: {
            for(int u=0; u<state->num_threads; u++) {
                if(vector_leq(&txn->begin_clock, &state->C[u])) {
                    check_and_get(state, u, &state->C[t]);
                }
            }
            break;
        }
    }
}