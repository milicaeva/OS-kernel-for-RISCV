#ifndef PROJECT_BASE_V1_1_TCB_HPP
#define PROJECT_BASE_V1_1_TCB_HPP

#include "../lib/hw.h"
#include "memoryAllocator.hpp"

using body=void(*)(void*);

class TCB{

public:

    //friend class SEM;
    friend class Riscv;
    friend class Scheduler;

    static int id;
    static TCB* running;

    static int threadCreate(TCB** handle, body routine, void* arg, void* stack);
    static int threadExit();
    static void dispatch();

    bool getFinished() { return finished; }
    void setFinished() { finished=true; }

    ~TCB() { MemoryAllocator::mem_free(this->stack); }

    void* operator new(size_t size);
    void operator delete(void* ptr);

private:

    struct Context{
        uint64 ra;
        uint64 sp;
    };

    TCB(body routine, void* arg, void * stack );

    uint64 threadID;
    body routine;
    uint64* stack;
    void* arg;
    Context context;
    TCB* schedulerNext;

    bool finished;
    bool blocked;

    static void threadWrapper();
    static void contextSwitch(Context * oldContext, Context * newContext);
};

#endif
