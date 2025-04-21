#include <fstream>
#include <iostream>
#include <mutex>
#include <pthread.h>

// Use a function to ensure proper initialization order
static std::ofstream& getLogFile() {
    static std::ofstream getLogFile("trace.log", std::ios::app);
    return getLogFile;
}

static std::mutex logMutex;

extern "C" void logReadEvent(long long tid, void *addr, int size, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
   getLogFile()<< "TID: " << tid << ", Event: READ ADDR: " << addr << ", Size (B): " << size << ", Line: " << line << "\n";
}

extern "C" void logWriteEvent(long long tid, void *addr, int size, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
   getLogFile()<< "TID: " << tid << ", Event: WRITE ADDR: " << addr << ", Size (B): " << size << ", Line: " << line << "\n";
}

extern "C" void logAcquireEvent(long long tid, void *addr, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
   getLogFile()<< "Lock acquire: TID: " << tid << ", Lock address: " << addr << " at line " << line << "\n";
}

extern "C" void logReleaseEvent(long long tid, void *addr, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
   getLogFile()<< "Lock release: TID: " << tid << ", Lock address: " << addr << " at line " << line << "\n";
}

extern "C" void logForkEvent(long long parentTID, long long childTID, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
   getLogFile()<< "Thread begin: Parent TID: " << parentTID << ", Child TID: " << childTID << " at line " << line << "\n";
}

extern "C" void logJoinEvent(long long TID, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
   getLogFile()<< "Thread ended: TID: " << TID << " at line " << line << "\n";
}

extern "C" void logTxnBeginEvent(long long tid, int line) {
    try {
        std::lock_guard<std::mutex> guard(logMutex);
        getLogFile() << "TID: " << tid << ", Event: TXN_BEGIN Line: " << line << "\n";
        getLogFile().flush();
    } catch (const std::exception& e) {
        std::cerr << "Logging error: " << e.what() << std::endl;
    }
}

extern "C" void logTxnEndEvent(long long tid, int line) {
    try {
        std::lock_guard<std::mutex> guard(logMutex);
        getLogFile() << "TID: " << tid << ", Event: TXN_END Line: " << line << "\n";
        getLogFile().flush();
    } catch (const std::exception& e) {
        std::cerr << "Logging error: " << e.what() << std::endl;
    }
}
extern "C" void logAtomicBeginEvent(long long tid, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
   getLogFile()<< "TID: " << tid << ", Event: ATOMIC_BEGIN Line: " << line << "\n";
}

extern "C" void logAtomicEndEvent(long long tid, int line) {
    std::lock_guard<std::mutex> guard(logMutex);
   getLogFile()<< "TID: " << tid << ", Event: ATOMIC_END Line: " << line << "\n";
}