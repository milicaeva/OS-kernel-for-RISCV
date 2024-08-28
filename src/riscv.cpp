#include "../lib/hw.h"
#include "../h/riscv.hpp"
#include "../h/syscallC.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/tcb.hpp"

void Riscv::interruptHandler(){ //PREKIDNA RUTINA

    uint64 scause = readScause();

    if(scause==SOFTWARE) { //timer
        clearSip(bitmaskSip::SSIP);
    }
    else if(scause==EXTERNAL){
        console_handler();
    }
    else if(scause==U_ECALL || scause==S_ECALL){
        uint64 volatile oc, a1, a2, a3, a4;

        uint64 sepc=readSepc()+4;
        uint64 sstatus=readSstatus();
        __asm__ volatile("mv %0, a0" : "=r"(oc)); // operation code
        __asm__ volatile("mv %0, a1" : "=r"(a1));
        __asm__ volatile("mv %0, a2" : "=r"(a2));
        __asm__ volatile("mv %0, a3" : "=r"(a3));
        __asm__ volatile("mv %0, a4" : "=r"(a4));

        switch(oc){
            case MEM_ALLOC:
                MemoryAllocator::mem_alloc((size_t)a1);
                break;
            case MEM_FREE:
                MemoryAllocator::mem_free((void *)a1);
                break;
            case THREAD_CREATE:
                TCB::threadCreate((thread_t *)a1, (body)a2, (void *)a3, (void *)a4);
                break;
            case THREAD_EXIT:
                TCB::threadExit();
                break;
            case THREAD_DISPATCH:
                TCB::dispatch();
                break;
            case SEM_OPEN:

                break;
            case SEM_CLOSE:

                break;
            case SEM_WAIT:

                break;
            case SEM_SIGNAL:

                break;
            case SEM_TRYWAIT:

                break;
            case GETC:
                __getc();
                break;
            case PUTC:
                __putc(a1);
                break;
        }
        writeSepc(sepc);
        writeSstatus(sstatus);
    }
}

void Riscv::popSppSpie(){
    __asm__ volatile ("csrw sepc, ra");
    Riscv::clearSstatus(bitmaskSstatus::SPP);
    __asm__ volatile ("sret");
}