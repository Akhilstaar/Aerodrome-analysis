#include <pthread.h>
#include <unistd.h>
#include <iostream>

int shared_var = 0;
pthread_mutex_t mutex;
long sharedCounter = 0;

void common_read() {
    int tmp1, tmp2;
    for (int i = 0; i < 100; i++) {
        tmp1 = shared_var;
        tmp2 = shared_var;
    }
}

void shared_write() {
    for (int i = 0; i < 100; i++) {
        shared_var = 1;
    }
}

void* thread_func(void* arg) {
    for (int i = 0; i < 10; i++) {
        common_read();  
    }
    return NULL;
}

void* thread_func1(void* arg) {
    for (int i = 0; i < 10; i++) {
        shared_write();
    }
    return NULL;
}

void* dummy_thread_func(void* arg) {
    pthread_mutex_lock(&mutex);
    for (long i = 0; i < 10; ++i) {
        sharedCounter++;
    }
    pthread_mutex_unlock(&mutex);
    return nullptr;
}

int main() {
    pthread_t thread1, thread2, thread3;

    pthread_mutex_init(&mutex, NULL);

    pthread_create(&thread1, NULL, thread_func, NULL); 
    pthread_create(&thread2, NULL, thread_func1, NULL);
    pthread_create(&thread3, NULL, dummy_thread_func, NULL);

    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL);
    pthread_join(thread3, NULL);

    pthread_mutex_destroy(&mutex);

    std::cout << "Final shared_var: " << shared_var << std::endl;
    std::cout << "Final sharedCounter: " << sharedCounter << std::endl;

    return 0;
}