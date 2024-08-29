
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	55013103          	ld	sp,1360(sp) # 8000b550 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	789050ef          	jal	ra,80005fa4 <start>

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
    80001174:	0dd000ef          	jal	ra,80001a50 <_ZN5Riscv16interruptHandlerEv>

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

0000000080001214 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001214:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001218:	00b29a63          	bne	t0,a1,8000122c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000121c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001220:	fe029ae3          	bnez	t0,80001214 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001224:	00000513          	li	a0,0
    jr ra                  # Return.
    80001228:	00008067          	ret

000000008000122c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000122c:	00100513          	li	a0,1
    80001230:	00008067          	ret

0000000080001234 <_Znwm>:
#include "../h/syscallC.hpp"

void* operator new(size_t size) {
    80001234:	ff010113          	addi	sp,sp,-16
    80001238:	00113423          	sd	ra,8(sp)
    8000123c:	00813023          	sd	s0,0(sp)
    80001240:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001244:	00001097          	auipc	ra,0x1
    80001248:	f18080e7          	jalr	-232(ra) # 8000215c <_Z9mem_allocm>
}
    8000124c:	00813083          	ld	ra,8(sp)
    80001250:	00013403          	ld	s0,0(sp)
    80001254:	01010113          	addi	sp,sp,16
    80001258:	00008067          	ret

000000008000125c <_Znam>:

void* operator new[](size_t size) {
    8000125c:	ff010113          	addi	sp,sp,-16
    80001260:	00113423          	sd	ra,8(sp)
    80001264:	00813023          	sd	s0,0(sp)
    80001268:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000126c:	00001097          	auipc	ra,0x1
    80001270:	ef0080e7          	jalr	-272(ra) # 8000215c <_Z9mem_allocm>
}
    80001274:	00813083          	ld	ra,8(sp)
    80001278:	00013403          	ld	s0,0(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret

0000000080001284 <_ZdlPv>:

void operator delete(void* ptr) noexcept {
    80001284:	ff010113          	addi	sp,sp,-16
    80001288:	00113423          	sd	ra,8(sp)
    8000128c:	00813023          	sd	s0,0(sp)
    80001290:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001294:	00001097          	auipc	ra,0x1
    80001298:	f28080e7          	jalr	-216(ra) # 800021bc <_Z8mem_freePv>
}
    8000129c:	00813083          	ld	ra,8(sp)
    800012a0:	00013403          	ld	s0,0(sp)
    800012a4:	01010113          	addi	sp,sp,16
    800012a8:	00008067          	ret

00000000800012ac <_ZdaPv>:

void operator delete[](void* ptr) noexcept {
    800012ac:	ff010113          	addi	sp,sp,-16
    800012b0:	00113423          	sd	ra,8(sp)
    800012b4:	00813023          	sd	s0,0(sp)
    800012b8:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800012bc:	00001097          	auipc	ra,0x1
    800012c0:	f00080e7          	jalr	-256(ra) # 800021bc <_Z8mem_freePv>
    800012c4:	00813083          	ld	ra,8(sp)
    800012c8:	00013403          	ld	s0,0(sp)
    800012cc:	01010113          	addi	sp,sp,16
    800012d0:	00008067          	ret

00000000800012d4 <_Z11userWrapperPv>:
thread_t mainThread;
thread_t userMainThread;

extern void userMain();

void userWrapper(void*) {
    800012d4:	ff010113          	addi	sp,sp,-16
    800012d8:	00113423          	sd	ra,8(sp)
    800012dc:	00813023          	sd	s0,0(sp)
    800012e0:	01010413          	addi	s0,sp,16
    userMain();
    800012e4:	00004097          	auipc	ra,0x4
    800012e8:	150080e7          	jalr	336(ra) # 80005434 <_Z8userMainv>
}
    800012ec:	00813083          	ld	ra,8(sp)
    800012f0:	00013403          	ld	s0,0(sp)
    800012f4:	01010113          	addi	sp,sp,16
    800012f8:	00008067          	ret

00000000800012fc <main>:

int main(){
    800012fc:	fe010113          	addi	sp,sp,-32
    80001300:	00113c23          	sd	ra,24(sp)
    80001304:	00813823          	sd	s0,16(sp)
    80001308:	00913423          	sd	s1,8(sp)
    8000130c:	02010413          	addi	s0,sp,32

    Riscv::writeStvec((uint64)&Riscv::supervisorTrap);
    80001310:	0000a797          	auipc	a5,0xa
    80001314:	2387b783          	ld	a5,568(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void Riscv::writeStvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    80001318:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	418080e7          	jalr	1048(ra) # 80001734 <_ZN15MemoryAllocator4initEv>

    thread_create(&mainThread, nullptr, nullptr); // main
    80001324:	0000a497          	auipc	s1,0xa
    80001328:	29c48493          	addi	s1,s1,668 # 8000b5c0 <mainThread>
    8000132c:	00000613          	li	a2,0
    80001330:	00000593          	li	a1,0
    80001334:	00048513          	mv	a0,s1
    80001338:	00001097          	auipc	ra,0x1
    8000133c:	ed0080e7          	jalr	-304(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = mainThread;
    80001340:	0004b703          	ld	a4,0(s1)
    80001344:	0000a797          	auipc	a5,0xa
    80001348:	2147b783          	ld	a5,532(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000134c:	00e7b023          	sd	a4,0(a5)

    thread_create(&userMainThread, userWrapper, nullptr);
    80001350:	00000613          	li	a2,0
    80001354:	00000597          	auipc	a1,0x0
    80001358:	f8058593          	addi	a1,a1,-128 # 800012d4 <_Z11userWrapperPv>
    8000135c:	0000a517          	auipc	a0,0xa
    80001360:	26c50513          	addi	a0,a0,620 # 8000b5c8 <userMainThread>
    80001364:	00001097          	auipc	ra,0x1
    80001368:	ea4080e7          	jalr	-348(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>

    while (!userMainThread->getFinished()) thread_dispatch();
    8000136c:	0000a797          	auipc	a5,0xa
    80001370:	25c7b783          	ld	a5,604(a5) # 8000b5c8 <userMainThread>
    static int threadCreate(TCB** handle, body routine, void* arg, void* stack);
    static int threadExit();
    static void dispatch();
    static void yield(TCB*, TCB*);

    bool getFinished() { return finished; }
    80001374:	0307c783          	lbu	a5,48(a5)
    80001378:	00079863          	bnez	a5,80001388 <main+0x8c>
    8000137c:	00001097          	auipc	ra,0x1
    80001380:	f5c080e7          	jalr	-164(ra) # 800022d8 <_Z15thread_dispatchv>
    80001384:	fe9ff06f          	j	8000136c <main+0x70>
    while(1){
        putc('M');
        thread_dispatch();
    }*/
    return 0;
}
    80001388:	00000513          	li	a0,0
    8000138c:	01813083          	ld	ra,24(sp)
    80001390:	01013403          	ld	s0,16(sp)
    80001394:	00813483          	ld	s1,8(sp)
    80001398:	02010113          	addi	sp,sp,32
    8000139c:	00008067          	ret

00000000800013a0 <_ZN3TCBC1EPFvPvES0_S0_>:
#include "../h/scheduler.hpp"

TCB* TCB::running = nullptr;
int TCB::id = 0;

TCB::TCB(body routine, void* arg, void * stack) : stack(routine!=nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr) {
    800013a0:	fd010113          	addi	sp,sp,-48
    800013a4:	02113423          	sd	ra,40(sp)
    800013a8:	02813023          	sd	s0,32(sp)
    800013ac:	00913c23          	sd	s1,24(sp)
    800013b0:	01213823          	sd	s2,16(sp)
    800013b4:	01313423          	sd	s3,8(sp)
    800013b8:	03010413          	addi	s0,sp,48
    800013bc:	00050493          	mv	s1,a0
    800013c0:	00058913          	mv	s2,a1
    800013c4:	00060993          	mv	s3,a2
    800013c8:	06058c63          	beqz	a1,80001440 <_ZN3TCBC1EPFvPvES0_S0_+0xa0>
    800013cc:	00008537          	lui	a0,0x8
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	e8c080e7          	jalr	-372(ra) # 8000125c <_Znam>
    800013d8:	00a4b823          	sd	a0,16(s1)
    this->context = {
            (uint64)&TCB::threadWrapper, //ra
            routine == nullptr ? 0 : (uint64) &this->stack[ DEFAULT_STACK_SIZE ] //sp
    800013dc:	06090663          	beqz	s2,80001448 <_ZN3TCBC1EPFvPvES0_S0_+0xa8>
    800013e0:	000087b7          	lui	a5,0x8
    800013e4:	00f50533          	add	a0,a0,a5
    this->context = {
    800013e8:	00000797          	auipc	a5,0x0
    800013ec:	0b878793          	addi	a5,a5,184 # 800014a0 <_ZN3TCB13threadWrapperEv>
    800013f0:	02f4b023          	sd	a5,32(s1)
    800013f4:	02a4b423          	sd	a0,40(s1)
    };
    this->routine=routine;
    800013f8:	0124b423          	sd	s2,8(s1)
    this->arg=arg;
    800013fc:	0134bc23          	sd	s3,24(s1)
    this->finished=false; //menja se u wrapperu
    80001400:	02048823          	sb	zero,48(s1)
    this->blocked=false; //menja se u sem
    80001404:	020488a3          	sb	zero,49(s1)
    this->threadID=++id;
    80001408:	0000a717          	auipc	a4,0xa
    8000140c:	1c870713          	addi	a4,a4,456 # 8000b5d0 <_ZN3TCB2idE>
    80001410:	00072783          	lw	a5,0(a4)
    80001414:	0017879b          	addiw	a5,a5,1
    80001418:	0007869b          	sext.w	a3,a5
    8000141c:	00f72023          	sw	a5,0(a4)
    80001420:	00d4b023          	sd	a3,0(s1)
}
    80001424:	02813083          	ld	ra,40(sp)
    80001428:	02013403          	ld	s0,32(sp)
    8000142c:	01813483          	ld	s1,24(sp)
    80001430:	01013903          	ld	s2,16(sp)
    80001434:	00813983          	ld	s3,8(sp)
    80001438:	03010113          	addi	sp,sp,48
    8000143c:	00008067          	ret
TCB::TCB(body routine, void* arg, void * stack) : stack(routine!=nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr) {
    80001440:	00000513          	li	a0,0
    80001444:	f95ff06f          	j	800013d8 <_ZN3TCBC1EPFvPvES0_S0_+0x38>
            routine == nullptr ? 0 : (uint64) &this->stack[ DEFAULT_STACK_SIZE ] //sp
    80001448:	00000513          	li	a0,0
    8000144c:	f9dff06f          	j	800013e8 <_ZN3TCBC1EPFvPvES0_S0_+0x48>

0000000080001450 <_ZN3TCB10threadExitEv>:
    if(routine) Scheduler::put(*handle);
    return 0;
}

int TCB::threadExit() {
    if(!running || !running->getFinished()) return -1;
    80001450:	0000a797          	auipc	a5,0xa
    80001454:	1887b783          	ld	a5,392(a5) # 8000b5d8 <_ZN3TCB7runningE>
    80001458:	02078c63          	beqz	a5,80001490 <_ZN3TCB10threadExitEv+0x40>
    8000145c:	0307c783          	lbu	a5,48(a5)
    80001460:	02078c63          	beqz	a5,80001498 <_ZN3TCB10threadExitEv+0x48>
int TCB::threadExit() {
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00113423          	sd	ra,8(sp)
    8000146c:	00813023          	sd	s0,0(sp)
    80001470:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001474:	00001097          	auipc	ra,0x1
    80001478:	e64080e7          	jalr	-412(ra) # 800022d8 <_Z15thread_dispatchv>
    return 0;
    8000147c:	00000513          	li	a0,0
}
    80001480:	00813083          	ld	ra,8(sp)
    80001484:	00013403          	ld	s0,0(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret
    if(!running || !running->getFinished()) return -1;
    80001490:	fff00513          	li	a0,-1
    80001494:	00008067          	ret
    80001498:	fff00513          	li	a0,-1
}
    8000149c:	00008067          	ret

00000000800014a0 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper() {
    800014a0:	fe010113          	addi	sp,sp,-32
    800014a4:	00113c23          	sd	ra,24(sp)
    800014a8:	00813823          	sd	s0,16(sp)
    800014ac:	00913423          	sd	s1,8(sp)
    800014b0:	02010413          	addi	s0,sp,32
    if (running->routine) {
    800014b4:	0000a797          	auipc	a5,0xa
    800014b8:	1247b783          	ld	a5,292(a5) # 8000b5d8 <_ZN3TCB7runningE>
    800014bc:	0087b783          	ld	a5,8(a5)
    800014c0:	02078863          	beqz	a5,800014f0 <_ZN3TCB13threadWrapperEv+0x50>
        Riscv::popSppSpie();
    800014c4:	00000097          	auipc	ra,0x0
    800014c8:	7a4080e7          	jalr	1956(ra) # 80001c68 <_ZN5Riscv10popSppSpieEv>
        running->routine(running->arg);
    800014cc:	0000a497          	auipc	s1,0xa
    800014d0:	10448493          	addi	s1,s1,260 # 8000b5d0 <_ZN3TCB2idE>
    800014d4:	0084b783          	ld	a5,8(s1)
    800014d8:	0087b703          	ld	a4,8(a5)
    800014dc:	0187b503          	ld	a0,24(a5)
    800014e0:	000700e7          	jalr	a4
        running->setFinished();
    800014e4:	0084b783          	ld	a5,8(s1)
    void setFinished() { finished=true; }
    800014e8:	00100713          	li	a4,1
    800014ec:	02e78823          	sb	a4,48(a5)
    }
    TCB::threadExit();
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	f60080e7          	jalr	-160(ra) # 80001450 <_ZN3TCB10threadExitEv>
}
    800014f8:	01813083          	ld	ra,24(sp)
    800014fc:	01013403          	ld	s0,16(sp)
    80001500:	00813483          	ld	s1,8(sp)
    80001504:	02010113          	addi	sp,sp,32
    80001508:	00008067          	ret

000000008000150c <_ZN3TCB5yieldEPS_S0_>:
    if (running->finished) delete running;
    running=Scheduler::get();
    if(oldRunning!=running) yield(oldRunning, running);
}

void TCB::yield(TCB* oldRunning, TCB* newRunning) {
    8000150c:	fe010113          	addi	sp,sp,-32
    80001510:	00113c23          	sd	ra,24(sp)
    80001514:	00813823          	sd	s0,16(sp)
    80001518:	00913423          	sd	s1,8(sp)
    8000151c:	02010413          	addi	s0,sp,32
    80001520:	00050493          	mv	s1,a0

    Riscv::push();
    80001524:	00000097          	auipc	ra,0x0
    80001528:	adc080e7          	jalr	-1316(ra) # 80001000 <_ZN5Riscv4pushEv>
    contextSwitch(&oldRunning->context, &running->context);
    8000152c:	0000a597          	auipc	a1,0xa
    80001530:	0ac5b583          	ld	a1,172(a1) # 8000b5d8 <_ZN3TCB7runningE>
    80001534:	02058593          	addi	a1,a1,32
    80001538:	02048513          	addi	a0,s1,32
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	cc4080e7          	jalr	-828(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    Riscv::pop();
    80001544:	00000097          	auipc	ra,0x0
    80001548:	b38080e7          	jalr	-1224(ra) # 8000107c <_ZN5Riscv3popEv>
}
    8000154c:	01813083          	ld	ra,24(sp)
    80001550:	01013403          	ld	s0,16(sp)
    80001554:	00813483          	ld	s1,8(sp)
    80001558:	02010113          	addi	sp,sp,32
    8000155c:	00008067          	ret

0000000080001560 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00113423          	sd	ra,8(sp)
    80001568:	00813023          	sd	s0,0(sp)
    8000156c:	01010413          	addi	s0,sp,16
    size_t numOfBlocks=ROUNDUP((size+MemoryAllocator::DBlockSize))/MEM_BLOCK_SIZE;
    80001570:	0000a797          	auipc	a5,0xa
    80001574:	ff87b783          	ld	a5,-8(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001578:	0007b783          	ld	a5,0(a5)
    8000157c:	00a78533          	add	a0,a5,a0
    80001580:	03f50513          	addi	a0,a0,63 # 803f <_entry-0x7fff7fc1>
    return MemoryAllocator::mem_alloc(numOfBlocks);
    80001584:	00655513          	srli	a0,a0,0x6
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	21c080e7          	jalr	540(ra) # 800017a4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001590:	00813083          	ld	ra,8(sp)
    80001594:	00013403          	ld	s0,0(sp)
    80001598:	01010113          	addi	sp,sp,16
    8000159c:	00008067          	ret

00000000800015a0 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *ptr) {
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00113423          	sd	ra,8(sp)
    800015a8:	00813023          	sd	s0,0(sp)
    800015ac:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	380080e7          	jalr	896(ra) # 80001930 <_ZN15MemoryAllocator8mem_freeEPv>
    800015b8:	00813083          	ld	ra,8(sp)
    800015bc:	00013403          	ld	s0,0(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_>:
int TCB::threadCreate(TCB ** handle, body routine, void* arg, void* stack) { //handle je ADRESA rucke
    800015c8:	fc010113          	addi	sp,sp,-64
    800015cc:	02113c23          	sd	ra,56(sp)
    800015d0:	02813823          	sd	s0,48(sp)
    800015d4:	02913423          	sd	s1,40(sp)
    800015d8:	03213023          	sd	s2,32(sp)
    800015dc:	01313c23          	sd	s3,24(sp)
    800015e0:	01413823          	sd	s4,16(sp)
    800015e4:	01513423          	sd	s5,8(sp)
    800015e8:	04010413          	addi	s0,sp,64
    800015ec:	00050993          	mv	s3,a0
    800015f0:	00058913          	mv	s2,a1
    800015f4:	00060a13          	mv	s4,a2
    800015f8:	00068a93          	mv	s5,a3
    *handle=new TCB(routine, arg, stack);
    800015fc:	03800513          	li	a0,56
    80001600:	00000097          	auipc	ra,0x0
    80001604:	f60080e7          	jalr	-160(ra) # 80001560 <_ZN3TCBnwEm>
    80001608:	00050493          	mv	s1,a0
    8000160c:	000a8693          	mv	a3,s5
    80001610:	000a0613          	mv	a2,s4
    80001614:	00090593          	mv	a1,s2
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	d88080e7          	jalr	-632(ra) # 800013a0 <_ZN3TCBC1EPFvPvES0_S0_>
    80001620:	0099b023          	sd	s1,0(s3)
    if(!*handle) return -1;
    80001624:	02048e63          	beqz	s1,80001660 <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0x98>
    if(routine) Scheduler::put(*handle);
    80001628:	04090063          	beqz	s2,80001668 <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0xa0>
    8000162c:	00048513          	mv	a0,s1
    80001630:	00001097          	auipc	ra,0x1
    80001634:	a08080e7          	jalr	-1528(ra) # 80002038 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80001638:	00000513          	li	a0,0
}
    8000163c:	03813083          	ld	ra,56(sp)
    80001640:	03013403          	ld	s0,48(sp)
    80001644:	02813483          	ld	s1,40(sp)
    80001648:	02013903          	ld	s2,32(sp)
    8000164c:	01813983          	ld	s3,24(sp)
    80001650:	01013a03          	ld	s4,16(sp)
    80001654:	00813a83          	ld	s5,8(sp)
    80001658:	04010113          	addi	sp,sp,64
    8000165c:	00008067          	ret
    if(!*handle) return -1;
    80001660:	fff00513          	li	a0,-1
    80001664:	fd9ff06f          	j	8000163c <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0x74>
    return 0;
    80001668:	00000513          	li	a0,0
    8000166c:	fd1ff06f          	j	8000163c <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_+0x74>
    80001670:	00050913          	mv	s2,a0
    *handle=new TCB(routine, arg, stack);
    80001674:	00048513          	mv	a0,s1
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	f28080e7          	jalr	-216(ra) # 800015a0 <_ZN3TCBdlEPv>
    80001680:	00090513          	mv	a0,s2
    80001684:	0000b097          	auipc	ra,0xb
    80001688:	0a4080e7          	jalr	164(ra) # 8000c728 <_Unwind_Resume>

000000008000168c <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    8000168c:	fe010113          	addi	sp,sp,-32
    80001690:	00113c23          	sd	ra,24(sp)
    80001694:	00813823          	sd	s0,16(sp)
    80001698:	00913423          	sd	s1,8(sp)
    8000169c:	01213023          	sd	s2,0(sp)
    800016a0:	02010413          	addi	s0,sp,32
    TCB *oldRunning=running;
    800016a4:	0000a497          	auipc	s1,0xa
    800016a8:	f344b483          	ld	s1,-204(s1) # 8000b5d8 <_ZN3TCB7runningE>
    if (!running->finished && !running->blocked) {
    800016ac:	0304c783          	lbu	a5,48(s1)
    800016b0:	00079663          	bnez	a5,800016bc <_ZN3TCB8dispatchEv+0x30>
    800016b4:	0314c783          	lbu	a5,49(s1)
    800016b8:	06078663          	beqz	a5,80001724 <_ZN3TCB8dispatchEv+0x98>
    if (running->finished) delete running;
    800016bc:	0000a917          	auipc	s2,0xa
    800016c0:	f1c93903          	ld	s2,-228(s2) # 8000b5d8 <_ZN3TCB7runningE>
    800016c4:	03094783          	lbu	a5,48(s2)
    800016c8:	02078063          	beqz	a5,800016e8 <_ZN3TCB8dispatchEv+0x5c>
    800016cc:	00090e63          	beqz	s2,800016e8 <_ZN3TCB8dispatchEv+0x5c>
    bool getBlocked() { return blocked; }
    void setBlocked() { blocked=true; }

    ~TCB() { MemoryAllocator::mem_free(this->stack); }
    800016d0:	01093503          	ld	a0,16(s2)
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	25c080e7          	jalr	604(ra) # 80001930 <_ZN15MemoryAllocator8mem_freeEPv>
    800016dc:	00090513          	mv	a0,s2
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	ec0080e7          	jalr	-320(ra) # 800015a0 <_ZN3TCBdlEPv>
    running=Scheduler::get();
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	8e8080e7          	jalr	-1816(ra) # 80001fd0 <_ZN9Scheduler3getEv>
    800016f0:	00050593          	mv	a1,a0
    800016f4:	0000a797          	auipc	a5,0xa
    800016f8:	eea7b223          	sd	a0,-284(a5) # 8000b5d8 <_ZN3TCB7runningE>
    if(oldRunning!=running) yield(oldRunning, running);
    800016fc:	00a48863          	beq	s1,a0,8000170c <_ZN3TCB8dispatchEv+0x80>
    80001700:	00048513          	mv	a0,s1
    80001704:	00000097          	auipc	ra,0x0
    80001708:	e08080e7          	jalr	-504(ra) # 8000150c <_ZN3TCB5yieldEPS_S0_>
}
    8000170c:	01813083          	ld	ra,24(sp)
    80001710:	01013403          	ld	s0,16(sp)
    80001714:	00813483          	ld	s1,8(sp)
    80001718:	00013903          	ld	s2,0(sp)
    8000171c:	02010113          	addi	sp,sp,32
    80001720:	00008067          	ret
        Scheduler::put(oldRunning);
    80001724:	00048513          	mv	a0,s1
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	910080e7          	jalr	-1776(ra) # 80002038 <_ZN9Scheduler3putEP3TCB>
    80001730:	f8dff06f          	j	800016bc <_ZN3TCB8dispatchEv+0x30>

0000000080001734 <_ZN15MemoryAllocator4initEv>:
MemoryAllocator::DBlock* MemoryAllocator::headFree = nullptr;
bool MemoryAllocator::initialized = false;

const size_t MemoryAllocator::DBlockSize = sizeof(MemoryAllocator::DBlock);

void MemoryAllocator::init(){
    80001734:	ff010113          	addi	sp,sp,-16
    80001738:	00813423          	sd	s0,8(sp)
    8000173c:	01010413          	addi	s0,sp,16
    if(!initialized){
    80001740:	0000a797          	auipc	a5,0xa
    80001744:	ea07c783          	lbu	a5,-352(a5) # 8000b5e0 <_ZN15MemoryAllocator11initializedE>
    80001748:	04079863          	bnez	a5,80001798 <_ZN15MemoryAllocator4initEv+0x64>
        headFree=(DBlock*)((char*)HEAP_START_ADDR);
    8000174c:	0000a797          	auipc	a5,0xa
    80001750:	df47b783          	ld	a5,-524(a5) # 8000b540 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001754:	0007b683          	ld	a3,0(a5)
    80001758:	0000a717          	auipc	a4,0xa
    8000175c:	e8870713          	addi	a4,a4,-376 # 8000b5e0 <_ZN15MemoryAllocator11initializedE>
    80001760:	00d73423          	sd	a3,8(a4)
        headFree->size=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR+1)/MEM_BLOCK_SIZE-1; //u BLOKOVIMA, slobodan prostor + header
    80001764:	0000a797          	auipc	a5,0xa
    80001768:	dfc7b783          	ld	a5,-516(a5) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000176c:	0007b783          	ld	a5,0(a5)
    80001770:	40d787b3          	sub	a5,a5,a3
    80001774:	04078793          	addi	a5,a5,64
    80001778:	0067d793          	srli	a5,a5,0x6
    8000177c:	fff78793          	addi	a5,a5,-1
    80001780:	00f6b023          	sd	a5,0(a3)
        headFree->next = nullptr;
    80001784:	00873783          	ld	a5,8(a4)
    80001788:	0007b423          	sd	zero,8(a5)
        headFree->prev  = nullptr;
    8000178c:	0007b823          	sd	zero,16(a5)
        initialized=true;
    80001790:	00100793          	li	a5,1
    80001794:	00f70023          	sb	a5,0(a4)
    }
}
    80001798:	00813403          	ld	s0,8(sp)
    8000179c:	01010113          	addi	sp,sp,16
    800017a0:	00008067          	ret

00000000800017a4 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size){ //broj blokova - uracunat header
    800017a4:	ff010113          	addi	sp,sp,-16
    800017a8:	00813423          	sd	s0,8(sp)
    800017ac:	01010413          	addi	s0,sp,16

    if(size <=0 || size>=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR)/MEM_BLOCK_SIZE) return nullptr;
    800017b0:	10050e63          	beqz	a0,800018cc <_ZN15MemoryAllocator9mem_allocEm+0x128>
    800017b4:	00050793          	mv	a5,a0
    800017b8:	0000a717          	auipc	a4,0xa
    800017bc:	da873703          	ld	a4,-600(a4) # 8000b560 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017c0:	00073703          	ld	a4,0(a4)
    800017c4:	0000a697          	auipc	a3,0xa
    800017c8:	d7c6b683          	ld	a3,-644(a3) # 8000b540 <_GLOBAL_OFFSET_TABLE_+0x8>
    800017cc:	0006b683          	ld	a3,0(a3)
    800017d0:	40d70733          	sub	a4,a4,a3
    800017d4:	03f70713          	addi	a4,a4,63
    800017d8:	00675713          	srli	a4,a4,0x6
    800017dc:	0ee57c63          	bgeu	a0,a4,800018d4 <_ZN15MemoryAllocator9mem_allocEm+0x130>
    DBlock* curr=nullptr;

    for(curr = headFree; curr ; curr=curr->next){ //iteriramo kroz free
    800017e0:	0000a697          	auipc	a3,0xa
    800017e4:	e086b683          	ld	a3,-504(a3) # 8000b5e8 <_ZN15MemoryAllocator8headFreeE>
    800017e8:	00068513          	mv	a0,a3
    800017ec:	06050263          	beqz	a0,80001850 <_ZN15MemoryAllocator9mem_allocEm+0xac>

        if(curr->size<size) continue; //nema prostora, idi na sledece
    800017f0:	00053703          	ld	a4,0(a0)
    800017f4:	06f76463          	bltu	a4,a5,8000185c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        if(curr->size==size){ //ima tacno onoliko prostora koliki je blok
    800017f8:	06f70663          	beq	a4,a5,80001864 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            if (curr == headFree) headFree = curr->next;
            curr->prev = curr->next = nullptr;

        }
        else{ //slucaj da ima prostora + viska
            curr->size-=size;
    800017fc:	40f70733          	sub	a4,a4,a5
    80001800:	00e53023          	sd	a4,0(a0)
            curr=(DBlock*)((char*)curr+(curr->size*MEM_BLOCK_SIZE));
    80001804:	00671713          	slli	a4,a4,0x6
    80001808:	00e50533          	add	a0,a0,a4
            curr->size=size;
    8000180c:	00f53023          	sd	a5,0(a0)
            curr->prev=nullptr;
    80001810:	00053823          	sd	zero,16(a0)
            curr->next =nullptr;
    80001814:	00053423          	sd	zero,8(a0)

        }
        //ubaci u full listu

        if(!headFull){
    80001818:	0000a797          	auipc	a5,0xa
    8000181c:	dd87b783          	ld	a5,-552(a5) # 8000b5f0 <_ZN15MemoryAllocator8headFullE>
    80001820:	08078263          	beqz	a5,800018a4 <_ZN15MemoryAllocator9mem_allocEm+0x100>
            headFull=curr;
            return (char*)curr+DBlockSize;
        }

        if(headFull>curr) {
    80001824:	08f56863          	bltu	a0,a5,800018b4 <_ZN15MemoryAllocator9mem_allocEm+0x110>
            headFull=curr;
            return (char*)curr+DBlockSize;
        } //stavljamo na pocetak liste

        DBlock *currUsed=headFull;
        while(currUsed->next && currUsed->next<curr) currUsed=currUsed->next;
    80001828:	00078713          	mv	a4,a5
    8000182c:	0087b783          	ld	a5,8(a5)
    80001830:	00078463          	beqz	a5,80001838 <_ZN15MemoryAllocator9mem_allocEm+0x94>
    80001834:	fea7eae3          	bltu	a5,a0,80001828 <_ZN15MemoryAllocator9mem_allocEm+0x84>
        curr->next=currUsed->next;
    80001838:	00f53423          	sd	a5,8(a0)
        if(currUsed->next) currUsed->next->prev=curr;
    8000183c:	00078463          	beqz	a5,80001844 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80001840:	00a7b823          	sd	a0,16(a5)
        curr->prev=currUsed;
    80001844:	00e53823          	sd	a4,16(a0)
        currUsed->next=curr;
    80001848:	00a73423          	sd	a0,8(a4)
        return (char*)curr+DBlockSize;
    8000184c:	01850513          	addi	a0,a0,24
        //ubaciti na odgovarajuce mesto u full listi
        //currUsed je prethodnik curr
    }

    return nullptr;
}
    80001850:	00813403          	ld	s0,8(sp)
    80001854:	01010113          	addi	sp,sp,16
    80001858:	00008067          	ret
    for(curr = headFree; curr ; curr=curr->next){ //iteriramo kroz free
    8000185c:	00853503          	ld	a0,8(a0)
    80001860:	f8dff06f          	j	800017ec <_ZN15MemoryAllocator9mem_allocEm+0x48>
            if(curr->next) curr->next->prev=curr->prev;
    80001864:	00853783          	ld	a5,8(a0)
    80001868:	00078663          	beqz	a5,80001874 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
    8000186c:	01053703          	ld	a4,16(a0)
    80001870:	00e7b823          	sd	a4,16(a5)
            if(curr->prev) curr->prev->next=curr->next; //izbacen iz free liste
    80001874:	01053783          	ld	a5,16(a0)
    80001878:	00078663          	beqz	a5,80001884 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    8000187c:	00853703          	ld	a4,8(a0)
    80001880:	00e7b423          	sd	a4,8(a5)
            if (curr == headFree) headFree = curr->next;
    80001884:	00d50863          	beq	a0,a3,80001894 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->prev = curr->next = nullptr;
    80001888:	00053423          	sd	zero,8(a0)
    8000188c:	00053823          	sd	zero,16(a0)
    80001890:	f89ff06f          	j	80001818 <_ZN15MemoryAllocator9mem_allocEm+0x74>
            if (curr == headFree) headFree = curr->next;
    80001894:	00853783          	ld	a5,8(a0)
    80001898:	0000a717          	auipc	a4,0xa
    8000189c:	d4f73823          	sd	a5,-688(a4) # 8000b5e8 <_ZN15MemoryAllocator8headFreeE>
    800018a0:	fe9ff06f          	j	80001888 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
            headFull=curr;
    800018a4:	0000a797          	auipc	a5,0xa
    800018a8:	d4a7b623          	sd	a0,-692(a5) # 8000b5f0 <_ZN15MemoryAllocator8headFullE>
            return (char*)curr+DBlockSize;
    800018ac:	01850513          	addi	a0,a0,24
    800018b0:	fa1ff06f          	j	80001850 <_ZN15MemoryAllocator9mem_allocEm+0xac>
            curr->next=headFull;
    800018b4:	00f53423          	sd	a5,8(a0)
            headFull->prev=curr;
    800018b8:	00a7b823          	sd	a0,16(a5)
            headFull=curr;
    800018bc:	0000a797          	auipc	a5,0xa
    800018c0:	d2a7ba23          	sd	a0,-716(a5) # 8000b5f0 <_ZN15MemoryAllocator8headFullE>
            return (char*)curr+DBlockSize;
    800018c4:	01850513          	addi	a0,a0,24
    800018c8:	f89ff06f          	j	80001850 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    if(size <=0 || size>=ROUNDUP((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR)/MEM_BLOCK_SIZE) return nullptr;
    800018cc:	00000513          	li	a0,0
    800018d0:	f81ff06f          	j	80001850 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800018d4:	00000513          	li	a0,0
    800018d8:	f79ff06f          	j	80001850 <_ZN15MemoryAllocator9mem_allocEm+0xac>

00000000800018dc <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>:
    }

    return -1; // 0 ako je ok -1 ako nije
}

void MemoryAllocator::tryToJoin(DBlock* curr){
    800018dc:	ff010113          	addi	sp,sp,-16
    800018e0:	00813423          	sd	s0,8(sp)
    800018e4:	01010413          	addi	s0,sp,16
    if(!curr) return;
    800018e8:	00050e63          	beqz	a0,80001904 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    if(curr->next && (char*)curr+curr->size*MEM_BLOCK_SIZE == (char*)curr->next){
    800018ec:	00853783          	ld	a5,8(a0)
    800018f0:	00078a63          	beqz	a5,80001904 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    800018f4:	00053683          	ld	a3,0(a0)
    800018f8:	00669713          	slli	a4,a3,0x6
    800018fc:	00e50733          	add	a4,a0,a4
    80001900:	00e78863          	beq	a5,a4,80001910 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x34>
        curr->size+=curr->next->size;
        curr->next=curr->next->next;
        if(curr->next) curr->next->prev=curr;
    }
}
    80001904:	00813403          	ld	s0,8(sp)
    80001908:	01010113          	addi	sp,sp,16
    8000190c:	00008067          	ret
        curr->size+=curr->next->size;
    80001910:	0007b703          	ld	a4,0(a5)
    80001914:	00e686b3          	add	a3,a3,a4
    80001918:	00d53023          	sd	a3,0(a0)
        curr->next=curr->next->next;
    8000191c:	0087b783          	ld	a5,8(a5)
    80001920:	00f53423          	sd	a5,8(a0)
        if(curr->next) curr->next->prev=curr;
    80001924:	fe0780e3          	beqz	a5,80001904 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>
    80001928:	00a7b823          	sd	a0,16(a5)
    8000192c:	fd9ff06f          	j	80001904 <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE+0x28>

0000000080001930 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!ptr) return -1;
    80001930:	10050c63          	beqz	a0,80001a48 <_ZN15MemoryAllocator8mem_freeEPv+0x118>
int MemoryAllocator::mem_free (void* ptr){
    80001934:	fe010113          	addi	sp,sp,-32
    80001938:	00113c23          	sd	ra,24(sp)
    8000193c:	00813823          	sd	s0,16(sp)
    80001940:	00913423          	sd	s1,8(sp)
    80001944:	02010413          	addi	s0,sp,32
    ptr=(DBlock*)((char*)ptr-DBlockSize);
    80001948:	fe850513          	addi	a0,a0,-24
    for(DBlock* curr=headFull; curr || ptr<=curr; curr=curr->next){
    8000194c:	0000a797          	auipc	a5,0xa
    80001950:	ca47b783          	ld	a5,-860(a5) # 8000b5f0 <_ZN15MemoryAllocator8headFullE>
    80001954:	00078493          	mv	s1,a5
    80001958:	00c0006f          	j	80001964 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
        if(curr==ptr){ //curr izbacujemo iz full liste
    8000195c:	00a48c63          	beq	s1,a0,80001974 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
    for(DBlock* curr=headFull; curr || ptr<=curr; curr=curr->next){
    80001960:	0084b483          	ld	s1,8(s1)
    80001964:	fe049ce3          	bnez	s1,8000195c <_ZN15MemoryAllocator8mem_freeEPv+0x2c>
    80001968:	fea4fae3          	bgeu	s1,a0,8000195c <_ZN15MemoryAllocator8mem_freeEPv+0x2c>
    return -1; // 0 ako je ok -1 ako nije
    8000196c:	fff00513          	li	a0,-1
    80001970:	0800006f          	j	800019f0 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
            if(curr->next) curr->next->prev=curr->prev;
    80001974:	0084b703          	ld	a4,8(s1)
    80001978:	00070663          	beqz	a4,80001984 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    8000197c:	0104b683          	ld	a3,16(s1)
    80001980:	00d73823          	sd	a3,16(a4)
            if(curr->prev) curr->prev->next=curr->next;
    80001984:	0104b703          	ld	a4,16(s1)
    80001988:	00070663          	beqz	a4,80001994 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    8000198c:	0084b683          	ld	a3,8(s1)
    80001990:	00d73423          	sd	a3,8(a4)
            if (curr == headFull) headFull = curr->next;
    80001994:	06f48863          	beq	s1,a5,80001a04 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
            curr->prev = curr->next = nullptr;
    80001998:	0004b423          	sd	zero,8(s1)
    8000199c:	0004b823          	sd	zero,16(s1)
            if(!headFree){
    800019a0:	0000a797          	auipc	a5,0xa
    800019a4:	c487b783          	ld	a5,-952(a5) # 8000b5e8 <_ZN15MemoryAllocator8headFreeE>
    800019a8:	06078663          	beqz	a5,80001a14 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
            if(headFree>curr) {
    800019ac:	06f4ec63          	bltu	s1,a5,80001a24 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
            while(currFree->next && currFree->next<curr) currFree=currFree->next;
    800019b0:	00078713          	mv	a4,a5
    800019b4:	0087b783          	ld	a5,8(a5)
    800019b8:	00078463          	beqz	a5,800019c0 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    800019bc:	fe97eae3          	bltu	a5,s1,800019b0 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            curr->next=currFree->next;
    800019c0:	00f4b423          	sd	a5,8(s1)
            if(currFree->next) currFree->next->prev=curr;
    800019c4:	00078463          	beqz	a5,800019cc <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    800019c8:	0097b823          	sd	s1,16(a5)
            curr->prev=currFree;
    800019cc:	00e4b823          	sd	a4,16(s1)
            currFree->next=curr;
    800019d0:	00973423          	sd	s1,8(a4)
            tryToJoin(curr);
    800019d4:	00048513          	mv	a0,s1
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	f04080e7          	jalr	-252(ra) # 800018dc <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
            tryToJoin(curr->prev);
    800019e0:	0104b503          	ld	a0,16(s1)
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	ef8080e7          	jalr	-264(ra) # 800018dc <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
            return 0;
    800019ec:	00000513          	li	a0,0
}
    800019f0:	01813083          	ld	ra,24(sp)
    800019f4:	01013403          	ld	s0,16(sp)
    800019f8:	00813483          	ld	s1,8(sp)
    800019fc:	02010113          	addi	sp,sp,32
    80001a00:	00008067          	ret
            if (curr == headFull) headFull = curr->next;
    80001a04:	0084b783          	ld	a5,8(s1)
    80001a08:	0000a717          	auipc	a4,0xa
    80001a0c:	bef73423          	sd	a5,-1048(a4) # 8000b5f0 <_ZN15MemoryAllocator8headFullE>
    80001a10:	f89ff06f          	j	80001998 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
                headFree=curr;
    80001a14:	0000a797          	auipc	a5,0xa
    80001a18:	bc97ba23          	sd	s1,-1068(a5) # 8000b5e8 <_ZN15MemoryAllocator8headFreeE>
                return 0;
    80001a1c:	00000513          	li	a0,0
    80001a20:	fd1ff06f          	j	800019f0 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
                curr->next=headFree;
    80001a24:	00f4b423          	sd	a5,8(s1)
                headFree->prev=curr;
    80001a28:	0097b823          	sd	s1,16(a5)
                headFree=curr;
    80001a2c:	0000a797          	auipc	a5,0xa
    80001a30:	ba97be23          	sd	s1,-1092(a5) # 8000b5e8 <_ZN15MemoryAllocator8headFreeE>
                tryToJoin(headFree);
    80001a34:	00048513          	mv	a0,s1
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	ea4080e7          	jalr	-348(ra) # 800018dc <_ZN15MemoryAllocator9tryToJoinEPNS_6DBlockE>
                return 0;
    80001a40:	00000513          	li	a0,0
    80001a44:	fadff06f          	j	800019f0 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
    if(!ptr) return -1;
    80001a48:	fff00513          	li	a0,-1
}
    80001a4c:	00008067          	ret

0000000080001a50 <_ZN5Riscv16interruptHandlerEv>:
#include "../h/sem.hpp"
#include "../lib/console.h"

extern void printStr(char const* string);

void Riscv::interruptHandler(){ //PREKIDNA RUTINA
    80001a50:	fa010113          	addi	sp,sp,-96
    80001a54:	04113c23          	sd	ra,88(sp)
    80001a58:	04813823          	sd	s0,80(sp)
    80001a5c:	04913423          	sd	s1,72(sp)
    80001a60:	05213023          	sd	s2,64(sp)
    80001a64:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    80001a68:	142027f3          	csrr	a5,scause
    80001a6c:	fcf43423          	sd	a5,-56(s0)
    return value;
    80001a70:	fc843703          	ld	a4,-56(s0)

    uint64 scause = readScause();

    if(scause==SOFTWARE) { //timer
    80001a74:	fff00793          	li	a5,-1
    80001a78:	03f79793          	slli	a5,a5,0x3f
    80001a7c:	00178793          	addi	a5,a5,1
    80001a80:	06f70663          	beq	a4,a5,80001aec <_ZN5Riscv16interruptHandlerEv+0x9c>
        clearSip(bitmaskSip::SSIP);
    }
    else if(scause==EXTERNAL){
    80001a84:	fff00793          	li	a5,-1
    80001a88:	03f79793          	slli	a5,a5,0x3f
    80001a8c:	00978793          	addi	a5,a5,9
    80001a90:	06f70e63          	beq	a4,a5,80001b0c <_ZN5Riscv16interruptHandlerEv+0xbc>
        console_handler();
    }
    else if(scause==U_ECALL || scause==S_ECALL){
    80001a94:	ff870713          	addi	a4,a4,-8
    80001a98:	00100793          	li	a5,1
    80001a9c:	1ae7ec63          	bltu	a5,a4,80001c54 <_ZN5Riscv16interruptHandlerEv+0x204>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80001aa0:	141027f3          	csrr	a5,sepc
    80001aa4:	fcf43c23          	sd	a5,-40(s0)
    return value;
    80001aa8:	fd843483          	ld	s1,-40(s0)
        uint64 volatile oc, arg1, arg2, arg3, arg4;

        uint64 sepc=readSepc()+4;
    80001aac:	00448493          	addi	s1,s1,4
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
};

inline uint64 Riscv::readSstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80001ab0:	100027f3          	csrr	a5,sstatus
    80001ab4:	fcf43823          	sd	a5,-48(s0)
    return value;
    80001ab8:	fd043903          	ld	s2,-48(s0)
        uint64 sstatus=readSstatus();

        __asm__ volatile("mv %0, a0" : "=r"(oc)); // operation code
    80001abc:	00050793          	mv	a5,a0
    80001ac0:	faf43023          	sd	a5,-96(s0)

        switch(oc){
    80001ac4:	fa043783          	ld	a5,-96(s0)
    80001ac8:	04200713          	li	a4,66
    80001acc:	06f76063          	bltu	a4,a5,80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
    80001ad0:	00279793          	slli	a5,a5,0x2
    80001ad4:	00007717          	auipc	a4,0x7
    80001ad8:	55c70713          	addi	a4,a4,1372 # 80009030 <_ZN15MemoryAllocator10DBlockSizeE+0x10>
    80001adc:	00e787b3          	add	a5,a5,a4
    80001ae0:	0007a783          	lw	a5,0(a5)
    80001ae4:	00e787b3          	add	a5,a5,a4
    80001ae8:	00078067          	jr	a5
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80001aec:	00200793          	li	a5,2
    80001af0:	1447b073          	csrc	sip,a5
        writeSstatus(sstatus);
    }
    else{
        printStr("Error");
    }
}
    80001af4:	05813083          	ld	ra,88(sp)
    80001af8:	05013403          	ld	s0,80(sp)
    80001afc:	04813483          	ld	s1,72(sp)
    80001b00:	04013903          	ld	s2,64(sp)
    80001b04:	06010113          	addi	sp,sp,96
    80001b08:	00008067          	ret
        console_handler();
    80001b0c:	00006097          	auipc	ra,0x6
    80001b10:	5d4080e7          	jalr	1492(ra) # 800080e0 <console_handler>
    80001b14:	fe1ff06f          	j	80001af4 <_ZN5Riscv16interruptHandlerEv+0xa4>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001b18:	00058793          	mv	a5,a1
    80001b1c:	faf43423          	sd	a5,-88(s0)
                MemoryAllocator::mem_alloc((size_t)arg1);
    80001b20:	fa843503          	ld	a0,-88(s0)
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	c80080e7          	jalr	-896(ra) # 800017a4 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80001b2c:	14149073          	csrw	sepc,s1
}

inline void Riscv::writeSstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80001b30:	10091073          	csrw	sstatus,s2
}
    80001b34:	fc1ff06f          	j	80001af4 <_ZN5Riscv16interruptHandlerEv+0xa4>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001b38:	00058793          	mv	a5,a1
    80001b3c:	faf43423          	sd	a5,-88(s0)
                MemoryAllocator::mem_free((void *)arg1);
    80001b40:	fa843503          	ld	a0,-88(s0)
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	dec080e7          	jalr	-532(ra) # 80001930 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80001b4c:	fe1ff06f          	j	80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001b50:	00058793          	mv	a5,a1
    80001b54:	faf43423          	sd	a5,-88(s0)
                __asm__ volatile("mv %0, a2" : "=r"(arg2));
    80001b58:	00060793          	mv	a5,a2
    80001b5c:	faf43823          	sd	a5,-80(s0)
                __asm__ volatile("mv %0, a3" : "=r"(arg3));
    80001b60:	00068793          	mv	a5,a3
    80001b64:	faf43c23          	sd	a5,-72(s0)
                __asm__ volatile("mv %0, a4" : "=r"(arg4));
    80001b68:	00070793          	mv	a5,a4
    80001b6c:	fcf43023          	sd	a5,-64(s0)
                TCB::threadCreate((thread_t *)arg1, (body)arg2, (void *)arg3, (void *)arg4);
    80001b70:	fa843503          	ld	a0,-88(s0)
    80001b74:	fb043583          	ld	a1,-80(s0)
    80001b78:	fb843603          	ld	a2,-72(s0)
    80001b7c:	fc043683          	ld	a3,-64(s0)
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	a48080e7          	jalr	-1464(ra) # 800015c8 <_ZN3TCB12threadCreateEPPS_PFvPvES2_S2_>
                break;
    80001b88:	fa5ff06f          	j	80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
                TCB::threadExit();
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	8c4080e7          	jalr	-1852(ra) # 80001450 <_ZN3TCB10threadExitEv>
                break;
    80001b94:	f99ff06f          	j	80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
                TCB::dispatch();
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	af4080e7          	jalr	-1292(ra) # 8000168c <_ZN3TCB8dispatchEv>
                break;
    80001ba0:	f8dff06f          	j	80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001ba4:	00058793          	mv	a5,a1
    80001ba8:	faf43423          	sd	a5,-88(s0)
                __asm__ volatile("mv %0, a2" : "=r"(arg2));
    80001bac:	00060793          	mv	a5,a2
    80001bb0:	faf43823          	sd	a5,-80(s0)
                Sem::sem_open((sem_t*)arg1, (unsigned int)arg2);
    80001bb4:	fa843503          	ld	a0,-88(s0)
    80001bb8:	fb043583          	ld	a1,-80(s0)
    80001bbc:	0005859b          	sext.w	a1,a1
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	2b4080e7          	jalr	692(ra) # 80001e74 <_ZN3Sem8sem_openEPPS_j>
                break;
    80001bc8:	f65ff06f          	j	80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001bcc:	00058793          	mv	a5,a1
    80001bd0:	faf43423          	sd	a5,-88(s0)
                Sem::sem_close((sem_t)arg1);
    80001bd4:	fa843503          	ld	a0,-88(s0)
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	328080e7          	jalr	808(ra) # 80001f00 <_ZN3Sem9sem_closeEPS_>
                break;
    80001be0:	f4dff06f          	j	80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001be4:	00058793          	mv	a5,a1
    80001be8:	faf43423          	sd	a5,-88(s0)
                Sem::sem_wait(((sem_t)arg1));
    80001bec:	fa843503          	ld	a0,-88(s0)
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	0a0080e7          	jalr	160(ra) # 80001c90 <_ZN3Sem8sem_waitEPS_>
                break;
    80001bf8:	f35ff06f          	j	80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001bfc:	00058793          	mv	a5,a1
    80001c00:	faf43423          	sd	a5,-88(s0)
                Sem::sem_signal((sem_t)arg1);
    80001c04:	fa843503          	ld	a0,-88(s0)
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	150080e7          	jalr	336(ra) # 80001d58 <_ZN3Sem10sem_signalEPS_>
                break;
    80001c10:	f1dff06f          	j	80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001c14:	00058793          	mv	a5,a1
    80001c18:	faf43423          	sd	a5,-88(s0)
                Sem::sem_trywait((sem_t)arg1);
    80001c1c:	fa843503          	ld	a0,-88(s0)
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	1d0080e7          	jalr	464(ra) # 80001df0 <_ZN3Sem11sem_trywaitEPS_>
                break;
    80001c28:	f05ff06f          	j	80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
                __getc();
    80001c2c:	00006097          	auipc	ra,0x6
    80001c30:	47c080e7          	jalr	1148(ra) # 800080a8 <__getc>
                break;
    80001c34:	ef9ff06f          	j	80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
                __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80001c38:	00058793          	mv	a5,a1
    80001c3c:	faf43423          	sd	a5,-88(s0)
                __putc(arg1);
    80001c40:	fa843503          	ld	a0,-88(s0)
    80001c44:	0ff57513          	andi	a0,a0,255
    80001c48:	00006097          	auipc	ra,0x6
    80001c4c:	424080e7          	jalr	1060(ra) # 8000806c <__putc>
                break;
    80001c50:	eddff06f          	j	80001b2c <_ZN5Riscv16interruptHandlerEv+0xdc>
        printStr("Error");
    80001c54:	00007517          	auipc	a0,0x7
    80001c58:	3d450513          	addi	a0,a0,980 # 80009028 <_ZN15MemoryAllocator10DBlockSizeE+0x8>
    80001c5c:	00001097          	auipc	ra,0x1
    80001c60:	964080e7          	jalr	-1692(ra) # 800025c0 <_Z8printStrPKc>
}
    80001c64:	e91ff06f          	j	80001af4 <_ZN5Riscv16interruptHandlerEv+0xa4>

0000000080001c68 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie(){
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00813423          	sd	s0,8(sp)
    80001c70:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001c74:	14109073          	csrw	sepc,ra
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80001c78:	10000793          	li	a5,256
    80001c7c:	1007b073          	csrc	sstatus,a5
    Riscv::clearSstatus(bitmaskSstatus::SPP);
    __asm__ volatile ("sret");
    80001c80:	10200073          	sret
    80001c84:	00813403          	ld	s0,8(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <_ZN3Sem8sem_waitEPS_>:
    delete handle;
    return 0;
}

int Sem::sem_wait(sem_t handle) {
    if (!handle) return -1;
    80001c90:	0c050063          	beqz	a0,80001d50 <_ZN3Sem8sem_waitEPS_+0xc0>
int Sem::sem_wait(sem_t handle) {
    80001c94:	fe010113          	addi	sp,sp,-32
    80001c98:	00113c23          	sd	ra,24(sp)
    80001c9c:	00813823          	sd	s0,16(sp)
    80001ca0:	00913423          	sd	s1,8(sp)
    80001ca4:	01213023          	sd	s2,0(sp)
    80001ca8:	02010413          	addi	s0,sp,32
    80001cac:	00050493          	mv	s1,a0
    handle->count--;
    80001cb0:	00052783          	lw	a5,0(a0)
    80001cb4:	fff7879b          	addiw	a5,a5,-1
    80001cb8:	00f52023          	sw	a5,0(a0)
    if (handle->count<0) {
    80001cbc:	02079713          	slli	a4,a5,0x20
    80001cc0:	02074063          	bltz	a4,80001ce0 <_ZN3Sem8sem_waitEPS_+0x50>
        handle->blocked.put(oldRunning);
        TCB::running=Scheduler::get();
        TCB::yield(oldRunning, TCB::running);
        if (!handle) return -1;
    }
    return 0;
    80001cc4:	00000513          	li	a0,0
}
    80001cc8:	01813083          	ld	ra,24(sp)
    80001ccc:	01013403          	ld	s0,16(sp)
    80001cd0:	00813483          	ld	s1,8(sp)
    80001cd4:	00013903          	ld	s2,0(sp)
    80001cd8:	02010113          	addi	sp,sp,32
    80001cdc:	00008067          	ret
        TCB* oldRunning=TCB::running;
    80001ce0:	0000a797          	auipc	a5,0xa
    80001ce4:	8787b783          	ld	a5,-1928(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ce8:	0007b903          	ld	s2,0(a5)
    void setBlocked() { blocked=true; }
    80001cec:	00100793          	li	a5,1
    80001cf0:	02f908a3          	sb	a5,49(s2)
    List() : head(nullptr) , tail(nullptr) {}
    List(const List<T> &)=delete;
    List<T> &operator=(const List<T>&)=delete;

    void put(T* data){ //stavlja na kraj
        Elem *elem=new Elem(data, 0);
    80001cf4:	01000513          	li	a0,16
    80001cf8:	fffff097          	auipc	ra,0xfffff
    80001cfc:	53c080e7          	jalr	1340(ra) # 80001234 <_Znwm>
        Elem(T* data, Elem* next) : data(data), next(next) {}
    80001d00:	01253023          	sd	s2,0(a0)
    80001d04:	00053423          	sd	zero,8(a0)
        if(tail){
    80001d08:	0104b783          	ld	a5,16(s1)
    80001d0c:	02078c63          	beqz	a5,80001d44 <_ZN3Sem8sem_waitEPS_+0xb4>
            tail->next=elem;
    80001d10:	00a7b423          	sd	a0,8(a5)
            tail=elem;
    80001d14:	00a4b823          	sd	a0,16(s1)
        TCB::running=Scheduler::get();
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	2b8080e7          	jalr	696(ra) # 80001fd0 <_ZN9Scheduler3getEv>
    80001d20:	00050593          	mv	a1,a0
    80001d24:	0000a797          	auipc	a5,0xa
    80001d28:	8347b783          	ld	a5,-1996(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d2c:	00a7b023          	sd	a0,0(a5)
        TCB::yield(oldRunning, TCB::running);
    80001d30:	00090513          	mv	a0,s2
    80001d34:	fffff097          	auipc	ra,0xfffff
    80001d38:	7d8080e7          	jalr	2008(ra) # 8000150c <_ZN3TCB5yieldEPS_S0_>
    return 0;
    80001d3c:	00000513          	li	a0,0
    80001d40:	f89ff06f          	j	80001cc8 <_ZN3Sem8sem_waitEPS_+0x38>
        }
        else{
            head=tail=elem;
    80001d44:	00a4b823          	sd	a0,16(s1)
    80001d48:	00a4b423          	sd	a0,8(s1)
    80001d4c:	fcdff06f          	j	80001d18 <_ZN3Sem8sem_waitEPS_+0x88>
    if (!handle) return -1;
    80001d50:	fff00513          	li	a0,-1
}
    80001d54:	00008067          	ret

0000000080001d58 <_ZN3Sem10sem_signalEPS_>:

int Sem::sem_signal(sem_t handle) {
    if (!handle) return -1;
    80001d58:	08050863          	beqz	a0,80001de8 <_ZN3Sem10sem_signalEPS_+0x90>
    80001d5c:	00050793          	mv	a5,a0
    handle->count++;
    80001d60:	00052703          	lw	a4,0(a0)
    80001d64:	0017071b          	addiw	a4,a4,1
    80001d68:	0007069b          	sext.w	a3,a4
    80001d6c:	00e52023          	sw	a4,0(a0)
    if (handle->count <= 0) {
    80001d70:	00d05663          	blez	a3,80001d7c <_ZN3Sem10sem_signalEPS_+0x24>
        TCB* thread = handle->blocked.get();
        thread->blocked=false;
        Scheduler::put(thread);
    }
    return 0;
    80001d74:	00000513          	li	a0,0
}
    80001d78:	00008067          	ret
int Sem::sem_signal(sem_t handle) {
    80001d7c:	fe010113          	addi	sp,sp,-32
    80001d80:	00113c23          	sd	ra,24(sp)
    80001d84:	00813823          	sd	s0,16(sp)
    80001d88:	00913423          	sd	s1,8(sp)
    80001d8c:	02010413          	addi	s0,sp,32
        }
    }

    T* get(){ //uzima s pocetka
        if(!head) return nullptr;
    80001d90:	00853503          	ld	a0,8(a0)
    80001d94:	04050663          	beqz	a0,80001de0 <_ZN3Sem10sem_signalEPS_+0x88>
        Elem *elem=head;
        head=head->next;
    80001d98:	00853703          	ld	a4,8(a0)
    80001d9c:	00e7b423          	sd	a4,8(a5)
        if(!head) tail=nullptr;
    80001da0:	02070c63          	beqz	a4,80001dd8 <_ZN3Sem10sem_signalEPS_+0x80>
        T* ret=elem->data;
    80001da4:	00053483          	ld	s1,0(a0)
        delete elem;
    80001da8:	fffff097          	auipc	ra,0xfffff
    80001dac:	4dc080e7          	jalr	1244(ra) # 80001284 <_ZdlPv>
        thread->blocked=false;
    80001db0:	020488a3          	sb	zero,49(s1)
        Scheduler::put(thread);
    80001db4:	00048513          	mv	a0,s1
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	280080e7          	jalr	640(ra) # 80002038 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80001dc0:	00000513          	li	a0,0
}
    80001dc4:	01813083          	ld	ra,24(sp)
    80001dc8:	01013403          	ld	s0,16(sp)
    80001dcc:	00813483          	ld	s1,8(sp)
    80001dd0:	02010113          	addi	sp,sp,32
    80001dd4:	00008067          	ret
        if(!head) tail=nullptr;
    80001dd8:	0007b823          	sd	zero,16(a5)
    80001ddc:	fc9ff06f          	j	80001da4 <_ZN3Sem10sem_signalEPS_+0x4c>
        if(!head) return nullptr;
    80001de0:	00050493          	mv	s1,a0
    80001de4:	fcdff06f          	j	80001db0 <_ZN3Sem10sem_signalEPS_+0x58>
    if (!handle) return -1;
    80001de8:	fff00513          	li	a0,-1
    80001dec:	00008067          	ret

0000000080001df0 <_ZN3Sem11sem_trywaitEPS_>:

int Sem::sem_trywait(sem_t handle) {
    if (!handle) return -1;
    80001df0:	02050e63          	beqz	a0,80001e2c <_ZN3Sem11sem_trywaitEPS_+0x3c>
    if (handle->count>0) return sem_wait(handle);
    80001df4:	00052783          	lw	a5,0(a0)
    80001df8:	00f04663          	bgtz	a5,80001e04 <_ZN3Sem11sem_trywaitEPS_+0x14>
    return 0;
    80001dfc:	00000513          	li	a0,0
}
    80001e00:	00008067          	ret
int Sem::sem_trywait(sem_t handle) {
    80001e04:	ff010113          	addi	sp,sp,-16
    80001e08:	00113423          	sd	ra,8(sp)
    80001e0c:	00813023          	sd	s0,0(sp)
    80001e10:	01010413          	addi	s0,sp,16
    if (handle->count>0) return sem_wait(handle);
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	e7c080e7          	jalr	-388(ra) # 80001c90 <_ZN3Sem8sem_waitEPS_>
}
    80001e1c:	00813083          	ld	ra,8(sp)
    80001e20:	00013403          	ld	s0,0(sp)
    80001e24:	01010113          	addi	sp,sp,16
    80001e28:	00008067          	ret
    if (!handle) return -1;
    80001e2c:	fff00513          	li	a0,-1
    80001e30:	00008067          	ret

0000000080001e34 <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00113423          	sd	ra,8(sp)
    80001e3c:	00813023          	sd	s0,0(sp)
    80001e40:	01010413          	addi	s0,sp,16
    size_t numOfBlocks=ROUNDUP((size+MemoryAllocator::DBlockSize))/MEM_BLOCK_SIZE;
    80001e44:	00009797          	auipc	a5,0x9
    80001e48:	7247b783          	ld	a5,1828(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e4c:	0007b783          	ld	a5,0(a5)
    80001e50:	00a78533          	add	a0,a5,a0
    80001e54:	03f50513          	addi	a0,a0,63
    return MemoryAllocator::mem_alloc(numOfBlocks);
    80001e58:	00655513          	srli	a0,a0,0x6
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	948080e7          	jalr	-1720(ra) # 800017a4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e64:	00813083          	ld	ra,8(sp)
    80001e68:	00013403          	ld	s0,0(sp)
    80001e6c:	01010113          	addi	sp,sp,16
    80001e70:	00008067          	ret

0000000080001e74 <_ZN3Sem8sem_openEPPS_j>:
int Sem::sem_open(sem_t *handle, unsigned int init) {
    80001e74:	fe010113          	addi	sp,sp,-32
    80001e78:	00113c23          	sd	ra,24(sp)
    80001e7c:	00813823          	sd	s0,16(sp)
    80001e80:	00913423          	sd	s1,8(sp)
    80001e84:	01213023          	sd	s2,0(sp)
    80001e88:	02010413          	addi	s0,sp,32
    80001e8c:	00050493          	mv	s1,a0
    80001e90:	00058913          	mv	s2,a1
    *handle = new Sem((int)init);
    80001e94:	01800513          	li	a0,24
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	f9c080e7          	jalr	-100(ra) # 80001e34 <_ZN3SemnwEm>
    void* operator new(size_t size);
    void operator delete(void* ptr);

private:

    explicit Sem(int c=1) : count(c), blocked() {}
    80001ea0:	01252023          	sw	s2,0(a0)
    List() : head(nullptr) , tail(nullptr) {}
    80001ea4:	00053423          	sd	zero,8(a0)
    80001ea8:	00053823          	sd	zero,16(a0)
    80001eac:	00a4b023          	sd	a0,0(s1)
    if (*handle == nullptr) return  -1;
    80001eb0:	02050063          	beqz	a0,80001ed0 <_ZN3Sem8sem_openEPPS_j+0x5c>
    return 0;
    80001eb4:	00000513          	li	a0,0
}
    80001eb8:	01813083          	ld	ra,24(sp)
    80001ebc:	01013403          	ld	s0,16(sp)
    80001ec0:	00813483          	ld	s1,8(sp)
    80001ec4:	00013903          	ld	s2,0(sp)
    80001ec8:	02010113          	addi	sp,sp,32
    80001ecc:	00008067          	ret
    if (*handle == nullptr) return  -1;
    80001ed0:	fff00513          	li	a0,-1
    80001ed4:	fe5ff06f          	j	80001eb8 <_ZN3Sem8sem_openEPPS_j+0x44>

0000000080001ed8 <_ZN3SemdlEPv>:

void Sem::operator delete(void *ptr) {
    80001ed8:	ff010113          	addi	sp,sp,-16
    80001edc:	00113423          	sd	ra,8(sp)
    80001ee0:	00813023          	sd	s0,0(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	a48080e7          	jalr	-1464(ra) # 80001930 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001ef0:	00813083          	ld	ra,8(sp)
    80001ef4:	00013403          	ld	s0,0(sp)
    80001ef8:	01010113          	addi	sp,sp,16
    80001efc:	00008067          	ret

0000000080001f00 <_ZN3Sem9sem_closeEPS_>:
int Sem::sem_close(sem_t handle) {
    80001f00:	fe010113          	addi	sp,sp,-32
    80001f04:	00113c23          	sd	ra,24(sp)
    80001f08:	00813823          	sd	s0,16(sp)
    80001f0c:	00913423          	sd	s1,8(sp)
    80001f10:	01213023          	sd	s2,0(sp)
    80001f14:	02010413          	addi	s0,sp,32
    80001f18:	00050493          	mv	s1,a0
    if (!handle) return -1;
    80001f1c:	02051663          	bnez	a0,80001f48 <_ZN3Sem9sem_closeEPS_+0x48>
    80001f20:	fff00513          	li	a0,-1
    80001f24:	0540006f          	j	80001f78 <_ZN3Sem9sem_closeEPS_+0x78>
        if(!head) tail=nullptr;
    80001f28:	0004b823          	sd	zero,16(s1)
        T* ret=elem->data;
    80001f2c:	00053903          	ld	s2,0(a0)
        delete elem;
    80001f30:	fffff097          	auipc	ra,0xfffff
    80001f34:	354080e7          	jalr	852(ra) # 80001284 <_ZdlPv>
        thread->blocked=false;
    80001f38:	020908a3          	sb	zero,49(s2)
        Scheduler::put(thread);
    80001f3c:	00090513          	mv	a0,s2
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	0f8080e7          	jalr	248(ra) # 80002038 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T* peek(){
        if(!head) return nullptr;
    80001f48:	0084b503          	ld	a0,8(s1)
    80001f4c:	00050e63          	beqz	a0,80001f68 <_ZN3Sem9sem_closeEPS_+0x68>
        return head->data;
    80001f50:	00053783          	ld	a5,0(a0)
    while (handle->blocked.peek()) {
    80001f54:	00078a63          	beqz	a5,80001f68 <_ZN3Sem9sem_closeEPS_+0x68>
        head=head->next;
    80001f58:	00853783          	ld	a5,8(a0)
    80001f5c:	00f4b423          	sd	a5,8(s1)
        if(!head) tail=nullptr;
    80001f60:	fc0796e3          	bnez	a5,80001f2c <_ZN3Sem9sem_closeEPS_+0x2c>
    80001f64:	fc5ff06f          	j	80001f28 <_ZN3Sem9sem_closeEPS_+0x28>
    delete handle;
    80001f68:	00048513          	mv	a0,s1
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	f6c080e7          	jalr	-148(ra) # 80001ed8 <_ZN3SemdlEPv>
    return 0;
    80001f74:	00000513          	li	a0,0
}
    80001f78:	01813083          	ld	ra,24(sp)
    80001f7c:	01013403          	ld	s0,16(sp)
    80001f80:	00813483          	ld	s1,8(sp)
    80001f84:	00013903          	ld	s2,0(sp)
    80001f88:	02010113          	addi	sp,sp,32
    80001f8c:	00008067          	ret

0000000080001f90 <_Z41__static_initialization_and_destruction_0ii>:
    return MemoryAllocator::mem_alloc(numOfBlocks);
}

void Scheduler::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00813423          	sd	s0,8(sp)
    80001f98:	01010413          	addi	s0,sp,16
    80001f9c:	00100793          	li	a5,1
    80001fa0:	00f50863          	beq	a0,a5,80001fb0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001fa4:	00813403          	ld	s0,8(sp)
    80001fa8:	01010113          	addi	sp,sp,16
    80001fac:	00008067          	ret
    80001fb0:	000107b7          	lui	a5,0x10
    80001fb4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001fb8:	fef596e3          	bne	a1,a5,80001fa4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(nullptr) , tail(nullptr) {}
    80001fbc:	00009797          	auipc	a5,0x9
    80001fc0:	63c78793          	addi	a5,a5,1596 # 8000b5f8 <_ZN9Scheduler5readyE>
    80001fc4:	0007b023          	sd	zero,0(a5)
    80001fc8:	0007b423          	sd	zero,8(a5)
    80001fcc:	fd9ff06f          	j	80001fa4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001fd0 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get(){
    80001fd0:	fe010113          	addi	sp,sp,-32
    80001fd4:	00113c23          	sd	ra,24(sp)
    80001fd8:	00813823          	sd	s0,16(sp)
    80001fdc:	00913423          	sd	s1,8(sp)
    80001fe0:	02010413          	addi	s0,sp,32
        if(!head) return nullptr;
    80001fe4:	00009517          	auipc	a0,0x9
    80001fe8:	61453503          	ld	a0,1556(a0) # 8000b5f8 <_ZN9Scheduler5readyE>
    80001fec:	04050263          	beqz	a0,80002030 <_ZN9Scheduler3getEv+0x60>
        head=head->next;
    80001ff0:	00853783          	ld	a5,8(a0)
    80001ff4:	00009717          	auipc	a4,0x9
    80001ff8:	60f73223          	sd	a5,1540(a4) # 8000b5f8 <_ZN9Scheduler5readyE>
        if(!head) tail=nullptr;
    80001ffc:	02078463          	beqz	a5,80002024 <_ZN9Scheduler3getEv+0x54>
        T* ret=elem->data;
    80002000:	00053483          	ld	s1,0(a0)
        delete elem;
    80002004:	fffff097          	auipc	ra,0xfffff
    80002008:	280080e7          	jalr	640(ra) # 80001284 <_ZdlPv>
}
    8000200c:	00048513          	mv	a0,s1
    80002010:	01813083          	ld	ra,24(sp)
    80002014:	01013403          	ld	s0,16(sp)
    80002018:	00813483          	ld	s1,8(sp)
    8000201c:	02010113          	addi	sp,sp,32
    80002020:	00008067          	ret
        if(!head) tail=nullptr;
    80002024:	00009797          	auipc	a5,0x9
    80002028:	5c07be23          	sd	zero,1500(a5) # 8000b600 <_ZN9Scheduler5readyE+0x8>
    8000202c:	fd5ff06f          	j	80002000 <_ZN9Scheduler3getEv+0x30>
        if(!head) return nullptr;
    80002030:	00050493          	mv	s1,a0
    return ready.get();
    80002034:	fd9ff06f          	j	8000200c <_ZN9Scheduler3getEv+0x3c>

0000000080002038 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *thread){
    80002038:	fe010113          	addi	sp,sp,-32
    8000203c:	00113c23          	sd	ra,24(sp)
    80002040:	00813823          	sd	s0,16(sp)
    80002044:	00913423          	sd	s1,8(sp)
    80002048:	02010413          	addi	s0,sp,32
    8000204c:	00050493          	mv	s1,a0
        Elem *elem=new Elem(data, 0);
    80002050:	01000513          	li	a0,16
    80002054:	fffff097          	auipc	ra,0xfffff
    80002058:	1e0080e7          	jalr	480(ra) # 80001234 <_Znwm>
        Elem(T* data, Elem* next) : data(data), next(next) {}
    8000205c:	00953023          	sd	s1,0(a0)
    80002060:	00053423          	sd	zero,8(a0)
        if(tail){
    80002064:	00009797          	auipc	a5,0x9
    80002068:	59c7b783          	ld	a5,1436(a5) # 8000b600 <_ZN9Scheduler5readyE+0x8>
    8000206c:	02078263          	beqz	a5,80002090 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next=elem;
    80002070:	00a7b423          	sd	a0,8(a5)
            tail=elem;
    80002074:	00009797          	auipc	a5,0x9
    80002078:	58a7b623          	sd	a0,1420(a5) # 8000b600 <_ZN9Scheduler5readyE+0x8>
}
    8000207c:	01813083          	ld	ra,24(sp)
    80002080:	01013403          	ld	s0,16(sp)
    80002084:	00813483          	ld	s1,8(sp)
    80002088:	02010113          	addi	sp,sp,32
    8000208c:	00008067          	ret
            head=tail=elem;
    80002090:	00009797          	auipc	a5,0x9
    80002094:	56878793          	addi	a5,a5,1384 # 8000b5f8 <_ZN9Scheduler5readyE>
    80002098:	00a7b423          	sd	a0,8(a5)
    8000209c:	00a7b023          	sd	a0,0(a5)
    800020a0:	fddff06f          	j	8000207c <_ZN9Scheduler3putEP3TCB+0x44>

00000000800020a4 <_ZN9SchedulernwEm>:
void *Scheduler::operator new(size_t size) {
    800020a4:	ff010113          	addi	sp,sp,-16
    800020a8:	00113423          	sd	ra,8(sp)
    800020ac:	00813023          	sd	s0,0(sp)
    800020b0:	01010413          	addi	s0,sp,16
    size_t numOfBlocks=ROUNDUP((size+MemoryAllocator::DBlockSize))/MEM_BLOCK_SIZE;
    800020b4:	00009797          	auipc	a5,0x9
    800020b8:	4b47b783          	ld	a5,1204(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020bc:	0007b783          	ld	a5,0(a5)
    800020c0:	00a78533          	add	a0,a5,a0
    800020c4:	03f50513          	addi	a0,a0,63
    return MemoryAllocator::mem_alloc(numOfBlocks);
    800020c8:	00655513          	srli	a0,a0,0x6
    800020cc:	fffff097          	auipc	ra,0xfffff
    800020d0:	6d8080e7          	jalr	1752(ra) # 800017a4 <_ZN15MemoryAllocator9mem_allocEm>
}
    800020d4:	00813083          	ld	ra,8(sp)
    800020d8:	00013403          	ld	s0,0(sp)
    800020dc:	01010113          	addi	sp,sp,16
    800020e0:	00008067          	ret

00000000800020e4 <_ZN9SchedulerdlEPv>:
void Scheduler::operator delete(void *ptr) {
    800020e4:	ff010113          	addi	sp,sp,-16
    800020e8:	00113423          	sd	ra,8(sp)
    800020ec:	00813023          	sd	s0,0(sp)
    800020f0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	83c080e7          	jalr	-1988(ra) # 80001930 <_ZN15MemoryAllocator8mem_freeEPv>
    800020fc:	00813083          	ld	ra,8(sp)
    80002100:	00013403          	ld	s0,0(sp)
    80002104:	01010113          	addi	sp,sp,16
    80002108:	00008067          	ret

000000008000210c <_GLOBAL__sub_I__ZN9Scheduler5readyE>:
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00113423          	sd	ra,8(sp)
    80002114:	00813023          	sd	s0,0(sp)
    80002118:	01010413          	addi	s0,sp,16
    8000211c:	000105b7          	lui	a1,0x10
    80002120:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002124:	00100513          	li	a0,1
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	e68080e7          	jalr	-408(ra) # 80001f90 <_Z41__static_initialization_and_destruction_0ii>
    80002130:	00813083          	ld	ra,8(sp)
    80002134:	00013403          	ld	s0,0(sp)
    80002138:	01010113          	addi	sp,sp,16
    8000213c:	00008067          	ret

0000000080002140 <_Z7syscallmmmmm>:
#include "../h/syscallC.hpp"
#include "../h/memoryAllocator.hpp"
#include "../lib/console.h"

void syscall(uint64 op_code, uint64 arg1 = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0) {
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00813423          	sd	s0,8(sp)
    80002148:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    8000214c:	00000073          	ecall
}
    80002150:	00813403          	ld	s0,8(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size==0) return nullptr;
    8000215c:	04050c63          	beqz	a0,800021b4 <_Z9mem_allocm+0x58>
void* mem_alloc (size_t size) {
    80002160:	ff010113          	addi	sp,sp,-16
    80002164:	00113423          	sd	ra,8(sp)
    80002168:	00813023          	sd	s0,0(sp)
    8000216c:	01010413          	addi	s0,sp,16
    void volatile *retVal;
    uint64 numOfBlocks=ROUNDUP(size+MemoryAllocator::DBlockSize-1)/MEM_BLOCK_SIZE;
    80002170:	00009797          	auipc	a5,0x9
    80002174:	3f87b783          	ld	a5,1016(a5) # 8000b568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002178:	0007b583          	ld	a1,0(a5)
    8000217c:	00a58533          	add	a0,a1,a0
    80002180:	03e50593          	addi	a1,a0,62
    syscall(MEM_ALLOC, numOfBlocks);
    80002184:	00000713          	li	a4,0
    80002188:	00000693          	li	a3,0
    8000218c:	00000613          	li	a2,0
    80002190:	0065d593          	srli	a1,a1,0x6
    80002194:	00100513          	li	a0,1
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	fa8080e7          	jalr	-88(ra) # 80002140 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800021a0:	00050513          	mv	a0,a0
    return (void*)retVal;
}
    800021a4:	00813083          	ld	ra,8(sp)
    800021a8:	00013403          	ld	s0,0(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret
    if (size==0) return nullptr;
    800021b4:	00000513          	li	a0,0
}
    800021b8:	00008067          	ret

00000000800021bc <_Z8mem_freePv>:

int mem_free(void* ptr) {
    800021bc:	fe010113          	addi	sp,sp,-32
    800021c0:	00113c23          	sd	ra,24(sp)
    800021c4:	00813823          	sd	s0,16(sp)
    800021c8:	02010413          	addi	s0,sp,32
    800021cc:	00050593          	mv	a1,a0
    syscall(MEM_FREE, (uint64)ptr);
    800021d0:	00000713          	li	a4,0
    800021d4:	00000693          	li	a3,0
    800021d8:	00000613          	li	a2,0
    800021dc:	00200513          	li	a0,2
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	f60080e7          	jalr	-160(ra) # 80002140 <_Z7syscallmmmmm>
    int volatile retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800021e8:	00050793          	mv	a5,a0
    800021ec:	fef42623          	sw	a5,-20(s0)
    return retVal;
    800021f0:	fec42503          	lw	a0,-20(s0)
}
    800021f4:	0005051b          	sext.w	a0,a0
    800021f8:	01813083          	ld	ra,24(sp)
    800021fc:	01013403          	ld	s0,16(sp)
    80002200:	02010113          	addi	sp,sp,32
    80002204:	00008067          	ret

0000000080002208 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*routine)(void *), void *arg) {
    80002208:	fd010113          	addi	sp,sp,-48
    8000220c:	02113423          	sd	ra,40(sp)
    80002210:	02813023          	sd	s0,32(sp)
    80002214:	00913c23          	sd	s1,24(sp)
    80002218:	01213823          	sd	s2,16(sp)
    8000221c:	01313423          	sd	s3,8(sp)
    80002220:	03010413          	addi	s0,sp,48
    80002224:	00050913          	mv	s2,a0
    80002228:	00058493          	mv	s1,a1
    8000222c:	00060993          	mv	s3,a2
    void* stack=nullptr;
    if (routine) {
    80002230:	04058a63          	beqz	a1,80002284 <_Z13thread_createPP3TCBPFvPvES2_+0x7c>
        stack=mem_alloc(DEFAULT_STACK_SIZE);
    80002234:	00001537          	lui	a0,0x1
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	f24080e7          	jalr	-220(ra) # 8000215c <_Z9mem_allocm>
    80002240:	00050713          	mv	a4,a0
        if (!stack) return -1;
    80002244:	04050463          	beqz	a0,8000228c <_Z13thread_createPP3TCBPFvPvES2_+0x84>
    }
    syscall(THREAD_CREATE, (uint64)handle, (uint64)routine, (uint64)arg, (uint64)stack);
    80002248:	00098693          	mv	a3,s3
    8000224c:	00048613          	mv	a2,s1
    80002250:	00090593          	mv	a1,s2
    80002254:	01100513          	li	a0,17
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	ee8080e7          	jalr	-280(ra) # 80002140 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002260:	00050513          	mv	a0,a0
    80002264:	0005051b          	sext.w	a0,a0
    return retVal;
}
    80002268:	02813083          	ld	ra,40(sp)
    8000226c:	02013403          	ld	s0,32(sp)
    80002270:	01813483          	ld	s1,24(sp)
    80002274:	01013903          	ld	s2,16(sp)
    80002278:	00813983          	ld	s3,8(sp)
    8000227c:	03010113          	addi	sp,sp,48
    80002280:	00008067          	ret
    void* stack=nullptr;
    80002284:	00000713          	li	a4,0
    80002288:	fc1ff06f          	j	80002248 <_Z13thread_createPP3TCBPFvPvES2_+0x40>
        if (!stack) return -1;
    8000228c:	fff00513          	li	a0,-1
    80002290:	fd9ff06f          	j	80002268 <_Z13thread_createPP3TCBPFvPvES2_+0x60>

0000000080002294 <_Z11thread_exitv>:

int thread_exit() {
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00113423          	sd	ra,8(sp)
    8000229c:	00813023          	sd	s0,0(sp)
    800022a0:	01010413          	addi	s0,sp,16
    syscall(THREAD_EXIT);
    800022a4:	00000713          	li	a4,0
    800022a8:	00000693          	li	a3,0
    800022ac:	00000613          	li	a2,0
    800022b0:	00000593          	li	a1,0
    800022b4:	01200513          	li	a0,18
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	e88080e7          	jalr	-376(ra) # 80002140 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800022c0:	00050513          	mv	a0,a0
    return retVal;
}
    800022c4:	0005051b          	sext.w	a0,a0
    800022c8:	00813083          	ld	ra,8(sp)
    800022cc:	00013403          	ld	s0,0(sp)
    800022d0:	01010113          	addi	sp,sp,16
    800022d4:	00008067          	ret

00000000800022d8 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00113423          	sd	ra,8(sp)
    800022e0:	00813023          	sd	s0,0(sp)
    800022e4:	01010413          	addi	s0,sp,16
    syscall(THREAD_DISPATCH);
    800022e8:	00000713          	li	a4,0
    800022ec:	00000693          	li	a3,0
    800022f0:	00000613          	li	a2,0
    800022f4:	00000593          	li	a1,0
    800022f8:	01300513          	li	a0,19
    800022fc:	00000097          	auipc	ra,0x0
    80002300:	e44080e7          	jalr	-444(ra) # 80002140 <_Z7syscallmmmmm>
}
    80002304:	00813083          	ld	ra,8(sp)
    80002308:	00013403          	ld	s0,0(sp)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret

0000000080002314 <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init) {
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00113423          	sd	ra,8(sp)
    8000231c:	00813023          	sd	s0,0(sp)
    80002320:	01010413          	addi	s0,sp,16
    syscall(SEM_OPEN, (uint64)handle, init);
    80002324:	00000713          	li	a4,0
    80002328:	00000693          	li	a3,0
    8000232c:	02059613          	slli	a2,a1,0x20
    80002330:	02065613          	srli	a2,a2,0x20
    80002334:	00050593          	mv	a1,a0
    80002338:	02100513          	li	a0,33
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	e04080e7          	jalr	-508(ra) # 80002140 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002344:	00050513          	mv	a0,a0
    return retVal;
}
    80002348:	0005051b          	sext.w	a0,a0
    8000234c:	00813083          	ld	ra,8(sp)
    80002350:	00013403          	ld	s0,0(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret

000000008000235c <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00113423          	sd	ra,8(sp)
    80002364:	00813023          	sd	s0,0(sp)
    80002368:	01010413          	addi	s0,sp,16
    8000236c:	00050593          	mv	a1,a0
    syscall(SEM_CLOSE, (uint64)handle);
    80002370:	00000713          	li	a4,0
    80002374:	00000693          	li	a3,0
    80002378:	00000613          	li	a2,0
    8000237c:	02200513          	li	a0,34
    80002380:	00000097          	auipc	ra,0x0
    80002384:	dc0080e7          	jalr	-576(ra) # 80002140 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002388:	00050513          	mv	a0,a0
    return retVal;
}
    8000238c:	0005051b          	sext.w	a0,a0
    80002390:	00813083          	ld	ra,8(sp)
    80002394:	00013403          	ld	s0,0(sp)
    80002398:	01010113          	addi	sp,sp,16
    8000239c:	00008067          	ret

00000000800023a0 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00113423          	sd	ra,8(sp)
    800023a8:	00813023          	sd	s0,0(sp)
    800023ac:	01010413          	addi	s0,sp,16
    800023b0:	00050593          	mv	a1,a0
    syscall(SEM_WAIT, (uint64)id);
    800023b4:	00000713          	li	a4,0
    800023b8:	00000693          	li	a3,0
    800023bc:	00000613          	li	a2,0
    800023c0:	02300513          	li	a0,35
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	d7c080e7          	jalr	-644(ra) # 80002140 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800023cc:	00050513          	mv	a0,a0
    return retVal;
}
    800023d0:	0005051b          	sext.w	a0,a0
    800023d4:	00813083          	ld	ra,8(sp)
    800023d8:	00013403          	ld	s0,0(sp)
    800023dc:	01010113          	addi	sp,sp,16
    800023e0:	00008067          	ret

00000000800023e4 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) {
    800023e4:	ff010113          	addi	sp,sp,-16
    800023e8:	00113423          	sd	ra,8(sp)
    800023ec:	00813023          	sd	s0,0(sp)
    800023f0:	01010413          	addi	s0,sp,16
    800023f4:	00050593          	mv	a1,a0
    syscall(SEM_TRYWAIT, (uint64)id);
    800023f8:	00000713          	li	a4,0
    800023fc:	00000693          	li	a3,0
    80002400:	00000613          	li	a2,0
    80002404:	02600513          	li	a0,38
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	d38080e7          	jalr	-712(ra) # 80002140 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002410:	00050513          	mv	a0,a0
    return retVal;
}
    80002414:	0005051b          	sext.w	a0,a0
    80002418:	00813083          	ld	ra,8(sp)
    8000241c:	00013403          	ld	s0,0(sp)
    80002420:	01010113          	addi	sp,sp,16
    80002424:	00008067          	ret

0000000080002428 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    80002428:	ff010113          	addi	sp,sp,-16
    8000242c:	00113423          	sd	ra,8(sp)
    80002430:	00813023          	sd	s0,0(sp)
    80002434:	01010413          	addi	s0,sp,16
    80002438:	00050593          	mv	a1,a0
    syscall(SEM_SIGNAL, (uint64)id);
    8000243c:	00000713          	li	a4,0
    80002440:	00000693          	li	a3,0
    80002444:	00000613          	li	a2,0
    80002448:	02400513          	li	a0,36
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	cf4080e7          	jalr	-780(ra) # 80002140 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002454:	00050513          	mv	a0,a0
    return retVal;
}
    80002458:	0005051b          	sext.w	a0,a0
    8000245c:	00813083          	ld	ra,8(sp)
    80002460:	00013403          	ld	s0,0(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <_Z4getcv>:

char getc() {
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00113423          	sd	ra,8(sp)
    80002474:	00813023          	sd	s0,0(sp)
    80002478:	01010413          	addi	s0,sp,16
    syscall(GETC);
    8000247c:	00000713          	li	a4,0
    80002480:	00000693          	li	a3,0
    80002484:	00000613          	li	a2,0
    80002488:	00000593          	li	a1,0
    8000248c:	04100513          	li	a0,65
    80002490:	00000097          	auipc	ra,0x0
    80002494:	cb0080e7          	jalr	-848(ra) # 80002140 <_Z7syscallmmmmm>
    char retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80002498:	00050513          	mv	a0,a0
    return retVal;
}
    8000249c:	0ff57513          	andi	a0,a0,255
    800024a0:	00813083          	ld	ra,8(sp)
    800024a4:	00013403          	ld	s0,0(sp)
    800024a8:	01010113          	addi	sp,sp,16
    800024ac:	00008067          	ret

00000000800024b0 <_Z4putcc>:

void putc(char c) {
    800024b0:	ff010113          	addi	sp,sp,-16
    800024b4:	00113423          	sd	ra,8(sp)
    800024b8:	00813023          	sd	s0,0(sp)
    800024bc:	01010413          	addi	s0,sp,16
    800024c0:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    800024c4:	00000713          	li	a4,0
    800024c8:	00000693          	li	a3,0
    800024cc:	00000613          	li	a2,0
    800024d0:	04200513          	li	a0,66
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	c6c080e7          	jalr	-916(ra) # 80002140 <_Z7syscallmmmmm>
    800024dc:	00813083          	ld	ra,8(sp)
    800024e0:	00013403          	ld	s0,0(sp)
    800024e4:	01010113          	addi	sp,sp,16
    800024e8:	00008067          	ret

00000000800024ec <_Z8printIntm>:
#include "../h/syscallC.hpp"

void printInt(uint64 num) {
    800024ec:	fd010113          	addi	sp,sp,-48
    800024f0:	02113423          	sd	ra,40(sp)
    800024f4:	02813023          	sd	s0,32(sp)
    800024f8:	00913c23          	sd	s1,24(sp)
    800024fc:	01213823          	sd	s2,16(sp)
    80002500:	01313423          	sd	s3,8(sp)
    80002504:	03010413          	addi	s0,sp,48
    80002508:	00050913          	mv	s2,a0
    putc('\n');
    8000250c:	00a00513          	li	a0,10
    80002510:	00000097          	auipc	ra,0x0
    80002514:	fa0080e7          	jalr	-96(ra) # 800024b0 <_Z4putcc>
    if (!num) putc('0');
    80002518:	00090863          	beqz	s2,80002528 <_Z8printIntm+0x3c>
    uint64 num2 = 0, zero_count = 0;
    8000251c:	00000993          	li	s3,0
    80002520:	00000493          	li	s1,0
    80002524:	01c0006f          	j	80002540 <_Z8printIntm+0x54>
    if (!num) putc('0');
    80002528:	03000513          	li	a0,48
    8000252c:	00000097          	auipc	ra,0x0
    80002530:	f84080e7          	jalr	-124(ra) # 800024b0 <_Z4putcc>
    80002534:	fe9ff06f          	j	8000251c <_Z8printIntm+0x30>
    while (num) {
        num2 *= 10;
        num2 += num%10;
        if(!num2) ++zero_count;
        num/=10;
    80002538:	00a00793          	li	a5,10
    8000253c:	02f95933          	divu	s2,s2,a5
    while (num) {
    80002540:	02090463          	beqz	s2,80002568 <_Z8printIntm+0x7c>
        num2 *= 10;
    80002544:	00249793          	slli	a5,s1,0x2
    80002548:	009784b3          	add	s1,a5,s1
    8000254c:	00149793          	slli	a5,s1,0x1
        num2 += num%10;
    80002550:	00a00493          	li	s1,10
    80002554:	029974b3          	remu	s1,s2,s1
    80002558:	00f484b3          	add	s1,s1,a5
        if(!num2) ++zero_count;
    8000255c:	fc049ee3          	bnez	s1,80002538 <_Z8printIntm+0x4c>
    80002560:	00198993          	addi	s3,s3,1
    80002564:	fd5ff06f          	j	80002538 <_Z8printIntm+0x4c>
    }
    while (num2) {
    80002568:	02048063          	beqz	s1,80002588 <_Z8printIntm+0x9c>
        putc(num2%10+'0');
    8000256c:	00a00913          	li	s2,10
    80002570:	0324f533          	remu	a0,s1,s2
    80002574:	03050513          	addi	a0,a0,48 # 1030 <_entry-0x7fffefd0>
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	f38080e7          	jalr	-200(ra) # 800024b0 <_Z4putcc>
        num2/=10;
    80002580:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80002584:	fe5ff06f          	j	80002568 <_Z8printIntm+0x7c>
    }
    while (zero_count--) putc('0');
    80002588:	fff98493          	addi	s1,s3,-1
    8000258c:	00098c63          	beqz	s3,800025a4 <_Z8printIntm+0xb8>
    80002590:	03000513          	li	a0,48
    80002594:	00000097          	auipc	ra,0x0
    80002598:	f1c080e7          	jalr	-228(ra) # 800024b0 <_Z4putcc>
    8000259c:	00048993          	mv	s3,s1
    800025a0:	fe9ff06f          	j	80002588 <_Z8printIntm+0x9c>
}
    800025a4:	02813083          	ld	ra,40(sp)
    800025a8:	02013403          	ld	s0,32(sp)
    800025ac:	01813483          	ld	s1,24(sp)
    800025b0:	01013903          	ld	s2,16(sp)
    800025b4:	00813983          	ld	s3,8(sp)
    800025b8:	03010113          	addi	sp,sp,48
    800025bc:	00008067          	ret

00000000800025c0 <_Z8printStrPKc>:

void printStr(char const* string) {
    800025c0:	fe010113          	addi	sp,sp,-32
    800025c4:	00113c23          	sd	ra,24(sp)
    800025c8:	00813823          	sd	s0,16(sp)
    800025cc:	00913423          	sd	s1,8(sp)
    800025d0:	02010413          	addi	s0,sp,32
    800025d4:	00050493          	mv	s1,a0
    while (*string != '\0') {
    800025d8:	0004c503          	lbu	a0,0(s1)
    800025dc:	00050a63          	beqz	a0,800025f0 <_Z8printStrPKc+0x30>
        putc(*string);
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	ed0080e7          	jalr	-304(ra) # 800024b0 <_Z4putcc>
        string++;
    800025e8:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    800025ec:	fedff06f          	j	800025d8 <_Z8printStrPKc+0x18>
    }
    800025f0:	01813083          	ld	ra,24(sp)
    800025f4:	01013403          	ld	s0,16(sp)
    800025f8:	00813483          	ld	s1,8(sp)
    800025fc:	02010113          	addi	sp,sp,32
    80002600:	00008067          	ret

0000000080002604 <_ZN6Thread7wrapperEPv>:

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::wrapper(void *arg) {
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00113423          	sd	ra,8(sp)
    8000260c:	00813023          	sd	s0,0(sp)
    80002610:	01010413          	addi	s0,sp,16
    Thread* thread=(Thread*)arg;
    thread->run();
    80002614:	00053783          	ld	a5,0(a0)
    80002618:	0107b783          	ld	a5,16(a5)
    8000261c:	000780e7          	jalr	a5
}
    80002620:	00813083          	ld	ra,8(sp)
    80002624:	00013403          	ld	s0,0(sp)
    80002628:	01010113          	addi	sp,sp,16
    8000262c:	00008067          	ret

0000000080002630 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002630:	fe010113          	addi	sp,sp,-32
    80002634:	00113c23          	sd	ra,24(sp)
    80002638:	00813823          	sd	s0,16(sp)
    8000263c:	00913423          	sd	s1,8(sp)
    80002640:	02010413          	addi	s0,sp,32
    80002644:	00009797          	auipc	a5,0x9
    80002648:	d1478793          	addi	a5,a5,-748 # 8000b358 <_ZTV6Thread+0x10>
    8000264c:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80002650:	00853483          	ld	s1,8(a0)
    80002654:	00048e63          	beqz	s1,80002670 <_ZN6ThreadD1Ev+0x40>
    ~TCB() { MemoryAllocator::mem_free(this->stack); }
    80002658:	0104b503          	ld	a0,16(s1)
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	2d4080e7          	jalr	724(ra) # 80001930 <_ZN15MemoryAllocator8mem_freeEPv>
    80002664:	00048513          	mv	a0,s1
    80002668:	fffff097          	auipc	ra,0xfffff
    8000266c:	f38080e7          	jalr	-200(ra) # 800015a0 <_ZN3TCBdlEPv>
}
    80002670:	01813083          	ld	ra,24(sp)
    80002674:	01013403          	ld	s0,16(sp)
    80002678:	00813483          	ld	s1,8(sp)
    8000267c:	02010113          	addi	sp,sp,32
    80002680:	00008067          	ret

0000000080002684 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002684:	fe010113          	addi	sp,sp,-32
    80002688:	00113c23          	sd	ra,24(sp)
    8000268c:	00813823          	sd	s0,16(sp)
    80002690:	00913423          	sd	s1,8(sp)
    80002694:	02010413          	addi	s0,sp,32
    80002698:	00050493          	mv	s1,a0
}
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	f94080e7          	jalr	-108(ra) # 80002630 <_ZN6ThreadD1Ev>
    800026a4:	00048513          	mv	a0,s1
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	bdc080e7          	jalr	-1060(ra) # 80001284 <_ZdlPv>
    800026b0:	01813083          	ld	ra,24(sp)
    800026b4:	01013403          	ld	s0,16(sp)
    800026b8:	00813483          	ld	s1,8(sp)
    800026bc:	02010113          	addi	sp,sp,32
    800026c0:	00008067          	ret

00000000800026c4 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00113423          	sd	ra,8(sp)
    800026cc:	00813023          	sd	s0,0(sp)
    800026d0:	01010413          	addi	s0,sp,16
    800026d4:	00009797          	auipc	a5,0x9
    800026d8:	cac78793          	addi	a5,a5,-852 # 8000b380 <_ZTV9Semaphore+0x10>
    800026dc:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800026e0:	00853503          	ld	a0,8(a0)
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	c78080e7          	jalr	-904(ra) # 8000235c <_Z9sem_closeP3Sem>
}
    800026ec:	00813083          	ld	ra,8(sp)
    800026f0:	00013403          	ld	s0,0(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret

00000000800026fc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800026fc:	fe010113          	addi	sp,sp,-32
    80002700:	00113c23          	sd	ra,24(sp)
    80002704:	00813823          	sd	s0,16(sp)
    80002708:	00913423          	sd	s1,8(sp)
    8000270c:	02010413          	addi	s0,sp,32
    80002710:	00050493          	mv	s1,a0
}
    80002714:	00000097          	auipc	ra,0x0
    80002718:	fb0080e7          	jalr	-80(ra) # 800026c4 <_ZN9SemaphoreD1Ev>
    8000271c:	00048513          	mv	a0,s1
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	b64080e7          	jalr	-1180(ra) # 80001284 <_ZdlPv>
    80002728:	01813083          	ld	ra,24(sp)
    8000272c:	01013403          	ld	s0,16(sp)
    80002730:	00813483          	ld	s1,8(sp)
    80002734:	02010113          	addi	sp,sp,32
    80002738:	00008067          	ret

000000008000273c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void *arg) {
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00813423          	sd	s0,8(sp)
    80002744:	01010413          	addi	s0,sp,16
    80002748:	00009797          	auipc	a5,0x9
    8000274c:	c1078793          	addi	a5,a5,-1008 # 8000b358 <_ZTV6Thread+0x10>
    80002750:	00f53023          	sd	a5,0(a0)
    this->myHandle=nullptr;
    80002754:	00053423          	sd	zero,8(a0)
    this->body=body;
    80002758:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    8000275c:	00c53c23          	sd	a2,24(a0)
}
    80002760:	00813403          	ld	s0,8(sp)
    80002764:	01010113          	addi	sp,sp,16
    80002768:	00008067          	ret

000000008000276c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00813423          	sd	s0,8(sp)
    80002774:	01010413          	addi	s0,sp,16
    80002778:	00009797          	auipc	a5,0x9
    8000277c:	be078793          	addi	a5,a5,-1056 # 8000b358 <_ZTV6Thread+0x10>
    80002780:	00f53023          	sd	a5,0(a0)
    this->myHandle=nullptr;
    80002784:	00053423          	sd	zero,8(a0)
    this->body=wrapper;
    80002788:	00000797          	auipc	a5,0x0
    8000278c:	e7c78793          	addi	a5,a5,-388 # 80002604 <_ZN6Thread7wrapperEPv>
    80002790:	00f53823          	sd	a5,16(a0)
    this->arg=(void*)this;
    80002794:	00a53c23          	sd	a0,24(a0)
}
    80002798:	00813403          	ld	s0,8(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	00008067          	ret

00000000800027a4 <_ZN6Thread5startEv>:
int Thread::start() {
    800027a4:	ff010113          	addi	sp,sp,-16
    800027a8:	00113423          	sd	ra,8(sp)
    800027ac:	00813023          	sd	s0,0(sp)
    800027b0:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, this->body, this->arg);
    800027b4:	01853603          	ld	a2,24(a0)
    800027b8:	01053583          	ld	a1,16(a0)
    800027bc:	00850513          	addi	a0,a0,8
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	a48080e7          	jalr	-1464(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800027c8:	00813083          	ld	ra,8(sp)
    800027cc:	00013403          	ld	s0,0(sp)
    800027d0:	01010113          	addi	sp,sp,16
    800027d4:	00008067          	ret

00000000800027d8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800027d8:	ff010113          	addi	sp,sp,-16
    800027dc:	00113423          	sd	ra,8(sp)
    800027e0:	00813023          	sd	s0,0(sp)
    800027e4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	af0080e7          	jalr	-1296(ra) # 800022d8 <_Z15thread_dispatchv>
}
    800027f0:	00813083          	ld	ra,8(sp)
    800027f4:	00013403          	ld	s0,0(sp)
    800027f8:	01010113          	addi	sp,sp,16
    800027fc:	00008067          	ret

0000000080002800 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002800:	ff010113          	addi	sp,sp,-16
    80002804:	00113423          	sd	ra,8(sp)
    80002808:	00813023          	sd	s0,0(sp)
    8000280c:	01010413          	addi	s0,sp,16
    80002810:	00009797          	auipc	a5,0x9
    80002814:	b7078793          	addi	a5,a5,-1168 # 8000b380 <_ZTV9Semaphore+0x10>
    80002818:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    8000281c:	00850513          	addi	a0,a0,8
    80002820:	00000097          	auipc	ra,0x0
    80002824:	af4080e7          	jalr	-1292(ra) # 80002314 <_Z8sem_openPP3Semj>
}
    80002828:	00813083          	ld	ra,8(sp)
    8000282c:	00013403          	ld	s0,0(sp)
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret

0000000080002838 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002838:	ff010113          	addi	sp,sp,-16
    8000283c:	00113423          	sd	ra,8(sp)
    80002840:	00813023          	sd	s0,0(sp)
    80002844:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002848:	00853503          	ld	a0,8(a0)
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	b54080e7          	jalr	-1196(ra) # 800023a0 <_Z8sem_waitP3Sem>
}
    80002854:	00813083          	ld	ra,8(sp)
    80002858:	00013403          	ld	s0,0(sp)
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00008067          	ret

0000000080002864 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	00813023          	sd	s0,0(sp)
    80002870:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002874:	00853503          	ld	a0,8(a0)
    80002878:	00000097          	auipc	ra,0x0
    8000287c:	bb0080e7          	jalr	-1104(ra) # 80002428 <_Z10sem_signalP3Sem>
}
    80002880:	00813083          	ld	ra,8(sp)
    80002884:	00013403          	ld	s0,0(sp)
    80002888:	01010113          	addi	sp,sp,16
    8000288c:	00008067          	ret

0000000080002890 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80002890:	ff010113          	addi	sp,sp,-16
    80002894:	00113423          	sd	ra,8(sp)
    80002898:	00813023          	sd	s0,0(sp)
    8000289c:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800028a0:	00853503          	ld	a0,8(a0)
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	b40080e7          	jalr	-1216(ra) # 800023e4 <_Z11sem_trywaitP3Sem>
}
    800028ac:	00813083          	ld	ra,8(sp)
    800028b0:	00013403          	ld	s0,0(sp)
    800028b4:	01010113          	addi	sp,sp,16
    800028b8:	00008067          	ret

00000000800028bc <_ZN7Console4getcEv>:

char Console::getc() {
    800028bc:	ff010113          	addi	sp,sp,-16
    800028c0:	00113423          	sd	ra,8(sp)
    800028c4:	00813023          	sd	s0,0(sp)
    800028c8:	01010413          	addi	s0,sp,16
    return ::getc();
    800028cc:	00000097          	auipc	ra,0x0
    800028d0:	ba0080e7          	jalr	-1120(ra) # 8000246c <_Z4getcv>
}
    800028d4:	00813083          	ld	ra,8(sp)
    800028d8:	00013403          	ld	s0,0(sp)
    800028dc:	01010113          	addi	sp,sp,16
    800028e0:	00008067          	ret

00000000800028e4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800028e4:	ff010113          	addi	sp,sp,-16
    800028e8:	00113423          	sd	ra,8(sp)
    800028ec:	00813023          	sd	s0,0(sp)
    800028f0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	bbc080e7          	jalr	-1092(ra) # 800024b0 <_Z4putcc>
    800028fc:	00813083          	ld	ra,8(sp)
    80002900:	00013403          	ld	s0,0(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00813423          	sd	s0,8(sp)
    80002914:	01010413          	addi	s0,sp,16
    80002918:	00813403          	ld	s0,8(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002924:	fe010113          	addi	sp,sp,-32
    80002928:	00113c23          	sd	ra,24(sp)
    8000292c:	00813823          	sd	s0,16(sp)
    80002930:	00913423          	sd	s1,8(sp)
    80002934:	01213023          	sd	s2,0(sp)
    80002938:	02010413          	addi	s0,sp,32
    8000293c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002940:	00000913          	li	s2,0
    80002944:	00c0006f          	j	80002950 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x35) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	990080e7          	jalr	-1648(ra) # 800022d8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x35) {
    80002950:	00000097          	auipc	ra,0x0
    80002954:	b1c080e7          	jalr	-1252(ra) # 8000246c <_Z4getcv>
    80002958:	0005059b          	sext.w	a1,a0
    8000295c:	03500793          	li	a5,53
    80002960:	02f58a63          	beq	a1,a5,80002994 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002964:	0084b503          	ld	a0,8(s1)
    80002968:	00003097          	auipc	ra,0x3
    8000296c:	3b8080e7          	jalr	952(ra) # 80005d20 <_ZN6Buffer3putEi>
        i++;
    80002970:	0019071b          	addiw	a4,s2,1
    80002974:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002978:	0004a683          	lw	a3,0(s1)
    8000297c:	0026979b          	slliw	a5,a3,0x2
    80002980:	00d787bb          	addw	a5,a5,a3
    80002984:	0017979b          	slliw	a5,a5,0x1
    80002988:	02f767bb          	remw	a5,a4,a5
    8000298c:	fc0792e3          	bnez	a5,80002950 <_ZL16producerKeyboardPv+0x2c>
    80002990:	fb9ff06f          	j	80002948 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002994:	00100793          	li	a5,1
    80002998:	00009717          	auipc	a4,0x9
    8000299c:	c6f72823          	sw	a5,-912(a4) # 8000b608 <_ZL9threadEnd>
    data->buffer->put('!');
    800029a0:	02100593          	li	a1,33
    800029a4:	0084b503          	ld	a0,8(s1)
    800029a8:	00003097          	auipc	ra,0x3
    800029ac:	378080e7          	jalr	888(ra) # 80005d20 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800029b0:	0104b503          	ld	a0,16(s1)
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	a74080e7          	jalr	-1420(ra) # 80002428 <_Z10sem_signalP3Sem>
}
    800029bc:	01813083          	ld	ra,24(sp)
    800029c0:	01013403          	ld	s0,16(sp)
    800029c4:	00813483          	ld	s1,8(sp)
    800029c8:	00013903          	ld	s2,0(sp)
    800029cc:	02010113          	addi	sp,sp,32
    800029d0:	00008067          	ret

00000000800029d4 <_ZL8producerPv>:

static void producer(void *arg) {
    800029d4:	fe010113          	addi	sp,sp,-32
    800029d8:	00113c23          	sd	ra,24(sp)
    800029dc:	00813823          	sd	s0,16(sp)
    800029e0:	00913423          	sd	s1,8(sp)
    800029e4:	01213023          	sd	s2,0(sp)
    800029e8:	02010413          	addi	s0,sp,32
    800029ec:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800029f0:	00000913          	li	s2,0
    800029f4:	00c0006f          	j	80002a00 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	8e0080e7          	jalr	-1824(ra) # 800022d8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002a00:	00009797          	auipc	a5,0x9
    80002a04:	c087a783          	lw	a5,-1016(a5) # 8000b608 <_ZL9threadEnd>
    80002a08:	02079e63          	bnez	a5,80002a44 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002a0c:	0004a583          	lw	a1,0(s1)
    80002a10:	0305859b          	addiw	a1,a1,48
    80002a14:	0084b503          	ld	a0,8(s1)
    80002a18:	00003097          	auipc	ra,0x3
    80002a1c:	308080e7          	jalr	776(ra) # 80005d20 <_ZN6Buffer3putEi>
        i++;
    80002a20:	0019071b          	addiw	a4,s2,1
    80002a24:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002a28:	0004a683          	lw	a3,0(s1)
    80002a2c:	0026979b          	slliw	a5,a3,0x2
    80002a30:	00d787bb          	addw	a5,a5,a3
    80002a34:	0017979b          	slliw	a5,a5,0x1
    80002a38:	02f767bb          	remw	a5,a4,a5
    80002a3c:	fc0792e3          	bnez	a5,80002a00 <_ZL8producerPv+0x2c>
    80002a40:	fb9ff06f          	j	800029f8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002a44:	0104b503          	ld	a0,16(s1)
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	9e0080e7          	jalr	-1568(ra) # 80002428 <_Z10sem_signalP3Sem>
}
    80002a50:	01813083          	ld	ra,24(sp)
    80002a54:	01013403          	ld	s0,16(sp)
    80002a58:	00813483          	ld	s1,8(sp)
    80002a5c:	00013903          	ld	s2,0(sp)
    80002a60:	02010113          	addi	sp,sp,32
    80002a64:	00008067          	ret

0000000080002a68 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002a68:	fd010113          	addi	sp,sp,-48
    80002a6c:	02113423          	sd	ra,40(sp)
    80002a70:	02813023          	sd	s0,32(sp)
    80002a74:	00913c23          	sd	s1,24(sp)
    80002a78:	01213823          	sd	s2,16(sp)
    80002a7c:	01313423          	sd	s3,8(sp)
    80002a80:	03010413          	addi	s0,sp,48
    80002a84:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002a88:	00000993          	li	s3,0
    80002a8c:	01c0006f          	j	80002aa8 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	848080e7          	jalr	-1976(ra) # 800022d8 <_Z15thread_dispatchv>
    80002a98:	0500006f          	j	80002ae8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002a9c:	00a00513          	li	a0,10
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	a10080e7          	jalr	-1520(ra) # 800024b0 <_Z4putcc>
    while (!threadEnd) {
    80002aa8:	00009797          	auipc	a5,0x9
    80002aac:	b607a783          	lw	a5,-1184(a5) # 8000b608 <_ZL9threadEnd>
    80002ab0:	06079063          	bnez	a5,80002b10 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002ab4:	00893503          	ld	a0,8(s2)
    80002ab8:	00003097          	auipc	ra,0x3
    80002abc:	2f8080e7          	jalr	760(ra) # 80005db0 <_ZN6Buffer3getEv>
        i++;
    80002ac0:	0019849b          	addiw	s1,s3,1
    80002ac4:	0004899b          	sext.w	s3,s1
        putc(key);
    80002ac8:	0ff57513          	andi	a0,a0,255
    80002acc:	00000097          	auipc	ra,0x0
    80002ad0:	9e4080e7          	jalr	-1564(ra) # 800024b0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002ad4:	00092703          	lw	a4,0(s2)
    80002ad8:	0027179b          	slliw	a5,a4,0x2
    80002adc:	00e787bb          	addw	a5,a5,a4
    80002ae0:	02f4e7bb          	remw	a5,s1,a5
    80002ae4:	fa0786e3          	beqz	a5,80002a90 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002ae8:	05000793          	li	a5,80
    80002aec:	02f4e4bb          	remw	s1,s1,a5
    80002af0:	fa049ce3          	bnez	s1,80002aa8 <_ZL8consumerPv+0x40>
    80002af4:	fa9ff06f          	j	80002a9c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002af8:	00893503          	ld	a0,8(s2)
    80002afc:	00003097          	auipc	ra,0x3
    80002b00:	2b4080e7          	jalr	692(ra) # 80005db0 <_ZN6Buffer3getEv>
        putc(key);
    80002b04:	0ff57513          	andi	a0,a0,255
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	9a8080e7          	jalr	-1624(ra) # 800024b0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002b10:	00893503          	ld	a0,8(s2)
    80002b14:	00003097          	auipc	ra,0x3
    80002b18:	328080e7          	jalr	808(ra) # 80005e3c <_ZN6Buffer6getCntEv>
    80002b1c:	fca04ee3          	bgtz	a0,80002af8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002b20:	01093503          	ld	a0,16(s2)
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	904080e7          	jalr	-1788(ra) # 80002428 <_Z10sem_signalP3Sem>
}
    80002b2c:	02813083          	ld	ra,40(sp)
    80002b30:	02013403          	ld	s0,32(sp)
    80002b34:	01813483          	ld	s1,24(sp)
    80002b38:	01013903          	ld	s2,16(sp)
    80002b3c:	00813983          	ld	s3,8(sp)
    80002b40:	03010113          	addi	sp,sp,48
    80002b44:	00008067          	ret

0000000080002b48 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002b48:	f9010113          	addi	sp,sp,-112
    80002b4c:	06113423          	sd	ra,104(sp)
    80002b50:	06813023          	sd	s0,96(sp)
    80002b54:	04913c23          	sd	s1,88(sp)
    80002b58:	05213823          	sd	s2,80(sp)
    80002b5c:	05313423          	sd	s3,72(sp)
    80002b60:	05413023          	sd	s4,64(sp)
    80002b64:	03513c23          	sd	s5,56(sp)
    80002b68:	03613823          	sd	s6,48(sp)
    80002b6c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002b70:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002b74:	00006517          	auipc	a0,0x6
    80002b78:	5cc50513          	addi	a0,a0,1484 # 80009140 <_ZN15MemoryAllocator10DBlockSizeE+0x120>
    80002b7c:	00002097          	auipc	ra,0x2
    80002b80:	1f0080e7          	jalr	496(ra) # 80004d6c <_Z11printStringPKc>
    getString(input, 30);
    80002b84:	01e00593          	li	a1,30
    80002b88:	fa040493          	addi	s1,s0,-96
    80002b8c:	00048513          	mv	a0,s1
    80002b90:	00002097          	auipc	ra,0x2
    80002b94:	264080e7          	jalr	612(ra) # 80004df4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002b98:	00048513          	mv	a0,s1
    80002b9c:	00002097          	auipc	ra,0x2
    80002ba0:	330080e7          	jalr	816(ra) # 80004ecc <_Z11stringToIntPKc>
    80002ba4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002ba8:	00006517          	auipc	a0,0x6
    80002bac:	5b850513          	addi	a0,a0,1464 # 80009160 <_ZN15MemoryAllocator10DBlockSizeE+0x140>
    80002bb0:	00002097          	auipc	ra,0x2
    80002bb4:	1bc080e7          	jalr	444(ra) # 80004d6c <_Z11printStringPKc>
    getString(input, 30);
    80002bb8:	01e00593          	li	a1,30
    80002bbc:	00048513          	mv	a0,s1
    80002bc0:	00002097          	auipc	ra,0x2
    80002bc4:	234080e7          	jalr	564(ra) # 80004df4 <_Z9getStringPci>
    n = stringToInt(input);
    80002bc8:	00048513          	mv	a0,s1
    80002bcc:	00002097          	auipc	ra,0x2
    80002bd0:	300080e7          	jalr	768(ra) # 80004ecc <_Z11stringToIntPKc>
    80002bd4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002bd8:	00006517          	auipc	a0,0x6
    80002bdc:	5a850513          	addi	a0,a0,1448 # 80009180 <_ZN15MemoryAllocator10DBlockSizeE+0x160>
    80002be0:	00002097          	auipc	ra,0x2
    80002be4:	18c080e7          	jalr	396(ra) # 80004d6c <_Z11printStringPKc>
    80002be8:	00000613          	li	a2,0
    80002bec:	00a00593          	li	a1,10
    80002bf0:	00090513          	mv	a0,s2
    80002bf4:	00002097          	auipc	ra,0x2
    80002bf8:	328080e7          	jalr	808(ra) # 80004f1c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002bfc:	00006517          	auipc	a0,0x6
    80002c00:	59c50513          	addi	a0,a0,1436 # 80009198 <_ZN15MemoryAllocator10DBlockSizeE+0x178>
    80002c04:	00002097          	auipc	ra,0x2
    80002c08:	168080e7          	jalr	360(ra) # 80004d6c <_Z11printStringPKc>
    80002c0c:	00000613          	li	a2,0
    80002c10:	00a00593          	li	a1,10
    80002c14:	00048513          	mv	a0,s1
    80002c18:	00002097          	auipc	ra,0x2
    80002c1c:	304080e7          	jalr	772(ra) # 80004f1c <_Z8printIntiii>
    printString(".\n");
    80002c20:	00006517          	auipc	a0,0x6
    80002c24:	59050513          	addi	a0,a0,1424 # 800091b0 <_ZN15MemoryAllocator10DBlockSizeE+0x190>
    80002c28:	00002097          	auipc	ra,0x2
    80002c2c:	144080e7          	jalr	324(ra) # 80004d6c <_Z11printStringPKc>
    if(threadNum > n) {
    80002c30:	0324c463          	blt	s1,s2,80002c58 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002c34:	03205c63          	blez	s2,80002c6c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002c38:	03800513          	li	a0,56
    80002c3c:	ffffe097          	auipc	ra,0xffffe
    80002c40:	5f8080e7          	jalr	1528(ra) # 80001234 <_Znwm>
    80002c44:	00050a13          	mv	s4,a0
    80002c48:	00048593          	mv	a1,s1
    80002c4c:	00003097          	auipc	ra,0x3
    80002c50:	038080e7          	jalr	56(ra) # 80005c84 <_ZN6BufferC1Ei>
    80002c54:	0300006f          	j	80002c84 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002c58:	00006517          	auipc	a0,0x6
    80002c5c:	56050513          	addi	a0,a0,1376 # 800091b8 <_ZN15MemoryAllocator10DBlockSizeE+0x198>
    80002c60:	00002097          	auipc	ra,0x2
    80002c64:	10c080e7          	jalr	268(ra) # 80004d6c <_Z11printStringPKc>
        return;
    80002c68:	0140006f          	j	80002c7c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002c6c:	00006517          	auipc	a0,0x6
    80002c70:	58c50513          	addi	a0,a0,1420 # 800091f8 <_ZN15MemoryAllocator10DBlockSizeE+0x1d8>
    80002c74:	00002097          	auipc	ra,0x2
    80002c78:	0f8080e7          	jalr	248(ra) # 80004d6c <_Z11printStringPKc>
        return;
    80002c7c:	000b0113          	mv	sp,s6
    80002c80:	1500006f          	j	80002dd0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002c84:	00000593          	li	a1,0
    80002c88:	00009517          	auipc	a0,0x9
    80002c8c:	98850513          	addi	a0,a0,-1656 # 8000b610 <_ZL10waitForAll>
    80002c90:	fffff097          	auipc	ra,0xfffff
    80002c94:	684080e7          	jalr	1668(ra) # 80002314 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80002c98:	00391793          	slli	a5,s2,0x3
    80002c9c:	00f78793          	addi	a5,a5,15
    80002ca0:	ff07f793          	andi	a5,a5,-16
    80002ca4:	40f10133          	sub	sp,sp,a5
    80002ca8:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002cac:	0019071b          	addiw	a4,s2,1
    80002cb0:	00171793          	slli	a5,a4,0x1
    80002cb4:	00e787b3          	add	a5,a5,a4
    80002cb8:	00379793          	slli	a5,a5,0x3
    80002cbc:	00f78793          	addi	a5,a5,15
    80002cc0:	ff07f793          	andi	a5,a5,-16
    80002cc4:	40f10133          	sub	sp,sp,a5
    80002cc8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002ccc:	00191613          	slli	a2,s2,0x1
    80002cd0:	012607b3          	add	a5,a2,s2
    80002cd4:	00379793          	slli	a5,a5,0x3
    80002cd8:	00f987b3          	add	a5,s3,a5
    80002cdc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002ce0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002ce4:	00009717          	auipc	a4,0x9
    80002ce8:	92c73703          	ld	a4,-1748(a4) # 8000b610 <_ZL10waitForAll>
    80002cec:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002cf0:	00078613          	mv	a2,a5
    80002cf4:	00000597          	auipc	a1,0x0
    80002cf8:	d7458593          	addi	a1,a1,-652 # 80002a68 <_ZL8consumerPv>
    80002cfc:	f9840513          	addi	a0,s0,-104
    80002d00:	fffff097          	auipc	ra,0xfffff
    80002d04:	508080e7          	jalr	1288(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002d08:	00000493          	li	s1,0
    80002d0c:	0280006f          	j	80002d34 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002d10:	00000597          	auipc	a1,0x0
    80002d14:	c1458593          	addi	a1,a1,-1004 # 80002924 <_ZL16producerKeyboardPv>
                      data + i);
    80002d18:	00179613          	slli	a2,a5,0x1
    80002d1c:	00f60633          	add	a2,a2,a5
    80002d20:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002d24:	00c98633          	add	a2,s3,a2
    80002d28:	fffff097          	auipc	ra,0xfffff
    80002d2c:	4e0080e7          	jalr	1248(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002d30:	0014849b          	addiw	s1,s1,1
    80002d34:	0524d263          	bge	s1,s2,80002d78 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002d38:	00149793          	slli	a5,s1,0x1
    80002d3c:	009787b3          	add	a5,a5,s1
    80002d40:	00379793          	slli	a5,a5,0x3
    80002d44:	00f987b3          	add	a5,s3,a5
    80002d48:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002d4c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002d50:	00009717          	auipc	a4,0x9
    80002d54:	8c073703          	ld	a4,-1856(a4) # 8000b610 <_ZL10waitForAll>
    80002d58:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002d5c:	00048793          	mv	a5,s1
    80002d60:	00349513          	slli	a0,s1,0x3
    80002d64:	00aa8533          	add	a0,s5,a0
    80002d68:	fa9054e3          	blez	s1,80002d10 <_Z22producerConsumer_C_APIv+0x1c8>
    80002d6c:	00000597          	auipc	a1,0x0
    80002d70:	c6858593          	addi	a1,a1,-920 # 800029d4 <_ZL8producerPv>
    80002d74:	fa5ff06f          	j	80002d18 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	560080e7          	jalr	1376(ra) # 800022d8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002d80:	00000493          	li	s1,0
    80002d84:	00994e63          	blt	s2,s1,80002da0 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002d88:	00009517          	auipc	a0,0x9
    80002d8c:	88853503          	ld	a0,-1912(a0) # 8000b610 <_ZL10waitForAll>
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	610080e7          	jalr	1552(ra) # 800023a0 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80002d98:	0014849b          	addiw	s1,s1,1
    80002d9c:	fe9ff06f          	j	80002d84 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002da0:	00009517          	auipc	a0,0x9
    80002da4:	87053503          	ld	a0,-1936(a0) # 8000b610 <_ZL10waitForAll>
    80002da8:	fffff097          	auipc	ra,0xfffff
    80002dac:	5b4080e7          	jalr	1460(ra) # 8000235c <_Z9sem_closeP3Sem>
    delete buffer;
    80002db0:	000a0e63          	beqz	s4,80002dcc <_Z22producerConsumer_C_APIv+0x284>
    80002db4:	000a0513          	mv	a0,s4
    80002db8:	00003097          	auipc	ra,0x3
    80002dbc:	10c080e7          	jalr	268(ra) # 80005ec4 <_ZN6BufferD1Ev>
    80002dc0:	000a0513          	mv	a0,s4
    80002dc4:	ffffe097          	auipc	ra,0xffffe
    80002dc8:	4c0080e7          	jalr	1216(ra) # 80001284 <_ZdlPv>
    80002dcc:	000b0113          	mv	sp,s6

}
    80002dd0:	f9040113          	addi	sp,s0,-112
    80002dd4:	06813083          	ld	ra,104(sp)
    80002dd8:	06013403          	ld	s0,96(sp)
    80002ddc:	05813483          	ld	s1,88(sp)
    80002de0:	05013903          	ld	s2,80(sp)
    80002de4:	04813983          	ld	s3,72(sp)
    80002de8:	04013a03          	ld	s4,64(sp)
    80002dec:	03813a83          	ld	s5,56(sp)
    80002df0:	03013b03          	ld	s6,48(sp)
    80002df4:	07010113          	addi	sp,sp,112
    80002df8:	00008067          	ret
    80002dfc:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002e00:	000a0513          	mv	a0,s4
    80002e04:	ffffe097          	auipc	ra,0xffffe
    80002e08:	480080e7          	jalr	1152(ra) # 80001284 <_ZdlPv>
    80002e0c:	00048513          	mv	a0,s1
    80002e10:	0000a097          	auipc	ra,0xa
    80002e14:	918080e7          	jalr	-1768(ra) # 8000c728 <_Unwind_Resume>

0000000080002e18 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002e18:	fe010113          	addi	sp,sp,-32
    80002e1c:	00113c23          	sd	ra,24(sp)
    80002e20:	00813823          	sd	s0,16(sp)
    80002e24:	00913423          	sd	s1,8(sp)
    80002e28:	01213023          	sd	s2,0(sp)
    80002e2c:	02010413          	addi	s0,sp,32
    80002e30:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002e34:	00100793          	li	a5,1
    80002e38:	02a7f863          	bgeu	a5,a0,80002e68 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002e3c:	00a00793          	li	a5,10
    80002e40:	02f577b3          	remu	a5,a0,a5
    80002e44:	02078e63          	beqz	a5,80002e80 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002e48:	fff48513          	addi	a0,s1,-1
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	fcc080e7          	jalr	-52(ra) # 80002e18 <_ZL9fibonaccim>
    80002e54:	00050913          	mv	s2,a0
    80002e58:	ffe48513          	addi	a0,s1,-2
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	fbc080e7          	jalr	-68(ra) # 80002e18 <_ZL9fibonaccim>
    80002e64:	00a90533          	add	a0,s2,a0
}
    80002e68:	01813083          	ld	ra,24(sp)
    80002e6c:	01013403          	ld	s0,16(sp)
    80002e70:	00813483          	ld	s1,8(sp)
    80002e74:	00013903          	ld	s2,0(sp)
    80002e78:	02010113          	addi	sp,sp,32
    80002e7c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002e80:	fffff097          	auipc	ra,0xfffff
    80002e84:	458080e7          	jalr	1112(ra) # 800022d8 <_Z15thread_dispatchv>
    80002e88:	fc1ff06f          	j	80002e48 <_ZL9fibonaccim+0x30>

0000000080002e8c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002e8c:	fe010113          	addi	sp,sp,-32
    80002e90:	00113c23          	sd	ra,24(sp)
    80002e94:	00813823          	sd	s0,16(sp)
    80002e98:	00913423          	sd	s1,8(sp)
    80002e9c:	01213023          	sd	s2,0(sp)
    80002ea0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002ea4:	00000913          	li	s2,0
    80002ea8:	0380006f          	j	80002ee0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002eac:	fffff097          	auipc	ra,0xfffff
    80002eb0:	42c080e7          	jalr	1068(ra) # 800022d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002eb4:	00148493          	addi	s1,s1,1
    80002eb8:	000027b7          	lui	a5,0x2
    80002ebc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002ec0:	0097ee63          	bltu	a5,s1,80002edc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002ec4:	00000713          	li	a4,0
    80002ec8:	000077b7          	lui	a5,0x7
    80002ecc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002ed0:	fce7eee3          	bltu	a5,a4,80002eac <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002ed4:	00170713          	addi	a4,a4,1
    80002ed8:	ff1ff06f          	j	80002ec8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002edc:	00190913          	addi	s2,s2,1
    80002ee0:	00900793          	li	a5,9
    80002ee4:	0527e063          	bltu	a5,s2,80002f24 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002ee8:	00006517          	auipc	a0,0x6
    80002eec:	34050513          	addi	a0,a0,832 # 80009228 <_ZN15MemoryAllocator10DBlockSizeE+0x208>
    80002ef0:	00002097          	auipc	ra,0x2
    80002ef4:	e7c080e7          	jalr	-388(ra) # 80004d6c <_Z11printStringPKc>
    80002ef8:	00000613          	li	a2,0
    80002efc:	00a00593          	li	a1,10
    80002f00:	0009051b          	sext.w	a0,s2
    80002f04:	00002097          	auipc	ra,0x2
    80002f08:	018080e7          	jalr	24(ra) # 80004f1c <_Z8printIntiii>
    80002f0c:	00006517          	auipc	a0,0x6
    80002f10:	5ac50513          	addi	a0,a0,1452 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80002f14:	00002097          	auipc	ra,0x2
    80002f18:	e58080e7          	jalr	-424(ra) # 80004d6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002f1c:	00000493          	li	s1,0
    80002f20:	f99ff06f          	j	80002eb8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002f24:	00006517          	auipc	a0,0x6
    80002f28:	30c50513          	addi	a0,a0,780 # 80009230 <_ZN15MemoryAllocator10DBlockSizeE+0x210>
    80002f2c:	00002097          	auipc	ra,0x2
    80002f30:	e40080e7          	jalr	-448(ra) # 80004d6c <_Z11printStringPKc>
    finishedA = true;
    80002f34:	00100793          	li	a5,1
    80002f38:	00008717          	auipc	a4,0x8
    80002f3c:	6ef70023          	sb	a5,1760(a4) # 8000b618 <_ZL9finishedA>
}
    80002f40:	01813083          	ld	ra,24(sp)
    80002f44:	01013403          	ld	s0,16(sp)
    80002f48:	00813483          	ld	s1,8(sp)
    80002f4c:	00013903          	ld	s2,0(sp)
    80002f50:	02010113          	addi	sp,sp,32
    80002f54:	00008067          	ret

0000000080002f58 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002f58:	fe010113          	addi	sp,sp,-32
    80002f5c:	00113c23          	sd	ra,24(sp)
    80002f60:	00813823          	sd	s0,16(sp)
    80002f64:	00913423          	sd	s1,8(sp)
    80002f68:	01213023          	sd	s2,0(sp)
    80002f6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002f70:	00000913          	li	s2,0
    80002f74:	0380006f          	j	80002fac <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	360080e7          	jalr	864(ra) # 800022d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002f80:	00148493          	addi	s1,s1,1
    80002f84:	000027b7          	lui	a5,0x2
    80002f88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002f8c:	0097ee63          	bltu	a5,s1,80002fa8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002f90:	00000713          	li	a4,0
    80002f94:	000077b7          	lui	a5,0x7
    80002f98:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002f9c:	fce7eee3          	bltu	a5,a4,80002f78 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002fa0:	00170713          	addi	a4,a4,1
    80002fa4:	ff1ff06f          	j	80002f94 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002fa8:	00190913          	addi	s2,s2,1
    80002fac:	00f00793          	li	a5,15
    80002fb0:	0527e063          	bltu	a5,s2,80002ff0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002fb4:	00006517          	auipc	a0,0x6
    80002fb8:	28c50513          	addi	a0,a0,652 # 80009240 <_ZN15MemoryAllocator10DBlockSizeE+0x220>
    80002fbc:	00002097          	auipc	ra,0x2
    80002fc0:	db0080e7          	jalr	-592(ra) # 80004d6c <_Z11printStringPKc>
    80002fc4:	00000613          	li	a2,0
    80002fc8:	00a00593          	li	a1,10
    80002fcc:	0009051b          	sext.w	a0,s2
    80002fd0:	00002097          	auipc	ra,0x2
    80002fd4:	f4c080e7          	jalr	-180(ra) # 80004f1c <_Z8printIntiii>
    80002fd8:	00006517          	auipc	a0,0x6
    80002fdc:	4e050513          	addi	a0,a0,1248 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80002fe0:	00002097          	auipc	ra,0x2
    80002fe4:	d8c080e7          	jalr	-628(ra) # 80004d6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002fe8:	00000493          	li	s1,0
    80002fec:	f99ff06f          	j	80002f84 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002ff0:	00006517          	auipc	a0,0x6
    80002ff4:	25850513          	addi	a0,a0,600 # 80009248 <_ZN15MemoryAllocator10DBlockSizeE+0x228>
    80002ff8:	00002097          	auipc	ra,0x2
    80002ffc:	d74080e7          	jalr	-652(ra) # 80004d6c <_Z11printStringPKc>
    finishedB = true;
    80003000:	00100793          	li	a5,1
    80003004:	00008717          	auipc	a4,0x8
    80003008:	60f70aa3          	sb	a5,1557(a4) # 8000b619 <_ZL9finishedB>
    thread_dispatch();
    8000300c:	fffff097          	auipc	ra,0xfffff
    80003010:	2cc080e7          	jalr	716(ra) # 800022d8 <_Z15thread_dispatchv>
}
    80003014:	01813083          	ld	ra,24(sp)
    80003018:	01013403          	ld	s0,16(sp)
    8000301c:	00813483          	ld	s1,8(sp)
    80003020:	00013903          	ld	s2,0(sp)
    80003024:	02010113          	addi	sp,sp,32
    80003028:	00008067          	ret

000000008000302c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000302c:	fe010113          	addi	sp,sp,-32
    80003030:	00113c23          	sd	ra,24(sp)
    80003034:	00813823          	sd	s0,16(sp)
    80003038:	00913423          	sd	s1,8(sp)
    8000303c:	01213023          	sd	s2,0(sp)
    80003040:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003044:	00000493          	li	s1,0
    80003048:	0400006f          	j	80003088 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000304c:	00006517          	auipc	a0,0x6
    80003050:	20c50513          	addi	a0,a0,524 # 80009258 <_ZN15MemoryAllocator10DBlockSizeE+0x238>
    80003054:	00002097          	auipc	ra,0x2
    80003058:	d18080e7          	jalr	-744(ra) # 80004d6c <_Z11printStringPKc>
    8000305c:	00000613          	li	a2,0
    80003060:	00a00593          	li	a1,10
    80003064:	00048513          	mv	a0,s1
    80003068:	00002097          	auipc	ra,0x2
    8000306c:	eb4080e7          	jalr	-332(ra) # 80004f1c <_Z8printIntiii>
    80003070:	00006517          	auipc	a0,0x6
    80003074:	44850513          	addi	a0,a0,1096 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80003078:	00002097          	auipc	ra,0x2
    8000307c:	cf4080e7          	jalr	-780(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003080:	0014849b          	addiw	s1,s1,1
    80003084:	0ff4f493          	andi	s1,s1,255
    80003088:	00200793          	li	a5,2
    8000308c:	fc97f0e3          	bgeu	a5,s1,8000304c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003090:	00006517          	auipc	a0,0x6
    80003094:	1d050513          	addi	a0,a0,464 # 80009260 <_ZN15MemoryAllocator10DBlockSizeE+0x240>
    80003098:	00002097          	auipc	ra,0x2
    8000309c:	cd4080e7          	jalr	-812(ra) # 80004d6c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800030a0:	00700313          	li	t1,7
    thread_dispatch();
    800030a4:	fffff097          	auipc	ra,0xfffff
    800030a8:	234080e7          	jalr	564(ra) # 800022d8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800030ac:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800030b0:	00006517          	auipc	a0,0x6
    800030b4:	1c050513          	addi	a0,a0,448 # 80009270 <_ZN15MemoryAllocator10DBlockSizeE+0x250>
    800030b8:	00002097          	auipc	ra,0x2
    800030bc:	cb4080e7          	jalr	-844(ra) # 80004d6c <_Z11printStringPKc>
    800030c0:	00000613          	li	a2,0
    800030c4:	00a00593          	li	a1,10
    800030c8:	0009051b          	sext.w	a0,s2
    800030cc:	00002097          	auipc	ra,0x2
    800030d0:	e50080e7          	jalr	-432(ra) # 80004f1c <_Z8printIntiii>
    800030d4:	00006517          	auipc	a0,0x6
    800030d8:	3e450513          	addi	a0,a0,996 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    800030dc:	00002097          	auipc	ra,0x2
    800030e0:	c90080e7          	jalr	-880(ra) # 80004d6c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800030e4:	00c00513          	li	a0,12
    800030e8:	00000097          	auipc	ra,0x0
    800030ec:	d30080e7          	jalr	-720(ra) # 80002e18 <_ZL9fibonaccim>
    800030f0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800030f4:	00006517          	auipc	a0,0x6
    800030f8:	18450513          	addi	a0,a0,388 # 80009278 <_ZN15MemoryAllocator10DBlockSizeE+0x258>
    800030fc:	00002097          	auipc	ra,0x2
    80003100:	c70080e7          	jalr	-912(ra) # 80004d6c <_Z11printStringPKc>
    80003104:	00000613          	li	a2,0
    80003108:	00a00593          	li	a1,10
    8000310c:	0009051b          	sext.w	a0,s2
    80003110:	00002097          	auipc	ra,0x2
    80003114:	e0c080e7          	jalr	-500(ra) # 80004f1c <_Z8printIntiii>
    80003118:	00006517          	auipc	a0,0x6
    8000311c:	3a050513          	addi	a0,a0,928 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80003120:	00002097          	auipc	ra,0x2
    80003124:	c4c080e7          	jalr	-948(ra) # 80004d6c <_Z11printStringPKc>
    80003128:	0400006f          	j	80003168 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000312c:	00006517          	auipc	a0,0x6
    80003130:	12c50513          	addi	a0,a0,300 # 80009258 <_ZN15MemoryAllocator10DBlockSizeE+0x238>
    80003134:	00002097          	auipc	ra,0x2
    80003138:	c38080e7          	jalr	-968(ra) # 80004d6c <_Z11printStringPKc>
    8000313c:	00000613          	li	a2,0
    80003140:	00a00593          	li	a1,10
    80003144:	00048513          	mv	a0,s1
    80003148:	00002097          	auipc	ra,0x2
    8000314c:	dd4080e7          	jalr	-556(ra) # 80004f1c <_Z8printIntiii>
    80003150:	00006517          	auipc	a0,0x6
    80003154:	36850513          	addi	a0,a0,872 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80003158:	00002097          	auipc	ra,0x2
    8000315c:	c14080e7          	jalr	-1004(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003160:	0014849b          	addiw	s1,s1,1
    80003164:	0ff4f493          	andi	s1,s1,255
    80003168:	00500793          	li	a5,5
    8000316c:	fc97f0e3          	bgeu	a5,s1,8000312c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003170:	00006517          	auipc	a0,0x6
    80003174:	0c050513          	addi	a0,a0,192 # 80009230 <_ZN15MemoryAllocator10DBlockSizeE+0x210>
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	bf4080e7          	jalr	-1036(ra) # 80004d6c <_Z11printStringPKc>
    finishedC = true;
    80003180:	00100793          	li	a5,1
    80003184:	00008717          	auipc	a4,0x8
    80003188:	48f70b23          	sb	a5,1174(a4) # 8000b61a <_ZL9finishedC>
    thread_dispatch();
    8000318c:	fffff097          	auipc	ra,0xfffff
    80003190:	14c080e7          	jalr	332(ra) # 800022d8 <_Z15thread_dispatchv>
}
    80003194:	01813083          	ld	ra,24(sp)
    80003198:	01013403          	ld	s0,16(sp)
    8000319c:	00813483          	ld	s1,8(sp)
    800031a0:	00013903          	ld	s2,0(sp)
    800031a4:	02010113          	addi	sp,sp,32
    800031a8:	00008067          	ret

00000000800031ac <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800031ac:	fe010113          	addi	sp,sp,-32
    800031b0:	00113c23          	sd	ra,24(sp)
    800031b4:	00813823          	sd	s0,16(sp)
    800031b8:	00913423          	sd	s1,8(sp)
    800031bc:	01213023          	sd	s2,0(sp)
    800031c0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800031c4:	00a00493          	li	s1,10
    800031c8:	0400006f          	j	80003208 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800031cc:	00006517          	auipc	a0,0x6
    800031d0:	0bc50513          	addi	a0,a0,188 # 80009288 <_ZN15MemoryAllocator10DBlockSizeE+0x268>
    800031d4:	00002097          	auipc	ra,0x2
    800031d8:	b98080e7          	jalr	-1128(ra) # 80004d6c <_Z11printStringPKc>
    800031dc:	00000613          	li	a2,0
    800031e0:	00a00593          	li	a1,10
    800031e4:	00048513          	mv	a0,s1
    800031e8:	00002097          	auipc	ra,0x2
    800031ec:	d34080e7          	jalr	-716(ra) # 80004f1c <_Z8printIntiii>
    800031f0:	00006517          	auipc	a0,0x6
    800031f4:	2c850513          	addi	a0,a0,712 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    800031f8:	00002097          	auipc	ra,0x2
    800031fc:	b74080e7          	jalr	-1164(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003200:	0014849b          	addiw	s1,s1,1
    80003204:	0ff4f493          	andi	s1,s1,255
    80003208:	00c00793          	li	a5,12
    8000320c:	fc97f0e3          	bgeu	a5,s1,800031cc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003210:	00006517          	auipc	a0,0x6
    80003214:	08050513          	addi	a0,a0,128 # 80009290 <_ZN15MemoryAllocator10DBlockSizeE+0x270>
    80003218:	00002097          	auipc	ra,0x2
    8000321c:	b54080e7          	jalr	-1196(ra) # 80004d6c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003220:	00500313          	li	t1,5
    thread_dispatch();
    80003224:	fffff097          	auipc	ra,0xfffff
    80003228:	0b4080e7          	jalr	180(ra) # 800022d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000322c:	01000513          	li	a0,16
    80003230:	00000097          	auipc	ra,0x0
    80003234:	be8080e7          	jalr	-1048(ra) # 80002e18 <_ZL9fibonaccim>
    80003238:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000323c:	00006517          	auipc	a0,0x6
    80003240:	06450513          	addi	a0,a0,100 # 800092a0 <_ZN15MemoryAllocator10DBlockSizeE+0x280>
    80003244:	00002097          	auipc	ra,0x2
    80003248:	b28080e7          	jalr	-1240(ra) # 80004d6c <_Z11printStringPKc>
    8000324c:	00000613          	li	a2,0
    80003250:	00a00593          	li	a1,10
    80003254:	0009051b          	sext.w	a0,s2
    80003258:	00002097          	auipc	ra,0x2
    8000325c:	cc4080e7          	jalr	-828(ra) # 80004f1c <_Z8printIntiii>
    80003260:	00006517          	auipc	a0,0x6
    80003264:	25850513          	addi	a0,a0,600 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80003268:	00002097          	auipc	ra,0x2
    8000326c:	b04080e7          	jalr	-1276(ra) # 80004d6c <_Z11printStringPKc>
    80003270:	0400006f          	j	800032b0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003274:	00006517          	auipc	a0,0x6
    80003278:	01450513          	addi	a0,a0,20 # 80009288 <_ZN15MemoryAllocator10DBlockSizeE+0x268>
    8000327c:	00002097          	auipc	ra,0x2
    80003280:	af0080e7          	jalr	-1296(ra) # 80004d6c <_Z11printStringPKc>
    80003284:	00000613          	li	a2,0
    80003288:	00a00593          	li	a1,10
    8000328c:	00048513          	mv	a0,s1
    80003290:	00002097          	auipc	ra,0x2
    80003294:	c8c080e7          	jalr	-884(ra) # 80004f1c <_Z8printIntiii>
    80003298:	00006517          	auipc	a0,0x6
    8000329c:	22050513          	addi	a0,a0,544 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    800032a0:	00002097          	auipc	ra,0x2
    800032a4:	acc080e7          	jalr	-1332(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800032a8:	0014849b          	addiw	s1,s1,1
    800032ac:	0ff4f493          	andi	s1,s1,255
    800032b0:	00f00793          	li	a5,15
    800032b4:	fc97f0e3          	bgeu	a5,s1,80003274 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800032b8:	00006517          	auipc	a0,0x6
    800032bc:	ff850513          	addi	a0,a0,-8 # 800092b0 <_ZN15MemoryAllocator10DBlockSizeE+0x290>
    800032c0:	00002097          	auipc	ra,0x2
    800032c4:	aac080e7          	jalr	-1364(ra) # 80004d6c <_Z11printStringPKc>
    finishedD = true;
    800032c8:	00100793          	li	a5,1
    800032cc:	00008717          	auipc	a4,0x8
    800032d0:	34f707a3          	sb	a5,847(a4) # 8000b61b <_ZL9finishedD>
    thread_dispatch();
    800032d4:	fffff097          	auipc	ra,0xfffff
    800032d8:	004080e7          	jalr	4(ra) # 800022d8 <_Z15thread_dispatchv>
}
    800032dc:	01813083          	ld	ra,24(sp)
    800032e0:	01013403          	ld	s0,16(sp)
    800032e4:	00813483          	ld	s1,8(sp)
    800032e8:	00013903          	ld	s2,0(sp)
    800032ec:	02010113          	addi	sp,sp,32
    800032f0:	00008067          	ret

00000000800032f4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800032f4:	fc010113          	addi	sp,sp,-64
    800032f8:	02113c23          	sd	ra,56(sp)
    800032fc:	02813823          	sd	s0,48(sp)
    80003300:	02913423          	sd	s1,40(sp)
    80003304:	03213023          	sd	s2,32(sp)
    80003308:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000330c:	02000513          	li	a0,32
    80003310:	ffffe097          	auipc	ra,0xffffe
    80003314:	f24080e7          	jalr	-220(ra) # 80001234 <_Znwm>
    80003318:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000331c:	fffff097          	auipc	ra,0xfffff
    80003320:	450080e7          	jalr	1104(ra) # 8000276c <_ZN6ThreadC1Ev>
    80003324:	00008797          	auipc	a5,0x8
    80003328:	07c78793          	addi	a5,a5,124 # 8000b3a0 <_ZTV7WorkerA+0x10>
    8000332c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003330:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003334:	00006517          	auipc	a0,0x6
    80003338:	f8c50513          	addi	a0,a0,-116 # 800092c0 <_ZN15MemoryAllocator10DBlockSizeE+0x2a0>
    8000333c:	00002097          	auipc	ra,0x2
    80003340:	a30080e7          	jalr	-1488(ra) # 80004d6c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003344:	02000513          	li	a0,32
    80003348:	ffffe097          	auipc	ra,0xffffe
    8000334c:	eec080e7          	jalr	-276(ra) # 80001234 <_Znwm>
    80003350:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003354:	fffff097          	auipc	ra,0xfffff
    80003358:	418080e7          	jalr	1048(ra) # 8000276c <_ZN6ThreadC1Ev>
    8000335c:	00008797          	auipc	a5,0x8
    80003360:	06c78793          	addi	a5,a5,108 # 8000b3c8 <_ZTV7WorkerB+0x10>
    80003364:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003368:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000336c:	00006517          	auipc	a0,0x6
    80003370:	f6c50513          	addi	a0,a0,-148 # 800092d8 <_ZN15MemoryAllocator10DBlockSizeE+0x2b8>
    80003374:	00002097          	auipc	ra,0x2
    80003378:	9f8080e7          	jalr	-1544(ra) # 80004d6c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000337c:	02000513          	li	a0,32
    80003380:	ffffe097          	auipc	ra,0xffffe
    80003384:	eb4080e7          	jalr	-332(ra) # 80001234 <_Znwm>
    80003388:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000338c:	fffff097          	auipc	ra,0xfffff
    80003390:	3e0080e7          	jalr	992(ra) # 8000276c <_ZN6ThreadC1Ev>
    80003394:	00008797          	auipc	a5,0x8
    80003398:	05c78793          	addi	a5,a5,92 # 8000b3f0 <_ZTV7WorkerC+0x10>
    8000339c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800033a0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800033a4:	00006517          	auipc	a0,0x6
    800033a8:	f4c50513          	addi	a0,a0,-180 # 800092f0 <_ZN15MemoryAllocator10DBlockSizeE+0x2d0>
    800033ac:	00002097          	auipc	ra,0x2
    800033b0:	9c0080e7          	jalr	-1600(ra) # 80004d6c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800033b4:	02000513          	li	a0,32
    800033b8:	ffffe097          	auipc	ra,0xffffe
    800033bc:	e7c080e7          	jalr	-388(ra) # 80001234 <_Znwm>
    800033c0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800033c4:	fffff097          	auipc	ra,0xfffff
    800033c8:	3a8080e7          	jalr	936(ra) # 8000276c <_ZN6ThreadC1Ev>
    800033cc:	00008797          	auipc	a5,0x8
    800033d0:	04c78793          	addi	a5,a5,76 # 8000b418 <_ZTV7WorkerD+0x10>
    800033d4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800033d8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800033dc:	00006517          	auipc	a0,0x6
    800033e0:	f2c50513          	addi	a0,a0,-212 # 80009308 <_ZN15MemoryAllocator10DBlockSizeE+0x2e8>
    800033e4:	00002097          	auipc	ra,0x2
    800033e8:	988080e7          	jalr	-1656(ra) # 80004d6c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800033ec:	00000493          	li	s1,0
    800033f0:	00300793          	li	a5,3
    800033f4:	0297c663          	blt	a5,s1,80003420 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800033f8:	00349793          	slli	a5,s1,0x3
    800033fc:	fe040713          	addi	a4,s0,-32
    80003400:	00f707b3          	add	a5,a4,a5
    80003404:	fe07b503          	ld	a0,-32(a5)
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	39c080e7          	jalr	924(ra) # 800027a4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003410:	0014849b          	addiw	s1,s1,1
    80003414:	fddff06f          	j	800033f0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	3c0080e7          	jalr	960(ra) # 800027d8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003420:	00008797          	auipc	a5,0x8
    80003424:	1f87c783          	lbu	a5,504(a5) # 8000b618 <_ZL9finishedA>
    80003428:	fe0788e3          	beqz	a5,80003418 <_Z20Threads_CPP_API_testv+0x124>
    8000342c:	00008797          	auipc	a5,0x8
    80003430:	1ed7c783          	lbu	a5,493(a5) # 8000b619 <_ZL9finishedB>
    80003434:	fe0782e3          	beqz	a5,80003418 <_Z20Threads_CPP_API_testv+0x124>
    80003438:	00008797          	auipc	a5,0x8
    8000343c:	1e27c783          	lbu	a5,482(a5) # 8000b61a <_ZL9finishedC>
    80003440:	fc078ce3          	beqz	a5,80003418 <_Z20Threads_CPP_API_testv+0x124>
    80003444:	00008797          	auipc	a5,0x8
    80003448:	1d77c783          	lbu	a5,471(a5) # 8000b61b <_ZL9finishedD>
    8000344c:	fc0786e3          	beqz	a5,80003418 <_Z20Threads_CPP_API_testv+0x124>
    80003450:	fc040493          	addi	s1,s0,-64
    80003454:	0080006f          	j	8000345c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003458:	00848493          	addi	s1,s1,8
    8000345c:	fe040793          	addi	a5,s0,-32
    80003460:	08f48663          	beq	s1,a5,800034ec <_Z20Threads_CPP_API_testv+0x1f8>
    80003464:	0004b503          	ld	a0,0(s1)
    80003468:	fe0508e3          	beqz	a0,80003458 <_Z20Threads_CPP_API_testv+0x164>
    8000346c:	00053783          	ld	a5,0(a0)
    80003470:	0087b783          	ld	a5,8(a5)
    80003474:	000780e7          	jalr	a5
    80003478:	fe1ff06f          	j	80003458 <_Z20Threads_CPP_API_testv+0x164>
    8000347c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003480:	00048513          	mv	a0,s1
    80003484:	ffffe097          	auipc	ra,0xffffe
    80003488:	e00080e7          	jalr	-512(ra) # 80001284 <_ZdlPv>
    8000348c:	00090513          	mv	a0,s2
    80003490:	00009097          	auipc	ra,0x9
    80003494:	298080e7          	jalr	664(ra) # 8000c728 <_Unwind_Resume>
    80003498:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000349c:	00048513          	mv	a0,s1
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	de4080e7          	jalr	-540(ra) # 80001284 <_ZdlPv>
    800034a8:	00090513          	mv	a0,s2
    800034ac:	00009097          	auipc	ra,0x9
    800034b0:	27c080e7          	jalr	636(ra) # 8000c728 <_Unwind_Resume>
    800034b4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800034b8:	00048513          	mv	a0,s1
    800034bc:	ffffe097          	auipc	ra,0xffffe
    800034c0:	dc8080e7          	jalr	-568(ra) # 80001284 <_ZdlPv>
    800034c4:	00090513          	mv	a0,s2
    800034c8:	00009097          	auipc	ra,0x9
    800034cc:	260080e7          	jalr	608(ra) # 8000c728 <_Unwind_Resume>
    800034d0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800034d4:	00048513          	mv	a0,s1
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	dac080e7          	jalr	-596(ra) # 80001284 <_ZdlPv>
    800034e0:	00090513          	mv	a0,s2
    800034e4:	00009097          	auipc	ra,0x9
    800034e8:	244080e7          	jalr	580(ra) # 8000c728 <_Unwind_Resume>
}
    800034ec:	03813083          	ld	ra,56(sp)
    800034f0:	03013403          	ld	s0,48(sp)
    800034f4:	02813483          	ld	s1,40(sp)
    800034f8:	02013903          	ld	s2,32(sp)
    800034fc:	04010113          	addi	sp,sp,64
    80003500:	00008067          	ret

0000000080003504 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003504:	ff010113          	addi	sp,sp,-16
    80003508:	00113423          	sd	ra,8(sp)
    8000350c:	00813023          	sd	s0,0(sp)
    80003510:	01010413          	addi	s0,sp,16
    80003514:	00008797          	auipc	a5,0x8
    80003518:	e8c78793          	addi	a5,a5,-372 # 8000b3a0 <_ZTV7WorkerA+0x10>
    8000351c:	00f53023          	sd	a5,0(a0)
    80003520:	fffff097          	auipc	ra,0xfffff
    80003524:	110080e7          	jalr	272(ra) # 80002630 <_ZN6ThreadD1Ev>
    80003528:	00813083          	ld	ra,8(sp)
    8000352c:	00013403          	ld	s0,0(sp)
    80003530:	01010113          	addi	sp,sp,16
    80003534:	00008067          	ret

0000000080003538 <_ZN7WorkerAD0Ev>:
    80003538:	fe010113          	addi	sp,sp,-32
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	00813823          	sd	s0,16(sp)
    80003544:	00913423          	sd	s1,8(sp)
    80003548:	02010413          	addi	s0,sp,32
    8000354c:	00050493          	mv	s1,a0
    80003550:	00008797          	auipc	a5,0x8
    80003554:	e5078793          	addi	a5,a5,-432 # 8000b3a0 <_ZTV7WorkerA+0x10>
    80003558:	00f53023          	sd	a5,0(a0)
    8000355c:	fffff097          	auipc	ra,0xfffff
    80003560:	0d4080e7          	jalr	212(ra) # 80002630 <_ZN6ThreadD1Ev>
    80003564:	00048513          	mv	a0,s1
    80003568:	ffffe097          	auipc	ra,0xffffe
    8000356c:	d1c080e7          	jalr	-740(ra) # 80001284 <_ZdlPv>
    80003570:	01813083          	ld	ra,24(sp)
    80003574:	01013403          	ld	s0,16(sp)
    80003578:	00813483          	ld	s1,8(sp)
    8000357c:	02010113          	addi	sp,sp,32
    80003580:	00008067          	ret

0000000080003584 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003584:	ff010113          	addi	sp,sp,-16
    80003588:	00113423          	sd	ra,8(sp)
    8000358c:	00813023          	sd	s0,0(sp)
    80003590:	01010413          	addi	s0,sp,16
    80003594:	00008797          	auipc	a5,0x8
    80003598:	e3478793          	addi	a5,a5,-460 # 8000b3c8 <_ZTV7WorkerB+0x10>
    8000359c:	00f53023          	sd	a5,0(a0)
    800035a0:	fffff097          	auipc	ra,0xfffff
    800035a4:	090080e7          	jalr	144(ra) # 80002630 <_ZN6ThreadD1Ev>
    800035a8:	00813083          	ld	ra,8(sp)
    800035ac:	00013403          	ld	s0,0(sp)
    800035b0:	01010113          	addi	sp,sp,16
    800035b4:	00008067          	ret

00000000800035b8 <_ZN7WorkerBD0Ev>:
    800035b8:	fe010113          	addi	sp,sp,-32
    800035bc:	00113c23          	sd	ra,24(sp)
    800035c0:	00813823          	sd	s0,16(sp)
    800035c4:	00913423          	sd	s1,8(sp)
    800035c8:	02010413          	addi	s0,sp,32
    800035cc:	00050493          	mv	s1,a0
    800035d0:	00008797          	auipc	a5,0x8
    800035d4:	df878793          	addi	a5,a5,-520 # 8000b3c8 <_ZTV7WorkerB+0x10>
    800035d8:	00f53023          	sd	a5,0(a0)
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	054080e7          	jalr	84(ra) # 80002630 <_ZN6ThreadD1Ev>
    800035e4:	00048513          	mv	a0,s1
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	c9c080e7          	jalr	-868(ra) # 80001284 <_ZdlPv>
    800035f0:	01813083          	ld	ra,24(sp)
    800035f4:	01013403          	ld	s0,16(sp)
    800035f8:	00813483          	ld	s1,8(sp)
    800035fc:	02010113          	addi	sp,sp,32
    80003600:	00008067          	ret

0000000080003604 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003604:	ff010113          	addi	sp,sp,-16
    80003608:	00113423          	sd	ra,8(sp)
    8000360c:	00813023          	sd	s0,0(sp)
    80003610:	01010413          	addi	s0,sp,16
    80003614:	00008797          	auipc	a5,0x8
    80003618:	ddc78793          	addi	a5,a5,-548 # 8000b3f0 <_ZTV7WorkerC+0x10>
    8000361c:	00f53023          	sd	a5,0(a0)
    80003620:	fffff097          	auipc	ra,0xfffff
    80003624:	010080e7          	jalr	16(ra) # 80002630 <_ZN6ThreadD1Ev>
    80003628:	00813083          	ld	ra,8(sp)
    8000362c:	00013403          	ld	s0,0(sp)
    80003630:	01010113          	addi	sp,sp,16
    80003634:	00008067          	ret

0000000080003638 <_ZN7WorkerCD0Ev>:
    80003638:	fe010113          	addi	sp,sp,-32
    8000363c:	00113c23          	sd	ra,24(sp)
    80003640:	00813823          	sd	s0,16(sp)
    80003644:	00913423          	sd	s1,8(sp)
    80003648:	02010413          	addi	s0,sp,32
    8000364c:	00050493          	mv	s1,a0
    80003650:	00008797          	auipc	a5,0x8
    80003654:	da078793          	addi	a5,a5,-608 # 8000b3f0 <_ZTV7WorkerC+0x10>
    80003658:	00f53023          	sd	a5,0(a0)
    8000365c:	fffff097          	auipc	ra,0xfffff
    80003660:	fd4080e7          	jalr	-44(ra) # 80002630 <_ZN6ThreadD1Ev>
    80003664:	00048513          	mv	a0,s1
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	c1c080e7          	jalr	-996(ra) # 80001284 <_ZdlPv>
    80003670:	01813083          	ld	ra,24(sp)
    80003674:	01013403          	ld	s0,16(sp)
    80003678:	00813483          	ld	s1,8(sp)
    8000367c:	02010113          	addi	sp,sp,32
    80003680:	00008067          	ret

0000000080003684 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003684:	ff010113          	addi	sp,sp,-16
    80003688:	00113423          	sd	ra,8(sp)
    8000368c:	00813023          	sd	s0,0(sp)
    80003690:	01010413          	addi	s0,sp,16
    80003694:	00008797          	auipc	a5,0x8
    80003698:	d8478793          	addi	a5,a5,-636 # 8000b418 <_ZTV7WorkerD+0x10>
    8000369c:	00f53023          	sd	a5,0(a0)
    800036a0:	fffff097          	auipc	ra,0xfffff
    800036a4:	f90080e7          	jalr	-112(ra) # 80002630 <_ZN6ThreadD1Ev>
    800036a8:	00813083          	ld	ra,8(sp)
    800036ac:	00013403          	ld	s0,0(sp)
    800036b0:	01010113          	addi	sp,sp,16
    800036b4:	00008067          	ret

00000000800036b8 <_ZN7WorkerDD0Ev>:
    800036b8:	fe010113          	addi	sp,sp,-32
    800036bc:	00113c23          	sd	ra,24(sp)
    800036c0:	00813823          	sd	s0,16(sp)
    800036c4:	00913423          	sd	s1,8(sp)
    800036c8:	02010413          	addi	s0,sp,32
    800036cc:	00050493          	mv	s1,a0
    800036d0:	00008797          	auipc	a5,0x8
    800036d4:	d4878793          	addi	a5,a5,-696 # 8000b418 <_ZTV7WorkerD+0x10>
    800036d8:	00f53023          	sd	a5,0(a0)
    800036dc:	fffff097          	auipc	ra,0xfffff
    800036e0:	f54080e7          	jalr	-172(ra) # 80002630 <_ZN6ThreadD1Ev>
    800036e4:	00048513          	mv	a0,s1
    800036e8:	ffffe097          	auipc	ra,0xffffe
    800036ec:	b9c080e7          	jalr	-1124(ra) # 80001284 <_ZdlPv>
    800036f0:	01813083          	ld	ra,24(sp)
    800036f4:	01013403          	ld	s0,16(sp)
    800036f8:	00813483          	ld	s1,8(sp)
    800036fc:	02010113          	addi	sp,sp,32
    80003700:	00008067          	ret

0000000080003704 <_ZN7WorkerA3runEv>:
    void run() override {
    80003704:	ff010113          	addi	sp,sp,-16
    80003708:	00113423          	sd	ra,8(sp)
    8000370c:	00813023          	sd	s0,0(sp)
    80003710:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003714:	00000593          	li	a1,0
    80003718:	fffff097          	auipc	ra,0xfffff
    8000371c:	774080e7          	jalr	1908(ra) # 80002e8c <_ZN7WorkerA11workerBodyAEPv>
    }
    80003720:	00813083          	ld	ra,8(sp)
    80003724:	00013403          	ld	s0,0(sp)
    80003728:	01010113          	addi	sp,sp,16
    8000372c:	00008067          	ret

0000000080003730 <_ZN7WorkerB3runEv>:
    void run() override {
    80003730:	ff010113          	addi	sp,sp,-16
    80003734:	00113423          	sd	ra,8(sp)
    80003738:	00813023          	sd	s0,0(sp)
    8000373c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003740:	00000593          	li	a1,0
    80003744:	00000097          	auipc	ra,0x0
    80003748:	814080e7          	jalr	-2028(ra) # 80002f58 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000374c:	00813083          	ld	ra,8(sp)
    80003750:	00013403          	ld	s0,0(sp)
    80003754:	01010113          	addi	sp,sp,16
    80003758:	00008067          	ret

000000008000375c <_ZN7WorkerC3runEv>:
    void run() override {
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00113423          	sd	ra,8(sp)
    80003764:	00813023          	sd	s0,0(sp)
    80003768:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000376c:	00000593          	li	a1,0
    80003770:	00000097          	auipc	ra,0x0
    80003774:	8bc080e7          	jalr	-1860(ra) # 8000302c <_ZN7WorkerC11workerBodyCEPv>
    }
    80003778:	00813083          	ld	ra,8(sp)
    8000377c:	00013403          	ld	s0,0(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret

0000000080003788 <_ZN7WorkerD3runEv>:
    void run() override {
    80003788:	ff010113          	addi	sp,sp,-16
    8000378c:	00113423          	sd	ra,8(sp)
    80003790:	00813023          	sd	s0,0(sp)
    80003794:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003798:	00000593          	li	a1,0
    8000379c:	00000097          	auipc	ra,0x0
    800037a0:	a10080e7          	jalr	-1520(ra) # 800031ac <_ZN7WorkerD11workerBodyDEPv>
    }
    800037a4:	00813083          	ld	ra,8(sp)
    800037a8:	00013403          	ld	s0,0(sp)
    800037ac:	01010113          	addi	sp,sp,16
    800037b0:	00008067          	ret

00000000800037b4 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800037b4:	f8010113          	addi	sp,sp,-128
    800037b8:	06113c23          	sd	ra,120(sp)
    800037bc:	06813823          	sd	s0,112(sp)
    800037c0:	06913423          	sd	s1,104(sp)
    800037c4:	07213023          	sd	s2,96(sp)
    800037c8:	05313c23          	sd	s3,88(sp)
    800037cc:	05413823          	sd	s4,80(sp)
    800037d0:	05513423          	sd	s5,72(sp)
    800037d4:	05613023          	sd	s6,64(sp)
    800037d8:	03713c23          	sd	s7,56(sp)
    800037dc:	03813823          	sd	s8,48(sp)
    800037e0:	03913423          	sd	s9,40(sp)
    800037e4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800037e8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800037ec:	00006517          	auipc	a0,0x6
    800037f0:	95450513          	addi	a0,a0,-1708 # 80009140 <_ZN15MemoryAllocator10DBlockSizeE+0x120>
    800037f4:	00001097          	auipc	ra,0x1
    800037f8:	578080e7          	jalr	1400(ra) # 80004d6c <_Z11printStringPKc>
    getString(input, 30);
    800037fc:	01e00593          	li	a1,30
    80003800:	f8040493          	addi	s1,s0,-128
    80003804:	00048513          	mv	a0,s1
    80003808:	00001097          	auipc	ra,0x1
    8000380c:	5ec080e7          	jalr	1516(ra) # 80004df4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003810:	00048513          	mv	a0,s1
    80003814:	00001097          	auipc	ra,0x1
    80003818:	6b8080e7          	jalr	1720(ra) # 80004ecc <_Z11stringToIntPKc>
    8000381c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003820:	00006517          	auipc	a0,0x6
    80003824:	94050513          	addi	a0,a0,-1728 # 80009160 <_ZN15MemoryAllocator10DBlockSizeE+0x140>
    80003828:	00001097          	auipc	ra,0x1
    8000382c:	544080e7          	jalr	1348(ra) # 80004d6c <_Z11printStringPKc>
    getString(input, 30);
    80003830:	01e00593          	li	a1,30
    80003834:	00048513          	mv	a0,s1
    80003838:	00001097          	auipc	ra,0x1
    8000383c:	5bc080e7          	jalr	1468(ra) # 80004df4 <_Z9getStringPci>
    n = stringToInt(input);
    80003840:	00048513          	mv	a0,s1
    80003844:	00001097          	auipc	ra,0x1
    80003848:	688080e7          	jalr	1672(ra) # 80004ecc <_Z11stringToIntPKc>
    8000384c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003850:	00006517          	auipc	a0,0x6
    80003854:	93050513          	addi	a0,a0,-1744 # 80009180 <_ZN15MemoryAllocator10DBlockSizeE+0x160>
    80003858:	00001097          	auipc	ra,0x1
    8000385c:	514080e7          	jalr	1300(ra) # 80004d6c <_Z11printStringPKc>
    printInt(threadNum);
    80003860:	00000613          	li	a2,0
    80003864:	00a00593          	li	a1,10
    80003868:	00098513          	mv	a0,s3
    8000386c:	00001097          	auipc	ra,0x1
    80003870:	6b0080e7          	jalr	1712(ra) # 80004f1c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003874:	00006517          	auipc	a0,0x6
    80003878:	92450513          	addi	a0,a0,-1756 # 80009198 <_ZN15MemoryAllocator10DBlockSizeE+0x178>
    8000387c:	00001097          	auipc	ra,0x1
    80003880:	4f0080e7          	jalr	1264(ra) # 80004d6c <_Z11printStringPKc>
    printInt(n);
    80003884:	00000613          	li	a2,0
    80003888:	00a00593          	li	a1,10
    8000388c:	00048513          	mv	a0,s1
    80003890:	00001097          	auipc	ra,0x1
    80003894:	68c080e7          	jalr	1676(ra) # 80004f1c <_Z8printIntiii>
    printString(".\n");
    80003898:	00006517          	auipc	a0,0x6
    8000389c:	91850513          	addi	a0,a0,-1768 # 800091b0 <_ZN15MemoryAllocator10DBlockSizeE+0x190>
    800038a0:	00001097          	auipc	ra,0x1
    800038a4:	4cc080e7          	jalr	1228(ra) # 80004d6c <_Z11printStringPKc>
    if (threadNum > n) {
    800038a8:	0334c463          	blt	s1,s3,800038d0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800038ac:	03305c63          	blez	s3,800038e4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800038b0:	03800513          	li	a0,56
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	980080e7          	jalr	-1664(ra) # 80001234 <_Znwm>
    800038bc:	00050a93          	mv	s5,a0
    800038c0:	00048593          	mv	a1,s1
    800038c4:	00001097          	auipc	ra,0x1
    800038c8:	778080e7          	jalr	1912(ra) # 8000503c <_ZN9BufferCPPC1Ei>
    800038cc:	0300006f          	j	800038fc <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800038d0:	00006517          	auipc	a0,0x6
    800038d4:	8e850513          	addi	a0,a0,-1816 # 800091b8 <_ZN15MemoryAllocator10DBlockSizeE+0x198>
    800038d8:	00001097          	auipc	ra,0x1
    800038dc:	494080e7          	jalr	1172(ra) # 80004d6c <_Z11printStringPKc>
        return;
    800038e0:	0140006f          	j	800038f4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800038e4:	00006517          	auipc	a0,0x6
    800038e8:	91450513          	addi	a0,a0,-1772 # 800091f8 <_ZN15MemoryAllocator10DBlockSizeE+0x1d8>
    800038ec:	00001097          	auipc	ra,0x1
    800038f0:	480080e7          	jalr	1152(ra) # 80004d6c <_Z11printStringPKc>
        return;
    800038f4:	000c0113          	mv	sp,s8
    800038f8:	2140006f          	j	80003b0c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800038fc:	01000513          	li	a0,16
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	934080e7          	jalr	-1740(ra) # 80001234 <_Znwm>
    80003908:	00050913          	mv	s2,a0
    8000390c:	00000593          	li	a1,0
    80003910:	fffff097          	auipc	ra,0xfffff
    80003914:	ef0080e7          	jalr	-272(ra) # 80002800 <_ZN9SemaphoreC1Ej>
    80003918:	00008797          	auipc	a5,0x8
    8000391c:	d127b823          	sd	s2,-752(a5) # 8000b628 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003920:	00399793          	slli	a5,s3,0x3
    80003924:	00f78793          	addi	a5,a5,15
    80003928:	ff07f793          	andi	a5,a5,-16
    8000392c:	40f10133          	sub	sp,sp,a5
    80003930:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003934:	0019871b          	addiw	a4,s3,1
    80003938:	00171793          	slli	a5,a4,0x1
    8000393c:	00e787b3          	add	a5,a5,a4
    80003940:	00379793          	slli	a5,a5,0x3
    80003944:	00f78793          	addi	a5,a5,15
    80003948:	ff07f793          	andi	a5,a5,-16
    8000394c:	40f10133          	sub	sp,sp,a5
    80003950:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003954:	00199493          	slli	s1,s3,0x1
    80003958:	013484b3          	add	s1,s1,s3
    8000395c:	00349493          	slli	s1,s1,0x3
    80003960:	009b04b3          	add	s1,s6,s1
    80003964:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003968:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000396c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003970:	02800513          	li	a0,40
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	8c0080e7          	jalr	-1856(ra) # 80001234 <_Znwm>
    8000397c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003980:	fffff097          	auipc	ra,0xfffff
    80003984:	dec080e7          	jalr	-532(ra) # 8000276c <_ZN6ThreadC1Ev>
    80003988:	00008797          	auipc	a5,0x8
    8000398c:	b0878793          	addi	a5,a5,-1272 # 8000b490 <_ZTV8Consumer+0x10>
    80003990:	00fbb023          	sd	a5,0(s7)
    80003994:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003998:	000b8513          	mv	a0,s7
    8000399c:	fffff097          	auipc	ra,0xfffff
    800039a0:	e08080e7          	jalr	-504(ra) # 800027a4 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800039a4:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800039a8:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800039ac:	00008797          	auipc	a5,0x8
    800039b0:	c7c7b783          	ld	a5,-900(a5) # 8000b628 <_ZL10waitForAll>
    800039b4:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800039b8:	02800513          	li	a0,40
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	878080e7          	jalr	-1928(ra) # 80001234 <_Znwm>
    800039c4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800039c8:	fffff097          	auipc	ra,0xfffff
    800039cc:	da4080e7          	jalr	-604(ra) # 8000276c <_ZN6ThreadC1Ev>
    800039d0:	00008797          	auipc	a5,0x8
    800039d4:	a7078793          	addi	a5,a5,-1424 # 8000b440 <_ZTV16ProducerKeyborad+0x10>
    800039d8:	00f4b023          	sd	a5,0(s1)
    800039dc:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800039e0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800039e4:	00048513          	mv	a0,s1
    800039e8:	fffff097          	auipc	ra,0xfffff
    800039ec:	dbc080e7          	jalr	-580(ra) # 800027a4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800039f0:	00100913          	li	s2,1
    800039f4:	0300006f          	j	80003a24 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800039f8:	00008797          	auipc	a5,0x8
    800039fc:	a7078793          	addi	a5,a5,-1424 # 8000b468 <_ZTV8Producer+0x10>
    80003a00:	00fcb023          	sd	a5,0(s9)
    80003a04:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003a08:	00391793          	slli	a5,s2,0x3
    80003a0c:	00fa07b3          	add	a5,s4,a5
    80003a10:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003a14:	000c8513          	mv	a0,s9
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	d8c080e7          	jalr	-628(ra) # 800027a4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003a20:	0019091b          	addiw	s2,s2,1
    80003a24:	05395263          	bge	s2,s3,80003a68 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003a28:	00191493          	slli	s1,s2,0x1
    80003a2c:	012484b3          	add	s1,s1,s2
    80003a30:	00349493          	slli	s1,s1,0x3
    80003a34:	009b04b3          	add	s1,s6,s1
    80003a38:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003a3c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003a40:	00008797          	auipc	a5,0x8
    80003a44:	be87b783          	ld	a5,-1048(a5) # 8000b628 <_ZL10waitForAll>
    80003a48:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003a4c:	02800513          	li	a0,40
    80003a50:	ffffd097          	auipc	ra,0xffffd
    80003a54:	7e4080e7          	jalr	2020(ra) # 80001234 <_Znwm>
    80003a58:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003a5c:	fffff097          	auipc	ra,0xfffff
    80003a60:	d10080e7          	jalr	-752(ra) # 8000276c <_ZN6ThreadC1Ev>
    80003a64:	f95ff06f          	j	800039f8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	d70080e7          	jalr	-656(ra) # 800027d8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003a70:	00000493          	li	s1,0
    80003a74:	0099ce63          	blt	s3,s1,80003a90 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003a78:	00008517          	auipc	a0,0x8
    80003a7c:	bb053503          	ld	a0,-1104(a0) # 8000b628 <_ZL10waitForAll>
    80003a80:	fffff097          	auipc	ra,0xfffff
    80003a84:	db8080e7          	jalr	-584(ra) # 80002838 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003a88:	0014849b          	addiw	s1,s1,1
    80003a8c:	fe9ff06f          	j	80003a74 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003a90:	00008517          	auipc	a0,0x8
    80003a94:	b9853503          	ld	a0,-1128(a0) # 8000b628 <_ZL10waitForAll>
    80003a98:	00050863          	beqz	a0,80003aa8 <_Z20testConsumerProducerv+0x2f4>
    80003a9c:	00053783          	ld	a5,0(a0)
    80003aa0:	0087b783          	ld	a5,8(a5)
    80003aa4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003aa8:	00000493          	li	s1,0
    80003aac:	0080006f          	j	80003ab4 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003ab0:	0014849b          	addiw	s1,s1,1
    80003ab4:	0334d263          	bge	s1,s3,80003ad8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003ab8:	00349793          	slli	a5,s1,0x3
    80003abc:	00fa07b3          	add	a5,s4,a5
    80003ac0:	0007b503          	ld	a0,0(a5)
    80003ac4:	fe0506e3          	beqz	a0,80003ab0 <_Z20testConsumerProducerv+0x2fc>
    80003ac8:	00053783          	ld	a5,0(a0)
    80003acc:	0087b783          	ld	a5,8(a5)
    80003ad0:	000780e7          	jalr	a5
    80003ad4:	fddff06f          	j	80003ab0 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003ad8:	000b8a63          	beqz	s7,80003aec <_Z20testConsumerProducerv+0x338>
    80003adc:	000bb783          	ld	a5,0(s7)
    80003ae0:	0087b783          	ld	a5,8(a5)
    80003ae4:	000b8513          	mv	a0,s7
    80003ae8:	000780e7          	jalr	a5
    delete buffer;
    80003aec:	000a8e63          	beqz	s5,80003b08 <_Z20testConsumerProducerv+0x354>
    80003af0:	000a8513          	mv	a0,s5
    80003af4:	00002097          	auipc	ra,0x2
    80003af8:	840080e7          	jalr	-1984(ra) # 80005334 <_ZN9BufferCPPD1Ev>
    80003afc:	000a8513          	mv	a0,s5
    80003b00:	ffffd097          	auipc	ra,0xffffd
    80003b04:	784080e7          	jalr	1924(ra) # 80001284 <_ZdlPv>
    80003b08:	000c0113          	mv	sp,s8
}
    80003b0c:	f8040113          	addi	sp,s0,-128
    80003b10:	07813083          	ld	ra,120(sp)
    80003b14:	07013403          	ld	s0,112(sp)
    80003b18:	06813483          	ld	s1,104(sp)
    80003b1c:	06013903          	ld	s2,96(sp)
    80003b20:	05813983          	ld	s3,88(sp)
    80003b24:	05013a03          	ld	s4,80(sp)
    80003b28:	04813a83          	ld	s5,72(sp)
    80003b2c:	04013b03          	ld	s6,64(sp)
    80003b30:	03813b83          	ld	s7,56(sp)
    80003b34:	03013c03          	ld	s8,48(sp)
    80003b38:	02813c83          	ld	s9,40(sp)
    80003b3c:	08010113          	addi	sp,sp,128
    80003b40:	00008067          	ret
    80003b44:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003b48:	000a8513          	mv	a0,s5
    80003b4c:	ffffd097          	auipc	ra,0xffffd
    80003b50:	738080e7          	jalr	1848(ra) # 80001284 <_ZdlPv>
    80003b54:	00048513          	mv	a0,s1
    80003b58:	00009097          	auipc	ra,0x9
    80003b5c:	bd0080e7          	jalr	-1072(ra) # 8000c728 <_Unwind_Resume>
    80003b60:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003b64:	00090513          	mv	a0,s2
    80003b68:	ffffd097          	auipc	ra,0xffffd
    80003b6c:	71c080e7          	jalr	1820(ra) # 80001284 <_ZdlPv>
    80003b70:	00048513          	mv	a0,s1
    80003b74:	00009097          	auipc	ra,0x9
    80003b78:	bb4080e7          	jalr	-1100(ra) # 8000c728 <_Unwind_Resume>
    80003b7c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003b80:	000b8513          	mv	a0,s7
    80003b84:	ffffd097          	auipc	ra,0xffffd
    80003b88:	700080e7          	jalr	1792(ra) # 80001284 <_ZdlPv>
    80003b8c:	00048513          	mv	a0,s1
    80003b90:	00009097          	auipc	ra,0x9
    80003b94:	b98080e7          	jalr	-1128(ra) # 8000c728 <_Unwind_Resume>
    80003b98:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003b9c:	00048513          	mv	a0,s1
    80003ba0:	ffffd097          	auipc	ra,0xffffd
    80003ba4:	6e4080e7          	jalr	1764(ra) # 80001284 <_ZdlPv>
    80003ba8:	00090513          	mv	a0,s2
    80003bac:	00009097          	auipc	ra,0x9
    80003bb0:	b7c080e7          	jalr	-1156(ra) # 8000c728 <_Unwind_Resume>
    80003bb4:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003bb8:	000c8513          	mv	a0,s9
    80003bbc:	ffffd097          	auipc	ra,0xffffd
    80003bc0:	6c8080e7          	jalr	1736(ra) # 80001284 <_ZdlPv>
    80003bc4:	00048513          	mv	a0,s1
    80003bc8:	00009097          	auipc	ra,0x9
    80003bcc:	b60080e7          	jalr	-1184(ra) # 8000c728 <_Unwind_Resume>

0000000080003bd0 <_ZN8Consumer3runEv>:
    void run() override {
    80003bd0:	fd010113          	addi	sp,sp,-48
    80003bd4:	02113423          	sd	ra,40(sp)
    80003bd8:	02813023          	sd	s0,32(sp)
    80003bdc:	00913c23          	sd	s1,24(sp)
    80003be0:	01213823          	sd	s2,16(sp)
    80003be4:	01313423          	sd	s3,8(sp)
    80003be8:	03010413          	addi	s0,sp,48
    80003bec:	00050913          	mv	s2,a0
        int i = 0;
    80003bf0:	00000993          	li	s3,0
    80003bf4:	0100006f          	j	80003c04 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003bf8:	00a00513          	li	a0,10
    80003bfc:	fffff097          	auipc	ra,0xfffff
    80003c00:	ce8080e7          	jalr	-792(ra) # 800028e4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003c04:	00008797          	auipc	a5,0x8
    80003c08:	a1c7a783          	lw	a5,-1508(a5) # 8000b620 <_ZL9threadEnd>
    80003c0c:	04079a63          	bnez	a5,80003c60 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003c10:	02093783          	ld	a5,32(s2)
    80003c14:	0087b503          	ld	a0,8(a5)
    80003c18:	00001097          	auipc	ra,0x1
    80003c1c:	608080e7          	jalr	1544(ra) # 80005220 <_ZN9BufferCPP3getEv>
            i++;
    80003c20:	0019849b          	addiw	s1,s3,1
    80003c24:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003c28:	0ff57513          	andi	a0,a0,255
    80003c2c:	fffff097          	auipc	ra,0xfffff
    80003c30:	cb8080e7          	jalr	-840(ra) # 800028e4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003c34:	05000793          	li	a5,80
    80003c38:	02f4e4bb          	remw	s1,s1,a5
    80003c3c:	fc0494e3          	bnez	s1,80003c04 <_ZN8Consumer3runEv+0x34>
    80003c40:	fb9ff06f          	j	80003bf8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003c44:	02093783          	ld	a5,32(s2)
    80003c48:	0087b503          	ld	a0,8(a5)
    80003c4c:	00001097          	auipc	ra,0x1
    80003c50:	5d4080e7          	jalr	1492(ra) # 80005220 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003c54:	0ff57513          	andi	a0,a0,255
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	c8c080e7          	jalr	-884(ra) # 800028e4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003c60:	02093783          	ld	a5,32(s2)
    80003c64:	0087b503          	ld	a0,8(a5)
    80003c68:	00001097          	auipc	ra,0x1
    80003c6c:	644080e7          	jalr	1604(ra) # 800052ac <_ZN9BufferCPP6getCntEv>
    80003c70:	fca04ae3          	bgtz	a0,80003c44 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003c74:	02093783          	ld	a5,32(s2)
    80003c78:	0107b503          	ld	a0,16(a5)
    80003c7c:	fffff097          	auipc	ra,0xfffff
    80003c80:	be8080e7          	jalr	-1048(ra) # 80002864 <_ZN9Semaphore6signalEv>
    }
    80003c84:	02813083          	ld	ra,40(sp)
    80003c88:	02013403          	ld	s0,32(sp)
    80003c8c:	01813483          	ld	s1,24(sp)
    80003c90:	01013903          	ld	s2,16(sp)
    80003c94:	00813983          	ld	s3,8(sp)
    80003c98:	03010113          	addi	sp,sp,48
    80003c9c:	00008067          	ret

0000000080003ca0 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003ca0:	ff010113          	addi	sp,sp,-16
    80003ca4:	00113423          	sd	ra,8(sp)
    80003ca8:	00813023          	sd	s0,0(sp)
    80003cac:	01010413          	addi	s0,sp,16
    80003cb0:	00007797          	auipc	a5,0x7
    80003cb4:	7e078793          	addi	a5,a5,2016 # 8000b490 <_ZTV8Consumer+0x10>
    80003cb8:	00f53023          	sd	a5,0(a0)
    80003cbc:	fffff097          	auipc	ra,0xfffff
    80003cc0:	974080e7          	jalr	-1676(ra) # 80002630 <_ZN6ThreadD1Ev>
    80003cc4:	00813083          	ld	ra,8(sp)
    80003cc8:	00013403          	ld	s0,0(sp)
    80003ccc:	01010113          	addi	sp,sp,16
    80003cd0:	00008067          	ret

0000000080003cd4 <_ZN8ConsumerD0Ev>:
    80003cd4:	fe010113          	addi	sp,sp,-32
    80003cd8:	00113c23          	sd	ra,24(sp)
    80003cdc:	00813823          	sd	s0,16(sp)
    80003ce0:	00913423          	sd	s1,8(sp)
    80003ce4:	02010413          	addi	s0,sp,32
    80003ce8:	00050493          	mv	s1,a0
    80003cec:	00007797          	auipc	a5,0x7
    80003cf0:	7a478793          	addi	a5,a5,1956 # 8000b490 <_ZTV8Consumer+0x10>
    80003cf4:	00f53023          	sd	a5,0(a0)
    80003cf8:	fffff097          	auipc	ra,0xfffff
    80003cfc:	938080e7          	jalr	-1736(ra) # 80002630 <_ZN6ThreadD1Ev>
    80003d00:	00048513          	mv	a0,s1
    80003d04:	ffffd097          	auipc	ra,0xffffd
    80003d08:	580080e7          	jalr	1408(ra) # 80001284 <_ZdlPv>
    80003d0c:	01813083          	ld	ra,24(sp)
    80003d10:	01013403          	ld	s0,16(sp)
    80003d14:	00813483          	ld	s1,8(sp)
    80003d18:	02010113          	addi	sp,sp,32
    80003d1c:	00008067          	ret

0000000080003d20 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003d20:	ff010113          	addi	sp,sp,-16
    80003d24:	00113423          	sd	ra,8(sp)
    80003d28:	00813023          	sd	s0,0(sp)
    80003d2c:	01010413          	addi	s0,sp,16
    80003d30:	00007797          	auipc	a5,0x7
    80003d34:	71078793          	addi	a5,a5,1808 # 8000b440 <_ZTV16ProducerKeyborad+0x10>
    80003d38:	00f53023          	sd	a5,0(a0)
    80003d3c:	fffff097          	auipc	ra,0xfffff
    80003d40:	8f4080e7          	jalr	-1804(ra) # 80002630 <_ZN6ThreadD1Ev>
    80003d44:	00813083          	ld	ra,8(sp)
    80003d48:	00013403          	ld	s0,0(sp)
    80003d4c:	01010113          	addi	sp,sp,16
    80003d50:	00008067          	ret

0000000080003d54 <_ZN16ProducerKeyboradD0Ev>:
    80003d54:	fe010113          	addi	sp,sp,-32
    80003d58:	00113c23          	sd	ra,24(sp)
    80003d5c:	00813823          	sd	s0,16(sp)
    80003d60:	00913423          	sd	s1,8(sp)
    80003d64:	02010413          	addi	s0,sp,32
    80003d68:	00050493          	mv	s1,a0
    80003d6c:	00007797          	auipc	a5,0x7
    80003d70:	6d478793          	addi	a5,a5,1748 # 8000b440 <_ZTV16ProducerKeyborad+0x10>
    80003d74:	00f53023          	sd	a5,0(a0)
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	8b8080e7          	jalr	-1864(ra) # 80002630 <_ZN6ThreadD1Ev>
    80003d80:	00048513          	mv	a0,s1
    80003d84:	ffffd097          	auipc	ra,0xffffd
    80003d88:	500080e7          	jalr	1280(ra) # 80001284 <_ZdlPv>
    80003d8c:	01813083          	ld	ra,24(sp)
    80003d90:	01013403          	ld	s0,16(sp)
    80003d94:	00813483          	ld	s1,8(sp)
    80003d98:	02010113          	addi	sp,sp,32
    80003d9c:	00008067          	ret

0000000080003da0 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003da0:	ff010113          	addi	sp,sp,-16
    80003da4:	00113423          	sd	ra,8(sp)
    80003da8:	00813023          	sd	s0,0(sp)
    80003dac:	01010413          	addi	s0,sp,16
    80003db0:	00007797          	auipc	a5,0x7
    80003db4:	6b878793          	addi	a5,a5,1720 # 8000b468 <_ZTV8Producer+0x10>
    80003db8:	00f53023          	sd	a5,0(a0)
    80003dbc:	fffff097          	auipc	ra,0xfffff
    80003dc0:	874080e7          	jalr	-1932(ra) # 80002630 <_ZN6ThreadD1Ev>
    80003dc4:	00813083          	ld	ra,8(sp)
    80003dc8:	00013403          	ld	s0,0(sp)
    80003dcc:	01010113          	addi	sp,sp,16
    80003dd0:	00008067          	ret

0000000080003dd4 <_ZN8ProducerD0Ev>:
    80003dd4:	fe010113          	addi	sp,sp,-32
    80003dd8:	00113c23          	sd	ra,24(sp)
    80003ddc:	00813823          	sd	s0,16(sp)
    80003de0:	00913423          	sd	s1,8(sp)
    80003de4:	02010413          	addi	s0,sp,32
    80003de8:	00050493          	mv	s1,a0
    80003dec:	00007797          	auipc	a5,0x7
    80003df0:	67c78793          	addi	a5,a5,1660 # 8000b468 <_ZTV8Producer+0x10>
    80003df4:	00f53023          	sd	a5,0(a0)
    80003df8:	fffff097          	auipc	ra,0xfffff
    80003dfc:	838080e7          	jalr	-1992(ra) # 80002630 <_ZN6ThreadD1Ev>
    80003e00:	00048513          	mv	a0,s1
    80003e04:	ffffd097          	auipc	ra,0xffffd
    80003e08:	480080e7          	jalr	1152(ra) # 80001284 <_ZdlPv>
    80003e0c:	01813083          	ld	ra,24(sp)
    80003e10:	01013403          	ld	s0,16(sp)
    80003e14:	00813483          	ld	s1,8(sp)
    80003e18:	02010113          	addi	sp,sp,32
    80003e1c:	00008067          	ret

0000000080003e20 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003e20:	fe010113          	addi	sp,sp,-32
    80003e24:	00113c23          	sd	ra,24(sp)
    80003e28:	00813823          	sd	s0,16(sp)
    80003e2c:	00913423          	sd	s1,8(sp)
    80003e30:	02010413          	addi	s0,sp,32
    80003e34:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x35) {
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	634080e7          	jalr	1588(ra) # 8000246c <_Z4getcv>
    80003e40:	0005059b          	sext.w	a1,a0
    80003e44:	03500793          	li	a5,53
    80003e48:	00f58c63          	beq	a1,a5,80003e60 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003e4c:	0204b783          	ld	a5,32(s1)
    80003e50:	0087b503          	ld	a0,8(a5)
    80003e54:	00001097          	auipc	ra,0x1
    80003e58:	33c080e7          	jalr	828(ra) # 80005190 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x35) {
    80003e5c:	fddff06f          	j	80003e38 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003e60:	00100793          	li	a5,1
    80003e64:	00007717          	auipc	a4,0x7
    80003e68:	7af72e23          	sw	a5,1980(a4) # 8000b620 <_ZL9threadEnd>
        td->buffer->put('!');
    80003e6c:	0204b783          	ld	a5,32(s1)
    80003e70:	02100593          	li	a1,33
    80003e74:	0087b503          	ld	a0,8(a5)
    80003e78:	00001097          	auipc	ra,0x1
    80003e7c:	318080e7          	jalr	792(ra) # 80005190 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003e80:	0204b783          	ld	a5,32(s1)
    80003e84:	0107b503          	ld	a0,16(a5)
    80003e88:	fffff097          	auipc	ra,0xfffff
    80003e8c:	9dc080e7          	jalr	-1572(ra) # 80002864 <_ZN9Semaphore6signalEv>
    }
    80003e90:	01813083          	ld	ra,24(sp)
    80003e94:	01013403          	ld	s0,16(sp)
    80003e98:	00813483          	ld	s1,8(sp)
    80003e9c:	02010113          	addi	sp,sp,32
    80003ea0:	00008067          	ret

0000000080003ea4 <_ZN8Producer3runEv>:
    void run() override {
    80003ea4:	fe010113          	addi	sp,sp,-32
    80003ea8:	00113c23          	sd	ra,24(sp)
    80003eac:	00813823          	sd	s0,16(sp)
    80003eb0:	00913423          	sd	s1,8(sp)
    80003eb4:	02010413          	addi	s0,sp,32
    80003eb8:	00050493          	mv	s1,a0
        while (!threadEnd) {
    80003ebc:	00007797          	auipc	a5,0x7
    80003ec0:	7647a783          	lw	a5,1892(a5) # 8000b620 <_ZL9threadEnd>
    80003ec4:	02079063          	bnez	a5,80003ee4 <_ZN8Producer3runEv+0x40>
            td->buffer->put(td->id + '0');
    80003ec8:	0204b783          	ld	a5,32(s1)
    80003ecc:	0007a583          	lw	a1,0(a5)
    80003ed0:	0305859b          	addiw	a1,a1,48
    80003ed4:	0087b503          	ld	a0,8(a5)
    80003ed8:	00001097          	auipc	ra,0x1
    80003edc:	2b8080e7          	jalr	696(ra) # 80005190 <_ZN9BufferCPP3putEi>
        while (!threadEnd) {
    80003ee0:	fddff06f          	j	80003ebc <_ZN8Producer3runEv+0x18>
        td->sem->signal();
    80003ee4:	0204b783          	ld	a5,32(s1)
    80003ee8:	0107b503          	ld	a0,16(a5)
    80003eec:	fffff097          	auipc	ra,0xfffff
    80003ef0:	978080e7          	jalr	-1672(ra) # 80002864 <_ZN9Semaphore6signalEv>
    }
    80003ef4:	01813083          	ld	ra,24(sp)
    80003ef8:	01013403          	ld	s0,16(sp)
    80003efc:	00813483          	ld	s1,8(sp)
    80003f00:	02010113          	addi	sp,sp,32
    80003f04:	00008067          	ret

0000000080003f08 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003f08:	fe010113          	addi	sp,sp,-32
    80003f0c:	00113c23          	sd	ra,24(sp)
    80003f10:	00813823          	sd	s0,16(sp)
    80003f14:	00913423          	sd	s1,8(sp)
    80003f18:	01213023          	sd	s2,0(sp)
    80003f1c:	02010413          	addi	s0,sp,32
    80003f20:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003f24:	00100793          	li	a5,1
    80003f28:	02a7f863          	bgeu	a5,a0,80003f58 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003f2c:	00a00793          	li	a5,10
    80003f30:	02f577b3          	remu	a5,a0,a5
    80003f34:	02078e63          	beqz	a5,80003f70 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003f38:	fff48513          	addi	a0,s1,-1
    80003f3c:	00000097          	auipc	ra,0x0
    80003f40:	fcc080e7          	jalr	-52(ra) # 80003f08 <_ZL9fibonaccim>
    80003f44:	00050913          	mv	s2,a0
    80003f48:	ffe48513          	addi	a0,s1,-2
    80003f4c:	00000097          	auipc	ra,0x0
    80003f50:	fbc080e7          	jalr	-68(ra) # 80003f08 <_ZL9fibonaccim>
    80003f54:	00a90533          	add	a0,s2,a0
}
    80003f58:	01813083          	ld	ra,24(sp)
    80003f5c:	01013403          	ld	s0,16(sp)
    80003f60:	00813483          	ld	s1,8(sp)
    80003f64:	00013903          	ld	s2,0(sp)
    80003f68:	02010113          	addi	sp,sp,32
    80003f6c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	368080e7          	jalr	872(ra) # 800022d8 <_Z15thread_dispatchv>
    80003f78:	fc1ff06f          	j	80003f38 <_ZL9fibonaccim+0x30>

0000000080003f7c <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003f7c:	fe010113          	addi	sp,sp,-32
    80003f80:	00113c23          	sd	ra,24(sp)
    80003f84:	00813823          	sd	s0,16(sp)
    80003f88:	00913423          	sd	s1,8(sp)
    80003f8c:	01213023          	sd	s2,0(sp)
    80003f90:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003f94:	00a00493          	li	s1,10
    80003f98:	0400006f          	j	80003fd8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f9c:	00005517          	auipc	a0,0x5
    80003fa0:	2ec50513          	addi	a0,a0,748 # 80009288 <_ZN15MemoryAllocator10DBlockSizeE+0x268>
    80003fa4:	00001097          	auipc	ra,0x1
    80003fa8:	dc8080e7          	jalr	-568(ra) # 80004d6c <_Z11printStringPKc>
    80003fac:	00000613          	li	a2,0
    80003fb0:	00a00593          	li	a1,10
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	00001097          	auipc	ra,0x1
    80003fbc:	f64080e7          	jalr	-156(ra) # 80004f1c <_Z8printIntiii>
    80003fc0:	00005517          	auipc	a0,0x5
    80003fc4:	4f850513          	addi	a0,a0,1272 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80003fc8:	00001097          	auipc	ra,0x1
    80003fcc:	da4080e7          	jalr	-604(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003fd0:	0014849b          	addiw	s1,s1,1
    80003fd4:	0ff4f493          	andi	s1,s1,255
    80003fd8:	00c00793          	li	a5,12
    80003fdc:	fc97f0e3          	bgeu	a5,s1,80003f9c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003fe0:	00005517          	auipc	a0,0x5
    80003fe4:	2b050513          	addi	a0,a0,688 # 80009290 <_ZN15MemoryAllocator10DBlockSizeE+0x270>
    80003fe8:	00001097          	auipc	ra,0x1
    80003fec:	d84080e7          	jalr	-636(ra) # 80004d6c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ff0:	00500313          	li	t1,5
    thread_dispatch();
    80003ff4:	ffffe097          	auipc	ra,0xffffe
    80003ff8:	2e4080e7          	jalr	740(ra) # 800022d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003ffc:	01000513          	li	a0,16
    80004000:	00000097          	auipc	ra,0x0
    80004004:	f08080e7          	jalr	-248(ra) # 80003f08 <_ZL9fibonaccim>
    80004008:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000400c:	00005517          	auipc	a0,0x5
    80004010:	29450513          	addi	a0,a0,660 # 800092a0 <_ZN15MemoryAllocator10DBlockSizeE+0x280>
    80004014:	00001097          	auipc	ra,0x1
    80004018:	d58080e7          	jalr	-680(ra) # 80004d6c <_Z11printStringPKc>
    8000401c:	00000613          	li	a2,0
    80004020:	00a00593          	li	a1,10
    80004024:	0009051b          	sext.w	a0,s2
    80004028:	00001097          	auipc	ra,0x1
    8000402c:	ef4080e7          	jalr	-268(ra) # 80004f1c <_Z8printIntiii>
    80004030:	00005517          	auipc	a0,0x5
    80004034:	48850513          	addi	a0,a0,1160 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80004038:	00001097          	auipc	ra,0x1
    8000403c:	d34080e7          	jalr	-716(ra) # 80004d6c <_Z11printStringPKc>
    80004040:	0400006f          	j	80004080 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004044:	00005517          	auipc	a0,0x5
    80004048:	24450513          	addi	a0,a0,580 # 80009288 <_ZN15MemoryAllocator10DBlockSizeE+0x268>
    8000404c:	00001097          	auipc	ra,0x1
    80004050:	d20080e7          	jalr	-736(ra) # 80004d6c <_Z11printStringPKc>
    80004054:	00000613          	li	a2,0
    80004058:	00a00593          	li	a1,10
    8000405c:	00048513          	mv	a0,s1
    80004060:	00001097          	auipc	ra,0x1
    80004064:	ebc080e7          	jalr	-324(ra) # 80004f1c <_Z8printIntiii>
    80004068:	00005517          	auipc	a0,0x5
    8000406c:	45050513          	addi	a0,a0,1104 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80004070:	00001097          	auipc	ra,0x1
    80004074:	cfc080e7          	jalr	-772(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004078:	0014849b          	addiw	s1,s1,1
    8000407c:	0ff4f493          	andi	s1,s1,255
    80004080:	00f00793          	li	a5,15
    80004084:	fc97f0e3          	bgeu	a5,s1,80004044 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004088:	00005517          	auipc	a0,0x5
    8000408c:	22850513          	addi	a0,a0,552 # 800092b0 <_ZN15MemoryAllocator10DBlockSizeE+0x290>
    80004090:	00001097          	auipc	ra,0x1
    80004094:	cdc080e7          	jalr	-804(ra) # 80004d6c <_Z11printStringPKc>
    finishedD = true;
    80004098:	00100793          	li	a5,1
    8000409c:	00007717          	auipc	a4,0x7
    800040a0:	58f70a23          	sb	a5,1428(a4) # 8000b630 <_ZL9finishedD>
    thread_dispatch();
    800040a4:	ffffe097          	auipc	ra,0xffffe
    800040a8:	234080e7          	jalr	564(ra) # 800022d8 <_Z15thread_dispatchv>
}
    800040ac:	01813083          	ld	ra,24(sp)
    800040b0:	01013403          	ld	s0,16(sp)
    800040b4:	00813483          	ld	s1,8(sp)
    800040b8:	00013903          	ld	s2,0(sp)
    800040bc:	02010113          	addi	sp,sp,32
    800040c0:	00008067          	ret

00000000800040c4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800040c4:	fe010113          	addi	sp,sp,-32
    800040c8:	00113c23          	sd	ra,24(sp)
    800040cc:	00813823          	sd	s0,16(sp)
    800040d0:	00913423          	sd	s1,8(sp)
    800040d4:	01213023          	sd	s2,0(sp)
    800040d8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800040dc:	00000493          	li	s1,0
    800040e0:	0400006f          	j	80004120 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800040e4:	00005517          	auipc	a0,0x5
    800040e8:	17450513          	addi	a0,a0,372 # 80009258 <_ZN15MemoryAllocator10DBlockSizeE+0x238>
    800040ec:	00001097          	auipc	ra,0x1
    800040f0:	c80080e7          	jalr	-896(ra) # 80004d6c <_Z11printStringPKc>
    800040f4:	00000613          	li	a2,0
    800040f8:	00a00593          	li	a1,10
    800040fc:	00048513          	mv	a0,s1
    80004100:	00001097          	auipc	ra,0x1
    80004104:	e1c080e7          	jalr	-484(ra) # 80004f1c <_Z8printIntiii>
    80004108:	00005517          	auipc	a0,0x5
    8000410c:	3b050513          	addi	a0,a0,944 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80004110:	00001097          	auipc	ra,0x1
    80004114:	c5c080e7          	jalr	-932(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004118:	0014849b          	addiw	s1,s1,1
    8000411c:	0ff4f493          	andi	s1,s1,255
    80004120:	00200793          	li	a5,2
    80004124:	fc97f0e3          	bgeu	a5,s1,800040e4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004128:	00005517          	auipc	a0,0x5
    8000412c:	13850513          	addi	a0,a0,312 # 80009260 <_ZN15MemoryAllocator10DBlockSizeE+0x240>
    80004130:	00001097          	auipc	ra,0x1
    80004134:	c3c080e7          	jalr	-964(ra) # 80004d6c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004138:	00700313          	li	t1,7
    thread_dispatch();
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	19c080e7          	jalr	412(ra) # 800022d8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004144:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004148:	00005517          	auipc	a0,0x5
    8000414c:	12850513          	addi	a0,a0,296 # 80009270 <_ZN15MemoryAllocator10DBlockSizeE+0x250>
    80004150:	00001097          	auipc	ra,0x1
    80004154:	c1c080e7          	jalr	-996(ra) # 80004d6c <_Z11printStringPKc>
    80004158:	00000613          	li	a2,0
    8000415c:	00a00593          	li	a1,10
    80004160:	0009051b          	sext.w	a0,s2
    80004164:	00001097          	auipc	ra,0x1
    80004168:	db8080e7          	jalr	-584(ra) # 80004f1c <_Z8printIntiii>
    8000416c:	00005517          	auipc	a0,0x5
    80004170:	34c50513          	addi	a0,a0,844 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80004174:	00001097          	auipc	ra,0x1
    80004178:	bf8080e7          	jalr	-1032(ra) # 80004d6c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000417c:	00c00513          	li	a0,12
    80004180:	00000097          	auipc	ra,0x0
    80004184:	d88080e7          	jalr	-632(ra) # 80003f08 <_ZL9fibonaccim>
    80004188:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000418c:	00005517          	auipc	a0,0x5
    80004190:	0ec50513          	addi	a0,a0,236 # 80009278 <_ZN15MemoryAllocator10DBlockSizeE+0x258>
    80004194:	00001097          	auipc	ra,0x1
    80004198:	bd8080e7          	jalr	-1064(ra) # 80004d6c <_Z11printStringPKc>
    8000419c:	00000613          	li	a2,0
    800041a0:	00a00593          	li	a1,10
    800041a4:	0009051b          	sext.w	a0,s2
    800041a8:	00001097          	auipc	ra,0x1
    800041ac:	d74080e7          	jalr	-652(ra) # 80004f1c <_Z8printIntiii>
    800041b0:	00005517          	auipc	a0,0x5
    800041b4:	30850513          	addi	a0,a0,776 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    800041b8:	00001097          	auipc	ra,0x1
    800041bc:	bb4080e7          	jalr	-1100(ra) # 80004d6c <_Z11printStringPKc>
    800041c0:	0400006f          	j	80004200 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800041c4:	00005517          	auipc	a0,0x5
    800041c8:	09450513          	addi	a0,a0,148 # 80009258 <_ZN15MemoryAllocator10DBlockSizeE+0x238>
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	ba0080e7          	jalr	-1120(ra) # 80004d6c <_Z11printStringPKc>
    800041d4:	00000613          	li	a2,0
    800041d8:	00a00593          	li	a1,10
    800041dc:	00048513          	mv	a0,s1
    800041e0:	00001097          	auipc	ra,0x1
    800041e4:	d3c080e7          	jalr	-708(ra) # 80004f1c <_Z8printIntiii>
    800041e8:	00005517          	auipc	a0,0x5
    800041ec:	2d050513          	addi	a0,a0,720 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    800041f0:	00001097          	auipc	ra,0x1
    800041f4:	b7c080e7          	jalr	-1156(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800041f8:	0014849b          	addiw	s1,s1,1
    800041fc:	0ff4f493          	andi	s1,s1,255
    80004200:	00500793          	li	a5,5
    80004204:	fc97f0e3          	bgeu	a5,s1,800041c4 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80004208:	00005517          	auipc	a0,0x5
    8000420c:	11850513          	addi	a0,a0,280 # 80009320 <_ZN15MemoryAllocator10DBlockSizeE+0x300>
    80004210:	00001097          	auipc	ra,0x1
    80004214:	b5c080e7          	jalr	-1188(ra) # 80004d6c <_Z11printStringPKc>
    finishedC = true;
    80004218:	00100793          	li	a5,1
    8000421c:	00007717          	auipc	a4,0x7
    80004220:	40f70aa3          	sb	a5,1045(a4) # 8000b631 <_ZL9finishedC>
    thread_dispatch();
    80004224:	ffffe097          	auipc	ra,0xffffe
    80004228:	0b4080e7          	jalr	180(ra) # 800022d8 <_Z15thread_dispatchv>
}
    8000422c:	01813083          	ld	ra,24(sp)
    80004230:	01013403          	ld	s0,16(sp)
    80004234:	00813483          	ld	s1,8(sp)
    80004238:	00013903          	ld	s2,0(sp)
    8000423c:	02010113          	addi	sp,sp,32
    80004240:	00008067          	ret

0000000080004244 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004244:	fe010113          	addi	sp,sp,-32
    80004248:	00113c23          	sd	ra,24(sp)
    8000424c:	00813823          	sd	s0,16(sp)
    80004250:	00913423          	sd	s1,8(sp)
    80004254:	01213023          	sd	s2,0(sp)
    80004258:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000425c:	00000913          	li	s2,0
    80004260:	0380006f          	j	80004298 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004264:	ffffe097          	auipc	ra,0xffffe
    80004268:	074080e7          	jalr	116(ra) # 800022d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000426c:	00148493          	addi	s1,s1,1
    80004270:	000027b7          	lui	a5,0x2
    80004274:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004278:	0097ee63          	bltu	a5,s1,80004294 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000427c:	00000713          	li	a4,0
    80004280:	000077b7          	lui	a5,0x7
    80004284:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004288:	fce7eee3          	bltu	a5,a4,80004264 <_ZL11workerBodyBPv+0x20>
    8000428c:	00170713          	addi	a4,a4,1
    80004290:	ff1ff06f          	j	80004280 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004294:	00190913          	addi	s2,s2,1
    80004298:	00f00793          	li	a5,15
    8000429c:	0527e063          	bltu	a5,s2,800042dc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800042a0:	00005517          	auipc	a0,0x5
    800042a4:	fa050513          	addi	a0,a0,-96 # 80009240 <_ZN15MemoryAllocator10DBlockSizeE+0x220>
    800042a8:	00001097          	auipc	ra,0x1
    800042ac:	ac4080e7          	jalr	-1340(ra) # 80004d6c <_Z11printStringPKc>
    800042b0:	00000613          	li	a2,0
    800042b4:	00a00593          	li	a1,10
    800042b8:	0009051b          	sext.w	a0,s2
    800042bc:	00001097          	auipc	ra,0x1
    800042c0:	c60080e7          	jalr	-928(ra) # 80004f1c <_Z8printIntiii>
    800042c4:	00005517          	auipc	a0,0x5
    800042c8:	1f450513          	addi	a0,a0,500 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    800042cc:	00001097          	auipc	ra,0x1
    800042d0:	aa0080e7          	jalr	-1376(ra) # 80004d6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800042d4:	00000493          	li	s1,0
    800042d8:	f99ff06f          	j	80004270 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800042dc:	00005517          	auipc	a0,0x5
    800042e0:	f6c50513          	addi	a0,a0,-148 # 80009248 <_ZN15MemoryAllocator10DBlockSizeE+0x228>
    800042e4:	00001097          	auipc	ra,0x1
    800042e8:	a88080e7          	jalr	-1400(ra) # 80004d6c <_Z11printStringPKc>
    finishedB = true;
    800042ec:	00100793          	li	a5,1
    800042f0:	00007717          	auipc	a4,0x7
    800042f4:	34f70123          	sb	a5,834(a4) # 8000b632 <_ZL9finishedB>
    thread_dispatch();
    800042f8:	ffffe097          	auipc	ra,0xffffe
    800042fc:	fe0080e7          	jalr	-32(ra) # 800022d8 <_Z15thread_dispatchv>
}
    80004300:	01813083          	ld	ra,24(sp)
    80004304:	01013403          	ld	s0,16(sp)
    80004308:	00813483          	ld	s1,8(sp)
    8000430c:	00013903          	ld	s2,0(sp)
    80004310:	02010113          	addi	sp,sp,32
    80004314:	00008067          	ret

0000000080004318 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004318:	fe010113          	addi	sp,sp,-32
    8000431c:	00113c23          	sd	ra,24(sp)
    80004320:	00813823          	sd	s0,16(sp)
    80004324:	00913423          	sd	s1,8(sp)
    80004328:	01213023          	sd	s2,0(sp)
    8000432c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004330:	00000913          	li	s2,0
    80004334:	0380006f          	j	8000436c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004338:	ffffe097          	auipc	ra,0xffffe
    8000433c:	fa0080e7          	jalr	-96(ra) # 800022d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004340:	00148493          	addi	s1,s1,1
    80004344:	000027b7          	lui	a5,0x2
    80004348:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000434c:	0097ee63          	bltu	a5,s1,80004368 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004350:	00000713          	li	a4,0
    80004354:	000077b7          	lui	a5,0x7
    80004358:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000435c:	fce7eee3          	bltu	a5,a4,80004338 <_ZL11workerBodyAPv+0x20>
    80004360:	00170713          	addi	a4,a4,1
    80004364:	ff1ff06f          	j	80004354 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004368:	00190913          	addi	s2,s2,1
    8000436c:	00900793          	li	a5,9
    80004370:	0527e063          	bltu	a5,s2,800043b0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004374:	00005517          	auipc	a0,0x5
    80004378:	eb450513          	addi	a0,a0,-332 # 80009228 <_ZN15MemoryAllocator10DBlockSizeE+0x208>
    8000437c:	00001097          	auipc	ra,0x1
    80004380:	9f0080e7          	jalr	-1552(ra) # 80004d6c <_Z11printStringPKc>
    80004384:	00000613          	li	a2,0
    80004388:	00a00593          	li	a1,10
    8000438c:	0009051b          	sext.w	a0,s2
    80004390:	00001097          	auipc	ra,0x1
    80004394:	b8c080e7          	jalr	-1140(ra) # 80004f1c <_Z8printIntiii>
    80004398:	00005517          	auipc	a0,0x5
    8000439c:	12050513          	addi	a0,a0,288 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    800043a0:	00001097          	auipc	ra,0x1
    800043a4:	9cc080e7          	jalr	-1588(ra) # 80004d6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800043a8:	00000493          	li	s1,0
    800043ac:	f99ff06f          	j	80004344 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800043b0:	00005517          	auipc	a0,0x5
    800043b4:	e8050513          	addi	a0,a0,-384 # 80009230 <_ZN15MemoryAllocator10DBlockSizeE+0x210>
    800043b8:	00001097          	auipc	ra,0x1
    800043bc:	9b4080e7          	jalr	-1612(ra) # 80004d6c <_Z11printStringPKc>
    finishedA = true;
    800043c0:	00100793          	li	a5,1
    800043c4:	00007717          	auipc	a4,0x7
    800043c8:	26f707a3          	sb	a5,623(a4) # 8000b633 <_ZL9finishedA>
}
    800043cc:	01813083          	ld	ra,24(sp)
    800043d0:	01013403          	ld	s0,16(sp)
    800043d4:	00813483          	ld	s1,8(sp)
    800043d8:	00013903          	ld	s2,0(sp)
    800043dc:	02010113          	addi	sp,sp,32
    800043e0:	00008067          	ret

00000000800043e4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800043e4:	fd010113          	addi	sp,sp,-48
    800043e8:	02113423          	sd	ra,40(sp)
    800043ec:	02813023          	sd	s0,32(sp)
    800043f0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800043f4:	00000613          	li	a2,0
    800043f8:	00000597          	auipc	a1,0x0
    800043fc:	f2058593          	addi	a1,a1,-224 # 80004318 <_ZL11workerBodyAPv>
    80004400:	fd040513          	addi	a0,s0,-48
    80004404:	ffffe097          	auipc	ra,0xffffe
    80004408:	e04080e7          	jalr	-508(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000440c:	00005517          	auipc	a0,0x5
    80004410:	eb450513          	addi	a0,a0,-332 # 800092c0 <_ZN15MemoryAllocator10DBlockSizeE+0x2a0>
    80004414:	00001097          	auipc	ra,0x1
    80004418:	958080e7          	jalr	-1704(ra) # 80004d6c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000441c:	00000613          	li	a2,0
    80004420:	00000597          	auipc	a1,0x0
    80004424:	e2458593          	addi	a1,a1,-476 # 80004244 <_ZL11workerBodyBPv>
    80004428:	fd840513          	addi	a0,s0,-40
    8000442c:	ffffe097          	auipc	ra,0xffffe
    80004430:	ddc080e7          	jalr	-548(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004434:	00005517          	auipc	a0,0x5
    80004438:	ea450513          	addi	a0,a0,-348 # 800092d8 <_ZN15MemoryAllocator10DBlockSizeE+0x2b8>
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	930080e7          	jalr	-1744(ra) # 80004d6c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004444:	00000613          	li	a2,0
    80004448:	00000597          	auipc	a1,0x0
    8000444c:	c7c58593          	addi	a1,a1,-900 # 800040c4 <_ZL11workerBodyCPv>
    80004450:	fe040513          	addi	a0,s0,-32
    80004454:	ffffe097          	auipc	ra,0xffffe
    80004458:	db4080e7          	jalr	-588(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000445c:	00005517          	auipc	a0,0x5
    80004460:	e9450513          	addi	a0,a0,-364 # 800092f0 <_ZN15MemoryAllocator10DBlockSizeE+0x2d0>
    80004464:	00001097          	auipc	ra,0x1
    80004468:	908080e7          	jalr	-1784(ra) # 80004d6c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000446c:	00000613          	li	a2,0
    80004470:	00000597          	auipc	a1,0x0
    80004474:	b0c58593          	addi	a1,a1,-1268 # 80003f7c <_ZL11workerBodyDPv>
    80004478:	fe840513          	addi	a0,s0,-24
    8000447c:	ffffe097          	auipc	ra,0xffffe
    80004480:	d8c080e7          	jalr	-628(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004484:	00005517          	auipc	a0,0x5
    80004488:	e8450513          	addi	a0,a0,-380 # 80009308 <_ZN15MemoryAllocator10DBlockSizeE+0x2e8>
    8000448c:	00001097          	auipc	ra,0x1
    80004490:	8e0080e7          	jalr	-1824(ra) # 80004d6c <_Z11printStringPKc>
    80004494:	00c0006f          	j	800044a0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004498:	ffffe097          	auipc	ra,0xffffe
    8000449c:	e40080e7          	jalr	-448(ra) # 800022d8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800044a0:	00007797          	auipc	a5,0x7
    800044a4:	1937c783          	lbu	a5,403(a5) # 8000b633 <_ZL9finishedA>
    800044a8:	fe0788e3          	beqz	a5,80004498 <_Z18Threads_C_API_testv+0xb4>
    800044ac:	00007797          	auipc	a5,0x7
    800044b0:	1867c783          	lbu	a5,390(a5) # 8000b632 <_ZL9finishedB>
    800044b4:	fe0782e3          	beqz	a5,80004498 <_Z18Threads_C_API_testv+0xb4>
    800044b8:	00007797          	auipc	a5,0x7
    800044bc:	1797c783          	lbu	a5,377(a5) # 8000b631 <_ZL9finishedC>
    800044c0:	fc078ce3          	beqz	a5,80004498 <_Z18Threads_C_API_testv+0xb4>
    800044c4:	00007797          	auipc	a5,0x7
    800044c8:	16c7c783          	lbu	a5,364(a5) # 8000b630 <_ZL9finishedD>
    800044cc:	fc0786e3          	beqz	a5,80004498 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800044d0:	02813083          	ld	ra,40(sp)
    800044d4:	02013403          	ld	s0,32(sp)
    800044d8:	03010113          	addi	sp,sp,48
    800044dc:	00008067          	ret

00000000800044e0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800044e0:	fd010113          	addi	sp,sp,-48
    800044e4:	02113423          	sd	ra,40(sp)
    800044e8:	02813023          	sd	s0,32(sp)
    800044ec:	00913c23          	sd	s1,24(sp)
    800044f0:	01213823          	sd	s2,16(sp)
    800044f4:	01313423          	sd	s3,8(sp)
    800044f8:	03010413          	addi	s0,sp,48
    800044fc:	00050993          	mv	s3,a0
    80004500:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004504:	00000913          	li	s2,0
    80004508:	00c0006f          	j	80004514 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	2cc080e7          	jalr	716(ra) # 800027d8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004514:	ffffe097          	auipc	ra,0xffffe
    80004518:	f58080e7          	jalr	-168(ra) # 8000246c <_Z4getcv>
    8000451c:	0005059b          	sext.w	a1,a0
    80004520:	01b00793          	li	a5,27
    80004524:	02f58a63          	beq	a1,a5,80004558 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004528:	0084b503          	ld	a0,8(s1)
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	c64080e7          	jalr	-924(ra) # 80005190 <_ZN9BufferCPP3putEi>
        i++;
    80004534:	0019071b          	addiw	a4,s2,1
    80004538:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000453c:	0004a683          	lw	a3,0(s1)
    80004540:	0026979b          	slliw	a5,a3,0x2
    80004544:	00d787bb          	addw	a5,a5,a3
    80004548:	0017979b          	slliw	a5,a5,0x1
    8000454c:	02f767bb          	remw	a5,a4,a5
    80004550:	fc0792e3          	bnez	a5,80004514 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004554:	fb9ff06f          	j	8000450c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004558:	00100793          	li	a5,1
    8000455c:	00007717          	auipc	a4,0x7
    80004560:	0cf72e23          	sw	a5,220(a4) # 8000b638 <_ZL9threadEnd>
    td->buffer->put('!');
    80004564:	0209b783          	ld	a5,32(s3)
    80004568:	02100593          	li	a1,33
    8000456c:	0087b503          	ld	a0,8(a5)
    80004570:	00001097          	auipc	ra,0x1
    80004574:	c20080e7          	jalr	-992(ra) # 80005190 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004578:	0104b503          	ld	a0,16(s1)
    8000457c:	ffffe097          	auipc	ra,0xffffe
    80004580:	2e8080e7          	jalr	744(ra) # 80002864 <_ZN9Semaphore6signalEv>
}
    80004584:	02813083          	ld	ra,40(sp)
    80004588:	02013403          	ld	s0,32(sp)
    8000458c:	01813483          	ld	s1,24(sp)
    80004590:	01013903          	ld	s2,16(sp)
    80004594:	00813983          	ld	s3,8(sp)
    80004598:	03010113          	addi	sp,sp,48
    8000459c:	00008067          	ret

00000000800045a0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800045a0:	fe010113          	addi	sp,sp,-32
    800045a4:	00113c23          	sd	ra,24(sp)
    800045a8:	00813823          	sd	s0,16(sp)
    800045ac:	00913423          	sd	s1,8(sp)
    800045b0:	01213023          	sd	s2,0(sp)
    800045b4:	02010413          	addi	s0,sp,32
    800045b8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800045bc:	00000913          	li	s2,0
    800045c0:	00c0006f          	j	800045cc <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800045c4:	ffffe097          	auipc	ra,0xffffe
    800045c8:	214080e7          	jalr	532(ra) # 800027d8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800045cc:	00007797          	auipc	a5,0x7
    800045d0:	06c7a783          	lw	a5,108(a5) # 8000b638 <_ZL9threadEnd>
    800045d4:	02079e63          	bnez	a5,80004610 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800045d8:	0004a583          	lw	a1,0(s1)
    800045dc:	0305859b          	addiw	a1,a1,48
    800045e0:	0084b503          	ld	a0,8(s1)
    800045e4:	00001097          	auipc	ra,0x1
    800045e8:	bac080e7          	jalr	-1108(ra) # 80005190 <_ZN9BufferCPP3putEi>
        i++;
    800045ec:	0019071b          	addiw	a4,s2,1
    800045f0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800045f4:	0004a683          	lw	a3,0(s1)
    800045f8:	0026979b          	slliw	a5,a3,0x2
    800045fc:	00d787bb          	addw	a5,a5,a3
    80004600:	0017979b          	slliw	a5,a5,0x1
    80004604:	02f767bb          	remw	a5,a4,a5
    80004608:	fc0792e3          	bnez	a5,800045cc <_ZN12ProducerSync8producerEPv+0x2c>
    8000460c:	fb9ff06f          	j	800045c4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004610:	0104b503          	ld	a0,16(s1)
    80004614:	ffffe097          	auipc	ra,0xffffe
    80004618:	250080e7          	jalr	592(ra) # 80002864 <_ZN9Semaphore6signalEv>
}
    8000461c:	01813083          	ld	ra,24(sp)
    80004620:	01013403          	ld	s0,16(sp)
    80004624:	00813483          	ld	s1,8(sp)
    80004628:	00013903          	ld	s2,0(sp)
    8000462c:	02010113          	addi	sp,sp,32
    80004630:	00008067          	ret

0000000080004634 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004634:	fd010113          	addi	sp,sp,-48
    80004638:	02113423          	sd	ra,40(sp)
    8000463c:	02813023          	sd	s0,32(sp)
    80004640:	00913c23          	sd	s1,24(sp)
    80004644:	01213823          	sd	s2,16(sp)
    80004648:	01313423          	sd	s3,8(sp)
    8000464c:	01413023          	sd	s4,0(sp)
    80004650:	03010413          	addi	s0,sp,48
    80004654:	00050993          	mv	s3,a0
    80004658:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000465c:	00000a13          	li	s4,0
    80004660:	01c0006f          	j	8000467c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004664:	ffffe097          	auipc	ra,0xffffe
    80004668:	174080e7          	jalr	372(ra) # 800027d8 <_ZN6Thread8dispatchEv>
    8000466c:	0500006f          	j	800046bc <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004670:	00a00513          	li	a0,10
    80004674:	ffffe097          	auipc	ra,0xffffe
    80004678:	e3c080e7          	jalr	-452(ra) # 800024b0 <_Z4putcc>
    while (!threadEnd) {
    8000467c:	00007797          	auipc	a5,0x7
    80004680:	fbc7a783          	lw	a5,-68(a5) # 8000b638 <_ZL9threadEnd>
    80004684:	06079263          	bnez	a5,800046e8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004688:	00893503          	ld	a0,8(s2)
    8000468c:	00001097          	auipc	ra,0x1
    80004690:	b94080e7          	jalr	-1132(ra) # 80005220 <_ZN9BufferCPP3getEv>
        i++;
    80004694:	001a049b          	addiw	s1,s4,1
    80004698:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000469c:	0ff57513          	andi	a0,a0,255
    800046a0:	ffffe097          	auipc	ra,0xffffe
    800046a4:	e10080e7          	jalr	-496(ra) # 800024b0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800046a8:	00092703          	lw	a4,0(s2)
    800046ac:	0027179b          	slliw	a5,a4,0x2
    800046b0:	00e787bb          	addw	a5,a5,a4
    800046b4:	02f4e7bb          	remw	a5,s1,a5
    800046b8:	fa0786e3          	beqz	a5,80004664 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800046bc:	05000793          	li	a5,80
    800046c0:	02f4e4bb          	remw	s1,s1,a5
    800046c4:	fa049ce3          	bnez	s1,8000467c <_ZN12ConsumerSync8consumerEPv+0x48>
    800046c8:	fa9ff06f          	j	80004670 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800046cc:	0209b783          	ld	a5,32(s3)
    800046d0:	0087b503          	ld	a0,8(a5)
    800046d4:	00001097          	auipc	ra,0x1
    800046d8:	b4c080e7          	jalr	-1204(ra) # 80005220 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800046dc:	0ff57513          	andi	a0,a0,255
    800046e0:	ffffe097          	auipc	ra,0xffffe
    800046e4:	204080e7          	jalr	516(ra) # 800028e4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800046e8:	0209b783          	ld	a5,32(s3)
    800046ec:	0087b503          	ld	a0,8(a5)
    800046f0:	00001097          	auipc	ra,0x1
    800046f4:	bbc080e7          	jalr	-1092(ra) # 800052ac <_ZN9BufferCPP6getCntEv>
    800046f8:	fca04ae3          	bgtz	a0,800046cc <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800046fc:	01093503          	ld	a0,16(s2)
    80004700:	ffffe097          	auipc	ra,0xffffe
    80004704:	164080e7          	jalr	356(ra) # 80002864 <_ZN9Semaphore6signalEv>
}
    80004708:	02813083          	ld	ra,40(sp)
    8000470c:	02013403          	ld	s0,32(sp)
    80004710:	01813483          	ld	s1,24(sp)
    80004714:	01013903          	ld	s2,16(sp)
    80004718:	00813983          	ld	s3,8(sp)
    8000471c:	00013a03          	ld	s4,0(sp)
    80004720:	03010113          	addi	sp,sp,48
    80004724:	00008067          	ret

0000000080004728 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004728:	f8010113          	addi	sp,sp,-128
    8000472c:	06113c23          	sd	ra,120(sp)
    80004730:	06813823          	sd	s0,112(sp)
    80004734:	06913423          	sd	s1,104(sp)
    80004738:	07213023          	sd	s2,96(sp)
    8000473c:	05313c23          	sd	s3,88(sp)
    80004740:	05413823          	sd	s4,80(sp)
    80004744:	05513423          	sd	s5,72(sp)
    80004748:	05613023          	sd	s6,64(sp)
    8000474c:	03713c23          	sd	s7,56(sp)
    80004750:	03813823          	sd	s8,48(sp)
    80004754:	03913423          	sd	s9,40(sp)
    80004758:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000475c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004760:	00005517          	auipc	a0,0x5
    80004764:	9e050513          	addi	a0,a0,-1568 # 80009140 <_ZN15MemoryAllocator10DBlockSizeE+0x120>
    80004768:	00000097          	auipc	ra,0x0
    8000476c:	604080e7          	jalr	1540(ra) # 80004d6c <_Z11printStringPKc>
    getString(input, 30);
    80004770:	01e00593          	li	a1,30
    80004774:	f8040493          	addi	s1,s0,-128
    80004778:	00048513          	mv	a0,s1
    8000477c:	00000097          	auipc	ra,0x0
    80004780:	678080e7          	jalr	1656(ra) # 80004df4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004784:	00048513          	mv	a0,s1
    80004788:	00000097          	auipc	ra,0x0
    8000478c:	744080e7          	jalr	1860(ra) # 80004ecc <_Z11stringToIntPKc>
    80004790:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004794:	00005517          	auipc	a0,0x5
    80004798:	9cc50513          	addi	a0,a0,-1588 # 80009160 <_ZN15MemoryAllocator10DBlockSizeE+0x140>
    8000479c:	00000097          	auipc	ra,0x0
    800047a0:	5d0080e7          	jalr	1488(ra) # 80004d6c <_Z11printStringPKc>
    getString(input, 30);
    800047a4:	01e00593          	li	a1,30
    800047a8:	00048513          	mv	a0,s1
    800047ac:	00000097          	auipc	ra,0x0
    800047b0:	648080e7          	jalr	1608(ra) # 80004df4 <_Z9getStringPci>
    n = stringToInt(input);
    800047b4:	00048513          	mv	a0,s1
    800047b8:	00000097          	auipc	ra,0x0
    800047bc:	714080e7          	jalr	1812(ra) # 80004ecc <_Z11stringToIntPKc>
    800047c0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800047c4:	00005517          	auipc	a0,0x5
    800047c8:	9bc50513          	addi	a0,a0,-1604 # 80009180 <_ZN15MemoryAllocator10DBlockSizeE+0x160>
    800047cc:	00000097          	auipc	ra,0x0
    800047d0:	5a0080e7          	jalr	1440(ra) # 80004d6c <_Z11printStringPKc>
    800047d4:	00000613          	li	a2,0
    800047d8:	00a00593          	li	a1,10
    800047dc:	00090513          	mv	a0,s2
    800047e0:	00000097          	auipc	ra,0x0
    800047e4:	73c080e7          	jalr	1852(ra) # 80004f1c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800047e8:	00005517          	auipc	a0,0x5
    800047ec:	9b050513          	addi	a0,a0,-1616 # 80009198 <_ZN15MemoryAllocator10DBlockSizeE+0x178>
    800047f0:	00000097          	auipc	ra,0x0
    800047f4:	57c080e7          	jalr	1404(ra) # 80004d6c <_Z11printStringPKc>
    800047f8:	00000613          	li	a2,0
    800047fc:	00a00593          	li	a1,10
    80004800:	00048513          	mv	a0,s1
    80004804:	00000097          	auipc	ra,0x0
    80004808:	718080e7          	jalr	1816(ra) # 80004f1c <_Z8printIntiii>
    printString(".\n");
    8000480c:	00005517          	auipc	a0,0x5
    80004810:	9a450513          	addi	a0,a0,-1628 # 800091b0 <_ZN15MemoryAllocator10DBlockSizeE+0x190>
    80004814:	00000097          	auipc	ra,0x0
    80004818:	558080e7          	jalr	1368(ra) # 80004d6c <_Z11printStringPKc>
    if(threadNum > n) {
    8000481c:	0324c463          	blt	s1,s2,80004844 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004820:	03205c63          	blez	s2,80004858 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004824:	03800513          	li	a0,56
    80004828:	ffffd097          	auipc	ra,0xffffd
    8000482c:	a0c080e7          	jalr	-1524(ra) # 80001234 <_Znwm>
    80004830:	00050a93          	mv	s5,a0
    80004834:	00048593          	mv	a1,s1
    80004838:	00001097          	auipc	ra,0x1
    8000483c:	804080e7          	jalr	-2044(ra) # 8000503c <_ZN9BufferCPPC1Ei>
    80004840:	0300006f          	j	80004870 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004844:	00005517          	auipc	a0,0x5
    80004848:	97450513          	addi	a0,a0,-1676 # 800091b8 <_ZN15MemoryAllocator10DBlockSizeE+0x198>
    8000484c:	00000097          	auipc	ra,0x0
    80004850:	520080e7          	jalr	1312(ra) # 80004d6c <_Z11printStringPKc>
        return;
    80004854:	0140006f          	j	80004868 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004858:	00005517          	auipc	a0,0x5
    8000485c:	9a050513          	addi	a0,a0,-1632 # 800091f8 <_ZN15MemoryAllocator10DBlockSizeE+0x1d8>
    80004860:	00000097          	auipc	ra,0x0
    80004864:	50c080e7          	jalr	1292(ra) # 80004d6c <_Z11printStringPKc>
        return;
    80004868:	000b8113          	mv	sp,s7
    8000486c:	2380006f          	j	80004aa4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004870:	01000513          	li	a0,16
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	9c0080e7          	jalr	-1600(ra) # 80001234 <_Znwm>
    8000487c:	00050493          	mv	s1,a0
    80004880:	00000593          	li	a1,0
    80004884:	ffffe097          	auipc	ra,0xffffe
    80004888:	f7c080e7          	jalr	-132(ra) # 80002800 <_ZN9SemaphoreC1Ej>
    8000488c:	00007797          	auipc	a5,0x7
    80004890:	da97ba23          	sd	s1,-588(a5) # 8000b640 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004894:	00391793          	slli	a5,s2,0x3
    80004898:	00f78793          	addi	a5,a5,15
    8000489c:	ff07f793          	andi	a5,a5,-16
    800048a0:	40f10133          	sub	sp,sp,a5
    800048a4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800048a8:	0019071b          	addiw	a4,s2,1
    800048ac:	00171793          	slli	a5,a4,0x1
    800048b0:	00e787b3          	add	a5,a5,a4
    800048b4:	00379793          	slli	a5,a5,0x3
    800048b8:	00f78793          	addi	a5,a5,15
    800048bc:	ff07f793          	andi	a5,a5,-16
    800048c0:	40f10133          	sub	sp,sp,a5
    800048c4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800048c8:	00191c13          	slli	s8,s2,0x1
    800048cc:	012c07b3          	add	a5,s8,s2
    800048d0:	00379793          	slli	a5,a5,0x3
    800048d4:	00fa07b3          	add	a5,s4,a5
    800048d8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800048dc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800048e0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800048e4:	02800513          	li	a0,40
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	94c080e7          	jalr	-1716(ra) # 80001234 <_Znwm>
    800048f0:	00050b13          	mv	s6,a0
    800048f4:	012c0c33          	add	s8,s8,s2
    800048f8:	003c1c13          	slli	s8,s8,0x3
    800048fc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004900:	ffffe097          	auipc	ra,0xffffe
    80004904:	e6c080e7          	jalr	-404(ra) # 8000276c <_ZN6ThreadC1Ev>
    80004908:	00007797          	auipc	a5,0x7
    8000490c:	c0078793          	addi	a5,a5,-1024 # 8000b508 <_ZTV12ConsumerSync+0x10>
    80004910:	00fb3023          	sd	a5,0(s6)
    80004914:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004918:	000b0513          	mv	a0,s6
    8000491c:	ffffe097          	auipc	ra,0xffffe
    80004920:	e88080e7          	jalr	-376(ra) # 800027a4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004924:	00000493          	li	s1,0
    80004928:	0380006f          	j	80004960 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000492c:	00007797          	auipc	a5,0x7
    80004930:	bb478793          	addi	a5,a5,-1100 # 8000b4e0 <_ZTV12ProducerSync+0x10>
    80004934:	00fcb023          	sd	a5,0(s9)
    80004938:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000493c:	00349793          	slli	a5,s1,0x3
    80004940:	00f987b3          	add	a5,s3,a5
    80004944:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004948:	00349793          	slli	a5,s1,0x3
    8000494c:	00f987b3          	add	a5,s3,a5
    80004950:	0007b503          	ld	a0,0(a5)
    80004954:	ffffe097          	auipc	ra,0xffffe
    80004958:	e50080e7          	jalr	-432(ra) # 800027a4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000495c:	0014849b          	addiw	s1,s1,1
    80004960:	0b24d063          	bge	s1,s2,80004a00 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004964:	00149793          	slli	a5,s1,0x1
    80004968:	009787b3          	add	a5,a5,s1
    8000496c:	00379793          	slli	a5,a5,0x3
    80004970:	00fa07b3          	add	a5,s4,a5
    80004974:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004978:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000497c:	00007717          	auipc	a4,0x7
    80004980:	cc473703          	ld	a4,-828(a4) # 8000b640 <_ZL10waitForAll>
    80004984:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004988:	02905863          	blez	s1,800049b8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000498c:	02800513          	li	a0,40
    80004990:	ffffd097          	auipc	ra,0xffffd
    80004994:	8a4080e7          	jalr	-1884(ra) # 80001234 <_Znwm>
    80004998:	00050c93          	mv	s9,a0
    8000499c:	00149c13          	slli	s8,s1,0x1
    800049a0:	009c0c33          	add	s8,s8,s1
    800049a4:	003c1c13          	slli	s8,s8,0x3
    800049a8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800049ac:	ffffe097          	auipc	ra,0xffffe
    800049b0:	dc0080e7          	jalr	-576(ra) # 8000276c <_ZN6ThreadC1Ev>
    800049b4:	f79ff06f          	j	8000492c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800049b8:	02800513          	li	a0,40
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	878080e7          	jalr	-1928(ra) # 80001234 <_Znwm>
    800049c4:	00050c93          	mv	s9,a0
    800049c8:	00149c13          	slli	s8,s1,0x1
    800049cc:	009c0c33          	add	s8,s8,s1
    800049d0:	003c1c13          	slli	s8,s8,0x3
    800049d4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800049d8:	ffffe097          	auipc	ra,0xffffe
    800049dc:	d94080e7          	jalr	-620(ra) # 8000276c <_ZN6ThreadC1Ev>
    800049e0:	00007797          	auipc	a5,0x7
    800049e4:	ad878793          	addi	a5,a5,-1320 # 8000b4b8 <_ZTV16ProducerKeyboard+0x10>
    800049e8:	00fcb023          	sd	a5,0(s9)
    800049ec:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800049f0:	00349793          	slli	a5,s1,0x3
    800049f4:	00f987b3          	add	a5,s3,a5
    800049f8:	0197b023          	sd	s9,0(a5)
    800049fc:	f4dff06f          	j	80004948 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004a00:	ffffe097          	auipc	ra,0xffffe
    80004a04:	dd8080e7          	jalr	-552(ra) # 800027d8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a08:	00000493          	li	s1,0
    80004a0c:	00994e63          	blt	s2,s1,80004a28 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004a10:	00007517          	auipc	a0,0x7
    80004a14:	c3053503          	ld	a0,-976(a0) # 8000b640 <_ZL10waitForAll>
    80004a18:	ffffe097          	auipc	ra,0xffffe
    80004a1c:	e20080e7          	jalr	-480(ra) # 80002838 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a20:	0014849b          	addiw	s1,s1,1
    80004a24:	fe9ff06f          	j	80004a0c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004a28:	00000493          	li	s1,0
    80004a2c:	0080006f          	j	80004a34 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004a30:	0014849b          	addiw	s1,s1,1
    80004a34:	0324d263          	bge	s1,s2,80004a58 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004a38:	00349793          	slli	a5,s1,0x3
    80004a3c:	00f987b3          	add	a5,s3,a5
    80004a40:	0007b503          	ld	a0,0(a5)
    80004a44:	fe0506e3          	beqz	a0,80004a30 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004a48:	00053783          	ld	a5,0(a0)
    80004a4c:	0087b783          	ld	a5,8(a5)
    80004a50:	000780e7          	jalr	a5
    80004a54:	fddff06f          	j	80004a30 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004a58:	000b0a63          	beqz	s6,80004a6c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004a5c:	000b3783          	ld	a5,0(s6)
    80004a60:	0087b783          	ld	a5,8(a5)
    80004a64:	000b0513          	mv	a0,s6
    80004a68:	000780e7          	jalr	a5
    delete waitForAll;
    80004a6c:	00007517          	auipc	a0,0x7
    80004a70:	bd453503          	ld	a0,-1068(a0) # 8000b640 <_ZL10waitForAll>
    80004a74:	00050863          	beqz	a0,80004a84 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004a78:	00053783          	ld	a5,0(a0)
    80004a7c:	0087b783          	ld	a5,8(a5)
    80004a80:	000780e7          	jalr	a5
    delete buffer;
    80004a84:	000a8e63          	beqz	s5,80004aa0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004a88:	000a8513          	mv	a0,s5
    80004a8c:	00001097          	auipc	ra,0x1
    80004a90:	8a8080e7          	jalr	-1880(ra) # 80005334 <_ZN9BufferCPPD1Ev>
    80004a94:	000a8513          	mv	a0,s5
    80004a98:	ffffc097          	auipc	ra,0xffffc
    80004a9c:	7ec080e7          	jalr	2028(ra) # 80001284 <_ZdlPv>
    80004aa0:	000b8113          	mv	sp,s7

}
    80004aa4:	f8040113          	addi	sp,s0,-128
    80004aa8:	07813083          	ld	ra,120(sp)
    80004aac:	07013403          	ld	s0,112(sp)
    80004ab0:	06813483          	ld	s1,104(sp)
    80004ab4:	06013903          	ld	s2,96(sp)
    80004ab8:	05813983          	ld	s3,88(sp)
    80004abc:	05013a03          	ld	s4,80(sp)
    80004ac0:	04813a83          	ld	s5,72(sp)
    80004ac4:	04013b03          	ld	s6,64(sp)
    80004ac8:	03813b83          	ld	s7,56(sp)
    80004acc:	03013c03          	ld	s8,48(sp)
    80004ad0:	02813c83          	ld	s9,40(sp)
    80004ad4:	08010113          	addi	sp,sp,128
    80004ad8:	00008067          	ret
    80004adc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004ae0:	000a8513          	mv	a0,s5
    80004ae4:	ffffc097          	auipc	ra,0xffffc
    80004ae8:	7a0080e7          	jalr	1952(ra) # 80001284 <_ZdlPv>
    80004aec:	00048513          	mv	a0,s1
    80004af0:	00008097          	auipc	ra,0x8
    80004af4:	c38080e7          	jalr	-968(ra) # 8000c728 <_Unwind_Resume>
    80004af8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004afc:	00048513          	mv	a0,s1
    80004b00:	ffffc097          	auipc	ra,0xffffc
    80004b04:	784080e7          	jalr	1924(ra) # 80001284 <_ZdlPv>
    80004b08:	00090513          	mv	a0,s2
    80004b0c:	00008097          	auipc	ra,0x8
    80004b10:	c1c080e7          	jalr	-996(ra) # 8000c728 <_Unwind_Resume>
    80004b14:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004b18:	000b0513          	mv	a0,s6
    80004b1c:	ffffc097          	auipc	ra,0xffffc
    80004b20:	768080e7          	jalr	1896(ra) # 80001284 <_ZdlPv>
    80004b24:	00048513          	mv	a0,s1
    80004b28:	00008097          	auipc	ra,0x8
    80004b2c:	c00080e7          	jalr	-1024(ra) # 8000c728 <_Unwind_Resume>
    80004b30:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004b34:	000c8513          	mv	a0,s9
    80004b38:	ffffc097          	auipc	ra,0xffffc
    80004b3c:	74c080e7          	jalr	1868(ra) # 80001284 <_ZdlPv>
    80004b40:	00048513          	mv	a0,s1
    80004b44:	00008097          	auipc	ra,0x8
    80004b48:	be4080e7          	jalr	-1052(ra) # 8000c728 <_Unwind_Resume>
    80004b4c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004b50:	000c8513          	mv	a0,s9
    80004b54:	ffffc097          	auipc	ra,0xffffc
    80004b58:	730080e7          	jalr	1840(ra) # 80001284 <_ZdlPv>
    80004b5c:	00048513          	mv	a0,s1
    80004b60:	00008097          	auipc	ra,0x8
    80004b64:	bc8080e7          	jalr	-1080(ra) # 8000c728 <_Unwind_Resume>

0000000080004b68 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004b68:	ff010113          	addi	sp,sp,-16
    80004b6c:	00113423          	sd	ra,8(sp)
    80004b70:	00813023          	sd	s0,0(sp)
    80004b74:	01010413          	addi	s0,sp,16
    80004b78:	00007797          	auipc	a5,0x7
    80004b7c:	99078793          	addi	a5,a5,-1648 # 8000b508 <_ZTV12ConsumerSync+0x10>
    80004b80:	00f53023          	sd	a5,0(a0)
    80004b84:	ffffe097          	auipc	ra,0xffffe
    80004b88:	aac080e7          	jalr	-1364(ra) # 80002630 <_ZN6ThreadD1Ev>
    80004b8c:	00813083          	ld	ra,8(sp)
    80004b90:	00013403          	ld	s0,0(sp)
    80004b94:	01010113          	addi	sp,sp,16
    80004b98:	00008067          	ret

0000000080004b9c <_ZN12ConsumerSyncD0Ev>:
    80004b9c:	fe010113          	addi	sp,sp,-32
    80004ba0:	00113c23          	sd	ra,24(sp)
    80004ba4:	00813823          	sd	s0,16(sp)
    80004ba8:	00913423          	sd	s1,8(sp)
    80004bac:	02010413          	addi	s0,sp,32
    80004bb0:	00050493          	mv	s1,a0
    80004bb4:	00007797          	auipc	a5,0x7
    80004bb8:	95478793          	addi	a5,a5,-1708 # 8000b508 <_ZTV12ConsumerSync+0x10>
    80004bbc:	00f53023          	sd	a5,0(a0)
    80004bc0:	ffffe097          	auipc	ra,0xffffe
    80004bc4:	a70080e7          	jalr	-1424(ra) # 80002630 <_ZN6ThreadD1Ev>
    80004bc8:	00048513          	mv	a0,s1
    80004bcc:	ffffc097          	auipc	ra,0xffffc
    80004bd0:	6b8080e7          	jalr	1720(ra) # 80001284 <_ZdlPv>
    80004bd4:	01813083          	ld	ra,24(sp)
    80004bd8:	01013403          	ld	s0,16(sp)
    80004bdc:	00813483          	ld	s1,8(sp)
    80004be0:	02010113          	addi	sp,sp,32
    80004be4:	00008067          	ret

0000000080004be8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004be8:	ff010113          	addi	sp,sp,-16
    80004bec:	00113423          	sd	ra,8(sp)
    80004bf0:	00813023          	sd	s0,0(sp)
    80004bf4:	01010413          	addi	s0,sp,16
    80004bf8:	00007797          	auipc	a5,0x7
    80004bfc:	8e878793          	addi	a5,a5,-1816 # 8000b4e0 <_ZTV12ProducerSync+0x10>
    80004c00:	00f53023          	sd	a5,0(a0)
    80004c04:	ffffe097          	auipc	ra,0xffffe
    80004c08:	a2c080e7          	jalr	-1492(ra) # 80002630 <_ZN6ThreadD1Ev>
    80004c0c:	00813083          	ld	ra,8(sp)
    80004c10:	00013403          	ld	s0,0(sp)
    80004c14:	01010113          	addi	sp,sp,16
    80004c18:	00008067          	ret

0000000080004c1c <_ZN12ProducerSyncD0Ev>:
    80004c1c:	fe010113          	addi	sp,sp,-32
    80004c20:	00113c23          	sd	ra,24(sp)
    80004c24:	00813823          	sd	s0,16(sp)
    80004c28:	00913423          	sd	s1,8(sp)
    80004c2c:	02010413          	addi	s0,sp,32
    80004c30:	00050493          	mv	s1,a0
    80004c34:	00007797          	auipc	a5,0x7
    80004c38:	8ac78793          	addi	a5,a5,-1876 # 8000b4e0 <_ZTV12ProducerSync+0x10>
    80004c3c:	00f53023          	sd	a5,0(a0)
    80004c40:	ffffe097          	auipc	ra,0xffffe
    80004c44:	9f0080e7          	jalr	-1552(ra) # 80002630 <_ZN6ThreadD1Ev>
    80004c48:	00048513          	mv	a0,s1
    80004c4c:	ffffc097          	auipc	ra,0xffffc
    80004c50:	638080e7          	jalr	1592(ra) # 80001284 <_ZdlPv>
    80004c54:	01813083          	ld	ra,24(sp)
    80004c58:	01013403          	ld	s0,16(sp)
    80004c5c:	00813483          	ld	s1,8(sp)
    80004c60:	02010113          	addi	sp,sp,32
    80004c64:	00008067          	ret

0000000080004c68 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004c68:	ff010113          	addi	sp,sp,-16
    80004c6c:	00113423          	sd	ra,8(sp)
    80004c70:	00813023          	sd	s0,0(sp)
    80004c74:	01010413          	addi	s0,sp,16
    80004c78:	00007797          	auipc	a5,0x7
    80004c7c:	84078793          	addi	a5,a5,-1984 # 8000b4b8 <_ZTV16ProducerKeyboard+0x10>
    80004c80:	00f53023          	sd	a5,0(a0)
    80004c84:	ffffe097          	auipc	ra,0xffffe
    80004c88:	9ac080e7          	jalr	-1620(ra) # 80002630 <_ZN6ThreadD1Ev>
    80004c8c:	00813083          	ld	ra,8(sp)
    80004c90:	00013403          	ld	s0,0(sp)
    80004c94:	01010113          	addi	sp,sp,16
    80004c98:	00008067          	ret

0000000080004c9c <_ZN16ProducerKeyboardD0Ev>:
    80004c9c:	fe010113          	addi	sp,sp,-32
    80004ca0:	00113c23          	sd	ra,24(sp)
    80004ca4:	00813823          	sd	s0,16(sp)
    80004ca8:	00913423          	sd	s1,8(sp)
    80004cac:	02010413          	addi	s0,sp,32
    80004cb0:	00050493          	mv	s1,a0
    80004cb4:	00007797          	auipc	a5,0x7
    80004cb8:	80478793          	addi	a5,a5,-2044 # 8000b4b8 <_ZTV16ProducerKeyboard+0x10>
    80004cbc:	00f53023          	sd	a5,0(a0)
    80004cc0:	ffffe097          	auipc	ra,0xffffe
    80004cc4:	970080e7          	jalr	-1680(ra) # 80002630 <_ZN6ThreadD1Ev>
    80004cc8:	00048513          	mv	a0,s1
    80004ccc:	ffffc097          	auipc	ra,0xffffc
    80004cd0:	5b8080e7          	jalr	1464(ra) # 80001284 <_ZdlPv>
    80004cd4:	01813083          	ld	ra,24(sp)
    80004cd8:	01013403          	ld	s0,16(sp)
    80004cdc:	00813483          	ld	s1,8(sp)
    80004ce0:	02010113          	addi	sp,sp,32
    80004ce4:	00008067          	ret

0000000080004ce8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004ce8:	ff010113          	addi	sp,sp,-16
    80004cec:	00113423          	sd	ra,8(sp)
    80004cf0:	00813023          	sd	s0,0(sp)
    80004cf4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004cf8:	02053583          	ld	a1,32(a0)
    80004cfc:	fffff097          	auipc	ra,0xfffff
    80004d00:	7e4080e7          	jalr	2020(ra) # 800044e0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004d04:	00813083          	ld	ra,8(sp)
    80004d08:	00013403          	ld	s0,0(sp)
    80004d0c:	01010113          	addi	sp,sp,16
    80004d10:	00008067          	ret

0000000080004d14 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004d14:	ff010113          	addi	sp,sp,-16
    80004d18:	00113423          	sd	ra,8(sp)
    80004d1c:	00813023          	sd	s0,0(sp)
    80004d20:	01010413          	addi	s0,sp,16
        producer(td);
    80004d24:	02053583          	ld	a1,32(a0)
    80004d28:	00000097          	auipc	ra,0x0
    80004d2c:	878080e7          	jalr	-1928(ra) # 800045a0 <_ZN12ProducerSync8producerEPv>
    }
    80004d30:	00813083          	ld	ra,8(sp)
    80004d34:	00013403          	ld	s0,0(sp)
    80004d38:	01010113          	addi	sp,sp,16
    80004d3c:	00008067          	ret

0000000080004d40 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004d40:	ff010113          	addi	sp,sp,-16
    80004d44:	00113423          	sd	ra,8(sp)
    80004d48:	00813023          	sd	s0,0(sp)
    80004d4c:	01010413          	addi	s0,sp,16
        consumer(td);
    80004d50:	02053583          	ld	a1,32(a0)
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	8e0080e7          	jalr	-1824(ra) # 80004634 <_ZN12ConsumerSync8consumerEPv>
    }
    80004d5c:	00813083          	ld	ra,8(sp)
    80004d60:	00013403          	ld	s0,0(sp)
    80004d64:	01010113          	addi	sp,sp,16
    80004d68:	00008067          	ret

0000000080004d6c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004d6c:	fe010113          	addi	sp,sp,-32
    80004d70:	00113c23          	sd	ra,24(sp)
    80004d74:	00813823          	sd	s0,16(sp)
    80004d78:	00913423          	sd	s1,8(sp)
    80004d7c:	02010413          	addi	s0,sp,32
    80004d80:	00050493          	mv	s1,a0
    LOCK();
    80004d84:	00100613          	li	a2,1
    80004d88:	00000593          	li	a1,0
    80004d8c:	00007517          	auipc	a0,0x7
    80004d90:	8bc50513          	addi	a0,a0,-1860 # 8000b648 <lockPrint>
    80004d94:	ffffc097          	auipc	ra,0xffffc
    80004d98:	480080e7          	jalr	1152(ra) # 80001214 <copy_and_swap>
    80004d9c:	00050863          	beqz	a0,80004dac <_Z11printStringPKc+0x40>
    80004da0:	ffffd097          	auipc	ra,0xffffd
    80004da4:	538080e7          	jalr	1336(ra) # 800022d8 <_Z15thread_dispatchv>
    80004da8:	fddff06f          	j	80004d84 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004dac:	0004c503          	lbu	a0,0(s1)
    80004db0:	00050a63          	beqz	a0,80004dc4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004db4:	ffffd097          	auipc	ra,0xffffd
    80004db8:	6fc080e7          	jalr	1788(ra) # 800024b0 <_Z4putcc>
        string++;
    80004dbc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004dc0:	fedff06f          	j	80004dac <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004dc4:	00000613          	li	a2,0
    80004dc8:	00100593          	li	a1,1
    80004dcc:	00007517          	auipc	a0,0x7
    80004dd0:	87c50513          	addi	a0,a0,-1924 # 8000b648 <lockPrint>
    80004dd4:	ffffc097          	auipc	ra,0xffffc
    80004dd8:	440080e7          	jalr	1088(ra) # 80001214 <copy_and_swap>
    80004ddc:	fe0514e3          	bnez	a0,80004dc4 <_Z11printStringPKc+0x58>
}
    80004de0:	01813083          	ld	ra,24(sp)
    80004de4:	01013403          	ld	s0,16(sp)
    80004de8:	00813483          	ld	s1,8(sp)
    80004dec:	02010113          	addi	sp,sp,32
    80004df0:	00008067          	ret

0000000080004df4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004df4:	fd010113          	addi	sp,sp,-48
    80004df8:	02113423          	sd	ra,40(sp)
    80004dfc:	02813023          	sd	s0,32(sp)
    80004e00:	00913c23          	sd	s1,24(sp)
    80004e04:	01213823          	sd	s2,16(sp)
    80004e08:	01313423          	sd	s3,8(sp)
    80004e0c:	01413023          	sd	s4,0(sp)
    80004e10:	03010413          	addi	s0,sp,48
    80004e14:	00050993          	mv	s3,a0
    80004e18:	00058a13          	mv	s4,a1
    LOCK();
    80004e1c:	00100613          	li	a2,1
    80004e20:	00000593          	li	a1,0
    80004e24:	00007517          	auipc	a0,0x7
    80004e28:	82450513          	addi	a0,a0,-2012 # 8000b648 <lockPrint>
    80004e2c:	ffffc097          	auipc	ra,0xffffc
    80004e30:	3e8080e7          	jalr	1000(ra) # 80001214 <copy_and_swap>
    80004e34:	00050863          	beqz	a0,80004e44 <_Z9getStringPci+0x50>
    80004e38:	ffffd097          	auipc	ra,0xffffd
    80004e3c:	4a0080e7          	jalr	1184(ra) # 800022d8 <_Z15thread_dispatchv>
    80004e40:	fddff06f          	j	80004e1c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004e44:	00000913          	li	s2,0
    80004e48:	00090493          	mv	s1,s2
    80004e4c:	0019091b          	addiw	s2,s2,1
    80004e50:	03495a63          	bge	s2,s4,80004e84 <_Z9getStringPci+0x90>
        cc = getc();
    80004e54:	ffffd097          	auipc	ra,0xffffd
    80004e58:	618080e7          	jalr	1560(ra) # 8000246c <_Z4getcv>
        if(cc < 1)
    80004e5c:	02050463          	beqz	a0,80004e84 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004e60:	009984b3          	add	s1,s3,s1
    80004e64:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004e68:	00a00793          	li	a5,10
    80004e6c:	00f50a63          	beq	a0,a5,80004e80 <_Z9getStringPci+0x8c>
    80004e70:	00d00793          	li	a5,13
    80004e74:	fcf51ae3          	bne	a0,a5,80004e48 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004e78:	00090493          	mv	s1,s2
    80004e7c:	0080006f          	j	80004e84 <_Z9getStringPci+0x90>
    80004e80:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004e84:	009984b3          	add	s1,s3,s1
    80004e88:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004e8c:	00000613          	li	a2,0
    80004e90:	00100593          	li	a1,1
    80004e94:	00006517          	auipc	a0,0x6
    80004e98:	7b450513          	addi	a0,a0,1972 # 8000b648 <lockPrint>
    80004e9c:	ffffc097          	auipc	ra,0xffffc
    80004ea0:	378080e7          	jalr	888(ra) # 80001214 <copy_and_swap>
    80004ea4:	fe0514e3          	bnez	a0,80004e8c <_Z9getStringPci+0x98>
    return buf;
}
    80004ea8:	00098513          	mv	a0,s3
    80004eac:	02813083          	ld	ra,40(sp)
    80004eb0:	02013403          	ld	s0,32(sp)
    80004eb4:	01813483          	ld	s1,24(sp)
    80004eb8:	01013903          	ld	s2,16(sp)
    80004ebc:	00813983          	ld	s3,8(sp)
    80004ec0:	00013a03          	ld	s4,0(sp)
    80004ec4:	03010113          	addi	sp,sp,48
    80004ec8:	00008067          	ret

0000000080004ecc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004ecc:	ff010113          	addi	sp,sp,-16
    80004ed0:	00813423          	sd	s0,8(sp)
    80004ed4:	01010413          	addi	s0,sp,16
    80004ed8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004edc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004ee0:	0006c603          	lbu	a2,0(a3)
    80004ee4:	fd06071b          	addiw	a4,a2,-48
    80004ee8:	0ff77713          	andi	a4,a4,255
    80004eec:	00900793          	li	a5,9
    80004ef0:	02e7e063          	bltu	a5,a4,80004f10 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004ef4:	0025179b          	slliw	a5,a0,0x2
    80004ef8:	00a787bb          	addw	a5,a5,a0
    80004efc:	0017979b          	slliw	a5,a5,0x1
    80004f00:	00168693          	addi	a3,a3,1
    80004f04:	00c787bb          	addw	a5,a5,a2
    80004f08:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004f0c:	fd5ff06f          	j	80004ee0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004f10:	00813403          	ld	s0,8(sp)
    80004f14:	01010113          	addi	sp,sp,16
    80004f18:	00008067          	ret

0000000080004f1c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004f1c:	fc010113          	addi	sp,sp,-64
    80004f20:	02113c23          	sd	ra,56(sp)
    80004f24:	02813823          	sd	s0,48(sp)
    80004f28:	02913423          	sd	s1,40(sp)
    80004f2c:	03213023          	sd	s2,32(sp)
    80004f30:	01313c23          	sd	s3,24(sp)
    80004f34:	04010413          	addi	s0,sp,64
    80004f38:	00050493          	mv	s1,a0
    80004f3c:	00058913          	mv	s2,a1
    80004f40:	00060993          	mv	s3,a2
    LOCK();
    80004f44:	00100613          	li	a2,1
    80004f48:	00000593          	li	a1,0
    80004f4c:	00006517          	auipc	a0,0x6
    80004f50:	6fc50513          	addi	a0,a0,1788 # 8000b648 <lockPrint>
    80004f54:	ffffc097          	auipc	ra,0xffffc
    80004f58:	2c0080e7          	jalr	704(ra) # 80001214 <copy_and_swap>
    80004f5c:	00050863          	beqz	a0,80004f6c <_Z8printIntiii+0x50>
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	378080e7          	jalr	888(ra) # 800022d8 <_Z15thread_dispatchv>
    80004f68:	fddff06f          	j	80004f44 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004f6c:	00098463          	beqz	s3,80004f74 <_Z8printIntiii+0x58>
    80004f70:	0804c463          	bltz	s1,80004ff8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004f74:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004f78:	00000593          	li	a1,0
    }

    i = 0;
    80004f7c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004f80:	0009079b          	sext.w	a5,s2
    80004f84:	0325773b          	remuw	a4,a0,s2
    80004f88:	00048613          	mv	a2,s1
    80004f8c:	0014849b          	addiw	s1,s1,1
    80004f90:	02071693          	slli	a3,a4,0x20
    80004f94:	0206d693          	srli	a3,a3,0x20
    80004f98:	00006717          	auipc	a4,0x6
    80004f9c:	58870713          	addi	a4,a4,1416 # 8000b520 <digits>
    80004fa0:	00d70733          	add	a4,a4,a3
    80004fa4:	00074683          	lbu	a3,0(a4)
    80004fa8:	fd040713          	addi	a4,s0,-48
    80004fac:	00c70733          	add	a4,a4,a2
    80004fb0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004fb4:	0005071b          	sext.w	a4,a0
    80004fb8:	0325553b          	divuw	a0,a0,s2
    80004fbc:	fcf772e3          	bgeu	a4,a5,80004f80 <_Z8printIntiii+0x64>
    if(neg)
    80004fc0:	00058c63          	beqz	a1,80004fd8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004fc4:	fd040793          	addi	a5,s0,-48
    80004fc8:	009784b3          	add	s1,a5,s1
    80004fcc:	02d00793          	li	a5,45
    80004fd0:	fef48823          	sb	a5,-16(s1)
    80004fd4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004fd8:	fff4849b          	addiw	s1,s1,-1
    80004fdc:	0204c463          	bltz	s1,80005004 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004fe0:	fd040793          	addi	a5,s0,-48
    80004fe4:	009787b3          	add	a5,a5,s1
    80004fe8:	ff07c503          	lbu	a0,-16(a5)
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	4c4080e7          	jalr	1220(ra) # 800024b0 <_Z4putcc>
    80004ff4:	fe5ff06f          	j	80004fd8 <_Z8printIntiii+0xbc>
        x = -xx;
    80004ff8:	4090053b          	negw	a0,s1
        neg = 1;
    80004ffc:	00100593          	li	a1,1
        x = -xx;
    80005000:	f7dff06f          	j	80004f7c <_Z8printIntiii+0x60>

    UNLOCK();
    80005004:	00000613          	li	a2,0
    80005008:	00100593          	li	a1,1
    8000500c:	00006517          	auipc	a0,0x6
    80005010:	63c50513          	addi	a0,a0,1596 # 8000b648 <lockPrint>
    80005014:	ffffc097          	auipc	ra,0xffffc
    80005018:	200080e7          	jalr	512(ra) # 80001214 <copy_and_swap>
    8000501c:	fe0514e3          	bnez	a0,80005004 <_Z8printIntiii+0xe8>
    80005020:	03813083          	ld	ra,56(sp)
    80005024:	03013403          	ld	s0,48(sp)
    80005028:	02813483          	ld	s1,40(sp)
    8000502c:	02013903          	ld	s2,32(sp)
    80005030:	01813983          	ld	s3,24(sp)
    80005034:	04010113          	addi	sp,sp,64
    80005038:	00008067          	ret

000000008000503c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000503c:	fd010113          	addi	sp,sp,-48
    80005040:	02113423          	sd	ra,40(sp)
    80005044:	02813023          	sd	s0,32(sp)
    80005048:	00913c23          	sd	s1,24(sp)
    8000504c:	01213823          	sd	s2,16(sp)
    80005050:	01313423          	sd	s3,8(sp)
    80005054:	03010413          	addi	s0,sp,48
    80005058:	00050493          	mv	s1,a0
    8000505c:	00058913          	mv	s2,a1
    80005060:	0015879b          	addiw	a5,a1,1
    80005064:	0007851b          	sext.w	a0,a5
    80005068:	00f4a023          	sw	a5,0(s1)
    8000506c:	0004a823          	sw	zero,16(s1)
    80005070:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005074:	00251513          	slli	a0,a0,0x2
    80005078:	ffffd097          	auipc	ra,0xffffd
    8000507c:	0e4080e7          	jalr	228(ra) # 8000215c <_Z9mem_allocm>
    80005080:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005084:	01000513          	li	a0,16
    80005088:	ffffc097          	auipc	ra,0xffffc
    8000508c:	1ac080e7          	jalr	428(ra) # 80001234 <_Znwm>
    80005090:	00050993          	mv	s3,a0
    80005094:	00000593          	li	a1,0
    80005098:	ffffd097          	auipc	ra,0xffffd
    8000509c:	768080e7          	jalr	1896(ra) # 80002800 <_ZN9SemaphoreC1Ej>
    800050a0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800050a4:	01000513          	li	a0,16
    800050a8:	ffffc097          	auipc	ra,0xffffc
    800050ac:	18c080e7          	jalr	396(ra) # 80001234 <_Znwm>
    800050b0:	00050993          	mv	s3,a0
    800050b4:	00090593          	mv	a1,s2
    800050b8:	ffffd097          	auipc	ra,0xffffd
    800050bc:	748080e7          	jalr	1864(ra) # 80002800 <_ZN9SemaphoreC1Ej>
    800050c0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800050c4:	01000513          	li	a0,16
    800050c8:	ffffc097          	auipc	ra,0xffffc
    800050cc:	16c080e7          	jalr	364(ra) # 80001234 <_Znwm>
    800050d0:	00050913          	mv	s2,a0
    800050d4:	00100593          	li	a1,1
    800050d8:	ffffd097          	auipc	ra,0xffffd
    800050dc:	728080e7          	jalr	1832(ra) # 80002800 <_ZN9SemaphoreC1Ej>
    800050e0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800050e4:	01000513          	li	a0,16
    800050e8:	ffffc097          	auipc	ra,0xffffc
    800050ec:	14c080e7          	jalr	332(ra) # 80001234 <_Znwm>
    800050f0:	00050913          	mv	s2,a0
    800050f4:	00100593          	li	a1,1
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	708080e7          	jalr	1800(ra) # 80002800 <_ZN9SemaphoreC1Ej>
    80005100:	0324b823          	sd	s2,48(s1)
}
    80005104:	02813083          	ld	ra,40(sp)
    80005108:	02013403          	ld	s0,32(sp)
    8000510c:	01813483          	ld	s1,24(sp)
    80005110:	01013903          	ld	s2,16(sp)
    80005114:	00813983          	ld	s3,8(sp)
    80005118:	03010113          	addi	sp,sp,48
    8000511c:	00008067          	ret
    80005120:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005124:	00098513          	mv	a0,s3
    80005128:	ffffc097          	auipc	ra,0xffffc
    8000512c:	15c080e7          	jalr	348(ra) # 80001284 <_ZdlPv>
    80005130:	00048513          	mv	a0,s1
    80005134:	00007097          	auipc	ra,0x7
    80005138:	5f4080e7          	jalr	1524(ra) # 8000c728 <_Unwind_Resume>
    8000513c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005140:	00098513          	mv	a0,s3
    80005144:	ffffc097          	auipc	ra,0xffffc
    80005148:	140080e7          	jalr	320(ra) # 80001284 <_ZdlPv>
    8000514c:	00048513          	mv	a0,s1
    80005150:	00007097          	auipc	ra,0x7
    80005154:	5d8080e7          	jalr	1496(ra) # 8000c728 <_Unwind_Resume>
    80005158:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000515c:	00090513          	mv	a0,s2
    80005160:	ffffc097          	auipc	ra,0xffffc
    80005164:	124080e7          	jalr	292(ra) # 80001284 <_ZdlPv>
    80005168:	00048513          	mv	a0,s1
    8000516c:	00007097          	auipc	ra,0x7
    80005170:	5bc080e7          	jalr	1468(ra) # 8000c728 <_Unwind_Resume>
    80005174:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005178:	00090513          	mv	a0,s2
    8000517c:	ffffc097          	auipc	ra,0xffffc
    80005180:	108080e7          	jalr	264(ra) # 80001284 <_ZdlPv>
    80005184:	00048513          	mv	a0,s1
    80005188:	00007097          	auipc	ra,0x7
    8000518c:	5a0080e7          	jalr	1440(ra) # 8000c728 <_Unwind_Resume>

0000000080005190 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005190:	fe010113          	addi	sp,sp,-32
    80005194:	00113c23          	sd	ra,24(sp)
    80005198:	00813823          	sd	s0,16(sp)
    8000519c:	00913423          	sd	s1,8(sp)
    800051a0:	01213023          	sd	s2,0(sp)
    800051a4:	02010413          	addi	s0,sp,32
    800051a8:	00050493          	mv	s1,a0
    800051ac:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800051b0:	01853503          	ld	a0,24(a0)
    800051b4:	ffffd097          	auipc	ra,0xffffd
    800051b8:	684080e7          	jalr	1668(ra) # 80002838 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800051bc:	0304b503          	ld	a0,48(s1)
    800051c0:	ffffd097          	auipc	ra,0xffffd
    800051c4:	678080e7          	jalr	1656(ra) # 80002838 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800051c8:	0084b783          	ld	a5,8(s1)
    800051cc:	0144a703          	lw	a4,20(s1)
    800051d0:	00271713          	slli	a4,a4,0x2
    800051d4:	00e787b3          	add	a5,a5,a4
    800051d8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800051dc:	0144a783          	lw	a5,20(s1)
    800051e0:	0017879b          	addiw	a5,a5,1
    800051e4:	0004a703          	lw	a4,0(s1)
    800051e8:	02e7e7bb          	remw	a5,a5,a4
    800051ec:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800051f0:	0304b503          	ld	a0,48(s1)
    800051f4:	ffffd097          	auipc	ra,0xffffd
    800051f8:	670080e7          	jalr	1648(ra) # 80002864 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800051fc:	0204b503          	ld	a0,32(s1)
    80005200:	ffffd097          	auipc	ra,0xffffd
    80005204:	664080e7          	jalr	1636(ra) # 80002864 <_ZN9Semaphore6signalEv>

}
    80005208:	01813083          	ld	ra,24(sp)
    8000520c:	01013403          	ld	s0,16(sp)
    80005210:	00813483          	ld	s1,8(sp)
    80005214:	00013903          	ld	s2,0(sp)
    80005218:	02010113          	addi	sp,sp,32
    8000521c:	00008067          	ret

0000000080005220 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005220:	fe010113          	addi	sp,sp,-32
    80005224:	00113c23          	sd	ra,24(sp)
    80005228:	00813823          	sd	s0,16(sp)
    8000522c:	00913423          	sd	s1,8(sp)
    80005230:	01213023          	sd	s2,0(sp)
    80005234:	02010413          	addi	s0,sp,32
    80005238:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000523c:	02053503          	ld	a0,32(a0)
    80005240:	ffffd097          	auipc	ra,0xffffd
    80005244:	5f8080e7          	jalr	1528(ra) # 80002838 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005248:	0284b503          	ld	a0,40(s1)
    8000524c:	ffffd097          	auipc	ra,0xffffd
    80005250:	5ec080e7          	jalr	1516(ra) # 80002838 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005254:	0084b703          	ld	a4,8(s1)
    80005258:	0104a783          	lw	a5,16(s1)
    8000525c:	00279693          	slli	a3,a5,0x2
    80005260:	00d70733          	add	a4,a4,a3
    80005264:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005268:	0017879b          	addiw	a5,a5,1
    8000526c:	0004a703          	lw	a4,0(s1)
    80005270:	02e7e7bb          	remw	a5,a5,a4
    80005274:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005278:	0284b503          	ld	a0,40(s1)
    8000527c:	ffffd097          	auipc	ra,0xffffd
    80005280:	5e8080e7          	jalr	1512(ra) # 80002864 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005284:	0184b503          	ld	a0,24(s1)
    80005288:	ffffd097          	auipc	ra,0xffffd
    8000528c:	5dc080e7          	jalr	1500(ra) # 80002864 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005290:	00090513          	mv	a0,s2
    80005294:	01813083          	ld	ra,24(sp)
    80005298:	01013403          	ld	s0,16(sp)
    8000529c:	00813483          	ld	s1,8(sp)
    800052a0:	00013903          	ld	s2,0(sp)
    800052a4:	02010113          	addi	sp,sp,32
    800052a8:	00008067          	ret

00000000800052ac <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800052ac:	fe010113          	addi	sp,sp,-32
    800052b0:	00113c23          	sd	ra,24(sp)
    800052b4:	00813823          	sd	s0,16(sp)
    800052b8:	00913423          	sd	s1,8(sp)
    800052bc:	01213023          	sd	s2,0(sp)
    800052c0:	02010413          	addi	s0,sp,32
    800052c4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800052c8:	02853503          	ld	a0,40(a0)
    800052cc:	ffffd097          	auipc	ra,0xffffd
    800052d0:	56c080e7          	jalr	1388(ra) # 80002838 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800052d4:	0304b503          	ld	a0,48(s1)
    800052d8:	ffffd097          	auipc	ra,0xffffd
    800052dc:	560080e7          	jalr	1376(ra) # 80002838 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800052e0:	0144a783          	lw	a5,20(s1)
    800052e4:	0104a903          	lw	s2,16(s1)
    800052e8:	0327ce63          	blt	a5,s2,80005324 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800052ec:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800052f0:	0304b503          	ld	a0,48(s1)
    800052f4:	ffffd097          	auipc	ra,0xffffd
    800052f8:	570080e7          	jalr	1392(ra) # 80002864 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800052fc:	0284b503          	ld	a0,40(s1)
    80005300:	ffffd097          	auipc	ra,0xffffd
    80005304:	564080e7          	jalr	1380(ra) # 80002864 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005308:	00090513          	mv	a0,s2
    8000530c:	01813083          	ld	ra,24(sp)
    80005310:	01013403          	ld	s0,16(sp)
    80005314:	00813483          	ld	s1,8(sp)
    80005318:	00013903          	ld	s2,0(sp)
    8000531c:	02010113          	addi	sp,sp,32
    80005320:	00008067          	ret
        ret = cap - head + tail;
    80005324:	0004a703          	lw	a4,0(s1)
    80005328:	4127093b          	subw	s2,a4,s2
    8000532c:	00f9093b          	addw	s2,s2,a5
    80005330:	fc1ff06f          	j	800052f0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005334 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005334:	fe010113          	addi	sp,sp,-32
    80005338:	00113c23          	sd	ra,24(sp)
    8000533c:	00813823          	sd	s0,16(sp)
    80005340:	00913423          	sd	s1,8(sp)
    80005344:	02010413          	addi	s0,sp,32
    80005348:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000534c:	00a00513          	li	a0,10
    80005350:	ffffd097          	auipc	ra,0xffffd
    80005354:	594080e7          	jalr	1428(ra) # 800028e4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005358:	00004517          	auipc	a0,0x4
    8000535c:	fd850513          	addi	a0,a0,-40 # 80009330 <_ZN15MemoryAllocator10DBlockSizeE+0x310>
    80005360:	00000097          	auipc	ra,0x0
    80005364:	a0c080e7          	jalr	-1524(ra) # 80004d6c <_Z11printStringPKc>
    while (getCnt()) {
    80005368:	00048513          	mv	a0,s1
    8000536c:	00000097          	auipc	ra,0x0
    80005370:	f40080e7          	jalr	-192(ra) # 800052ac <_ZN9BufferCPP6getCntEv>
    80005374:	02050c63          	beqz	a0,800053ac <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005378:	0084b783          	ld	a5,8(s1)
    8000537c:	0104a703          	lw	a4,16(s1)
    80005380:	00271713          	slli	a4,a4,0x2
    80005384:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005388:	0007c503          	lbu	a0,0(a5)
    8000538c:	ffffd097          	auipc	ra,0xffffd
    80005390:	558080e7          	jalr	1368(ra) # 800028e4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005394:	0104a783          	lw	a5,16(s1)
    80005398:	0017879b          	addiw	a5,a5,1
    8000539c:	0004a703          	lw	a4,0(s1)
    800053a0:	02e7e7bb          	remw	a5,a5,a4
    800053a4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800053a8:	fc1ff06f          	j	80005368 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800053ac:	02100513          	li	a0,33
    800053b0:	ffffd097          	auipc	ra,0xffffd
    800053b4:	534080e7          	jalr	1332(ra) # 800028e4 <_ZN7Console4putcEc>
    Console::putc('\n');
    800053b8:	00a00513          	li	a0,10
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	528080e7          	jalr	1320(ra) # 800028e4 <_ZN7Console4putcEc>
    mem_free(buffer);
    800053c4:	0084b503          	ld	a0,8(s1)
    800053c8:	ffffd097          	auipc	ra,0xffffd
    800053cc:	df4080e7          	jalr	-524(ra) # 800021bc <_Z8mem_freePv>
    delete itemAvailable;
    800053d0:	0204b503          	ld	a0,32(s1)
    800053d4:	00050863          	beqz	a0,800053e4 <_ZN9BufferCPPD1Ev+0xb0>
    800053d8:	00053783          	ld	a5,0(a0)
    800053dc:	0087b783          	ld	a5,8(a5)
    800053e0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800053e4:	0184b503          	ld	a0,24(s1)
    800053e8:	00050863          	beqz	a0,800053f8 <_ZN9BufferCPPD1Ev+0xc4>
    800053ec:	00053783          	ld	a5,0(a0)
    800053f0:	0087b783          	ld	a5,8(a5)
    800053f4:	000780e7          	jalr	a5
    delete mutexTail;
    800053f8:	0304b503          	ld	a0,48(s1)
    800053fc:	00050863          	beqz	a0,8000540c <_ZN9BufferCPPD1Ev+0xd8>
    80005400:	00053783          	ld	a5,0(a0)
    80005404:	0087b783          	ld	a5,8(a5)
    80005408:	000780e7          	jalr	a5
    delete mutexHead;
    8000540c:	0284b503          	ld	a0,40(s1)
    80005410:	00050863          	beqz	a0,80005420 <_ZN9BufferCPPD1Ev+0xec>
    80005414:	00053783          	ld	a5,0(a0)
    80005418:	0087b783          	ld	a5,8(a5)
    8000541c:	000780e7          	jalr	a5
}
    80005420:	01813083          	ld	ra,24(sp)
    80005424:	01013403          	ld	s0,16(sp)
    80005428:	00813483          	ld	s1,8(sp)
    8000542c:	02010113          	addi	sp,sp,32
    80005430:	00008067          	ret

0000000080005434 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005434:	fe010113          	addi	sp,sp,-32
    80005438:	00113c23          	sd	ra,24(sp)
    8000543c:	00813823          	sd	s0,16(sp)
    80005440:	00913423          	sd	s1,8(sp)
    80005444:	01213023          	sd	s2,0(sp)
    80005448:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000544c:	00004517          	auipc	a0,0x4
    80005450:	efc50513          	addi	a0,a0,-260 # 80009348 <_ZN15MemoryAllocator10DBlockSizeE+0x328>
    80005454:	00000097          	auipc	ra,0x0
    80005458:	918080e7          	jalr	-1768(ra) # 80004d6c <_Z11printStringPKc>
    int test = getc() - '0';
    8000545c:	ffffd097          	auipc	ra,0xffffd
    80005460:	010080e7          	jalr	16(ra) # 8000246c <_Z4getcv>
    80005464:	00050913          	mv	s2,a0
    80005468:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000546c:	ffffd097          	auipc	ra,0xffffd
    80005470:	000080e7          	jalr	ra # 8000246c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005474:	fcb9091b          	addiw	s2,s2,-53
    80005478:	00100793          	li	a5,1
    8000547c:	0327f463          	bgeu	a5,s2,800054a4 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005480:	00700793          	li	a5,7
    80005484:	0e97e263          	bltu	a5,s1,80005568 <_Z8userMainv+0x134>
    80005488:	00249493          	slli	s1,s1,0x2
    8000548c:	00004717          	auipc	a4,0x4
    80005490:	0d470713          	addi	a4,a4,212 # 80009560 <_ZN15MemoryAllocator10DBlockSizeE+0x540>
    80005494:	00e484b3          	add	s1,s1,a4
    80005498:	0004a783          	lw	a5,0(s1)
    8000549c:	00e787b3          	add	a5,a5,a4
    800054a0:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800054a4:	00004517          	auipc	a0,0x4
    800054a8:	ec450513          	addi	a0,a0,-316 # 80009368 <_ZN15MemoryAllocator10DBlockSizeE+0x348>
    800054ac:	00000097          	auipc	ra,0x0
    800054b0:	8c0080e7          	jalr	-1856(ra) # 80004d6c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800054b4:	01813083          	ld	ra,24(sp)
    800054b8:	01013403          	ld	s0,16(sp)
    800054bc:	00813483          	ld	s1,8(sp)
    800054c0:	00013903          	ld	s2,0(sp)
    800054c4:	02010113          	addi	sp,sp,32
    800054c8:	00008067          	ret
            Threads_C_API_test();
    800054cc:	fffff097          	auipc	ra,0xfffff
    800054d0:	f18080e7          	jalr	-232(ra) # 800043e4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800054d4:	00004517          	auipc	a0,0x4
    800054d8:	ec450513          	addi	a0,a0,-316 # 80009398 <_ZN15MemoryAllocator10DBlockSizeE+0x378>
    800054dc:	00000097          	auipc	ra,0x0
    800054e0:	890080e7          	jalr	-1904(ra) # 80004d6c <_Z11printStringPKc>
            break;
    800054e4:	fd1ff06f          	j	800054b4 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    800054e8:	ffffe097          	auipc	ra,0xffffe
    800054ec:	e0c080e7          	jalr	-500(ra) # 800032f4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800054f0:	00004517          	auipc	a0,0x4
    800054f4:	ee850513          	addi	a0,a0,-280 # 800093d8 <_ZN15MemoryAllocator10DBlockSizeE+0x3b8>
    800054f8:	00000097          	auipc	ra,0x0
    800054fc:	874080e7          	jalr	-1932(ra) # 80004d6c <_Z11printStringPKc>
            break;
    80005500:	fb5ff06f          	j	800054b4 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005504:	ffffd097          	auipc	ra,0xffffd
    80005508:	644080e7          	jalr	1604(ra) # 80002b48 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    8000550c:	00004517          	auipc	a0,0x4
    80005510:	f0c50513          	addi	a0,a0,-244 # 80009418 <_ZN15MemoryAllocator10DBlockSizeE+0x3f8>
    80005514:	00000097          	auipc	ra,0x0
    80005518:	858080e7          	jalr	-1960(ra) # 80004d6c <_Z11printStringPKc>
            break;
    8000551c:	f99ff06f          	j	800054b4 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005520:	fffff097          	auipc	ra,0xfffff
    80005524:	208080e7          	jalr	520(ra) # 80004728 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005528:	00004517          	auipc	a0,0x4
    8000552c:	f4050513          	addi	a0,a0,-192 # 80009468 <_ZN15MemoryAllocator10DBlockSizeE+0x448>
    80005530:	00000097          	auipc	ra,0x0
    80005534:	83c080e7          	jalr	-1988(ra) # 80004d6c <_Z11printStringPKc>
            break;
    80005538:	f7dff06f          	j	800054b4 <_Z8userMainv+0x80>
            System_Mode_test();
    8000553c:	00000097          	auipc	ra,0x0
    80005540:	64c080e7          	jalr	1612(ra) # 80005b88 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005544:	00004517          	auipc	a0,0x4
    80005548:	f7c50513          	addi	a0,a0,-132 # 800094c0 <_ZN15MemoryAllocator10DBlockSizeE+0x4a0>
    8000554c:	00000097          	auipc	ra,0x0
    80005550:	820080e7          	jalr	-2016(ra) # 80004d6c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005554:	00004517          	auipc	a0,0x4
    80005558:	f8c50513          	addi	a0,a0,-116 # 800094e0 <_ZN15MemoryAllocator10DBlockSizeE+0x4c0>
    8000555c:	00000097          	auipc	ra,0x0
    80005560:	810080e7          	jalr	-2032(ra) # 80004d6c <_Z11printStringPKc>
            break;
    80005564:	f51ff06f          	j	800054b4 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005568:	00004517          	auipc	a0,0x4
    8000556c:	fd050513          	addi	a0,a0,-48 # 80009538 <_ZN15MemoryAllocator10DBlockSizeE+0x518>
    80005570:	fffff097          	auipc	ra,0xfffff
    80005574:	7fc080e7          	jalr	2044(ra) # 80004d6c <_Z11printStringPKc>
    80005578:	f3dff06f          	j	800054b4 <_Z8userMainv+0x80>

000000008000557c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000557c:	fe010113          	addi	sp,sp,-32
    80005580:	00113c23          	sd	ra,24(sp)
    80005584:	00813823          	sd	s0,16(sp)
    80005588:	00913423          	sd	s1,8(sp)
    8000558c:	01213023          	sd	s2,0(sp)
    80005590:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005594:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005598:	00600493          	li	s1,6
    while (--i > 0) {
    8000559c:	fff4849b          	addiw	s1,s1,-1
    800055a0:	02905e63          	blez	s1,800055dc <_ZL9sleepyRunPv+0x60>

        printString("Hello ");
    800055a4:	00004517          	auipc	a0,0x4
    800055a8:	fdc50513          	addi	a0,a0,-36 # 80009580 <_ZN15MemoryAllocator10DBlockSizeE+0x560>
    800055ac:	fffff097          	auipc	ra,0xfffff
    800055b0:	7c0080e7          	jalr	1984(ra) # 80004d6c <_Z11printStringPKc>
        printInt(sleep_time);
    800055b4:	00000613          	li	a2,0
    800055b8:	00a00593          	li	a1,10
    800055bc:	0009051b          	sext.w	a0,s2
    800055c0:	00000097          	auipc	ra,0x0
    800055c4:	95c080e7          	jalr	-1700(ra) # 80004f1c <_Z8printIntiii>
        printString(" !\n");
    800055c8:	00004517          	auipc	a0,0x4
    800055cc:	fc050513          	addi	a0,a0,-64 # 80009588 <_ZN15MemoryAllocator10DBlockSizeE+0x568>
    800055d0:	fffff097          	auipc	ra,0xfffff
    800055d4:	79c080e7          	jalr	1948(ra) # 80004d6c <_Z11printStringPKc>
    while (--i > 0) {
    800055d8:	fc5ff06f          	j	8000559c <_ZL9sleepyRunPv+0x20>
        //time_sleep(sleep_time);
    }
    finished[sleep_time/10-1] = true;
    800055dc:	00a00793          	li	a5,10
    800055e0:	02f95933          	divu	s2,s2,a5
    800055e4:	fff90913          	addi	s2,s2,-1
    800055e8:	00006797          	auipc	a5,0x6
    800055ec:	06878793          	addi	a5,a5,104 # 8000b650 <_ZL8finished>
    800055f0:	01278933          	add	s2,a5,s2
    800055f4:	00100793          	li	a5,1
    800055f8:	00f90023          	sb	a5,0(s2)
}
    800055fc:	01813083          	ld	ra,24(sp)
    80005600:	01013403          	ld	s0,16(sp)
    80005604:	00813483          	ld	s1,8(sp)
    80005608:	00013903          	ld	s2,0(sp)
    8000560c:	02010113          	addi	sp,sp,32
    80005610:	00008067          	ret

0000000080005614 <_Z12testSleepingv>:

void testSleeping() {
    80005614:	fc010113          	addi	sp,sp,-64
    80005618:	02113c23          	sd	ra,56(sp)
    8000561c:	02813823          	sd	s0,48(sp)
    80005620:	02913423          	sd	s1,40(sp)
    80005624:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005628:	00a00793          	li	a5,10
    8000562c:	fcf43823          	sd	a5,-48(s0)
    80005630:	01400793          	li	a5,20
    80005634:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005638:	00000493          	li	s1,0
    8000563c:	02c0006f          	j	80005668 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005640:	00349793          	slli	a5,s1,0x3
    80005644:	fd040613          	addi	a2,s0,-48
    80005648:	00f60633          	add	a2,a2,a5
    8000564c:	00000597          	auipc	a1,0x0
    80005650:	f3058593          	addi	a1,a1,-208 # 8000557c <_ZL9sleepyRunPv>
    80005654:	fc040513          	addi	a0,s0,-64
    80005658:	00f50533          	add	a0,a0,a5
    8000565c:	ffffd097          	auipc	ra,0xffffd
    80005660:	bac080e7          	jalr	-1108(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005664:	0014849b          	addiw	s1,s1,1
    80005668:	00100793          	li	a5,1
    8000566c:	fc97dae3          	bge	a5,s1,80005640 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005670:	00006797          	auipc	a5,0x6
    80005674:	fe07c783          	lbu	a5,-32(a5) # 8000b650 <_ZL8finished>
    80005678:	fe078ce3          	beqz	a5,80005670 <_Z12testSleepingv+0x5c>
    8000567c:	00006797          	auipc	a5,0x6
    80005680:	fd57c783          	lbu	a5,-43(a5) # 8000b651 <_ZL8finished+0x1>
    80005684:	fe0786e3          	beqz	a5,80005670 <_Z12testSleepingv+0x5c>
}
    80005688:	03813083          	ld	ra,56(sp)
    8000568c:	03013403          	ld	s0,48(sp)
    80005690:	02813483          	ld	s1,40(sp)
    80005694:	04010113          	addi	sp,sp,64
    80005698:	00008067          	ret

000000008000569c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000569c:	fe010113          	addi	sp,sp,-32
    800056a0:	00113c23          	sd	ra,24(sp)
    800056a4:	00813823          	sd	s0,16(sp)
    800056a8:	00913423          	sd	s1,8(sp)
    800056ac:	01213023          	sd	s2,0(sp)
    800056b0:	02010413          	addi	s0,sp,32
    800056b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800056b8:	00100793          	li	a5,1
    800056bc:	02a7f863          	bgeu	a5,a0,800056ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800056c0:	00a00793          	li	a5,10
    800056c4:	02f577b3          	remu	a5,a0,a5
    800056c8:	02078e63          	beqz	a5,80005704 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800056cc:	fff48513          	addi	a0,s1,-1
    800056d0:	00000097          	auipc	ra,0x0
    800056d4:	fcc080e7          	jalr	-52(ra) # 8000569c <_ZL9fibonaccim>
    800056d8:	00050913          	mv	s2,a0
    800056dc:	ffe48513          	addi	a0,s1,-2
    800056e0:	00000097          	auipc	ra,0x0
    800056e4:	fbc080e7          	jalr	-68(ra) # 8000569c <_ZL9fibonaccim>
    800056e8:	00a90533          	add	a0,s2,a0
}
    800056ec:	01813083          	ld	ra,24(sp)
    800056f0:	01013403          	ld	s0,16(sp)
    800056f4:	00813483          	ld	s1,8(sp)
    800056f8:	00013903          	ld	s2,0(sp)
    800056fc:	02010113          	addi	sp,sp,32
    80005700:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005704:	ffffd097          	auipc	ra,0xffffd
    80005708:	bd4080e7          	jalr	-1068(ra) # 800022d8 <_Z15thread_dispatchv>
    8000570c:	fc1ff06f          	j	800056cc <_ZL9fibonaccim+0x30>

0000000080005710 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005710:	fe010113          	addi	sp,sp,-32
    80005714:	00113c23          	sd	ra,24(sp)
    80005718:	00813823          	sd	s0,16(sp)
    8000571c:	00913423          	sd	s1,8(sp)
    80005720:	01213023          	sd	s2,0(sp)
    80005724:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005728:	00a00493          	li	s1,10
    8000572c:	0400006f          	j	8000576c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005730:	00004517          	auipc	a0,0x4
    80005734:	b5850513          	addi	a0,a0,-1192 # 80009288 <_ZN15MemoryAllocator10DBlockSizeE+0x268>
    80005738:	fffff097          	auipc	ra,0xfffff
    8000573c:	634080e7          	jalr	1588(ra) # 80004d6c <_Z11printStringPKc>
    80005740:	00000613          	li	a2,0
    80005744:	00a00593          	li	a1,10
    80005748:	00048513          	mv	a0,s1
    8000574c:	fffff097          	auipc	ra,0xfffff
    80005750:	7d0080e7          	jalr	2000(ra) # 80004f1c <_Z8printIntiii>
    80005754:	00004517          	auipc	a0,0x4
    80005758:	d6450513          	addi	a0,a0,-668 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    8000575c:	fffff097          	auipc	ra,0xfffff
    80005760:	610080e7          	jalr	1552(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005764:	0014849b          	addiw	s1,s1,1
    80005768:	0ff4f493          	andi	s1,s1,255
    8000576c:	00c00793          	li	a5,12
    80005770:	fc97f0e3          	bgeu	a5,s1,80005730 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005774:	00004517          	auipc	a0,0x4
    80005778:	b1c50513          	addi	a0,a0,-1252 # 80009290 <_ZN15MemoryAllocator10DBlockSizeE+0x270>
    8000577c:	fffff097          	auipc	ra,0xfffff
    80005780:	5f0080e7          	jalr	1520(ra) # 80004d6c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005784:	00500313          	li	t1,5
    thread_dispatch();
    80005788:	ffffd097          	auipc	ra,0xffffd
    8000578c:	b50080e7          	jalr	-1200(ra) # 800022d8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005790:	01000513          	li	a0,16
    80005794:	00000097          	auipc	ra,0x0
    80005798:	f08080e7          	jalr	-248(ra) # 8000569c <_ZL9fibonaccim>
    8000579c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800057a0:	00004517          	auipc	a0,0x4
    800057a4:	b0050513          	addi	a0,a0,-1280 # 800092a0 <_ZN15MemoryAllocator10DBlockSizeE+0x280>
    800057a8:	fffff097          	auipc	ra,0xfffff
    800057ac:	5c4080e7          	jalr	1476(ra) # 80004d6c <_Z11printStringPKc>
    800057b0:	00000613          	li	a2,0
    800057b4:	00a00593          	li	a1,10
    800057b8:	0009051b          	sext.w	a0,s2
    800057bc:	fffff097          	auipc	ra,0xfffff
    800057c0:	760080e7          	jalr	1888(ra) # 80004f1c <_Z8printIntiii>
    800057c4:	00004517          	auipc	a0,0x4
    800057c8:	cf450513          	addi	a0,a0,-780 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    800057cc:	fffff097          	auipc	ra,0xfffff
    800057d0:	5a0080e7          	jalr	1440(ra) # 80004d6c <_Z11printStringPKc>
    800057d4:	0400006f          	j	80005814 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800057d8:	00004517          	auipc	a0,0x4
    800057dc:	ab050513          	addi	a0,a0,-1360 # 80009288 <_ZN15MemoryAllocator10DBlockSizeE+0x268>
    800057e0:	fffff097          	auipc	ra,0xfffff
    800057e4:	58c080e7          	jalr	1420(ra) # 80004d6c <_Z11printStringPKc>
    800057e8:	00000613          	li	a2,0
    800057ec:	00a00593          	li	a1,10
    800057f0:	00048513          	mv	a0,s1
    800057f4:	fffff097          	auipc	ra,0xfffff
    800057f8:	728080e7          	jalr	1832(ra) # 80004f1c <_Z8printIntiii>
    800057fc:	00004517          	auipc	a0,0x4
    80005800:	cbc50513          	addi	a0,a0,-836 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80005804:	fffff097          	auipc	ra,0xfffff
    80005808:	568080e7          	jalr	1384(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000580c:	0014849b          	addiw	s1,s1,1
    80005810:	0ff4f493          	andi	s1,s1,255
    80005814:	00f00793          	li	a5,15
    80005818:	fc97f0e3          	bgeu	a5,s1,800057d8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000581c:	00004517          	auipc	a0,0x4
    80005820:	a9450513          	addi	a0,a0,-1388 # 800092b0 <_ZN15MemoryAllocator10DBlockSizeE+0x290>
    80005824:	fffff097          	auipc	ra,0xfffff
    80005828:	548080e7          	jalr	1352(ra) # 80004d6c <_Z11printStringPKc>
    finishedD = true;
    8000582c:	00100793          	li	a5,1
    80005830:	00006717          	auipc	a4,0x6
    80005834:	e2f70123          	sb	a5,-478(a4) # 8000b652 <_ZL9finishedD>
    thread_dispatch();
    80005838:	ffffd097          	auipc	ra,0xffffd
    8000583c:	aa0080e7          	jalr	-1376(ra) # 800022d8 <_Z15thread_dispatchv>
}
    80005840:	01813083          	ld	ra,24(sp)
    80005844:	01013403          	ld	s0,16(sp)
    80005848:	00813483          	ld	s1,8(sp)
    8000584c:	00013903          	ld	s2,0(sp)
    80005850:	02010113          	addi	sp,sp,32
    80005854:	00008067          	ret

0000000080005858 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005858:	fe010113          	addi	sp,sp,-32
    8000585c:	00113c23          	sd	ra,24(sp)
    80005860:	00813823          	sd	s0,16(sp)
    80005864:	00913423          	sd	s1,8(sp)
    80005868:	01213023          	sd	s2,0(sp)
    8000586c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005870:	00000493          	li	s1,0
    80005874:	0400006f          	j	800058b4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005878:	00004517          	auipc	a0,0x4
    8000587c:	9e050513          	addi	a0,a0,-1568 # 80009258 <_ZN15MemoryAllocator10DBlockSizeE+0x238>
    80005880:	fffff097          	auipc	ra,0xfffff
    80005884:	4ec080e7          	jalr	1260(ra) # 80004d6c <_Z11printStringPKc>
    80005888:	00000613          	li	a2,0
    8000588c:	00a00593          	li	a1,10
    80005890:	00048513          	mv	a0,s1
    80005894:	fffff097          	auipc	ra,0xfffff
    80005898:	688080e7          	jalr	1672(ra) # 80004f1c <_Z8printIntiii>
    8000589c:	00004517          	auipc	a0,0x4
    800058a0:	c1c50513          	addi	a0,a0,-996 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    800058a4:	fffff097          	auipc	ra,0xfffff
    800058a8:	4c8080e7          	jalr	1224(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800058ac:	0014849b          	addiw	s1,s1,1
    800058b0:	0ff4f493          	andi	s1,s1,255
    800058b4:	00200793          	li	a5,2
    800058b8:	fc97f0e3          	bgeu	a5,s1,80005878 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800058bc:	00004517          	auipc	a0,0x4
    800058c0:	9a450513          	addi	a0,a0,-1628 # 80009260 <_ZN15MemoryAllocator10DBlockSizeE+0x240>
    800058c4:	fffff097          	auipc	ra,0xfffff
    800058c8:	4a8080e7          	jalr	1192(ra) # 80004d6c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800058cc:	00700313          	li	t1,7
    thread_dispatch();
    800058d0:	ffffd097          	auipc	ra,0xffffd
    800058d4:	a08080e7          	jalr	-1528(ra) # 800022d8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800058d8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800058dc:	00004517          	auipc	a0,0x4
    800058e0:	99450513          	addi	a0,a0,-1644 # 80009270 <_ZN15MemoryAllocator10DBlockSizeE+0x250>
    800058e4:	fffff097          	auipc	ra,0xfffff
    800058e8:	488080e7          	jalr	1160(ra) # 80004d6c <_Z11printStringPKc>
    800058ec:	00000613          	li	a2,0
    800058f0:	00a00593          	li	a1,10
    800058f4:	0009051b          	sext.w	a0,s2
    800058f8:	fffff097          	auipc	ra,0xfffff
    800058fc:	624080e7          	jalr	1572(ra) # 80004f1c <_Z8printIntiii>
    80005900:	00004517          	auipc	a0,0x4
    80005904:	bb850513          	addi	a0,a0,-1096 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80005908:	fffff097          	auipc	ra,0xfffff
    8000590c:	464080e7          	jalr	1124(ra) # 80004d6c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005910:	00c00513          	li	a0,12
    80005914:	00000097          	auipc	ra,0x0
    80005918:	d88080e7          	jalr	-632(ra) # 8000569c <_ZL9fibonaccim>
    8000591c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005920:	00004517          	auipc	a0,0x4
    80005924:	95850513          	addi	a0,a0,-1704 # 80009278 <_ZN15MemoryAllocator10DBlockSizeE+0x258>
    80005928:	fffff097          	auipc	ra,0xfffff
    8000592c:	444080e7          	jalr	1092(ra) # 80004d6c <_Z11printStringPKc>
    80005930:	00000613          	li	a2,0
    80005934:	00a00593          	li	a1,10
    80005938:	0009051b          	sext.w	a0,s2
    8000593c:	fffff097          	auipc	ra,0xfffff
    80005940:	5e0080e7          	jalr	1504(ra) # 80004f1c <_Z8printIntiii>
    80005944:	00004517          	auipc	a0,0x4
    80005948:	b7450513          	addi	a0,a0,-1164 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    8000594c:	fffff097          	auipc	ra,0xfffff
    80005950:	420080e7          	jalr	1056(ra) # 80004d6c <_Z11printStringPKc>
    80005954:	0400006f          	j	80005994 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005958:	00004517          	auipc	a0,0x4
    8000595c:	90050513          	addi	a0,a0,-1792 # 80009258 <_ZN15MemoryAllocator10DBlockSizeE+0x238>
    80005960:	fffff097          	auipc	ra,0xfffff
    80005964:	40c080e7          	jalr	1036(ra) # 80004d6c <_Z11printStringPKc>
    80005968:	00000613          	li	a2,0
    8000596c:	00a00593          	li	a1,10
    80005970:	00048513          	mv	a0,s1
    80005974:	fffff097          	auipc	ra,0xfffff
    80005978:	5a8080e7          	jalr	1448(ra) # 80004f1c <_Z8printIntiii>
    8000597c:	00004517          	auipc	a0,0x4
    80005980:	b3c50513          	addi	a0,a0,-1220 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80005984:	fffff097          	auipc	ra,0xfffff
    80005988:	3e8080e7          	jalr	1000(ra) # 80004d6c <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000598c:	0014849b          	addiw	s1,s1,1
    80005990:	0ff4f493          	andi	s1,s1,255
    80005994:	00500793          	li	a5,5
    80005998:	fc97f0e3          	bgeu	a5,s1,80005958 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000599c:	00004517          	auipc	a0,0x4
    800059a0:	89450513          	addi	a0,a0,-1900 # 80009230 <_ZN15MemoryAllocator10DBlockSizeE+0x210>
    800059a4:	fffff097          	auipc	ra,0xfffff
    800059a8:	3c8080e7          	jalr	968(ra) # 80004d6c <_Z11printStringPKc>
    finishedC = true;
    800059ac:	00100793          	li	a5,1
    800059b0:	00006717          	auipc	a4,0x6
    800059b4:	caf701a3          	sb	a5,-861(a4) # 8000b653 <_ZL9finishedC>
    thread_dispatch();
    800059b8:	ffffd097          	auipc	ra,0xffffd
    800059bc:	920080e7          	jalr	-1760(ra) # 800022d8 <_Z15thread_dispatchv>
}
    800059c0:	01813083          	ld	ra,24(sp)
    800059c4:	01013403          	ld	s0,16(sp)
    800059c8:	00813483          	ld	s1,8(sp)
    800059cc:	00013903          	ld	s2,0(sp)
    800059d0:	02010113          	addi	sp,sp,32
    800059d4:	00008067          	ret

00000000800059d8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800059d8:	fe010113          	addi	sp,sp,-32
    800059dc:	00113c23          	sd	ra,24(sp)
    800059e0:	00813823          	sd	s0,16(sp)
    800059e4:	00913423          	sd	s1,8(sp)
    800059e8:	01213023          	sd	s2,0(sp)
    800059ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800059f0:	00000913          	li	s2,0
    800059f4:	0400006f          	j	80005a34 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800059f8:	ffffd097          	auipc	ra,0xffffd
    800059fc:	8e0080e7          	jalr	-1824(ra) # 800022d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005a00:	00148493          	addi	s1,s1,1
    80005a04:	000027b7          	lui	a5,0x2
    80005a08:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005a0c:	0097ee63          	bltu	a5,s1,80005a28 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005a10:	00000713          	li	a4,0
    80005a14:	000077b7          	lui	a5,0x7
    80005a18:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005a1c:	fce7eee3          	bltu	a5,a4,800059f8 <_ZL11workerBodyBPv+0x20>
    80005a20:	00170713          	addi	a4,a4,1
    80005a24:	ff1ff06f          	j	80005a14 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005a28:	00a00793          	li	a5,10
    80005a2c:	04f90663          	beq	s2,a5,80005a78 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005a30:	00190913          	addi	s2,s2,1
    80005a34:	00f00793          	li	a5,15
    80005a38:	0527e463          	bltu	a5,s2,80005a80 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005a3c:	00004517          	auipc	a0,0x4
    80005a40:	80450513          	addi	a0,a0,-2044 # 80009240 <_ZN15MemoryAllocator10DBlockSizeE+0x220>
    80005a44:	fffff097          	auipc	ra,0xfffff
    80005a48:	328080e7          	jalr	808(ra) # 80004d6c <_Z11printStringPKc>
    80005a4c:	00000613          	li	a2,0
    80005a50:	00a00593          	li	a1,10
    80005a54:	0009051b          	sext.w	a0,s2
    80005a58:	fffff097          	auipc	ra,0xfffff
    80005a5c:	4c4080e7          	jalr	1220(ra) # 80004f1c <_Z8printIntiii>
    80005a60:	00004517          	auipc	a0,0x4
    80005a64:	a5850513          	addi	a0,a0,-1448 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80005a68:	fffff097          	auipc	ra,0xfffff
    80005a6c:	304080e7          	jalr	772(ra) # 80004d6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005a70:	00000493          	li	s1,0
    80005a74:	f91ff06f          	j	80005a04 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005a78:	14102ff3          	csrr	t6,sepc
    80005a7c:	fb5ff06f          	j	80005a30 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005a80:	00003517          	auipc	a0,0x3
    80005a84:	7c850513          	addi	a0,a0,1992 # 80009248 <_ZN15MemoryAllocator10DBlockSizeE+0x228>
    80005a88:	fffff097          	auipc	ra,0xfffff
    80005a8c:	2e4080e7          	jalr	740(ra) # 80004d6c <_Z11printStringPKc>
    finishedB = true;
    80005a90:	00100793          	li	a5,1
    80005a94:	00006717          	auipc	a4,0x6
    80005a98:	bcf70023          	sb	a5,-1088(a4) # 8000b654 <_ZL9finishedB>
    thread_dispatch();
    80005a9c:	ffffd097          	auipc	ra,0xffffd
    80005aa0:	83c080e7          	jalr	-1988(ra) # 800022d8 <_Z15thread_dispatchv>
}
    80005aa4:	01813083          	ld	ra,24(sp)
    80005aa8:	01013403          	ld	s0,16(sp)
    80005aac:	00813483          	ld	s1,8(sp)
    80005ab0:	00013903          	ld	s2,0(sp)
    80005ab4:	02010113          	addi	sp,sp,32
    80005ab8:	00008067          	ret

0000000080005abc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005abc:	fe010113          	addi	sp,sp,-32
    80005ac0:	00113c23          	sd	ra,24(sp)
    80005ac4:	00813823          	sd	s0,16(sp)
    80005ac8:	00913423          	sd	s1,8(sp)
    80005acc:	01213023          	sd	s2,0(sp)
    80005ad0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005ad4:	00000913          	li	s2,0
    80005ad8:	0380006f          	j	80005b10 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005adc:	ffffc097          	auipc	ra,0xffffc
    80005ae0:	7fc080e7          	jalr	2044(ra) # 800022d8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005ae4:	00148493          	addi	s1,s1,1
    80005ae8:	000027b7          	lui	a5,0x2
    80005aec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005af0:	0097ee63          	bltu	a5,s1,80005b0c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005af4:	00000713          	li	a4,0
    80005af8:	000077b7          	lui	a5,0x7
    80005afc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005b00:	fce7eee3          	bltu	a5,a4,80005adc <_ZL11workerBodyAPv+0x20>
    80005b04:	00170713          	addi	a4,a4,1
    80005b08:	ff1ff06f          	j	80005af8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005b0c:	00190913          	addi	s2,s2,1
    80005b10:	00900793          	li	a5,9
    80005b14:	0527e063          	bltu	a5,s2,80005b54 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005b18:	00003517          	auipc	a0,0x3
    80005b1c:	71050513          	addi	a0,a0,1808 # 80009228 <_ZN15MemoryAllocator10DBlockSizeE+0x208>
    80005b20:	fffff097          	auipc	ra,0xfffff
    80005b24:	24c080e7          	jalr	588(ra) # 80004d6c <_Z11printStringPKc>
    80005b28:	00000613          	li	a2,0
    80005b2c:	00a00593          	li	a1,10
    80005b30:	0009051b          	sext.w	a0,s2
    80005b34:	fffff097          	auipc	ra,0xfffff
    80005b38:	3e8080e7          	jalr	1000(ra) # 80004f1c <_Z8printIntiii>
    80005b3c:	00004517          	auipc	a0,0x4
    80005b40:	97c50513          	addi	a0,a0,-1668 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80005b44:	fffff097          	auipc	ra,0xfffff
    80005b48:	228080e7          	jalr	552(ra) # 80004d6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005b4c:	00000493          	li	s1,0
    80005b50:	f99ff06f          	j	80005ae8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005b54:	00003517          	auipc	a0,0x3
    80005b58:	6dc50513          	addi	a0,a0,1756 # 80009230 <_ZN15MemoryAllocator10DBlockSizeE+0x210>
    80005b5c:	fffff097          	auipc	ra,0xfffff
    80005b60:	210080e7          	jalr	528(ra) # 80004d6c <_Z11printStringPKc>
    finishedA = true;
    80005b64:	00100793          	li	a5,1
    80005b68:	00006717          	auipc	a4,0x6
    80005b6c:	aef706a3          	sb	a5,-1299(a4) # 8000b655 <_ZL9finishedA>
}
    80005b70:	01813083          	ld	ra,24(sp)
    80005b74:	01013403          	ld	s0,16(sp)
    80005b78:	00813483          	ld	s1,8(sp)
    80005b7c:	00013903          	ld	s2,0(sp)
    80005b80:	02010113          	addi	sp,sp,32
    80005b84:	00008067          	ret

0000000080005b88 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005b88:	fd010113          	addi	sp,sp,-48
    80005b8c:	02113423          	sd	ra,40(sp)
    80005b90:	02813023          	sd	s0,32(sp)
    80005b94:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005b98:	00000613          	li	a2,0
    80005b9c:	00000597          	auipc	a1,0x0
    80005ba0:	f2058593          	addi	a1,a1,-224 # 80005abc <_ZL11workerBodyAPv>
    80005ba4:	fd040513          	addi	a0,s0,-48
    80005ba8:	ffffc097          	auipc	ra,0xffffc
    80005bac:	660080e7          	jalr	1632(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005bb0:	00003517          	auipc	a0,0x3
    80005bb4:	71050513          	addi	a0,a0,1808 # 800092c0 <_ZN15MemoryAllocator10DBlockSizeE+0x2a0>
    80005bb8:	fffff097          	auipc	ra,0xfffff
    80005bbc:	1b4080e7          	jalr	436(ra) # 80004d6c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005bc0:	00000613          	li	a2,0
    80005bc4:	00000597          	auipc	a1,0x0
    80005bc8:	e1458593          	addi	a1,a1,-492 # 800059d8 <_ZL11workerBodyBPv>
    80005bcc:	fd840513          	addi	a0,s0,-40
    80005bd0:	ffffc097          	auipc	ra,0xffffc
    80005bd4:	638080e7          	jalr	1592(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005bd8:	00003517          	auipc	a0,0x3
    80005bdc:	70050513          	addi	a0,a0,1792 # 800092d8 <_ZN15MemoryAllocator10DBlockSizeE+0x2b8>
    80005be0:	fffff097          	auipc	ra,0xfffff
    80005be4:	18c080e7          	jalr	396(ra) # 80004d6c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005be8:	00000613          	li	a2,0
    80005bec:	00000597          	auipc	a1,0x0
    80005bf0:	c6c58593          	addi	a1,a1,-916 # 80005858 <_ZL11workerBodyCPv>
    80005bf4:	fe040513          	addi	a0,s0,-32
    80005bf8:	ffffc097          	auipc	ra,0xffffc
    80005bfc:	610080e7          	jalr	1552(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005c00:	00003517          	auipc	a0,0x3
    80005c04:	6f050513          	addi	a0,a0,1776 # 800092f0 <_ZN15MemoryAllocator10DBlockSizeE+0x2d0>
    80005c08:	fffff097          	auipc	ra,0xfffff
    80005c0c:	164080e7          	jalr	356(ra) # 80004d6c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005c10:	00000613          	li	a2,0
    80005c14:	00000597          	auipc	a1,0x0
    80005c18:	afc58593          	addi	a1,a1,-1284 # 80005710 <_ZL11workerBodyDPv>
    80005c1c:	fe840513          	addi	a0,s0,-24
    80005c20:	ffffc097          	auipc	ra,0xffffc
    80005c24:	5e8080e7          	jalr	1512(ra) # 80002208 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005c28:	00003517          	auipc	a0,0x3
    80005c2c:	6e050513          	addi	a0,a0,1760 # 80009308 <_ZN15MemoryAllocator10DBlockSizeE+0x2e8>
    80005c30:	fffff097          	auipc	ra,0xfffff
    80005c34:	13c080e7          	jalr	316(ra) # 80004d6c <_Z11printStringPKc>
    80005c38:	00c0006f          	j	80005c44 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005c3c:	ffffc097          	auipc	ra,0xffffc
    80005c40:	69c080e7          	jalr	1692(ra) # 800022d8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005c44:	00006797          	auipc	a5,0x6
    80005c48:	a117c783          	lbu	a5,-1519(a5) # 8000b655 <_ZL9finishedA>
    80005c4c:	fe0788e3          	beqz	a5,80005c3c <_Z16System_Mode_testv+0xb4>
    80005c50:	00006797          	auipc	a5,0x6
    80005c54:	a047c783          	lbu	a5,-1532(a5) # 8000b654 <_ZL9finishedB>
    80005c58:	fe0782e3          	beqz	a5,80005c3c <_Z16System_Mode_testv+0xb4>
    80005c5c:	00006797          	auipc	a5,0x6
    80005c60:	9f77c783          	lbu	a5,-1545(a5) # 8000b653 <_ZL9finishedC>
    80005c64:	fc078ce3          	beqz	a5,80005c3c <_Z16System_Mode_testv+0xb4>
    80005c68:	00006797          	auipc	a5,0x6
    80005c6c:	9ea7c783          	lbu	a5,-1558(a5) # 8000b652 <_ZL9finishedD>
    80005c70:	fc0786e3          	beqz	a5,80005c3c <_Z16System_Mode_testv+0xb4>
    }

}
    80005c74:	02813083          	ld	ra,40(sp)
    80005c78:	02013403          	ld	s0,32(sp)
    80005c7c:	03010113          	addi	sp,sp,48
    80005c80:	00008067          	ret

0000000080005c84 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005c84:	fe010113          	addi	sp,sp,-32
    80005c88:	00113c23          	sd	ra,24(sp)
    80005c8c:	00813823          	sd	s0,16(sp)
    80005c90:	00913423          	sd	s1,8(sp)
    80005c94:	01213023          	sd	s2,0(sp)
    80005c98:	02010413          	addi	s0,sp,32
    80005c9c:	00050493          	mv	s1,a0
    80005ca0:	00058913          	mv	s2,a1
    80005ca4:	0015879b          	addiw	a5,a1,1
    80005ca8:	0007851b          	sext.w	a0,a5
    80005cac:	00f4a023          	sw	a5,0(s1)
    80005cb0:	0004a823          	sw	zero,16(s1)
    80005cb4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005cb8:	00251513          	slli	a0,a0,0x2
    80005cbc:	ffffc097          	auipc	ra,0xffffc
    80005cc0:	4a0080e7          	jalr	1184(ra) # 8000215c <_Z9mem_allocm>
    80005cc4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005cc8:	00000593          	li	a1,0
    80005ccc:	02048513          	addi	a0,s1,32
    80005cd0:	ffffc097          	auipc	ra,0xffffc
    80005cd4:	644080e7          	jalr	1604(ra) # 80002314 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80005cd8:	00090593          	mv	a1,s2
    80005cdc:	01848513          	addi	a0,s1,24
    80005ce0:	ffffc097          	auipc	ra,0xffffc
    80005ce4:	634080e7          	jalr	1588(ra) # 80002314 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80005ce8:	00100593          	li	a1,1
    80005cec:	02848513          	addi	a0,s1,40
    80005cf0:	ffffc097          	auipc	ra,0xffffc
    80005cf4:	624080e7          	jalr	1572(ra) # 80002314 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80005cf8:	00100593          	li	a1,1
    80005cfc:	03048513          	addi	a0,s1,48
    80005d00:	ffffc097          	auipc	ra,0xffffc
    80005d04:	614080e7          	jalr	1556(ra) # 80002314 <_Z8sem_openPP3Semj>
}
    80005d08:	01813083          	ld	ra,24(sp)
    80005d0c:	01013403          	ld	s0,16(sp)
    80005d10:	00813483          	ld	s1,8(sp)
    80005d14:	00013903          	ld	s2,0(sp)
    80005d18:	02010113          	addi	sp,sp,32
    80005d1c:	00008067          	ret

0000000080005d20 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005d20:	fe010113          	addi	sp,sp,-32
    80005d24:	00113c23          	sd	ra,24(sp)
    80005d28:	00813823          	sd	s0,16(sp)
    80005d2c:	00913423          	sd	s1,8(sp)
    80005d30:	01213023          	sd	s2,0(sp)
    80005d34:	02010413          	addi	s0,sp,32
    80005d38:	00050493          	mv	s1,a0
    80005d3c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005d40:	01853503          	ld	a0,24(a0)
    80005d44:	ffffc097          	auipc	ra,0xffffc
    80005d48:	65c080e7          	jalr	1628(ra) # 800023a0 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80005d4c:	0304b503          	ld	a0,48(s1)
    80005d50:	ffffc097          	auipc	ra,0xffffc
    80005d54:	650080e7          	jalr	1616(ra) # 800023a0 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80005d58:	0084b783          	ld	a5,8(s1)
    80005d5c:	0144a703          	lw	a4,20(s1)
    80005d60:	00271713          	slli	a4,a4,0x2
    80005d64:	00e787b3          	add	a5,a5,a4
    80005d68:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005d6c:	0144a783          	lw	a5,20(s1)
    80005d70:	0017879b          	addiw	a5,a5,1
    80005d74:	0004a703          	lw	a4,0(s1)
    80005d78:	02e7e7bb          	remw	a5,a5,a4
    80005d7c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005d80:	0304b503          	ld	a0,48(s1)
    80005d84:	ffffc097          	auipc	ra,0xffffc
    80005d88:	6a4080e7          	jalr	1700(ra) # 80002428 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80005d8c:	0204b503          	ld	a0,32(s1)
    80005d90:	ffffc097          	auipc	ra,0xffffc
    80005d94:	698080e7          	jalr	1688(ra) # 80002428 <_Z10sem_signalP3Sem>

}
    80005d98:	01813083          	ld	ra,24(sp)
    80005d9c:	01013403          	ld	s0,16(sp)
    80005da0:	00813483          	ld	s1,8(sp)
    80005da4:	00013903          	ld	s2,0(sp)
    80005da8:	02010113          	addi	sp,sp,32
    80005dac:	00008067          	ret

0000000080005db0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005db0:	fe010113          	addi	sp,sp,-32
    80005db4:	00113c23          	sd	ra,24(sp)
    80005db8:	00813823          	sd	s0,16(sp)
    80005dbc:	00913423          	sd	s1,8(sp)
    80005dc0:	01213023          	sd	s2,0(sp)
    80005dc4:	02010413          	addi	s0,sp,32
    80005dc8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005dcc:	02053503          	ld	a0,32(a0)
    80005dd0:	ffffc097          	auipc	ra,0xffffc
    80005dd4:	5d0080e7          	jalr	1488(ra) # 800023a0 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80005dd8:	0284b503          	ld	a0,40(s1)
    80005ddc:	ffffc097          	auipc	ra,0xffffc
    80005de0:	5c4080e7          	jalr	1476(ra) # 800023a0 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80005de4:	0084b703          	ld	a4,8(s1)
    80005de8:	0104a783          	lw	a5,16(s1)
    80005dec:	00279693          	slli	a3,a5,0x2
    80005df0:	00d70733          	add	a4,a4,a3
    80005df4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005df8:	0017879b          	addiw	a5,a5,1
    80005dfc:	0004a703          	lw	a4,0(s1)
    80005e00:	02e7e7bb          	remw	a5,a5,a4
    80005e04:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005e08:	0284b503          	ld	a0,40(s1)
    80005e0c:	ffffc097          	auipc	ra,0xffffc
    80005e10:	61c080e7          	jalr	1564(ra) # 80002428 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80005e14:	0184b503          	ld	a0,24(s1)
    80005e18:	ffffc097          	auipc	ra,0xffffc
    80005e1c:	610080e7          	jalr	1552(ra) # 80002428 <_Z10sem_signalP3Sem>

    return ret;
}
    80005e20:	00090513          	mv	a0,s2
    80005e24:	01813083          	ld	ra,24(sp)
    80005e28:	01013403          	ld	s0,16(sp)
    80005e2c:	00813483          	ld	s1,8(sp)
    80005e30:	00013903          	ld	s2,0(sp)
    80005e34:	02010113          	addi	sp,sp,32
    80005e38:	00008067          	ret

0000000080005e3c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005e3c:	fe010113          	addi	sp,sp,-32
    80005e40:	00113c23          	sd	ra,24(sp)
    80005e44:	00813823          	sd	s0,16(sp)
    80005e48:	00913423          	sd	s1,8(sp)
    80005e4c:	01213023          	sd	s2,0(sp)
    80005e50:	02010413          	addi	s0,sp,32
    80005e54:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005e58:	02853503          	ld	a0,40(a0)
    80005e5c:	ffffc097          	auipc	ra,0xffffc
    80005e60:	544080e7          	jalr	1348(ra) # 800023a0 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80005e64:	0304b503          	ld	a0,48(s1)
    80005e68:	ffffc097          	auipc	ra,0xffffc
    80005e6c:	538080e7          	jalr	1336(ra) # 800023a0 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80005e70:	0144a783          	lw	a5,20(s1)
    80005e74:	0104a903          	lw	s2,16(s1)
    80005e78:	0327ce63          	blt	a5,s2,80005eb4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005e7c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005e80:	0304b503          	ld	a0,48(s1)
    80005e84:	ffffc097          	auipc	ra,0xffffc
    80005e88:	5a4080e7          	jalr	1444(ra) # 80002428 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80005e8c:	0284b503          	ld	a0,40(s1)
    80005e90:	ffffc097          	auipc	ra,0xffffc
    80005e94:	598080e7          	jalr	1432(ra) # 80002428 <_Z10sem_signalP3Sem>

    return ret;
}
    80005e98:	00090513          	mv	a0,s2
    80005e9c:	01813083          	ld	ra,24(sp)
    80005ea0:	01013403          	ld	s0,16(sp)
    80005ea4:	00813483          	ld	s1,8(sp)
    80005ea8:	00013903          	ld	s2,0(sp)
    80005eac:	02010113          	addi	sp,sp,32
    80005eb0:	00008067          	ret
        ret = cap - head + tail;
    80005eb4:	0004a703          	lw	a4,0(s1)
    80005eb8:	4127093b          	subw	s2,a4,s2
    80005ebc:	00f9093b          	addw	s2,s2,a5
    80005ec0:	fc1ff06f          	j	80005e80 <_ZN6Buffer6getCntEv+0x44>

0000000080005ec4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005ec4:	fe010113          	addi	sp,sp,-32
    80005ec8:	00113c23          	sd	ra,24(sp)
    80005ecc:	00813823          	sd	s0,16(sp)
    80005ed0:	00913423          	sd	s1,8(sp)
    80005ed4:	02010413          	addi	s0,sp,32
    80005ed8:	00050493          	mv	s1,a0
    putc('\n');
    80005edc:	00a00513          	li	a0,10
    80005ee0:	ffffc097          	auipc	ra,0xffffc
    80005ee4:	5d0080e7          	jalr	1488(ra) # 800024b0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005ee8:	00003517          	auipc	a0,0x3
    80005eec:	44850513          	addi	a0,a0,1096 # 80009330 <_ZN15MemoryAllocator10DBlockSizeE+0x310>
    80005ef0:	fffff097          	auipc	ra,0xfffff
    80005ef4:	e7c080e7          	jalr	-388(ra) # 80004d6c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005ef8:	00048513          	mv	a0,s1
    80005efc:	00000097          	auipc	ra,0x0
    80005f00:	f40080e7          	jalr	-192(ra) # 80005e3c <_ZN6Buffer6getCntEv>
    80005f04:	02a05c63          	blez	a0,80005f3c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005f08:	0084b783          	ld	a5,8(s1)
    80005f0c:	0104a703          	lw	a4,16(s1)
    80005f10:	00271713          	slli	a4,a4,0x2
    80005f14:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005f18:	0007c503          	lbu	a0,0(a5)
    80005f1c:	ffffc097          	auipc	ra,0xffffc
    80005f20:	594080e7          	jalr	1428(ra) # 800024b0 <_Z4putcc>
        head = (head + 1) % cap;
    80005f24:	0104a783          	lw	a5,16(s1)
    80005f28:	0017879b          	addiw	a5,a5,1
    80005f2c:	0004a703          	lw	a4,0(s1)
    80005f30:	02e7e7bb          	remw	a5,a5,a4
    80005f34:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005f38:	fc1ff06f          	j	80005ef8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005f3c:	02100513          	li	a0,33
    80005f40:	ffffc097          	auipc	ra,0xffffc
    80005f44:	570080e7          	jalr	1392(ra) # 800024b0 <_Z4putcc>
    putc('\n');
    80005f48:	00a00513          	li	a0,10
    80005f4c:	ffffc097          	auipc	ra,0xffffc
    80005f50:	564080e7          	jalr	1380(ra) # 800024b0 <_Z4putcc>
    mem_free(buffer);
    80005f54:	0084b503          	ld	a0,8(s1)
    80005f58:	ffffc097          	auipc	ra,0xffffc
    80005f5c:	264080e7          	jalr	612(ra) # 800021bc <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005f60:	0204b503          	ld	a0,32(s1)
    80005f64:	ffffc097          	auipc	ra,0xffffc
    80005f68:	3f8080e7          	jalr	1016(ra) # 8000235c <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80005f6c:	0184b503          	ld	a0,24(s1)
    80005f70:	ffffc097          	auipc	ra,0xffffc
    80005f74:	3ec080e7          	jalr	1004(ra) # 8000235c <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80005f78:	0304b503          	ld	a0,48(s1)
    80005f7c:	ffffc097          	auipc	ra,0xffffc
    80005f80:	3e0080e7          	jalr	992(ra) # 8000235c <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80005f84:	0284b503          	ld	a0,40(s1)
    80005f88:	ffffc097          	auipc	ra,0xffffc
    80005f8c:	3d4080e7          	jalr	980(ra) # 8000235c <_Z9sem_closeP3Sem>
}
    80005f90:	01813083          	ld	ra,24(sp)
    80005f94:	01013403          	ld	s0,16(sp)
    80005f98:	00813483          	ld	s1,8(sp)
    80005f9c:	02010113          	addi	sp,sp,32
    80005fa0:	00008067          	ret

0000000080005fa4 <start>:
    80005fa4:	ff010113          	addi	sp,sp,-16
    80005fa8:	00813423          	sd	s0,8(sp)
    80005fac:	01010413          	addi	s0,sp,16
    80005fb0:	300027f3          	csrr	a5,mstatus
    80005fb4:	ffffe737          	lui	a4,0xffffe
    80005fb8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1f3f>
    80005fbc:	00e7f7b3          	and	a5,a5,a4
    80005fc0:	00001737          	lui	a4,0x1
    80005fc4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005fc8:	00e7e7b3          	or	a5,a5,a4
    80005fcc:	30079073          	csrw	mstatus,a5
    80005fd0:	00000797          	auipc	a5,0x0
    80005fd4:	16078793          	addi	a5,a5,352 # 80006130 <system_main>
    80005fd8:	34179073          	csrw	mepc,a5
    80005fdc:	00000793          	li	a5,0
    80005fe0:	18079073          	csrw	satp,a5
    80005fe4:	000107b7          	lui	a5,0x10
    80005fe8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005fec:	30279073          	csrw	medeleg,a5
    80005ff0:	30379073          	csrw	mideleg,a5
    80005ff4:	104027f3          	csrr	a5,sie
    80005ff8:	2227e793          	ori	a5,a5,546
    80005ffc:	10479073          	csrw	sie,a5
    80006000:	fff00793          	li	a5,-1
    80006004:	00a7d793          	srli	a5,a5,0xa
    80006008:	3b079073          	csrw	pmpaddr0,a5
    8000600c:	00f00793          	li	a5,15
    80006010:	3a079073          	csrw	pmpcfg0,a5
    80006014:	f14027f3          	csrr	a5,mhartid
    80006018:	0200c737          	lui	a4,0x200c
    8000601c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006020:	0007869b          	sext.w	a3,a5
    80006024:	00269713          	slli	a4,a3,0x2
    80006028:	000f4637          	lui	a2,0xf4
    8000602c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006030:	00d70733          	add	a4,a4,a3
    80006034:	0037979b          	slliw	a5,a5,0x3
    80006038:	020046b7          	lui	a3,0x2004
    8000603c:	00d787b3          	add	a5,a5,a3
    80006040:	00c585b3          	add	a1,a1,a2
    80006044:	00371693          	slli	a3,a4,0x3
    80006048:	00005717          	auipc	a4,0x5
    8000604c:	61870713          	addi	a4,a4,1560 # 8000b660 <timer_scratch>
    80006050:	00b7b023          	sd	a1,0(a5)
    80006054:	00d70733          	add	a4,a4,a3
    80006058:	00f73c23          	sd	a5,24(a4)
    8000605c:	02c73023          	sd	a2,32(a4)
    80006060:	34071073          	csrw	mscratch,a4
    80006064:	00000797          	auipc	a5,0x0
    80006068:	6ec78793          	addi	a5,a5,1772 # 80006750 <timervec>
    8000606c:	30579073          	csrw	mtvec,a5
    80006070:	300027f3          	csrr	a5,mstatus
    80006074:	0087e793          	ori	a5,a5,8
    80006078:	30079073          	csrw	mstatus,a5
    8000607c:	304027f3          	csrr	a5,mie
    80006080:	0807e793          	ori	a5,a5,128
    80006084:	30479073          	csrw	mie,a5
    80006088:	f14027f3          	csrr	a5,mhartid
    8000608c:	0007879b          	sext.w	a5,a5
    80006090:	00078213          	mv	tp,a5
    80006094:	30200073          	mret
    80006098:	00813403          	ld	s0,8(sp)
    8000609c:	01010113          	addi	sp,sp,16
    800060a0:	00008067          	ret

00000000800060a4 <timerinit>:
    800060a4:	ff010113          	addi	sp,sp,-16
    800060a8:	00813423          	sd	s0,8(sp)
    800060ac:	01010413          	addi	s0,sp,16
    800060b0:	f14027f3          	csrr	a5,mhartid
    800060b4:	0200c737          	lui	a4,0x200c
    800060b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800060bc:	0007869b          	sext.w	a3,a5
    800060c0:	00269713          	slli	a4,a3,0x2
    800060c4:	000f4637          	lui	a2,0xf4
    800060c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800060cc:	00d70733          	add	a4,a4,a3
    800060d0:	0037979b          	slliw	a5,a5,0x3
    800060d4:	020046b7          	lui	a3,0x2004
    800060d8:	00d787b3          	add	a5,a5,a3
    800060dc:	00c585b3          	add	a1,a1,a2
    800060e0:	00371693          	slli	a3,a4,0x3
    800060e4:	00005717          	auipc	a4,0x5
    800060e8:	57c70713          	addi	a4,a4,1404 # 8000b660 <timer_scratch>
    800060ec:	00b7b023          	sd	a1,0(a5)
    800060f0:	00d70733          	add	a4,a4,a3
    800060f4:	00f73c23          	sd	a5,24(a4)
    800060f8:	02c73023          	sd	a2,32(a4)
    800060fc:	34071073          	csrw	mscratch,a4
    80006100:	00000797          	auipc	a5,0x0
    80006104:	65078793          	addi	a5,a5,1616 # 80006750 <timervec>
    80006108:	30579073          	csrw	mtvec,a5
    8000610c:	300027f3          	csrr	a5,mstatus
    80006110:	0087e793          	ori	a5,a5,8
    80006114:	30079073          	csrw	mstatus,a5
    80006118:	304027f3          	csrr	a5,mie
    8000611c:	0807e793          	ori	a5,a5,128
    80006120:	30479073          	csrw	mie,a5
    80006124:	00813403          	ld	s0,8(sp)
    80006128:	01010113          	addi	sp,sp,16
    8000612c:	00008067          	ret

0000000080006130 <system_main>:
    80006130:	fe010113          	addi	sp,sp,-32
    80006134:	00813823          	sd	s0,16(sp)
    80006138:	00913423          	sd	s1,8(sp)
    8000613c:	00113c23          	sd	ra,24(sp)
    80006140:	02010413          	addi	s0,sp,32
    80006144:	00000097          	auipc	ra,0x0
    80006148:	0c4080e7          	jalr	196(ra) # 80006208 <cpuid>
    8000614c:	00005497          	auipc	s1,0x5
    80006150:	44448493          	addi	s1,s1,1092 # 8000b590 <started>
    80006154:	02050263          	beqz	a0,80006178 <system_main+0x48>
    80006158:	0004a783          	lw	a5,0(s1)
    8000615c:	0007879b          	sext.w	a5,a5
    80006160:	fe078ce3          	beqz	a5,80006158 <system_main+0x28>
    80006164:	0ff0000f          	fence
    80006168:	00003517          	auipc	a0,0x3
    8000616c:	45850513          	addi	a0,a0,1112 # 800095c0 <_ZN15MemoryAllocator10DBlockSizeE+0x5a0>
    80006170:	00001097          	auipc	ra,0x1
    80006174:	a7c080e7          	jalr	-1412(ra) # 80006bec <panic>
    80006178:	00001097          	auipc	ra,0x1
    8000617c:	9d0080e7          	jalr	-1584(ra) # 80006b48 <consoleinit>
    80006180:	00001097          	auipc	ra,0x1
    80006184:	15c080e7          	jalr	348(ra) # 800072dc <printfinit>
    80006188:	00003517          	auipc	a0,0x3
    8000618c:	33050513          	addi	a0,a0,816 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80006190:	00001097          	auipc	ra,0x1
    80006194:	ab8080e7          	jalr	-1352(ra) # 80006c48 <__printf>
    80006198:	00003517          	auipc	a0,0x3
    8000619c:	3f850513          	addi	a0,a0,1016 # 80009590 <_ZN15MemoryAllocator10DBlockSizeE+0x570>
    800061a0:	00001097          	auipc	ra,0x1
    800061a4:	aa8080e7          	jalr	-1368(ra) # 80006c48 <__printf>
    800061a8:	00003517          	auipc	a0,0x3
    800061ac:	31050513          	addi	a0,a0,784 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    800061b0:	00001097          	auipc	ra,0x1
    800061b4:	a98080e7          	jalr	-1384(ra) # 80006c48 <__printf>
    800061b8:	00001097          	auipc	ra,0x1
    800061bc:	4b0080e7          	jalr	1200(ra) # 80007668 <kinit>
    800061c0:	00000097          	auipc	ra,0x0
    800061c4:	148080e7          	jalr	328(ra) # 80006308 <trapinit>
    800061c8:	00000097          	auipc	ra,0x0
    800061cc:	16c080e7          	jalr	364(ra) # 80006334 <trapinithart>
    800061d0:	00000097          	auipc	ra,0x0
    800061d4:	5c0080e7          	jalr	1472(ra) # 80006790 <plicinit>
    800061d8:	00000097          	auipc	ra,0x0
    800061dc:	5e0080e7          	jalr	1504(ra) # 800067b8 <plicinithart>
    800061e0:	00000097          	auipc	ra,0x0
    800061e4:	078080e7          	jalr	120(ra) # 80006258 <userinit>
    800061e8:	0ff0000f          	fence
    800061ec:	00100793          	li	a5,1
    800061f0:	00003517          	auipc	a0,0x3
    800061f4:	3b850513          	addi	a0,a0,952 # 800095a8 <_ZN15MemoryAllocator10DBlockSizeE+0x588>
    800061f8:	00f4a023          	sw	a5,0(s1)
    800061fc:	00001097          	auipc	ra,0x1
    80006200:	a4c080e7          	jalr	-1460(ra) # 80006c48 <__printf>
    80006204:	0000006f          	j	80006204 <system_main+0xd4>

0000000080006208 <cpuid>:
    80006208:	ff010113          	addi	sp,sp,-16
    8000620c:	00813423          	sd	s0,8(sp)
    80006210:	01010413          	addi	s0,sp,16
    80006214:	00020513          	mv	a0,tp
    80006218:	00813403          	ld	s0,8(sp)
    8000621c:	0005051b          	sext.w	a0,a0
    80006220:	01010113          	addi	sp,sp,16
    80006224:	00008067          	ret

0000000080006228 <mycpu>:
    80006228:	ff010113          	addi	sp,sp,-16
    8000622c:	00813423          	sd	s0,8(sp)
    80006230:	01010413          	addi	s0,sp,16
    80006234:	00020793          	mv	a5,tp
    80006238:	00813403          	ld	s0,8(sp)
    8000623c:	0007879b          	sext.w	a5,a5
    80006240:	00779793          	slli	a5,a5,0x7
    80006244:	00006517          	auipc	a0,0x6
    80006248:	44c50513          	addi	a0,a0,1100 # 8000c690 <cpus>
    8000624c:	00f50533          	add	a0,a0,a5
    80006250:	01010113          	addi	sp,sp,16
    80006254:	00008067          	ret

0000000080006258 <userinit>:
    80006258:	ff010113          	addi	sp,sp,-16
    8000625c:	00813423          	sd	s0,8(sp)
    80006260:	01010413          	addi	s0,sp,16
    80006264:	00813403          	ld	s0,8(sp)
    80006268:	01010113          	addi	sp,sp,16
    8000626c:	ffffb317          	auipc	t1,0xffffb
    80006270:	09030067          	jr	144(t1) # 800012fc <main>

0000000080006274 <either_copyout>:
    80006274:	ff010113          	addi	sp,sp,-16
    80006278:	00813023          	sd	s0,0(sp)
    8000627c:	00113423          	sd	ra,8(sp)
    80006280:	01010413          	addi	s0,sp,16
    80006284:	02051663          	bnez	a0,800062b0 <either_copyout+0x3c>
    80006288:	00058513          	mv	a0,a1
    8000628c:	00060593          	mv	a1,a2
    80006290:	0006861b          	sext.w	a2,a3
    80006294:	00002097          	auipc	ra,0x2
    80006298:	c60080e7          	jalr	-928(ra) # 80007ef4 <__memmove>
    8000629c:	00813083          	ld	ra,8(sp)
    800062a0:	00013403          	ld	s0,0(sp)
    800062a4:	00000513          	li	a0,0
    800062a8:	01010113          	addi	sp,sp,16
    800062ac:	00008067          	ret
    800062b0:	00003517          	auipc	a0,0x3
    800062b4:	33850513          	addi	a0,a0,824 # 800095e8 <_ZN15MemoryAllocator10DBlockSizeE+0x5c8>
    800062b8:	00001097          	auipc	ra,0x1
    800062bc:	934080e7          	jalr	-1740(ra) # 80006bec <panic>

00000000800062c0 <either_copyin>:
    800062c0:	ff010113          	addi	sp,sp,-16
    800062c4:	00813023          	sd	s0,0(sp)
    800062c8:	00113423          	sd	ra,8(sp)
    800062cc:	01010413          	addi	s0,sp,16
    800062d0:	02059463          	bnez	a1,800062f8 <either_copyin+0x38>
    800062d4:	00060593          	mv	a1,a2
    800062d8:	0006861b          	sext.w	a2,a3
    800062dc:	00002097          	auipc	ra,0x2
    800062e0:	c18080e7          	jalr	-1000(ra) # 80007ef4 <__memmove>
    800062e4:	00813083          	ld	ra,8(sp)
    800062e8:	00013403          	ld	s0,0(sp)
    800062ec:	00000513          	li	a0,0
    800062f0:	01010113          	addi	sp,sp,16
    800062f4:	00008067          	ret
    800062f8:	00003517          	auipc	a0,0x3
    800062fc:	31850513          	addi	a0,a0,792 # 80009610 <_ZN15MemoryAllocator10DBlockSizeE+0x5f0>
    80006300:	00001097          	auipc	ra,0x1
    80006304:	8ec080e7          	jalr	-1812(ra) # 80006bec <panic>

0000000080006308 <trapinit>:
    80006308:	ff010113          	addi	sp,sp,-16
    8000630c:	00813423          	sd	s0,8(sp)
    80006310:	01010413          	addi	s0,sp,16
    80006314:	00813403          	ld	s0,8(sp)
    80006318:	00003597          	auipc	a1,0x3
    8000631c:	32058593          	addi	a1,a1,800 # 80009638 <_ZN15MemoryAllocator10DBlockSizeE+0x618>
    80006320:	00006517          	auipc	a0,0x6
    80006324:	3f050513          	addi	a0,a0,1008 # 8000c710 <tickslock>
    80006328:	01010113          	addi	sp,sp,16
    8000632c:	00001317          	auipc	t1,0x1
    80006330:	5cc30067          	jr	1484(t1) # 800078f8 <initlock>

0000000080006334 <trapinithart>:
    80006334:	ff010113          	addi	sp,sp,-16
    80006338:	00813423          	sd	s0,8(sp)
    8000633c:	01010413          	addi	s0,sp,16
    80006340:	00000797          	auipc	a5,0x0
    80006344:	30078793          	addi	a5,a5,768 # 80006640 <kernelvec>
    80006348:	10579073          	csrw	stvec,a5
    8000634c:	00813403          	ld	s0,8(sp)
    80006350:	01010113          	addi	sp,sp,16
    80006354:	00008067          	ret

0000000080006358 <usertrap>:
    80006358:	ff010113          	addi	sp,sp,-16
    8000635c:	00813423          	sd	s0,8(sp)
    80006360:	01010413          	addi	s0,sp,16
    80006364:	00813403          	ld	s0,8(sp)
    80006368:	01010113          	addi	sp,sp,16
    8000636c:	00008067          	ret

0000000080006370 <usertrapret>:
    80006370:	ff010113          	addi	sp,sp,-16
    80006374:	00813423          	sd	s0,8(sp)
    80006378:	01010413          	addi	s0,sp,16
    8000637c:	00813403          	ld	s0,8(sp)
    80006380:	01010113          	addi	sp,sp,16
    80006384:	00008067          	ret

0000000080006388 <kerneltrap>:
    80006388:	fe010113          	addi	sp,sp,-32
    8000638c:	00813823          	sd	s0,16(sp)
    80006390:	00113c23          	sd	ra,24(sp)
    80006394:	00913423          	sd	s1,8(sp)
    80006398:	02010413          	addi	s0,sp,32
    8000639c:	142025f3          	csrr	a1,scause
    800063a0:	100027f3          	csrr	a5,sstatus
    800063a4:	0027f793          	andi	a5,a5,2
    800063a8:	10079c63          	bnez	a5,800064c0 <kerneltrap+0x138>
    800063ac:	142027f3          	csrr	a5,scause
    800063b0:	0207ce63          	bltz	a5,800063ec <kerneltrap+0x64>
    800063b4:	00003517          	auipc	a0,0x3
    800063b8:	2cc50513          	addi	a0,a0,716 # 80009680 <_ZN15MemoryAllocator10DBlockSizeE+0x660>
    800063bc:	00001097          	auipc	ra,0x1
    800063c0:	88c080e7          	jalr	-1908(ra) # 80006c48 <__printf>
    800063c4:	141025f3          	csrr	a1,sepc
    800063c8:	14302673          	csrr	a2,stval
    800063cc:	00003517          	auipc	a0,0x3
    800063d0:	2c450513          	addi	a0,a0,708 # 80009690 <_ZN15MemoryAllocator10DBlockSizeE+0x670>
    800063d4:	00001097          	auipc	ra,0x1
    800063d8:	874080e7          	jalr	-1932(ra) # 80006c48 <__printf>
    800063dc:	00003517          	auipc	a0,0x3
    800063e0:	2cc50513          	addi	a0,a0,716 # 800096a8 <_ZN15MemoryAllocator10DBlockSizeE+0x688>
    800063e4:	00001097          	auipc	ra,0x1
    800063e8:	808080e7          	jalr	-2040(ra) # 80006bec <panic>
    800063ec:	0ff7f713          	andi	a4,a5,255
    800063f0:	00900693          	li	a3,9
    800063f4:	04d70063          	beq	a4,a3,80006434 <kerneltrap+0xac>
    800063f8:	fff00713          	li	a4,-1
    800063fc:	03f71713          	slli	a4,a4,0x3f
    80006400:	00170713          	addi	a4,a4,1
    80006404:	fae798e3          	bne	a5,a4,800063b4 <kerneltrap+0x2c>
    80006408:	00000097          	auipc	ra,0x0
    8000640c:	e00080e7          	jalr	-512(ra) # 80006208 <cpuid>
    80006410:	06050663          	beqz	a0,8000647c <kerneltrap+0xf4>
    80006414:	144027f3          	csrr	a5,sip
    80006418:	ffd7f793          	andi	a5,a5,-3
    8000641c:	14479073          	csrw	sip,a5
    80006420:	01813083          	ld	ra,24(sp)
    80006424:	01013403          	ld	s0,16(sp)
    80006428:	00813483          	ld	s1,8(sp)
    8000642c:	02010113          	addi	sp,sp,32
    80006430:	00008067          	ret
    80006434:	00000097          	auipc	ra,0x0
    80006438:	3d0080e7          	jalr	976(ra) # 80006804 <plic_claim>
    8000643c:	00a00793          	li	a5,10
    80006440:	00050493          	mv	s1,a0
    80006444:	06f50863          	beq	a0,a5,800064b4 <kerneltrap+0x12c>
    80006448:	fc050ce3          	beqz	a0,80006420 <kerneltrap+0x98>
    8000644c:	00050593          	mv	a1,a0
    80006450:	00003517          	auipc	a0,0x3
    80006454:	21050513          	addi	a0,a0,528 # 80009660 <_ZN15MemoryAllocator10DBlockSizeE+0x640>
    80006458:	00000097          	auipc	ra,0x0
    8000645c:	7f0080e7          	jalr	2032(ra) # 80006c48 <__printf>
    80006460:	01013403          	ld	s0,16(sp)
    80006464:	01813083          	ld	ra,24(sp)
    80006468:	00048513          	mv	a0,s1
    8000646c:	00813483          	ld	s1,8(sp)
    80006470:	02010113          	addi	sp,sp,32
    80006474:	00000317          	auipc	t1,0x0
    80006478:	3c830067          	jr	968(t1) # 8000683c <plic_complete>
    8000647c:	00006517          	auipc	a0,0x6
    80006480:	29450513          	addi	a0,a0,660 # 8000c710 <tickslock>
    80006484:	00001097          	auipc	ra,0x1
    80006488:	498080e7          	jalr	1176(ra) # 8000791c <acquire>
    8000648c:	00005717          	auipc	a4,0x5
    80006490:	10870713          	addi	a4,a4,264 # 8000b594 <ticks>
    80006494:	00072783          	lw	a5,0(a4)
    80006498:	00006517          	auipc	a0,0x6
    8000649c:	27850513          	addi	a0,a0,632 # 8000c710 <tickslock>
    800064a0:	0017879b          	addiw	a5,a5,1
    800064a4:	00f72023          	sw	a5,0(a4)
    800064a8:	00001097          	auipc	ra,0x1
    800064ac:	540080e7          	jalr	1344(ra) # 800079e8 <release>
    800064b0:	f65ff06f          	j	80006414 <kerneltrap+0x8c>
    800064b4:	00001097          	auipc	ra,0x1
    800064b8:	09c080e7          	jalr	156(ra) # 80007550 <uartintr>
    800064bc:	fa5ff06f          	j	80006460 <kerneltrap+0xd8>
    800064c0:	00003517          	auipc	a0,0x3
    800064c4:	18050513          	addi	a0,a0,384 # 80009640 <_ZN15MemoryAllocator10DBlockSizeE+0x620>
    800064c8:	00000097          	auipc	ra,0x0
    800064cc:	724080e7          	jalr	1828(ra) # 80006bec <panic>

00000000800064d0 <clockintr>:
    800064d0:	fe010113          	addi	sp,sp,-32
    800064d4:	00813823          	sd	s0,16(sp)
    800064d8:	00913423          	sd	s1,8(sp)
    800064dc:	00113c23          	sd	ra,24(sp)
    800064e0:	02010413          	addi	s0,sp,32
    800064e4:	00006497          	auipc	s1,0x6
    800064e8:	22c48493          	addi	s1,s1,556 # 8000c710 <tickslock>
    800064ec:	00048513          	mv	a0,s1
    800064f0:	00001097          	auipc	ra,0x1
    800064f4:	42c080e7          	jalr	1068(ra) # 8000791c <acquire>
    800064f8:	00005717          	auipc	a4,0x5
    800064fc:	09c70713          	addi	a4,a4,156 # 8000b594 <ticks>
    80006500:	00072783          	lw	a5,0(a4)
    80006504:	01013403          	ld	s0,16(sp)
    80006508:	01813083          	ld	ra,24(sp)
    8000650c:	00048513          	mv	a0,s1
    80006510:	0017879b          	addiw	a5,a5,1
    80006514:	00813483          	ld	s1,8(sp)
    80006518:	00f72023          	sw	a5,0(a4)
    8000651c:	02010113          	addi	sp,sp,32
    80006520:	00001317          	auipc	t1,0x1
    80006524:	4c830067          	jr	1224(t1) # 800079e8 <release>

0000000080006528 <devintr>:
    80006528:	142027f3          	csrr	a5,scause
    8000652c:	00000513          	li	a0,0
    80006530:	0007c463          	bltz	a5,80006538 <devintr+0x10>
    80006534:	00008067          	ret
    80006538:	fe010113          	addi	sp,sp,-32
    8000653c:	00813823          	sd	s0,16(sp)
    80006540:	00113c23          	sd	ra,24(sp)
    80006544:	00913423          	sd	s1,8(sp)
    80006548:	02010413          	addi	s0,sp,32
    8000654c:	0ff7f713          	andi	a4,a5,255
    80006550:	00900693          	li	a3,9
    80006554:	04d70c63          	beq	a4,a3,800065ac <devintr+0x84>
    80006558:	fff00713          	li	a4,-1
    8000655c:	03f71713          	slli	a4,a4,0x3f
    80006560:	00170713          	addi	a4,a4,1
    80006564:	00e78c63          	beq	a5,a4,8000657c <devintr+0x54>
    80006568:	01813083          	ld	ra,24(sp)
    8000656c:	01013403          	ld	s0,16(sp)
    80006570:	00813483          	ld	s1,8(sp)
    80006574:	02010113          	addi	sp,sp,32
    80006578:	00008067          	ret
    8000657c:	00000097          	auipc	ra,0x0
    80006580:	c8c080e7          	jalr	-884(ra) # 80006208 <cpuid>
    80006584:	06050663          	beqz	a0,800065f0 <devintr+0xc8>
    80006588:	144027f3          	csrr	a5,sip
    8000658c:	ffd7f793          	andi	a5,a5,-3
    80006590:	14479073          	csrw	sip,a5
    80006594:	01813083          	ld	ra,24(sp)
    80006598:	01013403          	ld	s0,16(sp)
    8000659c:	00813483          	ld	s1,8(sp)
    800065a0:	00200513          	li	a0,2
    800065a4:	02010113          	addi	sp,sp,32
    800065a8:	00008067          	ret
    800065ac:	00000097          	auipc	ra,0x0
    800065b0:	258080e7          	jalr	600(ra) # 80006804 <plic_claim>
    800065b4:	00a00793          	li	a5,10
    800065b8:	00050493          	mv	s1,a0
    800065bc:	06f50663          	beq	a0,a5,80006628 <devintr+0x100>
    800065c0:	00100513          	li	a0,1
    800065c4:	fa0482e3          	beqz	s1,80006568 <devintr+0x40>
    800065c8:	00048593          	mv	a1,s1
    800065cc:	00003517          	auipc	a0,0x3
    800065d0:	09450513          	addi	a0,a0,148 # 80009660 <_ZN15MemoryAllocator10DBlockSizeE+0x640>
    800065d4:	00000097          	auipc	ra,0x0
    800065d8:	674080e7          	jalr	1652(ra) # 80006c48 <__printf>
    800065dc:	00048513          	mv	a0,s1
    800065e0:	00000097          	auipc	ra,0x0
    800065e4:	25c080e7          	jalr	604(ra) # 8000683c <plic_complete>
    800065e8:	00100513          	li	a0,1
    800065ec:	f7dff06f          	j	80006568 <devintr+0x40>
    800065f0:	00006517          	auipc	a0,0x6
    800065f4:	12050513          	addi	a0,a0,288 # 8000c710 <tickslock>
    800065f8:	00001097          	auipc	ra,0x1
    800065fc:	324080e7          	jalr	804(ra) # 8000791c <acquire>
    80006600:	00005717          	auipc	a4,0x5
    80006604:	f9470713          	addi	a4,a4,-108 # 8000b594 <ticks>
    80006608:	00072783          	lw	a5,0(a4)
    8000660c:	00006517          	auipc	a0,0x6
    80006610:	10450513          	addi	a0,a0,260 # 8000c710 <tickslock>
    80006614:	0017879b          	addiw	a5,a5,1
    80006618:	00f72023          	sw	a5,0(a4)
    8000661c:	00001097          	auipc	ra,0x1
    80006620:	3cc080e7          	jalr	972(ra) # 800079e8 <release>
    80006624:	f65ff06f          	j	80006588 <devintr+0x60>
    80006628:	00001097          	auipc	ra,0x1
    8000662c:	f28080e7          	jalr	-216(ra) # 80007550 <uartintr>
    80006630:	fadff06f          	j	800065dc <devintr+0xb4>
	...

0000000080006640 <kernelvec>:
    80006640:	f0010113          	addi	sp,sp,-256
    80006644:	00113023          	sd	ra,0(sp)
    80006648:	00213423          	sd	sp,8(sp)
    8000664c:	00313823          	sd	gp,16(sp)
    80006650:	00413c23          	sd	tp,24(sp)
    80006654:	02513023          	sd	t0,32(sp)
    80006658:	02613423          	sd	t1,40(sp)
    8000665c:	02713823          	sd	t2,48(sp)
    80006660:	02813c23          	sd	s0,56(sp)
    80006664:	04913023          	sd	s1,64(sp)
    80006668:	04a13423          	sd	a0,72(sp)
    8000666c:	04b13823          	sd	a1,80(sp)
    80006670:	04c13c23          	sd	a2,88(sp)
    80006674:	06d13023          	sd	a3,96(sp)
    80006678:	06e13423          	sd	a4,104(sp)
    8000667c:	06f13823          	sd	a5,112(sp)
    80006680:	07013c23          	sd	a6,120(sp)
    80006684:	09113023          	sd	a7,128(sp)
    80006688:	09213423          	sd	s2,136(sp)
    8000668c:	09313823          	sd	s3,144(sp)
    80006690:	09413c23          	sd	s4,152(sp)
    80006694:	0b513023          	sd	s5,160(sp)
    80006698:	0b613423          	sd	s6,168(sp)
    8000669c:	0b713823          	sd	s7,176(sp)
    800066a0:	0b813c23          	sd	s8,184(sp)
    800066a4:	0d913023          	sd	s9,192(sp)
    800066a8:	0da13423          	sd	s10,200(sp)
    800066ac:	0db13823          	sd	s11,208(sp)
    800066b0:	0dc13c23          	sd	t3,216(sp)
    800066b4:	0fd13023          	sd	t4,224(sp)
    800066b8:	0fe13423          	sd	t5,232(sp)
    800066bc:	0ff13823          	sd	t6,240(sp)
    800066c0:	cc9ff0ef          	jal	ra,80006388 <kerneltrap>
    800066c4:	00013083          	ld	ra,0(sp)
    800066c8:	00813103          	ld	sp,8(sp)
    800066cc:	01013183          	ld	gp,16(sp)
    800066d0:	02013283          	ld	t0,32(sp)
    800066d4:	02813303          	ld	t1,40(sp)
    800066d8:	03013383          	ld	t2,48(sp)
    800066dc:	03813403          	ld	s0,56(sp)
    800066e0:	04013483          	ld	s1,64(sp)
    800066e4:	04813503          	ld	a0,72(sp)
    800066e8:	05013583          	ld	a1,80(sp)
    800066ec:	05813603          	ld	a2,88(sp)
    800066f0:	06013683          	ld	a3,96(sp)
    800066f4:	06813703          	ld	a4,104(sp)
    800066f8:	07013783          	ld	a5,112(sp)
    800066fc:	07813803          	ld	a6,120(sp)
    80006700:	08013883          	ld	a7,128(sp)
    80006704:	08813903          	ld	s2,136(sp)
    80006708:	09013983          	ld	s3,144(sp)
    8000670c:	09813a03          	ld	s4,152(sp)
    80006710:	0a013a83          	ld	s5,160(sp)
    80006714:	0a813b03          	ld	s6,168(sp)
    80006718:	0b013b83          	ld	s7,176(sp)
    8000671c:	0b813c03          	ld	s8,184(sp)
    80006720:	0c013c83          	ld	s9,192(sp)
    80006724:	0c813d03          	ld	s10,200(sp)
    80006728:	0d013d83          	ld	s11,208(sp)
    8000672c:	0d813e03          	ld	t3,216(sp)
    80006730:	0e013e83          	ld	t4,224(sp)
    80006734:	0e813f03          	ld	t5,232(sp)
    80006738:	0f013f83          	ld	t6,240(sp)
    8000673c:	10010113          	addi	sp,sp,256
    80006740:	10200073          	sret
    80006744:	00000013          	nop
    80006748:	00000013          	nop
    8000674c:	00000013          	nop

0000000080006750 <timervec>:
    80006750:	34051573          	csrrw	a0,mscratch,a0
    80006754:	00b53023          	sd	a1,0(a0)
    80006758:	00c53423          	sd	a2,8(a0)
    8000675c:	00d53823          	sd	a3,16(a0)
    80006760:	01853583          	ld	a1,24(a0)
    80006764:	02053603          	ld	a2,32(a0)
    80006768:	0005b683          	ld	a3,0(a1)
    8000676c:	00c686b3          	add	a3,a3,a2
    80006770:	00d5b023          	sd	a3,0(a1)
    80006774:	00200593          	li	a1,2
    80006778:	14459073          	csrw	sip,a1
    8000677c:	01053683          	ld	a3,16(a0)
    80006780:	00853603          	ld	a2,8(a0)
    80006784:	00053583          	ld	a1,0(a0)
    80006788:	34051573          	csrrw	a0,mscratch,a0
    8000678c:	30200073          	mret

0000000080006790 <plicinit>:
    80006790:	ff010113          	addi	sp,sp,-16
    80006794:	00813423          	sd	s0,8(sp)
    80006798:	01010413          	addi	s0,sp,16
    8000679c:	00813403          	ld	s0,8(sp)
    800067a0:	0c0007b7          	lui	a5,0xc000
    800067a4:	00100713          	li	a4,1
    800067a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800067ac:	00e7a223          	sw	a4,4(a5)
    800067b0:	01010113          	addi	sp,sp,16
    800067b4:	00008067          	ret

00000000800067b8 <plicinithart>:
    800067b8:	ff010113          	addi	sp,sp,-16
    800067bc:	00813023          	sd	s0,0(sp)
    800067c0:	00113423          	sd	ra,8(sp)
    800067c4:	01010413          	addi	s0,sp,16
    800067c8:	00000097          	auipc	ra,0x0
    800067cc:	a40080e7          	jalr	-1472(ra) # 80006208 <cpuid>
    800067d0:	0085171b          	slliw	a4,a0,0x8
    800067d4:	0c0027b7          	lui	a5,0xc002
    800067d8:	00e787b3          	add	a5,a5,a4
    800067dc:	40200713          	li	a4,1026
    800067e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800067e4:	00813083          	ld	ra,8(sp)
    800067e8:	00013403          	ld	s0,0(sp)
    800067ec:	00d5151b          	slliw	a0,a0,0xd
    800067f0:	0c2017b7          	lui	a5,0xc201
    800067f4:	00a78533          	add	a0,a5,a0
    800067f8:	00052023          	sw	zero,0(a0)
    800067fc:	01010113          	addi	sp,sp,16
    80006800:	00008067          	ret

0000000080006804 <plic_claim>:
    80006804:	ff010113          	addi	sp,sp,-16
    80006808:	00813023          	sd	s0,0(sp)
    8000680c:	00113423          	sd	ra,8(sp)
    80006810:	01010413          	addi	s0,sp,16
    80006814:	00000097          	auipc	ra,0x0
    80006818:	9f4080e7          	jalr	-1548(ra) # 80006208 <cpuid>
    8000681c:	00813083          	ld	ra,8(sp)
    80006820:	00013403          	ld	s0,0(sp)
    80006824:	00d5151b          	slliw	a0,a0,0xd
    80006828:	0c2017b7          	lui	a5,0xc201
    8000682c:	00a78533          	add	a0,a5,a0
    80006830:	00452503          	lw	a0,4(a0)
    80006834:	01010113          	addi	sp,sp,16
    80006838:	00008067          	ret

000000008000683c <plic_complete>:
    8000683c:	fe010113          	addi	sp,sp,-32
    80006840:	00813823          	sd	s0,16(sp)
    80006844:	00913423          	sd	s1,8(sp)
    80006848:	00113c23          	sd	ra,24(sp)
    8000684c:	02010413          	addi	s0,sp,32
    80006850:	00050493          	mv	s1,a0
    80006854:	00000097          	auipc	ra,0x0
    80006858:	9b4080e7          	jalr	-1612(ra) # 80006208 <cpuid>
    8000685c:	01813083          	ld	ra,24(sp)
    80006860:	01013403          	ld	s0,16(sp)
    80006864:	00d5179b          	slliw	a5,a0,0xd
    80006868:	0c201737          	lui	a4,0xc201
    8000686c:	00f707b3          	add	a5,a4,a5
    80006870:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006874:	00813483          	ld	s1,8(sp)
    80006878:	02010113          	addi	sp,sp,32
    8000687c:	00008067          	ret

0000000080006880 <consolewrite>:
    80006880:	fb010113          	addi	sp,sp,-80
    80006884:	04813023          	sd	s0,64(sp)
    80006888:	04113423          	sd	ra,72(sp)
    8000688c:	02913c23          	sd	s1,56(sp)
    80006890:	03213823          	sd	s2,48(sp)
    80006894:	03313423          	sd	s3,40(sp)
    80006898:	03413023          	sd	s4,32(sp)
    8000689c:	01513c23          	sd	s5,24(sp)
    800068a0:	05010413          	addi	s0,sp,80
    800068a4:	06c05c63          	blez	a2,8000691c <consolewrite+0x9c>
    800068a8:	00060993          	mv	s3,a2
    800068ac:	00050a13          	mv	s4,a0
    800068b0:	00058493          	mv	s1,a1
    800068b4:	00000913          	li	s2,0
    800068b8:	fff00a93          	li	s5,-1
    800068bc:	01c0006f          	j	800068d8 <consolewrite+0x58>
    800068c0:	fbf44503          	lbu	a0,-65(s0)
    800068c4:	0019091b          	addiw	s2,s2,1
    800068c8:	00148493          	addi	s1,s1,1
    800068cc:	00001097          	auipc	ra,0x1
    800068d0:	a9c080e7          	jalr	-1380(ra) # 80007368 <uartputc>
    800068d4:	03298063          	beq	s3,s2,800068f4 <consolewrite+0x74>
    800068d8:	00048613          	mv	a2,s1
    800068dc:	00100693          	li	a3,1
    800068e0:	000a0593          	mv	a1,s4
    800068e4:	fbf40513          	addi	a0,s0,-65
    800068e8:	00000097          	auipc	ra,0x0
    800068ec:	9d8080e7          	jalr	-1576(ra) # 800062c0 <either_copyin>
    800068f0:	fd5518e3          	bne	a0,s5,800068c0 <consolewrite+0x40>
    800068f4:	04813083          	ld	ra,72(sp)
    800068f8:	04013403          	ld	s0,64(sp)
    800068fc:	03813483          	ld	s1,56(sp)
    80006900:	02813983          	ld	s3,40(sp)
    80006904:	02013a03          	ld	s4,32(sp)
    80006908:	01813a83          	ld	s5,24(sp)
    8000690c:	00090513          	mv	a0,s2
    80006910:	03013903          	ld	s2,48(sp)
    80006914:	05010113          	addi	sp,sp,80
    80006918:	00008067          	ret
    8000691c:	00000913          	li	s2,0
    80006920:	fd5ff06f          	j	800068f4 <consolewrite+0x74>

0000000080006924 <consoleread>:
    80006924:	f9010113          	addi	sp,sp,-112
    80006928:	06813023          	sd	s0,96(sp)
    8000692c:	04913c23          	sd	s1,88(sp)
    80006930:	05213823          	sd	s2,80(sp)
    80006934:	05313423          	sd	s3,72(sp)
    80006938:	05413023          	sd	s4,64(sp)
    8000693c:	03513c23          	sd	s5,56(sp)
    80006940:	03613823          	sd	s6,48(sp)
    80006944:	03713423          	sd	s7,40(sp)
    80006948:	03813023          	sd	s8,32(sp)
    8000694c:	06113423          	sd	ra,104(sp)
    80006950:	01913c23          	sd	s9,24(sp)
    80006954:	07010413          	addi	s0,sp,112
    80006958:	00060b93          	mv	s7,a2
    8000695c:	00050913          	mv	s2,a0
    80006960:	00058c13          	mv	s8,a1
    80006964:	00060b1b          	sext.w	s6,a2
    80006968:	00006497          	auipc	s1,0x6
    8000696c:	dd048493          	addi	s1,s1,-560 # 8000c738 <cons>
    80006970:	00400993          	li	s3,4
    80006974:	fff00a13          	li	s4,-1
    80006978:	00a00a93          	li	s5,10
    8000697c:	05705e63          	blez	s7,800069d8 <consoleread+0xb4>
    80006980:	09c4a703          	lw	a4,156(s1)
    80006984:	0984a783          	lw	a5,152(s1)
    80006988:	0007071b          	sext.w	a4,a4
    8000698c:	08e78463          	beq	a5,a4,80006a14 <consoleread+0xf0>
    80006990:	07f7f713          	andi	a4,a5,127
    80006994:	00e48733          	add	a4,s1,a4
    80006998:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000699c:	0017869b          	addiw	a3,a5,1
    800069a0:	08d4ac23          	sw	a3,152(s1)
    800069a4:	00070c9b          	sext.w	s9,a4
    800069a8:	0b370663          	beq	a4,s3,80006a54 <consoleread+0x130>
    800069ac:	00100693          	li	a3,1
    800069b0:	f9f40613          	addi	a2,s0,-97
    800069b4:	000c0593          	mv	a1,s8
    800069b8:	00090513          	mv	a0,s2
    800069bc:	f8e40fa3          	sb	a4,-97(s0)
    800069c0:	00000097          	auipc	ra,0x0
    800069c4:	8b4080e7          	jalr	-1868(ra) # 80006274 <either_copyout>
    800069c8:	01450863          	beq	a0,s4,800069d8 <consoleread+0xb4>
    800069cc:	001c0c13          	addi	s8,s8,1
    800069d0:	fffb8b9b          	addiw	s7,s7,-1
    800069d4:	fb5c94e3          	bne	s9,s5,8000697c <consoleread+0x58>
    800069d8:	000b851b          	sext.w	a0,s7
    800069dc:	06813083          	ld	ra,104(sp)
    800069e0:	06013403          	ld	s0,96(sp)
    800069e4:	05813483          	ld	s1,88(sp)
    800069e8:	05013903          	ld	s2,80(sp)
    800069ec:	04813983          	ld	s3,72(sp)
    800069f0:	04013a03          	ld	s4,64(sp)
    800069f4:	03813a83          	ld	s5,56(sp)
    800069f8:	02813b83          	ld	s7,40(sp)
    800069fc:	02013c03          	ld	s8,32(sp)
    80006a00:	01813c83          	ld	s9,24(sp)
    80006a04:	40ab053b          	subw	a0,s6,a0
    80006a08:	03013b03          	ld	s6,48(sp)
    80006a0c:	07010113          	addi	sp,sp,112
    80006a10:	00008067          	ret
    80006a14:	00001097          	auipc	ra,0x1
    80006a18:	1d8080e7          	jalr	472(ra) # 80007bec <push_on>
    80006a1c:	0984a703          	lw	a4,152(s1)
    80006a20:	09c4a783          	lw	a5,156(s1)
    80006a24:	0007879b          	sext.w	a5,a5
    80006a28:	fef70ce3          	beq	a4,a5,80006a20 <consoleread+0xfc>
    80006a2c:	00001097          	auipc	ra,0x1
    80006a30:	234080e7          	jalr	564(ra) # 80007c60 <pop_on>
    80006a34:	0984a783          	lw	a5,152(s1)
    80006a38:	07f7f713          	andi	a4,a5,127
    80006a3c:	00e48733          	add	a4,s1,a4
    80006a40:	01874703          	lbu	a4,24(a4)
    80006a44:	0017869b          	addiw	a3,a5,1
    80006a48:	08d4ac23          	sw	a3,152(s1)
    80006a4c:	00070c9b          	sext.w	s9,a4
    80006a50:	f5371ee3          	bne	a4,s3,800069ac <consoleread+0x88>
    80006a54:	000b851b          	sext.w	a0,s7
    80006a58:	f96bf2e3          	bgeu	s7,s6,800069dc <consoleread+0xb8>
    80006a5c:	08f4ac23          	sw	a5,152(s1)
    80006a60:	f7dff06f          	j	800069dc <consoleread+0xb8>

0000000080006a64 <consputc>:
    80006a64:	10000793          	li	a5,256
    80006a68:	00f50663          	beq	a0,a5,80006a74 <consputc+0x10>
    80006a6c:	00001317          	auipc	t1,0x1
    80006a70:	9f430067          	jr	-1548(t1) # 80007460 <uartputc_sync>
    80006a74:	ff010113          	addi	sp,sp,-16
    80006a78:	00113423          	sd	ra,8(sp)
    80006a7c:	00813023          	sd	s0,0(sp)
    80006a80:	01010413          	addi	s0,sp,16
    80006a84:	00800513          	li	a0,8
    80006a88:	00001097          	auipc	ra,0x1
    80006a8c:	9d8080e7          	jalr	-1576(ra) # 80007460 <uartputc_sync>
    80006a90:	02000513          	li	a0,32
    80006a94:	00001097          	auipc	ra,0x1
    80006a98:	9cc080e7          	jalr	-1588(ra) # 80007460 <uartputc_sync>
    80006a9c:	00013403          	ld	s0,0(sp)
    80006aa0:	00813083          	ld	ra,8(sp)
    80006aa4:	00800513          	li	a0,8
    80006aa8:	01010113          	addi	sp,sp,16
    80006aac:	00001317          	auipc	t1,0x1
    80006ab0:	9b430067          	jr	-1612(t1) # 80007460 <uartputc_sync>

0000000080006ab4 <consoleintr>:
    80006ab4:	fe010113          	addi	sp,sp,-32
    80006ab8:	00813823          	sd	s0,16(sp)
    80006abc:	00913423          	sd	s1,8(sp)
    80006ac0:	01213023          	sd	s2,0(sp)
    80006ac4:	00113c23          	sd	ra,24(sp)
    80006ac8:	02010413          	addi	s0,sp,32
    80006acc:	00006917          	auipc	s2,0x6
    80006ad0:	c6c90913          	addi	s2,s2,-916 # 8000c738 <cons>
    80006ad4:	00050493          	mv	s1,a0
    80006ad8:	00090513          	mv	a0,s2
    80006adc:	00001097          	auipc	ra,0x1
    80006ae0:	e40080e7          	jalr	-448(ra) # 8000791c <acquire>
    80006ae4:	02048c63          	beqz	s1,80006b1c <consoleintr+0x68>
    80006ae8:	0a092783          	lw	a5,160(s2)
    80006aec:	09892703          	lw	a4,152(s2)
    80006af0:	07f00693          	li	a3,127
    80006af4:	40e7873b          	subw	a4,a5,a4
    80006af8:	02e6e263          	bltu	a3,a4,80006b1c <consoleintr+0x68>
    80006afc:	00d00713          	li	a4,13
    80006b00:	04e48063          	beq	s1,a4,80006b40 <consoleintr+0x8c>
    80006b04:	07f7f713          	andi	a4,a5,127
    80006b08:	00e90733          	add	a4,s2,a4
    80006b0c:	0017879b          	addiw	a5,a5,1
    80006b10:	0af92023          	sw	a5,160(s2)
    80006b14:	00970c23          	sb	s1,24(a4)
    80006b18:	08f92e23          	sw	a5,156(s2)
    80006b1c:	01013403          	ld	s0,16(sp)
    80006b20:	01813083          	ld	ra,24(sp)
    80006b24:	00813483          	ld	s1,8(sp)
    80006b28:	00013903          	ld	s2,0(sp)
    80006b2c:	00006517          	auipc	a0,0x6
    80006b30:	c0c50513          	addi	a0,a0,-1012 # 8000c738 <cons>
    80006b34:	02010113          	addi	sp,sp,32
    80006b38:	00001317          	auipc	t1,0x1
    80006b3c:	eb030067          	jr	-336(t1) # 800079e8 <release>
    80006b40:	00a00493          	li	s1,10
    80006b44:	fc1ff06f          	j	80006b04 <consoleintr+0x50>

0000000080006b48 <consoleinit>:
    80006b48:	fe010113          	addi	sp,sp,-32
    80006b4c:	00113c23          	sd	ra,24(sp)
    80006b50:	00813823          	sd	s0,16(sp)
    80006b54:	00913423          	sd	s1,8(sp)
    80006b58:	02010413          	addi	s0,sp,32
    80006b5c:	00006497          	auipc	s1,0x6
    80006b60:	bdc48493          	addi	s1,s1,-1060 # 8000c738 <cons>
    80006b64:	00048513          	mv	a0,s1
    80006b68:	00003597          	auipc	a1,0x3
    80006b6c:	b5058593          	addi	a1,a1,-1200 # 800096b8 <_ZN15MemoryAllocator10DBlockSizeE+0x698>
    80006b70:	00001097          	auipc	ra,0x1
    80006b74:	d88080e7          	jalr	-632(ra) # 800078f8 <initlock>
    80006b78:	00000097          	auipc	ra,0x0
    80006b7c:	7ac080e7          	jalr	1964(ra) # 80007324 <uartinit>
    80006b80:	01813083          	ld	ra,24(sp)
    80006b84:	01013403          	ld	s0,16(sp)
    80006b88:	00000797          	auipc	a5,0x0
    80006b8c:	d9c78793          	addi	a5,a5,-612 # 80006924 <consoleread>
    80006b90:	0af4bc23          	sd	a5,184(s1)
    80006b94:	00000797          	auipc	a5,0x0
    80006b98:	cec78793          	addi	a5,a5,-788 # 80006880 <consolewrite>
    80006b9c:	0cf4b023          	sd	a5,192(s1)
    80006ba0:	00813483          	ld	s1,8(sp)
    80006ba4:	02010113          	addi	sp,sp,32
    80006ba8:	00008067          	ret

0000000080006bac <console_read>:
    80006bac:	ff010113          	addi	sp,sp,-16
    80006bb0:	00813423          	sd	s0,8(sp)
    80006bb4:	01010413          	addi	s0,sp,16
    80006bb8:	00813403          	ld	s0,8(sp)
    80006bbc:	00006317          	auipc	t1,0x6
    80006bc0:	c3433303          	ld	t1,-972(t1) # 8000c7f0 <devsw+0x10>
    80006bc4:	01010113          	addi	sp,sp,16
    80006bc8:	00030067          	jr	t1

0000000080006bcc <console_write>:
    80006bcc:	ff010113          	addi	sp,sp,-16
    80006bd0:	00813423          	sd	s0,8(sp)
    80006bd4:	01010413          	addi	s0,sp,16
    80006bd8:	00813403          	ld	s0,8(sp)
    80006bdc:	00006317          	auipc	t1,0x6
    80006be0:	c1c33303          	ld	t1,-996(t1) # 8000c7f8 <devsw+0x18>
    80006be4:	01010113          	addi	sp,sp,16
    80006be8:	00030067          	jr	t1

0000000080006bec <panic>:
    80006bec:	fe010113          	addi	sp,sp,-32
    80006bf0:	00113c23          	sd	ra,24(sp)
    80006bf4:	00813823          	sd	s0,16(sp)
    80006bf8:	00913423          	sd	s1,8(sp)
    80006bfc:	02010413          	addi	s0,sp,32
    80006c00:	00050493          	mv	s1,a0
    80006c04:	00003517          	auipc	a0,0x3
    80006c08:	abc50513          	addi	a0,a0,-1348 # 800096c0 <_ZN15MemoryAllocator10DBlockSizeE+0x6a0>
    80006c0c:	00006797          	auipc	a5,0x6
    80006c10:	c807a623          	sw	zero,-884(a5) # 8000c898 <pr+0x18>
    80006c14:	00000097          	auipc	ra,0x0
    80006c18:	034080e7          	jalr	52(ra) # 80006c48 <__printf>
    80006c1c:	00048513          	mv	a0,s1
    80006c20:	00000097          	auipc	ra,0x0
    80006c24:	028080e7          	jalr	40(ra) # 80006c48 <__printf>
    80006c28:	00003517          	auipc	a0,0x3
    80006c2c:	89050513          	addi	a0,a0,-1904 # 800094b8 <_ZN15MemoryAllocator10DBlockSizeE+0x498>
    80006c30:	00000097          	auipc	ra,0x0
    80006c34:	018080e7          	jalr	24(ra) # 80006c48 <__printf>
    80006c38:	00100793          	li	a5,1
    80006c3c:	00005717          	auipc	a4,0x5
    80006c40:	94f72e23          	sw	a5,-1700(a4) # 8000b598 <panicked>
    80006c44:	0000006f          	j	80006c44 <panic+0x58>

0000000080006c48 <__printf>:
    80006c48:	f3010113          	addi	sp,sp,-208
    80006c4c:	08813023          	sd	s0,128(sp)
    80006c50:	07313423          	sd	s3,104(sp)
    80006c54:	09010413          	addi	s0,sp,144
    80006c58:	05813023          	sd	s8,64(sp)
    80006c5c:	08113423          	sd	ra,136(sp)
    80006c60:	06913c23          	sd	s1,120(sp)
    80006c64:	07213823          	sd	s2,112(sp)
    80006c68:	07413023          	sd	s4,96(sp)
    80006c6c:	05513c23          	sd	s5,88(sp)
    80006c70:	05613823          	sd	s6,80(sp)
    80006c74:	05713423          	sd	s7,72(sp)
    80006c78:	03913c23          	sd	s9,56(sp)
    80006c7c:	03a13823          	sd	s10,48(sp)
    80006c80:	03b13423          	sd	s11,40(sp)
    80006c84:	00006317          	auipc	t1,0x6
    80006c88:	bfc30313          	addi	t1,t1,-1028 # 8000c880 <pr>
    80006c8c:	01832c03          	lw	s8,24(t1)
    80006c90:	00b43423          	sd	a1,8(s0)
    80006c94:	00c43823          	sd	a2,16(s0)
    80006c98:	00d43c23          	sd	a3,24(s0)
    80006c9c:	02e43023          	sd	a4,32(s0)
    80006ca0:	02f43423          	sd	a5,40(s0)
    80006ca4:	03043823          	sd	a6,48(s0)
    80006ca8:	03143c23          	sd	a7,56(s0)
    80006cac:	00050993          	mv	s3,a0
    80006cb0:	4a0c1663          	bnez	s8,8000715c <__printf+0x514>
    80006cb4:	60098c63          	beqz	s3,800072cc <__printf+0x684>
    80006cb8:	0009c503          	lbu	a0,0(s3)
    80006cbc:	00840793          	addi	a5,s0,8
    80006cc0:	f6f43c23          	sd	a5,-136(s0)
    80006cc4:	00000493          	li	s1,0
    80006cc8:	22050063          	beqz	a0,80006ee8 <__printf+0x2a0>
    80006ccc:	00002a37          	lui	s4,0x2
    80006cd0:	00018ab7          	lui	s5,0x18
    80006cd4:	000f4b37          	lui	s6,0xf4
    80006cd8:	00989bb7          	lui	s7,0x989
    80006cdc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006ce0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006ce4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006ce8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006cec:	00148c9b          	addiw	s9,s1,1
    80006cf0:	02500793          	li	a5,37
    80006cf4:	01998933          	add	s2,s3,s9
    80006cf8:	38f51263          	bne	a0,a5,8000707c <__printf+0x434>
    80006cfc:	00094783          	lbu	a5,0(s2)
    80006d00:	00078c9b          	sext.w	s9,a5
    80006d04:	1e078263          	beqz	a5,80006ee8 <__printf+0x2a0>
    80006d08:	0024849b          	addiw	s1,s1,2
    80006d0c:	07000713          	li	a4,112
    80006d10:	00998933          	add	s2,s3,s1
    80006d14:	38e78a63          	beq	a5,a4,800070a8 <__printf+0x460>
    80006d18:	20f76863          	bltu	a4,a5,80006f28 <__printf+0x2e0>
    80006d1c:	42a78863          	beq	a5,a0,8000714c <__printf+0x504>
    80006d20:	06400713          	li	a4,100
    80006d24:	40e79663          	bne	a5,a4,80007130 <__printf+0x4e8>
    80006d28:	f7843783          	ld	a5,-136(s0)
    80006d2c:	0007a603          	lw	a2,0(a5)
    80006d30:	00878793          	addi	a5,a5,8
    80006d34:	f6f43c23          	sd	a5,-136(s0)
    80006d38:	42064a63          	bltz	a2,8000716c <__printf+0x524>
    80006d3c:	00a00713          	li	a4,10
    80006d40:	02e677bb          	remuw	a5,a2,a4
    80006d44:	00003d97          	auipc	s11,0x3
    80006d48:	9a4d8d93          	addi	s11,s11,-1628 # 800096e8 <digits>
    80006d4c:	00900593          	li	a1,9
    80006d50:	0006051b          	sext.w	a0,a2
    80006d54:	00000c93          	li	s9,0
    80006d58:	02079793          	slli	a5,a5,0x20
    80006d5c:	0207d793          	srli	a5,a5,0x20
    80006d60:	00fd87b3          	add	a5,s11,a5
    80006d64:	0007c783          	lbu	a5,0(a5)
    80006d68:	02e656bb          	divuw	a3,a2,a4
    80006d6c:	f8f40023          	sb	a5,-128(s0)
    80006d70:	14c5d863          	bge	a1,a2,80006ec0 <__printf+0x278>
    80006d74:	06300593          	li	a1,99
    80006d78:	00100c93          	li	s9,1
    80006d7c:	02e6f7bb          	remuw	a5,a3,a4
    80006d80:	02079793          	slli	a5,a5,0x20
    80006d84:	0207d793          	srli	a5,a5,0x20
    80006d88:	00fd87b3          	add	a5,s11,a5
    80006d8c:	0007c783          	lbu	a5,0(a5)
    80006d90:	02e6d73b          	divuw	a4,a3,a4
    80006d94:	f8f400a3          	sb	a5,-127(s0)
    80006d98:	12a5f463          	bgeu	a1,a0,80006ec0 <__printf+0x278>
    80006d9c:	00a00693          	li	a3,10
    80006da0:	00900593          	li	a1,9
    80006da4:	02d777bb          	remuw	a5,a4,a3
    80006da8:	02079793          	slli	a5,a5,0x20
    80006dac:	0207d793          	srli	a5,a5,0x20
    80006db0:	00fd87b3          	add	a5,s11,a5
    80006db4:	0007c503          	lbu	a0,0(a5)
    80006db8:	02d757bb          	divuw	a5,a4,a3
    80006dbc:	f8a40123          	sb	a0,-126(s0)
    80006dc0:	48e5f263          	bgeu	a1,a4,80007244 <__printf+0x5fc>
    80006dc4:	06300513          	li	a0,99
    80006dc8:	02d7f5bb          	remuw	a1,a5,a3
    80006dcc:	02059593          	slli	a1,a1,0x20
    80006dd0:	0205d593          	srli	a1,a1,0x20
    80006dd4:	00bd85b3          	add	a1,s11,a1
    80006dd8:	0005c583          	lbu	a1,0(a1)
    80006ddc:	02d7d7bb          	divuw	a5,a5,a3
    80006de0:	f8b401a3          	sb	a1,-125(s0)
    80006de4:	48e57263          	bgeu	a0,a4,80007268 <__printf+0x620>
    80006de8:	3e700513          	li	a0,999
    80006dec:	02d7f5bb          	remuw	a1,a5,a3
    80006df0:	02059593          	slli	a1,a1,0x20
    80006df4:	0205d593          	srli	a1,a1,0x20
    80006df8:	00bd85b3          	add	a1,s11,a1
    80006dfc:	0005c583          	lbu	a1,0(a1)
    80006e00:	02d7d7bb          	divuw	a5,a5,a3
    80006e04:	f8b40223          	sb	a1,-124(s0)
    80006e08:	46e57663          	bgeu	a0,a4,80007274 <__printf+0x62c>
    80006e0c:	02d7f5bb          	remuw	a1,a5,a3
    80006e10:	02059593          	slli	a1,a1,0x20
    80006e14:	0205d593          	srli	a1,a1,0x20
    80006e18:	00bd85b3          	add	a1,s11,a1
    80006e1c:	0005c583          	lbu	a1,0(a1)
    80006e20:	02d7d7bb          	divuw	a5,a5,a3
    80006e24:	f8b402a3          	sb	a1,-123(s0)
    80006e28:	46ea7863          	bgeu	s4,a4,80007298 <__printf+0x650>
    80006e2c:	02d7f5bb          	remuw	a1,a5,a3
    80006e30:	02059593          	slli	a1,a1,0x20
    80006e34:	0205d593          	srli	a1,a1,0x20
    80006e38:	00bd85b3          	add	a1,s11,a1
    80006e3c:	0005c583          	lbu	a1,0(a1)
    80006e40:	02d7d7bb          	divuw	a5,a5,a3
    80006e44:	f8b40323          	sb	a1,-122(s0)
    80006e48:	3eeaf863          	bgeu	s5,a4,80007238 <__printf+0x5f0>
    80006e4c:	02d7f5bb          	remuw	a1,a5,a3
    80006e50:	02059593          	slli	a1,a1,0x20
    80006e54:	0205d593          	srli	a1,a1,0x20
    80006e58:	00bd85b3          	add	a1,s11,a1
    80006e5c:	0005c583          	lbu	a1,0(a1)
    80006e60:	02d7d7bb          	divuw	a5,a5,a3
    80006e64:	f8b403a3          	sb	a1,-121(s0)
    80006e68:	42eb7e63          	bgeu	s6,a4,800072a4 <__printf+0x65c>
    80006e6c:	02d7f5bb          	remuw	a1,a5,a3
    80006e70:	02059593          	slli	a1,a1,0x20
    80006e74:	0205d593          	srli	a1,a1,0x20
    80006e78:	00bd85b3          	add	a1,s11,a1
    80006e7c:	0005c583          	lbu	a1,0(a1)
    80006e80:	02d7d7bb          	divuw	a5,a5,a3
    80006e84:	f8b40423          	sb	a1,-120(s0)
    80006e88:	42ebfc63          	bgeu	s7,a4,800072c0 <__printf+0x678>
    80006e8c:	02079793          	slli	a5,a5,0x20
    80006e90:	0207d793          	srli	a5,a5,0x20
    80006e94:	00fd8db3          	add	s11,s11,a5
    80006e98:	000dc703          	lbu	a4,0(s11)
    80006e9c:	00a00793          	li	a5,10
    80006ea0:	00900c93          	li	s9,9
    80006ea4:	f8e404a3          	sb	a4,-119(s0)
    80006ea8:	00065c63          	bgez	a2,80006ec0 <__printf+0x278>
    80006eac:	f9040713          	addi	a4,s0,-112
    80006eb0:	00f70733          	add	a4,a4,a5
    80006eb4:	02d00693          	li	a3,45
    80006eb8:	fed70823          	sb	a3,-16(a4)
    80006ebc:	00078c93          	mv	s9,a5
    80006ec0:	f8040793          	addi	a5,s0,-128
    80006ec4:	01978cb3          	add	s9,a5,s9
    80006ec8:	f7f40d13          	addi	s10,s0,-129
    80006ecc:	000cc503          	lbu	a0,0(s9)
    80006ed0:	fffc8c93          	addi	s9,s9,-1
    80006ed4:	00000097          	auipc	ra,0x0
    80006ed8:	b90080e7          	jalr	-1136(ra) # 80006a64 <consputc>
    80006edc:	ffac98e3          	bne	s9,s10,80006ecc <__printf+0x284>
    80006ee0:	00094503          	lbu	a0,0(s2)
    80006ee4:	e00514e3          	bnez	a0,80006cec <__printf+0xa4>
    80006ee8:	1a0c1663          	bnez	s8,80007094 <__printf+0x44c>
    80006eec:	08813083          	ld	ra,136(sp)
    80006ef0:	08013403          	ld	s0,128(sp)
    80006ef4:	07813483          	ld	s1,120(sp)
    80006ef8:	07013903          	ld	s2,112(sp)
    80006efc:	06813983          	ld	s3,104(sp)
    80006f00:	06013a03          	ld	s4,96(sp)
    80006f04:	05813a83          	ld	s5,88(sp)
    80006f08:	05013b03          	ld	s6,80(sp)
    80006f0c:	04813b83          	ld	s7,72(sp)
    80006f10:	04013c03          	ld	s8,64(sp)
    80006f14:	03813c83          	ld	s9,56(sp)
    80006f18:	03013d03          	ld	s10,48(sp)
    80006f1c:	02813d83          	ld	s11,40(sp)
    80006f20:	0d010113          	addi	sp,sp,208
    80006f24:	00008067          	ret
    80006f28:	07300713          	li	a4,115
    80006f2c:	1ce78a63          	beq	a5,a4,80007100 <__printf+0x4b8>
    80006f30:	07800713          	li	a4,120
    80006f34:	1ee79e63          	bne	a5,a4,80007130 <__printf+0x4e8>
    80006f38:	f7843783          	ld	a5,-136(s0)
    80006f3c:	0007a703          	lw	a4,0(a5)
    80006f40:	00878793          	addi	a5,a5,8
    80006f44:	f6f43c23          	sd	a5,-136(s0)
    80006f48:	28074263          	bltz	a4,800071cc <__printf+0x584>
    80006f4c:	00002d97          	auipc	s11,0x2
    80006f50:	79cd8d93          	addi	s11,s11,1948 # 800096e8 <digits>
    80006f54:	00f77793          	andi	a5,a4,15
    80006f58:	00fd87b3          	add	a5,s11,a5
    80006f5c:	0007c683          	lbu	a3,0(a5)
    80006f60:	00f00613          	li	a2,15
    80006f64:	0007079b          	sext.w	a5,a4
    80006f68:	f8d40023          	sb	a3,-128(s0)
    80006f6c:	0047559b          	srliw	a1,a4,0x4
    80006f70:	0047569b          	srliw	a3,a4,0x4
    80006f74:	00000c93          	li	s9,0
    80006f78:	0ee65063          	bge	a2,a4,80007058 <__printf+0x410>
    80006f7c:	00f6f693          	andi	a3,a3,15
    80006f80:	00dd86b3          	add	a3,s11,a3
    80006f84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006f88:	0087d79b          	srliw	a5,a5,0x8
    80006f8c:	00100c93          	li	s9,1
    80006f90:	f8d400a3          	sb	a3,-127(s0)
    80006f94:	0cb67263          	bgeu	a2,a1,80007058 <__printf+0x410>
    80006f98:	00f7f693          	andi	a3,a5,15
    80006f9c:	00dd86b3          	add	a3,s11,a3
    80006fa0:	0006c583          	lbu	a1,0(a3)
    80006fa4:	00f00613          	li	a2,15
    80006fa8:	0047d69b          	srliw	a3,a5,0x4
    80006fac:	f8b40123          	sb	a1,-126(s0)
    80006fb0:	0047d593          	srli	a1,a5,0x4
    80006fb4:	28f67e63          	bgeu	a2,a5,80007250 <__printf+0x608>
    80006fb8:	00f6f693          	andi	a3,a3,15
    80006fbc:	00dd86b3          	add	a3,s11,a3
    80006fc0:	0006c503          	lbu	a0,0(a3)
    80006fc4:	0087d813          	srli	a6,a5,0x8
    80006fc8:	0087d69b          	srliw	a3,a5,0x8
    80006fcc:	f8a401a3          	sb	a0,-125(s0)
    80006fd0:	28b67663          	bgeu	a2,a1,8000725c <__printf+0x614>
    80006fd4:	00f6f693          	andi	a3,a3,15
    80006fd8:	00dd86b3          	add	a3,s11,a3
    80006fdc:	0006c583          	lbu	a1,0(a3)
    80006fe0:	00c7d513          	srli	a0,a5,0xc
    80006fe4:	00c7d69b          	srliw	a3,a5,0xc
    80006fe8:	f8b40223          	sb	a1,-124(s0)
    80006fec:	29067a63          	bgeu	a2,a6,80007280 <__printf+0x638>
    80006ff0:	00f6f693          	andi	a3,a3,15
    80006ff4:	00dd86b3          	add	a3,s11,a3
    80006ff8:	0006c583          	lbu	a1,0(a3)
    80006ffc:	0107d813          	srli	a6,a5,0x10
    80007000:	0107d69b          	srliw	a3,a5,0x10
    80007004:	f8b402a3          	sb	a1,-123(s0)
    80007008:	28a67263          	bgeu	a2,a0,8000728c <__printf+0x644>
    8000700c:	00f6f693          	andi	a3,a3,15
    80007010:	00dd86b3          	add	a3,s11,a3
    80007014:	0006c683          	lbu	a3,0(a3)
    80007018:	0147d79b          	srliw	a5,a5,0x14
    8000701c:	f8d40323          	sb	a3,-122(s0)
    80007020:	21067663          	bgeu	a2,a6,8000722c <__printf+0x5e4>
    80007024:	02079793          	slli	a5,a5,0x20
    80007028:	0207d793          	srli	a5,a5,0x20
    8000702c:	00fd8db3          	add	s11,s11,a5
    80007030:	000dc683          	lbu	a3,0(s11)
    80007034:	00800793          	li	a5,8
    80007038:	00700c93          	li	s9,7
    8000703c:	f8d403a3          	sb	a3,-121(s0)
    80007040:	00075c63          	bgez	a4,80007058 <__printf+0x410>
    80007044:	f9040713          	addi	a4,s0,-112
    80007048:	00f70733          	add	a4,a4,a5
    8000704c:	02d00693          	li	a3,45
    80007050:	fed70823          	sb	a3,-16(a4)
    80007054:	00078c93          	mv	s9,a5
    80007058:	f8040793          	addi	a5,s0,-128
    8000705c:	01978cb3          	add	s9,a5,s9
    80007060:	f7f40d13          	addi	s10,s0,-129
    80007064:	000cc503          	lbu	a0,0(s9)
    80007068:	fffc8c93          	addi	s9,s9,-1
    8000706c:	00000097          	auipc	ra,0x0
    80007070:	9f8080e7          	jalr	-1544(ra) # 80006a64 <consputc>
    80007074:	ff9d18e3          	bne	s10,s9,80007064 <__printf+0x41c>
    80007078:	0100006f          	j	80007088 <__printf+0x440>
    8000707c:	00000097          	auipc	ra,0x0
    80007080:	9e8080e7          	jalr	-1560(ra) # 80006a64 <consputc>
    80007084:	000c8493          	mv	s1,s9
    80007088:	00094503          	lbu	a0,0(s2)
    8000708c:	c60510e3          	bnez	a0,80006cec <__printf+0xa4>
    80007090:	e40c0ee3          	beqz	s8,80006eec <__printf+0x2a4>
    80007094:	00005517          	auipc	a0,0x5
    80007098:	7ec50513          	addi	a0,a0,2028 # 8000c880 <pr>
    8000709c:	00001097          	auipc	ra,0x1
    800070a0:	94c080e7          	jalr	-1716(ra) # 800079e8 <release>
    800070a4:	e49ff06f          	j	80006eec <__printf+0x2a4>
    800070a8:	f7843783          	ld	a5,-136(s0)
    800070ac:	03000513          	li	a0,48
    800070b0:	01000d13          	li	s10,16
    800070b4:	00878713          	addi	a4,a5,8
    800070b8:	0007bc83          	ld	s9,0(a5)
    800070bc:	f6e43c23          	sd	a4,-136(s0)
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	9a4080e7          	jalr	-1628(ra) # 80006a64 <consputc>
    800070c8:	07800513          	li	a0,120
    800070cc:	00000097          	auipc	ra,0x0
    800070d0:	998080e7          	jalr	-1640(ra) # 80006a64 <consputc>
    800070d4:	00002d97          	auipc	s11,0x2
    800070d8:	614d8d93          	addi	s11,s11,1556 # 800096e8 <digits>
    800070dc:	03ccd793          	srli	a5,s9,0x3c
    800070e0:	00fd87b3          	add	a5,s11,a5
    800070e4:	0007c503          	lbu	a0,0(a5)
    800070e8:	fffd0d1b          	addiw	s10,s10,-1
    800070ec:	004c9c93          	slli	s9,s9,0x4
    800070f0:	00000097          	auipc	ra,0x0
    800070f4:	974080e7          	jalr	-1676(ra) # 80006a64 <consputc>
    800070f8:	fe0d12e3          	bnez	s10,800070dc <__printf+0x494>
    800070fc:	f8dff06f          	j	80007088 <__printf+0x440>
    80007100:	f7843783          	ld	a5,-136(s0)
    80007104:	0007bc83          	ld	s9,0(a5)
    80007108:	00878793          	addi	a5,a5,8
    8000710c:	f6f43c23          	sd	a5,-136(s0)
    80007110:	000c9a63          	bnez	s9,80007124 <__printf+0x4dc>
    80007114:	1080006f          	j	8000721c <__printf+0x5d4>
    80007118:	001c8c93          	addi	s9,s9,1
    8000711c:	00000097          	auipc	ra,0x0
    80007120:	948080e7          	jalr	-1720(ra) # 80006a64 <consputc>
    80007124:	000cc503          	lbu	a0,0(s9)
    80007128:	fe0518e3          	bnez	a0,80007118 <__printf+0x4d0>
    8000712c:	f5dff06f          	j	80007088 <__printf+0x440>
    80007130:	02500513          	li	a0,37
    80007134:	00000097          	auipc	ra,0x0
    80007138:	930080e7          	jalr	-1744(ra) # 80006a64 <consputc>
    8000713c:	000c8513          	mv	a0,s9
    80007140:	00000097          	auipc	ra,0x0
    80007144:	924080e7          	jalr	-1756(ra) # 80006a64 <consputc>
    80007148:	f41ff06f          	j	80007088 <__printf+0x440>
    8000714c:	02500513          	li	a0,37
    80007150:	00000097          	auipc	ra,0x0
    80007154:	914080e7          	jalr	-1772(ra) # 80006a64 <consputc>
    80007158:	f31ff06f          	j	80007088 <__printf+0x440>
    8000715c:	00030513          	mv	a0,t1
    80007160:	00000097          	auipc	ra,0x0
    80007164:	7bc080e7          	jalr	1980(ra) # 8000791c <acquire>
    80007168:	b4dff06f          	j	80006cb4 <__printf+0x6c>
    8000716c:	40c0053b          	negw	a0,a2
    80007170:	00a00713          	li	a4,10
    80007174:	02e576bb          	remuw	a3,a0,a4
    80007178:	00002d97          	auipc	s11,0x2
    8000717c:	570d8d93          	addi	s11,s11,1392 # 800096e8 <digits>
    80007180:	ff700593          	li	a1,-9
    80007184:	02069693          	slli	a3,a3,0x20
    80007188:	0206d693          	srli	a3,a3,0x20
    8000718c:	00dd86b3          	add	a3,s11,a3
    80007190:	0006c683          	lbu	a3,0(a3)
    80007194:	02e557bb          	divuw	a5,a0,a4
    80007198:	f8d40023          	sb	a3,-128(s0)
    8000719c:	10b65e63          	bge	a2,a1,800072b8 <__printf+0x670>
    800071a0:	06300593          	li	a1,99
    800071a4:	02e7f6bb          	remuw	a3,a5,a4
    800071a8:	02069693          	slli	a3,a3,0x20
    800071ac:	0206d693          	srli	a3,a3,0x20
    800071b0:	00dd86b3          	add	a3,s11,a3
    800071b4:	0006c683          	lbu	a3,0(a3)
    800071b8:	02e7d73b          	divuw	a4,a5,a4
    800071bc:	00200793          	li	a5,2
    800071c0:	f8d400a3          	sb	a3,-127(s0)
    800071c4:	bca5ece3          	bltu	a1,a0,80006d9c <__printf+0x154>
    800071c8:	ce5ff06f          	j	80006eac <__printf+0x264>
    800071cc:	40e007bb          	negw	a5,a4
    800071d0:	00002d97          	auipc	s11,0x2
    800071d4:	518d8d93          	addi	s11,s11,1304 # 800096e8 <digits>
    800071d8:	00f7f693          	andi	a3,a5,15
    800071dc:	00dd86b3          	add	a3,s11,a3
    800071e0:	0006c583          	lbu	a1,0(a3)
    800071e4:	ff100613          	li	a2,-15
    800071e8:	0047d69b          	srliw	a3,a5,0x4
    800071ec:	f8b40023          	sb	a1,-128(s0)
    800071f0:	0047d59b          	srliw	a1,a5,0x4
    800071f4:	0ac75e63          	bge	a4,a2,800072b0 <__printf+0x668>
    800071f8:	00f6f693          	andi	a3,a3,15
    800071fc:	00dd86b3          	add	a3,s11,a3
    80007200:	0006c603          	lbu	a2,0(a3)
    80007204:	00f00693          	li	a3,15
    80007208:	0087d79b          	srliw	a5,a5,0x8
    8000720c:	f8c400a3          	sb	a2,-127(s0)
    80007210:	d8b6e4e3          	bltu	a3,a1,80006f98 <__printf+0x350>
    80007214:	00200793          	li	a5,2
    80007218:	e2dff06f          	j	80007044 <__printf+0x3fc>
    8000721c:	00002c97          	auipc	s9,0x2
    80007220:	4acc8c93          	addi	s9,s9,1196 # 800096c8 <_ZN15MemoryAllocator10DBlockSizeE+0x6a8>
    80007224:	02800513          	li	a0,40
    80007228:	ef1ff06f          	j	80007118 <__printf+0x4d0>
    8000722c:	00700793          	li	a5,7
    80007230:	00600c93          	li	s9,6
    80007234:	e0dff06f          	j	80007040 <__printf+0x3f8>
    80007238:	00700793          	li	a5,7
    8000723c:	00600c93          	li	s9,6
    80007240:	c69ff06f          	j	80006ea8 <__printf+0x260>
    80007244:	00300793          	li	a5,3
    80007248:	00200c93          	li	s9,2
    8000724c:	c5dff06f          	j	80006ea8 <__printf+0x260>
    80007250:	00300793          	li	a5,3
    80007254:	00200c93          	li	s9,2
    80007258:	de9ff06f          	j	80007040 <__printf+0x3f8>
    8000725c:	00400793          	li	a5,4
    80007260:	00300c93          	li	s9,3
    80007264:	dddff06f          	j	80007040 <__printf+0x3f8>
    80007268:	00400793          	li	a5,4
    8000726c:	00300c93          	li	s9,3
    80007270:	c39ff06f          	j	80006ea8 <__printf+0x260>
    80007274:	00500793          	li	a5,5
    80007278:	00400c93          	li	s9,4
    8000727c:	c2dff06f          	j	80006ea8 <__printf+0x260>
    80007280:	00500793          	li	a5,5
    80007284:	00400c93          	li	s9,4
    80007288:	db9ff06f          	j	80007040 <__printf+0x3f8>
    8000728c:	00600793          	li	a5,6
    80007290:	00500c93          	li	s9,5
    80007294:	dadff06f          	j	80007040 <__printf+0x3f8>
    80007298:	00600793          	li	a5,6
    8000729c:	00500c93          	li	s9,5
    800072a0:	c09ff06f          	j	80006ea8 <__printf+0x260>
    800072a4:	00800793          	li	a5,8
    800072a8:	00700c93          	li	s9,7
    800072ac:	bfdff06f          	j	80006ea8 <__printf+0x260>
    800072b0:	00100793          	li	a5,1
    800072b4:	d91ff06f          	j	80007044 <__printf+0x3fc>
    800072b8:	00100793          	li	a5,1
    800072bc:	bf1ff06f          	j	80006eac <__printf+0x264>
    800072c0:	00900793          	li	a5,9
    800072c4:	00800c93          	li	s9,8
    800072c8:	be1ff06f          	j	80006ea8 <__printf+0x260>
    800072cc:	00002517          	auipc	a0,0x2
    800072d0:	40450513          	addi	a0,a0,1028 # 800096d0 <_ZN15MemoryAllocator10DBlockSizeE+0x6b0>
    800072d4:	00000097          	auipc	ra,0x0
    800072d8:	918080e7          	jalr	-1768(ra) # 80006bec <panic>

00000000800072dc <printfinit>:
    800072dc:	fe010113          	addi	sp,sp,-32
    800072e0:	00813823          	sd	s0,16(sp)
    800072e4:	00913423          	sd	s1,8(sp)
    800072e8:	00113c23          	sd	ra,24(sp)
    800072ec:	02010413          	addi	s0,sp,32
    800072f0:	00005497          	auipc	s1,0x5
    800072f4:	59048493          	addi	s1,s1,1424 # 8000c880 <pr>
    800072f8:	00048513          	mv	a0,s1
    800072fc:	00002597          	auipc	a1,0x2
    80007300:	3e458593          	addi	a1,a1,996 # 800096e0 <_ZN15MemoryAllocator10DBlockSizeE+0x6c0>
    80007304:	00000097          	auipc	ra,0x0
    80007308:	5f4080e7          	jalr	1524(ra) # 800078f8 <initlock>
    8000730c:	01813083          	ld	ra,24(sp)
    80007310:	01013403          	ld	s0,16(sp)
    80007314:	0004ac23          	sw	zero,24(s1)
    80007318:	00813483          	ld	s1,8(sp)
    8000731c:	02010113          	addi	sp,sp,32
    80007320:	00008067          	ret

0000000080007324 <uartinit>:
    80007324:	ff010113          	addi	sp,sp,-16
    80007328:	00813423          	sd	s0,8(sp)
    8000732c:	01010413          	addi	s0,sp,16
    80007330:	100007b7          	lui	a5,0x10000
    80007334:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007338:	f8000713          	li	a4,-128
    8000733c:	00e781a3          	sb	a4,3(a5)
    80007340:	00300713          	li	a4,3
    80007344:	00e78023          	sb	a4,0(a5)
    80007348:	000780a3          	sb	zero,1(a5)
    8000734c:	00e781a3          	sb	a4,3(a5)
    80007350:	00700693          	li	a3,7
    80007354:	00d78123          	sb	a3,2(a5)
    80007358:	00e780a3          	sb	a4,1(a5)
    8000735c:	00813403          	ld	s0,8(sp)
    80007360:	01010113          	addi	sp,sp,16
    80007364:	00008067          	ret

0000000080007368 <uartputc>:
    80007368:	00004797          	auipc	a5,0x4
    8000736c:	2307a783          	lw	a5,560(a5) # 8000b598 <panicked>
    80007370:	00078463          	beqz	a5,80007378 <uartputc+0x10>
    80007374:	0000006f          	j	80007374 <uartputc+0xc>
    80007378:	fd010113          	addi	sp,sp,-48
    8000737c:	02813023          	sd	s0,32(sp)
    80007380:	00913c23          	sd	s1,24(sp)
    80007384:	01213823          	sd	s2,16(sp)
    80007388:	01313423          	sd	s3,8(sp)
    8000738c:	02113423          	sd	ra,40(sp)
    80007390:	03010413          	addi	s0,sp,48
    80007394:	00004917          	auipc	s2,0x4
    80007398:	20c90913          	addi	s2,s2,524 # 8000b5a0 <uart_tx_r>
    8000739c:	00093783          	ld	a5,0(s2)
    800073a0:	00004497          	auipc	s1,0x4
    800073a4:	20848493          	addi	s1,s1,520 # 8000b5a8 <uart_tx_w>
    800073a8:	0004b703          	ld	a4,0(s1)
    800073ac:	02078693          	addi	a3,a5,32
    800073b0:	00050993          	mv	s3,a0
    800073b4:	02e69c63          	bne	a3,a4,800073ec <uartputc+0x84>
    800073b8:	00001097          	auipc	ra,0x1
    800073bc:	834080e7          	jalr	-1996(ra) # 80007bec <push_on>
    800073c0:	00093783          	ld	a5,0(s2)
    800073c4:	0004b703          	ld	a4,0(s1)
    800073c8:	02078793          	addi	a5,a5,32
    800073cc:	00e79463          	bne	a5,a4,800073d4 <uartputc+0x6c>
    800073d0:	0000006f          	j	800073d0 <uartputc+0x68>
    800073d4:	00001097          	auipc	ra,0x1
    800073d8:	88c080e7          	jalr	-1908(ra) # 80007c60 <pop_on>
    800073dc:	00093783          	ld	a5,0(s2)
    800073e0:	0004b703          	ld	a4,0(s1)
    800073e4:	02078693          	addi	a3,a5,32
    800073e8:	fce688e3          	beq	a3,a4,800073b8 <uartputc+0x50>
    800073ec:	01f77693          	andi	a3,a4,31
    800073f0:	00005597          	auipc	a1,0x5
    800073f4:	4b058593          	addi	a1,a1,1200 # 8000c8a0 <uart_tx_buf>
    800073f8:	00d586b3          	add	a3,a1,a3
    800073fc:	00170713          	addi	a4,a4,1
    80007400:	01368023          	sb	s3,0(a3)
    80007404:	00e4b023          	sd	a4,0(s1)
    80007408:	10000637          	lui	a2,0x10000
    8000740c:	02f71063          	bne	a4,a5,8000742c <uartputc+0xc4>
    80007410:	0340006f          	j	80007444 <uartputc+0xdc>
    80007414:	00074703          	lbu	a4,0(a4)
    80007418:	00f93023          	sd	a5,0(s2)
    8000741c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007420:	00093783          	ld	a5,0(s2)
    80007424:	0004b703          	ld	a4,0(s1)
    80007428:	00f70e63          	beq	a4,a5,80007444 <uartputc+0xdc>
    8000742c:	00564683          	lbu	a3,5(a2)
    80007430:	01f7f713          	andi	a4,a5,31
    80007434:	00e58733          	add	a4,a1,a4
    80007438:	0206f693          	andi	a3,a3,32
    8000743c:	00178793          	addi	a5,a5,1
    80007440:	fc069ae3          	bnez	a3,80007414 <uartputc+0xac>
    80007444:	02813083          	ld	ra,40(sp)
    80007448:	02013403          	ld	s0,32(sp)
    8000744c:	01813483          	ld	s1,24(sp)
    80007450:	01013903          	ld	s2,16(sp)
    80007454:	00813983          	ld	s3,8(sp)
    80007458:	03010113          	addi	sp,sp,48
    8000745c:	00008067          	ret

0000000080007460 <uartputc_sync>:
    80007460:	ff010113          	addi	sp,sp,-16
    80007464:	00813423          	sd	s0,8(sp)
    80007468:	01010413          	addi	s0,sp,16
    8000746c:	00004717          	auipc	a4,0x4
    80007470:	12c72703          	lw	a4,300(a4) # 8000b598 <panicked>
    80007474:	02071663          	bnez	a4,800074a0 <uartputc_sync+0x40>
    80007478:	00050793          	mv	a5,a0
    8000747c:	100006b7          	lui	a3,0x10000
    80007480:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007484:	02077713          	andi	a4,a4,32
    80007488:	fe070ce3          	beqz	a4,80007480 <uartputc_sync+0x20>
    8000748c:	0ff7f793          	andi	a5,a5,255
    80007490:	00f68023          	sb	a5,0(a3)
    80007494:	00813403          	ld	s0,8(sp)
    80007498:	01010113          	addi	sp,sp,16
    8000749c:	00008067          	ret
    800074a0:	0000006f          	j	800074a0 <uartputc_sync+0x40>

00000000800074a4 <uartstart>:
    800074a4:	ff010113          	addi	sp,sp,-16
    800074a8:	00813423          	sd	s0,8(sp)
    800074ac:	01010413          	addi	s0,sp,16
    800074b0:	00004617          	auipc	a2,0x4
    800074b4:	0f060613          	addi	a2,a2,240 # 8000b5a0 <uart_tx_r>
    800074b8:	00004517          	auipc	a0,0x4
    800074bc:	0f050513          	addi	a0,a0,240 # 8000b5a8 <uart_tx_w>
    800074c0:	00063783          	ld	a5,0(a2)
    800074c4:	00053703          	ld	a4,0(a0)
    800074c8:	04f70263          	beq	a4,a5,8000750c <uartstart+0x68>
    800074cc:	100005b7          	lui	a1,0x10000
    800074d0:	00005817          	auipc	a6,0x5
    800074d4:	3d080813          	addi	a6,a6,976 # 8000c8a0 <uart_tx_buf>
    800074d8:	01c0006f          	j	800074f4 <uartstart+0x50>
    800074dc:	0006c703          	lbu	a4,0(a3)
    800074e0:	00f63023          	sd	a5,0(a2)
    800074e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800074e8:	00063783          	ld	a5,0(a2)
    800074ec:	00053703          	ld	a4,0(a0)
    800074f0:	00f70e63          	beq	a4,a5,8000750c <uartstart+0x68>
    800074f4:	01f7f713          	andi	a4,a5,31
    800074f8:	00e806b3          	add	a3,a6,a4
    800074fc:	0055c703          	lbu	a4,5(a1)
    80007500:	00178793          	addi	a5,a5,1
    80007504:	02077713          	andi	a4,a4,32
    80007508:	fc071ae3          	bnez	a4,800074dc <uartstart+0x38>
    8000750c:	00813403          	ld	s0,8(sp)
    80007510:	01010113          	addi	sp,sp,16
    80007514:	00008067          	ret

0000000080007518 <uartgetc>:
    80007518:	ff010113          	addi	sp,sp,-16
    8000751c:	00813423          	sd	s0,8(sp)
    80007520:	01010413          	addi	s0,sp,16
    80007524:	10000737          	lui	a4,0x10000
    80007528:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000752c:	0017f793          	andi	a5,a5,1
    80007530:	00078c63          	beqz	a5,80007548 <uartgetc+0x30>
    80007534:	00074503          	lbu	a0,0(a4)
    80007538:	0ff57513          	andi	a0,a0,255
    8000753c:	00813403          	ld	s0,8(sp)
    80007540:	01010113          	addi	sp,sp,16
    80007544:	00008067          	ret
    80007548:	fff00513          	li	a0,-1
    8000754c:	ff1ff06f          	j	8000753c <uartgetc+0x24>

0000000080007550 <uartintr>:
    80007550:	100007b7          	lui	a5,0x10000
    80007554:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007558:	0017f793          	andi	a5,a5,1
    8000755c:	0a078463          	beqz	a5,80007604 <uartintr+0xb4>
    80007560:	fe010113          	addi	sp,sp,-32
    80007564:	00813823          	sd	s0,16(sp)
    80007568:	00913423          	sd	s1,8(sp)
    8000756c:	00113c23          	sd	ra,24(sp)
    80007570:	02010413          	addi	s0,sp,32
    80007574:	100004b7          	lui	s1,0x10000
    80007578:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000757c:	0ff57513          	andi	a0,a0,255
    80007580:	fffff097          	auipc	ra,0xfffff
    80007584:	534080e7          	jalr	1332(ra) # 80006ab4 <consoleintr>
    80007588:	0054c783          	lbu	a5,5(s1)
    8000758c:	0017f793          	andi	a5,a5,1
    80007590:	fe0794e3          	bnez	a5,80007578 <uartintr+0x28>
    80007594:	00004617          	auipc	a2,0x4
    80007598:	00c60613          	addi	a2,a2,12 # 8000b5a0 <uart_tx_r>
    8000759c:	00004517          	auipc	a0,0x4
    800075a0:	00c50513          	addi	a0,a0,12 # 8000b5a8 <uart_tx_w>
    800075a4:	00063783          	ld	a5,0(a2)
    800075a8:	00053703          	ld	a4,0(a0)
    800075ac:	04f70263          	beq	a4,a5,800075f0 <uartintr+0xa0>
    800075b0:	100005b7          	lui	a1,0x10000
    800075b4:	00005817          	auipc	a6,0x5
    800075b8:	2ec80813          	addi	a6,a6,748 # 8000c8a0 <uart_tx_buf>
    800075bc:	01c0006f          	j	800075d8 <uartintr+0x88>
    800075c0:	0006c703          	lbu	a4,0(a3)
    800075c4:	00f63023          	sd	a5,0(a2)
    800075c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800075cc:	00063783          	ld	a5,0(a2)
    800075d0:	00053703          	ld	a4,0(a0)
    800075d4:	00f70e63          	beq	a4,a5,800075f0 <uartintr+0xa0>
    800075d8:	01f7f713          	andi	a4,a5,31
    800075dc:	00e806b3          	add	a3,a6,a4
    800075e0:	0055c703          	lbu	a4,5(a1)
    800075e4:	00178793          	addi	a5,a5,1
    800075e8:	02077713          	andi	a4,a4,32
    800075ec:	fc071ae3          	bnez	a4,800075c0 <uartintr+0x70>
    800075f0:	01813083          	ld	ra,24(sp)
    800075f4:	01013403          	ld	s0,16(sp)
    800075f8:	00813483          	ld	s1,8(sp)
    800075fc:	02010113          	addi	sp,sp,32
    80007600:	00008067          	ret
    80007604:	00004617          	auipc	a2,0x4
    80007608:	f9c60613          	addi	a2,a2,-100 # 8000b5a0 <uart_tx_r>
    8000760c:	00004517          	auipc	a0,0x4
    80007610:	f9c50513          	addi	a0,a0,-100 # 8000b5a8 <uart_tx_w>
    80007614:	00063783          	ld	a5,0(a2)
    80007618:	00053703          	ld	a4,0(a0)
    8000761c:	04f70263          	beq	a4,a5,80007660 <uartintr+0x110>
    80007620:	100005b7          	lui	a1,0x10000
    80007624:	00005817          	auipc	a6,0x5
    80007628:	27c80813          	addi	a6,a6,636 # 8000c8a0 <uart_tx_buf>
    8000762c:	01c0006f          	j	80007648 <uartintr+0xf8>
    80007630:	0006c703          	lbu	a4,0(a3)
    80007634:	00f63023          	sd	a5,0(a2)
    80007638:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000763c:	00063783          	ld	a5,0(a2)
    80007640:	00053703          	ld	a4,0(a0)
    80007644:	02f70063          	beq	a4,a5,80007664 <uartintr+0x114>
    80007648:	01f7f713          	andi	a4,a5,31
    8000764c:	00e806b3          	add	a3,a6,a4
    80007650:	0055c703          	lbu	a4,5(a1)
    80007654:	00178793          	addi	a5,a5,1
    80007658:	02077713          	andi	a4,a4,32
    8000765c:	fc071ae3          	bnez	a4,80007630 <uartintr+0xe0>
    80007660:	00008067          	ret
    80007664:	00008067          	ret

0000000080007668 <kinit>:
    80007668:	fc010113          	addi	sp,sp,-64
    8000766c:	02913423          	sd	s1,40(sp)
    80007670:	fffff7b7          	lui	a5,0xfffff
    80007674:	00006497          	auipc	s1,0x6
    80007678:	24b48493          	addi	s1,s1,587 # 8000d8bf <end+0xfff>
    8000767c:	02813823          	sd	s0,48(sp)
    80007680:	01313c23          	sd	s3,24(sp)
    80007684:	00f4f4b3          	and	s1,s1,a5
    80007688:	02113c23          	sd	ra,56(sp)
    8000768c:	03213023          	sd	s2,32(sp)
    80007690:	01413823          	sd	s4,16(sp)
    80007694:	01513423          	sd	s5,8(sp)
    80007698:	04010413          	addi	s0,sp,64
    8000769c:	000017b7          	lui	a5,0x1
    800076a0:	01100993          	li	s3,17
    800076a4:	00f487b3          	add	a5,s1,a5
    800076a8:	01b99993          	slli	s3,s3,0x1b
    800076ac:	06f9e063          	bltu	s3,a5,8000770c <kinit+0xa4>
    800076b0:	00005a97          	auipc	s5,0x5
    800076b4:	210a8a93          	addi	s5,s5,528 # 8000c8c0 <end>
    800076b8:	0754ec63          	bltu	s1,s5,80007730 <kinit+0xc8>
    800076bc:	0734fa63          	bgeu	s1,s3,80007730 <kinit+0xc8>
    800076c0:	00088a37          	lui	s4,0x88
    800076c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800076c8:	00004917          	auipc	s2,0x4
    800076cc:	ee890913          	addi	s2,s2,-280 # 8000b5b0 <kmem>
    800076d0:	00ca1a13          	slli	s4,s4,0xc
    800076d4:	0140006f          	j	800076e8 <kinit+0x80>
    800076d8:	000017b7          	lui	a5,0x1
    800076dc:	00f484b3          	add	s1,s1,a5
    800076e0:	0554e863          	bltu	s1,s5,80007730 <kinit+0xc8>
    800076e4:	0534f663          	bgeu	s1,s3,80007730 <kinit+0xc8>
    800076e8:	00001637          	lui	a2,0x1
    800076ec:	00100593          	li	a1,1
    800076f0:	00048513          	mv	a0,s1
    800076f4:	00000097          	auipc	ra,0x0
    800076f8:	5e4080e7          	jalr	1508(ra) # 80007cd8 <__memset>
    800076fc:	00093783          	ld	a5,0(s2)
    80007700:	00f4b023          	sd	a5,0(s1)
    80007704:	00993023          	sd	s1,0(s2)
    80007708:	fd4498e3          	bne	s1,s4,800076d8 <kinit+0x70>
    8000770c:	03813083          	ld	ra,56(sp)
    80007710:	03013403          	ld	s0,48(sp)
    80007714:	02813483          	ld	s1,40(sp)
    80007718:	02013903          	ld	s2,32(sp)
    8000771c:	01813983          	ld	s3,24(sp)
    80007720:	01013a03          	ld	s4,16(sp)
    80007724:	00813a83          	ld	s5,8(sp)
    80007728:	04010113          	addi	sp,sp,64
    8000772c:	00008067          	ret
    80007730:	00002517          	auipc	a0,0x2
    80007734:	fd050513          	addi	a0,a0,-48 # 80009700 <digits+0x18>
    80007738:	fffff097          	auipc	ra,0xfffff
    8000773c:	4b4080e7          	jalr	1204(ra) # 80006bec <panic>

0000000080007740 <freerange>:
    80007740:	fc010113          	addi	sp,sp,-64
    80007744:	000017b7          	lui	a5,0x1
    80007748:	02913423          	sd	s1,40(sp)
    8000774c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007750:	009504b3          	add	s1,a0,s1
    80007754:	fffff537          	lui	a0,0xfffff
    80007758:	02813823          	sd	s0,48(sp)
    8000775c:	02113c23          	sd	ra,56(sp)
    80007760:	03213023          	sd	s2,32(sp)
    80007764:	01313c23          	sd	s3,24(sp)
    80007768:	01413823          	sd	s4,16(sp)
    8000776c:	01513423          	sd	s5,8(sp)
    80007770:	01613023          	sd	s6,0(sp)
    80007774:	04010413          	addi	s0,sp,64
    80007778:	00a4f4b3          	and	s1,s1,a0
    8000777c:	00f487b3          	add	a5,s1,a5
    80007780:	06f5e463          	bltu	a1,a5,800077e8 <freerange+0xa8>
    80007784:	00005a97          	auipc	s5,0x5
    80007788:	13ca8a93          	addi	s5,s5,316 # 8000c8c0 <end>
    8000778c:	0954e263          	bltu	s1,s5,80007810 <freerange+0xd0>
    80007790:	01100993          	li	s3,17
    80007794:	01b99993          	slli	s3,s3,0x1b
    80007798:	0734fc63          	bgeu	s1,s3,80007810 <freerange+0xd0>
    8000779c:	00058a13          	mv	s4,a1
    800077a0:	00004917          	auipc	s2,0x4
    800077a4:	e1090913          	addi	s2,s2,-496 # 8000b5b0 <kmem>
    800077a8:	00002b37          	lui	s6,0x2
    800077ac:	0140006f          	j	800077c0 <freerange+0x80>
    800077b0:	000017b7          	lui	a5,0x1
    800077b4:	00f484b3          	add	s1,s1,a5
    800077b8:	0554ec63          	bltu	s1,s5,80007810 <freerange+0xd0>
    800077bc:	0534fa63          	bgeu	s1,s3,80007810 <freerange+0xd0>
    800077c0:	00001637          	lui	a2,0x1
    800077c4:	00100593          	li	a1,1
    800077c8:	00048513          	mv	a0,s1
    800077cc:	00000097          	auipc	ra,0x0
    800077d0:	50c080e7          	jalr	1292(ra) # 80007cd8 <__memset>
    800077d4:	00093703          	ld	a4,0(s2)
    800077d8:	016487b3          	add	a5,s1,s6
    800077dc:	00e4b023          	sd	a4,0(s1)
    800077e0:	00993023          	sd	s1,0(s2)
    800077e4:	fcfa76e3          	bgeu	s4,a5,800077b0 <freerange+0x70>
    800077e8:	03813083          	ld	ra,56(sp)
    800077ec:	03013403          	ld	s0,48(sp)
    800077f0:	02813483          	ld	s1,40(sp)
    800077f4:	02013903          	ld	s2,32(sp)
    800077f8:	01813983          	ld	s3,24(sp)
    800077fc:	01013a03          	ld	s4,16(sp)
    80007800:	00813a83          	ld	s5,8(sp)
    80007804:	00013b03          	ld	s6,0(sp)
    80007808:	04010113          	addi	sp,sp,64
    8000780c:	00008067          	ret
    80007810:	00002517          	auipc	a0,0x2
    80007814:	ef050513          	addi	a0,a0,-272 # 80009700 <digits+0x18>
    80007818:	fffff097          	auipc	ra,0xfffff
    8000781c:	3d4080e7          	jalr	980(ra) # 80006bec <panic>

0000000080007820 <kfree>:
    80007820:	fe010113          	addi	sp,sp,-32
    80007824:	00813823          	sd	s0,16(sp)
    80007828:	00113c23          	sd	ra,24(sp)
    8000782c:	00913423          	sd	s1,8(sp)
    80007830:	02010413          	addi	s0,sp,32
    80007834:	03451793          	slli	a5,a0,0x34
    80007838:	04079c63          	bnez	a5,80007890 <kfree+0x70>
    8000783c:	00005797          	auipc	a5,0x5
    80007840:	08478793          	addi	a5,a5,132 # 8000c8c0 <end>
    80007844:	00050493          	mv	s1,a0
    80007848:	04f56463          	bltu	a0,a5,80007890 <kfree+0x70>
    8000784c:	01100793          	li	a5,17
    80007850:	01b79793          	slli	a5,a5,0x1b
    80007854:	02f57e63          	bgeu	a0,a5,80007890 <kfree+0x70>
    80007858:	00001637          	lui	a2,0x1
    8000785c:	00100593          	li	a1,1
    80007860:	00000097          	auipc	ra,0x0
    80007864:	478080e7          	jalr	1144(ra) # 80007cd8 <__memset>
    80007868:	00004797          	auipc	a5,0x4
    8000786c:	d4878793          	addi	a5,a5,-696 # 8000b5b0 <kmem>
    80007870:	0007b703          	ld	a4,0(a5)
    80007874:	01813083          	ld	ra,24(sp)
    80007878:	01013403          	ld	s0,16(sp)
    8000787c:	00e4b023          	sd	a4,0(s1)
    80007880:	0097b023          	sd	s1,0(a5)
    80007884:	00813483          	ld	s1,8(sp)
    80007888:	02010113          	addi	sp,sp,32
    8000788c:	00008067          	ret
    80007890:	00002517          	auipc	a0,0x2
    80007894:	e7050513          	addi	a0,a0,-400 # 80009700 <digits+0x18>
    80007898:	fffff097          	auipc	ra,0xfffff
    8000789c:	354080e7          	jalr	852(ra) # 80006bec <panic>

00000000800078a0 <kalloc>:
    800078a0:	fe010113          	addi	sp,sp,-32
    800078a4:	00813823          	sd	s0,16(sp)
    800078a8:	00913423          	sd	s1,8(sp)
    800078ac:	00113c23          	sd	ra,24(sp)
    800078b0:	02010413          	addi	s0,sp,32
    800078b4:	00004797          	auipc	a5,0x4
    800078b8:	cfc78793          	addi	a5,a5,-772 # 8000b5b0 <kmem>
    800078bc:	0007b483          	ld	s1,0(a5)
    800078c0:	02048063          	beqz	s1,800078e0 <kalloc+0x40>
    800078c4:	0004b703          	ld	a4,0(s1)
    800078c8:	00001637          	lui	a2,0x1
    800078cc:	00500593          	li	a1,5
    800078d0:	00048513          	mv	a0,s1
    800078d4:	00e7b023          	sd	a4,0(a5)
    800078d8:	00000097          	auipc	ra,0x0
    800078dc:	400080e7          	jalr	1024(ra) # 80007cd8 <__memset>
    800078e0:	01813083          	ld	ra,24(sp)
    800078e4:	01013403          	ld	s0,16(sp)
    800078e8:	00048513          	mv	a0,s1
    800078ec:	00813483          	ld	s1,8(sp)
    800078f0:	02010113          	addi	sp,sp,32
    800078f4:	00008067          	ret

00000000800078f8 <initlock>:
    800078f8:	ff010113          	addi	sp,sp,-16
    800078fc:	00813423          	sd	s0,8(sp)
    80007900:	01010413          	addi	s0,sp,16
    80007904:	00813403          	ld	s0,8(sp)
    80007908:	00b53423          	sd	a1,8(a0)
    8000790c:	00052023          	sw	zero,0(a0)
    80007910:	00053823          	sd	zero,16(a0)
    80007914:	01010113          	addi	sp,sp,16
    80007918:	00008067          	ret

000000008000791c <acquire>:
    8000791c:	fe010113          	addi	sp,sp,-32
    80007920:	00813823          	sd	s0,16(sp)
    80007924:	00913423          	sd	s1,8(sp)
    80007928:	00113c23          	sd	ra,24(sp)
    8000792c:	01213023          	sd	s2,0(sp)
    80007930:	02010413          	addi	s0,sp,32
    80007934:	00050493          	mv	s1,a0
    80007938:	10002973          	csrr	s2,sstatus
    8000793c:	100027f3          	csrr	a5,sstatus
    80007940:	ffd7f793          	andi	a5,a5,-3
    80007944:	10079073          	csrw	sstatus,a5
    80007948:	fffff097          	auipc	ra,0xfffff
    8000794c:	8e0080e7          	jalr	-1824(ra) # 80006228 <mycpu>
    80007950:	07852783          	lw	a5,120(a0)
    80007954:	06078e63          	beqz	a5,800079d0 <acquire+0xb4>
    80007958:	fffff097          	auipc	ra,0xfffff
    8000795c:	8d0080e7          	jalr	-1840(ra) # 80006228 <mycpu>
    80007960:	07852783          	lw	a5,120(a0)
    80007964:	0004a703          	lw	a4,0(s1)
    80007968:	0017879b          	addiw	a5,a5,1
    8000796c:	06f52c23          	sw	a5,120(a0)
    80007970:	04071063          	bnez	a4,800079b0 <acquire+0x94>
    80007974:	00100713          	li	a4,1
    80007978:	00070793          	mv	a5,a4
    8000797c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007980:	0007879b          	sext.w	a5,a5
    80007984:	fe079ae3          	bnez	a5,80007978 <acquire+0x5c>
    80007988:	0ff0000f          	fence
    8000798c:	fffff097          	auipc	ra,0xfffff
    80007990:	89c080e7          	jalr	-1892(ra) # 80006228 <mycpu>
    80007994:	01813083          	ld	ra,24(sp)
    80007998:	01013403          	ld	s0,16(sp)
    8000799c:	00a4b823          	sd	a0,16(s1)
    800079a0:	00013903          	ld	s2,0(sp)
    800079a4:	00813483          	ld	s1,8(sp)
    800079a8:	02010113          	addi	sp,sp,32
    800079ac:	00008067          	ret
    800079b0:	0104b903          	ld	s2,16(s1)
    800079b4:	fffff097          	auipc	ra,0xfffff
    800079b8:	874080e7          	jalr	-1932(ra) # 80006228 <mycpu>
    800079bc:	faa91ce3          	bne	s2,a0,80007974 <acquire+0x58>
    800079c0:	00002517          	auipc	a0,0x2
    800079c4:	d4850513          	addi	a0,a0,-696 # 80009708 <digits+0x20>
    800079c8:	fffff097          	auipc	ra,0xfffff
    800079cc:	224080e7          	jalr	548(ra) # 80006bec <panic>
    800079d0:	00195913          	srli	s2,s2,0x1
    800079d4:	fffff097          	auipc	ra,0xfffff
    800079d8:	854080e7          	jalr	-1964(ra) # 80006228 <mycpu>
    800079dc:	00197913          	andi	s2,s2,1
    800079e0:	07252e23          	sw	s2,124(a0)
    800079e4:	f75ff06f          	j	80007958 <acquire+0x3c>

00000000800079e8 <release>:
    800079e8:	fe010113          	addi	sp,sp,-32
    800079ec:	00813823          	sd	s0,16(sp)
    800079f0:	00113c23          	sd	ra,24(sp)
    800079f4:	00913423          	sd	s1,8(sp)
    800079f8:	01213023          	sd	s2,0(sp)
    800079fc:	02010413          	addi	s0,sp,32
    80007a00:	00052783          	lw	a5,0(a0)
    80007a04:	00079a63          	bnez	a5,80007a18 <release+0x30>
    80007a08:	00002517          	auipc	a0,0x2
    80007a0c:	d0850513          	addi	a0,a0,-760 # 80009710 <digits+0x28>
    80007a10:	fffff097          	auipc	ra,0xfffff
    80007a14:	1dc080e7          	jalr	476(ra) # 80006bec <panic>
    80007a18:	01053903          	ld	s2,16(a0)
    80007a1c:	00050493          	mv	s1,a0
    80007a20:	fffff097          	auipc	ra,0xfffff
    80007a24:	808080e7          	jalr	-2040(ra) # 80006228 <mycpu>
    80007a28:	fea910e3          	bne	s2,a0,80007a08 <release+0x20>
    80007a2c:	0004b823          	sd	zero,16(s1)
    80007a30:	0ff0000f          	fence
    80007a34:	0f50000f          	fence	iorw,ow
    80007a38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007a3c:	ffffe097          	auipc	ra,0xffffe
    80007a40:	7ec080e7          	jalr	2028(ra) # 80006228 <mycpu>
    80007a44:	100027f3          	csrr	a5,sstatus
    80007a48:	0027f793          	andi	a5,a5,2
    80007a4c:	04079a63          	bnez	a5,80007aa0 <release+0xb8>
    80007a50:	07852783          	lw	a5,120(a0)
    80007a54:	02f05e63          	blez	a5,80007a90 <release+0xa8>
    80007a58:	fff7871b          	addiw	a4,a5,-1
    80007a5c:	06e52c23          	sw	a4,120(a0)
    80007a60:	00071c63          	bnez	a4,80007a78 <release+0x90>
    80007a64:	07c52783          	lw	a5,124(a0)
    80007a68:	00078863          	beqz	a5,80007a78 <release+0x90>
    80007a6c:	100027f3          	csrr	a5,sstatus
    80007a70:	0027e793          	ori	a5,a5,2
    80007a74:	10079073          	csrw	sstatus,a5
    80007a78:	01813083          	ld	ra,24(sp)
    80007a7c:	01013403          	ld	s0,16(sp)
    80007a80:	00813483          	ld	s1,8(sp)
    80007a84:	00013903          	ld	s2,0(sp)
    80007a88:	02010113          	addi	sp,sp,32
    80007a8c:	00008067          	ret
    80007a90:	00002517          	auipc	a0,0x2
    80007a94:	ca050513          	addi	a0,a0,-864 # 80009730 <digits+0x48>
    80007a98:	fffff097          	auipc	ra,0xfffff
    80007a9c:	154080e7          	jalr	340(ra) # 80006bec <panic>
    80007aa0:	00002517          	auipc	a0,0x2
    80007aa4:	c7850513          	addi	a0,a0,-904 # 80009718 <digits+0x30>
    80007aa8:	fffff097          	auipc	ra,0xfffff
    80007aac:	144080e7          	jalr	324(ra) # 80006bec <panic>

0000000080007ab0 <holding>:
    80007ab0:	00052783          	lw	a5,0(a0)
    80007ab4:	00079663          	bnez	a5,80007ac0 <holding+0x10>
    80007ab8:	00000513          	li	a0,0
    80007abc:	00008067          	ret
    80007ac0:	fe010113          	addi	sp,sp,-32
    80007ac4:	00813823          	sd	s0,16(sp)
    80007ac8:	00913423          	sd	s1,8(sp)
    80007acc:	00113c23          	sd	ra,24(sp)
    80007ad0:	02010413          	addi	s0,sp,32
    80007ad4:	01053483          	ld	s1,16(a0)
    80007ad8:	ffffe097          	auipc	ra,0xffffe
    80007adc:	750080e7          	jalr	1872(ra) # 80006228 <mycpu>
    80007ae0:	01813083          	ld	ra,24(sp)
    80007ae4:	01013403          	ld	s0,16(sp)
    80007ae8:	40a48533          	sub	a0,s1,a0
    80007aec:	00153513          	seqz	a0,a0
    80007af0:	00813483          	ld	s1,8(sp)
    80007af4:	02010113          	addi	sp,sp,32
    80007af8:	00008067          	ret

0000000080007afc <push_off>:
    80007afc:	fe010113          	addi	sp,sp,-32
    80007b00:	00813823          	sd	s0,16(sp)
    80007b04:	00113c23          	sd	ra,24(sp)
    80007b08:	00913423          	sd	s1,8(sp)
    80007b0c:	02010413          	addi	s0,sp,32
    80007b10:	100024f3          	csrr	s1,sstatus
    80007b14:	100027f3          	csrr	a5,sstatus
    80007b18:	ffd7f793          	andi	a5,a5,-3
    80007b1c:	10079073          	csrw	sstatus,a5
    80007b20:	ffffe097          	auipc	ra,0xffffe
    80007b24:	708080e7          	jalr	1800(ra) # 80006228 <mycpu>
    80007b28:	07852783          	lw	a5,120(a0)
    80007b2c:	02078663          	beqz	a5,80007b58 <push_off+0x5c>
    80007b30:	ffffe097          	auipc	ra,0xffffe
    80007b34:	6f8080e7          	jalr	1784(ra) # 80006228 <mycpu>
    80007b38:	07852783          	lw	a5,120(a0)
    80007b3c:	01813083          	ld	ra,24(sp)
    80007b40:	01013403          	ld	s0,16(sp)
    80007b44:	0017879b          	addiw	a5,a5,1
    80007b48:	06f52c23          	sw	a5,120(a0)
    80007b4c:	00813483          	ld	s1,8(sp)
    80007b50:	02010113          	addi	sp,sp,32
    80007b54:	00008067          	ret
    80007b58:	0014d493          	srli	s1,s1,0x1
    80007b5c:	ffffe097          	auipc	ra,0xffffe
    80007b60:	6cc080e7          	jalr	1740(ra) # 80006228 <mycpu>
    80007b64:	0014f493          	andi	s1,s1,1
    80007b68:	06952e23          	sw	s1,124(a0)
    80007b6c:	fc5ff06f          	j	80007b30 <push_off+0x34>

0000000080007b70 <pop_off>:
    80007b70:	ff010113          	addi	sp,sp,-16
    80007b74:	00813023          	sd	s0,0(sp)
    80007b78:	00113423          	sd	ra,8(sp)
    80007b7c:	01010413          	addi	s0,sp,16
    80007b80:	ffffe097          	auipc	ra,0xffffe
    80007b84:	6a8080e7          	jalr	1704(ra) # 80006228 <mycpu>
    80007b88:	100027f3          	csrr	a5,sstatus
    80007b8c:	0027f793          	andi	a5,a5,2
    80007b90:	04079663          	bnez	a5,80007bdc <pop_off+0x6c>
    80007b94:	07852783          	lw	a5,120(a0)
    80007b98:	02f05a63          	blez	a5,80007bcc <pop_off+0x5c>
    80007b9c:	fff7871b          	addiw	a4,a5,-1
    80007ba0:	06e52c23          	sw	a4,120(a0)
    80007ba4:	00071c63          	bnez	a4,80007bbc <pop_off+0x4c>
    80007ba8:	07c52783          	lw	a5,124(a0)
    80007bac:	00078863          	beqz	a5,80007bbc <pop_off+0x4c>
    80007bb0:	100027f3          	csrr	a5,sstatus
    80007bb4:	0027e793          	ori	a5,a5,2
    80007bb8:	10079073          	csrw	sstatus,a5
    80007bbc:	00813083          	ld	ra,8(sp)
    80007bc0:	00013403          	ld	s0,0(sp)
    80007bc4:	01010113          	addi	sp,sp,16
    80007bc8:	00008067          	ret
    80007bcc:	00002517          	auipc	a0,0x2
    80007bd0:	b6450513          	addi	a0,a0,-1180 # 80009730 <digits+0x48>
    80007bd4:	fffff097          	auipc	ra,0xfffff
    80007bd8:	018080e7          	jalr	24(ra) # 80006bec <panic>
    80007bdc:	00002517          	auipc	a0,0x2
    80007be0:	b3c50513          	addi	a0,a0,-1220 # 80009718 <digits+0x30>
    80007be4:	fffff097          	auipc	ra,0xfffff
    80007be8:	008080e7          	jalr	8(ra) # 80006bec <panic>

0000000080007bec <push_on>:
    80007bec:	fe010113          	addi	sp,sp,-32
    80007bf0:	00813823          	sd	s0,16(sp)
    80007bf4:	00113c23          	sd	ra,24(sp)
    80007bf8:	00913423          	sd	s1,8(sp)
    80007bfc:	02010413          	addi	s0,sp,32
    80007c00:	100024f3          	csrr	s1,sstatus
    80007c04:	100027f3          	csrr	a5,sstatus
    80007c08:	0027e793          	ori	a5,a5,2
    80007c0c:	10079073          	csrw	sstatus,a5
    80007c10:	ffffe097          	auipc	ra,0xffffe
    80007c14:	618080e7          	jalr	1560(ra) # 80006228 <mycpu>
    80007c18:	07852783          	lw	a5,120(a0)
    80007c1c:	02078663          	beqz	a5,80007c48 <push_on+0x5c>
    80007c20:	ffffe097          	auipc	ra,0xffffe
    80007c24:	608080e7          	jalr	1544(ra) # 80006228 <mycpu>
    80007c28:	07852783          	lw	a5,120(a0)
    80007c2c:	01813083          	ld	ra,24(sp)
    80007c30:	01013403          	ld	s0,16(sp)
    80007c34:	0017879b          	addiw	a5,a5,1
    80007c38:	06f52c23          	sw	a5,120(a0)
    80007c3c:	00813483          	ld	s1,8(sp)
    80007c40:	02010113          	addi	sp,sp,32
    80007c44:	00008067          	ret
    80007c48:	0014d493          	srli	s1,s1,0x1
    80007c4c:	ffffe097          	auipc	ra,0xffffe
    80007c50:	5dc080e7          	jalr	1500(ra) # 80006228 <mycpu>
    80007c54:	0014f493          	andi	s1,s1,1
    80007c58:	06952e23          	sw	s1,124(a0)
    80007c5c:	fc5ff06f          	j	80007c20 <push_on+0x34>

0000000080007c60 <pop_on>:
    80007c60:	ff010113          	addi	sp,sp,-16
    80007c64:	00813023          	sd	s0,0(sp)
    80007c68:	00113423          	sd	ra,8(sp)
    80007c6c:	01010413          	addi	s0,sp,16
    80007c70:	ffffe097          	auipc	ra,0xffffe
    80007c74:	5b8080e7          	jalr	1464(ra) # 80006228 <mycpu>
    80007c78:	100027f3          	csrr	a5,sstatus
    80007c7c:	0027f793          	andi	a5,a5,2
    80007c80:	04078463          	beqz	a5,80007cc8 <pop_on+0x68>
    80007c84:	07852783          	lw	a5,120(a0)
    80007c88:	02f05863          	blez	a5,80007cb8 <pop_on+0x58>
    80007c8c:	fff7879b          	addiw	a5,a5,-1
    80007c90:	06f52c23          	sw	a5,120(a0)
    80007c94:	07853783          	ld	a5,120(a0)
    80007c98:	00079863          	bnez	a5,80007ca8 <pop_on+0x48>
    80007c9c:	100027f3          	csrr	a5,sstatus
    80007ca0:	ffd7f793          	andi	a5,a5,-3
    80007ca4:	10079073          	csrw	sstatus,a5
    80007ca8:	00813083          	ld	ra,8(sp)
    80007cac:	00013403          	ld	s0,0(sp)
    80007cb0:	01010113          	addi	sp,sp,16
    80007cb4:	00008067          	ret
    80007cb8:	00002517          	auipc	a0,0x2
    80007cbc:	aa050513          	addi	a0,a0,-1376 # 80009758 <digits+0x70>
    80007cc0:	fffff097          	auipc	ra,0xfffff
    80007cc4:	f2c080e7          	jalr	-212(ra) # 80006bec <panic>
    80007cc8:	00002517          	auipc	a0,0x2
    80007ccc:	a7050513          	addi	a0,a0,-1424 # 80009738 <digits+0x50>
    80007cd0:	fffff097          	auipc	ra,0xfffff
    80007cd4:	f1c080e7          	jalr	-228(ra) # 80006bec <panic>

0000000080007cd8 <__memset>:
    80007cd8:	ff010113          	addi	sp,sp,-16
    80007cdc:	00813423          	sd	s0,8(sp)
    80007ce0:	01010413          	addi	s0,sp,16
    80007ce4:	1a060e63          	beqz	a2,80007ea0 <__memset+0x1c8>
    80007ce8:	40a007b3          	neg	a5,a0
    80007cec:	0077f793          	andi	a5,a5,7
    80007cf0:	00778693          	addi	a3,a5,7
    80007cf4:	00b00813          	li	a6,11
    80007cf8:	0ff5f593          	andi	a1,a1,255
    80007cfc:	fff6071b          	addiw	a4,a2,-1
    80007d00:	1b06e663          	bltu	a3,a6,80007eac <__memset+0x1d4>
    80007d04:	1cd76463          	bltu	a4,a3,80007ecc <__memset+0x1f4>
    80007d08:	1a078e63          	beqz	a5,80007ec4 <__memset+0x1ec>
    80007d0c:	00b50023          	sb	a1,0(a0)
    80007d10:	00100713          	li	a4,1
    80007d14:	1ae78463          	beq	a5,a4,80007ebc <__memset+0x1e4>
    80007d18:	00b500a3          	sb	a1,1(a0)
    80007d1c:	00200713          	li	a4,2
    80007d20:	1ae78a63          	beq	a5,a4,80007ed4 <__memset+0x1fc>
    80007d24:	00b50123          	sb	a1,2(a0)
    80007d28:	00300713          	li	a4,3
    80007d2c:	18e78463          	beq	a5,a4,80007eb4 <__memset+0x1dc>
    80007d30:	00b501a3          	sb	a1,3(a0)
    80007d34:	00400713          	li	a4,4
    80007d38:	1ae78263          	beq	a5,a4,80007edc <__memset+0x204>
    80007d3c:	00b50223          	sb	a1,4(a0)
    80007d40:	00500713          	li	a4,5
    80007d44:	1ae78063          	beq	a5,a4,80007ee4 <__memset+0x20c>
    80007d48:	00b502a3          	sb	a1,5(a0)
    80007d4c:	00700713          	li	a4,7
    80007d50:	18e79e63          	bne	a5,a4,80007eec <__memset+0x214>
    80007d54:	00b50323          	sb	a1,6(a0)
    80007d58:	00700e93          	li	t4,7
    80007d5c:	00859713          	slli	a4,a1,0x8
    80007d60:	00e5e733          	or	a4,a1,a4
    80007d64:	01059e13          	slli	t3,a1,0x10
    80007d68:	01c76e33          	or	t3,a4,t3
    80007d6c:	01859313          	slli	t1,a1,0x18
    80007d70:	006e6333          	or	t1,t3,t1
    80007d74:	02059893          	slli	a7,a1,0x20
    80007d78:	40f60e3b          	subw	t3,a2,a5
    80007d7c:	011368b3          	or	a7,t1,a7
    80007d80:	02859813          	slli	a6,a1,0x28
    80007d84:	0108e833          	or	a6,a7,a6
    80007d88:	03059693          	slli	a3,a1,0x30
    80007d8c:	003e589b          	srliw	a7,t3,0x3
    80007d90:	00d866b3          	or	a3,a6,a3
    80007d94:	03859713          	slli	a4,a1,0x38
    80007d98:	00389813          	slli	a6,a7,0x3
    80007d9c:	00f507b3          	add	a5,a0,a5
    80007da0:	00e6e733          	or	a4,a3,a4
    80007da4:	000e089b          	sext.w	a7,t3
    80007da8:	00f806b3          	add	a3,a6,a5
    80007dac:	00e7b023          	sd	a4,0(a5)
    80007db0:	00878793          	addi	a5,a5,8
    80007db4:	fed79ce3          	bne	a5,a3,80007dac <__memset+0xd4>
    80007db8:	ff8e7793          	andi	a5,t3,-8
    80007dbc:	0007871b          	sext.w	a4,a5
    80007dc0:	01d787bb          	addw	a5,a5,t4
    80007dc4:	0ce88e63          	beq	a7,a4,80007ea0 <__memset+0x1c8>
    80007dc8:	00f50733          	add	a4,a0,a5
    80007dcc:	00b70023          	sb	a1,0(a4)
    80007dd0:	0017871b          	addiw	a4,a5,1
    80007dd4:	0cc77663          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007dd8:	00e50733          	add	a4,a0,a4
    80007ddc:	00b70023          	sb	a1,0(a4)
    80007de0:	0027871b          	addiw	a4,a5,2
    80007de4:	0ac77e63          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007de8:	00e50733          	add	a4,a0,a4
    80007dec:	00b70023          	sb	a1,0(a4)
    80007df0:	0037871b          	addiw	a4,a5,3
    80007df4:	0ac77663          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007df8:	00e50733          	add	a4,a0,a4
    80007dfc:	00b70023          	sb	a1,0(a4)
    80007e00:	0047871b          	addiw	a4,a5,4
    80007e04:	08c77e63          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007e08:	00e50733          	add	a4,a0,a4
    80007e0c:	00b70023          	sb	a1,0(a4)
    80007e10:	0057871b          	addiw	a4,a5,5
    80007e14:	08c77663          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007e18:	00e50733          	add	a4,a0,a4
    80007e1c:	00b70023          	sb	a1,0(a4)
    80007e20:	0067871b          	addiw	a4,a5,6
    80007e24:	06c77e63          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007e28:	00e50733          	add	a4,a0,a4
    80007e2c:	00b70023          	sb	a1,0(a4)
    80007e30:	0077871b          	addiw	a4,a5,7
    80007e34:	06c77663          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007e38:	00e50733          	add	a4,a0,a4
    80007e3c:	00b70023          	sb	a1,0(a4)
    80007e40:	0087871b          	addiw	a4,a5,8
    80007e44:	04c77e63          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007e48:	00e50733          	add	a4,a0,a4
    80007e4c:	00b70023          	sb	a1,0(a4)
    80007e50:	0097871b          	addiw	a4,a5,9
    80007e54:	04c77663          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007e58:	00e50733          	add	a4,a0,a4
    80007e5c:	00b70023          	sb	a1,0(a4)
    80007e60:	00a7871b          	addiw	a4,a5,10
    80007e64:	02c77e63          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007e68:	00e50733          	add	a4,a0,a4
    80007e6c:	00b70023          	sb	a1,0(a4)
    80007e70:	00b7871b          	addiw	a4,a5,11
    80007e74:	02c77663          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007e78:	00e50733          	add	a4,a0,a4
    80007e7c:	00b70023          	sb	a1,0(a4)
    80007e80:	00c7871b          	addiw	a4,a5,12
    80007e84:	00c77e63          	bgeu	a4,a2,80007ea0 <__memset+0x1c8>
    80007e88:	00e50733          	add	a4,a0,a4
    80007e8c:	00b70023          	sb	a1,0(a4)
    80007e90:	00d7879b          	addiw	a5,a5,13
    80007e94:	00c7f663          	bgeu	a5,a2,80007ea0 <__memset+0x1c8>
    80007e98:	00f507b3          	add	a5,a0,a5
    80007e9c:	00b78023          	sb	a1,0(a5)
    80007ea0:	00813403          	ld	s0,8(sp)
    80007ea4:	01010113          	addi	sp,sp,16
    80007ea8:	00008067          	ret
    80007eac:	00b00693          	li	a3,11
    80007eb0:	e55ff06f          	j	80007d04 <__memset+0x2c>
    80007eb4:	00300e93          	li	t4,3
    80007eb8:	ea5ff06f          	j	80007d5c <__memset+0x84>
    80007ebc:	00100e93          	li	t4,1
    80007ec0:	e9dff06f          	j	80007d5c <__memset+0x84>
    80007ec4:	00000e93          	li	t4,0
    80007ec8:	e95ff06f          	j	80007d5c <__memset+0x84>
    80007ecc:	00000793          	li	a5,0
    80007ed0:	ef9ff06f          	j	80007dc8 <__memset+0xf0>
    80007ed4:	00200e93          	li	t4,2
    80007ed8:	e85ff06f          	j	80007d5c <__memset+0x84>
    80007edc:	00400e93          	li	t4,4
    80007ee0:	e7dff06f          	j	80007d5c <__memset+0x84>
    80007ee4:	00500e93          	li	t4,5
    80007ee8:	e75ff06f          	j	80007d5c <__memset+0x84>
    80007eec:	00600e93          	li	t4,6
    80007ef0:	e6dff06f          	j	80007d5c <__memset+0x84>

0000000080007ef4 <__memmove>:
    80007ef4:	ff010113          	addi	sp,sp,-16
    80007ef8:	00813423          	sd	s0,8(sp)
    80007efc:	01010413          	addi	s0,sp,16
    80007f00:	0e060863          	beqz	a2,80007ff0 <__memmove+0xfc>
    80007f04:	fff6069b          	addiw	a3,a2,-1
    80007f08:	0006881b          	sext.w	a6,a3
    80007f0c:	0ea5e863          	bltu	a1,a0,80007ffc <__memmove+0x108>
    80007f10:	00758713          	addi	a4,a1,7
    80007f14:	00a5e7b3          	or	a5,a1,a0
    80007f18:	40a70733          	sub	a4,a4,a0
    80007f1c:	0077f793          	andi	a5,a5,7
    80007f20:	00f73713          	sltiu	a4,a4,15
    80007f24:	00174713          	xori	a4,a4,1
    80007f28:	0017b793          	seqz	a5,a5
    80007f2c:	00e7f7b3          	and	a5,a5,a4
    80007f30:	10078863          	beqz	a5,80008040 <__memmove+0x14c>
    80007f34:	00900793          	li	a5,9
    80007f38:	1107f463          	bgeu	a5,a6,80008040 <__memmove+0x14c>
    80007f3c:	0036581b          	srliw	a6,a2,0x3
    80007f40:	fff8081b          	addiw	a6,a6,-1
    80007f44:	02081813          	slli	a6,a6,0x20
    80007f48:	01d85893          	srli	a7,a6,0x1d
    80007f4c:	00858813          	addi	a6,a1,8
    80007f50:	00058793          	mv	a5,a1
    80007f54:	00050713          	mv	a4,a0
    80007f58:	01088833          	add	a6,a7,a6
    80007f5c:	0007b883          	ld	a7,0(a5)
    80007f60:	00878793          	addi	a5,a5,8
    80007f64:	00870713          	addi	a4,a4,8
    80007f68:	ff173c23          	sd	a7,-8(a4)
    80007f6c:	ff0798e3          	bne	a5,a6,80007f5c <__memmove+0x68>
    80007f70:	ff867713          	andi	a4,a2,-8
    80007f74:	02071793          	slli	a5,a4,0x20
    80007f78:	0207d793          	srli	a5,a5,0x20
    80007f7c:	00f585b3          	add	a1,a1,a5
    80007f80:	40e686bb          	subw	a3,a3,a4
    80007f84:	00f507b3          	add	a5,a0,a5
    80007f88:	06e60463          	beq	a2,a4,80007ff0 <__memmove+0xfc>
    80007f8c:	0005c703          	lbu	a4,0(a1)
    80007f90:	00e78023          	sb	a4,0(a5)
    80007f94:	04068e63          	beqz	a3,80007ff0 <__memmove+0xfc>
    80007f98:	0015c603          	lbu	a2,1(a1)
    80007f9c:	00100713          	li	a4,1
    80007fa0:	00c780a3          	sb	a2,1(a5)
    80007fa4:	04e68663          	beq	a3,a4,80007ff0 <__memmove+0xfc>
    80007fa8:	0025c603          	lbu	a2,2(a1)
    80007fac:	00200713          	li	a4,2
    80007fb0:	00c78123          	sb	a2,2(a5)
    80007fb4:	02e68e63          	beq	a3,a4,80007ff0 <__memmove+0xfc>
    80007fb8:	0035c603          	lbu	a2,3(a1)
    80007fbc:	00300713          	li	a4,3
    80007fc0:	00c781a3          	sb	a2,3(a5)
    80007fc4:	02e68663          	beq	a3,a4,80007ff0 <__memmove+0xfc>
    80007fc8:	0045c603          	lbu	a2,4(a1)
    80007fcc:	00400713          	li	a4,4
    80007fd0:	00c78223          	sb	a2,4(a5)
    80007fd4:	00e68e63          	beq	a3,a4,80007ff0 <__memmove+0xfc>
    80007fd8:	0055c603          	lbu	a2,5(a1)
    80007fdc:	00500713          	li	a4,5
    80007fe0:	00c782a3          	sb	a2,5(a5)
    80007fe4:	00e68663          	beq	a3,a4,80007ff0 <__memmove+0xfc>
    80007fe8:	0065c703          	lbu	a4,6(a1)
    80007fec:	00e78323          	sb	a4,6(a5)
    80007ff0:	00813403          	ld	s0,8(sp)
    80007ff4:	01010113          	addi	sp,sp,16
    80007ff8:	00008067          	ret
    80007ffc:	02061713          	slli	a4,a2,0x20
    80008000:	02075713          	srli	a4,a4,0x20
    80008004:	00e587b3          	add	a5,a1,a4
    80008008:	f0f574e3          	bgeu	a0,a5,80007f10 <__memmove+0x1c>
    8000800c:	02069613          	slli	a2,a3,0x20
    80008010:	02065613          	srli	a2,a2,0x20
    80008014:	fff64613          	not	a2,a2
    80008018:	00e50733          	add	a4,a0,a4
    8000801c:	00c78633          	add	a2,a5,a2
    80008020:	fff7c683          	lbu	a3,-1(a5)
    80008024:	fff78793          	addi	a5,a5,-1
    80008028:	fff70713          	addi	a4,a4,-1
    8000802c:	00d70023          	sb	a3,0(a4)
    80008030:	fec798e3          	bne	a5,a2,80008020 <__memmove+0x12c>
    80008034:	00813403          	ld	s0,8(sp)
    80008038:	01010113          	addi	sp,sp,16
    8000803c:	00008067          	ret
    80008040:	02069713          	slli	a4,a3,0x20
    80008044:	02075713          	srli	a4,a4,0x20
    80008048:	00170713          	addi	a4,a4,1
    8000804c:	00e50733          	add	a4,a0,a4
    80008050:	00050793          	mv	a5,a0
    80008054:	0005c683          	lbu	a3,0(a1)
    80008058:	00178793          	addi	a5,a5,1
    8000805c:	00158593          	addi	a1,a1,1
    80008060:	fed78fa3          	sb	a3,-1(a5)
    80008064:	fee798e3          	bne	a5,a4,80008054 <__memmove+0x160>
    80008068:	f89ff06f          	j	80007ff0 <__memmove+0xfc>

000000008000806c <__putc>:
    8000806c:	fe010113          	addi	sp,sp,-32
    80008070:	00813823          	sd	s0,16(sp)
    80008074:	00113c23          	sd	ra,24(sp)
    80008078:	02010413          	addi	s0,sp,32
    8000807c:	00050793          	mv	a5,a0
    80008080:	fef40593          	addi	a1,s0,-17
    80008084:	00100613          	li	a2,1
    80008088:	00000513          	li	a0,0
    8000808c:	fef407a3          	sb	a5,-17(s0)
    80008090:	fffff097          	auipc	ra,0xfffff
    80008094:	b3c080e7          	jalr	-1220(ra) # 80006bcc <console_write>
    80008098:	01813083          	ld	ra,24(sp)
    8000809c:	01013403          	ld	s0,16(sp)
    800080a0:	02010113          	addi	sp,sp,32
    800080a4:	00008067          	ret

00000000800080a8 <__getc>:
    800080a8:	fe010113          	addi	sp,sp,-32
    800080ac:	00813823          	sd	s0,16(sp)
    800080b0:	00113c23          	sd	ra,24(sp)
    800080b4:	02010413          	addi	s0,sp,32
    800080b8:	fe840593          	addi	a1,s0,-24
    800080bc:	00100613          	li	a2,1
    800080c0:	00000513          	li	a0,0
    800080c4:	fffff097          	auipc	ra,0xfffff
    800080c8:	ae8080e7          	jalr	-1304(ra) # 80006bac <console_read>
    800080cc:	fe844503          	lbu	a0,-24(s0)
    800080d0:	01813083          	ld	ra,24(sp)
    800080d4:	01013403          	ld	s0,16(sp)
    800080d8:	02010113          	addi	sp,sp,32
    800080dc:	00008067          	ret

00000000800080e0 <console_handler>:
    800080e0:	fe010113          	addi	sp,sp,-32
    800080e4:	00813823          	sd	s0,16(sp)
    800080e8:	00113c23          	sd	ra,24(sp)
    800080ec:	00913423          	sd	s1,8(sp)
    800080f0:	02010413          	addi	s0,sp,32
    800080f4:	14202773          	csrr	a4,scause
    800080f8:	100027f3          	csrr	a5,sstatus
    800080fc:	0027f793          	andi	a5,a5,2
    80008100:	06079e63          	bnez	a5,8000817c <console_handler+0x9c>
    80008104:	00074c63          	bltz	a4,8000811c <console_handler+0x3c>
    80008108:	01813083          	ld	ra,24(sp)
    8000810c:	01013403          	ld	s0,16(sp)
    80008110:	00813483          	ld	s1,8(sp)
    80008114:	02010113          	addi	sp,sp,32
    80008118:	00008067          	ret
    8000811c:	0ff77713          	andi	a4,a4,255
    80008120:	00900793          	li	a5,9
    80008124:	fef712e3          	bne	a4,a5,80008108 <console_handler+0x28>
    80008128:	ffffe097          	auipc	ra,0xffffe
    8000812c:	6dc080e7          	jalr	1756(ra) # 80006804 <plic_claim>
    80008130:	00a00793          	li	a5,10
    80008134:	00050493          	mv	s1,a0
    80008138:	02f50c63          	beq	a0,a5,80008170 <console_handler+0x90>
    8000813c:	fc0506e3          	beqz	a0,80008108 <console_handler+0x28>
    80008140:	00050593          	mv	a1,a0
    80008144:	00001517          	auipc	a0,0x1
    80008148:	51c50513          	addi	a0,a0,1308 # 80009660 <_ZN15MemoryAllocator10DBlockSizeE+0x640>
    8000814c:	fffff097          	auipc	ra,0xfffff
    80008150:	afc080e7          	jalr	-1284(ra) # 80006c48 <__printf>
    80008154:	01013403          	ld	s0,16(sp)
    80008158:	01813083          	ld	ra,24(sp)
    8000815c:	00048513          	mv	a0,s1
    80008160:	00813483          	ld	s1,8(sp)
    80008164:	02010113          	addi	sp,sp,32
    80008168:	ffffe317          	auipc	t1,0xffffe
    8000816c:	6d430067          	jr	1748(t1) # 8000683c <plic_complete>
    80008170:	fffff097          	auipc	ra,0xfffff
    80008174:	3e0080e7          	jalr	992(ra) # 80007550 <uartintr>
    80008178:	fddff06f          	j	80008154 <console_handler+0x74>
    8000817c:	00001517          	auipc	a0,0x1
    80008180:	5e450513          	addi	a0,a0,1508 # 80009760 <digits+0x78>
    80008184:	fffff097          	auipc	ra,0xfffff
    80008188:	a68080e7          	jalr	-1432(ra) # 80006bec <panic>
	...
