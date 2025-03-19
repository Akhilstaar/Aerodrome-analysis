// Race

#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <mutex>
#include <thread>

using std::cout;
using std::endl;
using std::lock_guard;
using std::mutex;
using std::thread;

volatile uint64_t x = 0;

void reader() {
  while (x == 0) {
  }
  cout << "World" << endl;
}

void writer() {
  cout << "Hello, ";
  x = 1;
}

int main() {
  thread t2(writer);
  thread t1(reader);

  t2.join();
  t1.join();

  return EXIT_SUCCESS;
}