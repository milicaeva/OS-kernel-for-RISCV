#include "../h/syscallC.hpp"
#include "../h/memoryAllocator.hpp"

void syscall(uint64 op_code, uint64 arg1 = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0) {
    __asm__ volatile("ecall");
}

void* mem_alloc (size_t size) {
    if (size==0) return nullptr;
    void volatile *retVal;
    uint64 numOfBlocks=ROUNDUP(size+MemoryAllocator::DBlockSize-1)/MEM_BLOCK_SIZE;
    syscall(MEM_ALLOC, numOfBlocks);
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    return (void*)retVal;
}

int mem_free(void* ptr) {
    syscall(MEM_FREE, (uint64)ptr);
    int volatile retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    return retVal;
}

int thread_create(thread_t *handle, void (*routine)(void *), void *arg) {
    void* stack=nullptr;
    if (routine) {
        stack=mem_alloc(DEFAULT_STACK_SIZE);
        if (!stack) return -1;
    }
    syscall(THREAD_CREATE, (uint64)handle, (uint64)routine, (uint64)arg, (uint64)stack);
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    return retVal;
}

int thread_exit() {
    syscall(THREAD_EXIT);
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    return retVal;
}

void thread_dispatch() {
    syscall(THREAD_DISPATCH);
}

int sem_open(sem_t* handle, unsigned init) {
    syscall(SEM_OPEN, (uint64)handle, init);
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    return retVal;
}

int sem_close(sem_t handle) {
    syscall(SEM_CLOSE, (uint64)handle);
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    return retVal;
}

int sem_wait(sem_t id) {
    syscall(SEM_WAIT, (uint64)id);
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    return retVal;
}

int sem_trywait(sem_t id) {
    syscall(SEM_TRYWAIT, (uint64)id);
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    return retVal;
}

int sem_signal(sem_t id) {
    syscall(SEM_SIGNAL, (uint64)id);
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    return retVal;
}

char getc() {
    syscall(GETC);
    char retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    return retVal;
}

void putc(char c) {
    syscall(PUTC, c);
}