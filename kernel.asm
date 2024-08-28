
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	9f013103          	ld	sp,-1552(sp) # 800059f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	200020ef          	jal	ra,8000221c <start>

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
    80001174:	261000ef          	jal	ra,80001bd4 <_ZN5Riscv16interruptHandlerEv>

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
    80001228:	c68080e7          	jalr	-920(ra) # 80001e8c <_Z9mem_allocm>
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
    80001250:	c40080e7          	jalr	-960(ra) # 80001e8c <_Z9mem_allocm>
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
    80001278:	c78080e7          	jalr	-904(ra) # 80001eec <_Z8mem_freePv>
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
    800012a0:	c50080e7          	jalr	-944(ra) # 80001eec <_Z8mem_freePv>
    800012a4:	00813083          	ld	ra,8(sp)
    800012a8:	00013403          	ld	s0,0(sp)
    800012ac:	01010113          	addi	sp,sp,16
    800012b0:	00008067          	ret

00000000800012b4 <_Z7workerAPv>:
#include "../h/memoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/syscallC.hpp"
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
    800012d8:	f0c080e7          	jalr	-244(ra) # 800021e0 <_Z4putcc>
        thread_dispatch();
    800012dc:	00001097          	auipc	ra,0x1
    800012e0:	d2c080e7          	jalr	-724(ra) # 80002008 <_Z15thread_dispatchv>
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
    80001328:	ebc080e7          	jalr	-324(ra) # 800021e0 <_Z4putcc>
        thread_dispatch();
    8000132c:	00001097          	auipc	ra,0x1
    80001330:	cdc080e7          	jalr	-804(ra) # 80002008 <_Z15thread_dispatchv>
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
    8000137c:	e68080e7          	jalr	-408(ra) # 800021e0 <_Z4putcc>
        thread_dispatch();
    80001380:	00001097          	auipc	ra,0x1
    80001384:	c88080e7          	jalr	-888(ra) # 80002008 <_Z15thread_dispatchv>
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
    800013b8:	00004797          	auipc	a5,0x4
    800013bc:	6307b783          	ld	a5,1584(a5) # 800059e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void Riscv::writeStvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    800013c0:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	474080e7          	jalr	1140(ra) # 80001838 <_ZN15MemoryAllocator4initEv>

    thread_create(&threads[0], nullptr, nullptr); // main
    800013cc:	00004497          	auipc	s1,0x4
    800013d0:	68448493          	addi	s1,s1,1668 # 80005a50 <threads>
    800013d4:	00000613          	li	a2,0
    800013d8:	00000593          	li	a1,0
    800013dc:	00048513          	mv	a0,s1
    800013e0:	00001097          	auipc	ra,0x1
    800013e4:	b58080e7          	jalr	-1192(ra) # 80001f38 <_Z13thread_createPP3TCBPFvPvES2_>

    TCB::running = threads[0];
    800013e8:	0004b703          	ld	a4,0(s1)
    800013ec:	00004797          	auipc	a5,0x4
    800013f0:	60c7b783          	ld	a5,1548(a5) # 800059f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800013f4:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], &workerA, nullptr);
    800013f8:	00000613          	li	a2,0
    800013fc:	00000597          	auipc	a1,0x0
    80001400:	eb858593          	addi	a1,a1,-328 # 800012b4 <_Z7workerAPv>
    80001404:	00004517          	auipc	a0,0x4
    80001408:	65450513          	addi	a0,a0,1620 # 80005a58 <threads+0x8>
    8000140c:	00001097          	auipc	ra,0x1
    80001410:	b2c080e7          	jalr	-1236(ra) # 80001f38 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], &workerB, nullptr);
    80001414:	00000613          	li	a2,0
    80001418:	00000597          	auipc	a1,0x0
    8000141c:	eec58593          	addi	a1,a1,-276 # 80001304 <_Z7workerBPv>
    80001420:	00004517          	auipc	a0,0x4
    80001424:	64050513          	addi	a0,a0,1600 # 80005a60 <threads+0x10>
    80001428:	00001097          	auipc	ra,0x1
    8000142c:	b10080e7          	jalr	-1264(ra) # 80001f38 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], &workerC, nullptr);
    80001430:	00000613          	li	a2,0
    80001434:	00000597          	auipc	a1,0x0
    80001438:	f2058593          	addi	a1,a1,-224 # 80001354 <_Z7workerCPv>
    8000143c:	00004517          	auipc	a0,0x4
    80001440:	62c50513          	addi	a0,a0,1580 # 80005a68 <threads+0x18>
    80001444:	00001097          	auipc	ra,0x1
    80001448:	af4080e7          	jalr	-1292(ra) # 80001f38 <_Z13thread_createPP3TCBPFvPvES2_>

    while(1){
        putc('M');
    8000144c:	04d00513          	li	a0,77
    80001450:	00001097          	auipc	ra,0x1
    80001454:	d90080e7          	jalr	-624(ra) # 800021e0 <_Z4putcc>
        thread_dispatch();
    80001458:	00001097          	auipc	ra,0x1
    8000145c:	bb0080e7          	jalr	-1104(ra) # 80002008 <_Z15thread_dispatchv>
    while(1){
    80001460:	fedff06f          	j	8000144c <main+0xa8>

0000000080001464 <_ZN3TCBC1EPFvPvES0_S0_>:


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
    8000148c:	06058e63          	beqz	a1,80001508 <_ZN3TCBC1EPFvPvES0_S0_+0xa4>
    80001490:	00008537          	lui	a0,0x8
    80001494:	00000097          	auipc	ra,0x0
    80001498:	da8080e7          	jalr	-600(ra) # 8000123c <_Znam>
    8000149c:	00a4b823          	sd	a0,16(s1)
    this->context = {
            (uint64)&TCB::threadWrapper, //ra
            routine == nullptr ? 0 : (uint64) &this->stack[ DEFAULT_STACK_SIZE ] //
    800014a0:	06090863          	beqz	s2,80001510 <_ZN3TCBC1EPFvPvES0_S0_+0xac>
    800014a4:	000087b7          	lui	a5,0x8
    800014a8:	00f50533          	add	a0,a0,a5
    this->context = {
    800014ac:	00000797          	auipc	a5,0x0
    800014b0:	0bc78793          	addi	a5,a5,188 # 80001568 <_ZN3TCB13threadWrapperEv>
    800014b4:	02f4b023          	sd	a5,32(s1)
    800014b8:	02a4b423          	sd	a0,40(s1)
    };
    this->routine=routine;
    800014bc:	0124b423          	sd	s2,8(s1)
    this->arg=arg;
    800014c0:	0134bc23          	sd	s3,24(s1)
    this->finished=false; //menja se u wrapperu
    800014c4:	02048c23          	sb	zero,56(s1)
    this->blocked=false; //menja se u sem
    800014c8:	02048ca3          	sb	zero,57(s1)
    this->schedulerNext=nullptr;
    800014cc:	0204b823          	sd	zero,48(s1)
    this->threadID=++id;
    800014d0:	00004717          	auipc	a4,0x4
    800014d4:	5a870713          	addi	a4,a4,1448 # 80005a78 <_ZN3TCB2idE>
    800014d8:	00072783          	lw	a5,0(a4)
    800014dc:	0017879b          	addiw	a5,a5,1
    800014e0:	0007869b          	sext.w	a3,a5
    800014e4:	00f72023          	sw	a5,0(a4)
    800014e8:	00d4b023          	sd	a3,0(s1)
}
    800014ec:	02813083          	ld	ra,40(sp)
    800014f0:	02013403          	ld	s0,32(sp)
    800014f4:	01813483          	ld	s1,24(sp)
    800014f8:	01013903          	ld	s2,16(sp)
    800014fc:	00813983          	ld	s3,8(sp)
    80001500:	03010113          	addi	sp,sp,48
    80001504:	00008067          	ret
TCB::TCB(body routine, void* arg, void * stack) : stack(routine!=nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr) {
    80001508:	00000513          	li	a0,0
    8000150c:	f91ff06f          	j	8000149c <_ZN3TCBC1EPFvPvES0_S0_+0x38>
            routine == nullptr ? 0 : (uint64) &this->stack[ DEFAULT_STACK_SIZE ] //
    80001510:	00000513          	li	a0,0
    80001514:	f99ff06f          	j	800014ac <_ZN3TCBC1EPFvPvES0_S0_+0x48>

0000000080001518 <_ZN3TCB10threadExitEv>:
    if(routine) Scheduler::put(*handle);
    return 0;
}

int TCB::threadExit() {
    if(!running || !running->getFinished()) return -1;
    80001518:	00004797          	auipc	a5,0x4
    8000151c:	5687b783          	ld	a5,1384(a5) # 80005a80 <_ZN3TCB7runningE>
    80001520:	02078c63          	beqz	a5,80001558 <_ZN3TCB10threadExitEv+0x40>

    static int threadCreate(TCB** handle, body routine, void* arg, void* stack);
    static int threadExit();
    static void dispatch();

    bool getFinished() { return finished; }
    80001524:	0387c783          	lbu	a5,56(a5)
    80001528:	02078c63          	beqz	a5,80001560 <_ZN3TCB10threadExitEv+0x48>
int TCB::threadExit() {
    8000152c:	ff010113          	addi	sp,sp,-16
    80001530:	00113423          	sd	ra,8(sp)
    80001534:	00813023          	sd	s0,0(sp)
    80001538:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000153c:	00001097          	auipc	ra,0x1
    80001540:	acc080e7          	jalr	-1332(ra) # 80002008 <_Z15thread_dispatchv>
    return 0;
    80001544:	00000513          	li	a0,0
}
    80001548:	00813083          	ld	ra,8(sp)
    8000154c:	00013403          	ld	s0,0(sp)
    80001550:	01010113          	addi	sp,sp,16
    80001554:	00008067          	ret
    if(!running || !running->getFinished()) return -1;
    80001558:	fff00513          	li	a0,-1
    8000155c:	00008067          	ret
    80001560:	fff00513          	li	a0,-1
}
    80001564:	00008067          	ret

0000000080001568 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper() {
    80001568:	fe010113          	addi	sp,sp,-32
    8000156c:	00113c23          	sd	ra,24(sp)
    80001570:	00813823          	sd	s0,16(sp)
    80001574:	00913423          	sd	s1,8(sp)
    80001578:	02010413          	addi	s0,sp,32
    if (running->routine) {
    8000157c:	00004797          	auipc	a5,0x4
    80001580:	5047b783          	ld	a5,1284(a5) # 80005a80 <_ZN3TCB7runningE>
    80001584:	0087b783          	ld	a5,8(a5)
    80001588:	02078863          	beqz	a5,800015b8 <_ZN3TCB13threadWrapperEv+0x50>
        Riscv::popSppSpie();
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	7c4080e7          	jalr	1988(ra) # 80001d50 <_ZN5Riscv10popSppSpieEv>
        running->routine(running->arg);
    80001594:	00004497          	auipc	s1,0x4
    80001598:	4e448493          	addi	s1,s1,1252 # 80005a78 <_ZN3TCB2idE>
    8000159c:	0084b783          	ld	a5,8(s1)
    800015a0:	0087b703          	ld	a4,8(a5)
    800015a4:	0187b503          	ld	a0,24(a5)
    800015a8:	000700e7          	jalr	a4
        running->setFinished();
    800015ac:	0084b783          	ld	a5,8(s1)
    void setFinished() { finished=true; }
    800015b0:	00100713          	li	a4,1
    800015b4:	02e78c23          	sb	a4,56(a5)
    }
    TCB::threadExit();
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	f60080e7          	jalr	-160(ra) # 80001518 <_ZN3TCB10threadExitEv>
}
    800015c0:	01813083          	ld	ra,24(sp)
    800015c4:	01013403          	ld	s0,16(sp)
    800015c8:	00813483          	ld	s1,8(sp)
    800015cc:	02010113          	addi	sp,sp,32
    800015d0:	00008067          	ret

00000000800015d4 <_ZN3TCBnwEm>:
    Riscv::push();
    contextSwitch(&oldRunning->context, &running->context);
    Riscv::pop();
}

void *TCB::operator new(size_t size) {
    800015d4:	ff010113          	addi	sp,sp,-16
    800015d8:	00113423          	sd	ra,8(sp)
    800015dc:	00813023          	sd	s0,0(sp)
    800015e0:	01010413          	addi	s0,sp,16
    size_t numOfBlocks=ROUNDUP((size+MemoryAllocator::DBlockSize))/MEM_BLOCK_SIZE;
    800015e4:	00004797          	auipc	a5,0x4
    800015e8:	4247b783          	ld	a5,1060(a5) # 80005a08 <_GLOBAL_OFFSET_TABLE_+0x30>
    800015ec:	0007b783          	ld	a5,0(a5)
    800015f0:	00a78533          	add	a0,a5,a0
    800015f4:	03f50513          	addi	a0,a0,63 # 803f <_entry-0x7fff7fc1>
    return MemoryAllocator::mem_alloc(numOfBlocks);
    800015f8:	00655513          	srli	a0,a0,0x6
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	2ac080e7          	jalr	684(ra) # 800018a8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001604:	00813083          	ld	ra,8(sp)
    80001608:	00013403          	ld	s0,0(sp)
    8000160c:	01010113          	addi	sp,sp,16
    80001610:	00008067          	ret

0000000080001614 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *ptr) {
    80001614:	ff010113          	addi	sp,sp,-16
    80001618:	00113423          	sd	ra,8(sp)
    8000161c:	00813023          	sd	s0,0(sp)
    80001620:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001624:	00000097          	auipc	ra,0x0
    80001628:	410080e7          	jalr	1040(ra) # 80001a34 <_ZN15MemoryAllocator8mem_freeEPv>
    8000162c:	00813083          	ld	ra,8(sp)
    80001630:	00013403          	ld	s0,0(sp)
    80001634:	01010113          	addi	sp,sp,16
    80001638:	00008067          	ret

000000008000163c <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_>:
int TCB::threadCreate(TCB ** handle, body routine, void* arg, void* stack) { //handle je ADRESA rucke
    8000163c:	fc010113          	addi	sp,sp,-64
    80001640:	02113c23          	sd	ra,56(sp)
    80001644:	02813823          	sd	s0,48(sp)
    80001648:	02913423          	sd	s1,40(sp)
    8000164c:	03213023          	sd	s2,32(sp)
    80001650:	01313c23          	sd	s3,24(sp)
    80001654:	01413823          	sd	s4,16(sp)
    80001658:	01513423          	sd	s5,8(sp)
    8000165c:	04010413          	addi	s0,sp,64
    80001660:	00050993          	mv	s3,a0
    80001664:	00058913          	mv	s2,a1
    80001668:	00060a13          	mv	s4,a2
    8000166c:	00068a93          	mv	s5,a3
    *handle=new TCB(routine, arg, stack);
    80001670:	04000513          	li	a0,64
    80001674:	00000097          	auipc	ra,0x0
    80001678:	f60080e7          	jalr	-160(ra) # 800015d4 <_ZN3TCBnwEm>
    8000167c:	00050493          	mv	s1,a0
    80001680:	000a8693          	mv	a3,s5
    80001684:	000a0613          	mv	a2,s4
    80001688:	00090593          	mv	a1,s2
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	dd8080e7          	jalr	-552(ra) # 80001464 <_ZN3TCBC1EPFvPvES0_S0_>
    80001694:	0099b023          	sd	s1,0(s3)
    if(!*handle) return -1;
    80001698:	02048e63          	beqz	s1,800016d4 <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0x98>
    if(routine) Scheduler::put(*handle);
    8000169c:	04090063          	beqz	s2,800016dc <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0xa0>
    800016a0:	00048513          	mv	a0,s1
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	718080e7          	jalr	1816(ra) # 80001dbc <_ZN9Scheduler3putEP3TCB>
    return 0;
    800016ac:	00000513          	li	a0,0
}
    800016b0:	03813083          	ld	ra,56(sp)
    800016b4:	03013403          	ld	s0,48(sp)
    800016b8:	02813483          	ld	s1,40(sp)
    800016bc:	02013903          	ld	s2,32(sp)
    800016c0:	01813983          	ld	s3,24(sp)
    800016c4:	01013a03          	ld	s4,16(sp)
    800016c8:	00813a83          	ld	s5,8(sp)
    800016cc:	04010113          	addi	sp,sp,64
    800016d0:	00008067          	ret
    if(!*handle) return -1;
    800016d4:	fff00513          	li	a0,-1
    800016d8:	fd9ff06f          	j	800016b0 <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0x74>
    return 0;
    800016dc:	00000513          	li	a0,0
    800016e0:	fd1ff06f          	j	800016b0 <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0x74>
    800016e4:	00050913          	mv	s2,a0
    *handle=new TCB(routine, arg, stack);
    800016e8:	00048513          	mv	a0,s1
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	f28080e7          	jalr	-216(ra) # 80001614 <_ZN3TCBdlEPv>
    800016f4:	00090513          	mv	a0,s2
    800016f8:	00005097          	auipc	ra,0x5
    800016fc:	480080e7          	jalr	1152(ra) # 80006b78 <_Unwind_Resume>

0000000080001700 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001700:	fe010113          	addi	sp,sp,-32
    80001704:	00113c23          	sd	ra,24(sp)
    80001708:	00813823          	sd	s0,16(sp)
    8000170c:	00913423          	sd	s1,8(sp)
    80001710:	01213023          	sd	s2,0(sp)
    80001714:	02010413          	addi	s0,sp,32
    TCB *oldRunning=running;
    80001718:	00004497          	auipc	s1,0x4
    8000171c:	3684b483          	ld	s1,872(s1) # 80005a80 <_ZN3TCB7runningE>
    if (!running->finished && !running->blocked) {
    80001720:	0384c783          	lbu	a5,56(s1)
    80001724:	00079663          	bnez	a5,80001730 <_ZN3TCB8dispatchEv+0x30>
    80001728:	0394c783          	lbu	a5,57(s1)
    8000172c:	08078063          	beqz	a5,800017ac <_ZN3TCB8dispatchEv+0xac>
    if (running->finished) delete running;
    80001730:	00004917          	auipc	s2,0x4
    80001734:	35093903          	ld	s2,848(s2) # 80005a80 <_ZN3TCB7runningE>
    80001738:	03894783          	lbu	a5,56(s2)
    8000173c:	02078063          	beqz	a5,8000175c <_ZN3TCB8dispatchEv+0x5c>
    80001740:	00090e63          	beqz	s2,8000175c <_ZN3TCB8dispatchEv+0x5c>

    ~TCB() { MemoryAllocator::mem_free(this->stack); }
    80001744:	01093503          	ld	a0,16(s2)
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	2ec080e7          	jalr	748(ra) # 80001a34 <_ZN15MemoryAllocator8mem_freeEPv>
    80001750:	00090513          	mv	a0,s2
    80001754:	00000097          	auipc	ra,0x0
    80001758:	ec0080e7          	jalr	-320(ra) # 80001614 <_ZN3TCBdlEPv>
    running=Scheduler::get();
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	61c080e7          	jalr	1564(ra) # 80001d78 <_ZN9Scheduler3getEv>
    80001764:	00004917          	auipc	s2,0x4
    80001768:	31490913          	addi	s2,s2,788 # 80005a78 <_ZN3TCB2idE>
    8000176c:	00a93423          	sd	a0,8(s2)
    Riscv::push();
    80001770:	00000097          	auipc	ra,0x0
    80001774:	890080e7          	jalr	-1904(ra) # 80001000 <_ZN5Riscv4pushEv>
    contextSwitch(&oldRunning->context, &running->context);
    80001778:	00893583          	ld	a1,8(s2)
    8000177c:	02058593          	addi	a1,a1,32
    80001780:	02048513          	addi	a0,s1,32
    80001784:	00000097          	auipc	ra,0x0
    80001788:	a7c080e7          	jalr	-1412(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    Riscv::pop();
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	8f0080e7          	jalr	-1808(ra) # 8000107c <_ZN5Riscv3popEv>
}
    80001794:	01813083          	ld	ra,24(sp)
    80001798:	01013403          	ld	s0,16(sp)
    8000179c:	00813483          	ld	s1,8(sp)
    800017a0:	00013903          	ld	s2,0(sp)
    800017a4:	02010113          	addi	sp,sp,32
    800017a8:	00008067          	ret
        Scheduler::put(oldRunning);
    800017ac:	00048513          	mv	a0,s1
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	60c080e7          	jalr	1548(ra) # 80001dbc <_ZN9Scheduler3putEP3TCB>
    800017b8:	f79ff06f          	j	80001730 <_ZN3TCB8dispatchEv+0x30>

00000000800017bc <_Z8printInti>:
bool MemoryAllocator::initialized = false;

char digits[] = "0123456789";

void printInt(int x)
{
    800017bc:	fd010113          	addi	sp,sp,-48
    800017c0:	02113423          	sd	ra,40(sp)
    800017c4:	02813023          	sd	s0,32(sp)
    800017c8:	00913c23          	sd	s1,24(sp)
    800017cc:	03010413          	addi	s0,sp,48
    char buf[16];
    int i;

    i = 0;
    800017d0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % 10];
    800017d4:	00a00693          	li	a3,10
    800017d8:	02d5663b          	remw	a2,a0,a3
    800017dc:	00004717          	auipc	a4,0x4
    800017e0:	1ec70713          	addi	a4,a4,492 # 800059c8 <digits>
    800017e4:	00c70733          	add	a4,a4,a2
    800017e8:	00074703          	lbu	a4,0(a4)
    800017ec:	fe040613          	addi	a2,s0,-32
    800017f0:	009607b3          	add	a5,a2,s1
    800017f4:	0014849b          	addiw	s1,s1,1
    800017f8:	fee78823          	sb	a4,-16(a5)
    }while((x /= 10) != 0);
    800017fc:	02d5453b          	divw	a0,a0,a3
    80001800:	fc051ae3          	bnez	a0,800017d4 <_Z8printInti+0x18>

    while(--i >= 0)
    80001804:	fff4849b          	addiw	s1,s1,-1
    80001808:	0004ce63          	bltz	s1,80001824 <_Z8printInti+0x68>
        __putc(buf[i]);
    8000180c:	fe040793          	addi	a5,s0,-32
    80001810:	009787b3          	add	a5,a5,s1
    80001814:	ff07c503          	lbu	a0,-16(a5)
    80001818:	00003097          	auipc	ra,0x3
    8000181c:	ac4080e7          	jalr	-1340(ra) # 800042dc <__putc>
    80001820:	fe5ff06f          	j	80001804 <_Z8printInti+0x48>
}
    80001824:	02813083          	ld	ra,40(sp)
    80001828:	02013403          	ld	s0,32(sp)
    8000182c:	01813483          	ld	s1,24(sp)
    80001830:	03010113          	addi	sp,sp,48
    80001834:	00008067          	ret

0000000080001838 <_ZN15MemoryAllocator4initEv>:

const size_t MemoryAllocator::DBlockSize = sizeof(MemoryAllocator::DBlock);

void MemoryAllocator::init(){
    80001838:	ff010113          	addi	sp,sp,-16
    8000183c:	00813423          	sd	s0,8(sp)
    80001840:	01010413          	addi	s0,sp,16
    if(!initialized){
    80001844:	00004797          	auipc	a5,0x4
    80001848:	2447c783          	lbu	a5,580(a5) # 80005a88 <_ZN15MemoryAllocator11initializedE>
    8000184c:	04079863          	bnez	a5,8000189c <_ZN15MemoryAllocator4initEv+0x64>
        headFree=(DBlock*)((char*)HEAP_START_ADDR);
    80001850:	00004797          	auipc	a5,0x4
    80001854:	1907b783          	ld	a5,400(a5) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001858:	0007b683          	ld	a3,0(a5)
    8000185c:	00004717          	auipc	a4,0x4
    80001860:	22c70713          	addi	a4,a4,556 # 80005a88 <_ZN15MemoryAllocator11initializedE>
    80001864:	00d73423          	sd	a3,8(a4)
        headFree->size=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR+1)/MEM_BLOCK_SIZE-1; //u BLOKOVIMA, slobodan prostor + header
    80001868:	00004797          	auipc	a5,0x4
    8000186c:	1987b783          	ld	a5,408(a5) # 80005a00 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001870:	0007b783          	ld	a5,0(a5)
    80001874:	40d787b3          	sub	a5,a5,a3
    80001878:	04078793          	addi	a5,a5,64
    8000187c:	0067d793          	srli	a5,a5,0x6
    80001880:	fff78793          	addi	a5,a5,-1
    80001884:	00f6b023          	sd	a5,0(a3)
        headFree->next = nullptr;
    80001888:	00873783          	ld	a5,8(a4)
    8000188c:	0007b423          	sd	zero,8(a5)
        headFree->prev  = nullptr;
    80001890:	0007b823          	sd	zero,16(a5)
        initialized=true;
    80001894:	00100793          	li	a5,1
    80001898:	00f70023          	sb	a5,0(a4)
    }
}
    8000189c:	00813403          	ld	s0,8(sp)
    800018a0:	01010113          	addi	sp,sp,16
    800018a4:	00008067          	ret

00000000800018a8 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size){ //broj blokova - uracunat header
    800018a8:	ff010113          	addi	sp,sp,-16
    800018ac:	00813423          	sd	s0,8(sp)
    800018b0:	01010413          	addi	s0,sp,16

    if(size <=0 || size>=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR)/MEM_BLOCK_SIZE) return nullptr;
    800018b4:	10050e63          	beqz	a0,800019d0 <_ZN15MemoryAllocator9mem_allocEm+0x128>
    800018b8:	00050793          	mv	a5,a0
    800018bc:	00004717          	auipc	a4,0x4
    800018c0:	14473703          	ld	a4,324(a4) # 80005a00 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018c4:	00073703          	ld	a4,0(a4)
    800018c8:	00004697          	auipc	a3,0x4
    800018cc:	1186b683          	ld	a3,280(a3) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800018d0:	0006b683          	ld	a3,0(a3)
    800018d4:	40d70733          	sub	a4,a4,a3
    800018d8:	03f70713          	addi	a4,a4,63
    800018dc:	00675713          	srli	a4,a4,0x6
    800018e0:	0ee57c63          	bgeu	a0,a4,800019d8 <_ZN15MemoryAllocator9mem_allocEm+0x130>
    DBlock* curr=nullptr;

    for(curr = headFree; curr ; curr=curr->next){ //iteriramo kroz free
    800018e4:	00004697          	auipc	a3,0x4
    800018e8:	1ac6b683          	ld	a3,428(a3) # 80005a90 <_ZN15MemoryAllocator8headFreeE>
    800018ec:	00068513          	mv	a0,a3
    800018f0:	06050263          	beqz	a0,80001954 <_ZN15MemoryAllocator9mem_allocEm+0xac>

        if(curr->size<size) continue; //nema prostora, idi na sledece
    800018f4:	00053703          	ld	a4,0(a0)
    800018f8:	06f76463          	bltu	a4,a5,80001960 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        if(curr->size==size){ //ima tacno onoliko prostora koliki je blok
    800018fc:	06f70663          	beq	a4,a5,80001968 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            if (curr == headFree) headFree = curr->next;
            curr->prev = curr->next = nullptr;

        }
        else{ //slucaj da ima prostora + viska
            curr->size-=size;
    80001900:	40f70733          	sub	a4,a4,a5
    80001904:	00e53023          	sd	a4,0(a0)
            curr=(DBlock*)((char*)curr+(curr->size*MEM_BLOCK_SIZE));
    80001908:	00671713          	slli	a4,a4,0x6
    8000190c:	00e50533          	add	a0,a0,a4
            curr->size=size;
    80001910:	00f53023          	sd	a5,0(a0)
            curr->prev=nullptr;
    80001914:	00053823          	sd	zero,16(a0)
            curr->next =nullptr;
    80001918:	00053423          	sd	zero,8(a0)

        }
        //ubaci u full listu

        if(!headFull){
    8000191c:	00004797          	auipc	a5,0x4
    80001920:	17c7b783          	ld	a5,380(a5) # 80005a98 <_ZN15MemoryAllocator8headFullE>
    80001924:	08078263          	beqz	a5,800019a8 <_ZN15MemoryAllocator9mem_allocEm+0x100>
            headFull=curr;
            return (char*)curr+DBlockSize;
        }

        if(headFull>curr) {
    80001928:	08f56863          	bltu	a0,a5,800019b8 <_ZN15MemoryAllocator9mem_allocEm+0x110>
            headFull=curr;
            return (char*)curr+DBlockSize;
        } //stavljamo na pocetak liste

        DBlock *currUsed=headFull;
        while(currUsed->next && currUsed->next<curr) currUsed=currUsed->next;
    8000192c:	00078713          	mv	a4,a5
    80001930:	0087b783          	ld	a5,8(a5)
    80001934:	00078463          	beqz	a5,8000193c <_ZN15MemoryAllocator9mem_allocEm+0x94>
    80001938:	fea7eae3          	bltu	a5,a0,8000192c <_ZN15MemoryAllocator9mem_allocEm+0x84>
        curr->next=currUsed->next;
    8000193c:	00f53423          	sd	a5,8(a0)
        if(currUsed->next) currUsed->next->prev=curr;
    80001940:	00078463          	beqz	a5,80001948 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80001944:	00a7b823          	sd	a0,16(a5)
        curr->prev=currUsed;
    80001948:	00e53823          	sd	a4,16(a0)
        currUsed->next=curr;
    8000194c:	00a73423          	sd	a0,8(a4)
        return (char*)curr+DBlockSize;
    80001950:	01850513          	addi	a0,a0,24
        //ubaciti na odgovarajuce mesto u full listi
        //currUsed je prethodnik curr
    }

    return nullptr;
}
    80001954:	00813403          	ld	s0,8(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret
    for(curr = headFree; curr ; curr=curr->next){ //iteriramo kroz free
    80001960:	00853503          	ld	a0,8(a0)
    80001964:	f8dff06f          	j	800018f0 <_ZN15MemoryAllocator9mem_allocEm+0x48>
            if(curr->next) curr->next->prev=curr->prev;
    80001968:	00853783          	ld	a5,8(a0)
    8000196c:	00078663          	beqz	a5,80001978 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
    80001970:	01053703          	ld	a4,16(a0)
    80001974:	00e7b823          	sd	a4,16(a5)
            if(curr->prev) curr->prev->next=curr->next; //izbacen iz free liste
    80001978:	01053783          	ld	a5,16(a0)
    8000197c:	00078663          	beqz	a5,80001988 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80001980:	00853703          	ld	a4,8(a0)
    80001984:	00e7b423          	sd	a4,8(a5)
            if (curr == headFree) headFree = curr->next;
    80001988:	00d50863          	beq	a0,a3,80001998 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->prev = curr->next = nullptr;
    8000198c:	00053423          	sd	zero,8(a0)
    80001990:	00053823          	sd	zero,16(a0)
    80001994:	f89ff06f          	j	8000191c <_ZN15MemoryAllocator9mem_allocEm+0x74>
            if (curr == headFree) headFree = curr->next;
    80001998:	00853783          	ld	a5,8(a0)
    8000199c:	00004717          	auipc	a4,0x4
    800019a0:	0ef73a23          	sd	a5,244(a4) # 80005a90 <_ZN15MemoryAllocator8headFreeE>
    800019a4:	fe9ff06f          	j	8000198c <_ZN15MemoryAllocator9mem_allocEm+0xe4>
            headFull=curr;
    800019a8:	00004797          	auipc	a5,0x4
    800019ac:	0ea7b823          	sd	a0,240(a5) # 80005a98 <_ZN15MemoryAllocator8headFullE>
            return (char*)curr+DBlockSize;
    800019b0:	01850513          	addi	a0,a0,24
    800019b4:	fa1ff06f          	j	80001954 <_ZN15MemoryAllocator9mem_allocEm+0xac>
            curr->next=headFull;
    800019b8:	00f53423          	sd	a5,8(a0)
            headFull->prev=curr;
    800019bc:	00a7b823          	sd	a0,16(a5)
            headFull=curr;
    800019c0:	00004797          	auipc	a5,0x4
    800019c4:	0ca7bc23          	sd	a0,216(a5) # 80005a98 <_ZN15MemoryAllocator8headFullE>
            return (char*)curr+DBlockSize;
    800019c8:	01850513          	addi	a0,a0,24
    800019cc:	f89ff06f          	j	80001954 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    if(size <=0 || size>=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR)/MEM_BLOCK_SIZE) return nullptr;
    800019d0:	00000513          	li	a0,0
    800019d4:	f81ff06f          	j	80001954 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800019d8:	00000513          	li	a0,0
    800019dc:	f79ff06f          	j	80001954 <_ZN15MemoryAllocator9mem_allocEm+0xac>

00000000800019e0 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>:
    }

    return -1; // 0 ako je ok -1 ako nije
}

void MemoryAllocator::tryToJoin(DBlock* curr){
    800019e0:	ff010113          	addi	sp,sp,-16
    800019e4:	00813423          	sd	s0,8(sp)
    800019e8:	01010413          	addi	s0,sp,16
    if(!curr) return;
    800019ec:	00050e63          	beqz	a0,80001a08 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    if(curr->next && (char*)curr+curr->size*MEM_BLOCK_SIZE == (char*)curr->next){
    800019f0:	00853783          	ld	a5,8(a0)
    800019f4:	00078a63          	beqz	a5,80001a08 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    800019f8:	00053683          	ld	a3,0(a0)
    800019fc:	00669713          	slli	a4,a3,0x6
    80001a00:	00e50733          	add	a4,a0,a4
    80001a04:	00e78863          	beq	a5,a4,80001a14 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x34>
        curr->size+=curr->next->size;
        curr->next=curr->next->next;
        if(curr->next) curr->next->prev=curr;
    }
}
    80001a08:	00813403          	ld	s0,8(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret
        curr->size+=curr->next->size;
    80001a14:	0007b703          	ld	a4,0(a5)
    80001a18:	00e686b3          	add	a3,a3,a4
    80001a1c:	00d53023          	sd	a3,0(a0)
        curr->next=curr->next->next;
    80001a20:	0087b783          	ld	a5,8(a5)
    80001a24:	00f53423          	sd	a5,8(a0)
        if(curr->next) curr->next->prev=curr;
    80001a28:	fe0780e3          	beqz	a5,80001a08 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    80001a2c:	00a7b823          	sd	a0,16(a5)
    80001a30:	fd9ff06f          	j	80001a08 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>

0000000080001a34 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!ptr) return -1;
    80001a34:	10050c63          	beqz	a0,80001b4c <_ZN15MemoryAllocator8mem_freeEPv+0x118>
int MemoryAllocator::mem_free (void* ptr){
    80001a38:	fe010113          	addi	sp,sp,-32
    80001a3c:	00113c23          	sd	ra,24(sp)
    80001a40:	00813823          	sd	s0,16(sp)
    80001a44:	00913423          	sd	s1,8(sp)
    80001a48:	02010413          	addi	s0,sp,32
    ptr=(DBlock*)((char*)ptr-DBlockSize);
    80001a4c:	fe850513          	addi	a0,a0,-24
    for(DBlock* curr=headFull; curr || ptr<=curr; curr=curr->next){
    80001a50:	00004797          	auipc	a5,0x4
    80001a54:	0487b783          	ld	a5,72(a5) # 80005a98 <_ZN15MemoryAllocator8headFullE>
    80001a58:	00078493          	mv	s1,a5
    80001a5c:	00c0006f          	j	80001a68 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
        if(curr==ptr){ //curr izbacujemo iz full liste
    80001a60:	00a48c63          	beq	s1,a0,80001a78 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
    for(DBlock* curr=headFull; curr || ptr<=curr; curr=curr->next){
    80001a64:	0084b483          	ld	s1,8(s1)
    80001a68:	fe049ce3          	bnez	s1,80001a60 <_ZN15MemoryAllocator8mem_freeEPv+0x2c>
    80001a6c:	fea4fae3          	bgeu	s1,a0,80001a60 <_ZN15MemoryAllocator8mem_freeEPv+0x2c>
    return -1; // 0 ako je ok -1 ako nije
    80001a70:	fff00513          	li	a0,-1
    80001a74:	0800006f          	j	80001af4 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
            if(curr->next) curr->next->prev=curr->prev;
    80001a78:	0084b703          	ld	a4,8(s1)
    80001a7c:	00070663          	beqz	a4,80001a88 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    80001a80:	0104b683          	ld	a3,16(s1)
    80001a84:	00d73823          	sd	a3,16(a4)
            if(curr->prev) curr->prev->next=curr->next;
    80001a88:	0104b703          	ld	a4,16(s1)
    80001a8c:	00070663          	beqz	a4,80001a98 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    80001a90:	0084b683          	ld	a3,8(s1)
    80001a94:	00d73423          	sd	a3,8(a4)
            if (curr == headFull) headFull = curr->next;
    80001a98:	06f48863          	beq	s1,a5,80001b08 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
            curr->prev = curr->next = nullptr;
    80001a9c:	0004b423          	sd	zero,8(s1)
    80001aa0:	0004b823          	sd	zero,16(s1)
            if(!headFree){
    80001aa4:	00004797          	auipc	a5,0x4
    80001aa8:	fec7b783          	ld	a5,-20(a5) # 80005a90 <_ZN15MemoryAllocator8headFreeE>
    80001aac:	06078663          	beqz	a5,80001b18 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
            if(headFree>curr) {
    80001ab0:	06f4ec63          	bltu	s1,a5,80001b28 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
            while(currFree->next && currFree->next<curr) currFree=currFree->next;
    80001ab4:	00078713          	mv	a4,a5
    80001ab8:	0087b783          	ld	a5,8(a5)
    80001abc:	00078463          	beqz	a5,80001ac4 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80001ac0:	fe97eae3          	bltu	a5,s1,80001ab4 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            curr->next=currFree->next;
    80001ac4:	00f4b423          	sd	a5,8(s1)
            if(currFree->next) currFree->next->prev=curr;
    80001ac8:	00078463          	beqz	a5,80001ad0 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80001acc:	0097b823          	sd	s1,16(a5)
            curr->prev=currFree;
    80001ad0:	00e4b823          	sd	a4,16(s1)
            currFree->next=curr;
    80001ad4:	00973423          	sd	s1,8(a4)
            tryToJoin(curr);
    80001ad8:	00048513          	mv	a0,s1
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	f04080e7          	jalr	-252(ra) # 800019e0 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
            tryToJoin(curr->prev);
    80001ae4:	0104b503          	ld	a0,16(s1)
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	ef8080e7          	jalr	-264(ra) # 800019e0 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
            return 0;
    80001af0:	00000513          	li	a0,0
}
    80001af4:	01813083          	ld	ra,24(sp)
    80001af8:	01013403          	ld	s0,16(sp)
    80001afc:	00813483          	ld	s1,8(sp)
    80001b00:	02010113          	addi	sp,sp,32
    80001b04:	00008067          	ret
            if (curr == headFull) headFull = curr->next;
    80001b08:	0084b783          	ld	a5,8(s1)
    80001b0c:	00004717          	auipc	a4,0x4
    80001b10:	f8f73623          	sd	a5,-116(a4) # 80005a98 <_ZN15MemoryAllocator8headFullE>
    80001b14:	f89ff06f          	j	80001a9c <_ZN15MemoryAllocator8mem_freeEPv+0x68>
                headFree=curr;
    80001b18:	00004797          	auipc	a5,0x4
    80001b1c:	f697bc23          	sd	s1,-136(a5) # 80005a90 <_ZN15MemoryAllocator8headFreeE>
                return 0;
    80001b20:	00000513          	li	a0,0
    80001b24:	fd1ff06f          	j	80001af4 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
                curr->next=headFree;
    80001b28:	00f4b423          	sd	a5,8(s1)
                headFree->prev=curr;
    80001b2c:	0097b823          	sd	s1,16(a5)
                headFree=curr;
    80001b30:	00004797          	auipc	a5,0x4
    80001b34:	f697b023          	sd	s1,-160(a5) # 80005a90 <_ZN15MemoryAllocator8headFreeE>
                tryToJoin(headFree);
    80001b38:	00048513          	mv	a0,s1
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	ea4080e7          	jalr	-348(ra) # 800019e0 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
                return 0;
    80001b44:	00000513          	li	a0,0
    80001b48:	fadff06f          	j	80001af4 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
    if(!ptr) return -1;
    80001b4c:	fff00513          	li	a0,-1
}
    80001b50:	00008067          	ret

0000000080001b54 <_ZN15MemoryAllocator8printMemEv>:

void MemoryAllocator::printMem(){
    80001b54:	fe010113          	addi	sp,sp,-32
    80001b58:	00113c23          	sd	ra,24(sp)
    80001b5c:	00813823          	sd	s0,16(sp)
    80001b60:	00913423          	sd	s1,8(sp)
    80001b64:	02010413          	addi	s0,sp,32

    for (DBlock* blk = headFree; blk; blk=blk->next) {
    80001b68:	00004497          	auipc	s1,0x4
    80001b6c:	f284b483          	ld	s1,-216(s1) # 80005a90 <_ZN15MemoryAllocator8headFreeE>
    80001b70:	02048263          	beqz	s1,80001b94 <_ZN15MemoryAllocator8printMemEv+0x40>
        //printInt((uint64)blk);
        __putc('f');
    80001b74:	06600513          	li	a0,102
    80001b78:	00002097          	auipc	ra,0x2
    80001b7c:	764080e7          	jalr	1892(ra) # 800042dc <__putc>
        __putc('\n');
    80001b80:	00a00513          	li	a0,10
    80001b84:	00002097          	auipc	ra,0x2
    80001b88:	758080e7          	jalr	1880(ra) # 800042dc <__putc>
    for (DBlock* blk = headFree; blk; blk=blk->next) {
    80001b8c:	0084b483          	ld	s1,8(s1)
    80001b90:	fe1ff06f          	j	80001b70 <_ZN15MemoryAllocator8printMemEv+0x1c>
    }
    for (DBlock* blk = headFull; blk; blk=blk->next) {
    80001b94:	00004497          	auipc	s1,0x4
    80001b98:	f044b483          	ld	s1,-252(s1) # 80005a98 <_ZN15MemoryAllocator8headFullE>
    80001b9c:	02048263          	beqz	s1,80001bc0 <_ZN15MemoryAllocator8printMemEv+0x6c>
        //printInt((uint64)blk);
        __putc('u');
    80001ba0:	07500513          	li	a0,117
    80001ba4:	00002097          	auipc	ra,0x2
    80001ba8:	738080e7          	jalr	1848(ra) # 800042dc <__putc>
        __putc('\n');
    80001bac:	00a00513          	li	a0,10
    80001bb0:	00002097          	auipc	ra,0x2
    80001bb4:	72c080e7          	jalr	1836(ra) # 800042dc <__putc>
    for (DBlock* blk = headFull; blk; blk=blk->next) {
    80001bb8:	0084b483          	ld	s1,8(s1)
    80001bbc:	fe1ff06f          	j	80001b9c <_ZN15MemoryAllocator8printMemEv+0x48>
    }
}
    80001bc0:	01813083          	ld	ra,24(sp)
    80001bc4:	01013403          	ld	s0,16(sp)
    80001bc8:	00813483          	ld	s1,8(sp)
    80001bcc:	02010113          	addi	sp,sp,32
    80001bd0:	00008067          	ret

0000000080001bd4 <_ZN5Riscv16interruptHandlerEv>:
#include "../h/riscv.hpp"
#include "../h/syscallC.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/tcb.hpp"

void Riscv::interruptHandler(){ //PREKIDNA RUTINA
    80001bd4:	fa010113          	addi	sp,sp,-96
    80001bd8:	04113c23          	sd	ra,88(sp)
    80001bdc:	04813823          	sd	s0,80(sp)
    80001be0:	04913423          	sd	s1,72(sp)
    80001be4:	05213023          	sd	s2,64(sp)
    80001be8:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    80001bec:	142027f3          	csrr	a5,scause
    80001bf0:	fcf43423          	sd	a5,-56(s0)
    return value;
    80001bf4:	fc843703          	ld	a4,-56(s0)

    uint64 scause = readScause();

    if(scause==SOFTWARE) { //timer
    80001bf8:	fff00793          	li	a5,-1
    80001bfc:	03f79793          	slli	a5,a5,0x3f
    80001c00:	00178793          	addi	a5,a5,1
    80001c04:	08f70a63          	beq	a4,a5,80001c98 <_ZN5Riscv16interruptHandlerEv+0xc4>
        clearSip(bitmaskSip::SSIP);
    }
    else if(scause==EXTERNAL){
    80001c08:	fff00793          	li	a5,-1
    80001c0c:	03f79793          	slli	a5,a5,0x3f
    80001c10:	00978793          	addi	a5,a5,9
    80001c14:	0af70263          	beq	a4,a5,80001cb8 <_ZN5Riscv16interruptHandlerEv+0xe4>
        console_handler();
    }
    else if(scause==U_ECALL || scause==S_ECALL){
    80001c18:	ff870713          	addi	a4,a4,-8
    80001c1c:	00100793          	li	a5,1
    80001c20:	08e7e063          	bltu	a5,a4,80001ca0 <_ZN5Riscv16interruptHandlerEv+0xcc>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80001c24:	141027f3          	csrr	a5,sepc
    80001c28:	fcf43c23          	sd	a5,-40(s0)
    return value;
    80001c2c:	fd843483          	ld	s1,-40(s0)
        uint64 volatile oc, a1, a2, a3, a4;

        uint64 sepc=readSepc()+4;
    80001c30:	00448493          	addi	s1,s1,4
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
};

inline uint64 Riscv::readSstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80001c34:	100027f3          	csrr	a5,sstatus
    80001c38:	fcf43823          	sd	a5,-48(s0)
    return value;
    80001c3c:	fd043903          	ld	s2,-48(s0)
        uint64 sstatus=readSstatus();
        __asm__ volatile("mv %0, a0" : "=r"(oc)); // operation code
    80001c40:	00050793          	mv	a5,a0
    80001c44:	faf43023          	sd	a5,-96(s0)
        __asm__ volatile("mv %0, a1" : "=r"(a1));
    80001c48:	00058793          	mv	a5,a1
    80001c4c:	faf43423          	sd	a5,-88(s0)
        __asm__ volatile("mv %0, a2" : "=r"(a2));
    80001c50:	00060793          	mv	a5,a2
    80001c54:	faf43823          	sd	a5,-80(s0)
        __asm__ volatile("mv %0, a3" : "=r"(a3));
    80001c58:	00068793          	mv	a5,a3
    80001c5c:	faf43c23          	sd	a5,-72(s0)
        __asm__ volatile("mv %0, a4" : "=r"(a4));
    80001c60:	00070793          	mv	a5,a4
    80001c64:	fcf43023          	sd	a5,-64(s0)

        switch(oc){
    80001c68:	fa043783          	ld	a5,-96(s0)
    80001c6c:	01300713          	li	a4,19
    80001c70:	04f76a63          	bltu	a4,a5,80001cc4 <_ZN5Riscv16interruptHandlerEv+0xf0>
    80001c74:	08078063          	beqz	a5,80001cf4 <_ZN5Riscv16interruptHandlerEv+0x120>
    80001c78:	06f76e63          	bltu	a4,a5,80001cf4 <_ZN5Riscv16interruptHandlerEv+0x120>
    80001c7c:	00279793          	slli	a5,a5,0x2
    80001c80:	00003717          	auipc	a4,0x3
    80001c84:	3a870713          	addi	a4,a4,936 # 80005028 <_ZN15MemoryAllocator10DBlockSizeE+0x8>
    80001c88:	00e787b3          	add	a5,a5,a4
    80001c8c:	0007a783          	lw	a5,0(a5)
    80001c90:	00e787b3          	add	a5,a5,a4
    80001c94:	00078067          	jr	a5
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80001c98:	00200793          	li	a5,2
    80001c9c:	1447b073          	csrc	sip,a5
                break;
        }
        writeSepc(sepc);
        writeSstatus(sstatus);
    }
}
    80001ca0:	05813083          	ld	ra,88(sp)
    80001ca4:	05013403          	ld	s0,80(sp)
    80001ca8:	04813483          	ld	s1,72(sp)
    80001cac:	04013903          	ld	s2,64(sp)
    80001cb0:	06010113          	addi	sp,sp,96
    80001cb4:	00008067          	ret
        console_handler();
    80001cb8:	00002097          	auipc	ra,0x2
    80001cbc:	698080e7          	jalr	1688(ra) # 80004350 <console_handler>
    80001cc0:	fe1ff06f          	j	80001ca0 <_ZN5Riscv16interruptHandlerEv+0xcc>
        switch(oc){
    80001cc4:	04100713          	li	a4,65
    80001cc8:	06e78e63          	beq	a5,a4,80001d44 <_ZN5Riscv16interruptHandlerEv+0x170>
    80001ccc:	04200713          	li	a4,66
    80001cd0:	02e79263          	bne	a5,a4,80001cf4 <_ZN5Riscv16interruptHandlerEv+0x120>
                __putc(a1);
    80001cd4:	fa843503          	ld	a0,-88(s0)
    80001cd8:	0ff57513          	andi	a0,a0,255
    80001cdc:	00002097          	auipc	ra,0x2
    80001ce0:	600080e7          	jalr	1536(ra) # 800042dc <__putc>
                break;
    80001ce4:	0100006f          	j	80001cf4 <_ZN5Riscv16interruptHandlerEv+0x120>
                MemoryAllocator::mem_alloc((size_t)a1);
    80001ce8:	fa843503          	ld	a0,-88(s0)
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	bbc080e7          	jalr	-1092(ra) # 800018a8 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80001cf4:	14149073          	csrw	sepc,s1
}

inline void Riscv::writeSstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80001cf8:	10091073          	csrw	sstatus,s2
}
    80001cfc:	fa5ff06f          	j	80001ca0 <_ZN5Riscv16interruptHandlerEv+0xcc>
                MemoryAllocator::mem_free((void *)a1);
    80001d00:	fa843503          	ld	a0,-88(s0)
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	d30080e7          	jalr	-720(ra) # 80001a34 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80001d0c:	fe9ff06f          	j	80001cf4 <_ZN5Riscv16interruptHandlerEv+0x120>
                TCB::threadCreate((thread_t *)a1, (body)a2, (void *)a3, (void *)a4);
    80001d10:	fa843503          	ld	a0,-88(s0)
    80001d14:	fb043583          	ld	a1,-80(s0)
    80001d18:	fb843603          	ld	a2,-72(s0)
    80001d1c:	fc043683          	ld	a3,-64(s0)
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	91c080e7          	jalr	-1764(ra) # 8000163c <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_>
                break;
    80001d28:	fcdff06f          	j	80001cf4 <_ZN5Riscv16interruptHandlerEv+0x120>
                TCB::threadExit();
    80001d2c:	fffff097          	auipc	ra,0xfffff
    80001d30:	7ec080e7          	jalr	2028(ra) # 80001518 <_ZN3TCB10threadExitEv>
                break;
    80001d34:	fc1ff06f          	j	80001cf4 <_ZN5Riscv16interruptHandlerEv+0x120>
                TCB::dispatch();
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	9c8080e7          	jalr	-1592(ra) # 80001700 <_ZN3TCB8dispatchEv>
                break;
    80001d40:	fb5ff06f          	j	80001cf4 <_ZN5Riscv16interruptHandlerEv+0x120>
                __getc();
    80001d44:	00002097          	auipc	ra,0x2
    80001d48:	5d4080e7          	jalr	1492(ra) # 80004318 <__getc>
                break;
    80001d4c:	fa9ff06f          	j	80001cf4 <_ZN5Riscv16interruptHandlerEv+0x120>

0000000080001d50 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie(){
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00813423          	sd	s0,8(sp)
    80001d58:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001d5c:	14109073          	csrw	sepc,ra
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80001d60:	10000793          	li	a5,256
    80001d64:	1007b073          	csrc	sstatus,a5
    Riscv::clearSstatus(bitmaskSstatus::SPP);
    __asm__ volatile ("sret");
    80001d68:	10200073          	sret
    80001d6c:	00813403          	ld	s0,8(sp)
    80001d70:	01010113          	addi	sp,sp,16
    80001d74:	00008067          	ret

0000000080001d78 <_ZN9Scheduler3getEv>:
#include "../h/scheduler.hpp"

TCB* Scheduler::head=nullptr;
TCB* Scheduler::tail=nullptr;

TCB *Scheduler::get() {
    80001d78:	ff010113          	addi	sp,sp,-16
    80001d7c:	00813423          	sd	s0,8(sp)
    80001d80:	01010413          	addi	s0,sp,16

    if (!head) return nullptr;
    80001d84:	00004517          	auipc	a0,0x4
    80001d88:	d1c53503          	ld	a0,-740(a0) # 80005aa0 <_ZN9Scheduler4headE>
    80001d8c:	00050c63          	beqz	a0,80001da4 <_ZN9Scheduler3getEv+0x2c>
    TCB* thread=head;
    head=head->schedulerNext;
    80001d90:	03053783          	ld	a5,48(a0)
    80001d94:	00004717          	auipc	a4,0x4
    80001d98:	d0f73623          	sd	a5,-756(a4) # 80005aa0 <_ZN9Scheduler4headE>
    if (!head) tail=nullptr;
    80001d9c:	00078a63          	beqz	a5,80001db0 <_ZN9Scheduler3getEv+0x38>
    thread->schedulerNext=nullptr;
    80001da0:	02053823          	sd	zero,48(a0)
    return thread;
}
    80001da4:	00813403          	ld	s0,8(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret
    if (!head) tail=nullptr;
    80001db0:	00004797          	auipc	a5,0x4
    80001db4:	ce07bc23          	sd	zero,-776(a5) # 80005aa8 <_ZN9Scheduler4tailE>
    80001db8:	fe9ff06f          	j	80001da0 <_ZN9Scheduler3getEv+0x28>

0000000080001dbc <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *thread) {
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00813423          	sd	s0,8(sp)
    80001dc4:	01010413          	addi	s0,sp,16
    if (!head) head = tail = thread;
    80001dc8:	00004797          	auipc	a5,0x4
    80001dcc:	cd87b783          	ld	a5,-808(a5) # 80005aa0 <_ZN9Scheduler4headE>
    80001dd0:	02078263          	beqz	a5,80001df4 <_ZN9Scheduler3putEP3TCB+0x38>
    else tail = tail -> schedulerNext = thread;
    80001dd4:	00004797          	auipc	a5,0x4
    80001dd8:	ccc78793          	addi	a5,a5,-820 # 80005aa0 <_ZN9Scheduler4headE>
    80001ddc:	0087b703          	ld	a4,8(a5)
    80001de0:	02a73823          	sd	a0,48(a4)
    80001de4:	00a7b423          	sd	a0,8(a5)
}
    80001de8:	00813403          	ld	s0,8(sp)
    80001dec:	01010113          	addi	sp,sp,16
    80001df0:	00008067          	ret
    if (!head) head = tail = thread;
    80001df4:	00004797          	auipc	a5,0x4
    80001df8:	cac78793          	addi	a5,a5,-852 # 80005aa0 <_ZN9Scheduler4headE>
    80001dfc:	00a7b423          	sd	a0,8(a5)
    80001e00:	00a7b023          	sd	a0,0(a5)
    80001e04:	fe5ff06f          	j	80001de8 <_ZN9Scheduler3putEP3TCB+0x2c>

0000000080001e08 <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00113423          	sd	ra,8(sp)
    80001e10:	00813023          	sd	s0,0(sp)
    80001e14:	01010413          	addi	s0,sp,16
    size_t numOfBlocks=ROUNDUP((size+MemoryAllocator::DBlockSize))/MEM_BLOCK_SIZE;
    80001e18:	00004797          	auipc	a5,0x4
    80001e1c:	bf07b783          	ld	a5,-1040(a5) # 80005a08 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e20:	0007b783          	ld	a5,0(a5)
    80001e24:	00a78533          	add	a0,a5,a0
    80001e28:	03f50513          	addi	a0,a0,63
    return MemoryAllocator::mem_alloc(numOfBlocks);
    80001e2c:	00655513          	srli	a0,a0,0x6
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	a78080e7          	jalr	-1416(ra) # 800018a8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e38:	00813083          	ld	ra,8(sp)
    80001e3c:	00013403          	ld	s0,0(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret

0000000080001e48 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *ptr) {
    80001e48:	ff010113          	addi	sp,sp,-16
    80001e4c:	00113423          	sd	ra,8(sp)
    80001e50:	00813023          	sd	s0,0(sp)
    80001e54:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	bdc080e7          	jalr	-1060(ra) # 80001a34 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e60:	00813083          	ld	ra,8(sp)
    80001e64:	00013403          	ld	s0,0(sp)
    80001e68:	01010113          	addi	sp,sp,16
    80001e6c:	00008067          	ret

0000000080001e70 <_Z7syscallmmmmm>:
#include "../h/syscallC.hpp"
#include "../h/memoryAllocator.hpp"

void syscall(uint64 op_code, uint64 arg1 = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0) {
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00813423          	sd	s0,8(sp)
    80001e78:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001e7c:	00000073          	ecall
}
    80001e80:	00813403          	ld	s0,8(sp)
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret

0000000080001e8c <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size==0) return nullptr;
    80001e8c:	04050c63          	beqz	a0,80001ee4 <_Z9mem_allocm+0x58>
void* mem_alloc (size_t size) {
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00113423          	sd	ra,8(sp)
    80001e98:	00813023          	sd	s0,0(sp)
    80001e9c:	01010413          	addi	s0,sp,16
    void volatile *retVal;
    uint64 numOfBlocks=ROUNDUP(size+MemoryAllocator::DBlockSize-1)/MEM_BLOCK_SIZE;
    80001ea0:	00004797          	auipc	a5,0x4
    80001ea4:	b687b783          	ld	a5,-1176(a5) # 80005a08 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ea8:	0007b583          	ld	a1,0(a5)
    80001eac:	00a58533          	add	a0,a1,a0
    80001eb0:	03e50593          	addi	a1,a0,62
    syscall(MEM_ALLOC, numOfBlocks);
    80001eb4:	00000713          	li	a4,0
    80001eb8:	00000693          	li	a3,0
    80001ebc:	00000613          	li	a2,0
    80001ec0:	0065d593          	srli	a1,a1,0x6
    80001ec4:	00100513          	li	a0,1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	fa8080e7          	jalr	-88(ra) # 80001e70 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001ed0:	00050513          	mv	a0,a0
    return (void*)retVal;
}
    80001ed4:	00813083          	ld	ra,8(sp)
    80001ed8:	00013403          	ld	s0,0(sp)
    80001edc:	01010113          	addi	sp,sp,16
    80001ee0:	00008067          	ret
    if (size==0) return nullptr;
    80001ee4:	00000513          	li	a0,0
}
    80001ee8:	00008067          	ret

0000000080001eec <_Z8mem_freePv>:

int mem_free(void* ptr) {
    80001eec:	fe010113          	addi	sp,sp,-32
    80001ef0:	00113c23          	sd	ra,24(sp)
    80001ef4:	00813823          	sd	s0,16(sp)
    80001ef8:	02010413          	addi	s0,sp,32
    80001efc:	00050593          	mv	a1,a0
    syscall(MEM_FREE, (uint64)ptr);
    80001f00:	00000713          	li	a4,0
    80001f04:	00000693          	li	a3,0
    80001f08:	00000613          	li	a2,0
    80001f0c:	00200513          	li	a0,2
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	f60080e7          	jalr	-160(ra) # 80001e70 <_Z7syscallmmmmm>
    int volatile retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001f18:	00050793          	mv	a5,a0
    80001f1c:	fef42623          	sw	a5,-20(s0)
    return retVal;
    80001f20:	fec42503          	lw	a0,-20(s0)
}
    80001f24:	0005051b          	sext.w	a0,a0
    80001f28:	01813083          	ld	ra,24(sp)
    80001f2c:	01013403          	ld	s0,16(sp)
    80001f30:	02010113          	addi	sp,sp,32
    80001f34:	00008067          	ret

0000000080001f38 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*routine)(void *), void *arg) {
    80001f38:	fd010113          	addi	sp,sp,-48
    80001f3c:	02113423          	sd	ra,40(sp)
    80001f40:	02813023          	sd	s0,32(sp)
    80001f44:	00913c23          	sd	s1,24(sp)
    80001f48:	01213823          	sd	s2,16(sp)
    80001f4c:	01313423          	sd	s3,8(sp)
    80001f50:	03010413          	addi	s0,sp,48
    80001f54:	00050913          	mv	s2,a0
    80001f58:	00058493          	mv	s1,a1
    80001f5c:	00060993          	mv	s3,a2
    void* stack=nullptr;
    if (routine) {
    80001f60:	04058a63          	beqz	a1,80001fb4 <_Z13thread_createPP3TCBPFvPvES2_+0x7c>
        stack=mem_alloc(DEFAULT_STACK_SIZE);
    80001f64:	00001537          	lui	a0,0x1
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	f24080e7          	jalr	-220(ra) # 80001e8c <_Z9mem_allocm>
    80001f70:	00050713          	mv	a4,a0
        if (!stack) return -1;
    80001f74:	04050463          	beqz	a0,80001fbc <_Z13thread_createPP3TCBPFvPvES2_+0x84>
    }
    syscall(THREAD_CREATE, (uint64)handle, (uint64)routine, (uint64)arg, (uint64)stack);
    80001f78:	00098693          	mv	a3,s3
    80001f7c:	00048613          	mv	a2,s1
    80001f80:	00090593          	mv	a1,s2
    80001f84:	01100513          	li	a0,17
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	ee8080e7          	jalr	-280(ra) # 80001e70 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001f90:	00050513          	mv	a0,a0
    80001f94:	0005051b          	sext.w	a0,a0
    return retVal;
}
    80001f98:	02813083          	ld	ra,40(sp)
    80001f9c:	02013403          	ld	s0,32(sp)
    80001fa0:	01813483          	ld	s1,24(sp)
    80001fa4:	01013903          	ld	s2,16(sp)
    80001fa8:	00813983          	ld	s3,8(sp)
    80001fac:	03010113          	addi	sp,sp,48
    80001fb0:	00008067          	ret
    void* stack=nullptr;
    80001fb4:	00000713          	li	a4,0
    80001fb8:	fc1ff06f          	j	80001f78 <_Z13thread_createPP3TCBPFvPvES2_+0x40>
        if (!stack) return -1;
    80001fbc:	fff00513          	li	a0,-1
    80001fc0:	fd9ff06f          	j	80001f98 <_Z13thread_createPP3TCBPFvPvES2_+0x60>

0000000080001fc4 <_Z11thread_exitv>:

int thread_exit() {
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00113423          	sd	ra,8(sp)
    80001fcc:	00813023          	sd	s0,0(sp)
    80001fd0:	01010413          	addi	s0,sp,16
    syscall(THREAD_EXIT);
    80001fd4:	00000713          	li	a4,0
    80001fd8:	00000693          	li	a3,0
    80001fdc:	00000613          	li	a2,0
    80001fe0:	00000593          	li	a1,0
    80001fe4:	01200513          	li	a0,18
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	e88080e7          	jalr	-376(ra) # 80001e70 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001ff0:	00050513          	mv	a0,a0
    return retVal;
}
    80001ff4:	0005051b          	sext.w	a0,a0
    80001ff8:	00813083          	ld	ra,8(sp)
    80001ffc:	00013403          	ld	s0,0(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret

0000000080002008 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00113423          	sd	ra,8(sp)
    80002010:	00813023          	sd	s0,0(sp)
    80002014:	01010413          	addi	s0,sp,16
    syscall(THREAD_DISPATCH);
    80002018:	00000713          	li	a4,0
    8000201c:	00000693          	li	a3,0
    80002020:	00000613          	li	a2,0
    80002024:	00000593          	li	a1,0
    80002028:	01300513          	li	a0,19
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	e44080e7          	jalr	-444(ra) # 80001e70 <_Z7syscallmmmmm>
}
    80002034:	00813083          	ld	ra,8(sp)
    80002038:	00013403          	ld	s0,0(sp)
    8000203c:	01010113          	addi	sp,sp,16
    80002040:	00008067          	ret

0000000080002044 <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init) {
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00113423          	sd	ra,8(sp)
    8000204c:	00813023          	sd	s0,0(sp)
    80002050:	01010413          	addi	s0,sp,16
    syscall(SEM_OPEN, (uint64)handle, init);
    80002054:	00000713          	li	a4,0
    80002058:	00000693          	li	a3,0
    8000205c:	02059613          	slli	a2,a1,0x20
    80002060:	02065613          	srli	a2,a2,0x20
    80002064:	00050593          	mv	a1,a0
    80002068:	02100513          	li	a0,33
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	e04080e7          	jalr	-508(ra) # 80001e70 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002074:	00050513          	mv	a0,a0
    return retVal;
}
    80002078:	0005051b          	sext.w	a0,a0
    8000207c:	00813083          	ld	ra,8(sp)
    80002080:	00013403          	ld	s0,0(sp)
    80002084:	01010113          	addi	sp,sp,16
    80002088:	00008067          	ret

000000008000208c <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    8000208c:	ff010113          	addi	sp,sp,-16
    80002090:	00113423          	sd	ra,8(sp)
    80002094:	00813023          	sd	s0,0(sp)
    80002098:	01010413          	addi	s0,sp,16
    8000209c:	00050593          	mv	a1,a0
    //NESTO
    syscall(SEM_CLOSE, (uint64)handle);
    800020a0:	00000713          	li	a4,0
    800020a4:	00000693          	li	a3,0
    800020a8:	00000613          	li	a2,0
    800020ac:	02200513          	li	a0,34
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	dc0080e7          	jalr	-576(ra) # 80001e70 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800020b8:	00050513          	mv	a0,a0
    return retVal;
}
    800020bc:	0005051b          	sext.w	a0,a0
    800020c0:	00813083          	ld	ra,8(sp)
    800020c4:	00013403          	ld	s0,0(sp)
    800020c8:	01010113          	addi	sp,sp,16
    800020cc:	00008067          	ret

00000000800020d0 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    800020d0:	ff010113          	addi	sp,sp,-16
    800020d4:	00113423          	sd	ra,8(sp)
    800020d8:	00813023          	sd	s0,0(sp)
    800020dc:	01010413          	addi	s0,sp,16
    800020e0:	00050593          	mv	a1,a0
    syscall(SEM_WAIT, (uint64)id);
    800020e4:	00000713          	li	a4,0
    800020e8:	00000693          	li	a3,0
    800020ec:	00000613          	li	a2,0
    800020f0:	02300513          	li	a0,35
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	d7c080e7          	jalr	-644(ra) # 80001e70 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800020fc:	00050513          	mv	a0,a0
    return retVal;
}
    80002100:	0005051b          	sext.w	a0,a0
    80002104:	00813083          	ld	ra,8(sp)
    80002108:	00013403          	ld	s0,0(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) {
    80002114:	ff010113          	addi	sp,sp,-16
    80002118:	00113423          	sd	ra,8(sp)
    8000211c:	00813023          	sd	s0,0(sp)
    80002120:	01010413          	addi	s0,sp,16
    80002124:	00050593          	mv	a1,a0
    syscall(SEM_TRYWAIT, (uint64)id);
    80002128:	00000713          	li	a4,0
    8000212c:	00000693          	li	a3,0
    80002130:	00000613          	li	a2,0
    80002134:	02600513          	li	a0,38
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	d38080e7          	jalr	-712(ra) # 80001e70 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002140:	00050513          	mv	a0,a0
    return retVal;
}
    80002144:	0005051b          	sext.w	a0,a0
    80002148:	00813083          	ld	ra,8(sp)
    8000214c:	00013403          	ld	s0,0(sp)
    80002150:	01010113          	addi	sp,sp,16
    80002154:	00008067          	ret

0000000080002158 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    80002158:	ff010113          	addi	sp,sp,-16
    8000215c:	00113423          	sd	ra,8(sp)
    80002160:	00813023          	sd	s0,0(sp)
    80002164:	01010413          	addi	s0,sp,16
    80002168:	00050593          	mv	a1,a0
    syscall(SEM_SIGNAL, (uint64)id);
    8000216c:	00000713          	li	a4,0
    80002170:	00000693          	li	a3,0
    80002174:	00000613          	li	a2,0
    80002178:	02400513          	li	a0,36
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	cf4080e7          	jalr	-780(ra) # 80001e70 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002184:	00050513          	mv	a0,a0
    return retVal;
}
    80002188:	0005051b          	sext.w	a0,a0
    8000218c:	00813083          	ld	ra,8(sp)
    80002190:	00013403          	ld	s0,0(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <_Z4getcv>:

char getc() {
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00113423          	sd	ra,8(sp)
    800021a4:	00813023          	sd	s0,0(sp)
    800021a8:	01010413          	addi	s0,sp,16
    syscall(GETC);
    800021ac:	00000713          	li	a4,0
    800021b0:	00000693          	li	a3,0
    800021b4:	00000613          	li	a2,0
    800021b8:	00000593          	li	a1,0
    800021bc:	04100513          	li	a0,65
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	cb0080e7          	jalr	-848(ra) # 80001e70 <_Z7syscallmmmmm>
    char retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800021c8:	00050513          	mv	a0,a0
    return retVal;
}
    800021cc:	0ff57513          	andi	a0,a0,255
    800021d0:	00813083          	ld	ra,8(sp)
    800021d4:	00013403          	ld	s0,0(sp)
    800021d8:	01010113          	addi	sp,sp,16
    800021dc:	00008067          	ret

00000000800021e0 <_Z4putcc>:

void putc(char c) {
    800021e0:	ff010113          	addi	sp,sp,-16
    800021e4:	00113423          	sd	ra,8(sp)
    800021e8:	00813023          	sd	s0,0(sp)
    800021ec:	01010413          	addi	s0,sp,16
    800021f0:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    800021f4:	00000713          	li	a4,0
    800021f8:	00000693          	li	a3,0
    800021fc:	00000613          	li	a2,0
    80002200:	04200513          	li	a0,66
    80002204:	00000097          	auipc	ra,0x0
    80002208:	c6c080e7          	jalr	-916(ra) # 80001e70 <_Z7syscallmmmmm>
    8000220c:	00813083          	ld	ra,8(sp)
    80002210:	00013403          	ld	s0,0(sp)
    80002214:	01010113          	addi	sp,sp,16
    80002218:	00008067          	ret

000000008000221c <start>:
    8000221c:	ff010113          	addi	sp,sp,-16
    80002220:	00813423          	sd	s0,8(sp)
    80002224:	01010413          	addi	s0,sp,16
    80002228:	300027f3          	csrr	a5,mstatus
    8000222c:	ffffe737          	lui	a4,0xffffe
    80002230:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7aef>
    80002234:	00e7f7b3          	and	a5,a5,a4
    80002238:	00001737          	lui	a4,0x1
    8000223c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002240:	00e7e7b3          	or	a5,a5,a4
    80002244:	30079073          	csrw	mstatus,a5
    80002248:	00000797          	auipc	a5,0x0
    8000224c:	16078793          	addi	a5,a5,352 # 800023a8 <system_main>
    80002250:	34179073          	csrw	mepc,a5
    80002254:	00000793          	li	a5,0
    80002258:	18079073          	csrw	satp,a5
    8000225c:	000107b7          	lui	a5,0x10
    80002260:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002264:	30279073          	csrw	medeleg,a5
    80002268:	30379073          	csrw	mideleg,a5
    8000226c:	104027f3          	csrr	a5,sie
    80002270:	2227e793          	ori	a5,a5,546
    80002274:	10479073          	csrw	sie,a5
    80002278:	fff00793          	li	a5,-1
    8000227c:	00a7d793          	srli	a5,a5,0xa
    80002280:	3b079073          	csrw	pmpaddr0,a5
    80002284:	00f00793          	li	a5,15
    80002288:	3a079073          	csrw	pmpcfg0,a5
    8000228c:	f14027f3          	csrr	a5,mhartid
    80002290:	0200c737          	lui	a4,0x200c
    80002294:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002298:	0007869b          	sext.w	a3,a5
    8000229c:	00269713          	slli	a4,a3,0x2
    800022a0:	000f4637          	lui	a2,0xf4
    800022a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800022a8:	00d70733          	add	a4,a4,a3
    800022ac:	0037979b          	slliw	a5,a5,0x3
    800022b0:	020046b7          	lui	a3,0x2004
    800022b4:	00d787b3          	add	a5,a5,a3
    800022b8:	00c585b3          	add	a1,a1,a2
    800022bc:	00371693          	slli	a3,a4,0x3
    800022c0:	00003717          	auipc	a4,0x3
    800022c4:	7f070713          	addi	a4,a4,2032 # 80005ab0 <timer_scratch>
    800022c8:	00b7b023          	sd	a1,0(a5)
    800022cc:	00d70733          	add	a4,a4,a3
    800022d0:	00f73c23          	sd	a5,24(a4)
    800022d4:	02c73023          	sd	a2,32(a4)
    800022d8:	34071073          	csrw	mscratch,a4
    800022dc:	00000797          	auipc	a5,0x0
    800022e0:	6e478793          	addi	a5,a5,1764 # 800029c0 <timervec>
    800022e4:	30579073          	csrw	mtvec,a5
    800022e8:	300027f3          	csrr	a5,mstatus
    800022ec:	0087e793          	ori	a5,a5,8
    800022f0:	30079073          	csrw	mstatus,a5
    800022f4:	304027f3          	csrr	a5,mie
    800022f8:	0807e793          	ori	a5,a5,128
    800022fc:	30479073          	csrw	mie,a5
    80002300:	f14027f3          	csrr	a5,mhartid
    80002304:	0007879b          	sext.w	a5,a5
    80002308:	00078213          	mv	tp,a5
    8000230c:	30200073          	mret
    80002310:	00813403          	ld	s0,8(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <timerinit>:
    8000231c:	ff010113          	addi	sp,sp,-16
    80002320:	00813423          	sd	s0,8(sp)
    80002324:	01010413          	addi	s0,sp,16
    80002328:	f14027f3          	csrr	a5,mhartid
    8000232c:	0200c737          	lui	a4,0x200c
    80002330:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002334:	0007869b          	sext.w	a3,a5
    80002338:	00269713          	slli	a4,a3,0x2
    8000233c:	000f4637          	lui	a2,0xf4
    80002340:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002344:	00d70733          	add	a4,a4,a3
    80002348:	0037979b          	slliw	a5,a5,0x3
    8000234c:	020046b7          	lui	a3,0x2004
    80002350:	00d787b3          	add	a5,a5,a3
    80002354:	00c585b3          	add	a1,a1,a2
    80002358:	00371693          	slli	a3,a4,0x3
    8000235c:	00003717          	auipc	a4,0x3
    80002360:	75470713          	addi	a4,a4,1876 # 80005ab0 <timer_scratch>
    80002364:	00b7b023          	sd	a1,0(a5)
    80002368:	00d70733          	add	a4,a4,a3
    8000236c:	00f73c23          	sd	a5,24(a4)
    80002370:	02c73023          	sd	a2,32(a4)
    80002374:	34071073          	csrw	mscratch,a4
    80002378:	00000797          	auipc	a5,0x0
    8000237c:	64878793          	addi	a5,a5,1608 # 800029c0 <timervec>
    80002380:	30579073          	csrw	mtvec,a5
    80002384:	300027f3          	csrr	a5,mstatus
    80002388:	0087e793          	ori	a5,a5,8
    8000238c:	30079073          	csrw	mstatus,a5
    80002390:	304027f3          	csrr	a5,mie
    80002394:	0807e793          	ori	a5,a5,128
    80002398:	30479073          	csrw	mie,a5
    8000239c:	00813403          	ld	s0,8(sp)
    800023a0:	01010113          	addi	sp,sp,16
    800023a4:	00008067          	ret

00000000800023a8 <system_main>:
    800023a8:	fe010113          	addi	sp,sp,-32
    800023ac:	00813823          	sd	s0,16(sp)
    800023b0:	00913423          	sd	s1,8(sp)
    800023b4:	00113c23          	sd	ra,24(sp)
    800023b8:	02010413          	addi	s0,sp,32
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	0c4080e7          	jalr	196(ra) # 80002480 <cpuid>
    800023c4:	00003497          	auipc	s1,0x3
    800023c8:	65c48493          	addi	s1,s1,1628 # 80005a20 <started>
    800023cc:	02050263          	beqz	a0,800023f0 <system_main+0x48>
    800023d0:	0004a783          	lw	a5,0(s1)
    800023d4:	0007879b          	sext.w	a5,a5
    800023d8:	fe078ce3          	beqz	a5,800023d0 <system_main+0x28>
    800023dc:	0ff0000f          	fence
    800023e0:	00003517          	auipc	a0,0x3
    800023e4:	cc850513          	addi	a0,a0,-824 # 800050a8 <_ZN15MemoryAllocator10DBlockSizeE+0x88>
    800023e8:	00001097          	auipc	ra,0x1
    800023ec:	a74080e7          	jalr	-1420(ra) # 80002e5c <panic>
    800023f0:	00001097          	auipc	ra,0x1
    800023f4:	9c8080e7          	jalr	-1592(ra) # 80002db8 <consoleinit>
    800023f8:	00001097          	auipc	ra,0x1
    800023fc:	154080e7          	jalr	340(ra) # 8000354c <printfinit>
    80002400:	00003517          	auipc	a0,0x3
    80002404:	d8850513          	addi	a0,a0,-632 # 80005188 <_ZN15MemoryAllocator10DBlockSizeE+0x168>
    80002408:	00001097          	auipc	ra,0x1
    8000240c:	ab0080e7          	jalr	-1360(ra) # 80002eb8 <__printf>
    80002410:	00003517          	auipc	a0,0x3
    80002414:	c6850513          	addi	a0,a0,-920 # 80005078 <_ZN15MemoryAllocator10DBlockSizeE+0x58>
    80002418:	00001097          	auipc	ra,0x1
    8000241c:	aa0080e7          	jalr	-1376(ra) # 80002eb8 <__printf>
    80002420:	00003517          	auipc	a0,0x3
    80002424:	d6850513          	addi	a0,a0,-664 # 80005188 <_ZN15MemoryAllocator10DBlockSizeE+0x168>
    80002428:	00001097          	auipc	ra,0x1
    8000242c:	a90080e7          	jalr	-1392(ra) # 80002eb8 <__printf>
    80002430:	00001097          	auipc	ra,0x1
    80002434:	4a8080e7          	jalr	1192(ra) # 800038d8 <kinit>
    80002438:	00000097          	auipc	ra,0x0
    8000243c:	148080e7          	jalr	328(ra) # 80002580 <trapinit>
    80002440:	00000097          	auipc	ra,0x0
    80002444:	16c080e7          	jalr	364(ra) # 800025ac <trapinithart>
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	5b8080e7          	jalr	1464(ra) # 80002a00 <plicinit>
    80002450:	00000097          	auipc	ra,0x0
    80002454:	5d8080e7          	jalr	1496(ra) # 80002a28 <plicinithart>
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	078080e7          	jalr	120(ra) # 800024d0 <userinit>
    80002460:	0ff0000f          	fence
    80002464:	00100793          	li	a5,1
    80002468:	00003517          	auipc	a0,0x3
    8000246c:	c2850513          	addi	a0,a0,-984 # 80005090 <_ZN15MemoryAllocator10DBlockSizeE+0x70>
    80002470:	00f4a023          	sw	a5,0(s1)
    80002474:	00001097          	auipc	ra,0x1
    80002478:	a44080e7          	jalr	-1468(ra) # 80002eb8 <__printf>
    8000247c:	0000006f          	j	8000247c <system_main+0xd4>

0000000080002480 <cpuid>:
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00813423          	sd	s0,8(sp)
    80002488:	01010413          	addi	s0,sp,16
    8000248c:	00020513          	mv	a0,tp
    80002490:	00813403          	ld	s0,8(sp)
    80002494:	0005051b          	sext.w	a0,a0
    80002498:	01010113          	addi	sp,sp,16
    8000249c:	00008067          	ret

00000000800024a0 <mycpu>:
    800024a0:	ff010113          	addi	sp,sp,-16
    800024a4:	00813423          	sd	s0,8(sp)
    800024a8:	01010413          	addi	s0,sp,16
    800024ac:	00020793          	mv	a5,tp
    800024b0:	00813403          	ld	s0,8(sp)
    800024b4:	0007879b          	sext.w	a5,a5
    800024b8:	00779793          	slli	a5,a5,0x7
    800024bc:	00004517          	auipc	a0,0x4
    800024c0:	62450513          	addi	a0,a0,1572 # 80006ae0 <cpus>
    800024c4:	00f50533          	add	a0,a0,a5
    800024c8:	01010113          	addi	sp,sp,16
    800024cc:	00008067          	ret

00000000800024d0 <userinit>:
    800024d0:	ff010113          	addi	sp,sp,-16
    800024d4:	00813423          	sd	s0,8(sp)
    800024d8:	01010413          	addi	s0,sp,16
    800024dc:	00813403          	ld	s0,8(sp)
    800024e0:	01010113          	addi	sp,sp,16
    800024e4:	fffff317          	auipc	t1,0xfffff
    800024e8:	ec030067          	jr	-320(t1) # 800013a4 <main>

00000000800024ec <either_copyout>:
    800024ec:	ff010113          	addi	sp,sp,-16
    800024f0:	00813023          	sd	s0,0(sp)
    800024f4:	00113423          	sd	ra,8(sp)
    800024f8:	01010413          	addi	s0,sp,16
    800024fc:	02051663          	bnez	a0,80002528 <either_copyout+0x3c>
    80002500:	00058513          	mv	a0,a1
    80002504:	00060593          	mv	a1,a2
    80002508:	0006861b          	sext.w	a2,a3
    8000250c:	00002097          	auipc	ra,0x2
    80002510:	c58080e7          	jalr	-936(ra) # 80004164 <__memmove>
    80002514:	00813083          	ld	ra,8(sp)
    80002518:	00013403          	ld	s0,0(sp)
    8000251c:	00000513          	li	a0,0
    80002520:	01010113          	addi	sp,sp,16
    80002524:	00008067          	ret
    80002528:	00003517          	auipc	a0,0x3
    8000252c:	ba850513          	addi	a0,a0,-1112 # 800050d0 <_ZN15MemoryAllocator10DBlockSizeE+0xb0>
    80002530:	00001097          	auipc	ra,0x1
    80002534:	92c080e7          	jalr	-1748(ra) # 80002e5c <panic>

0000000080002538 <either_copyin>:
    80002538:	ff010113          	addi	sp,sp,-16
    8000253c:	00813023          	sd	s0,0(sp)
    80002540:	00113423          	sd	ra,8(sp)
    80002544:	01010413          	addi	s0,sp,16
    80002548:	02059463          	bnez	a1,80002570 <either_copyin+0x38>
    8000254c:	00060593          	mv	a1,a2
    80002550:	0006861b          	sext.w	a2,a3
    80002554:	00002097          	auipc	ra,0x2
    80002558:	c10080e7          	jalr	-1008(ra) # 80004164 <__memmove>
    8000255c:	00813083          	ld	ra,8(sp)
    80002560:	00013403          	ld	s0,0(sp)
    80002564:	00000513          	li	a0,0
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret
    80002570:	00003517          	auipc	a0,0x3
    80002574:	b8850513          	addi	a0,a0,-1144 # 800050f8 <_ZN15MemoryAllocator10DBlockSizeE+0xd8>
    80002578:	00001097          	auipc	ra,0x1
    8000257c:	8e4080e7          	jalr	-1820(ra) # 80002e5c <panic>

0000000080002580 <trapinit>:
    80002580:	ff010113          	addi	sp,sp,-16
    80002584:	00813423          	sd	s0,8(sp)
    80002588:	01010413          	addi	s0,sp,16
    8000258c:	00813403          	ld	s0,8(sp)
    80002590:	00003597          	auipc	a1,0x3
    80002594:	b9058593          	addi	a1,a1,-1136 # 80005120 <_ZN15MemoryAllocator10DBlockSizeE+0x100>
    80002598:	00004517          	auipc	a0,0x4
    8000259c:	5c850513          	addi	a0,a0,1480 # 80006b60 <tickslock>
    800025a0:	01010113          	addi	sp,sp,16
    800025a4:	00001317          	auipc	t1,0x1
    800025a8:	5c430067          	jr	1476(t1) # 80003b68 <initlock>

00000000800025ac <trapinithart>:
    800025ac:	ff010113          	addi	sp,sp,-16
    800025b0:	00813423          	sd	s0,8(sp)
    800025b4:	01010413          	addi	s0,sp,16
    800025b8:	00000797          	auipc	a5,0x0
    800025bc:	2f878793          	addi	a5,a5,760 # 800028b0 <kernelvec>
    800025c0:	10579073          	csrw	stvec,a5
    800025c4:	00813403          	ld	s0,8(sp)
    800025c8:	01010113          	addi	sp,sp,16
    800025cc:	00008067          	ret

00000000800025d0 <usertrap>:
    800025d0:	ff010113          	addi	sp,sp,-16
    800025d4:	00813423          	sd	s0,8(sp)
    800025d8:	01010413          	addi	s0,sp,16
    800025dc:	00813403          	ld	s0,8(sp)
    800025e0:	01010113          	addi	sp,sp,16
    800025e4:	00008067          	ret

00000000800025e8 <usertrapret>:
    800025e8:	ff010113          	addi	sp,sp,-16
    800025ec:	00813423          	sd	s0,8(sp)
    800025f0:	01010413          	addi	s0,sp,16
    800025f4:	00813403          	ld	s0,8(sp)
    800025f8:	01010113          	addi	sp,sp,16
    800025fc:	00008067          	ret

0000000080002600 <kerneltrap>:
    80002600:	fe010113          	addi	sp,sp,-32
    80002604:	00813823          	sd	s0,16(sp)
    80002608:	00113c23          	sd	ra,24(sp)
    8000260c:	00913423          	sd	s1,8(sp)
    80002610:	02010413          	addi	s0,sp,32
    80002614:	142025f3          	csrr	a1,scause
    80002618:	100027f3          	csrr	a5,sstatus
    8000261c:	0027f793          	andi	a5,a5,2
    80002620:	10079c63          	bnez	a5,80002738 <kerneltrap+0x138>
    80002624:	142027f3          	csrr	a5,scause
    80002628:	0207ce63          	bltz	a5,80002664 <kerneltrap+0x64>
    8000262c:	00003517          	auipc	a0,0x3
    80002630:	b3c50513          	addi	a0,a0,-1220 # 80005168 <_ZN15MemoryAllocator10DBlockSizeE+0x148>
    80002634:	00001097          	auipc	ra,0x1
    80002638:	884080e7          	jalr	-1916(ra) # 80002eb8 <__printf>
    8000263c:	141025f3          	csrr	a1,sepc
    80002640:	14302673          	csrr	a2,stval
    80002644:	00003517          	auipc	a0,0x3
    80002648:	b3450513          	addi	a0,a0,-1228 # 80005178 <_ZN15MemoryAllocator10DBlockSizeE+0x158>
    8000264c:	00001097          	auipc	ra,0x1
    80002650:	86c080e7          	jalr	-1940(ra) # 80002eb8 <__printf>
    80002654:	00003517          	auipc	a0,0x3
    80002658:	b3c50513          	addi	a0,a0,-1220 # 80005190 <_ZN15MemoryAllocator10DBlockSizeE+0x170>
    8000265c:	00001097          	auipc	ra,0x1
    80002660:	800080e7          	jalr	-2048(ra) # 80002e5c <panic>
    80002664:	0ff7f713          	andi	a4,a5,255
    80002668:	00900693          	li	a3,9
    8000266c:	04d70063          	beq	a4,a3,800026ac <kerneltrap+0xac>
    80002670:	fff00713          	li	a4,-1
    80002674:	03f71713          	slli	a4,a4,0x3f
    80002678:	00170713          	addi	a4,a4,1
    8000267c:	fae798e3          	bne	a5,a4,8000262c <kerneltrap+0x2c>
    80002680:	00000097          	auipc	ra,0x0
    80002684:	e00080e7          	jalr	-512(ra) # 80002480 <cpuid>
    80002688:	06050663          	beqz	a0,800026f4 <kerneltrap+0xf4>
    8000268c:	144027f3          	csrr	a5,sip
    80002690:	ffd7f793          	andi	a5,a5,-3
    80002694:	14479073          	csrw	sip,a5
    80002698:	01813083          	ld	ra,24(sp)
    8000269c:	01013403          	ld	s0,16(sp)
    800026a0:	00813483          	ld	s1,8(sp)
    800026a4:	02010113          	addi	sp,sp,32
    800026a8:	00008067          	ret
    800026ac:	00000097          	auipc	ra,0x0
    800026b0:	3c8080e7          	jalr	968(ra) # 80002a74 <plic_claim>
    800026b4:	00a00793          	li	a5,10
    800026b8:	00050493          	mv	s1,a0
    800026bc:	06f50863          	beq	a0,a5,8000272c <kerneltrap+0x12c>
    800026c0:	fc050ce3          	beqz	a0,80002698 <kerneltrap+0x98>
    800026c4:	00050593          	mv	a1,a0
    800026c8:	00003517          	auipc	a0,0x3
    800026cc:	a8050513          	addi	a0,a0,-1408 # 80005148 <_ZN15MemoryAllocator10DBlockSizeE+0x128>
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	7e8080e7          	jalr	2024(ra) # 80002eb8 <__printf>
    800026d8:	01013403          	ld	s0,16(sp)
    800026dc:	01813083          	ld	ra,24(sp)
    800026e0:	00048513          	mv	a0,s1
    800026e4:	00813483          	ld	s1,8(sp)
    800026e8:	02010113          	addi	sp,sp,32
    800026ec:	00000317          	auipc	t1,0x0
    800026f0:	3c030067          	jr	960(t1) # 80002aac <plic_complete>
    800026f4:	00004517          	auipc	a0,0x4
    800026f8:	46c50513          	addi	a0,a0,1132 # 80006b60 <tickslock>
    800026fc:	00001097          	auipc	ra,0x1
    80002700:	490080e7          	jalr	1168(ra) # 80003b8c <acquire>
    80002704:	00003717          	auipc	a4,0x3
    80002708:	32070713          	addi	a4,a4,800 # 80005a24 <ticks>
    8000270c:	00072783          	lw	a5,0(a4)
    80002710:	00004517          	auipc	a0,0x4
    80002714:	45050513          	addi	a0,a0,1104 # 80006b60 <tickslock>
    80002718:	0017879b          	addiw	a5,a5,1
    8000271c:	00f72023          	sw	a5,0(a4)
    80002720:	00001097          	auipc	ra,0x1
    80002724:	538080e7          	jalr	1336(ra) # 80003c58 <release>
    80002728:	f65ff06f          	j	8000268c <kerneltrap+0x8c>
    8000272c:	00001097          	auipc	ra,0x1
    80002730:	094080e7          	jalr	148(ra) # 800037c0 <uartintr>
    80002734:	fa5ff06f          	j	800026d8 <kerneltrap+0xd8>
    80002738:	00003517          	auipc	a0,0x3
    8000273c:	9f050513          	addi	a0,a0,-1552 # 80005128 <_ZN15MemoryAllocator10DBlockSizeE+0x108>
    80002740:	00000097          	auipc	ra,0x0
    80002744:	71c080e7          	jalr	1820(ra) # 80002e5c <panic>

0000000080002748 <clockintr>:
    80002748:	fe010113          	addi	sp,sp,-32
    8000274c:	00813823          	sd	s0,16(sp)
    80002750:	00913423          	sd	s1,8(sp)
    80002754:	00113c23          	sd	ra,24(sp)
    80002758:	02010413          	addi	s0,sp,32
    8000275c:	00004497          	auipc	s1,0x4
    80002760:	40448493          	addi	s1,s1,1028 # 80006b60 <tickslock>
    80002764:	00048513          	mv	a0,s1
    80002768:	00001097          	auipc	ra,0x1
    8000276c:	424080e7          	jalr	1060(ra) # 80003b8c <acquire>
    80002770:	00003717          	auipc	a4,0x3
    80002774:	2b470713          	addi	a4,a4,692 # 80005a24 <ticks>
    80002778:	00072783          	lw	a5,0(a4)
    8000277c:	01013403          	ld	s0,16(sp)
    80002780:	01813083          	ld	ra,24(sp)
    80002784:	00048513          	mv	a0,s1
    80002788:	0017879b          	addiw	a5,a5,1
    8000278c:	00813483          	ld	s1,8(sp)
    80002790:	00f72023          	sw	a5,0(a4)
    80002794:	02010113          	addi	sp,sp,32
    80002798:	00001317          	auipc	t1,0x1
    8000279c:	4c030067          	jr	1216(t1) # 80003c58 <release>

00000000800027a0 <devintr>:
    800027a0:	142027f3          	csrr	a5,scause
    800027a4:	00000513          	li	a0,0
    800027a8:	0007c463          	bltz	a5,800027b0 <devintr+0x10>
    800027ac:	00008067          	ret
    800027b0:	fe010113          	addi	sp,sp,-32
    800027b4:	00813823          	sd	s0,16(sp)
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	00913423          	sd	s1,8(sp)
    800027c0:	02010413          	addi	s0,sp,32
    800027c4:	0ff7f713          	andi	a4,a5,255
    800027c8:	00900693          	li	a3,9
    800027cc:	04d70c63          	beq	a4,a3,80002824 <devintr+0x84>
    800027d0:	fff00713          	li	a4,-1
    800027d4:	03f71713          	slli	a4,a4,0x3f
    800027d8:	00170713          	addi	a4,a4,1
    800027dc:	00e78c63          	beq	a5,a4,800027f4 <devintr+0x54>
    800027e0:	01813083          	ld	ra,24(sp)
    800027e4:	01013403          	ld	s0,16(sp)
    800027e8:	00813483          	ld	s1,8(sp)
    800027ec:	02010113          	addi	sp,sp,32
    800027f0:	00008067          	ret
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	c8c080e7          	jalr	-884(ra) # 80002480 <cpuid>
    800027fc:	06050663          	beqz	a0,80002868 <devintr+0xc8>
    80002800:	144027f3          	csrr	a5,sip
    80002804:	ffd7f793          	andi	a5,a5,-3
    80002808:	14479073          	csrw	sip,a5
    8000280c:	01813083          	ld	ra,24(sp)
    80002810:	01013403          	ld	s0,16(sp)
    80002814:	00813483          	ld	s1,8(sp)
    80002818:	00200513          	li	a0,2
    8000281c:	02010113          	addi	sp,sp,32
    80002820:	00008067          	ret
    80002824:	00000097          	auipc	ra,0x0
    80002828:	250080e7          	jalr	592(ra) # 80002a74 <plic_claim>
    8000282c:	00a00793          	li	a5,10
    80002830:	00050493          	mv	s1,a0
    80002834:	06f50663          	beq	a0,a5,800028a0 <devintr+0x100>
    80002838:	00100513          	li	a0,1
    8000283c:	fa0482e3          	beqz	s1,800027e0 <devintr+0x40>
    80002840:	00048593          	mv	a1,s1
    80002844:	00003517          	auipc	a0,0x3
    80002848:	90450513          	addi	a0,a0,-1788 # 80005148 <_ZN15MemoryAllocator10DBlockSizeE+0x128>
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	66c080e7          	jalr	1644(ra) # 80002eb8 <__printf>
    80002854:	00048513          	mv	a0,s1
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	254080e7          	jalr	596(ra) # 80002aac <plic_complete>
    80002860:	00100513          	li	a0,1
    80002864:	f7dff06f          	j	800027e0 <devintr+0x40>
    80002868:	00004517          	auipc	a0,0x4
    8000286c:	2f850513          	addi	a0,a0,760 # 80006b60 <tickslock>
    80002870:	00001097          	auipc	ra,0x1
    80002874:	31c080e7          	jalr	796(ra) # 80003b8c <acquire>
    80002878:	00003717          	auipc	a4,0x3
    8000287c:	1ac70713          	addi	a4,a4,428 # 80005a24 <ticks>
    80002880:	00072783          	lw	a5,0(a4)
    80002884:	00004517          	auipc	a0,0x4
    80002888:	2dc50513          	addi	a0,a0,732 # 80006b60 <tickslock>
    8000288c:	0017879b          	addiw	a5,a5,1
    80002890:	00f72023          	sw	a5,0(a4)
    80002894:	00001097          	auipc	ra,0x1
    80002898:	3c4080e7          	jalr	964(ra) # 80003c58 <release>
    8000289c:	f65ff06f          	j	80002800 <devintr+0x60>
    800028a0:	00001097          	auipc	ra,0x1
    800028a4:	f20080e7          	jalr	-224(ra) # 800037c0 <uartintr>
    800028a8:	fadff06f          	j	80002854 <devintr+0xb4>
    800028ac:	0000                	unimp
	...

00000000800028b0 <kernelvec>:
    800028b0:	f0010113          	addi	sp,sp,-256
    800028b4:	00113023          	sd	ra,0(sp)
    800028b8:	00213423          	sd	sp,8(sp)
    800028bc:	00313823          	sd	gp,16(sp)
    800028c0:	00413c23          	sd	tp,24(sp)
    800028c4:	02513023          	sd	t0,32(sp)
    800028c8:	02613423          	sd	t1,40(sp)
    800028cc:	02713823          	sd	t2,48(sp)
    800028d0:	02813c23          	sd	s0,56(sp)
    800028d4:	04913023          	sd	s1,64(sp)
    800028d8:	04a13423          	sd	a0,72(sp)
    800028dc:	04b13823          	sd	a1,80(sp)
    800028e0:	04c13c23          	sd	a2,88(sp)
    800028e4:	06d13023          	sd	a3,96(sp)
    800028e8:	06e13423          	sd	a4,104(sp)
    800028ec:	06f13823          	sd	a5,112(sp)
    800028f0:	07013c23          	sd	a6,120(sp)
    800028f4:	09113023          	sd	a7,128(sp)
    800028f8:	09213423          	sd	s2,136(sp)
    800028fc:	09313823          	sd	s3,144(sp)
    80002900:	09413c23          	sd	s4,152(sp)
    80002904:	0b513023          	sd	s5,160(sp)
    80002908:	0b613423          	sd	s6,168(sp)
    8000290c:	0b713823          	sd	s7,176(sp)
    80002910:	0b813c23          	sd	s8,184(sp)
    80002914:	0d913023          	sd	s9,192(sp)
    80002918:	0da13423          	sd	s10,200(sp)
    8000291c:	0db13823          	sd	s11,208(sp)
    80002920:	0dc13c23          	sd	t3,216(sp)
    80002924:	0fd13023          	sd	t4,224(sp)
    80002928:	0fe13423          	sd	t5,232(sp)
    8000292c:	0ff13823          	sd	t6,240(sp)
    80002930:	cd1ff0ef          	jal	ra,80002600 <kerneltrap>
    80002934:	00013083          	ld	ra,0(sp)
    80002938:	00813103          	ld	sp,8(sp)
    8000293c:	01013183          	ld	gp,16(sp)
    80002940:	02013283          	ld	t0,32(sp)
    80002944:	02813303          	ld	t1,40(sp)
    80002948:	03013383          	ld	t2,48(sp)
    8000294c:	03813403          	ld	s0,56(sp)
    80002950:	04013483          	ld	s1,64(sp)
    80002954:	04813503          	ld	a0,72(sp)
    80002958:	05013583          	ld	a1,80(sp)
    8000295c:	05813603          	ld	a2,88(sp)
    80002960:	06013683          	ld	a3,96(sp)
    80002964:	06813703          	ld	a4,104(sp)
    80002968:	07013783          	ld	a5,112(sp)
    8000296c:	07813803          	ld	a6,120(sp)
    80002970:	08013883          	ld	a7,128(sp)
    80002974:	08813903          	ld	s2,136(sp)
    80002978:	09013983          	ld	s3,144(sp)
    8000297c:	09813a03          	ld	s4,152(sp)
    80002980:	0a013a83          	ld	s5,160(sp)
    80002984:	0a813b03          	ld	s6,168(sp)
    80002988:	0b013b83          	ld	s7,176(sp)
    8000298c:	0b813c03          	ld	s8,184(sp)
    80002990:	0c013c83          	ld	s9,192(sp)
    80002994:	0c813d03          	ld	s10,200(sp)
    80002998:	0d013d83          	ld	s11,208(sp)
    8000299c:	0d813e03          	ld	t3,216(sp)
    800029a0:	0e013e83          	ld	t4,224(sp)
    800029a4:	0e813f03          	ld	t5,232(sp)
    800029a8:	0f013f83          	ld	t6,240(sp)
    800029ac:	10010113          	addi	sp,sp,256
    800029b0:	10200073          	sret
    800029b4:	00000013          	nop
    800029b8:	00000013          	nop
    800029bc:	00000013          	nop

00000000800029c0 <timervec>:
    800029c0:	34051573          	csrrw	a0,mscratch,a0
    800029c4:	00b53023          	sd	a1,0(a0)
    800029c8:	00c53423          	sd	a2,8(a0)
    800029cc:	00d53823          	sd	a3,16(a0)
    800029d0:	01853583          	ld	a1,24(a0)
    800029d4:	02053603          	ld	a2,32(a0)
    800029d8:	0005b683          	ld	a3,0(a1)
    800029dc:	00c686b3          	add	a3,a3,a2
    800029e0:	00d5b023          	sd	a3,0(a1)
    800029e4:	00200593          	li	a1,2
    800029e8:	14459073          	csrw	sip,a1
    800029ec:	01053683          	ld	a3,16(a0)
    800029f0:	00853603          	ld	a2,8(a0)
    800029f4:	00053583          	ld	a1,0(a0)
    800029f8:	34051573          	csrrw	a0,mscratch,a0
    800029fc:	30200073          	mret

0000000080002a00 <plicinit>:
    80002a00:	ff010113          	addi	sp,sp,-16
    80002a04:	00813423          	sd	s0,8(sp)
    80002a08:	01010413          	addi	s0,sp,16
    80002a0c:	00813403          	ld	s0,8(sp)
    80002a10:	0c0007b7          	lui	a5,0xc000
    80002a14:	00100713          	li	a4,1
    80002a18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002a1c:	00e7a223          	sw	a4,4(a5)
    80002a20:	01010113          	addi	sp,sp,16
    80002a24:	00008067          	ret

0000000080002a28 <plicinithart>:
    80002a28:	ff010113          	addi	sp,sp,-16
    80002a2c:	00813023          	sd	s0,0(sp)
    80002a30:	00113423          	sd	ra,8(sp)
    80002a34:	01010413          	addi	s0,sp,16
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	a48080e7          	jalr	-1464(ra) # 80002480 <cpuid>
    80002a40:	0085171b          	slliw	a4,a0,0x8
    80002a44:	0c0027b7          	lui	a5,0xc002
    80002a48:	00e787b3          	add	a5,a5,a4
    80002a4c:	40200713          	li	a4,1026
    80002a50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002a54:	00813083          	ld	ra,8(sp)
    80002a58:	00013403          	ld	s0,0(sp)
    80002a5c:	00d5151b          	slliw	a0,a0,0xd
    80002a60:	0c2017b7          	lui	a5,0xc201
    80002a64:	00a78533          	add	a0,a5,a0
    80002a68:	00052023          	sw	zero,0(a0)
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret

0000000080002a74 <plic_claim>:
    80002a74:	ff010113          	addi	sp,sp,-16
    80002a78:	00813023          	sd	s0,0(sp)
    80002a7c:	00113423          	sd	ra,8(sp)
    80002a80:	01010413          	addi	s0,sp,16
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	9fc080e7          	jalr	-1540(ra) # 80002480 <cpuid>
    80002a8c:	00813083          	ld	ra,8(sp)
    80002a90:	00013403          	ld	s0,0(sp)
    80002a94:	00d5151b          	slliw	a0,a0,0xd
    80002a98:	0c2017b7          	lui	a5,0xc201
    80002a9c:	00a78533          	add	a0,a5,a0
    80002aa0:	00452503          	lw	a0,4(a0)
    80002aa4:	01010113          	addi	sp,sp,16
    80002aa8:	00008067          	ret

0000000080002aac <plic_complete>:
    80002aac:	fe010113          	addi	sp,sp,-32
    80002ab0:	00813823          	sd	s0,16(sp)
    80002ab4:	00913423          	sd	s1,8(sp)
    80002ab8:	00113c23          	sd	ra,24(sp)
    80002abc:	02010413          	addi	s0,sp,32
    80002ac0:	00050493          	mv	s1,a0
    80002ac4:	00000097          	auipc	ra,0x0
    80002ac8:	9bc080e7          	jalr	-1604(ra) # 80002480 <cpuid>
    80002acc:	01813083          	ld	ra,24(sp)
    80002ad0:	01013403          	ld	s0,16(sp)
    80002ad4:	00d5179b          	slliw	a5,a0,0xd
    80002ad8:	0c201737          	lui	a4,0xc201
    80002adc:	00f707b3          	add	a5,a4,a5
    80002ae0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002ae4:	00813483          	ld	s1,8(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret

0000000080002af0 <consolewrite>:
    80002af0:	fb010113          	addi	sp,sp,-80
    80002af4:	04813023          	sd	s0,64(sp)
    80002af8:	04113423          	sd	ra,72(sp)
    80002afc:	02913c23          	sd	s1,56(sp)
    80002b00:	03213823          	sd	s2,48(sp)
    80002b04:	03313423          	sd	s3,40(sp)
    80002b08:	03413023          	sd	s4,32(sp)
    80002b0c:	01513c23          	sd	s5,24(sp)
    80002b10:	05010413          	addi	s0,sp,80
    80002b14:	06c05c63          	blez	a2,80002b8c <consolewrite+0x9c>
    80002b18:	00060993          	mv	s3,a2
    80002b1c:	00050a13          	mv	s4,a0
    80002b20:	00058493          	mv	s1,a1
    80002b24:	00000913          	li	s2,0
    80002b28:	fff00a93          	li	s5,-1
    80002b2c:	01c0006f          	j	80002b48 <consolewrite+0x58>
    80002b30:	fbf44503          	lbu	a0,-65(s0)
    80002b34:	0019091b          	addiw	s2,s2,1
    80002b38:	00148493          	addi	s1,s1,1
    80002b3c:	00001097          	auipc	ra,0x1
    80002b40:	a9c080e7          	jalr	-1380(ra) # 800035d8 <uartputc>
    80002b44:	03298063          	beq	s3,s2,80002b64 <consolewrite+0x74>
    80002b48:	00048613          	mv	a2,s1
    80002b4c:	00100693          	li	a3,1
    80002b50:	000a0593          	mv	a1,s4
    80002b54:	fbf40513          	addi	a0,s0,-65
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	9e0080e7          	jalr	-1568(ra) # 80002538 <either_copyin>
    80002b60:	fd5518e3          	bne	a0,s5,80002b30 <consolewrite+0x40>
    80002b64:	04813083          	ld	ra,72(sp)
    80002b68:	04013403          	ld	s0,64(sp)
    80002b6c:	03813483          	ld	s1,56(sp)
    80002b70:	02813983          	ld	s3,40(sp)
    80002b74:	02013a03          	ld	s4,32(sp)
    80002b78:	01813a83          	ld	s5,24(sp)
    80002b7c:	00090513          	mv	a0,s2
    80002b80:	03013903          	ld	s2,48(sp)
    80002b84:	05010113          	addi	sp,sp,80
    80002b88:	00008067          	ret
    80002b8c:	00000913          	li	s2,0
    80002b90:	fd5ff06f          	j	80002b64 <consolewrite+0x74>

0000000080002b94 <consoleread>:
    80002b94:	f9010113          	addi	sp,sp,-112
    80002b98:	06813023          	sd	s0,96(sp)
    80002b9c:	04913c23          	sd	s1,88(sp)
    80002ba0:	05213823          	sd	s2,80(sp)
    80002ba4:	05313423          	sd	s3,72(sp)
    80002ba8:	05413023          	sd	s4,64(sp)
    80002bac:	03513c23          	sd	s5,56(sp)
    80002bb0:	03613823          	sd	s6,48(sp)
    80002bb4:	03713423          	sd	s7,40(sp)
    80002bb8:	03813023          	sd	s8,32(sp)
    80002bbc:	06113423          	sd	ra,104(sp)
    80002bc0:	01913c23          	sd	s9,24(sp)
    80002bc4:	07010413          	addi	s0,sp,112
    80002bc8:	00060b93          	mv	s7,a2
    80002bcc:	00050913          	mv	s2,a0
    80002bd0:	00058c13          	mv	s8,a1
    80002bd4:	00060b1b          	sext.w	s6,a2
    80002bd8:	00004497          	auipc	s1,0x4
    80002bdc:	fb048493          	addi	s1,s1,-80 # 80006b88 <cons>
    80002be0:	00400993          	li	s3,4
    80002be4:	fff00a13          	li	s4,-1
    80002be8:	00a00a93          	li	s5,10
    80002bec:	05705e63          	blez	s7,80002c48 <consoleread+0xb4>
    80002bf0:	09c4a703          	lw	a4,156(s1)
    80002bf4:	0984a783          	lw	a5,152(s1)
    80002bf8:	0007071b          	sext.w	a4,a4
    80002bfc:	08e78463          	beq	a5,a4,80002c84 <consoleread+0xf0>
    80002c00:	07f7f713          	andi	a4,a5,127
    80002c04:	00e48733          	add	a4,s1,a4
    80002c08:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002c0c:	0017869b          	addiw	a3,a5,1
    80002c10:	08d4ac23          	sw	a3,152(s1)
    80002c14:	00070c9b          	sext.w	s9,a4
    80002c18:	0b370663          	beq	a4,s3,80002cc4 <consoleread+0x130>
    80002c1c:	00100693          	li	a3,1
    80002c20:	f9f40613          	addi	a2,s0,-97
    80002c24:	000c0593          	mv	a1,s8
    80002c28:	00090513          	mv	a0,s2
    80002c2c:	f8e40fa3          	sb	a4,-97(s0)
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	8bc080e7          	jalr	-1860(ra) # 800024ec <either_copyout>
    80002c38:	01450863          	beq	a0,s4,80002c48 <consoleread+0xb4>
    80002c3c:	001c0c13          	addi	s8,s8,1
    80002c40:	fffb8b9b          	addiw	s7,s7,-1
    80002c44:	fb5c94e3          	bne	s9,s5,80002bec <consoleread+0x58>
    80002c48:	000b851b          	sext.w	a0,s7
    80002c4c:	06813083          	ld	ra,104(sp)
    80002c50:	06013403          	ld	s0,96(sp)
    80002c54:	05813483          	ld	s1,88(sp)
    80002c58:	05013903          	ld	s2,80(sp)
    80002c5c:	04813983          	ld	s3,72(sp)
    80002c60:	04013a03          	ld	s4,64(sp)
    80002c64:	03813a83          	ld	s5,56(sp)
    80002c68:	02813b83          	ld	s7,40(sp)
    80002c6c:	02013c03          	ld	s8,32(sp)
    80002c70:	01813c83          	ld	s9,24(sp)
    80002c74:	40ab053b          	subw	a0,s6,a0
    80002c78:	03013b03          	ld	s6,48(sp)
    80002c7c:	07010113          	addi	sp,sp,112
    80002c80:	00008067          	ret
    80002c84:	00001097          	auipc	ra,0x1
    80002c88:	1d8080e7          	jalr	472(ra) # 80003e5c <push_on>
    80002c8c:	0984a703          	lw	a4,152(s1)
    80002c90:	09c4a783          	lw	a5,156(s1)
    80002c94:	0007879b          	sext.w	a5,a5
    80002c98:	fef70ce3          	beq	a4,a5,80002c90 <consoleread+0xfc>
    80002c9c:	00001097          	auipc	ra,0x1
    80002ca0:	234080e7          	jalr	564(ra) # 80003ed0 <pop_on>
    80002ca4:	0984a783          	lw	a5,152(s1)
    80002ca8:	07f7f713          	andi	a4,a5,127
    80002cac:	00e48733          	add	a4,s1,a4
    80002cb0:	01874703          	lbu	a4,24(a4)
    80002cb4:	0017869b          	addiw	a3,a5,1
    80002cb8:	08d4ac23          	sw	a3,152(s1)
    80002cbc:	00070c9b          	sext.w	s9,a4
    80002cc0:	f5371ee3          	bne	a4,s3,80002c1c <consoleread+0x88>
    80002cc4:	000b851b          	sext.w	a0,s7
    80002cc8:	f96bf2e3          	bgeu	s7,s6,80002c4c <consoleread+0xb8>
    80002ccc:	08f4ac23          	sw	a5,152(s1)
    80002cd0:	f7dff06f          	j	80002c4c <consoleread+0xb8>

0000000080002cd4 <consputc>:
    80002cd4:	10000793          	li	a5,256
    80002cd8:	00f50663          	beq	a0,a5,80002ce4 <consputc+0x10>
    80002cdc:	00001317          	auipc	t1,0x1
    80002ce0:	9f430067          	jr	-1548(t1) # 800036d0 <uartputc_sync>
    80002ce4:	ff010113          	addi	sp,sp,-16
    80002ce8:	00113423          	sd	ra,8(sp)
    80002cec:	00813023          	sd	s0,0(sp)
    80002cf0:	01010413          	addi	s0,sp,16
    80002cf4:	00800513          	li	a0,8
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	9d8080e7          	jalr	-1576(ra) # 800036d0 <uartputc_sync>
    80002d00:	02000513          	li	a0,32
    80002d04:	00001097          	auipc	ra,0x1
    80002d08:	9cc080e7          	jalr	-1588(ra) # 800036d0 <uartputc_sync>
    80002d0c:	00013403          	ld	s0,0(sp)
    80002d10:	00813083          	ld	ra,8(sp)
    80002d14:	00800513          	li	a0,8
    80002d18:	01010113          	addi	sp,sp,16
    80002d1c:	00001317          	auipc	t1,0x1
    80002d20:	9b430067          	jr	-1612(t1) # 800036d0 <uartputc_sync>

0000000080002d24 <consoleintr>:
    80002d24:	fe010113          	addi	sp,sp,-32
    80002d28:	00813823          	sd	s0,16(sp)
    80002d2c:	00913423          	sd	s1,8(sp)
    80002d30:	01213023          	sd	s2,0(sp)
    80002d34:	00113c23          	sd	ra,24(sp)
    80002d38:	02010413          	addi	s0,sp,32
    80002d3c:	00004917          	auipc	s2,0x4
    80002d40:	e4c90913          	addi	s2,s2,-436 # 80006b88 <cons>
    80002d44:	00050493          	mv	s1,a0
    80002d48:	00090513          	mv	a0,s2
    80002d4c:	00001097          	auipc	ra,0x1
    80002d50:	e40080e7          	jalr	-448(ra) # 80003b8c <acquire>
    80002d54:	02048c63          	beqz	s1,80002d8c <consoleintr+0x68>
    80002d58:	0a092783          	lw	a5,160(s2)
    80002d5c:	09892703          	lw	a4,152(s2)
    80002d60:	07f00693          	li	a3,127
    80002d64:	40e7873b          	subw	a4,a5,a4
    80002d68:	02e6e263          	bltu	a3,a4,80002d8c <consoleintr+0x68>
    80002d6c:	00d00713          	li	a4,13
    80002d70:	04e48063          	beq	s1,a4,80002db0 <consoleintr+0x8c>
    80002d74:	07f7f713          	andi	a4,a5,127
    80002d78:	00e90733          	add	a4,s2,a4
    80002d7c:	0017879b          	addiw	a5,a5,1
    80002d80:	0af92023          	sw	a5,160(s2)
    80002d84:	00970c23          	sb	s1,24(a4)
    80002d88:	08f92e23          	sw	a5,156(s2)
    80002d8c:	01013403          	ld	s0,16(sp)
    80002d90:	01813083          	ld	ra,24(sp)
    80002d94:	00813483          	ld	s1,8(sp)
    80002d98:	00013903          	ld	s2,0(sp)
    80002d9c:	00004517          	auipc	a0,0x4
    80002da0:	dec50513          	addi	a0,a0,-532 # 80006b88 <cons>
    80002da4:	02010113          	addi	sp,sp,32
    80002da8:	00001317          	auipc	t1,0x1
    80002dac:	eb030067          	jr	-336(t1) # 80003c58 <release>
    80002db0:	00a00493          	li	s1,10
    80002db4:	fc1ff06f          	j	80002d74 <consoleintr+0x50>

0000000080002db8 <consoleinit>:
    80002db8:	fe010113          	addi	sp,sp,-32
    80002dbc:	00113c23          	sd	ra,24(sp)
    80002dc0:	00813823          	sd	s0,16(sp)
    80002dc4:	00913423          	sd	s1,8(sp)
    80002dc8:	02010413          	addi	s0,sp,32
    80002dcc:	00004497          	auipc	s1,0x4
    80002dd0:	dbc48493          	addi	s1,s1,-580 # 80006b88 <cons>
    80002dd4:	00048513          	mv	a0,s1
    80002dd8:	00002597          	auipc	a1,0x2
    80002ddc:	3c858593          	addi	a1,a1,968 # 800051a0 <_ZN15MemoryAllocator10DBlockSizeE+0x180>
    80002de0:	00001097          	auipc	ra,0x1
    80002de4:	d88080e7          	jalr	-632(ra) # 80003b68 <initlock>
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	7ac080e7          	jalr	1964(ra) # 80003594 <uartinit>
    80002df0:	01813083          	ld	ra,24(sp)
    80002df4:	01013403          	ld	s0,16(sp)
    80002df8:	00000797          	auipc	a5,0x0
    80002dfc:	d9c78793          	addi	a5,a5,-612 # 80002b94 <consoleread>
    80002e00:	0af4bc23          	sd	a5,184(s1)
    80002e04:	00000797          	auipc	a5,0x0
    80002e08:	cec78793          	addi	a5,a5,-788 # 80002af0 <consolewrite>
    80002e0c:	0cf4b023          	sd	a5,192(s1)
    80002e10:	00813483          	ld	s1,8(sp)
    80002e14:	02010113          	addi	sp,sp,32
    80002e18:	00008067          	ret

0000000080002e1c <console_read>:
    80002e1c:	ff010113          	addi	sp,sp,-16
    80002e20:	00813423          	sd	s0,8(sp)
    80002e24:	01010413          	addi	s0,sp,16
    80002e28:	00813403          	ld	s0,8(sp)
    80002e2c:	00004317          	auipc	t1,0x4
    80002e30:	e1433303          	ld	t1,-492(t1) # 80006c40 <devsw+0x10>
    80002e34:	01010113          	addi	sp,sp,16
    80002e38:	00030067          	jr	t1

0000000080002e3c <console_write>:
    80002e3c:	ff010113          	addi	sp,sp,-16
    80002e40:	00813423          	sd	s0,8(sp)
    80002e44:	01010413          	addi	s0,sp,16
    80002e48:	00813403          	ld	s0,8(sp)
    80002e4c:	00004317          	auipc	t1,0x4
    80002e50:	dfc33303          	ld	t1,-516(t1) # 80006c48 <devsw+0x18>
    80002e54:	01010113          	addi	sp,sp,16
    80002e58:	00030067          	jr	t1

0000000080002e5c <panic>:
    80002e5c:	fe010113          	addi	sp,sp,-32
    80002e60:	00113c23          	sd	ra,24(sp)
    80002e64:	00813823          	sd	s0,16(sp)
    80002e68:	00913423          	sd	s1,8(sp)
    80002e6c:	02010413          	addi	s0,sp,32
    80002e70:	00050493          	mv	s1,a0
    80002e74:	00002517          	auipc	a0,0x2
    80002e78:	33450513          	addi	a0,a0,820 # 800051a8 <_ZN15MemoryAllocator10DBlockSizeE+0x188>
    80002e7c:	00004797          	auipc	a5,0x4
    80002e80:	e607a623          	sw	zero,-404(a5) # 80006ce8 <pr+0x18>
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	034080e7          	jalr	52(ra) # 80002eb8 <__printf>
    80002e8c:	00048513          	mv	a0,s1
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	028080e7          	jalr	40(ra) # 80002eb8 <__printf>
    80002e98:	00002517          	auipc	a0,0x2
    80002e9c:	2f050513          	addi	a0,a0,752 # 80005188 <_ZN15MemoryAllocator10DBlockSizeE+0x168>
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	018080e7          	jalr	24(ra) # 80002eb8 <__printf>
    80002ea8:	00100793          	li	a5,1
    80002eac:	00003717          	auipc	a4,0x3
    80002eb0:	b6f72e23          	sw	a5,-1156(a4) # 80005a28 <panicked>
    80002eb4:	0000006f          	j	80002eb4 <panic+0x58>

0000000080002eb8 <__printf>:
    80002eb8:	f3010113          	addi	sp,sp,-208
    80002ebc:	08813023          	sd	s0,128(sp)
    80002ec0:	07313423          	sd	s3,104(sp)
    80002ec4:	09010413          	addi	s0,sp,144
    80002ec8:	05813023          	sd	s8,64(sp)
    80002ecc:	08113423          	sd	ra,136(sp)
    80002ed0:	06913c23          	sd	s1,120(sp)
    80002ed4:	07213823          	sd	s2,112(sp)
    80002ed8:	07413023          	sd	s4,96(sp)
    80002edc:	05513c23          	sd	s5,88(sp)
    80002ee0:	05613823          	sd	s6,80(sp)
    80002ee4:	05713423          	sd	s7,72(sp)
    80002ee8:	03913c23          	sd	s9,56(sp)
    80002eec:	03a13823          	sd	s10,48(sp)
    80002ef0:	03b13423          	sd	s11,40(sp)
    80002ef4:	00004317          	auipc	t1,0x4
    80002ef8:	ddc30313          	addi	t1,t1,-548 # 80006cd0 <pr>
    80002efc:	01832c03          	lw	s8,24(t1)
    80002f00:	00b43423          	sd	a1,8(s0)
    80002f04:	00c43823          	sd	a2,16(s0)
    80002f08:	00d43c23          	sd	a3,24(s0)
    80002f0c:	02e43023          	sd	a4,32(s0)
    80002f10:	02f43423          	sd	a5,40(s0)
    80002f14:	03043823          	sd	a6,48(s0)
    80002f18:	03143c23          	sd	a7,56(s0)
    80002f1c:	00050993          	mv	s3,a0
    80002f20:	4a0c1663          	bnez	s8,800033cc <__printf+0x514>
    80002f24:	60098c63          	beqz	s3,8000353c <__printf+0x684>
    80002f28:	0009c503          	lbu	a0,0(s3)
    80002f2c:	00840793          	addi	a5,s0,8
    80002f30:	f6f43c23          	sd	a5,-136(s0)
    80002f34:	00000493          	li	s1,0
    80002f38:	22050063          	beqz	a0,80003158 <__printf+0x2a0>
    80002f3c:	00002a37          	lui	s4,0x2
    80002f40:	00018ab7          	lui	s5,0x18
    80002f44:	000f4b37          	lui	s6,0xf4
    80002f48:	00989bb7          	lui	s7,0x989
    80002f4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002f50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002f54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002f58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002f5c:	00148c9b          	addiw	s9,s1,1
    80002f60:	02500793          	li	a5,37
    80002f64:	01998933          	add	s2,s3,s9
    80002f68:	38f51263          	bne	a0,a5,800032ec <__printf+0x434>
    80002f6c:	00094783          	lbu	a5,0(s2)
    80002f70:	00078c9b          	sext.w	s9,a5
    80002f74:	1e078263          	beqz	a5,80003158 <__printf+0x2a0>
    80002f78:	0024849b          	addiw	s1,s1,2
    80002f7c:	07000713          	li	a4,112
    80002f80:	00998933          	add	s2,s3,s1
    80002f84:	38e78a63          	beq	a5,a4,80003318 <__printf+0x460>
    80002f88:	20f76863          	bltu	a4,a5,80003198 <__printf+0x2e0>
    80002f8c:	42a78863          	beq	a5,a0,800033bc <__printf+0x504>
    80002f90:	06400713          	li	a4,100
    80002f94:	40e79663          	bne	a5,a4,800033a0 <__printf+0x4e8>
    80002f98:	f7843783          	ld	a5,-136(s0)
    80002f9c:	0007a603          	lw	a2,0(a5)
    80002fa0:	00878793          	addi	a5,a5,8
    80002fa4:	f6f43c23          	sd	a5,-136(s0)
    80002fa8:	42064a63          	bltz	a2,800033dc <__printf+0x524>
    80002fac:	00a00713          	li	a4,10
    80002fb0:	02e677bb          	remuw	a5,a2,a4
    80002fb4:	00002d97          	auipc	s11,0x2
    80002fb8:	21cd8d93          	addi	s11,s11,540 # 800051d0 <digits>
    80002fbc:	00900593          	li	a1,9
    80002fc0:	0006051b          	sext.w	a0,a2
    80002fc4:	00000c93          	li	s9,0
    80002fc8:	02079793          	slli	a5,a5,0x20
    80002fcc:	0207d793          	srli	a5,a5,0x20
    80002fd0:	00fd87b3          	add	a5,s11,a5
    80002fd4:	0007c783          	lbu	a5,0(a5)
    80002fd8:	02e656bb          	divuw	a3,a2,a4
    80002fdc:	f8f40023          	sb	a5,-128(s0)
    80002fe0:	14c5d863          	bge	a1,a2,80003130 <__printf+0x278>
    80002fe4:	06300593          	li	a1,99
    80002fe8:	00100c93          	li	s9,1
    80002fec:	02e6f7bb          	remuw	a5,a3,a4
    80002ff0:	02079793          	slli	a5,a5,0x20
    80002ff4:	0207d793          	srli	a5,a5,0x20
    80002ff8:	00fd87b3          	add	a5,s11,a5
    80002ffc:	0007c783          	lbu	a5,0(a5)
    80003000:	02e6d73b          	divuw	a4,a3,a4
    80003004:	f8f400a3          	sb	a5,-127(s0)
    80003008:	12a5f463          	bgeu	a1,a0,80003130 <__printf+0x278>
    8000300c:	00a00693          	li	a3,10
    80003010:	00900593          	li	a1,9
    80003014:	02d777bb          	remuw	a5,a4,a3
    80003018:	02079793          	slli	a5,a5,0x20
    8000301c:	0207d793          	srli	a5,a5,0x20
    80003020:	00fd87b3          	add	a5,s11,a5
    80003024:	0007c503          	lbu	a0,0(a5)
    80003028:	02d757bb          	divuw	a5,a4,a3
    8000302c:	f8a40123          	sb	a0,-126(s0)
    80003030:	48e5f263          	bgeu	a1,a4,800034b4 <__printf+0x5fc>
    80003034:	06300513          	li	a0,99
    80003038:	02d7f5bb          	remuw	a1,a5,a3
    8000303c:	02059593          	slli	a1,a1,0x20
    80003040:	0205d593          	srli	a1,a1,0x20
    80003044:	00bd85b3          	add	a1,s11,a1
    80003048:	0005c583          	lbu	a1,0(a1)
    8000304c:	02d7d7bb          	divuw	a5,a5,a3
    80003050:	f8b401a3          	sb	a1,-125(s0)
    80003054:	48e57263          	bgeu	a0,a4,800034d8 <__printf+0x620>
    80003058:	3e700513          	li	a0,999
    8000305c:	02d7f5bb          	remuw	a1,a5,a3
    80003060:	02059593          	slli	a1,a1,0x20
    80003064:	0205d593          	srli	a1,a1,0x20
    80003068:	00bd85b3          	add	a1,s11,a1
    8000306c:	0005c583          	lbu	a1,0(a1)
    80003070:	02d7d7bb          	divuw	a5,a5,a3
    80003074:	f8b40223          	sb	a1,-124(s0)
    80003078:	46e57663          	bgeu	a0,a4,800034e4 <__printf+0x62c>
    8000307c:	02d7f5bb          	remuw	a1,a5,a3
    80003080:	02059593          	slli	a1,a1,0x20
    80003084:	0205d593          	srli	a1,a1,0x20
    80003088:	00bd85b3          	add	a1,s11,a1
    8000308c:	0005c583          	lbu	a1,0(a1)
    80003090:	02d7d7bb          	divuw	a5,a5,a3
    80003094:	f8b402a3          	sb	a1,-123(s0)
    80003098:	46ea7863          	bgeu	s4,a4,80003508 <__printf+0x650>
    8000309c:	02d7f5bb          	remuw	a1,a5,a3
    800030a0:	02059593          	slli	a1,a1,0x20
    800030a4:	0205d593          	srli	a1,a1,0x20
    800030a8:	00bd85b3          	add	a1,s11,a1
    800030ac:	0005c583          	lbu	a1,0(a1)
    800030b0:	02d7d7bb          	divuw	a5,a5,a3
    800030b4:	f8b40323          	sb	a1,-122(s0)
    800030b8:	3eeaf863          	bgeu	s5,a4,800034a8 <__printf+0x5f0>
    800030bc:	02d7f5bb          	remuw	a1,a5,a3
    800030c0:	02059593          	slli	a1,a1,0x20
    800030c4:	0205d593          	srli	a1,a1,0x20
    800030c8:	00bd85b3          	add	a1,s11,a1
    800030cc:	0005c583          	lbu	a1,0(a1)
    800030d0:	02d7d7bb          	divuw	a5,a5,a3
    800030d4:	f8b403a3          	sb	a1,-121(s0)
    800030d8:	42eb7e63          	bgeu	s6,a4,80003514 <__printf+0x65c>
    800030dc:	02d7f5bb          	remuw	a1,a5,a3
    800030e0:	02059593          	slli	a1,a1,0x20
    800030e4:	0205d593          	srli	a1,a1,0x20
    800030e8:	00bd85b3          	add	a1,s11,a1
    800030ec:	0005c583          	lbu	a1,0(a1)
    800030f0:	02d7d7bb          	divuw	a5,a5,a3
    800030f4:	f8b40423          	sb	a1,-120(s0)
    800030f8:	42ebfc63          	bgeu	s7,a4,80003530 <__printf+0x678>
    800030fc:	02079793          	slli	a5,a5,0x20
    80003100:	0207d793          	srli	a5,a5,0x20
    80003104:	00fd8db3          	add	s11,s11,a5
    80003108:	000dc703          	lbu	a4,0(s11)
    8000310c:	00a00793          	li	a5,10
    80003110:	00900c93          	li	s9,9
    80003114:	f8e404a3          	sb	a4,-119(s0)
    80003118:	00065c63          	bgez	a2,80003130 <__printf+0x278>
    8000311c:	f9040713          	addi	a4,s0,-112
    80003120:	00f70733          	add	a4,a4,a5
    80003124:	02d00693          	li	a3,45
    80003128:	fed70823          	sb	a3,-16(a4)
    8000312c:	00078c93          	mv	s9,a5
    80003130:	f8040793          	addi	a5,s0,-128
    80003134:	01978cb3          	add	s9,a5,s9
    80003138:	f7f40d13          	addi	s10,s0,-129
    8000313c:	000cc503          	lbu	a0,0(s9)
    80003140:	fffc8c93          	addi	s9,s9,-1
    80003144:	00000097          	auipc	ra,0x0
    80003148:	b90080e7          	jalr	-1136(ra) # 80002cd4 <consputc>
    8000314c:	ffac98e3          	bne	s9,s10,8000313c <__printf+0x284>
    80003150:	00094503          	lbu	a0,0(s2)
    80003154:	e00514e3          	bnez	a0,80002f5c <__printf+0xa4>
    80003158:	1a0c1663          	bnez	s8,80003304 <__printf+0x44c>
    8000315c:	08813083          	ld	ra,136(sp)
    80003160:	08013403          	ld	s0,128(sp)
    80003164:	07813483          	ld	s1,120(sp)
    80003168:	07013903          	ld	s2,112(sp)
    8000316c:	06813983          	ld	s3,104(sp)
    80003170:	06013a03          	ld	s4,96(sp)
    80003174:	05813a83          	ld	s5,88(sp)
    80003178:	05013b03          	ld	s6,80(sp)
    8000317c:	04813b83          	ld	s7,72(sp)
    80003180:	04013c03          	ld	s8,64(sp)
    80003184:	03813c83          	ld	s9,56(sp)
    80003188:	03013d03          	ld	s10,48(sp)
    8000318c:	02813d83          	ld	s11,40(sp)
    80003190:	0d010113          	addi	sp,sp,208
    80003194:	00008067          	ret
    80003198:	07300713          	li	a4,115
    8000319c:	1ce78a63          	beq	a5,a4,80003370 <__printf+0x4b8>
    800031a0:	07800713          	li	a4,120
    800031a4:	1ee79e63          	bne	a5,a4,800033a0 <__printf+0x4e8>
    800031a8:	f7843783          	ld	a5,-136(s0)
    800031ac:	0007a703          	lw	a4,0(a5)
    800031b0:	00878793          	addi	a5,a5,8
    800031b4:	f6f43c23          	sd	a5,-136(s0)
    800031b8:	28074263          	bltz	a4,8000343c <__printf+0x584>
    800031bc:	00002d97          	auipc	s11,0x2
    800031c0:	014d8d93          	addi	s11,s11,20 # 800051d0 <digits>
    800031c4:	00f77793          	andi	a5,a4,15
    800031c8:	00fd87b3          	add	a5,s11,a5
    800031cc:	0007c683          	lbu	a3,0(a5)
    800031d0:	00f00613          	li	a2,15
    800031d4:	0007079b          	sext.w	a5,a4
    800031d8:	f8d40023          	sb	a3,-128(s0)
    800031dc:	0047559b          	srliw	a1,a4,0x4
    800031e0:	0047569b          	srliw	a3,a4,0x4
    800031e4:	00000c93          	li	s9,0
    800031e8:	0ee65063          	bge	a2,a4,800032c8 <__printf+0x410>
    800031ec:	00f6f693          	andi	a3,a3,15
    800031f0:	00dd86b3          	add	a3,s11,a3
    800031f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800031f8:	0087d79b          	srliw	a5,a5,0x8
    800031fc:	00100c93          	li	s9,1
    80003200:	f8d400a3          	sb	a3,-127(s0)
    80003204:	0cb67263          	bgeu	a2,a1,800032c8 <__printf+0x410>
    80003208:	00f7f693          	andi	a3,a5,15
    8000320c:	00dd86b3          	add	a3,s11,a3
    80003210:	0006c583          	lbu	a1,0(a3)
    80003214:	00f00613          	li	a2,15
    80003218:	0047d69b          	srliw	a3,a5,0x4
    8000321c:	f8b40123          	sb	a1,-126(s0)
    80003220:	0047d593          	srli	a1,a5,0x4
    80003224:	28f67e63          	bgeu	a2,a5,800034c0 <__printf+0x608>
    80003228:	00f6f693          	andi	a3,a3,15
    8000322c:	00dd86b3          	add	a3,s11,a3
    80003230:	0006c503          	lbu	a0,0(a3)
    80003234:	0087d813          	srli	a6,a5,0x8
    80003238:	0087d69b          	srliw	a3,a5,0x8
    8000323c:	f8a401a3          	sb	a0,-125(s0)
    80003240:	28b67663          	bgeu	a2,a1,800034cc <__printf+0x614>
    80003244:	00f6f693          	andi	a3,a3,15
    80003248:	00dd86b3          	add	a3,s11,a3
    8000324c:	0006c583          	lbu	a1,0(a3)
    80003250:	00c7d513          	srli	a0,a5,0xc
    80003254:	00c7d69b          	srliw	a3,a5,0xc
    80003258:	f8b40223          	sb	a1,-124(s0)
    8000325c:	29067a63          	bgeu	a2,a6,800034f0 <__printf+0x638>
    80003260:	00f6f693          	andi	a3,a3,15
    80003264:	00dd86b3          	add	a3,s11,a3
    80003268:	0006c583          	lbu	a1,0(a3)
    8000326c:	0107d813          	srli	a6,a5,0x10
    80003270:	0107d69b          	srliw	a3,a5,0x10
    80003274:	f8b402a3          	sb	a1,-123(s0)
    80003278:	28a67263          	bgeu	a2,a0,800034fc <__printf+0x644>
    8000327c:	00f6f693          	andi	a3,a3,15
    80003280:	00dd86b3          	add	a3,s11,a3
    80003284:	0006c683          	lbu	a3,0(a3)
    80003288:	0147d79b          	srliw	a5,a5,0x14
    8000328c:	f8d40323          	sb	a3,-122(s0)
    80003290:	21067663          	bgeu	a2,a6,8000349c <__printf+0x5e4>
    80003294:	02079793          	slli	a5,a5,0x20
    80003298:	0207d793          	srli	a5,a5,0x20
    8000329c:	00fd8db3          	add	s11,s11,a5
    800032a0:	000dc683          	lbu	a3,0(s11)
    800032a4:	00800793          	li	a5,8
    800032a8:	00700c93          	li	s9,7
    800032ac:	f8d403a3          	sb	a3,-121(s0)
    800032b0:	00075c63          	bgez	a4,800032c8 <__printf+0x410>
    800032b4:	f9040713          	addi	a4,s0,-112
    800032b8:	00f70733          	add	a4,a4,a5
    800032bc:	02d00693          	li	a3,45
    800032c0:	fed70823          	sb	a3,-16(a4)
    800032c4:	00078c93          	mv	s9,a5
    800032c8:	f8040793          	addi	a5,s0,-128
    800032cc:	01978cb3          	add	s9,a5,s9
    800032d0:	f7f40d13          	addi	s10,s0,-129
    800032d4:	000cc503          	lbu	a0,0(s9)
    800032d8:	fffc8c93          	addi	s9,s9,-1
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	9f8080e7          	jalr	-1544(ra) # 80002cd4 <consputc>
    800032e4:	ff9d18e3          	bne	s10,s9,800032d4 <__printf+0x41c>
    800032e8:	0100006f          	j	800032f8 <__printf+0x440>
    800032ec:	00000097          	auipc	ra,0x0
    800032f0:	9e8080e7          	jalr	-1560(ra) # 80002cd4 <consputc>
    800032f4:	000c8493          	mv	s1,s9
    800032f8:	00094503          	lbu	a0,0(s2)
    800032fc:	c60510e3          	bnez	a0,80002f5c <__printf+0xa4>
    80003300:	e40c0ee3          	beqz	s8,8000315c <__printf+0x2a4>
    80003304:	00004517          	auipc	a0,0x4
    80003308:	9cc50513          	addi	a0,a0,-1588 # 80006cd0 <pr>
    8000330c:	00001097          	auipc	ra,0x1
    80003310:	94c080e7          	jalr	-1716(ra) # 80003c58 <release>
    80003314:	e49ff06f          	j	8000315c <__printf+0x2a4>
    80003318:	f7843783          	ld	a5,-136(s0)
    8000331c:	03000513          	li	a0,48
    80003320:	01000d13          	li	s10,16
    80003324:	00878713          	addi	a4,a5,8
    80003328:	0007bc83          	ld	s9,0(a5)
    8000332c:	f6e43c23          	sd	a4,-136(s0)
    80003330:	00000097          	auipc	ra,0x0
    80003334:	9a4080e7          	jalr	-1628(ra) # 80002cd4 <consputc>
    80003338:	07800513          	li	a0,120
    8000333c:	00000097          	auipc	ra,0x0
    80003340:	998080e7          	jalr	-1640(ra) # 80002cd4 <consputc>
    80003344:	00002d97          	auipc	s11,0x2
    80003348:	e8cd8d93          	addi	s11,s11,-372 # 800051d0 <digits>
    8000334c:	03ccd793          	srli	a5,s9,0x3c
    80003350:	00fd87b3          	add	a5,s11,a5
    80003354:	0007c503          	lbu	a0,0(a5)
    80003358:	fffd0d1b          	addiw	s10,s10,-1
    8000335c:	004c9c93          	slli	s9,s9,0x4
    80003360:	00000097          	auipc	ra,0x0
    80003364:	974080e7          	jalr	-1676(ra) # 80002cd4 <consputc>
    80003368:	fe0d12e3          	bnez	s10,8000334c <__printf+0x494>
    8000336c:	f8dff06f          	j	800032f8 <__printf+0x440>
    80003370:	f7843783          	ld	a5,-136(s0)
    80003374:	0007bc83          	ld	s9,0(a5)
    80003378:	00878793          	addi	a5,a5,8
    8000337c:	f6f43c23          	sd	a5,-136(s0)
    80003380:	000c9a63          	bnez	s9,80003394 <__printf+0x4dc>
    80003384:	1080006f          	j	8000348c <__printf+0x5d4>
    80003388:	001c8c93          	addi	s9,s9,1
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	948080e7          	jalr	-1720(ra) # 80002cd4 <consputc>
    80003394:	000cc503          	lbu	a0,0(s9)
    80003398:	fe0518e3          	bnez	a0,80003388 <__printf+0x4d0>
    8000339c:	f5dff06f          	j	800032f8 <__printf+0x440>
    800033a0:	02500513          	li	a0,37
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	930080e7          	jalr	-1744(ra) # 80002cd4 <consputc>
    800033ac:	000c8513          	mv	a0,s9
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	924080e7          	jalr	-1756(ra) # 80002cd4 <consputc>
    800033b8:	f41ff06f          	j	800032f8 <__printf+0x440>
    800033bc:	02500513          	li	a0,37
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	914080e7          	jalr	-1772(ra) # 80002cd4 <consputc>
    800033c8:	f31ff06f          	j	800032f8 <__printf+0x440>
    800033cc:	00030513          	mv	a0,t1
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	7bc080e7          	jalr	1980(ra) # 80003b8c <acquire>
    800033d8:	b4dff06f          	j	80002f24 <__printf+0x6c>
    800033dc:	40c0053b          	negw	a0,a2
    800033e0:	00a00713          	li	a4,10
    800033e4:	02e576bb          	remuw	a3,a0,a4
    800033e8:	00002d97          	auipc	s11,0x2
    800033ec:	de8d8d93          	addi	s11,s11,-536 # 800051d0 <digits>
    800033f0:	ff700593          	li	a1,-9
    800033f4:	02069693          	slli	a3,a3,0x20
    800033f8:	0206d693          	srli	a3,a3,0x20
    800033fc:	00dd86b3          	add	a3,s11,a3
    80003400:	0006c683          	lbu	a3,0(a3)
    80003404:	02e557bb          	divuw	a5,a0,a4
    80003408:	f8d40023          	sb	a3,-128(s0)
    8000340c:	10b65e63          	bge	a2,a1,80003528 <__printf+0x670>
    80003410:	06300593          	li	a1,99
    80003414:	02e7f6bb          	remuw	a3,a5,a4
    80003418:	02069693          	slli	a3,a3,0x20
    8000341c:	0206d693          	srli	a3,a3,0x20
    80003420:	00dd86b3          	add	a3,s11,a3
    80003424:	0006c683          	lbu	a3,0(a3)
    80003428:	02e7d73b          	divuw	a4,a5,a4
    8000342c:	00200793          	li	a5,2
    80003430:	f8d400a3          	sb	a3,-127(s0)
    80003434:	bca5ece3          	bltu	a1,a0,8000300c <__printf+0x154>
    80003438:	ce5ff06f          	j	8000311c <__printf+0x264>
    8000343c:	40e007bb          	negw	a5,a4
    80003440:	00002d97          	auipc	s11,0x2
    80003444:	d90d8d93          	addi	s11,s11,-624 # 800051d0 <digits>
    80003448:	00f7f693          	andi	a3,a5,15
    8000344c:	00dd86b3          	add	a3,s11,a3
    80003450:	0006c583          	lbu	a1,0(a3)
    80003454:	ff100613          	li	a2,-15
    80003458:	0047d69b          	srliw	a3,a5,0x4
    8000345c:	f8b40023          	sb	a1,-128(s0)
    80003460:	0047d59b          	srliw	a1,a5,0x4
    80003464:	0ac75e63          	bge	a4,a2,80003520 <__printf+0x668>
    80003468:	00f6f693          	andi	a3,a3,15
    8000346c:	00dd86b3          	add	a3,s11,a3
    80003470:	0006c603          	lbu	a2,0(a3)
    80003474:	00f00693          	li	a3,15
    80003478:	0087d79b          	srliw	a5,a5,0x8
    8000347c:	f8c400a3          	sb	a2,-127(s0)
    80003480:	d8b6e4e3          	bltu	a3,a1,80003208 <__printf+0x350>
    80003484:	00200793          	li	a5,2
    80003488:	e2dff06f          	j	800032b4 <__printf+0x3fc>
    8000348c:	00002c97          	auipc	s9,0x2
    80003490:	d24c8c93          	addi	s9,s9,-732 # 800051b0 <_ZN15MemoryAllocator10DBlockSizeE+0x190>
    80003494:	02800513          	li	a0,40
    80003498:	ef1ff06f          	j	80003388 <__printf+0x4d0>
    8000349c:	00700793          	li	a5,7
    800034a0:	00600c93          	li	s9,6
    800034a4:	e0dff06f          	j	800032b0 <__printf+0x3f8>
    800034a8:	00700793          	li	a5,7
    800034ac:	00600c93          	li	s9,6
    800034b0:	c69ff06f          	j	80003118 <__printf+0x260>
    800034b4:	00300793          	li	a5,3
    800034b8:	00200c93          	li	s9,2
    800034bc:	c5dff06f          	j	80003118 <__printf+0x260>
    800034c0:	00300793          	li	a5,3
    800034c4:	00200c93          	li	s9,2
    800034c8:	de9ff06f          	j	800032b0 <__printf+0x3f8>
    800034cc:	00400793          	li	a5,4
    800034d0:	00300c93          	li	s9,3
    800034d4:	dddff06f          	j	800032b0 <__printf+0x3f8>
    800034d8:	00400793          	li	a5,4
    800034dc:	00300c93          	li	s9,3
    800034e0:	c39ff06f          	j	80003118 <__printf+0x260>
    800034e4:	00500793          	li	a5,5
    800034e8:	00400c93          	li	s9,4
    800034ec:	c2dff06f          	j	80003118 <__printf+0x260>
    800034f0:	00500793          	li	a5,5
    800034f4:	00400c93          	li	s9,4
    800034f8:	db9ff06f          	j	800032b0 <__printf+0x3f8>
    800034fc:	00600793          	li	a5,6
    80003500:	00500c93          	li	s9,5
    80003504:	dadff06f          	j	800032b0 <__printf+0x3f8>
    80003508:	00600793          	li	a5,6
    8000350c:	00500c93          	li	s9,5
    80003510:	c09ff06f          	j	80003118 <__printf+0x260>
    80003514:	00800793          	li	a5,8
    80003518:	00700c93          	li	s9,7
    8000351c:	bfdff06f          	j	80003118 <__printf+0x260>
    80003520:	00100793          	li	a5,1
    80003524:	d91ff06f          	j	800032b4 <__printf+0x3fc>
    80003528:	00100793          	li	a5,1
    8000352c:	bf1ff06f          	j	8000311c <__printf+0x264>
    80003530:	00900793          	li	a5,9
    80003534:	00800c93          	li	s9,8
    80003538:	be1ff06f          	j	80003118 <__printf+0x260>
    8000353c:	00002517          	auipc	a0,0x2
    80003540:	c7c50513          	addi	a0,a0,-900 # 800051b8 <_ZN15MemoryAllocator10DBlockSizeE+0x198>
    80003544:	00000097          	auipc	ra,0x0
    80003548:	918080e7          	jalr	-1768(ra) # 80002e5c <panic>

000000008000354c <printfinit>:
    8000354c:	fe010113          	addi	sp,sp,-32
    80003550:	00813823          	sd	s0,16(sp)
    80003554:	00913423          	sd	s1,8(sp)
    80003558:	00113c23          	sd	ra,24(sp)
    8000355c:	02010413          	addi	s0,sp,32
    80003560:	00003497          	auipc	s1,0x3
    80003564:	77048493          	addi	s1,s1,1904 # 80006cd0 <pr>
    80003568:	00048513          	mv	a0,s1
    8000356c:	00002597          	auipc	a1,0x2
    80003570:	c5c58593          	addi	a1,a1,-932 # 800051c8 <_ZN15MemoryAllocator10DBlockSizeE+0x1a8>
    80003574:	00000097          	auipc	ra,0x0
    80003578:	5f4080e7          	jalr	1524(ra) # 80003b68 <initlock>
    8000357c:	01813083          	ld	ra,24(sp)
    80003580:	01013403          	ld	s0,16(sp)
    80003584:	0004ac23          	sw	zero,24(s1)
    80003588:	00813483          	ld	s1,8(sp)
    8000358c:	02010113          	addi	sp,sp,32
    80003590:	00008067          	ret

0000000080003594 <uartinit>:
    80003594:	ff010113          	addi	sp,sp,-16
    80003598:	00813423          	sd	s0,8(sp)
    8000359c:	01010413          	addi	s0,sp,16
    800035a0:	100007b7          	lui	a5,0x10000
    800035a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800035a8:	f8000713          	li	a4,-128
    800035ac:	00e781a3          	sb	a4,3(a5)
    800035b0:	00300713          	li	a4,3
    800035b4:	00e78023          	sb	a4,0(a5)
    800035b8:	000780a3          	sb	zero,1(a5)
    800035bc:	00e781a3          	sb	a4,3(a5)
    800035c0:	00700693          	li	a3,7
    800035c4:	00d78123          	sb	a3,2(a5)
    800035c8:	00e780a3          	sb	a4,1(a5)
    800035cc:	00813403          	ld	s0,8(sp)
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret

00000000800035d8 <uartputc>:
    800035d8:	00002797          	auipc	a5,0x2
    800035dc:	4507a783          	lw	a5,1104(a5) # 80005a28 <panicked>
    800035e0:	00078463          	beqz	a5,800035e8 <uartputc+0x10>
    800035e4:	0000006f          	j	800035e4 <uartputc+0xc>
    800035e8:	fd010113          	addi	sp,sp,-48
    800035ec:	02813023          	sd	s0,32(sp)
    800035f0:	00913c23          	sd	s1,24(sp)
    800035f4:	01213823          	sd	s2,16(sp)
    800035f8:	01313423          	sd	s3,8(sp)
    800035fc:	02113423          	sd	ra,40(sp)
    80003600:	03010413          	addi	s0,sp,48
    80003604:	00002917          	auipc	s2,0x2
    80003608:	42c90913          	addi	s2,s2,1068 # 80005a30 <uart_tx_r>
    8000360c:	00093783          	ld	a5,0(s2)
    80003610:	00002497          	auipc	s1,0x2
    80003614:	42848493          	addi	s1,s1,1064 # 80005a38 <uart_tx_w>
    80003618:	0004b703          	ld	a4,0(s1)
    8000361c:	02078693          	addi	a3,a5,32
    80003620:	00050993          	mv	s3,a0
    80003624:	02e69c63          	bne	a3,a4,8000365c <uartputc+0x84>
    80003628:	00001097          	auipc	ra,0x1
    8000362c:	834080e7          	jalr	-1996(ra) # 80003e5c <push_on>
    80003630:	00093783          	ld	a5,0(s2)
    80003634:	0004b703          	ld	a4,0(s1)
    80003638:	02078793          	addi	a5,a5,32
    8000363c:	00e79463          	bne	a5,a4,80003644 <uartputc+0x6c>
    80003640:	0000006f          	j	80003640 <uartputc+0x68>
    80003644:	00001097          	auipc	ra,0x1
    80003648:	88c080e7          	jalr	-1908(ra) # 80003ed0 <pop_on>
    8000364c:	00093783          	ld	a5,0(s2)
    80003650:	0004b703          	ld	a4,0(s1)
    80003654:	02078693          	addi	a3,a5,32
    80003658:	fce688e3          	beq	a3,a4,80003628 <uartputc+0x50>
    8000365c:	01f77693          	andi	a3,a4,31
    80003660:	00003597          	auipc	a1,0x3
    80003664:	69058593          	addi	a1,a1,1680 # 80006cf0 <uart_tx_buf>
    80003668:	00d586b3          	add	a3,a1,a3
    8000366c:	00170713          	addi	a4,a4,1
    80003670:	01368023          	sb	s3,0(a3)
    80003674:	00e4b023          	sd	a4,0(s1)
    80003678:	10000637          	lui	a2,0x10000
    8000367c:	02f71063          	bne	a4,a5,8000369c <uartputc+0xc4>
    80003680:	0340006f          	j	800036b4 <uartputc+0xdc>
    80003684:	00074703          	lbu	a4,0(a4)
    80003688:	00f93023          	sd	a5,0(s2)
    8000368c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003690:	00093783          	ld	a5,0(s2)
    80003694:	0004b703          	ld	a4,0(s1)
    80003698:	00f70e63          	beq	a4,a5,800036b4 <uartputc+0xdc>
    8000369c:	00564683          	lbu	a3,5(a2)
    800036a0:	01f7f713          	andi	a4,a5,31
    800036a4:	00e58733          	add	a4,a1,a4
    800036a8:	0206f693          	andi	a3,a3,32
    800036ac:	00178793          	addi	a5,a5,1
    800036b0:	fc069ae3          	bnez	a3,80003684 <uartputc+0xac>
    800036b4:	02813083          	ld	ra,40(sp)
    800036b8:	02013403          	ld	s0,32(sp)
    800036bc:	01813483          	ld	s1,24(sp)
    800036c0:	01013903          	ld	s2,16(sp)
    800036c4:	00813983          	ld	s3,8(sp)
    800036c8:	03010113          	addi	sp,sp,48
    800036cc:	00008067          	ret

00000000800036d0 <uartputc_sync>:
    800036d0:	ff010113          	addi	sp,sp,-16
    800036d4:	00813423          	sd	s0,8(sp)
    800036d8:	01010413          	addi	s0,sp,16
    800036dc:	00002717          	auipc	a4,0x2
    800036e0:	34c72703          	lw	a4,844(a4) # 80005a28 <panicked>
    800036e4:	02071663          	bnez	a4,80003710 <uartputc_sync+0x40>
    800036e8:	00050793          	mv	a5,a0
    800036ec:	100006b7          	lui	a3,0x10000
    800036f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800036f4:	02077713          	andi	a4,a4,32
    800036f8:	fe070ce3          	beqz	a4,800036f0 <uartputc_sync+0x20>
    800036fc:	0ff7f793          	andi	a5,a5,255
    80003700:	00f68023          	sb	a5,0(a3)
    80003704:	00813403          	ld	s0,8(sp)
    80003708:	01010113          	addi	sp,sp,16
    8000370c:	00008067          	ret
    80003710:	0000006f          	j	80003710 <uartputc_sync+0x40>

0000000080003714 <uartstart>:
    80003714:	ff010113          	addi	sp,sp,-16
    80003718:	00813423          	sd	s0,8(sp)
    8000371c:	01010413          	addi	s0,sp,16
    80003720:	00002617          	auipc	a2,0x2
    80003724:	31060613          	addi	a2,a2,784 # 80005a30 <uart_tx_r>
    80003728:	00002517          	auipc	a0,0x2
    8000372c:	31050513          	addi	a0,a0,784 # 80005a38 <uart_tx_w>
    80003730:	00063783          	ld	a5,0(a2)
    80003734:	00053703          	ld	a4,0(a0)
    80003738:	04f70263          	beq	a4,a5,8000377c <uartstart+0x68>
    8000373c:	100005b7          	lui	a1,0x10000
    80003740:	00003817          	auipc	a6,0x3
    80003744:	5b080813          	addi	a6,a6,1456 # 80006cf0 <uart_tx_buf>
    80003748:	01c0006f          	j	80003764 <uartstart+0x50>
    8000374c:	0006c703          	lbu	a4,0(a3)
    80003750:	00f63023          	sd	a5,0(a2)
    80003754:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003758:	00063783          	ld	a5,0(a2)
    8000375c:	00053703          	ld	a4,0(a0)
    80003760:	00f70e63          	beq	a4,a5,8000377c <uartstart+0x68>
    80003764:	01f7f713          	andi	a4,a5,31
    80003768:	00e806b3          	add	a3,a6,a4
    8000376c:	0055c703          	lbu	a4,5(a1)
    80003770:	00178793          	addi	a5,a5,1
    80003774:	02077713          	andi	a4,a4,32
    80003778:	fc071ae3          	bnez	a4,8000374c <uartstart+0x38>
    8000377c:	00813403          	ld	s0,8(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret

0000000080003788 <uartgetc>:
    80003788:	ff010113          	addi	sp,sp,-16
    8000378c:	00813423          	sd	s0,8(sp)
    80003790:	01010413          	addi	s0,sp,16
    80003794:	10000737          	lui	a4,0x10000
    80003798:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000379c:	0017f793          	andi	a5,a5,1
    800037a0:	00078c63          	beqz	a5,800037b8 <uartgetc+0x30>
    800037a4:	00074503          	lbu	a0,0(a4)
    800037a8:	0ff57513          	andi	a0,a0,255
    800037ac:	00813403          	ld	s0,8(sp)
    800037b0:	01010113          	addi	sp,sp,16
    800037b4:	00008067          	ret
    800037b8:	fff00513          	li	a0,-1
    800037bc:	ff1ff06f          	j	800037ac <uartgetc+0x24>

00000000800037c0 <uartintr>:
    800037c0:	100007b7          	lui	a5,0x10000
    800037c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800037c8:	0017f793          	andi	a5,a5,1
    800037cc:	0a078463          	beqz	a5,80003874 <uartintr+0xb4>
    800037d0:	fe010113          	addi	sp,sp,-32
    800037d4:	00813823          	sd	s0,16(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	00113c23          	sd	ra,24(sp)
    800037e0:	02010413          	addi	s0,sp,32
    800037e4:	100004b7          	lui	s1,0x10000
    800037e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800037ec:	0ff57513          	andi	a0,a0,255
    800037f0:	fffff097          	auipc	ra,0xfffff
    800037f4:	534080e7          	jalr	1332(ra) # 80002d24 <consoleintr>
    800037f8:	0054c783          	lbu	a5,5(s1)
    800037fc:	0017f793          	andi	a5,a5,1
    80003800:	fe0794e3          	bnez	a5,800037e8 <uartintr+0x28>
    80003804:	00002617          	auipc	a2,0x2
    80003808:	22c60613          	addi	a2,a2,556 # 80005a30 <uart_tx_r>
    8000380c:	00002517          	auipc	a0,0x2
    80003810:	22c50513          	addi	a0,a0,556 # 80005a38 <uart_tx_w>
    80003814:	00063783          	ld	a5,0(a2)
    80003818:	00053703          	ld	a4,0(a0)
    8000381c:	04f70263          	beq	a4,a5,80003860 <uartintr+0xa0>
    80003820:	100005b7          	lui	a1,0x10000
    80003824:	00003817          	auipc	a6,0x3
    80003828:	4cc80813          	addi	a6,a6,1228 # 80006cf0 <uart_tx_buf>
    8000382c:	01c0006f          	j	80003848 <uartintr+0x88>
    80003830:	0006c703          	lbu	a4,0(a3)
    80003834:	00f63023          	sd	a5,0(a2)
    80003838:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000383c:	00063783          	ld	a5,0(a2)
    80003840:	00053703          	ld	a4,0(a0)
    80003844:	00f70e63          	beq	a4,a5,80003860 <uartintr+0xa0>
    80003848:	01f7f713          	andi	a4,a5,31
    8000384c:	00e806b3          	add	a3,a6,a4
    80003850:	0055c703          	lbu	a4,5(a1)
    80003854:	00178793          	addi	a5,a5,1
    80003858:	02077713          	andi	a4,a4,32
    8000385c:	fc071ae3          	bnez	a4,80003830 <uartintr+0x70>
    80003860:	01813083          	ld	ra,24(sp)
    80003864:	01013403          	ld	s0,16(sp)
    80003868:	00813483          	ld	s1,8(sp)
    8000386c:	02010113          	addi	sp,sp,32
    80003870:	00008067          	ret
    80003874:	00002617          	auipc	a2,0x2
    80003878:	1bc60613          	addi	a2,a2,444 # 80005a30 <uart_tx_r>
    8000387c:	00002517          	auipc	a0,0x2
    80003880:	1bc50513          	addi	a0,a0,444 # 80005a38 <uart_tx_w>
    80003884:	00063783          	ld	a5,0(a2)
    80003888:	00053703          	ld	a4,0(a0)
    8000388c:	04f70263          	beq	a4,a5,800038d0 <uartintr+0x110>
    80003890:	100005b7          	lui	a1,0x10000
    80003894:	00003817          	auipc	a6,0x3
    80003898:	45c80813          	addi	a6,a6,1116 # 80006cf0 <uart_tx_buf>
    8000389c:	01c0006f          	j	800038b8 <uartintr+0xf8>
    800038a0:	0006c703          	lbu	a4,0(a3)
    800038a4:	00f63023          	sd	a5,0(a2)
    800038a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038ac:	00063783          	ld	a5,0(a2)
    800038b0:	00053703          	ld	a4,0(a0)
    800038b4:	02f70063          	beq	a4,a5,800038d4 <uartintr+0x114>
    800038b8:	01f7f713          	andi	a4,a5,31
    800038bc:	00e806b3          	add	a3,a6,a4
    800038c0:	0055c703          	lbu	a4,5(a1)
    800038c4:	00178793          	addi	a5,a5,1
    800038c8:	02077713          	andi	a4,a4,32
    800038cc:	fc071ae3          	bnez	a4,800038a0 <uartintr+0xe0>
    800038d0:	00008067          	ret
    800038d4:	00008067          	ret

00000000800038d8 <kinit>:
    800038d8:	fc010113          	addi	sp,sp,-64
    800038dc:	02913423          	sd	s1,40(sp)
    800038e0:	fffff7b7          	lui	a5,0xfffff
    800038e4:	00004497          	auipc	s1,0x4
    800038e8:	42b48493          	addi	s1,s1,1067 # 80007d0f <end+0xfff>
    800038ec:	02813823          	sd	s0,48(sp)
    800038f0:	01313c23          	sd	s3,24(sp)
    800038f4:	00f4f4b3          	and	s1,s1,a5
    800038f8:	02113c23          	sd	ra,56(sp)
    800038fc:	03213023          	sd	s2,32(sp)
    80003900:	01413823          	sd	s4,16(sp)
    80003904:	01513423          	sd	s5,8(sp)
    80003908:	04010413          	addi	s0,sp,64
    8000390c:	000017b7          	lui	a5,0x1
    80003910:	01100993          	li	s3,17
    80003914:	00f487b3          	add	a5,s1,a5
    80003918:	01b99993          	slli	s3,s3,0x1b
    8000391c:	06f9e063          	bltu	s3,a5,8000397c <kinit+0xa4>
    80003920:	00003a97          	auipc	s5,0x3
    80003924:	3f0a8a93          	addi	s5,s5,1008 # 80006d10 <end>
    80003928:	0754ec63          	bltu	s1,s5,800039a0 <kinit+0xc8>
    8000392c:	0734fa63          	bgeu	s1,s3,800039a0 <kinit+0xc8>
    80003930:	00088a37          	lui	s4,0x88
    80003934:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003938:	00002917          	auipc	s2,0x2
    8000393c:	10890913          	addi	s2,s2,264 # 80005a40 <kmem>
    80003940:	00ca1a13          	slli	s4,s4,0xc
    80003944:	0140006f          	j	80003958 <kinit+0x80>
    80003948:	000017b7          	lui	a5,0x1
    8000394c:	00f484b3          	add	s1,s1,a5
    80003950:	0554e863          	bltu	s1,s5,800039a0 <kinit+0xc8>
    80003954:	0534f663          	bgeu	s1,s3,800039a0 <kinit+0xc8>
    80003958:	00001637          	lui	a2,0x1
    8000395c:	00100593          	li	a1,1
    80003960:	00048513          	mv	a0,s1
    80003964:	00000097          	auipc	ra,0x0
    80003968:	5e4080e7          	jalr	1508(ra) # 80003f48 <__memset>
    8000396c:	00093783          	ld	a5,0(s2)
    80003970:	00f4b023          	sd	a5,0(s1)
    80003974:	00993023          	sd	s1,0(s2)
    80003978:	fd4498e3          	bne	s1,s4,80003948 <kinit+0x70>
    8000397c:	03813083          	ld	ra,56(sp)
    80003980:	03013403          	ld	s0,48(sp)
    80003984:	02813483          	ld	s1,40(sp)
    80003988:	02013903          	ld	s2,32(sp)
    8000398c:	01813983          	ld	s3,24(sp)
    80003990:	01013a03          	ld	s4,16(sp)
    80003994:	00813a83          	ld	s5,8(sp)
    80003998:	04010113          	addi	sp,sp,64
    8000399c:	00008067          	ret
    800039a0:	00002517          	auipc	a0,0x2
    800039a4:	84850513          	addi	a0,a0,-1976 # 800051e8 <digits+0x18>
    800039a8:	fffff097          	auipc	ra,0xfffff
    800039ac:	4b4080e7          	jalr	1204(ra) # 80002e5c <panic>

00000000800039b0 <freerange>:
    800039b0:	fc010113          	addi	sp,sp,-64
    800039b4:	000017b7          	lui	a5,0x1
    800039b8:	02913423          	sd	s1,40(sp)
    800039bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800039c0:	009504b3          	add	s1,a0,s1
    800039c4:	fffff537          	lui	a0,0xfffff
    800039c8:	02813823          	sd	s0,48(sp)
    800039cc:	02113c23          	sd	ra,56(sp)
    800039d0:	03213023          	sd	s2,32(sp)
    800039d4:	01313c23          	sd	s3,24(sp)
    800039d8:	01413823          	sd	s4,16(sp)
    800039dc:	01513423          	sd	s5,8(sp)
    800039e0:	01613023          	sd	s6,0(sp)
    800039e4:	04010413          	addi	s0,sp,64
    800039e8:	00a4f4b3          	and	s1,s1,a0
    800039ec:	00f487b3          	add	a5,s1,a5
    800039f0:	06f5e463          	bltu	a1,a5,80003a58 <freerange+0xa8>
    800039f4:	00003a97          	auipc	s5,0x3
    800039f8:	31ca8a93          	addi	s5,s5,796 # 80006d10 <end>
    800039fc:	0954e263          	bltu	s1,s5,80003a80 <freerange+0xd0>
    80003a00:	01100993          	li	s3,17
    80003a04:	01b99993          	slli	s3,s3,0x1b
    80003a08:	0734fc63          	bgeu	s1,s3,80003a80 <freerange+0xd0>
    80003a0c:	00058a13          	mv	s4,a1
    80003a10:	00002917          	auipc	s2,0x2
    80003a14:	03090913          	addi	s2,s2,48 # 80005a40 <kmem>
    80003a18:	00002b37          	lui	s6,0x2
    80003a1c:	0140006f          	j	80003a30 <freerange+0x80>
    80003a20:	000017b7          	lui	a5,0x1
    80003a24:	00f484b3          	add	s1,s1,a5
    80003a28:	0554ec63          	bltu	s1,s5,80003a80 <freerange+0xd0>
    80003a2c:	0534fa63          	bgeu	s1,s3,80003a80 <freerange+0xd0>
    80003a30:	00001637          	lui	a2,0x1
    80003a34:	00100593          	li	a1,1
    80003a38:	00048513          	mv	a0,s1
    80003a3c:	00000097          	auipc	ra,0x0
    80003a40:	50c080e7          	jalr	1292(ra) # 80003f48 <__memset>
    80003a44:	00093703          	ld	a4,0(s2)
    80003a48:	016487b3          	add	a5,s1,s6
    80003a4c:	00e4b023          	sd	a4,0(s1)
    80003a50:	00993023          	sd	s1,0(s2)
    80003a54:	fcfa76e3          	bgeu	s4,a5,80003a20 <freerange+0x70>
    80003a58:	03813083          	ld	ra,56(sp)
    80003a5c:	03013403          	ld	s0,48(sp)
    80003a60:	02813483          	ld	s1,40(sp)
    80003a64:	02013903          	ld	s2,32(sp)
    80003a68:	01813983          	ld	s3,24(sp)
    80003a6c:	01013a03          	ld	s4,16(sp)
    80003a70:	00813a83          	ld	s5,8(sp)
    80003a74:	00013b03          	ld	s6,0(sp)
    80003a78:	04010113          	addi	sp,sp,64
    80003a7c:	00008067          	ret
    80003a80:	00001517          	auipc	a0,0x1
    80003a84:	76850513          	addi	a0,a0,1896 # 800051e8 <digits+0x18>
    80003a88:	fffff097          	auipc	ra,0xfffff
    80003a8c:	3d4080e7          	jalr	980(ra) # 80002e5c <panic>

0000000080003a90 <kfree>:
    80003a90:	fe010113          	addi	sp,sp,-32
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00113c23          	sd	ra,24(sp)
    80003a9c:	00913423          	sd	s1,8(sp)
    80003aa0:	02010413          	addi	s0,sp,32
    80003aa4:	03451793          	slli	a5,a0,0x34
    80003aa8:	04079c63          	bnez	a5,80003b00 <kfree+0x70>
    80003aac:	00003797          	auipc	a5,0x3
    80003ab0:	26478793          	addi	a5,a5,612 # 80006d10 <end>
    80003ab4:	00050493          	mv	s1,a0
    80003ab8:	04f56463          	bltu	a0,a5,80003b00 <kfree+0x70>
    80003abc:	01100793          	li	a5,17
    80003ac0:	01b79793          	slli	a5,a5,0x1b
    80003ac4:	02f57e63          	bgeu	a0,a5,80003b00 <kfree+0x70>
    80003ac8:	00001637          	lui	a2,0x1
    80003acc:	00100593          	li	a1,1
    80003ad0:	00000097          	auipc	ra,0x0
    80003ad4:	478080e7          	jalr	1144(ra) # 80003f48 <__memset>
    80003ad8:	00002797          	auipc	a5,0x2
    80003adc:	f6878793          	addi	a5,a5,-152 # 80005a40 <kmem>
    80003ae0:	0007b703          	ld	a4,0(a5)
    80003ae4:	01813083          	ld	ra,24(sp)
    80003ae8:	01013403          	ld	s0,16(sp)
    80003aec:	00e4b023          	sd	a4,0(s1)
    80003af0:	0097b023          	sd	s1,0(a5)
    80003af4:	00813483          	ld	s1,8(sp)
    80003af8:	02010113          	addi	sp,sp,32
    80003afc:	00008067          	ret
    80003b00:	00001517          	auipc	a0,0x1
    80003b04:	6e850513          	addi	a0,a0,1768 # 800051e8 <digits+0x18>
    80003b08:	fffff097          	auipc	ra,0xfffff
    80003b0c:	354080e7          	jalr	852(ra) # 80002e5c <panic>

0000000080003b10 <kalloc>:
    80003b10:	fe010113          	addi	sp,sp,-32
    80003b14:	00813823          	sd	s0,16(sp)
    80003b18:	00913423          	sd	s1,8(sp)
    80003b1c:	00113c23          	sd	ra,24(sp)
    80003b20:	02010413          	addi	s0,sp,32
    80003b24:	00002797          	auipc	a5,0x2
    80003b28:	f1c78793          	addi	a5,a5,-228 # 80005a40 <kmem>
    80003b2c:	0007b483          	ld	s1,0(a5)
    80003b30:	02048063          	beqz	s1,80003b50 <kalloc+0x40>
    80003b34:	0004b703          	ld	a4,0(s1)
    80003b38:	00001637          	lui	a2,0x1
    80003b3c:	00500593          	li	a1,5
    80003b40:	00048513          	mv	a0,s1
    80003b44:	00e7b023          	sd	a4,0(a5)
    80003b48:	00000097          	auipc	ra,0x0
    80003b4c:	400080e7          	jalr	1024(ra) # 80003f48 <__memset>
    80003b50:	01813083          	ld	ra,24(sp)
    80003b54:	01013403          	ld	s0,16(sp)
    80003b58:	00048513          	mv	a0,s1
    80003b5c:	00813483          	ld	s1,8(sp)
    80003b60:	02010113          	addi	sp,sp,32
    80003b64:	00008067          	ret

0000000080003b68 <initlock>:
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00813423          	sd	s0,8(sp)
    80003b70:	01010413          	addi	s0,sp,16
    80003b74:	00813403          	ld	s0,8(sp)
    80003b78:	00b53423          	sd	a1,8(a0)
    80003b7c:	00052023          	sw	zero,0(a0)
    80003b80:	00053823          	sd	zero,16(a0)
    80003b84:	01010113          	addi	sp,sp,16
    80003b88:	00008067          	ret

0000000080003b8c <acquire>:
    80003b8c:	fe010113          	addi	sp,sp,-32
    80003b90:	00813823          	sd	s0,16(sp)
    80003b94:	00913423          	sd	s1,8(sp)
    80003b98:	00113c23          	sd	ra,24(sp)
    80003b9c:	01213023          	sd	s2,0(sp)
    80003ba0:	02010413          	addi	s0,sp,32
    80003ba4:	00050493          	mv	s1,a0
    80003ba8:	10002973          	csrr	s2,sstatus
    80003bac:	100027f3          	csrr	a5,sstatus
    80003bb0:	ffd7f793          	andi	a5,a5,-3
    80003bb4:	10079073          	csrw	sstatus,a5
    80003bb8:	fffff097          	auipc	ra,0xfffff
    80003bbc:	8e8080e7          	jalr	-1816(ra) # 800024a0 <mycpu>
    80003bc0:	07852783          	lw	a5,120(a0)
    80003bc4:	06078e63          	beqz	a5,80003c40 <acquire+0xb4>
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	8d8080e7          	jalr	-1832(ra) # 800024a0 <mycpu>
    80003bd0:	07852783          	lw	a5,120(a0)
    80003bd4:	0004a703          	lw	a4,0(s1)
    80003bd8:	0017879b          	addiw	a5,a5,1
    80003bdc:	06f52c23          	sw	a5,120(a0)
    80003be0:	04071063          	bnez	a4,80003c20 <acquire+0x94>
    80003be4:	00100713          	li	a4,1
    80003be8:	00070793          	mv	a5,a4
    80003bec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003bf0:	0007879b          	sext.w	a5,a5
    80003bf4:	fe079ae3          	bnez	a5,80003be8 <acquire+0x5c>
    80003bf8:	0ff0000f          	fence
    80003bfc:	fffff097          	auipc	ra,0xfffff
    80003c00:	8a4080e7          	jalr	-1884(ra) # 800024a0 <mycpu>
    80003c04:	01813083          	ld	ra,24(sp)
    80003c08:	01013403          	ld	s0,16(sp)
    80003c0c:	00a4b823          	sd	a0,16(s1)
    80003c10:	00013903          	ld	s2,0(sp)
    80003c14:	00813483          	ld	s1,8(sp)
    80003c18:	02010113          	addi	sp,sp,32
    80003c1c:	00008067          	ret
    80003c20:	0104b903          	ld	s2,16(s1)
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	87c080e7          	jalr	-1924(ra) # 800024a0 <mycpu>
    80003c2c:	faa91ce3          	bne	s2,a0,80003be4 <acquire+0x58>
    80003c30:	00001517          	auipc	a0,0x1
    80003c34:	5c050513          	addi	a0,a0,1472 # 800051f0 <digits+0x20>
    80003c38:	fffff097          	auipc	ra,0xfffff
    80003c3c:	224080e7          	jalr	548(ra) # 80002e5c <panic>
    80003c40:	00195913          	srli	s2,s2,0x1
    80003c44:	fffff097          	auipc	ra,0xfffff
    80003c48:	85c080e7          	jalr	-1956(ra) # 800024a0 <mycpu>
    80003c4c:	00197913          	andi	s2,s2,1
    80003c50:	07252e23          	sw	s2,124(a0)
    80003c54:	f75ff06f          	j	80003bc8 <acquire+0x3c>

0000000080003c58 <release>:
    80003c58:	fe010113          	addi	sp,sp,-32
    80003c5c:	00813823          	sd	s0,16(sp)
    80003c60:	00113c23          	sd	ra,24(sp)
    80003c64:	00913423          	sd	s1,8(sp)
    80003c68:	01213023          	sd	s2,0(sp)
    80003c6c:	02010413          	addi	s0,sp,32
    80003c70:	00052783          	lw	a5,0(a0)
    80003c74:	00079a63          	bnez	a5,80003c88 <release+0x30>
    80003c78:	00001517          	auipc	a0,0x1
    80003c7c:	58050513          	addi	a0,a0,1408 # 800051f8 <digits+0x28>
    80003c80:	fffff097          	auipc	ra,0xfffff
    80003c84:	1dc080e7          	jalr	476(ra) # 80002e5c <panic>
    80003c88:	01053903          	ld	s2,16(a0)
    80003c8c:	00050493          	mv	s1,a0
    80003c90:	fffff097          	auipc	ra,0xfffff
    80003c94:	810080e7          	jalr	-2032(ra) # 800024a0 <mycpu>
    80003c98:	fea910e3          	bne	s2,a0,80003c78 <release+0x20>
    80003c9c:	0004b823          	sd	zero,16(s1)
    80003ca0:	0ff0000f          	fence
    80003ca4:	0f50000f          	fence	iorw,ow
    80003ca8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003cac:	ffffe097          	auipc	ra,0xffffe
    80003cb0:	7f4080e7          	jalr	2036(ra) # 800024a0 <mycpu>
    80003cb4:	100027f3          	csrr	a5,sstatus
    80003cb8:	0027f793          	andi	a5,a5,2
    80003cbc:	04079a63          	bnez	a5,80003d10 <release+0xb8>
    80003cc0:	07852783          	lw	a5,120(a0)
    80003cc4:	02f05e63          	blez	a5,80003d00 <release+0xa8>
    80003cc8:	fff7871b          	addiw	a4,a5,-1
    80003ccc:	06e52c23          	sw	a4,120(a0)
    80003cd0:	00071c63          	bnez	a4,80003ce8 <release+0x90>
    80003cd4:	07c52783          	lw	a5,124(a0)
    80003cd8:	00078863          	beqz	a5,80003ce8 <release+0x90>
    80003cdc:	100027f3          	csrr	a5,sstatus
    80003ce0:	0027e793          	ori	a5,a5,2
    80003ce4:	10079073          	csrw	sstatus,a5
    80003ce8:	01813083          	ld	ra,24(sp)
    80003cec:	01013403          	ld	s0,16(sp)
    80003cf0:	00813483          	ld	s1,8(sp)
    80003cf4:	00013903          	ld	s2,0(sp)
    80003cf8:	02010113          	addi	sp,sp,32
    80003cfc:	00008067          	ret
    80003d00:	00001517          	auipc	a0,0x1
    80003d04:	51850513          	addi	a0,a0,1304 # 80005218 <digits+0x48>
    80003d08:	fffff097          	auipc	ra,0xfffff
    80003d0c:	154080e7          	jalr	340(ra) # 80002e5c <panic>
    80003d10:	00001517          	auipc	a0,0x1
    80003d14:	4f050513          	addi	a0,a0,1264 # 80005200 <digits+0x30>
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	144080e7          	jalr	324(ra) # 80002e5c <panic>

0000000080003d20 <holding>:
    80003d20:	00052783          	lw	a5,0(a0)
    80003d24:	00079663          	bnez	a5,80003d30 <holding+0x10>
    80003d28:	00000513          	li	a0,0
    80003d2c:	00008067          	ret
    80003d30:	fe010113          	addi	sp,sp,-32
    80003d34:	00813823          	sd	s0,16(sp)
    80003d38:	00913423          	sd	s1,8(sp)
    80003d3c:	00113c23          	sd	ra,24(sp)
    80003d40:	02010413          	addi	s0,sp,32
    80003d44:	01053483          	ld	s1,16(a0)
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	758080e7          	jalr	1880(ra) # 800024a0 <mycpu>
    80003d50:	01813083          	ld	ra,24(sp)
    80003d54:	01013403          	ld	s0,16(sp)
    80003d58:	40a48533          	sub	a0,s1,a0
    80003d5c:	00153513          	seqz	a0,a0
    80003d60:	00813483          	ld	s1,8(sp)
    80003d64:	02010113          	addi	sp,sp,32
    80003d68:	00008067          	ret

0000000080003d6c <push_off>:
    80003d6c:	fe010113          	addi	sp,sp,-32
    80003d70:	00813823          	sd	s0,16(sp)
    80003d74:	00113c23          	sd	ra,24(sp)
    80003d78:	00913423          	sd	s1,8(sp)
    80003d7c:	02010413          	addi	s0,sp,32
    80003d80:	100024f3          	csrr	s1,sstatus
    80003d84:	100027f3          	csrr	a5,sstatus
    80003d88:	ffd7f793          	andi	a5,a5,-3
    80003d8c:	10079073          	csrw	sstatus,a5
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	710080e7          	jalr	1808(ra) # 800024a0 <mycpu>
    80003d98:	07852783          	lw	a5,120(a0)
    80003d9c:	02078663          	beqz	a5,80003dc8 <push_off+0x5c>
    80003da0:	ffffe097          	auipc	ra,0xffffe
    80003da4:	700080e7          	jalr	1792(ra) # 800024a0 <mycpu>
    80003da8:	07852783          	lw	a5,120(a0)
    80003dac:	01813083          	ld	ra,24(sp)
    80003db0:	01013403          	ld	s0,16(sp)
    80003db4:	0017879b          	addiw	a5,a5,1
    80003db8:	06f52c23          	sw	a5,120(a0)
    80003dbc:	00813483          	ld	s1,8(sp)
    80003dc0:	02010113          	addi	sp,sp,32
    80003dc4:	00008067          	ret
    80003dc8:	0014d493          	srli	s1,s1,0x1
    80003dcc:	ffffe097          	auipc	ra,0xffffe
    80003dd0:	6d4080e7          	jalr	1748(ra) # 800024a0 <mycpu>
    80003dd4:	0014f493          	andi	s1,s1,1
    80003dd8:	06952e23          	sw	s1,124(a0)
    80003ddc:	fc5ff06f          	j	80003da0 <push_off+0x34>

0000000080003de0 <pop_off>:
    80003de0:	ff010113          	addi	sp,sp,-16
    80003de4:	00813023          	sd	s0,0(sp)
    80003de8:	00113423          	sd	ra,8(sp)
    80003dec:	01010413          	addi	s0,sp,16
    80003df0:	ffffe097          	auipc	ra,0xffffe
    80003df4:	6b0080e7          	jalr	1712(ra) # 800024a0 <mycpu>
    80003df8:	100027f3          	csrr	a5,sstatus
    80003dfc:	0027f793          	andi	a5,a5,2
    80003e00:	04079663          	bnez	a5,80003e4c <pop_off+0x6c>
    80003e04:	07852783          	lw	a5,120(a0)
    80003e08:	02f05a63          	blez	a5,80003e3c <pop_off+0x5c>
    80003e0c:	fff7871b          	addiw	a4,a5,-1
    80003e10:	06e52c23          	sw	a4,120(a0)
    80003e14:	00071c63          	bnez	a4,80003e2c <pop_off+0x4c>
    80003e18:	07c52783          	lw	a5,124(a0)
    80003e1c:	00078863          	beqz	a5,80003e2c <pop_off+0x4c>
    80003e20:	100027f3          	csrr	a5,sstatus
    80003e24:	0027e793          	ori	a5,a5,2
    80003e28:	10079073          	csrw	sstatus,a5
    80003e2c:	00813083          	ld	ra,8(sp)
    80003e30:	00013403          	ld	s0,0(sp)
    80003e34:	01010113          	addi	sp,sp,16
    80003e38:	00008067          	ret
    80003e3c:	00001517          	auipc	a0,0x1
    80003e40:	3dc50513          	addi	a0,a0,988 # 80005218 <digits+0x48>
    80003e44:	fffff097          	auipc	ra,0xfffff
    80003e48:	018080e7          	jalr	24(ra) # 80002e5c <panic>
    80003e4c:	00001517          	auipc	a0,0x1
    80003e50:	3b450513          	addi	a0,a0,948 # 80005200 <digits+0x30>
    80003e54:	fffff097          	auipc	ra,0xfffff
    80003e58:	008080e7          	jalr	8(ra) # 80002e5c <panic>

0000000080003e5c <push_on>:
    80003e5c:	fe010113          	addi	sp,sp,-32
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00113c23          	sd	ra,24(sp)
    80003e68:	00913423          	sd	s1,8(sp)
    80003e6c:	02010413          	addi	s0,sp,32
    80003e70:	100024f3          	csrr	s1,sstatus
    80003e74:	100027f3          	csrr	a5,sstatus
    80003e78:	0027e793          	ori	a5,a5,2
    80003e7c:	10079073          	csrw	sstatus,a5
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	620080e7          	jalr	1568(ra) # 800024a0 <mycpu>
    80003e88:	07852783          	lw	a5,120(a0)
    80003e8c:	02078663          	beqz	a5,80003eb8 <push_on+0x5c>
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	610080e7          	jalr	1552(ra) # 800024a0 <mycpu>
    80003e98:	07852783          	lw	a5,120(a0)
    80003e9c:	01813083          	ld	ra,24(sp)
    80003ea0:	01013403          	ld	s0,16(sp)
    80003ea4:	0017879b          	addiw	a5,a5,1
    80003ea8:	06f52c23          	sw	a5,120(a0)
    80003eac:	00813483          	ld	s1,8(sp)
    80003eb0:	02010113          	addi	sp,sp,32
    80003eb4:	00008067          	ret
    80003eb8:	0014d493          	srli	s1,s1,0x1
    80003ebc:	ffffe097          	auipc	ra,0xffffe
    80003ec0:	5e4080e7          	jalr	1508(ra) # 800024a0 <mycpu>
    80003ec4:	0014f493          	andi	s1,s1,1
    80003ec8:	06952e23          	sw	s1,124(a0)
    80003ecc:	fc5ff06f          	j	80003e90 <push_on+0x34>

0000000080003ed0 <pop_on>:
    80003ed0:	ff010113          	addi	sp,sp,-16
    80003ed4:	00813023          	sd	s0,0(sp)
    80003ed8:	00113423          	sd	ra,8(sp)
    80003edc:	01010413          	addi	s0,sp,16
    80003ee0:	ffffe097          	auipc	ra,0xffffe
    80003ee4:	5c0080e7          	jalr	1472(ra) # 800024a0 <mycpu>
    80003ee8:	100027f3          	csrr	a5,sstatus
    80003eec:	0027f793          	andi	a5,a5,2
    80003ef0:	04078463          	beqz	a5,80003f38 <pop_on+0x68>
    80003ef4:	07852783          	lw	a5,120(a0)
    80003ef8:	02f05863          	blez	a5,80003f28 <pop_on+0x58>
    80003efc:	fff7879b          	addiw	a5,a5,-1
    80003f00:	06f52c23          	sw	a5,120(a0)
    80003f04:	07853783          	ld	a5,120(a0)
    80003f08:	00079863          	bnez	a5,80003f18 <pop_on+0x48>
    80003f0c:	100027f3          	csrr	a5,sstatus
    80003f10:	ffd7f793          	andi	a5,a5,-3
    80003f14:	10079073          	csrw	sstatus,a5
    80003f18:	00813083          	ld	ra,8(sp)
    80003f1c:	00013403          	ld	s0,0(sp)
    80003f20:	01010113          	addi	sp,sp,16
    80003f24:	00008067          	ret
    80003f28:	00001517          	auipc	a0,0x1
    80003f2c:	31850513          	addi	a0,a0,792 # 80005240 <digits+0x70>
    80003f30:	fffff097          	auipc	ra,0xfffff
    80003f34:	f2c080e7          	jalr	-212(ra) # 80002e5c <panic>
    80003f38:	00001517          	auipc	a0,0x1
    80003f3c:	2e850513          	addi	a0,a0,744 # 80005220 <digits+0x50>
    80003f40:	fffff097          	auipc	ra,0xfffff
    80003f44:	f1c080e7          	jalr	-228(ra) # 80002e5c <panic>

0000000080003f48 <__memset>:
    80003f48:	ff010113          	addi	sp,sp,-16
    80003f4c:	00813423          	sd	s0,8(sp)
    80003f50:	01010413          	addi	s0,sp,16
    80003f54:	1a060e63          	beqz	a2,80004110 <__memset+0x1c8>
    80003f58:	40a007b3          	neg	a5,a0
    80003f5c:	0077f793          	andi	a5,a5,7
    80003f60:	00778693          	addi	a3,a5,7
    80003f64:	00b00813          	li	a6,11
    80003f68:	0ff5f593          	andi	a1,a1,255
    80003f6c:	fff6071b          	addiw	a4,a2,-1
    80003f70:	1b06e663          	bltu	a3,a6,8000411c <__memset+0x1d4>
    80003f74:	1cd76463          	bltu	a4,a3,8000413c <__memset+0x1f4>
    80003f78:	1a078e63          	beqz	a5,80004134 <__memset+0x1ec>
    80003f7c:	00b50023          	sb	a1,0(a0)
    80003f80:	00100713          	li	a4,1
    80003f84:	1ae78463          	beq	a5,a4,8000412c <__memset+0x1e4>
    80003f88:	00b500a3          	sb	a1,1(a0)
    80003f8c:	00200713          	li	a4,2
    80003f90:	1ae78a63          	beq	a5,a4,80004144 <__memset+0x1fc>
    80003f94:	00b50123          	sb	a1,2(a0)
    80003f98:	00300713          	li	a4,3
    80003f9c:	18e78463          	beq	a5,a4,80004124 <__memset+0x1dc>
    80003fa0:	00b501a3          	sb	a1,3(a0)
    80003fa4:	00400713          	li	a4,4
    80003fa8:	1ae78263          	beq	a5,a4,8000414c <__memset+0x204>
    80003fac:	00b50223          	sb	a1,4(a0)
    80003fb0:	00500713          	li	a4,5
    80003fb4:	1ae78063          	beq	a5,a4,80004154 <__memset+0x20c>
    80003fb8:	00b502a3          	sb	a1,5(a0)
    80003fbc:	00700713          	li	a4,7
    80003fc0:	18e79e63          	bne	a5,a4,8000415c <__memset+0x214>
    80003fc4:	00b50323          	sb	a1,6(a0)
    80003fc8:	00700e93          	li	t4,7
    80003fcc:	00859713          	slli	a4,a1,0x8
    80003fd0:	00e5e733          	or	a4,a1,a4
    80003fd4:	01059e13          	slli	t3,a1,0x10
    80003fd8:	01c76e33          	or	t3,a4,t3
    80003fdc:	01859313          	slli	t1,a1,0x18
    80003fe0:	006e6333          	or	t1,t3,t1
    80003fe4:	02059893          	slli	a7,a1,0x20
    80003fe8:	40f60e3b          	subw	t3,a2,a5
    80003fec:	011368b3          	or	a7,t1,a7
    80003ff0:	02859813          	slli	a6,a1,0x28
    80003ff4:	0108e833          	or	a6,a7,a6
    80003ff8:	03059693          	slli	a3,a1,0x30
    80003ffc:	003e589b          	srliw	a7,t3,0x3
    80004000:	00d866b3          	or	a3,a6,a3
    80004004:	03859713          	slli	a4,a1,0x38
    80004008:	00389813          	slli	a6,a7,0x3
    8000400c:	00f507b3          	add	a5,a0,a5
    80004010:	00e6e733          	or	a4,a3,a4
    80004014:	000e089b          	sext.w	a7,t3
    80004018:	00f806b3          	add	a3,a6,a5
    8000401c:	00e7b023          	sd	a4,0(a5)
    80004020:	00878793          	addi	a5,a5,8
    80004024:	fed79ce3          	bne	a5,a3,8000401c <__memset+0xd4>
    80004028:	ff8e7793          	andi	a5,t3,-8
    8000402c:	0007871b          	sext.w	a4,a5
    80004030:	01d787bb          	addw	a5,a5,t4
    80004034:	0ce88e63          	beq	a7,a4,80004110 <__memset+0x1c8>
    80004038:	00f50733          	add	a4,a0,a5
    8000403c:	00b70023          	sb	a1,0(a4)
    80004040:	0017871b          	addiw	a4,a5,1
    80004044:	0cc77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004048:	00e50733          	add	a4,a0,a4
    8000404c:	00b70023          	sb	a1,0(a4)
    80004050:	0027871b          	addiw	a4,a5,2
    80004054:	0ac77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004058:	00e50733          	add	a4,a0,a4
    8000405c:	00b70023          	sb	a1,0(a4)
    80004060:	0037871b          	addiw	a4,a5,3
    80004064:	0ac77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004068:	00e50733          	add	a4,a0,a4
    8000406c:	00b70023          	sb	a1,0(a4)
    80004070:	0047871b          	addiw	a4,a5,4
    80004074:	08c77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004078:	00e50733          	add	a4,a0,a4
    8000407c:	00b70023          	sb	a1,0(a4)
    80004080:	0057871b          	addiw	a4,a5,5
    80004084:	08c77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004088:	00e50733          	add	a4,a0,a4
    8000408c:	00b70023          	sb	a1,0(a4)
    80004090:	0067871b          	addiw	a4,a5,6
    80004094:	06c77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004098:	00e50733          	add	a4,a0,a4
    8000409c:	00b70023          	sb	a1,0(a4)
    800040a0:	0077871b          	addiw	a4,a5,7
    800040a4:	06c77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040a8:	00e50733          	add	a4,a0,a4
    800040ac:	00b70023          	sb	a1,0(a4)
    800040b0:	0087871b          	addiw	a4,a5,8
    800040b4:	04c77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040b8:	00e50733          	add	a4,a0,a4
    800040bc:	00b70023          	sb	a1,0(a4)
    800040c0:	0097871b          	addiw	a4,a5,9
    800040c4:	04c77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040c8:	00e50733          	add	a4,a0,a4
    800040cc:	00b70023          	sb	a1,0(a4)
    800040d0:	00a7871b          	addiw	a4,a5,10
    800040d4:	02c77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040d8:	00e50733          	add	a4,a0,a4
    800040dc:	00b70023          	sb	a1,0(a4)
    800040e0:	00b7871b          	addiw	a4,a5,11
    800040e4:	02c77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040e8:	00e50733          	add	a4,a0,a4
    800040ec:	00b70023          	sb	a1,0(a4)
    800040f0:	00c7871b          	addiw	a4,a5,12
    800040f4:	00c77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040f8:	00e50733          	add	a4,a0,a4
    800040fc:	00b70023          	sb	a1,0(a4)
    80004100:	00d7879b          	addiw	a5,a5,13
    80004104:	00c7f663          	bgeu	a5,a2,80004110 <__memset+0x1c8>
    80004108:	00f507b3          	add	a5,a0,a5
    8000410c:	00b78023          	sb	a1,0(a5)
    80004110:	00813403          	ld	s0,8(sp)
    80004114:	01010113          	addi	sp,sp,16
    80004118:	00008067          	ret
    8000411c:	00b00693          	li	a3,11
    80004120:	e55ff06f          	j	80003f74 <__memset+0x2c>
    80004124:	00300e93          	li	t4,3
    80004128:	ea5ff06f          	j	80003fcc <__memset+0x84>
    8000412c:	00100e93          	li	t4,1
    80004130:	e9dff06f          	j	80003fcc <__memset+0x84>
    80004134:	00000e93          	li	t4,0
    80004138:	e95ff06f          	j	80003fcc <__memset+0x84>
    8000413c:	00000793          	li	a5,0
    80004140:	ef9ff06f          	j	80004038 <__memset+0xf0>
    80004144:	00200e93          	li	t4,2
    80004148:	e85ff06f          	j	80003fcc <__memset+0x84>
    8000414c:	00400e93          	li	t4,4
    80004150:	e7dff06f          	j	80003fcc <__memset+0x84>
    80004154:	00500e93          	li	t4,5
    80004158:	e75ff06f          	j	80003fcc <__memset+0x84>
    8000415c:	00600e93          	li	t4,6
    80004160:	e6dff06f          	j	80003fcc <__memset+0x84>

0000000080004164 <__memmove>:
    80004164:	ff010113          	addi	sp,sp,-16
    80004168:	00813423          	sd	s0,8(sp)
    8000416c:	01010413          	addi	s0,sp,16
    80004170:	0e060863          	beqz	a2,80004260 <__memmove+0xfc>
    80004174:	fff6069b          	addiw	a3,a2,-1
    80004178:	0006881b          	sext.w	a6,a3
    8000417c:	0ea5e863          	bltu	a1,a0,8000426c <__memmove+0x108>
    80004180:	00758713          	addi	a4,a1,7
    80004184:	00a5e7b3          	or	a5,a1,a0
    80004188:	40a70733          	sub	a4,a4,a0
    8000418c:	0077f793          	andi	a5,a5,7
    80004190:	00f73713          	sltiu	a4,a4,15
    80004194:	00174713          	xori	a4,a4,1
    80004198:	0017b793          	seqz	a5,a5
    8000419c:	00e7f7b3          	and	a5,a5,a4
    800041a0:	10078863          	beqz	a5,800042b0 <__memmove+0x14c>
    800041a4:	00900793          	li	a5,9
    800041a8:	1107f463          	bgeu	a5,a6,800042b0 <__memmove+0x14c>
    800041ac:	0036581b          	srliw	a6,a2,0x3
    800041b0:	fff8081b          	addiw	a6,a6,-1
    800041b4:	02081813          	slli	a6,a6,0x20
    800041b8:	01d85893          	srli	a7,a6,0x1d
    800041bc:	00858813          	addi	a6,a1,8
    800041c0:	00058793          	mv	a5,a1
    800041c4:	00050713          	mv	a4,a0
    800041c8:	01088833          	add	a6,a7,a6
    800041cc:	0007b883          	ld	a7,0(a5)
    800041d0:	00878793          	addi	a5,a5,8
    800041d4:	00870713          	addi	a4,a4,8
    800041d8:	ff173c23          	sd	a7,-8(a4)
    800041dc:	ff0798e3          	bne	a5,a6,800041cc <__memmove+0x68>
    800041e0:	ff867713          	andi	a4,a2,-8
    800041e4:	02071793          	slli	a5,a4,0x20
    800041e8:	0207d793          	srli	a5,a5,0x20
    800041ec:	00f585b3          	add	a1,a1,a5
    800041f0:	40e686bb          	subw	a3,a3,a4
    800041f4:	00f507b3          	add	a5,a0,a5
    800041f8:	06e60463          	beq	a2,a4,80004260 <__memmove+0xfc>
    800041fc:	0005c703          	lbu	a4,0(a1)
    80004200:	00e78023          	sb	a4,0(a5)
    80004204:	04068e63          	beqz	a3,80004260 <__memmove+0xfc>
    80004208:	0015c603          	lbu	a2,1(a1)
    8000420c:	00100713          	li	a4,1
    80004210:	00c780a3          	sb	a2,1(a5)
    80004214:	04e68663          	beq	a3,a4,80004260 <__memmove+0xfc>
    80004218:	0025c603          	lbu	a2,2(a1)
    8000421c:	00200713          	li	a4,2
    80004220:	00c78123          	sb	a2,2(a5)
    80004224:	02e68e63          	beq	a3,a4,80004260 <__memmove+0xfc>
    80004228:	0035c603          	lbu	a2,3(a1)
    8000422c:	00300713          	li	a4,3
    80004230:	00c781a3          	sb	a2,3(a5)
    80004234:	02e68663          	beq	a3,a4,80004260 <__memmove+0xfc>
    80004238:	0045c603          	lbu	a2,4(a1)
    8000423c:	00400713          	li	a4,4
    80004240:	00c78223          	sb	a2,4(a5)
    80004244:	00e68e63          	beq	a3,a4,80004260 <__memmove+0xfc>
    80004248:	0055c603          	lbu	a2,5(a1)
    8000424c:	00500713          	li	a4,5
    80004250:	00c782a3          	sb	a2,5(a5)
    80004254:	00e68663          	beq	a3,a4,80004260 <__memmove+0xfc>
    80004258:	0065c703          	lbu	a4,6(a1)
    8000425c:	00e78323          	sb	a4,6(a5)
    80004260:	00813403          	ld	s0,8(sp)
    80004264:	01010113          	addi	sp,sp,16
    80004268:	00008067          	ret
    8000426c:	02061713          	slli	a4,a2,0x20
    80004270:	02075713          	srli	a4,a4,0x20
    80004274:	00e587b3          	add	a5,a1,a4
    80004278:	f0f574e3          	bgeu	a0,a5,80004180 <__memmove+0x1c>
    8000427c:	02069613          	slli	a2,a3,0x20
    80004280:	02065613          	srli	a2,a2,0x20
    80004284:	fff64613          	not	a2,a2
    80004288:	00e50733          	add	a4,a0,a4
    8000428c:	00c78633          	add	a2,a5,a2
    80004290:	fff7c683          	lbu	a3,-1(a5)
    80004294:	fff78793          	addi	a5,a5,-1
    80004298:	fff70713          	addi	a4,a4,-1
    8000429c:	00d70023          	sb	a3,0(a4)
    800042a0:	fec798e3          	bne	a5,a2,80004290 <__memmove+0x12c>
    800042a4:	00813403          	ld	s0,8(sp)
    800042a8:	01010113          	addi	sp,sp,16
    800042ac:	00008067          	ret
    800042b0:	02069713          	slli	a4,a3,0x20
    800042b4:	02075713          	srli	a4,a4,0x20
    800042b8:	00170713          	addi	a4,a4,1
    800042bc:	00e50733          	add	a4,a0,a4
    800042c0:	00050793          	mv	a5,a0
    800042c4:	0005c683          	lbu	a3,0(a1)
    800042c8:	00178793          	addi	a5,a5,1
    800042cc:	00158593          	addi	a1,a1,1
    800042d0:	fed78fa3          	sb	a3,-1(a5)
    800042d4:	fee798e3          	bne	a5,a4,800042c4 <__memmove+0x160>
    800042d8:	f89ff06f          	j	80004260 <__memmove+0xfc>

00000000800042dc <__putc>:
    800042dc:	fe010113          	addi	sp,sp,-32
    800042e0:	00813823          	sd	s0,16(sp)
    800042e4:	00113c23          	sd	ra,24(sp)
    800042e8:	02010413          	addi	s0,sp,32
    800042ec:	00050793          	mv	a5,a0
    800042f0:	fef40593          	addi	a1,s0,-17
    800042f4:	00100613          	li	a2,1
    800042f8:	00000513          	li	a0,0
    800042fc:	fef407a3          	sb	a5,-17(s0)
    80004300:	fffff097          	auipc	ra,0xfffff
    80004304:	b3c080e7          	jalr	-1220(ra) # 80002e3c <console_write>
    80004308:	01813083          	ld	ra,24(sp)
    8000430c:	01013403          	ld	s0,16(sp)
    80004310:	02010113          	addi	sp,sp,32
    80004314:	00008067          	ret

0000000080004318 <__getc>:
    80004318:	fe010113          	addi	sp,sp,-32
    8000431c:	00813823          	sd	s0,16(sp)
    80004320:	00113c23          	sd	ra,24(sp)
    80004324:	02010413          	addi	s0,sp,32
    80004328:	fe840593          	addi	a1,s0,-24
    8000432c:	00100613          	li	a2,1
    80004330:	00000513          	li	a0,0
    80004334:	fffff097          	auipc	ra,0xfffff
    80004338:	ae8080e7          	jalr	-1304(ra) # 80002e1c <console_read>
    8000433c:	fe844503          	lbu	a0,-24(s0)
    80004340:	01813083          	ld	ra,24(sp)
    80004344:	01013403          	ld	s0,16(sp)
    80004348:	02010113          	addi	sp,sp,32
    8000434c:	00008067          	ret

0000000080004350 <console_handler>:
    80004350:	fe010113          	addi	sp,sp,-32
    80004354:	00813823          	sd	s0,16(sp)
    80004358:	00113c23          	sd	ra,24(sp)
    8000435c:	00913423          	sd	s1,8(sp)
    80004360:	02010413          	addi	s0,sp,32
    80004364:	14202773          	csrr	a4,scause
    80004368:	100027f3          	csrr	a5,sstatus
    8000436c:	0027f793          	andi	a5,a5,2
    80004370:	06079e63          	bnez	a5,800043ec <console_handler+0x9c>
    80004374:	00074c63          	bltz	a4,8000438c <console_handler+0x3c>
    80004378:	01813083          	ld	ra,24(sp)
    8000437c:	01013403          	ld	s0,16(sp)
    80004380:	00813483          	ld	s1,8(sp)
    80004384:	02010113          	addi	sp,sp,32
    80004388:	00008067          	ret
    8000438c:	0ff77713          	andi	a4,a4,255
    80004390:	00900793          	li	a5,9
    80004394:	fef712e3          	bne	a4,a5,80004378 <console_handler+0x28>
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	6dc080e7          	jalr	1756(ra) # 80002a74 <plic_claim>
    800043a0:	00a00793          	li	a5,10
    800043a4:	00050493          	mv	s1,a0
    800043a8:	02f50c63          	beq	a0,a5,800043e0 <console_handler+0x90>
    800043ac:	fc0506e3          	beqz	a0,80004378 <console_handler+0x28>
    800043b0:	00050593          	mv	a1,a0
    800043b4:	00001517          	auipc	a0,0x1
    800043b8:	d9450513          	addi	a0,a0,-620 # 80005148 <_ZN15MemoryAllocator10DBlockSizeE+0x128>
    800043bc:	fffff097          	auipc	ra,0xfffff
    800043c0:	afc080e7          	jalr	-1284(ra) # 80002eb8 <__printf>
    800043c4:	01013403          	ld	s0,16(sp)
    800043c8:	01813083          	ld	ra,24(sp)
    800043cc:	00048513          	mv	a0,s1
    800043d0:	00813483          	ld	s1,8(sp)
    800043d4:	02010113          	addi	sp,sp,32
    800043d8:	ffffe317          	auipc	t1,0xffffe
    800043dc:	6d430067          	jr	1748(t1) # 80002aac <plic_complete>
    800043e0:	fffff097          	auipc	ra,0xfffff
    800043e4:	3e0080e7          	jalr	992(ra) # 800037c0 <uartintr>
    800043e8:	fddff06f          	j	800043c4 <console_handler+0x74>
    800043ec:	00001517          	auipc	a0,0x1
    800043f0:	e5c50513          	addi	a0,a0,-420 # 80005248 <digits+0x78>
    800043f4:	fffff097          	auipc	ra,0xfffff
    800043f8:	a68080e7          	jalr	-1432(ra) # 80002e5c <panic>
	...
