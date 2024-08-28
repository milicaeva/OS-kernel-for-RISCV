#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"

void workerA(void *) {
    for (int i = 0; i < 3; i++) {
        putc('A');
        thread_dispatch();
    }
}

void workerB(void*) {
    for (int i = 0; i < 7; i++){
        putc('B');
        thread_dispatch();
    }
}

void workerC(void*) {
    for (int i = 0; i < 5; i++){
        putc('C');
        thread_dispatch();
    }
}

thread_t threads[5];

int main(){

    Riscv::writeStvec((uint64)&Riscv::supervisorTrap);
    MemoryAllocator::init();

    thread_create(&threads[0], nullptr, nullptr); // main

    TCB::running = threads[0];

    thread_create(&threads[1], &workerA, nullptr);
    thread_create(&threads[2], &workerB, nullptr);
    thread_create(&threads[3], &workerC, nullptr);

    while(1){
        putc('M');
        thread_dispatch();
    }
    return 0;
}
