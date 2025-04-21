#include "parse.h"
#include "Aerodrome.h"
#include <iostream>

int main(int argc, char* argv[]) {
    if (argc != 2) {
        cerr << "Usage: " << argv[0] << " <trace_file>\n";
        return 1;
    }
    Trace trace = parse_trace(argv[1]);
    // trace.num_threads--; // removing tid=0 parent of main process.

    // num theads print
    // cout << "Number of threads: " << trace.num_threads << endl;
    AerodromeState state;
    aerodrome_init(&state, trace.num_threads);
    int loglineno=1;
    for (const Event& event : trace.events) {
        int mapped_tid = get_mapped_tid(trace, event.tid);
        if (mapped_tid == -1) {
            cerr << "Error: Unmapped TID " << event.tid << endl;
            continue;
        }

        Event pevent;
        pevent.tid = mapped_tid;
        pevent.addr = event.addr;
        pevent.type = event.type;
        
        if (event.type == EventType::THREAD_BEGIN) {
            int parent_mapped = get_mapped_tid(trace, event.parent_tid);
            if (parent_mapped == -1) {
                cerr << "Error: Unmapped parent TID " << event.parent_tid << endl;
                continue;
            }
            pevent.parent_tid = parent_mapped;
        }


        aerodrome_process_event(&state, &pevent, loglineno);
        loglineno++;
    }

    // aerodrome_cleanup(&state);
    cout << "Analysis completed successfully\n";
    return 0;
}