#include <fstream>

static std::ofstream logFile("program.log");

extern "C" void logEvent(int eventType, void *addr, int line)
{
    const char *eventNames[] = {
        "READ", "WRITE", "ACQUIRE", "RELEASE",
        "FORK", "JOIN", "ATOMIC_BEGIN", "ATOMIC_END"};

    logFile << "[" << eventNames[eventType] << "] "
            << "Address: " << addr << ", "
            << "Line: " << line << "\n";
}