#ifndef PROJECT_BASE_V1_1_SEM_HPP
#define PROJECT_BASE_V1_1_SEM_HPP

#include "syscallC.hpp"
#include "../lib/hw.h"
#include "scheduler.hpp"
#include "tcb.hpp"

class Sem {
public:

    friend class Riscv;

    static int sem_open(sem_t* handle, unsigned init);
    static int sem_close(sem_t handle);
    static int sem_wait(sem_t);
    static int sem_signal(sem_t);
    static int sem_trywait(sem_t);

    void* operator new(size_t size);
    void operator delete(void* ptr);

private:

    explicit Sem(int c=1) : count(c), blocked() {}

    int count;
    List<TCB> blocked;
};


#endif
