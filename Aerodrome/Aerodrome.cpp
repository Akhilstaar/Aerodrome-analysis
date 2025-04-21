#include "Aerodrome.h"
#include "parse.h"
#include <iomanip>
#include <sstream>
using namespace std;

static const char *event_type_to_str(EventType type)
{
    static const char *names[] = {
        "THREAD_BEGIN", "THREAD_END",
        "READ", "WRITE",
        "LOCK_ACQUIRE", "LOCK_RELEASE",
        "TXN_BEGIN", "TXN_END"};
    return names[static_cast<int>(type)];
}

static string format_vector(const VectorClock *vc)
{
    stringstream ss;
    ss << "[";
    for (size_t i = 0; i < vc->clocks.size(); ++i)
    {
        if (i > 0)
            ss << ", ";
        ss << vc->clocks[i];
    }
    ss << "]";
    return ss.str();
}

static void vector_init(VectorClock *vc, int size)
{
    vc->clocks.resize(size, 0);
}

static void vector_join(VectorClock *dst, const VectorClock *src)
{
    for (size_t i = 0; i < dst->clocks.size(); i++)
    {
        dst->clocks[i] = max(dst->clocks[i], src->clocks[i]);
    }
}

static bool vector_leq(const VectorClock *a, const VectorClock *b)
{
    return equal(a->clocks.begin(), a->clocks.end(), b->clocks.begin(),
                 [](int ai, int bi)
                 { return ai <= bi; });
}

static void check_and_get(int loglineno, AerodromeState *state, int tid, const VectorClock *clk, EventType conflict_type, uint64_t addr = 0)
{
    TransactionState *txn = &state->transactions[tid];

    if (txn->active && vector_leq(&txn->begin_clock, clk))
    {
        vector<int> conflicting_threads;
        for (size_t i = 0; i < clk->clocks.size(); ++i)
        {
            if (txn->begin_clock.clocks[i] < clk->clocks[i])
            {
                conflicting_threads.push_back(i);
            }
        }

        stringstream ss;
        ss << "\n=== DATA RACE DETECTED ===\n";
        ss << "  Operation:    " << event_type_to_str(conflict_type) << "\n";
        ss << "  Thread:       " << tid << "\n";
        ss << "  Log Line No.:       " << loglineno << "\n";

        if (addr != 0)
        {
            ss << "  Address:      0x" << hex << addr << dec << "\n";
        }

        ss << "  Conflicting with threads: [";
        for (size_t i = 0; i < conflicting_threads.size(); ++i)
        {
            if (i > 0)
                ss << ", ";
            ss << conflicting_threads[i];
        }
        ss << "]\n";

        ss << "  Transaction begin clock: " << format_vector(&txn->begin_clock) << "\n";
        ss << "  Resource clock:          " << format_vector(clk) << "\n";
        ss << "=============================\n";

        cerr << ss.str();
        exit(EXIT_FAILURE);
    }

    vector_join(&state->C[tid], clk);
}

void aerodrome_init(AerodromeState *state, int num_threads)
{
    state->num_threads = num_threads;

    state->C.resize(num_threads);
    state->C_begin.resize(num_threads);
    state->transactions.resize(num_threads);

    for (int i = 0; i < num_threads; ++i)
    {
        vector_init(&state->C[i], num_threads);
        vector_init(&state->C_begin[i], num_threads);
        vector_init(&state->transactions[i].begin_clock, num_threads);
    }

    for (int i = 0; i < num_threads; ++i)
    {
        state->C[i].clocks[i] = 1;
    }
}

static VarState &get_var_state(AerodromeState *state, uint64_t addr)
{
    auto &var = state->vars[addr];
    if (var.W.clocks.empty())
    {
        var.W.clocks.resize(state->num_threads, 0);
        var.R.resize(state->num_threads);
        for (auto &vc : var.R)
        {
            vc.clocks.resize(state->num_threads, 0);
        }
        var.last_w_tid = -1;
    }
    return var;
}

static LockState &get_lock_state(AerodromeState *state, uint64_t addr)
{
    auto &lock = state->locks[addr];
    if (lock.L.clocks.empty())
    {
        lock.L.clocks.resize(state->num_threads, 0);
        lock.last_rel_tid = -1;
    }
    return lock;
}

void aerodrome_process_event(AerodromeState *state, const Event *event, int loglineno)
{
    const int t = event->tid;
    TransactionState *txn = &state->transactions[t];

    switch (static_cast<EventType>(event->type))
    {
    case THREAD_BEGIN:
    {
        int parent = event->parent_tid;
        vector_join(&state->C[t], &state->C[parent]);
        break;
    }

    case LOCK_ACQUIRE:
    {
        auto &lock = get_lock_state(state, event->addr);
        if (lock.last_rel_tid != t)
        {
            check_and_get(loglineno, state, t, &lock.L, EventType::LOCK_ACQUIRE, event->addr);
        }
        break;
    }

    case LOCK_RELEASE:
    {
        auto &lock = get_lock_state(state, event->addr);
        lock.L = state->C[t];
        lock.last_rel_tid = t;
        break;
    }

    case READ:
    {
        auto &var = get_var_state(state, event->addr);
        if (var.last_w_tid != t)
        {
            check_and_get(loglineno, state, t, &var.W, EventType::READ, event->addr);
        }
        var.R[t] = state->C[t];
        break;
    }

    case WRITE:
    {
        auto &var = get_var_state(state, event->addr);
        if (var.last_w_tid != t)
        {
            check_and_get(loglineno, state, t, &var.W, EventType::WRITE, event->addr);
        }
        for (int u = 0; u < state->num_threads; ++u)
        {
            if (u != t)
                check_and_get(loglineno, state, t, &var.R[u], EventType::WRITE, event->addr);
        }
        var.W = state->C[t];
        var.last_w_tid = t;
        break;
    }

    case TXN_BEGIN:
    {
        if (txn->nesting_level++ == 0)
        {
            txn->active = true;
            state->C[t].clocks[t]++;
            txn->begin_clock = state->C[t];
        }

        break;
    }

    case TXN_END:
    {
        if (--txn->nesting_level == 0)
        {
            txn->active = false;

            for (int u = 0; u < state->num_threads; ++u)
            {
                if (u != t && vector_leq(&txn->begin_clock, &state->C[u]))
                {
                    check_and_get(loglineno, state, u, &state->C[t], EventType::TXN_END);
                }
            }

            for (auto &[addr, lock] : state->locks)
            {
                if (vector_leq(&txn->begin_clock, &lock.L))
                {
                    vector_join(&lock.L, &state->C[t]);
                }
            }

            for (auto &[addr, var] : state->vars)
            {

                if (vector_leq(&txn->begin_clock, &var.W))
                {
                    vector_join(&var.W, &state->C[t]);
                }
                for (int u = 0; u < state->num_threads; ++u)
                {
                    if (vector_leq(&txn->begin_clock, &var.R[u]))
                    {
                        vector_join(&var.R[u], &state->C[t]);
                    }
                }
            }
        }
        break;
    }

        // case THREAD_END: {
        //     for(int u = 0; u < state->num_threads; ++u) {
        //         if(vector_leq(&txn->begin_clock, &state->C[u])) {
        //             check_and_get(loglineno, state, u, &state->C[t], EventType::THREAD_END);
        //         }
        //     }
        //     break;
        // }

    case THREAD_END:
    {
        int u = event->parent_tid; // Assuming parent_tid is the joined thread
        check_and_get(loglineno, state, t, &state->C[u], EventType::THREAD_END);
        break;
    }
    }
}