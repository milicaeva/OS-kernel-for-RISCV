
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	61813103          	ld	sp,1560(sp) # 80004618 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	395010ef          	jal	ra,80001bb0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv4pushEv>:

.global _ZN5Riscv4pushEv
.type _ZN5Riscv4pushEv, @function

_ZN5Riscv4pushEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    80001004:	00213823          	sd	sp,16(sp)
    80001008:	00313c23          	sd	gp,24(sp)
    8000100c:	02413023          	sd	tp,32(sp)
    80001010:	02513423          	sd	t0,40(sp)
    80001014:	02613823          	sd	t1,48(sp)
    80001018:	02713c23          	sd	t2,56(sp)
    8000101c:	04813023          	sd	s0,64(sp)
    80001020:	04913423          	sd	s1,72(sp)
    80001024:	04a13823          	sd	a0,80(sp)
    80001028:	04b13c23          	sd	a1,88(sp)
    8000102c:	06c13023          	sd	a2,96(sp)
    80001030:	06d13423          	sd	a3,104(sp)
    80001034:	06e13823          	sd	a4,112(sp)
    80001038:	06f13c23          	sd	a5,120(sp)
    8000103c:	09013023          	sd	a6,128(sp)
    80001040:	09113423          	sd	a7,136(sp)
    80001044:	09213823          	sd	s2,144(sp)
    80001048:	09313c23          	sd	s3,152(sp)
    8000104c:	0b413023          	sd	s4,160(sp)
    80001050:	0b513423          	sd	s5,168(sp)
    80001054:	0b613823          	sd	s6,176(sp)
    80001058:	0b713c23          	sd	s7,184(sp)
    8000105c:	0d813023          	sd	s8,192(sp)
    80001060:	0d913423          	sd	s9,200(sp)
    80001064:	0da13823          	sd	s10,208(sp)
    80001068:	0db13c23          	sd	s11,216(sp)
    8000106c:	0fc13023          	sd	t3,224(sp)
    80001070:	0fd13423          	sd	t4,232(sp)
    80001074:	0fe13823          	sd	t5,240(sp)
    80001078:	0ff13c23          	sd	t6,248(sp)
    ret
    8000107c:	00008067          	ret

0000000080001080 <_ZN5Riscv3popEv>:
.type _ZN5Riscv3popEv, @function

_ZN5Riscv3popEv:
    .irp index, 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001080:	01013103          	ld	sp,16(sp)
    80001084:	01813183          	ld	gp,24(sp)
    80001088:	02013203          	ld	tp,32(sp)
    8000108c:	02813283          	ld	t0,40(sp)
    80001090:	03013303          	ld	t1,48(sp)
    80001094:	03813383          	ld	t2,56(sp)
    80001098:	04013403          	ld	s0,64(sp)
    8000109c:	04813483          	ld	s1,72(sp)
    800010a0:	05013503          	ld	a0,80(sp)
    800010a4:	05813583          	ld	a1,88(sp)
    800010a8:	06013603          	ld	a2,96(sp)
    800010ac:	06813683          	ld	a3,104(sp)
    800010b0:	07013703          	ld	a4,112(sp)
    800010b4:	07813783          	ld	a5,120(sp)
    800010b8:	08013803          	ld	a6,128(sp)
    800010bc:	08813883          	ld	a7,136(sp)
    800010c0:	09013903          	ld	s2,144(sp)
    800010c4:	09813983          	ld	s3,152(sp)
    800010c8:	0a013a03          	ld	s4,160(sp)
    800010cc:	0a813a83          	ld	s5,168(sp)
    800010d0:	0b013b03          	ld	s6,176(sp)
    800010d4:	0b813b83          	ld	s7,184(sp)
    800010d8:	0c013c03          	ld	s8,192(sp)
    800010dc:	0c813c83          	ld	s9,200(sp)
    800010e0:	0d013d03          	ld	s10,208(sp)
    800010e4:	0d813d83          	ld	s11,216(sp)
    800010e8:	0e013e03          	ld	t3,224(sp)
    800010ec:	0e813e83          	ld	t4,232(sp)
    800010f0:	0f013f03          	ld	t5,240(sp)
    800010f4:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f8:	10010113          	addi	sp,sp,256
    ret
    800010fc:	00008067          	ret

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv @function

_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    80001104:	00113423          	sd	ra,8(sp)
    80001108:	00213823          	sd	sp,16(sp)
    8000110c:	00313c23          	sd	gp,24(sp)
    80001110:	02413023          	sd	tp,32(sp)
    80001114:	02513423          	sd	t0,40(sp)
    80001118:	02613823          	sd	t1,48(sp)
    8000111c:	02713c23          	sd	t2,56(sp)
    80001120:	04813023          	sd	s0,64(sp)
    80001124:	04913423          	sd	s1,72(sp)
    80001128:	04b13c23          	sd	a1,88(sp)
    8000112c:	06c13023          	sd	a2,96(sp)
    80001130:	06d13423          	sd	a3,104(sp)
    80001134:	06e13823          	sd	a4,112(sp)
    80001138:	06f13c23          	sd	a5,120(sp)
    8000113c:	09013023          	sd	a6,128(sp)
    80001140:	09113423          	sd	a7,136(sp)
    80001144:	09213823          	sd	s2,144(sp)
    80001148:	09313c23          	sd	s3,152(sp)
    8000114c:	0b413023          	sd	s4,160(sp)
    80001150:	0b513423          	sd	s5,168(sp)
    80001154:	0b613823          	sd	s6,176(sp)
    80001158:	0b713c23          	sd	s7,184(sp)
    8000115c:	0d813023          	sd	s8,192(sp)
    80001160:	0d913423          	sd	s9,200(sp)
    80001164:	0da13823          	sd	s10,208(sp)
    80001168:	0db13c23          	sd	s11,216(sp)
    8000116c:	0fc13023          	sd	t3,224(sp)
    80001170:	0fd13423          	sd	t4,232(sp)
    80001174:	0fe13823          	sd	t5,240(sp)
    80001178:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv16interruptHandlerEv
    8000117c:	530000ef          	jal	ra,800016ac <_ZN5Riscv16interruptHandlerEv>

    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001180:	00813083          	ld	ra,8(sp)
    80001184:	01013103          	ld	sp,16(sp)
    80001188:	01813183          	ld	gp,24(sp)
    8000118c:	02013203          	ld	tp,32(sp)
    80001190:	02813283          	ld	t0,40(sp)
    80001194:	03013303          	ld	t1,48(sp)
    80001198:	03813383          	ld	t2,56(sp)
    8000119c:	04013403          	ld	s0,64(sp)
    800011a0:	04813483          	ld	s1,72(sp)
    800011a4:	05813583          	ld	a1,88(sp)
    800011a8:	06013603          	ld	a2,96(sp)
    800011ac:	06813683          	ld	a3,104(sp)
    800011b0:	07013703          	ld	a4,112(sp)
    800011b4:	07813783          	ld	a5,120(sp)
    800011b8:	08013803          	ld	a6,128(sp)
    800011bc:	08813883          	ld	a7,136(sp)
    800011c0:	09013903          	ld	s2,144(sp)
    800011c4:	09813983          	ld	s3,152(sp)
    800011c8:	0a013a03          	ld	s4,160(sp)
    800011cc:	0a813a83          	ld	s5,168(sp)
    800011d0:	0b013b03          	ld	s6,176(sp)
    800011d4:	0b813b83          	ld	s7,184(sp)
    800011d8:	0c013c03          	ld	s8,192(sp)
    800011dc:	0c813c83          	ld	s9,200(sp)
    800011e0:	0d013d03          	ld	s10,208(sp)
    800011e4:	0d813d83          	ld	s11,216(sp)
    800011e8:	0e013e03          	ld	t3,224(sp)
    800011ec:	0e813e83          	ld	t4,232(sp)
    800011f0:	0f013f03          	ld	t5,240(sp)
    800011f4:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800011f8:	10010113          	addi	sp,sp,256

    800011fc:	10200073          	sret

0000000080001200 <main>:
#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/syscallC.hpp"

int main(){
    80001200:	fe010113          	addi	sp,sp,-32
    80001204:	00113c23          	sd	ra,24(sp)
    80001208:	00813823          	sd	s0,16(sp)
    8000120c:	00913423          	sd	s1,8(sp)
    80001210:	01213023          	sd	s2,0(sp)
    80001214:	02010413          	addi	s0,sp,32

    Riscv::writeStvec((uint64)&Riscv::supervisorTrap);
    80001218:	00003797          	auipc	a5,0x3
    8000121c:	3f87b783          	ld	a5,1016(a5) # 80004610 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void Riscv::writeStvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    80001220:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    80001224:	00000097          	auipc	ra,0x0
    80001228:	0ec080e7          	jalr	236(ra) # 80001310 <_ZN15MemoryAllocator4initEv>

    void* ptr1=mem_alloc(4);
    8000122c:	00400513          	li	a0,4
    80001230:	00000097          	auipc	ra,0x0
    80001234:	5f0080e7          	jalr	1520(ra) # 80001820 <_Z9mem_allocm>
    80001238:	00050913          	mv	s2,a0
    void* ptr2=mem_alloc(2);
    8000123c:	00200513          	li	a0,2
    80001240:	00000097          	auipc	ra,0x0
    80001244:	5e0080e7          	jalr	1504(ra) # 80001820 <_Z9mem_allocm>
    80001248:	00050493          	mv	s1,a0
    void* ptr3=mem_alloc(1);
    8000124c:	00100513          	li	a0,1
    80001250:	00000097          	auipc	ra,0x0
    80001254:	5d0080e7          	jalr	1488(ra) # 80001820 <_Z9mem_allocm>
    mem_free(ptr1);
    80001258:	00090513          	mv	a0,s2
    8000125c:	00000097          	auipc	ra,0x0
    80001260:	624080e7          	jalr	1572(ra) # 80001880 <_Z8mem_freePv>
    mem_free(ptr2);
    80001264:	00048513          	mv	a0,s1
    80001268:	00000097          	auipc	ra,0x0
    8000126c:	618080e7          	jalr	1560(ra) # 80001880 <_Z8mem_freePv>
    //mem_free(ptr3);

    ptr1=ptr2=ptr3;
    ptr2=ptr1;
    MemoryAllocator::printMem();
    80001270:	00000097          	auipc	ra,0x0
    80001274:	3bc080e7          	jalr	956(ra) # 8000162c <_ZN15MemoryAllocator8printMemEv>
    return 0;
}
    80001278:	00000513          	li	a0,0
    8000127c:	01813083          	ld	ra,24(sp)
    80001280:	01013403          	ld	s0,16(sp)
    80001284:	00813483          	ld	s1,8(sp)
    80001288:	00013903          	ld	s2,0(sp)
    8000128c:	02010113          	addi	sp,sp,32
    80001290:	00008067          	ret

0000000080001294 <_Z8printInti>:
bool MemoryAllocator::initialized = false;

char digits[] = "0123456789";

void printInt(int x)
{
    80001294:	fd010113          	addi	sp,sp,-48
    80001298:	02113423          	sd	ra,40(sp)
    8000129c:	02813023          	sd	s0,32(sp)
    800012a0:	00913c23          	sd	s1,24(sp)
    800012a4:	03010413          	addi	s0,sp,48
    char buf[16];
    int i;

    i = 0;
    800012a8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % 10];
    800012ac:	00a00693          	li	a3,10
    800012b0:	02d5663b          	remw	a2,a0,a3
    800012b4:	00003717          	auipc	a4,0x3
    800012b8:	33c70713          	addi	a4,a4,828 # 800045f0 <digits>
    800012bc:	00c70733          	add	a4,a4,a2
    800012c0:	00074703          	lbu	a4,0(a4)
    800012c4:	fe040613          	addi	a2,s0,-32
    800012c8:	009607b3          	add	a5,a2,s1
    800012cc:	0014849b          	addiw	s1,s1,1
    800012d0:	fee78823          	sb	a4,-16(a5)
    }while((x /= 10) != 0);
    800012d4:	02d5453b          	divw	a0,a0,a3
    800012d8:	fc051ae3          	bnez	a0,800012ac <_Z8printInti+0x18>

    while(--i >= 0)
    800012dc:	fff4849b          	addiw	s1,s1,-1
    800012e0:	0004ce63          	bltz	s1,800012fc <_Z8printInti+0x68>
        __putc(buf[i]);
    800012e4:	fe040793          	addi	a5,s0,-32
    800012e8:	009787b3          	add	a5,a5,s1
    800012ec:	ff07c503          	lbu	a0,-16(a5)
    800012f0:	00003097          	auipc	ra,0x3
    800012f4:	97c080e7          	jalr	-1668(ra) # 80003c6c <__putc>
    800012f8:	fe5ff06f          	j	800012dc <_Z8printInti+0x48>
}
    800012fc:	02813083          	ld	ra,40(sp)
    80001300:	02013403          	ld	s0,32(sp)
    80001304:	01813483          	ld	s1,24(sp)
    80001308:	03010113          	addi	sp,sp,48
    8000130c:	00008067          	ret

0000000080001310 <_ZN15MemoryAllocator4initEv>:

const size_t MemoryAllocator::DBlockSize = sizeof(MemoryAllocator::DBlock);

void MemoryAllocator::init(){
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00813423          	sd	s0,8(sp)
    80001318:	01010413          	addi	s0,sp,16
    if(!initialized){
    8000131c:	00003797          	auipc	a5,0x3
    80001320:	3547c783          	lbu	a5,852(a5) # 80004670 <_ZN15MemoryAllocator11initializedE>
    80001324:	04079863          	bnez	a5,80001374 <_ZN15MemoryAllocator4initEv+0x64>
        headFree=(DBlock*)((char*)HEAP_START_ADDR);
    80001328:	00003797          	auipc	a5,0x3
    8000132c:	2e07b783          	ld	a5,736(a5) # 80004608 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001330:	0007b683          	ld	a3,0(a5)
    80001334:	00003717          	auipc	a4,0x3
    80001338:	33c70713          	addi	a4,a4,828 # 80004670 <_ZN15MemoryAllocator11initializedE>
    8000133c:	00d73423          	sd	a3,8(a4)
        headFree->size=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR+1)/MEM_BLOCK_SIZE-1; //u BLOKOVIMA, slobodan prostor + header
    80001340:	00003797          	auipc	a5,0x3
    80001344:	2e07b783          	ld	a5,736(a5) # 80004620 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001348:	0007b783          	ld	a5,0(a5)
    8000134c:	40d787b3          	sub	a5,a5,a3
    80001350:	04078793          	addi	a5,a5,64
    80001354:	0067d793          	srli	a5,a5,0x6
    80001358:	fff78793          	addi	a5,a5,-1
    8000135c:	00f6b023          	sd	a5,0(a3)
        headFree->next = nullptr;
    80001360:	00873783          	ld	a5,8(a4)
    80001364:	0007b423          	sd	zero,8(a5)
        headFree->prev  = nullptr;
    80001368:	0007b823          	sd	zero,16(a5)
        initialized=true;
    8000136c:	00100793          	li	a5,1
    80001370:	00f70023          	sb	a5,0(a4)
    }
}
    80001374:	00813403          	ld	s0,8(sp)
    80001378:	01010113          	addi	sp,sp,16
    8000137c:	00008067          	ret

0000000080001380 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size){ //broj blokova - uracunat header
    80001380:	ff010113          	addi	sp,sp,-16
    80001384:	00813423          	sd	s0,8(sp)
    80001388:	01010413          	addi	s0,sp,16

    if(size <=0 || size>=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR)/MEM_BLOCK_SIZE) return nullptr;
    8000138c:	10050e63          	beqz	a0,800014a8 <_ZN15MemoryAllocator9mem_allocEm+0x128>
    80001390:	00050793          	mv	a5,a0
    80001394:	00003717          	auipc	a4,0x3
    80001398:	28c73703          	ld	a4,652(a4) # 80004620 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000139c:	00073703          	ld	a4,0(a4)
    800013a0:	00003697          	auipc	a3,0x3
    800013a4:	2686b683          	ld	a3,616(a3) # 80004608 <_GLOBAL_OFFSET_TABLE_+0x8>
    800013a8:	0006b683          	ld	a3,0(a3)
    800013ac:	40d70733          	sub	a4,a4,a3
    800013b0:	03f70713          	addi	a4,a4,63
    800013b4:	00675713          	srli	a4,a4,0x6
    800013b8:	0ee57c63          	bgeu	a0,a4,800014b0 <_ZN15MemoryAllocator9mem_allocEm+0x130>
    DBlock* curr=nullptr;

    for(curr = headFree; curr ; curr=curr->next){ //iteriramo kroz free
    800013bc:	00003697          	auipc	a3,0x3
    800013c0:	2bc6b683          	ld	a3,700(a3) # 80004678 <_ZN15MemoryAllocator8headFreeE>
    800013c4:	00068513          	mv	a0,a3
    800013c8:	06050263          	beqz	a0,8000142c <_ZN15MemoryAllocator9mem_allocEm+0xac>

        if(curr->size<size) continue; //nema prostora, idi na sledece
    800013cc:	00053703          	ld	a4,0(a0) # 1000 <_entry-0x7ffff000>
    800013d0:	06f76463          	bltu	a4,a5,80001438 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        if(curr->size==size){ //ima tacno onoliko prostora koliki je blok
    800013d4:	06f70663          	beq	a4,a5,80001440 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            if (curr == headFree) headFree = curr->next;
            curr->prev = curr->next = nullptr;

        }
        else{ //slucaj da ima prostora + viska
            curr->size-=size;
    800013d8:	40f70733          	sub	a4,a4,a5
    800013dc:	00e53023          	sd	a4,0(a0)
            curr=(DBlock*)((char*)curr+(curr->size*MEM_BLOCK_SIZE));
    800013e0:	00671713          	slli	a4,a4,0x6
    800013e4:	00e50533          	add	a0,a0,a4
            curr->size=size;
    800013e8:	00f53023          	sd	a5,0(a0)
            curr->prev=nullptr;
    800013ec:	00053823          	sd	zero,16(a0)
            curr->next =nullptr;
    800013f0:	00053423          	sd	zero,8(a0)

        }
        //ubaci u full listu

        if(!headFull){
    800013f4:	00003797          	auipc	a5,0x3
    800013f8:	28c7b783          	ld	a5,652(a5) # 80004680 <_ZN15MemoryAllocator8headFullE>
    800013fc:	08078263          	beqz	a5,80001480 <_ZN15MemoryAllocator9mem_allocEm+0x100>
            headFull=curr;
            return (char*)curr+DBlockSize;
        }

        if(headFull>curr) {
    80001400:	08f56863          	bltu	a0,a5,80001490 <_ZN15MemoryAllocator9mem_allocEm+0x110>
            headFull=curr;
            return (char*)curr+DBlockSize;
        } //stavljamo na pocetak liste

        DBlock *currUsed=headFull;
        while(currUsed->next && currUsed->next<curr) currUsed=currUsed->next;
    80001404:	00078713          	mv	a4,a5
    80001408:	0087b783          	ld	a5,8(a5)
    8000140c:	00078463          	beqz	a5,80001414 <_ZN15MemoryAllocator9mem_allocEm+0x94>
    80001410:	fea7eae3          	bltu	a5,a0,80001404 <_ZN15MemoryAllocator9mem_allocEm+0x84>
        curr->next=currUsed->next;
    80001414:	00f53423          	sd	a5,8(a0)
        if(currUsed->next) currUsed->next->prev=curr;
    80001418:	00078463          	beqz	a5,80001420 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    8000141c:	00a7b823          	sd	a0,16(a5)
        curr->prev=currUsed;
    80001420:	00e53823          	sd	a4,16(a0)
        currUsed->next=curr;
    80001424:	00a73423          	sd	a0,8(a4)
        return (char*)curr+DBlockSize;
    80001428:	01850513          	addi	a0,a0,24
        //ubaciti na odgovarajuce mesto u full listi
        //currUsed je prethodnik curr
    }

    return nullptr;
}
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret
    for(curr = headFree; curr ; curr=curr->next){ //iteriramo kroz free
    80001438:	00853503          	ld	a0,8(a0)
    8000143c:	f8dff06f          	j	800013c8 <_ZN15MemoryAllocator9mem_allocEm+0x48>
            if(curr->next) curr->next->prev=curr->prev;
    80001440:	00853783          	ld	a5,8(a0)
    80001444:	00078663          	beqz	a5,80001450 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
    80001448:	01053703          	ld	a4,16(a0)
    8000144c:	00e7b823          	sd	a4,16(a5)
            if(curr->prev) curr->prev->next=curr->next; //izbacen iz free liste
    80001450:	01053783          	ld	a5,16(a0)
    80001454:	00078663          	beqz	a5,80001460 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80001458:	00853703          	ld	a4,8(a0)
    8000145c:	00e7b423          	sd	a4,8(a5)
            if (curr == headFree) headFree = curr->next;
    80001460:	00d50863          	beq	a0,a3,80001470 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->prev = curr->next = nullptr;
    80001464:	00053423          	sd	zero,8(a0)
    80001468:	00053823          	sd	zero,16(a0)
    8000146c:	f89ff06f          	j	800013f4 <_ZN15MemoryAllocator9mem_allocEm+0x74>
            if (curr == headFree) headFree = curr->next;
    80001470:	00853783          	ld	a5,8(a0)
    80001474:	00003717          	auipc	a4,0x3
    80001478:	20f73223          	sd	a5,516(a4) # 80004678 <_ZN15MemoryAllocator8headFreeE>
    8000147c:	fe9ff06f          	j	80001464 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
            headFull=curr;
    80001480:	00003797          	auipc	a5,0x3
    80001484:	20a7b023          	sd	a0,512(a5) # 80004680 <_ZN15MemoryAllocator8headFullE>
            return (char*)curr+DBlockSize;
    80001488:	01850513          	addi	a0,a0,24
    8000148c:	fa1ff06f          	j	8000142c <_ZN15MemoryAllocator9mem_allocEm+0xac>
            curr->next=headFull;
    80001490:	00f53423          	sd	a5,8(a0)
            headFull->prev=curr;
    80001494:	00a7b823          	sd	a0,16(a5)
            headFull=curr;
    80001498:	00003797          	auipc	a5,0x3
    8000149c:	1ea7b423          	sd	a0,488(a5) # 80004680 <_ZN15MemoryAllocator8headFullE>
            return (char*)curr+DBlockSize;
    800014a0:	01850513          	addi	a0,a0,24
    800014a4:	f89ff06f          	j	8000142c <_ZN15MemoryAllocator9mem_allocEm+0xac>
    if(size <=0 || size>=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR)/MEM_BLOCK_SIZE) return nullptr;
    800014a8:	00000513          	li	a0,0
    800014ac:	f81ff06f          	j	8000142c <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800014b0:	00000513          	li	a0,0
    800014b4:	f79ff06f          	j	8000142c <_ZN15MemoryAllocator9mem_allocEm+0xac>

00000000800014b8 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>:
    }

    return -1; // 0 ako je ok -1 ako nije
}

void MemoryAllocator::tryToJoin(DBlock* curr){
    800014b8:	ff010113          	addi	sp,sp,-16
    800014bc:	00813423          	sd	s0,8(sp)
    800014c0:	01010413          	addi	s0,sp,16
    if(!curr) return;
    800014c4:	00050e63          	beqz	a0,800014e0 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    if(curr->next && (char*)curr+curr->size*MEM_BLOCK_SIZE == (char*)curr->next){
    800014c8:	00853783          	ld	a5,8(a0)
    800014cc:	00078a63          	beqz	a5,800014e0 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    800014d0:	00053683          	ld	a3,0(a0)
    800014d4:	00669713          	slli	a4,a3,0x6
    800014d8:	00e50733          	add	a4,a0,a4
    800014dc:	00e78863          	beq	a5,a4,800014ec <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x34>
        curr->size+=curr->next->size;
        curr->next=curr->next->next;
        if(curr->next) curr->next->prev=curr;
    }
}
    800014e0:	00813403          	ld	s0,8(sp)
    800014e4:	01010113          	addi	sp,sp,16
    800014e8:	00008067          	ret
        curr->size+=curr->next->size;
    800014ec:	0007b703          	ld	a4,0(a5)
    800014f0:	00e686b3          	add	a3,a3,a4
    800014f4:	00d53023          	sd	a3,0(a0)
        curr->next=curr->next->next;
    800014f8:	0087b783          	ld	a5,8(a5)
    800014fc:	00f53423          	sd	a5,8(a0)
        if(curr->next) curr->next->prev=curr;
    80001500:	fe0780e3          	beqz	a5,800014e0 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    80001504:	00a7b823          	sd	a0,16(a5)
    80001508:	fd9ff06f          	j	800014e0 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>

000000008000150c <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!ptr) return -1;
    8000150c:	10050c63          	beqz	a0,80001624 <_ZN15MemoryAllocator8mem_freeEPv+0x118>
int MemoryAllocator::mem_free (void* ptr){
    80001510:	fe010113          	addi	sp,sp,-32
    80001514:	00113c23          	sd	ra,24(sp)
    80001518:	00813823          	sd	s0,16(sp)
    8000151c:	00913423          	sd	s1,8(sp)
    80001520:	02010413          	addi	s0,sp,32
    ptr=(DBlock*)((char*)ptr-DBlockSize);
    80001524:	fe850513          	addi	a0,a0,-24
    for(DBlock* curr=headFull; curr || ptr<=curr; curr=curr->next){
    80001528:	00003797          	auipc	a5,0x3
    8000152c:	1587b783          	ld	a5,344(a5) # 80004680 <_ZN15MemoryAllocator8headFullE>
    80001530:	00078493          	mv	s1,a5
    80001534:	00c0006f          	j	80001540 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
        if(curr==ptr){ //curr izbacujemo iz full liste
    80001538:	00a48c63          	beq	s1,a0,80001550 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
    for(DBlock* curr=headFull; curr || ptr<=curr; curr=curr->next){
    8000153c:	0084b483          	ld	s1,8(s1)
    80001540:	fe049ce3          	bnez	s1,80001538 <_ZN15MemoryAllocator8mem_freeEPv+0x2c>
    80001544:	fea4fae3          	bgeu	s1,a0,80001538 <_ZN15MemoryAllocator8mem_freeEPv+0x2c>
    return -1; // 0 ako je ok -1 ako nije
    80001548:	fff00513          	li	a0,-1
    8000154c:	0800006f          	j	800015cc <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
            if(curr->next) curr->next->prev=curr->prev;
    80001550:	0084b703          	ld	a4,8(s1)
    80001554:	00070663          	beqz	a4,80001560 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    80001558:	0104b683          	ld	a3,16(s1)
    8000155c:	00d73823          	sd	a3,16(a4)
            if(curr->prev) curr->prev->next=curr->next;
    80001560:	0104b703          	ld	a4,16(s1)
    80001564:	00070663          	beqz	a4,80001570 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    80001568:	0084b683          	ld	a3,8(s1)
    8000156c:	00d73423          	sd	a3,8(a4)
            if (curr == headFull) headFull = curr->next;
    80001570:	06f48863          	beq	s1,a5,800015e0 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
            curr->prev = curr->next = nullptr;
    80001574:	0004b423          	sd	zero,8(s1)
    80001578:	0004b823          	sd	zero,16(s1)
            if(!headFree){
    8000157c:	00003797          	auipc	a5,0x3
    80001580:	0fc7b783          	ld	a5,252(a5) # 80004678 <_ZN15MemoryAllocator8headFreeE>
    80001584:	06078663          	beqz	a5,800015f0 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
            if(headFree>curr) {
    80001588:	06f4ec63          	bltu	s1,a5,80001600 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
            while(currFree->next && currFree->next<curr) currFree=currFree->next;
    8000158c:	00078713          	mv	a4,a5
    80001590:	0087b783          	ld	a5,8(a5)
    80001594:	00078463          	beqz	a5,8000159c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80001598:	fe97eae3          	bltu	a5,s1,8000158c <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            curr->next=currFree->next;
    8000159c:	00f4b423          	sd	a5,8(s1)
            if(currFree->next) currFree->next->prev=curr;
    800015a0:	00078463          	beqz	a5,800015a8 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    800015a4:	0097b823          	sd	s1,16(a5)
            curr->prev=currFree;
    800015a8:	00e4b823          	sd	a4,16(s1)
            currFree->next=curr;
    800015ac:	00973423          	sd	s1,8(a4)
            tryToJoin(curr);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	f04080e7          	jalr	-252(ra) # 800014b8 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
            tryToJoin(curr->prev);
    800015bc:	0104b503          	ld	a0,16(s1)
    800015c0:	00000097          	auipc	ra,0x0
    800015c4:	ef8080e7          	jalr	-264(ra) # 800014b8 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
            return 0;
    800015c8:	00000513          	li	a0,0
}
    800015cc:	01813083          	ld	ra,24(sp)
    800015d0:	01013403          	ld	s0,16(sp)
    800015d4:	00813483          	ld	s1,8(sp)
    800015d8:	02010113          	addi	sp,sp,32
    800015dc:	00008067          	ret
            if (curr == headFull) headFull = curr->next;
    800015e0:	0084b783          	ld	a5,8(s1)
    800015e4:	00003717          	auipc	a4,0x3
    800015e8:	08f73e23          	sd	a5,156(a4) # 80004680 <_ZN15MemoryAllocator8headFullE>
    800015ec:	f89ff06f          	j	80001574 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
                headFree=curr;
    800015f0:	00003797          	auipc	a5,0x3
    800015f4:	0897b423          	sd	s1,136(a5) # 80004678 <_ZN15MemoryAllocator8headFreeE>
                return 0;
    800015f8:	00000513          	li	a0,0
    800015fc:	fd1ff06f          	j	800015cc <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
                curr->next=headFree;
    80001600:	00f4b423          	sd	a5,8(s1)
                headFree->prev=curr;
    80001604:	0097b823          	sd	s1,16(a5)
                headFree=curr;
    80001608:	00003797          	auipc	a5,0x3
    8000160c:	0697b823          	sd	s1,112(a5) # 80004678 <_ZN15MemoryAllocator8headFreeE>
                tryToJoin(headFree);
    80001610:	00048513          	mv	a0,s1
    80001614:	00000097          	auipc	ra,0x0
    80001618:	ea4080e7          	jalr	-348(ra) # 800014b8 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
                return 0;
    8000161c:	00000513          	li	a0,0
    80001620:	fadff06f          	j	800015cc <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
    if(!ptr) return -1;
    80001624:	fff00513          	li	a0,-1
}
    80001628:	00008067          	ret

000000008000162c <_ZN15MemoryAllocator8printMemEv>:

void MemoryAllocator::printMem(){
    8000162c:	fe010113          	addi	sp,sp,-32
    80001630:	00113c23          	sd	ra,24(sp)
    80001634:	00813823          	sd	s0,16(sp)
    80001638:	00913423          	sd	s1,8(sp)
    8000163c:	02010413          	addi	s0,sp,32

    for (DBlock* blk = headFree; blk; blk=blk->next) {
    80001640:	00003497          	auipc	s1,0x3
    80001644:	0384b483          	ld	s1,56(s1) # 80004678 <_ZN15MemoryAllocator8headFreeE>
    80001648:	02048263          	beqz	s1,8000166c <_ZN15MemoryAllocator8printMemEv+0x40>
        //printInt((uint64)blk);
        __putc('f');
    8000164c:	06600513          	li	a0,102
    80001650:	00002097          	auipc	ra,0x2
    80001654:	61c080e7          	jalr	1564(ra) # 80003c6c <__putc>
        __putc('\n');
    80001658:	00a00513          	li	a0,10
    8000165c:	00002097          	auipc	ra,0x2
    80001660:	610080e7          	jalr	1552(ra) # 80003c6c <__putc>
    for (DBlock* blk = headFree; blk; blk=blk->next) {
    80001664:	0084b483          	ld	s1,8(s1)
    80001668:	fe1ff06f          	j	80001648 <_ZN15MemoryAllocator8printMemEv+0x1c>
    }
    for (DBlock* blk = headFull; blk; blk=blk->next) {
    8000166c:	00003497          	auipc	s1,0x3
    80001670:	0144b483          	ld	s1,20(s1) # 80004680 <_ZN15MemoryAllocator8headFullE>
    80001674:	02048263          	beqz	s1,80001698 <_ZN15MemoryAllocator8printMemEv+0x6c>
        //printInt((uint64)blk);
        __putc('u');
    80001678:	07500513          	li	a0,117
    8000167c:	00002097          	auipc	ra,0x2
    80001680:	5f0080e7          	jalr	1520(ra) # 80003c6c <__putc>
        __putc('\n');
    80001684:	00a00513          	li	a0,10
    80001688:	00002097          	auipc	ra,0x2
    8000168c:	5e4080e7          	jalr	1508(ra) # 80003c6c <__putc>
    for (DBlock* blk = headFull; blk; blk=blk->next) {
    80001690:	0084b483          	ld	s1,8(s1)
    80001694:	fe1ff06f          	j	80001674 <_ZN15MemoryAllocator8printMemEv+0x48>
    }
}
    80001698:	01813083          	ld	ra,24(sp)
    8000169c:	01013403          	ld	s0,16(sp)
    800016a0:	00813483          	ld	s1,8(sp)
    800016a4:	02010113          	addi	sp,sp,32
    800016a8:	00008067          	ret

00000000800016ac <_ZN5Riscv16interruptHandlerEv>:
#include "../h/riscv.hpp"
#include "../h/syscallC.hpp"
#include "../h/memoryAllocator.hpp"


void Riscv::interruptHandler(){ //PREKIDNA RUTINA
    800016ac:	fa010113          	addi	sp,sp,-96
    800016b0:	04113c23          	sd	ra,88(sp)
    800016b4:	04813823          	sd	s0,80(sp)
    800016b8:	04913423          	sd	s1,72(sp)
    800016bc:	05213023          	sd	s2,64(sp)
    800016c0:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    800016c4:	142027f3          	csrr	a5,scause
    800016c8:	fcf43423          	sd	a5,-56(s0)
    return value;
    800016cc:	fc843703          	ld	a4,-56(s0)

    uint64 scause = readScause();

    if(scause==SOFTWARE) { //timer
    800016d0:	fff00793          	li	a5,-1
    800016d4:	03f79793          	slli	a5,a5,0x3f
    800016d8:	00178793          	addi	a5,a5,1
    800016dc:	08f70a63          	beq	a4,a5,80001770 <_ZN5Riscv16interruptHandlerEv+0xc4>
        clearSip(bitmaskSip::SSIP);
    }
    else if(scause==EXTERNAL){
    800016e0:	fff00793          	li	a5,-1
    800016e4:	03f79793          	slli	a5,a5,0x3f
    800016e8:	00978793          	addi	a5,a5,9
    800016ec:	0af70263          	beq	a4,a5,80001790 <_ZN5Riscv16interruptHandlerEv+0xe4>
        console_handler();
    }
    else if(scause==U_ECALL || scause==S_ECALL){
    800016f0:	ff870713          	addi	a4,a4,-8
    800016f4:	00100793          	li	a5,1
    800016f8:	08e7e063          	bltu	a5,a4,80001778 <_ZN5Riscv16interruptHandlerEv+0xcc>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    800016fc:	141027f3          	csrr	a5,sepc
    80001700:	fcf43c23          	sd	a5,-40(s0)
    return value;
    80001704:	fd843483          	ld	s1,-40(s0)
        uint64 volatile oc, a1, a2, a3, a4;

        uint64 sepc=readSepc()+4;
    80001708:	00448493          	addi	s1,s1,4
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
};

inline uint64 Riscv::readSstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    8000170c:	100027f3          	csrr	a5,sstatus
    80001710:	fcf43823          	sd	a5,-48(s0)
    return value;
    80001714:	fd043903          	ld	s2,-48(s0)
        uint64 sstatus=readSstatus();
        __asm__ volatile("mv %0, a0" : "=r"(oc)); // operation code
    80001718:	00050793          	mv	a5,a0
    8000171c:	faf43023          	sd	a5,-96(s0)
        __asm__ volatile("mv %0, a1" : "=r"(a1));
    80001720:	00058793          	mv	a5,a1
    80001724:	faf43423          	sd	a5,-88(s0)
        __asm__ volatile("mv %0, a2" : "=r"(a2));
    80001728:	00060793          	mv	a5,a2
    8000172c:	faf43823          	sd	a5,-80(s0)
        __asm__ volatile("mv %0, a3" : "=r"(a3));
    80001730:	00068793          	mv	a5,a3
    80001734:	faf43c23          	sd	a5,-72(s0)
        __asm__ volatile("mv %0, a4" : "=r"(a4));
    80001738:	00070793          	mv	a5,a4
    8000173c:	fcf43023          	sd	a5,-64(s0)

        switch(oc){
    80001740:	fa043783          	ld	a5,-96(s0)
    80001744:	04100713          	li	a4,65
    80001748:	08e78463          	beq	a5,a4,800017d0 <_ZN5Riscv16interruptHandlerEv+0x124>
    8000174c:	04f76863          	bltu	a4,a5,8000179c <_ZN5Riscv16interruptHandlerEv+0xf0>
    80001750:	00100713          	li	a4,1
    80001754:	06e78263          	beq	a5,a4,800017b8 <_ZN5Riscv16interruptHandlerEv+0x10c>
    80001758:	00200713          	li	a4,2
    8000175c:	06e79463          	bne	a5,a4,800017c4 <_ZN5Riscv16interruptHandlerEv+0x118>
            case MEM_ALLOC:
                MemoryAllocator::mem_alloc((size_t)a1);
                break;
            case MEM_FREE:
                MemoryAllocator::mem_free((void *)a1);
    80001760:	fa843503          	ld	a0,-88(s0)
    80001764:	00000097          	auipc	ra,0x0
    80001768:	da8080e7          	jalr	-600(ra) # 8000150c <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    8000176c:	0580006f          	j	800017c4 <_ZN5Riscv16interruptHandlerEv+0x118>
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80001770:	00200793          	li	a5,2
    80001774:	1447b073          	csrc	sip,a5
                break;
        }
        writeSepc(sepc);
        writeSstatus(sstatus);
    }
}
    80001778:	05813083          	ld	ra,88(sp)
    8000177c:	05013403          	ld	s0,80(sp)
    80001780:	04813483          	ld	s1,72(sp)
    80001784:	04013903          	ld	s2,64(sp)
    80001788:	06010113          	addi	sp,sp,96
    8000178c:	00008067          	ret
        console_handler();
    80001790:	00002097          	auipc	ra,0x2
    80001794:	550080e7          	jalr	1360(ra) # 80003ce0 <console_handler>
    80001798:	fe1ff06f          	j	80001778 <_ZN5Riscv16interruptHandlerEv+0xcc>
        switch(oc){
    8000179c:	04200713          	li	a4,66
    800017a0:	02e79263          	bne	a5,a4,800017c4 <_ZN5Riscv16interruptHandlerEv+0x118>
                __putc(a1);
    800017a4:	fa843503          	ld	a0,-88(s0)
    800017a8:	0ff57513          	andi	a0,a0,255
    800017ac:	00002097          	auipc	ra,0x2
    800017b0:	4c0080e7          	jalr	1216(ra) # 80003c6c <__putc>
                break;
    800017b4:	0100006f          	j	800017c4 <_ZN5Riscv16interruptHandlerEv+0x118>
                MemoryAllocator::mem_alloc((size_t)a1);
    800017b8:	fa843503          	ld	a0,-88(s0)
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	bc4080e7          	jalr	-1084(ra) # 80001380 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    800017c4:	14149073          	csrw	sepc,s1
}

inline void Riscv::writeSstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    800017c8:	10091073          	csrw	sstatus,s2
}
    800017cc:	fadff06f          	j	80001778 <_ZN5Riscv16interruptHandlerEv+0xcc>
                __getc();
    800017d0:	00002097          	auipc	ra,0x2
    800017d4:	4d8080e7          	jalr	1240(ra) # 80003ca8 <__getc>
                break;
    800017d8:	fedff06f          	j	800017c4 <_ZN5Riscv16interruptHandlerEv+0x118>

00000000800017dc <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie(){
    800017dc:	ff010113          	addi	sp,sp,-16
    800017e0:	00813423          	sd	s0,8(sp)
    800017e4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800017e8:	14109073          	csrw	sepc,ra
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    800017ec:	10000793          	li	a5,256
    800017f0:	1007b073          	csrc	sstatus,a5
    Riscv::clearSstatus(bitmaskSstatus::SPP);
    __asm__ volatile ("sret");
    800017f4:	10200073          	sret
    800017f8:	00813403          	ld	s0,8(sp)
    800017fc:	01010113          	addi	sp,sp,16
    80001800:	00008067          	ret

0000000080001804 <_Z7syscallmmmmm>:
#include "../h/syscallC.hpp"
#include "../h/memoryAllocator.hpp"

void syscall(uint64 op_code, uint64 arg1 = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0) {
    80001804:	ff010113          	addi	sp,sp,-16
    80001808:	00813423          	sd	s0,8(sp)
    8000180c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001810:	00000073          	ecall
}
    80001814:	00813403          	ld	s0,8(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size==0) return nullptr;
    80001820:	04050c63          	beqz	a0,80001878 <_Z9mem_allocm+0x58>
void* mem_alloc (size_t size) {
    80001824:	ff010113          	addi	sp,sp,-16
    80001828:	00113423          	sd	ra,8(sp)
    8000182c:	00813023          	sd	s0,0(sp)
    80001830:	01010413          	addi	s0,sp,16
    void volatile *retVal;
    uint64 numOfBlocks=ROUNDUP(size+MemoryAllocator::DBlockSize-1)/MEM_BLOCK_SIZE;
    80001834:	00003797          	auipc	a5,0x3
    80001838:	df47b783          	ld	a5,-524(a5) # 80004628 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000183c:	0007b583          	ld	a1,0(a5)
    80001840:	00a58533          	add	a0,a1,a0
    80001844:	03e50593          	addi	a1,a0,62
    syscall(MEM_ALLOC, numOfBlocks);
    80001848:	00000713          	li	a4,0
    8000184c:	00000693          	li	a3,0
    80001850:	00000613          	li	a2,0
    80001854:	0065d593          	srli	a1,a1,0x6
    80001858:	00100513          	li	a0,1
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	fa8080e7          	jalr	-88(ra) # 80001804 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001864:	00050513          	mv	a0,a0
    return (void*)retVal;
}
    80001868:	00813083          	ld	ra,8(sp)
    8000186c:	00013403          	ld	s0,0(sp)
    80001870:	01010113          	addi	sp,sp,16
    80001874:	00008067          	ret
    if (size==0) return nullptr;
    80001878:	00000513          	li	a0,0
}
    8000187c:	00008067          	ret

0000000080001880 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    80001880:	fe010113          	addi	sp,sp,-32
    80001884:	00113c23          	sd	ra,24(sp)
    80001888:	00813823          	sd	s0,16(sp)
    8000188c:	02010413          	addi	s0,sp,32
    80001890:	00050593          	mv	a1,a0
    syscall(MEM_FREE, (uint64)ptr);
    80001894:	00000713          	li	a4,0
    80001898:	00000693          	li	a3,0
    8000189c:	00000613          	li	a2,0
    800018a0:	00200513          	li	a0,2
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	f60080e7          	jalr	-160(ra) # 80001804 <_Z7syscallmmmmm>
    int volatile retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800018ac:	00050793          	mv	a5,a0
    800018b0:	fef42623          	sw	a5,-20(s0)
    return retVal;
    800018b4:	fec42503          	lw	a0,-20(s0)
}
    800018b8:	0005051b          	sext.w	a0,a0
    800018bc:	01813083          	ld	ra,24(sp)
    800018c0:	01013403          	ld	s0,16(sp)
    800018c4:	02010113          	addi	sp,sp,32
    800018c8:	00008067          	ret

00000000800018cc <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*routine)(void *), void *arg) {
    800018cc:	fd010113          	addi	sp,sp,-48
    800018d0:	02113423          	sd	ra,40(sp)
    800018d4:	02813023          	sd	s0,32(sp)
    800018d8:	00913c23          	sd	s1,24(sp)
    800018dc:	01213823          	sd	s2,16(sp)
    800018e0:	01313423          	sd	s3,8(sp)
    800018e4:	03010413          	addi	s0,sp,48
    800018e8:	00050913          	mv	s2,a0
    800018ec:	00058493          	mv	s1,a1
    800018f0:	00060993          	mv	s3,a2
    void* stack=nullptr;
    if (routine) {
    800018f4:	04058a63          	beqz	a1,80001948 <_Z13thread_createPP3TCBPFvPvES2_+0x7c>
        stack=mem_alloc(DEFAULT_STACK_SIZE);
    800018f8:	00001537          	lui	a0,0x1
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	f24080e7          	jalr	-220(ra) # 80001820 <_Z9mem_allocm>
    80001904:	00050713          	mv	a4,a0
        if (!stack) return -1;
    80001908:	04050463          	beqz	a0,80001950 <_Z13thread_createPP3TCBPFvPvES2_+0x84>
    }
    syscall(THREAD_CREATE, (uint64)handle, (uint64)routine, (uint64)arg, (uint64)stack);
    8000190c:	00098693          	mv	a3,s3
    80001910:	00048613          	mv	a2,s1
    80001914:	00090593          	mv	a1,s2
    80001918:	01100513          	li	a0,17
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	ee8080e7          	jalr	-280(ra) # 80001804 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001924:	00050513          	mv	a0,a0
    80001928:	0005051b          	sext.w	a0,a0
    return retVal;
}
    8000192c:	02813083          	ld	ra,40(sp)
    80001930:	02013403          	ld	s0,32(sp)
    80001934:	01813483          	ld	s1,24(sp)
    80001938:	01013903          	ld	s2,16(sp)
    8000193c:	00813983          	ld	s3,8(sp)
    80001940:	03010113          	addi	sp,sp,48
    80001944:	00008067          	ret
    void* stack=nullptr;
    80001948:	00000713          	li	a4,0
    8000194c:	fc1ff06f          	j	8000190c <_Z13thread_createPP3TCBPFvPvES2_+0x40>
        if (!stack) return -1;
    80001950:	fff00513          	li	a0,-1
    80001954:	fd9ff06f          	j	8000192c <_Z13thread_createPP3TCBPFvPvES2_+0x60>

0000000080001958 <_Z11thread_exitv>:

int thread_exit() {
    80001958:	ff010113          	addi	sp,sp,-16
    8000195c:	00113423          	sd	ra,8(sp)
    80001960:	00813023          	sd	s0,0(sp)
    80001964:	01010413          	addi	s0,sp,16
    syscall(THREAD_EXIT);
    80001968:	00000713          	li	a4,0
    8000196c:	00000693          	li	a3,0
    80001970:	00000613          	li	a2,0
    80001974:	00000593          	li	a1,0
    80001978:	01200513          	li	a0,18
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	e88080e7          	jalr	-376(ra) # 80001804 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001984:	00050513          	mv	a0,a0
    return retVal;
}
    80001988:	0005051b          	sext.w	a0,a0
    8000198c:	00813083          	ld	ra,8(sp)
    80001990:	00013403          	ld	s0,0(sp)
    80001994:	01010113          	addi	sp,sp,16
    80001998:	00008067          	ret

000000008000199c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00113423          	sd	ra,8(sp)
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	01010413          	addi	s0,sp,16
    syscall(THREAD_DISPATCH);
    800019ac:	00000713          	li	a4,0
    800019b0:	00000693          	li	a3,0
    800019b4:	00000613          	li	a2,0
    800019b8:	00000593          	li	a1,0
    800019bc:	01300513          	li	a0,19
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	e44080e7          	jalr	-444(ra) # 80001804 <_Z7syscallmmmmm>
}
    800019c8:	00813083          	ld	ra,8(sp)
    800019cc:	00013403          	ld	s0,0(sp)
    800019d0:	01010113          	addi	sp,sp,16
    800019d4:	00008067          	ret

00000000800019d8 <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init) {
    800019d8:	ff010113          	addi	sp,sp,-16
    800019dc:	00113423          	sd	ra,8(sp)
    800019e0:	00813023          	sd	s0,0(sp)
    800019e4:	01010413          	addi	s0,sp,16
    syscall(SEM_OPEN, (uint64)handle, init);
    800019e8:	00000713          	li	a4,0
    800019ec:	00000693          	li	a3,0
    800019f0:	02059613          	slli	a2,a1,0x20
    800019f4:	02065613          	srli	a2,a2,0x20
    800019f8:	00050593          	mv	a1,a0
    800019fc:	02100513          	li	a0,33
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	e04080e7          	jalr	-508(ra) # 80001804 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001a08:	00050513          	mv	a0,a0
    return retVal;
}
    80001a0c:	0005051b          	sext.w	a0,a0
    80001a10:	00813083          	ld	ra,8(sp)
    80001a14:	00013403          	ld	s0,0(sp)
    80001a18:	01010113          	addi	sp,sp,16
    80001a1c:	00008067          	ret

0000000080001a20 <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    80001a20:	ff010113          	addi	sp,sp,-16
    80001a24:	00113423          	sd	ra,8(sp)
    80001a28:	00813023          	sd	s0,0(sp)
    80001a2c:	01010413          	addi	s0,sp,16
    80001a30:	00050593          	mv	a1,a0
    //NESTO
    syscall(SEM_CLOSE, (uint64)handle);
    80001a34:	00000713          	li	a4,0
    80001a38:	00000693          	li	a3,0
    80001a3c:	00000613          	li	a2,0
    80001a40:	02200513          	li	a0,34
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	dc0080e7          	jalr	-576(ra) # 80001804 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001a4c:	00050513          	mv	a0,a0
    return retVal;
}
    80001a50:	0005051b          	sext.w	a0,a0
    80001a54:	00813083          	ld	ra,8(sp)
    80001a58:	00013403          	ld	s0,0(sp)
    80001a5c:	01010113          	addi	sp,sp,16
    80001a60:	00008067          	ret

0000000080001a64 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    80001a64:	ff010113          	addi	sp,sp,-16
    80001a68:	00113423          	sd	ra,8(sp)
    80001a6c:	00813023          	sd	s0,0(sp)
    80001a70:	01010413          	addi	s0,sp,16
    80001a74:	00050593          	mv	a1,a0
    syscall(SEM_WAIT, (uint64)id);
    80001a78:	00000713          	li	a4,0
    80001a7c:	00000693          	li	a3,0
    80001a80:	00000613          	li	a2,0
    80001a84:	02300513          	li	a0,35
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	d7c080e7          	jalr	-644(ra) # 80001804 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001a90:	00050513          	mv	a0,a0
    return retVal;
}
    80001a94:	0005051b          	sext.w	a0,a0
    80001a98:	00813083          	ld	ra,8(sp)
    80001a9c:	00013403          	ld	s0,0(sp)
    80001aa0:	01010113          	addi	sp,sp,16
    80001aa4:	00008067          	ret

0000000080001aa8 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) {
    80001aa8:	ff010113          	addi	sp,sp,-16
    80001aac:	00113423          	sd	ra,8(sp)
    80001ab0:	00813023          	sd	s0,0(sp)
    80001ab4:	01010413          	addi	s0,sp,16
    80001ab8:	00050593          	mv	a1,a0
    syscall(SEM_TRYWAIT, (uint64)id);
    80001abc:	00000713          	li	a4,0
    80001ac0:	00000693          	li	a3,0
    80001ac4:	00000613          	li	a2,0
    80001ac8:	02600513          	li	a0,38
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	d38080e7          	jalr	-712(ra) # 80001804 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001ad4:	00050513          	mv	a0,a0
    return retVal;
}
    80001ad8:	0005051b          	sext.w	a0,a0
    80001adc:	00813083          	ld	ra,8(sp)
    80001ae0:	00013403          	ld	s0,0(sp)
    80001ae4:	01010113          	addi	sp,sp,16
    80001ae8:	00008067          	ret

0000000080001aec <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    80001aec:	ff010113          	addi	sp,sp,-16
    80001af0:	00113423          	sd	ra,8(sp)
    80001af4:	00813023          	sd	s0,0(sp)
    80001af8:	01010413          	addi	s0,sp,16
    80001afc:	00050593          	mv	a1,a0
    syscall(SEM_SIGNAL, (uint64)id);
    80001b00:	00000713          	li	a4,0
    80001b04:	00000693          	li	a3,0
    80001b08:	00000613          	li	a2,0
    80001b0c:	02400513          	li	a0,36
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	cf4080e7          	jalr	-780(ra) # 80001804 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001b18:	00050513          	mv	a0,a0
    return retVal;
}
    80001b1c:	0005051b          	sext.w	a0,a0
    80001b20:	00813083          	ld	ra,8(sp)
    80001b24:	00013403          	ld	s0,0(sp)
    80001b28:	01010113          	addi	sp,sp,16
    80001b2c:	00008067          	ret

0000000080001b30 <_Z4getcv>:

char getc() {
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    syscall(GETC);
    80001b40:	00000713          	li	a4,0
    80001b44:	00000693          	li	a3,0
    80001b48:	00000613          	li	a2,0
    80001b4c:	00000593          	li	a1,0
    80001b50:	04100513          	li	a0,65
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	cb0080e7          	jalr	-848(ra) # 80001804 <_Z7syscallmmmmm>
    char retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001b5c:	00050513          	mv	a0,a0
    return retVal;
}
    80001b60:	0ff57513          	andi	a0,a0,255
    80001b64:	00813083          	ld	ra,8(sp)
    80001b68:	00013403          	ld	s0,0(sp)
    80001b6c:	01010113          	addi	sp,sp,16
    80001b70:	00008067          	ret

0000000080001b74 <_Z4putcc>:

void putc(char c) {
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00113423          	sd	ra,8(sp)
    80001b7c:	00813023          	sd	s0,0(sp)
    80001b80:	01010413          	addi	s0,sp,16
    80001b84:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    80001b88:	00000713          	li	a4,0
    80001b8c:	00000693          	li	a3,0
    80001b90:	00000613          	li	a2,0
    80001b94:	04200513          	li	a0,66
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	c6c080e7          	jalr	-916(ra) # 80001804 <_Z7syscallmmmmm>
    80001ba0:	00813083          	ld	ra,8(sp)
    80001ba4:	00013403          	ld	s0,0(sp)
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00008067          	ret

0000000080001bb0 <start>:
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00813423          	sd	s0,8(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    80001bbc:	300027f3          	csrr	a5,mstatus
    80001bc0:	ffffe737          	lui	a4,0xffffe
    80001bc4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8f1f>
    80001bc8:	00e7f7b3          	and	a5,a5,a4
    80001bcc:	00001737          	lui	a4,0x1
    80001bd0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001bd4:	00e7e7b3          	or	a5,a5,a4
    80001bd8:	30079073          	csrw	mstatus,a5
    80001bdc:	00000797          	auipc	a5,0x0
    80001be0:	16078793          	addi	a5,a5,352 # 80001d3c <system_main>
    80001be4:	34179073          	csrw	mepc,a5
    80001be8:	00000793          	li	a5,0
    80001bec:	18079073          	csrw	satp,a5
    80001bf0:	000107b7          	lui	a5,0x10
    80001bf4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001bf8:	30279073          	csrw	medeleg,a5
    80001bfc:	30379073          	csrw	mideleg,a5
    80001c00:	104027f3          	csrr	a5,sie
    80001c04:	2227e793          	ori	a5,a5,546
    80001c08:	10479073          	csrw	sie,a5
    80001c0c:	fff00793          	li	a5,-1
    80001c10:	00a7d793          	srli	a5,a5,0xa
    80001c14:	3b079073          	csrw	pmpaddr0,a5
    80001c18:	00f00793          	li	a5,15
    80001c1c:	3a079073          	csrw	pmpcfg0,a5
    80001c20:	f14027f3          	csrr	a5,mhartid
    80001c24:	0200c737          	lui	a4,0x200c
    80001c28:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001c2c:	0007869b          	sext.w	a3,a5
    80001c30:	00269713          	slli	a4,a3,0x2
    80001c34:	000f4637          	lui	a2,0xf4
    80001c38:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001c3c:	00d70733          	add	a4,a4,a3
    80001c40:	0037979b          	slliw	a5,a5,0x3
    80001c44:	020046b7          	lui	a3,0x2004
    80001c48:	00d787b3          	add	a5,a5,a3
    80001c4c:	00c585b3          	add	a1,a1,a2
    80001c50:	00371693          	slli	a3,a4,0x3
    80001c54:	00003717          	auipc	a4,0x3
    80001c58:	a3c70713          	addi	a4,a4,-1476 # 80004690 <timer_scratch>
    80001c5c:	00b7b023          	sd	a1,0(a5)
    80001c60:	00d70733          	add	a4,a4,a3
    80001c64:	00f73c23          	sd	a5,24(a4)
    80001c68:	02c73023          	sd	a2,32(a4)
    80001c6c:	34071073          	csrw	mscratch,a4
    80001c70:	00000797          	auipc	a5,0x0
    80001c74:	6e078793          	addi	a5,a5,1760 # 80002350 <timervec>
    80001c78:	30579073          	csrw	mtvec,a5
    80001c7c:	300027f3          	csrr	a5,mstatus
    80001c80:	0087e793          	ori	a5,a5,8
    80001c84:	30079073          	csrw	mstatus,a5
    80001c88:	304027f3          	csrr	a5,mie
    80001c8c:	0807e793          	ori	a5,a5,128
    80001c90:	30479073          	csrw	mie,a5
    80001c94:	f14027f3          	csrr	a5,mhartid
    80001c98:	0007879b          	sext.w	a5,a5
    80001c9c:	00078213          	mv	tp,a5
    80001ca0:	30200073          	mret
    80001ca4:	00813403          	ld	s0,8(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret

0000000080001cb0 <timerinit>:
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00813423          	sd	s0,8(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    80001cbc:	f14027f3          	csrr	a5,mhartid
    80001cc0:	0200c737          	lui	a4,0x200c
    80001cc4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001cc8:	0007869b          	sext.w	a3,a5
    80001ccc:	00269713          	slli	a4,a3,0x2
    80001cd0:	000f4637          	lui	a2,0xf4
    80001cd4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001cd8:	00d70733          	add	a4,a4,a3
    80001cdc:	0037979b          	slliw	a5,a5,0x3
    80001ce0:	020046b7          	lui	a3,0x2004
    80001ce4:	00d787b3          	add	a5,a5,a3
    80001ce8:	00c585b3          	add	a1,a1,a2
    80001cec:	00371693          	slli	a3,a4,0x3
    80001cf0:	00003717          	auipc	a4,0x3
    80001cf4:	9a070713          	addi	a4,a4,-1632 # 80004690 <timer_scratch>
    80001cf8:	00b7b023          	sd	a1,0(a5)
    80001cfc:	00d70733          	add	a4,a4,a3
    80001d00:	00f73c23          	sd	a5,24(a4)
    80001d04:	02c73023          	sd	a2,32(a4)
    80001d08:	34071073          	csrw	mscratch,a4
    80001d0c:	00000797          	auipc	a5,0x0
    80001d10:	64478793          	addi	a5,a5,1604 # 80002350 <timervec>
    80001d14:	30579073          	csrw	mtvec,a5
    80001d18:	300027f3          	csrr	a5,mstatus
    80001d1c:	0087e793          	ori	a5,a5,8
    80001d20:	30079073          	csrw	mstatus,a5
    80001d24:	304027f3          	csrr	a5,mie
    80001d28:	0807e793          	ori	a5,a5,128
    80001d2c:	30479073          	csrw	mie,a5
    80001d30:	00813403          	ld	s0,8(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret

0000000080001d3c <system_main>:
    80001d3c:	fe010113          	addi	sp,sp,-32
    80001d40:	00813823          	sd	s0,16(sp)
    80001d44:	00913423          	sd	s1,8(sp)
    80001d48:	00113c23          	sd	ra,24(sp)
    80001d4c:	02010413          	addi	s0,sp,32
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	0c4080e7          	jalr	196(ra) # 80001e14 <cpuid>
    80001d58:	00003497          	auipc	s1,0x3
    80001d5c:	8e848493          	addi	s1,s1,-1816 # 80004640 <started>
    80001d60:	02050263          	beqz	a0,80001d84 <system_main+0x48>
    80001d64:	0004a783          	lw	a5,0(s1)
    80001d68:	0007879b          	sext.w	a5,a5
    80001d6c:	fe078ce3          	beqz	a5,80001d64 <system_main+0x28>
    80001d70:	0ff0000f          	fence
    80001d74:	00002517          	auipc	a0,0x2
    80001d78:	2e450513          	addi	a0,a0,740 # 80004058 <_ZN15MemoryAllocator10DBlockSizeE+0x38>
    80001d7c:	00001097          	auipc	ra,0x1
    80001d80:	a70080e7          	jalr	-1424(ra) # 800027ec <panic>
    80001d84:	00001097          	auipc	ra,0x1
    80001d88:	9c4080e7          	jalr	-1596(ra) # 80002748 <consoleinit>
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	150080e7          	jalr	336(ra) # 80002edc <printfinit>
    80001d94:	00002517          	auipc	a0,0x2
    80001d98:	3a450513          	addi	a0,a0,932 # 80004138 <_ZN15MemoryAllocator10DBlockSizeE+0x118>
    80001d9c:	00001097          	auipc	ra,0x1
    80001da0:	aac080e7          	jalr	-1364(ra) # 80002848 <__printf>
    80001da4:	00002517          	auipc	a0,0x2
    80001da8:	28450513          	addi	a0,a0,644 # 80004028 <_ZN15MemoryAllocator10DBlockSizeE+0x8>
    80001dac:	00001097          	auipc	ra,0x1
    80001db0:	a9c080e7          	jalr	-1380(ra) # 80002848 <__printf>
    80001db4:	00002517          	auipc	a0,0x2
    80001db8:	38450513          	addi	a0,a0,900 # 80004138 <_ZN15MemoryAllocator10DBlockSizeE+0x118>
    80001dbc:	00001097          	auipc	ra,0x1
    80001dc0:	a8c080e7          	jalr	-1396(ra) # 80002848 <__printf>
    80001dc4:	00001097          	auipc	ra,0x1
    80001dc8:	4a4080e7          	jalr	1188(ra) # 80003268 <kinit>
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	148080e7          	jalr	328(ra) # 80001f14 <trapinit>
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	16c080e7          	jalr	364(ra) # 80001f40 <trapinithart>
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	5b4080e7          	jalr	1460(ra) # 80002390 <plicinit>
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	5d4080e7          	jalr	1492(ra) # 800023b8 <plicinithart>
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	078080e7          	jalr	120(ra) # 80001e64 <userinit>
    80001df4:	0ff0000f          	fence
    80001df8:	00100793          	li	a5,1
    80001dfc:	00002517          	auipc	a0,0x2
    80001e00:	24450513          	addi	a0,a0,580 # 80004040 <_ZN15MemoryAllocator10DBlockSizeE+0x20>
    80001e04:	00f4a023          	sw	a5,0(s1)
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	a40080e7          	jalr	-1472(ra) # 80002848 <__printf>
    80001e10:	0000006f          	j	80001e10 <system_main+0xd4>

0000000080001e14 <cpuid>:
    80001e14:	ff010113          	addi	sp,sp,-16
    80001e18:	00813423          	sd	s0,8(sp)
    80001e1c:	01010413          	addi	s0,sp,16
    80001e20:	00020513          	mv	a0,tp
    80001e24:	00813403          	ld	s0,8(sp)
    80001e28:	0005051b          	sext.w	a0,a0
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <mycpu>:
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00813423          	sd	s0,8(sp)
    80001e3c:	01010413          	addi	s0,sp,16
    80001e40:	00020793          	mv	a5,tp
    80001e44:	00813403          	ld	s0,8(sp)
    80001e48:	0007879b          	sext.w	a5,a5
    80001e4c:	00779793          	slli	a5,a5,0x7
    80001e50:	00004517          	auipc	a0,0x4
    80001e54:	87050513          	addi	a0,a0,-1936 # 800056c0 <cpus>
    80001e58:	00f50533          	add	a0,a0,a5
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret

0000000080001e64 <userinit>:
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00813423          	sd	s0,8(sp)
    80001e6c:	01010413          	addi	s0,sp,16
    80001e70:	00813403          	ld	s0,8(sp)
    80001e74:	01010113          	addi	sp,sp,16
    80001e78:	fffff317          	auipc	t1,0xfffff
    80001e7c:	38830067          	jr	904(t1) # 80001200 <main>

0000000080001e80 <either_copyout>:
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00813023          	sd	s0,0(sp)
    80001e88:	00113423          	sd	ra,8(sp)
    80001e8c:	01010413          	addi	s0,sp,16
    80001e90:	02051663          	bnez	a0,80001ebc <either_copyout+0x3c>
    80001e94:	00058513          	mv	a0,a1
    80001e98:	00060593          	mv	a1,a2
    80001e9c:	0006861b          	sext.w	a2,a3
    80001ea0:	00002097          	auipc	ra,0x2
    80001ea4:	c54080e7          	jalr	-940(ra) # 80003af4 <__memmove>
    80001ea8:	00813083          	ld	ra,8(sp)
    80001eac:	00013403          	ld	s0,0(sp)
    80001eb0:	00000513          	li	a0,0
    80001eb4:	01010113          	addi	sp,sp,16
    80001eb8:	00008067          	ret
    80001ebc:	00002517          	auipc	a0,0x2
    80001ec0:	1c450513          	addi	a0,a0,452 # 80004080 <_ZN15MemoryAllocator10DBlockSizeE+0x60>
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	928080e7          	jalr	-1752(ra) # 800027ec <panic>

0000000080001ecc <either_copyin>:
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00813023          	sd	s0,0(sp)
    80001ed4:	00113423          	sd	ra,8(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    80001edc:	02059463          	bnez	a1,80001f04 <either_copyin+0x38>
    80001ee0:	00060593          	mv	a1,a2
    80001ee4:	0006861b          	sext.w	a2,a3
    80001ee8:	00002097          	auipc	ra,0x2
    80001eec:	c0c080e7          	jalr	-1012(ra) # 80003af4 <__memmove>
    80001ef0:	00813083          	ld	ra,8(sp)
    80001ef4:	00013403          	ld	s0,0(sp)
    80001ef8:	00000513          	li	a0,0
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret
    80001f04:	00002517          	auipc	a0,0x2
    80001f08:	1a450513          	addi	a0,a0,420 # 800040a8 <_ZN15MemoryAllocator10DBlockSizeE+0x88>
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	8e0080e7          	jalr	-1824(ra) # 800027ec <panic>

0000000080001f14 <trapinit>:
    80001f14:	ff010113          	addi	sp,sp,-16
    80001f18:	00813423          	sd	s0,8(sp)
    80001f1c:	01010413          	addi	s0,sp,16
    80001f20:	00813403          	ld	s0,8(sp)
    80001f24:	00002597          	auipc	a1,0x2
    80001f28:	1ac58593          	addi	a1,a1,428 # 800040d0 <_ZN15MemoryAllocator10DBlockSizeE+0xb0>
    80001f2c:	00004517          	auipc	a0,0x4
    80001f30:	81450513          	addi	a0,a0,-2028 # 80005740 <tickslock>
    80001f34:	01010113          	addi	sp,sp,16
    80001f38:	00001317          	auipc	t1,0x1
    80001f3c:	5c030067          	jr	1472(t1) # 800034f8 <initlock>

0000000080001f40 <trapinithart>:
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00813423          	sd	s0,8(sp)
    80001f48:	01010413          	addi	s0,sp,16
    80001f4c:	00000797          	auipc	a5,0x0
    80001f50:	2f478793          	addi	a5,a5,756 # 80002240 <kernelvec>
    80001f54:	10579073          	csrw	stvec,a5
    80001f58:	00813403          	ld	s0,8(sp)
    80001f5c:	01010113          	addi	sp,sp,16
    80001f60:	00008067          	ret

0000000080001f64 <usertrap>:
    80001f64:	ff010113          	addi	sp,sp,-16
    80001f68:	00813423          	sd	s0,8(sp)
    80001f6c:	01010413          	addi	s0,sp,16
    80001f70:	00813403          	ld	s0,8(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <usertrapret>:
    80001f7c:	ff010113          	addi	sp,sp,-16
    80001f80:	00813423          	sd	s0,8(sp)
    80001f84:	01010413          	addi	s0,sp,16
    80001f88:	00813403          	ld	s0,8(sp)
    80001f8c:	01010113          	addi	sp,sp,16
    80001f90:	00008067          	ret

0000000080001f94 <kerneltrap>:
    80001f94:	fe010113          	addi	sp,sp,-32
    80001f98:	00813823          	sd	s0,16(sp)
    80001f9c:	00113c23          	sd	ra,24(sp)
    80001fa0:	00913423          	sd	s1,8(sp)
    80001fa4:	02010413          	addi	s0,sp,32
    80001fa8:	142025f3          	csrr	a1,scause
    80001fac:	100027f3          	csrr	a5,sstatus
    80001fb0:	0027f793          	andi	a5,a5,2
    80001fb4:	10079c63          	bnez	a5,800020cc <kerneltrap+0x138>
    80001fb8:	142027f3          	csrr	a5,scause
    80001fbc:	0207ce63          	bltz	a5,80001ff8 <kerneltrap+0x64>
    80001fc0:	00002517          	auipc	a0,0x2
    80001fc4:	15850513          	addi	a0,a0,344 # 80004118 <_ZN15MemoryAllocator10DBlockSizeE+0xf8>
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	880080e7          	jalr	-1920(ra) # 80002848 <__printf>
    80001fd0:	141025f3          	csrr	a1,sepc
    80001fd4:	14302673          	csrr	a2,stval
    80001fd8:	00002517          	auipc	a0,0x2
    80001fdc:	15050513          	addi	a0,a0,336 # 80004128 <_ZN15MemoryAllocator10DBlockSizeE+0x108>
    80001fe0:	00001097          	auipc	ra,0x1
    80001fe4:	868080e7          	jalr	-1944(ra) # 80002848 <__printf>
    80001fe8:	00002517          	auipc	a0,0x2
    80001fec:	15850513          	addi	a0,a0,344 # 80004140 <_ZN15MemoryAllocator10DBlockSizeE+0x120>
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	7fc080e7          	jalr	2044(ra) # 800027ec <panic>
    80001ff8:	0ff7f713          	andi	a4,a5,255
    80001ffc:	00900693          	li	a3,9
    80002000:	04d70063          	beq	a4,a3,80002040 <kerneltrap+0xac>
    80002004:	fff00713          	li	a4,-1
    80002008:	03f71713          	slli	a4,a4,0x3f
    8000200c:	00170713          	addi	a4,a4,1
    80002010:	fae798e3          	bne	a5,a4,80001fc0 <kerneltrap+0x2c>
    80002014:	00000097          	auipc	ra,0x0
    80002018:	e00080e7          	jalr	-512(ra) # 80001e14 <cpuid>
    8000201c:	06050663          	beqz	a0,80002088 <kerneltrap+0xf4>
    80002020:	144027f3          	csrr	a5,sip
    80002024:	ffd7f793          	andi	a5,a5,-3
    80002028:	14479073          	csrw	sip,a5
    8000202c:	01813083          	ld	ra,24(sp)
    80002030:	01013403          	ld	s0,16(sp)
    80002034:	00813483          	ld	s1,8(sp)
    80002038:	02010113          	addi	sp,sp,32
    8000203c:	00008067          	ret
    80002040:	00000097          	auipc	ra,0x0
    80002044:	3c4080e7          	jalr	964(ra) # 80002404 <plic_claim>
    80002048:	00a00793          	li	a5,10
    8000204c:	00050493          	mv	s1,a0
    80002050:	06f50863          	beq	a0,a5,800020c0 <kerneltrap+0x12c>
    80002054:	fc050ce3          	beqz	a0,8000202c <kerneltrap+0x98>
    80002058:	00050593          	mv	a1,a0
    8000205c:	00002517          	auipc	a0,0x2
    80002060:	09c50513          	addi	a0,a0,156 # 800040f8 <_ZN15MemoryAllocator10DBlockSizeE+0xd8>
    80002064:	00000097          	auipc	ra,0x0
    80002068:	7e4080e7          	jalr	2020(ra) # 80002848 <__printf>
    8000206c:	01013403          	ld	s0,16(sp)
    80002070:	01813083          	ld	ra,24(sp)
    80002074:	00048513          	mv	a0,s1
    80002078:	00813483          	ld	s1,8(sp)
    8000207c:	02010113          	addi	sp,sp,32
    80002080:	00000317          	auipc	t1,0x0
    80002084:	3bc30067          	jr	956(t1) # 8000243c <plic_complete>
    80002088:	00003517          	auipc	a0,0x3
    8000208c:	6b850513          	addi	a0,a0,1720 # 80005740 <tickslock>
    80002090:	00001097          	auipc	ra,0x1
    80002094:	48c080e7          	jalr	1164(ra) # 8000351c <acquire>
    80002098:	00002717          	auipc	a4,0x2
    8000209c:	5ac70713          	addi	a4,a4,1452 # 80004644 <ticks>
    800020a0:	00072783          	lw	a5,0(a4)
    800020a4:	00003517          	auipc	a0,0x3
    800020a8:	69c50513          	addi	a0,a0,1692 # 80005740 <tickslock>
    800020ac:	0017879b          	addiw	a5,a5,1
    800020b0:	00f72023          	sw	a5,0(a4)
    800020b4:	00001097          	auipc	ra,0x1
    800020b8:	534080e7          	jalr	1332(ra) # 800035e8 <release>
    800020bc:	f65ff06f          	j	80002020 <kerneltrap+0x8c>
    800020c0:	00001097          	auipc	ra,0x1
    800020c4:	090080e7          	jalr	144(ra) # 80003150 <uartintr>
    800020c8:	fa5ff06f          	j	8000206c <kerneltrap+0xd8>
    800020cc:	00002517          	auipc	a0,0x2
    800020d0:	00c50513          	addi	a0,a0,12 # 800040d8 <_ZN15MemoryAllocator10DBlockSizeE+0xb8>
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	718080e7          	jalr	1816(ra) # 800027ec <panic>

00000000800020dc <clockintr>:
    800020dc:	fe010113          	addi	sp,sp,-32
    800020e0:	00813823          	sd	s0,16(sp)
    800020e4:	00913423          	sd	s1,8(sp)
    800020e8:	00113c23          	sd	ra,24(sp)
    800020ec:	02010413          	addi	s0,sp,32
    800020f0:	00003497          	auipc	s1,0x3
    800020f4:	65048493          	addi	s1,s1,1616 # 80005740 <tickslock>
    800020f8:	00048513          	mv	a0,s1
    800020fc:	00001097          	auipc	ra,0x1
    80002100:	420080e7          	jalr	1056(ra) # 8000351c <acquire>
    80002104:	00002717          	auipc	a4,0x2
    80002108:	54070713          	addi	a4,a4,1344 # 80004644 <ticks>
    8000210c:	00072783          	lw	a5,0(a4)
    80002110:	01013403          	ld	s0,16(sp)
    80002114:	01813083          	ld	ra,24(sp)
    80002118:	00048513          	mv	a0,s1
    8000211c:	0017879b          	addiw	a5,a5,1
    80002120:	00813483          	ld	s1,8(sp)
    80002124:	00f72023          	sw	a5,0(a4)
    80002128:	02010113          	addi	sp,sp,32
    8000212c:	00001317          	auipc	t1,0x1
    80002130:	4bc30067          	jr	1212(t1) # 800035e8 <release>

0000000080002134 <devintr>:
    80002134:	142027f3          	csrr	a5,scause
    80002138:	00000513          	li	a0,0
    8000213c:	0007c463          	bltz	a5,80002144 <devintr+0x10>
    80002140:	00008067          	ret
    80002144:	fe010113          	addi	sp,sp,-32
    80002148:	00813823          	sd	s0,16(sp)
    8000214c:	00113c23          	sd	ra,24(sp)
    80002150:	00913423          	sd	s1,8(sp)
    80002154:	02010413          	addi	s0,sp,32
    80002158:	0ff7f713          	andi	a4,a5,255
    8000215c:	00900693          	li	a3,9
    80002160:	04d70c63          	beq	a4,a3,800021b8 <devintr+0x84>
    80002164:	fff00713          	li	a4,-1
    80002168:	03f71713          	slli	a4,a4,0x3f
    8000216c:	00170713          	addi	a4,a4,1
    80002170:	00e78c63          	beq	a5,a4,80002188 <devintr+0x54>
    80002174:	01813083          	ld	ra,24(sp)
    80002178:	01013403          	ld	s0,16(sp)
    8000217c:	00813483          	ld	s1,8(sp)
    80002180:	02010113          	addi	sp,sp,32
    80002184:	00008067          	ret
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	c8c080e7          	jalr	-884(ra) # 80001e14 <cpuid>
    80002190:	06050663          	beqz	a0,800021fc <devintr+0xc8>
    80002194:	144027f3          	csrr	a5,sip
    80002198:	ffd7f793          	andi	a5,a5,-3
    8000219c:	14479073          	csrw	sip,a5
    800021a0:	01813083          	ld	ra,24(sp)
    800021a4:	01013403          	ld	s0,16(sp)
    800021a8:	00813483          	ld	s1,8(sp)
    800021ac:	00200513          	li	a0,2
    800021b0:	02010113          	addi	sp,sp,32
    800021b4:	00008067          	ret
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	24c080e7          	jalr	588(ra) # 80002404 <plic_claim>
    800021c0:	00a00793          	li	a5,10
    800021c4:	00050493          	mv	s1,a0
    800021c8:	06f50663          	beq	a0,a5,80002234 <devintr+0x100>
    800021cc:	00100513          	li	a0,1
    800021d0:	fa0482e3          	beqz	s1,80002174 <devintr+0x40>
    800021d4:	00048593          	mv	a1,s1
    800021d8:	00002517          	auipc	a0,0x2
    800021dc:	f2050513          	addi	a0,a0,-224 # 800040f8 <_ZN15MemoryAllocator10DBlockSizeE+0xd8>
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	668080e7          	jalr	1640(ra) # 80002848 <__printf>
    800021e8:	00048513          	mv	a0,s1
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	250080e7          	jalr	592(ra) # 8000243c <plic_complete>
    800021f4:	00100513          	li	a0,1
    800021f8:	f7dff06f          	j	80002174 <devintr+0x40>
    800021fc:	00003517          	auipc	a0,0x3
    80002200:	54450513          	addi	a0,a0,1348 # 80005740 <tickslock>
    80002204:	00001097          	auipc	ra,0x1
    80002208:	318080e7          	jalr	792(ra) # 8000351c <acquire>
    8000220c:	00002717          	auipc	a4,0x2
    80002210:	43870713          	addi	a4,a4,1080 # 80004644 <ticks>
    80002214:	00072783          	lw	a5,0(a4)
    80002218:	00003517          	auipc	a0,0x3
    8000221c:	52850513          	addi	a0,a0,1320 # 80005740 <tickslock>
    80002220:	0017879b          	addiw	a5,a5,1
    80002224:	00f72023          	sw	a5,0(a4)
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	3c0080e7          	jalr	960(ra) # 800035e8 <release>
    80002230:	f65ff06f          	j	80002194 <devintr+0x60>
    80002234:	00001097          	auipc	ra,0x1
    80002238:	f1c080e7          	jalr	-228(ra) # 80003150 <uartintr>
    8000223c:	fadff06f          	j	800021e8 <devintr+0xb4>

0000000080002240 <kernelvec>:
    80002240:	f0010113          	addi	sp,sp,-256
    80002244:	00113023          	sd	ra,0(sp)
    80002248:	00213423          	sd	sp,8(sp)
    8000224c:	00313823          	sd	gp,16(sp)
    80002250:	00413c23          	sd	tp,24(sp)
    80002254:	02513023          	sd	t0,32(sp)
    80002258:	02613423          	sd	t1,40(sp)
    8000225c:	02713823          	sd	t2,48(sp)
    80002260:	02813c23          	sd	s0,56(sp)
    80002264:	04913023          	sd	s1,64(sp)
    80002268:	04a13423          	sd	a0,72(sp)
    8000226c:	04b13823          	sd	a1,80(sp)
    80002270:	04c13c23          	sd	a2,88(sp)
    80002274:	06d13023          	sd	a3,96(sp)
    80002278:	06e13423          	sd	a4,104(sp)
    8000227c:	06f13823          	sd	a5,112(sp)
    80002280:	07013c23          	sd	a6,120(sp)
    80002284:	09113023          	sd	a7,128(sp)
    80002288:	09213423          	sd	s2,136(sp)
    8000228c:	09313823          	sd	s3,144(sp)
    80002290:	09413c23          	sd	s4,152(sp)
    80002294:	0b513023          	sd	s5,160(sp)
    80002298:	0b613423          	sd	s6,168(sp)
    8000229c:	0b713823          	sd	s7,176(sp)
    800022a0:	0b813c23          	sd	s8,184(sp)
    800022a4:	0d913023          	sd	s9,192(sp)
    800022a8:	0da13423          	sd	s10,200(sp)
    800022ac:	0db13823          	sd	s11,208(sp)
    800022b0:	0dc13c23          	sd	t3,216(sp)
    800022b4:	0fd13023          	sd	t4,224(sp)
    800022b8:	0fe13423          	sd	t5,232(sp)
    800022bc:	0ff13823          	sd	t6,240(sp)
    800022c0:	cd5ff0ef          	jal	ra,80001f94 <kerneltrap>
    800022c4:	00013083          	ld	ra,0(sp)
    800022c8:	00813103          	ld	sp,8(sp)
    800022cc:	01013183          	ld	gp,16(sp)
    800022d0:	02013283          	ld	t0,32(sp)
    800022d4:	02813303          	ld	t1,40(sp)
    800022d8:	03013383          	ld	t2,48(sp)
    800022dc:	03813403          	ld	s0,56(sp)
    800022e0:	04013483          	ld	s1,64(sp)
    800022e4:	04813503          	ld	a0,72(sp)
    800022e8:	05013583          	ld	a1,80(sp)
    800022ec:	05813603          	ld	a2,88(sp)
    800022f0:	06013683          	ld	a3,96(sp)
    800022f4:	06813703          	ld	a4,104(sp)
    800022f8:	07013783          	ld	a5,112(sp)
    800022fc:	07813803          	ld	a6,120(sp)
    80002300:	08013883          	ld	a7,128(sp)
    80002304:	08813903          	ld	s2,136(sp)
    80002308:	09013983          	ld	s3,144(sp)
    8000230c:	09813a03          	ld	s4,152(sp)
    80002310:	0a013a83          	ld	s5,160(sp)
    80002314:	0a813b03          	ld	s6,168(sp)
    80002318:	0b013b83          	ld	s7,176(sp)
    8000231c:	0b813c03          	ld	s8,184(sp)
    80002320:	0c013c83          	ld	s9,192(sp)
    80002324:	0c813d03          	ld	s10,200(sp)
    80002328:	0d013d83          	ld	s11,208(sp)
    8000232c:	0d813e03          	ld	t3,216(sp)
    80002330:	0e013e83          	ld	t4,224(sp)
    80002334:	0e813f03          	ld	t5,232(sp)
    80002338:	0f013f83          	ld	t6,240(sp)
    8000233c:	10010113          	addi	sp,sp,256
    80002340:	10200073          	sret
    80002344:	00000013          	nop
    80002348:	00000013          	nop
    8000234c:	00000013          	nop

0000000080002350 <timervec>:
    80002350:	34051573          	csrrw	a0,mscratch,a0
    80002354:	00b53023          	sd	a1,0(a0)
    80002358:	00c53423          	sd	a2,8(a0)
    8000235c:	00d53823          	sd	a3,16(a0)
    80002360:	01853583          	ld	a1,24(a0)
    80002364:	02053603          	ld	a2,32(a0)
    80002368:	0005b683          	ld	a3,0(a1)
    8000236c:	00c686b3          	add	a3,a3,a2
    80002370:	00d5b023          	sd	a3,0(a1)
    80002374:	00200593          	li	a1,2
    80002378:	14459073          	csrw	sip,a1
    8000237c:	01053683          	ld	a3,16(a0)
    80002380:	00853603          	ld	a2,8(a0)
    80002384:	00053583          	ld	a1,0(a0)
    80002388:	34051573          	csrrw	a0,mscratch,a0
    8000238c:	30200073          	mret

0000000080002390 <plicinit>:
    80002390:	ff010113          	addi	sp,sp,-16
    80002394:	00813423          	sd	s0,8(sp)
    80002398:	01010413          	addi	s0,sp,16
    8000239c:	00813403          	ld	s0,8(sp)
    800023a0:	0c0007b7          	lui	a5,0xc000
    800023a4:	00100713          	li	a4,1
    800023a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800023ac:	00e7a223          	sw	a4,4(a5)
    800023b0:	01010113          	addi	sp,sp,16
    800023b4:	00008067          	ret

00000000800023b8 <plicinithart>:
    800023b8:	ff010113          	addi	sp,sp,-16
    800023bc:	00813023          	sd	s0,0(sp)
    800023c0:	00113423          	sd	ra,8(sp)
    800023c4:	01010413          	addi	s0,sp,16
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	a4c080e7          	jalr	-1460(ra) # 80001e14 <cpuid>
    800023d0:	0085171b          	slliw	a4,a0,0x8
    800023d4:	0c0027b7          	lui	a5,0xc002
    800023d8:	00e787b3          	add	a5,a5,a4
    800023dc:	40200713          	li	a4,1026
    800023e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800023e4:	00813083          	ld	ra,8(sp)
    800023e8:	00013403          	ld	s0,0(sp)
    800023ec:	00d5151b          	slliw	a0,a0,0xd
    800023f0:	0c2017b7          	lui	a5,0xc201
    800023f4:	00a78533          	add	a0,a5,a0
    800023f8:	00052023          	sw	zero,0(a0)
    800023fc:	01010113          	addi	sp,sp,16
    80002400:	00008067          	ret

0000000080002404 <plic_claim>:
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00813023          	sd	s0,0(sp)
    8000240c:	00113423          	sd	ra,8(sp)
    80002410:	01010413          	addi	s0,sp,16
    80002414:	00000097          	auipc	ra,0x0
    80002418:	a00080e7          	jalr	-1536(ra) # 80001e14 <cpuid>
    8000241c:	00813083          	ld	ra,8(sp)
    80002420:	00013403          	ld	s0,0(sp)
    80002424:	00d5151b          	slliw	a0,a0,0xd
    80002428:	0c2017b7          	lui	a5,0xc201
    8000242c:	00a78533          	add	a0,a5,a0
    80002430:	00452503          	lw	a0,4(a0)
    80002434:	01010113          	addi	sp,sp,16
    80002438:	00008067          	ret

000000008000243c <plic_complete>:
    8000243c:	fe010113          	addi	sp,sp,-32
    80002440:	00813823          	sd	s0,16(sp)
    80002444:	00913423          	sd	s1,8(sp)
    80002448:	00113c23          	sd	ra,24(sp)
    8000244c:	02010413          	addi	s0,sp,32
    80002450:	00050493          	mv	s1,a0
    80002454:	00000097          	auipc	ra,0x0
    80002458:	9c0080e7          	jalr	-1600(ra) # 80001e14 <cpuid>
    8000245c:	01813083          	ld	ra,24(sp)
    80002460:	01013403          	ld	s0,16(sp)
    80002464:	00d5179b          	slliw	a5,a0,0xd
    80002468:	0c201737          	lui	a4,0xc201
    8000246c:	00f707b3          	add	a5,a4,a5
    80002470:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002474:	00813483          	ld	s1,8(sp)
    80002478:	02010113          	addi	sp,sp,32
    8000247c:	00008067          	ret

0000000080002480 <consolewrite>:
    80002480:	fb010113          	addi	sp,sp,-80
    80002484:	04813023          	sd	s0,64(sp)
    80002488:	04113423          	sd	ra,72(sp)
    8000248c:	02913c23          	sd	s1,56(sp)
    80002490:	03213823          	sd	s2,48(sp)
    80002494:	03313423          	sd	s3,40(sp)
    80002498:	03413023          	sd	s4,32(sp)
    8000249c:	01513c23          	sd	s5,24(sp)
    800024a0:	05010413          	addi	s0,sp,80
    800024a4:	06c05c63          	blez	a2,8000251c <consolewrite+0x9c>
    800024a8:	00060993          	mv	s3,a2
    800024ac:	00050a13          	mv	s4,a0
    800024b0:	00058493          	mv	s1,a1
    800024b4:	00000913          	li	s2,0
    800024b8:	fff00a93          	li	s5,-1
    800024bc:	01c0006f          	j	800024d8 <consolewrite+0x58>
    800024c0:	fbf44503          	lbu	a0,-65(s0)
    800024c4:	0019091b          	addiw	s2,s2,1
    800024c8:	00148493          	addi	s1,s1,1
    800024cc:	00001097          	auipc	ra,0x1
    800024d0:	a9c080e7          	jalr	-1380(ra) # 80002f68 <uartputc>
    800024d4:	03298063          	beq	s3,s2,800024f4 <consolewrite+0x74>
    800024d8:	00048613          	mv	a2,s1
    800024dc:	00100693          	li	a3,1
    800024e0:	000a0593          	mv	a1,s4
    800024e4:	fbf40513          	addi	a0,s0,-65
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	9e4080e7          	jalr	-1564(ra) # 80001ecc <either_copyin>
    800024f0:	fd5518e3          	bne	a0,s5,800024c0 <consolewrite+0x40>
    800024f4:	04813083          	ld	ra,72(sp)
    800024f8:	04013403          	ld	s0,64(sp)
    800024fc:	03813483          	ld	s1,56(sp)
    80002500:	02813983          	ld	s3,40(sp)
    80002504:	02013a03          	ld	s4,32(sp)
    80002508:	01813a83          	ld	s5,24(sp)
    8000250c:	00090513          	mv	a0,s2
    80002510:	03013903          	ld	s2,48(sp)
    80002514:	05010113          	addi	sp,sp,80
    80002518:	00008067          	ret
    8000251c:	00000913          	li	s2,0
    80002520:	fd5ff06f          	j	800024f4 <consolewrite+0x74>

0000000080002524 <consoleread>:
    80002524:	f9010113          	addi	sp,sp,-112
    80002528:	06813023          	sd	s0,96(sp)
    8000252c:	04913c23          	sd	s1,88(sp)
    80002530:	05213823          	sd	s2,80(sp)
    80002534:	05313423          	sd	s3,72(sp)
    80002538:	05413023          	sd	s4,64(sp)
    8000253c:	03513c23          	sd	s5,56(sp)
    80002540:	03613823          	sd	s6,48(sp)
    80002544:	03713423          	sd	s7,40(sp)
    80002548:	03813023          	sd	s8,32(sp)
    8000254c:	06113423          	sd	ra,104(sp)
    80002550:	01913c23          	sd	s9,24(sp)
    80002554:	07010413          	addi	s0,sp,112
    80002558:	00060b93          	mv	s7,a2
    8000255c:	00050913          	mv	s2,a0
    80002560:	00058c13          	mv	s8,a1
    80002564:	00060b1b          	sext.w	s6,a2
    80002568:	00003497          	auipc	s1,0x3
    8000256c:	1f048493          	addi	s1,s1,496 # 80005758 <cons>
    80002570:	00400993          	li	s3,4
    80002574:	fff00a13          	li	s4,-1
    80002578:	00a00a93          	li	s5,10
    8000257c:	05705e63          	blez	s7,800025d8 <consoleread+0xb4>
    80002580:	09c4a703          	lw	a4,156(s1)
    80002584:	0984a783          	lw	a5,152(s1)
    80002588:	0007071b          	sext.w	a4,a4
    8000258c:	08e78463          	beq	a5,a4,80002614 <consoleread+0xf0>
    80002590:	07f7f713          	andi	a4,a5,127
    80002594:	00e48733          	add	a4,s1,a4
    80002598:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000259c:	0017869b          	addiw	a3,a5,1
    800025a0:	08d4ac23          	sw	a3,152(s1)
    800025a4:	00070c9b          	sext.w	s9,a4
    800025a8:	0b370663          	beq	a4,s3,80002654 <consoleread+0x130>
    800025ac:	00100693          	li	a3,1
    800025b0:	f9f40613          	addi	a2,s0,-97
    800025b4:	000c0593          	mv	a1,s8
    800025b8:	00090513          	mv	a0,s2
    800025bc:	f8e40fa3          	sb	a4,-97(s0)
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	8c0080e7          	jalr	-1856(ra) # 80001e80 <either_copyout>
    800025c8:	01450863          	beq	a0,s4,800025d8 <consoleread+0xb4>
    800025cc:	001c0c13          	addi	s8,s8,1
    800025d0:	fffb8b9b          	addiw	s7,s7,-1
    800025d4:	fb5c94e3          	bne	s9,s5,8000257c <consoleread+0x58>
    800025d8:	000b851b          	sext.w	a0,s7
    800025dc:	06813083          	ld	ra,104(sp)
    800025e0:	06013403          	ld	s0,96(sp)
    800025e4:	05813483          	ld	s1,88(sp)
    800025e8:	05013903          	ld	s2,80(sp)
    800025ec:	04813983          	ld	s3,72(sp)
    800025f0:	04013a03          	ld	s4,64(sp)
    800025f4:	03813a83          	ld	s5,56(sp)
    800025f8:	02813b83          	ld	s7,40(sp)
    800025fc:	02013c03          	ld	s8,32(sp)
    80002600:	01813c83          	ld	s9,24(sp)
    80002604:	40ab053b          	subw	a0,s6,a0
    80002608:	03013b03          	ld	s6,48(sp)
    8000260c:	07010113          	addi	sp,sp,112
    80002610:	00008067          	ret
    80002614:	00001097          	auipc	ra,0x1
    80002618:	1d8080e7          	jalr	472(ra) # 800037ec <push_on>
    8000261c:	0984a703          	lw	a4,152(s1)
    80002620:	09c4a783          	lw	a5,156(s1)
    80002624:	0007879b          	sext.w	a5,a5
    80002628:	fef70ce3          	beq	a4,a5,80002620 <consoleread+0xfc>
    8000262c:	00001097          	auipc	ra,0x1
    80002630:	234080e7          	jalr	564(ra) # 80003860 <pop_on>
    80002634:	0984a783          	lw	a5,152(s1)
    80002638:	07f7f713          	andi	a4,a5,127
    8000263c:	00e48733          	add	a4,s1,a4
    80002640:	01874703          	lbu	a4,24(a4)
    80002644:	0017869b          	addiw	a3,a5,1
    80002648:	08d4ac23          	sw	a3,152(s1)
    8000264c:	00070c9b          	sext.w	s9,a4
    80002650:	f5371ee3          	bne	a4,s3,800025ac <consoleread+0x88>
    80002654:	000b851b          	sext.w	a0,s7
    80002658:	f96bf2e3          	bgeu	s7,s6,800025dc <consoleread+0xb8>
    8000265c:	08f4ac23          	sw	a5,152(s1)
    80002660:	f7dff06f          	j	800025dc <consoleread+0xb8>

0000000080002664 <consputc>:
    80002664:	10000793          	li	a5,256
    80002668:	00f50663          	beq	a0,a5,80002674 <consputc+0x10>
    8000266c:	00001317          	auipc	t1,0x1
    80002670:	9f430067          	jr	-1548(t1) # 80003060 <uartputc_sync>
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00113423          	sd	ra,8(sp)
    8000267c:	00813023          	sd	s0,0(sp)
    80002680:	01010413          	addi	s0,sp,16
    80002684:	00800513          	li	a0,8
    80002688:	00001097          	auipc	ra,0x1
    8000268c:	9d8080e7          	jalr	-1576(ra) # 80003060 <uartputc_sync>
    80002690:	02000513          	li	a0,32
    80002694:	00001097          	auipc	ra,0x1
    80002698:	9cc080e7          	jalr	-1588(ra) # 80003060 <uartputc_sync>
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	00813083          	ld	ra,8(sp)
    800026a4:	00800513          	li	a0,8
    800026a8:	01010113          	addi	sp,sp,16
    800026ac:	00001317          	auipc	t1,0x1
    800026b0:	9b430067          	jr	-1612(t1) # 80003060 <uartputc_sync>

00000000800026b4 <consoleintr>:
    800026b4:	fe010113          	addi	sp,sp,-32
    800026b8:	00813823          	sd	s0,16(sp)
    800026bc:	00913423          	sd	s1,8(sp)
    800026c0:	01213023          	sd	s2,0(sp)
    800026c4:	00113c23          	sd	ra,24(sp)
    800026c8:	02010413          	addi	s0,sp,32
    800026cc:	00003917          	auipc	s2,0x3
    800026d0:	08c90913          	addi	s2,s2,140 # 80005758 <cons>
    800026d4:	00050493          	mv	s1,a0
    800026d8:	00090513          	mv	a0,s2
    800026dc:	00001097          	auipc	ra,0x1
    800026e0:	e40080e7          	jalr	-448(ra) # 8000351c <acquire>
    800026e4:	02048c63          	beqz	s1,8000271c <consoleintr+0x68>
    800026e8:	0a092783          	lw	a5,160(s2)
    800026ec:	09892703          	lw	a4,152(s2)
    800026f0:	07f00693          	li	a3,127
    800026f4:	40e7873b          	subw	a4,a5,a4
    800026f8:	02e6e263          	bltu	a3,a4,8000271c <consoleintr+0x68>
    800026fc:	00d00713          	li	a4,13
    80002700:	04e48063          	beq	s1,a4,80002740 <consoleintr+0x8c>
    80002704:	07f7f713          	andi	a4,a5,127
    80002708:	00e90733          	add	a4,s2,a4
    8000270c:	0017879b          	addiw	a5,a5,1
    80002710:	0af92023          	sw	a5,160(s2)
    80002714:	00970c23          	sb	s1,24(a4)
    80002718:	08f92e23          	sw	a5,156(s2)
    8000271c:	01013403          	ld	s0,16(sp)
    80002720:	01813083          	ld	ra,24(sp)
    80002724:	00813483          	ld	s1,8(sp)
    80002728:	00013903          	ld	s2,0(sp)
    8000272c:	00003517          	auipc	a0,0x3
    80002730:	02c50513          	addi	a0,a0,44 # 80005758 <cons>
    80002734:	02010113          	addi	sp,sp,32
    80002738:	00001317          	auipc	t1,0x1
    8000273c:	eb030067          	jr	-336(t1) # 800035e8 <release>
    80002740:	00a00493          	li	s1,10
    80002744:	fc1ff06f          	j	80002704 <consoleintr+0x50>

0000000080002748 <consoleinit>:
    80002748:	fe010113          	addi	sp,sp,-32
    8000274c:	00113c23          	sd	ra,24(sp)
    80002750:	00813823          	sd	s0,16(sp)
    80002754:	00913423          	sd	s1,8(sp)
    80002758:	02010413          	addi	s0,sp,32
    8000275c:	00003497          	auipc	s1,0x3
    80002760:	ffc48493          	addi	s1,s1,-4 # 80005758 <cons>
    80002764:	00048513          	mv	a0,s1
    80002768:	00002597          	auipc	a1,0x2
    8000276c:	9e858593          	addi	a1,a1,-1560 # 80004150 <_ZN15MemoryAllocator10DBlockSizeE+0x130>
    80002770:	00001097          	auipc	ra,0x1
    80002774:	d88080e7          	jalr	-632(ra) # 800034f8 <initlock>
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	7ac080e7          	jalr	1964(ra) # 80002f24 <uartinit>
    80002780:	01813083          	ld	ra,24(sp)
    80002784:	01013403          	ld	s0,16(sp)
    80002788:	00000797          	auipc	a5,0x0
    8000278c:	d9c78793          	addi	a5,a5,-612 # 80002524 <consoleread>
    80002790:	0af4bc23          	sd	a5,184(s1)
    80002794:	00000797          	auipc	a5,0x0
    80002798:	cec78793          	addi	a5,a5,-788 # 80002480 <consolewrite>
    8000279c:	0cf4b023          	sd	a5,192(s1)
    800027a0:	00813483          	ld	s1,8(sp)
    800027a4:	02010113          	addi	sp,sp,32
    800027a8:	00008067          	ret

00000000800027ac <console_read>:
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00813423          	sd	s0,8(sp)
    800027b4:	01010413          	addi	s0,sp,16
    800027b8:	00813403          	ld	s0,8(sp)
    800027bc:	00003317          	auipc	t1,0x3
    800027c0:	05433303          	ld	t1,84(t1) # 80005810 <devsw+0x10>
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00030067          	jr	t1

00000000800027cc <console_write>:
    800027cc:	ff010113          	addi	sp,sp,-16
    800027d0:	00813423          	sd	s0,8(sp)
    800027d4:	01010413          	addi	s0,sp,16
    800027d8:	00813403          	ld	s0,8(sp)
    800027dc:	00003317          	auipc	t1,0x3
    800027e0:	03c33303          	ld	t1,60(t1) # 80005818 <devsw+0x18>
    800027e4:	01010113          	addi	sp,sp,16
    800027e8:	00030067          	jr	t1

00000000800027ec <panic>:
    800027ec:	fe010113          	addi	sp,sp,-32
    800027f0:	00113c23          	sd	ra,24(sp)
    800027f4:	00813823          	sd	s0,16(sp)
    800027f8:	00913423          	sd	s1,8(sp)
    800027fc:	02010413          	addi	s0,sp,32
    80002800:	00050493          	mv	s1,a0
    80002804:	00002517          	auipc	a0,0x2
    80002808:	95450513          	addi	a0,a0,-1708 # 80004158 <_ZN15MemoryAllocator10DBlockSizeE+0x138>
    8000280c:	00003797          	auipc	a5,0x3
    80002810:	0a07a623          	sw	zero,172(a5) # 800058b8 <pr+0x18>
    80002814:	00000097          	auipc	ra,0x0
    80002818:	034080e7          	jalr	52(ra) # 80002848 <__printf>
    8000281c:	00048513          	mv	a0,s1
    80002820:	00000097          	auipc	ra,0x0
    80002824:	028080e7          	jalr	40(ra) # 80002848 <__printf>
    80002828:	00002517          	auipc	a0,0x2
    8000282c:	91050513          	addi	a0,a0,-1776 # 80004138 <_ZN15MemoryAllocator10DBlockSizeE+0x118>
    80002830:	00000097          	auipc	ra,0x0
    80002834:	018080e7          	jalr	24(ra) # 80002848 <__printf>
    80002838:	00100793          	li	a5,1
    8000283c:	00002717          	auipc	a4,0x2
    80002840:	e0f72623          	sw	a5,-500(a4) # 80004648 <panicked>
    80002844:	0000006f          	j	80002844 <panic+0x58>

0000000080002848 <__printf>:
    80002848:	f3010113          	addi	sp,sp,-208
    8000284c:	08813023          	sd	s0,128(sp)
    80002850:	07313423          	sd	s3,104(sp)
    80002854:	09010413          	addi	s0,sp,144
    80002858:	05813023          	sd	s8,64(sp)
    8000285c:	08113423          	sd	ra,136(sp)
    80002860:	06913c23          	sd	s1,120(sp)
    80002864:	07213823          	sd	s2,112(sp)
    80002868:	07413023          	sd	s4,96(sp)
    8000286c:	05513c23          	sd	s5,88(sp)
    80002870:	05613823          	sd	s6,80(sp)
    80002874:	05713423          	sd	s7,72(sp)
    80002878:	03913c23          	sd	s9,56(sp)
    8000287c:	03a13823          	sd	s10,48(sp)
    80002880:	03b13423          	sd	s11,40(sp)
    80002884:	00003317          	auipc	t1,0x3
    80002888:	01c30313          	addi	t1,t1,28 # 800058a0 <pr>
    8000288c:	01832c03          	lw	s8,24(t1)
    80002890:	00b43423          	sd	a1,8(s0)
    80002894:	00c43823          	sd	a2,16(s0)
    80002898:	00d43c23          	sd	a3,24(s0)
    8000289c:	02e43023          	sd	a4,32(s0)
    800028a0:	02f43423          	sd	a5,40(s0)
    800028a4:	03043823          	sd	a6,48(s0)
    800028a8:	03143c23          	sd	a7,56(s0)
    800028ac:	00050993          	mv	s3,a0
    800028b0:	4a0c1663          	bnez	s8,80002d5c <__printf+0x514>
    800028b4:	60098c63          	beqz	s3,80002ecc <__printf+0x684>
    800028b8:	0009c503          	lbu	a0,0(s3)
    800028bc:	00840793          	addi	a5,s0,8
    800028c0:	f6f43c23          	sd	a5,-136(s0)
    800028c4:	00000493          	li	s1,0
    800028c8:	22050063          	beqz	a0,80002ae8 <__printf+0x2a0>
    800028cc:	00002a37          	lui	s4,0x2
    800028d0:	00018ab7          	lui	s5,0x18
    800028d4:	000f4b37          	lui	s6,0xf4
    800028d8:	00989bb7          	lui	s7,0x989
    800028dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800028e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800028e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800028e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800028ec:	00148c9b          	addiw	s9,s1,1
    800028f0:	02500793          	li	a5,37
    800028f4:	01998933          	add	s2,s3,s9
    800028f8:	38f51263          	bne	a0,a5,80002c7c <__printf+0x434>
    800028fc:	00094783          	lbu	a5,0(s2)
    80002900:	00078c9b          	sext.w	s9,a5
    80002904:	1e078263          	beqz	a5,80002ae8 <__printf+0x2a0>
    80002908:	0024849b          	addiw	s1,s1,2
    8000290c:	07000713          	li	a4,112
    80002910:	00998933          	add	s2,s3,s1
    80002914:	38e78a63          	beq	a5,a4,80002ca8 <__printf+0x460>
    80002918:	20f76863          	bltu	a4,a5,80002b28 <__printf+0x2e0>
    8000291c:	42a78863          	beq	a5,a0,80002d4c <__printf+0x504>
    80002920:	06400713          	li	a4,100
    80002924:	40e79663          	bne	a5,a4,80002d30 <__printf+0x4e8>
    80002928:	f7843783          	ld	a5,-136(s0)
    8000292c:	0007a603          	lw	a2,0(a5)
    80002930:	00878793          	addi	a5,a5,8
    80002934:	f6f43c23          	sd	a5,-136(s0)
    80002938:	42064a63          	bltz	a2,80002d6c <__printf+0x524>
    8000293c:	00a00713          	li	a4,10
    80002940:	02e677bb          	remuw	a5,a2,a4
    80002944:	00002d97          	auipc	s11,0x2
    80002948:	83cd8d93          	addi	s11,s11,-1988 # 80004180 <digits>
    8000294c:	00900593          	li	a1,9
    80002950:	0006051b          	sext.w	a0,a2
    80002954:	00000c93          	li	s9,0
    80002958:	02079793          	slli	a5,a5,0x20
    8000295c:	0207d793          	srli	a5,a5,0x20
    80002960:	00fd87b3          	add	a5,s11,a5
    80002964:	0007c783          	lbu	a5,0(a5)
    80002968:	02e656bb          	divuw	a3,a2,a4
    8000296c:	f8f40023          	sb	a5,-128(s0)
    80002970:	14c5d863          	bge	a1,a2,80002ac0 <__printf+0x278>
    80002974:	06300593          	li	a1,99
    80002978:	00100c93          	li	s9,1
    8000297c:	02e6f7bb          	remuw	a5,a3,a4
    80002980:	02079793          	slli	a5,a5,0x20
    80002984:	0207d793          	srli	a5,a5,0x20
    80002988:	00fd87b3          	add	a5,s11,a5
    8000298c:	0007c783          	lbu	a5,0(a5)
    80002990:	02e6d73b          	divuw	a4,a3,a4
    80002994:	f8f400a3          	sb	a5,-127(s0)
    80002998:	12a5f463          	bgeu	a1,a0,80002ac0 <__printf+0x278>
    8000299c:	00a00693          	li	a3,10
    800029a0:	00900593          	li	a1,9
    800029a4:	02d777bb          	remuw	a5,a4,a3
    800029a8:	02079793          	slli	a5,a5,0x20
    800029ac:	0207d793          	srli	a5,a5,0x20
    800029b0:	00fd87b3          	add	a5,s11,a5
    800029b4:	0007c503          	lbu	a0,0(a5)
    800029b8:	02d757bb          	divuw	a5,a4,a3
    800029bc:	f8a40123          	sb	a0,-126(s0)
    800029c0:	48e5f263          	bgeu	a1,a4,80002e44 <__printf+0x5fc>
    800029c4:	06300513          	li	a0,99
    800029c8:	02d7f5bb          	remuw	a1,a5,a3
    800029cc:	02059593          	slli	a1,a1,0x20
    800029d0:	0205d593          	srli	a1,a1,0x20
    800029d4:	00bd85b3          	add	a1,s11,a1
    800029d8:	0005c583          	lbu	a1,0(a1)
    800029dc:	02d7d7bb          	divuw	a5,a5,a3
    800029e0:	f8b401a3          	sb	a1,-125(s0)
    800029e4:	48e57263          	bgeu	a0,a4,80002e68 <__printf+0x620>
    800029e8:	3e700513          	li	a0,999
    800029ec:	02d7f5bb          	remuw	a1,a5,a3
    800029f0:	02059593          	slli	a1,a1,0x20
    800029f4:	0205d593          	srli	a1,a1,0x20
    800029f8:	00bd85b3          	add	a1,s11,a1
    800029fc:	0005c583          	lbu	a1,0(a1)
    80002a00:	02d7d7bb          	divuw	a5,a5,a3
    80002a04:	f8b40223          	sb	a1,-124(s0)
    80002a08:	46e57663          	bgeu	a0,a4,80002e74 <__printf+0x62c>
    80002a0c:	02d7f5bb          	remuw	a1,a5,a3
    80002a10:	02059593          	slli	a1,a1,0x20
    80002a14:	0205d593          	srli	a1,a1,0x20
    80002a18:	00bd85b3          	add	a1,s11,a1
    80002a1c:	0005c583          	lbu	a1,0(a1)
    80002a20:	02d7d7bb          	divuw	a5,a5,a3
    80002a24:	f8b402a3          	sb	a1,-123(s0)
    80002a28:	46ea7863          	bgeu	s4,a4,80002e98 <__printf+0x650>
    80002a2c:	02d7f5bb          	remuw	a1,a5,a3
    80002a30:	02059593          	slli	a1,a1,0x20
    80002a34:	0205d593          	srli	a1,a1,0x20
    80002a38:	00bd85b3          	add	a1,s11,a1
    80002a3c:	0005c583          	lbu	a1,0(a1)
    80002a40:	02d7d7bb          	divuw	a5,a5,a3
    80002a44:	f8b40323          	sb	a1,-122(s0)
    80002a48:	3eeaf863          	bgeu	s5,a4,80002e38 <__printf+0x5f0>
    80002a4c:	02d7f5bb          	remuw	a1,a5,a3
    80002a50:	02059593          	slli	a1,a1,0x20
    80002a54:	0205d593          	srli	a1,a1,0x20
    80002a58:	00bd85b3          	add	a1,s11,a1
    80002a5c:	0005c583          	lbu	a1,0(a1)
    80002a60:	02d7d7bb          	divuw	a5,a5,a3
    80002a64:	f8b403a3          	sb	a1,-121(s0)
    80002a68:	42eb7e63          	bgeu	s6,a4,80002ea4 <__printf+0x65c>
    80002a6c:	02d7f5bb          	remuw	a1,a5,a3
    80002a70:	02059593          	slli	a1,a1,0x20
    80002a74:	0205d593          	srli	a1,a1,0x20
    80002a78:	00bd85b3          	add	a1,s11,a1
    80002a7c:	0005c583          	lbu	a1,0(a1)
    80002a80:	02d7d7bb          	divuw	a5,a5,a3
    80002a84:	f8b40423          	sb	a1,-120(s0)
    80002a88:	42ebfc63          	bgeu	s7,a4,80002ec0 <__printf+0x678>
    80002a8c:	02079793          	slli	a5,a5,0x20
    80002a90:	0207d793          	srli	a5,a5,0x20
    80002a94:	00fd8db3          	add	s11,s11,a5
    80002a98:	000dc703          	lbu	a4,0(s11)
    80002a9c:	00a00793          	li	a5,10
    80002aa0:	00900c93          	li	s9,9
    80002aa4:	f8e404a3          	sb	a4,-119(s0)
    80002aa8:	00065c63          	bgez	a2,80002ac0 <__printf+0x278>
    80002aac:	f9040713          	addi	a4,s0,-112
    80002ab0:	00f70733          	add	a4,a4,a5
    80002ab4:	02d00693          	li	a3,45
    80002ab8:	fed70823          	sb	a3,-16(a4)
    80002abc:	00078c93          	mv	s9,a5
    80002ac0:	f8040793          	addi	a5,s0,-128
    80002ac4:	01978cb3          	add	s9,a5,s9
    80002ac8:	f7f40d13          	addi	s10,s0,-129
    80002acc:	000cc503          	lbu	a0,0(s9)
    80002ad0:	fffc8c93          	addi	s9,s9,-1
    80002ad4:	00000097          	auipc	ra,0x0
    80002ad8:	b90080e7          	jalr	-1136(ra) # 80002664 <consputc>
    80002adc:	ffac98e3          	bne	s9,s10,80002acc <__printf+0x284>
    80002ae0:	00094503          	lbu	a0,0(s2)
    80002ae4:	e00514e3          	bnez	a0,800028ec <__printf+0xa4>
    80002ae8:	1a0c1663          	bnez	s8,80002c94 <__printf+0x44c>
    80002aec:	08813083          	ld	ra,136(sp)
    80002af0:	08013403          	ld	s0,128(sp)
    80002af4:	07813483          	ld	s1,120(sp)
    80002af8:	07013903          	ld	s2,112(sp)
    80002afc:	06813983          	ld	s3,104(sp)
    80002b00:	06013a03          	ld	s4,96(sp)
    80002b04:	05813a83          	ld	s5,88(sp)
    80002b08:	05013b03          	ld	s6,80(sp)
    80002b0c:	04813b83          	ld	s7,72(sp)
    80002b10:	04013c03          	ld	s8,64(sp)
    80002b14:	03813c83          	ld	s9,56(sp)
    80002b18:	03013d03          	ld	s10,48(sp)
    80002b1c:	02813d83          	ld	s11,40(sp)
    80002b20:	0d010113          	addi	sp,sp,208
    80002b24:	00008067          	ret
    80002b28:	07300713          	li	a4,115
    80002b2c:	1ce78a63          	beq	a5,a4,80002d00 <__printf+0x4b8>
    80002b30:	07800713          	li	a4,120
    80002b34:	1ee79e63          	bne	a5,a4,80002d30 <__printf+0x4e8>
    80002b38:	f7843783          	ld	a5,-136(s0)
    80002b3c:	0007a703          	lw	a4,0(a5)
    80002b40:	00878793          	addi	a5,a5,8
    80002b44:	f6f43c23          	sd	a5,-136(s0)
    80002b48:	28074263          	bltz	a4,80002dcc <__printf+0x584>
    80002b4c:	00001d97          	auipc	s11,0x1
    80002b50:	634d8d93          	addi	s11,s11,1588 # 80004180 <digits>
    80002b54:	00f77793          	andi	a5,a4,15
    80002b58:	00fd87b3          	add	a5,s11,a5
    80002b5c:	0007c683          	lbu	a3,0(a5)
    80002b60:	00f00613          	li	a2,15
    80002b64:	0007079b          	sext.w	a5,a4
    80002b68:	f8d40023          	sb	a3,-128(s0)
    80002b6c:	0047559b          	srliw	a1,a4,0x4
    80002b70:	0047569b          	srliw	a3,a4,0x4
    80002b74:	00000c93          	li	s9,0
    80002b78:	0ee65063          	bge	a2,a4,80002c58 <__printf+0x410>
    80002b7c:	00f6f693          	andi	a3,a3,15
    80002b80:	00dd86b3          	add	a3,s11,a3
    80002b84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002b88:	0087d79b          	srliw	a5,a5,0x8
    80002b8c:	00100c93          	li	s9,1
    80002b90:	f8d400a3          	sb	a3,-127(s0)
    80002b94:	0cb67263          	bgeu	a2,a1,80002c58 <__printf+0x410>
    80002b98:	00f7f693          	andi	a3,a5,15
    80002b9c:	00dd86b3          	add	a3,s11,a3
    80002ba0:	0006c583          	lbu	a1,0(a3)
    80002ba4:	00f00613          	li	a2,15
    80002ba8:	0047d69b          	srliw	a3,a5,0x4
    80002bac:	f8b40123          	sb	a1,-126(s0)
    80002bb0:	0047d593          	srli	a1,a5,0x4
    80002bb4:	28f67e63          	bgeu	a2,a5,80002e50 <__printf+0x608>
    80002bb8:	00f6f693          	andi	a3,a3,15
    80002bbc:	00dd86b3          	add	a3,s11,a3
    80002bc0:	0006c503          	lbu	a0,0(a3)
    80002bc4:	0087d813          	srli	a6,a5,0x8
    80002bc8:	0087d69b          	srliw	a3,a5,0x8
    80002bcc:	f8a401a3          	sb	a0,-125(s0)
    80002bd0:	28b67663          	bgeu	a2,a1,80002e5c <__printf+0x614>
    80002bd4:	00f6f693          	andi	a3,a3,15
    80002bd8:	00dd86b3          	add	a3,s11,a3
    80002bdc:	0006c583          	lbu	a1,0(a3)
    80002be0:	00c7d513          	srli	a0,a5,0xc
    80002be4:	00c7d69b          	srliw	a3,a5,0xc
    80002be8:	f8b40223          	sb	a1,-124(s0)
    80002bec:	29067a63          	bgeu	a2,a6,80002e80 <__printf+0x638>
    80002bf0:	00f6f693          	andi	a3,a3,15
    80002bf4:	00dd86b3          	add	a3,s11,a3
    80002bf8:	0006c583          	lbu	a1,0(a3)
    80002bfc:	0107d813          	srli	a6,a5,0x10
    80002c00:	0107d69b          	srliw	a3,a5,0x10
    80002c04:	f8b402a3          	sb	a1,-123(s0)
    80002c08:	28a67263          	bgeu	a2,a0,80002e8c <__printf+0x644>
    80002c0c:	00f6f693          	andi	a3,a3,15
    80002c10:	00dd86b3          	add	a3,s11,a3
    80002c14:	0006c683          	lbu	a3,0(a3)
    80002c18:	0147d79b          	srliw	a5,a5,0x14
    80002c1c:	f8d40323          	sb	a3,-122(s0)
    80002c20:	21067663          	bgeu	a2,a6,80002e2c <__printf+0x5e4>
    80002c24:	02079793          	slli	a5,a5,0x20
    80002c28:	0207d793          	srli	a5,a5,0x20
    80002c2c:	00fd8db3          	add	s11,s11,a5
    80002c30:	000dc683          	lbu	a3,0(s11)
    80002c34:	00800793          	li	a5,8
    80002c38:	00700c93          	li	s9,7
    80002c3c:	f8d403a3          	sb	a3,-121(s0)
    80002c40:	00075c63          	bgez	a4,80002c58 <__printf+0x410>
    80002c44:	f9040713          	addi	a4,s0,-112
    80002c48:	00f70733          	add	a4,a4,a5
    80002c4c:	02d00693          	li	a3,45
    80002c50:	fed70823          	sb	a3,-16(a4)
    80002c54:	00078c93          	mv	s9,a5
    80002c58:	f8040793          	addi	a5,s0,-128
    80002c5c:	01978cb3          	add	s9,a5,s9
    80002c60:	f7f40d13          	addi	s10,s0,-129
    80002c64:	000cc503          	lbu	a0,0(s9)
    80002c68:	fffc8c93          	addi	s9,s9,-1
    80002c6c:	00000097          	auipc	ra,0x0
    80002c70:	9f8080e7          	jalr	-1544(ra) # 80002664 <consputc>
    80002c74:	ff9d18e3          	bne	s10,s9,80002c64 <__printf+0x41c>
    80002c78:	0100006f          	j	80002c88 <__printf+0x440>
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	9e8080e7          	jalr	-1560(ra) # 80002664 <consputc>
    80002c84:	000c8493          	mv	s1,s9
    80002c88:	00094503          	lbu	a0,0(s2)
    80002c8c:	c60510e3          	bnez	a0,800028ec <__printf+0xa4>
    80002c90:	e40c0ee3          	beqz	s8,80002aec <__printf+0x2a4>
    80002c94:	00003517          	auipc	a0,0x3
    80002c98:	c0c50513          	addi	a0,a0,-1012 # 800058a0 <pr>
    80002c9c:	00001097          	auipc	ra,0x1
    80002ca0:	94c080e7          	jalr	-1716(ra) # 800035e8 <release>
    80002ca4:	e49ff06f          	j	80002aec <__printf+0x2a4>
    80002ca8:	f7843783          	ld	a5,-136(s0)
    80002cac:	03000513          	li	a0,48
    80002cb0:	01000d13          	li	s10,16
    80002cb4:	00878713          	addi	a4,a5,8
    80002cb8:	0007bc83          	ld	s9,0(a5)
    80002cbc:	f6e43c23          	sd	a4,-136(s0)
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	9a4080e7          	jalr	-1628(ra) # 80002664 <consputc>
    80002cc8:	07800513          	li	a0,120
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	998080e7          	jalr	-1640(ra) # 80002664 <consputc>
    80002cd4:	00001d97          	auipc	s11,0x1
    80002cd8:	4acd8d93          	addi	s11,s11,1196 # 80004180 <digits>
    80002cdc:	03ccd793          	srli	a5,s9,0x3c
    80002ce0:	00fd87b3          	add	a5,s11,a5
    80002ce4:	0007c503          	lbu	a0,0(a5)
    80002ce8:	fffd0d1b          	addiw	s10,s10,-1
    80002cec:	004c9c93          	slli	s9,s9,0x4
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	974080e7          	jalr	-1676(ra) # 80002664 <consputc>
    80002cf8:	fe0d12e3          	bnez	s10,80002cdc <__printf+0x494>
    80002cfc:	f8dff06f          	j	80002c88 <__printf+0x440>
    80002d00:	f7843783          	ld	a5,-136(s0)
    80002d04:	0007bc83          	ld	s9,0(a5)
    80002d08:	00878793          	addi	a5,a5,8
    80002d0c:	f6f43c23          	sd	a5,-136(s0)
    80002d10:	000c9a63          	bnez	s9,80002d24 <__printf+0x4dc>
    80002d14:	1080006f          	j	80002e1c <__printf+0x5d4>
    80002d18:	001c8c93          	addi	s9,s9,1
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	948080e7          	jalr	-1720(ra) # 80002664 <consputc>
    80002d24:	000cc503          	lbu	a0,0(s9)
    80002d28:	fe0518e3          	bnez	a0,80002d18 <__printf+0x4d0>
    80002d2c:	f5dff06f          	j	80002c88 <__printf+0x440>
    80002d30:	02500513          	li	a0,37
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	930080e7          	jalr	-1744(ra) # 80002664 <consputc>
    80002d3c:	000c8513          	mv	a0,s9
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	924080e7          	jalr	-1756(ra) # 80002664 <consputc>
    80002d48:	f41ff06f          	j	80002c88 <__printf+0x440>
    80002d4c:	02500513          	li	a0,37
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	914080e7          	jalr	-1772(ra) # 80002664 <consputc>
    80002d58:	f31ff06f          	j	80002c88 <__printf+0x440>
    80002d5c:	00030513          	mv	a0,t1
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	7bc080e7          	jalr	1980(ra) # 8000351c <acquire>
    80002d68:	b4dff06f          	j	800028b4 <__printf+0x6c>
    80002d6c:	40c0053b          	negw	a0,a2
    80002d70:	00a00713          	li	a4,10
    80002d74:	02e576bb          	remuw	a3,a0,a4
    80002d78:	00001d97          	auipc	s11,0x1
    80002d7c:	408d8d93          	addi	s11,s11,1032 # 80004180 <digits>
    80002d80:	ff700593          	li	a1,-9
    80002d84:	02069693          	slli	a3,a3,0x20
    80002d88:	0206d693          	srli	a3,a3,0x20
    80002d8c:	00dd86b3          	add	a3,s11,a3
    80002d90:	0006c683          	lbu	a3,0(a3)
    80002d94:	02e557bb          	divuw	a5,a0,a4
    80002d98:	f8d40023          	sb	a3,-128(s0)
    80002d9c:	10b65e63          	bge	a2,a1,80002eb8 <__printf+0x670>
    80002da0:	06300593          	li	a1,99
    80002da4:	02e7f6bb          	remuw	a3,a5,a4
    80002da8:	02069693          	slli	a3,a3,0x20
    80002dac:	0206d693          	srli	a3,a3,0x20
    80002db0:	00dd86b3          	add	a3,s11,a3
    80002db4:	0006c683          	lbu	a3,0(a3)
    80002db8:	02e7d73b          	divuw	a4,a5,a4
    80002dbc:	00200793          	li	a5,2
    80002dc0:	f8d400a3          	sb	a3,-127(s0)
    80002dc4:	bca5ece3          	bltu	a1,a0,8000299c <__printf+0x154>
    80002dc8:	ce5ff06f          	j	80002aac <__printf+0x264>
    80002dcc:	40e007bb          	negw	a5,a4
    80002dd0:	00001d97          	auipc	s11,0x1
    80002dd4:	3b0d8d93          	addi	s11,s11,944 # 80004180 <digits>
    80002dd8:	00f7f693          	andi	a3,a5,15
    80002ddc:	00dd86b3          	add	a3,s11,a3
    80002de0:	0006c583          	lbu	a1,0(a3)
    80002de4:	ff100613          	li	a2,-15
    80002de8:	0047d69b          	srliw	a3,a5,0x4
    80002dec:	f8b40023          	sb	a1,-128(s0)
    80002df0:	0047d59b          	srliw	a1,a5,0x4
    80002df4:	0ac75e63          	bge	a4,a2,80002eb0 <__printf+0x668>
    80002df8:	00f6f693          	andi	a3,a3,15
    80002dfc:	00dd86b3          	add	a3,s11,a3
    80002e00:	0006c603          	lbu	a2,0(a3)
    80002e04:	00f00693          	li	a3,15
    80002e08:	0087d79b          	srliw	a5,a5,0x8
    80002e0c:	f8c400a3          	sb	a2,-127(s0)
    80002e10:	d8b6e4e3          	bltu	a3,a1,80002b98 <__printf+0x350>
    80002e14:	00200793          	li	a5,2
    80002e18:	e2dff06f          	j	80002c44 <__printf+0x3fc>
    80002e1c:	00001c97          	auipc	s9,0x1
    80002e20:	344c8c93          	addi	s9,s9,836 # 80004160 <_ZN15MemoryAllocator10DBlockSizeE+0x140>
    80002e24:	02800513          	li	a0,40
    80002e28:	ef1ff06f          	j	80002d18 <__printf+0x4d0>
    80002e2c:	00700793          	li	a5,7
    80002e30:	00600c93          	li	s9,6
    80002e34:	e0dff06f          	j	80002c40 <__printf+0x3f8>
    80002e38:	00700793          	li	a5,7
    80002e3c:	00600c93          	li	s9,6
    80002e40:	c69ff06f          	j	80002aa8 <__printf+0x260>
    80002e44:	00300793          	li	a5,3
    80002e48:	00200c93          	li	s9,2
    80002e4c:	c5dff06f          	j	80002aa8 <__printf+0x260>
    80002e50:	00300793          	li	a5,3
    80002e54:	00200c93          	li	s9,2
    80002e58:	de9ff06f          	j	80002c40 <__printf+0x3f8>
    80002e5c:	00400793          	li	a5,4
    80002e60:	00300c93          	li	s9,3
    80002e64:	dddff06f          	j	80002c40 <__printf+0x3f8>
    80002e68:	00400793          	li	a5,4
    80002e6c:	00300c93          	li	s9,3
    80002e70:	c39ff06f          	j	80002aa8 <__printf+0x260>
    80002e74:	00500793          	li	a5,5
    80002e78:	00400c93          	li	s9,4
    80002e7c:	c2dff06f          	j	80002aa8 <__printf+0x260>
    80002e80:	00500793          	li	a5,5
    80002e84:	00400c93          	li	s9,4
    80002e88:	db9ff06f          	j	80002c40 <__printf+0x3f8>
    80002e8c:	00600793          	li	a5,6
    80002e90:	00500c93          	li	s9,5
    80002e94:	dadff06f          	j	80002c40 <__printf+0x3f8>
    80002e98:	00600793          	li	a5,6
    80002e9c:	00500c93          	li	s9,5
    80002ea0:	c09ff06f          	j	80002aa8 <__printf+0x260>
    80002ea4:	00800793          	li	a5,8
    80002ea8:	00700c93          	li	s9,7
    80002eac:	bfdff06f          	j	80002aa8 <__printf+0x260>
    80002eb0:	00100793          	li	a5,1
    80002eb4:	d91ff06f          	j	80002c44 <__printf+0x3fc>
    80002eb8:	00100793          	li	a5,1
    80002ebc:	bf1ff06f          	j	80002aac <__printf+0x264>
    80002ec0:	00900793          	li	a5,9
    80002ec4:	00800c93          	li	s9,8
    80002ec8:	be1ff06f          	j	80002aa8 <__printf+0x260>
    80002ecc:	00001517          	auipc	a0,0x1
    80002ed0:	29c50513          	addi	a0,a0,668 # 80004168 <_ZN15MemoryAllocator10DBlockSizeE+0x148>
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	918080e7          	jalr	-1768(ra) # 800027ec <panic>

0000000080002edc <printfinit>:
    80002edc:	fe010113          	addi	sp,sp,-32
    80002ee0:	00813823          	sd	s0,16(sp)
    80002ee4:	00913423          	sd	s1,8(sp)
    80002ee8:	00113c23          	sd	ra,24(sp)
    80002eec:	02010413          	addi	s0,sp,32
    80002ef0:	00003497          	auipc	s1,0x3
    80002ef4:	9b048493          	addi	s1,s1,-1616 # 800058a0 <pr>
    80002ef8:	00048513          	mv	a0,s1
    80002efc:	00001597          	auipc	a1,0x1
    80002f00:	27c58593          	addi	a1,a1,636 # 80004178 <_ZN15MemoryAllocator10DBlockSizeE+0x158>
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	5f4080e7          	jalr	1524(ra) # 800034f8 <initlock>
    80002f0c:	01813083          	ld	ra,24(sp)
    80002f10:	01013403          	ld	s0,16(sp)
    80002f14:	0004ac23          	sw	zero,24(s1)
    80002f18:	00813483          	ld	s1,8(sp)
    80002f1c:	02010113          	addi	sp,sp,32
    80002f20:	00008067          	ret

0000000080002f24 <uartinit>:
    80002f24:	ff010113          	addi	sp,sp,-16
    80002f28:	00813423          	sd	s0,8(sp)
    80002f2c:	01010413          	addi	s0,sp,16
    80002f30:	100007b7          	lui	a5,0x10000
    80002f34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002f38:	f8000713          	li	a4,-128
    80002f3c:	00e781a3          	sb	a4,3(a5)
    80002f40:	00300713          	li	a4,3
    80002f44:	00e78023          	sb	a4,0(a5)
    80002f48:	000780a3          	sb	zero,1(a5)
    80002f4c:	00e781a3          	sb	a4,3(a5)
    80002f50:	00700693          	li	a3,7
    80002f54:	00d78123          	sb	a3,2(a5)
    80002f58:	00e780a3          	sb	a4,1(a5)
    80002f5c:	00813403          	ld	s0,8(sp)
    80002f60:	01010113          	addi	sp,sp,16
    80002f64:	00008067          	ret

0000000080002f68 <uartputc>:
    80002f68:	00001797          	auipc	a5,0x1
    80002f6c:	6e07a783          	lw	a5,1760(a5) # 80004648 <panicked>
    80002f70:	00078463          	beqz	a5,80002f78 <uartputc+0x10>
    80002f74:	0000006f          	j	80002f74 <uartputc+0xc>
    80002f78:	fd010113          	addi	sp,sp,-48
    80002f7c:	02813023          	sd	s0,32(sp)
    80002f80:	00913c23          	sd	s1,24(sp)
    80002f84:	01213823          	sd	s2,16(sp)
    80002f88:	01313423          	sd	s3,8(sp)
    80002f8c:	02113423          	sd	ra,40(sp)
    80002f90:	03010413          	addi	s0,sp,48
    80002f94:	00001917          	auipc	s2,0x1
    80002f98:	6bc90913          	addi	s2,s2,1724 # 80004650 <uart_tx_r>
    80002f9c:	00093783          	ld	a5,0(s2)
    80002fa0:	00001497          	auipc	s1,0x1
    80002fa4:	6b848493          	addi	s1,s1,1720 # 80004658 <uart_tx_w>
    80002fa8:	0004b703          	ld	a4,0(s1)
    80002fac:	02078693          	addi	a3,a5,32
    80002fb0:	00050993          	mv	s3,a0
    80002fb4:	02e69c63          	bne	a3,a4,80002fec <uartputc+0x84>
    80002fb8:	00001097          	auipc	ra,0x1
    80002fbc:	834080e7          	jalr	-1996(ra) # 800037ec <push_on>
    80002fc0:	00093783          	ld	a5,0(s2)
    80002fc4:	0004b703          	ld	a4,0(s1)
    80002fc8:	02078793          	addi	a5,a5,32
    80002fcc:	00e79463          	bne	a5,a4,80002fd4 <uartputc+0x6c>
    80002fd0:	0000006f          	j	80002fd0 <uartputc+0x68>
    80002fd4:	00001097          	auipc	ra,0x1
    80002fd8:	88c080e7          	jalr	-1908(ra) # 80003860 <pop_on>
    80002fdc:	00093783          	ld	a5,0(s2)
    80002fe0:	0004b703          	ld	a4,0(s1)
    80002fe4:	02078693          	addi	a3,a5,32
    80002fe8:	fce688e3          	beq	a3,a4,80002fb8 <uartputc+0x50>
    80002fec:	01f77693          	andi	a3,a4,31
    80002ff0:	00003597          	auipc	a1,0x3
    80002ff4:	8d058593          	addi	a1,a1,-1840 # 800058c0 <uart_tx_buf>
    80002ff8:	00d586b3          	add	a3,a1,a3
    80002ffc:	00170713          	addi	a4,a4,1
    80003000:	01368023          	sb	s3,0(a3)
    80003004:	00e4b023          	sd	a4,0(s1)
    80003008:	10000637          	lui	a2,0x10000
    8000300c:	02f71063          	bne	a4,a5,8000302c <uartputc+0xc4>
    80003010:	0340006f          	j	80003044 <uartputc+0xdc>
    80003014:	00074703          	lbu	a4,0(a4)
    80003018:	00f93023          	sd	a5,0(s2)
    8000301c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003020:	00093783          	ld	a5,0(s2)
    80003024:	0004b703          	ld	a4,0(s1)
    80003028:	00f70e63          	beq	a4,a5,80003044 <uartputc+0xdc>
    8000302c:	00564683          	lbu	a3,5(a2)
    80003030:	01f7f713          	andi	a4,a5,31
    80003034:	00e58733          	add	a4,a1,a4
    80003038:	0206f693          	andi	a3,a3,32
    8000303c:	00178793          	addi	a5,a5,1
    80003040:	fc069ae3          	bnez	a3,80003014 <uartputc+0xac>
    80003044:	02813083          	ld	ra,40(sp)
    80003048:	02013403          	ld	s0,32(sp)
    8000304c:	01813483          	ld	s1,24(sp)
    80003050:	01013903          	ld	s2,16(sp)
    80003054:	00813983          	ld	s3,8(sp)
    80003058:	03010113          	addi	sp,sp,48
    8000305c:	00008067          	ret

0000000080003060 <uartputc_sync>:
    80003060:	ff010113          	addi	sp,sp,-16
    80003064:	00813423          	sd	s0,8(sp)
    80003068:	01010413          	addi	s0,sp,16
    8000306c:	00001717          	auipc	a4,0x1
    80003070:	5dc72703          	lw	a4,1500(a4) # 80004648 <panicked>
    80003074:	02071663          	bnez	a4,800030a0 <uartputc_sync+0x40>
    80003078:	00050793          	mv	a5,a0
    8000307c:	100006b7          	lui	a3,0x10000
    80003080:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003084:	02077713          	andi	a4,a4,32
    80003088:	fe070ce3          	beqz	a4,80003080 <uartputc_sync+0x20>
    8000308c:	0ff7f793          	andi	a5,a5,255
    80003090:	00f68023          	sb	a5,0(a3)
    80003094:	00813403          	ld	s0,8(sp)
    80003098:	01010113          	addi	sp,sp,16
    8000309c:	00008067          	ret
    800030a0:	0000006f          	j	800030a0 <uartputc_sync+0x40>

00000000800030a4 <uartstart>:
    800030a4:	ff010113          	addi	sp,sp,-16
    800030a8:	00813423          	sd	s0,8(sp)
    800030ac:	01010413          	addi	s0,sp,16
    800030b0:	00001617          	auipc	a2,0x1
    800030b4:	5a060613          	addi	a2,a2,1440 # 80004650 <uart_tx_r>
    800030b8:	00001517          	auipc	a0,0x1
    800030bc:	5a050513          	addi	a0,a0,1440 # 80004658 <uart_tx_w>
    800030c0:	00063783          	ld	a5,0(a2)
    800030c4:	00053703          	ld	a4,0(a0)
    800030c8:	04f70263          	beq	a4,a5,8000310c <uartstart+0x68>
    800030cc:	100005b7          	lui	a1,0x10000
    800030d0:	00002817          	auipc	a6,0x2
    800030d4:	7f080813          	addi	a6,a6,2032 # 800058c0 <uart_tx_buf>
    800030d8:	01c0006f          	j	800030f4 <uartstart+0x50>
    800030dc:	0006c703          	lbu	a4,0(a3)
    800030e0:	00f63023          	sd	a5,0(a2)
    800030e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800030e8:	00063783          	ld	a5,0(a2)
    800030ec:	00053703          	ld	a4,0(a0)
    800030f0:	00f70e63          	beq	a4,a5,8000310c <uartstart+0x68>
    800030f4:	01f7f713          	andi	a4,a5,31
    800030f8:	00e806b3          	add	a3,a6,a4
    800030fc:	0055c703          	lbu	a4,5(a1)
    80003100:	00178793          	addi	a5,a5,1
    80003104:	02077713          	andi	a4,a4,32
    80003108:	fc071ae3          	bnez	a4,800030dc <uartstart+0x38>
    8000310c:	00813403          	ld	s0,8(sp)
    80003110:	01010113          	addi	sp,sp,16
    80003114:	00008067          	ret

0000000080003118 <uartgetc>:
    80003118:	ff010113          	addi	sp,sp,-16
    8000311c:	00813423          	sd	s0,8(sp)
    80003120:	01010413          	addi	s0,sp,16
    80003124:	10000737          	lui	a4,0x10000
    80003128:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000312c:	0017f793          	andi	a5,a5,1
    80003130:	00078c63          	beqz	a5,80003148 <uartgetc+0x30>
    80003134:	00074503          	lbu	a0,0(a4)
    80003138:	0ff57513          	andi	a0,a0,255
    8000313c:	00813403          	ld	s0,8(sp)
    80003140:	01010113          	addi	sp,sp,16
    80003144:	00008067          	ret
    80003148:	fff00513          	li	a0,-1
    8000314c:	ff1ff06f          	j	8000313c <uartgetc+0x24>

0000000080003150 <uartintr>:
    80003150:	100007b7          	lui	a5,0x10000
    80003154:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003158:	0017f793          	andi	a5,a5,1
    8000315c:	0a078463          	beqz	a5,80003204 <uartintr+0xb4>
    80003160:	fe010113          	addi	sp,sp,-32
    80003164:	00813823          	sd	s0,16(sp)
    80003168:	00913423          	sd	s1,8(sp)
    8000316c:	00113c23          	sd	ra,24(sp)
    80003170:	02010413          	addi	s0,sp,32
    80003174:	100004b7          	lui	s1,0x10000
    80003178:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000317c:	0ff57513          	andi	a0,a0,255
    80003180:	fffff097          	auipc	ra,0xfffff
    80003184:	534080e7          	jalr	1332(ra) # 800026b4 <consoleintr>
    80003188:	0054c783          	lbu	a5,5(s1)
    8000318c:	0017f793          	andi	a5,a5,1
    80003190:	fe0794e3          	bnez	a5,80003178 <uartintr+0x28>
    80003194:	00001617          	auipc	a2,0x1
    80003198:	4bc60613          	addi	a2,a2,1212 # 80004650 <uart_tx_r>
    8000319c:	00001517          	auipc	a0,0x1
    800031a0:	4bc50513          	addi	a0,a0,1212 # 80004658 <uart_tx_w>
    800031a4:	00063783          	ld	a5,0(a2)
    800031a8:	00053703          	ld	a4,0(a0)
    800031ac:	04f70263          	beq	a4,a5,800031f0 <uartintr+0xa0>
    800031b0:	100005b7          	lui	a1,0x10000
    800031b4:	00002817          	auipc	a6,0x2
    800031b8:	70c80813          	addi	a6,a6,1804 # 800058c0 <uart_tx_buf>
    800031bc:	01c0006f          	j	800031d8 <uartintr+0x88>
    800031c0:	0006c703          	lbu	a4,0(a3)
    800031c4:	00f63023          	sd	a5,0(a2)
    800031c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031cc:	00063783          	ld	a5,0(a2)
    800031d0:	00053703          	ld	a4,0(a0)
    800031d4:	00f70e63          	beq	a4,a5,800031f0 <uartintr+0xa0>
    800031d8:	01f7f713          	andi	a4,a5,31
    800031dc:	00e806b3          	add	a3,a6,a4
    800031e0:	0055c703          	lbu	a4,5(a1)
    800031e4:	00178793          	addi	a5,a5,1
    800031e8:	02077713          	andi	a4,a4,32
    800031ec:	fc071ae3          	bnez	a4,800031c0 <uartintr+0x70>
    800031f0:	01813083          	ld	ra,24(sp)
    800031f4:	01013403          	ld	s0,16(sp)
    800031f8:	00813483          	ld	s1,8(sp)
    800031fc:	02010113          	addi	sp,sp,32
    80003200:	00008067          	ret
    80003204:	00001617          	auipc	a2,0x1
    80003208:	44c60613          	addi	a2,a2,1100 # 80004650 <uart_tx_r>
    8000320c:	00001517          	auipc	a0,0x1
    80003210:	44c50513          	addi	a0,a0,1100 # 80004658 <uart_tx_w>
    80003214:	00063783          	ld	a5,0(a2)
    80003218:	00053703          	ld	a4,0(a0)
    8000321c:	04f70263          	beq	a4,a5,80003260 <uartintr+0x110>
    80003220:	100005b7          	lui	a1,0x10000
    80003224:	00002817          	auipc	a6,0x2
    80003228:	69c80813          	addi	a6,a6,1692 # 800058c0 <uart_tx_buf>
    8000322c:	01c0006f          	j	80003248 <uartintr+0xf8>
    80003230:	0006c703          	lbu	a4,0(a3)
    80003234:	00f63023          	sd	a5,0(a2)
    80003238:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000323c:	00063783          	ld	a5,0(a2)
    80003240:	00053703          	ld	a4,0(a0)
    80003244:	02f70063          	beq	a4,a5,80003264 <uartintr+0x114>
    80003248:	01f7f713          	andi	a4,a5,31
    8000324c:	00e806b3          	add	a3,a6,a4
    80003250:	0055c703          	lbu	a4,5(a1)
    80003254:	00178793          	addi	a5,a5,1
    80003258:	02077713          	andi	a4,a4,32
    8000325c:	fc071ae3          	bnez	a4,80003230 <uartintr+0xe0>
    80003260:	00008067          	ret
    80003264:	00008067          	ret

0000000080003268 <kinit>:
    80003268:	fc010113          	addi	sp,sp,-64
    8000326c:	02913423          	sd	s1,40(sp)
    80003270:	fffff7b7          	lui	a5,0xfffff
    80003274:	00003497          	auipc	s1,0x3
    80003278:	66b48493          	addi	s1,s1,1643 # 800068df <end+0xfff>
    8000327c:	02813823          	sd	s0,48(sp)
    80003280:	01313c23          	sd	s3,24(sp)
    80003284:	00f4f4b3          	and	s1,s1,a5
    80003288:	02113c23          	sd	ra,56(sp)
    8000328c:	03213023          	sd	s2,32(sp)
    80003290:	01413823          	sd	s4,16(sp)
    80003294:	01513423          	sd	s5,8(sp)
    80003298:	04010413          	addi	s0,sp,64
    8000329c:	000017b7          	lui	a5,0x1
    800032a0:	01100993          	li	s3,17
    800032a4:	00f487b3          	add	a5,s1,a5
    800032a8:	01b99993          	slli	s3,s3,0x1b
    800032ac:	06f9e063          	bltu	s3,a5,8000330c <kinit+0xa4>
    800032b0:	00002a97          	auipc	s5,0x2
    800032b4:	630a8a93          	addi	s5,s5,1584 # 800058e0 <end>
    800032b8:	0754ec63          	bltu	s1,s5,80003330 <kinit+0xc8>
    800032bc:	0734fa63          	bgeu	s1,s3,80003330 <kinit+0xc8>
    800032c0:	00088a37          	lui	s4,0x88
    800032c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800032c8:	00001917          	auipc	s2,0x1
    800032cc:	39890913          	addi	s2,s2,920 # 80004660 <kmem>
    800032d0:	00ca1a13          	slli	s4,s4,0xc
    800032d4:	0140006f          	j	800032e8 <kinit+0x80>
    800032d8:	000017b7          	lui	a5,0x1
    800032dc:	00f484b3          	add	s1,s1,a5
    800032e0:	0554e863          	bltu	s1,s5,80003330 <kinit+0xc8>
    800032e4:	0534f663          	bgeu	s1,s3,80003330 <kinit+0xc8>
    800032e8:	00001637          	lui	a2,0x1
    800032ec:	00100593          	li	a1,1
    800032f0:	00048513          	mv	a0,s1
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	5e4080e7          	jalr	1508(ra) # 800038d8 <__memset>
    800032fc:	00093783          	ld	a5,0(s2)
    80003300:	00f4b023          	sd	a5,0(s1)
    80003304:	00993023          	sd	s1,0(s2)
    80003308:	fd4498e3          	bne	s1,s4,800032d8 <kinit+0x70>
    8000330c:	03813083          	ld	ra,56(sp)
    80003310:	03013403          	ld	s0,48(sp)
    80003314:	02813483          	ld	s1,40(sp)
    80003318:	02013903          	ld	s2,32(sp)
    8000331c:	01813983          	ld	s3,24(sp)
    80003320:	01013a03          	ld	s4,16(sp)
    80003324:	00813a83          	ld	s5,8(sp)
    80003328:	04010113          	addi	sp,sp,64
    8000332c:	00008067          	ret
    80003330:	00001517          	auipc	a0,0x1
    80003334:	e6850513          	addi	a0,a0,-408 # 80004198 <digits+0x18>
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	4b4080e7          	jalr	1204(ra) # 800027ec <panic>

0000000080003340 <freerange>:
    80003340:	fc010113          	addi	sp,sp,-64
    80003344:	000017b7          	lui	a5,0x1
    80003348:	02913423          	sd	s1,40(sp)
    8000334c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003350:	009504b3          	add	s1,a0,s1
    80003354:	fffff537          	lui	a0,0xfffff
    80003358:	02813823          	sd	s0,48(sp)
    8000335c:	02113c23          	sd	ra,56(sp)
    80003360:	03213023          	sd	s2,32(sp)
    80003364:	01313c23          	sd	s3,24(sp)
    80003368:	01413823          	sd	s4,16(sp)
    8000336c:	01513423          	sd	s5,8(sp)
    80003370:	01613023          	sd	s6,0(sp)
    80003374:	04010413          	addi	s0,sp,64
    80003378:	00a4f4b3          	and	s1,s1,a0
    8000337c:	00f487b3          	add	a5,s1,a5
    80003380:	06f5e463          	bltu	a1,a5,800033e8 <freerange+0xa8>
    80003384:	00002a97          	auipc	s5,0x2
    80003388:	55ca8a93          	addi	s5,s5,1372 # 800058e0 <end>
    8000338c:	0954e263          	bltu	s1,s5,80003410 <freerange+0xd0>
    80003390:	01100993          	li	s3,17
    80003394:	01b99993          	slli	s3,s3,0x1b
    80003398:	0734fc63          	bgeu	s1,s3,80003410 <freerange+0xd0>
    8000339c:	00058a13          	mv	s4,a1
    800033a0:	00001917          	auipc	s2,0x1
    800033a4:	2c090913          	addi	s2,s2,704 # 80004660 <kmem>
    800033a8:	00002b37          	lui	s6,0x2
    800033ac:	0140006f          	j	800033c0 <freerange+0x80>
    800033b0:	000017b7          	lui	a5,0x1
    800033b4:	00f484b3          	add	s1,s1,a5
    800033b8:	0554ec63          	bltu	s1,s5,80003410 <freerange+0xd0>
    800033bc:	0534fa63          	bgeu	s1,s3,80003410 <freerange+0xd0>
    800033c0:	00001637          	lui	a2,0x1
    800033c4:	00100593          	li	a1,1
    800033c8:	00048513          	mv	a0,s1
    800033cc:	00000097          	auipc	ra,0x0
    800033d0:	50c080e7          	jalr	1292(ra) # 800038d8 <__memset>
    800033d4:	00093703          	ld	a4,0(s2)
    800033d8:	016487b3          	add	a5,s1,s6
    800033dc:	00e4b023          	sd	a4,0(s1)
    800033e0:	00993023          	sd	s1,0(s2)
    800033e4:	fcfa76e3          	bgeu	s4,a5,800033b0 <freerange+0x70>
    800033e8:	03813083          	ld	ra,56(sp)
    800033ec:	03013403          	ld	s0,48(sp)
    800033f0:	02813483          	ld	s1,40(sp)
    800033f4:	02013903          	ld	s2,32(sp)
    800033f8:	01813983          	ld	s3,24(sp)
    800033fc:	01013a03          	ld	s4,16(sp)
    80003400:	00813a83          	ld	s5,8(sp)
    80003404:	00013b03          	ld	s6,0(sp)
    80003408:	04010113          	addi	sp,sp,64
    8000340c:	00008067          	ret
    80003410:	00001517          	auipc	a0,0x1
    80003414:	d8850513          	addi	a0,a0,-632 # 80004198 <digits+0x18>
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	3d4080e7          	jalr	980(ra) # 800027ec <panic>

0000000080003420 <kfree>:
    80003420:	fe010113          	addi	sp,sp,-32
    80003424:	00813823          	sd	s0,16(sp)
    80003428:	00113c23          	sd	ra,24(sp)
    8000342c:	00913423          	sd	s1,8(sp)
    80003430:	02010413          	addi	s0,sp,32
    80003434:	03451793          	slli	a5,a0,0x34
    80003438:	04079c63          	bnez	a5,80003490 <kfree+0x70>
    8000343c:	00002797          	auipc	a5,0x2
    80003440:	4a478793          	addi	a5,a5,1188 # 800058e0 <end>
    80003444:	00050493          	mv	s1,a0
    80003448:	04f56463          	bltu	a0,a5,80003490 <kfree+0x70>
    8000344c:	01100793          	li	a5,17
    80003450:	01b79793          	slli	a5,a5,0x1b
    80003454:	02f57e63          	bgeu	a0,a5,80003490 <kfree+0x70>
    80003458:	00001637          	lui	a2,0x1
    8000345c:	00100593          	li	a1,1
    80003460:	00000097          	auipc	ra,0x0
    80003464:	478080e7          	jalr	1144(ra) # 800038d8 <__memset>
    80003468:	00001797          	auipc	a5,0x1
    8000346c:	1f878793          	addi	a5,a5,504 # 80004660 <kmem>
    80003470:	0007b703          	ld	a4,0(a5)
    80003474:	01813083          	ld	ra,24(sp)
    80003478:	01013403          	ld	s0,16(sp)
    8000347c:	00e4b023          	sd	a4,0(s1)
    80003480:	0097b023          	sd	s1,0(a5)
    80003484:	00813483          	ld	s1,8(sp)
    80003488:	02010113          	addi	sp,sp,32
    8000348c:	00008067          	ret
    80003490:	00001517          	auipc	a0,0x1
    80003494:	d0850513          	addi	a0,a0,-760 # 80004198 <digits+0x18>
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	354080e7          	jalr	852(ra) # 800027ec <panic>

00000000800034a0 <kalloc>:
    800034a0:	fe010113          	addi	sp,sp,-32
    800034a4:	00813823          	sd	s0,16(sp)
    800034a8:	00913423          	sd	s1,8(sp)
    800034ac:	00113c23          	sd	ra,24(sp)
    800034b0:	02010413          	addi	s0,sp,32
    800034b4:	00001797          	auipc	a5,0x1
    800034b8:	1ac78793          	addi	a5,a5,428 # 80004660 <kmem>
    800034bc:	0007b483          	ld	s1,0(a5)
    800034c0:	02048063          	beqz	s1,800034e0 <kalloc+0x40>
    800034c4:	0004b703          	ld	a4,0(s1)
    800034c8:	00001637          	lui	a2,0x1
    800034cc:	00500593          	li	a1,5
    800034d0:	00048513          	mv	a0,s1
    800034d4:	00e7b023          	sd	a4,0(a5)
    800034d8:	00000097          	auipc	ra,0x0
    800034dc:	400080e7          	jalr	1024(ra) # 800038d8 <__memset>
    800034e0:	01813083          	ld	ra,24(sp)
    800034e4:	01013403          	ld	s0,16(sp)
    800034e8:	00048513          	mv	a0,s1
    800034ec:	00813483          	ld	s1,8(sp)
    800034f0:	02010113          	addi	sp,sp,32
    800034f4:	00008067          	ret

00000000800034f8 <initlock>:
    800034f8:	ff010113          	addi	sp,sp,-16
    800034fc:	00813423          	sd	s0,8(sp)
    80003500:	01010413          	addi	s0,sp,16
    80003504:	00813403          	ld	s0,8(sp)
    80003508:	00b53423          	sd	a1,8(a0)
    8000350c:	00052023          	sw	zero,0(a0)
    80003510:	00053823          	sd	zero,16(a0)
    80003514:	01010113          	addi	sp,sp,16
    80003518:	00008067          	ret

000000008000351c <acquire>:
    8000351c:	fe010113          	addi	sp,sp,-32
    80003520:	00813823          	sd	s0,16(sp)
    80003524:	00913423          	sd	s1,8(sp)
    80003528:	00113c23          	sd	ra,24(sp)
    8000352c:	01213023          	sd	s2,0(sp)
    80003530:	02010413          	addi	s0,sp,32
    80003534:	00050493          	mv	s1,a0
    80003538:	10002973          	csrr	s2,sstatus
    8000353c:	100027f3          	csrr	a5,sstatus
    80003540:	ffd7f793          	andi	a5,a5,-3
    80003544:	10079073          	csrw	sstatus,a5
    80003548:	fffff097          	auipc	ra,0xfffff
    8000354c:	8ec080e7          	jalr	-1812(ra) # 80001e34 <mycpu>
    80003550:	07852783          	lw	a5,120(a0)
    80003554:	06078e63          	beqz	a5,800035d0 <acquire+0xb4>
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	8dc080e7          	jalr	-1828(ra) # 80001e34 <mycpu>
    80003560:	07852783          	lw	a5,120(a0)
    80003564:	0004a703          	lw	a4,0(s1)
    80003568:	0017879b          	addiw	a5,a5,1
    8000356c:	06f52c23          	sw	a5,120(a0)
    80003570:	04071063          	bnez	a4,800035b0 <acquire+0x94>
    80003574:	00100713          	li	a4,1
    80003578:	00070793          	mv	a5,a4
    8000357c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003580:	0007879b          	sext.w	a5,a5
    80003584:	fe079ae3          	bnez	a5,80003578 <acquire+0x5c>
    80003588:	0ff0000f          	fence
    8000358c:	fffff097          	auipc	ra,0xfffff
    80003590:	8a8080e7          	jalr	-1880(ra) # 80001e34 <mycpu>
    80003594:	01813083          	ld	ra,24(sp)
    80003598:	01013403          	ld	s0,16(sp)
    8000359c:	00a4b823          	sd	a0,16(s1)
    800035a0:	00013903          	ld	s2,0(sp)
    800035a4:	00813483          	ld	s1,8(sp)
    800035a8:	02010113          	addi	sp,sp,32
    800035ac:	00008067          	ret
    800035b0:	0104b903          	ld	s2,16(s1)
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	880080e7          	jalr	-1920(ra) # 80001e34 <mycpu>
    800035bc:	faa91ce3          	bne	s2,a0,80003574 <acquire+0x58>
    800035c0:	00001517          	auipc	a0,0x1
    800035c4:	be050513          	addi	a0,a0,-1056 # 800041a0 <digits+0x20>
    800035c8:	fffff097          	auipc	ra,0xfffff
    800035cc:	224080e7          	jalr	548(ra) # 800027ec <panic>
    800035d0:	00195913          	srli	s2,s2,0x1
    800035d4:	fffff097          	auipc	ra,0xfffff
    800035d8:	860080e7          	jalr	-1952(ra) # 80001e34 <mycpu>
    800035dc:	00197913          	andi	s2,s2,1
    800035e0:	07252e23          	sw	s2,124(a0)
    800035e4:	f75ff06f          	j	80003558 <acquire+0x3c>

00000000800035e8 <release>:
    800035e8:	fe010113          	addi	sp,sp,-32
    800035ec:	00813823          	sd	s0,16(sp)
    800035f0:	00113c23          	sd	ra,24(sp)
    800035f4:	00913423          	sd	s1,8(sp)
    800035f8:	01213023          	sd	s2,0(sp)
    800035fc:	02010413          	addi	s0,sp,32
    80003600:	00052783          	lw	a5,0(a0)
    80003604:	00079a63          	bnez	a5,80003618 <release+0x30>
    80003608:	00001517          	auipc	a0,0x1
    8000360c:	ba050513          	addi	a0,a0,-1120 # 800041a8 <digits+0x28>
    80003610:	fffff097          	auipc	ra,0xfffff
    80003614:	1dc080e7          	jalr	476(ra) # 800027ec <panic>
    80003618:	01053903          	ld	s2,16(a0)
    8000361c:	00050493          	mv	s1,a0
    80003620:	fffff097          	auipc	ra,0xfffff
    80003624:	814080e7          	jalr	-2028(ra) # 80001e34 <mycpu>
    80003628:	fea910e3          	bne	s2,a0,80003608 <release+0x20>
    8000362c:	0004b823          	sd	zero,16(s1)
    80003630:	0ff0000f          	fence
    80003634:	0f50000f          	fence	iorw,ow
    80003638:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000363c:	ffffe097          	auipc	ra,0xffffe
    80003640:	7f8080e7          	jalr	2040(ra) # 80001e34 <mycpu>
    80003644:	100027f3          	csrr	a5,sstatus
    80003648:	0027f793          	andi	a5,a5,2
    8000364c:	04079a63          	bnez	a5,800036a0 <release+0xb8>
    80003650:	07852783          	lw	a5,120(a0)
    80003654:	02f05e63          	blez	a5,80003690 <release+0xa8>
    80003658:	fff7871b          	addiw	a4,a5,-1
    8000365c:	06e52c23          	sw	a4,120(a0)
    80003660:	00071c63          	bnez	a4,80003678 <release+0x90>
    80003664:	07c52783          	lw	a5,124(a0)
    80003668:	00078863          	beqz	a5,80003678 <release+0x90>
    8000366c:	100027f3          	csrr	a5,sstatus
    80003670:	0027e793          	ori	a5,a5,2
    80003674:	10079073          	csrw	sstatus,a5
    80003678:	01813083          	ld	ra,24(sp)
    8000367c:	01013403          	ld	s0,16(sp)
    80003680:	00813483          	ld	s1,8(sp)
    80003684:	00013903          	ld	s2,0(sp)
    80003688:	02010113          	addi	sp,sp,32
    8000368c:	00008067          	ret
    80003690:	00001517          	auipc	a0,0x1
    80003694:	b3850513          	addi	a0,a0,-1224 # 800041c8 <digits+0x48>
    80003698:	fffff097          	auipc	ra,0xfffff
    8000369c:	154080e7          	jalr	340(ra) # 800027ec <panic>
    800036a0:	00001517          	auipc	a0,0x1
    800036a4:	b1050513          	addi	a0,a0,-1264 # 800041b0 <digits+0x30>
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	144080e7          	jalr	324(ra) # 800027ec <panic>

00000000800036b0 <holding>:
    800036b0:	00052783          	lw	a5,0(a0)
    800036b4:	00079663          	bnez	a5,800036c0 <holding+0x10>
    800036b8:	00000513          	li	a0,0
    800036bc:	00008067          	ret
    800036c0:	fe010113          	addi	sp,sp,-32
    800036c4:	00813823          	sd	s0,16(sp)
    800036c8:	00913423          	sd	s1,8(sp)
    800036cc:	00113c23          	sd	ra,24(sp)
    800036d0:	02010413          	addi	s0,sp,32
    800036d4:	01053483          	ld	s1,16(a0)
    800036d8:	ffffe097          	auipc	ra,0xffffe
    800036dc:	75c080e7          	jalr	1884(ra) # 80001e34 <mycpu>
    800036e0:	01813083          	ld	ra,24(sp)
    800036e4:	01013403          	ld	s0,16(sp)
    800036e8:	40a48533          	sub	a0,s1,a0
    800036ec:	00153513          	seqz	a0,a0
    800036f0:	00813483          	ld	s1,8(sp)
    800036f4:	02010113          	addi	sp,sp,32
    800036f8:	00008067          	ret

00000000800036fc <push_off>:
    800036fc:	fe010113          	addi	sp,sp,-32
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00113c23          	sd	ra,24(sp)
    80003708:	00913423          	sd	s1,8(sp)
    8000370c:	02010413          	addi	s0,sp,32
    80003710:	100024f3          	csrr	s1,sstatus
    80003714:	100027f3          	csrr	a5,sstatus
    80003718:	ffd7f793          	andi	a5,a5,-3
    8000371c:	10079073          	csrw	sstatus,a5
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	714080e7          	jalr	1812(ra) # 80001e34 <mycpu>
    80003728:	07852783          	lw	a5,120(a0)
    8000372c:	02078663          	beqz	a5,80003758 <push_off+0x5c>
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	704080e7          	jalr	1796(ra) # 80001e34 <mycpu>
    80003738:	07852783          	lw	a5,120(a0)
    8000373c:	01813083          	ld	ra,24(sp)
    80003740:	01013403          	ld	s0,16(sp)
    80003744:	0017879b          	addiw	a5,a5,1
    80003748:	06f52c23          	sw	a5,120(a0)
    8000374c:	00813483          	ld	s1,8(sp)
    80003750:	02010113          	addi	sp,sp,32
    80003754:	00008067          	ret
    80003758:	0014d493          	srli	s1,s1,0x1
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	6d8080e7          	jalr	1752(ra) # 80001e34 <mycpu>
    80003764:	0014f493          	andi	s1,s1,1
    80003768:	06952e23          	sw	s1,124(a0)
    8000376c:	fc5ff06f          	j	80003730 <push_off+0x34>

0000000080003770 <pop_off>:
    80003770:	ff010113          	addi	sp,sp,-16
    80003774:	00813023          	sd	s0,0(sp)
    80003778:	00113423          	sd	ra,8(sp)
    8000377c:	01010413          	addi	s0,sp,16
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	6b4080e7          	jalr	1716(ra) # 80001e34 <mycpu>
    80003788:	100027f3          	csrr	a5,sstatus
    8000378c:	0027f793          	andi	a5,a5,2
    80003790:	04079663          	bnez	a5,800037dc <pop_off+0x6c>
    80003794:	07852783          	lw	a5,120(a0)
    80003798:	02f05a63          	blez	a5,800037cc <pop_off+0x5c>
    8000379c:	fff7871b          	addiw	a4,a5,-1
    800037a0:	06e52c23          	sw	a4,120(a0)
    800037a4:	00071c63          	bnez	a4,800037bc <pop_off+0x4c>
    800037a8:	07c52783          	lw	a5,124(a0)
    800037ac:	00078863          	beqz	a5,800037bc <pop_off+0x4c>
    800037b0:	100027f3          	csrr	a5,sstatus
    800037b4:	0027e793          	ori	a5,a5,2
    800037b8:	10079073          	csrw	sstatus,a5
    800037bc:	00813083          	ld	ra,8(sp)
    800037c0:	00013403          	ld	s0,0(sp)
    800037c4:	01010113          	addi	sp,sp,16
    800037c8:	00008067          	ret
    800037cc:	00001517          	auipc	a0,0x1
    800037d0:	9fc50513          	addi	a0,a0,-1540 # 800041c8 <digits+0x48>
    800037d4:	fffff097          	auipc	ra,0xfffff
    800037d8:	018080e7          	jalr	24(ra) # 800027ec <panic>
    800037dc:	00001517          	auipc	a0,0x1
    800037e0:	9d450513          	addi	a0,a0,-1580 # 800041b0 <digits+0x30>
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	008080e7          	jalr	8(ra) # 800027ec <panic>

00000000800037ec <push_on>:
    800037ec:	fe010113          	addi	sp,sp,-32
    800037f0:	00813823          	sd	s0,16(sp)
    800037f4:	00113c23          	sd	ra,24(sp)
    800037f8:	00913423          	sd	s1,8(sp)
    800037fc:	02010413          	addi	s0,sp,32
    80003800:	100024f3          	csrr	s1,sstatus
    80003804:	100027f3          	csrr	a5,sstatus
    80003808:	0027e793          	ori	a5,a5,2
    8000380c:	10079073          	csrw	sstatus,a5
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	624080e7          	jalr	1572(ra) # 80001e34 <mycpu>
    80003818:	07852783          	lw	a5,120(a0)
    8000381c:	02078663          	beqz	a5,80003848 <push_on+0x5c>
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	614080e7          	jalr	1556(ra) # 80001e34 <mycpu>
    80003828:	07852783          	lw	a5,120(a0)
    8000382c:	01813083          	ld	ra,24(sp)
    80003830:	01013403          	ld	s0,16(sp)
    80003834:	0017879b          	addiw	a5,a5,1
    80003838:	06f52c23          	sw	a5,120(a0)
    8000383c:	00813483          	ld	s1,8(sp)
    80003840:	02010113          	addi	sp,sp,32
    80003844:	00008067          	ret
    80003848:	0014d493          	srli	s1,s1,0x1
    8000384c:	ffffe097          	auipc	ra,0xffffe
    80003850:	5e8080e7          	jalr	1512(ra) # 80001e34 <mycpu>
    80003854:	0014f493          	andi	s1,s1,1
    80003858:	06952e23          	sw	s1,124(a0)
    8000385c:	fc5ff06f          	j	80003820 <push_on+0x34>

0000000080003860 <pop_on>:
    80003860:	ff010113          	addi	sp,sp,-16
    80003864:	00813023          	sd	s0,0(sp)
    80003868:	00113423          	sd	ra,8(sp)
    8000386c:	01010413          	addi	s0,sp,16
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	5c4080e7          	jalr	1476(ra) # 80001e34 <mycpu>
    80003878:	100027f3          	csrr	a5,sstatus
    8000387c:	0027f793          	andi	a5,a5,2
    80003880:	04078463          	beqz	a5,800038c8 <pop_on+0x68>
    80003884:	07852783          	lw	a5,120(a0)
    80003888:	02f05863          	blez	a5,800038b8 <pop_on+0x58>
    8000388c:	fff7879b          	addiw	a5,a5,-1
    80003890:	06f52c23          	sw	a5,120(a0)
    80003894:	07853783          	ld	a5,120(a0)
    80003898:	00079863          	bnez	a5,800038a8 <pop_on+0x48>
    8000389c:	100027f3          	csrr	a5,sstatus
    800038a0:	ffd7f793          	andi	a5,a5,-3
    800038a4:	10079073          	csrw	sstatus,a5
    800038a8:	00813083          	ld	ra,8(sp)
    800038ac:	00013403          	ld	s0,0(sp)
    800038b0:	01010113          	addi	sp,sp,16
    800038b4:	00008067          	ret
    800038b8:	00001517          	auipc	a0,0x1
    800038bc:	93850513          	addi	a0,a0,-1736 # 800041f0 <digits+0x70>
    800038c0:	fffff097          	auipc	ra,0xfffff
    800038c4:	f2c080e7          	jalr	-212(ra) # 800027ec <panic>
    800038c8:	00001517          	auipc	a0,0x1
    800038cc:	90850513          	addi	a0,a0,-1784 # 800041d0 <digits+0x50>
    800038d0:	fffff097          	auipc	ra,0xfffff
    800038d4:	f1c080e7          	jalr	-228(ra) # 800027ec <panic>

00000000800038d8 <__memset>:
    800038d8:	ff010113          	addi	sp,sp,-16
    800038dc:	00813423          	sd	s0,8(sp)
    800038e0:	01010413          	addi	s0,sp,16
    800038e4:	1a060e63          	beqz	a2,80003aa0 <__memset+0x1c8>
    800038e8:	40a007b3          	neg	a5,a0
    800038ec:	0077f793          	andi	a5,a5,7
    800038f0:	00778693          	addi	a3,a5,7
    800038f4:	00b00813          	li	a6,11
    800038f8:	0ff5f593          	andi	a1,a1,255
    800038fc:	fff6071b          	addiw	a4,a2,-1
    80003900:	1b06e663          	bltu	a3,a6,80003aac <__memset+0x1d4>
    80003904:	1cd76463          	bltu	a4,a3,80003acc <__memset+0x1f4>
    80003908:	1a078e63          	beqz	a5,80003ac4 <__memset+0x1ec>
    8000390c:	00b50023          	sb	a1,0(a0)
    80003910:	00100713          	li	a4,1
    80003914:	1ae78463          	beq	a5,a4,80003abc <__memset+0x1e4>
    80003918:	00b500a3          	sb	a1,1(a0)
    8000391c:	00200713          	li	a4,2
    80003920:	1ae78a63          	beq	a5,a4,80003ad4 <__memset+0x1fc>
    80003924:	00b50123          	sb	a1,2(a0)
    80003928:	00300713          	li	a4,3
    8000392c:	18e78463          	beq	a5,a4,80003ab4 <__memset+0x1dc>
    80003930:	00b501a3          	sb	a1,3(a0)
    80003934:	00400713          	li	a4,4
    80003938:	1ae78263          	beq	a5,a4,80003adc <__memset+0x204>
    8000393c:	00b50223          	sb	a1,4(a0)
    80003940:	00500713          	li	a4,5
    80003944:	1ae78063          	beq	a5,a4,80003ae4 <__memset+0x20c>
    80003948:	00b502a3          	sb	a1,5(a0)
    8000394c:	00700713          	li	a4,7
    80003950:	18e79e63          	bne	a5,a4,80003aec <__memset+0x214>
    80003954:	00b50323          	sb	a1,6(a0)
    80003958:	00700e93          	li	t4,7
    8000395c:	00859713          	slli	a4,a1,0x8
    80003960:	00e5e733          	or	a4,a1,a4
    80003964:	01059e13          	slli	t3,a1,0x10
    80003968:	01c76e33          	or	t3,a4,t3
    8000396c:	01859313          	slli	t1,a1,0x18
    80003970:	006e6333          	or	t1,t3,t1
    80003974:	02059893          	slli	a7,a1,0x20
    80003978:	40f60e3b          	subw	t3,a2,a5
    8000397c:	011368b3          	or	a7,t1,a7
    80003980:	02859813          	slli	a6,a1,0x28
    80003984:	0108e833          	or	a6,a7,a6
    80003988:	03059693          	slli	a3,a1,0x30
    8000398c:	003e589b          	srliw	a7,t3,0x3
    80003990:	00d866b3          	or	a3,a6,a3
    80003994:	03859713          	slli	a4,a1,0x38
    80003998:	00389813          	slli	a6,a7,0x3
    8000399c:	00f507b3          	add	a5,a0,a5
    800039a0:	00e6e733          	or	a4,a3,a4
    800039a4:	000e089b          	sext.w	a7,t3
    800039a8:	00f806b3          	add	a3,a6,a5
    800039ac:	00e7b023          	sd	a4,0(a5)
    800039b0:	00878793          	addi	a5,a5,8
    800039b4:	fed79ce3          	bne	a5,a3,800039ac <__memset+0xd4>
    800039b8:	ff8e7793          	andi	a5,t3,-8
    800039bc:	0007871b          	sext.w	a4,a5
    800039c0:	01d787bb          	addw	a5,a5,t4
    800039c4:	0ce88e63          	beq	a7,a4,80003aa0 <__memset+0x1c8>
    800039c8:	00f50733          	add	a4,a0,a5
    800039cc:	00b70023          	sb	a1,0(a4)
    800039d0:	0017871b          	addiw	a4,a5,1
    800039d4:	0cc77663          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    800039d8:	00e50733          	add	a4,a0,a4
    800039dc:	00b70023          	sb	a1,0(a4)
    800039e0:	0027871b          	addiw	a4,a5,2
    800039e4:	0ac77e63          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    800039e8:	00e50733          	add	a4,a0,a4
    800039ec:	00b70023          	sb	a1,0(a4)
    800039f0:	0037871b          	addiw	a4,a5,3
    800039f4:	0ac77663          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    800039f8:	00e50733          	add	a4,a0,a4
    800039fc:	00b70023          	sb	a1,0(a4)
    80003a00:	0047871b          	addiw	a4,a5,4
    80003a04:	08c77e63          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    80003a08:	00e50733          	add	a4,a0,a4
    80003a0c:	00b70023          	sb	a1,0(a4)
    80003a10:	0057871b          	addiw	a4,a5,5
    80003a14:	08c77663          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    80003a18:	00e50733          	add	a4,a0,a4
    80003a1c:	00b70023          	sb	a1,0(a4)
    80003a20:	0067871b          	addiw	a4,a5,6
    80003a24:	06c77e63          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    80003a28:	00e50733          	add	a4,a0,a4
    80003a2c:	00b70023          	sb	a1,0(a4)
    80003a30:	0077871b          	addiw	a4,a5,7
    80003a34:	06c77663          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    80003a38:	00e50733          	add	a4,a0,a4
    80003a3c:	00b70023          	sb	a1,0(a4)
    80003a40:	0087871b          	addiw	a4,a5,8
    80003a44:	04c77e63          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    80003a48:	00e50733          	add	a4,a0,a4
    80003a4c:	00b70023          	sb	a1,0(a4)
    80003a50:	0097871b          	addiw	a4,a5,9
    80003a54:	04c77663          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    80003a58:	00e50733          	add	a4,a0,a4
    80003a5c:	00b70023          	sb	a1,0(a4)
    80003a60:	00a7871b          	addiw	a4,a5,10
    80003a64:	02c77e63          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    80003a68:	00e50733          	add	a4,a0,a4
    80003a6c:	00b70023          	sb	a1,0(a4)
    80003a70:	00b7871b          	addiw	a4,a5,11
    80003a74:	02c77663          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    80003a78:	00e50733          	add	a4,a0,a4
    80003a7c:	00b70023          	sb	a1,0(a4)
    80003a80:	00c7871b          	addiw	a4,a5,12
    80003a84:	00c77e63          	bgeu	a4,a2,80003aa0 <__memset+0x1c8>
    80003a88:	00e50733          	add	a4,a0,a4
    80003a8c:	00b70023          	sb	a1,0(a4)
    80003a90:	00d7879b          	addiw	a5,a5,13
    80003a94:	00c7f663          	bgeu	a5,a2,80003aa0 <__memset+0x1c8>
    80003a98:	00f507b3          	add	a5,a0,a5
    80003a9c:	00b78023          	sb	a1,0(a5)
    80003aa0:	00813403          	ld	s0,8(sp)
    80003aa4:	01010113          	addi	sp,sp,16
    80003aa8:	00008067          	ret
    80003aac:	00b00693          	li	a3,11
    80003ab0:	e55ff06f          	j	80003904 <__memset+0x2c>
    80003ab4:	00300e93          	li	t4,3
    80003ab8:	ea5ff06f          	j	8000395c <__memset+0x84>
    80003abc:	00100e93          	li	t4,1
    80003ac0:	e9dff06f          	j	8000395c <__memset+0x84>
    80003ac4:	00000e93          	li	t4,0
    80003ac8:	e95ff06f          	j	8000395c <__memset+0x84>
    80003acc:	00000793          	li	a5,0
    80003ad0:	ef9ff06f          	j	800039c8 <__memset+0xf0>
    80003ad4:	00200e93          	li	t4,2
    80003ad8:	e85ff06f          	j	8000395c <__memset+0x84>
    80003adc:	00400e93          	li	t4,4
    80003ae0:	e7dff06f          	j	8000395c <__memset+0x84>
    80003ae4:	00500e93          	li	t4,5
    80003ae8:	e75ff06f          	j	8000395c <__memset+0x84>
    80003aec:	00600e93          	li	t4,6
    80003af0:	e6dff06f          	j	8000395c <__memset+0x84>

0000000080003af4 <__memmove>:
    80003af4:	ff010113          	addi	sp,sp,-16
    80003af8:	00813423          	sd	s0,8(sp)
    80003afc:	01010413          	addi	s0,sp,16
    80003b00:	0e060863          	beqz	a2,80003bf0 <__memmove+0xfc>
    80003b04:	fff6069b          	addiw	a3,a2,-1
    80003b08:	0006881b          	sext.w	a6,a3
    80003b0c:	0ea5e863          	bltu	a1,a0,80003bfc <__memmove+0x108>
    80003b10:	00758713          	addi	a4,a1,7
    80003b14:	00a5e7b3          	or	a5,a1,a0
    80003b18:	40a70733          	sub	a4,a4,a0
    80003b1c:	0077f793          	andi	a5,a5,7
    80003b20:	00f73713          	sltiu	a4,a4,15
    80003b24:	00174713          	xori	a4,a4,1
    80003b28:	0017b793          	seqz	a5,a5
    80003b2c:	00e7f7b3          	and	a5,a5,a4
    80003b30:	10078863          	beqz	a5,80003c40 <__memmove+0x14c>
    80003b34:	00900793          	li	a5,9
    80003b38:	1107f463          	bgeu	a5,a6,80003c40 <__memmove+0x14c>
    80003b3c:	0036581b          	srliw	a6,a2,0x3
    80003b40:	fff8081b          	addiw	a6,a6,-1
    80003b44:	02081813          	slli	a6,a6,0x20
    80003b48:	01d85893          	srli	a7,a6,0x1d
    80003b4c:	00858813          	addi	a6,a1,8
    80003b50:	00058793          	mv	a5,a1
    80003b54:	00050713          	mv	a4,a0
    80003b58:	01088833          	add	a6,a7,a6
    80003b5c:	0007b883          	ld	a7,0(a5)
    80003b60:	00878793          	addi	a5,a5,8
    80003b64:	00870713          	addi	a4,a4,8
    80003b68:	ff173c23          	sd	a7,-8(a4)
    80003b6c:	ff0798e3          	bne	a5,a6,80003b5c <__memmove+0x68>
    80003b70:	ff867713          	andi	a4,a2,-8
    80003b74:	02071793          	slli	a5,a4,0x20
    80003b78:	0207d793          	srli	a5,a5,0x20
    80003b7c:	00f585b3          	add	a1,a1,a5
    80003b80:	40e686bb          	subw	a3,a3,a4
    80003b84:	00f507b3          	add	a5,a0,a5
    80003b88:	06e60463          	beq	a2,a4,80003bf0 <__memmove+0xfc>
    80003b8c:	0005c703          	lbu	a4,0(a1)
    80003b90:	00e78023          	sb	a4,0(a5)
    80003b94:	04068e63          	beqz	a3,80003bf0 <__memmove+0xfc>
    80003b98:	0015c603          	lbu	a2,1(a1)
    80003b9c:	00100713          	li	a4,1
    80003ba0:	00c780a3          	sb	a2,1(a5)
    80003ba4:	04e68663          	beq	a3,a4,80003bf0 <__memmove+0xfc>
    80003ba8:	0025c603          	lbu	a2,2(a1)
    80003bac:	00200713          	li	a4,2
    80003bb0:	00c78123          	sb	a2,2(a5)
    80003bb4:	02e68e63          	beq	a3,a4,80003bf0 <__memmove+0xfc>
    80003bb8:	0035c603          	lbu	a2,3(a1)
    80003bbc:	00300713          	li	a4,3
    80003bc0:	00c781a3          	sb	a2,3(a5)
    80003bc4:	02e68663          	beq	a3,a4,80003bf0 <__memmove+0xfc>
    80003bc8:	0045c603          	lbu	a2,4(a1)
    80003bcc:	00400713          	li	a4,4
    80003bd0:	00c78223          	sb	a2,4(a5)
    80003bd4:	00e68e63          	beq	a3,a4,80003bf0 <__memmove+0xfc>
    80003bd8:	0055c603          	lbu	a2,5(a1)
    80003bdc:	00500713          	li	a4,5
    80003be0:	00c782a3          	sb	a2,5(a5)
    80003be4:	00e68663          	beq	a3,a4,80003bf0 <__memmove+0xfc>
    80003be8:	0065c703          	lbu	a4,6(a1)
    80003bec:	00e78323          	sb	a4,6(a5)
    80003bf0:	00813403          	ld	s0,8(sp)
    80003bf4:	01010113          	addi	sp,sp,16
    80003bf8:	00008067          	ret
    80003bfc:	02061713          	slli	a4,a2,0x20
    80003c00:	02075713          	srli	a4,a4,0x20
    80003c04:	00e587b3          	add	a5,a1,a4
    80003c08:	f0f574e3          	bgeu	a0,a5,80003b10 <__memmove+0x1c>
    80003c0c:	02069613          	slli	a2,a3,0x20
    80003c10:	02065613          	srli	a2,a2,0x20
    80003c14:	fff64613          	not	a2,a2
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00c78633          	add	a2,a5,a2
    80003c20:	fff7c683          	lbu	a3,-1(a5)
    80003c24:	fff78793          	addi	a5,a5,-1
    80003c28:	fff70713          	addi	a4,a4,-1
    80003c2c:	00d70023          	sb	a3,0(a4)
    80003c30:	fec798e3          	bne	a5,a2,80003c20 <__memmove+0x12c>
    80003c34:	00813403          	ld	s0,8(sp)
    80003c38:	01010113          	addi	sp,sp,16
    80003c3c:	00008067          	ret
    80003c40:	02069713          	slli	a4,a3,0x20
    80003c44:	02075713          	srli	a4,a4,0x20
    80003c48:	00170713          	addi	a4,a4,1
    80003c4c:	00e50733          	add	a4,a0,a4
    80003c50:	00050793          	mv	a5,a0
    80003c54:	0005c683          	lbu	a3,0(a1)
    80003c58:	00178793          	addi	a5,a5,1
    80003c5c:	00158593          	addi	a1,a1,1
    80003c60:	fed78fa3          	sb	a3,-1(a5)
    80003c64:	fee798e3          	bne	a5,a4,80003c54 <__memmove+0x160>
    80003c68:	f89ff06f          	j	80003bf0 <__memmove+0xfc>

0000000080003c6c <__putc>:
    80003c6c:	fe010113          	addi	sp,sp,-32
    80003c70:	00813823          	sd	s0,16(sp)
    80003c74:	00113c23          	sd	ra,24(sp)
    80003c78:	02010413          	addi	s0,sp,32
    80003c7c:	00050793          	mv	a5,a0
    80003c80:	fef40593          	addi	a1,s0,-17
    80003c84:	00100613          	li	a2,1
    80003c88:	00000513          	li	a0,0
    80003c8c:	fef407a3          	sb	a5,-17(s0)
    80003c90:	fffff097          	auipc	ra,0xfffff
    80003c94:	b3c080e7          	jalr	-1220(ra) # 800027cc <console_write>
    80003c98:	01813083          	ld	ra,24(sp)
    80003c9c:	01013403          	ld	s0,16(sp)
    80003ca0:	02010113          	addi	sp,sp,32
    80003ca4:	00008067          	ret

0000000080003ca8 <__getc>:
    80003ca8:	fe010113          	addi	sp,sp,-32
    80003cac:	00813823          	sd	s0,16(sp)
    80003cb0:	00113c23          	sd	ra,24(sp)
    80003cb4:	02010413          	addi	s0,sp,32
    80003cb8:	fe840593          	addi	a1,s0,-24
    80003cbc:	00100613          	li	a2,1
    80003cc0:	00000513          	li	a0,0
    80003cc4:	fffff097          	auipc	ra,0xfffff
    80003cc8:	ae8080e7          	jalr	-1304(ra) # 800027ac <console_read>
    80003ccc:	fe844503          	lbu	a0,-24(s0)
    80003cd0:	01813083          	ld	ra,24(sp)
    80003cd4:	01013403          	ld	s0,16(sp)
    80003cd8:	02010113          	addi	sp,sp,32
    80003cdc:	00008067          	ret

0000000080003ce0 <console_handler>:
    80003ce0:	fe010113          	addi	sp,sp,-32
    80003ce4:	00813823          	sd	s0,16(sp)
    80003ce8:	00113c23          	sd	ra,24(sp)
    80003cec:	00913423          	sd	s1,8(sp)
    80003cf0:	02010413          	addi	s0,sp,32
    80003cf4:	14202773          	csrr	a4,scause
    80003cf8:	100027f3          	csrr	a5,sstatus
    80003cfc:	0027f793          	andi	a5,a5,2
    80003d00:	06079e63          	bnez	a5,80003d7c <console_handler+0x9c>
    80003d04:	00074c63          	bltz	a4,80003d1c <console_handler+0x3c>
    80003d08:	01813083          	ld	ra,24(sp)
    80003d0c:	01013403          	ld	s0,16(sp)
    80003d10:	00813483          	ld	s1,8(sp)
    80003d14:	02010113          	addi	sp,sp,32
    80003d18:	00008067          	ret
    80003d1c:	0ff77713          	andi	a4,a4,255
    80003d20:	00900793          	li	a5,9
    80003d24:	fef712e3          	bne	a4,a5,80003d08 <console_handler+0x28>
    80003d28:	ffffe097          	auipc	ra,0xffffe
    80003d2c:	6dc080e7          	jalr	1756(ra) # 80002404 <plic_claim>
    80003d30:	00a00793          	li	a5,10
    80003d34:	00050493          	mv	s1,a0
    80003d38:	02f50c63          	beq	a0,a5,80003d70 <console_handler+0x90>
    80003d3c:	fc0506e3          	beqz	a0,80003d08 <console_handler+0x28>
    80003d40:	00050593          	mv	a1,a0
    80003d44:	00000517          	auipc	a0,0x0
    80003d48:	3b450513          	addi	a0,a0,948 # 800040f8 <_ZN15MemoryAllocator10DBlockSizeE+0xd8>
    80003d4c:	fffff097          	auipc	ra,0xfffff
    80003d50:	afc080e7          	jalr	-1284(ra) # 80002848 <__printf>
    80003d54:	01013403          	ld	s0,16(sp)
    80003d58:	01813083          	ld	ra,24(sp)
    80003d5c:	00048513          	mv	a0,s1
    80003d60:	00813483          	ld	s1,8(sp)
    80003d64:	02010113          	addi	sp,sp,32
    80003d68:	ffffe317          	auipc	t1,0xffffe
    80003d6c:	6d430067          	jr	1748(t1) # 8000243c <plic_complete>
    80003d70:	fffff097          	auipc	ra,0xfffff
    80003d74:	3e0080e7          	jalr	992(ra) # 80003150 <uartintr>
    80003d78:	fddff06f          	j	80003d54 <console_handler+0x74>
    80003d7c:	00000517          	auipc	a0,0x0
    80003d80:	47c50513          	addi	a0,a0,1148 # 800041f8 <digits+0x78>
    80003d84:	fffff097          	auipc	ra,0xfffff
    80003d88:	a68080e7          	jalr	-1432(ra) # 800027ec <panic>
	...
