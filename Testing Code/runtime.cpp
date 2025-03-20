// runtime.cpp
#include <stdio.h>

extern "C" void logEvent(int eventType, void* addr, int line) {
    const char* eventNames[] = {
        "READ", "WRITE", "ACQUIRE", "RELEASE",
        "FORK", "JOIN", "ATOMIC_BEGIN", "ATOMIC_END"
    };
    printf("[%s] Address: %p, Line: %d\n", eventNames[eventType], addr, line);
}