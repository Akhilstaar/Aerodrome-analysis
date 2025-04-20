#include "parse.h"
#include <bits/stdc++.h>

using namespace std;

Trace parse_trace(const string& filename) {
    ifstream file(filename);
    Trace trace;
    string line;
    unordered_map<uint64_t, int> tid_counter;

    while (getline(file, line)) {
        Event event;
        event.line = -1;

        if (line.find("Thread begin:") != string::npos) {
            uint64_t parent, child;
            sscanf(line.c_str(), "Thread begin: Parent TID: %lu, Child TID: %lu", 
                  &parent, &child);
            event.type = EventType::THREAD_BEGIN;
            event.parent_tid = parent;
            event.tid = child;
        }
        else if (line.find("Thread ended:") != string::npos) {
            uint64_t tid;
            sscanf(line.c_str(), "Thread ended: TID: %lu", &tid);
            event.type = EventType::THREAD_END;
            event.tid = tid;
        }
        else if (line.find("Lock acquire:") != string::npos) {
            uint64_t tid, addr;
            sscanf(line.c_str(), "Lock acquire: TID: %lu, Lock address: %lx", 
                  &tid, &addr);
            event.type = EventType::LOCK_ACQUIRE;
            event.tid = tid;
            event.addr = addr;
        }
        else if (line.find("Lock release:") != string::npos) {
            uint64_t tid, addr;
            sscanf(line.c_str(), "Lock release: TID: %lu, Lock address: %lx",
                  &tid, &addr);
            event.type = EventType::LOCK_RELEASE;
            event.tid = tid;
            event.addr = addr;
        }
        else if (line.find("Event: TXN_BEGIN") != string::npos) {
            uint64_t tid;
            int line_num;
            sscanf(line.c_str(), "TID: %lu, Event: TXN_BEGIN Line: %d", &tid, &line_num);
            event.type = EventType::TXN_BEGIN;
            event.tid = tid;
            event.line = line_num;
        }
        else if (line.find("Event: TXN_END") != string::npos) {
            uint64_t tid;
            int line_num;
            sscanf(line.c_str(), "TID: %lu, Event: TXN_END Line: %d", &tid, &line_num);
            event.type = EventType::TXN_END;
            event.tid = tid;
            event.line = line_num;
        }
        else if (line.find("TID:") != string::npos) {
            uint64_t tid, addr;
            char type[10];
            int size, line_num;
            sscanf(line.c_str(), "TID: %lu, Event: %9s ADDR: %lx, Size (B): %d, Line: %d",
                  &tid, type, &addr, &size, &line_num);

            event.tid = tid;
            event.addr = addr;
            event.line = line_num;
            event.type = (string(type) == "READ") ? EventType::READ : EventType::WRITE;
        }

        // Map original TID to sequential ID
        if (trace.tid_map.find(event.tid) == trace.tid_map.end()) {
            trace.tid_map[event.tid] = trace.num_threads++;
        }
        if (event.type == EventType::THREAD_BEGIN) {
            if (trace.tid_map.find(event.parent_tid) == trace.tid_map.end()) {
                trace.tid_map[event.parent_tid] = trace.num_threads++;
            }
        }

        trace.events.push_back(event);
    } // khud nhi likha he pura

    return trace;
}

int get_mapped_tid(const Trace& trace, uint64_t orig_tid) {
    auto it = trace.tid_map.find(orig_tid);
    return (it != trace.tid_map.end()) ? it->second : -1;
}