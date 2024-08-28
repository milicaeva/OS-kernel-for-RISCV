
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	f6813103          	ld	sp,-152(sp) # 80005f68 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1c9020ef          	jal	ra,800029e4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv4pushEv>:

.global _ZN5Riscv4pushEv
.type _ZN5Riscv4pushEv, @function

_ZN5Riscv4pushEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv3popEv>:
.type _ZN5Riscv3popEv, @function

_ZN5Riscv3popEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret

00000000800010f8 <_ZN5Riscv14supervisorTrapEv>:
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv @function

_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    800010f8:	f0010113          	addi	sp,sp,-256
    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    800010fc:	00113423          	sd	ra,8(sp)
    80001100:	00213823          	sd	sp,16(sp)
    80001104:	00313c23          	sd	gp,24(sp)
    80001108:	02413023          	sd	tp,32(sp)
    8000110c:	02513423          	sd	t0,40(sp)
    80001110:	02613823          	sd	t1,48(sp)
    80001114:	02713c23          	sd	t2,56(sp)
    80001118:	04813023          	sd	s0,64(sp)
    8000111c:	04913423          	sd	s1,72(sp)
    80001120:	04b13c23          	sd	a1,88(sp)
    80001124:	06c13023          	sd	a2,96(sp)
    80001128:	06d13423          	sd	a3,104(sp)
    8000112c:	06e13823          	sd	a4,112(sp)
    80001130:	06f13c23          	sd	a5,120(sp)
    80001134:	09013023          	sd	a6,128(sp)
    80001138:	09113423          	sd	a7,136(sp)
    8000113c:	09213823          	sd	s2,144(sp)
    80001140:	09313c23          	sd	s3,152(sp)
    80001144:	0b413023          	sd	s4,160(sp)
    80001148:	0b513423          	sd	s5,168(sp)
    8000114c:	0b613823          	sd	s6,176(sp)
    80001150:	0b713c23          	sd	s7,184(sp)
    80001154:	0d813023          	sd	s8,192(sp)
    80001158:	0d913423          	sd	s9,200(sp)
    8000115c:	0da13823          	sd	s10,208(sp)
    80001160:	0db13c23          	sd	s11,216(sp)
    80001164:	0fc13023          	sd	t3,224(sp)
    80001168:	0fd13423          	sd	t4,232(sp)
    8000116c:	0fe13823          	sd	t5,240(sp)
    80001170:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv16interruptHandlerEv
    80001174:	19d000ef          	jal	ra,80001b10 <_ZN5Riscv16interruptHandlerEv>

    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001178:	00813083          	ld	ra,8(sp)
    8000117c:	01013103          	ld	sp,16(sp)
    80001180:	01813183          	ld	gp,24(sp)
    80001184:	02013203          	ld	tp,32(sp)
    80001188:	02813283          	ld	t0,40(sp)
    8000118c:	03013303          	ld	t1,48(sp)
    80001190:	03813383          	ld	t2,56(sp)
    80001194:	04013403          	ld	s0,64(sp)
    80001198:	04813483          	ld	s1,72(sp)
    8000119c:	05813583          	ld	a1,88(sp)
    800011a0:	06013603          	ld	a2,96(sp)
    800011a4:	06813683          	ld	a3,104(sp)
    800011a8:	07013703          	ld	a4,112(sp)
    800011ac:	07813783          	ld	a5,120(sp)
    800011b0:	08013803          	ld	a6,128(sp)
    800011b4:	08813883          	ld	a7,136(sp)
    800011b8:	09013903          	ld	s2,144(sp)
    800011bc:	09813983          	ld	s3,152(sp)
    800011c0:	0a013a03          	ld	s4,160(sp)
    800011c4:	0a813a83          	ld	s5,168(sp)
    800011c8:	0b013b03          	ld	s6,176(sp)
    800011cc:	0b813b83          	ld	s7,184(sp)
    800011d0:	0c013c03          	ld	s8,192(sp)
    800011d4:	0c813c83          	ld	s9,200(sp)
    800011d8:	0d013d03          	ld	s10,208(sp)
    800011dc:	0d813d83          	ld	s11,216(sp)
    800011e0:	0e013e03          	ld	t3,224(sp)
    800011e4:	0e813e83          	ld	t4,232(sp)
    800011e8:	0f013f03          	ld	t5,240(sp)
    800011ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800011f0:	10010113          	addi	sp,sp,256

    800011f4:	10200073          	sret
	...

0000000080001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function

_ZN3TCB13contextSwitchEPNS_7ContextES1_:

    # a0 - &old->context
    sd ra, 0 * 8(a0)
    80001200:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001204:	00253423          	sd	sp,8(a0)

    # a1 - &new->context
    ld ra, 0 * 8(a1)
    80001208:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000120c:	0085b103          	ld	sp,8(a1)

    80001210:	00008067          	ret

0000000080001214 <_Znwm>:
#include "../h/syscallC.hpp"

void* operator new(size_t size) {
    80001214:	ff010113          	addi	sp,sp,-16
    80001218:	00113423          	sd	ra,8(sp)
    8000121c:	00813023          	sd	s0,0(sp)
    80001220:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001224:	00001097          	auipc	ra,0x1
    80001228:	ff8080e7          	jalr	-8(ra) # 8000221c <_Z9mem_allocm>
}
    8000122c:	00813083          	ld	ra,8(sp)
    80001230:	00013403          	ld	s0,0(sp)
    80001234:	01010113          	addi	sp,sp,16
    80001238:	00008067          	ret

000000008000123c <_Znam>:

void* operator new[](size_t size) {
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00113423          	sd	ra,8(sp)
    80001244:	00813023          	sd	s0,0(sp)
    80001248:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000124c:	00001097          	auipc	ra,0x1
    80001250:	fd0080e7          	jalr	-48(ra) # 8000221c <_Z9mem_allocm>
}
    80001254:	00813083          	ld	ra,8(sp)
    80001258:	00013403          	ld	s0,0(sp)
    8000125c:	01010113          	addi	sp,sp,16
    80001260:	00008067          	ret

0000000080001264 <_ZdlPv>:

void operator delete(void* ptr) noexcept {
    80001264:	ff010113          	addi	sp,sp,-16
    80001268:	00113423          	sd	ra,8(sp)
    8000126c:	00813023          	sd	s0,0(sp)
    80001270:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001274:	00001097          	auipc	ra,0x1
    80001278:	008080e7          	jalr	8(ra) # 8000227c <_Z8mem_freePv>
}
    8000127c:	00813083          	ld	ra,8(sp)
    80001280:	00013403          	ld	s0,0(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_ZdaPv>:

void operator delete[](void* ptr) noexcept {
    8000128c:	ff010113          	addi	sp,sp,-16
    80001290:	00113423          	sd	ra,8(sp)
    80001294:	00813023          	sd	s0,0(sp)
    80001298:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000129c:	00001097          	auipc	ra,0x1
    800012a0:	fe0080e7          	jalr	-32(ra) # 8000227c <_Z8mem_freePv>
    800012a4:	00813083          	ld	ra,8(sp)
    800012a8:	00013403          	ld	s0,0(sp)
    800012ac:	01010113          	addi	sp,sp,16
    800012b0:	00008067          	ret

00000000800012b4 <_Z7workerAPv>:
#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"

void workerA(void *) {
    800012b4:	fe010113          	addi	sp,sp,-32
    800012b8:	00113c23          	sd	ra,24(sp)
    800012bc:	00813823          	sd	s0,16(sp)
    800012c0:	00913423          	sd	s1,8(sp)
    800012c4:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 3; i++) {
    800012c8:	00000493          	li	s1,0
    800012cc:	01c0006f          	j	800012e8 <_Z7workerAPv+0x34>
        putc('A');
    800012d0:	04100513          	li	a0,65
    800012d4:	00001097          	auipc	ra,0x1
    800012d8:	29c080e7          	jalr	668(ra) # 80002570 <_Z4putcc>
        thread_dispatch();
    800012dc:	00001097          	auipc	ra,0x1
    800012e0:	0bc080e7          	jalr	188(ra) # 80002398 <_Z15thread_dispatchv>
    for (int i = 0; i < 3; i++) {
    800012e4:	0014849b          	addiw	s1,s1,1
    800012e8:	00200793          	li	a5,2
    800012ec:	fe97d2e3          	bge	a5,s1,800012d0 <_Z7workerAPv+0x1c>
    }
}
    800012f0:	01813083          	ld	ra,24(sp)
    800012f4:	01013403          	ld	s0,16(sp)
    800012f8:	00813483          	ld	s1,8(sp)
    800012fc:	02010113          	addi	sp,sp,32
    80001300:	00008067          	ret

0000000080001304 <_Z7workerBPv>:

void workerB(void*) {
    80001304:	fe010113          	addi	sp,sp,-32
    80001308:	00113c23          	sd	ra,24(sp)
    8000130c:	00813823          	sd	s0,16(sp)
    80001310:	00913423          	sd	s1,8(sp)
    80001314:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 7; i++){
    80001318:	00000493          	li	s1,0
    8000131c:	01c0006f          	j	80001338 <_Z7workerBPv+0x34>
        putc('B');
    80001320:	04200513          	li	a0,66
    80001324:	00001097          	auipc	ra,0x1
    80001328:	24c080e7          	jalr	588(ra) # 80002570 <_Z4putcc>
        thread_dispatch();
    8000132c:	00001097          	auipc	ra,0x1
    80001330:	06c080e7          	jalr	108(ra) # 80002398 <_Z15thread_dispatchv>
    for (int i = 0; i < 7; i++){
    80001334:	0014849b          	addiw	s1,s1,1
    80001338:	00600793          	li	a5,6
    8000133c:	fe97d2e3          	bge	a5,s1,80001320 <_Z7workerBPv+0x1c>
    }
}
    80001340:	01813083          	ld	ra,24(sp)
    80001344:	01013403          	ld	s0,16(sp)
    80001348:	00813483          	ld	s1,8(sp)
    8000134c:	02010113          	addi	sp,sp,32
    80001350:	00008067          	ret

0000000080001354 <_Z7workerCPv>:

void workerC(void*) {
    80001354:	fe010113          	addi	sp,sp,-32
    80001358:	00113c23          	sd	ra,24(sp)
    8000135c:	00813823          	sd	s0,16(sp)
    80001360:	00913423          	sd	s1,8(sp)
    80001364:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 5; i++){
    80001368:	00000493          	li	s1,0
    8000136c:	00400793          	li	a5,4
    80001370:	0297c063          	blt	a5,s1,80001390 <_Z7workerCPv+0x3c>
        putc('C');
    80001374:	04300513          	li	a0,67
    80001378:	00001097          	auipc	ra,0x1
    8000137c:	1f8080e7          	jalr	504(ra) # 80002570 <_Z4putcc>
        thread_dispatch();
    80001380:	00001097          	auipc	ra,0x1
    80001384:	018080e7          	jalr	24(ra) # 80002398 <_Z15thread_dispatchv>
    for (int i = 0; i < 5; i++){
    80001388:	0014849b          	addiw	s1,s1,1
    8000138c:	fe1ff06f          	j	8000136c <_Z7workerCPv+0x18>
    }
}
    80001390:	01813083          	ld	ra,24(sp)
    80001394:	01013403          	ld	s0,16(sp)
    80001398:	00813483          	ld	s1,8(sp)
    8000139c:	02010113          	addi	sp,sp,32
    800013a0:	00008067          	ret

00000000800013a4 <main>:

thread_t threads[5];

int main(){
    800013a4:	fe010113          	addi	sp,sp,-32
    800013a8:	00113c23          	sd	ra,24(sp)
    800013ac:	00813823          	sd	s0,16(sp)
    800013b0:	00913423          	sd	s1,8(sp)
    800013b4:	02010413          	addi	s0,sp,32

    Riscv::writeStvec((uint64)&Riscv::supervisorTrap);
    800013b8:	00005797          	auipc	a5,0x5
    800013bc:	ba87b783          	ld	a5,-1112(a5) # 80005f60 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void Riscv::writeStvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    800013c0:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	430080e7          	jalr	1072(ra) # 800017f4 <_ZN15MemoryAllocator4initEv>

    thread_create(&threads[0], nullptr, nullptr); // main
    800013cc:	00005497          	auipc	s1,0x5
    800013d0:	c0448493          	addi	s1,s1,-1020 # 80005fd0 <threads>
    800013d4:	00000613          	li	a2,0
    800013d8:	00000593          	li	a1,0
    800013dc:	00048513          	mv	a0,s1
    800013e0:	00001097          	auipc	ra,0x1
    800013e4:	ee8080e7          	jalr	-280(ra) # 800022c8 <_Z13thread_createPP3TCBPFvPvES2_>

    TCB::running = threads[0];
    800013e8:	0004b703          	ld	a4,0(s1)
    800013ec:	00005797          	auipc	a5,0x5
    800013f0:	b847b783          	ld	a5,-1148(a5) # 80005f70 <_GLOBAL_OFFSET_TABLE_+0x20>
    800013f4:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], &workerA, nullptr);
    800013f8:	00000613          	li	a2,0
    800013fc:	00000597          	auipc	a1,0x0
    80001400:	eb858593          	addi	a1,a1,-328 # 800012b4 <_Z7workerAPv>
    80001404:	00005517          	auipc	a0,0x5
    80001408:	bd450513          	addi	a0,a0,-1068 # 80005fd8 <threads+0x8>
    8000140c:	00001097          	auipc	ra,0x1
    80001410:	ebc080e7          	jalr	-324(ra) # 800022c8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], &workerB, nullptr);
    80001414:	00000613          	li	a2,0
    80001418:	00000597          	auipc	a1,0x0
    8000141c:	eec58593          	addi	a1,a1,-276 # 80001304 <_Z7workerBPv>
    80001420:	00005517          	auipc	a0,0x5
    80001424:	bc050513          	addi	a0,a0,-1088 # 80005fe0 <threads+0x10>
    80001428:	00001097          	auipc	ra,0x1
    8000142c:	ea0080e7          	jalr	-352(ra) # 800022c8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], &workerC, nullptr);
    80001430:	00000613          	li	a2,0
    80001434:	00000597          	auipc	a1,0x0
    80001438:	f2058593          	addi	a1,a1,-224 # 80001354 <_Z7workerCPv>
    8000143c:	00005517          	auipc	a0,0x5
    80001440:	bac50513          	addi	a0,a0,-1108 # 80005fe8 <threads+0x18>
    80001444:	00001097          	auipc	ra,0x1
    80001448:	e84080e7          	jalr	-380(ra) # 800022c8 <_Z13thread_createPP3TCBPFvPvES2_>

    while(1){
        putc('M');
    8000144c:	04d00513          	li	a0,77
    80001450:	00001097          	auipc	ra,0x1
    80001454:	120080e7          	jalr	288(ra) # 80002570 <_Z4putcc>
        thread_dispatch();
    80001458:	00001097          	auipc	ra,0x1
    8000145c:	f40080e7          	jalr	-192(ra) # 80002398 <_Z15thread_dispatchv>
    while(1){
    80001460:	fedff06f          	j	8000144c <main+0xa8>

0000000080001464 <_ZN3TCBC1EPFvPvES0_S0_>:
#include "../h/scheduler.hpp"

TCB* TCB::running = nullptr;
int TCB::id = 0;

TCB::TCB(body routine, void* arg, void * stack) : stack(routine!=nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr) {
    80001464:	fd010113          	addi	sp,sp,-48
    80001468:	02113423          	sd	ra,40(sp)
    8000146c:	02813023          	sd	s0,32(sp)
    80001470:	00913c23          	sd	s1,24(sp)
    80001474:	01213823          	sd	s2,16(sp)
    80001478:	01313423          	sd	s3,8(sp)
    8000147c:	03010413          	addi	s0,sp,48
    80001480:	00050493          	mv	s1,a0
    80001484:	00058913          	mv	s2,a1
    80001488:	00060993          	mv	s3,a2
    8000148c:	06058c63          	beqz	a1,80001504 <_ZN3TCBC1EPFvPvES0_S0_+0xa0>
    80001490:	00008537          	lui	a0,0x8
    80001494:	00000097          	auipc	ra,0x0
    80001498:	da8080e7          	jalr	-600(ra) # 8000123c <_Znam>
    8000149c:	00a4b823          	sd	a0,16(s1)
    this->context = {
            (uint64)&TCB::threadWrapper, //ra
            routine == nullptr ? 0 : (uint64) &this->stack[ DEFAULT_STACK_SIZE ] //sp
    800014a0:	06090663          	beqz	s2,8000150c <_ZN3TCBC1EPFvPvES0_S0_+0xa8>
    800014a4:	000087b7          	lui	a5,0x8
    800014a8:	00f50533          	add	a0,a0,a5
    this->context = {
    800014ac:	00000797          	auipc	a5,0x0
    800014b0:	0b878793          	addi	a5,a5,184 # 80001564 <_ZN3TCB13threadWrapperEv>
    800014b4:	02f4b023          	sd	a5,32(s1)
    800014b8:	02a4b423          	sd	a0,40(s1)
    };
    this->routine=routine;
    800014bc:	0124b423          	sd	s2,8(s1)
    this->arg=arg;
    800014c0:	0134bc23          	sd	s3,24(s1)
    this->finished=false; //menja se u wrapperu
    800014c4:	02048823          	sb	zero,48(s1)
    this->blocked=false; //menja se u sem
    800014c8:	020488a3          	sb	zero,49(s1)
    this->threadID=++id;
    800014cc:	00005717          	auipc	a4,0x5
    800014d0:	b2c70713          	addi	a4,a4,-1236 # 80005ff8 <_ZN3TCB2idE>
    800014d4:	00072783          	lw	a5,0(a4)
    800014d8:	0017879b          	addiw	a5,a5,1
    800014dc:	0007869b          	sext.w	a3,a5
    800014e0:	00f72023          	sw	a5,0(a4)
    800014e4:	00d4b023          	sd	a3,0(s1)
}
    800014e8:	02813083          	ld	ra,40(sp)
    800014ec:	02013403          	ld	s0,32(sp)
    800014f0:	01813483          	ld	s1,24(sp)
    800014f4:	01013903          	ld	s2,16(sp)
    800014f8:	00813983          	ld	s3,8(sp)
    800014fc:	03010113          	addi	sp,sp,48
    80001500:	00008067          	ret
TCB::TCB(body routine, void* arg, void * stack) : stack(routine!=nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr) {
    80001504:	00000513          	li	a0,0
    80001508:	f95ff06f          	j	8000149c <_ZN3TCBC1EPFvPvES0_S0_+0x38>
            routine == nullptr ? 0 : (uint64) &this->stack[ DEFAULT_STACK_SIZE ] //sp
    8000150c:	00000513          	li	a0,0
    80001510:	f9dff06f          	j	800014ac <_ZN3TCBC1EPFvPvES0_S0_+0x48>

0000000080001514 <_ZN3TCB10threadExitEv>:
    if(routine) Scheduler::put(*handle);
    return 0;
}

int TCB::threadExit() {
    if(!running || !running->getFinished()) return -1;
    80001514:	00005797          	auipc	a5,0x5
    80001518:	aec7b783          	ld	a5,-1300(a5) # 80006000 <_ZN3TCB7runningE>
    8000151c:	02078c63          	beqz	a5,80001554 <_ZN3TCB10threadExitEv+0x40>
    static int threadCreate(TCB** handle, body routine, void* arg, void* stack);
    static int threadExit();
    static void dispatch();
    static void yield(TCB*, TCB*);

    bool getFinished() { return finished; }
    80001520:	0307c783          	lbu	a5,48(a5)
    80001524:	02078c63          	beqz	a5,8000155c <_ZN3TCB10threadExitEv+0x48>
int TCB::threadExit() {
    80001528:	ff010113          	addi	sp,sp,-16
    8000152c:	00113423          	sd	ra,8(sp)
    80001530:	00813023          	sd	s0,0(sp)
    80001534:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	e60080e7          	jalr	-416(ra) # 80002398 <_Z15thread_dispatchv>
    return 0;
    80001540:	00000513          	li	a0,0
}
    80001544:	00813083          	ld	ra,8(sp)
    80001548:	00013403          	ld	s0,0(sp)
    8000154c:	01010113          	addi	sp,sp,16
    80001550:	00008067          	ret
    if(!running || !running->getFinished()) return -1;
    80001554:	fff00513          	li	a0,-1
    80001558:	00008067          	ret
    8000155c:	fff00513          	li	a0,-1
}
    80001560:	00008067          	ret

0000000080001564 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper() {
    80001564:	fe010113          	addi	sp,sp,-32
    80001568:	00113c23          	sd	ra,24(sp)
    8000156c:	00813823          	sd	s0,16(sp)
    80001570:	00913423          	sd	s1,8(sp)
    80001574:	02010413          	addi	s0,sp,32
    if (running->routine) {
    80001578:	00005797          	auipc	a5,0x5
    8000157c:	a887b783          	ld	a5,-1400(a5) # 80006000 <_ZN3TCB7runningE>
    80001580:	0087b783          	ld	a5,8(a5)
    80001584:	02078863          	beqz	a5,800015b4 <_ZN3TCB13threadWrapperEv+0x50>
        Riscv::popSppSpie();
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	7a0080e7          	jalr	1952(ra) # 80001d28 <_ZN5Riscv10popSppSpieEv>
        running->routine(running->arg);
    80001590:	00005497          	auipc	s1,0x5
    80001594:	a6848493          	addi	s1,s1,-1432 # 80005ff8 <_ZN3TCB2idE>
    80001598:	0084b783          	ld	a5,8(s1)
    8000159c:	0087b703          	ld	a4,8(a5)
    800015a0:	0187b503          	ld	a0,24(a5)
    800015a4:	000700e7          	jalr	a4
        running->setFinished();
    800015a8:	0084b783          	ld	a5,8(s1)
    void setFinished() { finished=true; }
    800015ac:	00100713          	li	a4,1
    800015b0:	02e78823          	sb	a4,48(a5)
    }
    TCB::threadExit();
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	f60080e7          	jalr	-160(ra) # 80001514 <_ZN3TCB10threadExitEv>
}
    800015bc:	01813083          	ld	ra,24(sp)
    800015c0:	01013403          	ld	s0,16(sp)
    800015c4:	00813483          	ld	s1,8(sp)
    800015c8:	02010113          	addi	sp,sp,32
    800015cc:	00008067          	ret

00000000800015d0 <_ZN3TCB5yieldEPS_S0_>:
    if (running->finished) delete running;
    running=Scheduler::get();
    yield(oldRunning, running);
}

void TCB::yield(TCB* oldRunning, TCB* newRunning) {
    800015d0:	fe010113          	addi	sp,sp,-32
    800015d4:	00113c23          	sd	ra,24(sp)
    800015d8:	00813823          	sd	s0,16(sp)
    800015dc:	00913423          	sd	s1,8(sp)
    800015e0:	02010413          	addi	s0,sp,32
    800015e4:	00050493          	mv	s1,a0

    Riscv::push();
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	a18080e7          	jalr	-1512(ra) # 80001000 <_ZN5Riscv4pushEv>
    contextSwitch(&oldRunning->context, &running->context);
    800015f0:	00005597          	auipc	a1,0x5
    800015f4:	a105b583          	ld	a1,-1520(a1) # 80006000 <_ZN3TCB7runningE>
    800015f8:	02058593          	addi	a1,a1,32
    800015fc:	02048513          	addi	a0,s1,32
    80001600:	00000097          	auipc	ra,0x0
    80001604:	c00080e7          	jalr	-1024(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    Riscv::pop();
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	a74080e7          	jalr	-1420(ra) # 8000107c <_ZN5Riscv3popEv>
}
    80001610:	01813083          	ld	ra,24(sp)
    80001614:	01013403          	ld	s0,16(sp)
    80001618:	00813483          	ld	s1,8(sp)
    8000161c:	02010113          	addi	sp,sp,32
    80001620:	00008067          	ret

0000000080001624 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80001624:	ff010113          	addi	sp,sp,-16
    80001628:	00113423          	sd	ra,8(sp)
    8000162c:	00813023          	sd	s0,0(sp)
    80001630:	01010413          	addi	s0,sp,16
    size_t numOfBlocks=ROUNDUP((size+MemoryAllocator::DBlockSize))/MEM_BLOCK_SIZE;
    80001634:	00005797          	auipc	a5,0x5
    80001638:	94c7b783          	ld	a5,-1716(a5) # 80005f80 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000163c:	0007b783          	ld	a5,0(a5)
    80001640:	00a78533          	add	a0,a5,a0
    80001644:	03f50513          	addi	a0,a0,63 # 803f <_entry-0x7fff7fc1>
    return MemoryAllocator::mem_alloc(numOfBlocks);
    80001648:	00655513          	srli	a0,a0,0x6
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	218080e7          	jalr	536(ra) # 80001864 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001654:	00813083          	ld	ra,8(sp)
    80001658:	00013403          	ld	s0,0(sp)
    8000165c:	01010113          	addi	sp,sp,16
    80001660:	00008067          	ret

0000000080001664 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *ptr) {
    80001664:	ff010113          	addi	sp,sp,-16
    80001668:	00113423          	sd	ra,8(sp)
    8000166c:	00813023          	sd	s0,0(sp)
    80001670:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001674:	00000097          	auipc	ra,0x0
    80001678:	37c080e7          	jalr	892(ra) # 800019f0 <_ZN15MemoryAllocator8mem_freeEPv>
    8000167c:	00813083          	ld	ra,8(sp)
    80001680:	00013403          	ld	s0,0(sp)
    80001684:	01010113          	addi	sp,sp,16
    80001688:	00008067          	ret

000000008000168c <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_>:
int TCB::threadCreate(TCB ** handle, body routine, void* arg, void* stack) { //handle je ADRESA rucke
    8000168c:	fc010113          	addi	sp,sp,-64
    80001690:	02113c23          	sd	ra,56(sp)
    80001694:	02813823          	sd	s0,48(sp)
    80001698:	02913423          	sd	s1,40(sp)
    8000169c:	03213023          	sd	s2,32(sp)
    800016a0:	01313c23          	sd	s3,24(sp)
    800016a4:	01413823          	sd	s4,16(sp)
    800016a8:	01513423          	sd	s5,8(sp)
    800016ac:	04010413          	addi	s0,sp,64
    800016b0:	00050993          	mv	s3,a0
    800016b4:	00058913          	mv	s2,a1
    800016b8:	00060a13          	mv	s4,a2
    800016bc:	00068a93          	mv	s5,a3
    *handle=new TCB(routine, arg, stack);
    800016c0:	03800513          	li	a0,56
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	f60080e7          	jalr	-160(ra) # 80001624 <_ZN3TCBnwEm>
    800016cc:	00050493          	mv	s1,a0
    800016d0:	000a8693          	mv	a3,s5
    800016d4:	000a0613          	mv	a2,s4
    800016d8:	00090593          	mv	a1,s2
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	d88080e7          	jalr	-632(ra) # 80001464 <_ZN3TCBC1EPFvPvES0_S0_>
    800016e4:	0099b023          	sd	s1,0(s3)
    if(!*handle) return -1;
    800016e8:	02048e63          	beqz	s1,80001724 <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0x98>
    if(routine) Scheduler::put(*handle);
    800016ec:	04090063          	beqz	s2,8000172c <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0xa0>
    800016f0:	00048513          	mv	a0,s1
    800016f4:	00001097          	auipc	ra,0x1
    800016f8:	a04080e7          	jalr	-1532(ra) # 800020f8 <_ZN9Scheduler3putEP3TCB>
    return 0;
    800016fc:	00000513          	li	a0,0
}
    80001700:	03813083          	ld	ra,56(sp)
    80001704:	03013403          	ld	s0,48(sp)
    80001708:	02813483          	ld	s1,40(sp)
    8000170c:	02013903          	ld	s2,32(sp)
    80001710:	01813983          	ld	s3,24(sp)
    80001714:	01013a03          	ld	s4,16(sp)
    80001718:	00813a83          	ld	s5,8(sp)
    8000171c:	04010113          	addi	sp,sp,64
    80001720:	00008067          	ret
    if(!*handle) return -1;
    80001724:	fff00513          	li	a0,-1
    80001728:	fd9ff06f          	j	80001700 <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0x74>
    return 0;
    8000172c:	00000513          	li	a0,0
    80001730:	fd1ff06f          	j	80001700 <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0x74>
    80001734:	00050913          	mv	s2,a0
    *handle=new TCB(routine, arg, stack);
    80001738:	00048513          	mv	a0,s1
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	f28080e7          	jalr	-216(ra) # 80001664 <_ZN3TCBdlEPv>
    80001744:	00090513          	mv	a0,s2
    80001748:	00006097          	auipc	ra,0x6
    8000174c:	9b0080e7          	jalr	-1616(ra) # 800070f8 <_Unwind_Resume>

0000000080001750 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001750:	fe010113          	addi	sp,sp,-32
    80001754:	00113c23          	sd	ra,24(sp)
    80001758:	00813823          	sd	s0,16(sp)
    8000175c:	00913423          	sd	s1,8(sp)
    80001760:	01213023          	sd	s2,0(sp)
    80001764:	02010413          	addi	s0,sp,32
    TCB *oldRunning=running;
    80001768:	00005497          	auipc	s1,0x5
    8000176c:	8984b483          	ld	s1,-1896(s1) # 80006000 <_ZN3TCB7runningE>
    if (!running->finished && !running->blocked) {
    80001770:	0304c783          	lbu	a5,48(s1)
    80001774:	00079663          	bnez	a5,80001780 <_ZN3TCB8dispatchEv+0x30>
    80001778:	0314c783          	lbu	a5,49(s1)
    8000177c:	06078463          	beqz	a5,800017e4 <_ZN3TCB8dispatchEv+0x94>
    if (running->finished) delete running;
    80001780:	00005917          	auipc	s2,0x5
    80001784:	88093903          	ld	s2,-1920(s2) # 80006000 <_ZN3TCB7runningE>
    80001788:	03094783          	lbu	a5,48(s2)
    8000178c:	02078063          	beqz	a5,800017ac <_ZN3TCB8dispatchEv+0x5c>
    80001790:	00090e63          	beqz	s2,800017ac <_ZN3TCB8dispatchEv+0x5c>
    bool getBlocked() { return blocked; }
    void setBlocked() { blocked=true; }

    ~TCB() { MemoryAllocator::mem_free(this->stack); }
    80001794:	01093503          	ld	a0,16(s2)
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	258080e7          	jalr	600(ra) # 800019f0 <_ZN15MemoryAllocator8mem_freeEPv>
    800017a0:	00090513          	mv	a0,s2
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	ec0080e7          	jalr	-320(ra) # 80001664 <_ZN3TCBdlEPv>
    running=Scheduler::get();
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	8e4080e7          	jalr	-1820(ra) # 80002090 <_ZN9Scheduler3getEv>
    800017b4:	00050593          	mv	a1,a0
    800017b8:	00005797          	auipc	a5,0x5
    800017bc:	84a7b423          	sd	a0,-1976(a5) # 80006000 <_ZN3TCB7runningE>
    yield(oldRunning, running);
    800017c0:	00048513          	mv	a0,s1
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	e0c080e7          	jalr	-500(ra) # 800015d0 <_ZN3TCB5yieldEPS_S0_>
}
    800017cc:	01813083          	ld	ra,24(sp)
    800017d0:	01013403          	ld	s0,16(sp)
    800017d4:	00813483          	ld	s1,8(sp)
    800017d8:	00013903          	ld	s2,0(sp)
    800017dc:	02010113          	addi	sp,sp,32
    800017e0:	00008067          	ret
        Scheduler::put(oldRunning);
    800017e4:	00048513          	mv	a0,s1
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	910080e7          	jalr	-1776(ra) # 800020f8 <_ZN9Scheduler3putEP3TCB>
    800017f0:	f91ff06f          	j	80001780 <_ZN3TCB8dispatchEv+0x30>

00000000800017f4 <_ZN15MemoryAllocator4initEv>:
MemoryAllocator::DBlock* MemoryAllocator::headFree = nullptr;
bool MemoryAllocator::initialized = false;

const size_t MemoryAllocator::DBlockSize = sizeof(MemoryAllocator::DBlock);

void MemoryAllocator::init(){
    800017f4:	ff010113          	addi	sp,sp,-16
    800017f8:	00813423          	sd	s0,8(sp)
    800017fc:	01010413          	addi	s0,sp,16
    if(!initialized){
    80001800:	00005797          	auipc	a5,0x5
    80001804:	8087c783          	lbu	a5,-2040(a5) # 80006008 <_ZN15MemoryAllocator11initializedE>
    80001808:	04079863          	bnez	a5,80001858 <_ZN15MemoryAllocator4initEv+0x64>
        headFree=(DBlock*)((char*)HEAP_START_ADDR);
    8000180c:	00004797          	auipc	a5,0x4
    80001810:	74c7b783          	ld	a5,1868(a5) # 80005f58 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001814:	0007b683          	ld	a3,0(a5)
    80001818:	00004717          	auipc	a4,0x4
    8000181c:	7f070713          	addi	a4,a4,2032 # 80006008 <_ZN15MemoryAllocator11initializedE>
    80001820:	00d73423          	sd	a3,8(a4)
        headFree->size=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR+1)/MEM_BLOCK_SIZE-1; //u BLOKOVIMA, slobodan prostor + header
    80001824:	00004797          	auipc	a5,0x4
    80001828:	7547b783          	ld	a5,1876(a5) # 80005f78 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000182c:	0007b783          	ld	a5,0(a5)
    80001830:	40d787b3          	sub	a5,a5,a3
    80001834:	04078793          	addi	a5,a5,64
    80001838:	0067d793          	srli	a5,a5,0x6
    8000183c:	fff78793          	addi	a5,a5,-1
    80001840:	00f6b023          	sd	a5,0(a3)
        headFree->next = nullptr;
    80001844:	00873783          	ld	a5,8(a4)
    80001848:	0007b423          	sd	zero,8(a5)
        headFree->prev  = nullptr;
    8000184c:	0007b823          	sd	zero,16(a5)
        initialized=true;
    80001850:	00100793          	li	a5,1
    80001854:	00f70023          	sb	a5,0(a4)
    }
}
    80001858:	00813403          	ld	s0,8(sp)
    8000185c:	01010113          	addi	sp,sp,16
    80001860:	00008067          	ret

0000000080001864 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size){ //broj blokova - uracunat header
    80001864:	ff010113          	addi	sp,sp,-16
    80001868:	00813423          	sd	s0,8(sp)
    8000186c:	01010413          	addi	s0,sp,16

    if(size <=0 || size>=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR)/MEM_BLOCK_SIZE) return nullptr;
    80001870:	10050e63          	beqz	a0,8000198c <_ZN15MemoryAllocator9mem_allocEm+0x128>
    80001874:	00050793          	mv	a5,a0
    80001878:	00004717          	auipc	a4,0x4
    8000187c:	70073703          	ld	a4,1792(a4) # 80005f78 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001880:	00073703          	ld	a4,0(a4)
    80001884:	00004697          	auipc	a3,0x4
    80001888:	6d46b683          	ld	a3,1748(a3) # 80005f58 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000188c:	0006b683          	ld	a3,0(a3)
    80001890:	40d70733          	sub	a4,a4,a3
    80001894:	03f70713          	addi	a4,a4,63
    80001898:	00675713          	srli	a4,a4,0x6
    8000189c:	0ee57c63          	bgeu	a0,a4,80001994 <_ZN15MemoryAllocator9mem_allocEm+0x130>
    DBlock* curr=nullptr;

    for(curr = headFree; curr ; curr=curr->next){ //iteriramo kroz free
    800018a0:	00004697          	auipc	a3,0x4
    800018a4:	7706b683          	ld	a3,1904(a3) # 80006010 <_ZN15MemoryAllocator8headFreeE>
    800018a8:	00068513          	mv	a0,a3
    800018ac:	06050263          	beqz	a0,80001910 <_ZN15MemoryAllocator9mem_allocEm+0xac>

        if(curr->size<size) continue; //nema prostora, idi na sledece
    800018b0:	00053703          	ld	a4,0(a0)
    800018b4:	06f76463          	bltu	a4,a5,8000191c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        if(curr->size==size){ //ima tacno onoliko prostora koliki je blok
    800018b8:	06f70663          	beq	a4,a5,80001924 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            if (curr == headFree) headFree = curr->next;
            curr->prev = curr->next = nullptr;

        }
        else{ //slucaj da ima prostora + viska
            curr->size-=size;
    800018bc:	40f70733          	sub	a4,a4,a5
    800018c0:	00e53023          	sd	a4,0(a0)
            curr=(DBlock*)((char*)curr+(curr->size*MEM_BLOCK_SIZE));
    800018c4:	00671713          	slli	a4,a4,0x6
    800018c8:	00e50533          	add	a0,a0,a4
            curr->size=size;
    800018cc:	00f53023          	sd	a5,0(a0)
            curr->prev=nullptr;
    800018d0:	00053823          	sd	zero,16(a0)
            curr->next =nullptr;
    800018d4:	00053423          	sd	zero,8(a0)

        }
        //ubaci u full listu

        if(!headFull){
    800018d8:	00004797          	auipc	a5,0x4
    800018dc:	7407b783          	ld	a5,1856(a5) # 80006018 <_ZN15MemoryAllocator8headFullE>
    800018e0:	08078263          	beqz	a5,80001964 <_ZN15MemoryAllocator9mem_allocEm+0x100>
            headFull=curr;
            return (char*)curr+DBlockSize;
        }

        if(headFull>curr) {
    800018e4:	08f56863          	bltu	a0,a5,80001974 <_ZN15MemoryAllocator9mem_allocEm+0x110>
            headFull=curr;
            return (char*)curr+DBlockSize;
        } //stavljamo na pocetak liste

        DBlock *currUsed=headFull;
        while(currUsed->next && currUsed->next<curr) currUsed=currUsed->next;
    800018e8:	00078713          	mv	a4,a5
    800018ec:	0087b783          	ld	a5,8(a5)
    800018f0:	00078463          	beqz	a5,800018f8 <_ZN15MemoryAllocator9mem_allocEm+0x94>
    800018f4:	fea7eae3          	bltu	a5,a0,800018e8 <_ZN15MemoryAllocator9mem_allocEm+0x84>
        curr->next=currUsed->next;
    800018f8:	00f53423          	sd	a5,8(a0)
        if(currUsed->next) currUsed->next->prev=curr;
    800018fc:	00078463          	beqz	a5,80001904 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80001900:	00a7b823          	sd	a0,16(a5)
        curr->prev=currUsed;
    80001904:	00e53823          	sd	a4,16(a0)
        currUsed->next=curr;
    80001908:	00a73423          	sd	a0,8(a4)
        return (char*)curr+DBlockSize;
    8000190c:	01850513          	addi	a0,a0,24
        //ubaciti na odgovarajuce mesto u full listi
        //currUsed je prethodnik curr
    }

    return nullptr;
}
    80001910:	00813403          	ld	s0,8(sp)
    80001914:	01010113          	addi	sp,sp,16
    80001918:	00008067          	ret
    for(curr = headFree; curr ; curr=curr->next){ //iteriramo kroz free
    8000191c:	00853503          	ld	a0,8(a0)
    80001920:	f8dff06f          	j	800018ac <_ZN15MemoryAllocator9mem_allocEm+0x48>
            if(curr->next) curr->next->prev=curr->prev;
    80001924:	00853783          	ld	a5,8(a0)
    80001928:	00078663          	beqz	a5,80001934 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
    8000192c:	01053703          	ld	a4,16(a0)
    80001930:	00e7b823          	sd	a4,16(a5)
            if(curr->prev) curr->prev->next=curr->next; //izbacen iz free liste
    80001934:	01053783          	ld	a5,16(a0)
    80001938:	00078663          	beqz	a5,80001944 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    8000193c:	00853703          	ld	a4,8(a0)
    80001940:	00e7b423          	sd	a4,8(a5)
            if (curr == headFree) headFree = curr->next;
    80001944:	00d50863          	beq	a0,a3,80001954 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->prev = curr->next = nullptr;
    80001948:	00053423          	sd	zero,8(a0)
    8000194c:	00053823          	sd	zero,16(a0)
    80001950:	f89ff06f          	j	800018d8 <_ZN15MemoryAllocator9mem_allocEm+0x74>
            if (curr == headFree) headFree = curr->next;
    80001954:	00853783          	ld	a5,8(a0)
    80001958:	00004717          	auipc	a4,0x4
    8000195c:	6af73c23          	sd	a5,1720(a4) # 80006010 <_ZN15MemoryAllocator8headFreeE>
    80001960:	fe9ff06f          	j	80001948 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
            headFull=curr;
    80001964:	00004797          	auipc	a5,0x4
    80001968:	6aa7ba23          	sd	a0,1716(a5) # 80006018 <_ZN15MemoryAllocator8headFullE>
            return (char*)curr+DBlockSize;
    8000196c:	01850513          	addi	a0,a0,24
    80001970:	fa1ff06f          	j	80001910 <_ZN15MemoryAllocator9mem_allocEm+0xac>
            curr->next=headFull;
    80001974:	00f53423          	sd	a5,8(a0)
            headFull->prev=curr;
    80001978:	00a7b823          	sd	a0,16(a5)
            headFull=curr;
    8000197c:	00004797          	auipc	a5,0x4
    80001980:	68a7be23          	sd	a0,1692(a5) # 80006018 <_ZN15MemoryAllocator8headFullE>
            return (char*)curr+DBlockSize;
    80001984:	01850513          	addi	a0,a0,24
    80001988:	f89ff06f          	j	80001910 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    if(size <=0 || size>=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR)/MEM_BLOCK_SIZE) return nullptr;
    8000198c:	00000513          	li	a0,0
    80001990:	f81ff06f          	j	80001910 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80001994:	00000513          	li	a0,0
    80001998:	f79ff06f          	j	80001910 <_ZN15MemoryAllocator9mem_allocEm+0xac>

000000008000199c <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>:
    }

    return -1; // 0 ako je ok -1 ako nije
}

void MemoryAllocator::tryToJoin(DBlock* curr){
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00813423          	sd	s0,8(sp)
    800019a4:	01010413          	addi	s0,sp,16
    if(!curr) return;
    800019a8:	00050e63          	beqz	a0,800019c4 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    if(curr->next && (char*)curr+curr->size*MEM_BLOCK_SIZE == (char*)curr->next){
    800019ac:	00853783          	ld	a5,8(a0)
    800019b0:	00078a63          	beqz	a5,800019c4 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    800019b4:	00053683          	ld	a3,0(a0)
    800019b8:	00669713          	slli	a4,a3,0x6
    800019bc:	00e50733          	add	a4,a0,a4
    800019c0:	00e78863          	beq	a5,a4,800019d0 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x34>
        curr->size+=curr->next->size;
        curr->next=curr->next->next;
        if(curr->next) curr->next->prev=curr;
    }
}
    800019c4:	00813403          	ld	s0,8(sp)
    800019c8:	01010113          	addi	sp,sp,16
    800019cc:	00008067          	ret
        curr->size+=curr->next->size;
    800019d0:	0007b703          	ld	a4,0(a5)
    800019d4:	00e686b3          	add	a3,a3,a4
    800019d8:	00d53023          	sd	a3,0(a0)
        curr->next=curr->next->next;
    800019dc:	0087b783          	ld	a5,8(a5)
    800019e0:	00f53423          	sd	a5,8(a0)
        if(curr->next) curr->next->prev=curr;
    800019e4:	fe0780e3          	beqz	a5,800019c4 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    800019e8:	00a7b823          	sd	a0,16(a5)
    800019ec:	fd9ff06f          	j	800019c4 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>

00000000800019f0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!ptr) return -1;
    800019f0:	10050c63          	beqz	a0,80001b08 <_ZN15MemoryAllocator8mem_freeEPv+0x118>
int MemoryAllocator::mem_free (void* ptr){
    800019f4:	fe010113          	addi	sp,sp,-32
    800019f8:	00113c23          	sd	ra,24(sp)
    800019fc:	00813823          	sd	s0,16(sp)
    80001a00:	00913423          	sd	s1,8(sp)
    80001a04:	02010413          	addi	s0,sp,32
    ptr=(DBlock*)((char*)ptr-DBlockSize);
    80001a08:	fe850513          	addi	a0,a0,-24
    for(DBlock* curr=headFull; curr || ptr<=curr; curr=curr->next){
    80001a0c:	00004797          	auipc	a5,0x4
    80001a10:	60c7b783          	ld	a5,1548(a5) # 80006018 <_ZN15MemoryAllocator8headFullE>
    80001a14:	00078493          	mv	s1,a5
    80001a18:	00c0006f          	j	80001a24 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
        if(curr==ptr){ //curr izbacujemo iz full liste
    80001a1c:	00a48c63          	beq	s1,a0,80001a34 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
    for(DBlock* curr=headFull; curr || ptr<=curr; curr=curr->next){
    80001a20:	0084b483          	ld	s1,8(s1)
    80001a24:	fe049ce3          	bnez	s1,80001a1c <_ZN15MemoryAllocator8mem_freeEPv+0x2c>
    80001a28:	fea4fae3          	bgeu	s1,a0,80001a1c <_ZN15MemoryAllocator8mem_freeEPv+0x2c>
    return -1; // 0 ako je ok -1 ako nije
    80001a2c:	fff00513          	li	a0,-1
    80001a30:	0800006f          	j	80001ab0 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
            if(curr->next) curr->next->prev=curr->prev;
    80001a34:	0084b703          	ld	a4,8(s1)
    80001a38:	00070663          	beqz	a4,80001a44 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    80001a3c:	0104b683          	ld	a3,16(s1)
    80001a40:	00d73823          	sd	a3,16(a4)
            if(curr->prev) curr->prev->next=curr->next;
    80001a44:	0104b703          	ld	a4,16(s1)
    80001a48:	00070663          	beqz	a4,80001a54 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    80001a4c:	0084b683          	ld	a3,8(s1)
    80001a50:	00d73423          	sd	a3,8(a4)
            if (curr == headFull) headFull = curr->next;
    80001a54:	06f48863          	beq	s1,a5,80001ac4 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
            curr->prev = curr->next = nullptr;
    80001a58:	0004b423          	sd	zero,8(s1)
    80001a5c:	0004b823          	sd	zero,16(s1)
            if(!headFree){
    80001a60:	00004797          	auipc	a5,0x4
    80001a64:	5b07b783          	ld	a5,1456(a5) # 80006010 <_ZN15MemoryAllocator8headFreeE>
    80001a68:	06078663          	beqz	a5,80001ad4 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
            if(headFree>curr) {
    80001a6c:	06f4ec63          	bltu	s1,a5,80001ae4 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
            while(currFree->next && currFree->next<curr) currFree=currFree->next;
    80001a70:	00078713          	mv	a4,a5
    80001a74:	0087b783          	ld	a5,8(a5)
    80001a78:	00078463          	beqz	a5,80001a80 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80001a7c:	fe97eae3          	bltu	a5,s1,80001a70 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            curr->next=currFree->next;
    80001a80:	00f4b423          	sd	a5,8(s1)
            if(currFree->next) currFree->next->prev=curr;
    80001a84:	00078463          	beqz	a5,80001a8c <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80001a88:	0097b823          	sd	s1,16(a5)
            curr->prev=currFree;
    80001a8c:	00e4b823          	sd	a4,16(s1)
            currFree->next=curr;
    80001a90:	00973423          	sd	s1,8(a4)
            tryToJoin(curr);
    80001a94:	00048513          	mv	a0,s1
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	f04080e7          	jalr	-252(ra) # 8000199c <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
            tryToJoin(curr->prev);
    80001aa0:	0104b503          	ld	a0,16(s1)
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	ef8080e7          	jalr	-264(ra) # 8000199c <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
            return 0;
    80001aac:	00000513          	li	a0,0
}
    80001ab0:	01813083          	ld	ra,24(sp)
    80001ab4:	01013403          	ld	s0,16(sp)
    80001ab8:	00813483          	ld	s1,8(sp)
    80001abc:	02010113          	addi	sp,sp,32
    80001ac0:	00008067          	ret
            if (curr == headFull) headFull = curr->next;
    80001ac4:	0084b783          	ld	a5,8(s1)
    80001ac8:	00004717          	auipc	a4,0x4
    80001acc:	54f73823          	sd	a5,1360(a4) # 80006018 <_ZN15MemoryAllocator8headFullE>
    80001ad0:	f89ff06f          	j	80001a58 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
                headFree=curr;
    80001ad4:	00004797          	auipc	a5,0x4
    80001ad8:	5297be23          	sd	s1,1340(a5) # 80006010 <_ZN15MemoryAllocator8headFreeE>
                return 0;
    80001adc:	00000513          	li	a0,0
    80001ae0:	fd1ff06f          	j	80001ab0 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
                curr->next=headFree;
    80001ae4:	00f4b423          	sd	a5,8(s1)
                headFree->prev=curr;
    80001ae8:	0097b823          	sd	s1,16(a5)
                headFree=curr;
    80001aec:	00004797          	auipc	a5,0x4
    80001af0:	5297b223          	sd	s1,1316(a5) # 80006010 <_ZN15MemoryAllocator8headFreeE>
                tryToJoin(headFree);
    80001af4:	00048513          	mv	a0,s1
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	ea4080e7          	jalr	-348(ra) # 8000199c <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
                return 0;
    80001b00:	00000513          	li	a0,0
    80001b04:	fadff06f          	j	80001ab0 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
    if(!ptr) return -1;
    80001b08:	fff00513          	li	a0,-1
}
    80001b0c:	00008067          	ret

0000000080001b10 <_ZN5Riscv16interruptHandlerEv>:
#include "../h/tcb.hpp"
#include "../h/sem.hpp"

extern void printStr(char const* string);

void Riscv::interruptHandler(){ //PREKIDNA RUTINA
    80001b10:	fa010113          	addi	sp,sp,-96
    80001b14:	04113c23          	sd	ra,88(sp)
    80001b18:	04813823          	sd	s0,80(sp)
    80001b1c:	04913423          	sd	s1,72(sp)
    80001b20:	05213023          	sd	s2,64(sp)
    80001b24:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    80001b28:	142027f3          	csrr	a5,scause
    80001b2c:	fcf43423          	sd	a5,-56(s0)
    return value;
    80001b30:	fc843703          	ld	a4,-56(s0)

    uint64 scause = readScause();

    if(scause==SOFTWARE) { //timer
    80001b34:	fff00793          	li	a5,-1
    80001b38:	03f79793          	slli	a5,a5,0x3f
    80001b3c:	00178793          	addi	a5,a5,1
    80001b40:	06f70663          	beq	a4,a5,80001bac <_ZN5Riscv16interruptHandlerEv+0x9c>
        clearSip(bitmaskSip::SSIP);
    }
    else if(scause==EXTERNAL){
    80001b44:	fff00793          	li	a5,-1
    80001b48:	03f79793          	slli	a5,a5,0x3f
    80001b4c:	00978793          	addi	a5,a5,9
    80001b50:	06f70e63          	beq	a4,a5,80001bcc <_ZN5Riscv16interruptHandlerEv+0xbc>
        console_handler();
    }
    else if(scause==U_ECALL || scause==S_ECALL){
    80001b54:	ff870713          	addi	a4,a4,-8
    80001b58:	00100793          	li	a5,1
    80001b5c:	1ae7ec63          	bltu	a5,a4,80001d14 <_ZN5Riscv16interruptHandlerEv+0x204>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80001b60:	141027f3          	csrr	a5,sepc
    80001b64:	fcf43c23          	sd	a5,-40(s0)
    return value;
    80001b68:	fd843483          	ld	s1,-40(s0)
        uint64 volatile oc, arg1, arg2, arg3, arg4;

        uint64 sepc=readSepc()+4;
    80001b6c:	00448493          	addi	s1,s1,4
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
};

inline uint64 Riscv::readSstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80001b70:	100027f3          	csrr	a5,sstatus
    80001b74:	fcf43823          	sd	a5,-48(s0)
    return value;
    80001b78:	fd043903          	ld	s2,-48(s0)
        uint64 sstatus=readSstatus();

        __asm__ volatile("mv %0, a0" : "=r"(oc)); // operation code
    80001b7c:	00050793          	mv	a5,a0
    80001b80:	faf43023          	sd	a5,-96(s0)

        switch(oc){
    80001b84:	fa043783          	ld	a5,-96(s0)
    80001b88:	04200713          	li	a4,66
    80001b8c:	06f76063          	bltu	a4,a5,80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
    80001b90:	00279793          	slli	a5,a5,0x2
    80001b94:	00003717          	auipc	a4,0x3
    80001b98:	49c70713          	addi	a4,a4,1180 # 80005030 <_ZN15MemoryAllocator10DBlockSizeE+0x10>
    80001b9c:	00e787b3          	add	a5,a5,a4
    80001ba0:	0007a783          	lw	a5,0(a5)
    80001ba4:	00e787b3          	add	a5,a5,a4
    80001ba8:	00078067          	jr	a5
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80001bac:	00200793          	li	a5,2
    80001bb0:	1447b073          	csrc	sip,a5
        writeSstatus(sstatus);
    }
    else{
        printStr("Error");
    }
}
    80001bb4:	05813083          	ld	ra,88(sp)
    80001bb8:	05013403          	ld	s0,80(sp)
    80001bbc:	04813483          	ld	s1,72(sp)
    80001bc0:	04013903          	ld	s2,64(sp)
    80001bc4:	06010113          	addi	sp,sp,96
    80001bc8:	00008067          	ret
        console_handler();
    80001bcc:	00003097          	auipc	ra,0x3
    80001bd0:	f54080e7          	jalr	-172(ra) # 80004b20 <console_handler>
    80001bd4:	fe1ff06f          	j	80001bb4 <_ZN5Riscv16interruptHandlerEv+0xa4>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001bd8:	00058793          	mv	a5,a1
    80001bdc:	faf43423          	sd	a5,-88(s0)
                MemoryAllocator::mem_alloc((size_t)arg1);
    80001be0:	fa843503          	ld	a0,-88(s0)
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	c80080e7          	jalr	-896(ra) # 80001864 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80001bec:	14149073          	csrw	sepc,s1
}

inline void Riscv::writeSstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80001bf0:	10091073          	csrw	sstatus,s2
}
    80001bf4:	fc1ff06f          	j	80001bb4 <_ZN5Riscv16interruptHandlerEv+0xa4>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001bf8:	00058793          	mv	a5,a1
    80001bfc:	faf43423          	sd	a5,-88(s0)
                MemoryAllocator::mem_free((void *)arg1);
    80001c00:	fa843503          	ld	a0,-88(s0)
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	dec080e7          	jalr	-532(ra) # 800019f0 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80001c0c:	fe1ff06f          	j	80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001c10:	00058793          	mv	a5,a1
    80001c14:	faf43423          	sd	a5,-88(s0)
                __asm__ volatile("mv %0, a2" : "=r"(arg2));
    80001c18:	00060793          	mv	a5,a2
    80001c1c:	faf43823          	sd	a5,-80(s0)
                __asm__ volatile("mv %0, a3" : "=r"(arg3));
    80001c20:	00068793          	mv	a5,a3
    80001c24:	faf43c23          	sd	a5,-72(s0)
                __asm__ volatile("mv %0, a4" : "=r"(arg4));
    80001c28:	00070793          	mv	a5,a4
    80001c2c:	fcf43023          	sd	a5,-64(s0)
                TCB::threadCreate((thread_t *)arg1, (body)arg2, (void *)arg3, (void *)arg4);
    80001c30:	fa843503          	ld	a0,-88(s0)
    80001c34:	fb043583          	ld	a1,-80(s0)
    80001c38:	fb843603          	ld	a2,-72(s0)
    80001c3c:	fc043683          	ld	a3,-64(s0)
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	a4c080e7          	jalr	-1460(ra) # 8000168c <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_>
                break;
    80001c48:	fa5ff06f          	j	80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
                TCB::threadExit();
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	8c8080e7          	jalr	-1848(ra) # 80001514 <_ZN3TCB10threadExitEv>
                break;
    80001c54:	f99ff06f          	j	80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
                TCB::dispatch();
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	af8080e7          	jalr	-1288(ra) # 80001750 <_ZN3TCB8dispatchEv>
                break;
    80001c60:	f8dff06f          	j	80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001c64:	00058793          	mv	a5,a1
    80001c68:	faf43423          	sd	a5,-88(s0)
                __asm__ volatile("mv %0, a2" : "=r"(arg2));
    80001c6c:	00060793          	mv	a5,a2
    80001c70:	faf43823          	sd	a5,-80(s0)
                Sem::sem_open((sem_t*)arg1, (unsigned int)arg2);
    80001c74:	fa843503          	ld	a0,-88(s0)
    80001c78:	fb043583          	ld	a1,-80(s0)
    80001c7c:	0005859b          	sext.w	a1,a1
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	2b4080e7          	jalr	692(ra) # 80001f34 <_ZN3Sem8sem_openEPPS_j>
                break;
    80001c88:	f65ff06f          	j	80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001c8c:	00058793          	mv	a5,a1
    80001c90:	faf43423          	sd	a5,-88(s0)
                Sem::sem_close((sem_t)arg1);
    80001c94:	fa843503          	ld	a0,-88(s0)
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	328080e7          	jalr	808(ra) # 80001fc0 <_ZN3Sem9sem_closeEPS_>
                break;
    80001ca0:	f4dff06f          	j	80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001ca4:	00058793          	mv	a5,a1
    80001ca8:	faf43423          	sd	a5,-88(s0)
                Sem::sem_wait(((sem_t)arg1));
    80001cac:	fa843503          	ld	a0,-88(s0)
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	0a0080e7          	jalr	160(ra) # 80001d50 <_ZN3Sem8sem_waitEPS_>
                break;
    80001cb8:	f35ff06f          	j	80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001cbc:	00058793          	mv	a5,a1
    80001cc0:	faf43423          	sd	a5,-88(s0)
                Sem::sem_signal((sem_t)arg1);
    80001cc4:	fa843503          	ld	a0,-88(s0)
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	150080e7          	jalr	336(ra) # 80001e18 <_ZN3Sem10sem_signalEPS_>
                break;
    80001cd0:	f1dff06f          	j	80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001cd4:	00058793          	mv	a5,a1
    80001cd8:	faf43423          	sd	a5,-88(s0)
                Sem::sem_trywait((sem_t)arg1);
    80001cdc:	fa843503          	ld	a0,-88(s0)
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	1d0080e7          	jalr	464(ra) # 80001eb0 <_ZN3Sem11sem_trywaitEPS_>
                break;
    80001ce8:	f05ff06f          	j	80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
                __getc();
    80001cec:	00003097          	auipc	ra,0x3
    80001cf0:	dfc080e7          	jalr	-516(ra) # 80004ae8 <__getc>
                break;
    80001cf4:	ef9ff06f          	j	80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001cf8:	00058793          	mv	a5,a1
    80001cfc:	faf43423          	sd	a5,-88(s0)
                __putc(arg1);
    80001d00:	fa843503          	ld	a0,-88(s0)
    80001d04:	0ff57513          	andi	a0,a0,255
    80001d08:	00003097          	auipc	ra,0x3
    80001d0c:	da4080e7          	jalr	-604(ra) # 80004aac <__putc>
                break;
    80001d10:	eddff06f          	j	80001bec <_ZN5Riscv16interruptHandlerEv+0xdc>
        printStr("Error");
    80001d14:	00003517          	auipc	a0,0x3
    80001d18:	31450513          	addi	a0,a0,788 # 80005028 <_ZN15MemoryAllocator10DBlockSizeE+0x8>
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	964080e7          	jalr	-1692(ra) # 80002680 <_Z8printStrPKc>
}
    80001d24:	e91ff06f          	j	80001bb4 <_ZN5Riscv16interruptHandlerEv+0xa4>

0000000080001d28 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie(){
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00813423          	sd	s0,8(sp)
    80001d30:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001d34:	14109073          	csrw	sepc,ra
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80001d38:	10000793          	li	a5,256
    80001d3c:	1007b073          	csrc	sstatus,a5
    Riscv::clearSstatus(bitmaskSstatus::SPP);
    __asm__ volatile ("sret");
    80001d40:	10200073          	sret
    80001d44:	00813403          	ld	s0,8(sp)
    80001d48:	01010113          	addi	sp,sp,16
    80001d4c:	00008067          	ret

0000000080001d50 <_ZN3Sem8sem_waitEPS_>:
    delete handle;
    return 0;
}

int Sem::sem_wait(sem_t handle) {
    if (!handle) return -1;
    80001d50:	0c050063          	beqz	a0,80001e10 <_ZN3Sem8sem_waitEPS_+0xc0>
int Sem::sem_wait(sem_t handle) {
    80001d54:	fe010113          	addi	sp,sp,-32
    80001d58:	00113c23          	sd	ra,24(sp)
    80001d5c:	00813823          	sd	s0,16(sp)
    80001d60:	00913423          	sd	s1,8(sp)
    80001d64:	01213023          	sd	s2,0(sp)
    80001d68:	02010413          	addi	s0,sp,32
    80001d6c:	00050493          	mv	s1,a0
    handle->count--;
    80001d70:	00052783          	lw	a5,0(a0)
    80001d74:	fff7879b          	addiw	a5,a5,-1
    80001d78:	00f52023          	sw	a5,0(a0)
    if (handle->count<0) {
    80001d7c:	02079713          	slli	a4,a5,0x20
    80001d80:	02074063          	bltz	a4,80001da0 <_ZN3Sem8sem_waitEPS_+0x50>
        handle->blocked.put(oldRunning);
        TCB::running=Scheduler::get();
        TCB::yield(oldRunning, TCB::running);
        if (!handle) return -1;
    }
    return 0;
    80001d84:	00000513          	li	a0,0
}
    80001d88:	01813083          	ld	ra,24(sp)
    80001d8c:	01013403          	ld	s0,16(sp)
    80001d90:	00813483          	ld	s1,8(sp)
    80001d94:	00013903          	ld	s2,0(sp)
    80001d98:	02010113          	addi	sp,sp,32
    80001d9c:	00008067          	ret
        TCB* oldRunning=TCB::running;
    80001da0:	00004797          	auipc	a5,0x4
    80001da4:	1d07b783          	ld	a5,464(a5) # 80005f70 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001da8:	0007b903          	ld	s2,0(a5)
    void setBlocked() { blocked=true; }
    80001dac:	00100793          	li	a5,1
    80001db0:	02f908a3          	sb	a5,49(s2)
    List() : head(nullptr) , tail(nullptr) {}
    List(const List<T> &)=delete;
    List<T> &operator=(const List<T>&)=delete;

    void put(T* data){ //stavlja na kraj
        Elem *elem=new Elem(data, 0);
    80001db4:	01000513          	li	a0,16
    80001db8:	fffff097          	auipc	ra,0xfffff
    80001dbc:	45c080e7          	jalr	1116(ra) # 80001214 <_Znwm>
        Elem(T* data, Elem* next) : data(data), next(next) {}
    80001dc0:	01253023          	sd	s2,0(a0)
    80001dc4:	00053423          	sd	zero,8(a0)
        if(tail){
    80001dc8:	0104b783          	ld	a5,16(s1)
    80001dcc:	02078c63          	beqz	a5,80001e04 <_ZN3Sem8sem_waitEPS_+0xb4>
            tail->next=elem;
    80001dd0:	00a7b423          	sd	a0,8(a5)
            tail=elem;
    80001dd4:	00a4b823          	sd	a0,16(s1)
        TCB::running=Scheduler::get();
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	2b8080e7          	jalr	696(ra) # 80002090 <_ZN9Scheduler3getEv>
    80001de0:	00050593          	mv	a1,a0
    80001de4:	00004797          	auipc	a5,0x4
    80001de8:	18c7b783          	ld	a5,396(a5) # 80005f70 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001dec:	00a7b023          	sd	a0,0(a5)
        TCB::yield(oldRunning, TCB::running);
    80001df0:	00090513          	mv	a0,s2
    80001df4:	fffff097          	auipc	ra,0xfffff
    80001df8:	7dc080e7          	jalr	2012(ra) # 800015d0 <_ZN3TCB5yieldEPS_S0_>
    return 0;
    80001dfc:	00000513          	li	a0,0
    80001e00:	f89ff06f          	j	80001d88 <_ZN3Sem8sem_waitEPS_+0x38>
        }
        else{
            head=tail=elem;
    80001e04:	00a4b823          	sd	a0,16(s1)
    80001e08:	00a4b423          	sd	a0,8(s1)
    80001e0c:	fcdff06f          	j	80001dd8 <_ZN3Sem8sem_waitEPS_+0x88>
    if (!handle) return -1;
    80001e10:	fff00513          	li	a0,-1
}
    80001e14:	00008067          	ret

0000000080001e18 <_ZN3Sem10sem_signalEPS_>:

int Sem::sem_signal(sem_t handle) {
    if (!handle) return -1;
    80001e18:	08050863          	beqz	a0,80001ea8 <_ZN3Sem10sem_signalEPS_+0x90>
    80001e1c:	00050793          	mv	a5,a0
    handle->count++;
    80001e20:	00052703          	lw	a4,0(a0)
    80001e24:	0017071b          	addiw	a4,a4,1
    80001e28:	0007069b          	sext.w	a3,a4
    80001e2c:	00e52023          	sw	a4,0(a0)
    if (handle->count <= 0) {
    80001e30:	00d05663          	blez	a3,80001e3c <_ZN3Sem10sem_signalEPS_+0x24>
        TCB* thread = handle->blocked.get();
        thread->blocked=false;
        Scheduler::put(thread);
    }
    return 0;
    80001e34:	00000513          	li	a0,0
}
    80001e38:	00008067          	ret
int Sem::sem_signal(sem_t handle) {
    80001e3c:	fe010113          	addi	sp,sp,-32
    80001e40:	00113c23          	sd	ra,24(sp)
    80001e44:	00813823          	sd	s0,16(sp)
    80001e48:	00913423          	sd	s1,8(sp)
    80001e4c:	02010413          	addi	s0,sp,32
        }
    }

    T* get(){ //uzima s pocetka
        if(!head) return nullptr;
    80001e50:	00853503          	ld	a0,8(a0)
    80001e54:	04050663          	beqz	a0,80001ea0 <_ZN3Sem10sem_signalEPS_+0x88>
        Elem *elem=head;
        head=head->next;
    80001e58:	00853703          	ld	a4,8(a0)
    80001e5c:	00e7b423          	sd	a4,8(a5)
        if(!head) tail=nullptr;
    80001e60:	02070c63          	beqz	a4,80001e98 <_ZN3Sem10sem_signalEPS_+0x80>
        T* ret=elem->data;
    80001e64:	00053483          	ld	s1,0(a0)
        delete elem;
    80001e68:	fffff097          	auipc	ra,0xfffff
    80001e6c:	3fc080e7          	jalr	1020(ra) # 80001264 <_ZdlPv>
        thread->blocked=false;
    80001e70:	020488a3          	sb	zero,49(s1)
        Scheduler::put(thread);
    80001e74:	00048513          	mv	a0,s1
    80001e78:	00000097          	auipc	ra,0x0
    80001e7c:	280080e7          	jalr	640(ra) # 800020f8 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80001e80:	00000513          	li	a0,0
}
    80001e84:	01813083          	ld	ra,24(sp)
    80001e88:	01013403          	ld	s0,16(sp)
    80001e8c:	00813483          	ld	s1,8(sp)
    80001e90:	02010113          	addi	sp,sp,32
    80001e94:	00008067          	ret
        if(!head) tail=nullptr;
    80001e98:	0007b823          	sd	zero,16(a5)
    80001e9c:	fc9ff06f          	j	80001e64 <_ZN3Sem10sem_signalEPS_+0x4c>
        if(!head) return nullptr;
    80001ea0:	00050493          	mv	s1,a0
    80001ea4:	fcdff06f          	j	80001e70 <_ZN3Sem10sem_signalEPS_+0x58>
    if (!handle) return -1;
    80001ea8:	fff00513          	li	a0,-1
    80001eac:	00008067          	ret

0000000080001eb0 <_ZN3Sem11sem_trywaitEPS_>:

int Sem::sem_trywait(sem_t handle) {
    if (!handle) return -1;
    80001eb0:	02050e63          	beqz	a0,80001eec <_ZN3Sem11sem_trywaitEPS_+0x3c>
    if (handle->count>0) return sem_wait(handle);
    80001eb4:	00052783          	lw	a5,0(a0)
    80001eb8:	00f04663          	bgtz	a5,80001ec4 <_ZN3Sem11sem_trywaitEPS_+0x14>
    return 0;
    80001ebc:	00000513          	li	a0,0
}
    80001ec0:	00008067          	ret
int Sem::sem_trywait(sem_t handle) {
    80001ec4:	ff010113          	addi	sp,sp,-16
    80001ec8:	00113423          	sd	ra,8(sp)
    80001ecc:	00813023          	sd	s0,0(sp)
    80001ed0:	01010413          	addi	s0,sp,16
    if (handle->count>0) return sem_wait(handle);
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	e7c080e7          	jalr	-388(ra) # 80001d50 <_ZN3Sem8sem_waitEPS_>
}
    80001edc:	00813083          	ld	ra,8(sp)
    80001ee0:	00013403          	ld	s0,0(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret
    if (!handle) return -1;
    80001eec:	fff00513          	li	a0,-1
    80001ef0:	00008067          	ret

0000000080001ef4 <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    80001ef4:	ff010113          	addi	sp,sp,-16
    80001ef8:	00113423          	sd	ra,8(sp)
    80001efc:	00813023          	sd	s0,0(sp)
    80001f00:	01010413          	addi	s0,sp,16
    size_t numOfBlocks=ROUNDUP((size+MemoryAllocator::DBlockSize))/MEM_BLOCK_SIZE;
    80001f04:	00004797          	auipc	a5,0x4
    80001f08:	07c7b783          	ld	a5,124(a5) # 80005f80 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f0c:	0007b783          	ld	a5,0(a5)
    80001f10:	00a78533          	add	a0,a5,a0
    80001f14:	03f50513          	addi	a0,a0,63
    return MemoryAllocator::mem_alloc(numOfBlocks);
    80001f18:	00655513          	srli	a0,a0,0x6
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	948080e7          	jalr	-1720(ra) # 80001864 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001f24:	00813083          	ld	ra,8(sp)
    80001f28:	00013403          	ld	s0,0(sp)
    80001f2c:	01010113          	addi	sp,sp,16
    80001f30:	00008067          	ret

0000000080001f34 <_ZN3Sem8sem_openEPPS_j>:
int Sem::sem_open(sem_t *handle, unsigned int init) {
    80001f34:	fe010113          	addi	sp,sp,-32
    80001f38:	00113c23          	sd	ra,24(sp)
    80001f3c:	00813823          	sd	s0,16(sp)
    80001f40:	00913423          	sd	s1,8(sp)
    80001f44:	01213023          	sd	s2,0(sp)
    80001f48:	02010413          	addi	s0,sp,32
    80001f4c:	00050493          	mv	s1,a0
    80001f50:	00058913          	mv	s2,a1
    *handle = new Sem((int)init);
    80001f54:	01800513          	li	a0,24
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	f9c080e7          	jalr	-100(ra) # 80001ef4 <_ZN3SemnwEm>
    void* operator new(size_t size);
    void operator delete(void* ptr);

private:

    explicit Sem(int c=1) : count(c), blocked() {}
    80001f60:	01252023          	sw	s2,0(a0)
    List() : head(nullptr) , tail(nullptr) {}
    80001f64:	00053423          	sd	zero,8(a0)
    80001f68:	00053823          	sd	zero,16(a0)
    80001f6c:	00a4b023          	sd	a0,0(s1)
    if (*handle == nullptr) return  -1;
    80001f70:	02050063          	beqz	a0,80001f90 <_ZN3Sem8sem_openEPPS_j+0x5c>
    return 0;
    80001f74:	00000513          	li	a0,0
}
    80001f78:	01813083          	ld	ra,24(sp)
    80001f7c:	01013403          	ld	s0,16(sp)
    80001f80:	00813483          	ld	s1,8(sp)
    80001f84:	00013903          	ld	s2,0(sp)
    80001f88:	02010113          	addi	sp,sp,32
    80001f8c:	00008067          	ret
    if (*handle == nullptr) return  -1;
    80001f90:	fff00513          	li	a0,-1
    80001f94:	fe5ff06f          	j	80001f78 <_ZN3Sem8sem_openEPPS_j+0x44>

0000000080001f98 <_ZN3SemdlEPv>:

void Sem::operator delete(void *ptr) {
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00113423          	sd	ra,8(sp)
    80001fa0:	00813023          	sd	s0,0(sp)
    80001fa4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	a48080e7          	jalr	-1464(ra) # 800019f0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001fb0:	00813083          	ld	ra,8(sp)
    80001fb4:	00013403          	ld	s0,0(sp)
    80001fb8:	01010113          	addi	sp,sp,16
    80001fbc:	00008067          	ret

0000000080001fc0 <_ZN3Sem9sem_closeEPS_>:
int Sem::sem_close(sem_t handle) {
    80001fc0:	fe010113          	addi	sp,sp,-32
    80001fc4:	00113c23          	sd	ra,24(sp)
    80001fc8:	00813823          	sd	s0,16(sp)
    80001fcc:	00913423          	sd	s1,8(sp)
    80001fd0:	01213023          	sd	s2,0(sp)
    80001fd4:	02010413          	addi	s0,sp,32
    80001fd8:	00050493          	mv	s1,a0
    if (!handle) return -1;
    80001fdc:	02051663          	bnez	a0,80002008 <_ZN3Sem9sem_closeEPS_+0x48>
    80001fe0:	fff00513          	li	a0,-1
    80001fe4:	0540006f          	j	80002038 <_ZN3Sem9sem_closeEPS_+0x78>
        if(!head) tail=nullptr;
    80001fe8:	0004b823          	sd	zero,16(s1)
        T* ret=elem->data;
    80001fec:	00053903          	ld	s2,0(a0)
        delete elem;
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	274080e7          	jalr	628(ra) # 80001264 <_ZdlPv>
        thread->blocked=false;
    80001ff8:	020908a3          	sb	zero,49(s2)
        Scheduler::put(thread);
    80001ffc:	00090513          	mv	a0,s2
    80002000:	00000097          	auipc	ra,0x0
    80002004:	0f8080e7          	jalr	248(ra) # 800020f8 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T* peek(){
        if(!head) return nullptr;
    80002008:	0084b503          	ld	a0,8(s1)
    8000200c:	00050e63          	beqz	a0,80002028 <_ZN3Sem9sem_closeEPS_+0x68>
        return head->data;
    80002010:	00053783          	ld	a5,0(a0)
    while (handle->blocked.peek()) {
    80002014:	00078a63          	beqz	a5,80002028 <_ZN3Sem9sem_closeEPS_+0x68>
        head=head->next;
    80002018:	00853783          	ld	a5,8(a0)
    8000201c:	00f4b423          	sd	a5,8(s1)
        if(!head) tail=nullptr;
    80002020:	fc0796e3          	bnez	a5,80001fec <_ZN3Sem9sem_closeEPS_+0x2c>
    80002024:	fc5ff06f          	j	80001fe8 <_ZN3Sem9sem_closeEPS_+0x28>
    delete handle;
    80002028:	00048513          	mv	a0,s1
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	f6c080e7          	jalr	-148(ra) # 80001f98 <_ZN3SemdlEPv>
    return 0;
    80002034:	00000513          	li	a0,0
}
    80002038:	01813083          	ld	ra,24(sp)
    8000203c:	01013403          	ld	s0,16(sp)
    80002040:	00813483          	ld	s1,8(sp)
    80002044:	00013903          	ld	s2,0(sp)
    80002048:	02010113          	addi	sp,sp,32
    8000204c:	00008067          	ret

0000000080002050 <_Z41__static_initialization_and_destruction_0ii>:
    return MemoryAllocator::mem_alloc(numOfBlocks);
}

void Scheduler::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
    80002050:	ff010113          	addi	sp,sp,-16
    80002054:	00813423          	sd	s0,8(sp)
    80002058:	01010413          	addi	s0,sp,16
    8000205c:	00100793          	li	a5,1
    80002060:	00f50863          	beq	a0,a5,80002070 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002064:	00813403          	ld	s0,8(sp)
    80002068:	01010113          	addi	sp,sp,16
    8000206c:	00008067          	ret
    80002070:	000107b7          	lui	a5,0x10
    80002074:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002078:	fef596e3          	bne	a1,a5,80002064 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(nullptr) , tail(nullptr) {}
    8000207c:	00004797          	auipc	a5,0x4
    80002080:	fa478793          	addi	a5,a5,-92 # 80006020 <_ZN9Scheduler5readyE>
    80002084:	0007b023          	sd	zero,0(a5)
    80002088:	0007b423          	sd	zero,8(a5)
    8000208c:	fd9ff06f          	j	80002064 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002090 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get(){
    80002090:	fe010113          	addi	sp,sp,-32
    80002094:	00113c23          	sd	ra,24(sp)
    80002098:	00813823          	sd	s0,16(sp)
    8000209c:	00913423          	sd	s1,8(sp)
    800020a0:	02010413          	addi	s0,sp,32
        if(!head) return nullptr;
    800020a4:	00004517          	auipc	a0,0x4
    800020a8:	f7c53503          	ld	a0,-132(a0) # 80006020 <_ZN9Scheduler5readyE>
    800020ac:	04050263          	beqz	a0,800020f0 <_ZN9Scheduler3getEv+0x60>
        head=head->next;
    800020b0:	00853783          	ld	a5,8(a0)
    800020b4:	00004717          	auipc	a4,0x4
    800020b8:	f6f73623          	sd	a5,-148(a4) # 80006020 <_ZN9Scheduler5readyE>
        if(!head) tail=nullptr;
    800020bc:	02078463          	beqz	a5,800020e4 <_ZN9Scheduler3getEv+0x54>
        T* ret=elem->data;
    800020c0:	00053483          	ld	s1,0(a0)
        delete elem;
    800020c4:	fffff097          	auipc	ra,0xfffff
    800020c8:	1a0080e7          	jalr	416(ra) # 80001264 <_ZdlPv>
}
    800020cc:	00048513          	mv	a0,s1
    800020d0:	01813083          	ld	ra,24(sp)
    800020d4:	01013403          	ld	s0,16(sp)
    800020d8:	00813483          	ld	s1,8(sp)
    800020dc:	02010113          	addi	sp,sp,32
    800020e0:	00008067          	ret
        if(!head) tail=nullptr;
    800020e4:	00004797          	auipc	a5,0x4
    800020e8:	f407b223          	sd	zero,-188(a5) # 80006028 <_ZN9Scheduler5readyE+0x8>
    800020ec:	fd5ff06f          	j	800020c0 <_ZN9Scheduler3getEv+0x30>
        if(!head) return nullptr;
    800020f0:	00050493          	mv	s1,a0
    return ready.get();
    800020f4:	fd9ff06f          	j	800020cc <_ZN9Scheduler3getEv+0x3c>

00000000800020f8 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *thread){
    800020f8:	fe010113          	addi	sp,sp,-32
    800020fc:	00113c23          	sd	ra,24(sp)
    80002100:	00813823          	sd	s0,16(sp)
    80002104:	00913423          	sd	s1,8(sp)
    80002108:	02010413          	addi	s0,sp,32
    8000210c:	00050493          	mv	s1,a0
        Elem *elem=new Elem(data, 0);
    80002110:	01000513          	li	a0,16
    80002114:	fffff097          	auipc	ra,0xfffff
    80002118:	100080e7          	jalr	256(ra) # 80001214 <_Znwm>
        Elem(T* data, Elem* next) : data(data), next(next) {}
    8000211c:	00953023          	sd	s1,0(a0)
    80002120:	00053423          	sd	zero,8(a0)
        if(tail){
    80002124:	00004797          	auipc	a5,0x4
    80002128:	f047b783          	ld	a5,-252(a5) # 80006028 <_ZN9Scheduler5readyE+0x8>
    8000212c:	02078263          	beqz	a5,80002150 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next=elem;
    80002130:	00a7b423          	sd	a0,8(a5)
            tail=elem;
    80002134:	00004797          	auipc	a5,0x4
    80002138:	eea7ba23          	sd	a0,-268(a5) # 80006028 <_ZN9Scheduler5readyE+0x8>
}
    8000213c:	01813083          	ld	ra,24(sp)
    80002140:	01013403          	ld	s0,16(sp)
    80002144:	00813483          	ld	s1,8(sp)
    80002148:	02010113          	addi	sp,sp,32
    8000214c:	00008067          	ret
            head=tail=elem;
    80002150:	00004797          	auipc	a5,0x4
    80002154:	ed078793          	addi	a5,a5,-304 # 80006020 <_ZN9Scheduler5readyE>
    80002158:	00a7b423          	sd	a0,8(a5)
    8000215c:	00a7b023          	sd	a0,0(a5)
    80002160:	fddff06f          	j	8000213c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002164 <_ZN9SchedulernwEm>:
void *Scheduler::operator new(size_t size) {
    80002164:	ff010113          	addi	sp,sp,-16
    80002168:	00113423          	sd	ra,8(sp)
    8000216c:	00813023          	sd	s0,0(sp)
    80002170:	01010413          	addi	s0,sp,16
    size_t numOfBlocks=ROUNDUP((size+MemoryAllocator::DBlockSize))/MEM_BLOCK_SIZE;
    80002174:	00004797          	auipc	a5,0x4
    80002178:	e0c7b783          	ld	a5,-500(a5) # 80005f80 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000217c:	0007b783          	ld	a5,0(a5)
    80002180:	00a78533          	add	a0,a5,a0
    80002184:	03f50513          	addi	a0,a0,63
    return MemoryAllocator::mem_alloc(numOfBlocks);
    80002188:	00655513          	srli	a0,a0,0x6
    8000218c:	fffff097          	auipc	ra,0xfffff
    80002190:	6d8080e7          	jalr	1752(ra) # 80001864 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002194:	00813083          	ld	ra,8(sp)
    80002198:	00013403          	ld	s0,0(sp)
    8000219c:	01010113          	addi	sp,sp,16
    800021a0:	00008067          	ret

00000000800021a4 <_ZN9SchedulerdlEPv>:
void Scheduler::operator delete(void *ptr) {
    800021a4:	ff010113          	addi	sp,sp,-16
    800021a8:	00113423          	sd	ra,8(sp)
    800021ac:	00813023          	sd	s0,0(sp)
    800021b0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	83c080e7          	jalr	-1988(ra) # 800019f0 <_ZN15MemoryAllocator8mem_freeEPv>
    800021bc:	00813083          	ld	ra,8(sp)
    800021c0:	00013403          	ld	s0,0(sp)
    800021c4:	01010113          	addi	sp,sp,16
    800021c8:	00008067          	ret

00000000800021cc <_GLOBAL__sub_I__ZN9Scheduler5readyE>:
    800021cc:	ff010113          	addi	sp,sp,-16
    800021d0:	00113423          	sd	ra,8(sp)
    800021d4:	00813023          	sd	s0,0(sp)
    800021d8:	01010413          	addi	s0,sp,16
    800021dc:	000105b7          	lui	a1,0x10
    800021e0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800021e4:	00100513          	li	a0,1
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	e68080e7          	jalr	-408(ra) # 80002050 <_Z41__static_initialization_and_destruction_0ii>
    800021f0:	00813083          	ld	ra,8(sp)
    800021f4:	00013403          	ld	s0,0(sp)
    800021f8:	01010113          	addi	sp,sp,16
    800021fc:	00008067          	ret

0000000080002200 <_Z7syscallmmmmm>:
#include "../h/syscallC.hpp"
#include "../h/memoryAllocator.hpp"

void syscall(uint64 op_code, uint64 arg1 = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0) {
    80002200:	ff010113          	addi	sp,sp,-16
    80002204:	00813423          	sd	s0,8(sp)
    80002208:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    8000220c:	00000073          	ecall
}
    80002210:	00813403          	ld	s0,8(sp)
    80002214:	01010113          	addi	sp,sp,16
    80002218:	00008067          	ret

000000008000221c <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size==0) return nullptr;
    8000221c:	04050c63          	beqz	a0,80002274 <_Z9mem_allocm+0x58>
void* mem_alloc (size_t size) {
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00113423          	sd	ra,8(sp)
    80002228:	00813023          	sd	s0,0(sp)
    8000222c:	01010413          	addi	s0,sp,16
    void volatile *retVal;
    uint64 numOfBlocks=ROUNDUP(size+MemoryAllocator::DBlockSize-1)/MEM_BLOCK_SIZE;
    80002230:	00004797          	auipc	a5,0x4
    80002234:	d507b783          	ld	a5,-688(a5) # 80005f80 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002238:	0007b583          	ld	a1,0(a5)
    8000223c:	00a58533          	add	a0,a1,a0
    80002240:	03e50593          	addi	a1,a0,62
    syscall(MEM_ALLOC, numOfBlocks);
    80002244:	00000713          	li	a4,0
    80002248:	00000693          	li	a3,0
    8000224c:	00000613          	li	a2,0
    80002250:	0065d593          	srli	a1,a1,0x6
    80002254:	00100513          	li	a0,1
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	fa8080e7          	jalr	-88(ra) # 80002200 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002260:	00050513          	mv	a0,a0
    return (void*)retVal;
}
    80002264:	00813083          	ld	ra,8(sp)
    80002268:	00013403          	ld	s0,0(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret
    if (size==0) return nullptr;
    80002274:	00000513          	li	a0,0
}
    80002278:	00008067          	ret

000000008000227c <_Z8mem_freePv>:

int mem_free(void* ptr) {
    8000227c:	fe010113          	addi	sp,sp,-32
    80002280:	00113c23          	sd	ra,24(sp)
    80002284:	00813823          	sd	s0,16(sp)
    80002288:	02010413          	addi	s0,sp,32
    8000228c:	00050593          	mv	a1,a0
    syscall(MEM_FREE, (uint64)ptr);
    80002290:	00000713          	li	a4,0
    80002294:	00000693          	li	a3,0
    80002298:	00000613          	li	a2,0
    8000229c:	00200513          	li	a0,2
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	f60080e7          	jalr	-160(ra) # 80002200 <_Z7syscallmmmmm>
    int volatile retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800022a8:	00050793          	mv	a5,a0
    800022ac:	fef42623          	sw	a5,-20(s0)
    return retVal;
    800022b0:	fec42503          	lw	a0,-20(s0)
}
    800022b4:	0005051b          	sext.w	a0,a0
    800022b8:	01813083          	ld	ra,24(sp)
    800022bc:	01013403          	ld	s0,16(sp)
    800022c0:	02010113          	addi	sp,sp,32
    800022c4:	00008067          	ret

00000000800022c8 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*routine)(void *), void *arg) {
    800022c8:	fd010113          	addi	sp,sp,-48
    800022cc:	02113423          	sd	ra,40(sp)
    800022d0:	02813023          	sd	s0,32(sp)
    800022d4:	00913c23          	sd	s1,24(sp)
    800022d8:	01213823          	sd	s2,16(sp)
    800022dc:	01313423          	sd	s3,8(sp)
    800022e0:	03010413          	addi	s0,sp,48
    800022e4:	00050913          	mv	s2,a0
    800022e8:	00058493          	mv	s1,a1
    800022ec:	00060993          	mv	s3,a2
    void* stack=nullptr;
    if (routine) {
    800022f0:	04058a63          	beqz	a1,80002344 <_Z13thread_createPP3TCBPFvPvES2_+0x7c>
        stack=mem_alloc(DEFAULT_STACK_SIZE);
    800022f4:	00001537          	lui	a0,0x1
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	f24080e7          	jalr	-220(ra) # 8000221c <_Z9mem_allocm>
    80002300:	00050713          	mv	a4,a0
        if (!stack) return -1;
    80002304:	04050463          	beqz	a0,8000234c <_Z13thread_createPP3TCBPFvPvES2_+0x84>
    }
    syscall(THREAD_CREATE, (uint64)handle, (uint64)routine, (uint64)arg, (uint64)stack);
    80002308:	00098693          	mv	a3,s3
    8000230c:	00048613          	mv	a2,s1
    80002310:	00090593          	mv	a1,s2
    80002314:	01100513          	li	a0,17
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	ee8080e7          	jalr	-280(ra) # 80002200 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002320:	00050513          	mv	a0,a0
    80002324:	0005051b          	sext.w	a0,a0
    return retVal;
}
    80002328:	02813083          	ld	ra,40(sp)
    8000232c:	02013403          	ld	s0,32(sp)
    80002330:	01813483          	ld	s1,24(sp)
    80002334:	01013903          	ld	s2,16(sp)
    80002338:	00813983          	ld	s3,8(sp)
    8000233c:	03010113          	addi	sp,sp,48
    80002340:	00008067          	ret
    void* stack=nullptr;
    80002344:	00000713          	li	a4,0
    80002348:	fc1ff06f          	j	80002308 <_Z13thread_createPP3TCBPFvPvES2_+0x40>
        if (!stack) return -1;
    8000234c:	fff00513          	li	a0,-1
    80002350:	fd9ff06f          	j	80002328 <_Z13thread_createPP3TCBPFvPvES2_+0x60>

0000000080002354 <_Z11thread_exitv>:

int thread_exit() {
    80002354:	ff010113          	addi	sp,sp,-16
    80002358:	00113423          	sd	ra,8(sp)
    8000235c:	00813023          	sd	s0,0(sp)
    80002360:	01010413          	addi	s0,sp,16
    syscall(THREAD_EXIT);
    80002364:	00000713          	li	a4,0
    80002368:	00000693          	li	a3,0
    8000236c:	00000613          	li	a2,0
    80002370:	00000593          	li	a1,0
    80002374:	01200513          	li	a0,18
    80002378:	00000097          	auipc	ra,0x0
    8000237c:	e88080e7          	jalr	-376(ra) # 80002200 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002380:	00050513          	mv	a0,a0
    return retVal;
}
    80002384:	0005051b          	sext.w	a0,a0
    80002388:	00813083          	ld	ra,8(sp)
    8000238c:	00013403          	ld	s0,0(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    syscall(THREAD_DISPATCH);
    800023a8:	00000713          	li	a4,0
    800023ac:	00000693          	li	a3,0
    800023b0:	00000613          	li	a2,0
    800023b4:	00000593          	li	a1,0
    800023b8:	01300513          	li	a0,19
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	e44080e7          	jalr	-444(ra) # 80002200 <_Z7syscallmmmmm>
}
    800023c4:	00813083          	ld	ra,8(sp)
    800023c8:	00013403          	ld	s0,0(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret

00000000800023d4 <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init) {
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00113423          	sd	ra,8(sp)
    800023dc:	00813023          	sd	s0,0(sp)
    800023e0:	01010413          	addi	s0,sp,16
    syscall(SEM_OPEN, (uint64)handle, init);
    800023e4:	00000713          	li	a4,0
    800023e8:	00000693          	li	a3,0
    800023ec:	02059613          	slli	a2,a1,0x20
    800023f0:	02065613          	srli	a2,a2,0x20
    800023f4:	00050593          	mv	a1,a0
    800023f8:	02100513          	li	a0,33
    800023fc:	00000097          	auipc	ra,0x0
    80002400:	e04080e7          	jalr	-508(ra) # 80002200 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002404:	00050513          	mv	a0,a0
    return retVal;
}
    80002408:	0005051b          	sext.w	a0,a0
    8000240c:	00813083          	ld	ra,8(sp)
    80002410:	00013403          	ld	s0,0(sp)
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00008067          	ret

000000008000241c <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    8000241c:	ff010113          	addi	sp,sp,-16
    80002420:	00113423          	sd	ra,8(sp)
    80002424:	00813023          	sd	s0,0(sp)
    80002428:	01010413          	addi	s0,sp,16
    8000242c:	00050593          	mv	a1,a0
    syscall(SEM_CLOSE, (uint64)handle);
    80002430:	00000713          	li	a4,0
    80002434:	00000693          	li	a3,0
    80002438:	00000613          	li	a2,0
    8000243c:	02200513          	li	a0,34
    80002440:	00000097          	auipc	ra,0x0
    80002444:	dc0080e7          	jalr	-576(ra) # 80002200 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002448:	00050513          	mv	a0,a0
    return retVal;
}
    8000244c:	0005051b          	sext.w	a0,a0
    80002450:	00813083          	ld	ra,8(sp)
    80002454:	00013403          	ld	s0,0(sp)
    80002458:	01010113          	addi	sp,sp,16
    8000245c:	00008067          	ret

0000000080002460 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    80002460:	ff010113          	addi	sp,sp,-16
    80002464:	00113423          	sd	ra,8(sp)
    80002468:	00813023          	sd	s0,0(sp)
    8000246c:	01010413          	addi	s0,sp,16
    80002470:	00050593          	mv	a1,a0
    syscall(SEM_WAIT, (uint64)id);
    80002474:	00000713          	li	a4,0
    80002478:	00000693          	li	a3,0
    8000247c:	00000613          	li	a2,0
    80002480:	02300513          	li	a0,35
    80002484:	00000097          	auipc	ra,0x0
    80002488:	d7c080e7          	jalr	-644(ra) # 80002200 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    8000248c:	00050513          	mv	a0,a0
    return retVal;
}
    80002490:	0005051b          	sext.w	a0,a0
    80002494:	00813083          	ld	ra,8(sp)
    80002498:	00013403          	ld	s0,0(sp)
    8000249c:	01010113          	addi	sp,sp,16
    800024a0:	00008067          	ret

00000000800024a4 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) {
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00113423          	sd	ra,8(sp)
    800024ac:	00813023          	sd	s0,0(sp)
    800024b0:	01010413          	addi	s0,sp,16
    800024b4:	00050593          	mv	a1,a0
    syscall(SEM_TRYWAIT, (uint64)id);
    800024b8:	00000713          	li	a4,0
    800024bc:	00000693          	li	a3,0
    800024c0:	00000613          	li	a2,0
    800024c4:	02600513          	li	a0,38
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	d38080e7          	jalr	-712(ra) # 80002200 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800024d0:	00050513          	mv	a0,a0
    return retVal;
}
    800024d4:	0005051b          	sext.w	a0,a0
    800024d8:	00813083          	ld	ra,8(sp)
    800024dc:	00013403          	ld	s0,0(sp)
    800024e0:	01010113          	addi	sp,sp,16
    800024e4:	00008067          	ret

00000000800024e8 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    800024e8:	ff010113          	addi	sp,sp,-16
    800024ec:	00113423          	sd	ra,8(sp)
    800024f0:	00813023          	sd	s0,0(sp)
    800024f4:	01010413          	addi	s0,sp,16
    800024f8:	00050593          	mv	a1,a0
    syscall(SEM_SIGNAL, (uint64)id);
    800024fc:	00000713          	li	a4,0
    80002500:	00000693          	li	a3,0
    80002504:	00000613          	li	a2,0
    80002508:	02400513          	li	a0,36
    8000250c:	00000097          	auipc	ra,0x0
    80002510:	cf4080e7          	jalr	-780(ra) # 80002200 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002514:	00050513          	mv	a0,a0
    return retVal;
}
    80002518:	0005051b          	sext.w	a0,a0
    8000251c:	00813083          	ld	ra,8(sp)
    80002520:	00013403          	ld	s0,0(sp)
    80002524:	01010113          	addi	sp,sp,16
    80002528:	00008067          	ret

000000008000252c <_Z4getcv>:

char getc() {
    8000252c:	ff010113          	addi	sp,sp,-16
    80002530:	00113423          	sd	ra,8(sp)
    80002534:	00813023          	sd	s0,0(sp)
    80002538:	01010413          	addi	s0,sp,16
    syscall(GETC);
    8000253c:	00000713          	li	a4,0
    80002540:	00000693          	li	a3,0
    80002544:	00000613          	li	a2,0
    80002548:	00000593          	li	a1,0
    8000254c:	04100513          	li	a0,65
    80002550:	00000097          	auipc	ra,0x0
    80002554:	cb0080e7          	jalr	-848(ra) # 80002200 <_Z7syscallmmmmm>
    char retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002558:	00050513          	mv	a0,a0
    return retVal;
}
    8000255c:	0ff57513          	andi	a0,a0,255
    80002560:	00813083          	ld	ra,8(sp)
    80002564:	00013403          	ld	s0,0(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret

0000000080002570 <_Z4putcc>:

void putc(char c) {
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00113423          	sd	ra,8(sp)
    80002578:	00813023          	sd	s0,0(sp)
    8000257c:	01010413          	addi	s0,sp,16
    80002580:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    80002584:	00000713          	li	a4,0
    80002588:	00000693          	li	a3,0
    8000258c:	00000613          	li	a2,0
    80002590:	04200513          	li	a0,66
    80002594:	00000097          	auipc	ra,0x0
    80002598:	c6c080e7          	jalr	-916(ra) # 80002200 <_Z7syscallmmmmm>
    8000259c:	00813083          	ld	ra,8(sp)
    800025a0:	00013403          	ld	s0,0(sp)
    800025a4:	01010113          	addi	sp,sp,16
    800025a8:	00008067          	ret

00000000800025ac <_Z8printIntm>:
#include "../h/syscallC.hpp"

void printInt(uint64 num) {
    800025ac:	fd010113          	addi	sp,sp,-48
    800025b0:	02113423          	sd	ra,40(sp)
    800025b4:	02813023          	sd	s0,32(sp)
    800025b8:	00913c23          	sd	s1,24(sp)
    800025bc:	01213823          	sd	s2,16(sp)
    800025c0:	01313423          	sd	s3,8(sp)
    800025c4:	03010413          	addi	s0,sp,48
    800025c8:	00050913          	mv	s2,a0
    putc('\n');
    800025cc:	00a00513          	li	a0,10
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	fa0080e7          	jalr	-96(ra) # 80002570 <_Z4putcc>
    if (!num) putc('0');
    800025d8:	00090863          	beqz	s2,800025e8 <_Z8printIntm+0x3c>
    uint64 num2 = 0, zero_count = 0;
    800025dc:	00000993          	li	s3,0
    800025e0:	00000493          	li	s1,0
    800025e4:	01c0006f          	j	80002600 <_Z8printIntm+0x54>
    if (!num) putc('0');
    800025e8:	03000513          	li	a0,48
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	f84080e7          	jalr	-124(ra) # 80002570 <_Z4putcc>
    800025f4:	fe9ff06f          	j	800025dc <_Z8printIntm+0x30>
    while (num) {
        num2 *= 10;
        num2 += num%10;
        if(!num2) ++zero_count;
        num/=10;
    800025f8:	00a00793          	li	a5,10
    800025fc:	02f95933          	divu	s2,s2,a5
    while (num) {
    80002600:	02090463          	beqz	s2,80002628 <_Z8printIntm+0x7c>
        num2 *= 10;
    80002604:	00249793          	slli	a5,s1,0x2
    80002608:	009784b3          	add	s1,a5,s1
    8000260c:	00149793          	slli	a5,s1,0x1
        num2 += num%10;
    80002610:	00a00493          	li	s1,10
    80002614:	029974b3          	remu	s1,s2,s1
    80002618:	00f484b3          	add	s1,s1,a5
        if(!num2) ++zero_count;
    8000261c:	fc049ee3          	bnez	s1,800025f8 <_Z8printIntm+0x4c>
    80002620:	00198993          	addi	s3,s3,1
    80002624:	fd5ff06f          	j	800025f8 <_Z8printIntm+0x4c>
    }
    while (num2) {
    80002628:	02048063          	beqz	s1,80002648 <_Z8printIntm+0x9c>
        putc(num2%10+'0');
    8000262c:	00a00913          	li	s2,10
    80002630:	0324f533          	remu	a0,s1,s2
    80002634:	03050513          	addi	a0,a0,48 # 1030 <_entry-0x7fffefd0>
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	f38080e7          	jalr	-200(ra) # 80002570 <_Z4putcc>
        num2/=10;
    80002640:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80002644:	fe5ff06f          	j	80002628 <_Z8printIntm+0x7c>
    }
    while (zero_count--) putc('0');
    80002648:	fff98493          	addi	s1,s3,-1
    8000264c:	00098c63          	beqz	s3,80002664 <_Z8printIntm+0xb8>
    80002650:	03000513          	li	a0,48
    80002654:	00000097          	auipc	ra,0x0
    80002658:	f1c080e7          	jalr	-228(ra) # 80002570 <_Z4putcc>
    8000265c:	00048993          	mv	s3,s1
    80002660:	fe9ff06f          	j	80002648 <_Z8printIntm+0x9c>
}
    80002664:	02813083          	ld	ra,40(sp)
    80002668:	02013403          	ld	s0,32(sp)
    8000266c:	01813483          	ld	s1,24(sp)
    80002670:	01013903          	ld	s2,16(sp)
    80002674:	00813983          	ld	s3,8(sp)
    80002678:	03010113          	addi	sp,sp,48
    8000267c:	00008067          	ret

0000000080002680 <_Z8printStrPKc>:

void printStr(char const* string) {
    80002680:	fe010113          	addi	sp,sp,-32
    80002684:	00113c23          	sd	ra,24(sp)
    80002688:	00813823          	sd	s0,16(sp)
    8000268c:	00913423          	sd	s1,8(sp)
    80002690:	02010413          	addi	s0,sp,32
    80002694:	00050493          	mv	s1,a0
    while (*string != '\0') {
    80002698:	0004c503          	lbu	a0,0(s1)
    8000269c:	00050a63          	beqz	a0,800026b0 <_Z8printStrPKc+0x30>
        putc(*string);
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	ed0080e7          	jalr	-304(ra) # 80002570 <_Z4putcc>
        string++;
    800026a8:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    800026ac:	fedff06f          	j	80002698 <_Z8printStrPKc+0x18>
    }
    800026b0:	01813083          	ld	ra,24(sp)
    800026b4:	01013403          	ld	s0,16(sp)
    800026b8:	00813483          	ld	s1,8(sp)
    800026bc:	02010113          	addi	sp,sp,32
    800026c0:	00008067          	ret

00000000800026c4 <_ZN6Thread7wrapperEPv>:

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::wrapper(void *arg) {
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00113423          	sd	ra,8(sp)
    800026cc:	00813023          	sd	s0,0(sp)
    800026d0:	01010413          	addi	s0,sp,16
    Thread* thread=(Thread*)arg;
    thread->run();
    800026d4:	00053783          	ld	a5,0(a0)
    800026d8:	0107b783          	ld	a5,16(a5)
    800026dc:	000780e7          	jalr	a5
}
    800026e0:	00813083          	ld	ra,8(sp)
    800026e4:	00013403          	ld	s0,0(sp)
    800026e8:	01010113          	addi	sp,sp,16
    800026ec:	00008067          	ret

00000000800026f0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800026f0:	fe010113          	addi	sp,sp,-32
    800026f4:	00113c23          	sd	ra,24(sp)
    800026f8:	00813823          	sd	s0,16(sp)
    800026fc:	00913423          	sd	s1,8(sp)
    80002700:	02010413          	addi	s0,sp,32
    80002704:	00004797          	auipc	a5,0x4
    80002708:	81478793          	addi	a5,a5,-2028 # 80005f18 <_ZTV6Thread+0x10>
    8000270c:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80002710:	00853483          	ld	s1,8(a0)
    80002714:	00048e63          	beqz	s1,80002730 <_ZN6ThreadD1Ev+0x40>
    ~TCB() { MemoryAllocator::mem_free(this->stack); }
    80002718:	0104b503          	ld	a0,16(s1)
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	2d4080e7          	jalr	724(ra) # 800019f0 <_ZN15MemoryAllocator8mem_freeEPv>
    80002724:	00048513          	mv	a0,s1
    80002728:	fffff097          	auipc	ra,0xfffff
    8000272c:	f3c080e7          	jalr	-196(ra) # 80001664 <_ZN3TCBdlEPv>
}
    80002730:	01813083          	ld	ra,24(sp)
    80002734:	01013403          	ld	s0,16(sp)
    80002738:	00813483          	ld	s1,8(sp)
    8000273c:	02010113          	addi	sp,sp,32
    80002740:	00008067          	ret

0000000080002744 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002744:	fe010113          	addi	sp,sp,-32
    80002748:	00113c23          	sd	ra,24(sp)
    8000274c:	00813823          	sd	s0,16(sp)
    80002750:	00913423          	sd	s1,8(sp)
    80002754:	02010413          	addi	s0,sp,32
    80002758:	00050493          	mv	s1,a0
}
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	f94080e7          	jalr	-108(ra) # 800026f0 <_ZN6ThreadD1Ev>
    80002764:	00048513          	mv	a0,s1
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	afc080e7          	jalr	-1284(ra) # 80001264 <_ZdlPv>
    80002770:	01813083          	ld	ra,24(sp)
    80002774:	01013403          	ld	s0,16(sp)
    80002778:	00813483          	ld	s1,8(sp)
    8000277c:	02010113          	addi	sp,sp,32
    80002780:	00008067          	ret

0000000080002784 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00113423          	sd	ra,8(sp)
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	01010413          	addi	s0,sp,16
    80002794:	00003797          	auipc	a5,0x3
    80002798:	7ac78793          	addi	a5,a5,1964 # 80005f40 <_ZTV9Semaphore+0x10>
    8000279c:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800027a0:	00853503          	ld	a0,8(a0)
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	c78080e7          	jalr	-904(ra) # 8000241c <_Z9sem_closeP3Sem>
}
    800027ac:	00813083          	ld	ra,8(sp)
    800027b0:	00013403          	ld	s0,0(sp)
    800027b4:	01010113          	addi	sp,sp,16
    800027b8:	00008067          	ret

00000000800027bc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800027bc:	fe010113          	addi	sp,sp,-32
    800027c0:	00113c23          	sd	ra,24(sp)
    800027c4:	00813823          	sd	s0,16(sp)
    800027c8:	00913423          	sd	s1,8(sp)
    800027cc:	02010413          	addi	s0,sp,32
    800027d0:	00050493          	mv	s1,a0
}
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	fb0080e7          	jalr	-80(ra) # 80002784 <_ZN9SemaphoreD1Ev>
    800027dc:	00048513          	mv	a0,s1
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	a84080e7          	jalr	-1404(ra) # 80001264 <_ZdlPv>
    800027e8:	01813083          	ld	ra,24(sp)
    800027ec:	01013403          	ld	s0,16(sp)
    800027f0:	00813483          	ld	s1,8(sp)
    800027f4:	02010113          	addi	sp,sp,32
    800027f8:	00008067          	ret

00000000800027fc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void *arg) {
    800027fc:	ff010113          	addi	sp,sp,-16
    80002800:	00813423          	sd	s0,8(sp)
    80002804:	01010413          	addi	s0,sp,16
    80002808:	00003797          	auipc	a5,0x3
    8000280c:	71078793          	addi	a5,a5,1808 # 80005f18 <_ZTV6Thread+0x10>
    80002810:	00f53023          	sd	a5,0(a0)
    this->myHandle=nullptr;
    80002814:	00053423          	sd	zero,8(a0)
    this->body=body;
    80002818:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    8000281c:	00c53c23          	sd	a2,24(a0)
}
    80002820:	00813403          	ld	s0,8(sp)
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret

000000008000282c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000282c:	ff010113          	addi	sp,sp,-16
    80002830:	00813423          	sd	s0,8(sp)
    80002834:	01010413          	addi	s0,sp,16
    80002838:	00003797          	auipc	a5,0x3
    8000283c:	6e078793          	addi	a5,a5,1760 # 80005f18 <_ZTV6Thread+0x10>
    80002840:	00f53023          	sd	a5,0(a0)
    this->myHandle=nullptr;
    80002844:	00053423          	sd	zero,8(a0)
    this->body=wrapper;
    80002848:	00000797          	auipc	a5,0x0
    8000284c:	e7c78793          	addi	a5,a5,-388 # 800026c4 <_ZN6Thread7wrapperEPv>
    80002850:	00f53823          	sd	a5,16(a0)
    this->arg=(void*)this;
    80002854:	00a53c23          	sd	a0,24(a0)
}
    80002858:	00813403          	ld	s0,8(sp)
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00008067          	ret

0000000080002864 <_ZN6Thread5startEv>:
int Thread::start() {
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	00813023          	sd	s0,0(sp)
    80002870:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, this->body, this->arg);
    80002874:	01853603          	ld	a2,24(a0)
    80002878:	01053583          	ld	a1,16(a0)
    8000287c:	00850513          	addi	a0,a0,8
    80002880:	00000097          	auipc	ra,0x0
    80002884:	a48080e7          	jalr	-1464(ra) # 800022c8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002888:	00813083          	ld	ra,8(sp)
    8000288c:	00013403          	ld	s0,0(sp)
    80002890:	01010113          	addi	sp,sp,16
    80002894:	00008067          	ret

0000000080002898 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002898:	ff010113          	addi	sp,sp,-16
    8000289c:	00113423          	sd	ra,8(sp)
    800028a0:	00813023          	sd	s0,0(sp)
    800028a4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	af0080e7          	jalr	-1296(ra) # 80002398 <_Z15thread_dispatchv>
}
    800028b0:	00813083          	ld	ra,8(sp)
    800028b4:	00013403          	ld	s0,0(sp)
    800028b8:	01010113          	addi	sp,sp,16
    800028bc:	00008067          	ret

00000000800028c0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800028c0:	ff010113          	addi	sp,sp,-16
    800028c4:	00113423          	sd	ra,8(sp)
    800028c8:	00813023          	sd	s0,0(sp)
    800028cc:	01010413          	addi	s0,sp,16
    800028d0:	00003797          	auipc	a5,0x3
    800028d4:	67078793          	addi	a5,a5,1648 # 80005f40 <_ZTV9Semaphore+0x10>
    800028d8:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800028dc:	00850513          	addi	a0,a0,8
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	af4080e7          	jalr	-1292(ra) # 800023d4 <_Z8sem_openPP3Semj>
}
    800028e8:	00813083          	ld	ra,8(sp)
    800028ec:	00013403          	ld	s0,0(sp)
    800028f0:	01010113          	addi	sp,sp,16
    800028f4:	00008067          	ret

00000000800028f8 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800028f8:	ff010113          	addi	sp,sp,-16
    800028fc:	00113423          	sd	ra,8(sp)
    80002900:	00813023          	sd	s0,0(sp)
    80002904:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002908:	00853503          	ld	a0,8(a0)
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	b54080e7          	jalr	-1196(ra) # 80002460 <_Z8sem_waitP3Sem>
}
    80002914:	00813083          	ld	ra,8(sp)
    80002918:	00013403          	ld	s0,0(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002924:	ff010113          	addi	sp,sp,-16
    80002928:	00113423          	sd	ra,8(sp)
    8000292c:	00813023          	sd	s0,0(sp)
    80002930:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002934:	00853503          	ld	a0,8(a0)
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	bb0080e7          	jalr	-1104(ra) # 800024e8 <_Z10sem_signalP3Sem>
}
    80002940:	00813083          	ld	ra,8(sp)
    80002944:	00013403          	ld	s0,0(sp)
    80002948:	01010113          	addi	sp,sp,16
    8000294c:	00008067          	ret

0000000080002950 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80002950:	ff010113          	addi	sp,sp,-16
    80002954:	00113423          	sd	ra,8(sp)
    80002958:	00813023          	sd	s0,0(sp)
    8000295c:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80002960:	00853503          	ld	a0,8(a0)
    80002964:	00000097          	auipc	ra,0x0
    80002968:	b40080e7          	jalr	-1216(ra) # 800024a4 <_Z11sem_trywaitP3Sem>
}
    8000296c:	00813083          	ld	ra,8(sp)
    80002970:	00013403          	ld	s0,0(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret

000000008000297c <_ZN7Console4getcEv>:

char Console::getc() {
    8000297c:	ff010113          	addi	sp,sp,-16
    80002980:	00113423          	sd	ra,8(sp)
    80002984:	00813023          	sd	s0,0(sp)
    80002988:	01010413          	addi	s0,sp,16
    return ::getc();
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	ba0080e7          	jalr	-1120(ra) # 8000252c <_Z4getcv>
}
    80002994:	00813083          	ld	ra,8(sp)
    80002998:	00013403          	ld	s0,0(sp)
    8000299c:	01010113          	addi	sp,sp,16
    800029a0:	00008067          	ret

00000000800029a4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800029a4:	ff010113          	addi	sp,sp,-16
    800029a8:	00113423          	sd	ra,8(sp)
    800029ac:	00813023          	sd	s0,0(sp)
    800029b0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	bbc080e7          	jalr	-1092(ra) # 80002570 <_Z4putcc>
    800029bc:	00813083          	ld	ra,8(sp)
    800029c0:	00013403          	ld	s0,0(sp)
    800029c4:	01010113          	addi	sp,sp,16
    800029c8:	00008067          	ret

00000000800029cc <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};
    800029cc:	ff010113          	addi	sp,sp,-16
    800029d0:	00813423          	sd	s0,8(sp)
    800029d4:	01010413          	addi	s0,sp,16
    800029d8:	00813403          	ld	s0,8(sp)
    800029dc:	01010113          	addi	sp,sp,16
    800029e0:	00008067          	ret

00000000800029e4 <start>:
    800029e4:	ff010113          	addi	sp,sp,-16
    800029e8:	00813423          	sd	s0,8(sp)
    800029ec:	01010413          	addi	s0,sp,16
    800029f0:	300027f3          	csrr	a5,mstatus
    800029f4:	ffffe737          	lui	a4,0xffffe
    800029f8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff756f>
    800029fc:	00e7f7b3          	and	a5,a5,a4
    80002a00:	00001737          	lui	a4,0x1
    80002a04:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002a08:	00e7e7b3          	or	a5,a5,a4
    80002a0c:	30079073          	csrw	mstatus,a5
    80002a10:	00000797          	auipc	a5,0x0
    80002a14:	16078793          	addi	a5,a5,352 # 80002b70 <system_main>
    80002a18:	34179073          	csrw	mepc,a5
    80002a1c:	00000793          	li	a5,0
    80002a20:	18079073          	csrw	satp,a5
    80002a24:	000107b7          	lui	a5,0x10
    80002a28:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a2c:	30279073          	csrw	medeleg,a5
    80002a30:	30379073          	csrw	mideleg,a5
    80002a34:	104027f3          	csrr	a5,sie
    80002a38:	2227e793          	ori	a5,a5,546
    80002a3c:	10479073          	csrw	sie,a5
    80002a40:	fff00793          	li	a5,-1
    80002a44:	00a7d793          	srli	a5,a5,0xa
    80002a48:	3b079073          	csrw	pmpaddr0,a5
    80002a4c:	00f00793          	li	a5,15
    80002a50:	3a079073          	csrw	pmpcfg0,a5
    80002a54:	f14027f3          	csrr	a5,mhartid
    80002a58:	0200c737          	lui	a4,0x200c
    80002a5c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002a60:	0007869b          	sext.w	a3,a5
    80002a64:	00269713          	slli	a4,a3,0x2
    80002a68:	000f4637          	lui	a2,0xf4
    80002a6c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002a70:	00d70733          	add	a4,a4,a3
    80002a74:	0037979b          	slliw	a5,a5,0x3
    80002a78:	020046b7          	lui	a3,0x2004
    80002a7c:	00d787b3          	add	a5,a5,a3
    80002a80:	00c585b3          	add	a1,a1,a2
    80002a84:	00371693          	slli	a3,a4,0x3
    80002a88:	00003717          	auipc	a4,0x3
    80002a8c:	5a870713          	addi	a4,a4,1448 # 80006030 <timer_scratch>
    80002a90:	00b7b023          	sd	a1,0(a5)
    80002a94:	00d70733          	add	a4,a4,a3
    80002a98:	00f73c23          	sd	a5,24(a4)
    80002a9c:	02c73023          	sd	a2,32(a4)
    80002aa0:	34071073          	csrw	mscratch,a4
    80002aa4:	00000797          	auipc	a5,0x0
    80002aa8:	6ec78793          	addi	a5,a5,1772 # 80003190 <timervec>
    80002aac:	30579073          	csrw	mtvec,a5
    80002ab0:	300027f3          	csrr	a5,mstatus
    80002ab4:	0087e793          	ori	a5,a5,8
    80002ab8:	30079073          	csrw	mstatus,a5
    80002abc:	304027f3          	csrr	a5,mie
    80002ac0:	0807e793          	ori	a5,a5,128
    80002ac4:	30479073          	csrw	mie,a5
    80002ac8:	f14027f3          	csrr	a5,mhartid
    80002acc:	0007879b          	sext.w	a5,a5
    80002ad0:	00078213          	mv	tp,a5
    80002ad4:	30200073          	mret
    80002ad8:	00813403          	ld	s0,8(sp)
    80002adc:	01010113          	addi	sp,sp,16
    80002ae0:	00008067          	ret

0000000080002ae4 <timerinit>:
    80002ae4:	ff010113          	addi	sp,sp,-16
    80002ae8:	00813423          	sd	s0,8(sp)
    80002aec:	01010413          	addi	s0,sp,16
    80002af0:	f14027f3          	csrr	a5,mhartid
    80002af4:	0200c737          	lui	a4,0x200c
    80002af8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002afc:	0007869b          	sext.w	a3,a5
    80002b00:	00269713          	slli	a4,a3,0x2
    80002b04:	000f4637          	lui	a2,0xf4
    80002b08:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002b0c:	00d70733          	add	a4,a4,a3
    80002b10:	0037979b          	slliw	a5,a5,0x3
    80002b14:	020046b7          	lui	a3,0x2004
    80002b18:	00d787b3          	add	a5,a5,a3
    80002b1c:	00c585b3          	add	a1,a1,a2
    80002b20:	00371693          	slli	a3,a4,0x3
    80002b24:	00003717          	auipc	a4,0x3
    80002b28:	50c70713          	addi	a4,a4,1292 # 80006030 <timer_scratch>
    80002b2c:	00b7b023          	sd	a1,0(a5)
    80002b30:	00d70733          	add	a4,a4,a3
    80002b34:	00f73c23          	sd	a5,24(a4)
    80002b38:	02c73023          	sd	a2,32(a4)
    80002b3c:	34071073          	csrw	mscratch,a4
    80002b40:	00000797          	auipc	a5,0x0
    80002b44:	65078793          	addi	a5,a5,1616 # 80003190 <timervec>
    80002b48:	30579073          	csrw	mtvec,a5
    80002b4c:	300027f3          	csrr	a5,mstatus
    80002b50:	0087e793          	ori	a5,a5,8
    80002b54:	30079073          	csrw	mstatus,a5
    80002b58:	304027f3          	csrr	a5,mie
    80002b5c:	0807e793          	ori	a5,a5,128
    80002b60:	30479073          	csrw	mie,a5
    80002b64:	00813403          	ld	s0,8(sp)
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret

0000000080002b70 <system_main>:
    80002b70:	fe010113          	addi	sp,sp,-32
    80002b74:	00813823          	sd	s0,16(sp)
    80002b78:	00913423          	sd	s1,8(sp)
    80002b7c:	00113c23          	sd	ra,24(sp)
    80002b80:	02010413          	addi	s0,sp,32
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	0c4080e7          	jalr	196(ra) # 80002c48 <cpuid>
    80002b8c:	00003497          	auipc	s1,0x3
    80002b90:	41448493          	addi	s1,s1,1044 # 80005fa0 <started>
    80002b94:	02050263          	beqz	a0,80002bb8 <system_main+0x48>
    80002b98:	0004a783          	lw	a5,0(s1)
    80002b9c:	0007879b          	sext.w	a5,a5
    80002ba0:	fe078ce3          	beqz	a5,80002b98 <system_main+0x28>
    80002ba4:	0ff0000f          	fence
    80002ba8:	00002517          	auipc	a0,0x2
    80002bac:	5c850513          	addi	a0,a0,1480 # 80005170 <_ZN15MemoryAllocator10DBlockSizeE+0x150>
    80002bb0:	00001097          	auipc	ra,0x1
    80002bb4:	a7c080e7          	jalr	-1412(ra) # 8000362c <panic>
    80002bb8:	00001097          	auipc	ra,0x1
    80002bbc:	9d0080e7          	jalr	-1584(ra) # 80003588 <consoleinit>
    80002bc0:	00001097          	auipc	ra,0x1
    80002bc4:	15c080e7          	jalr	348(ra) # 80003d1c <printfinit>
    80002bc8:	00002517          	auipc	a0,0x2
    80002bcc:	68850513          	addi	a0,a0,1672 # 80005250 <_ZN15MemoryAllocator10DBlockSizeE+0x230>
    80002bd0:	00001097          	auipc	ra,0x1
    80002bd4:	ab8080e7          	jalr	-1352(ra) # 80003688 <__printf>
    80002bd8:	00002517          	auipc	a0,0x2
    80002bdc:	56850513          	addi	a0,a0,1384 # 80005140 <_ZN15MemoryAllocator10DBlockSizeE+0x120>
    80002be0:	00001097          	auipc	ra,0x1
    80002be4:	aa8080e7          	jalr	-1368(ra) # 80003688 <__printf>
    80002be8:	00002517          	auipc	a0,0x2
    80002bec:	66850513          	addi	a0,a0,1640 # 80005250 <_ZN15MemoryAllocator10DBlockSizeE+0x230>
    80002bf0:	00001097          	auipc	ra,0x1
    80002bf4:	a98080e7          	jalr	-1384(ra) # 80003688 <__printf>
    80002bf8:	00001097          	auipc	ra,0x1
    80002bfc:	4b0080e7          	jalr	1200(ra) # 800040a8 <kinit>
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	148080e7          	jalr	328(ra) # 80002d48 <trapinit>
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	16c080e7          	jalr	364(ra) # 80002d74 <trapinithart>
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	5c0080e7          	jalr	1472(ra) # 800031d0 <plicinit>
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	5e0080e7          	jalr	1504(ra) # 800031f8 <plicinithart>
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	078080e7          	jalr	120(ra) # 80002c98 <userinit>
    80002c28:	0ff0000f          	fence
    80002c2c:	00100793          	li	a5,1
    80002c30:	00002517          	auipc	a0,0x2
    80002c34:	52850513          	addi	a0,a0,1320 # 80005158 <_ZN15MemoryAllocator10DBlockSizeE+0x138>
    80002c38:	00f4a023          	sw	a5,0(s1)
    80002c3c:	00001097          	auipc	ra,0x1
    80002c40:	a4c080e7          	jalr	-1460(ra) # 80003688 <__printf>
    80002c44:	0000006f          	j	80002c44 <system_main+0xd4>

0000000080002c48 <cpuid>:
    80002c48:	ff010113          	addi	sp,sp,-16
    80002c4c:	00813423          	sd	s0,8(sp)
    80002c50:	01010413          	addi	s0,sp,16
    80002c54:	00020513          	mv	a0,tp
    80002c58:	00813403          	ld	s0,8(sp)
    80002c5c:	0005051b          	sext.w	a0,a0
    80002c60:	01010113          	addi	sp,sp,16
    80002c64:	00008067          	ret

0000000080002c68 <mycpu>:
    80002c68:	ff010113          	addi	sp,sp,-16
    80002c6c:	00813423          	sd	s0,8(sp)
    80002c70:	01010413          	addi	s0,sp,16
    80002c74:	00020793          	mv	a5,tp
    80002c78:	00813403          	ld	s0,8(sp)
    80002c7c:	0007879b          	sext.w	a5,a5
    80002c80:	00779793          	slli	a5,a5,0x7
    80002c84:	00004517          	auipc	a0,0x4
    80002c88:	3dc50513          	addi	a0,a0,988 # 80007060 <cpus>
    80002c8c:	00f50533          	add	a0,a0,a5
    80002c90:	01010113          	addi	sp,sp,16
    80002c94:	00008067          	ret

0000000080002c98 <userinit>:
    80002c98:	ff010113          	addi	sp,sp,-16
    80002c9c:	00813423          	sd	s0,8(sp)
    80002ca0:	01010413          	addi	s0,sp,16
    80002ca4:	00813403          	ld	s0,8(sp)
    80002ca8:	01010113          	addi	sp,sp,16
    80002cac:	ffffe317          	auipc	t1,0xffffe
    80002cb0:	6f830067          	jr	1784(t1) # 800013a4 <main>

0000000080002cb4 <either_copyout>:
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00813023          	sd	s0,0(sp)
    80002cbc:	00113423          	sd	ra,8(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    80002cc4:	02051663          	bnez	a0,80002cf0 <either_copyout+0x3c>
    80002cc8:	00058513          	mv	a0,a1
    80002ccc:	00060593          	mv	a1,a2
    80002cd0:	0006861b          	sext.w	a2,a3
    80002cd4:	00002097          	auipc	ra,0x2
    80002cd8:	c60080e7          	jalr	-928(ra) # 80004934 <__memmove>
    80002cdc:	00813083          	ld	ra,8(sp)
    80002ce0:	00013403          	ld	s0,0(sp)
    80002ce4:	00000513          	li	a0,0
    80002ce8:	01010113          	addi	sp,sp,16
    80002cec:	00008067          	ret
    80002cf0:	00002517          	auipc	a0,0x2
    80002cf4:	4a850513          	addi	a0,a0,1192 # 80005198 <_ZN15MemoryAllocator10DBlockSizeE+0x178>
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	934080e7          	jalr	-1740(ra) # 8000362c <panic>

0000000080002d00 <either_copyin>:
    80002d00:	ff010113          	addi	sp,sp,-16
    80002d04:	00813023          	sd	s0,0(sp)
    80002d08:	00113423          	sd	ra,8(sp)
    80002d0c:	01010413          	addi	s0,sp,16
    80002d10:	02059463          	bnez	a1,80002d38 <either_copyin+0x38>
    80002d14:	00060593          	mv	a1,a2
    80002d18:	0006861b          	sext.w	a2,a3
    80002d1c:	00002097          	auipc	ra,0x2
    80002d20:	c18080e7          	jalr	-1000(ra) # 80004934 <__memmove>
    80002d24:	00813083          	ld	ra,8(sp)
    80002d28:	00013403          	ld	s0,0(sp)
    80002d2c:	00000513          	li	a0,0
    80002d30:	01010113          	addi	sp,sp,16
    80002d34:	00008067          	ret
    80002d38:	00002517          	auipc	a0,0x2
    80002d3c:	48850513          	addi	a0,a0,1160 # 800051c0 <_ZN15MemoryAllocator10DBlockSizeE+0x1a0>
    80002d40:	00001097          	auipc	ra,0x1
    80002d44:	8ec080e7          	jalr	-1812(ra) # 8000362c <panic>

0000000080002d48 <trapinit>:
    80002d48:	ff010113          	addi	sp,sp,-16
    80002d4c:	00813423          	sd	s0,8(sp)
    80002d50:	01010413          	addi	s0,sp,16
    80002d54:	00813403          	ld	s0,8(sp)
    80002d58:	00002597          	auipc	a1,0x2
    80002d5c:	49058593          	addi	a1,a1,1168 # 800051e8 <_ZN15MemoryAllocator10DBlockSizeE+0x1c8>
    80002d60:	00004517          	auipc	a0,0x4
    80002d64:	38050513          	addi	a0,a0,896 # 800070e0 <tickslock>
    80002d68:	01010113          	addi	sp,sp,16
    80002d6c:	00001317          	auipc	t1,0x1
    80002d70:	5cc30067          	jr	1484(t1) # 80004338 <initlock>

0000000080002d74 <trapinithart>:
    80002d74:	ff010113          	addi	sp,sp,-16
    80002d78:	00813423          	sd	s0,8(sp)
    80002d7c:	01010413          	addi	s0,sp,16
    80002d80:	00000797          	auipc	a5,0x0
    80002d84:	30078793          	addi	a5,a5,768 # 80003080 <kernelvec>
    80002d88:	10579073          	csrw	stvec,a5
    80002d8c:	00813403          	ld	s0,8(sp)
    80002d90:	01010113          	addi	sp,sp,16
    80002d94:	00008067          	ret

0000000080002d98 <usertrap>:
    80002d98:	ff010113          	addi	sp,sp,-16
    80002d9c:	00813423          	sd	s0,8(sp)
    80002da0:	01010413          	addi	s0,sp,16
    80002da4:	00813403          	ld	s0,8(sp)
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00008067          	ret

0000000080002db0 <usertrapret>:
    80002db0:	ff010113          	addi	sp,sp,-16
    80002db4:	00813423          	sd	s0,8(sp)
    80002db8:	01010413          	addi	s0,sp,16
    80002dbc:	00813403          	ld	s0,8(sp)
    80002dc0:	01010113          	addi	sp,sp,16
    80002dc4:	00008067          	ret

0000000080002dc8 <kerneltrap>:
    80002dc8:	fe010113          	addi	sp,sp,-32
    80002dcc:	00813823          	sd	s0,16(sp)
    80002dd0:	00113c23          	sd	ra,24(sp)
    80002dd4:	00913423          	sd	s1,8(sp)
    80002dd8:	02010413          	addi	s0,sp,32
    80002ddc:	142025f3          	csrr	a1,scause
    80002de0:	100027f3          	csrr	a5,sstatus
    80002de4:	0027f793          	andi	a5,a5,2
    80002de8:	10079c63          	bnez	a5,80002f00 <kerneltrap+0x138>
    80002dec:	142027f3          	csrr	a5,scause
    80002df0:	0207ce63          	bltz	a5,80002e2c <kerneltrap+0x64>
    80002df4:	00002517          	auipc	a0,0x2
    80002df8:	43c50513          	addi	a0,a0,1084 # 80005230 <_ZN15MemoryAllocator10DBlockSizeE+0x210>
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	88c080e7          	jalr	-1908(ra) # 80003688 <__printf>
    80002e04:	141025f3          	csrr	a1,sepc
    80002e08:	14302673          	csrr	a2,stval
    80002e0c:	00002517          	auipc	a0,0x2
    80002e10:	43450513          	addi	a0,a0,1076 # 80005240 <_ZN15MemoryAllocator10DBlockSizeE+0x220>
    80002e14:	00001097          	auipc	ra,0x1
    80002e18:	874080e7          	jalr	-1932(ra) # 80003688 <__printf>
    80002e1c:	00002517          	auipc	a0,0x2
    80002e20:	43c50513          	addi	a0,a0,1084 # 80005258 <_ZN15MemoryAllocator10DBlockSizeE+0x238>
    80002e24:	00001097          	auipc	ra,0x1
    80002e28:	808080e7          	jalr	-2040(ra) # 8000362c <panic>
    80002e2c:	0ff7f713          	andi	a4,a5,255
    80002e30:	00900693          	li	a3,9
    80002e34:	04d70063          	beq	a4,a3,80002e74 <kerneltrap+0xac>
    80002e38:	fff00713          	li	a4,-1
    80002e3c:	03f71713          	slli	a4,a4,0x3f
    80002e40:	00170713          	addi	a4,a4,1
    80002e44:	fae798e3          	bne	a5,a4,80002df4 <kerneltrap+0x2c>
    80002e48:	00000097          	auipc	ra,0x0
    80002e4c:	e00080e7          	jalr	-512(ra) # 80002c48 <cpuid>
    80002e50:	06050663          	beqz	a0,80002ebc <kerneltrap+0xf4>
    80002e54:	144027f3          	csrr	a5,sip
    80002e58:	ffd7f793          	andi	a5,a5,-3
    80002e5c:	14479073          	csrw	sip,a5
    80002e60:	01813083          	ld	ra,24(sp)
    80002e64:	01013403          	ld	s0,16(sp)
    80002e68:	00813483          	ld	s1,8(sp)
    80002e6c:	02010113          	addi	sp,sp,32
    80002e70:	00008067          	ret
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	3d0080e7          	jalr	976(ra) # 80003244 <plic_claim>
    80002e7c:	00a00793          	li	a5,10
    80002e80:	00050493          	mv	s1,a0
    80002e84:	06f50863          	beq	a0,a5,80002ef4 <kerneltrap+0x12c>
    80002e88:	fc050ce3          	beqz	a0,80002e60 <kerneltrap+0x98>
    80002e8c:	00050593          	mv	a1,a0
    80002e90:	00002517          	auipc	a0,0x2
    80002e94:	38050513          	addi	a0,a0,896 # 80005210 <_ZN15MemoryAllocator10DBlockSizeE+0x1f0>
    80002e98:	00000097          	auipc	ra,0x0
    80002e9c:	7f0080e7          	jalr	2032(ra) # 80003688 <__printf>
    80002ea0:	01013403          	ld	s0,16(sp)
    80002ea4:	01813083          	ld	ra,24(sp)
    80002ea8:	00048513          	mv	a0,s1
    80002eac:	00813483          	ld	s1,8(sp)
    80002eb0:	02010113          	addi	sp,sp,32
    80002eb4:	00000317          	auipc	t1,0x0
    80002eb8:	3c830067          	jr	968(t1) # 8000327c <plic_complete>
    80002ebc:	00004517          	auipc	a0,0x4
    80002ec0:	22450513          	addi	a0,a0,548 # 800070e0 <tickslock>
    80002ec4:	00001097          	auipc	ra,0x1
    80002ec8:	498080e7          	jalr	1176(ra) # 8000435c <acquire>
    80002ecc:	00003717          	auipc	a4,0x3
    80002ed0:	0d870713          	addi	a4,a4,216 # 80005fa4 <ticks>
    80002ed4:	00072783          	lw	a5,0(a4)
    80002ed8:	00004517          	auipc	a0,0x4
    80002edc:	20850513          	addi	a0,a0,520 # 800070e0 <tickslock>
    80002ee0:	0017879b          	addiw	a5,a5,1
    80002ee4:	00f72023          	sw	a5,0(a4)
    80002ee8:	00001097          	auipc	ra,0x1
    80002eec:	540080e7          	jalr	1344(ra) # 80004428 <release>
    80002ef0:	f65ff06f          	j	80002e54 <kerneltrap+0x8c>
    80002ef4:	00001097          	auipc	ra,0x1
    80002ef8:	09c080e7          	jalr	156(ra) # 80003f90 <uartintr>
    80002efc:	fa5ff06f          	j	80002ea0 <kerneltrap+0xd8>
    80002f00:	00002517          	auipc	a0,0x2
    80002f04:	2f050513          	addi	a0,a0,752 # 800051f0 <_ZN15MemoryAllocator10DBlockSizeE+0x1d0>
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	724080e7          	jalr	1828(ra) # 8000362c <panic>

0000000080002f10 <clockintr>:
    80002f10:	fe010113          	addi	sp,sp,-32
    80002f14:	00813823          	sd	s0,16(sp)
    80002f18:	00913423          	sd	s1,8(sp)
    80002f1c:	00113c23          	sd	ra,24(sp)
    80002f20:	02010413          	addi	s0,sp,32
    80002f24:	00004497          	auipc	s1,0x4
    80002f28:	1bc48493          	addi	s1,s1,444 # 800070e0 <tickslock>
    80002f2c:	00048513          	mv	a0,s1
    80002f30:	00001097          	auipc	ra,0x1
    80002f34:	42c080e7          	jalr	1068(ra) # 8000435c <acquire>
    80002f38:	00003717          	auipc	a4,0x3
    80002f3c:	06c70713          	addi	a4,a4,108 # 80005fa4 <ticks>
    80002f40:	00072783          	lw	a5,0(a4)
    80002f44:	01013403          	ld	s0,16(sp)
    80002f48:	01813083          	ld	ra,24(sp)
    80002f4c:	00048513          	mv	a0,s1
    80002f50:	0017879b          	addiw	a5,a5,1
    80002f54:	00813483          	ld	s1,8(sp)
    80002f58:	00f72023          	sw	a5,0(a4)
    80002f5c:	02010113          	addi	sp,sp,32
    80002f60:	00001317          	auipc	t1,0x1
    80002f64:	4c830067          	jr	1224(t1) # 80004428 <release>

0000000080002f68 <devintr>:
    80002f68:	142027f3          	csrr	a5,scause
    80002f6c:	00000513          	li	a0,0
    80002f70:	0007c463          	bltz	a5,80002f78 <devintr+0x10>
    80002f74:	00008067          	ret
    80002f78:	fe010113          	addi	sp,sp,-32
    80002f7c:	00813823          	sd	s0,16(sp)
    80002f80:	00113c23          	sd	ra,24(sp)
    80002f84:	00913423          	sd	s1,8(sp)
    80002f88:	02010413          	addi	s0,sp,32
    80002f8c:	0ff7f713          	andi	a4,a5,255
    80002f90:	00900693          	li	a3,9
    80002f94:	04d70c63          	beq	a4,a3,80002fec <devintr+0x84>
    80002f98:	fff00713          	li	a4,-1
    80002f9c:	03f71713          	slli	a4,a4,0x3f
    80002fa0:	00170713          	addi	a4,a4,1
    80002fa4:	00e78c63          	beq	a5,a4,80002fbc <devintr+0x54>
    80002fa8:	01813083          	ld	ra,24(sp)
    80002fac:	01013403          	ld	s0,16(sp)
    80002fb0:	00813483          	ld	s1,8(sp)
    80002fb4:	02010113          	addi	sp,sp,32
    80002fb8:	00008067          	ret
    80002fbc:	00000097          	auipc	ra,0x0
    80002fc0:	c8c080e7          	jalr	-884(ra) # 80002c48 <cpuid>
    80002fc4:	06050663          	beqz	a0,80003030 <devintr+0xc8>
    80002fc8:	144027f3          	csrr	a5,sip
    80002fcc:	ffd7f793          	andi	a5,a5,-3
    80002fd0:	14479073          	csrw	sip,a5
    80002fd4:	01813083          	ld	ra,24(sp)
    80002fd8:	01013403          	ld	s0,16(sp)
    80002fdc:	00813483          	ld	s1,8(sp)
    80002fe0:	00200513          	li	a0,2
    80002fe4:	02010113          	addi	sp,sp,32
    80002fe8:	00008067          	ret
    80002fec:	00000097          	auipc	ra,0x0
    80002ff0:	258080e7          	jalr	600(ra) # 80003244 <plic_claim>
    80002ff4:	00a00793          	li	a5,10
    80002ff8:	00050493          	mv	s1,a0
    80002ffc:	06f50663          	beq	a0,a5,80003068 <devintr+0x100>
    80003000:	00100513          	li	a0,1
    80003004:	fa0482e3          	beqz	s1,80002fa8 <devintr+0x40>
    80003008:	00048593          	mv	a1,s1
    8000300c:	00002517          	auipc	a0,0x2
    80003010:	20450513          	addi	a0,a0,516 # 80005210 <_ZN15MemoryAllocator10DBlockSizeE+0x1f0>
    80003014:	00000097          	auipc	ra,0x0
    80003018:	674080e7          	jalr	1652(ra) # 80003688 <__printf>
    8000301c:	00048513          	mv	a0,s1
    80003020:	00000097          	auipc	ra,0x0
    80003024:	25c080e7          	jalr	604(ra) # 8000327c <plic_complete>
    80003028:	00100513          	li	a0,1
    8000302c:	f7dff06f          	j	80002fa8 <devintr+0x40>
    80003030:	00004517          	auipc	a0,0x4
    80003034:	0b050513          	addi	a0,a0,176 # 800070e0 <tickslock>
    80003038:	00001097          	auipc	ra,0x1
    8000303c:	324080e7          	jalr	804(ra) # 8000435c <acquire>
    80003040:	00003717          	auipc	a4,0x3
    80003044:	f6470713          	addi	a4,a4,-156 # 80005fa4 <ticks>
    80003048:	00072783          	lw	a5,0(a4)
    8000304c:	00004517          	auipc	a0,0x4
    80003050:	09450513          	addi	a0,a0,148 # 800070e0 <tickslock>
    80003054:	0017879b          	addiw	a5,a5,1
    80003058:	00f72023          	sw	a5,0(a4)
    8000305c:	00001097          	auipc	ra,0x1
    80003060:	3cc080e7          	jalr	972(ra) # 80004428 <release>
    80003064:	f65ff06f          	j	80002fc8 <devintr+0x60>
    80003068:	00001097          	auipc	ra,0x1
    8000306c:	f28080e7          	jalr	-216(ra) # 80003f90 <uartintr>
    80003070:	fadff06f          	j	8000301c <devintr+0xb4>
	...

0000000080003080 <kernelvec>:
    80003080:	f0010113          	addi	sp,sp,-256
    80003084:	00113023          	sd	ra,0(sp)
    80003088:	00213423          	sd	sp,8(sp)
    8000308c:	00313823          	sd	gp,16(sp)
    80003090:	00413c23          	sd	tp,24(sp)
    80003094:	02513023          	sd	t0,32(sp)
    80003098:	02613423          	sd	t1,40(sp)
    8000309c:	02713823          	sd	t2,48(sp)
    800030a0:	02813c23          	sd	s0,56(sp)
    800030a4:	04913023          	sd	s1,64(sp)
    800030a8:	04a13423          	sd	a0,72(sp)
    800030ac:	04b13823          	sd	a1,80(sp)
    800030b0:	04c13c23          	sd	a2,88(sp)
    800030b4:	06d13023          	sd	a3,96(sp)
    800030b8:	06e13423          	sd	a4,104(sp)
    800030bc:	06f13823          	sd	a5,112(sp)
    800030c0:	07013c23          	sd	a6,120(sp)
    800030c4:	09113023          	sd	a7,128(sp)
    800030c8:	09213423          	sd	s2,136(sp)
    800030cc:	09313823          	sd	s3,144(sp)
    800030d0:	09413c23          	sd	s4,152(sp)
    800030d4:	0b513023          	sd	s5,160(sp)
    800030d8:	0b613423          	sd	s6,168(sp)
    800030dc:	0b713823          	sd	s7,176(sp)
    800030e0:	0b813c23          	sd	s8,184(sp)
    800030e4:	0d913023          	sd	s9,192(sp)
    800030e8:	0da13423          	sd	s10,200(sp)
    800030ec:	0db13823          	sd	s11,208(sp)
    800030f0:	0dc13c23          	sd	t3,216(sp)
    800030f4:	0fd13023          	sd	t4,224(sp)
    800030f8:	0fe13423          	sd	t5,232(sp)
    800030fc:	0ff13823          	sd	t6,240(sp)
    80003100:	cc9ff0ef          	jal	ra,80002dc8 <kerneltrap>
    80003104:	00013083          	ld	ra,0(sp)
    80003108:	00813103          	ld	sp,8(sp)
    8000310c:	01013183          	ld	gp,16(sp)
    80003110:	02013283          	ld	t0,32(sp)
    80003114:	02813303          	ld	t1,40(sp)
    80003118:	03013383          	ld	t2,48(sp)
    8000311c:	03813403          	ld	s0,56(sp)
    80003120:	04013483          	ld	s1,64(sp)
    80003124:	04813503          	ld	a0,72(sp)
    80003128:	05013583          	ld	a1,80(sp)
    8000312c:	05813603          	ld	a2,88(sp)
    80003130:	06013683          	ld	a3,96(sp)
    80003134:	06813703          	ld	a4,104(sp)
    80003138:	07013783          	ld	a5,112(sp)
    8000313c:	07813803          	ld	a6,120(sp)
    80003140:	08013883          	ld	a7,128(sp)
    80003144:	08813903          	ld	s2,136(sp)
    80003148:	09013983          	ld	s3,144(sp)
    8000314c:	09813a03          	ld	s4,152(sp)
    80003150:	0a013a83          	ld	s5,160(sp)
    80003154:	0a813b03          	ld	s6,168(sp)
    80003158:	0b013b83          	ld	s7,176(sp)
    8000315c:	0b813c03          	ld	s8,184(sp)
    80003160:	0c013c83          	ld	s9,192(sp)
    80003164:	0c813d03          	ld	s10,200(sp)
    80003168:	0d013d83          	ld	s11,208(sp)
    8000316c:	0d813e03          	ld	t3,216(sp)
    80003170:	0e013e83          	ld	t4,224(sp)
    80003174:	0e813f03          	ld	t5,232(sp)
    80003178:	0f013f83          	ld	t6,240(sp)
    8000317c:	10010113          	addi	sp,sp,256
    80003180:	10200073          	sret
    80003184:	00000013          	nop
    80003188:	00000013          	nop
    8000318c:	00000013          	nop

0000000080003190 <timervec>:
    80003190:	34051573          	csrrw	a0,mscratch,a0
    80003194:	00b53023          	sd	a1,0(a0)
    80003198:	00c53423          	sd	a2,8(a0)
    8000319c:	00d53823          	sd	a3,16(a0)
    800031a0:	01853583          	ld	a1,24(a0)
    800031a4:	02053603          	ld	a2,32(a0)
    800031a8:	0005b683          	ld	a3,0(a1)
    800031ac:	00c686b3          	add	a3,a3,a2
    800031b0:	00d5b023          	sd	a3,0(a1)
    800031b4:	00200593          	li	a1,2
    800031b8:	14459073          	csrw	sip,a1
    800031bc:	01053683          	ld	a3,16(a0)
    800031c0:	00853603          	ld	a2,8(a0)
    800031c4:	00053583          	ld	a1,0(a0)
    800031c8:	34051573          	csrrw	a0,mscratch,a0
    800031cc:	30200073          	mret

00000000800031d0 <plicinit>:
    800031d0:	ff010113          	addi	sp,sp,-16
    800031d4:	00813423          	sd	s0,8(sp)
    800031d8:	01010413          	addi	s0,sp,16
    800031dc:	00813403          	ld	s0,8(sp)
    800031e0:	0c0007b7          	lui	a5,0xc000
    800031e4:	00100713          	li	a4,1
    800031e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800031ec:	00e7a223          	sw	a4,4(a5)
    800031f0:	01010113          	addi	sp,sp,16
    800031f4:	00008067          	ret

00000000800031f8 <plicinithart>:
    800031f8:	ff010113          	addi	sp,sp,-16
    800031fc:	00813023          	sd	s0,0(sp)
    80003200:	00113423          	sd	ra,8(sp)
    80003204:	01010413          	addi	s0,sp,16
    80003208:	00000097          	auipc	ra,0x0
    8000320c:	a40080e7          	jalr	-1472(ra) # 80002c48 <cpuid>
    80003210:	0085171b          	slliw	a4,a0,0x8
    80003214:	0c0027b7          	lui	a5,0xc002
    80003218:	00e787b3          	add	a5,a5,a4
    8000321c:	40200713          	li	a4,1026
    80003220:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003224:	00813083          	ld	ra,8(sp)
    80003228:	00013403          	ld	s0,0(sp)
    8000322c:	00d5151b          	slliw	a0,a0,0xd
    80003230:	0c2017b7          	lui	a5,0xc201
    80003234:	00a78533          	add	a0,a5,a0
    80003238:	00052023          	sw	zero,0(a0)
    8000323c:	01010113          	addi	sp,sp,16
    80003240:	00008067          	ret

0000000080003244 <plic_claim>:
    80003244:	ff010113          	addi	sp,sp,-16
    80003248:	00813023          	sd	s0,0(sp)
    8000324c:	00113423          	sd	ra,8(sp)
    80003250:	01010413          	addi	s0,sp,16
    80003254:	00000097          	auipc	ra,0x0
    80003258:	9f4080e7          	jalr	-1548(ra) # 80002c48 <cpuid>
    8000325c:	00813083          	ld	ra,8(sp)
    80003260:	00013403          	ld	s0,0(sp)
    80003264:	00d5151b          	slliw	a0,a0,0xd
    80003268:	0c2017b7          	lui	a5,0xc201
    8000326c:	00a78533          	add	a0,a5,a0
    80003270:	00452503          	lw	a0,4(a0)
    80003274:	01010113          	addi	sp,sp,16
    80003278:	00008067          	ret

000000008000327c <plic_complete>:
    8000327c:	fe010113          	addi	sp,sp,-32
    80003280:	00813823          	sd	s0,16(sp)
    80003284:	00913423          	sd	s1,8(sp)
    80003288:	00113c23          	sd	ra,24(sp)
    8000328c:	02010413          	addi	s0,sp,32
    80003290:	00050493          	mv	s1,a0
    80003294:	00000097          	auipc	ra,0x0
    80003298:	9b4080e7          	jalr	-1612(ra) # 80002c48 <cpuid>
    8000329c:	01813083          	ld	ra,24(sp)
    800032a0:	01013403          	ld	s0,16(sp)
    800032a4:	00d5179b          	slliw	a5,a0,0xd
    800032a8:	0c201737          	lui	a4,0xc201
    800032ac:	00f707b3          	add	a5,a4,a5
    800032b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800032b4:	00813483          	ld	s1,8(sp)
    800032b8:	02010113          	addi	sp,sp,32
    800032bc:	00008067          	ret

00000000800032c0 <consolewrite>:
    800032c0:	fb010113          	addi	sp,sp,-80
    800032c4:	04813023          	sd	s0,64(sp)
    800032c8:	04113423          	sd	ra,72(sp)
    800032cc:	02913c23          	sd	s1,56(sp)
    800032d0:	03213823          	sd	s2,48(sp)
    800032d4:	03313423          	sd	s3,40(sp)
    800032d8:	03413023          	sd	s4,32(sp)
    800032dc:	01513c23          	sd	s5,24(sp)
    800032e0:	05010413          	addi	s0,sp,80
    800032e4:	06c05c63          	blez	a2,8000335c <consolewrite+0x9c>
    800032e8:	00060993          	mv	s3,a2
    800032ec:	00050a13          	mv	s4,a0
    800032f0:	00058493          	mv	s1,a1
    800032f4:	00000913          	li	s2,0
    800032f8:	fff00a93          	li	s5,-1
    800032fc:	01c0006f          	j	80003318 <consolewrite+0x58>
    80003300:	fbf44503          	lbu	a0,-65(s0)
    80003304:	0019091b          	addiw	s2,s2,1
    80003308:	00148493          	addi	s1,s1,1
    8000330c:	00001097          	auipc	ra,0x1
    80003310:	a9c080e7          	jalr	-1380(ra) # 80003da8 <uartputc>
    80003314:	03298063          	beq	s3,s2,80003334 <consolewrite+0x74>
    80003318:	00048613          	mv	a2,s1
    8000331c:	00100693          	li	a3,1
    80003320:	000a0593          	mv	a1,s4
    80003324:	fbf40513          	addi	a0,s0,-65
    80003328:	00000097          	auipc	ra,0x0
    8000332c:	9d8080e7          	jalr	-1576(ra) # 80002d00 <either_copyin>
    80003330:	fd5518e3          	bne	a0,s5,80003300 <consolewrite+0x40>
    80003334:	04813083          	ld	ra,72(sp)
    80003338:	04013403          	ld	s0,64(sp)
    8000333c:	03813483          	ld	s1,56(sp)
    80003340:	02813983          	ld	s3,40(sp)
    80003344:	02013a03          	ld	s4,32(sp)
    80003348:	01813a83          	ld	s5,24(sp)
    8000334c:	00090513          	mv	a0,s2
    80003350:	03013903          	ld	s2,48(sp)
    80003354:	05010113          	addi	sp,sp,80
    80003358:	00008067          	ret
    8000335c:	00000913          	li	s2,0
    80003360:	fd5ff06f          	j	80003334 <consolewrite+0x74>

0000000080003364 <consoleread>:
    80003364:	f9010113          	addi	sp,sp,-112
    80003368:	06813023          	sd	s0,96(sp)
    8000336c:	04913c23          	sd	s1,88(sp)
    80003370:	05213823          	sd	s2,80(sp)
    80003374:	05313423          	sd	s3,72(sp)
    80003378:	05413023          	sd	s4,64(sp)
    8000337c:	03513c23          	sd	s5,56(sp)
    80003380:	03613823          	sd	s6,48(sp)
    80003384:	03713423          	sd	s7,40(sp)
    80003388:	03813023          	sd	s8,32(sp)
    8000338c:	06113423          	sd	ra,104(sp)
    80003390:	01913c23          	sd	s9,24(sp)
    80003394:	07010413          	addi	s0,sp,112
    80003398:	00060b93          	mv	s7,a2
    8000339c:	00050913          	mv	s2,a0
    800033a0:	00058c13          	mv	s8,a1
    800033a4:	00060b1b          	sext.w	s6,a2
    800033a8:	00004497          	auipc	s1,0x4
    800033ac:	d6048493          	addi	s1,s1,-672 # 80007108 <cons>
    800033b0:	00400993          	li	s3,4
    800033b4:	fff00a13          	li	s4,-1
    800033b8:	00a00a93          	li	s5,10
    800033bc:	05705e63          	blez	s7,80003418 <consoleread+0xb4>
    800033c0:	09c4a703          	lw	a4,156(s1)
    800033c4:	0984a783          	lw	a5,152(s1)
    800033c8:	0007071b          	sext.w	a4,a4
    800033cc:	08e78463          	beq	a5,a4,80003454 <consoleread+0xf0>
    800033d0:	07f7f713          	andi	a4,a5,127
    800033d4:	00e48733          	add	a4,s1,a4
    800033d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800033dc:	0017869b          	addiw	a3,a5,1
    800033e0:	08d4ac23          	sw	a3,152(s1)
    800033e4:	00070c9b          	sext.w	s9,a4
    800033e8:	0b370663          	beq	a4,s3,80003494 <consoleread+0x130>
    800033ec:	00100693          	li	a3,1
    800033f0:	f9f40613          	addi	a2,s0,-97
    800033f4:	000c0593          	mv	a1,s8
    800033f8:	00090513          	mv	a0,s2
    800033fc:	f8e40fa3          	sb	a4,-97(s0)
    80003400:	00000097          	auipc	ra,0x0
    80003404:	8b4080e7          	jalr	-1868(ra) # 80002cb4 <either_copyout>
    80003408:	01450863          	beq	a0,s4,80003418 <consoleread+0xb4>
    8000340c:	001c0c13          	addi	s8,s8,1
    80003410:	fffb8b9b          	addiw	s7,s7,-1
    80003414:	fb5c94e3          	bne	s9,s5,800033bc <consoleread+0x58>
    80003418:	000b851b          	sext.w	a0,s7
    8000341c:	06813083          	ld	ra,104(sp)
    80003420:	06013403          	ld	s0,96(sp)
    80003424:	05813483          	ld	s1,88(sp)
    80003428:	05013903          	ld	s2,80(sp)
    8000342c:	04813983          	ld	s3,72(sp)
    80003430:	04013a03          	ld	s4,64(sp)
    80003434:	03813a83          	ld	s5,56(sp)
    80003438:	02813b83          	ld	s7,40(sp)
    8000343c:	02013c03          	ld	s8,32(sp)
    80003440:	01813c83          	ld	s9,24(sp)
    80003444:	40ab053b          	subw	a0,s6,a0
    80003448:	03013b03          	ld	s6,48(sp)
    8000344c:	07010113          	addi	sp,sp,112
    80003450:	00008067          	ret
    80003454:	00001097          	auipc	ra,0x1
    80003458:	1d8080e7          	jalr	472(ra) # 8000462c <push_on>
    8000345c:	0984a703          	lw	a4,152(s1)
    80003460:	09c4a783          	lw	a5,156(s1)
    80003464:	0007879b          	sext.w	a5,a5
    80003468:	fef70ce3          	beq	a4,a5,80003460 <consoleread+0xfc>
    8000346c:	00001097          	auipc	ra,0x1
    80003470:	234080e7          	jalr	564(ra) # 800046a0 <pop_on>
    80003474:	0984a783          	lw	a5,152(s1)
    80003478:	07f7f713          	andi	a4,a5,127
    8000347c:	00e48733          	add	a4,s1,a4
    80003480:	01874703          	lbu	a4,24(a4)
    80003484:	0017869b          	addiw	a3,a5,1
    80003488:	08d4ac23          	sw	a3,152(s1)
    8000348c:	00070c9b          	sext.w	s9,a4
    80003490:	f5371ee3          	bne	a4,s3,800033ec <consoleread+0x88>
    80003494:	000b851b          	sext.w	a0,s7
    80003498:	f96bf2e3          	bgeu	s7,s6,8000341c <consoleread+0xb8>
    8000349c:	08f4ac23          	sw	a5,152(s1)
    800034a0:	f7dff06f          	j	8000341c <consoleread+0xb8>

00000000800034a4 <consputc>:
    800034a4:	10000793          	li	a5,256
    800034a8:	00f50663          	beq	a0,a5,800034b4 <consputc+0x10>
    800034ac:	00001317          	auipc	t1,0x1
    800034b0:	9f430067          	jr	-1548(t1) # 80003ea0 <uartputc_sync>
    800034b4:	ff010113          	addi	sp,sp,-16
    800034b8:	00113423          	sd	ra,8(sp)
    800034bc:	00813023          	sd	s0,0(sp)
    800034c0:	01010413          	addi	s0,sp,16
    800034c4:	00800513          	li	a0,8
    800034c8:	00001097          	auipc	ra,0x1
    800034cc:	9d8080e7          	jalr	-1576(ra) # 80003ea0 <uartputc_sync>
    800034d0:	02000513          	li	a0,32
    800034d4:	00001097          	auipc	ra,0x1
    800034d8:	9cc080e7          	jalr	-1588(ra) # 80003ea0 <uartputc_sync>
    800034dc:	00013403          	ld	s0,0(sp)
    800034e0:	00813083          	ld	ra,8(sp)
    800034e4:	00800513          	li	a0,8
    800034e8:	01010113          	addi	sp,sp,16
    800034ec:	00001317          	auipc	t1,0x1
    800034f0:	9b430067          	jr	-1612(t1) # 80003ea0 <uartputc_sync>

00000000800034f4 <consoleintr>:
    800034f4:	fe010113          	addi	sp,sp,-32
    800034f8:	00813823          	sd	s0,16(sp)
    800034fc:	00913423          	sd	s1,8(sp)
    80003500:	01213023          	sd	s2,0(sp)
    80003504:	00113c23          	sd	ra,24(sp)
    80003508:	02010413          	addi	s0,sp,32
    8000350c:	00004917          	auipc	s2,0x4
    80003510:	bfc90913          	addi	s2,s2,-1028 # 80007108 <cons>
    80003514:	00050493          	mv	s1,a0
    80003518:	00090513          	mv	a0,s2
    8000351c:	00001097          	auipc	ra,0x1
    80003520:	e40080e7          	jalr	-448(ra) # 8000435c <acquire>
    80003524:	02048c63          	beqz	s1,8000355c <consoleintr+0x68>
    80003528:	0a092783          	lw	a5,160(s2)
    8000352c:	09892703          	lw	a4,152(s2)
    80003530:	07f00693          	li	a3,127
    80003534:	40e7873b          	subw	a4,a5,a4
    80003538:	02e6e263          	bltu	a3,a4,8000355c <consoleintr+0x68>
    8000353c:	00d00713          	li	a4,13
    80003540:	04e48063          	beq	s1,a4,80003580 <consoleintr+0x8c>
    80003544:	07f7f713          	andi	a4,a5,127
    80003548:	00e90733          	add	a4,s2,a4
    8000354c:	0017879b          	addiw	a5,a5,1
    80003550:	0af92023          	sw	a5,160(s2)
    80003554:	00970c23          	sb	s1,24(a4)
    80003558:	08f92e23          	sw	a5,156(s2)
    8000355c:	01013403          	ld	s0,16(sp)
    80003560:	01813083          	ld	ra,24(sp)
    80003564:	00813483          	ld	s1,8(sp)
    80003568:	00013903          	ld	s2,0(sp)
    8000356c:	00004517          	auipc	a0,0x4
    80003570:	b9c50513          	addi	a0,a0,-1124 # 80007108 <cons>
    80003574:	02010113          	addi	sp,sp,32
    80003578:	00001317          	auipc	t1,0x1
    8000357c:	eb030067          	jr	-336(t1) # 80004428 <release>
    80003580:	00a00493          	li	s1,10
    80003584:	fc1ff06f          	j	80003544 <consoleintr+0x50>

0000000080003588 <consoleinit>:
    80003588:	fe010113          	addi	sp,sp,-32
    8000358c:	00113c23          	sd	ra,24(sp)
    80003590:	00813823          	sd	s0,16(sp)
    80003594:	00913423          	sd	s1,8(sp)
    80003598:	02010413          	addi	s0,sp,32
    8000359c:	00004497          	auipc	s1,0x4
    800035a0:	b6c48493          	addi	s1,s1,-1172 # 80007108 <cons>
    800035a4:	00048513          	mv	a0,s1
    800035a8:	00002597          	auipc	a1,0x2
    800035ac:	cc058593          	addi	a1,a1,-832 # 80005268 <_ZN15MemoryAllocator10DBlockSizeE+0x248>
    800035b0:	00001097          	auipc	ra,0x1
    800035b4:	d88080e7          	jalr	-632(ra) # 80004338 <initlock>
    800035b8:	00000097          	auipc	ra,0x0
    800035bc:	7ac080e7          	jalr	1964(ra) # 80003d64 <uartinit>
    800035c0:	01813083          	ld	ra,24(sp)
    800035c4:	01013403          	ld	s0,16(sp)
    800035c8:	00000797          	auipc	a5,0x0
    800035cc:	d9c78793          	addi	a5,a5,-612 # 80003364 <consoleread>
    800035d0:	0af4bc23          	sd	a5,184(s1)
    800035d4:	00000797          	auipc	a5,0x0
    800035d8:	cec78793          	addi	a5,a5,-788 # 800032c0 <consolewrite>
    800035dc:	0cf4b023          	sd	a5,192(s1)
    800035e0:	00813483          	ld	s1,8(sp)
    800035e4:	02010113          	addi	sp,sp,32
    800035e8:	00008067          	ret

00000000800035ec <console_read>:
    800035ec:	ff010113          	addi	sp,sp,-16
    800035f0:	00813423          	sd	s0,8(sp)
    800035f4:	01010413          	addi	s0,sp,16
    800035f8:	00813403          	ld	s0,8(sp)
    800035fc:	00004317          	auipc	t1,0x4
    80003600:	bc433303          	ld	t1,-1084(t1) # 800071c0 <devsw+0x10>
    80003604:	01010113          	addi	sp,sp,16
    80003608:	00030067          	jr	t1

000000008000360c <console_write>:
    8000360c:	ff010113          	addi	sp,sp,-16
    80003610:	00813423          	sd	s0,8(sp)
    80003614:	01010413          	addi	s0,sp,16
    80003618:	00813403          	ld	s0,8(sp)
    8000361c:	00004317          	auipc	t1,0x4
    80003620:	bac33303          	ld	t1,-1108(t1) # 800071c8 <devsw+0x18>
    80003624:	01010113          	addi	sp,sp,16
    80003628:	00030067          	jr	t1

000000008000362c <panic>:
    8000362c:	fe010113          	addi	sp,sp,-32
    80003630:	00113c23          	sd	ra,24(sp)
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00913423          	sd	s1,8(sp)
    8000363c:	02010413          	addi	s0,sp,32
    80003640:	00050493          	mv	s1,a0
    80003644:	00002517          	auipc	a0,0x2
    80003648:	c2c50513          	addi	a0,a0,-980 # 80005270 <_ZN15MemoryAllocator10DBlockSizeE+0x250>
    8000364c:	00004797          	auipc	a5,0x4
    80003650:	c007ae23          	sw	zero,-996(a5) # 80007268 <pr+0x18>
    80003654:	00000097          	auipc	ra,0x0
    80003658:	034080e7          	jalr	52(ra) # 80003688 <__printf>
    8000365c:	00048513          	mv	a0,s1
    80003660:	00000097          	auipc	ra,0x0
    80003664:	028080e7          	jalr	40(ra) # 80003688 <__printf>
    80003668:	00002517          	auipc	a0,0x2
    8000366c:	be850513          	addi	a0,a0,-1048 # 80005250 <_ZN15MemoryAllocator10DBlockSizeE+0x230>
    80003670:	00000097          	auipc	ra,0x0
    80003674:	018080e7          	jalr	24(ra) # 80003688 <__printf>
    80003678:	00100793          	li	a5,1
    8000367c:	00003717          	auipc	a4,0x3
    80003680:	92f72623          	sw	a5,-1748(a4) # 80005fa8 <panicked>
    80003684:	0000006f          	j	80003684 <panic+0x58>

0000000080003688 <__printf>:
    80003688:	f3010113          	addi	sp,sp,-208
    8000368c:	08813023          	sd	s0,128(sp)
    80003690:	07313423          	sd	s3,104(sp)
    80003694:	09010413          	addi	s0,sp,144
    80003698:	05813023          	sd	s8,64(sp)
    8000369c:	08113423          	sd	ra,136(sp)
    800036a0:	06913c23          	sd	s1,120(sp)
    800036a4:	07213823          	sd	s2,112(sp)
    800036a8:	07413023          	sd	s4,96(sp)
    800036ac:	05513c23          	sd	s5,88(sp)
    800036b0:	05613823          	sd	s6,80(sp)
    800036b4:	05713423          	sd	s7,72(sp)
    800036b8:	03913c23          	sd	s9,56(sp)
    800036bc:	03a13823          	sd	s10,48(sp)
    800036c0:	03b13423          	sd	s11,40(sp)
    800036c4:	00004317          	auipc	t1,0x4
    800036c8:	b8c30313          	addi	t1,t1,-1140 # 80007250 <pr>
    800036cc:	01832c03          	lw	s8,24(t1)
    800036d0:	00b43423          	sd	a1,8(s0)
    800036d4:	00c43823          	sd	a2,16(s0)
    800036d8:	00d43c23          	sd	a3,24(s0)
    800036dc:	02e43023          	sd	a4,32(s0)
    800036e0:	02f43423          	sd	a5,40(s0)
    800036e4:	03043823          	sd	a6,48(s0)
    800036e8:	03143c23          	sd	a7,56(s0)
    800036ec:	00050993          	mv	s3,a0
    800036f0:	4a0c1663          	bnez	s8,80003b9c <__printf+0x514>
    800036f4:	60098c63          	beqz	s3,80003d0c <__printf+0x684>
    800036f8:	0009c503          	lbu	a0,0(s3)
    800036fc:	00840793          	addi	a5,s0,8
    80003700:	f6f43c23          	sd	a5,-136(s0)
    80003704:	00000493          	li	s1,0
    80003708:	22050063          	beqz	a0,80003928 <__printf+0x2a0>
    8000370c:	00002a37          	lui	s4,0x2
    80003710:	00018ab7          	lui	s5,0x18
    80003714:	000f4b37          	lui	s6,0xf4
    80003718:	00989bb7          	lui	s7,0x989
    8000371c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003720:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003724:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003728:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000372c:	00148c9b          	addiw	s9,s1,1
    80003730:	02500793          	li	a5,37
    80003734:	01998933          	add	s2,s3,s9
    80003738:	38f51263          	bne	a0,a5,80003abc <__printf+0x434>
    8000373c:	00094783          	lbu	a5,0(s2)
    80003740:	00078c9b          	sext.w	s9,a5
    80003744:	1e078263          	beqz	a5,80003928 <__printf+0x2a0>
    80003748:	0024849b          	addiw	s1,s1,2
    8000374c:	07000713          	li	a4,112
    80003750:	00998933          	add	s2,s3,s1
    80003754:	38e78a63          	beq	a5,a4,80003ae8 <__printf+0x460>
    80003758:	20f76863          	bltu	a4,a5,80003968 <__printf+0x2e0>
    8000375c:	42a78863          	beq	a5,a0,80003b8c <__printf+0x504>
    80003760:	06400713          	li	a4,100
    80003764:	40e79663          	bne	a5,a4,80003b70 <__printf+0x4e8>
    80003768:	f7843783          	ld	a5,-136(s0)
    8000376c:	0007a603          	lw	a2,0(a5)
    80003770:	00878793          	addi	a5,a5,8
    80003774:	f6f43c23          	sd	a5,-136(s0)
    80003778:	42064a63          	bltz	a2,80003bac <__printf+0x524>
    8000377c:	00a00713          	li	a4,10
    80003780:	02e677bb          	remuw	a5,a2,a4
    80003784:	00002d97          	auipc	s11,0x2
    80003788:	b14d8d93          	addi	s11,s11,-1260 # 80005298 <digits>
    8000378c:	00900593          	li	a1,9
    80003790:	0006051b          	sext.w	a0,a2
    80003794:	00000c93          	li	s9,0
    80003798:	02079793          	slli	a5,a5,0x20
    8000379c:	0207d793          	srli	a5,a5,0x20
    800037a0:	00fd87b3          	add	a5,s11,a5
    800037a4:	0007c783          	lbu	a5,0(a5)
    800037a8:	02e656bb          	divuw	a3,a2,a4
    800037ac:	f8f40023          	sb	a5,-128(s0)
    800037b0:	14c5d863          	bge	a1,a2,80003900 <__printf+0x278>
    800037b4:	06300593          	li	a1,99
    800037b8:	00100c93          	li	s9,1
    800037bc:	02e6f7bb          	remuw	a5,a3,a4
    800037c0:	02079793          	slli	a5,a5,0x20
    800037c4:	0207d793          	srli	a5,a5,0x20
    800037c8:	00fd87b3          	add	a5,s11,a5
    800037cc:	0007c783          	lbu	a5,0(a5)
    800037d0:	02e6d73b          	divuw	a4,a3,a4
    800037d4:	f8f400a3          	sb	a5,-127(s0)
    800037d8:	12a5f463          	bgeu	a1,a0,80003900 <__printf+0x278>
    800037dc:	00a00693          	li	a3,10
    800037e0:	00900593          	li	a1,9
    800037e4:	02d777bb          	remuw	a5,a4,a3
    800037e8:	02079793          	slli	a5,a5,0x20
    800037ec:	0207d793          	srli	a5,a5,0x20
    800037f0:	00fd87b3          	add	a5,s11,a5
    800037f4:	0007c503          	lbu	a0,0(a5)
    800037f8:	02d757bb          	divuw	a5,a4,a3
    800037fc:	f8a40123          	sb	a0,-126(s0)
    80003800:	48e5f263          	bgeu	a1,a4,80003c84 <__printf+0x5fc>
    80003804:	06300513          	li	a0,99
    80003808:	02d7f5bb          	remuw	a1,a5,a3
    8000380c:	02059593          	slli	a1,a1,0x20
    80003810:	0205d593          	srli	a1,a1,0x20
    80003814:	00bd85b3          	add	a1,s11,a1
    80003818:	0005c583          	lbu	a1,0(a1)
    8000381c:	02d7d7bb          	divuw	a5,a5,a3
    80003820:	f8b401a3          	sb	a1,-125(s0)
    80003824:	48e57263          	bgeu	a0,a4,80003ca8 <__printf+0x620>
    80003828:	3e700513          	li	a0,999
    8000382c:	02d7f5bb          	remuw	a1,a5,a3
    80003830:	02059593          	slli	a1,a1,0x20
    80003834:	0205d593          	srli	a1,a1,0x20
    80003838:	00bd85b3          	add	a1,s11,a1
    8000383c:	0005c583          	lbu	a1,0(a1)
    80003840:	02d7d7bb          	divuw	a5,a5,a3
    80003844:	f8b40223          	sb	a1,-124(s0)
    80003848:	46e57663          	bgeu	a0,a4,80003cb4 <__printf+0x62c>
    8000384c:	02d7f5bb          	remuw	a1,a5,a3
    80003850:	02059593          	slli	a1,a1,0x20
    80003854:	0205d593          	srli	a1,a1,0x20
    80003858:	00bd85b3          	add	a1,s11,a1
    8000385c:	0005c583          	lbu	a1,0(a1)
    80003860:	02d7d7bb          	divuw	a5,a5,a3
    80003864:	f8b402a3          	sb	a1,-123(s0)
    80003868:	46ea7863          	bgeu	s4,a4,80003cd8 <__printf+0x650>
    8000386c:	02d7f5bb          	remuw	a1,a5,a3
    80003870:	02059593          	slli	a1,a1,0x20
    80003874:	0205d593          	srli	a1,a1,0x20
    80003878:	00bd85b3          	add	a1,s11,a1
    8000387c:	0005c583          	lbu	a1,0(a1)
    80003880:	02d7d7bb          	divuw	a5,a5,a3
    80003884:	f8b40323          	sb	a1,-122(s0)
    80003888:	3eeaf863          	bgeu	s5,a4,80003c78 <__printf+0x5f0>
    8000388c:	02d7f5bb          	remuw	a1,a5,a3
    80003890:	02059593          	slli	a1,a1,0x20
    80003894:	0205d593          	srli	a1,a1,0x20
    80003898:	00bd85b3          	add	a1,s11,a1
    8000389c:	0005c583          	lbu	a1,0(a1)
    800038a0:	02d7d7bb          	divuw	a5,a5,a3
    800038a4:	f8b403a3          	sb	a1,-121(s0)
    800038a8:	42eb7e63          	bgeu	s6,a4,80003ce4 <__printf+0x65c>
    800038ac:	02d7f5bb          	remuw	a1,a5,a3
    800038b0:	02059593          	slli	a1,a1,0x20
    800038b4:	0205d593          	srli	a1,a1,0x20
    800038b8:	00bd85b3          	add	a1,s11,a1
    800038bc:	0005c583          	lbu	a1,0(a1)
    800038c0:	02d7d7bb          	divuw	a5,a5,a3
    800038c4:	f8b40423          	sb	a1,-120(s0)
    800038c8:	42ebfc63          	bgeu	s7,a4,80003d00 <__printf+0x678>
    800038cc:	02079793          	slli	a5,a5,0x20
    800038d0:	0207d793          	srli	a5,a5,0x20
    800038d4:	00fd8db3          	add	s11,s11,a5
    800038d8:	000dc703          	lbu	a4,0(s11)
    800038dc:	00a00793          	li	a5,10
    800038e0:	00900c93          	li	s9,9
    800038e4:	f8e404a3          	sb	a4,-119(s0)
    800038e8:	00065c63          	bgez	a2,80003900 <__printf+0x278>
    800038ec:	f9040713          	addi	a4,s0,-112
    800038f0:	00f70733          	add	a4,a4,a5
    800038f4:	02d00693          	li	a3,45
    800038f8:	fed70823          	sb	a3,-16(a4)
    800038fc:	00078c93          	mv	s9,a5
    80003900:	f8040793          	addi	a5,s0,-128
    80003904:	01978cb3          	add	s9,a5,s9
    80003908:	f7f40d13          	addi	s10,s0,-129
    8000390c:	000cc503          	lbu	a0,0(s9)
    80003910:	fffc8c93          	addi	s9,s9,-1
    80003914:	00000097          	auipc	ra,0x0
    80003918:	b90080e7          	jalr	-1136(ra) # 800034a4 <consputc>
    8000391c:	ffac98e3          	bne	s9,s10,8000390c <__printf+0x284>
    80003920:	00094503          	lbu	a0,0(s2)
    80003924:	e00514e3          	bnez	a0,8000372c <__printf+0xa4>
    80003928:	1a0c1663          	bnez	s8,80003ad4 <__printf+0x44c>
    8000392c:	08813083          	ld	ra,136(sp)
    80003930:	08013403          	ld	s0,128(sp)
    80003934:	07813483          	ld	s1,120(sp)
    80003938:	07013903          	ld	s2,112(sp)
    8000393c:	06813983          	ld	s3,104(sp)
    80003940:	06013a03          	ld	s4,96(sp)
    80003944:	05813a83          	ld	s5,88(sp)
    80003948:	05013b03          	ld	s6,80(sp)
    8000394c:	04813b83          	ld	s7,72(sp)
    80003950:	04013c03          	ld	s8,64(sp)
    80003954:	03813c83          	ld	s9,56(sp)
    80003958:	03013d03          	ld	s10,48(sp)
    8000395c:	02813d83          	ld	s11,40(sp)
    80003960:	0d010113          	addi	sp,sp,208
    80003964:	00008067          	ret
    80003968:	07300713          	li	a4,115
    8000396c:	1ce78a63          	beq	a5,a4,80003b40 <__printf+0x4b8>
    80003970:	07800713          	li	a4,120
    80003974:	1ee79e63          	bne	a5,a4,80003b70 <__printf+0x4e8>
    80003978:	f7843783          	ld	a5,-136(s0)
    8000397c:	0007a703          	lw	a4,0(a5)
    80003980:	00878793          	addi	a5,a5,8
    80003984:	f6f43c23          	sd	a5,-136(s0)
    80003988:	28074263          	bltz	a4,80003c0c <__printf+0x584>
    8000398c:	00002d97          	auipc	s11,0x2
    80003990:	90cd8d93          	addi	s11,s11,-1780 # 80005298 <digits>
    80003994:	00f77793          	andi	a5,a4,15
    80003998:	00fd87b3          	add	a5,s11,a5
    8000399c:	0007c683          	lbu	a3,0(a5)
    800039a0:	00f00613          	li	a2,15
    800039a4:	0007079b          	sext.w	a5,a4
    800039a8:	f8d40023          	sb	a3,-128(s0)
    800039ac:	0047559b          	srliw	a1,a4,0x4
    800039b0:	0047569b          	srliw	a3,a4,0x4
    800039b4:	00000c93          	li	s9,0
    800039b8:	0ee65063          	bge	a2,a4,80003a98 <__printf+0x410>
    800039bc:	00f6f693          	andi	a3,a3,15
    800039c0:	00dd86b3          	add	a3,s11,a3
    800039c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800039c8:	0087d79b          	srliw	a5,a5,0x8
    800039cc:	00100c93          	li	s9,1
    800039d0:	f8d400a3          	sb	a3,-127(s0)
    800039d4:	0cb67263          	bgeu	a2,a1,80003a98 <__printf+0x410>
    800039d8:	00f7f693          	andi	a3,a5,15
    800039dc:	00dd86b3          	add	a3,s11,a3
    800039e0:	0006c583          	lbu	a1,0(a3)
    800039e4:	00f00613          	li	a2,15
    800039e8:	0047d69b          	srliw	a3,a5,0x4
    800039ec:	f8b40123          	sb	a1,-126(s0)
    800039f0:	0047d593          	srli	a1,a5,0x4
    800039f4:	28f67e63          	bgeu	a2,a5,80003c90 <__printf+0x608>
    800039f8:	00f6f693          	andi	a3,a3,15
    800039fc:	00dd86b3          	add	a3,s11,a3
    80003a00:	0006c503          	lbu	a0,0(a3)
    80003a04:	0087d813          	srli	a6,a5,0x8
    80003a08:	0087d69b          	srliw	a3,a5,0x8
    80003a0c:	f8a401a3          	sb	a0,-125(s0)
    80003a10:	28b67663          	bgeu	a2,a1,80003c9c <__printf+0x614>
    80003a14:	00f6f693          	andi	a3,a3,15
    80003a18:	00dd86b3          	add	a3,s11,a3
    80003a1c:	0006c583          	lbu	a1,0(a3)
    80003a20:	00c7d513          	srli	a0,a5,0xc
    80003a24:	00c7d69b          	srliw	a3,a5,0xc
    80003a28:	f8b40223          	sb	a1,-124(s0)
    80003a2c:	29067a63          	bgeu	a2,a6,80003cc0 <__printf+0x638>
    80003a30:	00f6f693          	andi	a3,a3,15
    80003a34:	00dd86b3          	add	a3,s11,a3
    80003a38:	0006c583          	lbu	a1,0(a3)
    80003a3c:	0107d813          	srli	a6,a5,0x10
    80003a40:	0107d69b          	srliw	a3,a5,0x10
    80003a44:	f8b402a3          	sb	a1,-123(s0)
    80003a48:	28a67263          	bgeu	a2,a0,80003ccc <__printf+0x644>
    80003a4c:	00f6f693          	andi	a3,a3,15
    80003a50:	00dd86b3          	add	a3,s11,a3
    80003a54:	0006c683          	lbu	a3,0(a3)
    80003a58:	0147d79b          	srliw	a5,a5,0x14
    80003a5c:	f8d40323          	sb	a3,-122(s0)
    80003a60:	21067663          	bgeu	a2,a6,80003c6c <__printf+0x5e4>
    80003a64:	02079793          	slli	a5,a5,0x20
    80003a68:	0207d793          	srli	a5,a5,0x20
    80003a6c:	00fd8db3          	add	s11,s11,a5
    80003a70:	000dc683          	lbu	a3,0(s11)
    80003a74:	00800793          	li	a5,8
    80003a78:	00700c93          	li	s9,7
    80003a7c:	f8d403a3          	sb	a3,-121(s0)
    80003a80:	00075c63          	bgez	a4,80003a98 <__printf+0x410>
    80003a84:	f9040713          	addi	a4,s0,-112
    80003a88:	00f70733          	add	a4,a4,a5
    80003a8c:	02d00693          	li	a3,45
    80003a90:	fed70823          	sb	a3,-16(a4)
    80003a94:	00078c93          	mv	s9,a5
    80003a98:	f8040793          	addi	a5,s0,-128
    80003a9c:	01978cb3          	add	s9,a5,s9
    80003aa0:	f7f40d13          	addi	s10,s0,-129
    80003aa4:	000cc503          	lbu	a0,0(s9)
    80003aa8:	fffc8c93          	addi	s9,s9,-1
    80003aac:	00000097          	auipc	ra,0x0
    80003ab0:	9f8080e7          	jalr	-1544(ra) # 800034a4 <consputc>
    80003ab4:	ff9d18e3          	bne	s10,s9,80003aa4 <__printf+0x41c>
    80003ab8:	0100006f          	j	80003ac8 <__printf+0x440>
    80003abc:	00000097          	auipc	ra,0x0
    80003ac0:	9e8080e7          	jalr	-1560(ra) # 800034a4 <consputc>
    80003ac4:	000c8493          	mv	s1,s9
    80003ac8:	00094503          	lbu	a0,0(s2)
    80003acc:	c60510e3          	bnez	a0,8000372c <__printf+0xa4>
    80003ad0:	e40c0ee3          	beqz	s8,8000392c <__printf+0x2a4>
    80003ad4:	00003517          	auipc	a0,0x3
    80003ad8:	77c50513          	addi	a0,a0,1916 # 80007250 <pr>
    80003adc:	00001097          	auipc	ra,0x1
    80003ae0:	94c080e7          	jalr	-1716(ra) # 80004428 <release>
    80003ae4:	e49ff06f          	j	8000392c <__printf+0x2a4>
    80003ae8:	f7843783          	ld	a5,-136(s0)
    80003aec:	03000513          	li	a0,48
    80003af0:	01000d13          	li	s10,16
    80003af4:	00878713          	addi	a4,a5,8
    80003af8:	0007bc83          	ld	s9,0(a5)
    80003afc:	f6e43c23          	sd	a4,-136(s0)
    80003b00:	00000097          	auipc	ra,0x0
    80003b04:	9a4080e7          	jalr	-1628(ra) # 800034a4 <consputc>
    80003b08:	07800513          	li	a0,120
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	998080e7          	jalr	-1640(ra) # 800034a4 <consputc>
    80003b14:	00001d97          	auipc	s11,0x1
    80003b18:	784d8d93          	addi	s11,s11,1924 # 80005298 <digits>
    80003b1c:	03ccd793          	srli	a5,s9,0x3c
    80003b20:	00fd87b3          	add	a5,s11,a5
    80003b24:	0007c503          	lbu	a0,0(a5)
    80003b28:	fffd0d1b          	addiw	s10,s10,-1
    80003b2c:	004c9c93          	slli	s9,s9,0x4
    80003b30:	00000097          	auipc	ra,0x0
    80003b34:	974080e7          	jalr	-1676(ra) # 800034a4 <consputc>
    80003b38:	fe0d12e3          	bnez	s10,80003b1c <__printf+0x494>
    80003b3c:	f8dff06f          	j	80003ac8 <__printf+0x440>
    80003b40:	f7843783          	ld	a5,-136(s0)
    80003b44:	0007bc83          	ld	s9,0(a5)
    80003b48:	00878793          	addi	a5,a5,8
    80003b4c:	f6f43c23          	sd	a5,-136(s0)
    80003b50:	000c9a63          	bnez	s9,80003b64 <__printf+0x4dc>
    80003b54:	1080006f          	j	80003c5c <__printf+0x5d4>
    80003b58:	001c8c93          	addi	s9,s9,1
    80003b5c:	00000097          	auipc	ra,0x0
    80003b60:	948080e7          	jalr	-1720(ra) # 800034a4 <consputc>
    80003b64:	000cc503          	lbu	a0,0(s9)
    80003b68:	fe0518e3          	bnez	a0,80003b58 <__printf+0x4d0>
    80003b6c:	f5dff06f          	j	80003ac8 <__printf+0x440>
    80003b70:	02500513          	li	a0,37
    80003b74:	00000097          	auipc	ra,0x0
    80003b78:	930080e7          	jalr	-1744(ra) # 800034a4 <consputc>
    80003b7c:	000c8513          	mv	a0,s9
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	924080e7          	jalr	-1756(ra) # 800034a4 <consputc>
    80003b88:	f41ff06f          	j	80003ac8 <__printf+0x440>
    80003b8c:	02500513          	li	a0,37
    80003b90:	00000097          	auipc	ra,0x0
    80003b94:	914080e7          	jalr	-1772(ra) # 800034a4 <consputc>
    80003b98:	f31ff06f          	j	80003ac8 <__printf+0x440>
    80003b9c:	00030513          	mv	a0,t1
    80003ba0:	00000097          	auipc	ra,0x0
    80003ba4:	7bc080e7          	jalr	1980(ra) # 8000435c <acquire>
    80003ba8:	b4dff06f          	j	800036f4 <__printf+0x6c>
    80003bac:	40c0053b          	negw	a0,a2
    80003bb0:	00a00713          	li	a4,10
    80003bb4:	02e576bb          	remuw	a3,a0,a4
    80003bb8:	00001d97          	auipc	s11,0x1
    80003bbc:	6e0d8d93          	addi	s11,s11,1760 # 80005298 <digits>
    80003bc0:	ff700593          	li	a1,-9
    80003bc4:	02069693          	slli	a3,a3,0x20
    80003bc8:	0206d693          	srli	a3,a3,0x20
    80003bcc:	00dd86b3          	add	a3,s11,a3
    80003bd0:	0006c683          	lbu	a3,0(a3)
    80003bd4:	02e557bb          	divuw	a5,a0,a4
    80003bd8:	f8d40023          	sb	a3,-128(s0)
    80003bdc:	10b65e63          	bge	a2,a1,80003cf8 <__printf+0x670>
    80003be0:	06300593          	li	a1,99
    80003be4:	02e7f6bb          	remuw	a3,a5,a4
    80003be8:	02069693          	slli	a3,a3,0x20
    80003bec:	0206d693          	srli	a3,a3,0x20
    80003bf0:	00dd86b3          	add	a3,s11,a3
    80003bf4:	0006c683          	lbu	a3,0(a3)
    80003bf8:	02e7d73b          	divuw	a4,a5,a4
    80003bfc:	00200793          	li	a5,2
    80003c00:	f8d400a3          	sb	a3,-127(s0)
    80003c04:	bca5ece3          	bltu	a1,a0,800037dc <__printf+0x154>
    80003c08:	ce5ff06f          	j	800038ec <__printf+0x264>
    80003c0c:	40e007bb          	negw	a5,a4
    80003c10:	00001d97          	auipc	s11,0x1
    80003c14:	688d8d93          	addi	s11,s11,1672 # 80005298 <digits>
    80003c18:	00f7f693          	andi	a3,a5,15
    80003c1c:	00dd86b3          	add	a3,s11,a3
    80003c20:	0006c583          	lbu	a1,0(a3)
    80003c24:	ff100613          	li	a2,-15
    80003c28:	0047d69b          	srliw	a3,a5,0x4
    80003c2c:	f8b40023          	sb	a1,-128(s0)
    80003c30:	0047d59b          	srliw	a1,a5,0x4
    80003c34:	0ac75e63          	bge	a4,a2,80003cf0 <__printf+0x668>
    80003c38:	00f6f693          	andi	a3,a3,15
    80003c3c:	00dd86b3          	add	a3,s11,a3
    80003c40:	0006c603          	lbu	a2,0(a3)
    80003c44:	00f00693          	li	a3,15
    80003c48:	0087d79b          	srliw	a5,a5,0x8
    80003c4c:	f8c400a3          	sb	a2,-127(s0)
    80003c50:	d8b6e4e3          	bltu	a3,a1,800039d8 <__printf+0x350>
    80003c54:	00200793          	li	a5,2
    80003c58:	e2dff06f          	j	80003a84 <__printf+0x3fc>
    80003c5c:	00001c97          	auipc	s9,0x1
    80003c60:	61cc8c93          	addi	s9,s9,1564 # 80005278 <_ZN15MemoryAllocator10DBlockSizeE+0x258>
    80003c64:	02800513          	li	a0,40
    80003c68:	ef1ff06f          	j	80003b58 <__printf+0x4d0>
    80003c6c:	00700793          	li	a5,7
    80003c70:	00600c93          	li	s9,6
    80003c74:	e0dff06f          	j	80003a80 <__printf+0x3f8>
    80003c78:	00700793          	li	a5,7
    80003c7c:	00600c93          	li	s9,6
    80003c80:	c69ff06f          	j	800038e8 <__printf+0x260>
    80003c84:	00300793          	li	a5,3
    80003c88:	00200c93          	li	s9,2
    80003c8c:	c5dff06f          	j	800038e8 <__printf+0x260>
    80003c90:	00300793          	li	a5,3
    80003c94:	00200c93          	li	s9,2
    80003c98:	de9ff06f          	j	80003a80 <__printf+0x3f8>
    80003c9c:	00400793          	li	a5,4
    80003ca0:	00300c93          	li	s9,3
    80003ca4:	dddff06f          	j	80003a80 <__printf+0x3f8>
    80003ca8:	00400793          	li	a5,4
    80003cac:	00300c93          	li	s9,3
    80003cb0:	c39ff06f          	j	800038e8 <__printf+0x260>
    80003cb4:	00500793          	li	a5,5
    80003cb8:	00400c93          	li	s9,4
    80003cbc:	c2dff06f          	j	800038e8 <__printf+0x260>
    80003cc0:	00500793          	li	a5,5
    80003cc4:	00400c93          	li	s9,4
    80003cc8:	db9ff06f          	j	80003a80 <__printf+0x3f8>
    80003ccc:	00600793          	li	a5,6
    80003cd0:	00500c93          	li	s9,5
    80003cd4:	dadff06f          	j	80003a80 <__printf+0x3f8>
    80003cd8:	00600793          	li	a5,6
    80003cdc:	00500c93          	li	s9,5
    80003ce0:	c09ff06f          	j	800038e8 <__printf+0x260>
    80003ce4:	00800793          	li	a5,8
    80003ce8:	00700c93          	li	s9,7
    80003cec:	bfdff06f          	j	800038e8 <__printf+0x260>
    80003cf0:	00100793          	li	a5,1
    80003cf4:	d91ff06f          	j	80003a84 <__printf+0x3fc>
    80003cf8:	00100793          	li	a5,1
    80003cfc:	bf1ff06f          	j	800038ec <__printf+0x264>
    80003d00:	00900793          	li	a5,9
    80003d04:	00800c93          	li	s9,8
    80003d08:	be1ff06f          	j	800038e8 <__printf+0x260>
    80003d0c:	00001517          	auipc	a0,0x1
    80003d10:	57450513          	addi	a0,a0,1396 # 80005280 <_ZN15MemoryAllocator10DBlockSizeE+0x260>
    80003d14:	00000097          	auipc	ra,0x0
    80003d18:	918080e7          	jalr	-1768(ra) # 8000362c <panic>

0000000080003d1c <printfinit>:
    80003d1c:	fe010113          	addi	sp,sp,-32
    80003d20:	00813823          	sd	s0,16(sp)
    80003d24:	00913423          	sd	s1,8(sp)
    80003d28:	00113c23          	sd	ra,24(sp)
    80003d2c:	02010413          	addi	s0,sp,32
    80003d30:	00003497          	auipc	s1,0x3
    80003d34:	52048493          	addi	s1,s1,1312 # 80007250 <pr>
    80003d38:	00048513          	mv	a0,s1
    80003d3c:	00001597          	auipc	a1,0x1
    80003d40:	55458593          	addi	a1,a1,1364 # 80005290 <_ZN15MemoryAllocator10DBlockSizeE+0x270>
    80003d44:	00000097          	auipc	ra,0x0
    80003d48:	5f4080e7          	jalr	1524(ra) # 80004338 <initlock>
    80003d4c:	01813083          	ld	ra,24(sp)
    80003d50:	01013403          	ld	s0,16(sp)
    80003d54:	0004ac23          	sw	zero,24(s1)
    80003d58:	00813483          	ld	s1,8(sp)
    80003d5c:	02010113          	addi	sp,sp,32
    80003d60:	00008067          	ret

0000000080003d64 <uartinit>:
    80003d64:	ff010113          	addi	sp,sp,-16
    80003d68:	00813423          	sd	s0,8(sp)
    80003d6c:	01010413          	addi	s0,sp,16
    80003d70:	100007b7          	lui	a5,0x10000
    80003d74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003d78:	f8000713          	li	a4,-128
    80003d7c:	00e781a3          	sb	a4,3(a5)
    80003d80:	00300713          	li	a4,3
    80003d84:	00e78023          	sb	a4,0(a5)
    80003d88:	000780a3          	sb	zero,1(a5)
    80003d8c:	00e781a3          	sb	a4,3(a5)
    80003d90:	00700693          	li	a3,7
    80003d94:	00d78123          	sb	a3,2(a5)
    80003d98:	00e780a3          	sb	a4,1(a5)
    80003d9c:	00813403          	ld	s0,8(sp)
    80003da0:	01010113          	addi	sp,sp,16
    80003da4:	00008067          	ret

0000000080003da8 <uartputc>:
    80003da8:	00002797          	auipc	a5,0x2
    80003dac:	2007a783          	lw	a5,512(a5) # 80005fa8 <panicked>
    80003db0:	00078463          	beqz	a5,80003db8 <uartputc+0x10>
    80003db4:	0000006f          	j	80003db4 <uartputc+0xc>
    80003db8:	fd010113          	addi	sp,sp,-48
    80003dbc:	02813023          	sd	s0,32(sp)
    80003dc0:	00913c23          	sd	s1,24(sp)
    80003dc4:	01213823          	sd	s2,16(sp)
    80003dc8:	01313423          	sd	s3,8(sp)
    80003dcc:	02113423          	sd	ra,40(sp)
    80003dd0:	03010413          	addi	s0,sp,48
    80003dd4:	00002917          	auipc	s2,0x2
    80003dd8:	1dc90913          	addi	s2,s2,476 # 80005fb0 <uart_tx_r>
    80003ddc:	00093783          	ld	a5,0(s2)
    80003de0:	00002497          	auipc	s1,0x2
    80003de4:	1d848493          	addi	s1,s1,472 # 80005fb8 <uart_tx_w>
    80003de8:	0004b703          	ld	a4,0(s1)
    80003dec:	02078693          	addi	a3,a5,32
    80003df0:	00050993          	mv	s3,a0
    80003df4:	02e69c63          	bne	a3,a4,80003e2c <uartputc+0x84>
    80003df8:	00001097          	auipc	ra,0x1
    80003dfc:	834080e7          	jalr	-1996(ra) # 8000462c <push_on>
    80003e00:	00093783          	ld	a5,0(s2)
    80003e04:	0004b703          	ld	a4,0(s1)
    80003e08:	02078793          	addi	a5,a5,32
    80003e0c:	00e79463          	bne	a5,a4,80003e14 <uartputc+0x6c>
    80003e10:	0000006f          	j	80003e10 <uartputc+0x68>
    80003e14:	00001097          	auipc	ra,0x1
    80003e18:	88c080e7          	jalr	-1908(ra) # 800046a0 <pop_on>
    80003e1c:	00093783          	ld	a5,0(s2)
    80003e20:	0004b703          	ld	a4,0(s1)
    80003e24:	02078693          	addi	a3,a5,32
    80003e28:	fce688e3          	beq	a3,a4,80003df8 <uartputc+0x50>
    80003e2c:	01f77693          	andi	a3,a4,31
    80003e30:	00003597          	auipc	a1,0x3
    80003e34:	44058593          	addi	a1,a1,1088 # 80007270 <uart_tx_buf>
    80003e38:	00d586b3          	add	a3,a1,a3
    80003e3c:	00170713          	addi	a4,a4,1
    80003e40:	01368023          	sb	s3,0(a3)
    80003e44:	00e4b023          	sd	a4,0(s1)
    80003e48:	10000637          	lui	a2,0x10000
    80003e4c:	02f71063          	bne	a4,a5,80003e6c <uartputc+0xc4>
    80003e50:	0340006f          	j	80003e84 <uartputc+0xdc>
    80003e54:	00074703          	lbu	a4,0(a4)
    80003e58:	00f93023          	sd	a5,0(s2)
    80003e5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003e60:	00093783          	ld	a5,0(s2)
    80003e64:	0004b703          	ld	a4,0(s1)
    80003e68:	00f70e63          	beq	a4,a5,80003e84 <uartputc+0xdc>
    80003e6c:	00564683          	lbu	a3,5(a2)
    80003e70:	01f7f713          	andi	a4,a5,31
    80003e74:	00e58733          	add	a4,a1,a4
    80003e78:	0206f693          	andi	a3,a3,32
    80003e7c:	00178793          	addi	a5,a5,1
    80003e80:	fc069ae3          	bnez	a3,80003e54 <uartputc+0xac>
    80003e84:	02813083          	ld	ra,40(sp)
    80003e88:	02013403          	ld	s0,32(sp)
    80003e8c:	01813483          	ld	s1,24(sp)
    80003e90:	01013903          	ld	s2,16(sp)
    80003e94:	00813983          	ld	s3,8(sp)
    80003e98:	03010113          	addi	sp,sp,48
    80003e9c:	00008067          	ret

0000000080003ea0 <uartputc_sync>:
    80003ea0:	ff010113          	addi	sp,sp,-16
    80003ea4:	00813423          	sd	s0,8(sp)
    80003ea8:	01010413          	addi	s0,sp,16
    80003eac:	00002717          	auipc	a4,0x2
    80003eb0:	0fc72703          	lw	a4,252(a4) # 80005fa8 <panicked>
    80003eb4:	02071663          	bnez	a4,80003ee0 <uartputc_sync+0x40>
    80003eb8:	00050793          	mv	a5,a0
    80003ebc:	100006b7          	lui	a3,0x10000
    80003ec0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003ec4:	02077713          	andi	a4,a4,32
    80003ec8:	fe070ce3          	beqz	a4,80003ec0 <uartputc_sync+0x20>
    80003ecc:	0ff7f793          	andi	a5,a5,255
    80003ed0:	00f68023          	sb	a5,0(a3)
    80003ed4:	00813403          	ld	s0,8(sp)
    80003ed8:	01010113          	addi	sp,sp,16
    80003edc:	00008067          	ret
    80003ee0:	0000006f          	j	80003ee0 <uartputc_sync+0x40>

0000000080003ee4 <uartstart>:
    80003ee4:	ff010113          	addi	sp,sp,-16
    80003ee8:	00813423          	sd	s0,8(sp)
    80003eec:	01010413          	addi	s0,sp,16
    80003ef0:	00002617          	auipc	a2,0x2
    80003ef4:	0c060613          	addi	a2,a2,192 # 80005fb0 <uart_tx_r>
    80003ef8:	00002517          	auipc	a0,0x2
    80003efc:	0c050513          	addi	a0,a0,192 # 80005fb8 <uart_tx_w>
    80003f00:	00063783          	ld	a5,0(a2)
    80003f04:	00053703          	ld	a4,0(a0)
    80003f08:	04f70263          	beq	a4,a5,80003f4c <uartstart+0x68>
    80003f0c:	100005b7          	lui	a1,0x10000
    80003f10:	00003817          	auipc	a6,0x3
    80003f14:	36080813          	addi	a6,a6,864 # 80007270 <uart_tx_buf>
    80003f18:	01c0006f          	j	80003f34 <uartstart+0x50>
    80003f1c:	0006c703          	lbu	a4,0(a3)
    80003f20:	00f63023          	sd	a5,0(a2)
    80003f24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003f28:	00063783          	ld	a5,0(a2)
    80003f2c:	00053703          	ld	a4,0(a0)
    80003f30:	00f70e63          	beq	a4,a5,80003f4c <uartstart+0x68>
    80003f34:	01f7f713          	andi	a4,a5,31
    80003f38:	00e806b3          	add	a3,a6,a4
    80003f3c:	0055c703          	lbu	a4,5(a1)
    80003f40:	00178793          	addi	a5,a5,1
    80003f44:	02077713          	andi	a4,a4,32
    80003f48:	fc071ae3          	bnez	a4,80003f1c <uartstart+0x38>
    80003f4c:	00813403          	ld	s0,8(sp)
    80003f50:	01010113          	addi	sp,sp,16
    80003f54:	00008067          	ret

0000000080003f58 <uartgetc>:
    80003f58:	ff010113          	addi	sp,sp,-16
    80003f5c:	00813423          	sd	s0,8(sp)
    80003f60:	01010413          	addi	s0,sp,16
    80003f64:	10000737          	lui	a4,0x10000
    80003f68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003f6c:	0017f793          	andi	a5,a5,1
    80003f70:	00078c63          	beqz	a5,80003f88 <uartgetc+0x30>
    80003f74:	00074503          	lbu	a0,0(a4)
    80003f78:	0ff57513          	andi	a0,a0,255
    80003f7c:	00813403          	ld	s0,8(sp)
    80003f80:	01010113          	addi	sp,sp,16
    80003f84:	00008067          	ret
    80003f88:	fff00513          	li	a0,-1
    80003f8c:	ff1ff06f          	j	80003f7c <uartgetc+0x24>

0000000080003f90 <uartintr>:
    80003f90:	100007b7          	lui	a5,0x10000
    80003f94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003f98:	0017f793          	andi	a5,a5,1
    80003f9c:	0a078463          	beqz	a5,80004044 <uartintr+0xb4>
    80003fa0:	fe010113          	addi	sp,sp,-32
    80003fa4:	00813823          	sd	s0,16(sp)
    80003fa8:	00913423          	sd	s1,8(sp)
    80003fac:	00113c23          	sd	ra,24(sp)
    80003fb0:	02010413          	addi	s0,sp,32
    80003fb4:	100004b7          	lui	s1,0x10000
    80003fb8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003fbc:	0ff57513          	andi	a0,a0,255
    80003fc0:	fffff097          	auipc	ra,0xfffff
    80003fc4:	534080e7          	jalr	1332(ra) # 800034f4 <consoleintr>
    80003fc8:	0054c783          	lbu	a5,5(s1)
    80003fcc:	0017f793          	andi	a5,a5,1
    80003fd0:	fe0794e3          	bnez	a5,80003fb8 <uartintr+0x28>
    80003fd4:	00002617          	auipc	a2,0x2
    80003fd8:	fdc60613          	addi	a2,a2,-36 # 80005fb0 <uart_tx_r>
    80003fdc:	00002517          	auipc	a0,0x2
    80003fe0:	fdc50513          	addi	a0,a0,-36 # 80005fb8 <uart_tx_w>
    80003fe4:	00063783          	ld	a5,0(a2)
    80003fe8:	00053703          	ld	a4,0(a0)
    80003fec:	04f70263          	beq	a4,a5,80004030 <uartintr+0xa0>
    80003ff0:	100005b7          	lui	a1,0x10000
    80003ff4:	00003817          	auipc	a6,0x3
    80003ff8:	27c80813          	addi	a6,a6,636 # 80007270 <uart_tx_buf>
    80003ffc:	01c0006f          	j	80004018 <uartintr+0x88>
    80004000:	0006c703          	lbu	a4,0(a3)
    80004004:	00f63023          	sd	a5,0(a2)
    80004008:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000400c:	00063783          	ld	a5,0(a2)
    80004010:	00053703          	ld	a4,0(a0)
    80004014:	00f70e63          	beq	a4,a5,80004030 <uartintr+0xa0>
    80004018:	01f7f713          	andi	a4,a5,31
    8000401c:	00e806b3          	add	a3,a6,a4
    80004020:	0055c703          	lbu	a4,5(a1)
    80004024:	00178793          	addi	a5,a5,1
    80004028:	02077713          	andi	a4,a4,32
    8000402c:	fc071ae3          	bnez	a4,80004000 <uartintr+0x70>
    80004030:	01813083          	ld	ra,24(sp)
    80004034:	01013403          	ld	s0,16(sp)
    80004038:	00813483          	ld	s1,8(sp)
    8000403c:	02010113          	addi	sp,sp,32
    80004040:	00008067          	ret
    80004044:	00002617          	auipc	a2,0x2
    80004048:	f6c60613          	addi	a2,a2,-148 # 80005fb0 <uart_tx_r>
    8000404c:	00002517          	auipc	a0,0x2
    80004050:	f6c50513          	addi	a0,a0,-148 # 80005fb8 <uart_tx_w>
    80004054:	00063783          	ld	a5,0(a2)
    80004058:	00053703          	ld	a4,0(a0)
    8000405c:	04f70263          	beq	a4,a5,800040a0 <uartintr+0x110>
    80004060:	100005b7          	lui	a1,0x10000
    80004064:	00003817          	auipc	a6,0x3
    80004068:	20c80813          	addi	a6,a6,524 # 80007270 <uart_tx_buf>
    8000406c:	01c0006f          	j	80004088 <uartintr+0xf8>
    80004070:	0006c703          	lbu	a4,0(a3)
    80004074:	00f63023          	sd	a5,0(a2)
    80004078:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000407c:	00063783          	ld	a5,0(a2)
    80004080:	00053703          	ld	a4,0(a0)
    80004084:	02f70063          	beq	a4,a5,800040a4 <uartintr+0x114>
    80004088:	01f7f713          	andi	a4,a5,31
    8000408c:	00e806b3          	add	a3,a6,a4
    80004090:	0055c703          	lbu	a4,5(a1)
    80004094:	00178793          	addi	a5,a5,1
    80004098:	02077713          	andi	a4,a4,32
    8000409c:	fc071ae3          	bnez	a4,80004070 <uartintr+0xe0>
    800040a0:	00008067          	ret
    800040a4:	00008067          	ret

00000000800040a8 <kinit>:
    800040a8:	fc010113          	addi	sp,sp,-64
    800040ac:	02913423          	sd	s1,40(sp)
    800040b0:	fffff7b7          	lui	a5,0xfffff
    800040b4:	00004497          	auipc	s1,0x4
    800040b8:	1db48493          	addi	s1,s1,475 # 8000828f <end+0xfff>
    800040bc:	02813823          	sd	s0,48(sp)
    800040c0:	01313c23          	sd	s3,24(sp)
    800040c4:	00f4f4b3          	and	s1,s1,a5
    800040c8:	02113c23          	sd	ra,56(sp)
    800040cc:	03213023          	sd	s2,32(sp)
    800040d0:	01413823          	sd	s4,16(sp)
    800040d4:	01513423          	sd	s5,8(sp)
    800040d8:	04010413          	addi	s0,sp,64
    800040dc:	000017b7          	lui	a5,0x1
    800040e0:	01100993          	li	s3,17
    800040e4:	00f487b3          	add	a5,s1,a5
    800040e8:	01b99993          	slli	s3,s3,0x1b
    800040ec:	06f9e063          	bltu	s3,a5,8000414c <kinit+0xa4>
    800040f0:	00003a97          	auipc	s5,0x3
    800040f4:	1a0a8a93          	addi	s5,s5,416 # 80007290 <end>
    800040f8:	0754ec63          	bltu	s1,s5,80004170 <kinit+0xc8>
    800040fc:	0734fa63          	bgeu	s1,s3,80004170 <kinit+0xc8>
    80004100:	00088a37          	lui	s4,0x88
    80004104:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004108:	00002917          	auipc	s2,0x2
    8000410c:	eb890913          	addi	s2,s2,-328 # 80005fc0 <kmem>
    80004110:	00ca1a13          	slli	s4,s4,0xc
    80004114:	0140006f          	j	80004128 <kinit+0x80>
    80004118:	000017b7          	lui	a5,0x1
    8000411c:	00f484b3          	add	s1,s1,a5
    80004120:	0554e863          	bltu	s1,s5,80004170 <kinit+0xc8>
    80004124:	0534f663          	bgeu	s1,s3,80004170 <kinit+0xc8>
    80004128:	00001637          	lui	a2,0x1
    8000412c:	00100593          	li	a1,1
    80004130:	00048513          	mv	a0,s1
    80004134:	00000097          	auipc	ra,0x0
    80004138:	5e4080e7          	jalr	1508(ra) # 80004718 <__memset>
    8000413c:	00093783          	ld	a5,0(s2)
    80004140:	00f4b023          	sd	a5,0(s1)
    80004144:	00993023          	sd	s1,0(s2)
    80004148:	fd4498e3          	bne	s1,s4,80004118 <kinit+0x70>
    8000414c:	03813083          	ld	ra,56(sp)
    80004150:	03013403          	ld	s0,48(sp)
    80004154:	02813483          	ld	s1,40(sp)
    80004158:	02013903          	ld	s2,32(sp)
    8000415c:	01813983          	ld	s3,24(sp)
    80004160:	01013a03          	ld	s4,16(sp)
    80004164:	00813a83          	ld	s5,8(sp)
    80004168:	04010113          	addi	sp,sp,64
    8000416c:	00008067          	ret
    80004170:	00001517          	auipc	a0,0x1
    80004174:	14050513          	addi	a0,a0,320 # 800052b0 <digits+0x18>
    80004178:	fffff097          	auipc	ra,0xfffff
    8000417c:	4b4080e7          	jalr	1204(ra) # 8000362c <panic>

0000000080004180 <freerange>:
    80004180:	fc010113          	addi	sp,sp,-64
    80004184:	000017b7          	lui	a5,0x1
    80004188:	02913423          	sd	s1,40(sp)
    8000418c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004190:	009504b3          	add	s1,a0,s1
    80004194:	fffff537          	lui	a0,0xfffff
    80004198:	02813823          	sd	s0,48(sp)
    8000419c:	02113c23          	sd	ra,56(sp)
    800041a0:	03213023          	sd	s2,32(sp)
    800041a4:	01313c23          	sd	s3,24(sp)
    800041a8:	01413823          	sd	s4,16(sp)
    800041ac:	01513423          	sd	s5,8(sp)
    800041b0:	01613023          	sd	s6,0(sp)
    800041b4:	04010413          	addi	s0,sp,64
    800041b8:	00a4f4b3          	and	s1,s1,a0
    800041bc:	00f487b3          	add	a5,s1,a5
    800041c0:	06f5e463          	bltu	a1,a5,80004228 <freerange+0xa8>
    800041c4:	00003a97          	auipc	s5,0x3
    800041c8:	0cca8a93          	addi	s5,s5,204 # 80007290 <end>
    800041cc:	0954e263          	bltu	s1,s5,80004250 <freerange+0xd0>
    800041d0:	01100993          	li	s3,17
    800041d4:	01b99993          	slli	s3,s3,0x1b
    800041d8:	0734fc63          	bgeu	s1,s3,80004250 <freerange+0xd0>
    800041dc:	00058a13          	mv	s4,a1
    800041e0:	00002917          	auipc	s2,0x2
    800041e4:	de090913          	addi	s2,s2,-544 # 80005fc0 <kmem>
    800041e8:	00002b37          	lui	s6,0x2
    800041ec:	0140006f          	j	80004200 <freerange+0x80>
    800041f0:	000017b7          	lui	a5,0x1
    800041f4:	00f484b3          	add	s1,s1,a5
    800041f8:	0554ec63          	bltu	s1,s5,80004250 <freerange+0xd0>
    800041fc:	0534fa63          	bgeu	s1,s3,80004250 <freerange+0xd0>
    80004200:	00001637          	lui	a2,0x1
    80004204:	00100593          	li	a1,1
    80004208:	00048513          	mv	a0,s1
    8000420c:	00000097          	auipc	ra,0x0
    80004210:	50c080e7          	jalr	1292(ra) # 80004718 <__memset>
    80004214:	00093703          	ld	a4,0(s2)
    80004218:	016487b3          	add	a5,s1,s6
    8000421c:	00e4b023          	sd	a4,0(s1)
    80004220:	00993023          	sd	s1,0(s2)
    80004224:	fcfa76e3          	bgeu	s4,a5,800041f0 <freerange+0x70>
    80004228:	03813083          	ld	ra,56(sp)
    8000422c:	03013403          	ld	s0,48(sp)
    80004230:	02813483          	ld	s1,40(sp)
    80004234:	02013903          	ld	s2,32(sp)
    80004238:	01813983          	ld	s3,24(sp)
    8000423c:	01013a03          	ld	s4,16(sp)
    80004240:	00813a83          	ld	s5,8(sp)
    80004244:	00013b03          	ld	s6,0(sp)
    80004248:	04010113          	addi	sp,sp,64
    8000424c:	00008067          	ret
    80004250:	00001517          	auipc	a0,0x1
    80004254:	06050513          	addi	a0,a0,96 # 800052b0 <digits+0x18>
    80004258:	fffff097          	auipc	ra,0xfffff
    8000425c:	3d4080e7          	jalr	980(ra) # 8000362c <panic>

0000000080004260 <kfree>:
    80004260:	fe010113          	addi	sp,sp,-32
    80004264:	00813823          	sd	s0,16(sp)
    80004268:	00113c23          	sd	ra,24(sp)
    8000426c:	00913423          	sd	s1,8(sp)
    80004270:	02010413          	addi	s0,sp,32
    80004274:	03451793          	slli	a5,a0,0x34
    80004278:	04079c63          	bnez	a5,800042d0 <kfree+0x70>
    8000427c:	00003797          	auipc	a5,0x3
    80004280:	01478793          	addi	a5,a5,20 # 80007290 <end>
    80004284:	00050493          	mv	s1,a0
    80004288:	04f56463          	bltu	a0,a5,800042d0 <kfree+0x70>
    8000428c:	01100793          	li	a5,17
    80004290:	01b79793          	slli	a5,a5,0x1b
    80004294:	02f57e63          	bgeu	a0,a5,800042d0 <kfree+0x70>
    80004298:	00001637          	lui	a2,0x1
    8000429c:	00100593          	li	a1,1
    800042a0:	00000097          	auipc	ra,0x0
    800042a4:	478080e7          	jalr	1144(ra) # 80004718 <__memset>
    800042a8:	00002797          	auipc	a5,0x2
    800042ac:	d1878793          	addi	a5,a5,-744 # 80005fc0 <kmem>
    800042b0:	0007b703          	ld	a4,0(a5)
    800042b4:	01813083          	ld	ra,24(sp)
    800042b8:	01013403          	ld	s0,16(sp)
    800042bc:	00e4b023          	sd	a4,0(s1)
    800042c0:	0097b023          	sd	s1,0(a5)
    800042c4:	00813483          	ld	s1,8(sp)
    800042c8:	02010113          	addi	sp,sp,32
    800042cc:	00008067          	ret
    800042d0:	00001517          	auipc	a0,0x1
    800042d4:	fe050513          	addi	a0,a0,-32 # 800052b0 <digits+0x18>
    800042d8:	fffff097          	auipc	ra,0xfffff
    800042dc:	354080e7          	jalr	852(ra) # 8000362c <panic>

00000000800042e0 <kalloc>:
    800042e0:	fe010113          	addi	sp,sp,-32
    800042e4:	00813823          	sd	s0,16(sp)
    800042e8:	00913423          	sd	s1,8(sp)
    800042ec:	00113c23          	sd	ra,24(sp)
    800042f0:	02010413          	addi	s0,sp,32
    800042f4:	00002797          	auipc	a5,0x2
    800042f8:	ccc78793          	addi	a5,a5,-820 # 80005fc0 <kmem>
    800042fc:	0007b483          	ld	s1,0(a5)
    80004300:	02048063          	beqz	s1,80004320 <kalloc+0x40>
    80004304:	0004b703          	ld	a4,0(s1)
    80004308:	00001637          	lui	a2,0x1
    8000430c:	00500593          	li	a1,5
    80004310:	00048513          	mv	a0,s1
    80004314:	00e7b023          	sd	a4,0(a5)
    80004318:	00000097          	auipc	ra,0x0
    8000431c:	400080e7          	jalr	1024(ra) # 80004718 <__memset>
    80004320:	01813083          	ld	ra,24(sp)
    80004324:	01013403          	ld	s0,16(sp)
    80004328:	00048513          	mv	a0,s1
    8000432c:	00813483          	ld	s1,8(sp)
    80004330:	02010113          	addi	sp,sp,32
    80004334:	00008067          	ret

0000000080004338 <initlock>:
    80004338:	ff010113          	addi	sp,sp,-16
    8000433c:	00813423          	sd	s0,8(sp)
    80004340:	01010413          	addi	s0,sp,16
    80004344:	00813403          	ld	s0,8(sp)
    80004348:	00b53423          	sd	a1,8(a0)
    8000434c:	00052023          	sw	zero,0(a0)
    80004350:	00053823          	sd	zero,16(a0)
    80004354:	01010113          	addi	sp,sp,16
    80004358:	00008067          	ret

000000008000435c <acquire>:
    8000435c:	fe010113          	addi	sp,sp,-32
    80004360:	00813823          	sd	s0,16(sp)
    80004364:	00913423          	sd	s1,8(sp)
    80004368:	00113c23          	sd	ra,24(sp)
    8000436c:	01213023          	sd	s2,0(sp)
    80004370:	02010413          	addi	s0,sp,32
    80004374:	00050493          	mv	s1,a0
    80004378:	10002973          	csrr	s2,sstatus
    8000437c:	100027f3          	csrr	a5,sstatus
    80004380:	ffd7f793          	andi	a5,a5,-3
    80004384:	10079073          	csrw	sstatus,a5
    80004388:	fffff097          	auipc	ra,0xfffff
    8000438c:	8e0080e7          	jalr	-1824(ra) # 80002c68 <mycpu>
    80004390:	07852783          	lw	a5,120(a0)
    80004394:	06078e63          	beqz	a5,80004410 <acquire+0xb4>
    80004398:	fffff097          	auipc	ra,0xfffff
    8000439c:	8d0080e7          	jalr	-1840(ra) # 80002c68 <mycpu>
    800043a0:	07852783          	lw	a5,120(a0)
    800043a4:	0004a703          	lw	a4,0(s1)
    800043a8:	0017879b          	addiw	a5,a5,1
    800043ac:	06f52c23          	sw	a5,120(a0)
    800043b0:	04071063          	bnez	a4,800043f0 <acquire+0x94>
    800043b4:	00100713          	li	a4,1
    800043b8:	00070793          	mv	a5,a4
    800043bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800043c0:	0007879b          	sext.w	a5,a5
    800043c4:	fe079ae3          	bnez	a5,800043b8 <acquire+0x5c>
    800043c8:	0ff0000f          	fence
    800043cc:	fffff097          	auipc	ra,0xfffff
    800043d0:	89c080e7          	jalr	-1892(ra) # 80002c68 <mycpu>
    800043d4:	01813083          	ld	ra,24(sp)
    800043d8:	01013403          	ld	s0,16(sp)
    800043dc:	00a4b823          	sd	a0,16(s1)
    800043e0:	00013903          	ld	s2,0(sp)
    800043e4:	00813483          	ld	s1,8(sp)
    800043e8:	02010113          	addi	sp,sp,32
    800043ec:	00008067          	ret
    800043f0:	0104b903          	ld	s2,16(s1)
    800043f4:	fffff097          	auipc	ra,0xfffff
    800043f8:	874080e7          	jalr	-1932(ra) # 80002c68 <mycpu>
    800043fc:	faa91ce3          	bne	s2,a0,800043b4 <acquire+0x58>
    80004400:	00001517          	auipc	a0,0x1
    80004404:	eb850513          	addi	a0,a0,-328 # 800052b8 <digits+0x20>
    80004408:	fffff097          	auipc	ra,0xfffff
    8000440c:	224080e7          	jalr	548(ra) # 8000362c <panic>
    80004410:	00195913          	srli	s2,s2,0x1
    80004414:	fffff097          	auipc	ra,0xfffff
    80004418:	854080e7          	jalr	-1964(ra) # 80002c68 <mycpu>
    8000441c:	00197913          	andi	s2,s2,1
    80004420:	07252e23          	sw	s2,124(a0)
    80004424:	f75ff06f          	j	80004398 <acquire+0x3c>

0000000080004428 <release>:
    80004428:	fe010113          	addi	sp,sp,-32
    8000442c:	00813823          	sd	s0,16(sp)
    80004430:	00113c23          	sd	ra,24(sp)
    80004434:	00913423          	sd	s1,8(sp)
    80004438:	01213023          	sd	s2,0(sp)
    8000443c:	02010413          	addi	s0,sp,32
    80004440:	00052783          	lw	a5,0(a0)
    80004444:	00079a63          	bnez	a5,80004458 <release+0x30>
    80004448:	00001517          	auipc	a0,0x1
    8000444c:	e7850513          	addi	a0,a0,-392 # 800052c0 <digits+0x28>
    80004450:	fffff097          	auipc	ra,0xfffff
    80004454:	1dc080e7          	jalr	476(ra) # 8000362c <panic>
    80004458:	01053903          	ld	s2,16(a0)
    8000445c:	00050493          	mv	s1,a0
    80004460:	fffff097          	auipc	ra,0xfffff
    80004464:	808080e7          	jalr	-2040(ra) # 80002c68 <mycpu>
    80004468:	fea910e3          	bne	s2,a0,80004448 <release+0x20>
    8000446c:	0004b823          	sd	zero,16(s1)
    80004470:	0ff0000f          	fence
    80004474:	0f50000f          	fence	iorw,ow
    80004478:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000447c:	ffffe097          	auipc	ra,0xffffe
    80004480:	7ec080e7          	jalr	2028(ra) # 80002c68 <mycpu>
    80004484:	100027f3          	csrr	a5,sstatus
    80004488:	0027f793          	andi	a5,a5,2
    8000448c:	04079a63          	bnez	a5,800044e0 <release+0xb8>
    80004490:	07852783          	lw	a5,120(a0)
    80004494:	02f05e63          	blez	a5,800044d0 <release+0xa8>
    80004498:	fff7871b          	addiw	a4,a5,-1
    8000449c:	06e52c23          	sw	a4,120(a0)
    800044a0:	00071c63          	bnez	a4,800044b8 <release+0x90>
    800044a4:	07c52783          	lw	a5,124(a0)
    800044a8:	00078863          	beqz	a5,800044b8 <release+0x90>
    800044ac:	100027f3          	csrr	a5,sstatus
    800044b0:	0027e793          	ori	a5,a5,2
    800044b4:	10079073          	csrw	sstatus,a5
    800044b8:	01813083          	ld	ra,24(sp)
    800044bc:	01013403          	ld	s0,16(sp)
    800044c0:	00813483          	ld	s1,8(sp)
    800044c4:	00013903          	ld	s2,0(sp)
    800044c8:	02010113          	addi	sp,sp,32
    800044cc:	00008067          	ret
    800044d0:	00001517          	auipc	a0,0x1
    800044d4:	e1050513          	addi	a0,a0,-496 # 800052e0 <digits+0x48>
    800044d8:	fffff097          	auipc	ra,0xfffff
    800044dc:	154080e7          	jalr	340(ra) # 8000362c <panic>
    800044e0:	00001517          	auipc	a0,0x1
    800044e4:	de850513          	addi	a0,a0,-536 # 800052c8 <digits+0x30>
    800044e8:	fffff097          	auipc	ra,0xfffff
    800044ec:	144080e7          	jalr	324(ra) # 8000362c <panic>

00000000800044f0 <holding>:
    800044f0:	00052783          	lw	a5,0(a0)
    800044f4:	00079663          	bnez	a5,80004500 <holding+0x10>
    800044f8:	00000513          	li	a0,0
    800044fc:	00008067          	ret
    80004500:	fe010113          	addi	sp,sp,-32
    80004504:	00813823          	sd	s0,16(sp)
    80004508:	00913423          	sd	s1,8(sp)
    8000450c:	00113c23          	sd	ra,24(sp)
    80004510:	02010413          	addi	s0,sp,32
    80004514:	01053483          	ld	s1,16(a0)
    80004518:	ffffe097          	auipc	ra,0xffffe
    8000451c:	750080e7          	jalr	1872(ra) # 80002c68 <mycpu>
    80004520:	01813083          	ld	ra,24(sp)
    80004524:	01013403          	ld	s0,16(sp)
    80004528:	40a48533          	sub	a0,s1,a0
    8000452c:	00153513          	seqz	a0,a0
    80004530:	00813483          	ld	s1,8(sp)
    80004534:	02010113          	addi	sp,sp,32
    80004538:	00008067          	ret

000000008000453c <push_off>:
    8000453c:	fe010113          	addi	sp,sp,-32
    80004540:	00813823          	sd	s0,16(sp)
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	00913423          	sd	s1,8(sp)
    8000454c:	02010413          	addi	s0,sp,32
    80004550:	100024f3          	csrr	s1,sstatus
    80004554:	100027f3          	csrr	a5,sstatus
    80004558:	ffd7f793          	andi	a5,a5,-3
    8000455c:	10079073          	csrw	sstatus,a5
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	708080e7          	jalr	1800(ra) # 80002c68 <mycpu>
    80004568:	07852783          	lw	a5,120(a0)
    8000456c:	02078663          	beqz	a5,80004598 <push_off+0x5c>
    80004570:	ffffe097          	auipc	ra,0xffffe
    80004574:	6f8080e7          	jalr	1784(ra) # 80002c68 <mycpu>
    80004578:	07852783          	lw	a5,120(a0)
    8000457c:	01813083          	ld	ra,24(sp)
    80004580:	01013403          	ld	s0,16(sp)
    80004584:	0017879b          	addiw	a5,a5,1
    80004588:	06f52c23          	sw	a5,120(a0)
    8000458c:	00813483          	ld	s1,8(sp)
    80004590:	02010113          	addi	sp,sp,32
    80004594:	00008067          	ret
    80004598:	0014d493          	srli	s1,s1,0x1
    8000459c:	ffffe097          	auipc	ra,0xffffe
    800045a0:	6cc080e7          	jalr	1740(ra) # 80002c68 <mycpu>
    800045a4:	0014f493          	andi	s1,s1,1
    800045a8:	06952e23          	sw	s1,124(a0)
    800045ac:	fc5ff06f          	j	80004570 <push_off+0x34>

00000000800045b0 <pop_off>:
    800045b0:	ff010113          	addi	sp,sp,-16
    800045b4:	00813023          	sd	s0,0(sp)
    800045b8:	00113423          	sd	ra,8(sp)
    800045bc:	01010413          	addi	s0,sp,16
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	6a8080e7          	jalr	1704(ra) # 80002c68 <mycpu>
    800045c8:	100027f3          	csrr	a5,sstatus
    800045cc:	0027f793          	andi	a5,a5,2
    800045d0:	04079663          	bnez	a5,8000461c <pop_off+0x6c>
    800045d4:	07852783          	lw	a5,120(a0)
    800045d8:	02f05a63          	blez	a5,8000460c <pop_off+0x5c>
    800045dc:	fff7871b          	addiw	a4,a5,-1
    800045e0:	06e52c23          	sw	a4,120(a0)
    800045e4:	00071c63          	bnez	a4,800045fc <pop_off+0x4c>
    800045e8:	07c52783          	lw	a5,124(a0)
    800045ec:	00078863          	beqz	a5,800045fc <pop_off+0x4c>
    800045f0:	100027f3          	csrr	a5,sstatus
    800045f4:	0027e793          	ori	a5,a5,2
    800045f8:	10079073          	csrw	sstatus,a5
    800045fc:	00813083          	ld	ra,8(sp)
    80004600:	00013403          	ld	s0,0(sp)
    80004604:	01010113          	addi	sp,sp,16
    80004608:	00008067          	ret
    8000460c:	00001517          	auipc	a0,0x1
    80004610:	cd450513          	addi	a0,a0,-812 # 800052e0 <digits+0x48>
    80004614:	fffff097          	auipc	ra,0xfffff
    80004618:	018080e7          	jalr	24(ra) # 8000362c <panic>
    8000461c:	00001517          	auipc	a0,0x1
    80004620:	cac50513          	addi	a0,a0,-852 # 800052c8 <digits+0x30>
    80004624:	fffff097          	auipc	ra,0xfffff
    80004628:	008080e7          	jalr	8(ra) # 8000362c <panic>

000000008000462c <push_on>:
    8000462c:	fe010113          	addi	sp,sp,-32
    80004630:	00813823          	sd	s0,16(sp)
    80004634:	00113c23          	sd	ra,24(sp)
    80004638:	00913423          	sd	s1,8(sp)
    8000463c:	02010413          	addi	s0,sp,32
    80004640:	100024f3          	csrr	s1,sstatus
    80004644:	100027f3          	csrr	a5,sstatus
    80004648:	0027e793          	ori	a5,a5,2
    8000464c:	10079073          	csrw	sstatus,a5
    80004650:	ffffe097          	auipc	ra,0xffffe
    80004654:	618080e7          	jalr	1560(ra) # 80002c68 <mycpu>
    80004658:	07852783          	lw	a5,120(a0)
    8000465c:	02078663          	beqz	a5,80004688 <push_on+0x5c>
    80004660:	ffffe097          	auipc	ra,0xffffe
    80004664:	608080e7          	jalr	1544(ra) # 80002c68 <mycpu>
    80004668:	07852783          	lw	a5,120(a0)
    8000466c:	01813083          	ld	ra,24(sp)
    80004670:	01013403          	ld	s0,16(sp)
    80004674:	0017879b          	addiw	a5,a5,1
    80004678:	06f52c23          	sw	a5,120(a0)
    8000467c:	00813483          	ld	s1,8(sp)
    80004680:	02010113          	addi	sp,sp,32
    80004684:	00008067          	ret
    80004688:	0014d493          	srli	s1,s1,0x1
    8000468c:	ffffe097          	auipc	ra,0xffffe
    80004690:	5dc080e7          	jalr	1500(ra) # 80002c68 <mycpu>
    80004694:	0014f493          	andi	s1,s1,1
    80004698:	06952e23          	sw	s1,124(a0)
    8000469c:	fc5ff06f          	j	80004660 <push_on+0x34>

00000000800046a0 <pop_on>:
    800046a0:	ff010113          	addi	sp,sp,-16
    800046a4:	00813023          	sd	s0,0(sp)
    800046a8:	00113423          	sd	ra,8(sp)
    800046ac:	01010413          	addi	s0,sp,16
    800046b0:	ffffe097          	auipc	ra,0xffffe
    800046b4:	5b8080e7          	jalr	1464(ra) # 80002c68 <mycpu>
    800046b8:	100027f3          	csrr	a5,sstatus
    800046bc:	0027f793          	andi	a5,a5,2
    800046c0:	04078463          	beqz	a5,80004708 <pop_on+0x68>
    800046c4:	07852783          	lw	a5,120(a0)
    800046c8:	02f05863          	blez	a5,800046f8 <pop_on+0x58>
    800046cc:	fff7879b          	addiw	a5,a5,-1
    800046d0:	06f52c23          	sw	a5,120(a0)
    800046d4:	07853783          	ld	a5,120(a0)
    800046d8:	00079863          	bnez	a5,800046e8 <pop_on+0x48>
    800046dc:	100027f3          	csrr	a5,sstatus
    800046e0:	ffd7f793          	andi	a5,a5,-3
    800046e4:	10079073          	csrw	sstatus,a5
    800046e8:	00813083          	ld	ra,8(sp)
    800046ec:	00013403          	ld	s0,0(sp)
    800046f0:	01010113          	addi	sp,sp,16
    800046f4:	00008067          	ret
    800046f8:	00001517          	auipc	a0,0x1
    800046fc:	c1050513          	addi	a0,a0,-1008 # 80005308 <digits+0x70>
    80004700:	fffff097          	auipc	ra,0xfffff
    80004704:	f2c080e7          	jalr	-212(ra) # 8000362c <panic>
    80004708:	00001517          	auipc	a0,0x1
    8000470c:	be050513          	addi	a0,a0,-1056 # 800052e8 <digits+0x50>
    80004710:	fffff097          	auipc	ra,0xfffff
    80004714:	f1c080e7          	jalr	-228(ra) # 8000362c <panic>

0000000080004718 <__memset>:
    80004718:	ff010113          	addi	sp,sp,-16
    8000471c:	00813423          	sd	s0,8(sp)
    80004720:	01010413          	addi	s0,sp,16
    80004724:	1a060e63          	beqz	a2,800048e0 <__memset+0x1c8>
    80004728:	40a007b3          	neg	a5,a0
    8000472c:	0077f793          	andi	a5,a5,7
    80004730:	00778693          	addi	a3,a5,7
    80004734:	00b00813          	li	a6,11
    80004738:	0ff5f593          	andi	a1,a1,255
    8000473c:	fff6071b          	addiw	a4,a2,-1
    80004740:	1b06e663          	bltu	a3,a6,800048ec <__memset+0x1d4>
    80004744:	1cd76463          	bltu	a4,a3,8000490c <__memset+0x1f4>
    80004748:	1a078e63          	beqz	a5,80004904 <__memset+0x1ec>
    8000474c:	00b50023          	sb	a1,0(a0)
    80004750:	00100713          	li	a4,1
    80004754:	1ae78463          	beq	a5,a4,800048fc <__memset+0x1e4>
    80004758:	00b500a3          	sb	a1,1(a0)
    8000475c:	00200713          	li	a4,2
    80004760:	1ae78a63          	beq	a5,a4,80004914 <__memset+0x1fc>
    80004764:	00b50123          	sb	a1,2(a0)
    80004768:	00300713          	li	a4,3
    8000476c:	18e78463          	beq	a5,a4,800048f4 <__memset+0x1dc>
    80004770:	00b501a3          	sb	a1,3(a0)
    80004774:	00400713          	li	a4,4
    80004778:	1ae78263          	beq	a5,a4,8000491c <__memset+0x204>
    8000477c:	00b50223          	sb	a1,4(a0)
    80004780:	00500713          	li	a4,5
    80004784:	1ae78063          	beq	a5,a4,80004924 <__memset+0x20c>
    80004788:	00b502a3          	sb	a1,5(a0)
    8000478c:	00700713          	li	a4,7
    80004790:	18e79e63          	bne	a5,a4,8000492c <__memset+0x214>
    80004794:	00b50323          	sb	a1,6(a0)
    80004798:	00700e93          	li	t4,7
    8000479c:	00859713          	slli	a4,a1,0x8
    800047a0:	00e5e733          	or	a4,a1,a4
    800047a4:	01059e13          	slli	t3,a1,0x10
    800047a8:	01c76e33          	or	t3,a4,t3
    800047ac:	01859313          	slli	t1,a1,0x18
    800047b0:	006e6333          	or	t1,t3,t1
    800047b4:	02059893          	slli	a7,a1,0x20
    800047b8:	40f60e3b          	subw	t3,a2,a5
    800047bc:	011368b3          	or	a7,t1,a7
    800047c0:	02859813          	slli	a6,a1,0x28
    800047c4:	0108e833          	or	a6,a7,a6
    800047c8:	03059693          	slli	a3,a1,0x30
    800047cc:	003e589b          	srliw	a7,t3,0x3
    800047d0:	00d866b3          	or	a3,a6,a3
    800047d4:	03859713          	slli	a4,a1,0x38
    800047d8:	00389813          	slli	a6,a7,0x3
    800047dc:	00f507b3          	add	a5,a0,a5
    800047e0:	00e6e733          	or	a4,a3,a4
    800047e4:	000e089b          	sext.w	a7,t3
    800047e8:	00f806b3          	add	a3,a6,a5
    800047ec:	00e7b023          	sd	a4,0(a5)
    800047f0:	00878793          	addi	a5,a5,8
    800047f4:	fed79ce3          	bne	a5,a3,800047ec <__memset+0xd4>
    800047f8:	ff8e7793          	andi	a5,t3,-8
    800047fc:	0007871b          	sext.w	a4,a5
    80004800:	01d787bb          	addw	a5,a5,t4
    80004804:	0ce88e63          	beq	a7,a4,800048e0 <__memset+0x1c8>
    80004808:	00f50733          	add	a4,a0,a5
    8000480c:	00b70023          	sb	a1,0(a4)
    80004810:	0017871b          	addiw	a4,a5,1
    80004814:	0cc77663          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    80004818:	00e50733          	add	a4,a0,a4
    8000481c:	00b70023          	sb	a1,0(a4)
    80004820:	0027871b          	addiw	a4,a5,2
    80004824:	0ac77e63          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    80004828:	00e50733          	add	a4,a0,a4
    8000482c:	00b70023          	sb	a1,0(a4)
    80004830:	0037871b          	addiw	a4,a5,3
    80004834:	0ac77663          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    80004838:	00e50733          	add	a4,a0,a4
    8000483c:	00b70023          	sb	a1,0(a4)
    80004840:	0047871b          	addiw	a4,a5,4
    80004844:	08c77e63          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    80004848:	00e50733          	add	a4,a0,a4
    8000484c:	00b70023          	sb	a1,0(a4)
    80004850:	0057871b          	addiw	a4,a5,5
    80004854:	08c77663          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    80004858:	00e50733          	add	a4,a0,a4
    8000485c:	00b70023          	sb	a1,0(a4)
    80004860:	0067871b          	addiw	a4,a5,6
    80004864:	06c77e63          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    80004868:	00e50733          	add	a4,a0,a4
    8000486c:	00b70023          	sb	a1,0(a4)
    80004870:	0077871b          	addiw	a4,a5,7
    80004874:	06c77663          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    80004878:	00e50733          	add	a4,a0,a4
    8000487c:	00b70023          	sb	a1,0(a4)
    80004880:	0087871b          	addiw	a4,a5,8
    80004884:	04c77e63          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    80004888:	00e50733          	add	a4,a0,a4
    8000488c:	00b70023          	sb	a1,0(a4)
    80004890:	0097871b          	addiw	a4,a5,9
    80004894:	04c77663          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    80004898:	00e50733          	add	a4,a0,a4
    8000489c:	00b70023          	sb	a1,0(a4)
    800048a0:	00a7871b          	addiw	a4,a5,10
    800048a4:	02c77e63          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    800048a8:	00e50733          	add	a4,a0,a4
    800048ac:	00b70023          	sb	a1,0(a4)
    800048b0:	00b7871b          	addiw	a4,a5,11
    800048b4:	02c77663          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    800048b8:	00e50733          	add	a4,a0,a4
    800048bc:	00b70023          	sb	a1,0(a4)
    800048c0:	00c7871b          	addiw	a4,a5,12
    800048c4:	00c77e63          	bgeu	a4,a2,800048e0 <__memset+0x1c8>
    800048c8:	00e50733          	add	a4,a0,a4
    800048cc:	00b70023          	sb	a1,0(a4)
    800048d0:	00d7879b          	addiw	a5,a5,13
    800048d4:	00c7f663          	bgeu	a5,a2,800048e0 <__memset+0x1c8>
    800048d8:	00f507b3          	add	a5,a0,a5
    800048dc:	00b78023          	sb	a1,0(a5)
    800048e0:	00813403          	ld	s0,8(sp)
    800048e4:	01010113          	addi	sp,sp,16
    800048e8:	00008067          	ret
    800048ec:	00b00693          	li	a3,11
    800048f0:	e55ff06f          	j	80004744 <__memset+0x2c>
    800048f4:	00300e93          	li	t4,3
    800048f8:	ea5ff06f          	j	8000479c <__memset+0x84>
    800048fc:	00100e93          	li	t4,1
    80004900:	e9dff06f          	j	8000479c <__memset+0x84>
    80004904:	00000e93          	li	t4,0
    80004908:	e95ff06f          	j	8000479c <__memset+0x84>
    8000490c:	00000793          	li	a5,0
    80004910:	ef9ff06f          	j	80004808 <__memset+0xf0>
    80004914:	00200e93          	li	t4,2
    80004918:	e85ff06f          	j	8000479c <__memset+0x84>
    8000491c:	00400e93          	li	t4,4
    80004920:	e7dff06f          	j	8000479c <__memset+0x84>
    80004924:	00500e93          	li	t4,5
    80004928:	e75ff06f          	j	8000479c <__memset+0x84>
    8000492c:	00600e93          	li	t4,6
    80004930:	e6dff06f          	j	8000479c <__memset+0x84>

0000000080004934 <__memmove>:
    80004934:	ff010113          	addi	sp,sp,-16
    80004938:	00813423          	sd	s0,8(sp)
    8000493c:	01010413          	addi	s0,sp,16
    80004940:	0e060863          	beqz	a2,80004a30 <__memmove+0xfc>
    80004944:	fff6069b          	addiw	a3,a2,-1
    80004948:	0006881b          	sext.w	a6,a3
    8000494c:	0ea5e863          	bltu	a1,a0,80004a3c <__memmove+0x108>
    80004950:	00758713          	addi	a4,a1,7
    80004954:	00a5e7b3          	or	a5,a1,a0
    80004958:	40a70733          	sub	a4,a4,a0
    8000495c:	0077f793          	andi	a5,a5,7
    80004960:	00f73713          	sltiu	a4,a4,15
    80004964:	00174713          	xori	a4,a4,1
    80004968:	0017b793          	seqz	a5,a5
    8000496c:	00e7f7b3          	and	a5,a5,a4
    80004970:	10078863          	beqz	a5,80004a80 <__memmove+0x14c>
    80004974:	00900793          	li	a5,9
    80004978:	1107f463          	bgeu	a5,a6,80004a80 <__memmove+0x14c>
    8000497c:	0036581b          	srliw	a6,a2,0x3
    80004980:	fff8081b          	addiw	a6,a6,-1
    80004984:	02081813          	slli	a6,a6,0x20
    80004988:	01d85893          	srli	a7,a6,0x1d
    8000498c:	00858813          	addi	a6,a1,8
    80004990:	00058793          	mv	a5,a1
    80004994:	00050713          	mv	a4,a0
    80004998:	01088833          	add	a6,a7,a6
    8000499c:	0007b883          	ld	a7,0(a5)
    800049a0:	00878793          	addi	a5,a5,8
    800049a4:	00870713          	addi	a4,a4,8
    800049a8:	ff173c23          	sd	a7,-8(a4)
    800049ac:	ff0798e3          	bne	a5,a6,8000499c <__memmove+0x68>
    800049b0:	ff867713          	andi	a4,a2,-8
    800049b4:	02071793          	slli	a5,a4,0x20
    800049b8:	0207d793          	srli	a5,a5,0x20
    800049bc:	00f585b3          	add	a1,a1,a5
    800049c0:	40e686bb          	subw	a3,a3,a4
    800049c4:	00f507b3          	add	a5,a0,a5
    800049c8:	06e60463          	beq	a2,a4,80004a30 <__memmove+0xfc>
    800049cc:	0005c703          	lbu	a4,0(a1)
    800049d0:	00e78023          	sb	a4,0(a5)
    800049d4:	04068e63          	beqz	a3,80004a30 <__memmove+0xfc>
    800049d8:	0015c603          	lbu	a2,1(a1)
    800049dc:	00100713          	li	a4,1
    800049e0:	00c780a3          	sb	a2,1(a5)
    800049e4:	04e68663          	beq	a3,a4,80004a30 <__memmove+0xfc>
    800049e8:	0025c603          	lbu	a2,2(a1)
    800049ec:	00200713          	li	a4,2
    800049f0:	00c78123          	sb	a2,2(a5)
    800049f4:	02e68e63          	beq	a3,a4,80004a30 <__memmove+0xfc>
    800049f8:	0035c603          	lbu	a2,3(a1)
    800049fc:	00300713          	li	a4,3
    80004a00:	00c781a3          	sb	a2,3(a5)
    80004a04:	02e68663          	beq	a3,a4,80004a30 <__memmove+0xfc>
    80004a08:	0045c603          	lbu	a2,4(a1)
    80004a0c:	00400713          	li	a4,4
    80004a10:	00c78223          	sb	a2,4(a5)
    80004a14:	00e68e63          	beq	a3,a4,80004a30 <__memmove+0xfc>
    80004a18:	0055c603          	lbu	a2,5(a1)
    80004a1c:	00500713          	li	a4,5
    80004a20:	00c782a3          	sb	a2,5(a5)
    80004a24:	00e68663          	beq	a3,a4,80004a30 <__memmove+0xfc>
    80004a28:	0065c703          	lbu	a4,6(a1)
    80004a2c:	00e78323          	sb	a4,6(a5)
    80004a30:	00813403          	ld	s0,8(sp)
    80004a34:	01010113          	addi	sp,sp,16
    80004a38:	00008067          	ret
    80004a3c:	02061713          	slli	a4,a2,0x20
    80004a40:	02075713          	srli	a4,a4,0x20
    80004a44:	00e587b3          	add	a5,a1,a4
    80004a48:	f0f574e3          	bgeu	a0,a5,80004950 <__memmove+0x1c>
    80004a4c:	02069613          	slli	a2,a3,0x20
    80004a50:	02065613          	srli	a2,a2,0x20
    80004a54:	fff64613          	not	a2,a2
    80004a58:	00e50733          	add	a4,a0,a4
    80004a5c:	00c78633          	add	a2,a5,a2
    80004a60:	fff7c683          	lbu	a3,-1(a5)
    80004a64:	fff78793          	addi	a5,a5,-1
    80004a68:	fff70713          	addi	a4,a4,-1
    80004a6c:	00d70023          	sb	a3,0(a4)
    80004a70:	fec798e3          	bne	a5,a2,80004a60 <__memmove+0x12c>
    80004a74:	00813403          	ld	s0,8(sp)
    80004a78:	01010113          	addi	sp,sp,16
    80004a7c:	00008067          	ret
    80004a80:	02069713          	slli	a4,a3,0x20
    80004a84:	02075713          	srli	a4,a4,0x20
    80004a88:	00170713          	addi	a4,a4,1
    80004a8c:	00e50733          	add	a4,a0,a4
    80004a90:	00050793          	mv	a5,a0
    80004a94:	0005c683          	lbu	a3,0(a1)
    80004a98:	00178793          	addi	a5,a5,1
    80004a9c:	00158593          	addi	a1,a1,1
    80004aa0:	fed78fa3          	sb	a3,-1(a5)
    80004aa4:	fee798e3          	bne	a5,a4,80004a94 <__memmove+0x160>
    80004aa8:	f89ff06f          	j	80004a30 <__memmove+0xfc>

0000000080004aac <__putc>:
    80004aac:	fe010113          	addi	sp,sp,-32
    80004ab0:	00813823          	sd	s0,16(sp)
    80004ab4:	00113c23          	sd	ra,24(sp)
    80004ab8:	02010413          	addi	s0,sp,32
    80004abc:	00050793          	mv	a5,a0
    80004ac0:	fef40593          	addi	a1,s0,-17
    80004ac4:	00100613          	li	a2,1
    80004ac8:	00000513          	li	a0,0
    80004acc:	fef407a3          	sb	a5,-17(s0)
    80004ad0:	fffff097          	auipc	ra,0xfffff
    80004ad4:	b3c080e7          	jalr	-1220(ra) # 8000360c <console_write>
    80004ad8:	01813083          	ld	ra,24(sp)
    80004adc:	01013403          	ld	s0,16(sp)
    80004ae0:	02010113          	addi	sp,sp,32
    80004ae4:	00008067          	ret

0000000080004ae8 <__getc>:
    80004ae8:	fe010113          	addi	sp,sp,-32
    80004aec:	00813823          	sd	s0,16(sp)
    80004af0:	00113c23          	sd	ra,24(sp)
    80004af4:	02010413          	addi	s0,sp,32
    80004af8:	fe840593          	addi	a1,s0,-24
    80004afc:	00100613          	li	a2,1
    80004b00:	00000513          	li	a0,0
    80004b04:	fffff097          	auipc	ra,0xfffff
    80004b08:	ae8080e7          	jalr	-1304(ra) # 800035ec <console_read>
    80004b0c:	fe844503          	lbu	a0,-24(s0)
    80004b10:	01813083          	ld	ra,24(sp)
    80004b14:	01013403          	ld	s0,16(sp)
    80004b18:	02010113          	addi	sp,sp,32
    80004b1c:	00008067          	ret

0000000080004b20 <console_handler>:
    80004b20:	fe010113          	addi	sp,sp,-32
    80004b24:	00813823          	sd	s0,16(sp)
    80004b28:	00113c23          	sd	ra,24(sp)
    80004b2c:	00913423          	sd	s1,8(sp)
    80004b30:	02010413          	addi	s0,sp,32
    80004b34:	14202773          	csrr	a4,scause
    80004b38:	100027f3          	csrr	a5,sstatus
    80004b3c:	0027f793          	andi	a5,a5,2
    80004b40:	06079e63          	bnez	a5,80004bbc <console_handler+0x9c>
    80004b44:	00074c63          	bltz	a4,80004b5c <console_handler+0x3c>
    80004b48:	01813083          	ld	ra,24(sp)
    80004b4c:	01013403          	ld	s0,16(sp)
    80004b50:	00813483          	ld	s1,8(sp)
    80004b54:	02010113          	addi	sp,sp,32
    80004b58:	00008067          	ret
    80004b5c:	0ff77713          	andi	a4,a4,255
    80004b60:	00900793          	li	a5,9
    80004b64:	fef712e3          	bne	a4,a5,80004b48 <console_handler+0x28>
    80004b68:	ffffe097          	auipc	ra,0xffffe
    80004b6c:	6dc080e7          	jalr	1756(ra) # 80003244 <plic_claim>
    80004b70:	00a00793          	li	a5,10
    80004b74:	00050493          	mv	s1,a0
    80004b78:	02f50c63          	beq	a0,a5,80004bb0 <console_handler+0x90>
    80004b7c:	fc0506e3          	beqz	a0,80004b48 <console_handler+0x28>
    80004b80:	00050593          	mv	a1,a0
    80004b84:	00000517          	auipc	a0,0x0
    80004b88:	68c50513          	addi	a0,a0,1676 # 80005210 <_ZN15MemoryAllocator10DBlockSizeE+0x1f0>
    80004b8c:	fffff097          	auipc	ra,0xfffff
    80004b90:	afc080e7          	jalr	-1284(ra) # 80003688 <__printf>
    80004b94:	01013403          	ld	s0,16(sp)
    80004b98:	01813083          	ld	ra,24(sp)
    80004b9c:	00048513          	mv	a0,s1
    80004ba0:	00813483          	ld	s1,8(sp)
    80004ba4:	02010113          	addi	sp,sp,32
    80004ba8:	ffffe317          	auipc	t1,0xffffe
    80004bac:	6d430067          	jr	1748(t1) # 8000327c <plic_complete>
    80004bb0:	fffff097          	auipc	ra,0xfffff
    80004bb4:	3e0080e7          	jalr	992(ra) # 80003f90 <uartintr>
    80004bb8:	fddff06f          	j	80004b94 <console_handler+0x74>
    80004bbc:	00000517          	auipc	a0,0x0
    80004bc0:	75450513          	addi	a0,a0,1876 # 80005310 <digits+0x78>
    80004bc4:	fffff097          	auipc	ra,0xfffff
    80004bc8:	a68080e7          	jalr	-1432(ra) # 8000362c <panic>
	...
