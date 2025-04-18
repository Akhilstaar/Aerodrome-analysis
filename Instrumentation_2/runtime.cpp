#include <fstream>
#include <mutex>
#include <pthread.h>
#include <cstdint>
#include <iomanip>
#include <iostream>

static std::mutex TraceMutex;

// Use a function to get the trace file, ensuring initialization
static std::ofstream& getTraceFile() {
  static std::ofstream TraceFile("trace.log", std::ios::app);
  if (!TraceFile.is_open()) {
    std::cerr << "Error: Failed to open trace.log" << std::endl;
    std::exit(1);
  }
  return TraceFile;
}

extern "C" void logRead(uint64_t tid, void *addr, uint32_t size, uint32_t line) {
  std::lock_guard<std::mutex> lock(TraceMutex);
  std::ofstream& TraceFile = getTraceFile();
  TraceFile << "TID: " << tid << ", Event: READ, ADDR: " << std::hex << reinterpret_cast<uintptr_t>(addr)
            << ", Size (B): " << std::dec << size << ", Line: " << line << "\n";
  TraceFile.flush();
}

extern "C" void logWrite(uint64_t tid, void *addr, uint32_t size, uint32_t line) {
  std::lock_guard<std::mutex> lock(TraceMutex);
  std::ofstream& TraceFile = getTraceFile();
  TraceFile << "TID: " << tid << ", Event: WRITE, ADDR: " << std::hex << reinterpret_cast<uintptr_t>(addr)
            << ", Size (B): " << std::dec << size << ", Line: " << line << "\n";
  TraceFile.flush();
}

// extern "C" void logAcquire(uint64_t tid, void *lock, uint32_t line) {
//   std::lock_guard<std::mutex> lock(TraceMutex);
//   std::ofstream& TraceFile = getTraceFile();
//   TraceFile << "Lock acquire: TID: " << tid << ", Lock address: " << std::hex << reinterpret_cast<uintptr_t>(lock) << "\n";
//   TraceFile.flush();
// }

// extern "C" void logRelease(uint64_t tid, void *lock, uint32_t line) {
//   std::lock_guard<std::mutex> lock(TraceMutex);
//   std::ofstream& TraceFile = getTraceFile();
//   TraceFile << "Lock release: TID: " << tid << ", Lock address: " << std::hex << reinterpret_cast<uintptr_t>(lock) << "\n";
//   TraceFile.flush();
// }

extern "C" void logAcquire(uint64_t tid, void* lock_ptr, uint32_t line) {
    std::lock_guard<std::mutex> lock_guard(TraceMutex);
    std::ofstream& TraceFile = getTraceFile();
    TraceFile << "Lock acquire: TID: " << tid << ", Lock address: " << std::hex << reinterpret_cast<uintptr_t>(lock_ptr) << "\n";
    TraceFile.flush();
  }
  
  extern "C" void logRelease(uint64_t tid, void* lock_ptr, uint32_t line) {
    std::lock_guard<std::mutex> lock_guard(TraceMutex);
    std::ofstream& TraceFile = getTraceFile();
    TraceFile << "Lock release: TID: " << tid << ", Lock address: " << std::hex << reinterpret_cast<uintptr_t>(lock_ptr) << "\n";
    TraceFile.flush();
  }

extern "C" void logFork(uint64_t parentTid, uint64_t childTid, uint32_t line) {
  std::lock_guard<std::mutex> lock(TraceMutex);
  std::ofstream& TraceFile = getTraceFile();
  TraceFile << "Thread begin: Parent TID: " << parentTid << ", Child TID: " << childTid << "\n";
  TraceFile.flush();
}

extern "C" void logJoin(uint64_t tid, uint64_t childTid, uint32_t line) {
  std::lock_guard<std::mutex> lock(TraceMutex);
  std::ofstream& TraceFile = getTraceFile();
  TraceFile << "Thread join: TID: " << tid << ", Child TID: " << childTid << "\n";
  TraceFile.flush();
}

extern "C" void logThreadEnd(uint64_t tid, uint32_t line) {
  std::lock_guard<std::mutex> lock(TraceMutex);
  std::ofstream& TraceFile = getTraceFile();
  TraceFile << "Thread ended: TID: " << tid << "\n";
  TraceFile.flush();
}

extern "C" void logTxnBegin(uint64_t tid, uint32_t line) {
  std::lock_guard<std::mutex> lock(TraceMutex);
  std::ofstream& TraceFile = getTraceFile();
  TraceFile << "Transaction begin: TID: " << tid << ", Line: " << line << "\n";
  TraceFile.flush();
}

extern "C" void logTxnEnd(uint64_t tid, uint32_t line) {
  std::lock_guard<std::mutex> lock(TraceMutex);
  std::ofstream& TraceFile = getTraceFile();
  TraceFile << "Transaction end: TID: " << tid << ", Line: " << line << "\n";
  TraceFile.flush();
}