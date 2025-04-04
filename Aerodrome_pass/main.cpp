#include "parse.h"
#include "Aerodrome.h"
#include <iostream>

int main(int argc, char* argv[]) {
    if (argc != 2) {
        cerr << "Usage: " << argv[0] << " <trace_file>\n";
        return 1;
    }
    Trace trace = parse_trace(argv[1]);
    
    AerodromeState state;
    aerodrome_init(&state, trace.num_threads);

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
            pevent.parent_tid = parent_mapped;
        }

        aerodrome_process_event(&state, &pevent);
    }

    aerodrome_cleanup(&state);
    cout << "Analysis completed successfully\n";
    return 0;
}