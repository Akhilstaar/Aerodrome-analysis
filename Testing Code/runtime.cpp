// runtime.cpp
#include <fstream>
#include <iostream>
#include <mutex>
#include <thread>
#include <chrono>
#include <iomanip>

static std::ofstream logFile("program.log", std::ios::app);
static std::mutex logMutex;

extern "C" void logEvent(int eventType, void *addr, int line)
{
    const char *eventNames[] = {
        "READ", "WRITE", "ACQUIRE", "RELEASE",
        "FORK", "JOIN", "ATOMIC_BEGIN", "ATOMIC_END"};

    // Get thread ID
    std::thread::id threadId = std::this_thread::get_id();

    // Ensure thread safety while writing to log file
    std::lock_guard<std::mutex> guard(logMutex);

    if (eventType == 4) // FORK (Thread Begin)
    {
        logFile << "Thread begin: " << threadId << "\n";
    }
    else if (eventType == 5) // JOIN (Thread End)
    {
        logFile << "Thread ended: " << threadId << "\n";
    }
    else if (eventType == 2) // ACQUIRE (Lock Acquire)
    {
        logFile << "Lock acquire: TID: " << threadId << ", Lock address: " << addr << "\n";
    }
    else
    {
        logFile << "TID: " << threadId << ", "
                << "Event: " << eventNames[eventType] << " "
                << "ADDR: " << addr << ", "
                << "Line: " << line << "\n";
    }
}