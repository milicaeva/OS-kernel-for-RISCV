#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"

TCB* TCB::running = nullptr;
int TCB::id = 0;

TCB::TCB(body routine, void* arg, void * stack) : stack(routine!=nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr) {
    this->context = {
            (uint64)&TCB::threadWrapper, //ra
            routine == nullptr ? 0 : (uint64) &this->stack[ DEFAULT_STACK_SIZE ] //sp
    };
    this->routine=routine;
    this->arg=arg;
    this->finished=false; //menja se u wrapperu
    this->blocked=false; //menja se u sem
    this->threadID=++id;
}

int TCB::threadCreate(TCB ** handle, body routine, void* arg, void* stack) { //handle je ADRESA rucke
    *handle=new TCB(routine, arg, stack);
    if(!*handle) return -1;
    if(routine) Scheduler::put(*handle);
    return 0;
}

int TCB::threadExit() {
    if(!running || !running->getFinished()) return -1;
    thread_dispatch();
    return 0;
}

void TCB::threadWrapper() {
    if (running->routine) {
        Riscv::popSppSpie();
        running->routine(running->arg);
        running->setFinished();
    }
    TCB::threadExit();
}

void TCB::dispatch(){
    TCB *oldRunning=running;
    if (!running->finished && !running->blocked) {
        Scheduler::put(oldRunning);
    }
    if (running->finished) delete running;
    running=Scheduler::get();
    yield(oldRunning, running);
}

void TCB::yield(TCB* oldRunning, TCB* newRunning) {

    Riscv::push();
    contextSwitch(&oldRunning->context, &running->context);
    Riscv::pop();
}

void *TCB::operator new(size_t size) {
    size_t numOfBlocks=ROUNDUP((size+MemoryAllocator::DBlockSize))/MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(numOfBlocks);
}

void TCB::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}