#include "../h/sem.hpp"

int Sem::sem_open(sem_t *handle, unsigned int init) {
    *handle = new Sem((int)init);
    if (*handle == nullptr) return  -1;
    return 0;
}

int Sem::sem_close(sem_t handle) {
    if (!handle) return -1;
    while (handle->blocked.peek()) {
        TCB* thread = handle->blocked.get();
        thread->blocked=false;
        Scheduler::put(thread);
    }
    delete handle;
    return 0;
}

int Sem::sem_wait(sem_t handle) {
    if (!handle) return -1;
    handle->count--;
    if (handle->count<0) {
        TCB* oldRunning=TCB::running;
        oldRunning->setBlocked();
        handle->blocked.put(oldRunning);
        TCB::running=Scheduler::get();
        TCB::yield(oldRunning, TCB::running);
        if (!handle) return -1;
    }
    return 0;
}

int Sem::sem_signal(sem_t handle) {
    if (!handle) return -1;
    handle->count++;
    if (handle->count <= 0) {
        TCB* thread = handle->blocked.get();
        thread->blocked=false;
        Scheduler::put(thread);
    }
    return 0;
}

int Sem::sem_trywait(sem_t handle) {
    if (!handle) return -1;
    if (handle->count>0) return sem_wait(handle);
    return 0;
}

void *Sem::operator new(size_t size) {
    size_t numOfBlocks=ROUNDUP((size+MemoryAllocator::DBlockSize))/MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(numOfBlocks);
}

void Sem::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}
