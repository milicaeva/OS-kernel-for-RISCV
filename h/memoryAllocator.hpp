#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"
#include "../lib/console.h"

#define ROUNDUP(size) (((size)+MEM_BLOCK_SIZE-1) & ~(MEM_BLOCK_SIZE-1))

class MemoryAllocator{
public:

    static void init();
    static void* mem_alloc(size_t size);
    static int mem_free (void* ptr);

    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;

    static void printMem();
    static const size_t DBlockSize;

private:

    struct DBlock {
        size_t size;
        DBlock* next;
        DBlock* prev;
    };

    MemoryAllocator()=default;

    static DBlock* headFull;
    static DBlock* headFree;
    static bool initialized;

    static void tryToJoin(DBlock* curr);
};

#endif
