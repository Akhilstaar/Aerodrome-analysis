#ifndef AERODROME_H
#define AERODROME_H

#include "parse.h"
#include <bits/stdc++.h>
using namespace std;

typedef struct {
    vector<int> clocks;
} VectorClock;

typedef struct {
    VectorClock L;          
    int last_rel_tid = -1;  
} LockState;

typedef struct {
    VectorClock W;          
    std::vector<VectorClock> R; 
    int last_w_tid = -1;    
} VarState;

typedef struct {
    VectorClock begin_clock;
    int nesting_level = 0;
    bool active = false;
} TransactionState;

typedef struct {
    vector<VectorClock> C;         // Current clocks
    vector<VectorClock> C_begin;   // Transaction begin clocks
    vector<TransactionState> transactions; // doubt

    unordered_map<uint64_t, LockState> locks;
    unordered_map<uint64_t, VarState> vars;
    
    int num_threads;
} AerodromeState;

void aerodrome_init(AerodromeState* state, int num_threads);
void aerodrome_process_event(AerodromeState* state, const Event* event);
void aerodrome_cleanup(AerodromeState* state); // nhi chahiye

#endif