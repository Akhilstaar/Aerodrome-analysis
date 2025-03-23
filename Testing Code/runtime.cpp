// runtime.cpp
#include <fstream>
#include <iostream>
#include <mutex>
#include <thread>
#include <iomanip>

static std::ofstream logFile("program.log", std::ios::app);
static std::mutex logMutex;

extern "C" void logReadEvent(void *addr, int size, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
    logFile << "TID: " << std::this_thread::get_id() << ", Event: READ ADDR: " << addr << ", Size (B): " << size << ", Line: " << line << "\n";
}

extern "C" void logWriteEvent(void *addr, int size, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
    logFile << "TID: " << std::this_thread::get_id() << ", Event: WRITE ADDR: " << addr << ", Size (B): " << size << ", Line: " << line << "\n";
}

extern "C" void logAcquireEvent(void *addr, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
    logFile << "Lock acquire: TID: " << std::this_thread::get_id() << ", Lock address: " << addr << " at line " << line << "\n";
}

extern "C" void logReleaseEvent(void *addr, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
    logFile << "Lock release: TID: " << std::this_thread::get_id() << ", Lock address: " << addr << " at line " << line << "\n";
}

// TODO: Currently Returns parent id, fix it to return both child TID & parent TID
extern "C" void logForkEvent(int line) {
    std::lock_guard<std::mutex> guard(logMutex);
    logFile << "Thread begin: " << std::this_thread::get_id() << " at line " << line << "\n";
}

extern "C" void logJoinEvent(int line) {
    std::lock_guard<std::mutex> guard(logMutex);
    logFile << "Thread ended: " << std::this_thread::get_id() << " at line " << line << "\n";
}

extern "C" void logAtomicBeginEvent(int line) {
    std::lock_guard<std::mutex> guard(logMutex);
    logFile << "TID: " << std::this_thread::get_id() << ", Event: ATOMIC_BEGIN Line: " << line << "\n";
}

extern "C" void logAtomicEndEvent(int line) {
    std::lock_guard<std::mutex> guard(logMutex);
    logFile << "TID: " << std::this_thread::get_id() << ", Event: ATOMIC_END Line: " << line << "\n";
}