#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"

MemoryAllocator::DBlock* MemoryAllocator::headFull = nullptr;
MemoryAllocator::DBlock* MemoryAllocator::headFree = nullptr;
bool MemoryAllocator::initialized = false;

const size_t MemoryAllocator::DBlockSize = sizeof(MemoryAllocator::DBlock);

void MemoryAllocator::init(){
    if(!initialized){
        headFree=(DBlock*)((char*)HEAP_START_ADDR);
        headFree->size=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR+1)/MEM_BLOCK_SIZE-1; //u BLOKOVIMA, slobodan prostor + header
        headFree->next = nullptr;
        headFree->prev  = nullptr;
        initialized=true;
    }
}

void* MemoryAllocator::mem_alloc(size_t size){ //broj blokova - uracunat header

    if(size <=0 || size>=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR)/MEM_BLOCK_SIZE) return nullptr;
    DBlock* curr=nullptr;

    for(curr = headFree; curr ; curr=curr->next){ //iteriramo kroz free

        if(curr->size<size) continue; //nema prostora, idi na sledece
        if(curr->size==size){ //ima tacno onoliko prostora koliki je blok
            if(curr->next) curr->next->prev=curr->prev;
            if(curr->prev) curr->prev->next=curr->next; //izbacen iz free liste
            if (curr == headFree) headFree = curr->next;
            curr->prev = curr->next = nullptr;

        }
        else{ //slucaj da ima prostora + viska
            curr->size-=size;
            curr=(DBlock*)((char*)curr+(curr->size*MEM_BLOCK_SIZE));
            curr->size=size;
            curr->prev=nullptr;
            curr->next =nullptr;

        }
        //ubaci u full listu

        if(!headFull){
            headFull=curr;
            return (char*)curr+DBlockSize;
        }

        if(headFull>curr) {
            curr->next=headFull;
            headFull->prev=curr;
            headFull=curr;
            return (char*)curr+DBlockSize;
        } //stavljamo na pocetak liste

        DBlock *currUsed=headFull;
        while(currUsed->next && currUsed->next<curr) currUsed=currUsed->next;
        curr->next=currUsed->next;
        if(currUsed->next) currUsed->next->prev=curr;
        curr->prev=currUsed;
        currUsed->next=curr;
        return (char*)curr+DBlockSize;
        //ubaciti na odgovarajuce mesto u full listi
        //currUsed je prethodnik curr
    }

    return nullptr;
}

int MemoryAllocator::mem_free (void* ptr){

    if(!ptr) return -1;
    ptr=(DBlock*)((char*)ptr-DBlockSize);
    for(DBlock* curr=headFull; curr || ptr<=curr; curr=curr->next){
        if(curr==ptr){ //curr izbacujemo iz full liste
            if(curr->next) curr->next->prev=curr->prev;
            if(curr->prev) curr->prev->next=curr->next;
            if (curr == headFull) headFull = curr->next;
            curr->prev = curr->next = nullptr;

            //treba curr(ptr) ubaciti u free listu

            if(!headFree){
                headFree=curr;
                return 0;
            }

            if(headFree>curr) {
                curr->next=headFree;
                headFree->prev=curr;
                headFree=curr;
                tryToJoin(headFree);
                return 0;
            } //stavljamo na pocetak liste

            DBlock *currFree=headFree;
            while(currFree->next && currFree->next<curr) currFree=currFree->next;
            curr->next=currFree->next;
            if(currFree->next) currFree->next->prev=curr;
            curr->prev=currFree;
            currFree->next=curr;
            tryToJoin(curr);
            tryToJoin(curr->prev);
            return 0;
        }
    }

    return -1; // 0 ako je ok -1 ako nije
}

void MemoryAllocator::tryToJoin(DBlock* curr){
    if(!curr) return;
    if(curr->next && (char*)curr+curr->size*MEM_BLOCK_SIZE == (char*)curr->next){
        curr->size+=curr->next->size;
        curr->next=curr->next->next;
        if(curr->next) curr->next->prev=curr;
    }
}

/*
void MemoryAllocator::printMem(){

    for (DBlock* blk = headFree; blk; blk=blk->next) {
        //printInt((uint64)blk);
        __putc('f');
        __putc('\n');
    }
    for (DBlock* blk = headFull; blk; blk=blk->next) {
        //printInt((uint64)blk);
        __putc('u');
        __putc('\n');
    }
}
*/
