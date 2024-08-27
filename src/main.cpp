#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/syscallC.hpp"

int main(){

    Riscv::writeStvec((uint64)&Riscv::supervisorTrap);
    MemoryAllocator::init();

    void* ptr1=mem_alloc(4);
    void* ptr2=mem_alloc(2);
    void* ptr3=mem_alloc(1);
    mem_free(ptr1);
    mem_free(ptr2);
    //mem_free(ptr3);

    ptr1=ptr2=ptr3;
    ptr2=ptr1;
    MemoryAllocator::printMem();
    return 0;
}
