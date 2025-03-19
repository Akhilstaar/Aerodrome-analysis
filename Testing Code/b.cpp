// No race

#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <mutex>
#include <pthread.h>

using std::cout;
using std::endl;

const uint32_t NUM_THREADS = 2;
const uint64_t ITERS = 1e2;
uint64_t counter = 0;
pthread_mutex_t mtx = PTHREAD_MUTEX_INITIALIZER;

struct thr_args
{
    uint16_t id;
};

void *thrBody(void *arguments)
{
    const struct thr_args *tmp = static_cast<struct thr_args *>(arguments);
    for (uint64_t i = 0; i < ITERS; ++i)
    {
        pthread_mutex_lock(&mtx);
        ++counter;
        pthread_mutex_unlock(&mtx);
    }
    pthread_exit(NULL);
}

int main()
{
    int error;
    pthread_t tid[NUM_THREADS];
    void *status;

    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

    struct thr_args args[NUM_THREADS] = {{0}};

    uint32_t i = 0;
    while (i < NUM_THREADS)
    {
        args[i].id = i;
        error =
            pthread_create(&tid[i], &attr, thrBody, static_cast<void *>(args + i));
        if (error != 0)
        {
            printf("\nThread can't be created : [%s]", strerror(error));
            exit(EXIT_FAILURE);
        }
        i++;
    }
    pthread_attr_destroy(&attr);

    i = 0;
    while (i < NUM_THREADS)
    {
        error = pthread_join(tid[i], &status);
        if (error)
        {
            printf("ERROR: return code from pthread_join() is %d\n", error);
            exit(EXIT_FAILURE);
        }
        i++;
    }

    cout << "Counter value: " << counter << "\n";

    return EXIT_SUCCESS;
}