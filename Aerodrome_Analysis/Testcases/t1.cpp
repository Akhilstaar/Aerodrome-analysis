#include <iostream>
#include <pthread.h>

int shared_var = 0;
pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;

void* thread_func(void* arg) {
    pthread_mutex_lock(&lock);       // LOCK_ACQUIRE should be logged here
    shared_var++;
    pthread_mutex_unlock(&lock);     // LOCK_RELEASE should be logged here
    return nullptr;
}

int main() {
    pthread_t thread1, thread2;
    pthread_create(&thread1, nullptr, thread_func, nullptr);
    pthread_create(&thread2, nullptr, thread_func, nullptr);
    pthread_join(thread1, nullptr);
    pthread_join(thread2, nullptr);
    std::cout << "Final shared_var: " << shared_var << std::endl;
    return 0;
}
