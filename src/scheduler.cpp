#include "../h/scheduler.hpp"

TCB* Scheduler::head=nullptr;
TCB* Scheduler::tail=nullptr;

TCB *Scheduler::get() {

    if (!head) return nullptr;
    TCB* thread=head;
    head=head->schedulerNext;
    if (!head) tail=nullptr;
    thread->schedulerNext=nullptr;
    return thread;
}

void Scheduler::put(TCB *thread) {
    if (!head) head = tail = thread;
    else tail = tail -> schedulerNext = thread;
}

void *Scheduler::operator new(size_t size) {
    size_t numOfBlocks=ROUNDUP((size+MemoryAllocator::DBlockSize))/MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(numOfBlocks);
}

void Scheduler::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}
