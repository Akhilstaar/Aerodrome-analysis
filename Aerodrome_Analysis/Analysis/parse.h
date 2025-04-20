#ifndef PARSE_H
#define PARSE_H

#include <bits/stdc++.h>
using namespace std;

enum EventType {
    THREAD_BEGIN,
    THREAD_END,
    READ,
    WRITE,
    LOCK_ACQUIRE,
    LOCK_RELEASE,
    TXN_BEGIN,
    TXN_END // i guess abhi nhi he
};

struct Event {
    EventType type;
    uint64_t tid;           
    uint64_t addr;           
    uint64_t parent_tid;     
    int line;               
};

struct Trace {
    std::vector<Event> events;
    std::unordered_map<uint64_t, int> tid_map; 
    int num_threads = 0;
};

Trace parse_trace(const std::string& filename);
int get_mapped_tid(const Trace& trace, uint64_t orig_tid);

#endif