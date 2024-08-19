
obj/minmax_sequence/main.elf:     file format elf32-loongarch
obj/minmax_sequence/main.elf


Disassembly of section .init:

1c000000 <_start>:
_start():
1c000000:	157f5f19 	lu12i.w	$r25,-263432(0xbfaf8)
1c000004:	03bff339 	ori	$r25,$r25,0xffc
1c000008:	29800320 	st.w	$r0,$r25,0
1c00000c:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c000010:	03bcc339 	ori	$r25,$r25,0xf30
1c000014:	29800320 	st.w	$r0,$r25,0
1c000018:	157f5f19 	lu12i.w	$r25,-263432(0xbfaf8)
1c00001c:	03bff339 	ori	$r25,$r25,0xffc
1c000020:	29800320 	st.w	$r0,$r25,0
1c000024:	157f5f19 	lu12i.w	$r25,-263432(0xbfaf8)
1c000028:	03bff339 	ori	$r25,$r25,0xffc
1c00002c:	29800320 	st.w	$r0,$r25,0
1c000030:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c000034:	03bd0339 	ori	$r25,$r25,0xf40
1c000038:	29800320 	st.w	$r0,$r25,0
1c00003c:	157f5f19 	lu12i.w	$r25,-263432(0xbfaf8)
1c000040:	03bff339 	ori	$r25,$r25,0xffc
1c000044:	29800320 	st.w	$r0,$r25,0
1c000048:	0380040c 	ori	$r12,$r0,0x1
1c00004c:	0404042c 	csrwr	$r12,0x101
1c000050:	1c0001ac 	pcaddu12i	$r12,13(0xd)
1c000054:	029ec18c 	addi.w	$r12,$r12,1968(0x7b0)
1c000058:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00005c:	02bea1ad 	addi.w	$r13,$r13,-88(0xfa8)
1c000060:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000064:	029591ce 	addi.w	$r14,$r14,1380(0x564)
1c000068:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000080 <_start+0x80>
1c00006c:	2880018f 	ld.w	$r15,$r12,0
1c000070:	298001af 	st.w	$r15,$r13,0
1c000074:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000078:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00007c:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c00006c <_start+0x6c>
1c000080:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000084:	0295118c 	addi.w	$r12,$r12,1348(0x544)
1c000088:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00008c:	029561ad 	addi.w	$r13,$r13,1368(0x558)
1c000090:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0000a0 <_start+0xa0>
1c000094:	29800180 	st.w	$r0,$r12,0
1c000098:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00009c:	6bfff98d 	bltu	$r12,$r13,-8(0x3fff8) # 1c000094 <_start+0x94>
1c0000a0:	04060020 	csrwr	$r0,0x180
1c0000a4:	04060420 	csrwr	$r0,0x181
1c0000a8:	0380640c 	ori	$r12,$r0,0x19
1c0000ac:	0406002c 	csrwr	$r12,0x180
1c0000b0:	1540000c 	lu12i.w	$r12,-393216(0xa0000)
1c0000b4:	0380258c 	ori	$r12,$r12,0x9
1c0000b8:	0406042c 	csrwr	$r12,0x181
1c0000bc:	0380400c 	ori	$r12,$r0,0x10
1c0000c0:	0380600d 	ori	$r13,$r0,0x18
1c0000c4:	040001ac 	csrxchg	$r12,$r13,0x0
1c0000c8:	1438000c 	lu12i.w	$r12,114688(0x1c000)
1c0000cc:	038e018c 	ori	$r12,$r12,0x380
1c0000d0:	0400302c 	csrwr	$r12,0xc
1c0000d4:	1c002003 	pcaddu12i	$r3,256(0x100)
1c0000d8:	02bca063 	addi.w	$r3,$r3,-216(0xf28)
1c0000dc:	5002b000 	b	688(0x2b0) # 1c00038c <run_test>
	...

1c000100 <test_finish>:
test_finish():
1c000100:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000104:	157f5fee 	lu12i.w	$r14,-263425(0xbfaff)
1c000108:	03bc41ce 	ori	$r14,$r14,0xf10
1c00010c:	298001c0 	st.w	$r0,$r14,0
1c000110:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c000114:	0381818c 	ori	$r12,$r12,0x60
1c000118:	2880018c 	ld.w	$r12,$r12,0
1c00011c:	0342018c 	andi	$r12,$r12,0x80
1c000120:	5800180c 	beq	$r0,$r12,24(0x18) # 1c000138 <test_finish+0x38>
1c000124:	03400000 	andi	$r0,$r0,0x0
1c000128:	157f5f0c 	lu12i.w	$r12,-263432(0xbfaf8)
1c00012c:	2880018d 	ld.w	$r13,$r12,0
1c000130:	50001400 	b	20(0x14) # 1c000144 <test_finish+0x44>
1c000134:	03400000 	andi	$r0,$r0,0x0
1c000138:	157f5f0c 	lu12i.w	$r12,-263432(0xbfaf8)
1c00013c:	0380418c 	ori	$r12,$r12,0x10
1c000140:	2880018d 	ld.w	$r13,$r12,0
1c000144:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c000148:	0381418c 	ori	$r12,$r12,0x50
1c00014c:	2980018d 	st.w	$r13,$r12,0
1c000150:	53ffc3ff 	b	-64(0xfffffc0) # 1c000110 <test_finish+0x10>
1c000154:	03400000 	andi	$r0,$r0,0x0
1c000158:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c00015c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000160:	0015018e 	move	$r14,$r12
1c000164:	00104a2f 	add.w	$r15,$r17,$r18
1c000168:	28800190 	ld.w	$r16,$r12,0
	...
1c000380:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000384:	53ffffff 	b	-4(0xffffffc) # 1c000380 <test_finish+0x280>
1c000388:	03400000 	andi	$r0,$r0,0x0

1c00038c <run_test>:
run_test():
1c00038c:	54cc1400 	bl	52244(0xcc14) # 1c00cfa0 <shell20>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <check_min_position>:
check_min_position():
1c0003a0:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c0003a4:	0288a18c 	addi.w	$r12,$r12,552(0x228)
1c0003a8:	28800187 	ld.w	$r7,$r12,0
1c0003ac:	5c0008e4 	bne	$r7,$r4,8(0x8) # 1c0003b4 <check_min_position+0x14>
1c0003b0:	4c000020 	jirl	$r0,$r1,0
1c0003b4:	00150086 	move	$r6,$r4
1c0003b8:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0003bc:	02b12084 	addi.w	$r4,$r4,-952(0xc48)
1c0003c0:	50ce7000 	b	52848(0xce70) # 1c00d230 <printf>
1c0003c4:	03400000 	andi	$r0,$r0,0x0
1c0003c8:	03400000 	andi	$r0,$r0,0x0
1c0003cc:	03400000 	andi	$r0,$r0,0x0

1c0003d0 <check_max_position>:
check_max_position():
1c0003d0:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c0003d4:	0287d18c 	addi.w	$r12,$r12,500(0x1f4)
1c0003d8:	28800187 	ld.w	$r7,$r12,0
1c0003dc:	5c0008e4 	bne	$r7,$r4,8(0x8) # 1c0003e4 <check_max_position+0x14>
1c0003e0:	4c000020 	jirl	$r0,$r1,0
1c0003e4:	00150086 	move	$r6,$r4
1c0003e8:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0003ec:	02b06084 	addi.w	$r4,$r4,-1000(0xc18)
1c0003f0:	50ce4000 	b	52800(0xce40) # 1c00d230 <printf>
1c0003f4:	03400000 	andi	$r0,$r0,0x0
1c0003f8:	03400000 	andi	$r0,$r0,0x0
1c0003fc:	03400000 	andi	$r0,$r0,0x0

1c000400 <find_minimum_8>:
find_minimum_8():
1c000400:	0015008c 	move	$r12,$r4
1c000404:	28000084 	ld.b	$r4,$r4,0
1c000408:	58011985 	beq	$r12,$r5,280(0x118) # 1c000520 <find_minimum_8+0x120>
1c00040c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000410:	580110ac 	beq	$r5,$r12,272(0x110) # 1c000520 <find_minimum_8+0x120>
1c000414:	001130ad 	sub.w	$r13,$r5,$r12
1c000418:	03401da6 	andi	$r6,$r13,0x7
1c00041c:	5800b4c0 	beq	$r6,$r0,180(0xb4) # 1c0004d0 <find_minimum_8+0xd0>
1c000420:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000424:	580098ce 	beq	$r6,$r14,152(0x98) # 1c0004bc <find_minimum_8+0xbc>
1c000428:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00042c:	58007cc7 	beq	$r6,$r7,124(0x7c) # 1c0004a8 <find_minimum_8+0xa8>
1c000430:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c000434:	580060c8 	beq	$r6,$r8,96(0x60) # 1c000494 <find_minimum_8+0x94>
1c000438:	02801009 	addi.w	$r9,$r0,4(0x4)
1c00043c:	580048c9 	beq	$r6,$r9,72(0x48) # 1c000484 <find_minimum_8+0x84>
1c000440:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c000444:	580030ca 	beq	$r6,$r10,48(0x30) # 1c000474 <find_minimum_8+0x74>
1c000448:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c00044c:	580014cb 	beq	$r6,$r11,20(0x14) # 1c000460 <find_minimum_8+0x60>
1c000450:	2800018f 	ld.b	$r15,$r12,0
1c000454:	6001808f 	blt	$r4,$r15,384(0x180) # 1c0005d4 <find_minimum_8+0x1d4>
1c000458:	001501e4 	move	$r4,$r15
1c00045c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000460:	28000190 	ld.b	$r16,$r12,0
1c000464:	64000890 	bge	$r4,$r16,8(0x8) # 1c00046c <find_minimum_8+0x6c>
1c000468:	00150090 	move	$r16,$r4
1c00046c:	00150204 	move	$r4,$r16
1c000470:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000474:	28000191 	ld.b	$r17,$r12,0
1c000478:	60015091 	blt	$r4,$r17,336(0x150) # 1c0005c8 <find_minimum_8+0x1c8>
1c00047c:	00150224 	move	$r4,$r17
1c000480:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000484:	28000192 	ld.b	$r18,$r12,0
1c000488:	60013892 	blt	$r4,$r18,312(0x138) # 1c0005c0 <find_minimum_8+0x1c0>
1c00048c:	00150244 	move	$r4,$r18
1c000490:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000494:	28000193 	ld.b	$r19,$r12,0
1c000498:	64000893 	bge	$r4,$r19,8(0x8) # 1c0004a0 <find_minimum_8+0xa0>
1c00049c:	00150093 	move	$r19,$r4
1c0004a0:	00150264 	move	$r4,$r19
1c0004a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0004a8:	28000194 	ld.b	$r20,$r12,0
1c0004ac:	64000894 	bge	$r4,$r20,8(0x8) # 1c0004b4 <find_minimum_8+0xb4>
1c0004b0:	00150094 	move	$r20,$r4
1c0004b4:	00150284 	move	$r4,$r20
1c0004b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0004bc:	2800018d 	ld.b	$r13,$r12,0
1c0004c0:	6000e88d 	blt	$r4,$r13,232(0xe8) # 1c0005a8 <find_minimum_8+0x1a8>
1c0004c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0004c8:	001501a4 	move	$r4,$r13
1c0004cc:	580104ac 	beq	$r5,$r12,260(0x104) # 1c0005d0 <find_minimum_8+0x1d0>
1c0004d0:	28000186 	ld.b	$r6,$r12,0
1c0004d4:	6000c086 	blt	$r4,$r6,192(0xc0) # 1c000594 <find_minimum_8+0x194>
1c0004d8:	28000584 	ld.b	$r4,$r12,1(0x1)
1c0004dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0004e0:	6000a4c4 	blt	$r6,$r4,164(0xa4) # 1c000584 <find_minimum_8+0x184>
1c0004e4:	28000587 	ld.b	$r7,$r12,1(0x1)
1c0004e8:	60008c87 	blt	$r4,$r7,140(0x8c) # 1c000574 <find_minimum_8+0x174>
1c0004ec:	2800098e 	ld.b	$r14,$r12,2(0x2)
1c0004f0:	600074ee 	blt	$r7,$r14,116(0x74) # 1c000564 <find_minimum_8+0x164>
1c0004f4:	28000d88 	ld.b	$r8,$r12,3(0x3)
1c0004f8:	60005dc8 	blt	$r14,$r8,92(0x5c) # 1c000554 <find_minimum_8+0x154>
1c0004fc:	28001189 	ld.b	$r9,$r12,4(0x4)
1c000500:	60004509 	blt	$r8,$r9,68(0x44) # 1c000544 <find_minimum_8+0x144>
1c000504:	2800158e 	ld.b	$r14,$r12,5(0x5)
1c000508:	60002d2e 	blt	$r9,$r14,44(0x2c) # 1c000534 <find_minimum_8+0x134>
1c00050c:	28001984 	ld.b	$r4,$r12,6(0x6)
1c000510:	600015c4 	blt	$r14,$r4,20(0x14) # 1c000524 <find_minimum_8+0x124>
1c000514:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c000518:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c0004d0 <find_minimum_8+0xd0>
1c00051c:	4c000020 	jirl	$r0,$r1,0
1c000520:	4c000020 	jirl	$r0,$r1,0
1c000524:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c000528:	001501c4 	move	$r4,$r14
1c00052c:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c0004d0 <find_minimum_8+0xd0>
1c000530:	53ffefff 	b	-20(0xfffffec) # 1c00051c <find_minimum_8+0x11c>
1c000534:	28001984 	ld.b	$r4,$r12,6(0x6)
1c000538:	0015012e 	move	$r14,$r9
1c00053c:	67ffd9c4 	bge	$r14,$r4,-40(0x3ffd8) # 1c000514 <find_minimum_8+0x114>
1c000540:	53ffe7ff 	b	-28(0xfffffe4) # 1c000524 <find_minimum_8+0x124>
1c000544:	2800158e 	ld.b	$r14,$r12,5(0x5)
1c000548:	00150109 	move	$r9,$r8
1c00054c:	67ffc12e 	bge	$r9,$r14,-64(0x3ffc0) # 1c00050c <find_minimum_8+0x10c>
1c000550:	53ffe7ff 	b	-28(0xfffffe4) # 1c000534 <find_minimum_8+0x134>
1c000554:	28001189 	ld.b	$r9,$r12,4(0x4)
1c000558:	001501c8 	move	$r8,$r14
1c00055c:	67ffa909 	bge	$r8,$r9,-88(0x3ffa8) # 1c000504 <find_minimum_8+0x104>
1c000560:	53ffe7ff 	b	-28(0xfffffe4) # 1c000544 <find_minimum_8+0x144>
1c000564:	28000d88 	ld.b	$r8,$r12,3(0x3)
1c000568:	001500ee 	move	$r14,$r7
1c00056c:	67ff91c8 	bge	$r14,$r8,-112(0x3ff90) # 1c0004fc <find_minimum_8+0xfc>
1c000570:	53ffe7ff 	b	-28(0xfffffe4) # 1c000554 <find_minimum_8+0x154>
1c000574:	2800098e 	ld.b	$r14,$r12,2(0x2)
1c000578:	00150087 	move	$r7,$r4
1c00057c:	67ff78ee 	bge	$r7,$r14,-136(0x3ff78) # 1c0004f4 <find_minimum_8+0xf4>
1c000580:	53ffe7ff 	b	-28(0xfffffe4) # 1c000564 <find_minimum_8+0x164>
1c000584:	28000587 	ld.b	$r7,$r12,1(0x1)
1c000588:	001500c4 	move	$r4,$r6
1c00058c:	67ff6087 	bge	$r4,$r7,-160(0x3ff60) # 1c0004ec <find_minimum_8+0xec>
1c000590:	53ffe7ff 	b	-28(0xfffffe4) # 1c000574 <find_minimum_8+0x174>
1c000594:	00150086 	move	$r6,$r4
1c000598:	28000584 	ld.b	$r4,$r12,1(0x1)
1c00059c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005a0:	67ff44c4 	bge	$r6,$r4,-188(0x3ff44) # 1c0004e4 <find_minimum_8+0xe4>
1c0005a4:	53ffe3ff 	b	-32(0xfffffe0) # 1c000584 <find_minimum_8+0x184>
1c0005a8:	0015008d 	move	$r13,$r4
1c0005ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005b0:	001501a4 	move	$r4,$r13
1c0005b4:	5fff1cac 	bne	$r5,$r12,-228(0x3ff1c) # 1c0004d0 <find_minimum_8+0xd0>
1c0005b8:	50001800 	b	24(0x18) # 1c0005d0 <find_minimum_8+0x1d0>
1c0005bc:	03400000 	andi	$r0,$r0,0x0
1c0005c0:	00150092 	move	$r18,$r4
1c0005c4:	53fecbff 	b	-312(0xffffec8) # 1c00048c <find_minimum_8+0x8c>
1c0005c8:	00150091 	move	$r17,$r4
1c0005cc:	53feb3ff 	b	-336(0xffffeb0) # 1c00047c <find_minimum_8+0x7c>
1c0005d0:	4c000020 	jirl	$r0,$r1,0
1c0005d4:	0015008f 	move	$r15,$r4
1c0005d8:	53fe83ff 	b	-384(0xffffe80) # 1c000458 <find_minimum_8+0x58>
1c0005dc:	03400000 	andi	$r0,$r0,0x0

1c0005e0 <find_minimum_u8>:
find_minimum_u8():
1c0005e0:	0015008c 	move	$r12,$r4
1c0005e4:	2a000084 	ld.bu	$r4,$r4,0
1c0005e8:	58011985 	beq	$r12,$r5,280(0x118) # 1c000700 <find_minimum_u8+0x120>
1c0005ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005f0:	580110ac 	beq	$r5,$r12,272(0x110) # 1c000700 <find_minimum_u8+0x120>
1c0005f4:	001130ad 	sub.w	$r13,$r5,$r12
1c0005f8:	03401da6 	andi	$r6,$r13,0x7
1c0005fc:	5800b4c0 	beq	$r6,$r0,180(0xb4) # 1c0006b0 <find_minimum_u8+0xd0>
1c000600:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000604:	580098ce 	beq	$r6,$r14,152(0x98) # 1c00069c <find_minimum_u8+0xbc>
1c000608:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00060c:	58007cc7 	beq	$r6,$r7,124(0x7c) # 1c000688 <find_minimum_u8+0xa8>
1c000610:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c000614:	580060c8 	beq	$r6,$r8,96(0x60) # 1c000674 <find_minimum_u8+0x94>
1c000618:	02801009 	addi.w	$r9,$r0,4(0x4)
1c00061c:	580048c9 	beq	$r6,$r9,72(0x48) # 1c000664 <find_minimum_u8+0x84>
1c000620:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c000624:	580030ca 	beq	$r6,$r10,48(0x30) # 1c000654 <find_minimum_u8+0x74>
1c000628:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c00062c:	580014cb 	beq	$r6,$r11,20(0x14) # 1c000640 <find_minimum_u8+0x60>
1c000630:	2a00018f 	ld.bu	$r15,$r12,0
1c000634:	6801808f 	bltu	$r4,$r15,384(0x180) # 1c0007b4 <find_minimum_u8+0x1d4>
1c000638:	001501e4 	move	$r4,$r15
1c00063c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000640:	2a000190 	ld.bu	$r16,$r12,0
1c000644:	6c000890 	bgeu	$r4,$r16,8(0x8) # 1c00064c <find_minimum_u8+0x6c>
1c000648:	00150090 	move	$r16,$r4
1c00064c:	00150204 	move	$r4,$r16
1c000650:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000654:	2a000191 	ld.bu	$r17,$r12,0
1c000658:	68015091 	bltu	$r4,$r17,336(0x150) # 1c0007a8 <find_minimum_u8+0x1c8>
1c00065c:	00150224 	move	$r4,$r17
1c000660:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000664:	2a000192 	ld.bu	$r18,$r12,0
1c000668:	68013892 	bltu	$r4,$r18,312(0x138) # 1c0007a0 <find_minimum_u8+0x1c0>
1c00066c:	00150244 	move	$r4,$r18
1c000670:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000674:	2a000193 	ld.bu	$r19,$r12,0
1c000678:	6c000893 	bgeu	$r4,$r19,8(0x8) # 1c000680 <find_minimum_u8+0xa0>
1c00067c:	00150093 	move	$r19,$r4
1c000680:	00150264 	move	$r4,$r19
1c000684:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000688:	2a000194 	ld.bu	$r20,$r12,0
1c00068c:	6c000894 	bgeu	$r4,$r20,8(0x8) # 1c000694 <find_minimum_u8+0xb4>
1c000690:	00150094 	move	$r20,$r4
1c000694:	00150284 	move	$r4,$r20
1c000698:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00069c:	2a00018d 	ld.bu	$r13,$r12,0
1c0006a0:	6800e88d 	bltu	$r4,$r13,232(0xe8) # 1c000788 <find_minimum_u8+0x1a8>
1c0006a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0006a8:	001501a4 	move	$r4,$r13
1c0006ac:	580104ac 	beq	$r5,$r12,260(0x104) # 1c0007b0 <find_minimum_u8+0x1d0>
1c0006b0:	2a000186 	ld.bu	$r6,$r12,0
1c0006b4:	6800c086 	bltu	$r4,$r6,192(0xc0) # 1c000774 <find_minimum_u8+0x194>
1c0006b8:	2a000584 	ld.bu	$r4,$r12,1(0x1)
1c0006bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0006c0:	6800a4c4 	bltu	$r6,$r4,164(0xa4) # 1c000764 <find_minimum_u8+0x184>
1c0006c4:	2a000587 	ld.bu	$r7,$r12,1(0x1)
1c0006c8:	68008c87 	bltu	$r4,$r7,140(0x8c) # 1c000754 <find_minimum_u8+0x174>
1c0006cc:	2a00098e 	ld.bu	$r14,$r12,2(0x2)
1c0006d0:	680074ee 	bltu	$r7,$r14,116(0x74) # 1c000744 <find_minimum_u8+0x164>
1c0006d4:	2a000d88 	ld.bu	$r8,$r12,3(0x3)
1c0006d8:	68005dc8 	bltu	$r14,$r8,92(0x5c) # 1c000734 <find_minimum_u8+0x154>
1c0006dc:	2a001189 	ld.bu	$r9,$r12,4(0x4)
1c0006e0:	68004509 	bltu	$r8,$r9,68(0x44) # 1c000724 <find_minimum_u8+0x144>
1c0006e4:	2a00158e 	ld.bu	$r14,$r12,5(0x5)
1c0006e8:	68002d2e 	bltu	$r9,$r14,44(0x2c) # 1c000714 <find_minimum_u8+0x134>
1c0006ec:	2a001984 	ld.bu	$r4,$r12,6(0x6)
1c0006f0:	680015c4 	bltu	$r14,$r4,20(0x14) # 1c000704 <find_minimum_u8+0x124>
1c0006f4:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c0006f8:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c0006b0 <find_minimum_u8+0xd0>
1c0006fc:	4c000020 	jirl	$r0,$r1,0
1c000700:	4c000020 	jirl	$r0,$r1,0
1c000704:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c000708:	001501c4 	move	$r4,$r14
1c00070c:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c0006b0 <find_minimum_u8+0xd0>
1c000710:	53ffefff 	b	-20(0xfffffec) # 1c0006fc <find_minimum_u8+0x11c>
1c000714:	2a001984 	ld.bu	$r4,$r12,6(0x6)
1c000718:	0015012e 	move	$r14,$r9
1c00071c:	6fffd9c4 	bgeu	$r14,$r4,-40(0x3ffd8) # 1c0006f4 <find_minimum_u8+0x114>
1c000720:	53ffe7ff 	b	-28(0xfffffe4) # 1c000704 <find_minimum_u8+0x124>
1c000724:	2a00158e 	ld.bu	$r14,$r12,5(0x5)
1c000728:	00150109 	move	$r9,$r8
1c00072c:	6fffc12e 	bgeu	$r9,$r14,-64(0x3ffc0) # 1c0006ec <find_minimum_u8+0x10c>
1c000730:	53ffe7ff 	b	-28(0xfffffe4) # 1c000714 <find_minimum_u8+0x134>
1c000734:	2a001189 	ld.bu	$r9,$r12,4(0x4)
1c000738:	001501c8 	move	$r8,$r14
1c00073c:	6fffa909 	bgeu	$r8,$r9,-88(0x3ffa8) # 1c0006e4 <find_minimum_u8+0x104>
1c000740:	53ffe7ff 	b	-28(0xfffffe4) # 1c000724 <find_minimum_u8+0x144>
1c000744:	2a000d88 	ld.bu	$r8,$r12,3(0x3)
1c000748:	001500ee 	move	$r14,$r7
1c00074c:	6fff91c8 	bgeu	$r14,$r8,-112(0x3ff90) # 1c0006dc <find_minimum_u8+0xfc>
1c000750:	53ffe7ff 	b	-28(0xfffffe4) # 1c000734 <find_minimum_u8+0x154>
1c000754:	2a00098e 	ld.bu	$r14,$r12,2(0x2)
1c000758:	00150087 	move	$r7,$r4
1c00075c:	6fff78ee 	bgeu	$r7,$r14,-136(0x3ff78) # 1c0006d4 <find_minimum_u8+0xf4>
1c000760:	53ffe7ff 	b	-28(0xfffffe4) # 1c000744 <find_minimum_u8+0x164>
1c000764:	2a000587 	ld.bu	$r7,$r12,1(0x1)
1c000768:	001500c4 	move	$r4,$r6
1c00076c:	6fff6087 	bgeu	$r4,$r7,-160(0x3ff60) # 1c0006cc <find_minimum_u8+0xec>
1c000770:	53ffe7ff 	b	-28(0xfffffe4) # 1c000754 <find_minimum_u8+0x174>
1c000774:	00150086 	move	$r6,$r4
1c000778:	2a000584 	ld.bu	$r4,$r12,1(0x1)
1c00077c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000780:	6fff44c4 	bgeu	$r6,$r4,-188(0x3ff44) # 1c0006c4 <find_minimum_u8+0xe4>
1c000784:	53ffe3ff 	b	-32(0xfffffe0) # 1c000764 <find_minimum_u8+0x184>
1c000788:	0015008d 	move	$r13,$r4
1c00078c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000790:	001501a4 	move	$r4,$r13
1c000794:	5fff1cac 	bne	$r5,$r12,-228(0x3ff1c) # 1c0006b0 <find_minimum_u8+0xd0>
1c000798:	50001800 	b	24(0x18) # 1c0007b0 <find_minimum_u8+0x1d0>
1c00079c:	03400000 	andi	$r0,$r0,0x0
1c0007a0:	00150092 	move	$r18,$r4
1c0007a4:	53fecbff 	b	-312(0xffffec8) # 1c00066c <find_minimum_u8+0x8c>
1c0007a8:	00150091 	move	$r17,$r4
1c0007ac:	53feb3ff 	b	-336(0xffffeb0) # 1c00065c <find_minimum_u8+0x7c>
1c0007b0:	4c000020 	jirl	$r0,$r1,0
1c0007b4:	0015008f 	move	$r15,$r4
1c0007b8:	53fe83ff 	b	-384(0xffffe80) # 1c000638 <find_minimum_u8+0x58>
1c0007bc:	03400000 	andi	$r0,$r0,0x0

1c0007c0 <find_minimum_16>:
find_minimum_16():
1c0007c0:	0015008c 	move	$r12,$r4
1c0007c4:	28400084 	ld.h	$r4,$r4,0
1c0007c8:	58012985 	beq	$r12,$r5,296(0x128) # 1c0008f0 <find_minimum_16+0x130>
1c0007cc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0007d0:	580120ac 	beq	$r5,$r12,288(0x120) # 1c0008f0 <find_minimum_16+0x130>
1c0007d4:	001130ad 	sub.w	$r13,$r5,$r12
1c0007d8:	02bff9a6 	addi.w	$r6,$r13,-2(0xffe)
1c0007dc:	004484c7 	srli.w	$r7,$r6,0x1
1c0007e0:	028004e8 	addi.w	$r8,$r7,1(0x1)
1c0007e4:	03401d09 	andi	$r9,$r8,0x7
1c0007e8:	5800b920 	beq	$r9,$r0,184(0xb8) # 1c0008a0 <find_minimum_16+0xe0>
1c0007ec:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0007f0:	5800992e 	beq	$r9,$r14,152(0x98) # 1c000888 <find_minimum_16+0xc8>
1c0007f4:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c0007f8:	58007d2a 	beq	$r9,$r10,124(0x7c) # 1c000874 <find_minimum_16+0xb4>
1c0007fc:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c000800:	5800612b 	beq	$r9,$r11,96(0x60) # 1c000860 <find_minimum_16+0xa0>
1c000804:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c000808:	5800492f 	beq	$r9,$r15,72(0x48) # 1c000850 <find_minimum_16+0x90>
1c00080c:	02801410 	addi.w	$r16,$r0,5(0x5)
1c000810:	58003130 	beq	$r9,$r16,48(0x30) # 1c000840 <find_minimum_16+0x80>
1c000814:	02801811 	addi.w	$r17,$r0,6(0x6)
1c000818:	58001531 	beq	$r9,$r17,20(0x14) # 1c00082c <find_minimum_16+0x6c>
1c00081c:	28400192 	ld.h	$r18,$r12,0
1c000820:	60018492 	blt	$r4,$r18,388(0x184) # 1c0009a4 <find_minimum_16+0x1e4>
1c000824:	00150244 	move	$r4,$r18
1c000828:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00082c:	28400193 	ld.h	$r19,$r12,0
1c000830:	64000893 	bge	$r4,$r19,8(0x8) # 1c000838 <find_minimum_16+0x78>
1c000834:	00150093 	move	$r19,$r4
1c000838:	00150264 	move	$r4,$r19
1c00083c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000840:	28400194 	ld.h	$r20,$r12,0
1c000844:	60015494 	blt	$r4,$r20,340(0x154) # 1c000998 <find_minimum_16+0x1d8>
1c000848:	00150284 	move	$r4,$r20
1c00084c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000850:	2840018d 	ld.h	$r13,$r12,0
1c000854:	60013c8d 	blt	$r4,$r13,316(0x13c) # 1c000990 <find_minimum_16+0x1d0>
1c000858:	001501a4 	move	$r4,$r13
1c00085c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000860:	28400186 	ld.h	$r6,$r12,0
1c000864:	64000886 	bge	$r4,$r6,8(0x8) # 1c00086c <find_minimum_16+0xac>
1c000868:	00150086 	move	$r6,$r4
1c00086c:	001500c4 	move	$r4,$r6
1c000870:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000874:	28400187 	ld.h	$r7,$r12,0
1c000878:	64000887 	bge	$r4,$r7,8(0x8) # 1c000880 <find_minimum_16+0xc0>
1c00087c:	00150087 	move	$r7,$r4
1c000880:	001500e4 	move	$r4,$r7
1c000884:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000888:	28400188 	ld.h	$r8,$r12,0
1c00088c:	6000ec88 	blt	$r4,$r8,236(0xec) # 1c000978 <find_minimum_16+0x1b8>
1c000890:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000894:	00150104 	move	$r4,$r8
1c000898:	580108ac 	beq	$r5,$r12,264(0x108) # 1c0009a0 <find_minimum_16+0x1e0>
1c00089c:	03400000 	andi	$r0,$r0,0x0
1c0008a0:	28400189 	ld.h	$r9,$r12,0
1c0008a4:	6000c089 	blt	$r4,$r9,192(0xc0) # 1c000964 <find_minimum_16+0x1a4>
1c0008a8:	28400984 	ld.h	$r4,$r12,2(0x2)
1c0008ac:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0008b0:	6000a524 	blt	$r9,$r4,164(0xa4) # 1c000954 <find_minimum_16+0x194>
1c0008b4:	2840098a 	ld.h	$r10,$r12,2(0x2)
1c0008b8:	60008c8a 	blt	$r4,$r10,140(0x8c) # 1c000944 <find_minimum_16+0x184>
1c0008bc:	2840118e 	ld.h	$r14,$r12,4(0x4)
1c0008c0:	6000754e 	blt	$r10,$r14,116(0x74) # 1c000934 <find_minimum_16+0x174>
1c0008c4:	2840198b 	ld.h	$r11,$r12,6(0x6)
1c0008c8:	60005dcb 	blt	$r14,$r11,92(0x5c) # 1c000924 <find_minimum_16+0x164>
1c0008cc:	2840218f 	ld.h	$r15,$r12,8(0x8)
1c0008d0:	6000456f 	blt	$r11,$r15,68(0x44) # 1c000914 <find_minimum_16+0x154>
1c0008d4:	2840298e 	ld.h	$r14,$r12,10(0xa)
1c0008d8:	60002dee 	blt	$r15,$r14,44(0x2c) # 1c000904 <find_minimum_16+0x144>
1c0008dc:	28403184 	ld.h	$r4,$r12,12(0xc)
1c0008e0:	600015c4 	blt	$r14,$r4,20(0x14) # 1c0008f4 <find_minimum_16+0x134>
1c0008e4:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c0008e8:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c0008a0 <find_minimum_16+0xe0>
1c0008ec:	4c000020 	jirl	$r0,$r1,0
1c0008f0:	4c000020 	jirl	$r0,$r1,0
1c0008f4:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c0008f8:	001501c4 	move	$r4,$r14
1c0008fc:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c0008a0 <find_minimum_16+0xe0>
1c000900:	53ffefff 	b	-20(0xfffffec) # 1c0008ec <find_minimum_16+0x12c>
1c000904:	28403184 	ld.h	$r4,$r12,12(0xc)
1c000908:	001501ee 	move	$r14,$r15
1c00090c:	67ffd9c4 	bge	$r14,$r4,-40(0x3ffd8) # 1c0008e4 <find_minimum_16+0x124>
1c000910:	53ffe7ff 	b	-28(0xfffffe4) # 1c0008f4 <find_minimum_16+0x134>
1c000914:	2840298e 	ld.h	$r14,$r12,10(0xa)
1c000918:	0015016f 	move	$r15,$r11
1c00091c:	67ffc1ee 	bge	$r15,$r14,-64(0x3ffc0) # 1c0008dc <find_minimum_16+0x11c>
1c000920:	53ffe7ff 	b	-28(0xfffffe4) # 1c000904 <find_minimum_16+0x144>
1c000924:	2840218f 	ld.h	$r15,$r12,8(0x8)
1c000928:	001501cb 	move	$r11,$r14
1c00092c:	67ffa96f 	bge	$r11,$r15,-88(0x3ffa8) # 1c0008d4 <find_minimum_16+0x114>
1c000930:	53ffe7ff 	b	-28(0xfffffe4) # 1c000914 <find_minimum_16+0x154>
1c000934:	2840198b 	ld.h	$r11,$r12,6(0x6)
1c000938:	0015014e 	move	$r14,$r10
1c00093c:	67ff91cb 	bge	$r14,$r11,-112(0x3ff90) # 1c0008cc <find_minimum_16+0x10c>
1c000940:	53ffe7ff 	b	-28(0xfffffe4) # 1c000924 <find_minimum_16+0x164>
1c000944:	2840118e 	ld.h	$r14,$r12,4(0x4)
1c000948:	0015008a 	move	$r10,$r4
1c00094c:	67ff794e 	bge	$r10,$r14,-136(0x3ff78) # 1c0008c4 <find_minimum_16+0x104>
1c000950:	53ffe7ff 	b	-28(0xfffffe4) # 1c000934 <find_minimum_16+0x174>
1c000954:	2840098a 	ld.h	$r10,$r12,2(0x2)
1c000958:	00150124 	move	$r4,$r9
1c00095c:	67ff608a 	bge	$r4,$r10,-160(0x3ff60) # 1c0008bc <find_minimum_16+0xfc>
1c000960:	53ffe7ff 	b	-28(0xfffffe4) # 1c000944 <find_minimum_16+0x184>
1c000964:	00150089 	move	$r9,$r4
1c000968:	28400984 	ld.h	$r4,$r12,2(0x2)
1c00096c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000970:	67ff4524 	bge	$r9,$r4,-188(0x3ff44) # 1c0008b4 <find_minimum_16+0xf4>
1c000974:	53ffe3ff 	b	-32(0xfffffe0) # 1c000954 <find_minimum_16+0x194>
1c000978:	00150088 	move	$r8,$r4
1c00097c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000980:	00150104 	move	$r4,$r8
1c000984:	5fff1cac 	bne	$r5,$r12,-228(0x3ff1c) # 1c0008a0 <find_minimum_16+0xe0>
1c000988:	50001800 	b	24(0x18) # 1c0009a0 <find_minimum_16+0x1e0>
1c00098c:	03400000 	andi	$r0,$r0,0x0
1c000990:	0015008d 	move	$r13,$r4
1c000994:	53fec7ff 	b	-316(0xffffec4) # 1c000858 <find_minimum_16+0x98>
1c000998:	00150094 	move	$r20,$r4
1c00099c:	53feafff 	b	-340(0xffffeac) # 1c000848 <find_minimum_16+0x88>
1c0009a0:	4c000020 	jirl	$r0,$r1,0
1c0009a4:	00150092 	move	$r18,$r4
1c0009a8:	53fe7fff 	b	-388(0xffffe7c) # 1c000824 <find_minimum_16+0x64>
1c0009ac:	03400000 	andi	$r0,$r0,0x0

1c0009b0 <find_minimum_u16>:
find_minimum_u16():
1c0009b0:	0015008c 	move	$r12,$r4
1c0009b4:	2a400084 	ld.hu	$r4,$r4,0
1c0009b8:	58012985 	beq	$r12,$r5,296(0x128) # 1c000ae0 <find_minimum_u16+0x130>
1c0009bc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0009c0:	580120ac 	beq	$r5,$r12,288(0x120) # 1c000ae0 <find_minimum_u16+0x130>
1c0009c4:	001130ad 	sub.w	$r13,$r5,$r12
1c0009c8:	02bff9a6 	addi.w	$r6,$r13,-2(0xffe)
1c0009cc:	004484c7 	srli.w	$r7,$r6,0x1
1c0009d0:	028004e8 	addi.w	$r8,$r7,1(0x1)
1c0009d4:	03401d09 	andi	$r9,$r8,0x7
1c0009d8:	5800b920 	beq	$r9,$r0,184(0xb8) # 1c000a90 <find_minimum_u16+0xe0>
1c0009dc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0009e0:	5800992e 	beq	$r9,$r14,152(0x98) # 1c000a78 <find_minimum_u16+0xc8>
1c0009e4:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c0009e8:	58007d2a 	beq	$r9,$r10,124(0x7c) # 1c000a64 <find_minimum_u16+0xb4>
1c0009ec:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c0009f0:	5800612b 	beq	$r9,$r11,96(0x60) # 1c000a50 <find_minimum_u16+0xa0>
1c0009f4:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c0009f8:	5800492f 	beq	$r9,$r15,72(0x48) # 1c000a40 <find_minimum_u16+0x90>
1c0009fc:	02801410 	addi.w	$r16,$r0,5(0x5)
1c000a00:	58003130 	beq	$r9,$r16,48(0x30) # 1c000a30 <find_minimum_u16+0x80>
1c000a04:	02801811 	addi.w	$r17,$r0,6(0x6)
1c000a08:	58001531 	beq	$r9,$r17,20(0x14) # 1c000a1c <find_minimum_u16+0x6c>
1c000a0c:	2a400192 	ld.hu	$r18,$r12,0
1c000a10:	68018492 	bltu	$r4,$r18,388(0x184) # 1c000b94 <find_minimum_u16+0x1e4>
1c000a14:	00150244 	move	$r4,$r18
1c000a18:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000a1c:	2a400193 	ld.hu	$r19,$r12,0
1c000a20:	6c000893 	bgeu	$r4,$r19,8(0x8) # 1c000a28 <find_minimum_u16+0x78>
1c000a24:	00150093 	move	$r19,$r4
1c000a28:	00150264 	move	$r4,$r19
1c000a2c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000a30:	2a400194 	ld.hu	$r20,$r12,0
1c000a34:	68015494 	bltu	$r4,$r20,340(0x154) # 1c000b88 <find_minimum_u16+0x1d8>
1c000a38:	00150284 	move	$r4,$r20
1c000a3c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000a40:	2a40018d 	ld.hu	$r13,$r12,0
1c000a44:	68013c8d 	bltu	$r4,$r13,316(0x13c) # 1c000b80 <find_minimum_u16+0x1d0>
1c000a48:	001501a4 	move	$r4,$r13
1c000a4c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000a50:	2a400186 	ld.hu	$r6,$r12,0
1c000a54:	6c000886 	bgeu	$r4,$r6,8(0x8) # 1c000a5c <find_minimum_u16+0xac>
1c000a58:	00150086 	move	$r6,$r4
1c000a5c:	001500c4 	move	$r4,$r6
1c000a60:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000a64:	2a400187 	ld.hu	$r7,$r12,0
1c000a68:	6c000887 	bgeu	$r4,$r7,8(0x8) # 1c000a70 <find_minimum_u16+0xc0>
1c000a6c:	00150087 	move	$r7,$r4
1c000a70:	001500e4 	move	$r4,$r7
1c000a74:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000a78:	2a400188 	ld.hu	$r8,$r12,0
1c000a7c:	6800ec88 	bltu	$r4,$r8,236(0xec) # 1c000b68 <find_minimum_u16+0x1b8>
1c000a80:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000a84:	00150104 	move	$r4,$r8
1c000a88:	580108ac 	beq	$r5,$r12,264(0x108) # 1c000b90 <find_minimum_u16+0x1e0>
1c000a8c:	03400000 	andi	$r0,$r0,0x0
1c000a90:	2a400189 	ld.hu	$r9,$r12,0
1c000a94:	6800c089 	bltu	$r4,$r9,192(0xc0) # 1c000b54 <find_minimum_u16+0x1a4>
1c000a98:	2a400984 	ld.hu	$r4,$r12,2(0x2)
1c000a9c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000aa0:	6800a524 	bltu	$r9,$r4,164(0xa4) # 1c000b44 <find_minimum_u16+0x194>
1c000aa4:	2a40098a 	ld.hu	$r10,$r12,2(0x2)
1c000aa8:	68008c8a 	bltu	$r4,$r10,140(0x8c) # 1c000b34 <find_minimum_u16+0x184>
1c000aac:	2a40118e 	ld.hu	$r14,$r12,4(0x4)
1c000ab0:	6800754e 	bltu	$r10,$r14,116(0x74) # 1c000b24 <find_minimum_u16+0x174>
1c000ab4:	2a40198b 	ld.hu	$r11,$r12,6(0x6)
1c000ab8:	68005dcb 	bltu	$r14,$r11,92(0x5c) # 1c000b14 <find_minimum_u16+0x164>
1c000abc:	2a40218f 	ld.hu	$r15,$r12,8(0x8)
1c000ac0:	6800456f 	bltu	$r11,$r15,68(0x44) # 1c000b04 <find_minimum_u16+0x154>
1c000ac4:	2a40298e 	ld.hu	$r14,$r12,10(0xa)
1c000ac8:	68002dee 	bltu	$r15,$r14,44(0x2c) # 1c000af4 <find_minimum_u16+0x144>
1c000acc:	2a403184 	ld.hu	$r4,$r12,12(0xc)
1c000ad0:	680015c4 	bltu	$r14,$r4,20(0x14) # 1c000ae4 <find_minimum_u16+0x134>
1c000ad4:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c000ad8:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c000a90 <find_minimum_u16+0xe0>
1c000adc:	4c000020 	jirl	$r0,$r1,0
1c000ae0:	4c000020 	jirl	$r0,$r1,0
1c000ae4:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c000ae8:	001501c4 	move	$r4,$r14
1c000aec:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c000a90 <find_minimum_u16+0xe0>
1c000af0:	53ffefff 	b	-20(0xfffffec) # 1c000adc <find_minimum_u16+0x12c>
1c000af4:	2a403184 	ld.hu	$r4,$r12,12(0xc)
1c000af8:	001501ee 	move	$r14,$r15
1c000afc:	6fffd9c4 	bgeu	$r14,$r4,-40(0x3ffd8) # 1c000ad4 <find_minimum_u16+0x124>
1c000b00:	53ffe7ff 	b	-28(0xfffffe4) # 1c000ae4 <find_minimum_u16+0x134>
1c000b04:	2a40298e 	ld.hu	$r14,$r12,10(0xa)
1c000b08:	0015016f 	move	$r15,$r11
1c000b0c:	6fffc1ee 	bgeu	$r15,$r14,-64(0x3ffc0) # 1c000acc <find_minimum_u16+0x11c>
1c000b10:	53ffe7ff 	b	-28(0xfffffe4) # 1c000af4 <find_minimum_u16+0x144>
1c000b14:	2a40218f 	ld.hu	$r15,$r12,8(0x8)
1c000b18:	001501cb 	move	$r11,$r14
1c000b1c:	6fffa96f 	bgeu	$r11,$r15,-88(0x3ffa8) # 1c000ac4 <find_minimum_u16+0x114>
1c000b20:	53ffe7ff 	b	-28(0xfffffe4) # 1c000b04 <find_minimum_u16+0x154>
1c000b24:	2a40198b 	ld.hu	$r11,$r12,6(0x6)
1c000b28:	0015014e 	move	$r14,$r10
1c000b2c:	6fff91cb 	bgeu	$r14,$r11,-112(0x3ff90) # 1c000abc <find_minimum_u16+0x10c>
1c000b30:	53ffe7ff 	b	-28(0xfffffe4) # 1c000b14 <find_minimum_u16+0x164>
1c000b34:	2a40118e 	ld.hu	$r14,$r12,4(0x4)
1c000b38:	0015008a 	move	$r10,$r4
1c000b3c:	6fff794e 	bgeu	$r10,$r14,-136(0x3ff78) # 1c000ab4 <find_minimum_u16+0x104>
1c000b40:	53ffe7ff 	b	-28(0xfffffe4) # 1c000b24 <find_minimum_u16+0x174>
1c000b44:	2a40098a 	ld.hu	$r10,$r12,2(0x2)
1c000b48:	00150124 	move	$r4,$r9
1c000b4c:	6fff608a 	bgeu	$r4,$r10,-160(0x3ff60) # 1c000aac <find_minimum_u16+0xfc>
1c000b50:	53ffe7ff 	b	-28(0xfffffe4) # 1c000b34 <find_minimum_u16+0x184>
1c000b54:	00150089 	move	$r9,$r4
1c000b58:	2a400984 	ld.hu	$r4,$r12,2(0x2)
1c000b5c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000b60:	6fff4524 	bgeu	$r9,$r4,-188(0x3ff44) # 1c000aa4 <find_minimum_u16+0xf4>
1c000b64:	53ffe3ff 	b	-32(0xfffffe0) # 1c000b44 <find_minimum_u16+0x194>
1c000b68:	00150088 	move	$r8,$r4
1c000b6c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000b70:	00150104 	move	$r4,$r8
1c000b74:	5fff1cac 	bne	$r5,$r12,-228(0x3ff1c) # 1c000a90 <find_minimum_u16+0xe0>
1c000b78:	50001800 	b	24(0x18) # 1c000b90 <find_minimum_u16+0x1e0>
1c000b7c:	03400000 	andi	$r0,$r0,0x0
1c000b80:	0015008d 	move	$r13,$r4
1c000b84:	53fec7ff 	b	-316(0xffffec4) # 1c000a48 <find_minimum_u16+0x98>
1c000b88:	00150094 	move	$r20,$r4
1c000b8c:	53feafff 	b	-340(0xffffeac) # 1c000a38 <find_minimum_u16+0x88>
1c000b90:	4c000020 	jirl	$r0,$r1,0
1c000b94:	00150092 	move	$r18,$r4
1c000b98:	53fe7fff 	b	-388(0xffffe7c) # 1c000a14 <find_minimum_u16+0x64>
1c000b9c:	03400000 	andi	$r0,$r0,0x0

1c000ba0 <find_minimum_32>:
find_minimum_32():
1c000ba0:	0015008c 	move	$r12,$r4
1c000ba4:	28800084 	ld.w	$r4,$r4,0
1c000ba8:	58010985 	beq	$r12,$r5,264(0x108) # 1c000cb0 <find_minimum_32+0x110>
1c000bac:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000bb0:	580100ac 	beq	$r5,$r12,256(0x100) # 1c000cb0 <find_minimum_32+0x110>
1c000bb4:	001130ad 	sub.w	$r13,$r5,$r12
1c000bb8:	02bff1a6 	addi.w	$r6,$r13,-4(0xffc)
1c000bbc:	004488c7 	srli.w	$r7,$r6,0x2
1c000bc0:	028004e8 	addi.w	$r8,$r7,1(0x1)
1c000bc4:	03401d09 	andi	$r9,$r8,0x7
1c000bc8:	58009920 	beq	$r9,$r0,152(0x98) # 1c000c60 <find_minimum_32+0xc0>
1c000bcc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000bd0:	5800812e 	beq	$r9,$r14,128(0x80) # 1c000c50 <find_minimum_32+0xb0>
1c000bd4:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c000bd8:	5800692a 	beq	$r9,$r10,104(0x68) # 1c000c40 <find_minimum_32+0xa0>
1c000bdc:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c000be0:	5800512b 	beq	$r9,$r11,80(0x50) # 1c000c30 <find_minimum_32+0x90>
1c000be4:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c000be8:	58003d2f 	beq	$r9,$r15,60(0x3c) # 1c000c24 <find_minimum_32+0x84>
1c000bec:	02801410 	addi.w	$r16,$r0,5(0x5)
1c000bf0:	58002930 	beq	$r9,$r16,40(0x28) # 1c000c18 <find_minimum_32+0x78>
1c000bf4:	02801811 	addi.w	$r17,$r0,6(0x6)
1c000bf8:	58001131 	beq	$r9,$r17,16(0x10) # 1c000c08 <find_minimum_32+0x68>
1c000bfc:	28800192 	ld.w	$r18,$r12,0
1c000c00:	60015e44 	blt	$r18,$r4,348(0x15c) # 1c000d5c <find_minimum_32+0x1bc>
1c000c04:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000c08:	28800193 	ld.w	$r19,$r12,0
1c000c0c:	64000a64 	bge	$r19,$r4,8(0x8) # 1c000c14 <find_minimum_32+0x74>
1c000c10:	00150264 	move	$r4,$r19
1c000c14:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000c18:	28800194 	ld.w	$r20,$r12,0
1c000c1c:	60013684 	blt	$r20,$r4,308(0x134) # 1c000d50 <find_minimum_32+0x1b0>
1c000c20:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000c24:	2880018d 	ld.w	$r13,$r12,0
1c000c28:	600121a4 	blt	$r13,$r4,288(0x120) # 1c000d48 <find_minimum_32+0x1a8>
1c000c2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000c30:	28800186 	ld.w	$r6,$r12,0
1c000c34:	640008c4 	bge	$r6,$r4,8(0x8) # 1c000c3c <find_minimum_32+0x9c>
1c000c38:	001500c4 	move	$r4,$r6
1c000c3c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000c40:	28800187 	ld.w	$r7,$r12,0
1c000c44:	640008e4 	bge	$r7,$r4,8(0x8) # 1c000c4c <find_minimum_32+0xac>
1c000c48:	001500e4 	move	$r4,$r7
1c000c4c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000c50:	28800188 	ld.w	$r8,$r12,0
1c000c54:	6000e504 	blt	$r8,$r4,228(0xe4) # 1c000d38 <find_minimum_32+0x198>
1c000c58:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000c5c:	5800fcac 	beq	$r5,$r12,252(0xfc) # 1c000d58 <find_minimum_32+0x1b8>
1c000c60:	28800189 	ld.w	$r9,$r12,0
1c000c64:	6000c124 	blt	$r9,$r4,192(0xc0) # 1c000d24 <find_minimum_32+0x184>
1c000c68:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c000c6c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000c70:	6000a5c4 	blt	$r14,$r4,164(0xa4) # 1c000d14 <find_minimum_32+0x174>
1c000c74:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c000c78:	60008d44 	blt	$r10,$r4,140(0x8c) # 1c000d04 <find_minimum_32+0x164>
1c000c7c:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c000c80:	60007564 	blt	$r11,$r4,116(0x74) # 1c000cf4 <find_minimum_32+0x154>
1c000c84:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c000c88:	60005de4 	blt	$r15,$r4,92(0x5c) # 1c000ce4 <find_minimum_32+0x144>
1c000c8c:	28804190 	ld.w	$r16,$r12,16(0x10)
1c000c90:	60004604 	blt	$r16,$r4,68(0x44) # 1c000cd4 <find_minimum_32+0x134>
1c000c94:	28805191 	ld.w	$r17,$r12,20(0x14)
1c000c98:	60002e24 	blt	$r17,$r4,44(0x2c) # 1c000cc4 <find_minimum_32+0x124>
1c000c9c:	28806192 	ld.w	$r18,$r12,24(0x18)
1c000ca0:	60001644 	blt	$r18,$r4,20(0x14) # 1c000cb4 <find_minimum_32+0x114>
1c000ca4:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c000ca8:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c000c60 <find_minimum_32+0xc0>
1c000cac:	4c000020 	jirl	$r0,$r1,0
1c000cb0:	4c000020 	jirl	$r0,$r1,0
1c000cb4:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c000cb8:	00150244 	move	$r4,$r18
1c000cbc:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c000c60 <find_minimum_32+0xc0>
1c000cc0:	53ffefff 	b	-20(0xfffffec) # 1c000cac <find_minimum_32+0x10c>
1c000cc4:	28806192 	ld.w	$r18,$r12,24(0x18)
1c000cc8:	00150224 	move	$r4,$r17
1c000ccc:	67ffda44 	bge	$r18,$r4,-40(0x3ffd8) # 1c000ca4 <find_minimum_32+0x104>
1c000cd0:	53ffe7ff 	b	-28(0xfffffe4) # 1c000cb4 <find_minimum_32+0x114>
1c000cd4:	28805191 	ld.w	$r17,$r12,20(0x14)
1c000cd8:	00150204 	move	$r4,$r16
1c000cdc:	67ffc224 	bge	$r17,$r4,-64(0x3ffc0) # 1c000c9c <find_minimum_32+0xfc>
1c000ce0:	53ffe7ff 	b	-28(0xfffffe4) # 1c000cc4 <find_minimum_32+0x124>
1c000ce4:	28804190 	ld.w	$r16,$r12,16(0x10)
1c000ce8:	001501e4 	move	$r4,$r15
1c000cec:	67ffaa04 	bge	$r16,$r4,-88(0x3ffa8) # 1c000c94 <find_minimum_32+0xf4>
1c000cf0:	53ffe7ff 	b	-28(0xfffffe4) # 1c000cd4 <find_minimum_32+0x134>
1c000cf4:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c000cf8:	00150164 	move	$r4,$r11
1c000cfc:	67ff91e4 	bge	$r15,$r4,-112(0x3ff90) # 1c000c8c <find_minimum_32+0xec>
1c000d00:	53ffe7ff 	b	-28(0xfffffe4) # 1c000ce4 <find_minimum_32+0x144>
1c000d04:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c000d08:	00150144 	move	$r4,$r10
1c000d0c:	67ff7964 	bge	$r11,$r4,-136(0x3ff78) # 1c000c84 <find_minimum_32+0xe4>
1c000d10:	53ffe7ff 	b	-28(0xfffffe4) # 1c000cf4 <find_minimum_32+0x154>
1c000d14:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c000d18:	001501c4 	move	$r4,$r14
1c000d1c:	67ff6144 	bge	$r10,$r4,-160(0x3ff60) # 1c000c7c <find_minimum_32+0xdc>
1c000d20:	53ffe7ff 	b	-28(0xfffffe4) # 1c000d04 <find_minimum_32+0x164>
1c000d24:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c000d28:	00150124 	move	$r4,$r9
1c000d2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000d30:	67ff45c4 	bge	$r14,$r4,-188(0x3ff44) # 1c000c74 <find_minimum_32+0xd4>
1c000d34:	53ffe3ff 	b	-32(0xfffffe0) # 1c000d14 <find_minimum_32+0x174>
1c000d38:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000d3c:	00150104 	move	$r4,$r8
1c000d40:	5fff20ac 	bne	$r5,$r12,-224(0x3ff20) # 1c000c60 <find_minimum_32+0xc0>
1c000d44:	50001400 	b	20(0x14) # 1c000d58 <find_minimum_32+0x1b8>
1c000d48:	001501a4 	move	$r4,$r13
1c000d4c:	53fee3ff 	b	-288(0xffffee0) # 1c000c2c <find_minimum_32+0x8c>
1c000d50:	00150284 	move	$r4,$r20
1c000d54:	53fecfff 	b	-308(0xffffecc) # 1c000c20 <find_minimum_32+0x80>
1c000d58:	4c000020 	jirl	$r0,$r1,0
1c000d5c:	00150244 	move	$r4,$r18
1c000d60:	53fea7ff 	b	-348(0xffffea4) # 1c000c04 <find_minimum_32+0x64>
1c000d64:	03400000 	andi	$r0,$r0,0x0
1c000d68:	03400000 	andi	$r0,$r0,0x0
1c000d6c:	03400000 	andi	$r0,$r0,0x0

1c000d70 <find_minimum_u32>:
find_minimum_u32():
1c000d70:	0015008c 	move	$r12,$r4
1c000d74:	28800084 	ld.w	$r4,$r4,0
1c000d78:	58010985 	beq	$r12,$r5,264(0x108) # 1c000e80 <find_minimum_u32+0x110>
1c000d7c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000d80:	580100ac 	beq	$r5,$r12,256(0x100) # 1c000e80 <find_minimum_u32+0x110>
1c000d84:	001130ad 	sub.w	$r13,$r5,$r12
1c000d88:	02bff1a6 	addi.w	$r6,$r13,-4(0xffc)
1c000d8c:	004488c7 	srli.w	$r7,$r6,0x2
1c000d90:	028004e8 	addi.w	$r8,$r7,1(0x1)
1c000d94:	03401d09 	andi	$r9,$r8,0x7
1c000d98:	58009920 	beq	$r9,$r0,152(0x98) # 1c000e30 <find_minimum_u32+0xc0>
1c000d9c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000da0:	5800812e 	beq	$r9,$r14,128(0x80) # 1c000e20 <find_minimum_u32+0xb0>
1c000da4:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c000da8:	5800692a 	beq	$r9,$r10,104(0x68) # 1c000e10 <find_minimum_u32+0xa0>
1c000dac:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c000db0:	5800512b 	beq	$r9,$r11,80(0x50) # 1c000e00 <find_minimum_u32+0x90>
1c000db4:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c000db8:	58003d2f 	beq	$r9,$r15,60(0x3c) # 1c000df4 <find_minimum_u32+0x84>
1c000dbc:	02801410 	addi.w	$r16,$r0,5(0x5)
1c000dc0:	58002930 	beq	$r9,$r16,40(0x28) # 1c000de8 <find_minimum_u32+0x78>
1c000dc4:	02801811 	addi.w	$r17,$r0,6(0x6)
1c000dc8:	58001131 	beq	$r9,$r17,16(0x10) # 1c000dd8 <find_minimum_u32+0x68>
1c000dcc:	28800192 	ld.w	$r18,$r12,0
1c000dd0:	68015e44 	bltu	$r18,$r4,348(0x15c) # 1c000f2c <find_minimum_u32+0x1bc>
1c000dd4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000dd8:	28800193 	ld.w	$r19,$r12,0
1c000ddc:	6c000a64 	bgeu	$r19,$r4,8(0x8) # 1c000de4 <find_minimum_u32+0x74>
1c000de0:	00150264 	move	$r4,$r19
1c000de4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000de8:	28800194 	ld.w	$r20,$r12,0
1c000dec:	68013684 	bltu	$r20,$r4,308(0x134) # 1c000f20 <find_minimum_u32+0x1b0>
1c000df0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000df4:	2880018d 	ld.w	$r13,$r12,0
1c000df8:	680121a4 	bltu	$r13,$r4,288(0x120) # 1c000f18 <find_minimum_u32+0x1a8>
1c000dfc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000e00:	28800186 	ld.w	$r6,$r12,0
1c000e04:	6c0008c4 	bgeu	$r6,$r4,8(0x8) # 1c000e0c <find_minimum_u32+0x9c>
1c000e08:	001500c4 	move	$r4,$r6
1c000e0c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000e10:	28800187 	ld.w	$r7,$r12,0
1c000e14:	6c0008e4 	bgeu	$r7,$r4,8(0x8) # 1c000e1c <find_minimum_u32+0xac>
1c000e18:	001500e4 	move	$r4,$r7
1c000e1c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000e20:	28800188 	ld.w	$r8,$r12,0
1c000e24:	6800e504 	bltu	$r8,$r4,228(0xe4) # 1c000f08 <find_minimum_u32+0x198>
1c000e28:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000e2c:	5800fcac 	beq	$r5,$r12,252(0xfc) # 1c000f28 <find_minimum_u32+0x1b8>
1c000e30:	28800189 	ld.w	$r9,$r12,0
1c000e34:	6800c124 	bltu	$r9,$r4,192(0xc0) # 1c000ef4 <find_minimum_u32+0x184>
1c000e38:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c000e3c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000e40:	6800a5c4 	bltu	$r14,$r4,164(0xa4) # 1c000ee4 <find_minimum_u32+0x174>
1c000e44:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c000e48:	68008d44 	bltu	$r10,$r4,140(0x8c) # 1c000ed4 <find_minimum_u32+0x164>
1c000e4c:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c000e50:	68007564 	bltu	$r11,$r4,116(0x74) # 1c000ec4 <find_minimum_u32+0x154>
1c000e54:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c000e58:	68005de4 	bltu	$r15,$r4,92(0x5c) # 1c000eb4 <find_minimum_u32+0x144>
1c000e5c:	28804190 	ld.w	$r16,$r12,16(0x10)
1c000e60:	68004604 	bltu	$r16,$r4,68(0x44) # 1c000ea4 <find_minimum_u32+0x134>
1c000e64:	28805191 	ld.w	$r17,$r12,20(0x14)
1c000e68:	68002e24 	bltu	$r17,$r4,44(0x2c) # 1c000e94 <find_minimum_u32+0x124>
1c000e6c:	28806192 	ld.w	$r18,$r12,24(0x18)
1c000e70:	68001644 	bltu	$r18,$r4,20(0x14) # 1c000e84 <find_minimum_u32+0x114>
1c000e74:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c000e78:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c000e30 <find_minimum_u32+0xc0>
1c000e7c:	4c000020 	jirl	$r0,$r1,0
1c000e80:	4c000020 	jirl	$r0,$r1,0
1c000e84:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c000e88:	00150244 	move	$r4,$r18
1c000e8c:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c000e30 <find_minimum_u32+0xc0>
1c000e90:	53ffefff 	b	-20(0xfffffec) # 1c000e7c <find_minimum_u32+0x10c>
1c000e94:	28806192 	ld.w	$r18,$r12,24(0x18)
1c000e98:	00150224 	move	$r4,$r17
1c000e9c:	6fffda44 	bgeu	$r18,$r4,-40(0x3ffd8) # 1c000e74 <find_minimum_u32+0x104>
1c000ea0:	53ffe7ff 	b	-28(0xfffffe4) # 1c000e84 <find_minimum_u32+0x114>
1c000ea4:	28805191 	ld.w	$r17,$r12,20(0x14)
1c000ea8:	00150204 	move	$r4,$r16
1c000eac:	6fffc224 	bgeu	$r17,$r4,-64(0x3ffc0) # 1c000e6c <find_minimum_u32+0xfc>
1c000eb0:	53ffe7ff 	b	-28(0xfffffe4) # 1c000e94 <find_minimum_u32+0x124>
1c000eb4:	28804190 	ld.w	$r16,$r12,16(0x10)
1c000eb8:	001501e4 	move	$r4,$r15
1c000ebc:	6fffaa04 	bgeu	$r16,$r4,-88(0x3ffa8) # 1c000e64 <find_minimum_u32+0xf4>
1c000ec0:	53ffe7ff 	b	-28(0xfffffe4) # 1c000ea4 <find_minimum_u32+0x134>
1c000ec4:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c000ec8:	00150164 	move	$r4,$r11
1c000ecc:	6fff91e4 	bgeu	$r15,$r4,-112(0x3ff90) # 1c000e5c <find_minimum_u32+0xec>
1c000ed0:	53ffe7ff 	b	-28(0xfffffe4) # 1c000eb4 <find_minimum_u32+0x144>
1c000ed4:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c000ed8:	00150144 	move	$r4,$r10
1c000edc:	6fff7964 	bgeu	$r11,$r4,-136(0x3ff78) # 1c000e54 <find_minimum_u32+0xe4>
1c000ee0:	53ffe7ff 	b	-28(0xfffffe4) # 1c000ec4 <find_minimum_u32+0x154>
1c000ee4:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c000ee8:	001501c4 	move	$r4,$r14
1c000eec:	6fff6144 	bgeu	$r10,$r4,-160(0x3ff60) # 1c000e4c <find_minimum_u32+0xdc>
1c000ef0:	53ffe7ff 	b	-28(0xfffffe4) # 1c000ed4 <find_minimum_u32+0x164>
1c000ef4:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c000ef8:	00150124 	move	$r4,$r9
1c000efc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000f00:	6fff45c4 	bgeu	$r14,$r4,-188(0x3ff44) # 1c000e44 <find_minimum_u32+0xd4>
1c000f04:	53ffe3ff 	b	-32(0xfffffe0) # 1c000ee4 <find_minimum_u32+0x174>
1c000f08:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000f0c:	00150104 	move	$r4,$r8
1c000f10:	5fff20ac 	bne	$r5,$r12,-224(0x3ff20) # 1c000e30 <find_minimum_u32+0xc0>
1c000f14:	50001400 	b	20(0x14) # 1c000f28 <find_minimum_u32+0x1b8>
1c000f18:	001501a4 	move	$r4,$r13
1c000f1c:	53fee3ff 	b	-288(0xffffee0) # 1c000dfc <find_minimum_u32+0x8c>
1c000f20:	00150284 	move	$r4,$r20
1c000f24:	53fecfff 	b	-308(0xffffecc) # 1c000df0 <find_minimum_u32+0x80>
1c000f28:	4c000020 	jirl	$r0,$r1,0
1c000f2c:	00150244 	move	$r4,$r18
1c000f30:	53fea7ff 	b	-348(0xffffea4) # 1c000dd4 <find_minimum_u32+0x64>
1c000f34:	03400000 	andi	$r0,$r0,0x0
1c000f38:	03400000 	andi	$r0,$r0,0x0
1c000f3c:	03400000 	andi	$r0,$r0,0x0

1c000f40 <find_maximum_8>:
find_maximum_8():
1c000f40:	0015008c 	move	$r12,$r4
1c000f44:	28000084 	ld.b	$r4,$r4,0
1c000f48:	58011985 	beq	$r12,$r5,280(0x118) # 1c001060 <find_maximum_8+0x120>
1c000f4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000f50:	580110ac 	beq	$r5,$r12,272(0x110) # 1c001060 <find_maximum_8+0x120>
1c000f54:	001130ad 	sub.w	$r13,$r5,$r12
1c000f58:	03401da6 	andi	$r6,$r13,0x7
1c000f5c:	5800b4c0 	beq	$r6,$r0,180(0xb4) # 1c001010 <find_maximum_8+0xd0>
1c000f60:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000f64:	580098ce 	beq	$r6,$r14,152(0x98) # 1c000ffc <find_maximum_8+0xbc>
1c000f68:	02800807 	addi.w	$r7,$r0,2(0x2)
1c000f6c:	58007cc7 	beq	$r6,$r7,124(0x7c) # 1c000fe8 <find_maximum_8+0xa8>
1c000f70:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c000f74:	580060c8 	beq	$r6,$r8,96(0x60) # 1c000fd4 <find_maximum_8+0x94>
1c000f78:	02801009 	addi.w	$r9,$r0,4(0x4)
1c000f7c:	580048c9 	beq	$r6,$r9,72(0x48) # 1c000fc4 <find_maximum_8+0x84>
1c000f80:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c000f84:	580030ca 	beq	$r6,$r10,48(0x30) # 1c000fb4 <find_maximum_8+0x74>
1c000f88:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c000f8c:	580014cb 	beq	$r6,$r11,20(0x14) # 1c000fa0 <find_maximum_8+0x60>
1c000f90:	2800018f 	ld.b	$r15,$r12,0
1c000f94:	600181e4 	blt	$r15,$r4,384(0x180) # 1c001114 <find_maximum_8+0x1d4>
1c000f98:	001501e4 	move	$r4,$r15
1c000f9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000fa0:	28000190 	ld.b	$r16,$r12,0
1c000fa4:	64000a04 	bge	$r16,$r4,8(0x8) # 1c000fac <find_maximum_8+0x6c>
1c000fa8:	00150090 	move	$r16,$r4
1c000fac:	00150204 	move	$r4,$r16
1c000fb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000fb4:	28000191 	ld.b	$r17,$r12,0
1c000fb8:	60015224 	blt	$r17,$r4,336(0x150) # 1c001108 <find_maximum_8+0x1c8>
1c000fbc:	00150224 	move	$r4,$r17
1c000fc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000fc4:	28000192 	ld.b	$r18,$r12,0
1c000fc8:	60013a44 	blt	$r18,$r4,312(0x138) # 1c001100 <find_maximum_8+0x1c0>
1c000fcc:	00150244 	move	$r4,$r18
1c000fd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000fd4:	28000193 	ld.b	$r19,$r12,0
1c000fd8:	64000a64 	bge	$r19,$r4,8(0x8) # 1c000fe0 <find_maximum_8+0xa0>
1c000fdc:	00150093 	move	$r19,$r4
1c000fe0:	00150264 	move	$r4,$r19
1c000fe4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000fe8:	28000194 	ld.b	$r20,$r12,0
1c000fec:	64000a84 	bge	$r20,$r4,8(0x8) # 1c000ff4 <find_maximum_8+0xb4>
1c000ff0:	00150094 	move	$r20,$r4
1c000ff4:	00150284 	move	$r4,$r20
1c000ff8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000ffc:	2800018d 	ld.b	$r13,$r12,0
1c001000:	6000e9a4 	blt	$r13,$r4,232(0xe8) # 1c0010e8 <find_maximum_8+0x1a8>
1c001004:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001008:	001501a4 	move	$r4,$r13
1c00100c:	580104ac 	beq	$r5,$r12,260(0x104) # 1c001110 <find_maximum_8+0x1d0>
1c001010:	28000186 	ld.b	$r6,$r12,0
1c001014:	6000c0c4 	blt	$r6,$r4,192(0xc0) # 1c0010d4 <find_maximum_8+0x194>
1c001018:	28000584 	ld.b	$r4,$r12,1(0x1)
1c00101c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001020:	6000a486 	blt	$r4,$r6,164(0xa4) # 1c0010c4 <find_maximum_8+0x184>
1c001024:	28000587 	ld.b	$r7,$r12,1(0x1)
1c001028:	60008ce4 	blt	$r7,$r4,140(0x8c) # 1c0010b4 <find_maximum_8+0x174>
1c00102c:	2800098e 	ld.b	$r14,$r12,2(0x2)
1c001030:	600075c7 	blt	$r14,$r7,116(0x74) # 1c0010a4 <find_maximum_8+0x164>
1c001034:	28000d88 	ld.b	$r8,$r12,3(0x3)
1c001038:	60005d0e 	blt	$r8,$r14,92(0x5c) # 1c001094 <find_maximum_8+0x154>
1c00103c:	28001189 	ld.b	$r9,$r12,4(0x4)
1c001040:	60004528 	blt	$r9,$r8,68(0x44) # 1c001084 <find_maximum_8+0x144>
1c001044:	2800158e 	ld.b	$r14,$r12,5(0x5)
1c001048:	60002dc9 	blt	$r14,$r9,44(0x2c) # 1c001074 <find_maximum_8+0x134>
1c00104c:	28001984 	ld.b	$r4,$r12,6(0x6)
1c001050:	6000148e 	blt	$r4,$r14,20(0x14) # 1c001064 <find_maximum_8+0x124>
1c001054:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c001058:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c001010 <find_maximum_8+0xd0>
1c00105c:	4c000020 	jirl	$r0,$r1,0
1c001060:	4c000020 	jirl	$r0,$r1,0
1c001064:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c001068:	001501c4 	move	$r4,$r14
1c00106c:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c001010 <find_maximum_8+0xd0>
1c001070:	53ffefff 	b	-20(0xfffffec) # 1c00105c <find_maximum_8+0x11c>
1c001074:	28001984 	ld.b	$r4,$r12,6(0x6)
1c001078:	0015012e 	move	$r14,$r9
1c00107c:	67ffd88e 	bge	$r4,$r14,-40(0x3ffd8) # 1c001054 <find_maximum_8+0x114>
1c001080:	53ffe7ff 	b	-28(0xfffffe4) # 1c001064 <find_maximum_8+0x124>
1c001084:	2800158e 	ld.b	$r14,$r12,5(0x5)
1c001088:	00150109 	move	$r9,$r8
1c00108c:	67ffc1c9 	bge	$r14,$r9,-64(0x3ffc0) # 1c00104c <find_maximum_8+0x10c>
1c001090:	53ffe7ff 	b	-28(0xfffffe4) # 1c001074 <find_maximum_8+0x134>
1c001094:	28001189 	ld.b	$r9,$r12,4(0x4)
1c001098:	001501c8 	move	$r8,$r14
1c00109c:	67ffa928 	bge	$r9,$r8,-88(0x3ffa8) # 1c001044 <find_maximum_8+0x104>
1c0010a0:	53ffe7ff 	b	-28(0xfffffe4) # 1c001084 <find_maximum_8+0x144>
1c0010a4:	28000d88 	ld.b	$r8,$r12,3(0x3)
1c0010a8:	001500ee 	move	$r14,$r7
1c0010ac:	67ff910e 	bge	$r8,$r14,-112(0x3ff90) # 1c00103c <find_maximum_8+0xfc>
1c0010b0:	53ffe7ff 	b	-28(0xfffffe4) # 1c001094 <find_maximum_8+0x154>
1c0010b4:	2800098e 	ld.b	$r14,$r12,2(0x2)
1c0010b8:	00150087 	move	$r7,$r4
1c0010bc:	67ff79c7 	bge	$r14,$r7,-136(0x3ff78) # 1c001034 <find_maximum_8+0xf4>
1c0010c0:	53ffe7ff 	b	-28(0xfffffe4) # 1c0010a4 <find_maximum_8+0x164>
1c0010c4:	28000587 	ld.b	$r7,$r12,1(0x1)
1c0010c8:	001500c4 	move	$r4,$r6
1c0010cc:	67ff60e4 	bge	$r7,$r4,-160(0x3ff60) # 1c00102c <find_maximum_8+0xec>
1c0010d0:	53ffe7ff 	b	-28(0xfffffe4) # 1c0010b4 <find_maximum_8+0x174>
1c0010d4:	00150086 	move	$r6,$r4
1c0010d8:	28000584 	ld.b	$r4,$r12,1(0x1)
1c0010dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0010e0:	67ff4486 	bge	$r4,$r6,-188(0x3ff44) # 1c001024 <find_maximum_8+0xe4>
1c0010e4:	53ffe3ff 	b	-32(0xfffffe0) # 1c0010c4 <find_maximum_8+0x184>
1c0010e8:	0015008d 	move	$r13,$r4
1c0010ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0010f0:	001501a4 	move	$r4,$r13
1c0010f4:	5fff1cac 	bne	$r5,$r12,-228(0x3ff1c) # 1c001010 <find_maximum_8+0xd0>
1c0010f8:	50001800 	b	24(0x18) # 1c001110 <find_maximum_8+0x1d0>
1c0010fc:	03400000 	andi	$r0,$r0,0x0
1c001100:	00150092 	move	$r18,$r4
1c001104:	53fecbff 	b	-312(0xffffec8) # 1c000fcc <find_maximum_8+0x8c>
1c001108:	00150091 	move	$r17,$r4
1c00110c:	53feb3ff 	b	-336(0xffffeb0) # 1c000fbc <find_maximum_8+0x7c>
1c001110:	4c000020 	jirl	$r0,$r1,0
1c001114:	0015008f 	move	$r15,$r4
1c001118:	53fe83ff 	b	-384(0xffffe80) # 1c000f98 <find_maximum_8+0x58>
1c00111c:	03400000 	andi	$r0,$r0,0x0

1c001120 <find_maximum_u8>:
find_maximum_u8():
1c001120:	0015008c 	move	$r12,$r4
1c001124:	2a000084 	ld.bu	$r4,$r4,0
1c001128:	58011985 	beq	$r12,$r5,280(0x118) # 1c001240 <find_maximum_u8+0x120>
1c00112c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001130:	580110ac 	beq	$r5,$r12,272(0x110) # 1c001240 <find_maximum_u8+0x120>
1c001134:	001130ad 	sub.w	$r13,$r5,$r12
1c001138:	03401da6 	andi	$r6,$r13,0x7
1c00113c:	5800b4c0 	beq	$r6,$r0,180(0xb4) # 1c0011f0 <find_maximum_u8+0xd0>
1c001140:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001144:	580098ce 	beq	$r6,$r14,152(0x98) # 1c0011dc <find_maximum_u8+0xbc>
1c001148:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00114c:	58007cc7 	beq	$r6,$r7,124(0x7c) # 1c0011c8 <find_maximum_u8+0xa8>
1c001150:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c001154:	580060c8 	beq	$r6,$r8,96(0x60) # 1c0011b4 <find_maximum_u8+0x94>
1c001158:	02801009 	addi.w	$r9,$r0,4(0x4)
1c00115c:	580048c9 	beq	$r6,$r9,72(0x48) # 1c0011a4 <find_maximum_u8+0x84>
1c001160:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c001164:	580030ca 	beq	$r6,$r10,48(0x30) # 1c001194 <find_maximum_u8+0x74>
1c001168:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c00116c:	580014cb 	beq	$r6,$r11,20(0x14) # 1c001180 <find_maximum_u8+0x60>
1c001170:	2a00018f 	ld.bu	$r15,$r12,0
1c001174:	680181e4 	bltu	$r15,$r4,384(0x180) # 1c0012f4 <find_maximum_u8+0x1d4>
1c001178:	001501e4 	move	$r4,$r15
1c00117c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001180:	2a000190 	ld.bu	$r16,$r12,0
1c001184:	6c000a04 	bgeu	$r16,$r4,8(0x8) # 1c00118c <find_maximum_u8+0x6c>
1c001188:	00150090 	move	$r16,$r4
1c00118c:	00150204 	move	$r4,$r16
1c001190:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001194:	2a000191 	ld.bu	$r17,$r12,0
1c001198:	68015224 	bltu	$r17,$r4,336(0x150) # 1c0012e8 <find_maximum_u8+0x1c8>
1c00119c:	00150224 	move	$r4,$r17
1c0011a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0011a4:	2a000192 	ld.bu	$r18,$r12,0
1c0011a8:	68013a44 	bltu	$r18,$r4,312(0x138) # 1c0012e0 <find_maximum_u8+0x1c0>
1c0011ac:	00150244 	move	$r4,$r18
1c0011b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0011b4:	2a000193 	ld.bu	$r19,$r12,0
1c0011b8:	6c000a64 	bgeu	$r19,$r4,8(0x8) # 1c0011c0 <find_maximum_u8+0xa0>
1c0011bc:	00150093 	move	$r19,$r4
1c0011c0:	00150264 	move	$r4,$r19
1c0011c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0011c8:	2a000194 	ld.bu	$r20,$r12,0
1c0011cc:	6c000a84 	bgeu	$r20,$r4,8(0x8) # 1c0011d4 <find_maximum_u8+0xb4>
1c0011d0:	00150094 	move	$r20,$r4
1c0011d4:	00150284 	move	$r4,$r20
1c0011d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0011dc:	2a00018d 	ld.bu	$r13,$r12,0
1c0011e0:	6800e9a4 	bltu	$r13,$r4,232(0xe8) # 1c0012c8 <find_maximum_u8+0x1a8>
1c0011e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0011e8:	001501a4 	move	$r4,$r13
1c0011ec:	580104ac 	beq	$r5,$r12,260(0x104) # 1c0012f0 <find_maximum_u8+0x1d0>
1c0011f0:	2a000186 	ld.bu	$r6,$r12,0
1c0011f4:	6800c0c4 	bltu	$r6,$r4,192(0xc0) # 1c0012b4 <find_maximum_u8+0x194>
1c0011f8:	2a000584 	ld.bu	$r4,$r12,1(0x1)
1c0011fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001200:	6800a486 	bltu	$r4,$r6,164(0xa4) # 1c0012a4 <find_maximum_u8+0x184>
1c001204:	2a000587 	ld.bu	$r7,$r12,1(0x1)
1c001208:	68008ce4 	bltu	$r7,$r4,140(0x8c) # 1c001294 <find_maximum_u8+0x174>
1c00120c:	2a00098e 	ld.bu	$r14,$r12,2(0x2)
1c001210:	680075c7 	bltu	$r14,$r7,116(0x74) # 1c001284 <find_maximum_u8+0x164>
1c001214:	2a000d88 	ld.bu	$r8,$r12,3(0x3)
1c001218:	68005d0e 	bltu	$r8,$r14,92(0x5c) # 1c001274 <find_maximum_u8+0x154>
1c00121c:	2a001189 	ld.bu	$r9,$r12,4(0x4)
1c001220:	68004528 	bltu	$r9,$r8,68(0x44) # 1c001264 <find_maximum_u8+0x144>
1c001224:	2a00158e 	ld.bu	$r14,$r12,5(0x5)
1c001228:	68002dc9 	bltu	$r14,$r9,44(0x2c) # 1c001254 <find_maximum_u8+0x134>
1c00122c:	2a001984 	ld.bu	$r4,$r12,6(0x6)
1c001230:	6800148e 	bltu	$r4,$r14,20(0x14) # 1c001244 <find_maximum_u8+0x124>
1c001234:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c001238:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c0011f0 <find_maximum_u8+0xd0>
1c00123c:	4c000020 	jirl	$r0,$r1,0
1c001240:	4c000020 	jirl	$r0,$r1,0
1c001244:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c001248:	001501c4 	move	$r4,$r14
1c00124c:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c0011f0 <find_maximum_u8+0xd0>
1c001250:	53ffefff 	b	-20(0xfffffec) # 1c00123c <find_maximum_u8+0x11c>
1c001254:	2a001984 	ld.bu	$r4,$r12,6(0x6)
1c001258:	0015012e 	move	$r14,$r9
1c00125c:	6fffd88e 	bgeu	$r4,$r14,-40(0x3ffd8) # 1c001234 <find_maximum_u8+0x114>
1c001260:	53ffe7ff 	b	-28(0xfffffe4) # 1c001244 <find_maximum_u8+0x124>
1c001264:	2a00158e 	ld.bu	$r14,$r12,5(0x5)
1c001268:	00150109 	move	$r9,$r8
1c00126c:	6fffc1c9 	bgeu	$r14,$r9,-64(0x3ffc0) # 1c00122c <find_maximum_u8+0x10c>
1c001270:	53ffe7ff 	b	-28(0xfffffe4) # 1c001254 <find_maximum_u8+0x134>
1c001274:	2a001189 	ld.bu	$r9,$r12,4(0x4)
1c001278:	001501c8 	move	$r8,$r14
1c00127c:	6fffa928 	bgeu	$r9,$r8,-88(0x3ffa8) # 1c001224 <find_maximum_u8+0x104>
1c001280:	53ffe7ff 	b	-28(0xfffffe4) # 1c001264 <find_maximum_u8+0x144>
1c001284:	2a000d88 	ld.bu	$r8,$r12,3(0x3)
1c001288:	001500ee 	move	$r14,$r7
1c00128c:	6fff910e 	bgeu	$r8,$r14,-112(0x3ff90) # 1c00121c <find_maximum_u8+0xfc>
1c001290:	53ffe7ff 	b	-28(0xfffffe4) # 1c001274 <find_maximum_u8+0x154>
1c001294:	2a00098e 	ld.bu	$r14,$r12,2(0x2)
1c001298:	00150087 	move	$r7,$r4
1c00129c:	6fff79c7 	bgeu	$r14,$r7,-136(0x3ff78) # 1c001214 <find_maximum_u8+0xf4>
1c0012a0:	53ffe7ff 	b	-28(0xfffffe4) # 1c001284 <find_maximum_u8+0x164>
1c0012a4:	2a000587 	ld.bu	$r7,$r12,1(0x1)
1c0012a8:	001500c4 	move	$r4,$r6
1c0012ac:	6fff60e4 	bgeu	$r7,$r4,-160(0x3ff60) # 1c00120c <find_maximum_u8+0xec>
1c0012b0:	53ffe7ff 	b	-28(0xfffffe4) # 1c001294 <find_maximum_u8+0x174>
1c0012b4:	00150086 	move	$r6,$r4
1c0012b8:	2a000584 	ld.bu	$r4,$r12,1(0x1)
1c0012bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0012c0:	6fff4486 	bgeu	$r4,$r6,-188(0x3ff44) # 1c001204 <find_maximum_u8+0xe4>
1c0012c4:	53ffe3ff 	b	-32(0xfffffe0) # 1c0012a4 <find_maximum_u8+0x184>
1c0012c8:	0015008d 	move	$r13,$r4
1c0012cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0012d0:	001501a4 	move	$r4,$r13
1c0012d4:	5fff1cac 	bne	$r5,$r12,-228(0x3ff1c) # 1c0011f0 <find_maximum_u8+0xd0>
1c0012d8:	50001800 	b	24(0x18) # 1c0012f0 <find_maximum_u8+0x1d0>
1c0012dc:	03400000 	andi	$r0,$r0,0x0
1c0012e0:	00150092 	move	$r18,$r4
1c0012e4:	53fecbff 	b	-312(0xffffec8) # 1c0011ac <find_maximum_u8+0x8c>
1c0012e8:	00150091 	move	$r17,$r4
1c0012ec:	53feb3ff 	b	-336(0xffffeb0) # 1c00119c <find_maximum_u8+0x7c>
1c0012f0:	4c000020 	jirl	$r0,$r1,0
1c0012f4:	0015008f 	move	$r15,$r4
1c0012f8:	53fe83ff 	b	-384(0xffffe80) # 1c001178 <find_maximum_u8+0x58>
1c0012fc:	03400000 	andi	$r0,$r0,0x0

1c001300 <find_maximum_16>:
find_maximum_16():
1c001300:	0015008c 	move	$r12,$r4
1c001304:	28400084 	ld.h	$r4,$r4,0
1c001308:	58012985 	beq	$r12,$r5,296(0x128) # 1c001430 <find_maximum_16+0x130>
1c00130c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001310:	580120ac 	beq	$r5,$r12,288(0x120) # 1c001430 <find_maximum_16+0x130>
1c001314:	001130ad 	sub.w	$r13,$r5,$r12
1c001318:	02bff9a6 	addi.w	$r6,$r13,-2(0xffe)
1c00131c:	004484c7 	srli.w	$r7,$r6,0x1
1c001320:	028004e8 	addi.w	$r8,$r7,1(0x1)
1c001324:	03401d09 	andi	$r9,$r8,0x7
1c001328:	5800b920 	beq	$r9,$r0,184(0xb8) # 1c0013e0 <find_maximum_16+0xe0>
1c00132c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001330:	5800992e 	beq	$r9,$r14,152(0x98) # 1c0013c8 <find_maximum_16+0xc8>
1c001334:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c001338:	58007d2a 	beq	$r9,$r10,124(0x7c) # 1c0013b4 <find_maximum_16+0xb4>
1c00133c:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c001340:	5800612b 	beq	$r9,$r11,96(0x60) # 1c0013a0 <find_maximum_16+0xa0>
1c001344:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c001348:	5800492f 	beq	$r9,$r15,72(0x48) # 1c001390 <find_maximum_16+0x90>
1c00134c:	02801410 	addi.w	$r16,$r0,5(0x5)
1c001350:	58003130 	beq	$r9,$r16,48(0x30) # 1c001380 <find_maximum_16+0x80>
1c001354:	02801811 	addi.w	$r17,$r0,6(0x6)
1c001358:	58001531 	beq	$r9,$r17,20(0x14) # 1c00136c <find_maximum_16+0x6c>
1c00135c:	28400192 	ld.h	$r18,$r12,0
1c001360:	60018644 	blt	$r18,$r4,388(0x184) # 1c0014e4 <find_maximum_16+0x1e4>
1c001364:	00150244 	move	$r4,$r18
1c001368:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00136c:	28400193 	ld.h	$r19,$r12,0
1c001370:	64000a64 	bge	$r19,$r4,8(0x8) # 1c001378 <find_maximum_16+0x78>
1c001374:	00150093 	move	$r19,$r4
1c001378:	00150264 	move	$r4,$r19
1c00137c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001380:	28400194 	ld.h	$r20,$r12,0
1c001384:	60015684 	blt	$r20,$r4,340(0x154) # 1c0014d8 <find_maximum_16+0x1d8>
1c001388:	00150284 	move	$r4,$r20
1c00138c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001390:	2840018d 	ld.h	$r13,$r12,0
1c001394:	60013da4 	blt	$r13,$r4,316(0x13c) # 1c0014d0 <find_maximum_16+0x1d0>
1c001398:	001501a4 	move	$r4,$r13
1c00139c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0013a0:	28400186 	ld.h	$r6,$r12,0
1c0013a4:	640008c4 	bge	$r6,$r4,8(0x8) # 1c0013ac <find_maximum_16+0xac>
1c0013a8:	00150086 	move	$r6,$r4
1c0013ac:	001500c4 	move	$r4,$r6
1c0013b0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0013b4:	28400187 	ld.h	$r7,$r12,0
1c0013b8:	640008e4 	bge	$r7,$r4,8(0x8) # 1c0013c0 <find_maximum_16+0xc0>
1c0013bc:	00150087 	move	$r7,$r4
1c0013c0:	001500e4 	move	$r4,$r7
1c0013c4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0013c8:	28400188 	ld.h	$r8,$r12,0
1c0013cc:	6000ed04 	blt	$r8,$r4,236(0xec) # 1c0014b8 <find_maximum_16+0x1b8>
1c0013d0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0013d4:	00150104 	move	$r4,$r8
1c0013d8:	580108ac 	beq	$r5,$r12,264(0x108) # 1c0014e0 <find_maximum_16+0x1e0>
1c0013dc:	03400000 	andi	$r0,$r0,0x0
1c0013e0:	28400189 	ld.h	$r9,$r12,0
1c0013e4:	6000c124 	blt	$r9,$r4,192(0xc0) # 1c0014a4 <find_maximum_16+0x1a4>
1c0013e8:	28400984 	ld.h	$r4,$r12,2(0x2)
1c0013ec:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0013f0:	6000a489 	blt	$r4,$r9,164(0xa4) # 1c001494 <find_maximum_16+0x194>
1c0013f4:	2840098a 	ld.h	$r10,$r12,2(0x2)
1c0013f8:	60008d44 	blt	$r10,$r4,140(0x8c) # 1c001484 <find_maximum_16+0x184>
1c0013fc:	2840118e 	ld.h	$r14,$r12,4(0x4)
1c001400:	600075ca 	blt	$r14,$r10,116(0x74) # 1c001474 <find_maximum_16+0x174>
1c001404:	2840198b 	ld.h	$r11,$r12,6(0x6)
1c001408:	60005d6e 	blt	$r11,$r14,92(0x5c) # 1c001464 <find_maximum_16+0x164>
1c00140c:	2840218f 	ld.h	$r15,$r12,8(0x8)
1c001410:	600045eb 	blt	$r15,$r11,68(0x44) # 1c001454 <find_maximum_16+0x154>
1c001414:	2840298e 	ld.h	$r14,$r12,10(0xa)
1c001418:	60002dcf 	blt	$r14,$r15,44(0x2c) # 1c001444 <find_maximum_16+0x144>
1c00141c:	28403184 	ld.h	$r4,$r12,12(0xc)
1c001420:	6000148e 	blt	$r4,$r14,20(0x14) # 1c001434 <find_maximum_16+0x134>
1c001424:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c001428:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c0013e0 <find_maximum_16+0xe0>
1c00142c:	4c000020 	jirl	$r0,$r1,0
1c001430:	4c000020 	jirl	$r0,$r1,0
1c001434:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c001438:	001501c4 	move	$r4,$r14
1c00143c:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c0013e0 <find_maximum_16+0xe0>
1c001440:	53ffefff 	b	-20(0xfffffec) # 1c00142c <find_maximum_16+0x12c>
1c001444:	28403184 	ld.h	$r4,$r12,12(0xc)
1c001448:	001501ee 	move	$r14,$r15
1c00144c:	67ffd88e 	bge	$r4,$r14,-40(0x3ffd8) # 1c001424 <find_maximum_16+0x124>
1c001450:	53ffe7ff 	b	-28(0xfffffe4) # 1c001434 <find_maximum_16+0x134>
1c001454:	2840298e 	ld.h	$r14,$r12,10(0xa)
1c001458:	0015016f 	move	$r15,$r11
1c00145c:	67ffc1cf 	bge	$r14,$r15,-64(0x3ffc0) # 1c00141c <find_maximum_16+0x11c>
1c001460:	53ffe7ff 	b	-28(0xfffffe4) # 1c001444 <find_maximum_16+0x144>
1c001464:	2840218f 	ld.h	$r15,$r12,8(0x8)
1c001468:	001501cb 	move	$r11,$r14
1c00146c:	67ffa9eb 	bge	$r15,$r11,-88(0x3ffa8) # 1c001414 <find_maximum_16+0x114>
1c001470:	53ffe7ff 	b	-28(0xfffffe4) # 1c001454 <find_maximum_16+0x154>
1c001474:	2840198b 	ld.h	$r11,$r12,6(0x6)
1c001478:	0015014e 	move	$r14,$r10
1c00147c:	67ff916e 	bge	$r11,$r14,-112(0x3ff90) # 1c00140c <find_maximum_16+0x10c>
1c001480:	53ffe7ff 	b	-28(0xfffffe4) # 1c001464 <find_maximum_16+0x164>
1c001484:	2840118e 	ld.h	$r14,$r12,4(0x4)
1c001488:	0015008a 	move	$r10,$r4
1c00148c:	67ff79ca 	bge	$r14,$r10,-136(0x3ff78) # 1c001404 <find_maximum_16+0x104>
1c001490:	53ffe7ff 	b	-28(0xfffffe4) # 1c001474 <find_maximum_16+0x174>
1c001494:	2840098a 	ld.h	$r10,$r12,2(0x2)
1c001498:	00150124 	move	$r4,$r9
1c00149c:	67ff6144 	bge	$r10,$r4,-160(0x3ff60) # 1c0013fc <find_maximum_16+0xfc>
1c0014a0:	53ffe7ff 	b	-28(0xfffffe4) # 1c001484 <find_maximum_16+0x184>
1c0014a4:	00150089 	move	$r9,$r4
1c0014a8:	28400984 	ld.h	$r4,$r12,2(0x2)
1c0014ac:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0014b0:	67ff4489 	bge	$r4,$r9,-188(0x3ff44) # 1c0013f4 <find_maximum_16+0xf4>
1c0014b4:	53ffe3ff 	b	-32(0xfffffe0) # 1c001494 <find_maximum_16+0x194>
1c0014b8:	00150088 	move	$r8,$r4
1c0014bc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0014c0:	00150104 	move	$r4,$r8
1c0014c4:	5fff1cac 	bne	$r5,$r12,-228(0x3ff1c) # 1c0013e0 <find_maximum_16+0xe0>
1c0014c8:	50001800 	b	24(0x18) # 1c0014e0 <find_maximum_16+0x1e0>
1c0014cc:	03400000 	andi	$r0,$r0,0x0
1c0014d0:	0015008d 	move	$r13,$r4
1c0014d4:	53fec7ff 	b	-316(0xffffec4) # 1c001398 <find_maximum_16+0x98>
1c0014d8:	00150094 	move	$r20,$r4
1c0014dc:	53feafff 	b	-340(0xffffeac) # 1c001388 <find_maximum_16+0x88>
1c0014e0:	4c000020 	jirl	$r0,$r1,0
1c0014e4:	00150092 	move	$r18,$r4
1c0014e8:	53fe7fff 	b	-388(0xffffe7c) # 1c001364 <find_maximum_16+0x64>
1c0014ec:	03400000 	andi	$r0,$r0,0x0

1c0014f0 <find_maximum_u16>:
find_maximum_u16():
1c0014f0:	0015008c 	move	$r12,$r4
1c0014f4:	2a400084 	ld.hu	$r4,$r4,0
1c0014f8:	58012985 	beq	$r12,$r5,296(0x128) # 1c001620 <find_maximum_u16+0x130>
1c0014fc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001500:	580120ac 	beq	$r5,$r12,288(0x120) # 1c001620 <find_maximum_u16+0x130>
1c001504:	001130ad 	sub.w	$r13,$r5,$r12
1c001508:	02bff9a6 	addi.w	$r6,$r13,-2(0xffe)
1c00150c:	004484c7 	srli.w	$r7,$r6,0x1
1c001510:	028004e8 	addi.w	$r8,$r7,1(0x1)
1c001514:	03401d09 	andi	$r9,$r8,0x7
1c001518:	5800b920 	beq	$r9,$r0,184(0xb8) # 1c0015d0 <find_maximum_u16+0xe0>
1c00151c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001520:	5800992e 	beq	$r9,$r14,152(0x98) # 1c0015b8 <find_maximum_u16+0xc8>
1c001524:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c001528:	58007d2a 	beq	$r9,$r10,124(0x7c) # 1c0015a4 <find_maximum_u16+0xb4>
1c00152c:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c001530:	5800612b 	beq	$r9,$r11,96(0x60) # 1c001590 <find_maximum_u16+0xa0>
1c001534:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c001538:	5800492f 	beq	$r9,$r15,72(0x48) # 1c001580 <find_maximum_u16+0x90>
1c00153c:	02801410 	addi.w	$r16,$r0,5(0x5)
1c001540:	58003130 	beq	$r9,$r16,48(0x30) # 1c001570 <find_maximum_u16+0x80>
1c001544:	02801811 	addi.w	$r17,$r0,6(0x6)
1c001548:	58001531 	beq	$r9,$r17,20(0x14) # 1c00155c <find_maximum_u16+0x6c>
1c00154c:	2a400192 	ld.hu	$r18,$r12,0
1c001550:	68018644 	bltu	$r18,$r4,388(0x184) # 1c0016d4 <find_maximum_u16+0x1e4>
1c001554:	00150244 	move	$r4,$r18
1c001558:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00155c:	2a400193 	ld.hu	$r19,$r12,0
1c001560:	6c000a64 	bgeu	$r19,$r4,8(0x8) # 1c001568 <find_maximum_u16+0x78>
1c001564:	00150093 	move	$r19,$r4
1c001568:	00150264 	move	$r4,$r19
1c00156c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001570:	2a400194 	ld.hu	$r20,$r12,0
1c001574:	68015684 	bltu	$r20,$r4,340(0x154) # 1c0016c8 <find_maximum_u16+0x1d8>
1c001578:	00150284 	move	$r4,$r20
1c00157c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001580:	2a40018d 	ld.hu	$r13,$r12,0
1c001584:	68013da4 	bltu	$r13,$r4,316(0x13c) # 1c0016c0 <find_maximum_u16+0x1d0>
1c001588:	001501a4 	move	$r4,$r13
1c00158c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001590:	2a400186 	ld.hu	$r6,$r12,0
1c001594:	6c0008c4 	bgeu	$r6,$r4,8(0x8) # 1c00159c <find_maximum_u16+0xac>
1c001598:	00150086 	move	$r6,$r4
1c00159c:	001500c4 	move	$r4,$r6
1c0015a0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0015a4:	2a400187 	ld.hu	$r7,$r12,0
1c0015a8:	6c0008e4 	bgeu	$r7,$r4,8(0x8) # 1c0015b0 <find_maximum_u16+0xc0>
1c0015ac:	00150087 	move	$r7,$r4
1c0015b0:	001500e4 	move	$r4,$r7
1c0015b4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0015b8:	2a400188 	ld.hu	$r8,$r12,0
1c0015bc:	6800ed04 	bltu	$r8,$r4,236(0xec) # 1c0016a8 <find_maximum_u16+0x1b8>
1c0015c0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0015c4:	00150104 	move	$r4,$r8
1c0015c8:	580108ac 	beq	$r5,$r12,264(0x108) # 1c0016d0 <find_maximum_u16+0x1e0>
1c0015cc:	03400000 	andi	$r0,$r0,0x0
1c0015d0:	2a400189 	ld.hu	$r9,$r12,0
1c0015d4:	6800c124 	bltu	$r9,$r4,192(0xc0) # 1c001694 <find_maximum_u16+0x1a4>
1c0015d8:	2a400984 	ld.hu	$r4,$r12,2(0x2)
1c0015dc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0015e0:	6800a489 	bltu	$r4,$r9,164(0xa4) # 1c001684 <find_maximum_u16+0x194>
1c0015e4:	2a40098a 	ld.hu	$r10,$r12,2(0x2)
1c0015e8:	68008d44 	bltu	$r10,$r4,140(0x8c) # 1c001674 <find_maximum_u16+0x184>
1c0015ec:	2a40118e 	ld.hu	$r14,$r12,4(0x4)
1c0015f0:	680075ca 	bltu	$r14,$r10,116(0x74) # 1c001664 <find_maximum_u16+0x174>
1c0015f4:	2a40198b 	ld.hu	$r11,$r12,6(0x6)
1c0015f8:	68005d6e 	bltu	$r11,$r14,92(0x5c) # 1c001654 <find_maximum_u16+0x164>
1c0015fc:	2a40218f 	ld.hu	$r15,$r12,8(0x8)
1c001600:	680045eb 	bltu	$r15,$r11,68(0x44) # 1c001644 <find_maximum_u16+0x154>
1c001604:	2a40298e 	ld.hu	$r14,$r12,10(0xa)
1c001608:	68002dcf 	bltu	$r14,$r15,44(0x2c) # 1c001634 <find_maximum_u16+0x144>
1c00160c:	2a403184 	ld.hu	$r4,$r12,12(0xc)
1c001610:	6800148e 	bltu	$r4,$r14,20(0x14) # 1c001624 <find_maximum_u16+0x134>
1c001614:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c001618:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c0015d0 <find_maximum_u16+0xe0>
1c00161c:	4c000020 	jirl	$r0,$r1,0
1c001620:	4c000020 	jirl	$r0,$r1,0
1c001624:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c001628:	001501c4 	move	$r4,$r14
1c00162c:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c0015d0 <find_maximum_u16+0xe0>
1c001630:	53ffefff 	b	-20(0xfffffec) # 1c00161c <find_maximum_u16+0x12c>
1c001634:	2a403184 	ld.hu	$r4,$r12,12(0xc)
1c001638:	001501ee 	move	$r14,$r15
1c00163c:	6fffd88e 	bgeu	$r4,$r14,-40(0x3ffd8) # 1c001614 <find_maximum_u16+0x124>
1c001640:	53ffe7ff 	b	-28(0xfffffe4) # 1c001624 <find_maximum_u16+0x134>
1c001644:	2a40298e 	ld.hu	$r14,$r12,10(0xa)
1c001648:	0015016f 	move	$r15,$r11
1c00164c:	6fffc1cf 	bgeu	$r14,$r15,-64(0x3ffc0) # 1c00160c <find_maximum_u16+0x11c>
1c001650:	53ffe7ff 	b	-28(0xfffffe4) # 1c001634 <find_maximum_u16+0x144>
1c001654:	2a40218f 	ld.hu	$r15,$r12,8(0x8)
1c001658:	001501cb 	move	$r11,$r14
1c00165c:	6fffa9eb 	bgeu	$r15,$r11,-88(0x3ffa8) # 1c001604 <find_maximum_u16+0x114>
1c001660:	53ffe7ff 	b	-28(0xfffffe4) # 1c001644 <find_maximum_u16+0x154>
1c001664:	2a40198b 	ld.hu	$r11,$r12,6(0x6)
1c001668:	0015014e 	move	$r14,$r10
1c00166c:	6fff916e 	bgeu	$r11,$r14,-112(0x3ff90) # 1c0015fc <find_maximum_u16+0x10c>
1c001670:	53ffe7ff 	b	-28(0xfffffe4) # 1c001654 <find_maximum_u16+0x164>
1c001674:	2a40118e 	ld.hu	$r14,$r12,4(0x4)
1c001678:	0015008a 	move	$r10,$r4
1c00167c:	6fff79ca 	bgeu	$r14,$r10,-136(0x3ff78) # 1c0015f4 <find_maximum_u16+0x104>
1c001680:	53ffe7ff 	b	-28(0xfffffe4) # 1c001664 <find_maximum_u16+0x174>
1c001684:	2a40098a 	ld.hu	$r10,$r12,2(0x2)
1c001688:	00150124 	move	$r4,$r9
1c00168c:	6fff6144 	bgeu	$r10,$r4,-160(0x3ff60) # 1c0015ec <find_maximum_u16+0xfc>
1c001690:	53ffe7ff 	b	-28(0xfffffe4) # 1c001674 <find_maximum_u16+0x184>
1c001694:	00150089 	move	$r9,$r4
1c001698:	2a400984 	ld.hu	$r4,$r12,2(0x2)
1c00169c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0016a0:	6fff4489 	bgeu	$r4,$r9,-188(0x3ff44) # 1c0015e4 <find_maximum_u16+0xf4>
1c0016a4:	53ffe3ff 	b	-32(0xfffffe0) # 1c001684 <find_maximum_u16+0x194>
1c0016a8:	00150088 	move	$r8,$r4
1c0016ac:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0016b0:	00150104 	move	$r4,$r8
1c0016b4:	5fff1cac 	bne	$r5,$r12,-228(0x3ff1c) # 1c0015d0 <find_maximum_u16+0xe0>
1c0016b8:	50001800 	b	24(0x18) # 1c0016d0 <find_maximum_u16+0x1e0>
1c0016bc:	03400000 	andi	$r0,$r0,0x0
1c0016c0:	0015008d 	move	$r13,$r4
1c0016c4:	53fec7ff 	b	-316(0xffffec4) # 1c001588 <find_maximum_u16+0x98>
1c0016c8:	00150094 	move	$r20,$r4
1c0016cc:	53feafff 	b	-340(0xffffeac) # 1c001578 <find_maximum_u16+0x88>
1c0016d0:	4c000020 	jirl	$r0,$r1,0
1c0016d4:	00150092 	move	$r18,$r4
1c0016d8:	53fe7fff 	b	-388(0xffffe7c) # 1c001554 <find_maximum_u16+0x64>
1c0016dc:	03400000 	andi	$r0,$r0,0x0

1c0016e0 <find_maximum_32>:
find_maximum_32():
1c0016e0:	0015008c 	move	$r12,$r4
1c0016e4:	28800084 	ld.w	$r4,$r4,0
1c0016e8:	58010985 	beq	$r12,$r5,264(0x108) # 1c0017f0 <find_maximum_32+0x110>
1c0016ec:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0016f0:	580100ac 	beq	$r5,$r12,256(0x100) # 1c0017f0 <find_maximum_32+0x110>
1c0016f4:	001130ad 	sub.w	$r13,$r5,$r12
1c0016f8:	02bff1a6 	addi.w	$r6,$r13,-4(0xffc)
1c0016fc:	004488c7 	srli.w	$r7,$r6,0x2
1c001700:	028004e8 	addi.w	$r8,$r7,1(0x1)
1c001704:	03401d09 	andi	$r9,$r8,0x7
1c001708:	58009920 	beq	$r9,$r0,152(0x98) # 1c0017a0 <find_maximum_32+0xc0>
1c00170c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001710:	5800812e 	beq	$r9,$r14,128(0x80) # 1c001790 <find_maximum_32+0xb0>
1c001714:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c001718:	5800692a 	beq	$r9,$r10,104(0x68) # 1c001780 <find_maximum_32+0xa0>
1c00171c:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c001720:	5800512b 	beq	$r9,$r11,80(0x50) # 1c001770 <find_maximum_32+0x90>
1c001724:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c001728:	58003d2f 	beq	$r9,$r15,60(0x3c) # 1c001764 <find_maximum_32+0x84>
1c00172c:	02801410 	addi.w	$r16,$r0,5(0x5)
1c001730:	58002930 	beq	$r9,$r16,40(0x28) # 1c001758 <find_maximum_32+0x78>
1c001734:	02801811 	addi.w	$r17,$r0,6(0x6)
1c001738:	58001131 	beq	$r9,$r17,16(0x10) # 1c001748 <find_maximum_32+0x68>
1c00173c:	28800192 	ld.w	$r18,$r12,0
1c001740:	60015c92 	blt	$r4,$r18,348(0x15c) # 1c00189c <find_maximum_32+0x1bc>
1c001744:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001748:	28800193 	ld.w	$r19,$r12,0
1c00174c:	64000893 	bge	$r4,$r19,8(0x8) # 1c001754 <find_maximum_32+0x74>
1c001750:	00150264 	move	$r4,$r19
1c001754:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001758:	28800194 	ld.w	$r20,$r12,0
1c00175c:	60013494 	blt	$r4,$r20,308(0x134) # 1c001890 <find_maximum_32+0x1b0>
1c001760:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001764:	2880018d 	ld.w	$r13,$r12,0
1c001768:	6001208d 	blt	$r4,$r13,288(0x120) # 1c001888 <find_maximum_32+0x1a8>
1c00176c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001770:	28800186 	ld.w	$r6,$r12,0
1c001774:	64000886 	bge	$r4,$r6,8(0x8) # 1c00177c <find_maximum_32+0x9c>
1c001778:	001500c4 	move	$r4,$r6
1c00177c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001780:	28800187 	ld.w	$r7,$r12,0
1c001784:	64000887 	bge	$r4,$r7,8(0x8) # 1c00178c <find_maximum_32+0xac>
1c001788:	001500e4 	move	$r4,$r7
1c00178c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001790:	28800188 	ld.w	$r8,$r12,0
1c001794:	6000e488 	blt	$r4,$r8,228(0xe4) # 1c001878 <find_maximum_32+0x198>
1c001798:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00179c:	5800fcac 	beq	$r5,$r12,252(0xfc) # 1c001898 <find_maximum_32+0x1b8>
1c0017a0:	28800189 	ld.w	$r9,$r12,0
1c0017a4:	6000c089 	blt	$r4,$r9,192(0xc0) # 1c001864 <find_maximum_32+0x184>
1c0017a8:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c0017ac:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0017b0:	6000a48e 	blt	$r4,$r14,164(0xa4) # 1c001854 <find_maximum_32+0x174>
1c0017b4:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c0017b8:	60008c8a 	blt	$r4,$r10,140(0x8c) # 1c001844 <find_maximum_32+0x164>
1c0017bc:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c0017c0:	6000748b 	blt	$r4,$r11,116(0x74) # 1c001834 <find_maximum_32+0x154>
1c0017c4:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c0017c8:	60005c8f 	blt	$r4,$r15,92(0x5c) # 1c001824 <find_maximum_32+0x144>
1c0017cc:	28804190 	ld.w	$r16,$r12,16(0x10)
1c0017d0:	60004490 	blt	$r4,$r16,68(0x44) # 1c001814 <find_maximum_32+0x134>
1c0017d4:	28805191 	ld.w	$r17,$r12,20(0x14)
1c0017d8:	60002c91 	blt	$r4,$r17,44(0x2c) # 1c001804 <find_maximum_32+0x124>
1c0017dc:	28806192 	ld.w	$r18,$r12,24(0x18)
1c0017e0:	60001492 	blt	$r4,$r18,20(0x14) # 1c0017f4 <find_maximum_32+0x114>
1c0017e4:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c0017e8:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c0017a0 <find_maximum_32+0xc0>
1c0017ec:	4c000020 	jirl	$r0,$r1,0
1c0017f0:	4c000020 	jirl	$r0,$r1,0
1c0017f4:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c0017f8:	00150244 	move	$r4,$r18
1c0017fc:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c0017a0 <find_maximum_32+0xc0>
1c001800:	53ffefff 	b	-20(0xfffffec) # 1c0017ec <find_maximum_32+0x10c>
1c001804:	28806192 	ld.w	$r18,$r12,24(0x18)
1c001808:	00150224 	move	$r4,$r17
1c00180c:	67ffd892 	bge	$r4,$r18,-40(0x3ffd8) # 1c0017e4 <find_maximum_32+0x104>
1c001810:	53ffe7ff 	b	-28(0xfffffe4) # 1c0017f4 <find_maximum_32+0x114>
1c001814:	28805191 	ld.w	$r17,$r12,20(0x14)
1c001818:	00150204 	move	$r4,$r16
1c00181c:	67ffc091 	bge	$r4,$r17,-64(0x3ffc0) # 1c0017dc <find_maximum_32+0xfc>
1c001820:	53ffe7ff 	b	-28(0xfffffe4) # 1c001804 <find_maximum_32+0x124>
1c001824:	28804190 	ld.w	$r16,$r12,16(0x10)
1c001828:	001501e4 	move	$r4,$r15
1c00182c:	67ffa890 	bge	$r4,$r16,-88(0x3ffa8) # 1c0017d4 <find_maximum_32+0xf4>
1c001830:	53ffe7ff 	b	-28(0xfffffe4) # 1c001814 <find_maximum_32+0x134>
1c001834:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c001838:	00150164 	move	$r4,$r11
1c00183c:	67ff908f 	bge	$r4,$r15,-112(0x3ff90) # 1c0017cc <find_maximum_32+0xec>
1c001840:	53ffe7ff 	b	-28(0xfffffe4) # 1c001824 <find_maximum_32+0x144>
1c001844:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c001848:	00150144 	move	$r4,$r10
1c00184c:	67ff788b 	bge	$r4,$r11,-136(0x3ff78) # 1c0017c4 <find_maximum_32+0xe4>
1c001850:	53ffe7ff 	b	-28(0xfffffe4) # 1c001834 <find_maximum_32+0x154>
1c001854:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c001858:	001501c4 	move	$r4,$r14
1c00185c:	67ff608a 	bge	$r4,$r10,-160(0x3ff60) # 1c0017bc <find_maximum_32+0xdc>
1c001860:	53ffe7ff 	b	-28(0xfffffe4) # 1c001844 <find_maximum_32+0x164>
1c001864:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c001868:	00150124 	move	$r4,$r9
1c00186c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001870:	67ff448e 	bge	$r4,$r14,-188(0x3ff44) # 1c0017b4 <find_maximum_32+0xd4>
1c001874:	53ffe3ff 	b	-32(0xfffffe0) # 1c001854 <find_maximum_32+0x174>
1c001878:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00187c:	00150104 	move	$r4,$r8
1c001880:	5fff20ac 	bne	$r5,$r12,-224(0x3ff20) # 1c0017a0 <find_maximum_32+0xc0>
1c001884:	50001400 	b	20(0x14) # 1c001898 <find_maximum_32+0x1b8>
1c001888:	001501a4 	move	$r4,$r13
1c00188c:	53fee3ff 	b	-288(0xffffee0) # 1c00176c <find_maximum_32+0x8c>
1c001890:	00150284 	move	$r4,$r20
1c001894:	53fecfff 	b	-308(0xffffecc) # 1c001760 <find_maximum_32+0x80>
1c001898:	4c000020 	jirl	$r0,$r1,0
1c00189c:	00150244 	move	$r4,$r18
1c0018a0:	53fea7ff 	b	-348(0xffffea4) # 1c001744 <find_maximum_32+0x64>
1c0018a4:	03400000 	andi	$r0,$r0,0x0
1c0018a8:	03400000 	andi	$r0,$r0,0x0
1c0018ac:	03400000 	andi	$r0,$r0,0x0

1c0018b0 <find_maximum_u32>:
find_maximum_u32():
1c0018b0:	0015008c 	move	$r12,$r4
1c0018b4:	28800084 	ld.w	$r4,$r4,0
1c0018b8:	58010985 	beq	$r12,$r5,264(0x108) # 1c0019c0 <find_maximum_u32+0x110>
1c0018bc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0018c0:	580100ac 	beq	$r5,$r12,256(0x100) # 1c0019c0 <find_maximum_u32+0x110>
1c0018c4:	001130ad 	sub.w	$r13,$r5,$r12
1c0018c8:	02bff1a6 	addi.w	$r6,$r13,-4(0xffc)
1c0018cc:	004488c7 	srli.w	$r7,$r6,0x2
1c0018d0:	028004e8 	addi.w	$r8,$r7,1(0x1)
1c0018d4:	03401d09 	andi	$r9,$r8,0x7
1c0018d8:	58009920 	beq	$r9,$r0,152(0x98) # 1c001970 <find_maximum_u32+0xc0>
1c0018dc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018e0:	5800812e 	beq	$r9,$r14,128(0x80) # 1c001960 <find_maximum_u32+0xb0>
1c0018e4:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c0018e8:	5800692a 	beq	$r9,$r10,104(0x68) # 1c001950 <find_maximum_u32+0xa0>
1c0018ec:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c0018f0:	5800512b 	beq	$r9,$r11,80(0x50) # 1c001940 <find_maximum_u32+0x90>
1c0018f4:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c0018f8:	58003d2f 	beq	$r9,$r15,60(0x3c) # 1c001934 <find_maximum_u32+0x84>
1c0018fc:	02801410 	addi.w	$r16,$r0,5(0x5)
1c001900:	58002930 	beq	$r9,$r16,40(0x28) # 1c001928 <find_maximum_u32+0x78>
1c001904:	02801811 	addi.w	$r17,$r0,6(0x6)
1c001908:	58001131 	beq	$r9,$r17,16(0x10) # 1c001918 <find_maximum_u32+0x68>
1c00190c:	28800192 	ld.w	$r18,$r12,0
1c001910:	68015c92 	bltu	$r4,$r18,348(0x15c) # 1c001a6c <find_maximum_u32+0x1bc>
1c001914:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001918:	28800193 	ld.w	$r19,$r12,0
1c00191c:	6c000893 	bgeu	$r4,$r19,8(0x8) # 1c001924 <find_maximum_u32+0x74>
1c001920:	00150264 	move	$r4,$r19
1c001924:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001928:	28800194 	ld.w	$r20,$r12,0
1c00192c:	68013494 	bltu	$r4,$r20,308(0x134) # 1c001a60 <find_maximum_u32+0x1b0>
1c001930:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001934:	2880018d 	ld.w	$r13,$r12,0
1c001938:	6801208d 	bltu	$r4,$r13,288(0x120) # 1c001a58 <find_maximum_u32+0x1a8>
1c00193c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001940:	28800186 	ld.w	$r6,$r12,0
1c001944:	6c000886 	bgeu	$r4,$r6,8(0x8) # 1c00194c <find_maximum_u32+0x9c>
1c001948:	001500c4 	move	$r4,$r6
1c00194c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001950:	28800187 	ld.w	$r7,$r12,0
1c001954:	6c000887 	bgeu	$r4,$r7,8(0x8) # 1c00195c <find_maximum_u32+0xac>
1c001958:	001500e4 	move	$r4,$r7
1c00195c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001960:	28800188 	ld.w	$r8,$r12,0
1c001964:	6800e488 	bltu	$r4,$r8,228(0xe4) # 1c001a48 <find_maximum_u32+0x198>
1c001968:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00196c:	5800fcac 	beq	$r5,$r12,252(0xfc) # 1c001a68 <find_maximum_u32+0x1b8>
1c001970:	28800189 	ld.w	$r9,$r12,0
1c001974:	6800c089 	bltu	$r4,$r9,192(0xc0) # 1c001a34 <find_maximum_u32+0x184>
1c001978:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c00197c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001980:	6800a48e 	bltu	$r4,$r14,164(0xa4) # 1c001a24 <find_maximum_u32+0x174>
1c001984:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c001988:	68008c8a 	bltu	$r4,$r10,140(0x8c) # 1c001a14 <find_maximum_u32+0x164>
1c00198c:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c001990:	6800748b 	bltu	$r4,$r11,116(0x74) # 1c001a04 <find_maximum_u32+0x154>
1c001994:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c001998:	68005c8f 	bltu	$r4,$r15,92(0x5c) # 1c0019f4 <find_maximum_u32+0x144>
1c00199c:	28804190 	ld.w	$r16,$r12,16(0x10)
1c0019a0:	68004490 	bltu	$r4,$r16,68(0x44) # 1c0019e4 <find_maximum_u32+0x134>
1c0019a4:	28805191 	ld.w	$r17,$r12,20(0x14)
1c0019a8:	68002c91 	bltu	$r4,$r17,44(0x2c) # 1c0019d4 <find_maximum_u32+0x124>
1c0019ac:	28806192 	ld.w	$r18,$r12,24(0x18)
1c0019b0:	68001492 	bltu	$r4,$r18,20(0x14) # 1c0019c4 <find_maximum_u32+0x114>
1c0019b4:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c0019b8:	5fffb8ac 	bne	$r5,$r12,-72(0x3ffb8) # 1c001970 <find_maximum_u32+0xc0>
1c0019bc:	4c000020 	jirl	$r0,$r1,0
1c0019c0:	4c000020 	jirl	$r0,$r1,0
1c0019c4:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c0019c8:	00150244 	move	$r4,$r18
1c0019cc:	5fffa4ac 	bne	$r5,$r12,-92(0x3ffa4) # 1c001970 <find_maximum_u32+0xc0>
1c0019d0:	53ffefff 	b	-20(0xfffffec) # 1c0019bc <find_maximum_u32+0x10c>
1c0019d4:	28806192 	ld.w	$r18,$r12,24(0x18)
1c0019d8:	00150224 	move	$r4,$r17
1c0019dc:	6fffd892 	bgeu	$r4,$r18,-40(0x3ffd8) # 1c0019b4 <find_maximum_u32+0x104>
1c0019e0:	53ffe7ff 	b	-28(0xfffffe4) # 1c0019c4 <find_maximum_u32+0x114>
1c0019e4:	28805191 	ld.w	$r17,$r12,20(0x14)
1c0019e8:	00150204 	move	$r4,$r16
1c0019ec:	6fffc091 	bgeu	$r4,$r17,-64(0x3ffc0) # 1c0019ac <find_maximum_u32+0xfc>
1c0019f0:	53ffe7ff 	b	-28(0xfffffe4) # 1c0019d4 <find_maximum_u32+0x124>
1c0019f4:	28804190 	ld.w	$r16,$r12,16(0x10)
1c0019f8:	001501e4 	move	$r4,$r15
1c0019fc:	6fffa890 	bgeu	$r4,$r16,-88(0x3ffa8) # 1c0019a4 <find_maximum_u32+0xf4>
1c001a00:	53ffe7ff 	b	-28(0xfffffe4) # 1c0019e4 <find_maximum_u32+0x134>
1c001a04:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c001a08:	00150164 	move	$r4,$r11
1c001a0c:	6fff908f 	bgeu	$r4,$r15,-112(0x3ff90) # 1c00199c <find_maximum_u32+0xec>
1c001a10:	53ffe7ff 	b	-28(0xfffffe4) # 1c0019f4 <find_maximum_u32+0x144>
1c001a14:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c001a18:	00150144 	move	$r4,$r10
1c001a1c:	6fff788b 	bgeu	$r4,$r11,-136(0x3ff78) # 1c001994 <find_maximum_u32+0xe4>
1c001a20:	53ffe7ff 	b	-28(0xfffffe4) # 1c001a04 <find_maximum_u32+0x154>
1c001a24:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c001a28:	001501c4 	move	$r4,$r14
1c001a2c:	6fff608a 	bgeu	$r4,$r10,-160(0x3ff60) # 1c00198c <find_maximum_u32+0xdc>
1c001a30:	53ffe7ff 	b	-28(0xfffffe4) # 1c001a14 <find_maximum_u32+0x164>
1c001a34:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c001a38:	00150124 	move	$r4,$r9
1c001a3c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001a40:	6fff448e 	bgeu	$r4,$r14,-188(0x3ff44) # 1c001984 <find_maximum_u32+0xd4>
1c001a44:	53ffe3ff 	b	-32(0xfffffe0) # 1c001a24 <find_maximum_u32+0x174>
1c001a48:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001a4c:	00150104 	move	$r4,$r8
1c001a50:	5fff20ac 	bne	$r5,$r12,-224(0x3ff20) # 1c001970 <find_maximum_u32+0xc0>
1c001a54:	50001400 	b	20(0x14) # 1c001a68 <find_maximum_u32+0x1b8>
1c001a58:	001501a4 	move	$r4,$r13
1c001a5c:	53fee3ff 	b	-288(0xffffee0) # 1c00193c <find_maximum_u32+0x8c>
1c001a60:	00150284 	move	$r4,$r20
1c001a64:	53fecfff 	b	-308(0xffffecc) # 1c001930 <find_maximum_u32+0x80>
1c001a68:	4c000020 	jirl	$r0,$r1,0
1c001a6c:	00150244 	move	$r4,$r18
1c001a70:	53fea7ff 	b	-348(0xffffea4) # 1c001914 <find_maximum_u32+0x64>
1c001a74:	03400000 	andi	$r0,$r0,0x0
1c001a78:	03400000 	andi	$r0,$r0,0x0
1c001a7c:	03400000 	andi	$r0,$r0,0x0

1c001a80 <find_minimum_position_8>:
find_minimum_position_8():
1c001a80:	02800410 	addi.w	$r16,$r0,1(0x1)
1c001a84:	0015008e 	move	$r14,$r4
1c001a88:	2800008d 	ld.b	$r13,$r4,0
1c001a8c:	6c01d605 	bgeu	$r16,$r5,468(0x1d4) # 1c001c60 <find_minimum_position_8+0x1e0>
1c001a90:	001140af 	sub.w	$r15,$r5,$r16
1c001a94:	03401de6 	andi	$r6,$r15,0x7
1c001a98:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001a9c:	00150004 	move	$r4,$r0
1c001aa0:	5800b8c0 	beq	$r6,$r0,184(0xb8) # 1c001b58 <find_minimum_position_8+0xd8>
1c001aa4:	580098d0 	beq	$r6,$r16,152(0x98) # 1c001b3c <find_minimum_position_8+0xbc>
1c001aa8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c001aac:	580080c7 	beq	$r6,$r7,128(0x80) # 1c001b2c <find_minimum_position_8+0xac>
1c001ab0:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c001ab4:	580068c8 	beq	$r6,$r8,104(0x68) # 1c001b1c <find_minimum_position_8+0x9c>
1c001ab8:	02801009 	addi.w	$r9,$r0,4(0x4)
1c001abc:	580048c9 	beq	$r6,$r9,72(0x48) # 1c001b04 <find_minimum_position_8+0x84>
1c001ac0:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c001ac4:	580030ca 	beq	$r6,$r10,48(0x30) # 1c001af4 <find_minimum_position_8+0x74>
1c001ac8:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c001acc:	580018cb 	beq	$r6,$r11,24(0x18) # 1c001ae4 <find_minimum_position_8+0x64>
1c001ad0:	280005cc 	ld.b	$r12,$r14,1(0x1)
1c001ad4:	64000d8d 	bge	$r12,$r13,12(0xc) # 1c001ae0 <find_minimum_position_8+0x60>
1c001ad8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001adc:	0015018d 	move	$r13,$r12
1c001ae0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001ae4:	001031d1 	add.w	$r17,$r14,$r12
1c001ae8:	28000232 	ld.b	$r18,$r17,0
1c001aec:	6001664d 	blt	$r18,$r13,356(0x164) # 1c001c50 <find_minimum_position_8+0x1d0>
1c001af0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001af4:	001031d3 	add.w	$r19,$r14,$r12
1c001af8:	28000274 	ld.b	$r20,$r19,0
1c001afc:	6001468d 	blt	$r20,$r13,324(0x144) # 1c001c40 <find_minimum_position_8+0x1c0>
1c001b00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b04:	001031d0 	add.w	$r16,$r14,$r12
1c001b08:	2800020f 	ld.b	$r15,$r16,0
1c001b0c:	64000ded 	bge	$r15,$r13,12(0xc) # 1c001b18 <find_minimum_position_8+0x98>
1c001b10:	00150184 	move	$r4,$r12
1c001b14:	001501ed 	move	$r13,$r15
1c001b18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b1c:	001031c6 	add.w	$r6,$r14,$r12
1c001b20:	280000c7 	ld.b	$r7,$r6,0
1c001b24:	60010ced 	blt	$r7,$r13,268(0x10c) # 1c001c30 <find_minimum_position_8+0x1b0>
1c001b28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b2c:	001031c8 	add.w	$r8,$r14,$r12
1c001b30:	28000109 	ld.b	$r9,$r8,0
1c001b34:	6000ed2d 	blt	$r9,$r13,236(0xec) # 1c001c20 <find_minimum_position_8+0x1a0>
1c001b38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b3c:	001031ca 	add.w	$r10,$r14,$r12
1c001b40:	2800014b 	ld.b	$r11,$r10,0
1c001b44:	64000d6d 	bge	$r11,$r13,12(0xc) # 1c001b50 <find_minimum_position_8+0xd0>
1c001b48:	00150184 	move	$r4,$r12
1c001b4c:	0015016d 	move	$r13,$r11
1c001b50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b54:	580108ac 	beq	$r5,$r12,264(0x108) # 1c001c5c <find_minimum_position_8+0x1dc>
1c001b58:	001031d1 	add.w	$r17,$r14,$r12
1c001b5c:	28000232 	ld.b	$r18,$r17,0
1c001b60:	64000e4d 	bge	$r18,$r13,12(0xc) # 1c001b6c <find_minimum_position_8+0xec>
1c001b64:	00150184 	move	$r4,$r12
1c001b68:	0015024d 	move	$r13,$r18
1c001b6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b70:	001031d3 	add.w	$r19,$r14,$r12
1c001b74:	28000274 	ld.b	$r20,$r19,0
1c001b78:	64000e8d 	bge	$r20,$r13,12(0xc) # 1c001b84 <find_minimum_position_8+0x104>
1c001b7c:	00150184 	move	$r4,$r12
1c001b80:	0015028d 	move	$r13,$r20
1c001b84:	02800590 	addi.w	$r16,$r12,1(0x1)
1c001b88:	001041cf 	add.w	$r15,$r14,$r16
1c001b8c:	280001e6 	ld.b	$r6,$r15,0
1c001b90:	64000ccd 	bge	$r6,$r13,12(0xc) # 1c001b9c <find_minimum_position_8+0x11c>
1c001b94:	00150204 	move	$r4,$r16
1c001b98:	001500cd 	move	$r13,$r6
1c001b9c:	02800987 	addi.w	$r7,$r12,2(0x2)
1c001ba0:	00101dc8 	add.w	$r8,$r14,$r7
1c001ba4:	28000109 	ld.b	$r9,$r8,0
1c001ba8:	64000d2d 	bge	$r9,$r13,12(0xc) # 1c001bb4 <find_minimum_position_8+0x134>
1c001bac:	001500e4 	move	$r4,$r7
1c001bb0:	0015012d 	move	$r13,$r9
1c001bb4:	02800d8a 	addi.w	$r10,$r12,3(0x3)
1c001bb8:	001029cb 	add.w	$r11,$r14,$r10
1c001bbc:	28000171 	ld.b	$r17,$r11,0
1c001bc0:	64000e2d 	bge	$r17,$r13,12(0xc) # 1c001bcc <find_minimum_position_8+0x14c>
1c001bc4:	00150144 	move	$r4,$r10
1c001bc8:	0015022d 	move	$r13,$r17
1c001bcc:	02801192 	addi.w	$r18,$r12,4(0x4)
1c001bd0:	001049d3 	add.w	$r19,$r14,$r18
1c001bd4:	28000274 	ld.b	$r20,$r19,0
1c001bd8:	64000e8d 	bge	$r20,$r13,12(0xc) # 1c001be4 <find_minimum_position_8+0x164>
1c001bdc:	00150244 	move	$r4,$r18
1c001be0:	0015028d 	move	$r13,$r20
1c001be4:	02801590 	addi.w	$r16,$r12,5(0x5)
1c001be8:	001041cf 	add.w	$r15,$r14,$r16
1c001bec:	280001e6 	ld.b	$r6,$r15,0
1c001bf0:	64000ccd 	bge	$r6,$r13,12(0xc) # 1c001bfc <find_minimum_position_8+0x17c>
1c001bf4:	00150204 	move	$r4,$r16
1c001bf8:	001500cd 	move	$r13,$r6
1c001bfc:	02801987 	addi.w	$r7,$r12,6(0x6)
1c001c00:	00101dc8 	add.w	$r8,$r14,$r7
1c001c04:	28000109 	ld.b	$r9,$r8,0
1c001c08:	64000d2d 	bge	$r9,$r13,12(0xc) # 1c001c14 <find_minimum_position_8+0x194>
1c001c0c:	001500e4 	move	$r4,$r7
1c001c10:	0015012d 	move	$r13,$r9
1c001c14:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c001c18:	5fff40ac 	bne	$r5,$r12,-192(0x3ff40) # 1c001b58 <find_minimum_position_8+0xd8>
1c001c1c:	4c000020 	jirl	$r0,$r1,0
1c001c20:	00150184 	move	$r4,$r12
1c001c24:	0015012d 	move	$r13,$r9
1c001c28:	53ff13ff 	b	-240(0xfffff10) # 1c001b38 <find_minimum_position_8+0xb8>
1c001c2c:	03400000 	andi	$r0,$r0,0x0
1c001c30:	00150184 	move	$r4,$r12
1c001c34:	001500ed 	move	$r13,$r7
1c001c38:	53fef3ff 	b	-272(0xffffef0) # 1c001b28 <find_minimum_position_8+0xa8>
1c001c3c:	03400000 	andi	$r0,$r0,0x0
1c001c40:	00150184 	move	$r4,$r12
1c001c44:	0015028d 	move	$r13,$r20
1c001c48:	53febbff 	b	-328(0xffffeb8) # 1c001b00 <find_minimum_position_8+0x80>
1c001c4c:	03400000 	andi	$r0,$r0,0x0
1c001c50:	00150184 	move	$r4,$r12
1c001c54:	0015024d 	move	$r13,$r18
1c001c58:	53fe9bff 	b	-360(0xffffe98) # 1c001af0 <find_minimum_position_8+0x70>
1c001c5c:	4c000020 	jirl	$r0,$r1,0
1c001c60:	00150004 	move	$r4,$r0
1c001c64:	4c000020 	jirl	$r0,$r1,0
1c001c68:	03400000 	andi	$r0,$r0,0x0
1c001c6c:	03400000 	andi	$r0,$r0,0x0

1c001c70 <find_minimum_position_u8>:
find_minimum_position_u8():
1c001c70:	02800410 	addi.w	$r16,$r0,1(0x1)
1c001c74:	0015008e 	move	$r14,$r4
1c001c78:	2a00008d 	ld.bu	$r13,$r4,0
1c001c7c:	6c01d605 	bgeu	$r16,$r5,468(0x1d4) # 1c001e50 <find_minimum_position_u8+0x1e0>
1c001c80:	001140af 	sub.w	$r15,$r5,$r16
1c001c84:	03401de6 	andi	$r6,$r15,0x7
1c001c88:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c8c:	00150004 	move	$r4,$r0
1c001c90:	5800b8c0 	beq	$r6,$r0,184(0xb8) # 1c001d48 <find_minimum_position_u8+0xd8>
1c001c94:	580098d0 	beq	$r6,$r16,152(0x98) # 1c001d2c <find_minimum_position_u8+0xbc>
1c001c98:	02800807 	addi.w	$r7,$r0,2(0x2)
1c001c9c:	580080c7 	beq	$r6,$r7,128(0x80) # 1c001d1c <find_minimum_position_u8+0xac>
1c001ca0:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c001ca4:	580068c8 	beq	$r6,$r8,104(0x68) # 1c001d0c <find_minimum_position_u8+0x9c>
1c001ca8:	02801009 	addi.w	$r9,$r0,4(0x4)
1c001cac:	580048c9 	beq	$r6,$r9,72(0x48) # 1c001cf4 <find_minimum_position_u8+0x84>
1c001cb0:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c001cb4:	580030ca 	beq	$r6,$r10,48(0x30) # 1c001ce4 <find_minimum_position_u8+0x74>
1c001cb8:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c001cbc:	580018cb 	beq	$r6,$r11,24(0x18) # 1c001cd4 <find_minimum_position_u8+0x64>
1c001cc0:	2a0005cc 	ld.bu	$r12,$r14,1(0x1)
1c001cc4:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c001cd0 <find_minimum_position_u8+0x60>
1c001cc8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001ccc:	0015018d 	move	$r13,$r12
1c001cd0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001cd4:	001031d1 	add.w	$r17,$r14,$r12
1c001cd8:	2a000232 	ld.bu	$r18,$r17,0
1c001cdc:	6801664d 	bltu	$r18,$r13,356(0x164) # 1c001e40 <find_minimum_position_u8+0x1d0>
1c001ce0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ce4:	001031d3 	add.w	$r19,$r14,$r12
1c001ce8:	2a000274 	ld.bu	$r20,$r19,0
1c001cec:	6801468d 	bltu	$r20,$r13,324(0x144) # 1c001e30 <find_minimum_position_u8+0x1c0>
1c001cf0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cf4:	001031d0 	add.w	$r16,$r14,$r12
1c001cf8:	2a00020f 	ld.bu	$r15,$r16,0
1c001cfc:	6c000ded 	bgeu	$r15,$r13,12(0xc) # 1c001d08 <find_minimum_position_u8+0x98>
1c001d00:	00150184 	move	$r4,$r12
1c001d04:	001501ed 	move	$r13,$r15
1c001d08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d0c:	001031c6 	add.w	$r6,$r14,$r12
1c001d10:	2a0000c7 	ld.bu	$r7,$r6,0
1c001d14:	68010ced 	bltu	$r7,$r13,268(0x10c) # 1c001e20 <find_minimum_position_u8+0x1b0>
1c001d18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d1c:	001031c8 	add.w	$r8,$r14,$r12
1c001d20:	2a000109 	ld.bu	$r9,$r8,0
1c001d24:	6800ed2d 	bltu	$r9,$r13,236(0xec) # 1c001e10 <find_minimum_position_u8+0x1a0>
1c001d28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d2c:	001031ca 	add.w	$r10,$r14,$r12
1c001d30:	2a00014b 	ld.bu	$r11,$r10,0
1c001d34:	6c000d6d 	bgeu	$r11,$r13,12(0xc) # 1c001d40 <find_minimum_position_u8+0xd0>
1c001d38:	00150184 	move	$r4,$r12
1c001d3c:	0015016d 	move	$r13,$r11
1c001d40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d44:	580108ac 	beq	$r5,$r12,264(0x108) # 1c001e4c <find_minimum_position_u8+0x1dc>
1c001d48:	001031d1 	add.w	$r17,$r14,$r12
1c001d4c:	2a000232 	ld.bu	$r18,$r17,0
1c001d50:	6c000e4d 	bgeu	$r18,$r13,12(0xc) # 1c001d5c <find_minimum_position_u8+0xec>
1c001d54:	00150184 	move	$r4,$r12
1c001d58:	0015024d 	move	$r13,$r18
1c001d5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d60:	001031d3 	add.w	$r19,$r14,$r12
1c001d64:	2a000274 	ld.bu	$r20,$r19,0
1c001d68:	6c000e8d 	bgeu	$r20,$r13,12(0xc) # 1c001d74 <find_minimum_position_u8+0x104>
1c001d6c:	00150184 	move	$r4,$r12
1c001d70:	0015028d 	move	$r13,$r20
1c001d74:	02800590 	addi.w	$r16,$r12,1(0x1)
1c001d78:	001041cf 	add.w	$r15,$r14,$r16
1c001d7c:	2a0001e6 	ld.bu	$r6,$r15,0
1c001d80:	6c000ccd 	bgeu	$r6,$r13,12(0xc) # 1c001d8c <find_minimum_position_u8+0x11c>
1c001d84:	00150204 	move	$r4,$r16
1c001d88:	001500cd 	move	$r13,$r6
1c001d8c:	02800987 	addi.w	$r7,$r12,2(0x2)
1c001d90:	00101dc8 	add.w	$r8,$r14,$r7
1c001d94:	2a000109 	ld.bu	$r9,$r8,0
1c001d98:	6c000d2d 	bgeu	$r9,$r13,12(0xc) # 1c001da4 <find_minimum_position_u8+0x134>
1c001d9c:	001500e4 	move	$r4,$r7
1c001da0:	0015012d 	move	$r13,$r9
1c001da4:	02800d8a 	addi.w	$r10,$r12,3(0x3)
1c001da8:	001029cb 	add.w	$r11,$r14,$r10
1c001dac:	2a000171 	ld.bu	$r17,$r11,0
1c001db0:	6c000e2d 	bgeu	$r17,$r13,12(0xc) # 1c001dbc <find_minimum_position_u8+0x14c>
1c001db4:	00150144 	move	$r4,$r10
1c001db8:	0015022d 	move	$r13,$r17
1c001dbc:	02801192 	addi.w	$r18,$r12,4(0x4)
1c001dc0:	001049d3 	add.w	$r19,$r14,$r18
1c001dc4:	2a000274 	ld.bu	$r20,$r19,0
1c001dc8:	6c000e8d 	bgeu	$r20,$r13,12(0xc) # 1c001dd4 <find_minimum_position_u8+0x164>
1c001dcc:	00150244 	move	$r4,$r18
1c001dd0:	0015028d 	move	$r13,$r20
1c001dd4:	02801590 	addi.w	$r16,$r12,5(0x5)
1c001dd8:	001041cf 	add.w	$r15,$r14,$r16
1c001ddc:	2a0001e6 	ld.bu	$r6,$r15,0
1c001de0:	6c000ccd 	bgeu	$r6,$r13,12(0xc) # 1c001dec <find_minimum_position_u8+0x17c>
1c001de4:	00150204 	move	$r4,$r16
1c001de8:	001500cd 	move	$r13,$r6
1c001dec:	02801987 	addi.w	$r7,$r12,6(0x6)
1c001df0:	00101dc8 	add.w	$r8,$r14,$r7
1c001df4:	2a000109 	ld.bu	$r9,$r8,0
1c001df8:	6c000d2d 	bgeu	$r9,$r13,12(0xc) # 1c001e04 <find_minimum_position_u8+0x194>
1c001dfc:	001500e4 	move	$r4,$r7
1c001e00:	0015012d 	move	$r13,$r9
1c001e04:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c001e08:	5fff40ac 	bne	$r5,$r12,-192(0x3ff40) # 1c001d48 <find_minimum_position_u8+0xd8>
1c001e0c:	4c000020 	jirl	$r0,$r1,0
1c001e10:	00150184 	move	$r4,$r12
1c001e14:	0015012d 	move	$r13,$r9
1c001e18:	53ff13ff 	b	-240(0xfffff10) # 1c001d28 <find_minimum_position_u8+0xb8>
1c001e1c:	03400000 	andi	$r0,$r0,0x0
1c001e20:	00150184 	move	$r4,$r12
1c001e24:	001500ed 	move	$r13,$r7
1c001e28:	53fef3ff 	b	-272(0xffffef0) # 1c001d18 <find_minimum_position_u8+0xa8>
1c001e2c:	03400000 	andi	$r0,$r0,0x0
1c001e30:	00150184 	move	$r4,$r12
1c001e34:	0015028d 	move	$r13,$r20
1c001e38:	53febbff 	b	-328(0xffffeb8) # 1c001cf0 <find_minimum_position_u8+0x80>
1c001e3c:	03400000 	andi	$r0,$r0,0x0
1c001e40:	00150184 	move	$r4,$r12
1c001e44:	0015024d 	move	$r13,$r18
1c001e48:	53fe9bff 	b	-360(0xffffe98) # 1c001ce0 <find_minimum_position_u8+0x70>
1c001e4c:	4c000020 	jirl	$r0,$r1,0
1c001e50:	00150004 	move	$r4,$r0
1c001e54:	4c000020 	jirl	$r0,$r1,0
1c001e58:	03400000 	andi	$r0,$r0,0x0
1c001e5c:	03400000 	andi	$r0,$r0,0x0

1c001e60 <find_minimum_position_16>:
find_minimum_position_16():
1c001e60:	02800410 	addi.w	$r16,$r0,1(0x1)
1c001e64:	2840008e 	ld.h	$r14,$r4,0
1c001e68:	6c01ca05 	bgeu	$r16,$r5,456(0x1c8) # 1c002030 <find_minimum_position_16+0x1d0>
1c001e6c:	001140af 	sub.w	$r15,$r5,$r16
1c001e70:	03401de6 	andi	$r6,$r15,0x7
1c001e74:	0280088c 	addi.w	$r12,$r4,2(0x2)
1c001e78:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001e7c:	00150004 	move	$r4,$r0
1c001e80:	5800bcc0 	beq	$r6,$r0,188(0xbc) # 1c001f3c <find_minimum_position_16+0xdc>
1c001e84:	58009cd0 	beq	$r6,$r16,156(0x9c) # 1c001f20 <find_minimum_position_16+0xc0>
1c001e88:	02800807 	addi.w	$r7,$r0,2(0x2)
1c001e8c:	580084c7 	beq	$r6,$r7,132(0x84) # 1c001f10 <find_minimum_position_16+0xb0>
1c001e90:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c001e94:	58006cc8 	beq	$r6,$r8,108(0x6c) # 1c001f00 <find_minimum_position_16+0xa0>
1c001e98:	02801009 	addi.w	$r9,$r0,4(0x4)
1c001e9c:	58004cc9 	beq	$r6,$r9,76(0x4c) # 1c001ee8 <find_minimum_position_16+0x88>
1c001ea0:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c001ea4:	580034ca 	beq	$r6,$r10,52(0x34) # 1c001ed8 <find_minimum_position_16+0x78>
1c001ea8:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c001eac:	58001ccb 	beq	$r6,$r11,28(0x1c) # 1c001ec8 <find_minimum_position_16+0x68>
1c001eb0:	2840018d 	ld.h	$r13,$r12,0
1c001eb4:	64000dae 	bge	$r13,$r14,12(0xc) # 1c001ec0 <find_minimum_position_16+0x60>
1c001eb8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001ebc:	001501ae 	move	$r14,$r13
1c001ec0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c001ec4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001ec8:	28400191 	ld.h	$r17,$r12,0
1c001ecc:	6001562e 	blt	$r17,$r14,340(0x154) # 1c002020 <find_minimum_position_16+0x1c0>
1c001ed0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001ed4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001ed8:	28400192 	ld.h	$r18,$r12,0
1c001edc:	6001364e 	blt	$r18,$r14,308(0x134) # 1c002010 <find_minimum_position_16+0x1b0>
1c001ee0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001ee4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001ee8:	28400193 	ld.h	$r19,$r12,0
1c001eec:	64000e6e 	bge	$r19,$r14,12(0xc) # 1c001ef8 <find_minimum_position_16+0x98>
1c001ef0:	001501a4 	move	$r4,$r13
1c001ef4:	0015026e 	move	$r14,$r19
1c001ef8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001efc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001f00:	28400194 	ld.h	$r20,$r12,0
1c001f04:	6000fe8e 	blt	$r20,$r14,252(0xfc) # 1c002000 <find_minimum_position_16+0x1a0>
1c001f08:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001f0c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001f10:	28400190 	ld.h	$r16,$r12,0
1c001f14:	6000de0e 	blt	$r16,$r14,220(0xdc) # 1c001ff0 <find_minimum_position_16+0x190>
1c001f18:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001f1c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001f20:	2840018f 	ld.h	$r15,$r12,0
1c001f24:	64000dee 	bge	$r15,$r14,12(0xc) # 1c001f30 <find_minimum_position_16+0xd0>
1c001f28:	001501a4 	move	$r4,$r13
1c001f2c:	001501ee 	move	$r14,$r15
1c001f30:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001f34:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001f38:	5800f4ad 	beq	$r5,$r13,244(0xf4) # 1c00202c <find_minimum_position_16+0x1cc>
1c001f3c:	28400186 	ld.h	$r6,$r12,0
1c001f40:	64000cce 	bge	$r6,$r14,12(0xc) # 1c001f4c <find_minimum_position_16+0xec>
1c001f44:	001501a4 	move	$r4,$r13
1c001f48:	001500ce 	move	$r14,$r6
1c001f4c:	28400987 	ld.h	$r7,$r12,2(0x2)
1c001f50:	028005a8 	addi.w	$r8,$r13,1(0x1)
1c001f54:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001f58:	64000cee 	bge	$r7,$r14,12(0xc) # 1c001f64 <find_minimum_position_16+0x104>
1c001f5c:	00150104 	move	$r4,$r8
1c001f60:	001500ee 	move	$r14,$r7
1c001f64:	28400989 	ld.h	$r9,$r12,2(0x2)
1c001f68:	0280050a 	addi.w	$r10,$r8,1(0x1)
1c001f6c:	64000d2e 	bge	$r9,$r14,12(0xc) # 1c001f78 <find_minimum_position_16+0x118>
1c001f70:	00150144 	move	$r4,$r10
1c001f74:	0015012e 	move	$r14,$r9
1c001f78:	2840118b 	ld.h	$r11,$r12,4(0x4)
1c001f7c:	0280090d 	addi.w	$r13,$r8,2(0x2)
1c001f80:	64000d6e 	bge	$r11,$r14,12(0xc) # 1c001f8c <find_minimum_position_16+0x12c>
1c001f84:	001501a4 	move	$r4,$r13
1c001f88:	0015016e 	move	$r14,$r11
1c001f8c:	28401991 	ld.h	$r17,$r12,6(0x6)
1c001f90:	02800d12 	addi.w	$r18,$r8,3(0x3)
1c001f94:	64000e2e 	bge	$r17,$r14,12(0xc) # 1c001fa0 <find_minimum_position_16+0x140>
1c001f98:	00150244 	move	$r4,$r18
1c001f9c:	0015022e 	move	$r14,$r17
1c001fa0:	28402193 	ld.h	$r19,$r12,8(0x8)
1c001fa4:	02801114 	addi.w	$r20,$r8,4(0x4)
1c001fa8:	64000e6e 	bge	$r19,$r14,12(0xc) # 1c001fb4 <find_minimum_position_16+0x154>
1c001fac:	00150284 	move	$r4,$r20
1c001fb0:	0015026e 	move	$r14,$r19
1c001fb4:	2840298f 	ld.h	$r15,$r12,10(0xa)
1c001fb8:	02801510 	addi.w	$r16,$r8,5(0x5)
1c001fbc:	64000dee 	bge	$r15,$r14,12(0xc) # 1c001fc8 <find_minimum_position_16+0x168>
1c001fc0:	00150204 	move	$r4,$r16
1c001fc4:	001501ee 	move	$r14,$r15
1c001fc8:	28403186 	ld.h	$r6,$r12,12(0xc)
1c001fcc:	02801907 	addi.w	$r7,$r8,6(0x6)
1c001fd0:	64000cce 	bge	$r6,$r14,12(0xc) # 1c001fdc <find_minimum_position_16+0x17c>
1c001fd4:	001500e4 	move	$r4,$r7
1c001fd8:	001500ce 	move	$r14,$r6
1c001fdc:	02801d0d 	addi.w	$r13,$r8,7(0x7)
1c001fe0:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c001fe4:	5fff58ad 	bne	$r5,$r13,-168(0x3ff58) # 1c001f3c <find_minimum_position_16+0xdc>
1c001fe8:	4c000020 	jirl	$r0,$r1,0
1c001fec:	03400000 	andi	$r0,$r0,0x0
1c001ff0:	001501a4 	move	$r4,$r13
1c001ff4:	0015020e 	move	$r14,$r16
1c001ff8:	53ff23ff 	b	-224(0xfffff20) # 1c001f18 <find_minimum_position_16+0xb8>
1c001ffc:	03400000 	andi	$r0,$r0,0x0
1c002000:	001501a4 	move	$r4,$r13
1c002004:	0015028e 	move	$r14,$r20
1c002008:	53ff03ff 	b	-256(0xfffff00) # 1c001f08 <find_minimum_position_16+0xa8>
1c00200c:	03400000 	andi	$r0,$r0,0x0
1c002010:	001501a4 	move	$r4,$r13
1c002014:	0015024e 	move	$r14,$r18
1c002018:	53fecbff 	b	-312(0xffffec8) # 1c001ee0 <find_minimum_position_16+0x80>
1c00201c:	03400000 	andi	$r0,$r0,0x0
1c002020:	001501a4 	move	$r4,$r13
1c002024:	0015022e 	move	$r14,$r17
1c002028:	53feabff 	b	-344(0xffffea8) # 1c001ed0 <find_minimum_position_16+0x70>
1c00202c:	4c000020 	jirl	$r0,$r1,0
1c002030:	00150004 	move	$r4,$r0
1c002034:	4c000020 	jirl	$r0,$r1,0
1c002038:	03400000 	andi	$r0,$r0,0x0
1c00203c:	03400000 	andi	$r0,$r0,0x0

1c002040 <find_minimum_position_u16>:
find_minimum_position_u16():
1c002040:	02800410 	addi.w	$r16,$r0,1(0x1)
1c002044:	2a40008e 	ld.hu	$r14,$r4,0
1c002048:	6c01ca05 	bgeu	$r16,$r5,456(0x1c8) # 1c002210 <find_minimum_position_u16+0x1d0>
1c00204c:	001140af 	sub.w	$r15,$r5,$r16
1c002050:	03401de6 	andi	$r6,$r15,0x7
1c002054:	0280088c 	addi.w	$r12,$r4,2(0x2)
1c002058:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00205c:	00150004 	move	$r4,$r0
1c002060:	5800bcc0 	beq	$r6,$r0,188(0xbc) # 1c00211c <find_minimum_position_u16+0xdc>
1c002064:	58009cd0 	beq	$r6,$r16,156(0x9c) # 1c002100 <find_minimum_position_u16+0xc0>
1c002068:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00206c:	580084c7 	beq	$r6,$r7,132(0x84) # 1c0020f0 <find_minimum_position_u16+0xb0>
1c002070:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c002074:	58006cc8 	beq	$r6,$r8,108(0x6c) # 1c0020e0 <find_minimum_position_u16+0xa0>
1c002078:	02801009 	addi.w	$r9,$r0,4(0x4)
1c00207c:	58004cc9 	beq	$r6,$r9,76(0x4c) # 1c0020c8 <find_minimum_position_u16+0x88>
1c002080:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c002084:	580034ca 	beq	$r6,$r10,52(0x34) # 1c0020b8 <find_minimum_position_u16+0x78>
1c002088:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c00208c:	58001ccb 	beq	$r6,$r11,28(0x1c) # 1c0020a8 <find_minimum_position_u16+0x68>
1c002090:	2a40018d 	ld.hu	$r13,$r12,0
1c002094:	6c000dae 	bgeu	$r13,$r14,12(0xc) # 1c0020a0 <find_minimum_position_u16+0x60>
1c002098:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00209c:	001501ae 	move	$r14,$r13
1c0020a0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0020a4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0020a8:	2a400191 	ld.hu	$r17,$r12,0
1c0020ac:	6801562e 	bltu	$r17,$r14,340(0x154) # 1c002200 <find_minimum_position_u16+0x1c0>
1c0020b0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0020b4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0020b8:	2a400192 	ld.hu	$r18,$r12,0
1c0020bc:	6801364e 	bltu	$r18,$r14,308(0x134) # 1c0021f0 <find_minimum_position_u16+0x1b0>
1c0020c0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0020c4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0020c8:	2a400193 	ld.hu	$r19,$r12,0
1c0020cc:	6c000e6e 	bgeu	$r19,$r14,12(0xc) # 1c0020d8 <find_minimum_position_u16+0x98>
1c0020d0:	001501a4 	move	$r4,$r13
1c0020d4:	0015026e 	move	$r14,$r19
1c0020d8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0020dc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0020e0:	2a400194 	ld.hu	$r20,$r12,0
1c0020e4:	6800fe8e 	bltu	$r20,$r14,252(0xfc) # 1c0021e0 <find_minimum_position_u16+0x1a0>
1c0020e8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0020ec:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0020f0:	2a400190 	ld.hu	$r16,$r12,0
1c0020f4:	6800de0e 	bltu	$r16,$r14,220(0xdc) # 1c0021d0 <find_minimum_position_u16+0x190>
1c0020f8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0020fc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002100:	2a40018f 	ld.hu	$r15,$r12,0
1c002104:	6c000dee 	bgeu	$r15,$r14,12(0xc) # 1c002110 <find_minimum_position_u16+0xd0>
1c002108:	001501a4 	move	$r4,$r13
1c00210c:	001501ee 	move	$r14,$r15
1c002110:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002114:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002118:	5800f4ad 	beq	$r5,$r13,244(0xf4) # 1c00220c <find_minimum_position_u16+0x1cc>
1c00211c:	2a400186 	ld.hu	$r6,$r12,0
1c002120:	6c000cce 	bgeu	$r6,$r14,12(0xc) # 1c00212c <find_minimum_position_u16+0xec>
1c002124:	001501a4 	move	$r4,$r13
1c002128:	001500ce 	move	$r14,$r6
1c00212c:	2a400987 	ld.hu	$r7,$r12,2(0x2)
1c002130:	028005a8 	addi.w	$r8,$r13,1(0x1)
1c002134:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002138:	6c000cee 	bgeu	$r7,$r14,12(0xc) # 1c002144 <find_minimum_position_u16+0x104>
1c00213c:	00150104 	move	$r4,$r8
1c002140:	001500ee 	move	$r14,$r7
1c002144:	2a400989 	ld.hu	$r9,$r12,2(0x2)
1c002148:	0280050a 	addi.w	$r10,$r8,1(0x1)
1c00214c:	6c000d2e 	bgeu	$r9,$r14,12(0xc) # 1c002158 <find_minimum_position_u16+0x118>
1c002150:	00150144 	move	$r4,$r10
1c002154:	0015012e 	move	$r14,$r9
1c002158:	2a40118b 	ld.hu	$r11,$r12,4(0x4)
1c00215c:	0280090d 	addi.w	$r13,$r8,2(0x2)
1c002160:	6c000d6e 	bgeu	$r11,$r14,12(0xc) # 1c00216c <find_minimum_position_u16+0x12c>
1c002164:	001501a4 	move	$r4,$r13
1c002168:	0015016e 	move	$r14,$r11
1c00216c:	2a401991 	ld.hu	$r17,$r12,6(0x6)
1c002170:	02800d12 	addi.w	$r18,$r8,3(0x3)
1c002174:	6c000e2e 	bgeu	$r17,$r14,12(0xc) # 1c002180 <find_minimum_position_u16+0x140>
1c002178:	00150244 	move	$r4,$r18
1c00217c:	0015022e 	move	$r14,$r17
1c002180:	2a402193 	ld.hu	$r19,$r12,8(0x8)
1c002184:	02801114 	addi.w	$r20,$r8,4(0x4)
1c002188:	6c000e6e 	bgeu	$r19,$r14,12(0xc) # 1c002194 <find_minimum_position_u16+0x154>
1c00218c:	00150284 	move	$r4,$r20
1c002190:	0015026e 	move	$r14,$r19
1c002194:	2a40298f 	ld.hu	$r15,$r12,10(0xa)
1c002198:	02801510 	addi.w	$r16,$r8,5(0x5)
1c00219c:	6c000dee 	bgeu	$r15,$r14,12(0xc) # 1c0021a8 <find_minimum_position_u16+0x168>
1c0021a0:	00150204 	move	$r4,$r16
1c0021a4:	001501ee 	move	$r14,$r15
1c0021a8:	2a403186 	ld.hu	$r6,$r12,12(0xc)
1c0021ac:	02801907 	addi.w	$r7,$r8,6(0x6)
1c0021b0:	6c000cce 	bgeu	$r6,$r14,12(0xc) # 1c0021bc <find_minimum_position_u16+0x17c>
1c0021b4:	001500e4 	move	$r4,$r7
1c0021b8:	001500ce 	move	$r14,$r6
1c0021bc:	02801d0d 	addi.w	$r13,$r8,7(0x7)
1c0021c0:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c0021c4:	5fff58ad 	bne	$r5,$r13,-168(0x3ff58) # 1c00211c <find_minimum_position_u16+0xdc>
1c0021c8:	4c000020 	jirl	$r0,$r1,0
1c0021cc:	03400000 	andi	$r0,$r0,0x0
1c0021d0:	001501a4 	move	$r4,$r13
1c0021d4:	0015020e 	move	$r14,$r16
1c0021d8:	53ff23ff 	b	-224(0xfffff20) # 1c0020f8 <find_minimum_position_u16+0xb8>
1c0021dc:	03400000 	andi	$r0,$r0,0x0
1c0021e0:	001501a4 	move	$r4,$r13
1c0021e4:	0015028e 	move	$r14,$r20
1c0021e8:	53ff03ff 	b	-256(0xfffff00) # 1c0020e8 <find_minimum_position_u16+0xa8>
1c0021ec:	03400000 	andi	$r0,$r0,0x0
1c0021f0:	001501a4 	move	$r4,$r13
1c0021f4:	0015024e 	move	$r14,$r18
1c0021f8:	53fecbff 	b	-312(0xffffec8) # 1c0020c0 <find_minimum_position_u16+0x80>
1c0021fc:	03400000 	andi	$r0,$r0,0x0
1c002200:	001501a4 	move	$r4,$r13
1c002204:	0015022e 	move	$r14,$r17
1c002208:	53feabff 	b	-344(0xffffea8) # 1c0020b0 <find_minimum_position_u16+0x70>
1c00220c:	4c000020 	jirl	$r0,$r1,0
1c002210:	00150004 	move	$r4,$r0
1c002214:	4c000020 	jirl	$r0,$r1,0
1c002218:	03400000 	andi	$r0,$r0,0x0
1c00221c:	03400000 	andi	$r0,$r0,0x0

1c002220 <find_minimum_position_32>:
find_minimum_position_32():
1c002220:	02800410 	addi.w	$r16,$r0,1(0x1)
1c002224:	2880008e 	ld.w	$r14,$r4,0
1c002228:	6c01ca05 	bgeu	$r16,$r5,456(0x1c8) # 1c0023f0 <find_minimum_position_32+0x1d0>
1c00222c:	001140af 	sub.w	$r15,$r5,$r16
1c002230:	03401de6 	andi	$r6,$r15,0x7
1c002234:	0280108c 	addi.w	$r12,$r4,4(0x4)
1c002238:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00223c:	00150004 	move	$r4,$r0
1c002240:	5800bcc0 	beq	$r6,$r0,188(0xbc) # 1c0022fc <find_minimum_position_32+0xdc>
1c002244:	58009cd0 	beq	$r6,$r16,156(0x9c) # 1c0022e0 <find_minimum_position_32+0xc0>
1c002248:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00224c:	580084c7 	beq	$r6,$r7,132(0x84) # 1c0022d0 <find_minimum_position_32+0xb0>
1c002250:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c002254:	58006cc8 	beq	$r6,$r8,108(0x6c) # 1c0022c0 <find_minimum_position_32+0xa0>
1c002258:	02801009 	addi.w	$r9,$r0,4(0x4)
1c00225c:	58004cc9 	beq	$r6,$r9,76(0x4c) # 1c0022a8 <find_minimum_position_32+0x88>
1c002260:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c002264:	580034ca 	beq	$r6,$r10,52(0x34) # 1c002298 <find_minimum_position_32+0x78>
1c002268:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c00226c:	58001ccb 	beq	$r6,$r11,28(0x1c) # 1c002288 <find_minimum_position_32+0x68>
1c002270:	2880018d 	ld.w	$r13,$r12,0
1c002274:	64000dae 	bge	$r13,$r14,12(0xc) # 1c002280 <find_minimum_position_32+0x60>
1c002278:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00227c:	001501ae 	move	$r14,$r13
1c002280:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c002284:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002288:	28800191 	ld.w	$r17,$r12,0
1c00228c:	6001562e 	blt	$r17,$r14,340(0x154) # 1c0023e0 <find_minimum_position_32+0x1c0>
1c002290:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002294:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002298:	28800192 	ld.w	$r18,$r12,0
1c00229c:	6001364e 	blt	$r18,$r14,308(0x134) # 1c0023d0 <find_minimum_position_32+0x1b0>
1c0022a0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0022a4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022a8:	28800193 	ld.w	$r19,$r12,0
1c0022ac:	64000e6e 	bge	$r19,$r14,12(0xc) # 1c0022b8 <find_minimum_position_32+0x98>
1c0022b0:	001501a4 	move	$r4,$r13
1c0022b4:	0015026e 	move	$r14,$r19
1c0022b8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0022bc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022c0:	28800194 	ld.w	$r20,$r12,0
1c0022c4:	6000fe8e 	blt	$r20,$r14,252(0xfc) # 1c0023c0 <find_minimum_position_32+0x1a0>
1c0022c8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0022cc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022d0:	28800190 	ld.w	$r16,$r12,0
1c0022d4:	6000de0e 	blt	$r16,$r14,220(0xdc) # 1c0023b0 <find_minimum_position_32+0x190>
1c0022d8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0022dc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022e0:	2880018f 	ld.w	$r15,$r12,0
1c0022e4:	64000dee 	bge	$r15,$r14,12(0xc) # 1c0022f0 <find_minimum_position_32+0xd0>
1c0022e8:	001501a4 	move	$r4,$r13
1c0022ec:	001501ee 	move	$r14,$r15
1c0022f0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0022f4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022f8:	5800f4ad 	beq	$r5,$r13,244(0xf4) # 1c0023ec <find_minimum_position_32+0x1cc>
1c0022fc:	28800186 	ld.w	$r6,$r12,0
1c002300:	64000cce 	bge	$r6,$r14,12(0xc) # 1c00230c <find_minimum_position_32+0xec>
1c002304:	001501a4 	move	$r4,$r13
1c002308:	001500ce 	move	$r14,$r6
1c00230c:	28801187 	ld.w	$r7,$r12,4(0x4)
1c002310:	028005a8 	addi.w	$r8,$r13,1(0x1)
1c002314:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002318:	64000cee 	bge	$r7,$r14,12(0xc) # 1c002324 <find_minimum_position_32+0x104>
1c00231c:	00150104 	move	$r4,$r8
1c002320:	001500ee 	move	$r14,$r7
1c002324:	28801189 	ld.w	$r9,$r12,4(0x4)
1c002328:	0280050a 	addi.w	$r10,$r8,1(0x1)
1c00232c:	64000d2e 	bge	$r9,$r14,12(0xc) # 1c002338 <find_minimum_position_32+0x118>
1c002330:	00150144 	move	$r4,$r10
1c002334:	0015012e 	move	$r14,$r9
1c002338:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c00233c:	0280090d 	addi.w	$r13,$r8,2(0x2)
1c002340:	64000d6e 	bge	$r11,$r14,12(0xc) # 1c00234c <find_minimum_position_32+0x12c>
1c002344:	001501a4 	move	$r4,$r13
1c002348:	0015016e 	move	$r14,$r11
1c00234c:	28803191 	ld.w	$r17,$r12,12(0xc)
1c002350:	02800d12 	addi.w	$r18,$r8,3(0x3)
1c002354:	64000e2e 	bge	$r17,$r14,12(0xc) # 1c002360 <find_minimum_position_32+0x140>
1c002358:	00150244 	move	$r4,$r18
1c00235c:	0015022e 	move	$r14,$r17
1c002360:	28804193 	ld.w	$r19,$r12,16(0x10)
1c002364:	02801114 	addi.w	$r20,$r8,4(0x4)
1c002368:	64000e6e 	bge	$r19,$r14,12(0xc) # 1c002374 <find_minimum_position_32+0x154>
1c00236c:	00150284 	move	$r4,$r20
1c002370:	0015026e 	move	$r14,$r19
1c002374:	2880518f 	ld.w	$r15,$r12,20(0x14)
1c002378:	02801510 	addi.w	$r16,$r8,5(0x5)
1c00237c:	64000dee 	bge	$r15,$r14,12(0xc) # 1c002388 <find_minimum_position_32+0x168>
1c002380:	00150204 	move	$r4,$r16
1c002384:	001501ee 	move	$r14,$r15
1c002388:	28806186 	ld.w	$r6,$r12,24(0x18)
1c00238c:	02801907 	addi.w	$r7,$r8,6(0x6)
1c002390:	64000cce 	bge	$r6,$r14,12(0xc) # 1c00239c <find_minimum_position_32+0x17c>
1c002394:	001500e4 	move	$r4,$r7
1c002398:	001500ce 	move	$r14,$r6
1c00239c:	02801d0d 	addi.w	$r13,$r8,7(0x7)
1c0023a0:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c0023a4:	5fff58ad 	bne	$r5,$r13,-168(0x3ff58) # 1c0022fc <find_minimum_position_32+0xdc>
1c0023a8:	4c000020 	jirl	$r0,$r1,0
1c0023ac:	03400000 	andi	$r0,$r0,0x0
1c0023b0:	001501a4 	move	$r4,$r13
1c0023b4:	0015020e 	move	$r14,$r16
1c0023b8:	53ff23ff 	b	-224(0xfffff20) # 1c0022d8 <find_minimum_position_32+0xb8>
1c0023bc:	03400000 	andi	$r0,$r0,0x0
1c0023c0:	001501a4 	move	$r4,$r13
1c0023c4:	0015028e 	move	$r14,$r20
1c0023c8:	53ff03ff 	b	-256(0xfffff00) # 1c0022c8 <find_minimum_position_32+0xa8>
1c0023cc:	03400000 	andi	$r0,$r0,0x0
1c0023d0:	001501a4 	move	$r4,$r13
1c0023d4:	0015024e 	move	$r14,$r18
1c0023d8:	53fecbff 	b	-312(0xffffec8) # 1c0022a0 <find_minimum_position_32+0x80>
1c0023dc:	03400000 	andi	$r0,$r0,0x0
1c0023e0:	001501a4 	move	$r4,$r13
1c0023e4:	0015022e 	move	$r14,$r17
1c0023e8:	53feabff 	b	-344(0xffffea8) # 1c002290 <find_minimum_position_32+0x70>
1c0023ec:	4c000020 	jirl	$r0,$r1,0
1c0023f0:	00150004 	move	$r4,$r0
1c0023f4:	4c000020 	jirl	$r0,$r1,0
1c0023f8:	03400000 	andi	$r0,$r0,0x0
1c0023fc:	03400000 	andi	$r0,$r0,0x0

1c002400 <find_minimum_position_u32>:
find_minimum_position_u32():
1c002400:	02800410 	addi.w	$r16,$r0,1(0x1)
1c002404:	2880008e 	ld.w	$r14,$r4,0
1c002408:	6c01ca05 	bgeu	$r16,$r5,456(0x1c8) # 1c0025d0 <find_minimum_position_u32+0x1d0>
1c00240c:	001140af 	sub.w	$r15,$r5,$r16
1c002410:	03401de6 	andi	$r6,$r15,0x7
1c002414:	0280108c 	addi.w	$r12,$r4,4(0x4)
1c002418:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00241c:	00150004 	move	$r4,$r0
1c002420:	5800bcc0 	beq	$r6,$r0,188(0xbc) # 1c0024dc <find_minimum_position_u32+0xdc>
1c002424:	58009cd0 	beq	$r6,$r16,156(0x9c) # 1c0024c0 <find_minimum_position_u32+0xc0>
1c002428:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00242c:	580084c7 	beq	$r6,$r7,132(0x84) # 1c0024b0 <find_minimum_position_u32+0xb0>
1c002430:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c002434:	58006cc8 	beq	$r6,$r8,108(0x6c) # 1c0024a0 <find_minimum_position_u32+0xa0>
1c002438:	02801009 	addi.w	$r9,$r0,4(0x4)
1c00243c:	58004cc9 	beq	$r6,$r9,76(0x4c) # 1c002488 <find_minimum_position_u32+0x88>
1c002440:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c002444:	580034ca 	beq	$r6,$r10,52(0x34) # 1c002478 <find_minimum_position_u32+0x78>
1c002448:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c00244c:	58001ccb 	beq	$r6,$r11,28(0x1c) # 1c002468 <find_minimum_position_u32+0x68>
1c002450:	2880018d 	ld.w	$r13,$r12,0
1c002454:	6c000dae 	bgeu	$r13,$r14,12(0xc) # 1c002460 <find_minimum_position_u32+0x60>
1c002458:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00245c:	001501ae 	move	$r14,$r13
1c002460:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c002464:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002468:	28800191 	ld.w	$r17,$r12,0
1c00246c:	6801562e 	bltu	$r17,$r14,340(0x154) # 1c0025c0 <find_minimum_position_u32+0x1c0>
1c002470:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002474:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002478:	28800192 	ld.w	$r18,$r12,0
1c00247c:	6801364e 	bltu	$r18,$r14,308(0x134) # 1c0025b0 <find_minimum_position_u32+0x1b0>
1c002480:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002484:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002488:	28800193 	ld.w	$r19,$r12,0
1c00248c:	6c000e6e 	bgeu	$r19,$r14,12(0xc) # 1c002498 <find_minimum_position_u32+0x98>
1c002490:	001501a4 	move	$r4,$r13
1c002494:	0015026e 	move	$r14,$r19
1c002498:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00249c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0024a0:	28800194 	ld.w	$r20,$r12,0
1c0024a4:	6800fe8e 	bltu	$r20,$r14,252(0xfc) # 1c0025a0 <find_minimum_position_u32+0x1a0>
1c0024a8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0024ac:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0024b0:	28800190 	ld.w	$r16,$r12,0
1c0024b4:	6800de0e 	bltu	$r16,$r14,220(0xdc) # 1c002590 <find_minimum_position_u32+0x190>
1c0024b8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0024bc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0024c0:	2880018f 	ld.w	$r15,$r12,0
1c0024c4:	6c000dee 	bgeu	$r15,$r14,12(0xc) # 1c0024d0 <find_minimum_position_u32+0xd0>
1c0024c8:	001501a4 	move	$r4,$r13
1c0024cc:	001501ee 	move	$r14,$r15
1c0024d0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0024d4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0024d8:	5800f4ad 	beq	$r5,$r13,244(0xf4) # 1c0025cc <find_minimum_position_u32+0x1cc>
1c0024dc:	28800186 	ld.w	$r6,$r12,0
1c0024e0:	6c000cce 	bgeu	$r6,$r14,12(0xc) # 1c0024ec <find_minimum_position_u32+0xec>
1c0024e4:	001501a4 	move	$r4,$r13
1c0024e8:	001500ce 	move	$r14,$r6
1c0024ec:	28801187 	ld.w	$r7,$r12,4(0x4)
1c0024f0:	028005a8 	addi.w	$r8,$r13,1(0x1)
1c0024f4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0024f8:	6c000cee 	bgeu	$r7,$r14,12(0xc) # 1c002504 <find_minimum_position_u32+0x104>
1c0024fc:	00150104 	move	$r4,$r8
1c002500:	001500ee 	move	$r14,$r7
1c002504:	28801189 	ld.w	$r9,$r12,4(0x4)
1c002508:	0280050a 	addi.w	$r10,$r8,1(0x1)
1c00250c:	6c000d2e 	bgeu	$r9,$r14,12(0xc) # 1c002518 <find_minimum_position_u32+0x118>
1c002510:	00150144 	move	$r4,$r10
1c002514:	0015012e 	move	$r14,$r9
1c002518:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c00251c:	0280090d 	addi.w	$r13,$r8,2(0x2)
1c002520:	6c000d6e 	bgeu	$r11,$r14,12(0xc) # 1c00252c <find_minimum_position_u32+0x12c>
1c002524:	001501a4 	move	$r4,$r13
1c002528:	0015016e 	move	$r14,$r11
1c00252c:	28803191 	ld.w	$r17,$r12,12(0xc)
1c002530:	02800d12 	addi.w	$r18,$r8,3(0x3)
1c002534:	6c000e2e 	bgeu	$r17,$r14,12(0xc) # 1c002540 <find_minimum_position_u32+0x140>
1c002538:	00150244 	move	$r4,$r18
1c00253c:	0015022e 	move	$r14,$r17
1c002540:	28804193 	ld.w	$r19,$r12,16(0x10)
1c002544:	02801114 	addi.w	$r20,$r8,4(0x4)
1c002548:	6c000e6e 	bgeu	$r19,$r14,12(0xc) # 1c002554 <find_minimum_position_u32+0x154>
1c00254c:	00150284 	move	$r4,$r20
1c002550:	0015026e 	move	$r14,$r19
1c002554:	2880518f 	ld.w	$r15,$r12,20(0x14)
1c002558:	02801510 	addi.w	$r16,$r8,5(0x5)
1c00255c:	6c000dee 	bgeu	$r15,$r14,12(0xc) # 1c002568 <find_minimum_position_u32+0x168>
1c002560:	00150204 	move	$r4,$r16
1c002564:	001501ee 	move	$r14,$r15
1c002568:	28806186 	ld.w	$r6,$r12,24(0x18)
1c00256c:	02801907 	addi.w	$r7,$r8,6(0x6)
1c002570:	6c000cce 	bgeu	$r6,$r14,12(0xc) # 1c00257c <find_minimum_position_u32+0x17c>
1c002574:	001500e4 	move	$r4,$r7
1c002578:	001500ce 	move	$r14,$r6
1c00257c:	02801d0d 	addi.w	$r13,$r8,7(0x7)
1c002580:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c002584:	5fff58ad 	bne	$r5,$r13,-168(0x3ff58) # 1c0024dc <find_minimum_position_u32+0xdc>
1c002588:	4c000020 	jirl	$r0,$r1,0
1c00258c:	03400000 	andi	$r0,$r0,0x0
1c002590:	001501a4 	move	$r4,$r13
1c002594:	0015020e 	move	$r14,$r16
1c002598:	53ff23ff 	b	-224(0xfffff20) # 1c0024b8 <find_minimum_position_u32+0xb8>
1c00259c:	03400000 	andi	$r0,$r0,0x0
1c0025a0:	001501a4 	move	$r4,$r13
1c0025a4:	0015028e 	move	$r14,$r20
1c0025a8:	53ff03ff 	b	-256(0xfffff00) # 1c0024a8 <find_minimum_position_u32+0xa8>
1c0025ac:	03400000 	andi	$r0,$r0,0x0
1c0025b0:	001501a4 	move	$r4,$r13
1c0025b4:	0015024e 	move	$r14,$r18
1c0025b8:	53fecbff 	b	-312(0xffffec8) # 1c002480 <find_minimum_position_u32+0x80>
1c0025bc:	03400000 	andi	$r0,$r0,0x0
1c0025c0:	001501a4 	move	$r4,$r13
1c0025c4:	0015022e 	move	$r14,$r17
1c0025c8:	53feabff 	b	-344(0xffffea8) # 1c002470 <find_minimum_position_u32+0x70>
1c0025cc:	4c000020 	jirl	$r0,$r1,0
1c0025d0:	00150004 	move	$r4,$r0
1c0025d4:	4c000020 	jirl	$r0,$r1,0
1c0025d8:	03400000 	andi	$r0,$r0,0x0
1c0025dc:	03400000 	andi	$r0,$r0,0x0

1c0025e0 <find_maximum_position_8>:
find_maximum_position_8():
1c0025e0:	02800410 	addi.w	$r16,$r0,1(0x1)
1c0025e4:	0015008e 	move	$r14,$r4
1c0025e8:	2800008d 	ld.b	$r13,$r4,0
1c0025ec:	6c01d605 	bgeu	$r16,$r5,468(0x1d4) # 1c0027c0 <find_maximum_position_8+0x1e0>
1c0025f0:	001140af 	sub.w	$r15,$r5,$r16
1c0025f4:	03401de6 	andi	$r6,$r15,0x7
1c0025f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0025fc:	00150004 	move	$r4,$r0
1c002600:	5800b8c0 	beq	$r6,$r0,184(0xb8) # 1c0026b8 <find_maximum_position_8+0xd8>
1c002604:	580098d0 	beq	$r6,$r16,152(0x98) # 1c00269c <find_maximum_position_8+0xbc>
1c002608:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00260c:	580080c7 	beq	$r6,$r7,128(0x80) # 1c00268c <find_maximum_position_8+0xac>
1c002610:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c002614:	580068c8 	beq	$r6,$r8,104(0x68) # 1c00267c <find_maximum_position_8+0x9c>
1c002618:	02801009 	addi.w	$r9,$r0,4(0x4)
1c00261c:	580048c9 	beq	$r6,$r9,72(0x48) # 1c002664 <find_maximum_position_8+0x84>
1c002620:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c002624:	580030ca 	beq	$r6,$r10,48(0x30) # 1c002654 <find_maximum_position_8+0x74>
1c002628:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c00262c:	580018cb 	beq	$r6,$r11,24(0x18) # 1c002644 <find_maximum_position_8+0x64>
1c002630:	280005cc 	ld.b	$r12,$r14,1(0x1)
1c002634:	64000dac 	bge	$r13,$r12,12(0xc) # 1c002640 <find_maximum_position_8+0x60>
1c002638:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00263c:	0015018d 	move	$r13,$r12
1c002640:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002644:	001031d1 	add.w	$r17,$r14,$r12
1c002648:	28000232 	ld.b	$r18,$r17,0
1c00264c:	600165b2 	blt	$r13,$r18,356(0x164) # 1c0027b0 <find_maximum_position_8+0x1d0>
1c002650:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002654:	001031d3 	add.w	$r19,$r14,$r12
1c002658:	28000274 	ld.b	$r20,$r19,0
1c00265c:	600145b4 	blt	$r13,$r20,324(0x144) # 1c0027a0 <find_maximum_position_8+0x1c0>
1c002660:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002664:	001031d0 	add.w	$r16,$r14,$r12
1c002668:	2800020f 	ld.b	$r15,$r16,0
1c00266c:	64000daf 	bge	$r13,$r15,12(0xc) # 1c002678 <find_maximum_position_8+0x98>
1c002670:	00150184 	move	$r4,$r12
1c002674:	001501ed 	move	$r13,$r15
1c002678:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00267c:	001031c6 	add.w	$r6,$r14,$r12
1c002680:	280000c7 	ld.b	$r7,$r6,0
1c002684:	60010da7 	blt	$r13,$r7,268(0x10c) # 1c002790 <find_maximum_position_8+0x1b0>
1c002688:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00268c:	001031c8 	add.w	$r8,$r14,$r12
1c002690:	28000109 	ld.b	$r9,$r8,0
1c002694:	6000eda9 	blt	$r13,$r9,236(0xec) # 1c002780 <find_maximum_position_8+0x1a0>
1c002698:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00269c:	001031ca 	add.w	$r10,$r14,$r12
1c0026a0:	2800014b 	ld.b	$r11,$r10,0
1c0026a4:	64000dab 	bge	$r13,$r11,12(0xc) # 1c0026b0 <find_maximum_position_8+0xd0>
1c0026a8:	00150184 	move	$r4,$r12
1c0026ac:	0015016d 	move	$r13,$r11
1c0026b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0026b4:	580108ac 	beq	$r5,$r12,264(0x108) # 1c0027bc <find_maximum_position_8+0x1dc>
1c0026b8:	001031d1 	add.w	$r17,$r14,$r12
1c0026bc:	28000232 	ld.b	$r18,$r17,0
1c0026c0:	64000db2 	bge	$r13,$r18,12(0xc) # 1c0026cc <find_maximum_position_8+0xec>
1c0026c4:	00150184 	move	$r4,$r12
1c0026c8:	0015024d 	move	$r13,$r18
1c0026cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0026d0:	001031d3 	add.w	$r19,$r14,$r12
1c0026d4:	28000274 	ld.b	$r20,$r19,0
1c0026d8:	64000db4 	bge	$r13,$r20,12(0xc) # 1c0026e4 <find_maximum_position_8+0x104>
1c0026dc:	00150184 	move	$r4,$r12
1c0026e0:	0015028d 	move	$r13,$r20
1c0026e4:	02800590 	addi.w	$r16,$r12,1(0x1)
1c0026e8:	001041cf 	add.w	$r15,$r14,$r16
1c0026ec:	280001e6 	ld.b	$r6,$r15,0
1c0026f0:	64000da6 	bge	$r13,$r6,12(0xc) # 1c0026fc <find_maximum_position_8+0x11c>
1c0026f4:	00150204 	move	$r4,$r16
1c0026f8:	001500cd 	move	$r13,$r6
1c0026fc:	02800987 	addi.w	$r7,$r12,2(0x2)
1c002700:	00101dc8 	add.w	$r8,$r14,$r7
1c002704:	28000109 	ld.b	$r9,$r8,0
1c002708:	64000da9 	bge	$r13,$r9,12(0xc) # 1c002714 <find_maximum_position_8+0x134>
1c00270c:	001500e4 	move	$r4,$r7
1c002710:	0015012d 	move	$r13,$r9
1c002714:	02800d8a 	addi.w	$r10,$r12,3(0x3)
1c002718:	001029cb 	add.w	$r11,$r14,$r10
1c00271c:	28000171 	ld.b	$r17,$r11,0
1c002720:	64000db1 	bge	$r13,$r17,12(0xc) # 1c00272c <find_maximum_position_8+0x14c>
1c002724:	00150144 	move	$r4,$r10
1c002728:	0015022d 	move	$r13,$r17
1c00272c:	02801192 	addi.w	$r18,$r12,4(0x4)
1c002730:	001049d3 	add.w	$r19,$r14,$r18
1c002734:	28000274 	ld.b	$r20,$r19,0
1c002738:	64000db4 	bge	$r13,$r20,12(0xc) # 1c002744 <find_maximum_position_8+0x164>
1c00273c:	00150244 	move	$r4,$r18
1c002740:	0015028d 	move	$r13,$r20
1c002744:	02801590 	addi.w	$r16,$r12,5(0x5)
1c002748:	001041cf 	add.w	$r15,$r14,$r16
1c00274c:	280001e6 	ld.b	$r6,$r15,0
1c002750:	64000da6 	bge	$r13,$r6,12(0xc) # 1c00275c <find_maximum_position_8+0x17c>
1c002754:	00150204 	move	$r4,$r16
1c002758:	001500cd 	move	$r13,$r6
1c00275c:	02801987 	addi.w	$r7,$r12,6(0x6)
1c002760:	00101dc8 	add.w	$r8,$r14,$r7
1c002764:	28000109 	ld.b	$r9,$r8,0
1c002768:	64000da9 	bge	$r13,$r9,12(0xc) # 1c002774 <find_maximum_position_8+0x194>
1c00276c:	001500e4 	move	$r4,$r7
1c002770:	0015012d 	move	$r13,$r9
1c002774:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c002778:	5fff40ac 	bne	$r5,$r12,-192(0x3ff40) # 1c0026b8 <find_maximum_position_8+0xd8>
1c00277c:	4c000020 	jirl	$r0,$r1,0
1c002780:	00150184 	move	$r4,$r12
1c002784:	0015012d 	move	$r13,$r9
1c002788:	53ff13ff 	b	-240(0xfffff10) # 1c002698 <find_maximum_position_8+0xb8>
1c00278c:	03400000 	andi	$r0,$r0,0x0
1c002790:	00150184 	move	$r4,$r12
1c002794:	001500ed 	move	$r13,$r7
1c002798:	53fef3ff 	b	-272(0xffffef0) # 1c002688 <find_maximum_position_8+0xa8>
1c00279c:	03400000 	andi	$r0,$r0,0x0
1c0027a0:	00150184 	move	$r4,$r12
1c0027a4:	0015028d 	move	$r13,$r20
1c0027a8:	53febbff 	b	-328(0xffffeb8) # 1c002660 <find_maximum_position_8+0x80>
1c0027ac:	03400000 	andi	$r0,$r0,0x0
1c0027b0:	00150184 	move	$r4,$r12
1c0027b4:	0015024d 	move	$r13,$r18
1c0027b8:	53fe9bff 	b	-360(0xffffe98) # 1c002650 <find_maximum_position_8+0x70>
1c0027bc:	4c000020 	jirl	$r0,$r1,0
1c0027c0:	00150004 	move	$r4,$r0
1c0027c4:	4c000020 	jirl	$r0,$r1,0
1c0027c8:	03400000 	andi	$r0,$r0,0x0
1c0027cc:	03400000 	andi	$r0,$r0,0x0

1c0027d0 <find_maximum_position_u8>:
find_maximum_position_u8():
1c0027d0:	02800410 	addi.w	$r16,$r0,1(0x1)
1c0027d4:	0015008e 	move	$r14,$r4
1c0027d8:	2a00008d 	ld.bu	$r13,$r4,0
1c0027dc:	6c01d605 	bgeu	$r16,$r5,468(0x1d4) # 1c0029b0 <find_maximum_position_u8+0x1e0>
1c0027e0:	001140af 	sub.w	$r15,$r5,$r16
1c0027e4:	03401de6 	andi	$r6,$r15,0x7
1c0027e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0027ec:	00150004 	move	$r4,$r0
1c0027f0:	5800b8c0 	beq	$r6,$r0,184(0xb8) # 1c0028a8 <find_maximum_position_u8+0xd8>
1c0027f4:	580098d0 	beq	$r6,$r16,152(0x98) # 1c00288c <find_maximum_position_u8+0xbc>
1c0027f8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0027fc:	580080c7 	beq	$r6,$r7,128(0x80) # 1c00287c <find_maximum_position_u8+0xac>
1c002800:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c002804:	580068c8 	beq	$r6,$r8,104(0x68) # 1c00286c <find_maximum_position_u8+0x9c>
1c002808:	02801009 	addi.w	$r9,$r0,4(0x4)
1c00280c:	580048c9 	beq	$r6,$r9,72(0x48) # 1c002854 <find_maximum_position_u8+0x84>
1c002810:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c002814:	580030ca 	beq	$r6,$r10,48(0x30) # 1c002844 <find_maximum_position_u8+0x74>
1c002818:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c00281c:	580018cb 	beq	$r6,$r11,24(0x18) # 1c002834 <find_maximum_position_u8+0x64>
1c002820:	2a0005cc 	ld.bu	$r12,$r14,1(0x1)
1c002824:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c002830 <find_maximum_position_u8+0x60>
1c002828:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00282c:	0015018d 	move	$r13,$r12
1c002830:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002834:	001031d1 	add.w	$r17,$r14,$r12
1c002838:	2a000232 	ld.bu	$r18,$r17,0
1c00283c:	680165b2 	bltu	$r13,$r18,356(0x164) # 1c0029a0 <find_maximum_position_u8+0x1d0>
1c002840:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002844:	001031d3 	add.w	$r19,$r14,$r12
1c002848:	2a000274 	ld.bu	$r20,$r19,0
1c00284c:	680145b4 	bltu	$r13,$r20,324(0x144) # 1c002990 <find_maximum_position_u8+0x1c0>
1c002850:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002854:	001031d0 	add.w	$r16,$r14,$r12
1c002858:	2a00020f 	ld.bu	$r15,$r16,0
1c00285c:	6c000daf 	bgeu	$r13,$r15,12(0xc) # 1c002868 <find_maximum_position_u8+0x98>
1c002860:	00150184 	move	$r4,$r12
1c002864:	001501ed 	move	$r13,$r15
1c002868:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00286c:	001031c6 	add.w	$r6,$r14,$r12
1c002870:	2a0000c7 	ld.bu	$r7,$r6,0
1c002874:	68010da7 	bltu	$r13,$r7,268(0x10c) # 1c002980 <find_maximum_position_u8+0x1b0>
1c002878:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00287c:	001031c8 	add.w	$r8,$r14,$r12
1c002880:	2a000109 	ld.bu	$r9,$r8,0
1c002884:	6800eda9 	bltu	$r13,$r9,236(0xec) # 1c002970 <find_maximum_position_u8+0x1a0>
1c002888:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00288c:	001031ca 	add.w	$r10,$r14,$r12
1c002890:	2a00014b 	ld.bu	$r11,$r10,0
1c002894:	6c000dab 	bgeu	$r13,$r11,12(0xc) # 1c0028a0 <find_maximum_position_u8+0xd0>
1c002898:	00150184 	move	$r4,$r12
1c00289c:	0015016d 	move	$r13,$r11
1c0028a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0028a4:	580108ac 	beq	$r5,$r12,264(0x108) # 1c0029ac <find_maximum_position_u8+0x1dc>
1c0028a8:	001031d1 	add.w	$r17,$r14,$r12
1c0028ac:	2a000232 	ld.bu	$r18,$r17,0
1c0028b0:	6c000db2 	bgeu	$r13,$r18,12(0xc) # 1c0028bc <find_maximum_position_u8+0xec>
1c0028b4:	00150184 	move	$r4,$r12
1c0028b8:	0015024d 	move	$r13,$r18
1c0028bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0028c0:	001031d3 	add.w	$r19,$r14,$r12
1c0028c4:	2a000274 	ld.bu	$r20,$r19,0
1c0028c8:	6c000db4 	bgeu	$r13,$r20,12(0xc) # 1c0028d4 <find_maximum_position_u8+0x104>
1c0028cc:	00150184 	move	$r4,$r12
1c0028d0:	0015028d 	move	$r13,$r20
1c0028d4:	02800590 	addi.w	$r16,$r12,1(0x1)
1c0028d8:	001041cf 	add.w	$r15,$r14,$r16
1c0028dc:	2a0001e6 	ld.bu	$r6,$r15,0
1c0028e0:	6c000da6 	bgeu	$r13,$r6,12(0xc) # 1c0028ec <find_maximum_position_u8+0x11c>
1c0028e4:	00150204 	move	$r4,$r16
1c0028e8:	001500cd 	move	$r13,$r6
1c0028ec:	02800987 	addi.w	$r7,$r12,2(0x2)
1c0028f0:	00101dc8 	add.w	$r8,$r14,$r7
1c0028f4:	2a000109 	ld.bu	$r9,$r8,0
1c0028f8:	6c000da9 	bgeu	$r13,$r9,12(0xc) # 1c002904 <find_maximum_position_u8+0x134>
1c0028fc:	001500e4 	move	$r4,$r7
1c002900:	0015012d 	move	$r13,$r9
1c002904:	02800d8a 	addi.w	$r10,$r12,3(0x3)
1c002908:	001029cb 	add.w	$r11,$r14,$r10
1c00290c:	2a000171 	ld.bu	$r17,$r11,0
1c002910:	6c000db1 	bgeu	$r13,$r17,12(0xc) # 1c00291c <find_maximum_position_u8+0x14c>
1c002914:	00150144 	move	$r4,$r10
1c002918:	0015022d 	move	$r13,$r17
1c00291c:	02801192 	addi.w	$r18,$r12,4(0x4)
1c002920:	001049d3 	add.w	$r19,$r14,$r18
1c002924:	2a000274 	ld.bu	$r20,$r19,0
1c002928:	6c000db4 	bgeu	$r13,$r20,12(0xc) # 1c002934 <find_maximum_position_u8+0x164>
1c00292c:	00150244 	move	$r4,$r18
1c002930:	0015028d 	move	$r13,$r20
1c002934:	02801590 	addi.w	$r16,$r12,5(0x5)
1c002938:	001041cf 	add.w	$r15,$r14,$r16
1c00293c:	2a0001e6 	ld.bu	$r6,$r15,0
1c002940:	6c000da6 	bgeu	$r13,$r6,12(0xc) # 1c00294c <find_maximum_position_u8+0x17c>
1c002944:	00150204 	move	$r4,$r16
1c002948:	001500cd 	move	$r13,$r6
1c00294c:	02801987 	addi.w	$r7,$r12,6(0x6)
1c002950:	00101dc8 	add.w	$r8,$r14,$r7
1c002954:	2a000109 	ld.bu	$r9,$r8,0
1c002958:	6c000da9 	bgeu	$r13,$r9,12(0xc) # 1c002964 <find_maximum_position_u8+0x194>
1c00295c:	001500e4 	move	$r4,$r7
1c002960:	0015012d 	move	$r13,$r9
1c002964:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c002968:	5fff40ac 	bne	$r5,$r12,-192(0x3ff40) # 1c0028a8 <find_maximum_position_u8+0xd8>
1c00296c:	4c000020 	jirl	$r0,$r1,0
1c002970:	00150184 	move	$r4,$r12
1c002974:	0015012d 	move	$r13,$r9
1c002978:	53ff13ff 	b	-240(0xfffff10) # 1c002888 <find_maximum_position_u8+0xb8>
1c00297c:	03400000 	andi	$r0,$r0,0x0
1c002980:	00150184 	move	$r4,$r12
1c002984:	001500ed 	move	$r13,$r7
1c002988:	53fef3ff 	b	-272(0xffffef0) # 1c002878 <find_maximum_position_u8+0xa8>
1c00298c:	03400000 	andi	$r0,$r0,0x0
1c002990:	00150184 	move	$r4,$r12
1c002994:	0015028d 	move	$r13,$r20
1c002998:	53febbff 	b	-328(0xffffeb8) # 1c002850 <find_maximum_position_u8+0x80>
1c00299c:	03400000 	andi	$r0,$r0,0x0
1c0029a0:	00150184 	move	$r4,$r12
1c0029a4:	0015024d 	move	$r13,$r18
1c0029a8:	53fe9bff 	b	-360(0xffffe98) # 1c002840 <find_maximum_position_u8+0x70>
1c0029ac:	4c000020 	jirl	$r0,$r1,0
1c0029b0:	00150004 	move	$r4,$r0
1c0029b4:	4c000020 	jirl	$r0,$r1,0
1c0029b8:	03400000 	andi	$r0,$r0,0x0
1c0029bc:	03400000 	andi	$r0,$r0,0x0

1c0029c0 <find_maximum_position_16>:
find_maximum_position_16():
1c0029c0:	02800410 	addi.w	$r16,$r0,1(0x1)
1c0029c4:	2840008e 	ld.h	$r14,$r4,0
1c0029c8:	6c01ca05 	bgeu	$r16,$r5,456(0x1c8) # 1c002b90 <find_maximum_position_16+0x1d0>
1c0029cc:	001140af 	sub.w	$r15,$r5,$r16
1c0029d0:	03401de6 	andi	$r6,$r15,0x7
1c0029d4:	0280088c 	addi.w	$r12,$r4,2(0x2)
1c0029d8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0029dc:	00150004 	move	$r4,$r0
1c0029e0:	5800bcc0 	beq	$r6,$r0,188(0xbc) # 1c002a9c <find_maximum_position_16+0xdc>
1c0029e4:	58009cd0 	beq	$r6,$r16,156(0x9c) # 1c002a80 <find_maximum_position_16+0xc0>
1c0029e8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0029ec:	580084c7 	beq	$r6,$r7,132(0x84) # 1c002a70 <find_maximum_position_16+0xb0>
1c0029f0:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c0029f4:	58006cc8 	beq	$r6,$r8,108(0x6c) # 1c002a60 <find_maximum_position_16+0xa0>
1c0029f8:	02801009 	addi.w	$r9,$r0,4(0x4)
1c0029fc:	58004cc9 	beq	$r6,$r9,76(0x4c) # 1c002a48 <find_maximum_position_16+0x88>
1c002a00:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c002a04:	580034ca 	beq	$r6,$r10,52(0x34) # 1c002a38 <find_maximum_position_16+0x78>
1c002a08:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c002a0c:	58001ccb 	beq	$r6,$r11,28(0x1c) # 1c002a28 <find_maximum_position_16+0x68>
1c002a10:	2840018d 	ld.h	$r13,$r12,0
1c002a14:	64000dcd 	bge	$r14,$r13,12(0xc) # 1c002a20 <find_maximum_position_16+0x60>
1c002a18:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002a1c:	001501ae 	move	$r14,$r13
1c002a20:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c002a24:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002a28:	28400191 	ld.h	$r17,$r12,0
1c002a2c:	600155d1 	blt	$r14,$r17,340(0x154) # 1c002b80 <find_maximum_position_16+0x1c0>
1c002a30:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a34:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002a38:	28400192 	ld.h	$r18,$r12,0
1c002a3c:	600135d2 	blt	$r14,$r18,308(0x134) # 1c002b70 <find_maximum_position_16+0x1b0>
1c002a40:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a44:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002a48:	28400193 	ld.h	$r19,$r12,0
1c002a4c:	64000dd3 	bge	$r14,$r19,12(0xc) # 1c002a58 <find_maximum_position_16+0x98>
1c002a50:	001501a4 	move	$r4,$r13
1c002a54:	0015026e 	move	$r14,$r19
1c002a58:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a5c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002a60:	28400194 	ld.h	$r20,$r12,0
1c002a64:	6000fdd4 	blt	$r14,$r20,252(0xfc) # 1c002b60 <find_maximum_position_16+0x1a0>
1c002a68:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a6c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002a70:	28400190 	ld.h	$r16,$r12,0
1c002a74:	6000ddd0 	blt	$r14,$r16,220(0xdc) # 1c002b50 <find_maximum_position_16+0x190>
1c002a78:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a7c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002a80:	2840018f 	ld.h	$r15,$r12,0
1c002a84:	64000dcf 	bge	$r14,$r15,12(0xc) # 1c002a90 <find_maximum_position_16+0xd0>
1c002a88:	001501a4 	move	$r4,$r13
1c002a8c:	001501ee 	move	$r14,$r15
1c002a90:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a94:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002a98:	5800f4ad 	beq	$r5,$r13,244(0xf4) # 1c002b8c <find_maximum_position_16+0x1cc>
1c002a9c:	28400186 	ld.h	$r6,$r12,0
1c002aa0:	64000dc6 	bge	$r14,$r6,12(0xc) # 1c002aac <find_maximum_position_16+0xec>
1c002aa4:	001501a4 	move	$r4,$r13
1c002aa8:	001500ce 	move	$r14,$r6
1c002aac:	28400987 	ld.h	$r7,$r12,2(0x2)
1c002ab0:	028005a8 	addi.w	$r8,$r13,1(0x1)
1c002ab4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002ab8:	64000dc7 	bge	$r14,$r7,12(0xc) # 1c002ac4 <find_maximum_position_16+0x104>
1c002abc:	00150104 	move	$r4,$r8
1c002ac0:	001500ee 	move	$r14,$r7
1c002ac4:	28400989 	ld.h	$r9,$r12,2(0x2)
1c002ac8:	0280050a 	addi.w	$r10,$r8,1(0x1)
1c002acc:	64000dc9 	bge	$r14,$r9,12(0xc) # 1c002ad8 <find_maximum_position_16+0x118>
1c002ad0:	00150144 	move	$r4,$r10
1c002ad4:	0015012e 	move	$r14,$r9
1c002ad8:	2840118b 	ld.h	$r11,$r12,4(0x4)
1c002adc:	0280090d 	addi.w	$r13,$r8,2(0x2)
1c002ae0:	64000dcb 	bge	$r14,$r11,12(0xc) # 1c002aec <find_maximum_position_16+0x12c>
1c002ae4:	001501a4 	move	$r4,$r13
1c002ae8:	0015016e 	move	$r14,$r11
1c002aec:	28401991 	ld.h	$r17,$r12,6(0x6)
1c002af0:	02800d12 	addi.w	$r18,$r8,3(0x3)
1c002af4:	64000dd1 	bge	$r14,$r17,12(0xc) # 1c002b00 <find_maximum_position_16+0x140>
1c002af8:	00150244 	move	$r4,$r18
1c002afc:	0015022e 	move	$r14,$r17
1c002b00:	28402193 	ld.h	$r19,$r12,8(0x8)
1c002b04:	02801114 	addi.w	$r20,$r8,4(0x4)
1c002b08:	64000dd3 	bge	$r14,$r19,12(0xc) # 1c002b14 <find_maximum_position_16+0x154>
1c002b0c:	00150284 	move	$r4,$r20
1c002b10:	0015026e 	move	$r14,$r19
1c002b14:	2840298f 	ld.h	$r15,$r12,10(0xa)
1c002b18:	02801510 	addi.w	$r16,$r8,5(0x5)
1c002b1c:	64000dcf 	bge	$r14,$r15,12(0xc) # 1c002b28 <find_maximum_position_16+0x168>
1c002b20:	00150204 	move	$r4,$r16
1c002b24:	001501ee 	move	$r14,$r15
1c002b28:	28403186 	ld.h	$r6,$r12,12(0xc)
1c002b2c:	02801907 	addi.w	$r7,$r8,6(0x6)
1c002b30:	64000dc6 	bge	$r14,$r6,12(0xc) # 1c002b3c <find_maximum_position_16+0x17c>
1c002b34:	001500e4 	move	$r4,$r7
1c002b38:	001500ce 	move	$r14,$r6
1c002b3c:	02801d0d 	addi.w	$r13,$r8,7(0x7)
1c002b40:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c002b44:	5fff58ad 	bne	$r5,$r13,-168(0x3ff58) # 1c002a9c <find_maximum_position_16+0xdc>
1c002b48:	4c000020 	jirl	$r0,$r1,0
1c002b4c:	03400000 	andi	$r0,$r0,0x0
1c002b50:	001501a4 	move	$r4,$r13
1c002b54:	0015020e 	move	$r14,$r16
1c002b58:	53ff23ff 	b	-224(0xfffff20) # 1c002a78 <find_maximum_position_16+0xb8>
1c002b5c:	03400000 	andi	$r0,$r0,0x0
1c002b60:	001501a4 	move	$r4,$r13
1c002b64:	0015028e 	move	$r14,$r20
1c002b68:	53ff03ff 	b	-256(0xfffff00) # 1c002a68 <find_maximum_position_16+0xa8>
1c002b6c:	03400000 	andi	$r0,$r0,0x0
1c002b70:	001501a4 	move	$r4,$r13
1c002b74:	0015024e 	move	$r14,$r18
1c002b78:	53fecbff 	b	-312(0xffffec8) # 1c002a40 <find_maximum_position_16+0x80>
1c002b7c:	03400000 	andi	$r0,$r0,0x0
1c002b80:	001501a4 	move	$r4,$r13
1c002b84:	0015022e 	move	$r14,$r17
1c002b88:	53feabff 	b	-344(0xffffea8) # 1c002a30 <find_maximum_position_16+0x70>
1c002b8c:	4c000020 	jirl	$r0,$r1,0
1c002b90:	00150004 	move	$r4,$r0
1c002b94:	4c000020 	jirl	$r0,$r1,0
1c002b98:	03400000 	andi	$r0,$r0,0x0
1c002b9c:	03400000 	andi	$r0,$r0,0x0

1c002ba0 <find_maximum_position_u16>:
find_maximum_position_u16():
1c002ba0:	02800410 	addi.w	$r16,$r0,1(0x1)
1c002ba4:	2a40008e 	ld.hu	$r14,$r4,0
1c002ba8:	6c01ca05 	bgeu	$r16,$r5,456(0x1c8) # 1c002d70 <find_maximum_position_u16+0x1d0>
1c002bac:	001140af 	sub.w	$r15,$r5,$r16
1c002bb0:	03401de6 	andi	$r6,$r15,0x7
1c002bb4:	0280088c 	addi.w	$r12,$r4,2(0x2)
1c002bb8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002bbc:	00150004 	move	$r4,$r0
1c002bc0:	5800bcc0 	beq	$r6,$r0,188(0xbc) # 1c002c7c <find_maximum_position_u16+0xdc>
1c002bc4:	58009cd0 	beq	$r6,$r16,156(0x9c) # 1c002c60 <find_maximum_position_u16+0xc0>
1c002bc8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002bcc:	580084c7 	beq	$r6,$r7,132(0x84) # 1c002c50 <find_maximum_position_u16+0xb0>
1c002bd0:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c002bd4:	58006cc8 	beq	$r6,$r8,108(0x6c) # 1c002c40 <find_maximum_position_u16+0xa0>
1c002bd8:	02801009 	addi.w	$r9,$r0,4(0x4)
1c002bdc:	58004cc9 	beq	$r6,$r9,76(0x4c) # 1c002c28 <find_maximum_position_u16+0x88>
1c002be0:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c002be4:	580034ca 	beq	$r6,$r10,52(0x34) # 1c002c18 <find_maximum_position_u16+0x78>
1c002be8:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c002bec:	58001ccb 	beq	$r6,$r11,28(0x1c) # 1c002c08 <find_maximum_position_u16+0x68>
1c002bf0:	2a40018d 	ld.hu	$r13,$r12,0
1c002bf4:	6c000dcd 	bgeu	$r14,$r13,12(0xc) # 1c002c00 <find_maximum_position_u16+0x60>
1c002bf8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002bfc:	001501ae 	move	$r14,$r13
1c002c00:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c002c04:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002c08:	2a400191 	ld.hu	$r17,$r12,0
1c002c0c:	680155d1 	bltu	$r14,$r17,340(0x154) # 1c002d60 <find_maximum_position_u16+0x1c0>
1c002c10:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002c14:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002c18:	2a400192 	ld.hu	$r18,$r12,0
1c002c1c:	680135d2 	bltu	$r14,$r18,308(0x134) # 1c002d50 <find_maximum_position_u16+0x1b0>
1c002c20:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002c24:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002c28:	2a400193 	ld.hu	$r19,$r12,0
1c002c2c:	6c000dd3 	bgeu	$r14,$r19,12(0xc) # 1c002c38 <find_maximum_position_u16+0x98>
1c002c30:	001501a4 	move	$r4,$r13
1c002c34:	0015026e 	move	$r14,$r19
1c002c38:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002c3c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002c40:	2a400194 	ld.hu	$r20,$r12,0
1c002c44:	6800fdd4 	bltu	$r14,$r20,252(0xfc) # 1c002d40 <find_maximum_position_u16+0x1a0>
1c002c48:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002c4c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002c50:	2a400190 	ld.hu	$r16,$r12,0
1c002c54:	6800ddd0 	bltu	$r14,$r16,220(0xdc) # 1c002d30 <find_maximum_position_u16+0x190>
1c002c58:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002c5c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002c60:	2a40018f 	ld.hu	$r15,$r12,0
1c002c64:	6c000dcf 	bgeu	$r14,$r15,12(0xc) # 1c002c70 <find_maximum_position_u16+0xd0>
1c002c68:	001501a4 	move	$r4,$r13
1c002c6c:	001501ee 	move	$r14,$r15
1c002c70:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002c74:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002c78:	5800f4ad 	beq	$r5,$r13,244(0xf4) # 1c002d6c <find_maximum_position_u16+0x1cc>
1c002c7c:	2a400186 	ld.hu	$r6,$r12,0
1c002c80:	6c000dc6 	bgeu	$r14,$r6,12(0xc) # 1c002c8c <find_maximum_position_u16+0xec>
1c002c84:	001501a4 	move	$r4,$r13
1c002c88:	001500ce 	move	$r14,$r6
1c002c8c:	2a400987 	ld.hu	$r7,$r12,2(0x2)
1c002c90:	028005a8 	addi.w	$r8,$r13,1(0x1)
1c002c94:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002c98:	6c000dc7 	bgeu	$r14,$r7,12(0xc) # 1c002ca4 <find_maximum_position_u16+0x104>
1c002c9c:	00150104 	move	$r4,$r8
1c002ca0:	001500ee 	move	$r14,$r7
1c002ca4:	2a400989 	ld.hu	$r9,$r12,2(0x2)
1c002ca8:	0280050a 	addi.w	$r10,$r8,1(0x1)
1c002cac:	6c000dc9 	bgeu	$r14,$r9,12(0xc) # 1c002cb8 <find_maximum_position_u16+0x118>
1c002cb0:	00150144 	move	$r4,$r10
1c002cb4:	0015012e 	move	$r14,$r9
1c002cb8:	2a40118b 	ld.hu	$r11,$r12,4(0x4)
1c002cbc:	0280090d 	addi.w	$r13,$r8,2(0x2)
1c002cc0:	6c000dcb 	bgeu	$r14,$r11,12(0xc) # 1c002ccc <find_maximum_position_u16+0x12c>
1c002cc4:	001501a4 	move	$r4,$r13
1c002cc8:	0015016e 	move	$r14,$r11
1c002ccc:	2a401991 	ld.hu	$r17,$r12,6(0x6)
1c002cd0:	02800d12 	addi.w	$r18,$r8,3(0x3)
1c002cd4:	6c000dd1 	bgeu	$r14,$r17,12(0xc) # 1c002ce0 <find_maximum_position_u16+0x140>
1c002cd8:	00150244 	move	$r4,$r18
1c002cdc:	0015022e 	move	$r14,$r17
1c002ce0:	2a402193 	ld.hu	$r19,$r12,8(0x8)
1c002ce4:	02801114 	addi.w	$r20,$r8,4(0x4)
1c002ce8:	6c000dd3 	bgeu	$r14,$r19,12(0xc) # 1c002cf4 <find_maximum_position_u16+0x154>
1c002cec:	00150284 	move	$r4,$r20
1c002cf0:	0015026e 	move	$r14,$r19
1c002cf4:	2a40298f 	ld.hu	$r15,$r12,10(0xa)
1c002cf8:	02801510 	addi.w	$r16,$r8,5(0x5)
1c002cfc:	6c000dcf 	bgeu	$r14,$r15,12(0xc) # 1c002d08 <find_maximum_position_u16+0x168>
1c002d00:	00150204 	move	$r4,$r16
1c002d04:	001501ee 	move	$r14,$r15
1c002d08:	2a403186 	ld.hu	$r6,$r12,12(0xc)
1c002d0c:	02801907 	addi.w	$r7,$r8,6(0x6)
1c002d10:	6c000dc6 	bgeu	$r14,$r6,12(0xc) # 1c002d1c <find_maximum_position_u16+0x17c>
1c002d14:	001500e4 	move	$r4,$r7
1c002d18:	001500ce 	move	$r14,$r6
1c002d1c:	02801d0d 	addi.w	$r13,$r8,7(0x7)
1c002d20:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c002d24:	5fff58ad 	bne	$r5,$r13,-168(0x3ff58) # 1c002c7c <find_maximum_position_u16+0xdc>
1c002d28:	4c000020 	jirl	$r0,$r1,0
1c002d2c:	03400000 	andi	$r0,$r0,0x0
1c002d30:	001501a4 	move	$r4,$r13
1c002d34:	0015020e 	move	$r14,$r16
1c002d38:	53ff23ff 	b	-224(0xfffff20) # 1c002c58 <find_maximum_position_u16+0xb8>
1c002d3c:	03400000 	andi	$r0,$r0,0x0
1c002d40:	001501a4 	move	$r4,$r13
1c002d44:	0015028e 	move	$r14,$r20
1c002d48:	53ff03ff 	b	-256(0xfffff00) # 1c002c48 <find_maximum_position_u16+0xa8>
1c002d4c:	03400000 	andi	$r0,$r0,0x0
1c002d50:	001501a4 	move	$r4,$r13
1c002d54:	0015024e 	move	$r14,$r18
1c002d58:	53fecbff 	b	-312(0xffffec8) # 1c002c20 <find_maximum_position_u16+0x80>
1c002d5c:	03400000 	andi	$r0,$r0,0x0
1c002d60:	001501a4 	move	$r4,$r13
1c002d64:	0015022e 	move	$r14,$r17
1c002d68:	53feabff 	b	-344(0xffffea8) # 1c002c10 <find_maximum_position_u16+0x70>
1c002d6c:	4c000020 	jirl	$r0,$r1,0
1c002d70:	00150004 	move	$r4,$r0
1c002d74:	4c000020 	jirl	$r0,$r1,0
1c002d78:	03400000 	andi	$r0,$r0,0x0
1c002d7c:	03400000 	andi	$r0,$r0,0x0

1c002d80 <find_maximum_position_32>:
find_maximum_position_32():
1c002d80:	02800410 	addi.w	$r16,$r0,1(0x1)
1c002d84:	2880008e 	ld.w	$r14,$r4,0
1c002d88:	6c01ca05 	bgeu	$r16,$r5,456(0x1c8) # 1c002f50 <find_maximum_position_32+0x1d0>
1c002d8c:	001140af 	sub.w	$r15,$r5,$r16
1c002d90:	03401de6 	andi	$r6,$r15,0x7
1c002d94:	0280108c 	addi.w	$r12,$r4,4(0x4)
1c002d98:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002d9c:	00150004 	move	$r4,$r0
1c002da0:	5800bcc0 	beq	$r6,$r0,188(0xbc) # 1c002e5c <find_maximum_position_32+0xdc>
1c002da4:	58009cd0 	beq	$r6,$r16,156(0x9c) # 1c002e40 <find_maximum_position_32+0xc0>
1c002da8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002dac:	580084c7 	beq	$r6,$r7,132(0x84) # 1c002e30 <find_maximum_position_32+0xb0>
1c002db0:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c002db4:	58006cc8 	beq	$r6,$r8,108(0x6c) # 1c002e20 <find_maximum_position_32+0xa0>
1c002db8:	02801009 	addi.w	$r9,$r0,4(0x4)
1c002dbc:	58004cc9 	beq	$r6,$r9,76(0x4c) # 1c002e08 <find_maximum_position_32+0x88>
1c002dc0:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c002dc4:	580034ca 	beq	$r6,$r10,52(0x34) # 1c002df8 <find_maximum_position_32+0x78>
1c002dc8:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c002dcc:	58001ccb 	beq	$r6,$r11,28(0x1c) # 1c002de8 <find_maximum_position_32+0x68>
1c002dd0:	2880018d 	ld.w	$r13,$r12,0
1c002dd4:	64000dcd 	bge	$r14,$r13,12(0xc) # 1c002de0 <find_maximum_position_32+0x60>
1c002dd8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002ddc:	001501ae 	move	$r14,$r13
1c002de0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c002de4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002de8:	28800191 	ld.w	$r17,$r12,0
1c002dec:	600155d1 	blt	$r14,$r17,340(0x154) # 1c002f40 <find_maximum_position_32+0x1c0>
1c002df0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002df4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002df8:	28800192 	ld.w	$r18,$r12,0
1c002dfc:	600135d2 	blt	$r14,$r18,308(0x134) # 1c002f30 <find_maximum_position_32+0x1b0>
1c002e00:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002e04:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002e08:	28800193 	ld.w	$r19,$r12,0
1c002e0c:	64000dd3 	bge	$r14,$r19,12(0xc) # 1c002e18 <find_maximum_position_32+0x98>
1c002e10:	001501a4 	move	$r4,$r13
1c002e14:	0015026e 	move	$r14,$r19
1c002e18:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002e1c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002e20:	28800194 	ld.w	$r20,$r12,0
1c002e24:	6000fdd4 	blt	$r14,$r20,252(0xfc) # 1c002f20 <find_maximum_position_32+0x1a0>
1c002e28:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002e2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002e30:	28800190 	ld.w	$r16,$r12,0
1c002e34:	6000ddd0 	blt	$r14,$r16,220(0xdc) # 1c002f10 <find_maximum_position_32+0x190>
1c002e38:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002e3c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002e40:	2880018f 	ld.w	$r15,$r12,0
1c002e44:	64000dcf 	bge	$r14,$r15,12(0xc) # 1c002e50 <find_maximum_position_32+0xd0>
1c002e48:	001501a4 	move	$r4,$r13
1c002e4c:	001501ee 	move	$r14,$r15
1c002e50:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002e54:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002e58:	5800f4ad 	beq	$r5,$r13,244(0xf4) # 1c002f4c <find_maximum_position_32+0x1cc>
1c002e5c:	28800186 	ld.w	$r6,$r12,0
1c002e60:	64000dc6 	bge	$r14,$r6,12(0xc) # 1c002e6c <find_maximum_position_32+0xec>
1c002e64:	001501a4 	move	$r4,$r13
1c002e68:	001500ce 	move	$r14,$r6
1c002e6c:	28801187 	ld.w	$r7,$r12,4(0x4)
1c002e70:	028005a8 	addi.w	$r8,$r13,1(0x1)
1c002e74:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002e78:	64000dc7 	bge	$r14,$r7,12(0xc) # 1c002e84 <find_maximum_position_32+0x104>
1c002e7c:	00150104 	move	$r4,$r8
1c002e80:	001500ee 	move	$r14,$r7
1c002e84:	28801189 	ld.w	$r9,$r12,4(0x4)
1c002e88:	0280050a 	addi.w	$r10,$r8,1(0x1)
1c002e8c:	64000dc9 	bge	$r14,$r9,12(0xc) # 1c002e98 <find_maximum_position_32+0x118>
1c002e90:	00150144 	move	$r4,$r10
1c002e94:	0015012e 	move	$r14,$r9
1c002e98:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c002e9c:	0280090d 	addi.w	$r13,$r8,2(0x2)
1c002ea0:	64000dcb 	bge	$r14,$r11,12(0xc) # 1c002eac <find_maximum_position_32+0x12c>
1c002ea4:	001501a4 	move	$r4,$r13
1c002ea8:	0015016e 	move	$r14,$r11
1c002eac:	28803191 	ld.w	$r17,$r12,12(0xc)
1c002eb0:	02800d12 	addi.w	$r18,$r8,3(0x3)
1c002eb4:	64000dd1 	bge	$r14,$r17,12(0xc) # 1c002ec0 <find_maximum_position_32+0x140>
1c002eb8:	00150244 	move	$r4,$r18
1c002ebc:	0015022e 	move	$r14,$r17
1c002ec0:	28804193 	ld.w	$r19,$r12,16(0x10)
1c002ec4:	02801114 	addi.w	$r20,$r8,4(0x4)
1c002ec8:	64000dd3 	bge	$r14,$r19,12(0xc) # 1c002ed4 <find_maximum_position_32+0x154>
1c002ecc:	00150284 	move	$r4,$r20
1c002ed0:	0015026e 	move	$r14,$r19
1c002ed4:	2880518f 	ld.w	$r15,$r12,20(0x14)
1c002ed8:	02801510 	addi.w	$r16,$r8,5(0x5)
1c002edc:	64000dcf 	bge	$r14,$r15,12(0xc) # 1c002ee8 <find_maximum_position_32+0x168>
1c002ee0:	00150204 	move	$r4,$r16
1c002ee4:	001501ee 	move	$r14,$r15
1c002ee8:	28806186 	ld.w	$r6,$r12,24(0x18)
1c002eec:	02801907 	addi.w	$r7,$r8,6(0x6)
1c002ef0:	64000dc6 	bge	$r14,$r6,12(0xc) # 1c002efc <find_maximum_position_32+0x17c>
1c002ef4:	001500e4 	move	$r4,$r7
1c002ef8:	001500ce 	move	$r14,$r6
1c002efc:	02801d0d 	addi.w	$r13,$r8,7(0x7)
1c002f00:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c002f04:	5fff58ad 	bne	$r5,$r13,-168(0x3ff58) # 1c002e5c <find_maximum_position_32+0xdc>
1c002f08:	4c000020 	jirl	$r0,$r1,0
1c002f0c:	03400000 	andi	$r0,$r0,0x0
1c002f10:	001501a4 	move	$r4,$r13
1c002f14:	0015020e 	move	$r14,$r16
1c002f18:	53ff23ff 	b	-224(0xfffff20) # 1c002e38 <find_maximum_position_32+0xb8>
1c002f1c:	03400000 	andi	$r0,$r0,0x0
1c002f20:	001501a4 	move	$r4,$r13
1c002f24:	0015028e 	move	$r14,$r20
1c002f28:	53ff03ff 	b	-256(0xfffff00) # 1c002e28 <find_maximum_position_32+0xa8>
1c002f2c:	03400000 	andi	$r0,$r0,0x0
1c002f30:	001501a4 	move	$r4,$r13
1c002f34:	0015024e 	move	$r14,$r18
1c002f38:	53fecbff 	b	-312(0xffffec8) # 1c002e00 <find_maximum_position_32+0x80>
1c002f3c:	03400000 	andi	$r0,$r0,0x0
1c002f40:	001501a4 	move	$r4,$r13
1c002f44:	0015022e 	move	$r14,$r17
1c002f48:	53feabff 	b	-344(0xffffea8) # 1c002df0 <find_maximum_position_32+0x70>
1c002f4c:	4c000020 	jirl	$r0,$r1,0
1c002f50:	00150004 	move	$r4,$r0
1c002f54:	4c000020 	jirl	$r0,$r1,0
1c002f58:	03400000 	andi	$r0,$r0,0x0
1c002f5c:	03400000 	andi	$r0,$r0,0x0

1c002f60 <find_maximum_position_u32>:
find_maximum_position_u32():
1c002f60:	02800410 	addi.w	$r16,$r0,1(0x1)
1c002f64:	2880008e 	ld.w	$r14,$r4,0
1c002f68:	6c01ca05 	bgeu	$r16,$r5,456(0x1c8) # 1c003130 <find_maximum_position_u32+0x1d0>
1c002f6c:	001140af 	sub.w	$r15,$r5,$r16
1c002f70:	03401de6 	andi	$r6,$r15,0x7
1c002f74:	0280108c 	addi.w	$r12,$r4,4(0x4)
1c002f78:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002f7c:	00150004 	move	$r4,$r0
1c002f80:	5800bcc0 	beq	$r6,$r0,188(0xbc) # 1c00303c <find_maximum_position_u32+0xdc>
1c002f84:	58009cd0 	beq	$r6,$r16,156(0x9c) # 1c003020 <find_maximum_position_u32+0xc0>
1c002f88:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f8c:	580084c7 	beq	$r6,$r7,132(0x84) # 1c003010 <find_maximum_position_u32+0xb0>
1c002f90:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c002f94:	58006cc8 	beq	$r6,$r8,108(0x6c) # 1c003000 <find_maximum_position_u32+0xa0>
1c002f98:	02801009 	addi.w	$r9,$r0,4(0x4)
1c002f9c:	58004cc9 	beq	$r6,$r9,76(0x4c) # 1c002fe8 <find_maximum_position_u32+0x88>
1c002fa0:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c002fa4:	580034ca 	beq	$r6,$r10,52(0x34) # 1c002fd8 <find_maximum_position_u32+0x78>
1c002fa8:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c002fac:	58001ccb 	beq	$r6,$r11,28(0x1c) # 1c002fc8 <find_maximum_position_u32+0x68>
1c002fb0:	2880018d 	ld.w	$r13,$r12,0
1c002fb4:	6c000dcd 	bgeu	$r14,$r13,12(0xc) # 1c002fc0 <find_maximum_position_u32+0x60>
1c002fb8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002fbc:	001501ae 	move	$r14,$r13
1c002fc0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c002fc4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002fc8:	28800191 	ld.w	$r17,$r12,0
1c002fcc:	680155d1 	bltu	$r14,$r17,340(0x154) # 1c003120 <find_maximum_position_u32+0x1c0>
1c002fd0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002fd4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002fd8:	28800192 	ld.w	$r18,$r12,0
1c002fdc:	680135d2 	bltu	$r14,$r18,308(0x134) # 1c003110 <find_maximum_position_u32+0x1b0>
1c002fe0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002fe4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002fe8:	28800193 	ld.w	$r19,$r12,0
1c002fec:	6c000dd3 	bgeu	$r14,$r19,12(0xc) # 1c002ff8 <find_maximum_position_u32+0x98>
1c002ff0:	001501a4 	move	$r4,$r13
1c002ff4:	0015026e 	move	$r14,$r19
1c002ff8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002ffc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003000:	28800194 	ld.w	$r20,$r12,0
1c003004:	6800fdd4 	bltu	$r14,$r20,252(0xfc) # 1c003100 <find_maximum_position_u32+0x1a0>
1c003008:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00300c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003010:	28800190 	ld.w	$r16,$r12,0
1c003014:	6800ddd0 	bltu	$r14,$r16,220(0xdc) # 1c0030f0 <find_maximum_position_u32+0x190>
1c003018:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00301c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003020:	2880018f 	ld.w	$r15,$r12,0
1c003024:	6c000dcf 	bgeu	$r14,$r15,12(0xc) # 1c003030 <find_maximum_position_u32+0xd0>
1c003028:	001501a4 	move	$r4,$r13
1c00302c:	001501ee 	move	$r14,$r15
1c003030:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c003034:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003038:	5800f4ad 	beq	$r5,$r13,244(0xf4) # 1c00312c <find_maximum_position_u32+0x1cc>
1c00303c:	28800186 	ld.w	$r6,$r12,0
1c003040:	6c000dc6 	bgeu	$r14,$r6,12(0xc) # 1c00304c <find_maximum_position_u32+0xec>
1c003044:	001501a4 	move	$r4,$r13
1c003048:	001500ce 	move	$r14,$r6
1c00304c:	28801187 	ld.w	$r7,$r12,4(0x4)
1c003050:	028005a8 	addi.w	$r8,$r13,1(0x1)
1c003054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003058:	6c000dc7 	bgeu	$r14,$r7,12(0xc) # 1c003064 <find_maximum_position_u32+0x104>
1c00305c:	00150104 	move	$r4,$r8
1c003060:	001500ee 	move	$r14,$r7
1c003064:	28801189 	ld.w	$r9,$r12,4(0x4)
1c003068:	0280050a 	addi.w	$r10,$r8,1(0x1)
1c00306c:	6c000dc9 	bgeu	$r14,$r9,12(0xc) # 1c003078 <find_maximum_position_u32+0x118>
1c003070:	00150144 	move	$r4,$r10
1c003074:	0015012e 	move	$r14,$r9
1c003078:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c00307c:	0280090d 	addi.w	$r13,$r8,2(0x2)
1c003080:	6c000dcb 	bgeu	$r14,$r11,12(0xc) # 1c00308c <find_maximum_position_u32+0x12c>
1c003084:	001501a4 	move	$r4,$r13
1c003088:	0015016e 	move	$r14,$r11
1c00308c:	28803191 	ld.w	$r17,$r12,12(0xc)
1c003090:	02800d12 	addi.w	$r18,$r8,3(0x3)
1c003094:	6c000dd1 	bgeu	$r14,$r17,12(0xc) # 1c0030a0 <find_maximum_position_u32+0x140>
1c003098:	00150244 	move	$r4,$r18
1c00309c:	0015022e 	move	$r14,$r17
1c0030a0:	28804193 	ld.w	$r19,$r12,16(0x10)
1c0030a4:	02801114 	addi.w	$r20,$r8,4(0x4)
1c0030a8:	6c000dd3 	bgeu	$r14,$r19,12(0xc) # 1c0030b4 <find_maximum_position_u32+0x154>
1c0030ac:	00150284 	move	$r4,$r20
1c0030b0:	0015026e 	move	$r14,$r19
1c0030b4:	2880518f 	ld.w	$r15,$r12,20(0x14)
1c0030b8:	02801510 	addi.w	$r16,$r8,5(0x5)
1c0030bc:	6c000dcf 	bgeu	$r14,$r15,12(0xc) # 1c0030c8 <find_maximum_position_u32+0x168>
1c0030c0:	00150204 	move	$r4,$r16
1c0030c4:	001501ee 	move	$r14,$r15
1c0030c8:	28806186 	ld.w	$r6,$r12,24(0x18)
1c0030cc:	02801907 	addi.w	$r7,$r8,6(0x6)
1c0030d0:	6c000dc6 	bgeu	$r14,$r6,12(0xc) # 1c0030dc <find_maximum_position_u32+0x17c>
1c0030d4:	001500e4 	move	$r4,$r7
1c0030d8:	001500ce 	move	$r14,$r6
1c0030dc:	02801d0d 	addi.w	$r13,$r8,7(0x7)
1c0030e0:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c0030e4:	5fff58ad 	bne	$r5,$r13,-168(0x3ff58) # 1c00303c <find_maximum_position_u32+0xdc>
1c0030e8:	4c000020 	jirl	$r0,$r1,0
1c0030ec:	03400000 	andi	$r0,$r0,0x0
1c0030f0:	001501a4 	move	$r4,$r13
1c0030f4:	0015020e 	move	$r14,$r16
1c0030f8:	53ff23ff 	b	-224(0xfffff20) # 1c003018 <find_maximum_position_u32+0xb8>
1c0030fc:	03400000 	andi	$r0,$r0,0x0
1c003100:	001501a4 	move	$r4,$r13
1c003104:	0015028e 	move	$r14,$r20
1c003108:	53ff03ff 	b	-256(0xfffff00) # 1c003008 <find_maximum_position_u32+0xa8>
1c00310c:	03400000 	andi	$r0,$r0,0x0
1c003110:	001501a4 	move	$r4,$r13
1c003114:	0015024e 	move	$r14,$r18
1c003118:	53fecbff 	b	-312(0xffffec8) # 1c002fe0 <find_maximum_position_u32+0x80>
1c00311c:	03400000 	andi	$r0,$r0,0x0
1c003120:	001501a4 	move	$r4,$r13
1c003124:	0015022e 	move	$r14,$r17
1c003128:	53feabff 	b	-344(0xffffea8) # 1c002fd0 <find_maximum_position_u32+0x70>
1c00312c:	4c000020 	jirl	$r0,$r1,0
1c003130:	00150004 	move	$r4,$r0
1c003134:	4c000020 	jirl	$r0,$r1,0
1c003138:	03400000 	andi	$r0,$r0,0x0
1c00313c:	03400000 	andi	$r0,$r0,0x0

1c003140 <test_min_value2_8>:
test_min_value2_8():
1c003140:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003144:	2980d077 	st.w	$r23,$r3,52(0x34)
1c003148:	2980c078 	st.w	$r24,$r3,48(0x30)
1c00314c:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c003150:	2980607e 	st.w	$r30,$r3,24(0x18)
1c003154:	2980507f 	st.w	$r31,$r3,20(0x14)
1c003158:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00315c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c003160:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c003164:	2980907b 	st.w	$r27,$r3,36(0x24)
1c003168:	2980807c 	st.w	$r28,$r3,32(0x20)
1c00316c:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c003170:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c003174:	02911339 	addi.w	$r25,$r25,1092(0x444)
1c003178:	0015009e 	move	$r30,$r4
1c00317c:	001500b7 	move	$r23,$r5
1c003180:	001500d8 	move	$r24,$r6
1c003184:	54a5bc00 	bl	42428(0xa5bc) # 1c00d740 <get_clock>
1c003188:	28800330 	ld.w	$r16,$r25,0
1c00318c:	1c000fac 	pcaddu12i	$r12,125(0x7d)
1c003190:	2890d18c 	ld.w	$r12,$r12,1076(0x434)
1c003194:	29800184 	st.w	$r4,$r12,0
1c003198:	0015001f 	move	$r31,$r0
1c00319c:	6401a010 	bge	$r0,$r16,416(0x1a0) # 1c00333c <test_min_value2_8+0x1fc>
1c0031a0:	280003d1 	ld.b	$r17,$r30,0
1c0031a4:	0015001c 	move	$r28,$r0
1c0031a8:	0015001f 	move	$r31,$r0
1c0031ac:	1c000fbb 	pcaddu12i	$r27,125(0x7d)
1c0031b0:	0290937b 	addi.w	$r27,$r27,1060(0x424)
1c0031b4:	02800416 	addi.w	$r22,$r0,1(0x1)
1c0031b8:	00105fdd 	add.w	$r29,$r30,$r23
1c0031bc:	1c000fba 	pcaddu12i	$r26,125(0x7d)
1c0031c0:	02b9c35a 	addi.w	$r26,$r26,-400(0xe70)
1c0031c4:	00150226 	move	$r6,$r17
1c0031c8:	6c013ad7 	bgeu	$r22,$r23,312(0x138) # 1c003300 <test_min_value2_8+0x1c0>
1c0031cc:	028007cc 	addi.w	$r12,$r30,1(0x1)
1c0031d0:	001133ad 	sub.w	$r13,$r29,$r12
1c0031d4:	03401da1 	andi	$r1,$r13,0x7
1c0031d8:	5800bc20 	beq	$r1,$r0,188(0xbc) # 1c003294 <test_min_value2_8+0x154>
1c0031dc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0031e0:	58009c2e 	beq	$r1,$r14,156(0x9c) # 1c00327c <test_min_value2_8+0x13c>
1c0031e4:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0031e8:	58008024 	beq	$r1,$r4,128(0x80) # 1c003268 <test_min_value2_8+0x128>
1c0031ec:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0031f0:	58006425 	beq	$r1,$r5,100(0x64) # 1c003254 <test_min_value2_8+0x114>
1c0031f4:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0031f8:	58004827 	beq	$r1,$r7,72(0x48) # 1c003240 <test_min_value2_8+0x100>
1c0031fc:	02801408 	addi.w	$r8,$r0,5(0x5)
1c003200:	58002c28 	beq	$r1,$r8,44(0x2c) # 1c00322c <test_min_value2_8+0xec>
1c003204:	02801809 	addi.w	$r9,$r0,6(0x6)
1c003208:	58001029 	beq	$r1,$r9,16(0x10) # 1c003218 <test_min_value2_8+0xd8>
1c00320c:	280007c6 	ld.b	$r6,$r30,1(0x1)
1c003210:	6001b226 	blt	$r17,$r6,432(0x1b0) # 1c0033c0 <test_min_value2_8+0x280>
1c003214:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003218:	2800018a 	ld.b	$r10,$r12,0
1c00321c:	640008ca 	bge	$r6,$r10,8(0x8) # 1c003224 <test_min_value2_8+0xe4>
1c003220:	001500ca 	move	$r10,$r6
1c003224:	00150146 	move	$r6,$r10
1c003228:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00322c:	2800018b 	ld.b	$r11,$r12,0
1c003230:	640008cb 	bge	$r6,$r11,8(0x8) # 1c003238 <test_min_value2_8+0xf8>
1c003234:	001500cb 	move	$r11,$r6
1c003238:	00150166 	move	$r6,$r11
1c00323c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003240:	2800018f 	ld.b	$r15,$r12,0
1c003244:	640008cf 	bge	$r6,$r15,8(0x8) # 1c00324c <test_min_value2_8+0x10c>
1c003248:	001500cf 	move	$r15,$r6
1c00324c:	001501e6 	move	$r6,$r15
1c003250:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003254:	28000192 	ld.b	$r18,$r12,0
1c003258:	640008d2 	bge	$r6,$r18,8(0x8) # 1c003260 <test_min_value2_8+0x120>
1c00325c:	001500d2 	move	$r18,$r6
1c003260:	00150246 	move	$r6,$r18
1c003264:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003268:	28000193 	ld.b	$r19,$r12,0
1c00326c:	640008d3 	bge	$r6,$r19,8(0x8) # 1c003274 <test_min_value2_8+0x134>
1c003270:	001500d3 	move	$r19,$r6
1c003274:	00150266 	move	$r6,$r19
1c003278:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00327c:	28000194 	ld.b	$r20,$r12,0
1c003280:	640008d4 	bge	$r6,$r20,8(0x8) # 1c003288 <test_min_value2_8+0x148>
1c003284:	001500d4 	move	$r20,$r6
1c003288:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00328c:	00150286 	move	$r6,$r20
1c003290:	580073ac 	beq	$r29,$r12,112(0x70) # 1c003300 <test_min_value2_8+0x1c0>
1c003294:	2800018d 	ld.b	$r13,$r12,0
1c003298:	640008cd 	bge	$r6,$r13,8(0x8) # 1c0032a0 <test_min_value2_8+0x160>
1c00329c:	001500cd 	move	$r13,$r6
1c0032a0:	28000586 	ld.b	$r6,$r12,1(0x1)
1c0032a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0032a8:	640009a6 	bge	$r13,$r6,8(0x8) # 1c0032b0 <test_min_value2_8+0x170>
1c0032ac:	001501a6 	move	$r6,$r13
1c0032b0:	28000581 	ld.b	$r1,$r12,1(0x1)
1c0032b4:	640008c1 	bge	$r6,$r1,8(0x8) # 1c0032bc <test_min_value2_8+0x17c>
1c0032b8:	001500c1 	move	$r1,$r6
1c0032bc:	2800098e 	ld.b	$r14,$r12,2(0x2)
1c0032c0:	6400082e 	bge	$r1,$r14,8(0x8) # 1c0032c8 <test_min_value2_8+0x188>
1c0032c4:	0015002e 	move	$r14,$r1
1c0032c8:	28000d84 	ld.b	$r4,$r12,3(0x3)
1c0032cc:	640009c4 	bge	$r14,$r4,8(0x8) # 1c0032d4 <test_min_value2_8+0x194>
1c0032d0:	001501c4 	move	$r4,$r14
1c0032d4:	28001185 	ld.b	$r5,$r12,4(0x4)
1c0032d8:	64000885 	bge	$r4,$r5,8(0x8) # 1c0032e0 <test_min_value2_8+0x1a0>
1c0032dc:	00150085 	move	$r5,$r4
1c0032e0:	2800158e 	ld.b	$r14,$r12,5(0x5)
1c0032e4:	640008ae 	bge	$r5,$r14,8(0x8) # 1c0032ec <test_min_value2_8+0x1ac>
1c0032e8:	001500ae 	move	$r14,$r5
1c0032ec:	28001986 	ld.b	$r6,$r12,6(0x6)
1c0032f0:	640009c6 	bge	$r14,$r6,8(0x8) # 1c0032f8 <test_min_value2_8+0x1b8>
1c0032f4:	001501c6 	move	$r6,$r14
1c0032f8:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c0032fc:	5fff9bac 	bne	$r29,$r12,-104(0x3ff98) # 1c003294 <test_min_value2_8+0x154>
1c003300:	28800367 	ld.w	$r7,$r27,0
1c003304:	29803067 	st.w	$r7,$r3,12(0xc)
1c003308:	28003068 	ld.b	$r8,$r3,12(0xc)
1c00330c:	58002906 	beq	$r8,$r6,40(0x28) # 1c003334 <test_min_value2_8+0x1f4>
1c003310:	00150305 	move	$r5,$r24
1c003314:	00150344 	move	$r4,$r26
1c003318:	549f1800 	bl	40728(0x9f18) # 1c00d230 <printf>
1c00331c:	28800330 	ld.w	$r16,$r25,0
1c003320:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c003324:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c003328:	64001790 	bge	$r28,$r16,20(0x14) # 1c00333c <test_min_value2_8+0x1fc>
1c00332c:	280003d1 	ld.b	$r17,$r30,0
1c003330:	53fe97ff 	b	-364(0xffffe94) # 1c0031c4 <test_min_value2_8+0x84>
1c003334:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c003338:	63fe8f90 	blt	$r28,$r16,-372(0x3fe8c) # 1c0031c4 <test_min_value2_8+0x84>
1c00333c:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c003340:	288a1339 	ld.w	$r25,$r25,644(0x284)
1c003344:	54a3fc00 	bl	41980(0xa3fc) # 1c00d740 <get_clock>
1c003348:	2880033e 	ld.w	$r30,$r25,0
1c00334c:	00150091 	move	$r17,$r4
1c003350:	14001e9b 	lu12i.w	$r27,244(0xf4)
1c003354:	03890376 	ori	$r22,$r27,0x240
1c003358:	1c000fbd 	pcaddu12i	$r29,125(0x7d)
1c00335c:	288993bd 	ld.w	$r29,$r29,612(0x264)
1c003360:	001502e6 	move	$r6,$r23
1c003364:	00150305 	move	$r5,$r24
1c003368:	00117a37 	sub.w	$r23,$r17,$r30
1c00336c:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c003370:	02b3a084 	addi.w	$r4,$r4,-792(0xce8)
1c003374:	00215ae7 	div.wu	$r7,$r23,$r22
1c003378:	5c000ac0 	bne	$r22,$r0,8(0x8) # 1c003380 <test_min_value2_8+0x240>
1c00337c:	002a0007 	break	0x7
1c003380:	298003b1 	st.w	$r17,$r29,0
1c003384:	549eac00 	bl	40620(0x9eac) # 1c00d230 <printf>
1c003388:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00338c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c003390:	001503e4 	move	$r4,$r31
1c003394:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c003398:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c00339c:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c0033a0:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c0033a4:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c0033a8:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c0033ac:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c0033b0:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c0033b4:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c0033b8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0033bc:	4c000020 	jirl	$r0,$r1,0
1c0033c0:	00150226 	move	$r6,$r17
1c0033c4:	53fe53ff 	b	-432(0xffffe50) # 1c003214 <test_min_value2_8+0xd4>
1c0033c8:	03400000 	andi	$r0,$r0,0x0
1c0033cc:	03400000 	andi	$r0,$r0,0x0

1c0033d0 <test_min_value2_u8>:
test_min_value2_u8():
1c0033d0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0033d4:	2980d077 	st.w	$r23,$r3,52(0x34)
1c0033d8:	2980c078 	st.w	$r24,$r3,48(0x30)
1c0033dc:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c0033e0:	2980607e 	st.w	$r30,$r3,24(0x18)
1c0033e4:	2980507f 	st.w	$r31,$r3,20(0x14)
1c0033e8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0033ec:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0033f0:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c0033f4:	2980907b 	st.w	$r27,$r3,36(0x24)
1c0033f8:	2980807c 	st.w	$r28,$r3,32(0x20)
1c0033fc:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c003400:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c003404:	0286d339 	addi.w	$r25,$r25,436(0x1b4)
1c003408:	0015009e 	move	$r30,$r4
1c00340c:	001500b7 	move	$r23,$r5
1c003410:	001500d8 	move	$r24,$r6
1c003414:	54a32c00 	bl	41772(0xa32c) # 1c00d740 <get_clock>
1c003418:	28800330 	ld.w	$r16,$r25,0
1c00341c:	1c000fac 	pcaddu12i	$r12,125(0x7d)
1c003420:	2886918c 	ld.w	$r12,$r12,420(0x1a4)
1c003424:	29800184 	st.w	$r4,$r12,0
1c003428:	0015001f 	move	$r31,$r0
1c00342c:	6401a010 	bge	$r0,$r16,416(0x1a0) # 1c0035cc <test_min_value2_u8+0x1fc>
1c003430:	2a0003d1 	ld.bu	$r17,$r30,0
1c003434:	0015001c 	move	$r28,$r0
1c003438:	0015001f 	move	$r31,$r0
1c00343c:	1c000fbb 	pcaddu12i	$r27,125(0x7d)
1c003440:	0286537b 	addi.w	$r27,$r27,404(0x194)
1c003444:	02800416 	addi.w	$r22,$r0,1(0x1)
1c003448:	00105fdd 	add.w	$r29,$r30,$r23
1c00344c:	1c000fba 	pcaddu12i	$r26,125(0x7d)
1c003450:	02af835a 	addi.w	$r26,$r26,-1056(0xbe0)
1c003454:	00150226 	move	$r6,$r17
1c003458:	6c013ad7 	bgeu	$r22,$r23,312(0x138) # 1c003590 <test_min_value2_u8+0x1c0>
1c00345c:	028007cc 	addi.w	$r12,$r30,1(0x1)
1c003460:	001133ad 	sub.w	$r13,$r29,$r12
1c003464:	03401da1 	andi	$r1,$r13,0x7
1c003468:	5800bc20 	beq	$r1,$r0,188(0xbc) # 1c003524 <test_min_value2_u8+0x154>
1c00346c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003470:	58009c2e 	beq	$r1,$r14,156(0x9c) # 1c00350c <test_min_value2_u8+0x13c>
1c003474:	02800804 	addi.w	$r4,$r0,2(0x2)
1c003478:	58008024 	beq	$r1,$r4,128(0x80) # 1c0034f8 <test_min_value2_u8+0x128>
1c00347c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c003480:	58006425 	beq	$r1,$r5,100(0x64) # 1c0034e4 <test_min_value2_u8+0x114>
1c003484:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003488:	58004827 	beq	$r1,$r7,72(0x48) # 1c0034d0 <test_min_value2_u8+0x100>
1c00348c:	02801408 	addi.w	$r8,$r0,5(0x5)
1c003490:	58002c28 	beq	$r1,$r8,44(0x2c) # 1c0034bc <test_min_value2_u8+0xec>
1c003494:	02801809 	addi.w	$r9,$r0,6(0x6)
1c003498:	58001029 	beq	$r1,$r9,16(0x10) # 1c0034a8 <test_min_value2_u8+0xd8>
1c00349c:	2a0007c6 	ld.bu	$r6,$r30,1(0x1)
1c0034a0:	6801b226 	bltu	$r17,$r6,432(0x1b0) # 1c003650 <test_min_value2_u8+0x280>
1c0034a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0034a8:	2a00018a 	ld.bu	$r10,$r12,0
1c0034ac:	6c0008ca 	bgeu	$r6,$r10,8(0x8) # 1c0034b4 <test_min_value2_u8+0xe4>
1c0034b0:	001500ca 	move	$r10,$r6
1c0034b4:	00150146 	move	$r6,$r10
1c0034b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0034bc:	2a00018b 	ld.bu	$r11,$r12,0
1c0034c0:	6c0008cb 	bgeu	$r6,$r11,8(0x8) # 1c0034c8 <test_min_value2_u8+0xf8>
1c0034c4:	001500cb 	move	$r11,$r6
1c0034c8:	00150166 	move	$r6,$r11
1c0034cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0034d0:	2a00018f 	ld.bu	$r15,$r12,0
1c0034d4:	6c0008cf 	bgeu	$r6,$r15,8(0x8) # 1c0034dc <test_min_value2_u8+0x10c>
1c0034d8:	001500cf 	move	$r15,$r6
1c0034dc:	001501e6 	move	$r6,$r15
1c0034e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0034e4:	2a000192 	ld.bu	$r18,$r12,0
1c0034e8:	6c0008d2 	bgeu	$r6,$r18,8(0x8) # 1c0034f0 <test_min_value2_u8+0x120>
1c0034ec:	001500d2 	move	$r18,$r6
1c0034f0:	00150246 	move	$r6,$r18
1c0034f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0034f8:	2a000193 	ld.bu	$r19,$r12,0
1c0034fc:	6c0008d3 	bgeu	$r6,$r19,8(0x8) # 1c003504 <test_min_value2_u8+0x134>
1c003500:	001500d3 	move	$r19,$r6
1c003504:	00150266 	move	$r6,$r19
1c003508:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00350c:	2a000194 	ld.bu	$r20,$r12,0
1c003510:	6c0008d4 	bgeu	$r6,$r20,8(0x8) # 1c003518 <test_min_value2_u8+0x148>
1c003514:	001500d4 	move	$r20,$r6
1c003518:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00351c:	00150286 	move	$r6,$r20
1c003520:	580073ac 	beq	$r29,$r12,112(0x70) # 1c003590 <test_min_value2_u8+0x1c0>
1c003524:	2a00018d 	ld.bu	$r13,$r12,0
1c003528:	6c0008cd 	bgeu	$r6,$r13,8(0x8) # 1c003530 <test_min_value2_u8+0x160>
1c00352c:	001500cd 	move	$r13,$r6
1c003530:	2a000586 	ld.bu	$r6,$r12,1(0x1)
1c003534:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003538:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1c003540 <test_min_value2_u8+0x170>
1c00353c:	001501a6 	move	$r6,$r13
1c003540:	2a000581 	ld.bu	$r1,$r12,1(0x1)
1c003544:	6c0008c1 	bgeu	$r6,$r1,8(0x8) # 1c00354c <test_min_value2_u8+0x17c>
1c003548:	001500c1 	move	$r1,$r6
1c00354c:	2a00098e 	ld.bu	$r14,$r12,2(0x2)
1c003550:	6c00082e 	bgeu	$r1,$r14,8(0x8) # 1c003558 <test_min_value2_u8+0x188>
1c003554:	0015002e 	move	$r14,$r1
1c003558:	2a000d84 	ld.bu	$r4,$r12,3(0x3)
1c00355c:	6c0009c4 	bgeu	$r14,$r4,8(0x8) # 1c003564 <test_min_value2_u8+0x194>
1c003560:	001501c4 	move	$r4,$r14
1c003564:	2a001185 	ld.bu	$r5,$r12,4(0x4)
1c003568:	6c000885 	bgeu	$r4,$r5,8(0x8) # 1c003570 <test_min_value2_u8+0x1a0>
1c00356c:	00150085 	move	$r5,$r4
1c003570:	2a00158e 	ld.bu	$r14,$r12,5(0x5)
1c003574:	6c0008ae 	bgeu	$r5,$r14,8(0x8) # 1c00357c <test_min_value2_u8+0x1ac>
1c003578:	001500ae 	move	$r14,$r5
1c00357c:	2a001986 	ld.bu	$r6,$r12,6(0x6)
1c003580:	6c0009c6 	bgeu	$r14,$r6,8(0x8) # 1c003588 <test_min_value2_u8+0x1b8>
1c003584:	001501c6 	move	$r6,$r14
1c003588:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c00358c:	5fff9bac 	bne	$r29,$r12,-104(0x3ff98) # 1c003524 <test_min_value2_u8+0x154>
1c003590:	28800367 	ld.w	$r7,$r27,0
1c003594:	29803067 	st.w	$r7,$r3,12(0xc)
1c003598:	2a003068 	ld.bu	$r8,$r3,12(0xc)
1c00359c:	58002906 	beq	$r8,$r6,40(0x28) # 1c0035c4 <test_min_value2_u8+0x1f4>
1c0035a0:	00150305 	move	$r5,$r24
1c0035a4:	00150344 	move	$r4,$r26
1c0035a8:	549c8800 	bl	40072(0x9c88) # 1c00d230 <printf>
1c0035ac:	28800330 	ld.w	$r16,$r25,0
1c0035b0:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c0035b4:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c0035b8:	64001790 	bge	$r28,$r16,20(0x14) # 1c0035cc <test_min_value2_u8+0x1fc>
1c0035bc:	2a0003d1 	ld.bu	$r17,$r30,0
1c0035c0:	53fe97ff 	b	-364(0xffffe94) # 1c003454 <test_min_value2_u8+0x84>
1c0035c4:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c0035c8:	63fe8f90 	blt	$r28,$r16,-372(0x3fe8c) # 1c003454 <test_min_value2_u8+0x84>
1c0035cc:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c0035d0:	28bfd339 	ld.w	$r25,$r25,-12(0xff4)
1c0035d4:	54a16c00 	bl	41324(0xa16c) # 1c00d740 <get_clock>
1c0035d8:	2880033e 	ld.w	$r30,$r25,0
1c0035dc:	00150091 	move	$r17,$r4
1c0035e0:	14001e9b 	lu12i.w	$r27,244(0xf4)
1c0035e4:	03890376 	ori	$r22,$r27,0x240
1c0035e8:	1c000fbd 	pcaddu12i	$r29,125(0x7d)
1c0035ec:	28bf53bd 	ld.w	$r29,$r29,-44(0xfd4)
1c0035f0:	001502e6 	move	$r6,$r23
1c0035f4:	00150305 	move	$r5,$r24
1c0035f8:	00117a37 	sub.w	$r23,$r17,$r30
1c0035fc:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c003600:	02a96084 	addi.w	$r4,$r4,-1448(0xa58)
1c003604:	00215ae7 	div.wu	$r7,$r23,$r22
1c003608:	5c000ac0 	bne	$r22,$r0,8(0x8) # 1c003610 <test_min_value2_u8+0x240>
1c00360c:	002a0007 	break	0x7
1c003610:	298003b1 	st.w	$r17,$r29,0
1c003614:	549c1c00 	bl	39964(0x9c1c) # 1c00d230 <printf>
1c003618:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00361c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c003620:	001503e4 	move	$r4,$r31
1c003624:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c003628:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c00362c:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c003630:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c003634:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c003638:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c00363c:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c003640:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c003644:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c003648:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00364c:	4c000020 	jirl	$r0,$r1,0
1c003650:	00150226 	move	$r6,$r17
1c003654:	53fe53ff 	b	-432(0xffffe50) # 1c0034a4 <test_min_value2_u8+0xd4>
1c003658:	03400000 	andi	$r0,$r0,0x0
1c00365c:	03400000 	andi	$r0,$r0,0x0

1c003660 <test_min_value2_16>:
test_min_value2_16():
1c003660:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003664:	2980d077 	st.w	$r23,$r3,52(0x34)
1c003668:	2980c078 	st.w	$r24,$r3,48(0x30)
1c00366c:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c003670:	2980607e 	st.w	$r30,$r3,24(0x18)
1c003674:	2980507f 	st.w	$r31,$r3,20(0x14)
1c003678:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00367c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c003680:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c003684:	2980907b 	st.w	$r27,$r3,36(0x24)
1c003688:	2980807c 	st.w	$r28,$r3,32(0x20)
1c00368c:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c003690:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c003694:	02bc9339 	addi.w	$r25,$r25,-220(0xf24)
1c003698:	0015009e 	move	$r30,$r4
1c00369c:	001500b7 	move	$r23,$r5
1c0036a0:	001500d8 	move	$r24,$r6
1c0036a4:	54a09c00 	bl	41116(0xa09c) # 1c00d740 <get_clock>
1c0036a8:	28800330 	ld.w	$r16,$r25,0
1c0036ac:	1c000fac 	pcaddu12i	$r12,125(0x7d)
1c0036b0:	28bc518c 	ld.w	$r12,$r12,-236(0xf14)
1c0036b4:	29800184 	st.w	$r4,$r12,0
1c0036b8:	0015001f 	move	$r31,$r0
1c0036bc:	6401b010 	bge	$r0,$r16,432(0x1b0) # 1c00386c <test_min_value2_16+0x20c>
1c0036c0:	284003d1 	ld.h	$r17,$r30,0
1c0036c4:	004086fc 	slli.w	$r28,$r23,0x1
1c0036c8:	0015001d 	move	$r29,$r0
1c0036cc:	0015001f 	move	$r31,$r0
1c0036d0:	001073dc 	add.w	$r28,$r30,$r28
1c0036d4:	1c000fbb 	pcaddu12i	$r27,125(0x7d)
1c0036d8:	02bbf37b 	addi.w	$r27,$r27,-260(0xefc)
1c0036dc:	02800416 	addi.w	$r22,$r0,1(0x1)
1c0036e0:	1c000fba 	pcaddu12i	$r26,125(0x7d)
1c0036e4:	02a5335a 	addi.w	$r26,$r26,-1716(0x94c)
1c0036e8:	00150226 	move	$r6,$r17
1c0036ec:	6c0146d7 	bgeu	$r22,$r23,324(0x144) # 1c003830 <test_min_value2_16+0x1d0>
1c0036f0:	02800bcc 	addi.w	$r12,$r30,2(0x2)
1c0036f4:	0011338d 	sub.w	$r13,$r28,$r12
1c0036f8:	02bff9a1 	addi.w	$r1,$r13,-2(0xffe)
1c0036fc:	00448424 	srli.w	$r4,$r1,0x1
1c003700:	02800485 	addi.w	$r5,$r4,1(0x1)
1c003704:	03401ca7 	andi	$r7,$r5,0x7
1c003708:	5800bce0 	beq	$r7,$r0,188(0xbc) # 1c0037c4 <test_min_value2_16+0x164>
1c00370c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003710:	58009cee 	beq	$r7,$r14,156(0x9c) # 1c0037ac <test_min_value2_16+0x14c>
1c003714:	02800808 	addi.w	$r8,$r0,2(0x2)
1c003718:	580080e8 	beq	$r7,$r8,128(0x80) # 1c003798 <test_min_value2_16+0x138>
1c00371c:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c003720:	580064e9 	beq	$r7,$r9,100(0x64) # 1c003784 <test_min_value2_16+0x124>
1c003724:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c003728:	580048ea 	beq	$r7,$r10,72(0x48) # 1c003770 <test_min_value2_16+0x110>
1c00372c:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c003730:	58002ceb 	beq	$r7,$r11,44(0x2c) # 1c00375c <test_min_value2_16+0xfc>
1c003734:	0280180f 	addi.w	$r15,$r0,6(0x6)
1c003738:	580010ef 	beq	$r7,$r15,16(0x10) # 1c003748 <test_min_value2_16+0xe8>
1c00373c:	28400bc6 	ld.h	$r6,$r30,2(0x2)
1c003740:	6001b226 	blt	$r17,$r6,432(0x1b0) # 1c0038f0 <test_min_value2_16+0x290>
1c003744:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003748:	28400192 	ld.h	$r18,$r12,0
1c00374c:	640008d2 	bge	$r6,$r18,8(0x8) # 1c003754 <test_min_value2_16+0xf4>
1c003750:	001500d2 	move	$r18,$r6
1c003754:	00150246 	move	$r6,$r18
1c003758:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00375c:	28400193 	ld.h	$r19,$r12,0
1c003760:	640008d3 	bge	$r6,$r19,8(0x8) # 1c003768 <test_min_value2_16+0x108>
1c003764:	001500d3 	move	$r19,$r6
1c003768:	00150266 	move	$r6,$r19
1c00376c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003770:	28400194 	ld.h	$r20,$r12,0
1c003774:	640008d4 	bge	$r6,$r20,8(0x8) # 1c00377c <test_min_value2_16+0x11c>
1c003778:	001500d4 	move	$r20,$r6
1c00377c:	00150286 	move	$r6,$r20
1c003780:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003784:	2840018d 	ld.h	$r13,$r12,0
1c003788:	640008cd 	bge	$r6,$r13,8(0x8) # 1c003790 <test_min_value2_16+0x130>
1c00378c:	001500cd 	move	$r13,$r6
1c003790:	001501a6 	move	$r6,$r13
1c003794:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003798:	28400181 	ld.h	$r1,$r12,0
1c00379c:	640008c1 	bge	$r6,$r1,8(0x8) # 1c0037a4 <test_min_value2_16+0x144>
1c0037a0:	001500c1 	move	$r1,$r6
1c0037a4:	00150026 	move	$r6,$r1
1c0037a8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0037ac:	28400184 	ld.h	$r4,$r12,0
1c0037b0:	640008c4 	bge	$r6,$r4,8(0x8) # 1c0037b8 <test_min_value2_16+0x158>
1c0037b4:	001500c4 	move	$r4,$r6
1c0037b8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0037bc:	00150086 	move	$r6,$r4
1c0037c0:	5800738c 	beq	$r28,$r12,112(0x70) # 1c003830 <test_min_value2_16+0x1d0>
1c0037c4:	28400185 	ld.h	$r5,$r12,0
1c0037c8:	640008c5 	bge	$r6,$r5,8(0x8) # 1c0037d0 <test_min_value2_16+0x170>
1c0037cc:	001500c5 	move	$r5,$r6
1c0037d0:	28400986 	ld.h	$r6,$r12,2(0x2)
1c0037d4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0037d8:	640008a6 	bge	$r5,$r6,8(0x8) # 1c0037e0 <test_min_value2_16+0x180>
1c0037dc:	001500a6 	move	$r6,$r5
1c0037e0:	28400987 	ld.h	$r7,$r12,2(0x2)
1c0037e4:	640008c7 	bge	$r6,$r7,8(0x8) # 1c0037ec <test_min_value2_16+0x18c>
1c0037e8:	001500c7 	move	$r7,$r6
1c0037ec:	2840118e 	ld.h	$r14,$r12,4(0x4)
1c0037f0:	640008ee 	bge	$r7,$r14,8(0x8) # 1c0037f8 <test_min_value2_16+0x198>
1c0037f4:	001500ee 	move	$r14,$r7
1c0037f8:	28401988 	ld.h	$r8,$r12,6(0x6)
1c0037fc:	640009c8 	bge	$r14,$r8,8(0x8) # 1c003804 <test_min_value2_16+0x1a4>
1c003800:	001501c8 	move	$r8,$r14
1c003804:	28402189 	ld.h	$r9,$r12,8(0x8)
1c003808:	64000909 	bge	$r8,$r9,8(0x8) # 1c003810 <test_min_value2_16+0x1b0>
1c00380c:	00150109 	move	$r9,$r8
1c003810:	2840298e 	ld.h	$r14,$r12,10(0xa)
1c003814:	6400092e 	bge	$r9,$r14,8(0x8) # 1c00381c <test_min_value2_16+0x1bc>
1c003818:	0015012e 	move	$r14,$r9
1c00381c:	28403186 	ld.h	$r6,$r12,12(0xc)
1c003820:	640009c6 	bge	$r14,$r6,8(0x8) # 1c003828 <test_min_value2_16+0x1c8>
1c003824:	001501c6 	move	$r6,$r14
1c003828:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c00382c:	5fff9b8c 	bne	$r28,$r12,-104(0x3ff98) # 1c0037c4 <test_min_value2_16+0x164>
1c003830:	28800367 	ld.w	$r7,$r27,0
1c003834:	29803067 	st.w	$r7,$r3,12(0xc)
1c003838:	2840306a 	ld.h	$r10,$r3,12(0xc)
1c00383c:	58002946 	beq	$r10,$r6,40(0x28) # 1c003864 <test_min_value2_16+0x204>
1c003840:	00150305 	move	$r5,$r24
1c003844:	00150344 	move	$r4,$r26
1c003848:	5499e800 	bl	39400(0x99e8) # 1c00d230 <printf>
1c00384c:	28800330 	ld.w	$r16,$r25,0
1c003850:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c003854:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c003858:	640017b0 	bge	$r29,$r16,20(0x14) # 1c00386c <test_min_value2_16+0x20c>
1c00385c:	284003d1 	ld.h	$r17,$r30,0
1c003860:	53fe8bff 	b	-376(0xffffe88) # 1c0036e8 <test_min_value2_16+0x88>
1c003864:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c003868:	63fe83b0 	blt	$r29,$r16,-384(0x3fe80) # 1c0036e8 <test_min_value2_16+0x88>
1c00386c:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c003870:	28b55339 	ld.w	$r25,$r25,-684(0xd54)
1c003874:	549ecc00 	bl	40652(0x9ecc) # 1c00d740 <get_clock>
1c003878:	2880033e 	ld.w	$r30,$r25,0
1c00387c:	00150091 	move	$r17,$r4
1c003880:	14001e9c 	lu12i.w	$r28,244(0xf4)
1c003884:	0389039b 	ori	$r27,$r28,0x240
1c003888:	1c000fb6 	pcaddu12i	$r22,125(0x7d)
1c00388c:	28b4d2d6 	ld.w	$r22,$r22,-716(0xd34)
1c003890:	001502e6 	move	$r6,$r23
1c003894:	00150305 	move	$r5,$r24
1c003898:	00117a37 	sub.w	$r23,$r17,$r30
1c00389c:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c0038a0:	029ee084 	addi.w	$r4,$r4,1976(0x7b8)
1c0038a4:	00216ee7 	div.wu	$r7,$r23,$r27
1c0038a8:	5c000b60 	bne	$r27,$r0,8(0x8) # 1c0038b0 <test_min_value2_16+0x250>
1c0038ac:	002a0007 	break	0x7
1c0038b0:	298002d1 	st.w	$r17,$r22,0
1c0038b4:	54997c00 	bl	39292(0x997c) # 1c00d230 <printf>
1c0038b8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0038bc:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0038c0:	001503e4 	move	$r4,$r31
1c0038c4:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c0038c8:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c0038cc:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c0038d0:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c0038d4:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c0038d8:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c0038dc:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c0038e0:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c0038e4:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c0038e8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0038ec:	4c000020 	jirl	$r0,$r1,0
1c0038f0:	00150226 	move	$r6,$r17
1c0038f4:	53fe53ff 	b	-432(0xffffe50) # 1c003744 <test_min_value2_16+0xe4>
1c0038f8:	03400000 	andi	$r0,$r0,0x0
1c0038fc:	03400000 	andi	$r0,$r0,0x0

1c003900 <test_min_value2_u16>:
test_min_value2_u16():
1c003900:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003904:	2980d077 	st.w	$r23,$r3,52(0x34)
1c003908:	2980c078 	st.w	$r24,$r3,48(0x30)
1c00390c:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c003910:	2980607e 	st.w	$r30,$r3,24(0x18)
1c003914:	2980507f 	st.w	$r31,$r3,20(0x14)
1c003918:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00391c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c003920:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c003924:	2980907b 	st.w	$r27,$r3,36(0x24)
1c003928:	2980807c 	st.w	$r28,$r3,32(0x20)
1c00392c:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c003930:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c003934:	02b21339 	addi.w	$r25,$r25,-892(0xc84)
1c003938:	0015009e 	move	$r30,$r4
1c00393c:	001500b7 	move	$r23,$r5
1c003940:	001500d8 	move	$r24,$r6
1c003944:	549dfc00 	bl	40444(0x9dfc) # 1c00d740 <get_clock>
1c003948:	28800330 	ld.w	$r16,$r25,0
1c00394c:	1c000fac 	pcaddu12i	$r12,125(0x7d)
1c003950:	28b1d18c 	ld.w	$r12,$r12,-908(0xc74)
1c003954:	29800184 	st.w	$r4,$r12,0
1c003958:	0015001f 	move	$r31,$r0
1c00395c:	6401b010 	bge	$r0,$r16,432(0x1b0) # 1c003b0c <test_min_value2_u16+0x20c>
1c003960:	2a4003d1 	ld.hu	$r17,$r30,0
1c003964:	004086fc 	slli.w	$r28,$r23,0x1
1c003968:	0015001d 	move	$r29,$r0
1c00396c:	0015001f 	move	$r31,$r0
1c003970:	001073dc 	add.w	$r28,$r30,$r28
1c003974:	1c000fbb 	pcaddu12i	$r27,125(0x7d)
1c003978:	02b1737b 	addi.w	$r27,$r27,-932(0xc5c)
1c00397c:	02800416 	addi.w	$r22,$r0,1(0x1)
1c003980:	1c000f9a 	pcaddu12i	$r26,124(0x7c)
1c003984:	029ab35a 	addi.w	$r26,$r26,1708(0x6ac)
1c003988:	00150226 	move	$r6,$r17
1c00398c:	6c0146d7 	bgeu	$r22,$r23,324(0x144) # 1c003ad0 <test_min_value2_u16+0x1d0>
1c003990:	02800bcc 	addi.w	$r12,$r30,2(0x2)
1c003994:	0011338d 	sub.w	$r13,$r28,$r12
1c003998:	02bff9a1 	addi.w	$r1,$r13,-2(0xffe)
1c00399c:	00448424 	srli.w	$r4,$r1,0x1
1c0039a0:	02800485 	addi.w	$r5,$r4,1(0x1)
1c0039a4:	03401ca7 	andi	$r7,$r5,0x7
1c0039a8:	5800bce0 	beq	$r7,$r0,188(0xbc) # 1c003a64 <test_min_value2_u16+0x164>
1c0039ac:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0039b0:	58009cee 	beq	$r7,$r14,156(0x9c) # 1c003a4c <test_min_value2_u16+0x14c>
1c0039b4:	02800808 	addi.w	$r8,$r0,2(0x2)
1c0039b8:	580080e8 	beq	$r7,$r8,128(0x80) # 1c003a38 <test_min_value2_u16+0x138>
1c0039bc:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c0039c0:	580064e9 	beq	$r7,$r9,100(0x64) # 1c003a24 <test_min_value2_u16+0x124>
1c0039c4:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c0039c8:	580048ea 	beq	$r7,$r10,72(0x48) # 1c003a10 <test_min_value2_u16+0x110>
1c0039cc:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c0039d0:	58002ceb 	beq	$r7,$r11,44(0x2c) # 1c0039fc <test_min_value2_u16+0xfc>
1c0039d4:	0280180f 	addi.w	$r15,$r0,6(0x6)
1c0039d8:	580010ef 	beq	$r7,$r15,16(0x10) # 1c0039e8 <test_min_value2_u16+0xe8>
1c0039dc:	2a400bc6 	ld.hu	$r6,$r30,2(0x2)
1c0039e0:	6801b226 	bltu	$r17,$r6,432(0x1b0) # 1c003b90 <test_min_value2_u16+0x290>
1c0039e4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0039e8:	2a400192 	ld.hu	$r18,$r12,0
1c0039ec:	6c0008d2 	bgeu	$r6,$r18,8(0x8) # 1c0039f4 <test_min_value2_u16+0xf4>
1c0039f0:	001500d2 	move	$r18,$r6
1c0039f4:	00150246 	move	$r6,$r18
1c0039f8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0039fc:	2a400193 	ld.hu	$r19,$r12,0
1c003a00:	6c0008d3 	bgeu	$r6,$r19,8(0x8) # 1c003a08 <test_min_value2_u16+0x108>
1c003a04:	001500d3 	move	$r19,$r6
1c003a08:	00150266 	move	$r6,$r19
1c003a0c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003a10:	2a400194 	ld.hu	$r20,$r12,0
1c003a14:	6c0008d4 	bgeu	$r6,$r20,8(0x8) # 1c003a1c <test_min_value2_u16+0x11c>
1c003a18:	001500d4 	move	$r20,$r6
1c003a1c:	00150286 	move	$r6,$r20
1c003a20:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003a24:	2a40018d 	ld.hu	$r13,$r12,0
1c003a28:	6c0008cd 	bgeu	$r6,$r13,8(0x8) # 1c003a30 <test_min_value2_u16+0x130>
1c003a2c:	001500cd 	move	$r13,$r6
1c003a30:	001501a6 	move	$r6,$r13
1c003a34:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003a38:	2a400181 	ld.hu	$r1,$r12,0
1c003a3c:	6c0008c1 	bgeu	$r6,$r1,8(0x8) # 1c003a44 <test_min_value2_u16+0x144>
1c003a40:	001500c1 	move	$r1,$r6
1c003a44:	00150026 	move	$r6,$r1
1c003a48:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003a4c:	2a400184 	ld.hu	$r4,$r12,0
1c003a50:	6c0008c4 	bgeu	$r6,$r4,8(0x8) # 1c003a58 <test_min_value2_u16+0x158>
1c003a54:	001500c4 	move	$r4,$r6
1c003a58:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003a5c:	00150086 	move	$r6,$r4
1c003a60:	5800738c 	beq	$r28,$r12,112(0x70) # 1c003ad0 <test_min_value2_u16+0x1d0>
1c003a64:	2a400185 	ld.hu	$r5,$r12,0
1c003a68:	6c0008c5 	bgeu	$r6,$r5,8(0x8) # 1c003a70 <test_min_value2_u16+0x170>
1c003a6c:	001500c5 	move	$r5,$r6
1c003a70:	2a400986 	ld.hu	$r6,$r12,2(0x2)
1c003a74:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003a78:	6c0008a6 	bgeu	$r5,$r6,8(0x8) # 1c003a80 <test_min_value2_u16+0x180>
1c003a7c:	001500a6 	move	$r6,$r5
1c003a80:	2a400987 	ld.hu	$r7,$r12,2(0x2)
1c003a84:	6c0008c7 	bgeu	$r6,$r7,8(0x8) # 1c003a8c <test_min_value2_u16+0x18c>
1c003a88:	001500c7 	move	$r7,$r6
1c003a8c:	2a40118e 	ld.hu	$r14,$r12,4(0x4)
1c003a90:	6c0008ee 	bgeu	$r7,$r14,8(0x8) # 1c003a98 <test_min_value2_u16+0x198>
1c003a94:	001500ee 	move	$r14,$r7
1c003a98:	2a401988 	ld.hu	$r8,$r12,6(0x6)
1c003a9c:	6c0009c8 	bgeu	$r14,$r8,8(0x8) # 1c003aa4 <test_min_value2_u16+0x1a4>
1c003aa0:	001501c8 	move	$r8,$r14
1c003aa4:	2a402189 	ld.hu	$r9,$r12,8(0x8)
1c003aa8:	6c000909 	bgeu	$r8,$r9,8(0x8) # 1c003ab0 <test_min_value2_u16+0x1b0>
1c003aac:	00150109 	move	$r9,$r8
1c003ab0:	2a40298e 	ld.hu	$r14,$r12,10(0xa)
1c003ab4:	6c00092e 	bgeu	$r9,$r14,8(0x8) # 1c003abc <test_min_value2_u16+0x1bc>
1c003ab8:	0015012e 	move	$r14,$r9
1c003abc:	2a403186 	ld.hu	$r6,$r12,12(0xc)
1c003ac0:	6c0009c6 	bgeu	$r14,$r6,8(0x8) # 1c003ac8 <test_min_value2_u16+0x1c8>
1c003ac4:	001501c6 	move	$r6,$r14
1c003ac8:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c003acc:	5fff9b8c 	bne	$r28,$r12,-104(0x3ff98) # 1c003a64 <test_min_value2_u16+0x164>
1c003ad0:	28800367 	ld.w	$r7,$r27,0
1c003ad4:	29803067 	st.w	$r7,$r3,12(0xc)
1c003ad8:	2a40306a 	ld.hu	$r10,$r3,12(0xc)
1c003adc:	58002946 	beq	$r10,$r6,40(0x28) # 1c003b04 <test_min_value2_u16+0x204>
1c003ae0:	00150305 	move	$r5,$r24
1c003ae4:	00150344 	move	$r4,$r26
1c003ae8:	54974800 	bl	38728(0x9748) # 1c00d230 <printf>
1c003aec:	28800330 	ld.w	$r16,$r25,0
1c003af0:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c003af4:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c003af8:	640017b0 	bge	$r29,$r16,20(0x14) # 1c003b0c <test_min_value2_u16+0x20c>
1c003afc:	2a4003d1 	ld.hu	$r17,$r30,0
1c003b00:	53fe8bff 	b	-376(0xffffe88) # 1c003988 <test_min_value2_u16+0x88>
1c003b04:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c003b08:	63fe83b0 	blt	$r29,$r16,-384(0x3fe80) # 1c003988 <test_min_value2_u16+0x88>
1c003b0c:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c003b10:	28aad339 	ld.w	$r25,$r25,-1356(0xab4)
1c003b14:	549c2c00 	bl	39980(0x9c2c) # 1c00d740 <get_clock>
1c003b18:	2880033e 	ld.w	$r30,$r25,0
1c003b1c:	00150091 	move	$r17,$r4
1c003b20:	14001e9c 	lu12i.w	$r28,244(0xf4)
1c003b24:	0389039b 	ori	$r27,$r28,0x240
1c003b28:	1c000fb6 	pcaddu12i	$r22,125(0x7d)
1c003b2c:	28aa52d6 	ld.w	$r22,$r22,-1388(0xa94)
1c003b30:	001502e6 	move	$r6,$r23
1c003b34:	00150305 	move	$r5,$r24
1c003b38:	00117a37 	sub.w	$r23,$r17,$r30
1c003b3c:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c003b40:	02946084 	addi.w	$r4,$r4,1304(0x518)
1c003b44:	00216ee7 	div.wu	$r7,$r23,$r27
1c003b48:	5c000b60 	bne	$r27,$r0,8(0x8) # 1c003b50 <test_min_value2_u16+0x250>
1c003b4c:	002a0007 	break	0x7
1c003b50:	298002d1 	st.w	$r17,$r22,0
1c003b54:	5496dc00 	bl	38620(0x96dc) # 1c00d230 <printf>
1c003b58:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c003b5c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c003b60:	001503e4 	move	$r4,$r31
1c003b64:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c003b68:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c003b6c:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c003b70:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c003b74:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c003b78:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c003b7c:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c003b80:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c003b84:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c003b88:	02810063 	addi.w	$r3,$r3,64(0x40)
1c003b8c:	4c000020 	jirl	$r0,$r1,0
1c003b90:	00150226 	move	$r6,$r17
1c003b94:	53fe53ff 	b	-432(0xffffe50) # 1c0039e4 <test_min_value2_u16+0xe4>
1c003b98:	03400000 	andi	$r0,$r0,0x0
1c003b9c:	03400000 	andi	$r0,$r0,0x0

1c003ba0 <test_min_value2_32>:
test_min_value2_32():
1c003ba0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003ba4:	29809077 	st.w	$r23,$r3,36(0x24)
1c003ba8:	29808078 	st.w	$r24,$r3,32(0x20)
1c003bac:	29807079 	st.w	$r25,$r3,28(0x1c)
1c003bb0:	2980207e 	st.w	$r30,$r3,8(0x8)
1c003bb4:	2980107f 	st.w	$r31,$r3,4(0x4)
1c003bb8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003bbc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003bc0:	2980607a 	st.w	$r26,$r3,24(0x18)
1c003bc4:	2980507b 	st.w	$r27,$r3,20(0x14)
1c003bc8:	2980407c 	st.w	$r28,$r3,16(0x10)
1c003bcc:	2980307d 	st.w	$r29,$r3,12(0xc)
1c003bd0:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c003bd4:	02a79339 	addi.w	$r25,$r25,-1564(0x9e4)
1c003bd8:	0015009e 	move	$r30,$r4
1c003bdc:	001500b7 	move	$r23,$r5
1c003be0:	001500d8 	move	$r24,$r6
1c003be4:	549b5c00 	bl	39772(0x9b5c) # 1c00d740 <get_clock>
1c003be8:	2880032f 	ld.w	$r15,$r25,0
1c003bec:	1c000fac 	pcaddu12i	$r12,125(0x7d)
1c003bf0:	28a7518c 	ld.w	$r12,$r12,-1580(0x9d4)
1c003bf4:	29800184 	st.w	$r4,$r12,0
1c003bf8:	0015001f 	move	$r31,$r0
1c003bfc:	6401900f 	bge	$r0,$r15,400(0x190) # 1c003d8c <test_min_value2_32+0x1ec>
1c003c00:	288003d0 	ld.w	$r16,$r30,0
1c003c04:	00408afc 	slli.w	$r28,$r23,0x2
1c003c08:	0015001d 	move	$r29,$r0
1c003c0c:	0015001f 	move	$r31,$r0
1c003c10:	001073dc 	add.w	$r28,$r30,$r28
1c003c14:	1c000fbb 	pcaddu12i	$r27,125(0x7d)
1c003c18:	02a6f37b 	addi.w	$r27,$r27,-1604(0x9bc)
1c003c1c:	02800416 	addi.w	$r22,$r0,1(0x1)
1c003c20:	1c000f9a 	pcaddu12i	$r26,124(0x7c)
1c003c24:	0290335a 	addi.w	$r26,$r26,1036(0x40c)
1c003c28:	00150206 	move	$r6,$r16
1c003c2c:	6c012ed7 	bgeu	$r22,$r23,300(0x12c) # 1c003d58 <test_min_value2_32+0x1b8>
1c003c30:	028013cc 	addi.w	$r12,$r30,4(0x4)
1c003c34:	0011338d 	sub.w	$r13,$r28,$r12
1c003c38:	02bff1a1 	addi.w	$r1,$r13,-4(0xffc)
1c003c3c:	00448824 	srli.w	$r4,$r1,0x2
1c003c40:	02800485 	addi.w	$r5,$r4,1(0x1)
1c003c44:	03401ca7 	andi	$r7,$r5,0x7
1c003c48:	5800a4e0 	beq	$r7,$r0,164(0xa4) # 1c003cec <test_min_value2_32+0x14c>
1c003c4c:	02800411 	addi.w	$r17,$r0,1(0x1)
1c003c50:	580088f1 	beq	$r7,$r17,136(0x88) # 1c003cd8 <test_min_value2_32+0x138>
1c003c54:	02800808 	addi.w	$r8,$r0,2(0x2)
1c003c58:	580070e8 	beq	$r7,$r8,112(0x70) # 1c003cc8 <test_min_value2_32+0x128>
1c003c5c:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c003c60:	580058e9 	beq	$r7,$r9,88(0x58) # 1c003cb8 <test_min_value2_32+0x118>
1c003c64:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c003c68:	580040ea 	beq	$r7,$r10,64(0x40) # 1c003ca8 <test_min_value2_32+0x108>
1c003c6c:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c003c70:	580028eb 	beq	$r7,$r11,40(0x28) # 1c003c98 <test_min_value2_32+0xf8>
1c003c74:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c003c78:	580010ee 	beq	$r7,$r14,16(0x10) # 1c003c88 <test_min_value2_32+0xe8>
1c003c7c:	288013d2 	ld.w	$r18,$r30,4(0x4)
1c003c80:	60019250 	blt	$r18,$r16,400(0x190) # 1c003e10 <test_min_value2_32+0x270>
1c003c84:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003c88:	28800193 	ld.w	$r19,$r12,0
1c003c8c:	64000a66 	bge	$r19,$r6,8(0x8) # 1c003c94 <test_min_value2_32+0xf4>
1c003c90:	00150266 	move	$r6,$r19
1c003c94:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003c98:	28800194 	ld.w	$r20,$r12,0
1c003c9c:	64000a86 	bge	$r20,$r6,8(0x8) # 1c003ca4 <test_min_value2_32+0x104>
1c003ca0:	00150286 	move	$r6,$r20
1c003ca4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003ca8:	2880018d 	ld.w	$r13,$r12,0
1c003cac:	640009a6 	bge	$r13,$r6,8(0x8) # 1c003cb4 <test_min_value2_32+0x114>
1c003cb0:	001501a6 	move	$r6,$r13
1c003cb4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003cb8:	28800181 	ld.w	$r1,$r12,0
1c003cbc:	64000826 	bge	$r1,$r6,8(0x8) # 1c003cc4 <test_min_value2_32+0x124>
1c003cc0:	00150026 	move	$r6,$r1
1c003cc4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003cc8:	28800184 	ld.w	$r4,$r12,0
1c003ccc:	64000886 	bge	$r4,$r6,8(0x8) # 1c003cd4 <test_min_value2_32+0x134>
1c003cd0:	00150086 	move	$r6,$r4
1c003cd4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003cd8:	28800185 	ld.w	$r5,$r12,0
1c003cdc:	640008a6 	bge	$r5,$r6,8(0x8) # 1c003ce4 <test_min_value2_32+0x144>
1c003ce0:	001500a6 	move	$r6,$r5
1c003ce4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003ce8:	5800738c 	beq	$r28,$r12,112(0x70) # 1c003d58 <test_min_value2_32+0x1b8>
1c003cec:	28800187 	ld.w	$r7,$r12,0
1c003cf0:	640008e6 	bge	$r7,$r6,8(0x8) # 1c003cf8 <test_min_value2_32+0x158>
1c003cf4:	001500e6 	move	$r6,$r7
1c003cf8:	28801191 	ld.w	$r17,$r12,4(0x4)
1c003cfc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003d00:	64000a26 	bge	$r17,$r6,8(0x8) # 1c003d08 <test_min_value2_32+0x168>
1c003d04:	00150226 	move	$r6,$r17
1c003d08:	28801188 	ld.w	$r8,$r12,4(0x4)
1c003d0c:	64000906 	bge	$r8,$r6,8(0x8) # 1c003d14 <test_min_value2_32+0x174>
1c003d10:	00150106 	move	$r6,$r8
1c003d14:	28802189 	ld.w	$r9,$r12,8(0x8)
1c003d18:	64000926 	bge	$r9,$r6,8(0x8) # 1c003d20 <test_min_value2_32+0x180>
1c003d1c:	00150126 	move	$r6,$r9
1c003d20:	2880318a 	ld.w	$r10,$r12,12(0xc)
1c003d24:	64000946 	bge	$r10,$r6,8(0x8) # 1c003d2c <test_min_value2_32+0x18c>
1c003d28:	00150146 	move	$r6,$r10
1c003d2c:	2880418b 	ld.w	$r11,$r12,16(0x10)
1c003d30:	64000966 	bge	$r11,$r6,8(0x8) # 1c003d38 <test_min_value2_32+0x198>
1c003d34:	00150166 	move	$r6,$r11
1c003d38:	2880518e 	ld.w	$r14,$r12,20(0x14)
1c003d3c:	640009c6 	bge	$r14,$r6,8(0x8) # 1c003d44 <test_min_value2_32+0x1a4>
1c003d40:	001501c6 	move	$r6,$r14
1c003d44:	28806192 	ld.w	$r18,$r12,24(0x18)
1c003d48:	64000a46 	bge	$r18,$r6,8(0x8) # 1c003d50 <test_min_value2_32+0x1b0>
1c003d4c:	00150246 	move	$r6,$r18
1c003d50:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c003d54:	5fff9b8c 	bne	$r28,$r12,-104(0x3ff98) # 1c003cec <test_min_value2_32+0x14c>
1c003d58:	28800367 	ld.w	$r7,$r27,0
1c003d5c:	580028e6 	beq	$r7,$r6,40(0x28) # 1c003d84 <test_min_value2_32+0x1e4>
1c003d60:	00150305 	move	$r5,$r24
1c003d64:	00150344 	move	$r4,$r26
1c003d68:	5494c800 	bl	38088(0x94c8) # 1c00d230 <printf>
1c003d6c:	2880032f 	ld.w	$r15,$r25,0
1c003d70:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c003d74:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c003d78:	640017af 	bge	$r29,$r15,20(0x14) # 1c003d8c <test_min_value2_32+0x1ec>
1c003d7c:	288003d0 	ld.w	$r16,$r30,0
1c003d80:	53feabff 	b	-344(0xffffea8) # 1c003c28 <test_min_value2_32+0x88>
1c003d84:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c003d88:	63fea3af 	blt	$r29,$r15,-352(0x3fea0) # 1c003c28 <test_min_value2_32+0x88>
1c003d8c:	5499b400 	bl	39348(0x99b4) # 1c00d740 <get_clock>
1c003d90:	1c000fa6 	pcaddu12i	$r6,125(0x7d)
1c003d94:	28a0c0c6 	ld.w	$r6,$r6,-2000(0x830)
1c003d98:	288000d9 	ld.w	$r25,$r6,0
1c003d9c:	00150090 	move	$r16,$r4
1c003da0:	14001e9e 	lu12i.w	$r30,244(0xf4)
1c003da4:	038903dc 	ori	$r28,$r30,0x240
1c003da8:	1c000fbb 	pcaddu12i	$r27,125(0x7d)
1c003dac:	28a0537b 	ld.w	$r27,$r27,-2028(0x814)
1c003db0:	001502e6 	move	$r6,$r23
1c003db4:	00150305 	move	$r5,$r24
1c003db8:	00116617 	sub.w	$r23,$r16,$r25
1c003dbc:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c003dc0:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c003dc4:	002172e7 	div.wu	$r7,$r23,$r28
1c003dc8:	5c000b80 	bne	$r28,$r0,8(0x8) # 1c003dd0 <test_min_value2_32+0x230>
1c003dcc:	002a0007 	break	0x7
1c003dd0:	29800370 	st.w	$r16,$r27,0
1c003dd4:	54945c00 	bl	37980(0x945c) # 1c00d230 <printf>
1c003dd8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003ddc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003de0:	001503e4 	move	$r4,$r31
1c003de4:	28809077 	ld.w	$r23,$r3,36(0x24)
1c003de8:	28808078 	ld.w	$r24,$r3,32(0x20)
1c003dec:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c003df0:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c003df4:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c003df8:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c003dfc:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c003e00:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c003e04:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c003e08:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003e0c:	4c000020 	jirl	$r0,$r1,0
1c003e10:	00150246 	move	$r6,$r18
1c003e14:	53fe73ff 	b	-400(0xffffe70) # 1c003c84 <test_min_value2_32+0xe4>
1c003e18:	03400000 	andi	$r0,$r0,0x0
1c003e1c:	03400000 	andi	$r0,$r0,0x0

1c003e20 <test_min_value2_u32>:
test_min_value2_u32():
1c003e20:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003e24:	29809077 	st.w	$r23,$r3,36(0x24)
1c003e28:	29808078 	st.w	$r24,$r3,32(0x20)
1c003e2c:	29807079 	st.w	$r25,$r3,28(0x1c)
1c003e30:	2980207e 	st.w	$r30,$r3,8(0x8)
1c003e34:	2980107f 	st.w	$r31,$r3,4(0x4)
1c003e38:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003e3c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003e40:	2980607a 	st.w	$r26,$r3,24(0x18)
1c003e44:	2980507b 	st.w	$r27,$r3,20(0x14)
1c003e48:	2980407c 	st.w	$r28,$r3,16(0x10)
1c003e4c:	2980307d 	st.w	$r29,$r3,12(0xc)
1c003e50:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c003e54:	029d9339 	addi.w	$r25,$r25,1892(0x764)
1c003e58:	0015009e 	move	$r30,$r4
1c003e5c:	001500b7 	move	$r23,$r5
1c003e60:	001500d8 	move	$r24,$r6
1c003e64:	5498dc00 	bl	39132(0x98dc) # 1c00d740 <get_clock>
1c003e68:	2880032f 	ld.w	$r15,$r25,0
1c003e6c:	1c000f8c 	pcaddu12i	$r12,124(0x7c)
1c003e70:	289d518c 	ld.w	$r12,$r12,1876(0x754)
1c003e74:	29800184 	st.w	$r4,$r12,0
1c003e78:	0015001f 	move	$r31,$r0
1c003e7c:	6401900f 	bge	$r0,$r15,400(0x190) # 1c00400c <test_min_value2_u32+0x1ec>
1c003e80:	288003d0 	ld.w	$r16,$r30,0
1c003e84:	00408afc 	slli.w	$r28,$r23,0x2
1c003e88:	0015001d 	move	$r29,$r0
1c003e8c:	0015001f 	move	$r31,$r0
1c003e90:	001073dc 	add.w	$r28,$r30,$r28
1c003e94:	1c000f9b 	pcaddu12i	$r27,124(0x7c)
1c003e98:	029cf37b 	addi.w	$r27,$r27,1852(0x73c)
1c003e9c:	02800416 	addi.w	$r22,$r0,1(0x1)
1c003ea0:	1c000f9a 	pcaddu12i	$r26,124(0x7c)
1c003ea4:	0286335a 	addi.w	$r26,$r26,396(0x18c)
1c003ea8:	00150206 	move	$r6,$r16
1c003eac:	6c012ed7 	bgeu	$r22,$r23,300(0x12c) # 1c003fd8 <test_min_value2_u32+0x1b8>
1c003eb0:	028013cc 	addi.w	$r12,$r30,4(0x4)
1c003eb4:	0011338d 	sub.w	$r13,$r28,$r12
1c003eb8:	02bff1a1 	addi.w	$r1,$r13,-4(0xffc)
1c003ebc:	00448824 	srli.w	$r4,$r1,0x2
1c003ec0:	02800485 	addi.w	$r5,$r4,1(0x1)
1c003ec4:	03401ca7 	andi	$r7,$r5,0x7
1c003ec8:	5800a4e0 	beq	$r7,$r0,164(0xa4) # 1c003f6c <test_min_value2_u32+0x14c>
1c003ecc:	02800411 	addi.w	$r17,$r0,1(0x1)
1c003ed0:	580088f1 	beq	$r7,$r17,136(0x88) # 1c003f58 <test_min_value2_u32+0x138>
1c003ed4:	02800808 	addi.w	$r8,$r0,2(0x2)
1c003ed8:	580070e8 	beq	$r7,$r8,112(0x70) # 1c003f48 <test_min_value2_u32+0x128>
1c003edc:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c003ee0:	580058e9 	beq	$r7,$r9,88(0x58) # 1c003f38 <test_min_value2_u32+0x118>
1c003ee4:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c003ee8:	580040ea 	beq	$r7,$r10,64(0x40) # 1c003f28 <test_min_value2_u32+0x108>
1c003eec:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c003ef0:	580028eb 	beq	$r7,$r11,40(0x28) # 1c003f18 <test_min_value2_u32+0xf8>
1c003ef4:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c003ef8:	580010ee 	beq	$r7,$r14,16(0x10) # 1c003f08 <test_min_value2_u32+0xe8>
1c003efc:	288013d2 	ld.w	$r18,$r30,4(0x4)
1c003f00:	68019250 	bltu	$r18,$r16,400(0x190) # 1c004090 <test_min_value2_u32+0x270>
1c003f04:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003f08:	28800193 	ld.w	$r19,$r12,0
1c003f0c:	6c000a66 	bgeu	$r19,$r6,8(0x8) # 1c003f14 <test_min_value2_u32+0xf4>
1c003f10:	00150266 	move	$r6,$r19
1c003f14:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003f18:	28800194 	ld.w	$r20,$r12,0
1c003f1c:	6c000a86 	bgeu	$r20,$r6,8(0x8) # 1c003f24 <test_min_value2_u32+0x104>
1c003f20:	00150286 	move	$r6,$r20
1c003f24:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003f28:	2880018d 	ld.w	$r13,$r12,0
1c003f2c:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1c003f34 <test_min_value2_u32+0x114>
1c003f30:	001501a6 	move	$r6,$r13
1c003f34:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003f38:	28800181 	ld.w	$r1,$r12,0
1c003f3c:	6c000826 	bgeu	$r1,$r6,8(0x8) # 1c003f44 <test_min_value2_u32+0x124>
1c003f40:	00150026 	move	$r6,$r1
1c003f44:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003f48:	28800184 	ld.w	$r4,$r12,0
1c003f4c:	6c000886 	bgeu	$r4,$r6,8(0x8) # 1c003f54 <test_min_value2_u32+0x134>
1c003f50:	00150086 	move	$r6,$r4
1c003f54:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003f58:	28800185 	ld.w	$r5,$r12,0
1c003f5c:	6c0008a6 	bgeu	$r5,$r6,8(0x8) # 1c003f64 <test_min_value2_u32+0x144>
1c003f60:	001500a6 	move	$r6,$r5
1c003f64:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003f68:	5800738c 	beq	$r28,$r12,112(0x70) # 1c003fd8 <test_min_value2_u32+0x1b8>
1c003f6c:	28800187 	ld.w	$r7,$r12,0
1c003f70:	6c0008e6 	bgeu	$r7,$r6,8(0x8) # 1c003f78 <test_min_value2_u32+0x158>
1c003f74:	001500e6 	move	$r6,$r7
1c003f78:	28801191 	ld.w	$r17,$r12,4(0x4)
1c003f7c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003f80:	6c000a26 	bgeu	$r17,$r6,8(0x8) # 1c003f88 <test_min_value2_u32+0x168>
1c003f84:	00150226 	move	$r6,$r17
1c003f88:	28801188 	ld.w	$r8,$r12,4(0x4)
1c003f8c:	6c000906 	bgeu	$r8,$r6,8(0x8) # 1c003f94 <test_min_value2_u32+0x174>
1c003f90:	00150106 	move	$r6,$r8
1c003f94:	28802189 	ld.w	$r9,$r12,8(0x8)
1c003f98:	6c000926 	bgeu	$r9,$r6,8(0x8) # 1c003fa0 <test_min_value2_u32+0x180>
1c003f9c:	00150126 	move	$r6,$r9
1c003fa0:	2880318a 	ld.w	$r10,$r12,12(0xc)
1c003fa4:	6c000946 	bgeu	$r10,$r6,8(0x8) # 1c003fac <test_min_value2_u32+0x18c>
1c003fa8:	00150146 	move	$r6,$r10
1c003fac:	2880418b 	ld.w	$r11,$r12,16(0x10)
1c003fb0:	6c000966 	bgeu	$r11,$r6,8(0x8) # 1c003fb8 <test_min_value2_u32+0x198>
1c003fb4:	00150166 	move	$r6,$r11
1c003fb8:	2880518e 	ld.w	$r14,$r12,20(0x14)
1c003fbc:	6c0009c6 	bgeu	$r14,$r6,8(0x8) # 1c003fc4 <test_min_value2_u32+0x1a4>
1c003fc0:	001501c6 	move	$r6,$r14
1c003fc4:	28806192 	ld.w	$r18,$r12,24(0x18)
1c003fc8:	6c000a46 	bgeu	$r18,$r6,8(0x8) # 1c003fd0 <test_min_value2_u32+0x1b0>
1c003fcc:	00150246 	move	$r6,$r18
1c003fd0:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c003fd4:	5fff9b8c 	bne	$r28,$r12,-104(0x3ff98) # 1c003f6c <test_min_value2_u32+0x14c>
1c003fd8:	28800367 	ld.w	$r7,$r27,0
1c003fdc:	580028e6 	beq	$r7,$r6,40(0x28) # 1c004004 <test_min_value2_u32+0x1e4>
1c003fe0:	00150305 	move	$r5,$r24
1c003fe4:	00150344 	move	$r4,$r26
1c003fe8:	54924800 	bl	37448(0x9248) # 1c00d230 <printf>
1c003fec:	2880032f 	ld.w	$r15,$r25,0
1c003ff0:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c003ff4:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c003ff8:	640017af 	bge	$r29,$r15,20(0x14) # 1c00400c <test_min_value2_u32+0x1ec>
1c003ffc:	288003d0 	ld.w	$r16,$r30,0
1c004000:	53feabff 	b	-344(0xffffea8) # 1c003ea8 <test_min_value2_u32+0x88>
1c004004:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c004008:	63fea3af 	blt	$r29,$r15,-352(0x3fea0) # 1c003ea8 <test_min_value2_u32+0x88>
1c00400c:	54973400 	bl	38708(0x9734) # 1c00d740 <get_clock>
1c004010:	1c000f86 	pcaddu12i	$r6,124(0x7c)
1c004014:	2896c0c6 	ld.w	$r6,$r6,1456(0x5b0)
1c004018:	288000d9 	ld.w	$r25,$r6,0
1c00401c:	00150090 	move	$r16,$r4
1c004020:	14001e9e 	lu12i.w	$r30,244(0xf4)
1c004024:	038903dc 	ori	$r28,$r30,0x240
1c004028:	1c000f9b 	pcaddu12i	$r27,124(0x7c)
1c00402c:	2896537b 	ld.w	$r27,$r27,1428(0x594)
1c004030:	001502e6 	move	$r6,$r23
1c004034:	00150305 	move	$r5,$r24
1c004038:	00116617 	sub.w	$r23,$r16,$r25
1c00403c:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c004040:	02806084 	addi.w	$r4,$r4,24(0x18)
1c004044:	002172e7 	div.wu	$r7,$r23,$r28
1c004048:	5c000b80 	bne	$r28,$r0,8(0x8) # 1c004050 <test_min_value2_u32+0x230>
1c00404c:	002a0007 	break	0x7
1c004050:	29800370 	st.w	$r16,$r27,0
1c004054:	5491dc00 	bl	37340(0x91dc) # 1c00d230 <printf>
1c004058:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00405c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004060:	001503e4 	move	$r4,$r31
1c004064:	28809077 	ld.w	$r23,$r3,36(0x24)
1c004068:	28808078 	ld.w	$r24,$r3,32(0x20)
1c00406c:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c004070:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c004074:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c004078:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c00407c:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c004080:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c004084:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c004088:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00408c:	4c000020 	jirl	$r0,$r1,0
1c004090:	00150246 	move	$r6,$r18
1c004094:	53fe73ff 	b	-400(0xffffe70) # 1c003f04 <test_min_value2_u32+0xe4>
1c004098:	03400000 	andi	$r0,$r0,0x0
1c00409c:	03400000 	andi	$r0,$r0,0x0

1c0040a0 <test_max_value2_8>:
test_max_value2_8():
1c0040a0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0040a4:	2980d077 	st.w	$r23,$r3,52(0x34)
1c0040a8:	2980c078 	st.w	$r24,$r3,48(0x30)
1c0040ac:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c0040b0:	2980607e 	st.w	$r30,$r3,24(0x18)
1c0040b4:	2980507f 	st.w	$r31,$r3,20(0x14)
1c0040b8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0040bc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0040c0:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c0040c4:	2980907b 	st.w	$r27,$r3,36(0x24)
1c0040c8:	2980807c 	st.w	$r28,$r3,32(0x20)
1c0040cc:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c0040d0:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c0040d4:	02939339 	addi.w	$r25,$r25,1252(0x4e4)
1c0040d8:	0015009e 	move	$r30,$r4
1c0040dc:	001500b7 	move	$r23,$r5
1c0040e0:	001500d8 	move	$r24,$r6
1c0040e4:	54965c00 	bl	38492(0x965c) # 1c00d740 <get_clock>
1c0040e8:	28800330 	ld.w	$r16,$r25,0
1c0040ec:	1c000f8c 	pcaddu12i	$r12,124(0x7c)
1c0040f0:	2893518c 	ld.w	$r12,$r12,1236(0x4d4)
1c0040f4:	29800184 	st.w	$r4,$r12,0
1c0040f8:	0015001f 	move	$r31,$r0
1c0040fc:	6401a010 	bge	$r0,$r16,416(0x1a0) # 1c00429c <test_max_value2_8+0x1fc>
1c004100:	280003d1 	ld.b	$r17,$r30,0
1c004104:	0015001c 	move	$r28,$r0
1c004108:	0015001f 	move	$r31,$r0
1c00410c:	1c000f9b 	pcaddu12i	$r27,124(0x7c)
1c004110:	0293037b 	addi.w	$r27,$r27,1216(0x4c0)
1c004114:	02800416 	addi.w	$r22,$r0,1(0x1)
1c004118:	00105fdd 	add.w	$r29,$r30,$r23
1c00411c:	1c000f9a 	pcaddu12i	$r26,124(0x7c)
1c004120:	02bc435a 	addi.w	$r26,$r26,-240(0xf10)
1c004124:	00150226 	move	$r6,$r17
1c004128:	6c013ad7 	bgeu	$r22,$r23,312(0x138) # 1c004260 <test_max_value2_8+0x1c0>
1c00412c:	028007cc 	addi.w	$r12,$r30,1(0x1)
1c004130:	001133ad 	sub.w	$r13,$r29,$r12
1c004134:	03401da1 	andi	$r1,$r13,0x7
1c004138:	5800bc20 	beq	$r1,$r0,188(0xbc) # 1c0041f4 <test_max_value2_8+0x154>
1c00413c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c004140:	58009c2e 	beq	$r1,$r14,156(0x9c) # 1c0041dc <test_max_value2_8+0x13c>
1c004144:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004148:	58008024 	beq	$r1,$r4,128(0x80) # 1c0041c8 <test_max_value2_8+0x128>
1c00414c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c004150:	58006425 	beq	$r1,$r5,100(0x64) # 1c0041b4 <test_max_value2_8+0x114>
1c004154:	02801007 	addi.w	$r7,$r0,4(0x4)
1c004158:	58004827 	beq	$r1,$r7,72(0x48) # 1c0041a0 <test_max_value2_8+0x100>
1c00415c:	02801408 	addi.w	$r8,$r0,5(0x5)
1c004160:	58002c28 	beq	$r1,$r8,44(0x2c) # 1c00418c <test_max_value2_8+0xec>
1c004164:	02801809 	addi.w	$r9,$r0,6(0x6)
1c004168:	58001029 	beq	$r1,$r9,16(0x10) # 1c004178 <test_max_value2_8+0xd8>
1c00416c:	280007c6 	ld.b	$r6,$r30,1(0x1)
1c004170:	6001b0d1 	blt	$r6,$r17,432(0x1b0) # 1c004320 <test_max_value2_8+0x280>
1c004174:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004178:	2800018a 	ld.b	$r10,$r12,0
1c00417c:	64000946 	bge	$r10,$r6,8(0x8) # 1c004184 <test_max_value2_8+0xe4>
1c004180:	001500ca 	move	$r10,$r6
1c004184:	00150146 	move	$r6,$r10
1c004188:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00418c:	2800018b 	ld.b	$r11,$r12,0
1c004190:	64000966 	bge	$r11,$r6,8(0x8) # 1c004198 <test_max_value2_8+0xf8>
1c004194:	001500cb 	move	$r11,$r6
1c004198:	00150166 	move	$r6,$r11
1c00419c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0041a0:	2800018f 	ld.b	$r15,$r12,0
1c0041a4:	640009e6 	bge	$r15,$r6,8(0x8) # 1c0041ac <test_max_value2_8+0x10c>
1c0041a8:	001500cf 	move	$r15,$r6
1c0041ac:	001501e6 	move	$r6,$r15
1c0041b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0041b4:	28000192 	ld.b	$r18,$r12,0
1c0041b8:	64000a46 	bge	$r18,$r6,8(0x8) # 1c0041c0 <test_max_value2_8+0x120>
1c0041bc:	001500d2 	move	$r18,$r6
1c0041c0:	00150246 	move	$r6,$r18
1c0041c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0041c8:	28000193 	ld.b	$r19,$r12,0
1c0041cc:	64000a66 	bge	$r19,$r6,8(0x8) # 1c0041d4 <test_max_value2_8+0x134>
1c0041d0:	001500d3 	move	$r19,$r6
1c0041d4:	00150266 	move	$r6,$r19
1c0041d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0041dc:	28000194 	ld.b	$r20,$r12,0
1c0041e0:	64000a86 	bge	$r20,$r6,8(0x8) # 1c0041e8 <test_max_value2_8+0x148>
1c0041e4:	001500d4 	move	$r20,$r6
1c0041e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0041ec:	00150286 	move	$r6,$r20
1c0041f0:	580073ac 	beq	$r29,$r12,112(0x70) # 1c004260 <test_max_value2_8+0x1c0>
1c0041f4:	2800018d 	ld.b	$r13,$r12,0
1c0041f8:	640009a6 	bge	$r13,$r6,8(0x8) # 1c004200 <test_max_value2_8+0x160>
1c0041fc:	001500cd 	move	$r13,$r6
1c004200:	28000586 	ld.b	$r6,$r12,1(0x1)
1c004204:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004208:	640008cd 	bge	$r6,$r13,8(0x8) # 1c004210 <test_max_value2_8+0x170>
1c00420c:	001501a6 	move	$r6,$r13
1c004210:	28000581 	ld.b	$r1,$r12,1(0x1)
1c004214:	64000826 	bge	$r1,$r6,8(0x8) # 1c00421c <test_max_value2_8+0x17c>
1c004218:	001500c1 	move	$r1,$r6
1c00421c:	2800098e 	ld.b	$r14,$r12,2(0x2)
1c004220:	640009c1 	bge	$r14,$r1,8(0x8) # 1c004228 <test_max_value2_8+0x188>
1c004224:	0015002e 	move	$r14,$r1
1c004228:	28000d84 	ld.b	$r4,$r12,3(0x3)
1c00422c:	6400088e 	bge	$r4,$r14,8(0x8) # 1c004234 <test_max_value2_8+0x194>
1c004230:	001501c4 	move	$r4,$r14
1c004234:	28001185 	ld.b	$r5,$r12,4(0x4)
1c004238:	640008a4 	bge	$r5,$r4,8(0x8) # 1c004240 <test_max_value2_8+0x1a0>
1c00423c:	00150085 	move	$r5,$r4
1c004240:	2800158e 	ld.b	$r14,$r12,5(0x5)
1c004244:	640009c5 	bge	$r14,$r5,8(0x8) # 1c00424c <test_max_value2_8+0x1ac>
1c004248:	001500ae 	move	$r14,$r5
1c00424c:	28001986 	ld.b	$r6,$r12,6(0x6)
1c004250:	640008ce 	bge	$r6,$r14,8(0x8) # 1c004258 <test_max_value2_8+0x1b8>
1c004254:	001501c6 	move	$r6,$r14
1c004258:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c00425c:	5fff9bac 	bne	$r29,$r12,-104(0x3ff98) # 1c0041f4 <test_max_value2_8+0x154>
1c004260:	28800367 	ld.w	$r7,$r27,0
1c004264:	29803067 	st.w	$r7,$r3,12(0xc)
1c004268:	28003068 	ld.b	$r8,$r3,12(0xc)
1c00426c:	58002906 	beq	$r8,$r6,40(0x28) # 1c004294 <test_max_value2_8+0x1f4>
1c004270:	00150305 	move	$r5,$r24
1c004274:	00150344 	move	$r4,$r26
1c004278:	548fb800 	bl	36792(0x8fb8) # 1c00d230 <printf>
1c00427c:	28800330 	ld.w	$r16,$r25,0
1c004280:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c004284:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c004288:	64001790 	bge	$r28,$r16,20(0x14) # 1c00429c <test_max_value2_8+0x1fc>
1c00428c:	280003d1 	ld.b	$r17,$r30,0
1c004290:	53fe97ff 	b	-364(0xffffe94) # 1c004124 <test_max_value2_8+0x84>
1c004294:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c004298:	63fe8f90 	blt	$r28,$r16,-372(0x3fe8c) # 1c004124 <test_max_value2_8+0x84>
1c00429c:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c0042a0:	288c9339 	ld.w	$r25,$r25,804(0x324)
1c0042a4:	54949c00 	bl	38044(0x949c) # 1c00d740 <get_clock>
1c0042a8:	2880033e 	ld.w	$r30,$r25,0
1c0042ac:	00150091 	move	$r17,$r4
1c0042b0:	14001e9b 	lu12i.w	$r27,244(0xf4)
1c0042b4:	03890376 	ori	$r22,$r27,0x240
1c0042b8:	1c000f9d 	pcaddu12i	$r29,124(0x7c)
1c0042bc:	288c13bd 	ld.w	$r29,$r29,772(0x304)
1c0042c0:	001502e6 	move	$r6,$r23
1c0042c4:	00150305 	move	$r5,$r24
1c0042c8:	00117a37 	sub.w	$r23,$r17,$r30
1c0042cc:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c0042d0:	02b62084 	addi.w	$r4,$r4,-632(0xd88)
1c0042d4:	00215ae7 	div.wu	$r7,$r23,$r22
1c0042d8:	5c000ac0 	bne	$r22,$r0,8(0x8) # 1c0042e0 <test_max_value2_8+0x240>
1c0042dc:	002a0007 	break	0x7
1c0042e0:	298003b1 	st.w	$r17,$r29,0
1c0042e4:	548f4c00 	bl	36684(0x8f4c) # 1c00d230 <printf>
1c0042e8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0042ec:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0042f0:	001503e4 	move	$r4,$r31
1c0042f4:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c0042f8:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c0042fc:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c004300:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c004304:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c004308:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c00430c:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c004310:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c004314:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c004318:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00431c:	4c000020 	jirl	$r0,$r1,0
1c004320:	00150226 	move	$r6,$r17
1c004324:	53fe53ff 	b	-432(0xffffe50) # 1c004174 <test_max_value2_8+0xd4>
1c004328:	03400000 	andi	$r0,$r0,0x0
1c00432c:	03400000 	andi	$r0,$r0,0x0

1c004330 <test_max_value2_u8>:
test_max_value2_u8():
1c004330:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004334:	2980d077 	st.w	$r23,$r3,52(0x34)
1c004338:	2980c078 	st.w	$r24,$r3,48(0x30)
1c00433c:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c004340:	2980607e 	st.w	$r30,$r3,24(0x18)
1c004344:	2980507f 	st.w	$r31,$r3,20(0x14)
1c004348:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00434c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004350:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c004354:	2980907b 	st.w	$r27,$r3,36(0x24)
1c004358:	2980807c 	st.w	$r28,$r3,32(0x20)
1c00435c:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c004360:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c004364:	02895339 	addi.w	$r25,$r25,596(0x254)
1c004368:	0015009e 	move	$r30,$r4
1c00436c:	001500b7 	move	$r23,$r5
1c004370:	001500d8 	move	$r24,$r6
1c004374:	5493cc00 	bl	37836(0x93cc) # 1c00d740 <get_clock>
1c004378:	28800330 	ld.w	$r16,$r25,0
1c00437c:	1c000f8c 	pcaddu12i	$r12,124(0x7c)
1c004380:	2889118c 	ld.w	$r12,$r12,580(0x244)
1c004384:	29800184 	st.w	$r4,$r12,0
1c004388:	0015001f 	move	$r31,$r0
1c00438c:	6401a010 	bge	$r0,$r16,416(0x1a0) # 1c00452c <test_max_value2_u8+0x1fc>
1c004390:	2a0003d1 	ld.bu	$r17,$r30,0
1c004394:	0015001c 	move	$r28,$r0
1c004398:	0015001f 	move	$r31,$r0
1c00439c:	1c000f9b 	pcaddu12i	$r27,124(0x7c)
1c0043a0:	0288c37b 	addi.w	$r27,$r27,560(0x230)
1c0043a4:	02800416 	addi.w	$r22,$r0,1(0x1)
1c0043a8:	00105fdd 	add.w	$r29,$r30,$r23
1c0043ac:	1c000f9a 	pcaddu12i	$r26,124(0x7c)
1c0043b0:	02b2035a 	addi.w	$r26,$r26,-896(0xc80)
1c0043b4:	00150226 	move	$r6,$r17
1c0043b8:	6c013ad7 	bgeu	$r22,$r23,312(0x138) # 1c0044f0 <test_max_value2_u8+0x1c0>
1c0043bc:	028007cc 	addi.w	$r12,$r30,1(0x1)
1c0043c0:	001133ad 	sub.w	$r13,$r29,$r12
1c0043c4:	03401da1 	andi	$r1,$r13,0x7
1c0043c8:	5800bc20 	beq	$r1,$r0,188(0xbc) # 1c004484 <test_max_value2_u8+0x154>
1c0043cc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0043d0:	58009c2e 	beq	$r1,$r14,156(0x9c) # 1c00446c <test_max_value2_u8+0x13c>
1c0043d4:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0043d8:	58008024 	beq	$r1,$r4,128(0x80) # 1c004458 <test_max_value2_u8+0x128>
1c0043dc:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0043e0:	58006425 	beq	$r1,$r5,100(0x64) # 1c004444 <test_max_value2_u8+0x114>
1c0043e4:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0043e8:	58004827 	beq	$r1,$r7,72(0x48) # 1c004430 <test_max_value2_u8+0x100>
1c0043ec:	02801408 	addi.w	$r8,$r0,5(0x5)
1c0043f0:	58002c28 	beq	$r1,$r8,44(0x2c) # 1c00441c <test_max_value2_u8+0xec>
1c0043f4:	02801809 	addi.w	$r9,$r0,6(0x6)
1c0043f8:	58001029 	beq	$r1,$r9,16(0x10) # 1c004408 <test_max_value2_u8+0xd8>
1c0043fc:	2a0007c6 	ld.bu	$r6,$r30,1(0x1)
1c004400:	6801b0d1 	bltu	$r6,$r17,432(0x1b0) # 1c0045b0 <test_max_value2_u8+0x280>
1c004404:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004408:	2a00018a 	ld.bu	$r10,$r12,0
1c00440c:	6c000946 	bgeu	$r10,$r6,8(0x8) # 1c004414 <test_max_value2_u8+0xe4>
1c004410:	001500ca 	move	$r10,$r6
1c004414:	00150146 	move	$r6,$r10
1c004418:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00441c:	2a00018b 	ld.bu	$r11,$r12,0
1c004420:	6c000966 	bgeu	$r11,$r6,8(0x8) # 1c004428 <test_max_value2_u8+0xf8>
1c004424:	001500cb 	move	$r11,$r6
1c004428:	00150166 	move	$r6,$r11
1c00442c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004430:	2a00018f 	ld.bu	$r15,$r12,0
1c004434:	6c0009e6 	bgeu	$r15,$r6,8(0x8) # 1c00443c <test_max_value2_u8+0x10c>
1c004438:	001500cf 	move	$r15,$r6
1c00443c:	001501e6 	move	$r6,$r15
1c004440:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004444:	2a000192 	ld.bu	$r18,$r12,0
1c004448:	6c000a46 	bgeu	$r18,$r6,8(0x8) # 1c004450 <test_max_value2_u8+0x120>
1c00444c:	001500d2 	move	$r18,$r6
1c004450:	00150246 	move	$r6,$r18
1c004454:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004458:	2a000193 	ld.bu	$r19,$r12,0
1c00445c:	6c000a66 	bgeu	$r19,$r6,8(0x8) # 1c004464 <test_max_value2_u8+0x134>
1c004460:	001500d3 	move	$r19,$r6
1c004464:	00150266 	move	$r6,$r19
1c004468:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00446c:	2a000194 	ld.bu	$r20,$r12,0
1c004470:	6c000a86 	bgeu	$r20,$r6,8(0x8) # 1c004478 <test_max_value2_u8+0x148>
1c004474:	001500d4 	move	$r20,$r6
1c004478:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00447c:	00150286 	move	$r6,$r20
1c004480:	580073ac 	beq	$r29,$r12,112(0x70) # 1c0044f0 <test_max_value2_u8+0x1c0>
1c004484:	2a00018d 	ld.bu	$r13,$r12,0
1c004488:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1c004490 <test_max_value2_u8+0x160>
1c00448c:	001500cd 	move	$r13,$r6
1c004490:	2a000586 	ld.bu	$r6,$r12,1(0x1)
1c004494:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004498:	6c0008cd 	bgeu	$r6,$r13,8(0x8) # 1c0044a0 <test_max_value2_u8+0x170>
1c00449c:	001501a6 	move	$r6,$r13
1c0044a0:	2a000581 	ld.bu	$r1,$r12,1(0x1)
1c0044a4:	6c000826 	bgeu	$r1,$r6,8(0x8) # 1c0044ac <test_max_value2_u8+0x17c>
1c0044a8:	001500c1 	move	$r1,$r6
1c0044ac:	2a00098e 	ld.bu	$r14,$r12,2(0x2)
1c0044b0:	6c0009c1 	bgeu	$r14,$r1,8(0x8) # 1c0044b8 <test_max_value2_u8+0x188>
1c0044b4:	0015002e 	move	$r14,$r1
1c0044b8:	2a000d84 	ld.bu	$r4,$r12,3(0x3)
1c0044bc:	6c00088e 	bgeu	$r4,$r14,8(0x8) # 1c0044c4 <test_max_value2_u8+0x194>
1c0044c0:	001501c4 	move	$r4,$r14
1c0044c4:	2a001185 	ld.bu	$r5,$r12,4(0x4)
1c0044c8:	6c0008a4 	bgeu	$r5,$r4,8(0x8) # 1c0044d0 <test_max_value2_u8+0x1a0>
1c0044cc:	00150085 	move	$r5,$r4
1c0044d0:	2a00158e 	ld.bu	$r14,$r12,5(0x5)
1c0044d4:	6c0009c5 	bgeu	$r14,$r5,8(0x8) # 1c0044dc <test_max_value2_u8+0x1ac>
1c0044d8:	001500ae 	move	$r14,$r5
1c0044dc:	2a001986 	ld.bu	$r6,$r12,6(0x6)
1c0044e0:	6c0008ce 	bgeu	$r6,$r14,8(0x8) # 1c0044e8 <test_max_value2_u8+0x1b8>
1c0044e4:	001501c6 	move	$r6,$r14
1c0044e8:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c0044ec:	5fff9bac 	bne	$r29,$r12,-104(0x3ff98) # 1c004484 <test_max_value2_u8+0x154>
1c0044f0:	28800367 	ld.w	$r7,$r27,0
1c0044f4:	29803067 	st.w	$r7,$r3,12(0xc)
1c0044f8:	2a003068 	ld.bu	$r8,$r3,12(0xc)
1c0044fc:	58002906 	beq	$r8,$r6,40(0x28) # 1c004524 <test_max_value2_u8+0x1f4>
1c004500:	00150305 	move	$r5,$r24
1c004504:	00150344 	move	$r4,$r26
1c004508:	548d2800 	bl	36136(0x8d28) # 1c00d230 <printf>
1c00450c:	28800330 	ld.w	$r16,$r25,0
1c004510:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c004514:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c004518:	64001790 	bge	$r28,$r16,20(0x14) # 1c00452c <test_max_value2_u8+0x1fc>
1c00451c:	2a0003d1 	ld.bu	$r17,$r30,0
1c004520:	53fe97ff 	b	-364(0xffffe94) # 1c0043b4 <test_max_value2_u8+0x84>
1c004524:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c004528:	63fe8f90 	blt	$r28,$r16,-372(0x3fe8c) # 1c0043b4 <test_max_value2_u8+0x84>
1c00452c:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c004530:	28825339 	ld.w	$r25,$r25,148(0x94)
1c004534:	54920c00 	bl	37388(0x920c) # 1c00d740 <get_clock>
1c004538:	2880033e 	ld.w	$r30,$r25,0
1c00453c:	00150091 	move	$r17,$r4
1c004540:	14001e9b 	lu12i.w	$r27,244(0xf4)
1c004544:	03890376 	ori	$r22,$r27,0x240
1c004548:	1c000f9d 	pcaddu12i	$r29,124(0x7c)
1c00454c:	2881d3bd 	ld.w	$r29,$r29,116(0x74)
1c004550:	001502e6 	move	$r6,$r23
1c004554:	00150305 	move	$r5,$r24
1c004558:	00117a37 	sub.w	$r23,$r17,$r30
1c00455c:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c004560:	02abe084 	addi.w	$r4,$r4,-1288(0xaf8)
1c004564:	00215ae7 	div.wu	$r7,$r23,$r22
1c004568:	5c000ac0 	bne	$r22,$r0,8(0x8) # 1c004570 <test_max_value2_u8+0x240>
1c00456c:	002a0007 	break	0x7
1c004570:	298003b1 	st.w	$r17,$r29,0
1c004574:	548cbc00 	bl	36028(0x8cbc) # 1c00d230 <printf>
1c004578:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00457c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c004580:	001503e4 	move	$r4,$r31
1c004584:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c004588:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c00458c:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c004590:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c004594:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c004598:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c00459c:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c0045a0:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c0045a4:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c0045a8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0045ac:	4c000020 	jirl	$r0,$r1,0
1c0045b0:	00150226 	move	$r6,$r17
1c0045b4:	53fe53ff 	b	-432(0xffffe50) # 1c004404 <test_max_value2_u8+0xd4>
1c0045b8:	03400000 	andi	$r0,$r0,0x0
1c0045bc:	03400000 	andi	$r0,$r0,0x0

1c0045c0 <test_max_value2_16>:
test_max_value2_16():
1c0045c0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0045c4:	2980d077 	st.w	$r23,$r3,52(0x34)
1c0045c8:	2980c078 	st.w	$r24,$r3,48(0x30)
1c0045cc:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c0045d0:	2980607e 	st.w	$r30,$r3,24(0x18)
1c0045d4:	2980507f 	st.w	$r31,$r3,20(0x14)
1c0045d8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0045dc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0045e0:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c0045e4:	2980907b 	st.w	$r27,$r3,36(0x24)
1c0045e8:	2980807c 	st.w	$r28,$r3,32(0x20)
1c0045ec:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c0045f0:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c0045f4:	02bf1339 	addi.w	$r25,$r25,-60(0xfc4)
1c0045f8:	0015009e 	move	$r30,$r4
1c0045fc:	001500b7 	move	$r23,$r5
1c004600:	001500d8 	move	$r24,$r6
1c004604:	54913c00 	bl	37180(0x913c) # 1c00d740 <get_clock>
1c004608:	28800330 	ld.w	$r16,$r25,0
1c00460c:	1c000f8c 	pcaddu12i	$r12,124(0x7c)
1c004610:	28bed18c 	ld.w	$r12,$r12,-76(0xfb4)
1c004614:	29800184 	st.w	$r4,$r12,0
1c004618:	0015001f 	move	$r31,$r0
1c00461c:	6401b010 	bge	$r0,$r16,432(0x1b0) # 1c0047cc <test_max_value2_16+0x20c>
1c004620:	284003d1 	ld.h	$r17,$r30,0
1c004624:	004086fc 	slli.w	$r28,$r23,0x1
1c004628:	0015001d 	move	$r29,$r0
1c00462c:	0015001f 	move	$r31,$r0
1c004630:	001073dc 	add.w	$r28,$r30,$r28
1c004634:	1c000f9b 	pcaddu12i	$r27,124(0x7c)
1c004638:	02be637b 	addi.w	$r27,$r27,-104(0xf98)
1c00463c:	02800416 	addi.w	$r22,$r0,1(0x1)
1c004640:	1c000f9a 	pcaddu12i	$r26,124(0x7c)
1c004644:	02a7b35a 	addi.w	$r26,$r26,-1556(0x9ec)
1c004648:	00150226 	move	$r6,$r17
1c00464c:	6c0146d7 	bgeu	$r22,$r23,324(0x144) # 1c004790 <test_max_value2_16+0x1d0>
1c004650:	02800bcc 	addi.w	$r12,$r30,2(0x2)
1c004654:	0011338d 	sub.w	$r13,$r28,$r12
1c004658:	02bff9a1 	addi.w	$r1,$r13,-2(0xffe)
1c00465c:	00448424 	srli.w	$r4,$r1,0x1
1c004660:	02800485 	addi.w	$r5,$r4,1(0x1)
1c004664:	03401ca7 	andi	$r7,$r5,0x7
1c004668:	5800bce0 	beq	$r7,$r0,188(0xbc) # 1c004724 <test_max_value2_16+0x164>
1c00466c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c004670:	58009cee 	beq	$r7,$r14,156(0x9c) # 1c00470c <test_max_value2_16+0x14c>
1c004674:	02800808 	addi.w	$r8,$r0,2(0x2)
1c004678:	580080e8 	beq	$r7,$r8,128(0x80) # 1c0046f8 <test_max_value2_16+0x138>
1c00467c:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c004680:	580064e9 	beq	$r7,$r9,100(0x64) # 1c0046e4 <test_max_value2_16+0x124>
1c004684:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c004688:	580048ea 	beq	$r7,$r10,72(0x48) # 1c0046d0 <test_max_value2_16+0x110>
1c00468c:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c004690:	58002ceb 	beq	$r7,$r11,44(0x2c) # 1c0046bc <test_max_value2_16+0xfc>
1c004694:	0280180f 	addi.w	$r15,$r0,6(0x6)
1c004698:	580010ef 	beq	$r7,$r15,16(0x10) # 1c0046a8 <test_max_value2_16+0xe8>
1c00469c:	28400bc6 	ld.h	$r6,$r30,2(0x2)
1c0046a0:	6001b0d1 	blt	$r6,$r17,432(0x1b0) # 1c004850 <test_max_value2_16+0x290>
1c0046a4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0046a8:	28400192 	ld.h	$r18,$r12,0
1c0046ac:	64000a46 	bge	$r18,$r6,8(0x8) # 1c0046b4 <test_max_value2_16+0xf4>
1c0046b0:	001500d2 	move	$r18,$r6
1c0046b4:	00150246 	move	$r6,$r18
1c0046b8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0046bc:	28400193 	ld.h	$r19,$r12,0
1c0046c0:	64000a66 	bge	$r19,$r6,8(0x8) # 1c0046c8 <test_max_value2_16+0x108>
1c0046c4:	001500d3 	move	$r19,$r6
1c0046c8:	00150266 	move	$r6,$r19
1c0046cc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0046d0:	28400194 	ld.h	$r20,$r12,0
1c0046d4:	64000a86 	bge	$r20,$r6,8(0x8) # 1c0046dc <test_max_value2_16+0x11c>
1c0046d8:	001500d4 	move	$r20,$r6
1c0046dc:	00150286 	move	$r6,$r20
1c0046e0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0046e4:	2840018d 	ld.h	$r13,$r12,0
1c0046e8:	640009a6 	bge	$r13,$r6,8(0x8) # 1c0046f0 <test_max_value2_16+0x130>
1c0046ec:	001500cd 	move	$r13,$r6
1c0046f0:	001501a6 	move	$r6,$r13
1c0046f4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0046f8:	28400181 	ld.h	$r1,$r12,0
1c0046fc:	64000826 	bge	$r1,$r6,8(0x8) # 1c004704 <test_max_value2_16+0x144>
1c004700:	001500c1 	move	$r1,$r6
1c004704:	00150026 	move	$r6,$r1
1c004708:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00470c:	28400184 	ld.h	$r4,$r12,0
1c004710:	64000886 	bge	$r4,$r6,8(0x8) # 1c004718 <test_max_value2_16+0x158>
1c004714:	001500c4 	move	$r4,$r6
1c004718:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00471c:	00150086 	move	$r6,$r4
1c004720:	5800738c 	beq	$r28,$r12,112(0x70) # 1c004790 <test_max_value2_16+0x1d0>
1c004724:	28400185 	ld.h	$r5,$r12,0
1c004728:	640008a6 	bge	$r5,$r6,8(0x8) # 1c004730 <test_max_value2_16+0x170>
1c00472c:	001500c5 	move	$r5,$r6
1c004730:	28400986 	ld.h	$r6,$r12,2(0x2)
1c004734:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004738:	640008c5 	bge	$r6,$r5,8(0x8) # 1c004740 <test_max_value2_16+0x180>
1c00473c:	001500a6 	move	$r6,$r5
1c004740:	28400987 	ld.h	$r7,$r12,2(0x2)
1c004744:	640008e6 	bge	$r7,$r6,8(0x8) # 1c00474c <test_max_value2_16+0x18c>
1c004748:	001500c7 	move	$r7,$r6
1c00474c:	2840118e 	ld.h	$r14,$r12,4(0x4)
1c004750:	640009c7 	bge	$r14,$r7,8(0x8) # 1c004758 <test_max_value2_16+0x198>
1c004754:	001500ee 	move	$r14,$r7
1c004758:	28401988 	ld.h	$r8,$r12,6(0x6)
1c00475c:	6400090e 	bge	$r8,$r14,8(0x8) # 1c004764 <test_max_value2_16+0x1a4>
1c004760:	001501c8 	move	$r8,$r14
1c004764:	28402189 	ld.h	$r9,$r12,8(0x8)
1c004768:	64000928 	bge	$r9,$r8,8(0x8) # 1c004770 <test_max_value2_16+0x1b0>
1c00476c:	00150109 	move	$r9,$r8
1c004770:	2840298e 	ld.h	$r14,$r12,10(0xa)
1c004774:	640009c9 	bge	$r14,$r9,8(0x8) # 1c00477c <test_max_value2_16+0x1bc>
1c004778:	0015012e 	move	$r14,$r9
1c00477c:	28403186 	ld.h	$r6,$r12,12(0xc)
1c004780:	640008ce 	bge	$r6,$r14,8(0x8) # 1c004788 <test_max_value2_16+0x1c8>
1c004784:	001501c6 	move	$r6,$r14
1c004788:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c00478c:	5fff9b8c 	bne	$r28,$r12,-104(0x3ff98) # 1c004724 <test_max_value2_16+0x164>
1c004790:	28800367 	ld.w	$r7,$r27,0
1c004794:	29803067 	st.w	$r7,$r3,12(0xc)
1c004798:	2840306a 	ld.h	$r10,$r3,12(0xc)
1c00479c:	58002946 	beq	$r10,$r6,40(0x28) # 1c0047c4 <test_max_value2_16+0x204>
1c0047a0:	00150305 	move	$r5,$r24
1c0047a4:	00150344 	move	$r4,$r26
1c0047a8:	548a8800 	bl	35464(0x8a88) # 1c00d230 <printf>
1c0047ac:	28800330 	ld.w	$r16,$r25,0
1c0047b0:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c0047b4:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c0047b8:	640017b0 	bge	$r29,$r16,20(0x14) # 1c0047cc <test_max_value2_16+0x20c>
1c0047bc:	284003d1 	ld.h	$r17,$r30,0
1c0047c0:	53fe8bff 	b	-376(0xffffe88) # 1c004648 <test_max_value2_16+0x88>
1c0047c4:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c0047c8:	63fe83b0 	blt	$r29,$r16,-384(0x3fe80) # 1c004648 <test_max_value2_16+0x88>
1c0047cc:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c0047d0:	28b7d339 	ld.w	$r25,$r25,-524(0xdf4)
1c0047d4:	548f6c00 	bl	36716(0x8f6c) # 1c00d740 <get_clock>
1c0047d8:	2880033e 	ld.w	$r30,$r25,0
1c0047dc:	00150091 	move	$r17,$r4
1c0047e0:	14001e9c 	lu12i.w	$r28,244(0xf4)
1c0047e4:	0389039b 	ori	$r27,$r28,0x240
1c0047e8:	1c000f96 	pcaddu12i	$r22,124(0x7c)
1c0047ec:	28b752d6 	ld.w	$r22,$r22,-556(0xdd4)
1c0047f0:	001502e6 	move	$r6,$r23
1c0047f4:	00150305 	move	$r5,$r24
1c0047f8:	00117a37 	sub.w	$r23,$r17,$r30
1c0047fc:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c004800:	02a16084 	addi.w	$r4,$r4,-1960(0x858)
1c004804:	00216ee7 	div.wu	$r7,$r23,$r27
1c004808:	5c000b60 	bne	$r27,$r0,8(0x8) # 1c004810 <test_max_value2_16+0x250>
1c00480c:	002a0007 	break	0x7
1c004810:	298002d1 	st.w	$r17,$r22,0
1c004814:	548a1c00 	bl	35356(0x8a1c) # 1c00d230 <printf>
1c004818:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00481c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c004820:	001503e4 	move	$r4,$r31
1c004824:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c004828:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c00482c:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c004830:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c004834:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c004838:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c00483c:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c004840:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c004844:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c004848:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00484c:	4c000020 	jirl	$r0,$r1,0
1c004850:	00150226 	move	$r6,$r17
1c004854:	53fe53ff 	b	-432(0xffffe50) # 1c0046a4 <test_max_value2_16+0xe4>
1c004858:	03400000 	andi	$r0,$r0,0x0
1c00485c:	03400000 	andi	$r0,$r0,0x0

1c004860 <test_max_value2_u16>:
test_max_value2_u16():
1c004860:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004864:	2980d077 	st.w	$r23,$r3,52(0x34)
1c004868:	2980c078 	st.w	$r24,$r3,48(0x30)
1c00486c:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c004870:	2980607e 	st.w	$r30,$r3,24(0x18)
1c004874:	2980507f 	st.w	$r31,$r3,20(0x14)
1c004878:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00487c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004880:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c004884:	2980907b 	st.w	$r27,$r3,36(0x24)
1c004888:	2980807c 	st.w	$r28,$r3,32(0x20)
1c00488c:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c004890:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c004894:	02b49339 	addi.w	$r25,$r25,-732(0xd24)
1c004898:	0015009e 	move	$r30,$r4
1c00489c:	001500b7 	move	$r23,$r5
1c0048a0:	001500d8 	move	$r24,$r6
1c0048a4:	548e9c00 	bl	36508(0x8e9c) # 1c00d740 <get_clock>
1c0048a8:	28800330 	ld.w	$r16,$r25,0
1c0048ac:	1c000f8c 	pcaddu12i	$r12,124(0x7c)
1c0048b0:	28b4518c 	ld.w	$r12,$r12,-748(0xd14)
1c0048b4:	29800184 	st.w	$r4,$r12,0
1c0048b8:	0015001f 	move	$r31,$r0
1c0048bc:	6401b010 	bge	$r0,$r16,432(0x1b0) # 1c004a6c <test_max_value2_u16+0x20c>
1c0048c0:	2a4003d1 	ld.hu	$r17,$r30,0
1c0048c4:	004086fc 	slli.w	$r28,$r23,0x1
1c0048c8:	0015001d 	move	$r29,$r0
1c0048cc:	0015001f 	move	$r31,$r0
1c0048d0:	001073dc 	add.w	$r28,$r30,$r28
1c0048d4:	1c000f9b 	pcaddu12i	$r27,124(0x7c)
1c0048d8:	02b3e37b 	addi.w	$r27,$r27,-776(0xcf8)
1c0048dc:	02800416 	addi.w	$r22,$r0,1(0x1)
1c0048e0:	1c000f7a 	pcaddu12i	$r26,123(0x7b)
1c0048e4:	029d335a 	addi.w	$r26,$r26,1868(0x74c)
1c0048e8:	00150226 	move	$r6,$r17
1c0048ec:	6c0146d7 	bgeu	$r22,$r23,324(0x144) # 1c004a30 <test_max_value2_u16+0x1d0>
1c0048f0:	02800bcc 	addi.w	$r12,$r30,2(0x2)
1c0048f4:	0011338d 	sub.w	$r13,$r28,$r12
1c0048f8:	02bff9a1 	addi.w	$r1,$r13,-2(0xffe)
1c0048fc:	00448424 	srli.w	$r4,$r1,0x1
1c004900:	02800485 	addi.w	$r5,$r4,1(0x1)
1c004904:	03401ca7 	andi	$r7,$r5,0x7
1c004908:	5800bce0 	beq	$r7,$r0,188(0xbc) # 1c0049c4 <test_max_value2_u16+0x164>
1c00490c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c004910:	58009cee 	beq	$r7,$r14,156(0x9c) # 1c0049ac <test_max_value2_u16+0x14c>
1c004914:	02800808 	addi.w	$r8,$r0,2(0x2)
1c004918:	580080e8 	beq	$r7,$r8,128(0x80) # 1c004998 <test_max_value2_u16+0x138>
1c00491c:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c004920:	580064e9 	beq	$r7,$r9,100(0x64) # 1c004984 <test_max_value2_u16+0x124>
1c004924:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c004928:	580048ea 	beq	$r7,$r10,72(0x48) # 1c004970 <test_max_value2_u16+0x110>
1c00492c:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c004930:	58002ceb 	beq	$r7,$r11,44(0x2c) # 1c00495c <test_max_value2_u16+0xfc>
1c004934:	0280180f 	addi.w	$r15,$r0,6(0x6)
1c004938:	580010ef 	beq	$r7,$r15,16(0x10) # 1c004948 <test_max_value2_u16+0xe8>
1c00493c:	2a400bc6 	ld.hu	$r6,$r30,2(0x2)
1c004940:	6801b0d1 	bltu	$r6,$r17,432(0x1b0) # 1c004af0 <test_max_value2_u16+0x290>
1c004944:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004948:	2a400192 	ld.hu	$r18,$r12,0
1c00494c:	6c000a46 	bgeu	$r18,$r6,8(0x8) # 1c004954 <test_max_value2_u16+0xf4>
1c004950:	001500d2 	move	$r18,$r6
1c004954:	00150246 	move	$r6,$r18
1c004958:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00495c:	2a400193 	ld.hu	$r19,$r12,0
1c004960:	6c000a66 	bgeu	$r19,$r6,8(0x8) # 1c004968 <test_max_value2_u16+0x108>
1c004964:	001500d3 	move	$r19,$r6
1c004968:	00150266 	move	$r6,$r19
1c00496c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004970:	2a400194 	ld.hu	$r20,$r12,0
1c004974:	6c000a86 	bgeu	$r20,$r6,8(0x8) # 1c00497c <test_max_value2_u16+0x11c>
1c004978:	001500d4 	move	$r20,$r6
1c00497c:	00150286 	move	$r6,$r20
1c004980:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004984:	2a40018d 	ld.hu	$r13,$r12,0
1c004988:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1c004990 <test_max_value2_u16+0x130>
1c00498c:	001500cd 	move	$r13,$r6
1c004990:	001501a6 	move	$r6,$r13
1c004994:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004998:	2a400181 	ld.hu	$r1,$r12,0
1c00499c:	6c000826 	bgeu	$r1,$r6,8(0x8) # 1c0049a4 <test_max_value2_u16+0x144>
1c0049a0:	001500c1 	move	$r1,$r6
1c0049a4:	00150026 	move	$r6,$r1
1c0049a8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0049ac:	2a400184 	ld.hu	$r4,$r12,0
1c0049b0:	6c000886 	bgeu	$r4,$r6,8(0x8) # 1c0049b8 <test_max_value2_u16+0x158>
1c0049b4:	001500c4 	move	$r4,$r6
1c0049b8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0049bc:	00150086 	move	$r6,$r4
1c0049c0:	5800738c 	beq	$r28,$r12,112(0x70) # 1c004a30 <test_max_value2_u16+0x1d0>
1c0049c4:	2a400185 	ld.hu	$r5,$r12,0
1c0049c8:	6c0008a6 	bgeu	$r5,$r6,8(0x8) # 1c0049d0 <test_max_value2_u16+0x170>
1c0049cc:	001500c5 	move	$r5,$r6
1c0049d0:	2a400986 	ld.hu	$r6,$r12,2(0x2)
1c0049d4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0049d8:	6c0008c5 	bgeu	$r6,$r5,8(0x8) # 1c0049e0 <test_max_value2_u16+0x180>
1c0049dc:	001500a6 	move	$r6,$r5
1c0049e0:	2a400987 	ld.hu	$r7,$r12,2(0x2)
1c0049e4:	6c0008e6 	bgeu	$r7,$r6,8(0x8) # 1c0049ec <test_max_value2_u16+0x18c>
1c0049e8:	001500c7 	move	$r7,$r6
1c0049ec:	2a40118e 	ld.hu	$r14,$r12,4(0x4)
1c0049f0:	6c0009c7 	bgeu	$r14,$r7,8(0x8) # 1c0049f8 <test_max_value2_u16+0x198>
1c0049f4:	001500ee 	move	$r14,$r7
1c0049f8:	2a401988 	ld.hu	$r8,$r12,6(0x6)
1c0049fc:	6c00090e 	bgeu	$r8,$r14,8(0x8) # 1c004a04 <test_max_value2_u16+0x1a4>
1c004a00:	001501c8 	move	$r8,$r14
1c004a04:	2a402189 	ld.hu	$r9,$r12,8(0x8)
1c004a08:	6c000928 	bgeu	$r9,$r8,8(0x8) # 1c004a10 <test_max_value2_u16+0x1b0>
1c004a0c:	00150109 	move	$r9,$r8
1c004a10:	2a40298e 	ld.hu	$r14,$r12,10(0xa)
1c004a14:	6c0009c9 	bgeu	$r14,$r9,8(0x8) # 1c004a1c <test_max_value2_u16+0x1bc>
1c004a18:	0015012e 	move	$r14,$r9
1c004a1c:	2a403186 	ld.hu	$r6,$r12,12(0xc)
1c004a20:	6c0008ce 	bgeu	$r6,$r14,8(0x8) # 1c004a28 <test_max_value2_u16+0x1c8>
1c004a24:	001501c6 	move	$r6,$r14
1c004a28:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c004a2c:	5fff9b8c 	bne	$r28,$r12,-104(0x3ff98) # 1c0049c4 <test_max_value2_u16+0x164>
1c004a30:	28800367 	ld.w	$r7,$r27,0
1c004a34:	29803067 	st.w	$r7,$r3,12(0xc)
1c004a38:	2a40306a 	ld.hu	$r10,$r3,12(0xc)
1c004a3c:	58002946 	beq	$r10,$r6,40(0x28) # 1c004a64 <test_max_value2_u16+0x204>
1c004a40:	00150305 	move	$r5,$r24
1c004a44:	00150344 	move	$r4,$r26
1c004a48:	5487e800 	bl	34792(0x87e8) # 1c00d230 <printf>
1c004a4c:	28800330 	ld.w	$r16,$r25,0
1c004a50:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c004a54:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c004a58:	640017b0 	bge	$r29,$r16,20(0x14) # 1c004a6c <test_max_value2_u16+0x20c>
1c004a5c:	2a4003d1 	ld.hu	$r17,$r30,0
1c004a60:	53fe8bff 	b	-376(0xffffe88) # 1c0048e8 <test_max_value2_u16+0x88>
1c004a64:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c004a68:	63fe83b0 	blt	$r29,$r16,-384(0x3fe80) # 1c0048e8 <test_max_value2_u16+0x88>
1c004a6c:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c004a70:	28ad5339 	ld.w	$r25,$r25,-1196(0xb54)
1c004a74:	548ccc00 	bl	36044(0x8ccc) # 1c00d740 <get_clock>
1c004a78:	2880033e 	ld.w	$r30,$r25,0
1c004a7c:	00150091 	move	$r17,$r4
1c004a80:	14001e9c 	lu12i.w	$r28,244(0xf4)
1c004a84:	0389039b 	ori	$r27,$r28,0x240
1c004a88:	1c000f96 	pcaddu12i	$r22,124(0x7c)
1c004a8c:	28acd2d6 	ld.w	$r22,$r22,-1228(0xb34)
1c004a90:	001502e6 	move	$r6,$r23
1c004a94:	00150305 	move	$r5,$r24
1c004a98:	00117a37 	sub.w	$r23,$r17,$r30
1c004a9c:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004aa0:	0296e084 	addi.w	$r4,$r4,1464(0x5b8)
1c004aa4:	00216ee7 	div.wu	$r7,$r23,$r27
1c004aa8:	5c000b60 	bne	$r27,$r0,8(0x8) # 1c004ab0 <test_max_value2_u16+0x250>
1c004aac:	002a0007 	break	0x7
1c004ab0:	298002d1 	st.w	$r17,$r22,0
1c004ab4:	54877c00 	bl	34684(0x877c) # 1c00d230 <printf>
1c004ab8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c004abc:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c004ac0:	001503e4 	move	$r4,$r31
1c004ac4:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c004ac8:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c004acc:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c004ad0:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c004ad4:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c004ad8:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c004adc:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c004ae0:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c004ae4:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c004ae8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c004aec:	4c000020 	jirl	$r0,$r1,0
1c004af0:	00150226 	move	$r6,$r17
1c004af4:	53fe53ff 	b	-432(0xffffe50) # 1c004944 <test_max_value2_u16+0xe4>
1c004af8:	03400000 	andi	$r0,$r0,0x0
1c004afc:	03400000 	andi	$r0,$r0,0x0

1c004b00 <test_max_value2_32>:
test_max_value2_32():
1c004b00:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004b04:	29809077 	st.w	$r23,$r3,36(0x24)
1c004b08:	29808078 	st.w	$r24,$r3,32(0x20)
1c004b0c:	29807079 	st.w	$r25,$r3,28(0x1c)
1c004b10:	2980207e 	st.w	$r30,$r3,8(0x8)
1c004b14:	2980107f 	st.w	$r31,$r3,4(0x4)
1c004b18:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004b1c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004b20:	2980607a 	st.w	$r26,$r3,24(0x18)
1c004b24:	2980507b 	st.w	$r27,$r3,20(0x14)
1c004b28:	2980407c 	st.w	$r28,$r3,16(0x10)
1c004b2c:	2980307d 	st.w	$r29,$r3,12(0xc)
1c004b30:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c004b34:	02aa1339 	addi.w	$r25,$r25,-1404(0xa84)
1c004b38:	0015009e 	move	$r30,$r4
1c004b3c:	001500b7 	move	$r23,$r5
1c004b40:	001500d8 	move	$r24,$r6
1c004b44:	548bfc00 	bl	35836(0x8bfc) # 1c00d740 <get_clock>
1c004b48:	2880032f 	ld.w	$r15,$r25,0
1c004b4c:	1c000f8c 	pcaddu12i	$r12,124(0x7c)
1c004b50:	28a9d18c 	ld.w	$r12,$r12,-1420(0xa74)
1c004b54:	29800184 	st.w	$r4,$r12,0
1c004b58:	0015001f 	move	$r31,$r0
1c004b5c:	6401900f 	bge	$r0,$r15,400(0x190) # 1c004cec <test_max_value2_32+0x1ec>
1c004b60:	288003d0 	ld.w	$r16,$r30,0
1c004b64:	00408afc 	slli.w	$r28,$r23,0x2
1c004b68:	0015001d 	move	$r29,$r0
1c004b6c:	0015001f 	move	$r31,$r0
1c004b70:	001073dc 	add.w	$r28,$r30,$r28
1c004b74:	1c000f9b 	pcaddu12i	$r27,124(0x7c)
1c004b78:	02a9637b 	addi.w	$r27,$r27,-1448(0xa58)
1c004b7c:	02800416 	addi.w	$r22,$r0,1(0x1)
1c004b80:	1c000f7a 	pcaddu12i	$r26,123(0x7b)
1c004b84:	0292b35a 	addi.w	$r26,$r26,1196(0x4ac)
1c004b88:	00150206 	move	$r6,$r16
1c004b8c:	6c012ed7 	bgeu	$r22,$r23,300(0x12c) # 1c004cb8 <test_max_value2_32+0x1b8>
1c004b90:	028013cc 	addi.w	$r12,$r30,4(0x4)
1c004b94:	0011338d 	sub.w	$r13,$r28,$r12
1c004b98:	02bff1a1 	addi.w	$r1,$r13,-4(0xffc)
1c004b9c:	00448824 	srli.w	$r4,$r1,0x2
1c004ba0:	02800485 	addi.w	$r5,$r4,1(0x1)
1c004ba4:	03401ca7 	andi	$r7,$r5,0x7
1c004ba8:	5800a4e0 	beq	$r7,$r0,164(0xa4) # 1c004c4c <test_max_value2_32+0x14c>
1c004bac:	02800411 	addi.w	$r17,$r0,1(0x1)
1c004bb0:	580088f1 	beq	$r7,$r17,136(0x88) # 1c004c38 <test_max_value2_32+0x138>
1c004bb4:	02800808 	addi.w	$r8,$r0,2(0x2)
1c004bb8:	580070e8 	beq	$r7,$r8,112(0x70) # 1c004c28 <test_max_value2_32+0x128>
1c004bbc:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c004bc0:	580058e9 	beq	$r7,$r9,88(0x58) # 1c004c18 <test_max_value2_32+0x118>
1c004bc4:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c004bc8:	580040ea 	beq	$r7,$r10,64(0x40) # 1c004c08 <test_max_value2_32+0x108>
1c004bcc:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c004bd0:	580028eb 	beq	$r7,$r11,40(0x28) # 1c004bf8 <test_max_value2_32+0xf8>
1c004bd4:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c004bd8:	580010ee 	beq	$r7,$r14,16(0x10) # 1c004be8 <test_max_value2_32+0xe8>
1c004bdc:	288013d2 	ld.w	$r18,$r30,4(0x4)
1c004be0:	60019212 	blt	$r16,$r18,400(0x190) # 1c004d70 <test_max_value2_32+0x270>
1c004be4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004be8:	28800193 	ld.w	$r19,$r12,0
1c004bec:	640008d3 	bge	$r6,$r19,8(0x8) # 1c004bf4 <test_max_value2_32+0xf4>
1c004bf0:	00150266 	move	$r6,$r19
1c004bf4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004bf8:	28800194 	ld.w	$r20,$r12,0
1c004bfc:	640008d4 	bge	$r6,$r20,8(0x8) # 1c004c04 <test_max_value2_32+0x104>
1c004c00:	00150286 	move	$r6,$r20
1c004c04:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004c08:	2880018d 	ld.w	$r13,$r12,0
1c004c0c:	640008cd 	bge	$r6,$r13,8(0x8) # 1c004c14 <test_max_value2_32+0x114>
1c004c10:	001501a6 	move	$r6,$r13
1c004c14:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004c18:	28800181 	ld.w	$r1,$r12,0
1c004c1c:	640008c1 	bge	$r6,$r1,8(0x8) # 1c004c24 <test_max_value2_32+0x124>
1c004c20:	00150026 	move	$r6,$r1
1c004c24:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004c28:	28800184 	ld.w	$r4,$r12,0
1c004c2c:	640008c4 	bge	$r6,$r4,8(0x8) # 1c004c34 <test_max_value2_32+0x134>
1c004c30:	00150086 	move	$r6,$r4
1c004c34:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004c38:	28800185 	ld.w	$r5,$r12,0
1c004c3c:	640008c5 	bge	$r6,$r5,8(0x8) # 1c004c44 <test_max_value2_32+0x144>
1c004c40:	001500a6 	move	$r6,$r5
1c004c44:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004c48:	5800738c 	beq	$r28,$r12,112(0x70) # 1c004cb8 <test_max_value2_32+0x1b8>
1c004c4c:	28800187 	ld.w	$r7,$r12,0
1c004c50:	640008c7 	bge	$r6,$r7,8(0x8) # 1c004c58 <test_max_value2_32+0x158>
1c004c54:	001500e6 	move	$r6,$r7
1c004c58:	28801191 	ld.w	$r17,$r12,4(0x4)
1c004c5c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004c60:	640008d1 	bge	$r6,$r17,8(0x8) # 1c004c68 <test_max_value2_32+0x168>
1c004c64:	00150226 	move	$r6,$r17
1c004c68:	28801188 	ld.w	$r8,$r12,4(0x4)
1c004c6c:	640008c8 	bge	$r6,$r8,8(0x8) # 1c004c74 <test_max_value2_32+0x174>
1c004c70:	00150106 	move	$r6,$r8
1c004c74:	28802189 	ld.w	$r9,$r12,8(0x8)
1c004c78:	640008c9 	bge	$r6,$r9,8(0x8) # 1c004c80 <test_max_value2_32+0x180>
1c004c7c:	00150126 	move	$r6,$r9
1c004c80:	2880318a 	ld.w	$r10,$r12,12(0xc)
1c004c84:	640008ca 	bge	$r6,$r10,8(0x8) # 1c004c8c <test_max_value2_32+0x18c>
1c004c88:	00150146 	move	$r6,$r10
1c004c8c:	2880418b 	ld.w	$r11,$r12,16(0x10)
1c004c90:	640008cb 	bge	$r6,$r11,8(0x8) # 1c004c98 <test_max_value2_32+0x198>
1c004c94:	00150166 	move	$r6,$r11
1c004c98:	2880518e 	ld.w	$r14,$r12,20(0x14)
1c004c9c:	640008ce 	bge	$r6,$r14,8(0x8) # 1c004ca4 <test_max_value2_32+0x1a4>
1c004ca0:	001501c6 	move	$r6,$r14
1c004ca4:	28806192 	ld.w	$r18,$r12,24(0x18)
1c004ca8:	640008d2 	bge	$r6,$r18,8(0x8) # 1c004cb0 <test_max_value2_32+0x1b0>
1c004cac:	00150246 	move	$r6,$r18
1c004cb0:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c004cb4:	5fff9b8c 	bne	$r28,$r12,-104(0x3ff98) # 1c004c4c <test_max_value2_32+0x14c>
1c004cb8:	28800367 	ld.w	$r7,$r27,0
1c004cbc:	580028e6 	beq	$r7,$r6,40(0x28) # 1c004ce4 <test_max_value2_32+0x1e4>
1c004cc0:	00150305 	move	$r5,$r24
1c004cc4:	00150344 	move	$r4,$r26
1c004cc8:	54856800 	bl	34152(0x8568) # 1c00d230 <printf>
1c004ccc:	2880032f 	ld.w	$r15,$r25,0
1c004cd0:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c004cd4:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c004cd8:	640017af 	bge	$r29,$r15,20(0x14) # 1c004cec <test_max_value2_32+0x1ec>
1c004cdc:	288003d0 	ld.w	$r16,$r30,0
1c004ce0:	53feabff 	b	-344(0xffffea8) # 1c004b88 <test_max_value2_32+0x88>
1c004ce4:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c004ce8:	63fea3af 	blt	$r29,$r15,-352(0x3fea0) # 1c004b88 <test_max_value2_32+0x88>
1c004cec:	548a5400 	bl	35412(0x8a54) # 1c00d740 <get_clock>
1c004cf0:	1c000f86 	pcaddu12i	$r6,124(0x7c)
1c004cf4:	28a340c6 	ld.w	$r6,$r6,-1840(0x8d0)
1c004cf8:	288000d9 	ld.w	$r25,$r6,0
1c004cfc:	00150090 	move	$r16,$r4
1c004d00:	14001e9e 	lu12i.w	$r30,244(0xf4)
1c004d04:	038903dc 	ori	$r28,$r30,0x240
1c004d08:	1c000f9b 	pcaddu12i	$r27,124(0x7c)
1c004d0c:	28a2d37b 	ld.w	$r27,$r27,-1868(0x8b4)
1c004d10:	001502e6 	move	$r6,$r23
1c004d14:	00150305 	move	$r5,$r24
1c004d18:	00116617 	sub.w	$r23,$r16,$r25
1c004d1c:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004d20:	028ce084 	addi.w	$r4,$r4,824(0x338)
1c004d24:	002172e7 	div.wu	$r7,$r23,$r28
1c004d28:	5c000b80 	bne	$r28,$r0,8(0x8) # 1c004d30 <test_max_value2_32+0x230>
1c004d2c:	002a0007 	break	0x7
1c004d30:	29800370 	st.w	$r16,$r27,0
1c004d34:	5484fc00 	bl	34044(0x84fc) # 1c00d230 <printf>
1c004d38:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004d3c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004d40:	001503e4 	move	$r4,$r31
1c004d44:	28809077 	ld.w	$r23,$r3,36(0x24)
1c004d48:	28808078 	ld.w	$r24,$r3,32(0x20)
1c004d4c:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c004d50:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c004d54:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c004d58:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c004d5c:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c004d60:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c004d64:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c004d68:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004d6c:	4c000020 	jirl	$r0,$r1,0
1c004d70:	00150246 	move	$r6,$r18
1c004d74:	53fe73ff 	b	-400(0xffffe70) # 1c004be4 <test_max_value2_32+0xe4>
1c004d78:	03400000 	andi	$r0,$r0,0x0
1c004d7c:	03400000 	andi	$r0,$r0,0x0

1c004d80 <test_max_value2_u32>:
test_max_value2_u32():
1c004d80:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004d84:	29809077 	st.w	$r23,$r3,36(0x24)
1c004d88:	29808078 	st.w	$r24,$r3,32(0x20)
1c004d8c:	29807079 	st.w	$r25,$r3,28(0x1c)
1c004d90:	2980207e 	st.w	$r30,$r3,8(0x8)
1c004d94:	2980107f 	st.w	$r31,$r3,4(0x4)
1c004d98:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004d9c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004da0:	2980607a 	st.w	$r26,$r3,24(0x18)
1c004da4:	2980507b 	st.w	$r27,$r3,20(0x14)
1c004da8:	2980407c 	st.w	$r28,$r3,16(0x10)
1c004dac:	2980307d 	st.w	$r29,$r3,12(0xc)
1c004db0:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c004db4:	02a01339 	addi.w	$r25,$r25,-2044(0x804)
1c004db8:	0015009e 	move	$r30,$r4
1c004dbc:	001500b7 	move	$r23,$r5
1c004dc0:	001500d8 	move	$r24,$r6
1c004dc4:	54897c00 	bl	35196(0x897c) # 1c00d740 <get_clock>
1c004dc8:	2880032f 	ld.w	$r15,$r25,0
1c004dcc:	1c000f6c 	pcaddu12i	$r12,123(0x7b)
1c004dd0:	289fd18c 	ld.w	$r12,$r12,2036(0x7f4)
1c004dd4:	29800184 	st.w	$r4,$r12,0
1c004dd8:	0015001f 	move	$r31,$r0
1c004ddc:	6401900f 	bge	$r0,$r15,400(0x190) # 1c004f6c <test_max_value2_u32+0x1ec>
1c004de0:	288003d0 	ld.w	$r16,$r30,0
1c004de4:	00408afc 	slli.w	$r28,$r23,0x2
1c004de8:	0015001d 	move	$r29,$r0
1c004dec:	0015001f 	move	$r31,$r0
1c004df0:	001073dc 	add.w	$r28,$r30,$r28
1c004df4:	1c000f7b 	pcaddu12i	$r27,123(0x7b)
1c004df8:	029f637b 	addi.w	$r27,$r27,2008(0x7d8)
1c004dfc:	02800416 	addi.w	$r22,$r0,1(0x1)
1c004e00:	1c000f7a 	pcaddu12i	$r26,123(0x7b)
1c004e04:	0288b35a 	addi.w	$r26,$r26,556(0x22c)
1c004e08:	00150206 	move	$r6,$r16
1c004e0c:	6c012ed7 	bgeu	$r22,$r23,300(0x12c) # 1c004f38 <test_max_value2_u32+0x1b8>
1c004e10:	028013cc 	addi.w	$r12,$r30,4(0x4)
1c004e14:	0011338d 	sub.w	$r13,$r28,$r12
1c004e18:	02bff1a1 	addi.w	$r1,$r13,-4(0xffc)
1c004e1c:	00448824 	srli.w	$r4,$r1,0x2
1c004e20:	02800485 	addi.w	$r5,$r4,1(0x1)
1c004e24:	03401ca7 	andi	$r7,$r5,0x7
1c004e28:	5800a4e0 	beq	$r7,$r0,164(0xa4) # 1c004ecc <test_max_value2_u32+0x14c>
1c004e2c:	02800411 	addi.w	$r17,$r0,1(0x1)
1c004e30:	580088f1 	beq	$r7,$r17,136(0x88) # 1c004eb8 <test_max_value2_u32+0x138>
1c004e34:	02800808 	addi.w	$r8,$r0,2(0x2)
1c004e38:	580070e8 	beq	$r7,$r8,112(0x70) # 1c004ea8 <test_max_value2_u32+0x128>
1c004e3c:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c004e40:	580058e9 	beq	$r7,$r9,88(0x58) # 1c004e98 <test_max_value2_u32+0x118>
1c004e44:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c004e48:	580040ea 	beq	$r7,$r10,64(0x40) # 1c004e88 <test_max_value2_u32+0x108>
1c004e4c:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c004e50:	580028eb 	beq	$r7,$r11,40(0x28) # 1c004e78 <test_max_value2_u32+0xf8>
1c004e54:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c004e58:	580010ee 	beq	$r7,$r14,16(0x10) # 1c004e68 <test_max_value2_u32+0xe8>
1c004e5c:	288013d2 	ld.w	$r18,$r30,4(0x4)
1c004e60:	68019212 	bltu	$r16,$r18,400(0x190) # 1c004ff0 <test_max_value2_u32+0x270>
1c004e64:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004e68:	28800193 	ld.w	$r19,$r12,0
1c004e6c:	6c0008d3 	bgeu	$r6,$r19,8(0x8) # 1c004e74 <test_max_value2_u32+0xf4>
1c004e70:	00150266 	move	$r6,$r19
1c004e74:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004e78:	28800194 	ld.w	$r20,$r12,0
1c004e7c:	6c0008d4 	bgeu	$r6,$r20,8(0x8) # 1c004e84 <test_max_value2_u32+0x104>
1c004e80:	00150286 	move	$r6,$r20
1c004e84:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004e88:	2880018d 	ld.w	$r13,$r12,0
1c004e8c:	6c0008cd 	bgeu	$r6,$r13,8(0x8) # 1c004e94 <test_max_value2_u32+0x114>
1c004e90:	001501a6 	move	$r6,$r13
1c004e94:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004e98:	28800181 	ld.w	$r1,$r12,0
1c004e9c:	6c0008c1 	bgeu	$r6,$r1,8(0x8) # 1c004ea4 <test_max_value2_u32+0x124>
1c004ea0:	00150026 	move	$r6,$r1
1c004ea4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004ea8:	28800184 	ld.w	$r4,$r12,0
1c004eac:	6c0008c4 	bgeu	$r6,$r4,8(0x8) # 1c004eb4 <test_max_value2_u32+0x134>
1c004eb0:	00150086 	move	$r6,$r4
1c004eb4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004eb8:	28800185 	ld.w	$r5,$r12,0
1c004ebc:	6c0008c5 	bgeu	$r6,$r5,8(0x8) # 1c004ec4 <test_max_value2_u32+0x144>
1c004ec0:	001500a6 	move	$r6,$r5
1c004ec4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004ec8:	5800738c 	beq	$r28,$r12,112(0x70) # 1c004f38 <test_max_value2_u32+0x1b8>
1c004ecc:	28800187 	ld.w	$r7,$r12,0
1c004ed0:	6c0008c7 	bgeu	$r6,$r7,8(0x8) # 1c004ed8 <test_max_value2_u32+0x158>
1c004ed4:	001500e6 	move	$r6,$r7
1c004ed8:	28801191 	ld.w	$r17,$r12,4(0x4)
1c004edc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004ee0:	6c0008d1 	bgeu	$r6,$r17,8(0x8) # 1c004ee8 <test_max_value2_u32+0x168>
1c004ee4:	00150226 	move	$r6,$r17
1c004ee8:	28801188 	ld.w	$r8,$r12,4(0x4)
1c004eec:	6c0008c8 	bgeu	$r6,$r8,8(0x8) # 1c004ef4 <test_max_value2_u32+0x174>
1c004ef0:	00150106 	move	$r6,$r8
1c004ef4:	28802189 	ld.w	$r9,$r12,8(0x8)
1c004ef8:	6c0008c9 	bgeu	$r6,$r9,8(0x8) # 1c004f00 <test_max_value2_u32+0x180>
1c004efc:	00150126 	move	$r6,$r9
1c004f00:	2880318a 	ld.w	$r10,$r12,12(0xc)
1c004f04:	6c0008ca 	bgeu	$r6,$r10,8(0x8) # 1c004f0c <test_max_value2_u32+0x18c>
1c004f08:	00150146 	move	$r6,$r10
1c004f0c:	2880418b 	ld.w	$r11,$r12,16(0x10)
1c004f10:	6c0008cb 	bgeu	$r6,$r11,8(0x8) # 1c004f18 <test_max_value2_u32+0x198>
1c004f14:	00150166 	move	$r6,$r11
1c004f18:	2880518e 	ld.w	$r14,$r12,20(0x14)
1c004f1c:	6c0008ce 	bgeu	$r6,$r14,8(0x8) # 1c004f24 <test_max_value2_u32+0x1a4>
1c004f20:	001501c6 	move	$r6,$r14
1c004f24:	28806192 	ld.w	$r18,$r12,24(0x18)
1c004f28:	6c0008d2 	bgeu	$r6,$r18,8(0x8) # 1c004f30 <test_max_value2_u32+0x1b0>
1c004f2c:	00150246 	move	$r6,$r18
1c004f30:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c004f34:	5fff9b8c 	bne	$r28,$r12,-104(0x3ff98) # 1c004ecc <test_max_value2_u32+0x14c>
1c004f38:	28800367 	ld.w	$r7,$r27,0
1c004f3c:	580028e6 	beq	$r7,$r6,40(0x28) # 1c004f64 <test_max_value2_u32+0x1e4>
1c004f40:	00150305 	move	$r5,$r24
1c004f44:	00150344 	move	$r4,$r26
1c004f48:	5482e800 	bl	33512(0x82e8) # 1c00d230 <printf>
1c004f4c:	2880032f 	ld.w	$r15,$r25,0
1c004f50:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c004f54:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c004f58:	640017af 	bge	$r29,$r15,20(0x14) # 1c004f6c <test_max_value2_u32+0x1ec>
1c004f5c:	288003d0 	ld.w	$r16,$r30,0
1c004f60:	53feabff 	b	-344(0xffffea8) # 1c004e08 <test_max_value2_u32+0x88>
1c004f64:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c004f68:	63fea3af 	blt	$r29,$r15,-352(0x3fea0) # 1c004e08 <test_max_value2_u32+0x88>
1c004f6c:	5487d400 	bl	34772(0x87d4) # 1c00d740 <get_clock>
1c004f70:	1c000f66 	pcaddu12i	$r6,123(0x7b)
1c004f74:	289940c6 	ld.w	$r6,$r6,1616(0x650)
1c004f78:	288000d9 	ld.w	$r25,$r6,0
1c004f7c:	00150090 	move	$r16,$r4
1c004f80:	14001e9e 	lu12i.w	$r30,244(0xf4)
1c004f84:	038903dc 	ori	$r28,$r30,0x240
1c004f88:	1c000f7b 	pcaddu12i	$r27,123(0x7b)
1c004f8c:	2898d37b 	ld.w	$r27,$r27,1588(0x634)
1c004f90:	001502e6 	move	$r6,$r23
1c004f94:	00150305 	move	$r5,$r24
1c004f98:	00116617 	sub.w	$r23,$r16,$r25
1c004f9c:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004fa0:	0282e084 	addi.w	$r4,$r4,184(0xb8)
1c004fa4:	002172e7 	div.wu	$r7,$r23,$r28
1c004fa8:	5c000b80 	bne	$r28,$r0,8(0x8) # 1c004fb0 <test_max_value2_u32+0x230>
1c004fac:	002a0007 	break	0x7
1c004fb0:	29800370 	st.w	$r16,$r27,0
1c004fb4:	54827c00 	bl	33404(0x827c) # 1c00d230 <printf>
1c004fb8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004fbc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004fc0:	001503e4 	move	$r4,$r31
1c004fc4:	28809077 	ld.w	$r23,$r3,36(0x24)
1c004fc8:	28808078 	ld.w	$r24,$r3,32(0x20)
1c004fcc:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c004fd0:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c004fd4:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c004fd8:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c004fdc:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c004fe0:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c004fe4:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c004fe8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004fec:	4c000020 	jirl	$r0,$r1,0
1c004ff0:	00150246 	move	$r6,$r18
1c004ff4:	53fe73ff 	b	-400(0xffffe70) # 1c004e64 <test_max_value2_u32+0xe4>
1c004ff8:	03400000 	andi	$r0,$r0,0x0
1c004ffc:	03400000 	andi	$r0,$r0,0x0

1c005000 <test_min_position1_8>:
test_min_position1_8():
1c005000:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005004:	2980a077 	st.w	$r23,$r3,40(0x28)
1c005008:	29809078 	st.w	$r24,$r3,36(0x24)
1c00500c:	29808079 	st.w	$r25,$r3,32(0x20)
1c005010:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c005014:	2980607b 	st.w	$r27,$r3,24(0x18)
1c005018:	2980507c 	st.w	$r28,$r3,20(0x14)
1c00501c:	2980407d 	st.w	$r29,$r3,16(0x10)
1c005020:	2980307e 	st.w	$r30,$r3,12(0xc)
1c005024:	2980207f 	st.w	$r31,$r3,8(0x8)
1c005028:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00502c:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c005030:	02962339 	addi.w	$r25,$r25,1416(0x588)
1c005034:	00150097 	move	$r23,$r4
1c005038:	001500bc 	move	$r28,$r5
1c00503c:	001500d8 	move	$r24,$r6
1c005040:	54870000 	bl	34560(0x8700) # 1c00d740 <get_clock>
1c005044:	28800330 	ld.w	$r16,$r25,0
1c005048:	1c000f7b 	pcaddu12i	$r27,123(0x7b)
1c00504c:	2895e37b 	ld.w	$r27,$r27,1400(0x578)
1c005050:	29800364 	st.w	$r4,$r27,0
1c005054:	0015001d 	move	$r29,$r0
1c005058:	1c000f7f 	pcaddu12i	$r31,123(0x7b)
1c00505c:	0295c3ff 	addi.w	$r31,$r31,1392(0x570)
1c005060:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c005064:	1c000f7a 	pcaddu12i	$r26,123(0x7b)
1c005068:	02be735a 	addi.w	$r26,$r26,-100(0xf9c)
1c00506c:	6401d410 	bge	$r0,$r16,468(0x1d4) # 1c005240 <test_min_position1_8+0x240>
1c005070:	00150006 	move	$r6,$r0
1c005074:	6c01afdc 	bgeu	$r30,$r28,428(0x1ac) # 1c005220 <test_min_position1_8+0x220>
1c005078:	02bfff8e 	addi.w	$r14,$r28,-1(0xfff)
1c00507c:	03401dc1 	andi	$r1,$r14,0x7
1c005080:	280002ed 	ld.b	$r13,$r23,0
1c005084:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005088:	00150006 	move	$r6,$r0
1c00508c:	5800d020 	beq	$r1,$r0,208(0xd0) # 1c00515c <test_min_position1_8+0x15c>
1c005090:	5800b02c 	beq	$r1,$r12,176(0xb0) # 1c005140 <test_min_position1_8+0x140>
1c005094:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c005098:	5800902f 	beq	$r1,$r15,144(0x90) # 1c005128 <test_min_position1_8+0x128>
1c00509c:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0050a0:	58007024 	beq	$r1,$r4,112(0x70) # 1c005110 <test_min_position1_8+0x110>
1c0050a4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0050a8:	58005025 	beq	$r1,$r5,80(0x50) # 1c0050f8 <test_min_position1_8+0xf8>
1c0050ac:	02801407 	addi.w	$r7,$r0,5(0x5)
1c0050b0:	58003027 	beq	$r1,$r7,48(0x30) # 1c0050e0 <test_min_position1_8+0xe0>
1c0050b4:	02801808 	addi.w	$r8,$r0,6(0x6)
1c0050b8:	58001028 	beq	$r1,$r8,16(0x10) # 1c0050c8 <test_min_position1_8+0xc8>
1c0050bc:	280006ec 	ld.b	$r12,$r23,1(0x1)
1c0050c0:	60020d8d 	blt	$r12,$r13,524(0x20c) # 1c0052cc <test_min_position1_8+0x2cc>
1c0050c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0050c8:	001032e9 	add.w	$r9,$r23,$r12
1c0050cc:	2800012a 	ld.b	$r10,$r9,0
1c0050d0:	64000d4d 	bge	$r10,$r13,12(0xc) # 1c0050dc <test_min_position1_8+0xdc>
1c0050d4:	0015014d 	move	$r13,$r10
1c0050d8:	00150186 	move	$r6,$r12
1c0050dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0050e0:	001032eb 	add.w	$r11,$r23,$r12
1c0050e4:	28000171 	ld.b	$r17,$r11,0
1c0050e8:	64000e2d 	bge	$r17,$r13,12(0xc) # 1c0050f4 <test_min_position1_8+0xf4>
1c0050ec:	0015022d 	move	$r13,$r17
1c0050f0:	00150186 	move	$r6,$r12
1c0050f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0050f8:	001032f2 	add.w	$r18,$r23,$r12
1c0050fc:	28000253 	ld.b	$r19,$r18,0
1c005100:	64000e6d 	bge	$r19,$r13,12(0xc) # 1c00510c <test_min_position1_8+0x10c>
1c005104:	0015026d 	move	$r13,$r19
1c005108:	00150186 	move	$r6,$r12
1c00510c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005110:	001032f4 	add.w	$r20,$r23,$r12
1c005114:	2800028e 	ld.b	$r14,$r20,0
1c005118:	64000dcd 	bge	$r14,$r13,12(0xc) # 1c005124 <test_min_position1_8+0x124>
1c00511c:	001501cd 	move	$r13,$r14
1c005120:	00150186 	move	$r6,$r12
1c005124:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005128:	001032e1 	add.w	$r1,$r23,$r12
1c00512c:	2800002f 	ld.b	$r15,$r1,0
1c005130:	64000ded 	bge	$r15,$r13,12(0xc) # 1c00513c <test_min_position1_8+0x13c>
1c005134:	001501ed 	move	$r13,$r15
1c005138:	00150186 	move	$r6,$r12
1c00513c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005140:	001032e4 	add.w	$r4,$r23,$r12
1c005144:	28000085 	ld.b	$r5,$r4,0
1c005148:	64000cad 	bge	$r5,$r13,12(0xc) # 1c005154 <test_min_position1_8+0x154>
1c00514c:	001500ad 	move	$r13,$r5
1c005150:	00150186 	move	$r6,$r12
1c005154:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005158:	5800c99c 	beq	$r12,$r28,200(0xc8) # 1c005220 <test_min_position1_8+0x220>
1c00515c:	001032e7 	add.w	$r7,$r23,$r12
1c005160:	280000e8 	ld.b	$r8,$r7,0
1c005164:	64000d0d 	bge	$r8,$r13,12(0xc) # 1c005170 <test_min_position1_8+0x170>
1c005168:	0015010d 	move	$r13,$r8
1c00516c:	00150186 	move	$r6,$r12
1c005170:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005174:	001032e9 	add.w	$r9,$r23,$r12
1c005178:	2800012a 	ld.b	$r10,$r9,0
1c00517c:	64000d4d 	bge	$r10,$r13,12(0xc) # 1c005188 <test_min_position1_8+0x188>
1c005180:	0015014d 	move	$r13,$r10
1c005184:	00150186 	move	$r6,$r12
1c005188:	0280058b 	addi.w	$r11,$r12,1(0x1)
1c00518c:	00102ef1 	add.w	$r17,$r23,$r11
1c005190:	28000232 	ld.b	$r18,$r17,0
1c005194:	64000e4d 	bge	$r18,$r13,12(0xc) # 1c0051a0 <test_min_position1_8+0x1a0>
1c005198:	0015024d 	move	$r13,$r18
1c00519c:	00150166 	move	$r6,$r11
1c0051a0:	02800993 	addi.w	$r19,$r12,2(0x2)
1c0051a4:	00104ef4 	add.w	$r20,$r23,$r19
1c0051a8:	2800028e 	ld.b	$r14,$r20,0
1c0051ac:	64000dcd 	bge	$r14,$r13,12(0xc) # 1c0051b8 <test_min_position1_8+0x1b8>
1c0051b0:	001501cd 	move	$r13,$r14
1c0051b4:	00150266 	move	$r6,$r19
1c0051b8:	02800d81 	addi.w	$r1,$r12,3(0x3)
1c0051bc:	001006ef 	add.w	$r15,$r23,$r1
1c0051c0:	280001e4 	ld.b	$r4,$r15,0
1c0051c4:	64000c8d 	bge	$r4,$r13,12(0xc) # 1c0051d0 <test_min_position1_8+0x1d0>
1c0051c8:	0015008d 	move	$r13,$r4
1c0051cc:	00150026 	move	$r6,$r1
1c0051d0:	02801185 	addi.w	$r5,$r12,4(0x4)
1c0051d4:	001016e7 	add.w	$r7,$r23,$r5
1c0051d8:	280000e8 	ld.b	$r8,$r7,0
1c0051dc:	64000d0d 	bge	$r8,$r13,12(0xc) # 1c0051e8 <test_min_position1_8+0x1e8>
1c0051e0:	0015010d 	move	$r13,$r8
1c0051e4:	001500a6 	move	$r6,$r5
1c0051e8:	02801589 	addi.w	$r9,$r12,5(0x5)
1c0051ec:	001026ea 	add.w	$r10,$r23,$r9
1c0051f0:	2800014b 	ld.b	$r11,$r10,0
1c0051f4:	64000d6d 	bge	$r11,$r13,12(0xc) # 1c005200 <test_min_position1_8+0x200>
1c0051f8:	0015016d 	move	$r13,$r11
1c0051fc:	00150126 	move	$r6,$r9
1c005200:	02801991 	addi.w	$r17,$r12,6(0x6)
1c005204:	001046f2 	add.w	$r18,$r23,$r17
1c005208:	28000253 	ld.b	$r19,$r18,0
1c00520c:	64000e6d 	bge	$r19,$r13,12(0xc) # 1c005218 <test_min_position1_8+0x218>
1c005210:	0015026d 	move	$r13,$r19
1c005214:	00150226 	move	$r6,$r17
1c005218:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c00521c:	5fff419c 	bne	$r12,$r28,-192(0x3ff40) # 1c00515c <test_min_position1_8+0x15c>
1c005220:	288003e7 	ld.w	$r7,$r31,0
1c005224:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c0052c0 <test_min_position1_8+0x2c0>
1c005228:	00150305 	move	$r5,$r24
1c00522c:	00150344 	move	$r4,$r26
1c005230:	54800000 	bl	32768(0x8000) # 1c00d230 <printf>
1c005234:	28800330 	ld.w	$r16,$r25,0
1c005238:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c00523c:	63fe37b0 	blt	$r29,$r16,-460(0x3fe34) # 1c005070 <test_min_position1_8+0x70>
1c005240:	54850000 	bl	34048(0x8500) # 1c00d740 <get_clock>
1c005244:	2880036f 	ld.w	$r15,$r27,0
1c005248:	00150094 	move	$r20,$r4
1c00524c:	14001e86 	lu12i.w	$r6,244(0xf4)
1c005250:	038900c7 	ori	$r7,$r6,0x240
1c005254:	00113e88 	sub.w	$r8,$r20,$r15
1c005258:	1c000f6e 	pcaddu12i	$r14,123(0x7b)
1c00525c:	288d91ce 	ld.w	$r14,$r14,868(0x364)
1c005260:	00211d09 	div.wu	$r9,$r8,$r7
1c005264:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c00526c <test_min_position1_8+0x26c>
1c005268:	002a0007 	break	0x7
1c00526c:	00150386 	move	$r6,$r28
1c005270:	00150305 	move	$r5,$r24
1c005274:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c005278:	02b78084 	addi.w	$r4,$r4,-544(0xde0)
1c00527c:	00150127 	move	$r7,$r9
1c005280:	298001d4 	st.w	$r20,$r14,0
1c005284:	547fac00 	bl	32684(0x7fac) # 1c00d230 <printf>
1c005288:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00528c:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c005290:	28809078 	ld.w	$r24,$r3,36(0x24)
1c005294:	28808079 	ld.w	$r25,$r3,32(0x20)
1c005298:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c00529c:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c0052a0:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c0052a4:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c0052a8:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c0052ac:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c0052b0:	00150004 	move	$r4,$r0
1c0052b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0052b8:	4c000020 	jirl	$r0,$r1,0
1c0052bc:	03400000 	andi	$r0,$r0,0x0
1c0052c0:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c0052c4:	63fdafb0 	blt	$r29,$r16,-596(0x3fdac) # 1c005070 <test_min_position1_8+0x70>
1c0052c8:	53ff7bff 	b	-136(0xfffff78) # 1c005240 <test_min_position1_8+0x240>
1c0052cc:	0015018d 	move	$r13,$r12
1c0052d0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0052d4:	53fdf3ff 	b	-528(0xffffdf0) # 1c0050c4 <test_min_position1_8+0xc4>
1c0052d8:	03400000 	andi	$r0,$r0,0x0
1c0052dc:	03400000 	andi	$r0,$r0,0x0

1c0052e0 <test_min_position1_u8>:
test_min_position1_u8():
1c0052e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0052e4:	2980a077 	st.w	$r23,$r3,40(0x28)
1c0052e8:	29809078 	st.w	$r24,$r3,36(0x24)
1c0052ec:	29808079 	st.w	$r25,$r3,32(0x20)
1c0052f0:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0052f4:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0052f8:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0052fc:	2980407d 	st.w	$r29,$r3,16(0x10)
1c005300:	2980307e 	st.w	$r30,$r3,12(0xc)
1c005304:	2980207f 	st.w	$r31,$r3,8(0x8)
1c005308:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00530c:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c005310:	028aa339 	addi.w	$r25,$r25,680(0x2a8)
1c005314:	00150097 	move	$r23,$r4
1c005318:	001500bc 	move	$r28,$r5
1c00531c:	001500d8 	move	$r24,$r6
1c005320:	54842000 	bl	33824(0x8420) # 1c00d740 <get_clock>
1c005324:	28800330 	ld.w	$r16,$r25,0
1c005328:	1c000f7b 	pcaddu12i	$r27,123(0x7b)
1c00532c:	288a637b 	ld.w	$r27,$r27,664(0x298)
1c005330:	29800364 	st.w	$r4,$r27,0
1c005334:	0015001d 	move	$r29,$r0
1c005338:	1c000f7f 	pcaddu12i	$r31,123(0x7b)
1c00533c:	028a43ff 	addi.w	$r31,$r31,656(0x290)
1c005340:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c005344:	1c000f7a 	pcaddu12i	$r26,123(0x7b)
1c005348:	02b2f35a 	addi.w	$r26,$r26,-836(0xcbc)
1c00534c:	6401d410 	bge	$r0,$r16,468(0x1d4) # 1c005520 <test_min_position1_u8+0x240>
1c005350:	00150006 	move	$r6,$r0
1c005354:	6c01afdc 	bgeu	$r30,$r28,428(0x1ac) # 1c005500 <test_min_position1_u8+0x220>
1c005358:	02bfff8e 	addi.w	$r14,$r28,-1(0xfff)
1c00535c:	03401dc1 	andi	$r1,$r14,0x7
1c005360:	2a0002ed 	ld.bu	$r13,$r23,0
1c005364:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005368:	00150006 	move	$r6,$r0
1c00536c:	5800d020 	beq	$r1,$r0,208(0xd0) # 1c00543c <test_min_position1_u8+0x15c>
1c005370:	5800b02c 	beq	$r1,$r12,176(0xb0) # 1c005420 <test_min_position1_u8+0x140>
1c005374:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c005378:	5800902f 	beq	$r1,$r15,144(0x90) # 1c005408 <test_min_position1_u8+0x128>
1c00537c:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c005380:	58007024 	beq	$r1,$r4,112(0x70) # 1c0053f0 <test_min_position1_u8+0x110>
1c005384:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005388:	58005025 	beq	$r1,$r5,80(0x50) # 1c0053d8 <test_min_position1_u8+0xf8>
1c00538c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c005390:	58003027 	beq	$r1,$r7,48(0x30) # 1c0053c0 <test_min_position1_u8+0xe0>
1c005394:	02801808 	addi.w	$r8,$r0,6(0x6)
1c005398:	58001028 	beq	$r1,$r8,16(0x10) # 1c0053a8 <test_min_position1_u8+0xc8>
1c00539c:	2a0006ec 	ld.bu	$r12,$r23,1(0x1)
1c0053a0:	68020d8d 	bltu	$r12,$r13,524(0x20c) # 1c0055ac <test_min_position1_u8+0x2cc>
1c0053a4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0053a8:	001032e9 	add.w	$r9,$r23,$r12
1c0053ac:	2a00012a 	ld.bu	$r10,$r9,0
1c0053b0:	6c000d4d 	bgeu	$r10,$r13,12(0xc) # 1c0053bc <test_min_position1_u8+0xdc>
1c0053b4:	0015014d 	move	$r13,$r10
1c0053b8:	00150186 	move	$r6,$r12
1c0053bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0053c0:	001032eb 	add.w	$r11,$r23,$r12
1c0053c4:	2a000171 	ld.bu	$r17,$r11,0
1c0053c8:	6c000e2d 	bgeu	$r17,$r13,12(0xc) # 1c0053d4 <test_min_position1_u8+0xf4>
1c0053cc:	0015022d 	move	$r13,$r17
1c0053d0:	00150186 	move	$r6,$r12
1c0053d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0053d8:	001032f2 	add.w	$r18,$r23,$r12
1c0053dc:	2a000253 	ld.bu	$r19,$r18,0
1c0053e0:	6c000e6d 	bgeu	$r19,$r13,12(0xc) # 1c0053ec <test_min_position1_u8+0x10c>
1c0053e4:	0015026d 	move	$r13,$r19
1c0053e8:	00150186 	move	$r6,$r12
1c0053ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0053f0:	001032f4 	add.w	$r20,$r23,$r12
1c0053f4:	2a00028e 	ld.bu	$r14,$r20,0
1c0053f8:	6c000dcd 	bgeu	$r14,$r13,12(0xc) # 1c005404 <test_min_position1_u8+0x124>
1c0053fc:	001501cd 	move	$r13,$r14
1c005400:	00150186 	move	$r6,$r12
1c005404:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005408:	001032e1 	add.w	$r1,$r23,$r12
1c00540c:	2a00002f 	ld.bu	$r15,$r1,0
1c005410:	6c000ded 	bgeu	$r15,$r13,12(0xc) # 1c00541c <test_min_position1_u8+0x13c>
1c005414:	001501ed 	move	$r13,$r15
1c005418:	00150186 	move	$r6,$r12
1c00541c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005420:	001032e4 	add.w	$r4,$r23,$r12
1c005424:	2a000085 	ld.bu	$r5,$r4,0
1c005428:	6c000cad 	bgeu	$r5,$r13,12(0xc) # 1c005434 <test_min_position1_u8+0x154>
1c00542c:	001500ad 	move	$r13,$r5
1c005430:	00150186 	move	$r6,$r12
1c005434:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005438:	5800c99c 	beq	$r12,$r28,200(0xc8) # 1c005500 <test_min_position1_u8+0x220>
1c00543c:	001032e7 	add.w	$r7,$r23,$r12
1c005440:	2a0000e8 	ld.bu	$r8,$r7,0
1c005444:	6c000d0d 	bgeu	$r8,$r13,12(0xc) # 1c005450 <test_min_position1_u8+0x170>
1c005448:	0015010d 	move	$r13,$r8
1c00544c:	00150186 	move	$r6,$r12
1c005450:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005454:	001032e9 	add.w	$r9,$r23,$r12
1c005458:	2a00012a 	ld.bu	$r10,$r9,0
1c00545c:	6c000d4d 	bgeu	$r10,$r13,12(0xc) # 1c005468 <test_min_position1_u8+0x188>
1c005460:	0015014d 	move	$r13,$r10
1c005464:	00150186 	move	$r6,$r12
1c005468:	0280058b 	addi.w	$r11,$r12,1(0x1)
1c00546c:	00102ef1 	add.w	$r17,$r23,$r11
1c005470:	2a000232 	ld.bu	$r18,$r17,0
1c005474:	6c000e4d 	bgeu	$r18,$r13,12(0xc) # 1c005480 <test_min_position1_u8+0x1a0>
1c005478:	0015024d 	move	$r13,$r18
1c00547c:	00150166 	move	$r6,$r11
1c005480:	02800993 	addi.w	$r19,$r12,2(0x2)
1c005484:	00104ef4 	add.w	$r20,$r23,$r19
1c005488:	2a00028e 	ld.bu	$r14,$r20,0
1c00548c:	6c000dcd 	bgeu	$r14,$r13,12(0xc) # 1c005498 <test_min_position1_u8+0x1b8>
1c005490:	001501cd 	move	$r13,$r14
1c005494:	00150266 	move	$r6,$r19
1c005498:	02800d81 	addi.w	$r1,$r12,3(0x3)
1c00549c:	001006ef 	add.w	$r15,$r23,$r1
1c0054a0:	2a0001e4 	ld.bu	$r4,$r15,0
1c0054a4:	6c000c8d 	bgeu	$r4,$r13,12(0xc) # 1c0054b0 <test_min_position1_u8+0x1d0>
1c0054a8:	0015008d 	move	$r13,$r4
1c0054ac:	00150026 	move	$r6,$r1
1c0054b0:	02801185 	addi.w	$r5,$r12,4(0x4)
1c0054b4:	001016e7 	add.w	$r7,$r23,$r5
1c0054b8:	2a0000e8 	ld.bu	$r8,$r7,0
1c0054bc:	6c000d0d 	bgeu	$r8,$r13,12(0xc) # 1c0054c8 <test_min_position1_u8+0x1e8>
1c0054c0:	0015010d 	move	$r13,$r8
1c0054c4:	001500a6 	move	$r6,$r5
1c0054c8:	02801589 	addi.w	$r9,$r12,5(0x5)
1c0054cc:	001026ea 	add.w	$r10,$r23,$r9
1c0054d0:	2a00014b 	ld.bu	$r11,$r10,0
1c0054d4:	6c000d6d 	bgeu	$r11,$r13,12(0xc) # 1c0054e0 <test_min_position1_u8+0x200>
1c0054d8:	0015016d 	move	$r13,$r11
1c0054dc:	00150126 	move	$r6,$r9
1c0054e0:	02801991 	addi.w	$r17,$r12,6(0x6)
1c0054e4:	001046f2 	add.w	$r18,$r23,$r17
1c0054e8:	2a000253 	ld.bu	$r19,$r18,0
1c0054ec:	6c000e6d 	bgeu	$r19,$r13,12(0xc) # 1c0054f8 <test_min_position1_u8+0x218>
1c0054f0:	0015026d 	move	$r13,$r19
1c0054f4:	00150226 	move	$r6,$r17
1c0054f8:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c0054fc:	5fff419c 	bne	$r12,$r28,-192(0x3ff40) # 1c00543c <test_min_position1_u8+0x15c>
1c005500:	288003e7 	ld.w	$r7,$r31,0
1c005504:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c0055a0 <test_min_position1_u8+0x2c0>
1c005508:	00150305 	move	$r5,$r24
1c00550c:	00150344 	move	$r4,$r26
1c005510:	547d2000 	bl	32032(0x7d20) # 1c00d230 <printf>
1c005514:	28800330 	ld.w	$r16,$r25,0
1c005518:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c00551c:	63fe37b0 	blt	$r29,$r16,-460(0x3fe34) # 1c005350 <test_min_position1_u8+0x70>
1c005520:	54822000 	bl	33312(0x8220) # 1c00d740 <get_clock>
1c005524:	2880036f 	ld.w	$r15,$r27,0
1c005528:	00150094 	move	$r20,$r4
1c00552c:	14001e86 	lu12i.w	$r6,244(0xf4)
1c005530:	038900c7 	ori	$r7,$r6,0x240
1c005534:	00113e88 	sub.w	$r8,$r20,$r15
1c005538:	1c000f6e 	pcaddu12i	$r14,123(0x7b)
1c00553c:	288211ce 	ld.w	$r14,$r14,132(0x84)
1c005540:	00211d09 	div.wu	$r9,$r8,$r7
1c005544:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c00554c <test_min_position1_u8+0x26c>
1c005548:	002a0007 	break	0x7
1c00554c:	00150386 	move	$r6,$r28
1c005550:	00150305 	move	$r5,$r24
1c005554:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c005558:	02ac0084 	addi.w	$r4,$r4,-1280(0xb00)
1c00555c:	00150127 	move	$r7,$r9
1c005560:	298001d4 	st.w	$r20,$r14,0
1c005564:	547ccc00 	bl	31948(0x7ccc) # 1c00d230 <printf>
1c005568:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00556c:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c005570:	28809078 	ld.w	$r24,$r3,36(0x24)
1c005574:	28808079 	ld.w	$r25,$r3,32(0x20)
1c005578:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c00557c:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c005580:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c005584:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c005588:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c00558c:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c005590:	00150004 	move	$r4,$r0
1c005594:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005598:	4c000020 	jirl	$r0,$r1,0
1c00559c:	03400000 	andi	$r0,$r0,0x0
1c0055a0:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c0055a4:	63fdafb0 	blt	$r29,$r16,-596(0x3fdac) # 1c005350 <test_min_position1_u8+0x70>
1c0055a8:	53ff7bff 	b	-136(0xfffff78) # 1c005520 <test_min_position1_u8+0x240>
1c0055ac:	0015018d 	move	$r13,$r12
1c0055b0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0055b4:	53fdf3ff 	b	-528(0xffffdf0) # 1c0053a4 <test_min_position1_u8+0xc4>
1c0055b8:	03400000 	andi	$r0,$r0,0x0
1c0055bc:	03400000 	andi	$r0,$r0,0x0

1c0055c0 <test_min_position1_16>:
test_min_position1_16():
1c0055c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0055c4:	2980a077 	st.w	$r23,$r3,40(0x28)
1c0055c8:	29809078 	st.w	$r24,$r3,36(0x24)
1c0055cc:	29808079 	st.w	$r25,$r3,32(0x20)
1c0055d0:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0055d4:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0055d8:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0055dc:	2980407d 	st.w	$r29,$r3,16(0x10)
1c0055e0:	2980307e 	st.w	$r30,$r3,12(0xc)
1c0055e4:	2980207f 	st.w	$r31,$r3,8(0x8)
1c0055e8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0055ec:	1c000f78 	pcaddu12i	$r24,123(0x7b)
1c0055f0:	02bf2318 	addi.w	$r24,$r24,-56(0xfc8)
1c0055f4:	0015009d 	move	$r29,$r4
1c0055f8:	001500bb 	move	$r27,$r5
1c0055fc:	001500d7 	move	$r23,$r6
1c005600:	54814000 	bl	33088(0x8140) # 1c00d740 <get_clock>
1c005604:	28800310 	ld.w	$r16,$r24,0
1c005608:	1c000f7a 	pcaddu12i	$r26,123(0x7b)
1c00560c:	28bee35a 	ld.w	$r26,$r26,-72(0xfb8)
1c005610:	29800344 	st.w	$r4,$r26,0
1c005614:	0015001c 	move	$r28,$r0
1c005618:	1c000f7f 	pcaddu12i	$r31,123(0x7b)
1c00561c:	02bec3ff 	addi.w	$r31,$r31,-80(0xfb0)
1c005620:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c005624:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c005628:	02a77339 	addi.w	$r25,$r25,-1572(0x9dc)
1c00562c:	6401c410 	bge	$r0,$r16,452(0x1c4) # 1c0057f0 <test_min_position1_16+0x230>
1c005630:	00150006 	move	$r6,$r0
1c005634:	6c019fdb 	bgeu	$r30,$r27,412(0x19c) # 1c0057d0 <test_min_position1_16+0x210>
1c005638:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00563c:	0011336f 	sub.w	$r15,$r27,$r12
1c005640:	03401de1 	andi	$r1,$r15,0x7
1c005644:	284003ae 	ld.h	$r14,$r29,0
1c005648:	02800bad 	addi.w	$r13,$r29,2(0x2)
1c00564c:	00150006 	move	$r6,$r0
1c005650:	5800d420 	beq	$r1,$r0,212(0xd4) # 1c005724 <test_min_position1_16+0x164>
1c005654:	5800b42c 	beq	$r1,$r12,180(0xb4) # 1c005708 <test_min_position1_16+0x148>
1c005658:	02800811 	addi.w	$r17,$r0,2(0x2)
1c00565c:	58009431 	beq	$r1,$r17,148(0x94) # 1c0056f0 <test_min_position1_16+0x130>
1c005660:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c005664:	58007424 	beq	$r1,$r4,116(0x74) # 1c0056d8 <test_min_position1_16+0x118>
1c005668:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00566c:	58005425 	beq	$r1,$r5,84(0x54) # 1c0056c0 <test_min_position1_16+0x100>
1c005670:	02801407 	addi.w	$r7,$r0,5(0x5)
1c005674:	58003427 	beq	$r1,$r7,52(0x34) # 1c0056a8 <test_min_position1_16+0xe8>
1c005678:	02801808 	addi.w	$r8,$r0,6(0x6)
1c00567c:	58001428 	beq	$r1,$r8,20(0x14) # 1c005690 <test_min_position1_16+0xd0>
1c005680:	28400bac 	ld.h	$r12,$r29,2(0x2)
1c005684:	6001f98e 	blt	$r12,$r14,504(0x1f8) # 1c00587c <test_min_position1_16+0x2bc>
1c005688:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00568c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c005690:	284001a9 	ld.h	$r9,$r13,0
1c005694:	64000d2e 	bge	$r9,$r14,12(0xc) # 1c0056a0 <test_min_position1_16+0xe0>
1c005698:	0015012e 	move	$r14,$r9
1c00569c:	00150186 	move	$r6,$r12
1c0056a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056a4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0056a8:	284001aa 	ld.h	$r10,$r13,0
1c0056ac:	64000d4e 	bge	$r10,$r14,12(0xc) # 1c0056b8 <test_min_position1_16+0xf8>
1c0056b0:	0015014e 	move	$r14,$r10
1c0056b4:	00150186 	move	$r6,$r12
1c0056b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056bc:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0056c0:	284001ab 	ld.h	$r11,$r13,0
1c0056c4:	64000d6e 	bge	$r11,$r14,12(0xc) # 1c0056d0 <test_min_position1_16+0x110>
1c0056c8:	0015016e 	move	$r14,$r11
1c0056cc:	00150186 	move	$r6,$r12
1c0056d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056d4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0056d8:	284001b2 	ld.h	$r18,$r13,0
1c0056dc:	64000e4e 	bge	$r18,$r14,12(0xc) # 1c0056e8 <test_min_position1_16+0x128>
1c0056e0:	0015024e 	move	$r14,$r18
1c0056e4:	00150186 	move	$r6,$r12
1c0056e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056ec:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0056f0:	284001b3 	ld.h	$r19,$r13,0
1c0056f4:	64000e6e 	bge	$r19,$r14,12(0xc) # 1c005700 <test_min_position1_16+0x140>
1c0056f8:	0015026e 	move	$r14,$r19
1c0056fc:	00150186 	move	$r6,$r12
1c005700:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005704:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c005708:	284001b4 	ld.h	$r20,$r13,0
1c00570c:	64000e8e 	bge	$r20,$r14,12(0xc) # 1c005718 <test_min_position1_16+0x158>
1c005710:	0015028e 	move	$r14,$r20
1c005714:	00150186 	move	$r6,$r12
1c005718:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00571c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c005720:	5800b36c 	beq	$r27,$r12,176(0xb0) # 1c0057d0 <test_min_position1_16+0x210>
1c005724:	284001af 	ld.h	$r15,$r13,0
1c005728:	64000dee 	bge	$r15,$r14,12(0xc) # 1c005734 <test_min_position1_16+0x174>
1c00572c:	001501ee 	move	$r14,$r15
1c005730:	00150186 	move	$r6,$r12
1c005734:	284009a1 	ld.h	$r1,$r13,2(0x2)
1c005738:	02800584 	addi.w	$r4,$r12,1(0x1)
1c00573c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c005740:	64000c2e 	bge	$r1,$r14,12(0xc) # 1c00574c <test_min_position1_16+0x18c>
1c005744:	0015002e 	move	$r14,$r1
1c005748:	00150086 	move	$r6,$r4
1c00574c:	284009a5 	ld.h	$r5,$r13,2(0x2)
1c005750:	02800491 	addi.w	$r17,$r4,1(0x1)
1c005754:	64000cae 	bge	$r5,$r14,12(0xc) # 1c005760 <test_min_position1_16+0x1a0>
1c005758:	001500ae 	move	$r14,$r5
1c00575c:	00150226 	move	$r6,$r17
1c005760:	284011a7 	ld.h	$r7,$r13,4(0x4)
1c005764:	02800888 	addi.w	$r8,$r4,2(0x2)
1c005768:	64000cee 	bge	$r7,$r14,12(0xc) # 1c005774 <test_min_position1_16+0x1b4>
1c00576c:	001500ee 	move	$r14,$r7
1c005770:	00150106 	move	$r6,$r8
1c005774:	284019ac 	ld.h	$r12,$r13,6(0x6)
1c005778:	02800c89 	addi.w	$r9,$r4,3(0x3)
1c00577c:	64000d8e 	bge	$r12,$r14,12(0xc) # 1c005788 <test_min_position1_16+0x1c8>
1c005780:	0015018e 	move	$r14,$r12
1c005784:	00150126 	move	$r6,$r9
1c005788:	284021aa 	ld.h	$r10,$r13,8(0x8)
1c00578c:	0280108b 	addi.w	$r11,$r4,4(0x4)
1c005790:	64000d4e 	bge	$r10,$r14,12(0xc) # 1c00579c <test_min_position1_16+0x1dc>
1c005794:	0015014e 	move	$r14,$r10
1c005798:	00150166 	move	$r6,$r11
1c00579c:	284029b2 	ld.h	$r18,$r13,10(0xa)
1c0057a0:	02801493 	addi.w	$r19,$r4,5(0x5)
1c0057a4:	64000e4e 	bge	$r18,$r14,12(0xc) # 1c0057b0 <test_min_position1_16+0x1f0>
1c0057a8:	0015024e 	move	$r14,$r18
1c0057ac:	00150266 	move	$r6,$r19
1c0057b0:	284031b4 	ld.h	$r20,$r13,12(0xc)
1c0057b4:	0280188f 	addi.w	$r15,$r4,6(0x6)
1c0057b8:	64000e8e 	bge	$r20,$r14,12(0xc) # 1c0057c4 <test_min_position1_16+0x204>
1c0057bc:	0015028e 	move	$r14,$r20
1c0057c0:	001501e6 	move	$r6,$r15
1c0057c4:	02801c8c 	addi.w	$r12,$r4,7(0x7)
1c0057c8:	028039ad 	addi.w	$r13,$r13,14(0xe)
1c0057cc:	5fff5b6c 	bne	$r27,$r12,-168(0x3ff58) # 1c005724 <test_min_position1_16+0x164>
1c0057d0:	288003e7 	ld.w	$r7,$r31,0
1c0057d4:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c005870 <test_min_position1_16+0x2b0>
1c0057d8:	001502e5 	move	$r5,$r23
1c0057dc:	00150324 	move	$r4,$r25
1c0057e0:	547a5000 	bl	31312(0x7a50) # 1c00d230 <printf>
1c0057e4:	28800310 	ld.w	$r16,$r24,0
1c0057e8:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c0057ec:	63fe4790 	blt	$r28,$r16,-444(0x3fe44) # 1c005630 <test_min_position1_16+0x70>
1c0057f0:	547f5000 	bl	32592(0x7f50) # 1c00d740 <get_clock>
1c0057f4:	28800348 	ld.w	$r8,$r26,0
1c0057f8:	00150091 	move	$r17,$r4
1c0057fc:	14001e86 	lu12i.w	$r6,244(0xf4)
1c005800:	038900c7 	ori	$r7,$r6,0x240
1c005804:	0011222a 	sub.w	$r10,$r17,$r8
1c005808:	1c000f69 	pcaddu12i	$r9,123(0x7b)
1c00580c:	28b6d129 	ld.w	$r9,$r9,-588(0xdb4)
1c005810:	00211d4b 	div.wu	$r11,$r10,$r7
1c005814:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c00581c <test_min_position1_16+0x25c>
1c005818:	002a0007 	break	0x7
1c00581c:	00150366 	move	$r6,$r27
1c005820:	001502e5 	move	$r5,$r23
1c005824:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c005828:	02a0c084 	addi.w	$r4,$r4,-2000(0x830)
1c00582c:	00150167 	move	$r7,$r11
1c005830:	29800131 	st.w	$r17,$r9,0
1c005834:	5479fc00 	bl	31228(0x79fc) # 1c00d230 <printf>
1c005838:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00583c:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c005840:	28809078 	ld.w	$r24,$r3,36(0x24)
1c005844:	28808079 	ld.w	$r25,$r3,32(0x20)
1c005848:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c00584c:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c005850:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c005854:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c005858:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c00585c:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c005860:	00150004 	move	$r4,$r0
1c005864:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005868:	4c000020 	jirl	$r0,$r1,0
1c00586c:	03400000 	andi	$r0,$r0,0x0
1c005870:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c005874:	63fdbf90 	blt	$r28,$r16,-580(0x3fdbc) # 1c005630 <test_min_position1_16+0x70>
1c005878:	53ff7bff 	b	-136(0xfffff78) # 1c0057f0 <test_min_position1_16+0x230>
1c00587c:	0015018e 	move	$r14,$r12
1c005880:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005884:	53fe07ff 	b	-508(0xffffe04) # 1c005688 <test_min_position1_16+0xc8>
1c005888:	03400000 	andi	$r0,$r0,0x0
1c00588c:	03400000 	andi	$r0,$r0,0x0

1c005890 <test_min_position1_u16>:
test_min_position1_u16():
1c005890:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005894:	2980a077 	st.w	$r23,$r3,40(0x28)
1c005898:	29809078 	st.w	$r24,$r3,36(0x24)
1c00589c:	29808079 	st.w	$r25,$r3,32(0x20)
1c0058a0:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0058a4:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0058a8:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0058ac:	2980407d 	st.w	$r29,$r3,16(0x10)
1c0058b0:	2980307e 	st.w	$r30,$r3,12(0xc)
1c0058b4:	2980207f 	st.w	$r31,$r3,8(0x8)
1c0058b8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0058bc:	1c000f78 	pcaddu12i	$r24,123(0x7b)
1c0058c0:	02b3e318 	addi.w	$r24,$r24,-776(0xcf8)
1c0058c4:	0015009d 	move	$r29,$r4
1c0058c8:	001500bb 	move	$r27,$r5
1c0058cc:	001500d7 	move	$r23,$r6
1c0058d0:	547e7000 	bl	32368(0x7e70) # 1c00d740 <get_clock>
1c0058d4:	28800310 	ld.w	$r16,$r24,0
1c0058d8:	1c000f7a 	pcaddu12i	$r26,123(0x7b)
1c0058dc:	28b3a35a 	ld.w	$r26,$r26,-792(0xce8)
1c0058e0:	29800344 	st.w	$r4,$r26,0
1c0058e4:	0015001c 	move	$r28,$r0
1c0058e8:	1c000f7f 	pcaddu12i	$r31,123(0x7b)
1c0058ec:	02b383ff 	addi.w	$r31,$r31,-800(0xce0)
1c0058f0:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c0058f4:	1c000f59 	pcaddu12i	$r25,122(0x7a)
1c0058f8:	029c3339 	addi.w	$r25,$r25,1804(0x70c)
1c0058fc:	6401c410 	bge	$r0,$r16,452(0x1c4) # 1c005ac0 <test_min_position1_u16+0x230>
1c005900:	00150006 	move	$r6,$r0
1c005904:	6c019fdb 	bgeu	$r30,$r27,412(0x19c) # 1c005aa0 <test_min_position1_u16+0x210>
1c005908:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00590c:	0011336f 	sub.w	$r15,$r27,$r12
1c005910:	03401de1 	andi	$r1,$r15,0x7
1c005914:	2a4003ae 	ld.hu	$r14,$r29,0
1c005918:	02800bad 	addi.w	$r13,$r29,2(0x2)
1c00591c:	00150006 	move	$r6,$r0
1c005920:	5800d420 	beq	$r1,$r0,212(0xd4) # 1c0059f4 <test_min_position1_u16+0x164>
1c005924:	5800b42c 	beq	$r1,$r12,180(0xb4) # 1c0059d8 <test_min_position1_u16+0x148>
1c005928:	02800811 	addi.w	$r17,$r0,2(0x2)
1c00592c:	58009431 	beq	$r1,$r17,148(0x94) # 1c0059c0 <test_min_position1_u16+0x130>
1c005930:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c005934:	58007424 	beq	$r1,$r4,116(0x74) # 1c0059a8 <test_min_position1_u16+0x118>
1c005938:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00593c:	58005425 	beq	$r1,$r5,84(0x54) # 1c005990 <test_min_position1_u16+0x100>
1c005940:	02801407 	addi.w	$r7,$r0,5(0x5)
1c005944:	58003427 	beq	$r1,$r7,52(0x34) # 1c005978 <test_min_position1_u16+0xe8>
1c005948:	02801808 	addi.w	$r8,$r0,6(0x6)
1c00594c:	58001428 	beq	$r1,$r8,20(0x14) # 1c005960 <test_min_position1_u16+0xd0>
1c005950:	2a400bac 	ld.hu	$r12,$r29,2(0x2)
1c005954:	6801f98e 	bltu	$r12,$r14,504(0x1f8) # 1c005b4c <test_min_position1_u16+0x2bc>
1c005958:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00595c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c005960:	2a4001a9 	ld.hu	$r9,$r13,0
1c005964:	6c000d2e 	bgeu	$r9,$r14,12(0xc) # 1c005970 <test_min_position1_u16+0xe0>
1c005968:	0015012e 	move	$r14,$r9
1c00596c:	00150186 	move	$r6,$r12
1c005970:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005974:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c005978:	2a4001aa 	ld.hu	$r10,$r13,0
1c00597c:	6c000d4e 	bgeu	$r10,$r14,12(0xc) # 1c005988 <test_min_position1_u16+0xf8>
1c005980:	0015014e 	move	$r14,$r10
1c005984:	00150186 	move	$r6,$r12
1c005988:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00598c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c005990:	2a4001ab 	ld.hu	$r11,$r13,0
1c005994:	6c000d6e 	bgeu	$r11,$r14,12(0xc) # 1c0059a0 <test_min_position1_u16+0x110>
1c005998:	0015016e 	move	$r14,$r11
1c00599c:	00150186 	move	$r6,$r12
1c0059a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059a4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0059a8:	2a4001b2 	ld.hu	$r18,$r13,0
1c0059ac:	6c000e4e 	bgeu	$r18,$r14,12(0xc) # 1c0059b8 <test_min_position1_u16+0x128>
1c0059b0:	0015024e 	move	$r14,$r18
1c0059b4:	00150186 	move	$r6,$r12
1c0059b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059bc:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0059c0:	2a4001b3 	ld.hu	$r19,$r13,0
1c0059c4:	6c000e6e 	bgeu	$r19,$r14,12(0xc) # 1c0059d0 <test_min_position1_u16+0x140>
1c0059c8:	0015026e 	move	$r14,$r19
1c0059cc:	00150186 	move	$r6,$r12
1c0059d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059d4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0059d8:	2a4001b4 	ld.hu	$r20,$r13,0
1c0059dc:	6c000e8e 	bgeu	$r20,$r14,12(0xc) # 1c0059e8 <test_min_position1_u16+0x158>
1c0059e0:	0015028e 	move	$r14,$r20
1c0059e4:	00150186 	move	$r6,$r12
1c0059e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059ec:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0059f0:	5800b36c 	beq	$r27,$r12,176(0xb0) # 1c005aa0 <test_min_position1_u16+0x210>
1c0059f4:	2a4001af 	ld.hu	$r15,$r13,0
1c0059f8:	6c000dee 	bgeu	$r15,$r14,12(0xc) # 1c005a04 <test_min_position1_u16+0x174>
1c0059fc:	001501ee 	move	$r14,$r15
1c005a00:	00150186 	move	$r6,$r12
1c005a04:	2a4009a1 	ld.hu	$r1,$r13,2(0x2)
1c005a08:	02800584 	addi.w	$r4,$r12,1(0x1)
1c005a0c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c005a10:	6c000c2e 	bgeu	$r1,$r14,12(0xc) # 1c005a1c <test_min_position1_u16+0x18c>
1c005a14:	0015002e 	move	$r14,$r1
1c005a18:	00150086 	move	$r6,$r4
1c005a1c:	2a4009a5 	ld.hu	$r5,$r13,2(0x2)
1c005a20:	02800491 	addi.w	$r17,$r4,1(0x1)
1c005a24:	6c000cae 	bgeu	$r5,$r14,12(0xc) # 1c005a30 <test_min_position1_u16+0x1a0>
1c005a28:	001500ae 	move	$r14,$r5
1c005a2c:	00150226 	move	$r6,$r17
1c005a30:	2a4011a7 	ld.hu	$r7,$r13,4(0x4)
1c005a34:	02800888 	addi.w	$r8,$r4,2(0x2)
1c005a38:	6c000cee 	bgeu	$r7,$r14,12(0xc) # 1c005a44 <test_min_position1_u16+0x1b4>
1c005a3c:	001500ee 	move	$r14,$r7
1c005a40:	00150106 	move	$r6,$r8
1c005a44:	2a4019ac 	ld.hu	$r12,$r13,6(0x6)
1c005a48:	02800c89 	addi.w	$r9,$r4,3(0x3)
1c005a4c:	6c000d8e 	bgeu	$r12,$r14,12(0xc) # 1c005a58 <test_min_position1_u16+0x1c8>
1c005a50:	0015018e 	move	$r14,$r12
1c005a54:	00150126 	move	$r6,$r9
1c005a58:	2a4021aa 	ld.hu	$r10,$r13,8(0x8)
1c005a5c:	0280108b 	addi.w	$r11,$r4,4(0x4)
1c005a60:	6c000d4e 	bgeu	$r10,$r14,12(0xc) # 1c005a6c <test_min_position1_u16+0x1dc>
1c005a64:	0015014e 	move	$r14,$r10
1c005a68:	00150166 	move	$r6,$r11
1c005a6c:	2a4029b2 	ld.hu	$r18,$r13,10(0xa)
1c005a70:	02801493 	addi.w	$r19,$r4,5(0x5)
1c005a74:	6c000e4e 	bgeu	$r18,$r14,12(0xc) # 1c005a80 <test_min_position1_u16+0x1f0>
1c005a78:	0015024e 	move	$r14,$r18
1c005a7c:	00150266 	move	$r6,$r19
1c005a80:	2a4031b4 	ld.hu	$r20,$r13,12(0xc)
1c005a84:	0280188f 	addi.w	$r15,$r4,6(0x6)
1c005a88:	6c000e8e 	bgeu	$r20,$r14,12(0xc) # 1c005a94 <test_min_position1_u16+0x204>
1c005a8c:	0015028e 	move	$r14,$r20
1c005a90:	001501e6 	move	$r6,$r15
1c005a94:	02801c8c 	addi.w	$r12,$r4,7(0x7)
1c005a98:	028039ad 	addi.w	$r13,$r13,14(0xe)
1c005a9c:	5fff5b6c 	bne	$r27,$r12,-168(0x3ff58) # 1c0059f4 <test_min_position1_u16+0x164>
1c005aa0:	288003e7 	ld.w	$r7,$r31,0
1c005aa4:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c005b40 <test_min_position1_u16+0x2b0>
1c005aa8:	001502e5 	move	$r5,$r23
1c005aac:	00150324 	move	$r4,$r25
1c005ab0:	54778000 	bl	30592(0x7780) # 1c00d230 <printf>
1c005ab4:	28800310 	ld.w	$r16,$r24,0
1c005ab8:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c005abc:	63fe4790 	blt	$r28,$r16,-444(0x3fe44) # 1c005900 <test_min_position1_u16+0x70>
1c005ac0:	547c8000 	bl	31872(0x7c80) # 1c00d740 <get_clock>
1c005ac4:	28800348 	ld.w	$r8,$r26,0
1c005ac8:	00150091 	move	$r17,$r4
1c005acc:	14001e86 	lu12i.w	$r6,244(0xf4)
1c005ad0:	038900c7 	ori	$r7,$r6,0x240
1c005ad4:	0011222a 	sub.w	$r10,$r17,$r8
1c005ad8:	1c000f69 	pcaddu12i	$r9,123(0x7b)
1c005adc:	28ab9129 	ld.w	$r9,$r9,-1308(0xae4)
1c005ae0:	00211d4b 	div.wu	$r11,$r10,$r7
1c005ae4:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c005aec <test_min_position1_u16+0x25c>
1c005ae8:	002a0007 	break	0x7
1c005aec:	00150366 	move	$r6,$r27
1c005af0:	001502e5 	move	$r5,$r23
1c005af4:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005af8:	02958084 	addi.w	$r4,$r4,1376(0x560)
1c005afc:	00150167 	move	$r7,$r11
1c005b00:	29800131 	st.w	$r17,$r9,0
1c005b04:	54772c00 	bl	30508(0x772c) # 1c00d230 <printf>
1c005b08:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005b0c:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c005b10:	28809078 	ld.w	$r24,$r3,36(0x24)
1c005b14:	28808079 	ld.w	$r25,$r3,32(0x20)
1c005b18:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c005b1c:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c005b20:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c005b24:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c005b28:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c005b2c:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c005b30:	00150004 	move	$r4,$r0
1c005b34:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005b38:	4c000020 	jirl	$r0,$r1,0
1c005b3c:	03400000 	andi	$r0,$r0,0x0
1c005b40:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c005b44:	63fdbf90 	blt	$r28,$r16,-580(0x3fdbc) # 1c005900 <test_min_position1_u16+0x70>
1c005b48:	53ff7bff 	b	-136(0xfffff78) # 1c005ac0 <test_min_position1_u16+0x230>
1c005b4c:	0015018e 	move	$r14,$r12
1c005b50:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005b54:	53fe07ff 	b	-508(0xffffe04) # 1c005958 <test_min_position1_u16+0xc8>
1c005b58:	03400000 	andi	$r0,$r0,0x0
1c005b5c:	03400000 	andi	$r0,$r0,0x0

1c005b60 <test_min_position1_32>:
test_min_position1_32():
1c005b60:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005b64:	2980a077 	st.w	$r23,$r3,40(0x28)
1c005b68:	29809078 	st.w	$r24,$r3,36(0x24)
1c005b6c:	29808079 	st.w	$r25,$r3,32(0x20)
1c005b70:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c005b74:	2980607b 	st.w	$r27,$r3,24(0x18)
1c005b78:	2980507c 	st.w	$r28,$r3,20(0x14)
1c005b7c:	2980407d 	st.w	$r29,$r3,16(0x10)
1c005b80:	2980307e 	st.w	$r30,$r3,12(0xc)
1c005b84:	2980207f 	st.w	$r31,$r3,8(0x8)
1c005b88:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005b8c:	1c000f78 	pcaddu12i	$r24,123(0x7b)
1c005b90:	02a8a318 	addi.w	$r24,$r24,-1496(0xa28)
1c005b94:	0015009d 	move	$r29,$r4
1c005b98:	001500bb 	move	$r27,$r5
1c005b9c:	001500d7 	move	$r23,$r6
1c005ba0:	547ba000 	bl	31648(0x7ba0) # 1c00d740 <get_clock>
1c005ba4:	28800310 	ld.w	$r16,$r24,0
1c005ba8:	1c000f7a 	pcaddu12i	$r26,123(0x7b)
1c005bac:	28a8635a 	ld.w	$r26,$r26,-1512(0xa18)
1c005bb0:	29800344 	st.w	$r4,$r26,0
1c005bb4:	0015001c 	move	$r28,$r0
1c005bb8:	1c000f7f 	pcaddu12i	$r31,123(0x7b)
1c005bbc:	02a843ff 	addi.w	$r31,$r31,-1520(0xa10)
1c005bc0:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c005bc4:	1c000f59 	pcaddu12i	$r25,122(0x7a)
1c005bc8:	0290f339 	addi.w	$r25,$r25,1084(0x43c)
1c005bcc:	6401c410 	bge	$r0,$r16,452(0x1c4) # 1c005d90 <test_min_position1_32+0x230>
1c005bd0:	00150006 	move	$r6,$r0
1c005bd4:	6c019fdb 	bgeu	$r30,$r27,412(0x19c) # 1c005d70 <test_min_position1_32+0x210>
1c005bd8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005bdc:	0011336f 	sub.w	$r15,$r27,$r12
1c005be0:	03401de1 	andi	$r1,$r15,0x7
1c005be4:	288003ae 	ld.w	$r14,$r29,0
1c005be8:	028013ad 	addi.w	$r13,$r29,4(0x4)
1c005bec:	00150006 	move	$r6,$r0
1c005bf0:	5800d420 	beq	$r1,$r0,212(0xd4) # 1c005cc4 <test_min_position1_32+0x164>
1c005bf4:	5800b42c 	beq	$r1,$r12,180(0xb4) # 1c005ca8 <test_min_position1_32+0x148>
1c005bf8:	02800811 	addi.w	$r17,$r0,2(0x2)
1c005bfc:	58009431 	beq	$r1,$r17,148(0x94) # 1c005c90 <test_min_position1_32+0x130>
1c005c00:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c005c04:	58007424 	beq	$r1,$r4,116(0x74) # 1c005c78 <test_min_position1_32+0x118>
1c005c08:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005c0c:	58005425 	beq	$r1,$r5,84(0x54) # 1c005c60 <test_min_position1_32+0x100>
1c005c10:	02801407 	addi.w	$r7,$r0,5(0x5)
1c005c14:	58003427 	beq	$r1,$r7,52(0x34) # 1c005c48 <test_min_position1_32+0xe8>
1c005c18:	02801808 	addi.w	$r8,$r0,6(0x6)
1c005c1c:	58001428 	beq	$r1,$r8,20(0x14) # 1c005c30 <test_min_position1_32+0xd0>
1c005c20:	288013ac 	ld.w	$r12,$r29,4(0x4)
1c005c24:	6001f98e 	blt	$r12,$r14,504(0x1f8) # 1c005e1c <test_min_position1_32+0x2bc>
1c005c28:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005c2c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005c30:	288001a9 	ld.w	$r9,$r13,0
1c005c34:	64000d2e 	bge	$r9,$r14,12(0xc) # 1c005c40 <test_min_position1_32+0xe0>
1c005c38:	0015012e 	move	$r14,$r9
1c005c3c:	00150186 	move	$r6,$r12
1c005c40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c44:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005c48:	288001aa 	ld.w	$r10,$r13,0
1c005c4c:	64000d4e 	bge	$r10,$r14,12(0xc) # 1c005c58 <test_min_position1_32+0xf8>
1c005c50:	0015014e 	move	$r14,$r10
1c005c54:	00150186 	move	$r6,$r12
1c005c58:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c5c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005c60:	288001ab 	ld.w	$r11,$r13,0
1c005c64:	64000d6e 	bge	$r11,$r14,12(0xc) # 1c005c70 <test_min_position1_32+0x110>
1c005c68:	0015016e 	move	$r14,$r11
1c005c6c:	00150186 	move	$r6,$r12
1c005c70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c74:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005c78:	288001b2 	ld.w	$r18,$r13,0
1c005c7c:	64000e4e 	bge	$r18,$r14,12(0xc) # 1c005c88 <test_min_position1_32+0x128>
1c005c80:	0015024e 	move	$r14,$r18
1c005c84:	00150186 	move	$r6,$r12
1c005c88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c8c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005c90:	288001b3 	ld.w	$r19,$r13,0
1c005c94:	64000e6e 	bge	$r19,$r14,12(0xc) # 1c005ca0 <test_min_position1_32+0x140>
1c005c98:	0015026e 	move	$r14,$r19
1c005c9c:	00150186 	move	$r6,$r12
1c005ca0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ca4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005ca8:	288001b4 	ld.w	$r20,$r13,0
1c005cac:	64000e8e 	bge	$r20,$r14,12(0xc) # 1c005cb8 <test_min_position1_32+0x158>
1c005cb0:	0015028e 	move	$r14,$r20
1c005cb4:	00150186 	move	$r6,$r12
1c005cb8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005cbc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005cc0:	5800b36c 	beq	$r27,$r12,176(0xb0) # 1c005d70 <test_min_position1_32+0x210>
1c005cc4:	288001af 	ld.w	$r15,$r13,0
1c005cc8:	64000dee 	bge	$r15,$r14,12(0xc) # 1c005cd4 <test_min_position1_32+0x174>
1c005ccc:	001501ee 	move	$r14,$r15
1c005cd0:	00150186 	move	$r6,$r12
1c005cd4:	288011a1 	ld.w	$r1,$r13,4(0x4)
1c005cd8:	02800584 	addi.w	$r4,$r12,1(0x1)
1c005cdc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005ce0:	64000c2e 	bge	$r1,$r14,12(0xc) # 1c005cec <test_min_position1_32+0x18c>
1c005ce4:	0015002e 	move	$r14,$r1
1c005ce8:	00150086 	move	$r6,$r4
1c005cec:	288011a5 	ld.w	$r5,$r13,4(0x4)
1c005cf0:	02800491 	addi.w	$r17,$r4,1(0x1)
1c005cf4:	64000cae 	bge	$r5,$r14,12(0xc) # 1c005d00 <test_min_position1_32+0x1a0>
1c005cf8:	001500ae 	move	$r14,$r5
1c005cfc:	00150226 	move	$r6,$r17
1c005d00:	288021a7 	ld.w	$r7,$r13,8(0x8)
1c005d04:	02800888 	addi.w	$r8,$r4,2(0x2)
1c005d08:	64000cee 	bge	$r7,$r14,12(0xc) # 1c005d14 <test_min_position1_32+0x1b4>
1c005d0c:	001500ee 	move	$r14,$r7
1c005d10:	00150106 	move	$r6,$r8
1c005d14:	288031ac 	ld.w	$r12,$r13,12(0xc)
1c005d18:	02800c89 	addi.w	$r9,$r4,3(0x3)
1c005d1c:	64000d8e 	bge	$r12,$r14,12(0xc) # 1c005d28 <test_min_position1_32+0x1c8>
1c005d20:	0015018e 	move	$r14,$r12
1c005d24:	00150126 	move	$r6,$r9
1c005d28:	288041aa 	ld.w	$r10,$r13,16(0x10)
1c005d2c:	0280108b 	addi.w	$r11,$r4,4(0x4)
1c005d30:	64000d4e 	bge	$r10,$r14,12(0xc) # 1c005d3c <test_min_position1_32+0x1dc>
1c005d34:	0015014e 	move	$r14,$r10
1c005d38:	00150166 	move	$r6,$r11
1c005d3c:	288051b2 	ld.w	$r18,$r13,20(0x14)
1c005d40:	02801493 	addi.w	$r19,$r4,5(0x5)
1c005d44:	64000e4e 	bge	$r18,$r14,12(0xc) # 1c005d50 <test_min_position1_32+0x1f0>
1c005d48:	0015024e 	move	$r14,$r18
1c005d4c:	00150266 	move	$r6,$r19
1c005d50:	288061b4 	ld.w	$r20,$r13,24(0x18)
1c005d54:	0280188f 	addi.w	$r15,$r4,6(0x6)
1c005d58:	64000e8e 	bge	$r20,$r14,12(0xc) # 1c005d64 <test_min_position1_32+0x204>
1c005d5c:	0015028e 	move	$r14,$r20
1c005d60:	001501e6 	move	$r6,$r15
1c005d64:	02801c8c 	addi.w	$r12,$r4,7(0x7)
1c005d68:	028071ad 	addi.w	$r13,$r13,28(0x1c)
1c005d6c:	5fff5b6c 	bne	$r27,$r12,-168(0x3ff58) # 1c005cc4 <test_min_position1_32+0x164>
1c005d70:	288003e7 	ld.w	$r7,$r31,0
1c005d74:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c005e10 <test_min_position1_32+0x2b0>
1c005d78:	001502e5 	move	$r5,$r23
1c005d7c:	00150324 	move	$r4,$r25
1c005d80:	5474b000 	bl	29872(0x74b0) # 1c00d230 <printf>
1c005d84:	28800310 	ld.w	$r16,$r24,0
1c005d88:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c005d8c:	63fe4790 	blt	$r28,$r16,-444(0x3fe44) # 1c005bd0 <test_min_position1_32+0x70>
1c005d90:	5479b000 	bl	31152(0x79b0) # 1c00d740 <get_clock>
1c005d94:	28800348 	ld.w	$r8,$r26,0
1c005d98:	00150091 	move	$r17,$r4
1c005d9c:	14001e86 	lu12i.w	$r6,244(0xf4)
1c005da0:	038900c7 	ori	$r7,$r6,0x240
1c005da4:	0011222a 	sub.w	$r10,$r17,$r8
1c005da8:	1c000f69 	pcaddu12i	$r9,123(0x7b)
1c005dac:	28a05129 	ld.w	$r9,$r9,-2028(0x814)
1c005db0:	00211d4b 	div.wu	$r11,$r10,$r7
1c005db4:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c005dbc <test_min_position1_32+0x25c>
1c005db8:	002a0007 	break	0x7
1c005dbc:	00150366 	move	$r6,$r27
1c005dc0:	001502e5 	move	$r5,$r23
1c005dc4:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005dc8:	028a4084 	addi.w	$r4,$r4,656(0x290)
1c005dcc:	00150167 	move	$r7,$r11
1c005dd0:	29800131 	st.w	$r17,$r9,0
1c005dd4:	54745c00 	bl	29788(0x745c) # 1c00d230 <printf>
1c005dd8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005ddc:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c005de0:	28809078 	ld.w	$r24,$r3,36(0x24)
1c005de4:	28808079 	ld.w	$r25,$r3,32(0x20)
1c005de8:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c005dec:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c005df0:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c005df4:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c005df8:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c005dfc:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c005e00:	00150004 	move	$r4,$r0
1c005e04:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005e08:	4c000020 	jirl	$r0,$r1,0
1c005e0c:	03400000 	andi	$r0,$r0,0x0
1c005e10:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c005e14:	63fdbf90 	blt	$r28,$r16,-580(0x3fdbc) # 1c005bd0 <test_min_position1_32+0x70>
1c005e18:	53ff7bff 	b	-136(0xfffff78) # 1c005d90 <test_min_position1_32+0x230>
1c005e1c:	0015018e 	move	$r14,$r12
1c005e20:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005e24:	53fe07ff 	b	-508(0xffffe04) # 1c005c28 <test_min_position1_32+0xc8>
1c005e28:	03400000 	andi	$r0,$r0,0x0
1c005e2c:	03400000 	andi	$r0,$r0,0x0

1c005e30 <test_min_position1_u32>:
test_min_position1_u32():
1c005e30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005e34:	2980a077 	st.w	$r23,$r3,40(0x28)
1c005e38:	29809078 	st.w	$r24,$r3,36(0x24)
1c005e3c:	29808079 	st.w	$r25,$r3,32(0x20)
1c005e40:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c005e44:	2980607b 	st.w	$r27,$r3,24(0x18)
1c005e48:	2980507c 	st.w	$r28,$r3,20(0x14)
1c005e4c:	2980407d 	st.w	$r29,$r3,16(0x10)
1c005e50:	2980307e 	st.w	$r30,$r3,12(0xc)
1c005e54:	2980207f 	st.w	$r31,$r3,8(0x8)
1c005e58:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005e5c:	1c000f58 	pcaddu12i	$r24,122(0x7a)
1c005e60:	029d6318 	addi.w	$r24,$r24,1880(0x758)
1c005e64:	0015009d 	move	$r29,$r4
1c005e68:	001500bb 	move	$r27,$r5
1c005e6c:	001500d7 	move	$r23,$r6
1c005e70:	5478d000 	bl	30928(0x78d0) # 1c00d740 <get_clock>
1c005e74:	28800310 	ld.w	$r16,$r24,0
1c005e78:	1c000f5a 	pcaddu12i	$r26,122(0x7a)
1c005e7c:	289d235a 	ld.w	$r26,$r26,1864(0x748)
1c005e80:	29800344 	st.w	$r4,$r26,0
1c005e84:	0015001c 	move	$r28,$r0
1c005e88:	1c000f5f 	pcaddu12i	$r31,122(0x7a)
1c005e8c:	029d03ff 	addi.w	$r31,$r31,1856(0x740)
1c005e90:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c005e94:	1c000f59 	pcaddu12i	$r25,122(0x7a)
1c005e98:	0285b339 	addi.w	$r25,$r25,364(0x16c)
1c005e9c:	6401c410 	bge	$r0,$r16,452(0x1c4) # 1c006060 <test_min_position1_u32+0x230>
1c005ea0:	00150006 	move	$r6,$r0
1c005ea4:	6c019fdb 	bgeu	$r30,$r27,412(0x19c) # 1c006040 <test_min_position1_u32+0x210>
1c005ea8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005eac:	0011336f 	sub.w	$r15,$r27,$r12
1c005eb0:	03401de1 	andi	$r1,$r15,0x7
1c005eb4:	288003ae 	ld.w	$r14,$r29,0
1c005eb8:	028013ad 	addi.w	$r13,$r29,4(0x4)
1c005ebc:	00150006 	move	$r6,$r0
1c005ec0:	5800d420 	beq	$r1,$r0,212(0xd4) # 1c005f94 <test_min_position1_u32+0x164>
1c005ec4:	5800b42c 	beq	$r1,$r12,180(0xb4) # 1c005f78 <test_min_position1_u32+0x148>
1c005ec8:	02800811 	addi.w	$r17,$r0,2(0x2)
1c005ecc:	58009431 	beq	$r1,$r17,148(0x94) # 1c005f60 <test_min_position1_u32+0x130>
1c005ed0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c005ed4:	58007424 	beq	$r1,$r4,116(0x74) # 1c005f48 <test_min_position1_u32+0x118>
1c005ed8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005edc:	58005425 	beq	$r1,$r5,84(0x54) # 1c005f30 <test_min_position1_u32+0x100>
1c005ee0:	02801407 	addi.w	$r7,$r0,5(0x5)
1c005ee4:	58003427 	beq	$r1,$r7,52(0x34) # 1c005f18 <test_min_position1_u32+0xe8>
1c005ee8:	02801808 	addi.w	$r8,$r0,6(0x6)
1c005eec:	58001428 	beq	$r1,$r8,20(0x14) # 1c005f00 <test_min_position1_u32+0xd0>
1c005ef0:	288013ac 	ld.w	$r12,$r29,4(0x4)
1c005ef4:	6801f98e 	bltu	$r12,$r14,504(0x1f8) # 1c0060ec <test_min_position1_u32+0x2bc>
1c005ef8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005efc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005f00:	288001a9 	ld.w	$r9,$r13,0
1c005f04:	6c000d2e 	bgeu	$r9,$r14,12(0xc) # 1c005f10 <test_min_position1_u32+0xe0>
1c005f08:	0015012e 	move	$r14,$r9
1c005f0c:	00150186 	move	$r6,$r12
1c005f10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f14:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005f18:	288001aa 	ld.w	$r10,$r13,0
1c005f1c:	6c000d4e 	bgeu	$r10,$r14,12(0xc) # 1c005f28 <test_min_position1_u32+0xf8>
1c005f20:	0015014e 	move	$r14,$r10
1c005f24:	00150186 	move	$r6,$r12
1c005f28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f2c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005f30:	288001ab 	ld.w	$r11,$r13,0
1c005f34:	6c000d6e 	bgeu	$r11,$r14,12(0xc) # 1c005f40 <test_min_position1_u32+0x110>
1c005f38:	0015016e 	move	$r14,$r11
1c005f3c:	00150186 	move	$r6,$r12
1c005f40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f44:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005f48:	288001b2 	ld.w	$r18,$r13,0
1c005f4c:	6c000e4e 	bgeu	$r18,$r14,12(0xc) # 1c005f58 <test_min_position1_u32+0x128>
1c005f50:	0015024e 	move	$r14,$r18
1c005f54:	00150186 	move	$r6,$r12
1c005f58:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f5c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005f60:	288001b3 	ld.w	$r19,$r13,0
1c005f64:	6c000e6e 	bgeu	$r19,$r14,12(0xc) # 1c005f70 <test_min_position1_u32+0x140>
1c005f68:	0015026e 	move	$r14,$r19
1c005f6c:	00150186 	move	$r6,$r12
1c005f70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f74:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005f78:	288001b4 	ld.w	$r20,$r13,0
1c005f7c:	6c000e8e 	bgeu	$r20,$r14,12(0xc) # 1c005f88 <test_min_position1_u32+0x158>
1c005f80:	0015028e 	move	$r14,$r20
1c005f84:	00150186 	move	$r6,$r12
1c005f88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f8c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005f90:	5800b36c 	beq	$r27,$r12,176(0xb0) # 1c006040 <test_min_position1_u32+0x210>
1c005f94:	288001af 	ld.w	$r15,$r13,0
1c005f98:	6c000dee 	bgeu	$r15,$r14,12(0xc) # 1c005fa4 <test_min_position1_u32+0x174>
1c005f9c:	001501ee 	move	$r14,$r15
1c005fa0:	00150186 	move	$r6,$r12
1c005fa4:	288011a1 	ld.w	$r1,$r13,4(0x4)
1c005fa8:	02800584 	addi.w	$r4,$r12,1(0x1)
1c005fac:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c005fb0:	6c000c2e 	bgeu	$r1,$r14,12(0xc) # 1c005fbc <test_min_position1_u32+0x18c>
1c005fb4:	0015002e 	move	$r14,$r1
1c005fb8:	00150086 	move	$r6,$r4
1c005fbc:	288011a5 	ld.w	$r5,$r13,4(0x4)
1c005fc0:	02800491 	addi.w	$r17,$r4,1(0x1)
1c005fc4:	6c000cae 	bgeu	$r5,$r14,12(0xc) # 1c005fd0 <test_min_position1_u32+0x1a0>
1c005fc8:	001500ae 	move	$r14,$r5
1c005fcc:	00150226 	move	$r6,$r17
1c005fd0:	288021a7 	ld.w	$r7,$r13,8(0x8)
1c005fd4:	02800888 	addi.w	$r8,$r4,2(0x2)
1c005fd8:	6c000cee 	bgeu	$r7,$r14,12(0xc) # 1c005fe4 <test_min_position1_u32+0x1b4>
1c005fdc:	001500ee 	move	$r14,$r7
1c005fe0:	00150106 	move	$r6,$r8
1c005fe4:	288031ac 	ld.w	$r12,$r13,12(0xc)
1c005fe8:	02800c89 	addi.w	$r9,$r4,3(0x3)
1c005fec:	6c000d8e 	bgeu	$r12,$r14,12(0xc) # 1c005ff8 <test_min_position1_u32+0x1c8>
1c005ff0:	0015018e 	move	$r14,$r12
1c005ff4:	00150126 	move	$r6,$r9
1c005ff8:	288041aa 	ld.w	$r10,$r13,16(0x10)
1c005ffc:	0280108b 	addi.w	$r11,$r4,4(0x4)
1c006000:	6c000d4e 	bgeu	$r10,$r14,12(0xc) # 1c00600c <test_min_position1_u32+0x1dc>
1c006004:	0015014e 	move	$r14,$r10
1c006008:	00150166 	move	$r6,$r11
1c00600c:	288051b2 	ld.w	$r18,$r13,20(0x14)
1c006010:	02801493 	addi.w	$r19,$r4,5(0x5)
1c006014:	6c000e4e 	bgeu	$r18,$r14,12(0xc) # 1c006020 <test_min_position1_u32+0x1f0>
1c006018:	0015024e 	move	$r14,$r18
1c00601c:	00150266 	move	$r6,$r19
1c006020:	288061b4 	ld.w	$r20,$r13,24(0x18)
1c006024:	0280188f 	addi.w	$r15,$r4,6(0x6)
1c006028:	6c000e8e 	bgeu	$r20,$r14,12(0xc) # 1c006034 <test_min_position1_u32+0x204>
1c00602c:	0015028e 	move	$r14,$r20
1c006030:	001501e6 	move	$r6,$r15
1c006034:	02801c8c 	addi.w	$r12,$r4,7(0x7)
1c006038:	028071ad 	addi.w	$r13,$r13,28(0x1c)
1c00603c:	5fff5b6c 	bne	$r27,$r12,-168(0x3ff58) # 1c005f94 <test_min_position1_u32+0x164>
1c006040:	288003e7 	ld.w	$r7,$r31,0
1c006044:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c0060e0 <test_min_position1_u32+0x2b0>
1c006048:	001502e5 	move	$r5,$r23
1c00604c:	00150324 	move	$r4,$r25
1c006050:	5471e000 	bl	29152(0x71e0) # 1c00d230 <printf>
1c006054:	28800310 	ld.w	$r16,$r24,0
1c006058:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c00605c:	63fe4790 	blt	$r28,$r16,-444(0x3fe44) # 1c005ea0 <test_min_position1_u32+0x70>
1c006060:	5476e000 	bl	30432(0x76e0) # 1c00d740 <get_clock>
1c006064:	28800348 	ld.w	$r8,$r26,0
1c006068:	00150091 	move	$r17,$r4
1c00606c:	14001e86 	lu12i.w	$r6,244(0xf4)
1c006070:	038900c7 	ori	$r7,$r6,0x240
1c006074:	0011222a 	sub.w	$r10,$r17,$r8
1c006078:	1c000f49 	pcaddu12i	$r9,122(0x7a)
1c00607c:	28951129 	ld.w	$r9,$r9,1348(0x544)
1c006080:	00211d4b 	div.wu	$r11,$r10,$r7
1c006084:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c00608c <test_min_position1_u32+0x25c>
1c006088:	002a0007 	break	0x7
1c00608c:	00150366 	move	$r6,$r27
1c006090:	001502e5 	move	$r5,$r23
1c006094:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c006098:	02bf0084 	addi.w	$r4,$r4,-64(0xfc0)
1c00609c:	00150167 	move	$r7,$r11
1c0060a0:	29800131 	st.w	$r17,$r9,0
1c0060a4:	54718c00 	bl	29068(0x718c) # 1c00d230 <printf>
1c0060a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0060ac:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c0060b0:	28809078 	ld.w	$r24,$r3,36(0x24)
1c0060b4:	28808079 	ld.w	$r25,$r3,32(0x20)
1c0060b8:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c0060bc:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c0060c0:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c0060c4:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c0060c8:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c0060cc:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c0060d0:	00150004 	move	$r4,$r0
1c0060d4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0060d8:	4c000020 	jirl	$r0,$r1,0
1c0060dc:	03400000 	andi	$r0,$r0,0x0
1c0060e0:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c0060e4:	63fdbf90 	blt	$r28,$r16,-580(0x3fdbc) # 1c005ea0 <test_min_position1_u32+0x70>
1c0060e8:	53ff7bff 	b	-136(0xfffff78) # 1c006060 <test_min_position1_u32+0x230>
1c0060ec:	0015018e 	move	$r14,$r12
1c0060f0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0060f4:	53fe07ff 	b	-508(0xffffe04) # 1c005ef8 <test_min_position1_u32+0xc8>
1c0060f8:	03400000 	andi	$r0,$r0,0x0
1c0060fc:	03400000 	andi	$r0,$r0,0x0

1c006100 <test_max_position1_8>:
test_max_position1_8():
1c006100:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006104:	2980a077 	st.w	$r23,$r3,40(0x28)
1c006108:	29809078 	st.w	$r24,$r3,36(0x24)
1c00610c:	29808079 	st.w	$r25,$r3,32(0x20)
1c006110:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c006114:	2980607b 	st.w	$r27,$r3,24(0x18)
1c006118:	2980507c 	st.w	$r28,$r3,20(0x14)
1c00611c:	2980407d 	st.w	$r29,$r3,16(0x10)
1c006120:	2980307e 	st.w	$r30,$r3,12(0xc)
1c006124:	2980207f 	st.w	$r31,$r3,8(0x8)
1c006128:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00612c:	1c000f59 	pcaddu12i	$r25,122(0x7a)
1c006130:	02922339 	addi.w	$r25,$r25,1160(0x488)
1c006134:	00150097 	move	$r23,$r4
1c006138:	001500bc 	move	$r28,$r5
1c00613c:	001500d8 	move	$r24,$r6
1c006140:	54760000 	bl	30208(0x7600) # 1c00d740 <get_clock>
1c006144:	28800330 	ld.w	$r16,$r25,0
1c006148:	1c000f5b 	pcaddu12i	$r27,122(0x7a)
1c00614c:	2891e37b 	ld.w	$r27,$r27,1144(0x478)
1c006150:	29800364 	st.w	$r4,$r27,0
1c006154:	0015001d 	move	$r29,$r0
1c006158:	1c000f5f 	pcaddu12i	$r31,122(0x7a)
1c00615c:	0291b3ff 	addi.w	$r31,$r31,1132(0x46c)
1c006160:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c006164:	1c000f5a 	pcaddu12i	$r26,122(0x7a)
1c006168:	02ba735a 	addi.w	$r26,$r26,-356(0xe9c)
1c00616c:	6401d410 	bge	$r0,$r16,468(0x1d4) # 1c006340 <test_max_position1_8+0x240>
1c006170:	00150006 	move	$r6,$r0
1c006174:	6c01afdc 	bgeu	$r30,$r28,428(0x1ac) # 1c006320 <test_max_position1_8+0x220>
1c006178:	02bfff8e 	addi.w	$r14,$r28,-1(0xfff)
1c00617c:	03401dc1 	andi	$r1,$r14,0x7
1c006180:	280002ed 	ld.b	$r13,$r23,0
1c006184:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006188:	00150006 	move	$r6,$r0
1c00618c:	5800d020 	beq	$r1,$r0,208(0xd0) # 1c00625c <test_max_position1_8+0x15c>
1c006190:	5800b02c 	beq	$r1,$r12,176(0xb0) # 1c006240 <test_max_position1_8+0x140>
1c006194:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c006198:	5800902f 	beq	$r1,$r15,144(0x90) # 1c006228 <test_max_position1_8+0x128>
1c00619c:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0061a0:	58007024 	beq	$r1,$r4,112(0x70) # 1c006210 <test_max_position1_8+0x110>
1c0061a4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0061a8:	58005025 	beq	$r1,$r5,80(0x50) # 1c0061f8 <test_max_position1_8+0xf8>
1c0061ac:	02801407 	addi.w	$r7,$r0,5(0x5)
1c0061b0:	58003027 	beq	$r1,$r7,48(0x30) # 1c0061e0 <test_max_position1_8+0xe0>
1c0061b4:	02801808 	addi.w	$r8,$r0,6(0x6)
1c0061b8:	58001028 	beq	$r1,$r8,16(0x10) # 1c0061c8 <test_max_position1_8+0xc8>
1c0061bc:	280006ec 	ld.b	$r12,$r23,1(0x1)
1c0061c0:	60020dac 	blt	$r13,$r12,524(0x20c) # 1c0063cc <test_max_position1_8+0x2cc>
1c0061c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0061c8:	001032e9 	add.w	$r9,$r23,$r12
1c0061cc:	2800012a 	ld.b	$r10,$r9,0
1c0061d0:	64000daa 	bge	$r13,$r10,12(0xc) # 1c0061dc <test_max_position1_8+0xdc>
1c0061d4:	0015014d 	move	$r13,$r10
1c0061d8:	00150186 	move	$r6,$r12
1c0061dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0061e0:	001032eb 	add.w	$r11,$r23,$r12
1c0061e4:	28000171 	ld.b	$r17,$r11,0
1c0061e8:	64000db1 	bge	$r13,$r17,12(0xc) # 1c0061f4 <test_max_position1_8+0xf4>
1c0061ec:	0015022d 	move	$r13,$r17
1c0061f0:	00150186 	move	$r6,$r12
1c0061f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0061f8:	001032f2 	add.w	$r18,$r23,$r12
1c0061fc:	28000253 	ld.b	$r19,$r18,0
1c006200:	64000db3 	bge	$r13,$r19,12(0xc) # 1c00620c <test_max_position1_8+0x10c>
1c006204:	0015026d 	move	$r13,$r19
1c006208:	00150186 	move	$r6,$r12
1c00620c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006210:	001032f4 	add.w	$r20,$r23,$r12
1c006214:	2800028e 	ld.b	$r14,$r20,0
1c006218:	64000dae 	bge	$r13,$r14,12(0xc) # 1c006224 <test_max_position1_8+0x124>
1c00621c:	001501cd 	move	$r13,$r14
1c006220:	00150186 	move	$r6,$r12
1c006224:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006228:	001032e1 	add.w	$r1,$r23,$r12
1c00622c:	2800002f 	ld.b	$r15,$r1,0
1c006230:	64000daf 	bge	$r13,$r15,12(0xc) # 1c00623c <test_max_position1_8+0x13c>
1c006234:	001501ed 	move	$r13,$r15
1c006238:	00150186 	move	$r6,$r12
1c00623c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006240:	001032e4 	add.w	$r4,$r23,$r12
1c006244:	28000085 	ld.b	$r5,$r4,0
1c006248:	64000da5 	bge	$r13,$r5,12(0xc) # 1c006254 <test_max_position1_8+0x154>
1c00624c:	001500ad 	move	$r13,$r5
1c006250:	00150186 	move	$r6,$r12
1c006254:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006258:	5800c99c 	beq	$r12,$r28,200(0xc8) # 1c006320 <test_max_position1_8+0x220>
1c00625c:	001032e7 	add.w	$r7,$r23,$r12
1c006260:	280000e8 	ld.b	$r8,$r7,0
1c006264:	64000da8 	bge	$r13,$r8,12(0xc) # 1c006270 <test_max_position1_8+0x170>
1c006268:	0015010d 	move	$r13,$r8
1c00626c:	00150186 	move	$r6,$r12
1c006270:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006274:	001032e9 	add.w	$r9,$r23,$r12
1c006278:	2800012a 	ld.b	$r10,$r9,0
1c00627c:	64000daa 	bge	$r13,$r10,12(0xc) # 1c006288 <test_max_position1_8+0x188>
1c006280:	0015014d 	move	$r13,$r10
1c006284:	00150186 	move	$r6,$r12
1c006288:	0280058b 	addi.w	$r11,$r12,1(0x1)
1c00628c:	00102ef1 	add.w	$r17,$r23,$r11
1c006290:	28000232 	ld.b	$r18,$r17,0
1c006294:	64000db2 	bge	$r13,$r18,12(0xc) # 1c0062a0 <test_max_position1_8+0x1a0>
1c006298:	0015024d 	move	$r13,$r18
1c00629c:	00150166 	move	$r6,$r11
1c0062a0:	02800993 	addi.w	$r19,$r12,2(0x2)
1c0062a4:	00104ef4 	add.w	$r20,$r23,$r19
1c0062a8:	2800028e 	ld.b	$r14,$r20,0
1c0062ac:	64000dae 	bge	$r13,$r14,12(0xc) # 1c0062b8 <test_max_position1_8+0x1b8>
1c0062b0:	001501cd 	move	$r13,$r14
1c0062b4:	00150266 	move	$r6,$r19
1c0062b8:	02800d81 	addi.w	$r1,$r12,3(0x3)
1c0062bc:	001006ef 	add.w	$r15,$r23,$r1
1c0062c0:	280001e4 	ld.b	$r4,$r15,0
1c0062c4:	64000da4 	bge	$r13,$r4,12(0xc) # 1c0062d0 <test_max_position1_8+0x1d0>
1c0062c8:	0015008d 	move	$r13,$r4
1c0062cc:	00150026 	move	$r6,$r1
1c0062d0:	02801185 	addi.w	$r5,$r12,4(0x4)
1c0062d4:	001016e7 	add.w	$r7,$r23,$r5
1c0062d8:	280000e8 	ld.b	$r8,$r7,0
1c0062dc:	64000da8 	bge	$r13,$r8,12(0xc) # 1c0062e8 <test_max_position1_8+0x1e8>
1c0062e0:	0015010d 	move	$r13,$r8
1c0062e4:	001500a6 	move	$r6,$r5
1c0062e8:	02801589 	addi.w	$r9,$r12,5(0x5)
1c0062ec:	001026ea 	add.w	$r10,$r23,$r9
1c0062f0:	2800014b 	ld.b	$r11,$r10,0
1c0062f4:	64000dab 	bge	$r13,$r11,12(0xc) # 1c006300 <test_max_position1_8+0x200>
1c0062f8:	0015016d 	move	$r13,$r11
1c0062fc:	00150126 	move	$r6,$r9
1c006300:	02801991 	addi.w	$r17,$r12,6(0x6)
1c006304:	001046f2 	add.w	$r18,$r23,$r17
1c006308:	28000253 	ld.b	$r19,$r18,0
1c00630c:	64000db3 	bge	$r13,$r19,12(0xc) # 1c006318 <test_max_position1_8+0x218>
1c006310:	0015026d 	move	$r13,$r19
1c006314:	00150226 	move	$r6,$r17
1c006318:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c00631c:	5fff419c 	bne	$r12,$r28,-192(0x3ff40) # 1c00625c <test_max_position1_8+0x15c>
1c006320:	288003e7 	ld.w	$r7,$r31,0
1c006324:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c0063c0 <test_max_position1_8+0x2c0>
1c006328:	00150305 	move	$r5,$r24
1c00632c:	00150344 	move	$r4,$r26
1c006330:	546f0000 	bl	28416(0x6f00) # 1c00d230 <printf>
1c006334:	28800330 	ld.w	$r16,$r25,0
1c006338:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c00633c:	63fe37b0 	blt	$r29,$r16,-460(0x3fe34) # 1c006170 <test_max_position1_8+0x70>
1c006340:	54740000 	bl	29696(0x7400) # 1c00d740 <get_clock>
1c006344:	2880036f 	ld.w	$r15,$r27,0
1c006348:	00150094 	move	$r20,$r4
1c00634c:	14001e86 	lu12i.w	$r6,244(0xf4)
1c006350:	038900c7 	ori	$r7,$r6,0x240
1c006354:	00113e88 	sub.w	$r8,$r20,$r15
1c006358:	1c000f4e 	pcaddu12i	$r14,122(0x7a)
1c00635c:	288991ce 	ld.w	$r14,$r14,612(0x264)
1c006360:	00211d09 	div.wu	$r9,$r8,$r7
1c006364:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c00636c <test_max_position1_8+0x26c>
1c006368:	002a0007 	break	0x7
1c00636c:	00150386 	move	$r6,$r28
1c006370:	00150305 	move	$r5,$r24
1c006374:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c006378:	02b38084 	addi.w	$r4,$r4,-800(0xce0)
1c00637c:	00150127 	move	$r7,$r9
1c006380:	298001d4 	st.w	$r20,$r14,0
1c006384:	546eac00 	bl	28332(0x6eac) # 1c00d230 <printf>
1c006388:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00638c:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c006390:	28809078 	ld.w	$r24,$r3,36(0x24)
1c006394:	28808079 	ld.w	$r25,$r3,32(0x20)
1c006398:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c00639c:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c0063a0:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c0063a4:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c0063a8:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c0063ac:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c0063b0:	00150004 	move	$r4,$r0
1c0063b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0063b8:	4c000020 	jirl	$r0,$r1,0
1c0063bc:	03400000 	andi	$r0,$r0,0x0
1c0063c0:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c0063c4:	63fdafb0 	blt	$r29,$r16,-596(0x3fdac) # 1c006170 <test_max_position1_8+0x70>
1c0063c8:	53ff7bff 	b	-136(0xfffff78) # 1c006340 <test_max_position1_8+0x240>
1c0063cc:	0015018d 	move	$r13,$r12
1c0063d0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0063d4:	53fdf3ff 	b	-528(0xffffdf0) # 1c0061c4 <test_max_position1_8+0xc4>
1c0063d8:	03400000 	andi	$r0,$r0,0x0
1c0063dc:	03400000 	andi	$r0,$r0,0x0

1c0063e0 <test_max_position1_u8>:
test_max_position1_u8():
1c0063e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0063e4:	2980a077 	st.w	$r23,$r3,40(0x28)
1c0063e8:	29809078 	st.w	$r24,$r3,36(0x24)
1c0063ec:	29808079 	st.w	$r25,$r3,32(0x20)
1c0063f0:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0063f4:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0063f8:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0063fc:	2980407d 	st.w	$r29,$r3,16(0x10)
1c006400:	2980307e 	st.w	$r30,$r3,12(0xc)
1c006404:	2980207f 	st.w	$r31,$r3,8(0x8)
1c006408:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00640c:	1c000f59 	pcaddu12i	$r25,122(0x7a)
1c006410:	0286a339 	addi.w	$r25,$r25,424(0x1a8)
1c006414:	00150097 	move	$r23,$r4
1c006418:	001500bc 	move	$r28,$r5
1c00641c:	001500d8 	move	$r24,$r6
1c006420:	54732000 	bl	29472(0x7320) # 1c00d740 <get_clock>
1c006424:	28800330 	ld.w	$r16,$r25,0
1c006428:	1c000f5b 	pcaddu12i	$r27,122(0x7a)
1c00642c:	2886637b 	ld.w	$r27,$r27,408(0x198)
1c006430:	29800364 	st.w	$r4,$r27,0
1c006434:	0015001d 	move	$r29,$r0
1c006438:	1c000f5f 	pcaddu12i	$r31,122(0x7a)
1c00643c:	028633ff 	addi.w	$r31,$r31,396(0x18c)
1c006440:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c006444:	1c000f5a 	pcaddu12i	$r26,122(0x7a)
1c006448:	02aef35a 	addi.w	$r26,$r26,-1092(0xbbc)
1c00644c:	6401d410 	bge	$r0,$r16,468(0x1d4) # 1c006620 <test_max_position1_u8+0x240>
1c006450:	00150006 	move	$r6,$r0
1c006454:	6c01afdc 	bgeu	$r30,$r28,428(0x1ac) # 1c006600 <test_max_position1_u8+0x220>
1c006458:	02bfff8e 	addi.w	$r14,$r28,-1(0xfff)
1c00645c:	03401dc1 	andi	$r1,$r14,0x7
1c006460:	2a0002ed 	ld.bu	$r13,$r23,0
1c006464:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006468:	00150006 	move	$r6,$r0
1c00646c:	5800d020 	beq	$r1,$r0,208(0xd0) # 1c00653c <test_max_position1_u8+0x15c>
1c006470:	5800b02c 	beq	$r1,$r12,176(0xb0) # 1c006520 <test_max_position1_u8+0x140>
1c006474:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c006478:	5800902f 	beq	$r1,$r15,144(0x90) # 1c006508 <test_max_position1_u8+0x128>
1c00647c:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c006480:	58007024 	beq	$r1,$r4,112(0x70) # 1c0064f0 <test_max_position1_u8+0x110>
1c006484:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006488:	58005025 	beq	$r1,$r5,80(0x50) # 1c0064d8 <test_max_position1_u8+0xf8>
1c00648c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006490:	58003027 	beq	$r1,$r7,48(0x30) # 1c0064c0 <test_max_position1_u8+0xe0>
1c006494:	02801808 	addi.w	$r8,$r0,6(0x6)
1c006498:	58001028 	beq	$r1,$r8,16(0x10) # 1c0064a8 <test_max_position1_u8+0xc8>
1c00649c:	2a0006ec 	ld.bu	$r12,$r23,1(0x1)
1c0064a0:	68020dac 	bltu	$r13,$r12,524(0x20c) # 1c0066ac <test_max_position1_u8+0x2cc>
1c0064a4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0064a8:	001032e9 	add.w	$r9,$r23,$r12
1c0064ac:	2a00012a 	ld.bu	$r10,$r9,0
1c0064b0:	6c000daa 	bgeu	$r13,$r10,12(0xc) # 1c0064bc <test_max_position1_u8+0xdc>
1c0064b4:	0015014d 	move	$r13,$r10
1c0064b8:	00150186 	move	$r6,$r12
1c0064bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0064c0:	001032eb 	add.w	$r11,$r23,$r12
1c0064c4:	2a000171 	ld.bu	$r17,$r11,0
1c0064c8:	6c000db1 	bgeu	$r13,$r17,12(0xc) # 1c0064d4 <test_max_position1_u8+0xf4>
1c0064cc:	0015022d 	move	$r13,$r17
1c0064d0:	00150186 	move	$r6,$r12
1c0064d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0064d8:	001032f2 	add.w	$r18,$r23,$r12
1c0064dc:	2a000253 	ld.bu	$r19,$r18,0
1c0064e0:	6c000db3 	bgeu	$r13,$r19,12(0xc) # 1c0064ec <test_max_position1_u8+0x10c>
1c0064e4:	0015026d 	move	$r13,$r19
1c0064e8:	00150186 	move	$r6,$r12
1c0064ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0064f0:	001032f4 	add.w	$r20,$r23,$r12
1c0064f4:	2a00028e 	ld.bu	$r14,$r20,0
1c0064f8:	6c000dae 	bgeu	$r13,$r14,12(0xc) # 1c006504 <test_max_position1_u8+0x124>
1c0064fc:	001501cd 	move	$r13,$r14
1c006500:	00150186 	move	$r6,$r12
1c006504:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006508:	001032e1 	add.w	$r1,$r23,$r12
1c00650c:	2a00002f 	ld.bu	$r15,$r1,0
1c006510:	6c000daf 	bgeu	$r13,$r15,12(0xc) # 1c00651c <test_max_position1_u8+0x13c>
1c006514:	001501ed 	move	$r13,$r15
1c006518:	00150186 	move	$r6,$r12
1c00651c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006520:	001032e4 	add.w	$r4,$r23,$r12
1c006524:	2a000085 	ld.bu	$r5,$r4,0
1c006528:	6c000da5 	bgeu	$r13,$r5,12(0xc) # 1c006534 <test_max_position1_u8+0x154>
1c00652c:	001500ad 	move	$r13,$r5
1c006530:	00150186 	move	$r6,$r12
1c006534:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006538:	5800c99c 	beq	$r12,$r28,200(0xc8) # 1c006600 <test_max_position1_u8+0x220>
1c00653c:	001032e7 	add.w	$r7,$r23,$r12
1c006540:	2a0000e8 	ld.bu	$r8,$r7,0
1c006544:	6c000da8 	bgeu	$r13,$r8,12(0xc) # 1c006550 <test_max_position1_u8+0x170>
1c006548:	0015010d 	move	$r13,$r8
1c00654c:	00150186 	move	$r6,$r12
1c006550:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006554:	001032e9 	add.w	$r9,$r23,$r12
1c006558:	2a00012a 	ld.bu	$r10,$r9,0
1c00655c:	6c000daa 	bgeu	$r13,$r10,12(0xc) # 1c006568 <test_max_position1_u8+0x188>
1c006560:	0015014d 	move	$r13,$r10
1c006564:	00150186 	move	$r6,$r12
1c006568:	0280058b 	addi.w	$r11,$r12,1(0x1)
1c00656c:	00102ef1 	add.w	$r17,$r23,$r11
1c006570:	2a000232 	ld.bu	$r18,$r17,0
1c006574:	6c000db2 	bgeu	$r13,$r18,12(0xc) # 1c006580 <test_max_position1_u8+0x1a0>
1c006578:	0015024d 	move	$r13,$r18
1c00657c:	00150166 	move	$r6,$r11
1c006580:	02800993 	addi.w	$r19,$r12,2(0x2)
1c006584:	00104ef4 	add.w	$r20,$r23,$r19
1c006588:	2a00028e 	ld.bu	$r14,$r20,0
1c00658c:	6c000dae 	bgeu	$r13,$r14,12(0xc) # 1c006598 <test_max_position1_u8+0x1b8>
1c006590:	001501cd 	move	$r13,$r14
1c006594:	00150266 	move	$r6,$r19
1c006598:	02800d81 	addi.w	$r1,$r12,3(0x3)
1c00659c:	001006ef 	add.w	$r15,$r23,$r1
1c0065a0:	2a0001e4 	ld.bu	$r4,$r15,0
1c0065a4:	6c000da4 	bgeu	$r13,$r4,12(0xc) # 1c0065b0 <test_max_position1_u8+0x1d0>
1c0065a8:	0015008d 	move	$r13,$r4
1c0065ac:	00150026 	move	$r6,$r1
1c0065b0:	02801185 	addi.w	$r5,$r12,4(0x4)
1c0065b4:	001016e7 	add.w	$r7,$r23,$r5
1c0065b8:	2a0000e8 	ld.bu	$r8,$r7,0
1c0065bc:	6c000da8 	bgeu	$r13,$r8,12(0xc) # 1c0065c8 <test_max_position1_u8+0x1e8>
1c0065c0:	0015010d 	move	$r13,$r8
1c0065c4:	001500a6 	move	$r6,$r5
1c0065c8:	02801589 	addi.w	$r9,$r12,5(0x5)
1c0065cc:	001026ea 	add.w	$r10,$r23,$r9
1c0065d0:	2a00014b 	ld.bu	$r11,$r10,0
1c0065d4:	6c000dab 	bgeu	$r13,$r11,12(0xc) # 1c0065e0 <test_max_position1_u8+0x200>
1c0065d8:	0015016d 	move	$r13,$r11
1c0065dc:	00150126 	move	$r6,$r9
1c0065e0:	02801991 	addi.w	$r17,$r12,6(0x6)
1c0065e4:	001046f2 	add.w	$r18,$r23,$r17
1c0065e8:	2a000253 	ld.bu	$r19,$r18,0
1c0065ec:	6c000db3 	bgeu	$r13,$r19,12(0xc) # 1c0065f8 <test_max_position1_u8+0x218>
1c0065f0:	0015026d 	move	$r13,$r19
1c0065f4:	00150226 	move	$r6,$r17
1c0065f8:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c0065fc:	5fff419c 	bne	$r12,$r28,-192(0x3ff40) # 1c00653c <test_max_position1_u8+0x15c>
1c006600:	288003e7 	ld.w	$r7,$r31,0
1c006604:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c0066a0 <test_max_position1_u8+0x2c0>
1c006608:	00150305 	move	$r5,$r24
1c00660c:	00150344 	move	$r4,$r26
1c006610:	546c2000 	bl	27680(0x6c20) # 1c00d230 <printf>
1c006614:	28800330 	ld.w	$r16,$r25,0
1c006618:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c00661c:	63fe37b0 	blt	$r29,$r16,-460(0x3fe34) # 1c006450 <test_max_position1_u8+0x70>
1c006620:	54712000 	bl	28960(0x7120) # 1c00d740 <get_clock>
1c006624:	2880036f 	ld.w	$r15,$r27,0
1c006628:	00150094 	move	$r20,$r4
1c00662c:	14001e86 	lu12i.w	$r6,244(0xf4)
1c006630:	038900c7 	ori	$r7,$r6,0x240
1c006634:	00113e88 	sub.w	$r8,$r20,$r15
1c006638:	1c000f4e 	pcaddu12i	$r14,122(0x7a)
1c00663c:	28be11ce 	ld.w	$r14,$r14,-124(0xf84)
1c006640:	00211d09 	div.wu	$r9,$r8,$r7
1c006644:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c00664c <test_max_position1_u8+0x26c>
1c006648:	002a0007 	break	0x7
1c00664c:	00150386 	move	$r6,$r28
1c006650:	00150305 	move	$r5,$r24
1c006654:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c006658:	02a80084 	addi.w	$r4,$r4,-1536(0xa00)
1c00665c:	00150127 	move	$r7,$r9
1c006660:	298001d4 	st.w	$r20,$r14,0
1c006664:	546bcc00 	bl	27596(0x6bcc) # 1c00d230 <printf>
1c006668:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00666c:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c006670:	28809078 	ld.w	$r24,$r3,36(0x24)
1c006674:	28808079 	ld.w	$r25,$r3,32(0x20)
1c006678:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c00667c:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c006680:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c006684:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c006688:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c00668c:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c006690:	00150004 	move	$r4,$r0
1c006694:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006698:	4c000020 	jirl	$r0,$r1,0
1c00669c:	03400000 	andi	$r0,$r0,0x0
1c0066a0:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c0066a4:	63fdafb0 	blt	$r29,$r16,-596(0x3fdac) # 1c006450 <test_max_position1_u8+0x70>
1c0066a8:	53ff7bff 	b	-136(0xfffff78) # 1c006620 <test_max_position1_u8+0x240>
1c0066ac:	0015018d 	move	$r13,$r12
1c0066b0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0066b4:	53fdf3ff 	b	-528(0xffffdf0) # 1c0064a4 <test_max_position1_u8+0xc4>
1c0066b8:	03400000 	andi	$r0,$r0,0x0
1c0066bc:	03400000 	andi	$r0,$r0,0x0

1c0066c0 <test_max_position1_16>:
test_max_position1_16():
1c0066c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0066c4:	2980a077 	st.w	$r23,$r3,40(0x28)
1c0066c8:	29809078 	st.w	$r24,$r3,36(0x24)
1c0066cc:	29808079 	st.w	$r25,$r3,32(0x20)
1c0066d0:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0066d4:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0066d8:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0066dc:	2980407d 	st.w	$r29,$r3,16(0x10)
1c0066e0:	2980307e 	st.w	$r30,$r3,12(0xc)
1c0066e4:	2980207f 	st.w	$r31,$r3,8(0x8)
1c0066e8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0066ec:	1c000f58 	pcaddu12i	$r24,122(0x7a)
1c0066f0:	02bb2318 	addi.w	$r24,$r24,-312(0xec8)
1c0066f4:	0015009d 	move	$r29,$r4
1c0066f8:	001500bb 	move	$r27,$r5
1c0066fc:	001500d7 	move	$r23,$r6
1c006700:	54704000 	bl	28736(0x7040) # 1c00d740 <get_clock>
1c006704:	28800310 	ld.w	$r16,$r24,0
1c006708:	1c000f5a 	pcaddu12i	$r26,122(0x7a)
1c00670c:	28bae35a 	ld.w	$r26,$r26,-328(0xeb8)
1c006710:	29800344 	st.w	$r4,$r26,0
1c006714:	0015001c 	move	$r28,$r0
1c006718:	1c000f5f 	pcaddu12i	$r31,122(0x7a)
1c00671c:	02bab3ff 	addi.w	$r31,$r31,-340(0xeac)
1c006720:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c006724:	1c000f59 	pcaddu12i	$r25,122(0x7a)
1c006728:	02a37339 	addi.w	$r25,$r25,-1828(0x8dc)
1c00672c:	6401c410 	bge	$r0,$r16,452(0x1c4) # 1c0068f0 <test_max_position1_16+0x230>
1c006730:	00150006 	move	$r6,$r0
1c006734:	6c019fdb 	bgeu	$r30,$r27,412(0x19c) # 1c0068d0 <test_max_position1_16+0x210>
1c006738:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00673c:	0011336f 	sub.w	$r15,$r27,$r12
1c006740:	03401de1 	andi	$r1,$r15,0x7
1c006744:	284003ae 	ld.h	$r14,$r29,0
1c006748:	02800bad 	addi.w	$r13,$r29,2(0x2)
1c00674c:	00150006 	move	$r6,$r0
1c006750:	5800d420 	beq	$r1,$r0,212(0xd4) # 1c006824 <test_max_position1_16+0x164>
1c006754:	5800b42c 	beq	$r1,$r12,180(0xb4) # 1c006808 <test_max_position1_16+0x148>
1c006758:	02800811 	addi.w	$r17,$r0,2(0x2)
1c00675c:	58009431 	beq	$r1,$r17,148(0x94) # 1c0067f0 <test_max_position1_16+0x130>
1c006760:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c006764:	58007424 	beq	$r1,$r4,116(0x74) # 1c0067d8 <test_max_position1_16+0x118>
1c006768:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00676c:	58005425 	beq	$r1,$r5,84(0x54) # 1c0067c0 <test_max_position1_16+0x100>
1c006770:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006774:	58003427 	beq	$r1,$r7,52(0x34) # 1c0067a8 <test_max_position1_16+0xe8>
1c006778:	02801808 	addi.w	$r8,$r0,6(0x6)
1c00677c:	58001428 	beq	$r1,$r8,20(0x14) # 1c006790 <test_max_position1_16+0xd0>
1c006780:	28400bac 	ld.h	$r12,$r29,2(0x2)
1c006784:	6001f9cc 	blt	$r14,$r12,504(0x1f8) # 1c00697c <test_max_position1_16+0x2bc>
1c006788:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00678c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006790:	284001a9 	ld.h	$r9,$r13,0
1c006794:	64000dc9 	bge	$r14,$r9,12(0xc) # 1c0067a0 <test_max_position1_16+0xe0>
1c006798:	0015012e 	move	$r14,$r9
1c00679c:	00150186 	move	$r6,$r12
1c0067a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067a4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0067a8:	284001aa 	ld.h	$r10,$r13,0
1c0067ac:	64000dca 	bge	$r14,$r10,12(0xc) # 1c0067b8 <test_max_position1_16+0xf8>
1c0067b0:	0015014e 	move	$r14,$r10
1c0067b4:	00150186 	move	$r6,$r12
1c0067b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067bc:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0067c0:	284001ab 	ld.h	$r11,$r13,0
1c0067c4:	64000dcb 	bge	$r14,$r11,12(0xc) # 1c0067d0 <test_max_position1_16+0x110>
1c0067c8:	0015016e 	move	$r14,$r11
1c0067cc:	00150186 	move	$r6,$r12
1c0067d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067d4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0067d8:	284001b2 	ld.h	$r18,$r13,0
1c0067dc:	64000dd2 	bge	$r14,$r18,12(0xc) # 1c0067e8 <test_max_position1_16+0x128>
1c0067e0:	0015024e 	move	$r14,$r18
1c0067e4:	00150186 	move	$r6,$r12
1c0067e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067ec:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0067f0:	284001b3 	ld.h	$r19,$r13,0
1c0067f4:	64000dd3 	bge	$r14,$r19,12(0xc) # 1c006800 <test_max_position1_16+0x140>
1c0067f8:	0015026e 	move	$r14,$r19
1c0067fc:	00150186 	move	$r6,$r12
1c006800:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006804:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006808:	284001b4 	ld.h	$r20,$r13,0
1c00680c:	64000dd4 	bge	$r14,$r20,12(0xc) # 1c006818 <test_max_position1_16+0x158>
1c006810:	0015028e 	move	$r14,$r20
1c006814:	00150186 	move	$r6,$r12
1c006818:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00681c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006820:	5800b36c 	beq	$r27,$r12,176(0xb0) # 1c0068d0 <test_max_position1_16+0x210>
1c006824:	284001af 	ld.h	$r15,$r13,0
1c006828:	64000dcf 	bge	$r14,$r15,12(0xc) # 1c006834 <test_max_position1_16+0x174>
1c00682c:	001501ee 	move	$r14,$r15
1c006830:	00150186 	move	$r6,$r12
1c006834:	284009a1 	ld.h	$r1,$r13,2(0x2)
1c006838:	02800584 	addi.w	$r4,$r12,1(0x1)
1c00683c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006840:	64000dc1 	bge	$r14,$r1,12(0xc) # 1c00684c <test_max_position1_16+0x18c>
1c006844:	0015002e 	move	$r14,$r1
1c006848:	00150086 	move	$r6,$r4
1c00684c:	284009a5 	ld.h	$r5,$r13,2(0x2)
1c006850:	02800491 	addi.w	$r17,$r4,1(0x1)
1c006854:	64000dc5 	bge	$r14,$r5,12(0xc) # 1c006860 <test_max_position1_16+0x1a0>
1c006858:	001500ae 	move	$r14,$r5
1c00685c:	00150226 	move	$r6,$r17
1c006860:	284011a7 	ld.h	$r7,$r13,4(0x4)
1c006864:	02800888 	addi.w	$r8,$r4,2(0x2)
1c006868:	64000dc7 	bge	$r14,$r7,12(0xc) # 1c006874 <test_max_position1_16+0x1b4>
1c00686c:	001500ee 	move	$r14,$r7
1c006870:	00150106 	move	$r6,$r8
1c006874:	284019ac 	ld.h	$r12,$r13,6(0x6)
1c006878:	02800c89 	addi.w	$r9,$r4,3(0x3)
1c00687c:	64000dcc 	bge	$r14,$r12,12(0xc) # 1c006888 <test_max_position1_16+0x1c8>
1c006880:	0015018e 	move	$r14,$r12
1c006884:	00150126 	move	$r6,$r9
1c006888:	284021aa 	ld.h	$r10,$r13,8(0x8)
1c00688c:	0280108b 	addi.w	$r11,$r4,4(0x4)
1c006890:	64000dca 	bge	$r14,$r10,12(0xc) # 1c00689c <test_max_position1_16+0x1dc>
1c006894:	0015014e 	move	$r14,$r10
1c006898:	00150166 	move	$r6,$r11
1c00689c:	284029b2 	ld.h	$r18,$r13,10(0xa)
1c0068a0:	02801493 	addi.w	$r19,$r4,5(0x5)
1c0068a4:	64000dd2 	bge	$r14,$r18,12(0xc) # 1c0068b0 <test_max_position1_16+0x1f0>
1c0068a8:	0015024e 	move	$r14,$r18
1c0068ac:	00150266 	move	$r6,$r19
1c0068b0:	284031b4 	ld.h	$r20,$r13,12(0xc)
1c0068b4:	0280188f 	addi.w	$r15,$r4,6(0x6)
1c0068b8:	64000dd4 	bge	$r14,$r20,12(0xc) # 1c0068c4 <test_max_position1_16+0x204>
1c0068bc:	0015028e 	move	$r14,$r20
1c0068c0:	001501e6 	move	$r6,$r15
1c0068c4:	02801c8c 	addi.w	$r12,$r4,7(0x7)
1c0068c8:	028039ad 	addi.w	$r13,$r13,14(0xe)
1c0068cc:	5fff5b6c 	bne	$r27,$r12,-168(0x3ff58) # 1c006824 <test_max_position1_16+0x164>
1c0068d0:	288003e7 	ld.w	$r7,$r31,0
1c0068d4:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c006970 <test_max_position1_16+0x2b0>
1c0068d8:	001502e5 	move	$r5,$r23
1c0068dc:	00150324 	move	$r4,$r25
1c0068e0:	54695000 	bl	26960(0x6950) # 1c00d230 <printf>
1c0068e4:	28800310 	ld.w	$r16,$r24,0
1c0068e8:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c0068ec:	63fe4790 	blt	$r28,$r16,-444(0x3fe44) # 1c006730 <test_max_position1_16+0x70>
1c0068f0:	546e5000 	bl	28240(0x6e50) # 1c00d740 <get_clock>
1c0068f4:	28800348 	ld.w	$r8,$r26,0
1c0068f8:	00150091 	move	$r17,$r4
1c0068fc:	14001e86 	lu12i.w	$r6,244(0xf4)
1c006900:	038900c7 	ori	$r7,$r6,0x240
1c006904:	0011222a 	sub.w	$r10,$r17,$r8
1c006908:	1c000f49 	pcaddu12i	$r9,122(0x7a)
1c00690c:	28b2d129 	ld.w	$r9,$r9,-844(0xcb4)
1c006910:	00211d4b 	div.wu	$r11,$r10,$r7
1c006914:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c00691c <test_max_position1_16+0x25c>
1c006918:	002a0007 	break	0x7
1c00691c:	00150366 	move	$r6,$r27
1c006920:	001502e5 	move	$r5,$r23
1c006924:	1c000f24 	pcaddu12i	$r4,121(0x79)
1c006928:	029cc084 	addi.w	$r4,$r4,1840(0x730)
1c00692c:	00150167 	move	$r7,$r11
1c006930:	29800131 	st.w	$r17,$r9,0
1c006934:	5468fc00 	bl	26876(0x68fc) # 1c00d230 <printf>
1c006938:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00693c:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c006940:	28809078 	ld.w	$r24,$r3,36(0x24)
1c006944:	28808079 	ld.w	$r25,$r3,32(0x20)
1c006948:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c00694c:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c006950:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c006954:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c006958:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c00695c:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c006960:	00150004 	move	$r4,$r0
1c006964:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006968:	4c000020 	jirl	$r0,$r1,0
1c00696c:	03400000 	andi	$r0,$r0,0x0
1c006970:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c006974:	63fdbf90 	blt	$r28,$r16,-580(0x3fdbc) # 1c006730 <test_max_position1_16+0x70>
1c006978:	53ff7bff 	b	-136(0xfffff78) # 1c0068f0 <test_max_position1_16+0x230>
1c00697c:	0015018e 	move	$r14,$r12
1c006980:	02800406 	addi.w	$r6,$r0,1(0x1)
1c006984:	53fe07ff 	b	-508(0xffffe04) # 1c006788 <test_max_position1_16+0xc8>
1c006988:	03400000 	andi	$r0,$r0,0x0
1c00698c:	03400000 	andi	$r0,$r0,0x0

1c006990 <test_max_position1_u16>:
test_max_position1_u16():
1c006990:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006994:	2980a077 	st.w	$r23,$r3,40(0x28)
1c006998:	29809078 	st.w	$r24,$r3,36(0x24)
1c00699c:	29808079 	st.w	$r25,$r3,32(0x20)
1c0069a0:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0069a4:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0069a8:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0069ac:	2980407d 	st.w	$r29,$r3,16(0x10)
1c0069b0:	2980307e 	st.w	$r30,$r3,12(0xc)
1c0069b4:	2980207f 	st.w	$r31,$r3,8(0x8)
1c0069b8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0069bc:	1c000f58 	pcaddu12i	$r24,122(0x7a)
1c0069c0:	02afe318 	addi.w	$r24,$r24,-1032(0xbf8)
1c0069c4:	0015009d 	move	$r29,$r4
1c0069c8:	001500bb 	move	$r27,$r5
1c0069cc:	001500d7 	move	$r23,$r6
1c0069d0:	546d7000 	bl	28016(0x6d70) # 1c00d740 <get_clock>
1c0069d4:	28800310 	ld.w	$r16,$r24,0
1c0069d8:	1c000f5a 	pcaddu12i	$r26,122(0x7a)
1c0069dc:	28afa35a 	ld.w	$r26,$r26,-1048(0xbe8)
1c0069e0:	29800344 	st.w	$r4,$r26,0
1c0069e4:	0015001c 	move	$r28,$r0
1c0069e8:	1c000f5f 	pcaddu12i	$r31,122(0x7a)
1c0069ec:	02af73ff 	addi.w	$r31,$r31,-1060(0xbdc)
1c0069f0:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c0069f4:	1c000f39 	pcaddu12i	$r25,121(0x79)
1c0069f8:	02983339 	addi.w	$r25,$r25,1548(0x60c)
1c0069fc:	6401c410 	bge	$r0,$r16,452(0x1c4) # 1c006bc0 <test_max_position1_u16+0x230>
1c006a00:	00150006 	move	$r6,$r0
1c006a04:	6c019fdb 	bgeu	$r30,$r27,412(0x19c) # 1c006ba0 <test_max_position1_u16+0x210>
1c006a08:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006a0c:	0011336f 	sub.w	$r15,$r27,$r12
1c006a10:	03401de1 	andi	$r1,$r15,0x7
1c006a14:	2a4003ae 	ld.hu	$r14,$r29,0
1c006a18:	02800bad 	addi.w	$r13,$r29,2(0x2)
1c006a1c:	00150006 	move	$r6,$r0
1c006a20:	5800d420 	beq	$r1,$r0,212(0xd4) # 1c006af4 <test_max_position1_u16+0x164>
1c006a24:	5800b42c 	beq	$r1,$r12,180(0xb4) # 1c006ad8 <test_max_position1_u16+0x148>
1c006a28:	02800811 	addi.w	$r17,$r0,2(0x2)
1c006a2c:	58009431 	beq	$r1,$r17,148(0x94) # 1c006ac0 <test_max_position1_u16+0x130>
1c006a30:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c006a34:	58007424 	beq	$r1,$r4,116(0x74) # 1c006aa8 <test_max_position1_u16+0x118>
1c006a38:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006a3c:	58005425 	beq	$r1,$r5,84(0x54) # 1c006a90 <test_max_position1_u16+0x100>
1c006a40:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006a44:	58003427 	beq	$r1,$r7,52(0x34) # 1c006a78 <test_max_position1_u16+0xe8>
1c006a48:	02801808 	addi.w	$r8,$r0,6(0x6)
1c006a4c:	58001428 	beq	$r1,$r8,20(0x14) # 1c006a60 <test_max_position1_u16+0xd0>
1c006a50:	2a400bac 	ld.hu	$r12,$r29,2(0x2)
1c006a54:	6801f9cc 	bltu	$r14,$r12,504(0x1f8) # 1c006c4c <test_max_position1_u16+0x2bc>
1c006a58:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006a5c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006a60:	2a4001a9 	ld.hu	$r9,$r13,0
1c006a64:	6c000dc9 	bgeu	$r14,$r9,12(0xc) # 1c006a70 <test_max_position1_u16+0xe0>
1c006a68:	0015012e 	move	$r14,$r9
1c006a6c:	00150186 	move	$r6,$r12
1c006a70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a74:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006a78:	2a4001aa 	ld.hu	$r10,$r13,0
1c006a7c:	6c000dca 	bgeu	$r14,$r10,12(0xc) # 1c006a88 <test_max_position1_u16+0xf8>
1c006a80:	0015014e 	move	$r14,$r10
1c006a84:	00150186 	move	$r6,$r12
1c006a88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a8c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006a90:	2a4001ab 	ld.hu	$r11,$r13,0
1c006a94:	6c000dcb 	bgeu	$r14,$r11,12(0xc) # 1c006aa0 <test_max_position1_u16+0x110>
1c006a98:	0015016e 	move	$r14,$r11
1c006a9c:	00150186 	move	$r6,$r12
1c006aa0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006aa4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006aa8:	2a4001b2 	ld.hu	$r18,$r13,0
1c006aac:	6c000dd2 	bgeu	$r14,$r18,12(0xc) # 1c006ab8 <test_max_position1_u16+0x128>
1c006ab0:	0015024e 	move	$r14,$r18
1c006ab4:	00150186 	move	$r6,$r12
1c006ab8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006abc:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006ac0:	2a4001b3 	ld.hu	$r19,$r13,0
1c006ac4:	6c000dd3 	bgeu	$r14,$r19,12(0xc) # 1c006ad0 <test_max_position1_u16+0x140>
1c006ac8:	0015026e 	move	$r14,$r19
1c006acc:	00150186 	move	$r6,$r12
1c006ad0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006ad4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006ad8:	2a4001b4 	ld.hu	$r20,$r13,0
1c006adc:	6c000dd4 	bgeu	$r14,$r20,12(0xc) # 1c006ae8 <test_max_position1_u16+0x158>
1c006ae0:	0015028e 	move	$r14,$r20
1c006ae4:	00150186 	move	$r6,$r12
1c006ae8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006aec:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006af0:	5800b36c 	beq	$r27,$r12,176(0xb0) # 1c006ba0 <test_max_position1_u16+0x210>
1c006af4:	2a4001af 	ld.hu	$r15,$r13,0
1c006af8:	6c000dcf 	bgeu	$r14,$r15,12(0xc) # 1c006b04 <test_max_position1_u16+0x174>
1c006afc:	001501ee 	move	$r14,$r15
1c006b00:	00150186 	move	$r6,$r12
1c006b04:	2a4009a1 	ld.hu	$r1,$r13,2(0x2)
1c006b08:	02800584 	addi.w	$r4,$r12,1(0x1)
1c006b0c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c006b10:	6c000dc1 	bgeu	$r14,$r1,12(0xc) # 1c006b1c <test_max_position1_u16+0x18c>
1c006b14:	0015002e 	move	$r14,$r1
1c006b18:	00150086 	move	$r6,$r4
1c006b1c:	2a4009a5 	ld.hu	$r5,$r13,2(0x2)
1c006b20:	02800491 	addi.w	$r17,$r4,1(0x1)
1c006b24:	6c000dc5 	bgeu	$r14,$r5,12(0xc) # 1c006b30 <test_max_position1_u16+0x1a0>
1c006b28:	001500ae 	move	$r14,$r5
1c006b2c:	00150226 	move	$r6,$r17
1c006b30:	2a4011a7 	ld.hu	$r7,$r13,4(0x4)
1c006b34:	02800888 	addi.w	$r8,$r4,2(0x2)
1c006b38:	6c000dc7 	bgeu	$r14,$r7,12(0xc) # 1c006b44 <test_max_position1_u16+0x1b4>
1c006b3c:	001500ee 	move	$r14,$r7
1c006b40:	00150106 	move	$r6,$r8
1c006b44:	2a4019ac 	ld.hu	$r12,$r13,6(0x6)
1c006b48:	02800c89 	addi.w	$r9,$r4,3(0x3)
1c006b4c:	6c000dcc 	bgeu	$r14,$r12,12(0xc) # 1c006b58 <test_max_position1_u16+0x1c8>
1c006b50:	0015018e 	move	$r14,$r12
1c006b54:	00150126 	move	$r6,$r9
1c006b58:	2a4021aa 	ld.hu	$r10,$r13,8(0x8)
1c006b5c:	0280108b 	addi.w	$r11,$r4,4(0x4)
1c006b60:	6c000dca 	bgeu	$r14,$r10,12(0xc) # 1c006b6c <test_max_position1_u16+0x1dc>
1c006b64:	0015014e 	move	$r14,$r10
1c006b68:	00150166 	move	$r6,$r11
1c006b6c:	2a4029b2 	ld.hu	$r18,$r13,10(0xa)
1c006b70:	02801493 	addi.w	$r19,$r4,5(0x5)
1c006b74:	6c000dd2 	bgeu	$r14,$r18,12(0xc) # 1c006b80 <test_max_position1_u16+0x1f0>
1c006b78:	0015024e 	move	$r14,$r18
1c006b7c:	00150266 	move	$r6,$r19
1c006b80:	2a4031b4 	ld.hu	$r20,$r13,12(0xc)
1c006b84:	0280188f 	addi.w	$r15,$r4,6(0x6)
1c006b88:	6c000dd4 	bgeu	$r14,$r20,12(0xc) # 1c006b94 <test_max_position1_u16+0x204>
1c006b8c:	0015028e 	move	$r14,$r20
1c006b90:	001501e6 	move	$r6,$r15
1c006b94:	02801c8c 	addi.w	$r12,$r4,7(0x7)
1c006b98:	028039ad 	addi.w	$r13,$r13,14(0xe)
1c006b9c:	5fff5b6c 	bne	$r27,$r12,-168(0x3ff58) # 1c006af4 <test_max_position1_u16+0x164>
1c006ba0:	288003e7 	ld.w	$r7,$r31,0
1c006ba4:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c006c40 <test_max_position1_u16+0x2b0>
1c006ba8:	001502e5 	move	$r5,$r23
1c006bac:	00150324 	move	$r4,$r25
1c006bb0:	54668000 	bl	26240(0x6680) # 1c00d230 <printf>
1c006bb4:	28800310 	ld.w	$r16,$r24,0
1c006bb8:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c006bbc:	63fe4790 	blt	$r28,$r16,-444(0x3fe44) # 1c006a00 <test_max_position1_u16+0x70>
1c006bc0:	546b8000 	bl	27520(0x6b80) # 1c00d740 <get_clock>
1c006bc4:	28800348 	ld.w	$r8,$r26,0
1c006bc8:	00150091 	move	$r17,$r4
1c006bcc:	14001e86 	lu12i.w	$r6,244(0xf4)
1c006bd0:	038900c7 	ori	$r7,$r6,0x240
1c006bd4:	0011222a 	sub.w	$r10,$r17,$r8
1c006bd8:	1c000f49 	pcaddu12i	$r9,122(0x7a)
1c006bdc:	28a79129 	ld.w	$r9,$r9,-1564(0x9e4)
1c006be0:	00211d4b 	div.wu	$r11,$r10,$r7
1c006be4:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c006bec <test_max_position1_u16+0x25c>
1c006be8:	002a0007 	break	0x7
1c006bec:	00150366 	move	$r6,$r27
1c006bf0:	001502e5 	move	$r5,$r23
1c006bf4:	1c000f24 	pcaddu12i	$r4,121(0x79)
1c006bf8:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c006bfc:	00150167 	move	$r7,$r11
1c006c00:	29800131 	st.w	$r17,$r9,0
1c006c04:	54662c00 	bl	26156(0x662c) # 1c00d230 <printf>
1c006c08:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006c0c:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c006c10:	28809078 	ld.w	$r24,$r3,36(0x24)
1c006c14:	28808079 	ld.w	$r25,$r3,32(0x20)
1c006c18:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c006c1c:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c006c20:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c006c24:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c006c28:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c006c2c:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c006c30:	00150004 	move	$r4,$r0
1c006c34:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006c38:	4c000020 	jirl	$r0,$r1,0
1c006c3c:	03400000 	andi	$r0,$r0,0x0
1c006c40:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c006c44:	63fdbf90 	blt	$r28,$r16,-580(0x3fdbc) # 1c006a00 <test_max_position1_u16+0x70>
1c006c48:	53ff7bff 	b	-136(0xfffff78) # 1c006bc0 <test_max_position1_u16+0x230>
1c006c4c:	0015018e 	move	$r14,$r12
1c006c50:	02800406 	addi.w	$r6,$r0,1(0x1)
1c006c54:	53fe07ff 	b	-508(0xffffe04) # 1c006a58 <test_max_position1_u16+0xc8>
1c006c58:	03400000 	andi	$r0,$r0,0x0
1c006c5c:	03400000 	andi	$r0,$r0,0x0

1c006c60 <test_max_position1_32>:
test_max_position1_32():
1c006c60:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006c64:	2980a077 	st.w	$r23,$r3,40(0x28)
1c006c68:	29809078 	st.w	$r24,$r3,36(0x24)
1c006c6c:	29808079 	st.w	$r25,$r3,32(0x20)
1c006c70:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c006c74:	2980607b 	st.w	$r27,$r3,24(0x18)
1c006c78:	2980507c 	st.w	$r28,$r3,20(0x14)
1c006c7c:	2980407d 	st.w	$r29,$r3,16(0x10)
1c006c80:	2980307e 	st.w	$r30,$r3,12(0xc)
1c006c84:	2980207f 	st.w	$r31,$r3,8(0x8)
1c006c88:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006c8c:	1c000f58 	pcaddu12i	$r24,122(0x7a)
1c006c90:	02a4a318 	addi.w	$r24,$r24,-1752(0x928)
1c006c94:	0015009d 	move	$r29,$r4
1c006c98:	001500bb 	move	$r27,$r5
1c006c9c:	001500d7 	move	$r23,$r6
1c006ca0:	546aa000 	bl	27296(0x6aa0) # 1c00d740 <get_clock>
1c006ca4:	28800310 	ld.w	$r16,$r24,0
1c006ca8:	1c000f5a 	pcaddu12i	$r26,122(0x7a)
1c006cac:	28a4635a 	ld.w	$r26,$r26,-1768(0x918)
1c006cb0:	29800344 	st.w	$r4,$r26,0
1c006cb4:	0015001c 	move	$r28,$r0
1c006cb8:	1c000f5f 	pcaddu12i	$r31,122(0x7a)
1c006cbc:	02a433ff 	addi.w	$r31,$r31,-1780(0x90c)
1c006cc0:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c006cc4:	1c000f39 	pcaddu12i	$r25,121(0x79)
1c006cc8:	028cf339 	addi.w	$r25,$r25,828(0x33c)
1c006ccc:	6401c410 	bge	$r0,$r16,452(0x1c4) # 1c006e90 <test_max_position1_32+0x230>
1c006cd0:	00150006 	move	$r6,$r0
1c006cd4:	6c019fdb 	bgeu	$r30,$r27,412(0x19c) # 1c006e70 <test_max_position1_32+0x210>
1c006cd8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006cdc:	0011336f 	sub.w	$r15,$r27,$r12
1c006ce0:	03401de1 	andi	$r1,$r15,0x7
1c006ce4:	288003ae 	ld.w	$r14,$r29,0
1c006ce8:	028013ad 	addi.w	$r13,$r29,4(0x4)
1c006cec:	00150006 	move	$r6,$r0
1c006cf0:	5800d420 	beq	$r1,$r0,212(0xd4) # 1c006dc4 <test_max_position1_32+0x164>
1c006cf4:	5800b42c 	beq	$r1,$r12,180(0xb4) # 1c006da8 <test_max_position1_32+0x148>
1c006cf8:	02800811 	addi.w	$r17,$r0,2(0x2)
1c006cfc:	58009431 	beq	$r1,$r17,148(0x94) # 1c006d90 <test_max_position1_32+0x130>
1c006d00:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c006d04:	58007424 	beq	$r1,$r4,116(0x74) # 1c006d78 <test_max_position1_32+0x118>
1c006d08:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d0c:	58005425 	beq	$r1,$r5,84(0x54) # 1c006d60 <test_max_position1_32+0x100>
1c006d10:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006d14:	58003427 	beq	$r1,$r7,52(0x34) # 1c006d48 <test_max_position1_32+0xe8>
1c006d18:	02801808 	addi.w	$r8,$r0,6(0x6)
1c006d1c:	58001428 	beq	$r1,$r8,20(0x14) # 1c006d30 <test_max_position1_32+0xd0>
1c006d20:	288013ac 	ld.w	$r12,$r29,4(0x4)
1c006d24:	6001f9cc 	blt	$r14,$r12,504(0x1f8) # 1c006f1c <test_max_position1_32+0x2bc>
1c006d28:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006d2c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c006d30:	288001a9 	ld.w	$r9,$r13,0
1c006d34:	64000dc9 	bge	$r14,$r9,12(0xc) # 1c006d40 <test_max_position1_32+0xe0>
1c006d38:	0015012e 	move	$r14,$r9
1c006d3c:	00150186 	move	$r6,$r12
1c006d40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006d44:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c006d48:	288001aa 	ld.w	$r10,$r13,0
1c006d4c:	64000dca 	bge	$r14,$r10,12(0xc) # 1c006d58 <test_max_position1_32+0xf8>
1c006d50:	0015014e 	move	$r14,$r10
1c006d54:	00150186 	move	$r6,$r12
1c006d58:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006d5c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c006d60:	288001ab 	ld.w	$r11,$r13,0
1c006d64:	64000dcb 	bge	$r14,$r11,12(0xc) # 1c006d70 <test_max_position1_32+0x110>
1c006d68:	0015016e 	move	$r14,$r11
1c006d6c:	00150186 	move	$r6,$r12
1c006d70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006d74:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c006d78:	288001b2 	ld.w	$r18,$r13,0
1c006d7c:	64000dd2 	bge	$r14,$r18,12(0xc) # 1c006d88 <test_max_position1_32+0x128>
1c006d80:	0015024e 	move	$r14,$r18
1c006d84:	00150186 	move	$r6,$r12
1c006d88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006d8c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c006d90:	288001b3 	ld.w	$r19,$r13,0
1c006d94:	64000dd3 	bge	$r14,$r19,12(0xc) # 1c006da0 <test_max_position1_32+0x140>
1c006d98:	0015026e 	move	$r14,$r19
1c006d9c:	00150186 	move	$r6,$r12
1c006da0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006da4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c006da8:	288001b4 	ld.w	$r20,$r13,0
1c006dac:	64000dd4 	bge	$r14,$r20,12(0xc) # 1c006db8 <test_max_position1_32+0x158>
1c006db0:	0015028e 	move	$r14,$r20
1c006db4:	00150186 	move	$r6,$r12
1c006db8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006dbc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c006dc0:	5800b36c 	beq	$r27,$r12,176(0xb0) # 1c006e70 <test_max_position1_32+0x210>
1c006dc4:	288001af 	ld.w	$r15,$r13,0
1c006dc8:	64000dcf 	bge	$r14,$r15,12(0xc) # 1c006dd4 <test_max_position1_32+0x174>
1c006dcc:	001501ee 	move	$r14,$r15
1c006dd0:	00150186 	move	$r6,$r12
1c006dd4:	288011a1 	ld.w	$r1,$r13,4(0x4)
1c006dd8:	02800584 	addi.w	$r4,$r12,1(0x1)
1c006ddc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c006de0:	64000dc1 	bge	$r14,$r1,12(0xc) # 1c006dec <test_max_position1_32+0x18c>
1c006de4:	0015002e 	move	$r14,$r1
1c006de8:	00150086 	move	$r6,$r4
1c006dec:	288011a5 	ld.w	$r5,$r13,4(0x4)
1c006df0:	02800491 	addi.w	$r17,$r4,1(0x1)
1c006df4:	64000dc5 	bge	$r14,$r5,12(0xc) # 1c006e00 <test_max_position1_32+0x1a0>
1c006df8:	001500ae 	move	$r14,$r5
1c006dfc:	00150226 	move	$r6,$r17
1c006e00:	288021a7 	ld.w	$r7,$r13,8(0x8)
1c006e04:	02800888 	addi.w	$r8,$r4,2(0x2)
1c006e08:	64000dc7 	bge	$r14,$r7,12(0xc) # 1c006e14 <test_max_position1_32+0x1b4>
1c006e0c:	001500ee 	move	$r14,$r7
1c006e10:	00150106 	move	$r6,$r8
1c006e14:	288031ac 	ld.w	$r12,$r13,12(0xc)
1c006e18:	02800c89 	addi.w	$r9,$r4,3(0x3)
1c006e1c:	64000dcc 	bge	$r14,$r12,12(0xc) # 1c006e28 <test_max_position1_32+0x1c8>
1c006e20:	0015018e 	move	$r14,$r12
1c006e24:	00150126 	move	$r6,$r9
1c006e28:	288041aa 	ld.w	$r10,$r13,16(0x10)
1c006e2c:	0280108b 	addi.w	$r11,$r4,4(0x4)
1c006e30:	64000dca 	bge	$r14,$r10,12(0xc) # 1c006e3c <test_max_position1_32+0x1dc>
1c006e34:	0015014e 	move	$r14,$r10
1c006e38:	00150166 	move	$r6,$r11
1c006e3c:	288051b2 	ld.w	$r18,$r13,20(0x14)
1c006e40:	02801493 	addi.w	$r19,$r4,5(0x5)
1c006e44:	64000dd2 	bge	$r14,$r18,12(0xc) # 1c006e50 <test_max_position1_32+0x1f0>
1c006e48:	0015024e 	move	$r14,$r18
1c006e4c:	00150266 	move	$r6,$r19
1c006e50:	288061b4 	ld.w	$r20,$r13,24(0x18)
1c006e54:	0280188f 	addi.w	$r15,$r4,6(0x6)
1c006e58:	64000dd4 	bge	$r14,$r20,12(0xc) # 1c006e64 <test_max_position1_32+0x204>
1c006e5c:	0015028e 	move	$r14,$r20
1c006e60:	001501e6 	move	$r6,$r15
1c006e64:	02801c8c 	addi.w	$r12,$r4,7(0x7)
1c006e68:	028071ad 	addi.w	$r13,$r13,28(0x1c)
1c006e6c:	5fff5b6c 	bne	$r27,$r12,-168(0x3ff58) # 1c006dc4 <test_max_position1_32+0x164>
1c006e70:	288003e7 	ld.w	$r7,$r31,0
1c006e74:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c006f10 <test_max_position1_32+0x2b0>
1c006e78:	001502e5 	move	$r5,$r23
1c006e7c:	00150324 	move	$r4,$r25
1c006e80:	5463b000 	bl	25520(0x63b0) # 1c00d230 <printf>
1c006e84:	28800310 	ld.w	$r16,$r24,0
1c006e88:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c006e8c:	63fe4790 	blt	$r28,$r16,-444(0x3fe44) # 1c006cd0 <test_max_position1_32+0x70>
1c006e90:	5468b000 	bl	26800(0x68b0) # 1c00d740 <get_clock>
1c006e94:	28800348 	ld.w	$r8,$r26,0
1c006e98:	00150091 	move	$r17,$r4
1c006e9c:	14001e86 	lu12i.w	$r6,244(0xf4)
1c006ea0:	038900c7 	ori	$r7,$r6,0x240
1c006ea4:	0011222a 	sub.w	$r10,$r17,$r8
1c006ea8:	1c000f29 	pcaddu12i	$r9,121(0x79)
1c006eac:	289c5129 	ld.w	$r9,$r9,1812(0x714)
1c006eb0:	00211d4b 	div.wu	$r11,$r10,$r7
1c006eb4:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c006ebc <test_max_position1_32+0x25c>
1c006eb8:	002a0007 	break	0x7
1c006ebc:	00150366 	move	$r6,$r27
1c006ec0:	001502e5 	move	$r5,$r23
1c006ec4:	1c000f24 	pcaddu12i	$r4,121(0x79)
1c006ec8:	02864084 	addi.w	$r4,$r4,400(0x190)
1c006ecc:	00150167 	move	$r7,$r11
1c006ed0:	29800131 	st.w	$r17,$r9,0
1c006ed4:	54635c00 	bl	25436(0x635c) # 1c00d230 <printf>
1c006ed8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006edc:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c006ee0:	28809078 	ld.w	$r24,$r3,36(0x24)
1c006ee4:	28808079 	ld.w	$r25,$r3,32(0x20)
1c006ee8:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c006eec:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c006ef0:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c006ef4:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c006ef8:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c006efc:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c006f00:	00150004 	move	$r4,$r0
1c006f04:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006f08:	4c000020 	jirl	$r0,$r1,0
1c006f0c:	03400000 	andi	$r0,$r0,0x0
1c006f10:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c006f14:	63fdbf90 	blt	$r28,$r16,-580(0x3fdbc) # 1c006cd0 <test_max_position1_32+0x70>
1c006f18:	53ff7bff 	b	-136(0xfffff78) # 1c006e90 <test_max_position1_32+0x230>
1c006f1c:	0015018e 	move	$r14,$r12
1c006f20:	02800406 	addi.w	$r6,$r0,1(0x1)
1c006f24:	53fe07ff 	b	-508(0xffffe04) # 1c006d28 <test_max_position1_32+0xc8>
1c006f28:	03400000 	andi	$r0,$r0,0x0
1c006f2c:	03400000 	andi	$r0,$r0,0x0

1c006f30 <test_max_position1_u32>:
test_max_position1_u32():
1c006f30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006f34:	2980a077 	st.w	$r23,$r3,40(0x28)
1c006f38:	29809078 	st.w	$r24,$r3,36(0x24)
1c006f3c:	29808079 	st.w	$r25,$r3,32(0x20)
1c006f40:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c006f44:	2980607b 	st.w	$r27,$r3,24(0x18)
1c006f48:	2980507c 	st.w	$r28,$r3,20(0x14)
1c006f4c:	2980407d 	st.w	$r29,$r3,16(0x10)
1c006f50:	2980307e 	st.w	$r30,$r3,12(0xc)
1c006f54:	2980207f 	st.w	$r31,$r3,8(0x8)
1c006f58:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006f5c:	1c000f38 	pcaddu12i	$r24,121(0x79)
1c006f60:	02996318 	addi.w	$r24,$r24,1624(0x658)
1c006f64:	0015009d 	move	$r29,$r4
1c006f68:	001500bb 	move	$r27,$r5
1c006f6c:	001500d7 	move	$r23,$r6
1c006f70:	5467d000 	bl	26576(0x67d0) # 1c00d740 <get_clock>
1c006f74:	28800310 	ld.w	$r16,$r24,0
1c006f78:	1c000f3a 	pcaddu12i	$r26,121(0x79)
1c006f7c:	2899235a 	ld.w	$r26,$r26,1608(0x648)
1c006f80:	29800344 	st.w	$r4,$r26,0
1c006f84:	0015001c 	move	$r28,$r0
1c006f88:	1c000f3f 	pcaddu12i	$r31,121(0x79)
1c006f8c:	0298f3ff 	addi.w	$r31,$r31,1596(0x63c)
1c006f90:	0280041e 	addi.w	$r30,$r0,1(0x1)
1c006f94:	1c000f39 	pcaddu12i	$r25,121(0x79)
1c006f98:	0281b339 	addi.w	$r25,$r25,108(0x6c)
1c006f9c:	6401c410 	bge	$r0,$r16,452(0x1c4) # 1c007160 <test_max_position1_u32+0x230>
1c006fa0:	00150006 	move	$r6,$r0
1c006fa4:	6c019fdb 	bgeu	$r30,$r27,412(0x19c) # 1c007140 <test_max_position1_u32+0x210>
1c006fa8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006fac:	0011336f 	sub.w	$r15,$r27,$r12
1c006fb0:	03401de1 	andi	$r1,$r15,0x7
1c006fb4:	288003ae 	ld.w	$r14,$r29,0
1c006fb8:	028013ad 	addi.w	$r13,$r29,4(0x4)
1c006fbc:	00150006 	move	$r6,$r0
1c006fc0:	5800d420 	beq	$r1,$r0,212(0xd4) # 1c007094 <test_max_position1_u32+0x164>
1c006fc4:	5800b42c 	beq	$r1,$r12,180(0xb4) # 1c007078 <test_max_position1_u32+0x148>
1c006fc8:	02800811 	addi.w	$r17,$r0,2(0x2)
1c006fcc:	58009431 	beq	$r1,$r17,148(0x94) # 1c007060 <test_max_position1_u32+0x130>
1c006fd0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c006fd4:	58007424 	beq	$r1,$r4,116(0x74) # 1c007048 <test_max_position1_u32+0x118>
1c006fd8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006fdc:	58005425 	beq	$r1,$r5,84(0x54) # 1c007030 <test_max_position1_u32+0x100>
1c006fe0:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006fe4:	58003427 	beq	$r1,$r7,52(0x34) # 1c007018 <test_max_position1_u32+0xe8>
1c006fe8:	02801808 	addi.w	$r8,$r0,6(0x6)
1c006fec:	58001428 	beq	$r1,$r8,20(0x14) # 1c007000 <test_max_position1_u32+0xd0>
1c006ff0:	288013ac 	ld.w	$r12,$r29,4(0x4)
1c006ff4:	6801f9cc 	bltu	$r14,$r12,504(0x1f8) # 1c0071ec <test_max_position1_u32+0x2bc>
1c006ff8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006ffc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c007000:	288001a9 	ld.w	$r9,$r13,0
1c007004:	6c000dc9 	bgeu	$r14,$r9,12(0xc) # 1c007010 <test_max_position1_u32+0xe0>
1c007008:	0015012e 	move	$r14,$r9
1c00700c:	00150186 	move	$r6,$r12
1c007010:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007014:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c007018:	288001aa 	ld.w	$r10,$r13,0
1c00701c:	6c000dca 	bgeu	$r14,$r10,12(0xc) # 1c007028 <test_max_position1_u32+0xf8>
1c007020:	0015014e 	move	$r14,$r10
1c007024:	00150186 	move	$r6,$r12
1c007028:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00702c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c007030:	288001ab 	ld.w	$r11,$r13,0
1c007034:	6c000dcb 	bgeu	$r14,$r11,12(0xc) # 1c007040 <test_max_position1_u32+0x110>
1c007038:	0015016e 	move	$r14,$r11
1c00703c:	00150186 	move	$r6,$r12
1c007040:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007044:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c007048:	288001b2 	ld.w	$r18,$r13,0
1c00704c:	6c000dd2 	bgeu	$r14,$r18,12(0xc) # 1c007058 <test_max_position1_u32+0x128>
1c007050:	0015024e 	move	$r14,$r18
1c007054:	00150186 	move	$r6,$r12
1c007058:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00705c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c007060:	288001b3 	ld.w	$r19,$r13,0
1c007064:	6c000dd3 	bgeu	$r14,$r19,12(0xc) # 1c007070 <test_max_position1_u32+0x140>
1c007068:	0015026e 	move	$r14,$r19
1c00706c:	00150186 	move	$r6,$r12
1c007070:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007074:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c007078:	288001b4 	ld.w	$r20,$r13,0
1c00707c:	6c000dd4 	bgeu	$r14,$r20,12(0xc) # 1c007088 <test_max_position1_u32+0x158>
1c007080:	0015028e 	move	$r14,$r20
1c007084:	00150186 	move	$r6,$r12
1c007088:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00708c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c007090:	5800b36c 	beq	$r27,$r12,176(0xb0) # 1c007140 <test_max_position1_u32+0x210>
1c007094:	288001af 	ld.w	$r15,$r13,0
1c007098:	6c000dcf 	bgeu	$r14,$r15,12(0xc) # 1c0070a4 <test_max_position1_u32+0x174>
1c00709c:	001501ee 	move	$r14,$r15
1c0070a0:	00150186 	move	$r6,$r12
1c0070a4:	288011a1 	ld.w	$r1,$r13,4(0x4)
1c0070a8:	02800584 	addi.w	$r4,$r12,1(0x1)
1c0070ac:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0070b0:	6c000dc1 	bgeu	$r14,$r1,12(0xc) # 1c0070bc <test_max_position1_u32+0x18c>
1c0070b4:	0015002e 	move	$r14,$r1
1c0070b8:	00150086 	move	$r6,$r4
1c0070bc:	288011a5 	ld.w	$r5,$r13,4(0x4)
1c0070c0:	02800491 	addi.w	$r17,$r4,1(0x1)
1c0070c4:	6c000dc5 	bgeu	$r14,$r5,12(0xc) # 1c0070d0 <test_max_position1_u32+0x1a0>
1c0070c8:	001500ae 	move	$r14,$r5
1c0070cc:	00150226 	move	$r6,$r17
1c0070d0:	288021a7 	ld.w	$r7,$r13,8(0x8)
1c0070d4:	02800888 	addi.w	$r8,$r4,2(0x2)
1c0070d8:	6c000dc7 	bgeu	$r14,$r7,12(0xc) # 1c0070e4 <test_max_position1_u32+0x1b4>
1c0070dc:	001500ee 	move	$r14,$r7
1c0070e0:	00150106 	move	$r6,$r8
1c0070e4:	288031ac 	ld.w	$r12,$r13,12(0xc)
1c0070e8:	02800c89 	addi.w	$r9,$r4,3(0x3)
1c0070ec:	6c000dcc 	bgeu	$r14,$r12,12(0xc) # 1c0070f8 <test_max_position1_u32+0x1c8>
1c0070f0:	0015018e 	move	$r14,$r12
1c0070f4:	00150126 	move	$r6,$r9
1c0070f8:	288041aa 	ld.w	$r10,$r13,16(0x10)
1c0070fc:	0280108b 	addi.w	$r11,$r4,4(0x4)
1c007100:	6c000dca 	bgeu	$r14,$r10,12(0xc) # 1c00710c <test_max_position1_u32+0x1dc>
1c007104:	0015014e 	move	$r14,$r10
1c007108:	00150166 	move	$r6,$r11
1c00710c:	288051b2 	ld.w	$r18,$r13,20(0x14)
1c007110:	02801493 	addi.w	$r19,$r4,5(0x5)
1c007114:	6c000dd2 	bgeu	$r14,$r18,12(0xc) # 1c007120 <test_max_position1_u32+0x1f0>
1c007118:	0015024e 	move	$r14,$r18
1c00711c:	00150266 	move	$r6,$r19
1c007120:	288061b4 	ld.w	$r20,$r13,24(0x18)
1c007124:	0280188f 	addi.w	$r15,$r4,6(0x6)
1c007128:	6c000dd4 	bgeu	$r14,$r20,12(0xc) # 1c007134 <test_max_position1_u32+0x204>
1c00712c:	0015028e 	move	$r14,$r20
1c007130:	001501e6 	move	$r6,$r15
1c007134:	02801c8c 	addi.w	$r12,$r4,7(0x7)
1c007138:	028071ad 	addi.w	$r13,$r13,28(0x1c)
1c00713c:	5fff5b6c 	bne	$r27,$r12,-168(0x3ff58) # 1c007094 <test_max_position1_u32+0x164>
1c007140:	288003e7 	ld.w	$r7,$r31,0
1c007144:	58009ce6 	beq	$r7,$r6,156(0x9c) # 1c0071e0 <test_max_position1_u32+0x2b0>
1c007148:	001502e5 	move	$r5,$r23
1c00714c:	00150324 	move	$r4,$r25
1c007150:	5460e000 	bl	24800(0x60e0) # 1c00d230 <printf>
1c007154:	28800310 	ld.w	$r16,$r24,0
1c007158:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c00715c:	63fe4790 	blt	$r28,$r16,-444(0x3fe44) # 1c006fa0 <test_max_position1_u32+0x70>
1c007160:	5465e000 	bl	26080(0x65e0) # 1c00d740 <get_clock>
1c007164:	28800348 	ld.w	$r8,$r26,0
1c007168:	00150091 	move	$r17,$r4
1c00716c:	14001e86 	lu12i.w	$r6,244(0xf4)
1c007170:	038900c7 	ori	$r7,$r6,0x240
1c007174:	0011222a 	sub.w	$r10,$r17,$r8
1c007178:	1c000f29 	pcaddu12i	$r9,121(0x79)
1c00717c:	28911129 	ld.w	$r9,$r9,1092(0x444)
1c007180:	00211d4b 	div.wu	$r11,$r10,$r7
1c007184:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c00718c <test_max_position1_u32+0x25c>
1c007188:	002a0007 	break	0x7
1c00718c:	00150366 	move	$r6,$r27
1c007190:	001502e5 	move	$r5,$r23
1c007194:	1c000f24 	pcaddu12i	$r4,121(0x79)
1c007198:	02bb0084 	addi.w	$r4,$r4,-320(0xec0)
1c00719c:	00150167 	move	$r7,$r11
1c0071a0:	29800131 	st.w	$r17,$r9,0
1c0071a4:	54608c00 	bl	24716(0x608c) # 1c00d230 <printf>
1c0071a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0071ac:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c0071b0:	28809078 	ld.w	$r24,$r3,36(0x24)
1c0071b4:	28808079 	ld.w	$r25,$r3,32(0x20)
1c0071b8:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c0071bc:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c0071c0:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c0071c4:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c0071c8:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c0071cc:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c0071d0:	00150004 	move	$r4,$r0
1c0071d4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0071d8:	4c000020 	jirl	$r0,$r1,0
1c0071dc:	03400000 	andi	$r0,$r0,0x0
1c0071e0:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c0071e4:	63fdbf90 	blt	$r28,$r16,-580(0x3fdbc) # 1c006fa0 <test_max_position1_u32+0x70>
1c0071e8:	53ff7bff 	b	-136(0xfffff78) # 1c007160 <test_max_position1_u32+0x230>
1c0071ec:	0015018e 	move	$r14,$r12
1c0071f0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0071f4:	53fe07ff 	b	-508(0xffffe04) # 1c006ff8 <test_max_position1_u32+0xc8>
1c0071f8:	03400000 	andi	$r0,$r0,0x0
1c0071fc:	03400000 	andi	$r0,$r0,0x0

1c007200 <minmax_sequence_TestOneType_8>:
minmax_sequence_TestOneType_8():
1c007200:	1c000f2c 	pcaddu12i	$r12,121(0x79)
1c007204:	028ec18c 	addi.w	$r12,$r12,944(0x3b0)
1c007208:	28800184 	ld.w	$r4,$r12,0
1c00720c:	02b28063 	addi.w	$r3,$r3,-864(0xca0)
1c007210:	298d6076 	st.w	$r22,$r3,856(0x358)
1c007214:	0281ec84 	addi.w	$r4,$r4,123(0x7b)
1c007218:	298d5077 	st.w	$r23,$r3,852(0x354)
1c00721c:	298d7061 	st.w	$r1,$r3,860(0x35c)
1c007220:	298d4078 	st.w	$r24,$r3,848(0x350)
1c007224:	298d3079 	st.w	$r25,$r3,844(0x34c)
1c007228:	298d207a 	st.w	$r26,$r3,840(0x348)
1c00722c:	298d107b 	st.w	$r27,$r3,836(0x344)
1c007230:	298d007c 	st.w	$r28,$r3,832(0x340)
1c007234:	298cf07d 	st.w	$r29,$r3,828(0x33c)
1c007238:	298ce07e 	st.w	$r30,$r3,824(0x338)
1c00723c:	298cd07f 	st.w	$r31,$r3,820(0x334)
1c007240:	5465b000 	bl	26032(0x65b0) # 1c00d7f0 <srand>
1c007244:	02804077 	addi.w	$r23,$r3,16(0x10)
1c007248:	00150005 	move	$r5,$r0
1c00724c:	001502f6 	move	$r22,$r23
1c007250:	580050a0 	beq	$r5,$r0,80(0x50) # 1c0072a0 <minmax_sequence_TestOneType_8+0xa0>
1c007254:	02804478 	addi.w	$r24,$r3,17(0x11)
1c007258:	54655800 	bl	25944(0x6558) # 1c00d7b0 <rand>
1c00725c:	293fff04 	st.b	$r4,$r24,-1(0xfff)
1c007260:	54655000 	bl	25936(0x6550) # 1c00d7b0 <rand>
1c007264:	29000304 	st.b	$r4,$r24,0
1c007268:	54654800 	bl	25928(0x6548) # 1c00d7b0 <rand>
1c00726c:	29000704 	st.b	$r4,$r24,1(0x1)
1c007270:	54654000 	bl	25920(0x6540) # 1c00d7b0 <rand>
1c007274:	29000b04 	st.b	$r4,$r24,2(0x2)
1c007278:	54653800 	bl	25912(0x6538) # 1c00d7b0 <rand>
1c00727c:	29000f04 	st.b	$r4,$r24,3(0x3)
1c007280:	54653000 	bl	25904(0x6530) # 1c00d7b0 <rand>
1c007284:	29001304 	st.b	$r4,$r24,4(0x4)
1c007288:	54652800 	bl	25896(0x6528) # 1c00d7b0 <rand>
1c00728c:	02801b16 	addi.w	$r22,$r24,6(0x6)
1c007290:	293ffec4 	st.b	$r4,$r22,-1(0xfff)
1c007294:	028cc066 	addi.w	$r6,$r3,816(0x330)
1c007298:	580056c6 	beq	$r22,$r6,84(0x54) # 1c0072ec <minmax_sequence_TestOneType_8+0xec>
1c00729c:	03400000 	andi	$r0,$r0,0x0
1c0072a0:	028022d6 	addi.w	$r22,$r22,8(0x8)
1c0072a4:	54650c00 	bl	25868(0x650c) # 1c00d7b0 <rand>
1c0072a8:	293fe2c4 	st.b	$r4,$r22,-8(0xff8)
1c0072ac:	54650400 	bl	25860(0x6504) # 1c00d7b0 <rand>
1c0072b0:	293fe6c4 	st.b	$r4,$r22,-7(0xff9)
1c0072b4:	5464fc00 	bl	25852(0x64fc) # 1c00d7b0 <rand>
1c0072b8:	293feac4 	st.b	$r4,$r22,-6(0xffa)
1c0072bc:	5464f400 	bl	25844(0x64f4) # 1c00d7b0 <rand>
1c0072c0:	293feec4 	st.b	$r4,$r22,-5(0xffb)
1c0072c4:	5464ec00 	bl	25836(0x64ec) # 1c00d7b0 <rand>
1c0072c8:	293ff2c4 	st.b	$r4,$r22,-4(0xffc)
1c0072cc:	5464e400 	bl	25828(0x64e4) # 1c00d7b0 <rand>
1c0072d0:	293ff6c4 	st.b	$r4,$r22,-3(0xffd)
1c0072d4:	5464dc00 	bl	25820(0x64dc) # 1c00d7b0 <rand>
1c0072d8:	293ffac4 	st.b	$r4,$r22,-2(0xffe)
1c0072dc:	5464d400 	bl	25812(0x64d4) # 1c00d7b0 <rand>
1c0072e0:	293ffec4 	st.b	$r4,$r22,-1(0xfff)
1c0072e4:	028cc067 	addi.w	$r7,$r3,816(0x330)
1c0072e8:	5fffbac7 	bne	$r22,$r7,-72(0x3ffb8) # 1c0072a0 <minmax_sequence_TestOneType_8+0xa0>
1c0072ec:	02804476 	addi.w	$r22,$r3,17(0x11)
1c0072f0:	2800407f 	ld.b	$r31,$r3,16(0x10)
1c0072f4:	028cc061 	addi.w	$r1,$r3,816(0x330)
1c0072f8:	0011582e 	sub.w	$r14,$r1,$r22
1c0072fc:	03401dc8 	andi	$r8,$r14,0x7
1c007300:	001502c6 	move	$r6,$r22
1c007304:	001503e7 	move	$r7,$r31
1c007308:	5800b100 	beq	$r8,$r0,176(0xb0) # 1c0073b8 <minmax_sequence_TestOneType_8+0x1b8>
1c00730c:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c007310:	5800910f 	beq	$r8,$r15,144(0x90) # 1c0073a0 <minmax_sequence_TestOneType_8+0x1a0>
1c007314:	02800809 	addi.w	$r9,$r0,2(0x2)
1c007318:	58007909 	beq	$r8,$r9,120(0x78) # 1c007390 <minmax_sequence_TestOneType_8+0x190>
1c00731c:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c007320:	5800610a 	beq	$r8,$r10,96(0x60) # 1c007380 <minmax_sequence_TestOneType_8+0x180>
1c007324:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c007328:	5800450b 	beq	$r8,$r11,68(0x44) # 1c00736c <minmax_sequence_TestOneType_8+0x16c>
1c00732c:	02801410 	addi.w	$r16,$r0,5(0x5)
1c007330:	58002d10 	beq	$r8,$r16,44(0x2c) # 1c00735c <minmax_sequence_TestOneType_8+0x15c>
1c007334:	02801811 	addi.w	$r17,$r0,6(0x6)
1c007338:	58001511 	beq	$r8,$r17,20(0x14) # 1c00734c <minmax_sequence_TestOneType_8+0x14c>
1c00733c:	280002c7 	ld.b	$r7,$r22,0
1c007340:	64000be7 	bge	$r31,$r7,8(0x8) # 1c007348 <minmax_sequence_TestOneType_8+0x148>
1c007344:	001503e7 	move	$r7,$r31
1c007348:	028006c6 	addi.w	$r6,$r22,1(0x1)
1c00734c:	280000d2 	ld.b	$r18,$r6,0
1c007350:	600f0cf2 	blt	$r7,$r18,3852(0xf0c) # 1c00825c <minmax_sequence_TestOneType_8+0x105c>
1c007354:	00150247 	move	$r7,$r18
1c007358:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c00735c:	280000d3 	ld.b	$r19,$r6,0
1c007360:	600eecf3 	blt	$r7,$r19,3820(0xeec) # 1c00824c <minmax_sequence_TestOneType_8+0x104c>
1c007364:	00150267 	move	$r7,$r19
1c007368:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c00736c:	280000d4 	ld.b	$r20,$r6,0
1c007370:	640008f4 	bge	$r7,$r20,8(0x8) # 1c007378 <minmax_sequence_TestOneType_8+0x178>
1c007374:	001500f4 	move	$r20,$r7
1c007378:	00150287 	move	$r7,$r20
1c00737c:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c007380:	280000d9 	ld.b	$r25,$r6,0
1c007384:	600eb0f9 	blt	$r7,$r25,3760(0xeb0) # 1c008234 <minmax_sequence_TestOneType_8+0x1034>
1c007388:	00150327 	move	$r7,$r25
1c00738c:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c007390:	280000da 	ld.b	$r26,$r6,0
1c007394:	600e90fa 	blt	$r7,$r26,3728(0xe90) # 1c008224 <minmax_sequence_TestOneType_8+0x1024>
1c007398:	00150347 	move	$r7,$r26
1c00739c:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c0073a0:	280000d8 	ld.b	$r24,$r6,0
1c0073a4:	600d38f8 	blt	$r7,$r24,3384(0xd38) # 1c0080dc <minmax_sequence_TestOneType_8+0xedc>
1c0073a8:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c0073ac:	028cc07b 	addi.w	$r27,$r3,816(0x330)
1c0073b0:	00150307 	move	$r7,$r24
1c0073b4:	580058db 	beq	$r6,$r27,88(0x58) # 1c00740c <minmax_sequence_TestOneType_8+0x20c>
1c0073b8:	280000dc 	ld.b	$r28,$r6,0
1c0073bc:	600db0fc 	blt	$r7,$r28,3504(0xdb0) # 1c00816c <minmax_sequence_TestOneType_8+0xf6c>
1c0073c0:	280004cf 	ld.b	$r15,$r6,1(0x1)
1c0073c4:	028004dd 	addi.w	$r29,$r6,1(0x1)
1c0073c8:	600d978f 	blt	$r28,$r15,3476(0xd94) # 1c00815c <minmax_sequence_TestOneType_8+0xf5c>
1c0073cc:	280007ad 	ld.b	$r13,$r29,1(0x1)
1c0073d0:	600d7ded 	blt	$r15,$r13,3452(0xd7c) # 1c00814c <minmax_sequence_TestOneType_8+0xf4c>
1c0073d4:	28000bbe 	ld.b	$r30,$r29,2(0x2)
1c0073d8:	600d65be 	blt	$r13,$r30,3428(0xd64) # 1c00813c <minmax_sequence_TestOneType_8+0xf3c>
1c0073dc:	28000fac 	ld.b	$r12,$r29,3(0x3)
1c0073e0:	600d4fcc 	blt	$r30,$r12,3404(0xd4c) # 1c00812c <minmax_sequence_TestOneType_8+0xf2c>
1c0073e4:	280013a4 	ld.b	$r4,$r29,4(0x4)
1c0073e8:	600d3584 	blt	$r12,$r4,3380(0xd34) # 1c00811c <minmax_sequence_TestOneType_8+0xf1c>
1c0073ec:	280017a5 	ld.b	$r5,$r29,5(0x5)
1c0073f0:	600d1c85 	blt	$r4,$r5,3356(0xd1c) # 1c00810c <minmax_sequence_TestOneType_8+0xf0c>
1c0073f4:	28001bb8 	ld.b	$r24,$r29,6(0x6)
1c0073f8:	600cfcb8 	blt	$r5,$r24,3324(0xcfc) # 1c0080f4 <minmax_sequence_TestOneType_8+0xef4>
1c0073fc:	02801fa6 	addi.w	$r6,$r29,7(0x7)
1c007400:	028cc061 	addi.w	$r1,$r3,816(0x330)
1c007404:	00150307 	move	$r7,$r24
1c007408:	5fffb0c1 	bne	$r6,$r1,-80(0x3ffb0) # 1c0073b8 <minmax_sequence_TestOneType_8+0x1b8>
1c00740c:	028cc068 	addi.w	$r8,$r3,816(0x330)
1c007410:	1c000f2e 	pcaddu12i	$r14,121(0x79)
1c007414:	028701ce 	addi.w	$r14,$r14,448(0x1c0)
1c007418:	00115909 	sub.w	$r9,$r8,$r22
1c00741c:	298001d8 	st.w	$r24,$r14,0
1c007420:	03401d2a 	andi	$r10,$r9,0x7
1c007424:	001503ec 	move	$r12,$r31
1c007428:	001502c1 	move	$r1,$r22
1c00742c:	5800b140 	beq	$r10,$r0,176(0xb0) # 1c0074dc <minmax_sequence_TestOneType_8+0x2dc>
1c007430:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c007434:	5800914b 	beq	$r10,$r11,144(0x90) # 1c0074c4 <minmax_sequence_TestOneType_8+0x2c4>
1c007438:	02800810 	addi.w	$r16,$r0,2(0x2)
1c00743c:	58007950 	beq	$r10,$r16,120(0x78) # 1c0074b4 <minmax_sequence_TestOneType_8+0x2b4>
1c007440:	02800c11 	addi.w	$r17,$r0,3(0x3)
1c007444:	58006151 	beq	$r10,$r17,96(0x60) # 1c0074a4 <minmax_sequence_TestOneType_8+0x2a4>
1c007448:	02801012 	addi.w	$r18,$r0,4(0x4)
1c00744c:	58004552 	beq	$r10,$r18,68(0x44) # 1c007490 <minmax_sequence_TestOneType_8+0x290>
1c007450:	02801413 	addi.w	$r19,$r0,5(0x5)
1c007454:	58002d53 	beq	$r10,$r19,44(0x2c) # 1c007480 <minmax_sequence_TestOneType_8+0x280>
1c007458:	02801814 	addi.w	$r20,$r0,6(0x6)
1c00745c:	58001554 	beq	$r10,$r20,20(0x14) # 1c007470 <minmax_sequence_TestOneType_8+0x270>
1c007460:	280002cc 	ld.b	$r12,$r22,0
1c007464:	6400099f 	bge	$r12,$r31,8(0x8) # 1c00746c <minmax_sequence_TestOneType_8+0x26c>
1c007468:	001503ec 	move	$r12,$r31
1c00746c:	028006c1 	addi.w	$r1,$r22,1(0x1)
1c007470:	28000039 	ld.b	$r25,$r1,0
1c007474:	600de32c 	blt	$r25,$r12,3552(0xde0) # 1c008254 <minmax_sequence_TestOneType_8+0x1054>
1c007478:	0015032c 	move	$r12,$r25
1c00747c:	02800421 	addi.w	$r1,$r1,1(0x1)
1c007480:	2800003a 	ld.b	$r26,$r1,0
1c007484:	600dc34c 	blt	$r26,$r12,3520(0xdc0) # 1c008244 <minmax_sequence_TestOneType_8+0x1044>
1c007488:	0015034c 	move	$r12,$r26
1c00748c:	02800421 	addi.w	$r1,$r1,1(0x1)
1c007490:	2800003b 	ld.b	$r27,$r1,0
1c007494:	64000b6c 	bge	$r27,$r12,8(0x8) # 1c00749c <minmax_sequence_TestOneType_8+0x29c>
1c007498:	0015019b 	move	$r27,$r12
1c00749c:	0015036c 	move	$r12,$r27
1c0074a0:	02800421 	addi.w	$r1,$r1,1(0x1)
1c0074a4:	2800003c 	ld.b	$r28,$r1,0
1c0074a8:	600d978c 	blt	$r28,$r12,3476(0xd94) # 1c00823c <minmax_sequence_TestOneType_8+0x103c>
1c0074ac:	0015038c 	move	$r12,$r28
1c0074b0:	02800421 	addi.w	$r1,$r1,1(0x1)
1c0074b4:	2800003d 	ld.b	$r29,$r1,0
1c0074b8:	600d77ac 	blt	$r29,$r12,3444(0xd74) # 1c00822c <minmax_sequence_TestOneType_8+0x102c>
1c0074bc:	001503ac 	move	$r12,$r29
1c0074c0:	02800421 	addi.w	$r1,$r1,1(0x1)
1c0074c4:	28000027 	ld.b	$r7,$r1,0
1c0074c8:	600cb8ec 	blt	$r7,$r12,3256(0xcb8) # 1c008180 <minmax_sequence_TestOneType_8+0xf80>
1c0074cc:	02800421 	addi.w	$r1,$r1,1(0x1)
1c0074d0:	028cc06f 	addi.w	$r15,$r3,816(0x330)
1c0074d4:	001500ec 	move	$r12,$r7
1c0074d8:	5800582f 	beq	$r1,$r15,88(0x58) # 1c007530 <minmax_sequence_TestOneType_8+0x330>
1c0074dc:	2800003e 	ld.b	$r30,$r1,0
1c0074e0:	600d33cc 	blt	$r30,$r12,3376(0xd30) # 1c008210 <minmax_sequence_TestOneType_8+0x1010>
1c0074e4:	2800042f 	ld.b	$r15,$r1,1(0x1)
1c0074e8:	0280042c 	addi.w	$r12,$r1,1(0x1)
1c0074ec:	600d15fe 	blt	$r15,$r30,3348(0xd14) # 1c008200 <minmax_sequence_TestOneType_8+0x1000>
1c0074f0:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c0074f4:	600cfdaf 	blt	$r13,$r15,3324(0xcfc) # 1c0081f0 <minmax_sequence_TestOneType_8+0xff0>
1c0074f8:	28000984 	ld.b	$r4,$r12,2(0x2)
1c0074fc:	600ce48d 	blt	$r4,$r13,3300(0xce4) # 1c0081e0 <minmax_sequence_TestOneType_8+0xfe0>
1c007500:	28000d85 	ld.b	$r5,$r12,3(0x3)
1c007504:	600ccca4 	blt	$r5,$r4,3276(0xccc) # 1c0081d0 <minmax_sequence_TestOneType_8+0xfd0>
1c007508:	28001198 	ld.b	$r24,$r12,4(0x4)
1c00750c:	600cb705 	blt	$r24,$r5,3252(0xcb4) # 1c0081c0 <minmax_sequence_TestOneType_8+0xfc0>
1c007510:	28001586 	ld.b	$r6,$r12,5(0x5)
1c007514:	600c9cd8 	blt	$r6,$r24,3228(0xc9c) # 1c0081b0 <minmax_sequence_TestOneType_8+0xfb0>
1c007518:	28001987 	ld.b	$r7,$r12,6(0x6)
1c00751c:	600c7ce6 	blt	$r7,$r6,3196(0xc7c) # 1c008198 <minmax_sequence_TestOneType_8+0xf98>
1c007520:	02801d81 	addi.w	$r1,$r12,7(0x7)
1c007524:	028cc06e 	addi.w	$r14,$r3,816(0x330)
1c007528:	001500ec 	move	$r12,$r7
1c00752c:	5fffb02e 	bne	$r1,$r14,-80(0x3ffb0) # 1c0074dc <minmax_sequence_TestOneType_8+0x2dc>
1c007530:	280006e8 	ld.b	$r8,$r23,1(0x1)
1c007534:	1c000f3b 	pcaddu12i	$r27,121(0x79)
1c007538:	0282637b 	addi.w	$r27,$r27,152(0x98)
1c00753c:	02800409 	addi.w	$r9,$r0,1(0x1)
1c007540:	00115d3d 	sub.w	$r29,$r9,$r23
1c007544:	29800367 	st.w	$r7,$r27,0
1c007548:	028cbc7a 	addi.w	$r26,$r3,815(0x32f)
1c00754c:	001503ee 	move	$r14,$r31
1c007550:	0015000f 	move	$r15,$r0
1c007554:	001076ea 	add.w	$r10,$r23,$r29
1c007558:	64000d1f 	bge	$r8,$r31,12(0xc) # 1c007564 <minmax_sequence_TestOneType_8+0x364>
1c00755c:	0015014f 	move	$r15,$r10
1c007560:	0015010e 	move	$r14,$r8
1c007564:	028006f1 	addi.w	$r17,$r23,1(0x1)
1c007568:	2800062b 	ld.b	$r11,$r17,1(0x1)
1c00756c:	001047b0 	add.w	$r16,$r29,$r17
1c007570:	64000d6e 	bge	$r11,$r14,12(0xc) # 1c00757c <minmax_sequence_TestOneType_8+0x37c>
1c007574:	0015020f 	move	$r15,$r16
1c007578:	0015016e 	move	$r14,$r11
1c00757c:	02800631 	addi.w	$r17,$r17,1(0x1)
1c007580:	28000632 	ld.b	$r18,$r17,1(0x1)
1c007584:	001047b3 	add.w	$r19,$r29,$r17
1c007588:	64000e4e 	bge	$r18,$r14,12(0xc) # 1c007594 <minmax_sequence_TestOneType_8+0x394>
1c00758c:	0015026f 	move	$r15,$r19
1c007590:	0015024e 	move	$r14,$r18
1c007594:	28000a39 	ld.b	$r25,$r17,2(0x2)
1c007598:	02800634 	addi.w	$r20,$r17,1(0x1)
1c00759c:	001053bc 	add.w	$r28,$r29,$r20
1c0075a0:	64000f2e 	bge	$r25,$r14,12(0xc) # 1c0075ac <minmax_sequence_TestOneType_8+0x3ac>
1c0075a4:	0015038f 	move	$r15,$r28
1c0075a8:	0015032e 	move	$r14,$r25
1c0075ac:	28000e2d 	ld.b	$r13,$r17,3(0x3)
1c0075b0:	02800a3e 	addi.w	$r30,$r17,2(0x2)
1c0075b4:	00107ba4 	add.w	$r4,$r29,$r30
1c0075b8:	64000dae 	bge	$r13,$r14,12(0xc) # 1c0075c4 <minmax_sequence_TestOneType_8+0x3c4>
1c0075bc:	0015008f 	move	$r15,$r4
1c0075c0:	001501ae 	move	$r14,$r13
1c0075c4:	28001238 	ld.b	$r24,$r17,4(0x4)
1c0075c8:	02800e25 	addi.w	$r5,$r17,3(0x3)
1c0075cc:	001017a6 	add.w	$r6,$r29,$r5
1c0075d0:	64000f0e 	bge	$r24,$r14,12(0xc) # 1c0075dc <minmax_sequence_TestOneType_8+0x3dc>
1c0075d4:	001500cf 	move	$r15,$r6
1c0075d8:	0015030e 	move	$r14,$r24
1c0075dc:	28001621 	ld.b	$r1,$r17,5(0x5)
1c0075e0:	02801227 	addi.w	$r7,$r17,4(0x4)
1c0075e4:	00101fac 	add.w	$r12,$r29,$r7
1c0075e8:	64000c2e 	bge	$r1,$r14,12(0xc) # 1c0075f4 <minmax_sequence_TestOneType_8+0x3f4>
1c0075ec:	0015018f 	move	$r15,$r12
1c0075f0:	0015002e 	move	$r14,$r1
1c0075f4:	28001a29 	ld.b	$r9,$r17,6(0x6)
1c0075f8:	02801628 	addi.w	$r8,$r17,5(0x5)
1c0075fc:	001023aa 	add.w	$r10,$r29,$r8
1c007600:	64000d2e 	bge	$r9,$r14,12(0xc) # 1c00760c <minmax_sequence_TestOneType_8+0x40c>
1c007604:	0015014f 	move	$r15,$r10
1c007608:	0015012e 	move	$r14,$r9
1c00760c:	28001e30 	ld.b	$r16,$r17,7(0x7)
1c007610:	02801a2b 	addi.w	$r11,$r17,6(0x6)
1c007614:	00102fb2 	add.w	$r18,$r29,$r11
1c007618:	64000e0e 	bge	$r16,$r14,12(0xc) # 1c007624 <minmax_sequence_TestOneType_8+0x424>
1c00761c:	0015024f 	move	$r15,$r18
1c007620:	0015020e 	move	$r14,$r16
1c007624:	28002233 	ld.b	$r19,$r17,8(0x8)
1c007628:	02801e34 	addi.w	$r20,$r17,7(0x7)
1c00762c:	001053b9 	add.w	$r25,$r29,$r20
1c007630:	64000e6e 	bge	$r19,$r14,12(0xc) # 1c00763c <minmax_sequence_TestOneType_8+0x43c>
1c007634:	0015032f 	move	$r15,$r25
1c007638:	0015026e 	move	$r14,$r19
1c00763c:	2800263e 	ld.b	$r30,$r17,9(0x9)
1c007640:	0280223c 	addi.w	$r28,$r17,8(0x8)
1c007644:	001073ad 	add.w	$r13,$r29,$r28
1c007648:	64000fce 	bge	$r30,$r14,12(0xc) # 1c007654 <minmax_sequence_TestOneType_8+0x454>
1c00764c:	001501af 	move	$r15,$r13
1c007650:	001503ce 	move	$r14,$r30
1c007654:	28002a25 	ld.b	$r5,$r17,10(0xa)
1c007658:	02802624 	addi.w	$r4,$r17,9(0x9)
1c00765c:	001013b8 	add.w	$r24,$r29,$r4
1c007660:	64000cae 	bge	$r5,$r14,12(0xc) # 1c00766c <minmax_sequence_TestOneType_8+0x46c>
1c007664:	0015030f 	move	$r15,$r24
1c007668:	001500ae 	move	$r14,$r5
1c00766c:	28002e27 	ld.b	$r7,$r17,11(0xb)
1c007670:	02802a26 	addi.w	$r6,$r17,10(0xa)
1c007674:	00101ba1 	add.w	$r1,$r29,$r6
1c007678:	64000cee 	bge	$r7,$r14,12(0xc) # 1c007684 <minmax_sequence_TestOneType_8+0x484>
1c00767c:	0015002f 	move	$r15,$r1
1c007680:	001500ee 	move	$r14,$r7
1c007684:	28003228 	ld.b	$r8,$r17,12(0xc)
1c007688:	02802e2c 	addi.w	$r12,$r17,11(0xb)
1c00768c:	001033a9 	add.w	$r9,$r29,$r12
1c007690:	64000d0e 	bge	$r8,$r14,12(0xc) # 1c00769c <minmax_sequence_TestOneType_8+0x49c>
1c007694:	0015012f 	move	$r15,$r9
1c007698:	0015010e 	move	$r14,$r8
1c00769c:	2800362b 	ld.b	$r11,$r17,13(0xd)
1c0076a0:	0280322a 	addi.w	$r10,$r17,12(0xc)
1c0076a4:	00102bb0 	add.w	$r16,$r29,$r10
1c0076a8:	64000d6e 	bge	$r11,$r14,12(0xc) # 1c0076b4 <minmax_sequence_TestOneType_8+0x4b4>
1c0076ac:	0015020f 	move	$r15,$r16
1c0076b0:	0015016e 	move	$r14,$r11
1c0076b4:	02803631 	addi.w	$r17,$r17,13(0xd)
1c0076b8:	5ffeb351 	bne	$r26,$r17,-336(0x3feb0) # 1c007568 <minmax_sequence_TestOneType_8+0x368>
1c0076bc:	280006f4 	ld.b	$r20,$r23,1(0x1)
1c0076c0:	1c000f3c 	pcaddu12i	$r28,121(0x79)
1c0076c4:	02bc239c 	addi.w	$r28,$r28,-248(0xf08)
1c0076c8:	2980038f 	st.w	$r15,$r28,0
1c0076cc:	001503ee 	move	$r14,$r31
1c0076d0:	00150012 	move	$r18,$r0
1c0076d4:	001076f3 	add.w	$r19,$r23,$r29
1c0076d8:	64000ff4 	bge	$r31,$r20,12(0xc) # 1c0076e4 <minmax_sequence_TestOneType_8+0x4e4>
1c0076dc:	00150272 	move	$r18,$r19
1c0076e0:	0015028e 	move	$r14,$r20
1c0076e4:	028006ed 	addi.w	$r13,$r23,1(0x1)
1c0076e8:	280005b9 	ld.b	$r25,$r13,1(0x1)
1c0076ec:	001037be 	add.w	$r30,$r29,$r13
1c0076f0:	64000dd9 	bge	$r14,$r25,12(0xc) # 1c0076fc <minmax_sequence_TestOneType_8+0x4fc>
1c0076f4:	001503d2 	move	$r18,$r30
1c0076f8:	0015032e 	move	$r14,$r25
1c0076fc:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c007700:	280005a4 	ld.b	$r4,$r13,1(0x1)
1c007704:	001037a5 	add.w	$r5,$r29,$r13
1c007708:	64000dc4 	bge	$r14,$r4,12(0xc) # 1c007714 <minmax_sequence_TestOneType_8+0x514>
1c00770c:	001500b2 	move	$r18,$r5
1c007710:	0015008e 	move	$r14,$r4
1c007714:	280009a6 	ld.b	$r6,$r13,2(0x2)
1c007718:	028005b8 	addi.w	$r24,$r13,1(0x1)
1c00771c:	001063a7 	add.w	$r7,$r29,$r24
1c007720:	64000dc6 	bge	$r14,$r6,12(0xc) # 1c00772c <minmax_sequence_TestOneType_8+0x52c>
1c007724:	001500f2 	move	$r18,$r7
1c007728:	001500ce 	move	$r14,$r6
1c00772c:	28000dac 	ld.b	$r12,$r13,3(0x3)
1c007730:	028009a1 	addi.w	$r1,$r13,2(0x2)
1c007734:	001007a8 	add.w	$r8,$r29,$r1
1c007738:	64000dcc 	bge	$r14,$r12,12(0xc) # 1c007744 <minmax_sequence_TestOneType_8+0x544>
1c00773c:	00150112 	move	$r18,$r8
1c007740:	0015018e 	move	$r14,$r12
1c007744:	280011aa 	ld.b	$r10,$r13,4(0x4)
1c007748:	02800da9 	addi.w	$r9,$r13,3(0x3)
1c00774c:	001027ab 	add.w	$r11,$r29,$r9
1c007750:	64000dca 	bge	$r14,$r10,12(0xc) # 1c00775c <minmax_sequence_TestOneType_8+0x55c>
1c007754:	00150172 	move	$r18,$r11
1c007758:	0015014e 	move	$r14,$r10
1c00775c:	280015b1 	ld.b	$r17,$r13,5(0x5)
1c007760:	028011b0 	addi.w	$r16,$r13,4(0x4)
1c007764:	001043af 	add.w	$r15,$r29,$r16
1c007768:	64000dd1 	bge	$r14,$r17,12(0xc) # 1c007774 <minmax_sequence_TestOneType_8+0x574>
1c00776c:	001501f2 	move	$r18,$r15
1c007770:	0015022e 	move	$r14,$r17
1c007774:	280019b3 	ld.b	$r19,$r13,6(0x6)
1c007778:	028015b4 	addi.w	$r20,$r13,5(0x5)
1c00777c:	001053b9 	add.w	$r25,$r29,$r20
1c007780:	64000dd3 	bge	$r14,$r19,12(0xc) # 1c00778c <minmax_sequence_TestOneType_8+0x58c>
1c007784:	00150332 	move	$r18,$r25
1c007788:	0015026e 	move	$r14,$r19
1c00778c:	28001da4 	ld.b	$r4,$r13,7(0x7)
1c007790:	028019be 	addi.w	$r30,$r13,6(0x6)
1c007794:	00107ba5 	add.w	$r5,$r29,$r30
1c007798:	64000dc4 	bge	$r14,$r4,12(0xc) # 1c0077a4 <minmax_sequence_TestOneType_8+0x5a4>
1c00779c:	001500b2 	move	$r18,$r5
1c0077a0:	0015008e 	move	$r14,$r4
1c0077a4:	280021a6 	ld.b	$r6,$r13,8(0x8)
1c0077a8:	02801db8 	addi.w	$r24,$r13,7(0x7)
1c0077ac:	001063a7 	add.w	$r7,$r29,$r24
1c0077b0:	64000dc6 	bge	$r14,$r6,12(0xc) # 1c0077bc <minmax_sequence_TestOneType_8+0x5bc>
1c0077b4:	001500f2 	move	$r18,$r7
1c0077b8:	001500ce 	move	$r14,$r6
1c0077bc:	280025ac 	ld.b	$r12,$r13,9(0x9)
1c0077c0:	028021a1 	addi.w	$r1,$r13,8(0x8)
1c0077c4:	001007a8 	add.w	$r8,$r29,$r1
1c0077c8:	64000dcc 	bge	$r14,$r12,12(0xc) # 1c0077d4 <minmax_sequence_TestOneType_8+0x5d4>
1c0077cc:	00150112 	move	$r18,$r8
1c0077d0:	0015018e 	move	$r14,$r12
1c0077d4:	280029aa 	ld.b	$r10,$r13,10(0xa)
1c0077d8:	028025a9 	addi.w	$r9,$r13,9(0x9)
1c0077dc:	001027ab 	add.w	$r11,$r29,$r9
1c0077e0:	64000dca 	bge	$r14,$r10,12(0xc) # 1c0077ec <minmax_sequence_TestOneType_8+0x5ec>
1c0077e4:	00150172 	move	$r18,$r11
1c0077e8:	0015014e 	move	$r14,$r10
1c0077ec:	28002db1 	ld.b	$r17,$r13,11(0xb)
1c0077f0:	028029b0 	addi.w	$r16,$r13,10(0xa)
1c0077f4:	001043af 	add.w	$r15,$r29,$r16
1c0077f8:	64000dd1 	bge	$r14,$r17,12(0xc) # 1c007804 <minmax_sequence_TestOneType_8+0x604>
1c0077fc:	001501f2 	move	$r18,$r15
1c007800:	0015022e 	move	$r14,$r17
1c007804:	280031b3 	ld.b	$r19,$r13,12(0xc)
1c007808:	02802db4 	addi.w	$r20,$r13,11(0xb)
1c00780c:	001053b9 	add.w	$r25,$r29,$r20
1c007810:	64000dd3 	bge	$r14,$r19,12(0xc) # 1c00781c <minmax_sequence_TestOneType_8+0x61c>
1c007814:	00150332 	move	$r18,$r25
1c007818:	0015026e 	move	$r14,$r19
1c00781c:	280035a4 	ld.b	$r4,$r13,13(0xd)
1c007820:	028031be 	addi.w	$r30,$r13,12(0xc)
1c007824:	00107ba5 	add.w	$r5,$r29,$r30
1c007828:	64000dc4 	bge	$r14,$r4,12(0xc) # 1c007834 <minmax_sequence_TestOneType_8+0x634>
1c00782c:	001500b2 	move	$r18,$r5
1c007830:	0015008e 	move	$r14,$r4
1c007834:	028035ad 	addi.w	$r13,$r13,13(0xd)
1c007838:	5ffeb34d 	bne	$r26,$r13,-336(0x3feb0) # 1c0076e8 <minmax_sequence_TestOneType_8+0x4e8>
1c00783c:	1c000f26 	pcaddu12i	$r6,121(0x79)
1c007840:	02b620c6 	addi.w	$r6,$r6,-632(0xd88)
1c007844:	1c000f38 	pcaddu12i	$r24,121(0x79)
1c007848:	02b5c318 	addi.w	$r24,$r24,-656(0xd70)
1c00784c:	298000d2 	st.w	$r18,$r6,0
1c007850:	545ef000 	bl	24304(0x5ef0) # 1c00d740 <get_clock>
1c007854:	28800305 	ld.w	$r5,$r24,0
1c007858:	1c000f3e 	pcaddu12i	$r30,121(0x79)
1c00785c:	28b5a3de 	ld.w	$r30,$r30,-664(0xd68)
1c007860:	298003c4 	st.w	$r4,$r30,0
1c007864:	00150019 	move	$r25,$r0
1c007868:	6401a405 	bge	$r0,$r5,420(0x1a4) # 1c007a0c <minmax_sequence_TestOneType_8+0x80c>
1c00786c:	00150012 	move	$r18,$r0
1c007870:	028c82f3 	addi.w	$r19,$r23,800(0x320)
1c007874:	1c000f34 	pcaddu12i	$r20,121(0x79)
1c007878:	02b57294 	addi.w	$r20,$r20,-676(0xd5c)
1c00787c:	03400000 	andi	$r0,$r0,0x0
1c007880:	00115a67 	sub.w	$r7,$r19,$r22
1c007884:	03401ce1 	andi	$r1,$r7,0x7
1c007888:	001502cc 	move	$r12,$r22
1c00788c:	001503ee 	move	$r14,$r31
1c007890:	5800c020 	beq	$r1,$r0,192(0xc0) # 1c007950 <minmax_sequence_TestOneType_8+0x750>
1c007894:	02800408 	addi.w	$r8,$r0,1(0x1)
1c007898:	5800a028 	beq	$r1,$r8,160(0xa0) # 1c007938 <minmax_sequence_TestOneType_8+0x738>
1c00789c:	02800809 	addi.w	$r9,$r0,2(0x2)
1c0078a0:	58008429 	beq	$r1,$r9,132(0x84) # 1c007924 <minmax_sequence_TestOneType_8+0x724>
1c0078a4:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c0078a8:	5800682a 	beq	$r1,$r10,104(0x68) # 1c007910 <minmax_sequence_TestOneType_8+0x710>
1c0078ac:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c0078b0:	58004c2b 	beq	$r1,$r11,76(0x4c) # 1c0078fc <minmax_sequence_TestOneType_8+0x6fc>
1c0078b4:	02801410 	addi.w	$r16,$r0,5(0x5)
1c0078b8:	58003030 	beq	$r1,$r16,48(0x30) # 1c0078e8 <minmax_sequence_TestOneType_8+0x6e8>
1c0078bc:	02801811 	addi.w	$r17,$r0,6(0x6)
1c0078c0:	58001431 	beq	$r1,$r17,20(0x14) # 1c0078d4 <minmax_sequence_TestOneType_8+0x6d4>
1c0078c4:	280002ce 	ld.b	$r14,$r22,0
1c0078c8:	64000bee 	bge	$r31,$r14,8(0x8) # 1c0078d0 <minmax_sequence_TestOneType_8+0x6d0>
1c0078cc:	001503ee 	move	$r14,$r31
1c0078d0:	028006cc 	addi.w	$r12,$r22,1(0x1)
1c0078d4:	2800018f 	ld.b	$r15,$r12,0
1c0078d8:	640009cf 	bge	$r14,$r15,8(0x8) # 1c0078e0 <minmax_sequence_TestOneType_8+0x6e0>
1c0078dc:	001501cf 	move	$r15,$r14
1c0078e0:	001501ee 	move	$r14,$r15
1c0078e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0078e8:	28000184 	ld.b	$r4,$r12,0
1c0078ec:	640009c4 	bge	$r14,$r4,8(0x8) # 1c0078f4 <minmax_sequence_TestOneType_8+0x6f4>
1c0078f0:	001501c4 	move	$r4,$r14
1c0078f4:	0015008e 	move	$r14,$r4
1c0078f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0078fc:	2800018d 	ld.b	$r13,$r12,0
1c007900:	640009cd 	bge	$r14,$r13,8(0x8) # 1c007908 <minmax_sequence_TestOneType_8+0x708>
1c007904:	001501cd 	move	$r13,$r14
1c007908:	001501ae 	move	$r14,$r13
1c00790c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007910:	28000186 	ld.b	$r6,$r12,0
1c007914:	640009c6 	bge	$r14,$r6,8(0x8) # 1c00791c <minmax_sequence_TestOneType_8+0x71c>
1c007918:	001501c6 	move	$r6,$r14
1c00791c:	001500ce 	move	$r14,$r6
1c007920:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007924:	28000187 	ld.b	$r7,$r12,0
1c007928:	640009c7 	bge	$r14,$r7,8(0x8) # 1c007930 <minmax_sequence_TestOneType_8+0x730>
1c00792c:	001501c7 	move	$r7,$r14
1c007930:	001500ee 	move	$r14,$r7
1c007934:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007938:	28000186 	ld.b	$r6,$r12,0
1c00793c:	640009c6 	bge	$r14,$r6,8(0x8) # 1c007944 <minmax_sequence_TestOneType_8+0x744>
1c007940:	001501c6 	move	$r6,$r14
1c007944:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007948:	001500ce 	move	$r14,$r6
1c00794c:	5800766c 	beq	$r19,$r12,116(0x74) # 1c0079c0 <minmax_sequence_TestOneType_8+0x7c0>
1c007950:	28000181 	ld.b	$r1,$r12,0
1c007954:	640009c1 	bge	$r14,$r1,8(0x8) # 1c00795c <minmax_sequence_TestOneType_8+0x75c>
1c007958:	001501c1 	move	$r1,$r14
1c00795c:	28000584 	ld.b	$r4,$r12,1(0x1)
1c007960:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007964:	64000824 	bge	$r1,$r4,8(0x8) # 1c00796c <minmax_sequence_TestOneType_8+0x76c>
1c007968:	00150024 	move	$r4,$r1
1c00796c:	2800058e 	ld.b	$r14,$r12,1(0x1)
1c007970:	6400088e 	bge	$r4,$r14,8(0x8) # 1c007978 <minmax_sequence_TestOneType_8+0x778>
1c007974:	0015008e 	move	$r14,$r4
1c007978:	28000988 	ld.b	$r8,$r12,2(0x2)
1c00797c:	640009c8 	bge	$r14,$r8,8(0x8) # 1c007984 <minmax_sequence_TestOneType_8+0x784>
1c007980:	001501c8 	move	$r8,$r14
1c007984:	28000d89 	ld.b	$r9,$r12,3(0x3)
1c007988:	64000909 	bge	$r8,$r9,8(0x8) # 1c007990 <minmax_sequence_TestOneType_8+0x790>
1c00798c:	00150109 	move	$r9,$r8
1c007990:	2800118a 	ld.b	$r10,$r12,4(0x4)
1c007994:	6400092a 	bge	$r9,$r10,8(0x8) # 1c00799c <minmax_sequence_TestOneType_8+0x79c>
1c007998:	0015012a 	move	$r10,$r9
1c00799c:	2800158f 	ld.b	$r15,$r12,5(0x5)
1c0079a0:	6400094f 	bge	$r10,$r15,8(0x8) # 1c0079a8 <minmax_sequence_TestOneType_8+0x7a8>
1c0079a4:	0015014f 	move	$r15,$r10
1c0079a8:	28001986 	ld.b	$r6,$r12,6(0x6)
1c0079ac:	640009e6 	bge	$r15,$r6,8(0x8) # 1c0079b4 <minmax_sequence_TestOneType_8+0x7b4>
1c0079b0:	001501e6 	move	$r6,$r15
1c0079b4:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c0079b8:	001500ce 	move	$r14,$r6
1c0079bc:	5fff966c 	bne	$r19,$r12,-108(0x3ff94) # 1c007950 <minmax_sequence_TestOneType_8+0x750>
1c0079c0:	28800287 	ld.w	$r7,$r20,0
1c0079c4:	29801067 	st.w	$r7,$r3,4(0x4)
1c0079c8:	2800106b 	ld.b	$r11,$r3,4(0x4)
1c0079cc:	5806f566 	beq	$r11,$r6,1780(0x6f4) # 1c0080c0 <minmax_sequence_TestOneType_8+0xec0>
1c0079d0:	1c000f05 	pcaddu12i	$r5,120(0x78)
1c0079d4:	029a70a5 	addi.w	$r5,$r5,1692(0x69c)
1c0079d8:	1c000f04 	pcaddu12i	$r4,120(0x78)
1c0079dc:	02995084 	addi.w	$r4,$r4,1620(0x654)
1c0079e0:	29802073 	st.w	$r19,$r3,8(0x8)
1c0079e4:	29801072 	st.w	$r18,$r3,4(0x4)
1c0079e8:	54584800 	bl	22600(0x5848) # 1c00d230 <printf>
1c0079ec:	28801070 	ld.w	$r16,$r3,4(0x4)
1c0079f0:	28800305 	ld.w	$r5,$r24,0
1c0079f4:	02800739 	addi.w	$r25,$r25,1(0x1)
1c0079f8:	02800612 	addi.w	$r18,$r16,1(0x1)
1c0079fc:	1c000f34 	pcaddu12i	$r20,121(0x79)
1c007a00:	02af5294 	addi.w	$r20,$r20,-1068(0xbd4)
1c007a04:	28802073 	ld.w	$r19,$r3,8(0x8)
1c007a08:	63fe7a45 	blt	$r18,$r5,-392(0x3fe78) # 1c007880 <minmax_sequence_TestOneType_8+0x680>
1c007a0c:	545d3400 	bl	23860(0x5d34) # 1c00d740 <get_clock>
1c007a10:	288003d1 	ld.w	$r17,$r30,0
1c007a14:	14001e8d 	lu12i.w	$r13,244(0xf4)
1c007a18:	1c000f28 	pcaddu12i	$r8,121(0x79)
1c007a1c:	28ae9108 	ld.w	$r8,$r8,-1116(0xba4)
1c007a20:	038901a7 	ori	$r7,$r13,0x240
1c007a24:	29800104 	st.w	$r4,$r8,0
1c007a28:	00114484 	sub.w	$r4,$r4,$r17
1c007a2c:	00211c89 	div.wu	$r9,$r4,$r7
1c007a30:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c007a38 <minmax_sequence_TestOneType_8+0x838>
1c007a34:	002a0007 	break	0x7
1c007a38:	1c000f05 	pcaddu12i	$r5,120(0x78)
1c007a3c:	0298d0a5 	addi.w	$r5,$r5,1588(0x634)
1c007a40:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c007a44:	00150127 	move	$r7,$r9
1c007a48:	1c000f04 	pcaddu12i	$r4,120(0x78)
1c007a4c:	02983084 	addi.w	$r4,$r4,1548(0x60c)
1c007a50:	5457e000 	bl	22496(0x57e0) # 1c00d230 <printf>
1c007a54:	545cec00 	bl	23788(0x5cec) # 1c00d740 <get_clock>
1c007a58:	28800305 	ld.w	$r5,$r24,0
1c007a5c:	298003c4 	st.w	$r4,$r30,0
1c007a60:	6401a005 	bge	$r0,$r5,416(0x1a0) # 1c007c00 <minmax_sequence_TestOneType_8+0xa00>
1c007a64:	00150012 	move	$r18,$r0
1c007a68:	00150014 	move	$r20,$r0
1c007a6c:	028c82f3 	addi.w	$r19,$r23,800(0x320)
1c007a70:	00115a66 	sub.w	$r6,$r19,$r22
1c007a74:	03401cc1 	andi	$r1,$r6,0x7
1c007a78:	001502cc 	move	$r12,$r22
1c007a7c:	001503ee 	move	$r14,$r31
1c007a80:	5800c020 	beq	$r1,$r0,192(0xc0) # 1c007b40 <minmax_sequence_TestOneType_8+0x940>
1c007a84:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c007a88:	5800a02a 	beq	$r1,$r10,160(0xa0) # 1c007b28 <minmax_sequence_TestOneType_8+0x928>
1c007a8c:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c007a90:	5800842f 	beq	$r1,$r15,132(0x84) # 1c007b14 <minmax_sequence_TestOneType_8+0x914>
1c007a94:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c007a98:	5800682b 	beq	$r1,$r11,104(0x68) # 1c007b00 <minmax_sequence_TestOneType_8+0x900>
1c007a9c:	02801010 	addi.w	$r16,$r0,4(0x4)
1c007aa0:	58004c30 	beq	$r1,$r16,76(0x4c) # 1c007aec <minmax_sequence_TestOneType_8+0x8ec>
1c007aa4:	02801411 	addi.w	$r17,$r0,5(0x5)
1c007aa8:	58003031 	beq	$r1,$r17,48(0x30) # 1c007ad8 <minmax_sequence_TestOneType_8+0x8d8>
1c007aac:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007ab0:	5800142d 	beq	$r1,$r13,20(0x14) # 1c007ac4 <minmax_sequence_TestOneType_8+0x8c4>
1c007ab4:	280002ce 	ld.b	$r14,$r22,0
1c007ab8:	640009df 	bge	$r14,$r31,8(0x8) # 1c007ac0 <minmax_sequence_TestOneType_8+0x8c0>
1c007abc:	001503ee 	move	$r14,$r31
1c007ac0:	028006cc 	addi.w	$r12,$r22,1(0x1)
1c007ac4:	28000187 	ld.b	$r7,$r12,0
1c007ac8:	640008ee 	bge	$r7,$r14,8(0x8) # 1c007ad0 <minmax_sequence_TestOneType_8+0x8d0>
1c007acc:	001501c7 	move	$r7,$r14
1c007ad0:	001500ee 	move	$r14,$r7
1c007ad4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007ad8:	28000188 	ld.b	$r8,$r12,0
1c007adc:	6400090e 	bge	$r8,$r14,8(0x8) # 1c007ae4 <minmax_sequence_TestOneType_8+0x8e4>
1c007ae0:	001501c8 	move	$r8,$r14
1c007ae4:	0015010e 	move	$r14,$r8
1c007ae8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007aec:	28000184 	ld.b	$r4,$r12,0
1c007af0:	6400088e 	bge	$r4,$r14,8(0x8) # 1c007af8 <minmax_sequence_TestOneType_8+0x8f8>
1c007af4:	001501c4 	move	$r4,$r14
1c007af8:	0015008e 	move	$r14,$r4
1c007afc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007b00:	28000189 	ld.b	$r9,$r12,0
1c007b04:	6400092e 	bge	$r9,$r14,8(0x8) # 1c007b0c <minmax_sequence_TestOneType_8+0x90c>
1c007b08:	001501c9 	move	$r9,$r14
1c007b0c:	0015012e 	move	$r14,$r9
1c007b10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007b14:	28000186 	ld.b	$r6,$r12,0
1c007b18:	640008ce 	bge	$r6,$r14,8(0x8) # 1c007b20 <minmax_sequence_TestOneType_8+0x920>
1c007b1c:	001501c6 	move	$r6,$r14
1c007b20:	001500ce 	move	$r14,$r6
1c007b24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007b28:	28000186 	ld.b	$r6,$r12,0
1c007b2c:	640008ce 	bge	$r6,$r14,8(0x8) # 1c007b34 <minmax_sequence_TestOneType_8+0x934>
1c007b30:	001501c6 	move	$r6,$r14
1c007b34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007b38:	001500ce 	move	$r14,$r6
1c007b3c:	5800766c 	beq	$r19,$r12,116(0x74) # 1c007bb0 <minmax_sequence_TestOneType_8+0x9b0>
1c007b40:	28000181 	ld.b	$r1,$r12,0
1c007b44:	6400082e 	bge	$r1,$r14,8(0x8) # 1c007b4c <minmax_sequence_TestOneType_8+0x94c>
1c007b48:	001501c1 	move	$r1,$r14
1c007b4c:	28000584 	ld.b	$r4,$r12,1(0x1)
1c007b50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007b54:	64000881 	bge	$r4,$r1,8(0x8) # 1c007b5c <minmax_sequence_TestOneType_8+0x95c>
1c007b58:	00150024 	move	$r4,$r1
1c007b5c:	2800058e 	ld.b	$r14,$r12,1(0x1)
1c007b60:	640009c4 	bge	$r14,$r4,8(0x8) # 1c007b68 <minmax_sequence_TestOneType_8+0x968>
1c007b64:	0015008e 	move	$r14,$r4
1c007b68:	2800098a 	ld.b	$r10,$r12,2(0x2)
1c007b6c:	6400094e 	bge	$r10,$r14,8(0x8) # 1c007b74 <minmax_sequence_TestOneType_8+0x974>
1c007b70:	001501ca 	move	$r10,$r14
1c007b74:	28000d8b 	ld.b	$r11,$r12,3(0x3)
1c007b78:	6400096a 	bge	$r11,$r10,8(0x8) # 1c007b80 <minmax_sequence_TestOneType_8+0x980>
1c007b7c:	0015014b 	move	$r11,$r10
1c007b80:	2800118f 	ld.b	$r15,$r12,4(0x4)
1c007b84:	640009eb 	bge	$r15,$r11,8(0x8) # 1c007b8c <minmax_sequence_TestOneType_8+0x98c>
1c007b88:	0015016f 	move	$r15,$r11
1c007b8c:	28001590 	ld.b	$r16,$r12,5(0x5)
1c007b90:	64000a0f 	bge	$r16,$r15,8(0x8) # 1c007b98 <minmax_sequence_TestOneType_8+0x998>
1c007b94:	001501f0 	move	$r16,$r15
1c007b98:	28001986 	ld.b	$r6,$r12,6(0x6)
1c007b9c:	640008d0 	bge	$r6,$r16,8(0x8) # 1c007ba4 <minmax_sequence_TestOneType_8+0x9a4>
1c007ba0:	00150206 	move	$r6,$r16
1c007ba4:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c007ba8:	001500ce 	move	$r14,$r6
1c007bac:	5fff966c 	bne	$r19,$r12,-108(0x3ff94) # 1c007b40 <minmax_sequence_TestOneType_8+0x940>
1c007bb0:	28800367 	ld.w	$r7,$r27,0
1c007bb4:	29801067 	st.w	$r7,$r3,4(0x4)
1c007bb8:	28001071 	ld.b	$r17,$r3,4(0x4)
1c007bbc:	58051626 	beq	$r17,$r6,1300(0x514) # 1c0080d0 <minmax_sequence_TestOneType_8+0xed0>
1c007bc0:	1c000f05 	pcaddu12i	$r5,120(0x78)
1c007bc4:	029330a5 	addi.w	$r5,$r5,1228(0x4cc)
1c007bc8:	1c000f04 	pcaddu12i	$r4,120(0x78)
1c007bcc:	02919084 	addi.w	$r4,$r4,1124(0x464)
1c007bd0:	29803073 	st.w	$r19,$r3,12(0xc)
1c007bd4:	29802072 	st.w	$r18,$r3,8(0x8)
1c007bd8:	29801074 	st.w	$r20,$r3,4(0x4)
1c007bdc:	54565400 	bl	22100(0x5654) # 1c00d230 <printf>
1c007be0:	2880206d 	ld.w	$r13,$r3,8(0x8)
1c007be4:	28801067 	ld.w	$r7,$r3,4(0x4)
1c007be8:	28800305 	ld.w	$r5,$r24,0
1c007bec:	028005b2 	addi.w	$r18,$r13,1(0x1)
1c007bf0:	028004f4 	addi.w	$r20,$r7,1(0x1)
1c007bf4:	28803073 	ld.w	$r19,$r3,12(0xc)
1c007bf8:	63fe7a45 	blt	$r18,$r5,-392(0x3fe78) # 1c007a70 <minmax_sequence_TestOneType_8+0x870>
1c007bfc:	00105339 	add.w	$r25,$r25,$r20
1c007c00:	545b4000 	bl	23360(0x5b40) # 1c00d740 <get_clock>
1c007c04:	288003db 	ld.w	$r27,$r30,0
1c007c08:	00150096 	move	$r22,$r4
1c007c0c:	14001e88 	lu12i.w	$r8,244(0xf4)
1c007c10:	00116ecb 	sub.w	$r11,$r22,$r27
1c007c14:	03890109 	ori	$r9,$r8,0x240
1c007c18:	1c000f2a 	pcaddu12i	$r10,121(0x79)
1c007c1c:	28a6914a 	ld.w	$r10,$r10,-1628(0x9a4)
1c007c20:	00212567 	div.wu	$r7,$r11,$r9
1c007c24:	5c000920 	bne	$r9,$r0,8(0x8) # 1c007c2c <minmax_sequence_TestOneType_8+0xa2c>
1c007c28:	002a0007 	break	0x7
1c007c2c:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c007c30:	1c000f05 	pcaddu12i	$r5,120(0x78)
1c007c34:	029170a5 	addi.w	$r5,$r5,1116(0x45c)
1c007c38:	1c000f04 	pcaddu12i	$r4,120(0x78)
1c007c3c:	02907084 	addi.w	$r4,$r4,1052(0x41c)
1c007c40:	29800156 	st.w	$r22,$r10,0
1c007c44:	5455ec00 	bl	21996(0x55ec) # 1c00d230 <printf>
1c007c48:	2880030d 	ld.w	$r13,$r24,0
1c007c4c:	02801406 	addi.w	$r6,$r0,5(0x5)
1c007c50:	0015001b 	move	$r27,$r0
1c007c54:	002019af 	div.w	$r15,$r13,$r6
1c007c58:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c007c60 <minmax_sequence_TestOneType_8+0xa60>
1c007c5c:	002a0007 	break	0x7
1c007c60:	2980106d 	st.w	$r13,$r3,4(0x4)
1c007c64:	2980030f 	st.w	$r15,$r24,0
1c007c68:	545ad800 	bl	23256(0x5ad8) # 1c00d740 <get_clock>
1c007c6c:	28800312 	ld.w	$r18,$r24,0
1c007c70:	298003c4 	st.w	$r4,$r30,0
1c007c74:	1c000f16 	pcaddu12i	$r22,120(0x78)
1c007c78:	0290e2d6 	addi.w	$r22,$r22,1080(0x438)
1c007c7c:	64019c12 	bge	$r0,$r18,412(0x19c) # 1c007e18 <minmax_sequence_TestOneType_8+0xc18>
1c007c80:	280006e1 	ld.b	$r1,$r23,1(0x1)
1c007c84:	001503ee 	move	$r14,$r31
1c007c88:	00150006 	move	$r6,$r0
1c007c8c:	001076f0 	add.w	$r16,$r23,$r29
1c007c90:	64000c3f 	bge	$r1,$r31,12(0xc) # 1c007c9c <minmax_sequence_TestOneType_8+0xa9c>
1c007c94:	0015002e 	move	$r14,$r1
1c007c98:	00150206 	move	$r6,$r16
1c007c9c:	028006ec 	addi.w	$r12,$r23,1(0x1)
1c007ca0:	28000585 	ld.b	$r5,$r12,1(0x1)
1c007ca4:	00107593 	add.w	$r19,$r12,$r29
1c007ca8:	64000cae 	bge	$r5,$r14,12(0xc) # 1c007cb4 <minmax_sequence_TestOneType_8+0xab4>
1c007cac:	001500ae 	move	$r14,$r5
1c007cb0:	00150266 	move	$r6,$r19
1c007cb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007cb8:	28000594 	ld.b	$r20,$r12,1(0x1)
1c007cbc:	00107591 	add.w	$r17,$r12,$r29
1c007cc0:	64000e8e 	bge	$r20,$r14,12(0xc) # 1c007ccc <minmax_sequence_TestOneType_8+0xacc>
1c007cc4:	0015028e 	move	$r14,$r20
1c007cc8:	00150226 	move	$r6,$r17
1c007ccc:	28000989 	ld.b	$r9,$r12,2(0x2)
1c007cd0:	02800588 	addi.w	$r8,$r12,1(0x1)
1c007cd4:	0010750a 	add.w	$r10,$r8,$r29
1c007cd8:	64000d2e 	bge	$r9,$r14,12(0xc) # 1c007ce4 <minmax_sequence_TestOneType_8+0xae4>
1c007cdc:	0015012e 	move	$r14,$r9
1c007ce0:	00150146 	move	$r6,$r10
1c007ce4:	28000d87 	ld.b	$r7,$r12,3(0x3)
1c007ce8:	0280098b 	addi.w	$r11,$r12,2(0x2)
1c007cec:	0010756d 	add.w	$r13,$r11,$r29
1c007cf0:	64000cee 	bge	$r7,$r14,12(0xc) # 1c007cfc <minmax_sequence_TestOneType_8+0xafc>
1c007cf4:	001500ee 	move	$r14,$r7
1c007cf8:	001501a6 	move	$r6,$r13
1c007cfc:	2800118f 	ld.b	$r15,$r12,4(0x4)
1c007d00:	02800d84 	addi.w	$r4,$r12,3(0x3)
1c007d04:	00107481 	add.w	$r1,$r4,$r29
1c007d08:	64000dee 	bge	$r15,$r14,12(0xc) # 1c007d14 <minmax_sequence_TestOneType_8+0xb14>
1c007d0c:	001501ee 	move	$r14,$r15
1c007d10:	00150026 	move	$r6,$r1
1c007d14:	28001585 	ld.b	$r5,$r12,5(0x5)
1c007d18:	02801190 	addi.w	$r16,$r12,4(0x4)
1c007d1c:	00107613 	add.w	$r19,$r16,$r29
1c007d20:	64000cae 	bge	$r5,$r14,12(0xc) # 1c007d2c <minmax_sequence_TestOneType_8+0xb2c>
1c007d24:	001500ae 	move	$r14,$r5
1c007d28:	00150266 	move	$r6,$r19
1c007d2c:	28001988 	ld.b	$r8,$r12,6(0x6)
1c007d30:	02801594 	addi.w	$r20,$r12,5(0x5)
1c007d34:	00107691 	add.w	$r17,$r20,$r29
1c007d38:	64000d0e 	bge	$r8,$r14,12(0xc) # 1c007d44 <minmax_sequence_TestOneType_8+0xb44>
1c007d3c:	0015010e 	move	$r14,$r8
1c007d40:	00150226 	move	$r6,$r17
1c007d44:	28001d8a 	ld.b	$r10,$r12,7(0x7)
1c007d48:	02801989 	addi.w	$r9,$r12,6(0x6)
1c007d4c:	0010752b 	add.w	$r11,$r9,$r29
1c007d50:	64000d4e 	bge	$r10,$r14,12(0xc) # 1c007d5c <minmax_sequence_TestOneType_8+0xb5c>
1c007d54:	0015014e 	move	$r14,$r10
1c007d58:	00150166 	move	$r6,$r11
1c007d5c:	2800218d 	ld.b	$r13,$r12,8(0x8)
1c007d60:	02801d87 	addi.w	$r7,$r12,7(0x7)
1c007d64:	001074e4 	add.w	$r4,$r7,$r29
1c007d68:	64000dae 	bge	$r13,$r14,12(0xc) # 1c007d74 <minmax_sequence_TestOneType_8+0xb74>
1c007d6c:	001501ae 	move	$r14,$r13
1c007d70:	00150086 	move	$r6,$r4
1c007d74:	28002581 	ld.b	$r1,$r12,9(0x9)
1c007d78:	0280218f 	addi.w	$r15,$r12,8(0x8)
1c007d7c:	001075f0 	add.w	$r16,$r15,$r29
1c007d80:	64000c2e 	bge	$r1,$r14,12(0xc) # 1c007d8c <minmax_sequence_TestOneType_8+0xb8c>
1c007d84:	0015002e 	move	$r14,$r1
1c007d88:	00150206 	move	$r6,$r16
1c007d8c:	28002993 	ld.b	$r19,$r12,10(0xa)
1c007d90:	02802585 	addi.w	$r5,$r12,9(0x9)
1c007d94:	001074b4 	add.w	$r20,$r5,$r29
1c007d98:	64000e6e 	bge	$r19,$r14,12(0xc) # 1c007da4 <minmax_sequence_TestOneType_8+0xba4>
1c007d9c:	0015026e 	move	$r14,$r19
1c007da0:	00150286 	move	$r6,$r20
1c007da4:	28002d89 	ld.b	$r9,$r12,11(0xb)
1c007da8:	02802988 	addi.w	$r8,$r12,10(0xa)
1c007dac:	00107511 	add.w	$r17,$r8,$r29
1c007db0:	64000d2e 	bge	$r9,$r14,12(0xc) # 1c007dbc <minmax_sequence_TestOneType_8+0xbbc>
1c007db4:	0015012e 	move	$r14,$r9
1c007db8:	00150226 	move	$r6,$r17
1c007dbc:	2800318b 	ld.b	$r11,$r12,12(0xc)
1c007dc0:	02802d8a 	addi.w	$r10,$r12,11(0xb)
1c007dc4:	00107547 	add.w	$r7,$r10,$r29
1c007dc8:	64000d6e 	bge	$r11,$r14,12(0xc) # 1c007dd4 <minmax_sequence_TestOneType_8+0xbd4>
1c007dcc:	0015016e 	move	$r14,$r11
1c007dd0:	001500e6 	move	$r6,$r7
1c007dd4:	28003584 	ld.b	$r4,$r12,13(0xd)
1c007dd8:	0280318d 	addi.w	$r13,$r12,12(0xc)
1c007ddc:	001075af 	add.w	$r15,$r13,$r29
1c007de0:	64000c8e 	bge	$r4,$r14,12(0xc) # 1c007dec <minmax_sequence_TestOneType_8+0xbec>
1c007de4:	0015008e 	move	$r14,$r4
1c007de8:	001501e6 	move	$r6,$r15
1c007dec:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c007df0:	5ffeb34c 	bne	$r26,$r12,-336(0x3feb0) # 1c007ca0 <minmax_sequence_TestOneType_8+0xaa0>
1c007df4:	28800387 	ld.w	$r7,$r28,0
1c007df8:	5802bcc7 	beq	$r6,$r7,700(0x2bc) # 1c0080b4 <minmax_sequence_TestOneType_8+0xeb4>
1c007dfc:	001502c5 	move	$r5,$r22
1c007e00:	1c000f04 	pcaddu12i	$r4,120(0x78)
1c007e04:	02880084 	addi.w	$r4,$r4,512(0x200)
1c007e08:	54542800 	bl	21544(0x5428) # 1c00d230 <printf>
1c007e0c:	28800312 	ld.w	$r18,$r24,0
1c007e10:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c007e14:	63fe6f72 	blt	$r27,$r18,-404(0x3fe6c) # 1c007c80 <minmax_sequence_TestOneType_8+0xa80>
1c007e18:	54592800 	bl	22824(0x5928) # 1c00d740 <get_clock>
1c007e1c:	288003d0 	ld.w	$r16,$r30,0
1c007e20:	0015009c 	move	$r28,$r4
1c007e24:	14001e86 	lu12i.w	$r6,244(0xf4)
1c007e28:	038900d3 	ori	$r19,$r6,0x240
1c007e2c:	00114388 	sub.w	$r8,$r28,$r16
1c007e30:	1c000f14 	pcaddu12i	$r20,120(0x78)
1c007e34:	289e3294 	ld.w	$r20,$r20,1932(0x78c)
1c007e38:	00214d07 	div.wu	$r7,$r8,$r19
1c007e3c:	5c000a60 	bne	$r19,$r0,8(0x8) # 1c007e44 <minmax_sequence_TestOneType_8+0xc44>
1c007e40:	002a0007 	break	0x7
1c007e44:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c007e48:	1c000f05 	pcaddu12i	$r5,120(0x78)
1c007e4c:	028990a5 	addi.w	$r5,$r5,612(0x264)
1c007e50:	1c000f04 	pcaddu12i	$r4,120(0x78)
1c007e54:	02881084 	addi.w	$r4,$r4,516(0x204)
1c007e58:	2980029c 	st.w	$r28,$r20,0
1c007e5c:	5453d400 	bl	21460(0x53d4) # 1c00d230 <printf>
1c007e60:	5458e000 	bl	22752(0x58e0) # 1c00d740 <get_clock>
1c007e64:	28800311 	ld.w	$r17,$r24,0
1c007e68:	298003c4 	st.w	$r4,$r30,0
1c007e6c:	00150016 	move	$r22,$r0
1c007e70:	1c000f1c 	pcaddu12i	$r28,120(0x78)
1c007e74:	0289839c 	addi.w	$r28,$r28,608(0x260)
1c007e78:	1c000f1b 	pcaddu12i	$r27,120(0x78)
1c007e7c:	0286237b 	addi.w	$r27,$r27,392(0x188)
1c007e80:	6401a011 	bge	$r0,$r17,416(0x1a0) # 1c008020 <minmax_sequence_TestOneType_8+0xe20>
1c007e84:	280006e1 	ld.b	$r1,$r23,1(0x1)
1c007e88:	001503ee 	move	$r14,$r31
1c007e8c:	00150006 	move	$r6,$r0
1c007e90:	001076e5 	add.w	$r5,$r23,$r29
1c007e94:	64000fe1 	bge	$r31,$r1,12(0xc) # 1c007ea0 <minmax_sequence_TestOneType_8+0xca0>
1c007e98:	0015002e 	move	$r14,$r1
1c007e9c:	001500a6 	move	$r6,$r5
1c007ea0:	028006eb 	addi.w	$r11,$r23,1(0x1)
1c007ea4:	28000569 	ld.b	$r9,$r11,1(0x1)
1c007ea8:	0010756a 	add.w	$r10,$r11,$r29
1c007eac:	64000dc9 	bge	$r14,$r9,12(0xc) # 1c007eb8 <minmax_sequence_TestOneType_8+0xcb8>
1c007eb0:	0015012e 	move	$r14,$r9
1c007eb4:	00150146 	move	$r6,$r10
1c007eb8:	0280056b 	addi.w	$r11,$r11,1(0x1)
1c007ebc:	2800056d 	ld.b	$r13,$r11,1(0x1)
1c007ec0:	00107564 	add.w	$r4,$r11,$r29
1c007ec4:	64000dcd 	bge	$r14,$r13,12(0xc) # 1c007ed0 <minmax_sequence_TestOneType_8+0xcd0>
1c007ec8:	001501ae 	move	$r14,$r13
1c007ecc:	00150086 	move	$r6,$r4
1c007ed0:	2800096c 	ld.b	$r12,$r11,2(0x2)
1c007ed4:	0280056f 	addi.w	$r15,$r11,1(0x1)
1c007ed8:	001075f2 	add.w	$r18,$r15,$r29
1c007edc:	64000dcc 	bge	$r14,$r12,12(0xc) # 1c007ee8 <minmax_sequence_TestOneType_8+0xce8>
1c007ee0:	0015018e 	move	$r14,$r12
1c007ee4:	00150246 	move	$r6,$r18
1c007ee8:	28000d73 	ld.b	$r19,$r11,3(0x3)
1c007eec:	02800970 	addi.w	$r16,$r11,2(0x2)
1c007ef0:	00107614 	add.w	$r20,$r16,$r29
1c007ef4:	64000dd3 	bge	$r14,$r19,12(0xc) # 1c007f00 <minmax_sequence_TestOneType_8+0xd00>
1c007ef8:	0015026e 	move	$r14,$r19
1c007efc:	00150286 	move	$r6,$r20
1c007f00:	28001167 	ld.b	$r7,$r11,4(0x4)
1c007f04:	02800d68 	addi.w	$r8,$r11,3(0x3)
1c007f08:	00107501 	add.w	$r1,$r8,$r29
1c007f0c:	64000dc7 	bge	$r14,$r7,12(0xc) # 1c007f18 <minmax_sequence_TestOneType_8+0xd18>
1c007f10:	001500ee 	move	$r14,$r7
1c007f14:	00150026 	move	$r6,$r1
1c007f18:	28001569 	ld.b	$r9,$r11,5(0x5)
1c007f1c:	02801165 	addi.w	$r5,$r11,4(0x4)
1c007f20:	001074aa 	add.w	$r10,$r5,$r29
1c007f24:	64000dc9 	bge	$r14,$r9,12(0xc) # 1c007f30 <minmax_sequence_TestOneType_8+0xd30>
1c007f28:	0015012e 	move	$r14,$r9
1c007f2c:	00150146 	move	$r6,$r10
1c007f30:	28001964 	ld.b	$r4,$r11,6(0x6)
1c007f34:	0280156d 	addi.w	$r13,$r11,5(0x5)
1c007f38:	001075af 	add.w	$r15,$r13,$r29
1c007f3c:	64000dc4 	bge	$r14,$r4,12(0xc) # 1c007f48 <minmax_sequence_TestOneType_8+0xd48>
1c007f40:	0015008e 	move	$r14,$r4
1c007f44:	001501e6 	move	$r6,$r15
1c007f48:	28001d72 	ld.b	$r18,$r11,7(0x7)
1c007f4c:	0280196c 	addi.w	$r12,$r11,6(0x6)
1c007f50:	00107590 	add.w	$r16,$r12,$r29
1c007f54:	64000dd2 	bge	$r14,$r18,12(0xc) # 1c007f60 <minmax_sequence_TestOneType_8+0xd60>
1c007f58:	0015024e 	move	$r14,$r18
1c007f5c:	00150206 	move	$r6,$r16
1c007f60:	28002174 	ld.b	$r20,$r11,8(0x8)
1c007f64:	02801d73 	addi.w	$r19,$r11,7(0x7)
1c007f68:	00107668 	add.w	$r8,$r19,$r29
1c007f6c:	64000dd4 	bge	$r14,$r20,12(0xc) # 1c007f78 <minmax_sequence_TestOneType_8+0xd78>
1c007f70:	0015028e 	move	$r14,$r20
1c007f74:	00150106 	move	$r6,$r8
1c007f78:	28002561 	ld.b	$r1,$r11,9(0x9)
1c007f7c:	02802167 	addi.w	$r7,$r11,8(0x8)
1c007f80:	001074e5 	add.w	$r5,$r7,$r29
1c007f84:	64000dc1 	bge	$r14,$r1,12(0xc) # 1c007f90 <minmax_sequence_TestOneType_8+0xd90>
1c007f88:	0015002e 	move	$r14,$r1
1c007f8c:	001500a6 	move	$r6,$r5
1c007f90:	2800296a 	ld.b	$r10,$r11,10(0xa)
1c007f94:	02802569 	addi.w	$r9,$r11,9(0x9)
1c007f98:	0010752d 	add.w	$r13,$r9,$r29
1c007f9c:	64000dca 	bge	$r14,$r10,12(0xc) # 1c007fa8 <minmax_sequence_TestOneType_8+0xda8>
1c007fa0:	0015014e 	move	$r14,$r10
1c007fa4:	001501a6 	move	$r6,$r13
1c007fa8:	28002d6c 	ld.b	$r12,$r11,11(0xb)
1c007fac:	02802964 	addi.w	$r4,$r11,10(0xa)
1c007fb0:	0010748f 	add.w	$r15,$r4,$r29
1c007fb4:	64000dcc 	bge	$r14,$r12,12(0xc) # 1c007fc0 <minmax_sequence_TestOneType_8+0xdc0>
1c007fb8:	0015018e 	move	$r14,$r12
1c007fbc:	001501e6 	move	$r6,$r15
1c007fc0:	28003172 	ld.b	$r18,$r11,12(0xc)
1c007fc4:	02802d70 	addi.w	$r16,$r11,11(0xb)
1c007fc8:	00107613 	add.w	$r19,$r16,$r29
1c007fcc:	64000dd2 	bge	$r14,$r18,12(0xc) # 1c007fd8 <minmax_sequence_TestOneType_8+0xdd8>
1c007fd0:	0015024e 	move	$r14,$r18
1c007fd4:	00150266 	move	$r6,$r19
1c007fd8:	28003568 	ld.b	$r8,$r11,13(0xd)
1c007fdc:	02803174 	addi.w	$r20,$r11,12(0xc)
1c007fe0:	00107687 	add.w	$r7,$r20,$r29
1c007fe4:	64000dc8 	bge	$r14,$r8,12(0xc) # 1c007ff0 <minmax_sequence_TestOneType_8+0xdf0>
1c007fe8:	0015010e 	move	$r14,$r8
1c007fec:	001500e6 	move	$r6,$r7
1c007ff0:	0280356b 	addi.w	$r11,$r11,13(0xd)
1c007ff4:	5ffeb17a 	bne	$r11,$r26,-336(0x3feb0) # 1c007ea4 <minmax_sequence_TestOneType_8+0xca4>
1c007ff8:	1c000f01 	pcaddu12i	$r1,120(0x78)
1c007ffc:	02973021 	addi.w	$r1,$r1,1484(0x5cc)
1c008000:	28800027 	ld.w	$r7,$r1,0
1c008004:	5800a4e6 	beq	$r7,$r6,164(0xa4) # 1c0080a8 <minmax_sequence_TestOneType_8+0xea8>
1c008008:	00150385 	move	$r5,$r28
1c00800c:	00150364 	move	$r4,$r27
1c008010:	54522000 	bl	21024(0x5220) # 1c00d230 <printf>
1c008014:	28800311 	ld.w	$r17,$r24,0
1c008018:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00801c:	63fe6ad1 	blt	$r22,$r17,-408(0x3fe68) # 1c007e84 <minmax_sequence_TestOneType_8+0xc84>
1c008020:	54572000 	bl	22304(0x5720) # 1c00d740 <get_clock>
1c008024:	288003df 	ld.w	$r31,$r30,0
1c008028:	00150097 	move	$r23,$r4
1c00802c:	14001e9a 	lu12i.w	$r26,244(0xf4)
1c008030:	00117eea 	sub.w	$r10,$r23,$r31
1c008034:	0389035d 	ori	$r29,$r26,0x240
1c008038:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00803c:	00217547 	div.wu	$r7,$r10,$r29
1c008040:	5c000ba0 	bne	$r29,$r0,8(0x8) # 1c008048 <minmax_sequence_TestOneType_8+0xe48>
1c008044:	002a0007 	break	0x7
1c008048:	1c000f09 	pcaddu12i	$r9,120(0x78)
1c00804c:	2895d129 	ld.w	$r9,$r9,1396(0x574)
1c008050:	1c000f05 	pcaddu12i	$r5,120(0x78)
1c008054:	028200a5 	addi.w	$r5,$r5,128(0x80)
1c008058:	1c000f04 	pcaddu12i	$r4,120(0x78)
1c00805c:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c008060:	29800137 	st.w	$r23,$r9,0
1c008064:	5451cc00 	bl	20940(0x51cc) # 1c00d230 <printf>
1c008068:	28801066 	ld.w	$r6,$r3,4(0x4)
1c00806c:	288d7061 	ld.w	$r1,$r3,860(0x35c)
1c008070:	288d6076 	ld.w	$r22,$r3,856(0x358)
1c008074:	29800306 	st.w	$r6,$r24,0
1c008078:	00150324 	move	$r4,$r25
1c00807c:	288d5077 	ld.w	$r23,$r3,852(0x354)
1c008080:	288d4078 	ld.w	$r24,$r3,848(0x350)
1c008084:	288d3079 	ld.w	$r25,$r3,844(0x34c)
1c008088:	288d207a 	ld.w	$r26,$r3,840(0x348)
1c00808c:	288d107b 	ld.w	$r27,$r3,836(0x344)
1c008090:	288d007c 	ld.w	$r28,$r3,832(0x340)
1c008094:	288cf07d 	ld.w	$r29,$r3,828(0x33c)
1c008098:	288ce07e 	ld.w	$r30,$r3,824(0x338)
1c00809c:	288cd07f 	ld.w	$r31,$r3,820(0x334)
1c0080a0:	028d8063 	addi.w	$r3,$r3,864(0x360)
1c0080a4:	4c000020 	jirl	$r0,$r1,0
1c0080a8:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c0080ac:	63fddad1 	blt	$r22,$r17,-552(0x3fdd8) # 1c007e84 <minmax_sequence_TestOneType_8+0xc84>
1c0080b0:	53ff73ff 	b	-144(0xfffff70) # 1c008020 <minmax_sequence_TestOneType_8+0xe20>
1c0080b4:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c0080b8:	63fbcb72 	blt	$r27,$r18,-1080(0x3fbc8) # 1c007c80 <minmax_sequence_TestOneType_8+0xa80>
1c0080bc:	53fd5fff 	b	-676(0xffffd5c) # 1c007e18 <minmax_sequence_TestOneType_8+0xc18>
1c0080c0:	02800652 	addi.w	$r18,$r18,1(0x1)
1c0080c4:	63f7be45 	blt	$r18,$r5,-2116(0x3f7bc) # 1c007880 <minmax_sequence_TestOneType_8+0x680>
1c0080c8:	53f947ff 	b	-1724(0xffff944) # 1c007a0c <minmax_sequence_TestOneType_8+0x80c>
1c0080cc:	03400000 	andi	$r0,$r0,0x0
1c0080d0:	02800652 	addi.w	$r18,$r18,1(0x1)
1c0080d4:	63f99e45 	blt	$r18,$r5,-1636(0x3f99c) # 1c007a70 <minmax_sequence_TestOneType_8+0x870>
1c0080d8:	53fb27ff 	b	-1244(0xffffb24) # 1c007bfc <minmax_sequence_TestOneType_8+0x9fc>
1c0080dc:	001500f8 	move	$r24,$r7
1c0080e0:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c0080e4:	028cc07b 	addi.w	$r27,$r3,816(0x330)
1c0080e8:	00150307 	move	$r7,$r24
1c0080ec:	5ff2ccdb 	bne	$r6,$r27,-3380(0x3f2cc) # 1c0073b8 <minmax_sequence_TestOneType_8+0x1b8>
1c0080f0:	53f31fff 	b	-3300(0xffff31c) # 1c00740c <minmax_sequence_TestOneType_8+0x20c>
1c0080f4:	001500b8 	move	$r24,$r5
1c0080f8:	02801fa6 	addi.w	$r6,$r29,7(0x7)
1c0080fc:	028cc061 	addi.w	$r1,$r3,816(0x330)
1c008100:	00150307 	move	$r7,$r24
1c008104:	5ff2b4c1 	bne	$r6,$r1,-3404(0x3f2b4) # 1c0073b8 <minmax_sequence_TestOneType_8+0x1b8>
1c008108:	53f307ff 	b	-3324(0xffff304) # 1c00740c <minmax_sequence_TestOneType_8+0x20c>
1c00810c:	28001bb8 	ld.b	$r24,$r29,6(0x6)
1c008110:	00150085 	move	$r5,$r4
1c008114:	67f2e8b8 	bge	$r5,$r24,-3352(0x3f2e8) # 1c0073fc <minmax_sequence_TestOneType_8+0x1fc>
1c008118:	53ffdfff 	b	-36(0xfffffdc) # 1c0080f4 <minmax_sequence_TestOneType_8+0xef4>
1c00811c:	280017a5 	ld.b	$r5,$r29,5(0x5)
1c008120:	00150184 	move	$r4,$r12
1c008124:	67f2d085 	bge	$r4,$r5,-3376(0x3f2d0) # 1c0073f4 <minmax_sequence_TestOneType_8+0x1f4>
1c008128:	53ffe7ff 	b	-28(0xfffffe4) # 1c00810c <minmax_sequence_TestOneType_8+0xf0c>
1c00812c:	280013a4 	ld.b	$r4,$r29,4(0x4)
1c008130:	001503cc 	move	$r12,$r30
1c008134:	67f2b984 	bge	$r12,$r4,-3400(0x3f2b8) # 1c0073ec <minmax_sequence_TestOneType_8+0x1ec>
1c008138:	53ffe7ff 	b	-28(0xfffffe4) # 1c00811c <minmax_sequence_TestOneType_8+0xf1c>
1c00813c:	28000fac 	ld.b	$r12,$r29,3(0x3)
1c008140:	001501be 	move	$r30,$r13
1c008144:	67f2a3cc 	bge	$r30,$r12,-3424(0x3f2a0) # 1c0073e4 <minmax_sequence_TestOneType_8+0x1e4>
1c008148:	53ffe7ff 	b	-28(0xfffffe4) # 1c00812c <minmax_sequence_TestOneType_8+0xf2c>
1c00814c:	28000bbe 	ld.b	$r30,$r29,2(0x2)
1c008150:	001501ed 	move	$r13,$r15
1c008154:	67f289be 	bge	$r13,$r30,-3448(0x3f288) # 1c0073dc <minmax_sequence_TestOneType_8+0x1dc>
1c008158:	53ffe7ff 	b	-28(0xfffffe4) # 1c00813c <minmax_sequence_TestOneType_8+0xf3c>
1c00815c:	280007ad 	ld.b	$r13,$r29,1(0x1)
1c008160:	0015038f 	move	$r15,$r28
1c008164:	67f271ed 	bge	$r15,$r13,-3472(0x3f270) # 1c0073d4 <minmax_sequence_TestOneType_8+0x1d4>
1c008168:	53ffe7ff 	b	-28(0xfffffe4) # 1c00814c <minmax_sequence_TestOneType_8+0xf4c>
1c00816c:	280004cf 	ld.b	$r15,$r6,1(0x1)
1c008170:	001500fc 	move	$r28,$r7
1c008174:	028004dd 	addi.w	$r29,$r6,1(0x1)
1c008178:	67f2578f 	bge	$r28,$r15,-3500(0x3f254) # 1c0073cc <minmax_sequence_TestOneType_8+0x1cc>
1c00817c:	53ffe3ff 	b	-32(0xfffffe0) # 1c00815c <minmax_sequence_TestOneType_8+0xf5c>
1c008180:	00150187 	move	$r7,$r12
1c008184:	02800421 	addi.w	$r1,$r1,1(0x1)
1c008188:	028cc06f 	addi.w	$r15,$r3,816(0x330)
1c00818c:	001500ec 	move	$r12,$r7
1c008190:	5ff34c2f 	bne	$r1,$r15,-3252(0x3f34c) # 1c0074dc <minmax_sequence_TestOneType_8+0x2dc>
1c008194:	53f39fff 	b	-3172(0xffff39c) # 1c007530 <minmax_sequence_TestOneType_8+0x330>
1c008198:	001500c7 	move	$r7,$r6
1c00819c:	02801d81 	addi.w	$r1,$r12,7(0x7)
1c0081a0:	028cc06e 	addi.w	$r14,$r3,816(0x330)
1c0081a4:	001500ec 	move	$r12,$r7
1c0081a8:	5ff3342e 	bne	$r1,$r14,-3276(0x3f334) # 1c0074dc <minmax_sequence_TestOneType_8+0x2dc>
1c0081ac:	53f387ff 	b	-3196(0xffff384) # 1c007530 <minmax_sequence_TestOneType_8+0x330>
1c0081b0:	28001987 	ld.b	$r7,$r12,6(0x6)
1c0081b4:	00150306 	move	$r6,$r24
1c0081b8:	67f368e6 	bge	$r7,$r6,-3224(0x3f368) # 1c007520 <minmax_sequence_TestOneType_8+0x320>
1c0081bc:	53ffdfff 	b	-36(0xfffffdc) # 1c008198 <minmax_sequence_TestOneType_8+0xf98>
1c0081c0:	28001586 	ld.b	$r6,$r12,5(0x5)
1c0081c4:	001500b8 	move	$r24,$r5
1c0081c8:	67f350d8 	bge	$r6,$r24,-3248(0x3f350) # 1c007518 <minmax_sequence_TestOneType_8+0x318>
1c0081cc:	53ffe7ff 	b	-28(0xfffffe4) # 1c0081b0 <minmax_sequence_TestOneType_8+0xfb0>
1c0081d0:	28001198 	ld.b	$r24,$r12,4(0x4)
1c0081d4:	00150085 	move	$r5,$r4
1c0081d8:	67f33b05 	bge	$r24,$r5,-3272(0x3f338) # 1c007510 <minmax_sequence_TestOneType_8+0x310>
1c0081dc:	53ffe7ff 	b	-28(0xfffffe4) # 1c0081c0 <minmax_sequence_TestOneType_8+0xfc0>
1c0081e0:	28000d85 	ld.b	$r5,$r12,3(0x3)
1c0081e4:	001501a4 	move	$r4,$r13
1c0081e8:	67f320a4 	bge	$r5,$r4,-3296(0x3f320) # 1c007508 <minmax_sequence_TestOneType_8+0x308>
1c0081ec:	53ffe7ff 	b	-28(0xfffffe4) # 1c0081d0 <minmax_sequence_TestOneType_8+0xfd0>
1c0081f0:	28000984 	ld.b	$r4,$r12,2(0x2)
1c0081f4:	001501ed 	move	$r13,$r15
1c0081f8:	67f3088d 	bge	$r4,$r13,-3320(0x3f308) # 1c007500 <minmax_sequence_TestOneType_8+0x300>
1c0081fc:	53ffe7ff 	b	-28(0xfffffe4) # 1c0081e0 <minmax_sequence_TestOneType_8+0xfe0>
1c008200:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c008204:	001503cf 	move	$r15,$r30
1c008208:	67f2f1af 	bge	$r13,$r15,-3344(0x3f2f0) # 1c0074f8 <minmax_sequence_TestOneType_8+0x2f8>
1c00820c:	53ffe7ff 	b	-28(0xfffffe4) # 1c0081f0 <minmax_sequence_TestOneType_8+0xff0>
1c008210:	2800042f 	ld.b	$r15,$r1,1(0x1)
1c008214:	0015019e 	move	$r30,$r12
1c008218:	0280042c 	addi.w	$r12,$r1,1(0x1)
1c00821c:	67f2d5fe 	bge	$r15,$r30,-3372(0x3f2d4) # 1c0074f0 <minmax_sequence_TestOneType_8+0x2f0>
1c008220:	53ffe3ff 	b	-32(0xfffffe0) # 1c008200 <minmax_sequence_TestOneType_8+0x1000>
1c008224:	001500fa 	move	$r26,$r7
1c008228:	53f173ff 	b	-3728(0xffff170) # 1c007398 <minmax_sequence_TestOneType_8+0x198>
1c00822c:	0015019d 	move	$r29,$r12
1c008230:	53f28fff 	b	-3444(0xffff28c) # 1c0074bc <minmax_sequence_TestOneType_8+0x2bc>
1c008234:	001500f9 	move	$r25,$r7
1c008238:	53f153ff 	b	-3760(0xffff150) # 1c007388 <minmax_sequence_TestOneType_8+0x188>
1c00823c:	0015019c 	move	$r28,$r12
1c008240:	53f26fff 	b	-3476(0xffff26c) # 1c0074ac <minmax_sequence_TestOneType_8+0x2ac>
1c008244:	0015019a 	move	$r26,$r12
1c008248:	53f243ff 	b	-3520(0xffff240) # 1c007488 <minmax_sequence_TestOneType_8+0x288>
1c00824c:	001500f3 	move	$r19,$r7
1c008250:	53f117ff 	b	-3820(0xffff114) # 1c007364 <minmax_sequence_TestOneType_8+0x164>
1c008254:	00150199 	move	$r25,$r12
1c008258:	53f223ff 	b	-3552(0xffff220) # 1c007478 <minmax_sequence_TestOneType_8+0x278>
1c00825c:	001500f2 	move	$r18,$r7
1c008260:	53f0f7ff 	b	-3852(0xffff0f4) # 1c007354 <minmax_sequence_TestOneType_8+0x154>
1c008264:	03400000 	andi	$r0,$r0,0x0
1c008268:	03400000 	andi	$r0,$r0,0x0
1c00826c:	03400000 	andi	$r0,$r0,0x0

1c008270 <minmax_sequence_TestOneType_u8>:
minmax_sequence_TestOneType_u8():
1c008270:	1c000f0c 	pcaddu12i	$r12,120(0x78)
1c008274:	028d018c 	addi.w	$r12,$r12,832(0x340)
1c008278:	28800184 	ld.w	$r4,$r12,0
1c00827c:	02b28063 	addi.w	$r3,$r3,-864(0xca0)
1c008280:	298d6076 	st.w	$r22,$r3,856(0x358)
1c008284:	0281ec84 	addi.w	$r4,$r4,123(0x7b)
1c008288:	298d5077 	st.w	$r23,$r3,852(0x354)
1c00828c:	298d7061 	st.w	$r1,$r3,860(0x35c)
1c008290:	298d4078 	st.w	$r24,$r3,848(0x350)
1c008294:	298d3079 	st.w	$r25,$r3,844(0x34c)
1c008298:	298d207a 	st.w	$r26,$r3,840(0x348)
1c00829c:	298d107b 	st.w	$r27,$r3,836(0x344)
1c0082a0:	298d007c 	st.w	$r28,$r3,832(0x340)
1c0082a4:	298cf07d 	st.w	$r29,$r3,828(0x33c)
1c0082a8:	298ce07e 	st.w	$r30,$r3,824(0x338)
1c0082ac:	298cd07f 	st.w	$r31,$r3,820(0x334)
1c0082b0:	54554000 	bl	21824(0x5540) # 1c00d7f0 <srand>
1c0082b4:	02804077 	addi.w	$r23,$r3,16(0x10)
1c0082b8:	00150005 	move	$r5,$r0
1c0082bc:	001502f6 	move	$r22,$r23
1c0082c0:	580050a0 	beq	$r5,$r0,80(0x50) # 1c008310 <minmax_sequence_TestOneType_u8+0xa0>
1c0082c4:	02804478 	addi.w	$r24,$r3,17(0x11)
1c0082c8:	5454e800 	bl	21736(0x54e8) # 1c00d7b0 <rand>
1c0082cc:	293fff04 	st.b	$r4,$r24,-1(0xfff)
1c0082d0:	5454e000 	bl	21728(0x54e0) # 1c00d7b0 <rand>
1c0082d4:	29000304 	st.b	$r4,$r24,0
1c0082d8:	5454d800 	bl	21720(0x54d8) # 1c00d7b0 <rand>
1c0082dc:	29000704 	st.b	$r4,$r24,1(0x1)
1c0082e0:	5454d000 	bl	21712(0x54d0) # 1c00d7b0 <rand>
1c0082e4:	29000b04 	st.b	$r4,$r24,2(0x2)
1c0082e8:	5454c800 	bl	21704(0x54c8) # 1c00d7b0 <rand>
1c0082ec:	29000f04 	st.b	$r4,$r24,3(0x3)
1c0082f0:	5454c000 	bl	21696(0x54c0) # 1c00d7b0 <rand>
1c0082f4:	29001304 	st.b	$r4,$r24,4(0x4)
1c0082f8:	5454b800 	bl	21688(0x54b8) # 1c00d7b0 <rand>
1c0082fc:	02801b16 	addi.w	$r22,$r24,6(0x6)
1c008300:	293ffec4 	st.b	$r4,$r22,-1(0xfff)
1c008304:	028cc066 	addi.w	$r6,$r3,816(0x330)
1c008308:	580056c6 	beq	$r22,$r6,84(0x54) # 1c00835c <minmax_sequence_TestOneType_u8+0xec>
1c00830c:	03400000 	andi	$r0,$r0,0x0
1c008310:	028022d6 	addi.w	$r22,$r22,8(0x8)
1c008314:	54549c00 	bl	21660(0x549c) # 1c00d7b0 <rand>
1c008318:	293fe2c4 	st.b	$r4,$r22,-8(0xff8)
1c00831c:	54549400 	bl	21652(0x5494) # 1c00d7b0 <rand>
1c008320:	293fe6c4 	st.b	$r4,$r22,-7(0xff9)
1c008324:	54548c00 	bl	21644(0x548c) # 1c00d7b0 <rand>
1c008328:	293feac4 	st.b	$r4,$r22,-6(0xffa)
1c00832c:	54548400 	bl	21636(0x5484) # 1c00d7b0 <rand>
1c008330:	293feec4 	st.b	$r4,$r22,-5(0xffb)
1c008334:	54547c00 	bl	21628(0x547c) # 1c00d7b0 <rand>
1c008338:	293ff2c4 	st.b	$r4,$r22,-4(0xffc)
1c00833c:	54547400 	bl	21620(0x5474) # 1c00d7b0 <rand>
1c008340:	293ff6c4 	st.b	$r4,$r22,-3(0xffd)
1c008344:	54546c00 	bl	21612(0x546c) # 1c00d7b0 <rand>
1c008348:	293ffac4 	st.b	$r4,$r22,-2(0xffe)
1c00834c:	54546400 	bl	21604(0x5464) # 1c00d7b0 <rand>
1c008350:	293ffec4 	st.b	$r4,$r22,-1(0xfff)
1c008354:	028cc067 	addi.w	$r7,$r3,816(0x330)
1c008358:	5fffbac7 	bne	$r22,$r7,-72(0x3ffb8) # 1c008310 <minmax_sequence_TestOneType_u8+0xa0>
1c00835c:	02804476 	addi.w	$r22,$r3,17(0x11)
1c008360:	2a00407f 	ld.bu	$r31,$r3,16(0x10)
1c008364:	028cc061 	addi.w	$r1,$r3,816(0x330)
1c008368:	0011582e 	sub.w	$r14,$r1,$r22
1c00836c:	03401dc8 	andi	$r8,$r14,0x7
1c008370:	001502c6 	move	$r6,$r22
1c008374:	001503e7 	move	$r7,$r31
1c008378:	5800b100 	beq	$r8,$r0,176(0xb0) # 1c008428 <minmax_sequence_TestOneType_u8+0x1b8>
1c00837c:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c008380:	5800910f 	beq	$r8,$r15,144(0x90) # 1c008410 <minmax_sequence_TestOneType_u8+0x1a0>
1c008384:	02800809 	addi.w	$r9,$r0,2(0x2)
1c008388:	58007909 	beq	$r8,$r9,120(0x78) # 1c008400 <minmax_sequence_TestOneType_u8+0x190>
1c00838c:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c008390:	5800610a 	beq	$r8,$r10,96(0x60) # 1c0083f0 <minmax_sequence_TestOneType_u8+0x180>
1c008394:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c008398:	5800450b 	beq	$r8,$r11,68(0x44) # 1c0083dc <minmax_sequence_TestOneType_u8+0x16c>
1c00839c:	02801410 	addi.w	$r16,$r0,5(0x5)
1c0083a0:	58002d10 	beq	$r8,$r16,44(0x2c) # 1c0083cc <minmax_sequence_TestOneType_u8+0x15c>
1c0083a4:	02801811 	addi.w	$r17,$r0,6(0x6)
1c0083a8:	58001511 	beq	$r8,$r17,20(0x14) # 1c0083bc <minmax_sequence_TestOneType_u8+0x14c>
1c0083ac:	2a0002c7 	ld.bu	$r7,$r22,0
1c0083b0:	6c000be7 	bgeu	$r31,$r7,8(0x8) # 1c0083b8 <minmax_sequence_TestOneType_u8+0x148>
1c0083b4:	001503e7 	move	$r7,$r31
1c0083b8:	028006c6 	addi.w	$r6,$r22,1(0x1)
1c0083bc:	2a0000d2 	ld.bu	$r18,$r6,0
1c0083c0:	680f0cf2 	bltu	$r7,$r18,3852(0xf0c) # 1c0092cc <minmax_sequence_TestOneType_u8+0x105c>
1c0083c4:	00150247 	move	$r7,$r18
1c0083c8:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c0083cc:	2a0000d3 	ld.bu	$r19,$r6,0
1c0083d0:	680eecf3 	bltu	$r7,$r19,3820(0xeec) # 1c0092bc <minmax_sequence_TestOneType_u8+0x104c>
1c0083d4:	00150267 	move	$r7,$r19
1c0083d8:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c0083dc:	2a0000d4 	ld.bu	$r20,$r6,0
1c0083e0:	6c0008f4 	bgeu	$r7,$r20,8(0x8) # 1c0083e8 <minmax_sequence_TestOneType_u8+0x178>
1c0083e4:	001500f4 	move	$r20,$r7
1c0083e8:	00150287 	move	$r7,$r20
1c0083ec:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c0083f0:	2a0000d9 	ld.bu	$r25,$r6,0
1c0083f4:	680eb0f9 	bltu	$r7,$r25,3760(0xeb0) # 1c0092a4 <minmax_sequence_TestOneType_u8+0x1034>
1c0083f8:	00150327 	move	$r7,$r25
1c0083fc:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c008400:	2a0000da 	ld.bu	$r26,$r6,0
1c008404:	680e90fa 	bltu	$r7,$r26,3728(0xe90) # 1c009294 <minmax_sequence_TestOneType_u8+0x1024>
1c008408:	00150347 	move	$r7,$r26
1c00840c:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c008410:	2a0000d8 	ld.bu	$r24,$r6,0
1c008414:	680d38f8 	bltu	$r7,$r24,3384(0xd38) # 1c00914c <minmax_sequence_TestOneType_u8+0xedc>
1c008418:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c00841c:	028cc07b 	addi.w	$r27,$r3,816(0x330)
1c008420:	00150307 	move	$r7,$r24
1c008424:	580058db 	beq	$r6,$r27,88(0x58) # 1c00847c <minmax_sequence_TestOneType_u8+0x20c>
1c008428:	2a0000dc 	ld.bu	$r28,$r6,0
1c00842c:	680db0fc 	bltu	$r7,$r28,3504(0xdb0) # 1c0091dc <minmax_sequence_TestOneType_u8+0xf6c>
1c008430:	2a0004cf 	ld.bu	$r15,$r6,1(0x1)
1c008434:	028004dd 	addi.w	$r29,$r6,1(0x1)
1c008438:	680d978f 	bltu	$r28,$r15,3476(0xd94) # 1c0091cc <minmax_sequence_TestOneType_u8+0xf5c>
1c00843c:	2a0007ad 	ld.bu	$r13,$r29,1(0x1)
1c008440:	680d7ded 	bltu	$r15,$r13,3452(0xd7c) # 1c0091bc <minmax_sequence_TestOneType_u8+0xf4c>
1c008444:	2a000bbe 	ld.bu	$r30,$r29,2(0x2)
1c008448:	680d65be 	bltu	$r13,$r30,3428(0xd64) # 1c0091ac <minmax_sequence_TestOneType_u8+0xf3c>
1c00844c:	2a000fac 	ld.bu	$r12,$r29,3(0x3)
1c008450:	680d4fcc 	bltu	$r30,$r12,3404(0xd4c) # 1c00919c <minmax_sequence_TestOneType_u8+0xf2c>
1c008454:	2a0013a4 	ld.bu	$r4,$r29,4(0x4)
1c008458:	680d3584 	bltu	$r12,$r4,3380(0xd34) # 1c00918c <minmax_sequence_TestOneType_u8+0xf1c>
1c00845c:	2a0017a5 	ld.bu	$r5,$r29,5(0x5)
1c008460:	680d1c85 	bltu	$r4,$r5,3356(0xd1c) # 1c00917c <minmax_sequence_TestOneType_u8+0xf0c>
1c008464:	2a001bb8 	ld.bu	$r24,$r29,6(0x6)
1c008468:	680cfcb8 	bltu	$r5,$r24,3324(0xcfc) # 1c009164 <minmax_sequence_TestOneType_u8+0xef4>
1c00846c:	02801fa6 	addi.w	$r6,$r29,7(0x7)
1c008470:	028cc061 	addi.w	$r1,$r3,816(0x330)
1c008474:	00150307 	move	$r7,$r24
1c008478:	5fffb0c1 	bne	$r6,$r1,-80(0x3ffb0) # 1c008428 <minmax_sequence_TestOneType_u8+0x1b8>
1c00847c:	028cc068 	addi.w	$r8,$r3,816(0x330)
1c008480:	1c000f0e 	pcaddu12i	$r14,120(0x78)
1c008484:	028541ce 	addi.w	$r14,$r14,336(0x150)
1c008488:	00115909 	sub.w	$r9,$r8,$r22
1c00848c:	298001d8 	st.w	$r24,$r14,0
1c008490:	03401d2a 	andi	$r10,$r9,0x7
1c008494:	001503ec 	move	$r12,$r31
1c008498:	001502c1 	move	$r1,$r22
1c00849c:	5800b140 	beq	$r10,$r0,176(0xb0) # 1c00854c <minmax_sequence_TestOneType_u8+0x2dc>
1c0084a0:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c0084a4:	5800914b 	beq	$r10,$r11,144(0x90) # 1c008534 <minmax_sequence_TestOneType_u8+0x2c4>
1c0084a8:	02800810 	addi.w	$r16,$r0,2(0x2)
1c0084ac:	58007950 	beq	$r10,$r16,120(0x78) # 1c008524 <minmax_sequence_TestOneType_u8+0x2b4>
1c0084b0:	02800c11 	addi.w	$r17,$r0,3(0x3)
1c0084b4:	58006151 	beq	$r10,$r17,96(0x60) # 1c008514 <minmax_sequence_TestOneType_u8+0x2a4>
1c0084b8:	02801012 	addi.w	$r18,$r0,4(0x4)
1c0084bc:	58004552 	beq	$r10,$r18,68(0x44) # 1c008500 <minmax_sequence_TestOneType_u8+0x290>
1c0084c0:	02801413 	addi.w	$r19,$r0,5(0x5)
1c0084c4:	58002d53 	beq	$r10,$r19,44(0x2c) # 1c0084f0 <minmax_sequence_TestOneType_u8+0x280>
1c0084c8:	02801814 	addi.w	$r20,$r0,6(0x6)
1c0084cc:	58001554 	beq	$r10,$r20,20(0x14) # 1c0084e0 <minmax_sequence_TestOneType_u8+0x270>
1c0084d0:	2a0002cc 	ld.bu	$r12,$r22,0
1c0084d4:	6c00099f 	bgeu	$r12,$r31,8(0x8) # 1c0084dc <minmax_sequence_TestOneType_u8+0x26c>
1c0084d8:	001503ec 	move	$r12,$r31
1c0084dc:	028006c1 	addi.w	$r1,$r22,1(0x1)
1c0084e0:	2a000039 	ld.bu	$r25,$r1,0
1c0084e4:	680de32c 	bltu	$r25,$r12,3552(0xde0) # 1c0092c4 <minmax_sequence_TestOneType_u8+0x1054>
1c0084e8:	0015032c 	move	$r12,$r25
1c0084ec:	02800421 	addi.w	$r1,$r1,1(0x1)
1c0084f0:	2a00003a 	ld.bu	$r26,$r1,0
1c0084f4:	680dc34c 	bltu	$r26,$r12,3520(0xdc0) # 1c0092b4 <minmax_sequence_TestOneType_u8+0x1044>
1c0084f8:	0015034c 	move	$r12,$r26
1c0084fc:	02800421 	addi.w	$r1,$r1,1(0x1)
1c008500:	2a00003b 	ld.bu	$r27,$r1,0
1c008504:	6c000b6c 	bgeu	$r27,$r12,8(0x8) # 1c00850c <minmax_sequence_TestOneType_u8+0x29c>
1c008508:	0015019b 	move	$r27,$r12
1c00850c:	0015036c 	move	$r12,$r27
1c008510:	02800421 	addi.w	$r1,$r1,1(0x1)
1c008514:	2a00003c 	ld.bu	$r28,$r1,0
1c008518:	680d978c 	bltu	$r28,$r12,3476(0xd94) # 1c0092ac <minmax_sequence_TestOneType_u8+0x103c>
1c00851c:	0015038c 	move	$r12,$r28
1c008520:	02800421 	addi.w	$r1,$r1,1(0x1)
1c008524:	2a00003d 	ld.bu	$r29,$r1,0
1c008528:	680d77ac 	bltu	$r29,$r12,3444(0xd74) # 1c00929c <minmax_sequence_TestOneType_u8+0x102c>
1c00852c:	001503ac 	move	$r12,$r29
1c008530:	02800421 	addi.w	$r1,$r1,1(0x1)
1c008534:	2a000027 	ld.bu	$r7,$r1,0
1c008538:	680cb8ec 	bltu	$r7,$r12,3256(0xcb8) # 1c0091f0 <minmax_sequence_TestOneType_u8+0xf80>
1c00853c:	02800421 	addi.w	$r1,$r1,1(0x1)
1c008540:	028cc06f 	addi.w	$r15,$r3,816(0x330)
1c008544:	001500ec 	move	$r12,$r7
1c008548:	5800582f 	beq	$r1,$r15,88(0x58) # 1c0085a0 <minmax_sequence_TestOneType_u8+0x330>
1c00854c:	2a00003e 	ld.bu	$r30,$r1,0
1c008550:	680d33cc 	bltu	$r30,$r12,3376(0xd30) # 1c009280 <minmax_sequence_TestOneType_u8+0x1010>
1c008554:	2a00042f 	ld.bu	$r15,$r1,1(0x1)
1c008558:	0280042c 	addi.w	$r12,$r1,1(0x1)
1c00855c:	680d15fe 	bltu	$r15,$r30,3348(0xd14) # 1c009270 <minmax_sequence_TestOneType_u8+0x1000>
1c008560:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c008564:	680cfdaf 	bltu	$r13,$r15,3324(0xcfc) # 1c009260 <minmax_sequence_TestOneType_u8+0xff0>
1c008568:	2a000984 	ld.bu	$r4,$r12,2(0x2)
1c00856c:	680ce48d 	bltu	$r4,$r13,3300(0xce4) # 1c009250 <minmax_sequence_TestOneType_u8+0xfe0>
1c008570:	2a000d85 	ld.bu	$r5,$r12,3(0x3)
1c008574:	680ccca4 	bltu	$r5,$r4,3276(0xccc) # 1c009240 <minmax_sequence_TestOneType_u8+0xfd0>
1c008578:	2a001198 	ld.bu	$r24,$r12,4(0x4)
1c00857c:	680cb705 	bltu	$r24,$r5,3252(0xcb4) # 1c009230 <minmax_sequence_TestOneType_u8+0xfc0>
1c008580:	2a001586 	ld.bu	$r6,$r12,5(0x5)
1c008584:	680c9cd8 	bltu	$r6,$r24,3228(0xc9c) # 1c009220 <minmax_sequence_TestOneType_u8+0xfb0>
1c008588:	2a001987 	ld.bu	$r7,$r12,6(0x6)
1c00858c:	680c7ce6 	bltu	$r7,$r6,3196(0xc7c) # 1c009208 <minmax_sequence_TestOneType_u8+0xf98>
1c008590:	02801d81 	addi.w	$r1,$r12,7(0x7)
1c008594:	028cc06e 	addi.w	$r14,$r3,816(0x330)
1c008598:	001500ec 	move	$r12,$r7
1c00859c:	5fffb02e 	bne	$r1,$r14,-80(0x3ffb0) # 1c00854c <minmax_sequence_TestOneType_u8+0x2dc>
1c0085a0:	2a0006e8 	ld.bu	$r8,$r23,1(0x1)
1c0085a4:	1c000f1b 	pcaddu12i	$r27,120(0x78)
1c0085a8:	0280a37b 	addi.w	$r27,$r27,40(0x28)
1c0085ac:	02800409 	addi.w	$r9,$r0,1(0x1)
1c0085b0:	00115d3d 	sub.w	$r29,$r9,$r23
1c0085b4:	29800367 	st.w	$r7,$r27,0
1c0085b8:	028cbc7a 	addi.w	$r26,$r3,815(0x32f)
1c0085bc:	001503ee 	move	$r14,$r31
1c0085c0:	0015000f 	move	$r15,$r0
1c0085c4:	001076ea 	add.w	$r10,$r23,$r29
1c0085c8:	6c000d1f 	bgeu	$r8,$r31,12(0xc) # 1c0085d4 <minmax_sequence_TestOneType_u8+0x364>
1c0085cc:	0015014f 	move	$r15,$r10
1c0085d0:	0015010e 	move	$r14,$r8
1c0085d4:	028006f1 	addi.w	$r17,$r23,1(0x1)
1c0085d8:	2a00062b 	ld.bu	$r11,$r17,1(0x1)
1c0085dc:	001047b0 	add.w	$r16,$r29,$r17
1c0085e0:	6c000d6e 	bgeu	$r11,$r14,12(0xc) # 1c0085ec <minmax_sequence_TestOneType_u8+0x37c>
1c0085e4:	0015020f 	move	$r15,$r16
1c0085e8:	0015016e 	move	$r14,$r11
1c0085ec:	02800631 	addi.w	$r17,$r17,1(0x1)
1c0085f0:	2a000632 	ld.bu	$r18,$r17,1(0x1)
1c0085f4:	001047b3 	add.w	$r19,$r29,$r17
1c0085f8:	6c000e4e 	bgeu	$r18,$r14,12(0xc) # 1c008604 <minmax_sequence_TestOneType_u8+0x394>
1c0085fc:	0015026f 	move	$r15,$r19
1c008600:	0015024e 	move	$r14,$r18
1c008604:	2a000a39 	ld.bu	$r25,$r17,2(0x2)
1c008608:	02800634 	addi.w	$r20,$r17,1(0x1)
1c00860c:	001053bc 	add.w	$r28,$r29,$r20
1c008610:	6c000f2e 	bgeu	$r25,$r14,12(0xc) # 1c00861c <minmax_sequence_TestOneType_u8+0x3ac>
1c008614:	0015038f 	move	$r15,$r28
1c008618:	0015032e 	move	$r14,$r25
1c00861c:	2a000e2d 	ld.bu	$r13,$r17,3(0x3)
1c008620:	02800a3e 	addi.w	$r30,$r17,2(0x2)
1c008624:	00107ba4 	add.w	$r4,$r29,$r30
1c008628:	6c000dae 	bgeu	$r13,$r14,12(0xc) # 1c008634 <minmax_sequence_TestOneType_u8+0x3c4>
1c00862c:	0015008f 	move	$r15,$r4
1c008630:	001501ae 	move	$r14,$r13
1c008634:	2a001238 	ld.bu	$r24,$r17,4(0x4)
1c008638:	02800e25 	addi.w	$r5,$r17,3(0x3)
1c00863c:	001017a6 	add.w	$r6,$r29,$r5
1c008640:	6c000f0e 	bgeu	$r24,$r14,12(0xc) # 1c00864c <minmax_sequence_TestOneType_u8+0x3dc>
1c008644:	001500cf 	move	$r15,$r6
1c008648:	0015030e 	move	$r14,$r24
1c00864c:	2a001621 	ld.bu	$r1,$r17,5(0x5)
1c008650:	02801227 	addi.w	$r7,$r17,4(0x4)
1c008654:	00101fac 	add.w	$r12,$r29,$r7
1c008658:	6c000c2e 	bgeu	$r1,$r14,12(0xc) # 1c008664 <minmax_sequence_TestOneType_u8+0x3f4>
1c00865c:	0015018f 	move	$r15,$r12
1c008660:	0015002e 	move	$r14,$r1
1c008664:	2a001a29 	ld.bu	$r9,$r17,6(0x6)
1c008668:	02801628 	addi.w	$r8,$r17,5(0x5)
1c00866c:	001023aa 	add.w	$r10,$r29,$r8
1c008670:	6c000d2e 	bgeu	$r9,$r14,12(0xc) # 1c00867c <minmax_sequence_TestOneType_u8+0x40c>
1c008674:	0015014f 	move	$r15,$r10
1c008678:	0015012e 	move	$r14,$r9
1c00867c:	2a001e30 	ld.bu	$r16,$r17,7(0x7)
1c008680:	02801a2b 	addi.w	$r11,$r17,6(0x6)
1c008684:	00102fb2 	add.w	$r18,$r29,$r11
1c008688:	6c000e0e 	bgeu	$r16,$r14,12(0xc) # 1c008694 <minmax_sequence_TestOneType_u8+0x424>
1c00868c:	0015024f 	move	$r15,$r18
1c008690:	0015020e 	move	$r14,$r16
1c008694:	2a002233 	ld.bu	$r19,$r17,8(0x8)
1c008698:	02801e34 	addi.w	$r20,$r17,7(0x7)
1c00869c:	001053b9 	add.w	$r25,$r29,$r20
1c0086a0:	6c000e6e 	bgeu	$r19,$r14,12(0xc) # 1c0086ac <minmax_sequence_TestOneType_u8+0x43c>
1c0086a4:	0015032f 	move	$r15,$r25
1c0086a8:	0015026e 	move	$r14,$r19
1c0086ac:	2a00263e 	ld.bu	$r30,$r17,9(0x9)
1c0086b0:	0280223c 	addi.w	$r28,$r17,8(0x8)
1c0086b4:	001073ad 	add.w	$r13,$r29,$r28
1c0086b8:	6c000fce 	bgeu	$r30,$r14,12(0xc) # 1c0086c4 <minmax_sequence_TestOneType_u8+0x454>
1c0086bc:	001501af 	move	$r15,$r13
1c0086c0:	001503ce 	move	$r14,$r30
1c0086c4:	2a002a25 	ld.bu	$r5,$r17,10(0xa)
1c0086c8:	02802624 	addi.w	$r4,$r17,9(0x9)
1c0086cc:	001013b8 	add.w	$r24,$r29,$r4
1c0086d0:	6c000cae 	bgeu	$r5,$r14,12(0xc) # 1c0086dc <minmax_sequence_TestOneType_u8+0x46c>
1c0086d4:	0015030f 	move	$r15,$r24
1c0086d8:	001500ae 	move	$r14,$r5
1c0086dc:	2a002e27 	ld.bu	$r7,$r17,11(0xb)
1c0086e0:	02802a26 	addi.w	$r6,$r17,10(0xa)
1c0086e4:	00101ba1 	add.w	$r1,$r29,$r6
1c0086e8:	6c000cee 	bgeu	$r7,$r14,12(0xc) # 1c0086f4 <minmax_sequence_TestOneType_u8+0x484>
1c0086ec:	0015002f 	move	$r15,$r1
1c0086f0:	001500ee 	move	$r14,$r7
1c0086f4:	2a003228 	ld.bu	$r8,$r17,12(0xc)
1c0086f8:	02802e2c 	addi.w	$r12,$r17,11(0xb)
1c0086fc:	001033a9 	add.w	$r9,$r29,$r12
1c008700:	6c000d0e 	bgeu	$r8,$r14,12(0xc) # 1c00870c <minmax_sequence_TestOneType_u8+0x49c>
1c008704:	0015012f 	move	$r15,$r9
1c008708:	0015010e 	move	$r14,$r8
1c00870c:	2a00362b 	ld.bu	$r11,$r17,13(0xd)
1c008710:	0280322a 	addi.w	$r10,$r17,12(0xc)
1c008714:	00102bb0 	add.w	$r16,$r29,$r10
1c008718:	6c000d6e 	bgeu	$r11,$r14,12(0xc) # 1c008724 <minmax_sequence_TestOneType_u8+0x4b4>
1c00871c:	0015020f 	move	$r15,$r16
1c008720:	0015016e 	move	$r14,$r11
1c008724:	02803631 	addi.w	$r17,$r17,13(0xd)
1c008728:	5ffeb351 	bne	$r26,$r17,-336(0x3feb0) # 1c0085d8 <minmax_sequence_TestOneType_u8+0x368>
1c00872c:	2a0006f4 	ld.bu	$r20,$r23,1(0x1)
1c008730:	1c000f1c 	pcaddu12i	$r28,120(0x78)
1c008734:	02ba639c 	addi.w	$r28,$r28,-360(0xe98)
1c008738:	2980038f 	st.w	$r15,$r28,0
1c00873c:	001503ee 	move	$r14,$r31
1c008740:	00150012 	move	$r18,$r0
1c008744:	001076f3 	add.w	$r19,$r23,$r29
1c008748:	6c000ff4 	bgeu	$r31,$r20,12(0xc) # 1c008754 <minmax_sequence_TestOneType_u8+0x4e4>
1c00874c:	00150272 	move	$r18,$r19
1c008750:	0015028e 	move	$r14,$r20
1c008754:	028006ed 	addi.w	$r13,$r23,1(0x1)
1c008758:	2a0005b9 	ld.bu	$r25,$r13,1(0x1)
1c00875c:	001037be 	add.w	$r30,$r29,$r13
1c008760:	6c000dd9 	bgeu	$r14,$r25,12(0xc) # 1c00876c <minmax_sequence_TestOneType_u8+0x4fc>
1c008764:	001503d2 	move	$r18,$r30
1c008768:	0015032e 	move	$r14,$r25
1c00876c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c008770:	2a0005a4 	ld.bu	$r4,$r13,1(0x1)
1c008774:	001037a5 	add.w	$r5,$r29,$r13
1c008778:	6c000dc4 	bgeu	$r14,$r4,12(0xc) # 1c008784 <minmax_sequence_TestOneType_u8+0x514>
1c00877c:	001500b2 	move	$r18,$r5
1c008780:	0015008e 	move	$r14,$r4
1c008784:	2a0009a6 	ld.bu	$r6,$r13,2(0x2)
1c008788:	028005b8 	addi.w	$r24,$r13,1(0x1)
1c00878c:	001063a7 	add.w	$r7,$r29,$r24
1c008790:	6c000dc6 	bgeu	$r14,$r6,12(0xc) # 1c00879c <minmax_sequence_TestOneType_u8+0x52c>
1c008794:	001500f2 	move	$r18,$r7
1c008798:	001500ce 	move	$r14,$r6
1c00879c:	2a000dac 	ld.bu	$r12,$r13,3(0x3)
1c0087a0:	028009a1 	addi.w	$r1,$r13,2(0x2)
1c0087a4:	001007a8 	add.w	$r8,$r29,$r1
1c0087a8:	6c000dcc 	bgeu	$r14,$r12,12(0xc) # 1c0087b4 <minmax_sequence_TestOneType_u8+0x544>
1c0087ac:	00150112 	move	$r18,$r8
1c0087b0:	0015018e 	move	$r14,$r12
1c0087b4:	2a0011aa 	ld.bu	$r10,$r13,4(0x4)
1c0087b8:	02800da9 	addi.w	$r9,$r13,3(0x3)
1c0087bc:	001027ab 	add.w	$r11,$r29,$r9
1c0087c0:	6c000dca 	bgeu	$r14,$r10,12(0xc) # 1c0087cc <minmax_sequence_TestOneType_u8+0x55c>
1c0087c4:	00150172 	move	$r18,$r11
1c0087c8:	0015014e 	move	$r14,$r10
1c0087cc:	2a0015b1 	ld.bu	$r17,$r13,5(0x5)
1c0087d0:	028011b0 	addi.w	$r16,$r13,4(0x4)
1c0087d4:	001043af 	add.w	$r15,$r29,$r16
1c0087d8:	6c000dd1 	bgeu	$r14,$r17,12(0xc) # 1c0087e4 <minmax_sequence_TestOneType_u8+0x574>
1c0087dc:	001501f2 	move	$r18,$r15
1c0087e0:	0015022e 	move	$r14,$r17
1c0087e4:	2a0019b3 	ld.bu	$r19,$r13,6(0x6)
1c0087e8:	028015b4 	addi.w	$r20,$r13,5(0x5)
1c0087ec:	001053b9 	add.w	$r25,$r29,$r20
1c0087f0:	6c000dd3 	bgeu	$r14,$r19,12(0xc) # 1c0087fc <minmax_sequence_TestOneType_u8+0x58c>
1c0087f4:	00150332 	move	$r18,$r25
1c0087f8:	0015026e 	move	$r14,$r19
1c0087fc:	2a001da4 	ld.bu	$r4,$r13,7(0x7)
1c008800:	028019be 	addi.w	$r30,$r13,6(0x6)
1c008804:	00107ba5 	add.w	$r5,$r29,$r30
1c008808:	6c000dc4 	bgeu	$r14,$r4,12(0xc) # 1c008814 <minmax_sequence_TestOneType_u8+0x5a4>
1c00880c:	001500b2 	move	$r18,$r5
1c008810:	0015008e 	move	$r14,$r4
1c008814:	2a0021a6 	ld.bu	$r6,$r13,8(0x8)
1c008818:	02801db8 	addi.w	$r24,$r13,7(0x7)
1c00881c:	001063a7 	add.w	$r7,$r29,$r24
1c008820:	6c000dc6 	bgeu	$r14,$r6,12(0xc) # 1c00882c <minmax_sequence_TestOneType_u8+0x5bc>
1c008824:	001500f2 	move	$r18,$r7
1c008828:	001500ce 	move	$r14,$r6
1c00882c:	2a0025ac 	ld.bu	$r12,$r13,9(0x9)
1c008830:	028021a1 	addi.w	$r1,$r13,8(0x8)
1c008834:	001007a8 	add.w	$r8,$r29,$r1
1c008838:	6c000dcc 	bgeu	$r14,$r12,12(0xc) # 1c008844 <minmax_sequence_TestOneType_u8+0x5d4>
1c00883c:	00150112 	move	$r18,$r8
1c008840:	0015018e 	move	$r14,$r12
1c008844:	2a0029aa 	ld.bu	$r10,$r13,10(0xa)
1c008848:	028025a9 	addi.w	$r9,$r13,9(0x9)
1c00884c:	001027ab 	add.w	$r11,$r29,$r9
1c008850:	6c000dca 	bgeu	$r14,$r10,12(0xc) # 1c00885c <minmax_sequence_TestOneType_u8+0x5ec>
1c008854:	00150172 	move	$r18,$r11
1c008858:	0015014e 	move	$r14,$r10
1c00885c:	2a002db1 	ld.bu	$r17,$r13,11(0xb)
1c008860:	028029b0 	addi.w	$r16,$r13,10(0xa)
1c008864:	001043af 	add.w	$r15,$r29,$r16
1c008868:	6c000dd1 	bgeu	$r14,$r17,12(0xc) # 1c008874 <minmax_sequence_TestOneType_u8+0x604>
1c00886c:	001501f2 	move	$r18,$r15
1c008870:	0015022e 	move	$r14,$r17
1c008874:	2a0031b3 	ld.bu	$r19,$r13,12(0xc)
1c008878:	02802db4 	addi.w	$r20,$r13,11(0xb)
1c00887c:	001053b9 	add.w	$r25,$r29,$r20
1c008880:	6c000dd3 	bgeu	$r14,$r19,12(0xc) # 1c00888c <minmax_sequence_TestOneType_u8+0x61c>
1c008884:	00150332 	move	$r18,$r25
1c008888:	0015026e 	move	$r14,$r19
1c00888c:	2a0035a4 	ld.bu	$r4,$r13,13(0xd)
1c008890:	028031be 	addi.w	$r30,$r13,12(0xc)
1c008894:	00107ba5 	add.w	$r5,$r29,$r30
1c008898:	6c000dc4 	bgeu	$r14,$r4,12(0xc) # 1c0088a4 <minmax_sequence_TestOneType_u8+0x634>
1c00889c:	001500b2 	move	$r18,$r5
1c0088a0:	0015008e 	move	$r14,$r4
1c0088a4:	028035ad 	addi.w	$r13,$r13,13(0xd)
1c0088a8:	5ffeb34d 	bne	$r26,$r13,-336(0x3feb0) # 1c008758 <minmax_sequence_TestOneType_u8+0x4e8>
1c0088ac:	1c000f06 	pcaddu12i	$r6,120(0x78)
1c0088b0:	02b460c6 	addi.w	$r6,$r6,-744(0xd18)
1c0088b4:	1c000f18 	pcaddu12i	$r24,120(0x78)
1c0088b8:	02b40318 	addi.w	$r24,$r24,-768(0xd00)
1c0088bc:	298000d2 	st.w	$r18,$r6,0
1c0088c0:	544e8000 	bl	20096(0x4e80) # 1c00d740 <get_clock>
1c0088c4:	28800305 	ld.w	$r5,$r24,0
1c0088c8:	1c000f1e 	pcaddu12i	$r30,120(0x78)
1c0088cc:	28b3e3de 	ld.w	$r30,$r30,-776(0xcf8)
1c0088d0:	298003c4 	st.w	$r4,$r30,0
1c0088d4:	00150019 	move	$r25,$r0
1c0088d8:	6401a405 	bge	$r0,$r5,420(0x1a4) # 1c008a7c <minmax_sequence_TestOneType_u8+0x80c>
1c0088dc:	00150012 	move	$r18,$r0
1c0088e0:	028c82f3 	addi.w	$r19,$r23,800(0x320)
1c0088e4:	1c000f14 	pcaddu12i	$r20,120(0x78)
1c0088e8:	02b3b294 	addi.w	$r20,$r20,-788(0xcec)
1c0088ec:	03400000 	andi	$r0,$r0,0x0
1c0088f0:	00115a67 	sub.w	$r7,$r19,$r22
1c0088f4:	03401ce1 	andi	$r1,$r7,0x7
1c0088f8:	001502cc 	move	$r12,$r22
1c0088fc:	001503ee 	move	$r14,$r31
1c008900:	5800c020 	beq	$r1,$r0,192(0xc0) # 1c0089c0 <minmax_sequence_TestOneType_u8+0x750>
1c008904:	02800408 	addi.w	$r8,$r0,1(0x1)
1c008908:	5800a028 	beq	$r1,$r8,160(0xa0) # 1c0089a8 <minmax_sequence_TestOneType_u8+0x738>
1c00890c:	02800809 	addi.w	$r9,$r0,2(0x2)
1c008910:	58008429 	beq	$r1,$r9,132(0x84) # 1c008994 <minmax_sequence_TestOneType_u8+0x724>
1c008914:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c008918:	5800682a 	beq	$r1,$r10,104(0x68) # 1c008980 <minmax_sequence_TestOneType_u8+0x710>
1c00891c:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c008920:	58004c2b 	beq	$r1,$r11,76(0x4c) # 1c00896c <minmax_sequence_TestOneType_u8+0x6fc>
1c008924:	02801410 	addi.w	$r16,$r0,5(0x5)
1c008928:	58003030 	beq	$r1,$r16,48(0x30) # 1c008958 <minmax_sequence_TestOneType_u8+0x6e8>
1c00892c:	02801811 	addi.w	$r17,$r0,6(0x6)
1c008930:	58001431 	beq	$r1,$r17,20(0x14) # 1c008944 <minmax_sequence_TestOneType_u8+0x6d4>
1c008934:	2a0002ce 	ld.bu	$r14,$r22,0
1c008938:	6c000bee 	bgeu	$r31,$r14,8(0x8) # 1c008940 <minmax_sequence_TestOneType_u8+0x6d0>
1c00893c:	001503ee 	move	$r14,$r31
1c008940:	028006cc 	addi.w	$r12,$r22,1(0x1)
1c008944:	2a00018f 	ld.bu	$r15,$r12,0
1c008948:	6c0009cf 	bgeu	$r14,$r15,8(0x8) # 1c008950 <minmax_sequence_TestOneType_u8+0x6e0>
1c00894c:	001501cf 	move	$r15,$r14
1c008950:	001501ee 	move	$r14,$r15
1c008954:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008958:	2a000184 	ld.bu	$r4,$r12,0
1c00895c:	6c0009c4 	bgeu	$r14,$r4,8(0x8) # 1c008964 <minmax_sequence_TestOneType_u8+0x6f4>
1c008960:	001501c4 	move	$r4,$r14
1c008964:	0015008e 	move	$r14,$r4
1c008968:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00896c:	2a00018d 	ld.bu	$r13,$r12,0
1c008970:	6c0009cd 	bgeu	$r14,$r13,8(0x8) # 1c008978 <minmax_sequence_TestOneType_u8+0x708>
1c008974:	001501cd 	move	$r13,$r14
1c008978:	001501ae 	move	$r14,$r13
1c00897c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008980:	2a000186 	ld.bu	$r6,$r12,0
1c008984:	6c0009c6 	bgeu	$r14,$r6,8(0x8) # 1c00898c <minmax_sequence_TestOneType_u8+0x71c>
1c008988:	001501c6 	move	$r6,$r14
1c00898c:	001500ce 	move	$r14,$r6
1c008990:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008994:	2a000187 	ld.bu	$r7,$r12,0
1c008998:	6c0009c7 	bgeu	$r14,$r7,8(0x8) # 1c0089a0 <minmax_sequence_TestOneType_u8+0x730>
1c00899c:	001501c7 	move	$r7,$r14
1c0089a0:	001500ee 	move	$r14,$r7
1c0089a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0089a8:	2a000186 	ld.bu	$r6,$r12,0
1c0089ac:	6c0009c6 	bgeu	$r14,$r6,8(0x8) # 1c0089b4 <minmax_sequence_TestOneType_u8+0x744>
1c0089b0:	001501c6 	move	$r6,$r14
1c0089b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0089b8:	001500ce 	move	$r14,$r6
1c0089bc:	5800766c 	beq	$r19,$r12,116(0x74) # 1c008a30 <minmax_sequence_TestOneType_u8+0x7c0>
1c0089c0:	2a000181 	ld.bu	$r1,$r12,0
1c0089c4:	6c0009c1 	bgeu	$r14,$r1,8(0x8) # 1c0089cc <minmax_sequence_TestOneType_u8+0x75c>
1c0089c8:	001501c1 	move	$r1,$r14
1c0089cc:	2a000584 	ld.bu	$r4,$r12,1(0x1)
1c0089d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0089d4:	6c000824 	bgeu	$r1,$r4,8(0x8) # 1c0089dc <minmax_sequence_TestOneType_u8+0x76c>
1c0089d8:	00150024 	move	$r4,$r1
1c0089dc:	2a00058e 	ld.bu	$r14,$r12,1(0x1)
1c0089e0:	6c00088e 	bgeu	$r4,$r14,8(0x8) # 1c0089e8 <minmax_sequence_TestOneType_u8+0x778>
1c0089e4:	0015008e 	move	$r14,$r4
1c0089e8:	2a000988 	ld.bu	$r8,$r12,2(0x2)
1c0089ec:	6c0009c8 	bgeu	$r14,$r8,8(0x8) # 1c0089f4 <minmax_sequence_TestOneType_u8+0x784>
1c0089f0:	001501c8 	move	$r8,$r14
1c0089f4:	2a000d89 	ld.bu	$r9,$r12,3(0x3)
1c0089f8:	6c000909 	bgeu	$r8,$r9,8(0x8) # 1c008a00 <minmax_sequence_TestOneType_u8+0x790>
1c0089fc:	00150109 	move	$r9,$r8
1c008a00:	2a00118a 	ld.bu	$r10,$r12,4(0x4)
1c008a04:	6c00092a 	bgeu	$r9,$r10,8(0x8) # 1c008a0c <minmax_sequence_TestOneType_u8+0x79c>
1c008a08:	0015012a 	move	$r10,$r9
1c008a0c:	2a00158f 	ld.bu	$r15,$r12,5(0x5)
1c008a10:	6c00094f 	bgeu	$r10,$r15,8(0x8) # 1c008a18 <minmax_sequence_TestOneType_u8+0x7a8>
1c008a14:	0015014f 	move	$r15,$r10
1c008a18:	2a001986 	ld.bu	$r6,$r12,6(0x6)
1c008a1c:	6c0009e6 	bgeu	$r15,$r6,8(0x8) # 1c008a24 <minmax_sequence_TestOneType_u8+0x7b4>
1c008a20:	001501e6 	move	$r6,$r15
1c008a24:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c008a28:	001500ce 	move	$r14,$r6
1c008a2c:	5fff966c 	bne	$r19,$r12,-108(0x3ff94) # 1c0089c0 <minmax_sequence_TestOneType_u8+0x750>
1c008a30:	28800287 	ld.w	$r7,$r20,0
1c008a34:	29801067 	st.w	$r7,$r3,4(0x4)
1c008a38:	2a00106b 	ld.bu	$r11,$r3,4(0x4)
1c008a3c:	5806f566 	beq	$r11,$r6,1780(0x6f4) # 1c009130 <minmax_sequence_TestOneType_u8+0xec0>
1c008a40:	1c000ee5 	pcaddu12i	$r5,119(0x77)
1c008a44:	029ad0a5 	addi.w	$r5,$r5,1716(0x6b4)
1c008a48:	1c000ee4 	pcaddu12i	$r4,119(0x77)
1c008a4c:	02979084 	addi.w	$r4,$r4,1508(0x5e4)
1c008a50:	29802073 	st.w	$r19,$r3,8(0x8)
1c008a54:	29801072 	st.w	$r18,$r3,4(0x4)
1c008a58:	5447d800 	bl	18392(0x47d8) # 1c00d230 <printf>
1c008a5c:	28801070 	ld.w	$r16,$r3,4(0x4)
1c008a60:	28800305 	ld.w	$r5,$r24,0
1c008a64:	02800739 	addi.w	$r25,$r25,1(0x1)
1c008a68:	02800612 	addi.w	$r18,$r16,1(0x1)
1c008a6c:	1c000f14 	pcaddu12i	$r20,120(0x78)
1c008a70:	02ad9294 	addi.w	$r20,$r20,-1180(0xb64)
1c008a74:	28802073 	ld.w	$r19,$r3,8(0x8)
1c008a78:	63fe7a45 	blt	$r18,$r5,-392(0x3fe78) # 1c0088f0 <minmax_sequence_TestOneType_u8+0x680>
1c008a7c:	544cc400 	bl	19652(0x4cc4) # 1c00d740 <get_clock>
1c008a80:	288003d1 	ld.w	$r17,$r30,0
1c008a84:	14001e8d 	lu12i.w	$r13,244(0xf4)
1c008a88:	1c000f08 	pcaddu12i	$r8,120(0x78)
1c008a8c:	28acd108 	ld.w	$r8,$r8,-1228(0xb34)
1c008a90:	038901a7 	ori	$r7,$r13,0x240
1c008a94:	29800104 	st.w	$r4,$r8,0
1c008a98:	00114484 	sub.w	$r4,$r4,$r17
1c008a9c:	00211c89 	div.wu	$r9,$r4,$r7
1c008aa0:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c008aa8 <minmax_sequence_TestOneType_u8+0x838>
1c008aa4:	002a0007 	break	0x7
1c008aa8:	1c000ee5 	pcaddu12i	$r5,119(0x77)
1c008aac:	029930a5 	addi.w	$r5,$r5,1612(0x64c)
1c008ab0:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c008ab4:	00150127 	move	$r7,$r9
1c008ab8:	1c000ee4 	pcaddu12i	$r4,119(0x77)
1c008abc:	02967084 	addi.w	$r4,$r4,1436(0x59c)
1c008ac0:	54477000 	bl	18288(0x4770) # 1c00d230 <printf>
1c008ac4:	544c7c00 	bl	19580(0x4c7c) # 1c00d740 <get_clock>
1c008ac8:	28800305 	ld.w	$r5,$r24,0
1c008acc:	298003c4 	st.w	$r4,$r30,0
1c008ad0:	6401a005 	bge	$r0,$r5,416(0x1a0) # 1c008c70 <minmax_sequence_TestOneType_u8+0xa00>
1c008ad4:	00150012 	move	$r18,$r0
1c008ad8:	00150014 	move	$r20,$r0
1c008adc:	028c82f3 	addi.w	$r19,$r23,800(0x320)
1c008ae0:	00115a66 	sub.w	$r6,$r19,$r22
1c008ae4:	03401cc1 	andi	$r1,$r6,0x7
1c008ae8:	001502cc 	move	$r12,$r22
1c008aec:	001503ee 	move	$r14,$r31
1c008af0:	5800c020 	beq	$r1,$r0,192(0xc0) # 1c008bb0 <minmax_sequence_TestOneType_u8+0x940>
1c008af4:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c008af8:	5800a02a 	beq	$r1,$r10,160(0xa0) # 1c008b98 <minmax_sequence_TestOneType_u8+0x928>
1c008afc:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c008b00:	5800842f 	beq	$r1,$r15,132(0x84) # 1c008b84 <minmax_sequence_TestOneType_u8+0x914>
1c008b04:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c008b08:	5800682b 	beq	$r1,$r11,104(0x68) # 1c008b70 <minmax_sequence_TestOneType_u8+0x900>
1c008b0c:	02801010 	addi.w	$r16,$r0,4(0x4)
1c008b10:	58004c30 	beq	$r1,$r16,76(0x4c) # 1c008b5c <minmax_sequence_TestOneType_u8+0x8ec>
1c008b14:	02801411 	addi.w	$r17,$r0,5(0x5)
1c008b18:	58003031 	beq	$r1,$r17,48(0x30) # 1c008b48 <minmax_sequence_TestOneType_u8+0x8d8>
1c008b1c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008b20:	5800142d 	beq	$r1,$r13,20(0x14) # 1c008b34 <minmax_sequence_TestOneType_u8+0x8c4>
1c008b24:	2a0002ce 	ld.bu	$r14,$r22,0
1c008b28:	6c0009df 	bgeu	$r14,$r31,8(0x8) # 1c008b30 <minmax_sequence_TestOneType_u8+0x8c0>
1c008b2c:	001503ee 	move	$r14,$r31
1c008b30:	028006cc 	addi.w	$r12,$r22,1(0x1)
1c008b34:	2a000187 	ld.bu	$r7,$r12,0
1c008b38:	6c0008ee 	bgeu	$r7,$r14,8(0x8) # 1c008b40 <minmax_sequence_TestOneType_u8+0x8d0>
1c008b3c:	001501c7 	move	$r7,$r14
1c008b40:	001500ee 	move	$r14,$r7
1c008b44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008b48:	2a000188 	ld.bu	$r8,$r12,0
1c008b4c:	6c00090e 	bgeu	$r8,$r14,8(0x8) # 1c008b54 <minmax_sequence_TestOneType_u8+0x8e4>
1c008b50:	001501c8 	move	$r8,$r14
1c008b54:	0015010e 	move	$r14,$r8
1c008b58:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008b5c:	2a000184 	ld.bu	$r4,$r12,0
1c008b60:	6c00088e 	bgeu	$r4,$r14,8(0x8) # 1c008b68 <minmax_sequence_TestOneType_u8+0x8f8>
1c008b64:	001501c4 	move	$r4,$r14
1c008b68:	0015008e 	move	$r14,$r4
1c008b6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008b70:	2a000189 	ld.bu	$r9,$r12,0
1c008b74:	6c00092e 	bgeu	$r9,$r14,8(0x8) # 1c008b7c <minmax_sequence_TestOneType_u8+0x90c>
1c008b78:	001501c9 	move	$r9,$r14
1c008b7c:	0015012e 	move	$r14,$r9
1c008b80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008b84:	2a000186 	ld.bu	$r6,$r12,0
1c008b88:	6c0008ce 	bgeu	$r6,$r14,8(0x8) # 1c008b90 <minmax_sequence_TestOneType_u8+0x920>
1c008b8c:	001501c6 	move	$r6,$r14
1c008b90:	001500ce 	move	$r14,$r6
1c008b94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008b98:	2a000186 	ld.bu	$r6,$r12,0
1c008b9c:	6c0008ce 	bgeu	$r6,$r14,8(0x8) # 1c008ba4 <minmax_sequence_TestOneType_u8+0x934>
1c008ba0:	001501c6 	move	$r6,$r14
1c008ba4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008ba8:	001500ce 	move	$r14,$r6
1c008bac:	5800766c 	beq	$r19,$r12,116(0x74) # 1c008c20 <minmax_sequence_TestOneType_u8+0x9b0>
1c008bb0:	2a000181 	ld.bu	$r1,$r12,0
1c008bb4:	6c00082e 	bgeu	$r1,$r14,8(0x8) # 1c008bbc <minmax_sequence_TestOneType_u8+0x94c>
1c008bb8:	001501c1 	move	$r1,$r14
1c008bbc:	2a000584 	ld.bu	$r4,$r12,1(0x1)
1c008bc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008bc4:	6c000881 	bgeu	$r4,$r1,8(0x8) # 1c008bcc <minmax_sequence_TestOneType_u8+0x95c>
1c008bc8:	00150024 	move	$r4,$r1
1c008bcc:	2a00058e 	ld.bu	$r14,$r12,1(0x1)
1c008bd0:	6c0009c4 	bgeu	$r14,$r4,8(0x8) # 1c008bd8 <minmax_sequence_TestOneType_u8+0x968>
1c008bd4:	0015008e 	move	$r14,$r4
1c008bd8:	2a00098a 	ld.bu	$r10,$r12,2(0x2)
1c008bdc:	6c00094e 	bgeu	$r10,$r14,8(0x8) # 1c008be4 <minmax_sequence_TestOneType_u8+0x974>
1c008be0:	001501ca 	move	$r10,$r14
1c008be4:	2a000d8b 	ld.bu	$r11,$r12,3(0x3)
1c008be8:	6c00096a 	bgeu	$r11,$r10,8(0x8) # 1c008bf0 <minmax_sequence_TestOneType_u8+0x980>
1c008bec:	0015014b 	move	$r11,$r10
1c008bf0:	2a00118f 	ld.bu	$r15,$r12,4(0x4)
1c008bf4:	6c0009eb 	bgeu	$r15,$r11,8(0x8) # 1c008bfc <minmax_sequence_TestOneType_u8+0x98c>
1c008bf8:	0015016f 	move	$r15,$r11
1c008bfc:	2a001590 	ld.bu	$r16,$r12,5(0x5)
1c008c00:	6c000a0f 	bgeu	$r16,$r15,8(0x8) # 1c008c08 <minmax_sequence_TestOneType_u8+0x998>
1c008c04:	001501f0 	move	$r16,$r15
1c008c08:	2a001986 	ld.bu	$r6,$r12,6(0x6)
1c008c0c:	6c0008d0 	bgeu	$r6,$r16,8(0x8) # 1c008c14 <minmax_sequence_TestOneType_u8+0x9a4>
1c008c10:	00150206 	move	$r6,$r16
1c008c14:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c008c18:	001500ce 	move	$r14,$r6
1c008c1c:	5fff966c 	bne	$r19,$r12,-108(0x3ff94) # 1c008bb0 <minmax_sequence_TestOneType_u8+0x940>
1c008c20:	28800367 	ld.w	$r7,$r27,0
1c008c24:	29801067 	st.w	$r7,$r3,4(0x4)
1c008c28:	2a001071 	ld.bu	$r17,$r3,4(0x4)
1c008c2c:	58051626 	beq	$r17,$r6,1300(0x514) # 1c009140 <minmax_sequence_TestOneType_u8+0xed0>
1c008c30:	1c000ee5 	pcaddu12i	$r5,119(0x77)
1c008c34:	029390a5 	addi.w	$r5,$r5,1252(0x4e4)
1c008c38:	1c000ee4 	pcaddu12i	$r4,119(0x77)
1c008c3c:	028fd084 	addi.w	$r4,$r4,1012(0x3f4)
1c008c40:	29803073 	st.w	$r19,$r3,12(0xc)
1c008c44:	29802072 	st.w	$r18,$r3,8(0x8)
1c008c48:	29801074 	st.w	$r20,$r3,4(0x4)
1c008c4c:	5445e400 	bl	17892(0x45e4) # 1c00d230 <printf>
1c008c50:	2880206d 	ld.w	$r13,$r3,8(0x8)
1c008c54:	28801067 	ld.w	$r7,$r3,4(0x4)
1c008c58:	28800305 	ld.w	$r5,$r24,0
1c008c5c:	028005b2 	addi.w	$r18,$r13,1(0x1)
1c008c60:	028004f4 	addi.w	$r20,$r7,1(0x1)
1c008c64:	28803073 	ld.w	$r19,$r3,12(0xc)
1c008c68:	63fe7a45 	blt	$r18,$r5,-392(0x3fe78) # 1c008ae0 <minmax_sequence_TestOneType_u8+0x870>
1c008c6c:	00105339 	add.w	$r25,$r25,$r20
1c008c70:	544ad000 	bl	19152(0x4ad0) # 1c00d740 <get_clock>
1c008c74:	288003db 	ld.w	$r27,$r30,0
1c008c78:	00150096 	move	$r22,$r4
1c008c7c:	14001e88 	lu12i.w	$r8,244(0xf4)
1c008c80:	00116ecb 	sub.w	$r11,$r22,$r27
1c008c84:	03890109 	ori	$r9,$r8,0x240
1c008c88:	1c000f0a 	pcaddu12i	$r10,120(0x78)
1c008c8c:	28a4d14a 	ld.w	$r10,$r10,-1740(0x934)
1c008c90:	00212567 	div.wu	$r7,$r11,$r9
1c008c94:	5c000920 	bne	$r9,$r0,8(0x8) # 1c008c9c <minmax_sequence_TestOneType_u8+0xa2c>
1c008c98:	002a0007 	break	0x7
1c008c9c:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c008ca0:	1c000ee5 	pcaddu12i	$r5,119(0x77)
1c008ca4:	0291d0a5 	addi.w	$r5,$r5,1140(0x474)
1c008ca8:	1c000ee4 	pcaddu12i	$r4,119(0x77)
1c008cac:	028eb084 	addi.w	$r4,$r4,940(0x3ac)
1c008cb0:	29800156 	st.w	$r22,$r10,0
1c008cb4:	54457c00 	bl	17788(0x457c) # 1c00d230 <printf>
1c008cb8:	2880030d 	ld.w	$r13,$r24,0
1c008cbc:	02801406 	addi.w	$r6,$r0,5(0x5)
1c008cc0:	0015001b 	move	$r27,$r0
1c008cc4:	002019af 	div.w	$r15,$r13,$r6
1c008cc8:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c008cd0 <minmax_sequence_TestOneType_u8+0xa60>
1c008ccc:	002a0007 	break	0x7
1c008cd0:	2980106d 	st.w	$r13,$r3,4(0x4)
1c008cd4:	2980030f 	st.w	$r15,$r24,0
1c008cd8:	544a6800 	bl	19048(0x4a68) # 1c00d740 <get_clock>
1c008cdc:	28800312 	ld.w	$r18,$r24,0
1c008ce0:	298003c4 	st.w	$r4,$r30,0
1c008ce4:	1c000ef6 	pcaddu12i	$r22,119(0x77)
1c008ce8:	029142d6 	addi.w	$r22,$r22,1104(0x450)
1c008cec:	64019c12 	bge	$r0,$r18,412(0x19c) # 1c008e88 <minmax_sequence_TestOneType_u8+0xc18>
1c008cf0:	2a0006e1 	ld.bu	$r1,$r23,1(0x1)
1c008cf4:	001503ee 	move	$r14,$r31
1c008cf8:	00150006 	move	$r6,$r0
1c008cfc:	001076f0 	add.w	$r16,$r23,$r29
1c008d00:	6c000c3f 	bgeu	$r1,$r31,12(0xc) # 1c008d0c <minmax_sequence_TestOneType_u8+0xa9c>
1c008d04:	0015002e 	move	$r14,$r1
1c008d08:	00150206 	move	$r6,$r16
1c008d0c:	028006ec 	addi.w	$r12,$r23,1(0x1)
1c008d10:	2a000585 	ld.bu	$r5,$r12,1(0x1)
1c008d14:	00107593 	add.w	$r19,$r12,$r29
1c008d18:	6c000cae 	bgeu	$r5,$r14,12(0xc) # 1c008d24 <minmax_sequence_TestOneType_u8+0xab4>
1c008d1c:	001500ae 	move	$r14,$r5
1c008d20:	00150266 	move	$r6,$r19
1c008d24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008d28:	2a000594 	ld.bu	$r20,$r12,1(0x1)
1c008d2c:	00107591 	add.w	$r17,$r12,$r29
1c008d30:	6c000e8e 	bgeu	$r20,$r14,12(0xc) # 1c008d3c <minmax_sequence_TestOneType_u8+0xacc>
1c008d34:	0015028e 	move	$r14,$r20
1c008d38:	00150226 	move	$r6,$r17
1c008d3c:	2a000989 	ld.bu	$r9,$r12,2(0x2)
1c008d40:	02800588 	addi.w	$r8,$r12,1(0x1)
1c008d44:	0010750a 	add.w	$r10,$r8,$r29
1c008d48:	6c000d2e 	bgeu	$r9,$r14,12(0xc) # 1c008d54 <minmax_sequence_TestOneType_u8+0xae4>
1c008d4c:	0015012e 	move	$r14,$r9
1c008d50:	00150146 	move	$r6,$r10
1c008d54:	2a000d87 	ld.bu	$r7,$r12,3(0x3)
1c008d58:	0280098b 	addi.w	$r11,$r12,2(0x2)
1c008d5c:	0010756d 	add.w	$r13,$r11,$r29
1c008d60:	6c000cee 	bgeu	$r7,$r14,12(0xc) # 1c008d6c <minmax_sequence_TestOneType_u8+0xafc>
1c008d64:	001500ee 	move	$r14,$r7
1c008d68:	001501a6 	move	$r6,$r13
1c008d6c:	2a00118f 	ld.bu	$r15,$r12,4(0x4)
1c008d70:	02800d84 	addi.w	$r4,$r12,3(0x3)
1c008d74:	00107481 	add.w	$r1,$r4,$r29
1c008d78:	6c000dee 	bgeu	$r15,$r14,12(0xc) # 1c008d84 <minmax_sequence_TestOneType_u8+0xb14>
1c008d7c:	001501ee 	move	$r14,$r15
1c008d80:	00150026 	move	$r6,$r1
1c008d84:	2a001585 	ld.bu	$r5,$r12,5(0x5)
1c008d88:	02801190 	addi.w	$r16,$r12,4(0x4)
1c008d8c:	00107613 	add.w	$r19,$r16,$r29
1c008d90:	6c000cae 	bgeu	$r5,$r14,12(0xc) # 1c008d9c <minmax_sequence_TestOneType_u8+0xb2c>
1c008d94:	001500ae 	move	$r14,$r5
1c008d98:	00150266 	move	$r6,$r19
1c008d9c:	2a001988 	ld.bu	$r8,$r12,6(0x6)
1c008da0:	02801594 	addi.w	$r20,$r12,5(0x5)
1c008da4:	00107691 	add.w	$r17,$r20,$r29
1c008da8:	6c000d0e 	bgeu	$r8,$r14,12(0xc) # 1c008db4 <minmax_sequence_TestOneType_u8+0xb44>
1c008dac:	0015010e 	move	$r14,$r8
1c008db0:	00150226 	move	$r6,$r17
1c008db4:	2a001d8a 	ld.bu	$r10,$r12,7(0x7)
1c008db8:	02801989 	addi.w	$r9,$r12,6(0x6)
1c008dbc:	0010752b 	add.w	$r11,$r9,$r29
1c008dc0:	6c000d4e 	bgeu	$r10,$r14,12(0xc) # 1c008dcc <minmax_sequence_TestOneType_u8+0xb5c>
1c008dc4:	0015014e 	move	$r14,$r10
1c008dc8:	00150166 	move	$r6,$r11
1c008dcc:	2a00218d 	ld.bu	$r13,$r12,8(0x8)
1c008dd0:	02801d87 	addi.w	$r7,$r12,7(0x7)
1c008dd4:	001074e4 	add.w	$r4,$r7,$r29
1c008dd8:	6c000dae 	bgeu	$r13,$r14,12(0xc) # 1c008de4 <minmax_sequence_TestOneType_u8+0xb74>
1c008ddc:	001501ae 	move	$r14,$r13
1c008de0:	00150086 	move	$r6,$r4
1c008de4:	2a002581 	ld.bu	$r1,$r12,9(0x9)
1c008de8:	0280218f 	addi.w	$r15,$r12,8(0x8)
1c008dec:	001075f0 	add.w	$r16,$r15,$r29
1c008df0:	6c000c2e 	bgeu	$r1,$r14,12(0xc) # 1c008dfc <minmax_sequence_TestOneType_u8+0xb8c>
1c008df4:	0015002e 	move	$r14,$r1
1c008df8:	00150206 	move	$r6,$r16
1c008dfc:	2a002993 	ld.bu	$r19,$r12,10(0xa)
1c008e00:	02802585 	addi.w	$r5,$r12,9(0x9)
1c008e04:	001074b4 	add.w	$r20,$r5,$r29
1c008e08:	6c000e6e 	bgeu	$r19,$r14,12(0xc) # 1c008e14 <minmax_sequence_TestOneType_u8+0xba4>
1c008e0c:	0015026e 	move	$r14,$r19
1c008e10:	00150286 	move	$r6,$r20
1c008e14:	2a002d89 	ld.bu	$r9,$r12,11(0xb)
1c008e18:	02802988 	addi.w	$r8,$r12,10(0xa)
1c008e1c:	00107511 	add.w	$r17,$r8,$r29
1c008e20:	6c000d2e 	bgeu	$r9,$r14,12(0xc) # 1c008e2c <minmax_sequence_TestOneType_u8+0xbbc>
1c008e24:	0015012e 	move	$r14,$r9
1c008e28:	00150226 	move	$r6,$r17
1c008e2c:	2a00318b 	ld.bu	$r11,$r12,12(0xc)
1c008e30:	02802d8a 	addi.w	$r10,$r12,11(0xb)
1c008e34:	00107547 	add.w	$r7,$r10,$r29
1c008e38:	6c000d6e 	bgeu	$r11,$r14,12(0xc) # 1c008e44 <minmax_sequence_TestOneType_u8+0xbd4>
1c008e3c:	0015016e 	move	$r14,$r11
1c008e40:	001500e6 	move	$r6,$r7
1c008e44:	2a003584 	ld.bu	$r4,$r12,13(0xd)
1c008e48:	0280318d 	addi.w	$r13,$r12,12(0xc)
1c008e4c:	001075af 	add.w	$r15,$r13,$r29
1c008e50:	6c000c8e 	bgeu	$r4,$r14,12(0xc) # 1c008e5c <minmax_sequence_TestOneType_u8+0xbec>
1c008e54:	0015008e 	move	$r14,$r4
1c008e58:	001501e6 	move	$r6,$r15
1c008e5c:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c008e60:	5ffeb34c 	bne	$r26,$r12,-336(0x3feb0) # 1c008d10 <minmax_sequence_TestOneType_u8+0xaa0>
1c008e64:	28800387 	ld.w	$r7,$r28,0
1c008e68:	5802bcc7 	beq	$r6,$r7,700(0x2bc) # 1c009124 <minmax_sequence_TestOneType_u8+0xeb4>
1c008e6c:	001502c5 	move	$r5,$r22
1c008e70:	1c000ee4 	pcaddu12i	$r4,119(0x77)
1c008e74:	02864084 	addi.w	$r4,$r4,400(0x190)
1c008e78:	5443b800 	bl	17336(0x43b8) # 1c00d230 <printf>
1c008e7c:	28800312 	ld.w	$r18,$r24,0
1c008e80:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c008e84:	63fe6f72 	blt	$r27,$r18,-404(0x3fe6c) # 1c008cf0 <minmax_sequence_TestOneType_u8+0xa80>
1c008e88:	5448b800 	bl	18616(0x48b8) # 1c00d740 <get_clock>
1c008e8c:	288003d0 	ld.w	$r16,$r30,0
1c008e90:	0015009c 	move	$r28,$r4
1c008e94:	14001e86 	lu12i.w	$r6,244(0xf4)
1c008e98:	038900d3 	ori	$r19,$r6,0x240
1c008e9c:	00114388 	sub.w	$r8,$r28,$r16
1c008ea0:	1c000ef4 	pcaddu12i	$r20,119(0x77)
1c008ea4:	289c7294 	ld.w	$r20,$r20,1820(0x71c)
1c008ea8:	00214d07 	div.wu	$r7,$r8,$r19
1c008eac:	5c000a60 	bne	$r19,$r0,8(0x8) # 1c008eb4 <minmax_sequence_TestOneType_u8+0xc44>
1c008eb0:	002a0007 	break	0x7
1c008eb4:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c008eb8:	1c000ee5 	pcaddu12i	$r5,119(0x77)
1c008ebc:	0289f0a5 	addi.w	$r5,$r5,636(0x27c)
1c008ec0:	1c000ee4 	pcaddu12i	$r4,119(0x77)
1c008ec4:	02865084 	addi.w	$r4,$r4,404(0x194)
1c008ec8:	2980029c 	st.w	$r28,$r20,0
1c008ecc:	54436400 	bl	17252(0x4364) # 1c00d230 <printf>
1c008ed0:	54487000 	bl	18544(0x4870) # 1c00d740 <get_clock>
1c008ed4:	28800311 	ld.w	$r17,$r24,0
1c008ed8:	298003c4 	st.w	$r4,$r30,0
1c008edc:	00150016 	move	$r22,$r0
1c008ee0:	1c000efc 	pcaddu12i	$r28,119(0x77)
1c008ee4:	0289e39c 	addi.w	$r28,$r28,632(0x278)
1c008ee8:	1c000efb 	pcaddu12i	$r27,119(0x77)
1c008eec:	0284637b 	addi.w	$r27,$r27,280(0x118)
1c008ef0:	6401a011 	bge	$r0,$r17,416(0x1a0) # 1c009090 <minmax_sequence_TestOneType_u8+0xe20>
1c008ef4:	2a0006e1 	ld.bu	$r1,$r23,1(0x1)
1c008ef8:	001503ee 	move	$r14,$r31
1c008efc:	00150006 	move	$r6,$r0
1c008f00:	001076e5 	add.w	$r5,$r23,$r29
1c008f04:	6c000fe1 	bgeu	$r31,$r1,12(0xc) # 1c008f10 <minmax_sequence_TestOneType_u8+0xca0>
1c008f08:	0015002e 	move	$r14,$r1
1c008f0c:	001500a6 	move	$r6,$r5
1c008f10:	028006eb 	addi.w	$r11,$r23,1(0x1)
1c008f14:	2a000569 	ld.bu	$r9,$r11,1(0x1)
1c008f18:	0010756a 	add.w	$r10,$r11,$r29
1c008f1c:	6c000dc9 	bgeu	$r14,$r9,12(0xc) # 1c008f28 <minmax_sequence_TestOneType_u8+0xcb8>
1c008f20:	0015012e 	move	$r14,$r9
1c008f24:	00150146 	move	$r6,$r10
1c008f28:	0280056b 	addi.w	$r11,$r11,1(0x1)
1c008f2c:	2a00056d 	ld.bu	$r13,$r11,1(0x1)
1c008f30:	00107564 	add.w	$r4,$r11,$r29
1c008f34:	6c000dcd 	bgeu	$r14,$r13,12(0xc) # 1c008f40 <minmax_sequence_TestOneType_u8+0xcd0>
1c008f38:	001501ae 	move	$r14,$r13
1c008f3c:	00150086 	move	$r6,$r4
1c008f40:	2a00096c 	ld.bu	$r12,$r11,2(0x2)
1c008f44:	0280056f 	addi.w	$r15,$r11,1(0x1)
1c008f48:	001075f2 	add.w	$r18,$r15,$r29
1c008f4c:	6c000dcc 	bgeu	$r14,$r12,12(0xc) # 1c008f58 <minmax_sequence_TestOneType_u8+0xce8>
1c008f50:	0015018e 	move	$r14,$r12
1c008f54:	00150246 	move	$r6,$r18
1c008f58:	2a000d73 	ld.bu	$r19,$r11,3(0x3)
1c008f5c:	02800970 	addi.w	$r16,$r11,2(0x2)
1c008f60:	00107614 	add.w	$r20,$r16,$r29
1c008f64:	6c000dd3 	bgeu	$r14,$r19,12(0xc) # 1c008f70 <minmax_sequence_TestOneType_u8+0xd00>
1c008f68:	0015026e 	move	$r14,$r19
1c008f6c:	00150286 	move	$r6,$r20
1c008f70:	2a001167 	ld.bu	$r7,$r11,4(0x4)
1c008f74:	02800d68 	addi.w	$r8,$r11,3(0x3)
1c008f78:	00107501 	add.w	$r1,$r8,$r29
1c008f7c:	6c000dc7 	bgeu	$r14,$r7,12(0xc) # 1c008f88 <minmax_sequence_TestOneType_u8+0xd18>
1c008f80:	001500ee 	move	$r14,$r7
1c008f84:	00150026 	move	$r6,$r1
1c008f88:	2a001569 	ld.bu	$r9,$r11,5(0x5)
1c008f8c:	02801165 	addi.w	$r5,$r11,4(0x4)
1c008f90:	001074aa 	add.w	$r10,$r5,$r29
1c008f94:	6c000dc9 	bgeu	$r14,$r9,12(0xc) # 1c008fa0 <minmax_sequence_TestOneType_u8+0xd30>
1c008f98:	0015012e 	move	$r14,$r9
1c008f9c:	00150146 	move	$r6,$r10
1c008fa0:	2a001964 	ld.bu	$r4,$r11,6(0x6)
1c008fa4:	0280156d 	addi.w	$r13,$r11,5(0x5)
1c008fa8:	001075af 	add.w	$r15,$r13,$r29
1c008fac:	6c000dc4 	bgeu	$r14,$r4,12(0xc) # 1c008fb8 <minmax_sequence_TestOneType_u8+0xd48>
1c008fb0:	0015008e 	move	$r14,$r4
1c008fb4:	001501e6 	move	$r6,$r15
1c008fb8:	2a001d72 	ld.bu	$r18,$r11,7(0x7)
1c008fbc:	0280196c 	addi.w	$r12,$r11,6(0x6)
1c008fc0:	00107590 	add.w	$r16,$r12,$r29
1c008fc4:	6c000dd2 	bgeu	$r14,$r18,12(0xc) # 1c008fd0 <minmax_sequence_TestOneType_u8+0xd60>
1c008fc8:	0015024e 	move	$r14,$r18
1c008fcc:	00150206 	move	$r6,$r16
1c008fd0:	2a002174 	ld.bu	$r20,$r11,8(0x8)
1c008fd4:	02801d73 	addi.w	$r19,$r11,7(0x7)
1c008fd8:	00107668 	add.w	$r8,$r19,$r29
1c008fdc:	6c000dd4 	bgeu	$r14,$r20,12(0xc) # 1c008fe8 <minmax_sequence_TestOneType_u8+0xd78>
1c008fe0:	0015028e 	move	$r14,$r20
1c008fe4:	00150106 	move	$r6,$r8
1c008fe8:	2a002561 	ld.bu	$r1,$r11,9(0x9)
1c008fec:	02802167 	addi.w	$r7,$r11,8(0x8)
1c008ff0:	001074e5 	add.w	$r5,$r7,$r29
1c008ff4:	6c000dc1 	bgeu	$r14,$r1,12(0xc) # 1c009000 <minmax_sequence_TestOneType_u8+0xd90>
1c008ff8:	0015002e 	move	$r14,$r1
1c008ffc:	001500a6 	move	$r6,$r5
1c009000:	2a00296a 	ld.bu	$r10,$r11,10(0xa)
1c009004:	02802569 	addi.w	$r9,$r11,9(0x9)
1c009008:	0010752d 	add.w	$r13,$r9,$r29
1c00900c:	6c000dca 	bgeu	$r14,$r10,12(0xc) # 1c009018 <minmax_sequence_TestOneType_u8+0xda8>
1c009010:	0015014e 	move	$r14,$r10
1c009014:	001501a6 	move	$r6,$r13
1c009018:	2a002d6c 	ld.bu	$r12,$r11,11(0xb)
1c00901c:	02802964 	addi.w	$r4,$r11,10(0xa)
1c009020:	0010748f 	add.w	$r15,$r4,$r29
1c009024:	6c000dcc 	bgeu	$r14,$r12,12(0xc) # 1c009030 <minmax_sequence_TestOneType_u8+0xdc0>
1c009028:	0015018e 	move	$r14,$r12
1c00902c:	001501e6 	move	$r6,$r15
1c009030:	2a003172 	ld.bu	$r18,$r11,12(0xc)
1c009034:	02802d70 	addi.w	$r16,$r11,11(0xb)
1c009038:	00107613 	add.w	$r19,$r16,$r29
1c00903c:	6c000dd2 	bgeu	$r14,$r18,12(0xc) # 1c009048 <minmax_sequence_TestOneType_u8+0xdd8>
1c009040:	0015024e 	move	$r14,$r18
1c009044:	00150266 	move	$r6,$r19
1c009048:	2a003568 	ld.bu	$r8,$r11,13(0xd)
1c00904c:	02803174 	addi.w	$r20,$r11,12(0xc)
1c009050:	00107687 	add.w	$r7,$r20,$r29
1c009054:	6c000dc8 	bgeu	$r14,$r8,12(0xc) # 1c009060 <minmax_sequence_TestOneType_u8+0xdf0>
1c009058:	0015010e 	move	$r14,$r8
1c00905c:	001500e6 	move	$r6,$r7
1c009060:	0280356b 	addi.w	$r11,$r11,13(0xd)
1c009064:	5ffeb17a 	bne	$r11,$r26,-336(0x3feb0) # 1c008f14 <minmax_sequence_TestOneType_u8+0xca4>
1c009068:	1c000ee1 	pcaddu12i	$r1,119(0x77)
1c00906c:	02957021 	addi.w	$r1,$r1,1372(0x55c)
1c009070:	28800027 	ld.w	$r7,$r1,0
1c009074:	5800a4e6 	beq	$r7,$r6,164(0xa4) # 1c009118 <minmax_sequence_TestOneType_u8+0xea8>
1c009078:	00150385 	move	$r5,$r28
1c00907c:	00150364 	move	$r4,$r27
1c009080:	5441b000 	bl	16816(0x41b0) # 1c00d230 <printf>
1c009084:	28800311 	ld.w	$r17,$r24,0
1c009088:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00908c:	63fe6ad1 	blt	$r22,$r17,-408(0x3fe68) # 1c008ef4 <minmax_sequence_TestOneType_u8+0xc84>
1c009090:	5446b000 	bl	18096(0x46b0) # 1c00d740 <get_clock>
1c009094:	288003df 	ld.w	$r31,$r30,0
1c009098:	00150097 	move	$r23,$r4
1c00909c:	14001e9a 	lu12i.w	$r26,244(0xf4)
1c0090a0:	00117eea 	sub.w	$r10,$r23,$r31
1c0090a4:	0389035d 	ori	$r29,$r26,0x240
1c0090a8:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c0090ac:	00217547 	div.wu	$r7,$r10,$r29
1c0090b0:	5c000ba0 	bne	$r29,$r0,8(0x8) # 1c0090b8 <minmax_sequence_TestOneType_u8+0xe48>
1c0090b4:	002a0007 	break	0x7
1c0090b8:	1c000ee9 	pcaddu12i	$r9,119(0x77)
1c0090bc:	28941129 	ld.w	$r9,$r9,1284(0x504)
1c0090c0:	1c000ee5 	pcaddu12i	$r5,119(0x77)
1c0090c4:	028260a5 	addi.w	$r5,$r5,152(0x98)
1c0090c8:	1c000ee4 	pcaddu12i	$r4,119(0x77)
1c0090cc:	02be3084 	addi.w	$r4,$r4,-116(0xf8c)
1c0090d0:	29800137 	st.w	$r23,$r9,0
1c0090d4:	54415c00 	bl	16732(0x415c) # 1c00d230 <printf>
1c0090d8:	28801066 	ld.w	$r6,$r3,4(0x4)
1c0090dc:	288d7061 	ld.w	$r1,$r3,860(0x35c)
1c0090e0:	288d6076 	ld.w	$r22,$r3,856(0x358)
1c0090e4:	29800306 	st.w	$r6,$r24,0
1c0090e8:	00150324 	move	$r4,$r25
1c0090ec:	288d5077 	ld.w	$r23,$r3,852(0x354)
1c0090f0:	288d4078 	ld.w	$r24,$r3,848(0x350)
1c0090f4:	288d3079 	ld.w	$r25,$r3,844(0x34c)
1c0090f8:	288d207a 	ld.w	$r26,$r3,840(0x348)
1c0090fc:	288d107b 	ld.w	$r27,$r3,836(0x344)
1c009100:	288d007c 	ld.w	$r28,$r3,832(0x340)
1c009104:	288cf07d 	ld.w	$r29,$r3,828(0x33c)
1c009108:	288ce07e 	ld.w	$r30,$r3,824(0x338)
1c00910c:	288cd07f 	ld.w	$r31,$r3,820(0x334)
1c009110:	028d8063 	addi.w	$r3,$r3,864(0x360)
1c009114:	4c000020 	jirl	$r0,$r1,0
1c009118:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00911c:	63fddad1 	blt	$r22,$r17,-552(0x3fdd8) # 1c008ef4 <minmax_sequence_TestOneType_u8+0xc84>
1c009120:	53ff73ff 	b	-144(0xfffff70) # 1c009090 <minmax_sequence_TestOneType_u8+0xe20>
1c009124:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c009128:	63fbcb72 	blt	$r27,$r18,-1080(0x3fbc8) # 1c008cf0 <minmax_sequence_TestOneType_u8+0xa80>
1c00912c:	53fd5fff 	b	-676(0xffffd5c) # 1c008e88 <minmax_sequence_TestOneType_u8+0xc18>
1c009130:	02800652 	addi.w	$r18,$r18,1(0x1)
1c009134:	63f7be45 	blt	$r18,$r5,-2116(0x3f7bc) # 1c0088f0 <minmax_sequence_TestOneType_u8+0x680>
1c009138:	53f947ff 	b	-1724(0xffff944) # 1c008a7c <minmax_sequence_TestOneType_u8+0x80c>
1c00913c:	03400000 	andi	$r0,$r0,0x0
1c009140:	02800652 	addi.w	$r18,$r18,1(0x1)
1c009144:	63f99e45 	blt	$r18,$r5,-1636(0x3f99c) # 1c008ae0 <minmax_sequence_TestOneType_u8+0x870>
1c009148:	53fb27ff 	b	-1244(0xffffb24) # 1c008c6c <minmax_sequence_TestOneType_u8+0x9fc>
1c00914c:	001500f8 	move	$r24,$r7
1c009150:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c009154:	028cc07b 	addi.w	$r27,$r3,816(0x330)
1c009158:	00150307 	move	$r7,$r24
1c00915c:	5ff2ccdb 	bne	$r6,$r27,-3380(0x3f2cc) # 1c008428 <minmax_sequence_TestOneType_u8+0x1b8>
1c009160:	53f31fff 	b	-3300(0xffff31c) # 1c00847c <minmax_sequence_TestOneType_u8+0x20c>
1c009164:	001500b8 	move	$r24,$r5
1c009168:	02801fa6 	addi.w	$r6,$r29,7(0x7)
1c00916c:	028cc061 	addi.w	$r1,$r3,816(0x330)
1c009170:	00150307 	move	$r7,$r24
1c009174:	5ff2b4c1 	bne	$r6,$r1,-3404(0x3f2b4) # 1c008428 <minmax_sequence_TestOneType_u8+0x1b8>
1c009178:	53f307ff 	b	-3324(0xffff304) # 1c00847c <minmax_sequence_TestOneType_u8+0x20c>
1c00917c:	2a001bb8 	ld.bu	$r24,$r29,6(0x6)
1c009180:	00150085 	move	$r5,$r4
1c009184:	6ff2e8b8 	bgeu	$r5,$r24,-3352(0x3f2e8) # 1c00846c <minmax_sequence_TestOneType_u8+0x1fc>
1c009188:	53ffdfff 	b	-36(0xfffffdc) # 1c009164 <minmax_sequence_TestOneType_u8+0xef4>
1c00918c:	2a0017a5 	ld.bu	$r5,$r29,5(0x5)
1c009190:	00150184 	move	$r4,$r12
1c009194:	6ff2d085 	bgeu	$r4,$r5,-3376(0x3f2d0) # 1c008464 <minmax_sequence_TestOneType_u8+0x1f4>
1c009198:	53ffe7ff 	b	-28(0xfffffe4) # 1c00917c <minmax_sequence_TestOneType_u8+0xf0c>
1c00919c:	2a0013a4 	ld.bu	$r4,$r29,4(0x4)
1c0091a0:	001503cc 	move	$r12,$r30
1c0091a4:	6ff2b984 	bgeu	$r12,$r4,-3400(0x3f2b8) # 1c00845c <minmax_sequence_TestOneType_u8+0x1ec>
1c0091a8:	53ffe7ff 	b	-28(0xfffffe4) # 1c00918c <minmax_sequence_TestOneType_u8+0xf1c>
1c0091ac:	2a000fac 	ld.bu	$r12,$r29,3(0x3)
1c0091b0:	001501be 	move	$r30,$r13
1c0091b4:	6ff2a3cc 	bgeu	$r30,$r12,-3424(0x3f2a0) # 1c008454 <minmax_sequence_TestOneType_u8+0x1e4>
1c0091b8:	53ffe7ff 	b	-28(0xfffffe4) # 1c00919c <minmax_sequence_TestOneType_u8+0xf2c>
1c0091bc:	2a000bbe 	ld.bu	$r30,$r29,2(0x2)
1c0091c0:	001501ed 	move	$r13,$r15
1c0091c4:	6ff289be 	bgeu	$r13,$r30,-3448(0x3f288) # 1c00844c <minmax_sequence_TestOneType_u8+0x1dc>
1c0091c8:	53ffe7ff 	b	-28(0xfffffe4) # 1c0091ac <minmax_sequence_TestOneType_u8+0xf3c>
1c0091cc:	2a0007ad 	ld.bu	$r13,$r29,1(0x1)
1c0091d0:	0015038f 	move	$r15,$r28
1c0091d4:	6ff271ed 	bgeu	$r15,$r13,-3472(0x3f270) # 1c008444 <minmax_sequence_TestOneType_u8+0x1d4>
1c0091d8:	53ffe7ff 	b	-28(0xfffffe4) # 1c0091bc <minmax_sequence_TestOneType_u8+0xf4c>
1c0091dc:	2a0004cf 	ld.bu	$r15,$r6,1(0x1)
1c0091e0:	001500fc 	move	$r28,$r7
1c0091e4:	028004dd 	addi.w	$r29,$r6,1(0x1)
1c0091e8:	6ff2578f 	bgeu	$r28,$r15,-3500(0x3f254) # 1c00843c <minmax_sequence_TestOneType_u8+0x1cc>
1c0091ec:	53ffe3ff 	b	-32(0xfffffe0) # 1c0091cc <minmax_sequence_TestOneType_u8+0xf5c>
1c0091f0:	00150187 	move	$r7,$r12
1c0091f4:	02800421 	addi.w	$r1,$r1,1(0x1)
1c0091f8:	028cc06f 	addi.w	$r15,$r3,816(0x330)
1c0091fc:	001500ec 	move	$r12,$r7
1c009200:	5ff34c2f 	bne	$r1,$r15,-3252(0x3f34c) # 1c00854c <minmax_sequence_TestOneType_u8+0x2dc>
1c009204:	53f39fff 	b	-3172(0xffff39c) # 1c0085a0 <minmax_sequence_TestOneType_u8+0x330>
1c009208:	001500c7 	move	$r7,$r6
1c00920c:	02801d81 	addi.w	$r1,$r12,7(0x7)
1c009210:	028cc06e 	addi.w	$r14,$r3,816(0x330)
1c009214:	001500ec 	move	$r12,$r7
1c009218:	5ff3342e 	bne	$r1,$r14,-3276(0x3f334) # 1c00854c <minmax_sequence_TestOneType_u8+0x2dc>
1c00921c:	53f387ff 	b	-3196(0xffff384) # 1c0085a0 <minmax_sequence_TestOneType_u8+0x330>
1c009220:	2a001987 	ld.bu	$r7,$r12,6(0x6)
1c009224:	00150306 	move	$r6,$r24
1c009228:	6ff368e6 	bgeu	$r7,$r6,-3224(0x3f368) # 1c008590 <minmax_sequence_TestOneType_u8+0x320>
1c00922c:	53ffdfff 	b	-36(0xfffffdc) # 1c009208 <minmax_sequence_TestOneType_u8+0xf98>
1c009230:	2a001586 	ld.bu	$r6,$r12,5(0x5)
1c009234:	001500b8 	move	$r24,$r5
1c009238:	6ff350d8 	bgeu	$r6,$r24,-3248(0x3f350) # 1c008588 <minmax_sequence_TestOneType_u8+0x318>
1c00923c:	53ffe7ff 	b	-28(0xfffffe4) # 1c009220 <minmax_sequence_TestOneType_u8+0xfb0>
1c009240:	2a001198 	ld.bu	$r24,$r12,4(0x4)
1c009244:	00150085 	move	$r5,$r4
1c009248:	6ff33b05 	bgeu	$r24,$r5,-3272(0x3f338) # 1c008580 <minmax_sequence_TestOneType_u8+0x310>
1c00924c:	53ffe7ff 	b	-28(0xfffffe4) # 1c009230 <minmax_sequence_TestOneType_u8+0xfc0>
1c009250:	2a000d85 	ld.bu	$r5,$r12,3(0x3)
1c009254:	001501a4 	move	$r4,$r13
1c009258:	6ff320a4 	bgeu	$r5,$r4,-3296(0x3f320) # 1c008578 <minmax_sequence_TestOneType_u8+0x308>
1c00925c:	53ffe7ff 	b	-28(0xfffffe4) # 1c009240 <minmax_sequence_TestOneType_u8+0xfd0>
1c009260:	2a000984 	ld.bu	$r4,$r12,2(0x2)
1c009264:	001501ed 	move	$r13,$r15
1c009268:	6ff3088d 	bgeu	$r4,$r13,-3320(0x3f308) # 1c008570 <minmax_sequence_TestOneType_u8+0x300>
1c00926c:	53ffe7ff 	b	-28(0xfffffe4) # 1c009250 <minmax_sequence_TestOneType_u8+0xfe0>
1c009270:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c009274:	001503cf 	move	$r15,$r30
1c009278:	6ff2f1af 	bgeu	$r13,$r15,-3344(0x3f2f0) # 1c008568 <minmax_sequence_TestOneType_u8+0x2f8>
1c00927c:	53ffe7ff 	b	-28(0xfffffe4) # 1c009260 <minmax_sequence_TestOneType_u8+0xff0>
1c009280:	2a00042f 	ld.bu	$r15,$r1,1(0x1)
1c009284:	0015019e 	move	$r30,$r12
1c009288:	0280042c 	addi.w	$r12,$r1,1(0x1)
1c00928c:	6ff2d5fe 	bgeu	$r15,$r30,-3372(0x3f2d4) # 1c008560 <minmax_sequence_TestOneType_u8+0x2f0>
1c009290:	53ffe3ff 	b	-32(0xfffffe0) # 1c009270 <minmax_sequence_TestOneType_u8+0x1000>
1c009294:	001500fa 	move	$r26,$r7
1c009298:	53f173ff 	b	-3728(0xffff170) # 1c008408 <minmax_sequence_TestOneType_u8+0x198>
1c00929c:	0015019d 	move	$r29,$r12
1c0092a0:	53f28fff 	b	-3444(0xffff28c) # 1c00852c <minmax_sequence_TestOneType_u8+0x2bc>
1c0092a4:	001500f9 	move	$r25,$r7
1c0092a8:	53f153ff 	b	-3760(0xffff150) # 1c0083f8 <minmax_sequence_TestOneType_u8+0x188>
1c0092ac:	0015019c 	move	$r28,$r12
1c0092b0:	53f26fff 	b	-3476(0xffff26c) # 1c00851c <minmax_sequence_TestOneType_u8+0x2ac>
1c0092b4:	0015019a 	move	$r26,$r12
1c0092b8:	53f243ff 	b	-3520(0xffff240) # 1c0084f8 <minmax_sequence_TestOneType_u8+0x288>
1c0092bc:	001500f3 	move	$r19,$r7
1c0092c0:	53f117ff 	b	-3820(0xffff114) # 1c0083d4 <minmax_sequence_TestOneType_u8+0x164>
1c0092c4:	00150199 	move	$r25,$r12
1c0092c8:	53f223ff 	b	-3552(0xffff220) # 1c0084e8 <minmax_sequence_TestOneType_u8+0x278>
1c0092cc:	001500f2 	move	$r18,$r7
1c0092d0:	53f0f7ff 	b	-3852(0xffff0f4) # 1c0083c4 <minmax_sequence_TestOneType_u8+0x154>
1c0092d4:	03400000 	andi	$r0,$r0,0x0
1c0092d8:	03400000 	andi	$r0,$r0,0x0
1c0092dc:	03400000 	andi	$r0,$r0,0x0

1c0092e0 <minmax_sequence_TestOneType_16>:
minmax_sequence_TestOneType_16():
1c0092e0:	1c000eec 	pcaddu12i	$r12,119(0x77)
1c0092e4:	028b418c 	addi.w	$r12,$r12,720(0x2d0)
1c0092e8:	28800184 	ld.w	$r4,$r12,0
1c0092ec:	02a60063 	addi.w	$r3,$r3,-1664(0x980)
1c0092f0:	2999d077 	st.w	$r23,$r3,1652(0x674)
1c0092f4:	0281ec84 	addi.w	$r4,$r4,123(0x7b)
1c0092f8:	2999f061 	st.w	$r1,$r3,1660(0x67c)
1c0092fc:	2999e076 	st.w	$r22,$r3,1656(0x678)
1c009300:	2999c078 	st.w	$r24,$r3,1648(0x670)
1c009304:	2999b079 	st.w	$r25,$r3,1644(0x66c)
1c009308:	2999a07a 	st.w	$r26,$r3,1640(0x668)
1c00930c:	2999907b 	st.w	$r27,$r3,1636(0x664)
1c009310:	2999807c 	st.w	$r28,$r3,1632(0x660)
1c009314:	2999707d 	st.w	$r29,$r3,1628(0x65c)
1c009318:	2999607e 	st.w	$r30,$r3,1624(0x658)
1c00931c:	2999507f 	st.w	$r31,$r3,1620(0x654)
1c009320:	02804077 	addi.w	$r23,$r3,16(0x10)
1c009324:	5444cc00 	bl	17612(0x44cc) # 1c00d7f0 <srand>
1c009328:	028042f7 	addi.w	$r23,$r23,16(0x10)
1c00932c:	54448400 	bl	17540(0x4484) # 1c00d7b0 <rand>
1c009330:	297fc2e4 	st.h	$r4,$r23,-16(0xff0)
1c009334:	54447c00 	bl	17532(0x447c) # 1c00d7b0 <rand>
1c009338:	297fcae4 	st.h	$r4,$r23,-14(0xff2)
1c00933c:	54447400 	bl	17524(0x4474) # 1c00d7b0 <rand>
1c009340:	297fd2e4 	st.h	$r4,$r23,-12(0xff4)
1c009344:	54446c00 	bl	17516(0x446c) # 1c00d7b0 <rand>
1c009348:	297fdae4 	st.h	$r4,$r23,-10(0xff6)
1c00934c:	54446400 	bl	17508(0x4464) # 1c00d7b0 <rand>
1c009350:	297fe2e4 	st.h	$r4,$r23,-8(0xff8)
1c009354:	54445c00 	bl	17500(0x445c) # 1c00d7b0 <rand>
1c009358:	297feae4 	st.h	$r4,$r23,-6(0xffa)
1c00935c:	54445400 	bl	17492(0x4454) # 1c00d7b0 <rand>
1c009360:	297ff2e4 	st.h	$r4,$r23,-4(0xffc)
1c009364:	54444c00 	bl	17484(0x444c) # 1c00d7b0 <rand>
1c009368:	297ffae4 	st.h	$r4,$r23,-2(0xffe)
1c00936c:	02994065 	addi.w	$r5,$r3,1616(0x650)
1c009370:	5fffbae5 	bne	$r23,$r5,-72(0x3ffb8) # 1c009328 <minmax_sequence_TestOneType_16+0x48>
1c009374:	0280487b 	addi.w	$r27,$r3,18(0x12)
1c009378:	2840407d 	ld.h	$r29,$r3,16(0x10)
1c00937c:	28400361 	ld.h	$r1,$r27,0
1c009380:	600bd7a1 	blt	$r29,$r1,3028(0xbd4) # 1c009f54 <minmax_sequence_TestOneType_16+0xc74>
1c009384:	00150039 	move	$r25,$r1
1c009388:	02800b78 	addi.w	$r24,$r27,2(0x2)
1c00938c:	28400311 	ld.h	$r17,$r24,0
1c009390:	600dd331 	blt	$r25,$r17,3536(0xdd0) # 1c00a160 <minmax_sequence_TestOneType_16+0xe80>
1c009394:	28400b10 	ld.h	$r16,$r24,2(0x2)
1c009398:	02800b06 	addi.w	$r6,$r24,2(0x2)
1c00939c:	600db630 	blt	$r17,$r16,3508(0xdb4) # 1c00a150 <minmax_sequence_TestOneType_16+0xe70>
1c0093a0:	284008cd 	ld.h	$r13,$r6,2(0x2)
1c0093a4:	600d9e0d 	blt	$r16,$r13,3484(0xd9c) # 1c00a140 <minmax_sequence_TestOneType_16+0xe60>
1c0093a8:	284010c7 	ld.h	$r7,$r6,4(0x4)
1c0093ac:	600d85a7 	blt	$r13,$r7,3460(0xd84) # 1c00a130 <minmax_sequence_TestOneType_16+0xe50>
1c0093b0:	284018c8 	ld.h	$r8,$r6,6(0x6)
1c0093b4:	600d6ce8 	blt	$r7,$r8,3436(0xd6c) # 1c00a120 <minmax_sequence_TestOneType_16+0xe40>
1c0093b8:	284020c9 	ld.h	$r9,$r6,8(0x8)
1c0093bc:	600d5509 	blt	$r8,$r9,3412(0xd54) # 1c00a110 <minmax_sequence_TestOneType_16+0xe30>
1c0093c0:	284028ca 	ld.h	$r10,$r6,10(0xa)
1c0093c4:	600d3d2a 	blt	$r9,$r10,3388(0xd3c) # 1c00a100 <minmax_sequence_TestOneType_16+0xe20>
1c0093c8:	284030cb 	ld.h	$r11,$r6,12(0xc)
1c0093cc:	600d254b 	blt	$r10,$r11,3364(0xd24) # 1c00a0f0 <minmax_sequence_TestOneType_16+0xe10>
1c0093d0:	284038ce 	ld.h	$r14,$r6,14(0xe)
1c0093d4:	600d0d6e 	blt	$r11,$r14,3340(0xd0c) # 1c00a0e0 <minmax_sequence_TestOneType_16+0xe00>
1c0093d8:	284040cf 	ld.h	$r15,$r6,16(0x10)
1c0093dc:	600cf5cf 	blt	$r14,$r15,3316(0xcf4) # 1c00a0d0 <minmax_sequence_TestOneType_16+0xdf0>
1c0093e0:	284048d2 	ld.h	$r18,$r6,18(0x12)
1c0093e4:	600cddf2 	blt	$r15,$r18,3292(0xcdc) # 1c00a0c0 <minmax_sequence_TestOneType_16+0xde0>
1c0093e8:	284050d3 	ld.h	$r19,$r6,20(0x14)
1c0093ec:	600cc653 	blt	$r18,$r19,3268(0xcc4) # 1c00a0b0 <minmax_sequence_TestOneType_16+0xdd0>
1c0093f0:	284058d4 	ld.h	$r20,$r6,22(0x16)
1c0093f4:	600cae74 	blt	$r19,$r20,3244(0xcac) # 1c00a0a0 <minmax_sequence_TestOneType_16+0xdc0>
1c0093f8:	284060d6 	ld.h	$r22,$r6,24(0x18)
1c0093fc:	600c8e96 	blt	$r20,$r22,3212(0xc8c) # 1c00a088 <minmax_sequence_TestOneType_16+0xda8>
1c009400:	028068d8 	addi.w	$r24,$r6,26(0x1a)
1c009404:	0299407a 	addi.w	$r26,$r3,1616(0x650)
1c009408:	001502d9 	move	$r25,$r22
1c00940c:	5fff831a 	bne	$r24,$r26,-128(0x3ff80) # 1c00938c <minmax_sequence_TestOneType_16+0xac>
1c009410:	2840037c 	ld.h	$r28,$r27,0
1c009414:	1c000efe 	pcaddu12i	$r30,119(0x77)
1c009418:	0286f3de 	addi.w	$r30,$r30,444(0x1bc)
1c00941c:	298003d6 	st.w	$r22,$r30,0
1c009420:	64000b9d 	bge	$r28,$r29,8(0x8) # 1c009428 <minmax_sequence_TestOneType_16+0x148>
1c009424:	001503bc 	move	$r28,$r29
1c009428:	0015038f 	move	$r15,$r28
1c00942c:	02800b6b 	addi.w	$r11,$r27,2(0x2)
1c009430:	2840017f 	ld.h	$r31,$r11,0
1c009434:	600c43ef 	blt	$r31,$r15,3136(0xc40) # 1c00a074 <minmax_sequence_TestOneType_16+0xd94>
1c009438:	28400972 	ld.h	$r18,$r11,2(0x2)
1c00943c:	0280096c 	addi.w	$r12,$r11,2(0x2)
1c009440:	600c265f 	blt	$r18,$r31,3108(0xc24) # 1c00a064 <minmax_sequence_TestOneType_16+0xd84>
1c009444:	28400984 	ld.h	$r4,$r12,2(0x2)
1c009448:	600c0c92 	blt	$r4,$r18,3084(0xc0c) # 1c00a054 <minmax_sequence_TestOneType_16+0xd74>
1c00944c:	28401197 	ld.h	$r23,$r12,4(0x4)
1c009450:	600bf6e4 	blt	$r23,$r4,3060(0xbf4) # 1c00a044 <minmax_sequence_TestOneType_16+0xd64>
1c009454:	28401985 	ld.h	$r5,$r12,6(0x6)
1c009458:	600bdcb7 	blt	$r5,$r23,3036(0xbdc) # 1c00a034 <minmax_sequence_TestOneType_16+0xd54>
1c00945c:	28402181 	ld.h	$r1,$r12,8(0x8)
1c009460:	600bc425 	blt	$r1,$r5,3012(0xbc4) # 1c00a024 <minmax_sequence_TestOneType_16+0xd44>
1c009464:	28402991 	ld.h	$r17,$r12,10(0xa)
1c009468:	600bae21 	blt	$r17,$r1,2988(0xbac) # 1c00a014 <minmax_sequence_TestOneType_16+0xd34>
1c00946c:	28403186 	ld.h	$r6,$r12,12(0xc)
1c009470:	600b94d1 	blt	$r6,$r17,2964(0xb94) # 1c00a004 <minmax_sequence_TestOneType_16+0xd24>
1c009474:	2840398d 	ld.h	$r13,$r12,14(0xe)
1c009478:	600b7da6 	blt	$r13,$r6,2940(0xb7c) # 1c009ff4 <minmax_sequence_TestOneType_16+0xd14>
1c00947c:	28404190 	ld.h	$r16,$r12,16(0x10)
1c009480:	600b660d 	blt	$r16,$r13,2916(0xb64) # 1c009fe4 <minmax_sequence_TestOneType_16+0xd04>
1c009484:	28404987 	ld.h	$r7,$r12,18(0x12)
1c009488:	600b4cf0 	blt	$r7,$r16,2892(0xb4c) # 1c009fd4 <minmax_sequence_TestOneType_16+0xcf4>
1c00948c:	28405188 	ld.h	$r8,$r12,20(0x14)
1c009490:	600b3507 	blt	$r8,$r7,2868(0xb34) # 1c009fc4 <minmax_sequence_TestOneType_16+0xce4>
1c009494:	28405989 	ld.h	$r9,$r12,22(0x16)
1c009498:	600b1d28 	blt	$r9,$r8,2844(0xb1c) # 1c009fb4 <minmax_sequence_TestOneType_16+0xcd4>
1c00949c:	2840618a 	ld.h	$r10,$r12,24(0x18)
1c0094a0:	600afd49 	blt	$r10,$r9,2812(0xafc) # 1c009f9c <minmax_sequence_TestOneType_16+0xcbc>
1c0094a4:	0280698b 	addi.w	$r11,$r12,26(0x1a)
1c0094a8:	0299406e 	addi.w	$r14,$r3,1616(0x650)
1c0094ac:	0015014f 	move	$r15,$r10
1c0094b0:	5fff816e 	bne	$r11,$r14,-128(0x3ff80) # 1c009430 <minmax_sequence_TestOneType_16+0x150>
1c0094b4:	28400374 	ld.h	$r20,$r27,0
1c0094b8:	1c000ef9 	pcaddu12i	$r25,119(0x77)
1c0094bc:	02845339 	addi.w	$r25,$r25,276(0x114)
1c0094c0:	2980032a 	st.w	$r10,$r25,0
1c0094c4:	001503ac 	move	$r12,$r29
1c0094c8:	00150012 	move	$r18,$r0
1c0094cc:	028c8013 	addi.w	$r19,$r0,800(0x320)
1c0094d0:	64000e9d 	bge	$r20,$r29,12(0xc) # 1c0094dc <minmax_sequence_TestOneType_16+0x1fc>
1c0094d4:	02800412 	addi.w	$r18,$r0,1(0x1)
1c0094d8:	0015028c 	move	$r12,$r20
1c0094dc:	0280081a 	addi.w	$r26,$r0,2(0x2)
1c0094e0:	02800b7c 	addi.w	$r28,$r27,2(0x2)
1c0094e4:	28400396 	ld.h	$r22,$r28,0
1c0094e8:	64000ecc 	bge	$r22,$r12,12(0xc) # 1c0094f4 <minmax_sequence_TestOneType_16+0x214>
1c0094ec:	00150352 	move	$r18,$r26
1c0094f0:	001502cc 	move	$r12,$r22
1c0094f4:	28400b98 	ld.h	$r24,$r28,2(0x2)
1c0094f8:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c0094fc:	02800b9c 	addi.w	$r28,$r28,2(0x2)
1c009500:	64000f0c 	bge	$r24,$r12,12(0xc) # 1c00950c <minmax_sequence_TestOneType_16+0x22c>
1c009504:	00150352 	move	$r18,$r26
1c009508:	0015030c 	move	$r12,$r24
1c00950c:	28400b9f 	ld.h	$r31,$r28,2(0x2)
1c009510:	02800744 	addi.w	$r4,$r26,1(0x1)
1c009514:	64000fec 	bge	$r31,$r12,12(0xc) # 1c009520 <minmax_sequence_TestOneType_16+0x240>
1c009518:	00150092 	move	$r18,$r4
1c00951c:	001503ec 	move	$r12,$r31
1c009520:	28401397 	ld.h	$r23,$r28,4(0x4)
1c009524:	02800b45 	addi.w	$r5,$r26,2(0x2)
1c009528:	64000eec 	bge	$r23,$r12,12(0xc) # 1c009534 <minmax_sequence_TestOneType_16+0x254>
1c00952c:	001500b2 	move	$r18,$r5
1c009530:	001502ec 	move	$r12,$r23
1c009534:	28401b81 	ld.h	$r1,$r28,6(0x6)
1c009538:	02800f51 	addi.w	$r17,$r26,3(0x3)
1c00953c:	64000c2c 	bge	$r1,$r12,12(0xc) # 1c009548 <minmax_sequence_TestOneType_16+0x268>
1c009540:	00150232 	move	$r18,$r17
1c009544:	0015002c 	move	$r12,$r1
1c009548:	28402386 	ld.h	$r6,$r28,8(0x8)
1c00954c:	0280134d 	addi.w	$r13,$r26,4(0x4)
1c009550:	64000ccc 	bge	$r6,$r12,12(0xc) # 1c00955c <minmax_sequence_TestOneType_16+0x27c>
1c009554:	001501b2 	move	$r18,$r13
1c009558:	001500cc 	move	$r12,$r6
1c00955c:	28402b90 	ld.h	$r16,$r28,10(0xa)
1c009560:	02801747 	addi.w	$r7,$r26,5(0x5)
1c009564:	64000e0c 	bge	$r16,$r12,12(0xc) # 1c009570 <minmax_sequence_TestOneType_16+0x290>
1c009568:	001500f2 	move	$r18,$r7
1c00956c:	0015020c 	move	$r12,$r16
1c009570:	28403388 	ld.h	$r8,$r28,12(0xc)
1c009574:	02801b49 	addi.w	$r9,$r26,6(0x6)
1c009578:	64000d0c 	bge	$r8,$r12,12(0xc) # 1c009584 <minmax_sequence_TestOneType_16+0x2a4>
1c00957c:	00150132 	move	$r18,$r9
1c009580:	0015010c 	move	$r12,$r8
1c009584:	28403b8a 	ld.h	$r10,$r28,14(0xe)
1c009588:	02801f4b 	addi.w	$r11,$r26,7(0x7)
1c00958c:	64000d4c 	bge	$r10,$r12,12(0xc) # 1c009598 <minmax_sequence_TestOneType_16+0x2b8>
1c009590:	00150172 	move	$r18,$r11
1c009594:	0015014c 	move	$r12,$r10
1c009598:	2840438f 	ld.h	$r15,$r28,16(0x10)
1c00959c:	0280234e 	addi.w	$r14,$r26,8(0x8)
1c0095a0:	64000dec 	bge	$r15,$r12,12(0xc) # 1c0095ac <minmax_sequence_TestOneType_16+0x2cc>
1c0095a4:	001501d2 	move	$r18,$r14
1c0095a8:	001501ec 	move	$r12,$r15
1c0095ac:	28404b94 	ld.h	$r20,$r28,18(0x12)
1c0095b0:	02802756 	addi.w	$r22,$r26,9(0x9)
1c0095b4:	64000e8c 	bge	$r20,$r12,12(0xc) # 1c0095c0 <minmax_sequence_TestOneType_16+0x2e0>
1c0095b8:	001502d2 	move	$r18,$r22
1c0095bc:	0015028c 	move	$r12,$r20
1c0095c0:	28405398 	ld.h	$r24,$r28,20(0x14)
1c0095c4:	02802b5f 	addi.w	$r31,$r26,10(0xa)
1c0095c8:	64000f0c 	bge	$r24,$r12,12(0xc) # 1c0095d4 <minmax_sequence_TestOneType_16+0x2f4>
1c0095cc:	001503f2 	move	$r18,$r31
1c0095d0:	0015030c 	move	$r12,$r24
1c0095d4:	28405b97 	ld.h	$r23,$r28,22(0x16)
1c0095d8:	02802f44 	addi.w	$r4,$r26,11(0xb)
1c0095dc:	64000eec 	bge	$r23,$r12,12(0xc) # 1c0095e8 <minmax_sequence_TestOneType_16+0x308>
1c0095e0:	00150092 	move	$r18,$r4
1c0095e4:	001502ec 	move	$r12,$r23
1c0095e8:	28406385 	ld.h	$r5,$r28,24(0x18)
1c0095ec:	02803341 	addi.w	$r1,$r26,12(0xc)
1c0095f0:	64000cac 	bge	$r5,$r12,12(0xc) # 1c0095fc <minmax_sequence_TestOneType_16+0x31c>
1c0095f4:	00150032 	move	$r18,$r1
1c0095f8:	001500ac 	move	$r12,$r5
1c0095fc:	0280375a 	addi.w	$r26,$r26,13(0xd)
1c009600:	02806b9c 	addi.w	$r28,$r28,26(0x1a)
1c009604:	5ffee353 	bne	$r26,$r19,-288(0x3fee0) # 1c0094e4 <minmax_sequence_TestOneType_16+0x204>
1c009608:	28400371 	ld.h	$r17,$r27,0
1c00960c:	1c000efa 	pcaddu12i	$r26,119(0x77)
1c009610:	02bef35a 	addi.w	$r26,$r26,-68(0xfbc)
1c009614:	29800352 	st.w	$r18,$r26,0
1c009618:	001503ac 	move	$r12,$r29
1c00961c:	00150013 	move	$r19,$r0
1c009620:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c009624:	64000fb1 	bge	$r29,$r17,12(0xc) # 1c009630 <minmax_sequence_TestOneType_16+0x350>
1c009628:	02800413 	addi.w	$r19,$r0,1(0x1)
1c00962c:	0015022c 	move	$r12,$r17
1c009630:	02800810 	addi.w	$r16,$r0,2(0x2)
1c009634:	02800b6d 	addi.w	$r13,$r27,2(0x2)
1c009638:	284001a7 	ld.h	$r7,$r13,0
1c00963c:	64000d87 	bge	$r12,$r7,12(0xc) # 1c009648 <minmax_sequence_TestOneType_16+0x368>
1c009640:	00150213 	move	$r19,$r16
1c009644:	001500ec 	move	$r12,$r7
1c009648:	284009a8 	ld.h	$r8,$r13,2(0x2)
1c00964c:	02800610 	addi.w	$r16,$r16,1(0x1)
1c009650:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c009654:	64000d88 	bge	$r12,$r8,12(0xc) # 1c009660 <minmax_sequence_TestOneType_16+0x380>
1c009658:	00150213 	move	$r19,$r16
1c00965c:	0015010c 	move	$r12,$r8
1c009660:	284009a9 	ld.h	$r9,$r13,2(0x2)
1c009664:	0280060a 	addi.w	$r10,$r16,1(0x1)
1c009668:	64000d89 	bge	$r12,$r9,12(0xc) # 1c009674 <minmax_sequence_TestOneType_16+0x394>
1c00966c:	00150153 	move	$r19,$r10
1c009670:	0015012c 	move	$r12,$r9
1c009674:	284011ab 	ld.h	$r11,$r13,4(0x4)
1c009678:	02800a0f 	addi.w	$r15,$r16,2(0x2)
1c00967c:	64000d8b 	bge	$r12,$r11,12(0xc) # 1c009688 <minmax_sequence_TestOneType_16+0x3a8>
1c009680:	001501f3 	move	$r19,$r15
1c009684:	0015016c 	move	$r12,$r11
1c009688:	284019ae 	ld.h	$r14,$r13,6(0x6)
1c00968c:	02800e14 	addi.w	$r20,$r16,3(0x3)
1c009690:	64000d8e 	bge	$r12,$r14,12(0xc) # 1c00969c <minmax_sequence_TestOneType_16+0x3bc>
1c009694:	00150293 	move	$r19,$r20
1c009698:	001501cc 	move	$r12,$r14
1c00969c:	284021b6 	ld.h	$r22,$r13,8(0x8)
1c0096a0:	02801218 	addi.w	$r24,$r16,4(0x4)
1c0096a4:	64000d96 	bge	$r12,$r22,12(0xc) # 1c0096b0 <minmax_sequence_TestOneType_16+0x3d0>
1c0096a8:	00150313 	move	$r19,$r24
1c0096ac:	001502cc 	move	$r12,$r22
1c0096b0:	284029bf 	ld.h	$r31,$r13,10(0xa)
1c0096b4:	02801617 	addi.w	$r23,$r16,5(0x5)
1c0096b8:	64000d9f 	bge	$r12,$r31,12(0xc) # 1c0096c4 <minmax_sequence_TestOneType_16+0x3e4>
1c0096bc:	001502f3 	move	$r19,$r23
1c0096c0:	001503ec 	move	$r12,$r31
1c0096c4:	284031a5 	ld.h	$r5,$r13,12(0xc)
1c0096c8:	02801a04 	addi.w	$r4,$r16,6(0x6)
1c0096cc:	64000d85 	bge	$r12,$r5,12(0xc) # 1c0096d8 <minmax_sequence_TestOneType_16+0x3f8>
1c0096d0:	00150093 	move	$r19,$r4
1c0096d4:	001500ac 	move	$r12,$r5
1c0096d8:	284039a1 	ld.h	$r1,$r13,14(0xe)
1c0096dc:	02801e12 	addi.w	$r18,$r16,7(0x7)
1c0096e0:	64000d81 	bge	$r12,$r1,12(0xc) # 1c0096ec <minmax_sequence_TestOneType_16+0x40c>
1c0096e4:	00150253 	move	$r19,$r18
1c0096e8:	0015002c 	move	$r12,$r1
1c0096ec:	284041bc 	ld.h	$r28,$r13,16(0x10)
1c0096f0:	02802211 	addi.w	$r17,$r16,8(0x8)
1c0096f4:	64000d9c 	bge	$r12,$r28,12(0xc) # 1c009700 <minmax_sequence_TestOneType_16+0x420>
1c0096f8:	00150233 	move	$r19,$r17
1c0096fc:	0015038c 	move	$r12,$r28
1c009700:	284049a7 	ld.h	$r7,$r13,18(0x12)
1c009704:	02802608 	addi.w	$r8,$r16,9(0x9)
1c009708:	64000d87 	bge	$r12,$r7,12(0xc) # 1c009714 <minmax_sequence_TestOneType_16+0x434>
1c00970c:	00150113 	move	$r19,$r8
1c009710:	001500ec 	move	$r12,$r7
1c009714:	284051a9 	ld.h	$r9,$r13,20(0x14)
1c009718:	02802a0a 	addi.w	$r10,$r16,10(0xa)
1c00971c:	64000d89 	bge	$r12,$r9,12(0xc) # 1c009728 <minmax_sequence_TestOneType_16+0x448>
1c009720:	00150153 	move	$r19,$r10
1c009724:	0015012c 	move	$r12,$r9
1c009728:	284059ab 	ld.h	$r11,$r13,22(0x16)
1c00972c:	02802e0f 	addi.w	$r15,$r16,11(0xb)
1c009730:	64000d8b 	bge	$r12,$r11,12(0xc) # 1c00973c <minmax_sequence_TestOneType_16+0x45c>
1c009734:	001501f3 	move	$r19,$r15
1c009738:	0015016c 	move	$r12,$r11
1c00973c:	284061ae 	ld.h	$r14,$r13,24(0x18)
1c009740:	02803214 	addi.w	$r20,$r16,12(0xc)
1c009744:	64000d8e 	bge	$r12,$r14,12(0xc) # 1c009750 <minmax_sequence_TestOneType_16+0x470>
1c009748:	00150293 	move	$r19,$r20
1c00974c:	001501cc 	move	$r12,$r14
1c009750:	02803610 	addi.w	$r16,$r16,13(0xd)
1c009754:	028069ad 	addi.w	$r13,$r13,26(0x1a)
1c009758:	5ffee206 	bne	$r16,$r6,-288(0x3fee0) # 1c009638 <minmax_sequence_TestOneType_16+0x358>
1c00975c:	1c000ee6 	pcaddu12i	$r6,119(0x77)
1c009760:	02b9a0c6 	addi.w	$r6,$r6,-408(0xe68)
1c009764:	1c000ef7 	pcaddu12i	$r23,119(0x77)
1c009768:	02b942f7 	addi.w	$r23,$r23,-432(0xe50)
1c00976c:	298000d3 	st.w	$r19,$r6,0
1c009770:	543fd000 	bl	16336(0x3fd0) # 1c00d740 <get_clock>
1c009774:	288002f2 	ld.w	$r18,$r23,0
1c009778:	1c000efc 	pcaddu12i	$r28,119(0x77)
1c00977c:	28b9239c 	ld.w	$r28,$r28,-440(0xe48)
1c009780:	29800384 	st.w	$r4,$r28,0
1c009784:	00150018 	move	$r24,$r0
1c009788:	64018c12 	bge	$r0,$r18,396(0x18c) # 1c009914 <minmax_sequence_TestOneType_16+0x634>
1c00978c:	0015001f 	move	$r31,$r0
1c009790:	02994076 	addi.w	$r22,$r3,1616(0x650)
1c009794:	00116ec5 	sub.w	$r5,$r22,$r27
1c009798:	02bff8a4 	addi.w	$r4,$r5,-2(0xffe)
1c00979c:	00448481 	srli.w	$r1,$r4,0x1
1c0097a0:	02800431 	addi.w	$r17,$r1,1(0x1)
1c0097a4:	03401e27 	andi	$r7,$r17,0x7
1c0097a8:	0015036c 	move	$r12,$r27
1c0097ac:	001503b0 	move	$r16,$r29
1c0097b0:	5800c0e0 	beq	$r7,$r0,192(0xc0) # 1c009870 <minmax_sequence_TestOneType_16+0x590>
1c0097b4:	02800408 	addi.w	$r8,$r0,1(0x1)
1c0097b8:	5800a0e8 	beq	$r7,$r8,160(0xa0) # 1c009858 <minmax_sequence_TestOneType_16+0x578>
1c0097bc:	02800809 	addi.w	$r9,$r0,2(0x2)
1c0097c0:	580084e9 	beq	$r7,$r9,132(0x84) # 1c009844 <minmax_sequence_TestOneType_16+0x564>
1c0097c4:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c0097c8:	580068ea 	beq	$r7,$r10,104(0x68) # 1c009830 <minmax_sequence_TestOneType_16+0x550>
1c0097cc:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c0097d0:	58004ceb 	beq	$r7,$r11,76(0x4c) # 1c00981c <minmax_sequence_TestOneType_16+0x53c>
1c0097d4:	0280140f 	addi.w	$r15,$r0,5(0x5)
1c0097d8:	580030ef 	beq	$r7,$r15,48(0x30) # 1c009808 <minmax_sequence_TestOneType_16+0x528>
1c0097dc:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c0097e0:	580014ee 	beq	$r7,$r14,20(0x14) # 1c0097f4 <minmax_sequence_TestOneType_16+0x514>
1c0097e4:	28400370 	ld.h	$r16,$r27,0
1c0097e8:	64000bb0 	bge	$r29,$r16,8(0x8) # 1c0097f0 <minmax_sequence_TestOneType_16+0x510>
1c0097ec:	001503b0 	move	$r16,$r29
1c0097f0:	02800b6c 	addi.w	$r12,$r27,2(0x2)
1c0097f4:	28400194 	ld.h	$r20,$r12,0
1c0097f8:	64000a14 	bge	$r16,$r20,8(0x8) # 1c009800 <minmax_sequence_TestOneType_16+0x520>
1c0097fc:	00150214 	move	$r20,$r16
1c009800:	00150290 	move	$r16,$r20
1c009804:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009808:	28400193 	ld.h	$r19,$r12,0
1c00980c:	64000a13 	bge	$r16,$r19,8(0x8) # 1c009814 <minmax_sequence_TestOneType_16+0x534>
1c009810:	00150213 	move	$r19,$r16
1c009814:	00150270 	move	$r16,$r19
1c009818:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00981c:	2840018d 	ld.h	$r13,$r12,0
1c009820:	64000a0d 	bge	$r16,$r13,8(0x8) # 1c009828 <minmax_sequence_TestOneType_16+0x548>
1c009824:	0015020d 	move	$r13,$r16
1c009828:	001501b0 	move	$r16,$r13
1c00982c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009830:	28400186 	ld.h	$r6,$r12,0
1c009834:	64000a06 	bge	$r16,$r6,8(0x8) # 1c00983c <minmax_sequence_TestOneType_16+0x55c>
1c009838:	00150206 	move	$r6,$r16
1c00983c:	001500d0 	move	$r16,$r6
1c009840:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009844:	28400185 	ld.h	$r5,$r12,0
1c009848:	64000a05 	bge	$r16,$r5,8(0x8) # 1c009850 <minmax_sequence_TestOneType_16+0x570>
1c00984c:	00150205 	move	$r5,$r16
1c009850:	001500b0 	move	$r16,$r5
1c009854:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009858:	28400186 	ld.h	$r6,$r12,0
1c00985c:	64000a06 	bge	$r16,$r6,8(0x8) # 1c009864 <minmax_sequence_TestOneType_16+0x584>
1c009860:	00150206 	move	$r6,$r16
1c009864:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009868:	001500d0 	move	$r16,$r6
1c00986c:	580076cc 	beq	$r22,$r12,116(0x74) # 1c0098e0 <minmax_sequence_TestOneType_16+0x600>
1c009870:	28400184 	ld.h	$r4,$r12,0
1c009874:	64000a04 	bge	$r16,$r4,8(0x8) # 1c00987c <minmax_sequence_TestOneType_16+0x59c>
1c009878:	00150204 	move	$r4,$r16
1c00987c:	28400990 	ld.h	$r16,$r12,2(0x2)
1c009880:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009884:	64000890 	bge	$r4,$r16,8(0x8) # 1c00988c <minmax_sequence_TestOneType_16+0x5ac>
1c009888:	00150090 	move	$r16,$r4
1c00988c:	28400981 	ld.h	$r1,$r12,2(0x2)
1c009890:	64000a01 	bge	$r16,$r1,8(0x8) # 1c009898 <minmax_sequence_TestOneType_16+0x5b8>
1c009894:	00150201 	move	$r1,$r16
1c009898:	28401191 	ld.h	$r17,$r12,4(0x4)
1c00989c:	64000831 	bge	$r1,$r17,8(0x8) # 1c0098a4 <minmax_sequence_TestOneType_16+0x5c4>
1c0098a0:	00150031 	move	$r17,$r1
1c0098a4:	28401987 	ld.h	$r7,$r12,6(0x6)
1c0098a8:	64000a27 	bge	$r17,$r7,8(0x8) # 1c0098b0 <minmax_sequence_TestOneType_16+0x5d0>
1c0098ac:	00150227 	move	$r7,$r17
1c0098b0:	28402188 	ld.h	$r8,$r12,8(0x8)
1c0098b4:	640008e8 	bge	$r7,$r8,8(0x8) # 1c0098bc <minmax_sequence_TestOneType_16+0x5dc>
1c0098b8:	001500e8 	move	$r8,$r7
1c0098bc:	28402990 	ld.h	$r16,$r12,10(0xa)
1c0098c0:	64000910 	bge	$r8,$r16,8(0x8) # 1c0098c8 <minmax_sequence_TestOneType_16+0x5e8>
1c0098c4:	00150110 	move	$r16,$r8
1c0098c8:	28403186 	ld.h	$r6,$r12,12(0xc)
1c0098cc:	64000a06 	bge	$r16,$r6,8(0x8) # 1c0098d4 <minmax_sequence_TestOneType_16+0x5f4>
1c0098d0:	00150206 	move	$r6,$r16
1c0098d4:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c0098d8:	001500d0 	move	$r16,$r6
1c0098dc:	5fff96cc 	bne	$r22,$r12,-108(0x3ff94) # 1c009870 <minmax_sequence_TestOneType_16+0x590>
1c0098e0:	288003c7 	ld.w	$r7,$r30,0
1c0098e4:	29803067 	st.w	$r7,$r3,12(0xc)
1c0098e8:	28403069 	ld.h	$r9,$r3,12(0xc)
1c0098ec:	58069526 	beq	$r9,$r6,1684(0x694) # 1c009f80 <minmax_sequence_TestOneType_16+0xca0>
1c0098f0:	1c000ee5 	pcaddu12i	$r5,119(0x77)
1c0098f4:	02a230a5 	addi.w	$r5,$r5,-1908(0x88c)
1c0098f8:	1c000ec4 	pcaddu12i	$r4,118(0x76)
1c0098fc:	029cd084 	addi.w	$r4,$r4,1844(0x734)
1c009900:	54393000 	bl	14640(0x3930) # 1c00d230 <printf>
1c009904:	288002f2 	ld.w	$r18,$r23,0
1c009908:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00990c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c009910:	63fe87f2 	blt	$r31,$r18,-380(0x3fe84) # 1c009794 <minmax_sequence_TestOneType_16+0x4b4>
1c009914:	543e2c00 	bl	15916(0x3e2c) # 1c00d740 <get_clock>
1c009918:	2880038a 	ld.w	$r10,$r28,0
1c00991c:	0015009e 	move	$r30,$r4
1c009920:	14001e8b 	lu12i.w	$r11,244(0xf4)
1c009924:	0389016f 	ori	$r15,$r11,0x240
1c009928:	1c000eee 	pcaddu12i	$r14,119(0x77)
1c00992c:	28b251ce 	ld.w	$r14,$r14,-876(0xc94)
1c009930:	00112bd4 	sub.w	$r20,$r30,$r10
1c009934:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c009938:	00213e87 	div.wu	$r7,$r20,$r15
1c00993c:	5c0009e0 	bne	$r15,$r0,8(0x8) # 1c009944 <minmax_sequence_TestOneType_16+0x664>
1c009940:	002a0007 	break	0x7
1c009944:	1c000ee5 	pcaddu12i	$r5,119(0x77)
1c009948:	02a0e0a5 	addi.w	$r5,$r5,-1992(0x838)
1c00994c:	1c000ec4 	pcaddu12i	$r4,118(0x76)
1c009950:	029c2084 	addi.w	$r4,$r4,1800(0x708)
1c009954:	298001de 	st.w	$r30,$r14,0
1c009958:	5438d800 	bl	14552(0x38d8) # 1c00d230 <printf>
1c00995c:	543de400 	bl	15844(0x3de4) # 1c00d740 <get_clock>
1c009960:	288002f3 	ld.w	$r19,$r23,0
1c009964:	29800384 	st.w	$r4,$r28,0
1c009968:	64019413 	bge	$r0,$r19,404(0x194) # 1c009afc <minmax_sequence_TestOneType_16+0x81c>
1c00996c:	00150016 	move	$r22,$r0
1c009970:	0015001e 	move	$r30,$r0
1c009974:	0299407f 	addi.w	$r31,$r3,1616(0x650)
1c009978:	00116fed 	sub.w	$r13,$r31,$r27
1c00997c:	02bff9a6 	addi.w	$r6,$r13,-2(0xffe)
1c009980:	004484c5 	srli.w	$r5,$r6,0x1
1c009984:	028004a4 	addi.w	$r4,$r5,1(0x1)
1c009988:	03401c81 	andi	$r1,$r4,0x7
1c00998c:	0015036c 	move	$r12,$r27
1c009990:	001503b2 	move	$r18,$r29
1c009994:	5800c020 	beq	$r1,$r0,192(0xc0) # 1c009a54 <minmax_sequence_TestOneType_16+0x774>
1c009998:	02800411 	addi.w	$r17,$r0,1(0x1)
1c00999c:	5800a031 	beq	$r1,$r17,160(0xa0) # 1c009a3c <minmax_sequence_TestOneType_16+0x75c>
1c0099a0:	02800808 	addi.w	$r8,$r0,2(0x2)
1c0099a4:	58008428 	beq	$r1,$r8,132(0x84) # 1c009a28 <minmax_sequence_TestOneType_16+0x748>
1c0099a8:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c0099ac:	58006830 	beq	$r1,$r16,104(0x68) # 1c009a14 <minmax_sequence_TestOneType_16+0x734>
1c0099b0:	02801009 	addi.w	$r9,$r0,4(0x4)
1c0099b4:	58004c29 	beq	$r1,$r9,76(0x4c) # 1c009a00 <minmax_sequence_TestOneType_16+0x720>
1c0099b8:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c0099bc:	5800302a 	beq	$r1,$r10,48(0x30) # 1c0099ec <minmax_sequence_TestOneType_16+0x70c>
1c0099c0:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c0099c4:	5800142b 	beq	$r1,$r11,20(0x14) # 1c0099d8 <minmax_sequence_TestOneType_16+0x6f8>
1c0099c8:	28400372 	ld.h	$r18,$r27,0
1c0099cc:	64000a5d 	bge	$r18,$r29,8(0x8) # 1c0099d4 <minmax_sequence_TestOneType_16+0x6f4>
1c0099d0:	001503b2 	move	$r18,$r29
1c0099d4:	02800b6c 	addi.w	$r12,$r27,2(0x2)
1c0099d8:	2840018f 	ld.h	$r15,$r12,0
1c0099dc:	640009f2 	bge	$r15,$r18,8(0x8) # 1c0099e4 <minmax_sequence_TestOneType_16+0x704>
1c0099e0:	0015024f 	move	$r15,$r18
1c0099e4:	001501f2 	move	$r18,$r15
1c0099e8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0099ec:	2840018e 	ld.h	$r14,$r12,0
1c0099f0:	640009d2 	bge	$r14,$r18,8(0x8) # 1c0099f8 <minmax_sequence_TestOneType_16+0x718>
1c0099f4:	0015024e 	move	$r14,$r18
1c0099f8:	001501d2 	move	$r18,$r14
1c0099fc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009a00:	28400194 	ld.h	$r20,$r12,0
1c009a04:	64000a92 	bge	$r20,$r18,8(0x8) # 1c009a0c <minmax_sequence_TestOneType_16+0x72c>
1c009a08:	00150254 	move	$r20,$r18
1c009a0c:	00150292 	move	$r18,$r20
1c009a10:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009a14:	28400187 	ld.h	$r7,$r12,0
1c009a18:	640008f2 	bge	$r7,$r18,8(0x8) # 1c009a20 <minmax_sequence_TestOneType_16+0x740>
1c009a1c:	00150247 	move	$r7,$r18
1c009a20:	001500f2 	move	$r18,$r7
1c009a24:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009a28:	2840018d 	ld.h	$r13,$r12,0
1c009a2c:	640009b2 	bge	$r13,$r18,8(0x8) # 1c009a34 <minmax_sequence_TestOneType_16+0x754>
1c009a30:	0015024d 	move	$r13,$r18
1c009a34:	001501b2 	move	$r18,$r13
1c009a38:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009a3c:	28400186 	ld.h	$r6,$r12,0
1c009a40:	640008d2 	bge	$r6,$r18,8(0x8) # 1c009a48 <minmax_sequence_TestOneType_16+0x768>
1c009a44:	00150246 	move	$r6,$r18
1c009a48:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009a4c:	001500d2 	move	$r18,$r6
1c009a50:	5800759f 	beq	$r12,$r31,116(0x74) # 1c009ac4 <minmax_sequence_TestOneType_16+0x7e4>
1c009a54:	28400186 	ld.h	$r6,$r12,0
1c009a58:	640008d2 	bge	$r6,$r18,8(0x8) # 1c009a60 <minmax_sequence_TestOneType_16+0x780>
1c009a5c:	00150246 	move	$r6,$r18
1c009a60:	28400992 	ld.h	$r18,$r12,2(0x2)
1c009a64:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c009a68:	64000a46 	bge	$r18,$r6,8(0x8) # 1c009a70 <minmax_sequence_TestOneType_16+0x790>
1c009a6c:	001500d2 	move	$r18,$r6
1c009a70:	28400985 	ld.h	$r5,$r12,2(0x2)
1c009a74:	640008b2 	bge	$r5,$r18,8(0x8) # 1c009a7c <minmax_sequence_TestOneType_16+0x79c>
1c009a78:	00150245 	move	$r5,$r18
1c009a7c:	28401184 	ld.h	$r4,$r12,4(0x4)
1c009a80:	64000885 	bge	$r4,$r5,8(0x8) # 1c009a88 <minmax_sequence_TestOneType_16+0x7a8>
1c009a84:	001500a4 	move	$r4,$r5
1c009a88:	28401981 	ld.h	$r1,$r12,6(0x6)
1c009a8c:	64000824 	bge	$r1,$r4,8(0x8) # 1c009a94 <minmax_sequence_TestOneType_16+0x7b4>
1c009a90:	00150081 	move	$r1,$r4
1c009a94:	28402191 	ld.h	$r17,$r12,8(0x8)
1c009a98:	64000a21 	bge	$r17,$r1,8(0x8) # 1c009aa0 <minmax_sequence_TestOneType_16+0x7c0>
1c009a9c:	00150031 	move	$r17,$r1
1c009aa0:	28402992 	ld.h	$r18,$r12,10(0xa)
1c009aa4:	64000a51 	bge	$r18,$r17,8(0x8) # 1c009aac <minmax_sequence_TestOneType_16+0x7cc>
1c009aa8:	00150232 	move	$r18,$r17
1c009aac:	28403186 	ld.h	$r6,$r12,12(0xc)
1c009ab0:	640008d2 	bge	$r6,$r18,8(0x8) # 1c009ab8 <minmax_sequence_TestOneType_16+0x7d8>
1c009ab4:	00150246 	move	$r6,$r18
1c009ab8:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c009abc:	001500d2 	move	$r18,$r6
1c009ac0:	5fff959f 	bne	$r12,$r31,-108(0x3ff94) # 1c009a54 <minmax_sequence_TestOneType_16+0x774>
1c009ac4:	28800327 	ld.w	$r7,$r25,0
1c009ac8:	29803067 	st.w	$r7,$r3,12(0xc)
1c009acc:	28403068 	ld.h	$r8,$r3,12(0xc)
1c009ad0:	5804c106 	beq	$r8,$r6,1216(0x4c0) # 1c009f90 <minmax_sequence_TestOneType_16+0xcb0>
1c009ad4:	1c000ec5 	pcaddu12i	$r5,118(0x76)
1c009ad8:	029b20a5 	addi.w	$r5,$r5,1736(0x6c8)
1c009adc:	1c000ec4 	pcaddu12i	$r4,118(0x76)
1c009ae0:	02954084 	addi.w	$r4,$r4,1360(0x550)
1c009ae4:	54374c00 	bl	14156(0x374c) # 1c00d230 <printf>
1c009ae8:	288002f3 	ld.w	$r19,$r23,0
1c009aec:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c009af0:	028007de 	addi.w	$r30,$r30,1(0x1)
1c009af4:	63fe86d3 	blt	$r22,$r19,-380(0x3fe84) # 1c009978 <minmax_sequence_TestOneType_16+0x698>
1c009af8:	00107b18 	add.w	$r24,$r24,$r30
1c009afc:	543c4400 	bl	15428(0x3c44) # 1c00d740 <get_clock>
1c009b00:	28800389 	ld.w	$r9,$r28,0
1c009b04:	00150090 	move	$r16,$r4
1c009b08:	14001e99 	lu12i.w	$r25,244(0xf4)
1c009b0c:	0389032a 	ori	$r10,$r25,0x240
1c009b10:	1c000eeb 	pcaddu12i	$r11,119(0x77)
1c009b14:	28aab16b 	ld.w	$r11,$r11,-1364(0xaac)
1c009b18:	0011260f 	sub.w	$r15,$r16,$r9
1c009b1c:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c009b20:	002129e7 	div.wu	$r7,$r15,$r10
1c009b24:	5c000940 	bne	$r10,$r0,8(0x8) # 1c009b2c <minmax_sequence_TestOneType_16+0x84c>
1c009b28:	002a0007 	break	0x7
1c009b2c:	1c000ec5 	pcaddu12i	$r5,118(0x76)
1c009b30:	0299c0a5 	addi.w	$r5,$r5,1648(0x670)
1c009b34:	1c000ec4 	pcaddu12i	$r4,118(0x76)
1c009b38:	02948084 	addi.w	$r4,$r4,1312(0x520)
1c009b3c:	29800170 	st.w	$r16,$r11,0
1c009b40:	5436f000 	bl	14064(0x36f0) # 1c00d230 <printf>
1c009b44:	288002ee 	ld.w	$r14,$r23,0
1c009b48:	02801414 	addi.w	$r20,$r0,5(0x5)
1c009b4c:	00150016 	move	$r22,$r0
1c009b50:	002051c6 	div.w	$r6,$r14,$r20
1c009b54:	5c000a80 	bne	$r20,$r0,8(0x8) # 1c009b5c <minmax_sequence_TestOneType_16+0x87c>
1c009b58:	002a0007 	break	0x7
1c009b5c:	2980306e 	st.w	$r14,$r3,12(0xc)
1c009b60:	298002e6 	st.w	$r6,$r23,0
1c009b64:	543bdc00 	bl	15324(0x3bdc) # 1c00d740 <get_clock>
1c009b68:	288002f2 	ld.w	$r18,$r23,0
1c009b6c:	29800384 	st.w	$r4,$r28,0
1c009b70:	028c8019 	addi.w	$r25,$r0,800(0x320)
1c009b74:	1c000edf 	pcaddu12i	$r31,118(0x76)
1c009b78:	029923ff 	addi.w	$r31,$r31,1608(0x648)
1c009b7c:	1c000ede 	pcaddu12i	$r30,118(0x76)
1c009b80:	029213de 	addi.w	$r30,$r30,1156(0x484)
1c009b84:	64016812 	bge	$r0,$r18,360(0x168) # 1c009cec <minmax_sequence_TestOneType_16+0xa0c>
1c009b88:	28400365 	ld.h	$r5,$r27,0
1c009b8c:	001503ac 	move	$r12,$r29
1c009b90:	00150006 	move	$r6,$r0
1c009b94:	64000cbd 	bge	$r5,$r29,12(0xc) # 1c009ba0 <minmax_sequence_TestOneType_16+0x8c0>
1c009b98:	001500ac 	move	$r12,$r5
1c009b9c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c009ba0:	02800811 	addi.w	$r17,$r0,2(0x2)
1c009ba4:	02800b68 	addi.w	$r8,$r27,2(0x2)
1c009ba8:	28400104 	ld.h	$r4,$r8,0
1c009bac:	64000c8c 	bge	$r4,$r12,12(0xc) # 1c009bb8 <minmax_sequence_TestOneType_16+0x8d8>
1c009bb0:	0015008c 	move	$r12,$r4
1c009bb4:	00150226 	move	$r6,$r17
1c009bb8:	28400901 	ld.h	$r1,$r8,2(0x2)
1c009bbc:	02800631 	addi.w	$r17,$r17,1(0x1)
1c009bc0:	02800908 	addi.w	$r8,$r8,2(0x2)
1c009bc4:	64000c2c 	bge	$r1,$r12,12(0xc) # 1c009bd0 <minmax_sequence_TestOneType_16+0x8f0>
1c009bc8:	0015002c 	move	$r12,$r1
1c009bcc:	00150226 	move	$r6,$r17
1c009bd0:	28400913 	ld.h	$r19,$r8,2(0x2)
1c009bd4:	02800630 	addi.w	$r16,$r17,1(0x1)
1c009bd8:	64000e6c 	bge	$r19,$r12,12(0xc) # 1c009be4 <minmax_sequence_TestOneType_16+0x904>
1c009bdc:	0015026c 	move	$r12,$r19
1c009be0:	00150206 	move	$r6,$r16
1c009be4:	28401109 	ld.h	$r9,$r8,4(0x4)
1c009be8:	02800a2a 	addi.w	$r10,$r17,2(0x2)
1c009bec:	64000d2c 	bge	$r9,$r12,12(0xc) # 1c009bf8 <minmax_sequence_TestOneType_16+0x918>
1c009bf0:	0015012c 	move	$r12,$r9
1c009bf4:	00150146 	move	$r6,$r10
1c009bf8:	2840190b 	ld.h	$r11,$r8,6(0x6)
1c009bfc:	02800e2f 	addi.w	$r15,$r17,3(0x3)
1c009c00:	64000d6c 	bge	$r11,$r12,12(0xc) # 1c009c0c <minmax_sequence_TestOneType_16+0x92c>
1c009c04:	0015016c 	move	$r12,$r11
1c009c08:	001501e6 	move	$r6,$r15
1c009c0c:	28402107 	ld.h	$r7,$r8,8(0x8)
1c009c10:	0280122e 	addi.w	$r14,$r17,4(0x4)
1c009c14:	64000cec 	bge	$r7,$r12,12(0xc) # 1c009c20 <minmax_sequence_TestOneType_16+0x940>
1c009c18:	001500ec 	move	$r12,$r7
1c009c1c:	001501c6 	move	$r6,$r14
1c009c20:	2840290d 	ld.h	$r13,$r8,10(0xa)
1c009c24:	02801634 	addi.w	$r20,$r17,5(0x5)
1c009c28:	64000dac 	bge	$r13,$r12,12(0xc) # 1c009c34 <minmax_sequence_TestOneType_16+0x954>
1c009c2c:	001501ac 	move	$r12,$r13
1c009c30:	00150286 	move	$r6,$r20
1c009c34:	28403105 	ld.h	$r5,$r8,12(0xc)
1c009c38:	02801a24 	addi.w	$r4,$r17,6(0x6)
1c009c3c:	64000cac 	bge	$r5,$r12,12(0xc) # 1c009c48 <minmax_sequence_TestOneType_16+0x968>
1c009c40:	001500ac 	move	$r12,$r5
1c009c44:	00150086 	move	$r6,$r4
1c009c48:	28403901 	ld.h	$r1,$r8,14(0xe)
1c009c4c:	02801e33 	addi.w	$r19,$r17,7(0x7)
1c009c50:	64000c2c 	bge	$r1,$r12,12(0xc) # 1c009c5c <minmax_sequence_TestOneType_16+0x97c>
1c009c54:	0015002c 	move	$r12,$r1
1c009c58:	00150266 	move	$r6,$r19
1c009c5c:	28404110 	ld.h	$r16,$r8,16(0x10)
1c009c60:	02802229 	addi.w	$r9,$r17,8(0x8)
1c009c64:	64000e0c 	bge	$r16,$r12,12(0xc) # 1c009c70 <minmax_sequence_TestOneType_16+0x990>
1c009c68:	0015020c 	move	$r12,$r16
1c009c6c:	00150126 	move	$r6,$r9
1c009c70:	2840490a 	ld.h	$r10,$r8,18(0x12)
1c009c74:	0280262b 	addi.w	$r11,$r17,9(0x9)
1c009c78:	64000d4c 	bge	$r10,$r12,12(0xc) # 1c009c84 <minmax_sequence_TestOneType_16+0x9a4>
1c009c7c:	0015014c 	move	$r12,$r10
1c009c80:	00150166 	move	$r6,$r11
1c009c84:	2840510f 	ld.h	$r15,$r8,20(0x14)
1c009c88:	02802a27 	addi.w	$r7,$r17,10(0xa)
1c009c8c:	64000dec 	bge	$r15,$r12,12(0xc) # 1c009c98 <minmax_sequence_TestOneType_16+0x9b8>
1c009c90:	001501ec 	move	$r12,$r15
1c009c94:	001500e6 	move	$r6,$r7
1c009c98:	2840590e 	ld.h	$r14,$r8,22(0x16)
1c009c9c:	02802e2d 	addi.w	$r13,$r17,11(0xb)
1c009ca0:	64000dcc 	bge	$r14,$r12,12(0xc) # 1c009cac <minmax_sequence_TestOneType_16+0x9cc>
1c009ca4:	001501cc 	move	$r12,$r14
1c009ca8:	001501a6 	move	$r6,$r13
1c009cac:	28406105 	ld.h	$r5,$r8,24(0x18)
1c009cb0:	02803234 	addi.w	$r20,$r17,12(0xc)
1c009cb4:	64000cac 	bge	$r5,$r12,12(0xc) # 1c009cc0 <minmax_sequence_TestOneType_16+0x9e0>
1c009cb8:	001500ac 	move	$r12,$r5
1c009cbc:	00150286 	move	$r6,$r20
1c009cc0:	02803631 	addi.w	$r17,$r17,13(0xd)
1c009cc4:	02806908 	addi.w	$r8,$r8,26(0x1a)
1c009cc8:	5ffee239 	bne	$r17,$r25,-288(0x3fee0) # 1c009ba8 <minmax_sequence_TestOneType_16+0x8c8>
1c009ccc:	28800347 	ld.w	$r7,$r26,0
1c009cd0:	5802a0e6 	beq	$r7,$r6,672(0x2a0) # 1c009f70 <minmax_sequence_TestOneType_16+0xc90>
1c009cd4:	001503e5 	move	$r5,$r31
1c009cd8:	001503c4 	move	$r4,$r30
1c009cdc:	54355400 	bl	13652(0x3554) # 1c00d230 <printf>
1c009ce0:	288002f2 	ld.w	$r18,$r23,0
1c009ce4:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c009ce8:	63fea2d2 	blt	$r22,$r18,-352(0x3fea0) # 1c009b88 <minmax_sequence_TestOneType_16+0x8a8>
1c009cec:	543a5400 	bl	14932(0x3a54) # 1c00d740 <get_clock>
1c009cf0:	28800393 	ld.w	$r19,$r28,0
1c009cf4:	0015009a 	move	$r26,$r4
1c009cf8:	14001e86 	lu12i.w	$r6,244(0xf4)
1c009cfc:	038900d0 	ori	$r16,$r6,0x240
1c009d00:	00114f4a 	sub.w	$r10,$r26,$r19
1c009d04:	1c000ee9 	pcaddu12i	$r9,119(0x77)
1c009d08:	28a2e129 	ld.w	$r9,$r9,-1864(0x8b8)
1c009d0c:	00214147 	div.wu	$r7,$r10,$r16
1c009d10:	5c000a00 	bne	$r16,$r0,8(0x8) # 1c009d18 <minmax_sequence_TestOneType_16+0xa38>
1c009d14:	002a0007 	break	0x7
1c009d18:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c009d1c:	1c000ec5 	pcaddu12i	$r5,118(0x76)
1c009d20:	029280a5 	addi.w	$r5,$r5,1184(0x4a0)
1c009d24:	1c000ec4 	pcaddu12i	$r4,118(0x76)
1c009d28:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c009d2c:	2980013a 	st.w	$r26,$r9,0
1c009d30:	54350000 	bl	13568(0x3500) # 1c00d230 <printf>
1c009d34:	543a0c00 	bl	14860(0x3a0c) # 1c00d740 <get_clock>
1c009d38:	288002f1 	ld.w	$r17,$r23,0
1c009d3c:	29800384 	st.w	$r4,$r28,0
1c009d40:	0015001f 	move	$r31,$r0
1c009d44:	028c8019 	addi.w	$r25,$r0,800(0x320)
1c009d48:	1c000ede 	pcaddu12i	$r30,118(0x76)
1c009d4c:	029263de 	addi.w	$r30,$r30,1176(0x498)
1c009d50:	1c000eda 	pcaddu12i	$r26,118(0x76)
1c009d54:	028ac35a 	addi.w	$r26,$r26,688(0x2b0)
1c009d58:	64017411 	bge	$r0,$r17,372(0x174) # 1c009ecc <minmax_sequence_TestOneType_16+0xbec>
1c009d5c:	03400000 	andi	$r0,$r0,0x0
1c009d60:	28400364 	ld.h	$r4,$r27,0
1c009d64:	001503ac 	move	$r12,$r29
1c009d68:	00150006 	move	$r6,$r0
1c009d6c:	64000fa4 	bge	$r29,$r4,12(0xc) # 1c009d78 <minmax_sequence_TestOneType_16+0xa98>
1c009d70:	0015008c 	move	$r12,$r4
1c009d74:	02800406 	addi.w	$r6,$r0,1(0x1)
1c009d78:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c009d7c:	02800b6e 	addi.w	$r14,$r27,2(0x2)
1c009d80:	284001c1 	ld.h	$r1,$r14,0
1c009d84:	64000d81 	bge	$r12,$r1,12(0xc) # 1c009d90 <minmax_sequence_TestOneType_16+0xab0>
1c009d88:	0015002c 	move	$r12,$r1
1c009d8c:	001501e6 	move	$r6,$r15
1c009d90:	284009cb 	ld.h	$r11,$r14,2(0x2)
1c009d94:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c009d98:	028009ce 	addi.w	$r14,$r14,2(0x2)
1c009d9c:	64000d8b 	bge	$r12,$r11,12(0xc) # 1c009da8 <minmax_sequence_TestOneType_16+0xac8>
1c009da0:	0015016c 	move	$r12,$r11
1c009da4:	001501e6 	move	$r6,$r15
1c009da8:	284009cd 	ld.h	$r13,$r14,2(0x2)
1c009dac:	028005e5 	addi.w	$r5,$r15,1(0x1)
1c009db0:	64000d8d 	bge	$r12,$r13,12(0xc) # 1c009dbc <minmax_sequence_TestOneType_16+0xadc>
1c009db4:	001501ac 	move	$r12,$r13
1c009db8:	001500a6 	move	$r6,$r5
1c009dbc:	284011d4 	ld.h	$r20,$r14,4(0x4)
1c009dc0:	028009e8 	addi.w	$r8,$r15,2(0x2)
1c009dc4:	64000d94 	bge	$r12,$r20,12(0xc) # 1c009dd0 <minmax_sequence_TestOneType_16+0xaf0>
1c009dc8:	0015028c 	move	$r12,$r20
1c009dcc:	00150106 	move	$r6,$r8
1c009dd0:	284019d2 	ld.h	$r18,$r14,6(0x6)
1c009dd4:	02800df6 	addi.w	$r22,$r15,3(0x3)
1c009dd8:	64000d92 	bge	$r12,$r18,12(0xc) # 1c009de4 <minmax_sequence_TestOneType_16+0xb04>
1c009ddc:	0015024c 	move	$r12,$r18
1c009de0:	001502c6 	move	$r6,$r22
1c009de4:	284021d0 	ld.h	$r16,$r14,8(0x8)
1c009de8:	028011f3 	addi.w	$r19,$r15,4(0x4)
1c009dec:	64000d90 	bge	$r12,$r16,12(0xc) # 1c009df8 <minmax_sequence_TestOneType_16+0xb18>
1c009df0:	0015020c 	move	$r12,$r16
1c009df4:	00150266 	move	$r6,$r19
1c009df8:	284029c9 	ld.h	$r9,$r14,10(0xa)
1c009dfc:	028015ea 	addi.w	$r10,$r15,5(0x5)
1c009e00:	64000d89 	bge	$r12,$r9,12(0xc) # 1c009e0c <minmax_sequence_TestOneType_16+0xb2c>
1c009e04:	0015012c 	move	$r12,$r9
1c009e08:	00150146 	move	$r6,$r10
1c009e0c:	284031c7 	ld.h	$r7,$r14,12(0xc)
1c009e10:	028019e4 	addi.w	$r4,$r15,6(0x6)
1c009e14:	64000d87 	bge	$r12,$r7,12(0xc) # 1c009e20 <minmax_sequence_TestOneType_16+0xb40>
1c009e18:	001500ec 	move	$r12,$r7
1c009e1c:	00150086 	move	$r6,$r4
1c009e20:	284039c1 	ld.h	$r1,$r14,14(0xe)
1c009e24:	02801deb 	addi.w	$r11,$r15,7(0x7)
1c009e28:	64000d81 	bge	$r12,$r1,12(0xc) # 1c009e34 <minmax_sequence_TestOneType_16+0xb54>
1c009e2c:	0015002c 	move	$r12,$r1
1c009e30:	00150166 	move	$r6,$r11
1c009e34:	284041cd 	ld.h	$r13,$r14,16(0x10)
1c009e38:	028021e5 	addi.w	$r5,$r15,8(0x8)
1c009e3c:	64000d8d 	bge	$r12,$r13,12(0xc) # 1c009e48 <minmax_sequence_TestOneType_16+0xb68>
1c009e40:	001501ac 	move	$r12,$r13
1c009e44:	001500a6 	move	$r6,$r5
1c009e48:	284049d4 	ld.h	$r20,$r14,18(0x12)
1c009e4c:	028025e8 	addi.w	$r8,$r15,9(0x9)
1c009e50:	64000d94 	bge	$r12,$r20,12(0xc) # 1c009e5c <minmax_sequence_TestOneType_16+0xb7c>
1c009e54:	0015028c 	move	$r12,$r20
1c009e58:	00150106 	move	$r6,$r8
1c009e5c:	284051d2 	ld.h	$r18,$r14,20(0x14)
1c009e60:	028029f6 	addi.w	$r22,$r15,10(0xa)
1c009e64:	64000d92 	bge	$r12,$r18,12(0xc) # 1c009e70 <minmax_sequence_TestOneType_16+0xb90>
1c009e68:	0015024c 	move	$r12,$r18
1c009e6c:	001502c6 	move	$r6,$r22
1c009e70:	284059d0 	ld.h	$r16,$r14,22(0x16)
1c009e74:	02802df3 	addi.w	$r19,$r15,11(0xb)
1c009e78:	64000d90 	bge	$r12,$r16,12(0xc) # 1c009e84 <minmax_sequence_TestOneType_16+0xba4>
1c009e7c:	0015020c 	move	$r12,$r16
1c009e80:	00150266 	move	$r6,$r19
1c009e84:	284061c9 	ld.h	$r9,$r14,24(0x18)
1c009e88:	028031ea 	addi.w	$r10,$r15,12(0xc)
1c009e8c:	64000d89 	bge	$r12,$r9,12(0xc) # 1c009e98 <minmax_sequence_TestOneType_16+0xbb8>
1c009e90:	0015012c 	move	$r12,$r9
1c009e94:	00150146 	move	$r6,$r10
1c009e98:	028035ef 	addi.w	$r15,$r15,13(0xd)
1c009e9c:	028069ce 	addi.w	$r14,$r14,26(0x1a)
1c009ea0:	5ffee1f9 	bne	$r15,$r25,-288(0x3fee0) # 1c009d80 <minmax_sequence_TestOneType_16+0xaa0>
1c009ea4:	1c000ec7 	pcaddu12i	$r7,118(0x76)
1c009ea8:	029c80e7 	addi.w	$r7,$r7,1824(0x720)
1c009eac:	288000e7 	ld.w	$r7,$r7,0
1c009eb0:	5800b0c7 	beq	$r6,$r7,176(0xb0) # 1c009f60 <minmax_sequence_TestOneType_16+0xc80>
1c009eb4:	001503c5 	move	$r5,$r30
1c009eb8:	00150344 	move	$r4,$r26
1c009ebc:	54337400 	bl	13172(0x3374) # 1c00d230 <printf>
1c009ec0:	288002f1 	ld.w	$r17,$r23,0
1c009ec4:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c009ec8:	63fe9bf1 	blt	$r31,$r17,-360(0x3fe98) # 1c009d60 <minmax_sequence_TestOneType_16+0xa80>
1c009ecc:	54387400 	bl	14452(0x3874) # 1c00d740 <get_clock>
1c009ed0:	2880039d 	ld.w	$r29,$r28,0
1c009ed4:	0015009b 	move	$r27,$r4
1c009ed8:	14001e86 	lu12i.w	$r6,244(0xf4)
1c009edc:	00117774 	sub.w	$r20,$r27,$r29
1c009ee0:	038900cb 	ori	$r11,$r6,0x240
1c009ee4:	1c000ecd 	pcaddu12i	$r13,118(0x76)
1c009ee8:	289b61ad 	ld.w	$r13,$r13,1752(0x6d8)
1c009eec:	00212e87 	div.wu	$r7,$r20,$r11
1c009ef0:	5c000960 	bne	$r11,$r0,8(0x8) # 1c009ef8 <minmax_sequence_TestOneType_16+0xc18>
1c009ef4:	002a0007 	break	0x7
1c009ef8:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c009efc:	1c000ec5 	pcaddu12i	$r5,118(0x76)
1c009f00:	028b90a5 	addi.w	$r5,$r5,740(0x2e4)
1c009f04:	1c000ec4 	pcaddu12i	$r4,118(0x76)
1c009f08:	02854084 	addi.w	$r4,$r4,336(0x150)
1c009f0c:	298001bb 	st.w	$r27,$r13,0
1c009f10:	54332000 	bl	13088(0x3320) # 1c00d230 <printf>
1c009f14:	28803064 	ld.w	$r4,$r3,12(0xc)
1c009f18:	2899f061 	ld.w	$r1,$r3,1660(0x67c)
1c009f1c:	2899e076 	ld.w	$r22,$r3,1656(0x678)
1c009f20:	298002e4 	st.w	$r4,$r23,0
1c009f24:	2899b079 	ld.w	$r25,$r3,1644(0x66c)
1c009f28:	00150304 	move	$r4,$r24
1c009f2c:	2899d077 	ld.w	$r23,$r3,1652(0x674)
1c009f30:	2899c078 	ld.w	$r24,$r3,1648(0x670)
1c009f34:	2899a07a 	ld.w	$r26,$r3,1640(0x668)
1c009f38:	2899907b 	ld.w	$r27,$r3,1636(0x664)
1c009f3c:	2899807c 	ld.w	$r28,$r3,1632(0x660)
1c009f40:	2899707d 	ld.w	$r29,$r3,1628(0x65c)
1c009f44:	2899607e 	ld.w	$r30,$r3,1624(0x658)
1c009f48:	2899507f 	ld.w	$r31,$r3,1620(0x654)
1c009f4c:	029a0063 	addi.w	$r3,$r3,1664(0x680)
1c009f50:	4c000020 	jirl	$r0,$r1,0
1c009f54:	001503a1 	move	$r1,$r29
1c009f58:	53f42fff 	b	-3028(0xffff42c) # 1c009384 <minmax_sequence_TestOneType_16+0xa4>
1c009f5c:	03400000 	andi	$r0,$r0,0x0
1c009f60:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c009f64:	63fdfff1 	blt	$r31,$r17,-516(0x3fdfc) # 1c009d60 <minmax_sequence_TestOneType_16+0xa80>
1c009f68:	53ff67ff 	b	-156(0xfffff64) # 1c009ecc <minmax_sequence_TestOneType_16+0xbec>
1c009f6c:	03400000 	andi	$r0,$r0,0x0
1c009f70:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c009f74:	63fc16d2 	blt	$r22,$r18,-1004(0x3fc14) # 1c009b88 <minmax_sequence_TestOneType_16+0x8a8>
1c009f78:	53fd77ff 	b	-652(0xffffd74) # 1c009cec <minmax_sequence_TestOneType_16+0xa0c>
1c009f7c:	03400000 	andi	$r0,$r0,0x0
1c009f80:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c009f84:	63f813f2 	blt	$r31,$r18,-2032(0x3f810) # 1c009794 <minmax_sequence_TestOneType_16+0x4b4>
1c009f88:	53f98fff 	b	-1652(0xffff98c) # 1c009914 <minmax_sequence_TestOneType_16+0x634>
1c009f8c:	03400000 	andi	$r0,$r0,0x0
1c009f90:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c009f94:	63f9e6d3 	blt	$r22,$r19,-1564(0x3f9e4) # 1c009978 <minmax_sequence_TestOneType_16+0x698>
1c009f98:	53fb63ff 	b	-1184(0xffffb60) # 1c009af8 <minmax_sequence_TestOneType_16+0x818>
1c009f9c:	0015012a 	move	$r10,$r9
1c009fa0:	0280698b 	addi.w	$r11,$r12,26(0x1a)
1c009fa4:	0299406e 	addi.w	$r14,$r3,1616(0x650)
1c009fa8:	0015014f 	move	$r15,$r10
1c009fac:	5ff4856e 	bne	$r11,$r14,-2940(0x3f484) # 1c009430 <minmax_sequence_TestOneType_16+0x150>
1c009fb0:	53f507ff 	b	-2812(0xffff504) # 1c0094b4 <minmax_sequence_TestOneType_16+0x1d4>
1c009fb4:	2840618a 	ld.h	$r10,$r12,24(0x18)
1c009fb8:	00150109 	move	$r9,$r8
1c009fbc:	67f4e949 	bge	$r10,$r9,-2840(0x3f4e8) # 1c0094a4 <minmax_sequence_TestOneType_16+0x1c4>
1c009fc0:	53ffdfff 	b	-36(0xfffffdc) # 1c009f9c <minmax_sequence_TestOneType_16+0xcbc>
1c009fc4:	28405989 	ld.h	$r9,$r12,22(0x16)
1c009fc8:	001500e8 	move	$r8,$r7
1c009fcc:	67f4d128 	bge	$r9,$r8,-2864(0x3f4d0) # 1c00949c <minmax_sequence_TestOneType_16+0x1bc>
1c009fd0:	53ffe7ff 	b	-28(0xfffffe4) # 1c009fb4 <minmax_sequence_TestOneType_16+0xcd4>
1c009fd4:	28405188 	ld.h	$r8,$r12,20(0x14)
1c009fd8:	00150207 	move	$r7,$r16
1c009fdc:	67f4b907 	bge	$r8,$r7,-2888(0x3f4b8) # 1c009494 <minmax_sequence_TestOneType_16+0x1b4>
1c009fe0:	53ffe7ff 	b	-28(0xfffffe4) # 1c009fc4 <minmax_sequence_TestOneType_16+0xce4>
1c009fe4:	28404987 	ld.h	$r7,$r12,18(0x12)
1c009fe8:	001501b0 	move	$r16,$r13
1c009fec:	67f4a0f0 	bge	$r7,$r16,-2912(0x3f4a0) # 1c00948c <minmax_sequence_TestOneType_16+0x1ac>
1c009ff0:	53ffe7ff 	b	-28(0xfffffe4) # 1c009fd4 <minmax_sequence_TestOneType_16+0xcf4>
1c009ff4:	28404190 	ld.h	$r16,$r12,16(0x10)
1c009ff8:	001500cd 	move	$r13,$r6
1c009ffc:	67f48a0d 	bge	$r16,$r13,-2936(0x3f488) # 1c009484 <minmax_sequence_TestOneType_16+0x1a4>
1c00a000:	53ffe7ff 	b	-28(0xfffffe4) # 1c009fe4 <minmax_sequence_TestOneType_16+0xd04>
1c00a004:	2840398d 	ld.h	$r13,$r12,14(0xe)
1c00a008:	00150226 	move	$r6,$r17
1c00a00c:	67f471a6 	bge	$r13,$r6,-2960(0x3f470) # 1c00947c <minmax_sequence_TestOneType_16+0x19c>
1c00a010:	53ffe7ff 	b	-28(0xfffffe4) # 1c009ff4 <minmax_sequence_TestOneType_16+0xd14>
1c00a014:	28403186 	ld.h	$r6,$r12,12(0xc)
1c00a018:	00150031 	move	$r17,$r1
1c00a01c:	67f458d1 	bge	$r6,$r17,-2984(0x3f458) # 1c009474 <minmax_sequence_TestOneType_16+0x194>
1c00a020:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a004 <minmax_sequence_TestOneType_16+0xd24>
1c00a024:	28402991 	ld.h	$r17,$r12,10(0xa)
1c00a028:	001500a1 	move	$r1,$r5
1c00a02c:	67f44221 	bge	$r17,$r1,-3008(0x3f440) # 1c00946c <minmax_sequence_TestOneType_16+0x18c>
1c00a030:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a014 <minmax_sequence_TestOneType_16+0xd34>
1c00a034:	28402181 	ld.h	$r1,$r12,8(0x8)
1c00a038:	001502e5 	move	$r5,$r23
1c00a03c:	67f42825 	bge	$r1,$r5,-3032(0x3f428) # 1c009464 <minmax_sequence_TestOneType_16+0x184>
1c00a040:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a024 <minmax_sequence_TestOneType_16+0xd44>
1c00a044:	28401985 	ld.h	$r5,$r12,6(0x6)
1c00a048:	00150097 	move	$r23,$r4
1c00a04c:	67f410b7 	bge	$r5,$r23,-3056(0x3f410) # 1c00945c <minmax_sequence_TestOneType_16+0x17c>
1c00a050:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a034 <minmax_sequence_TestOneType_16+0xd54>
1c00a054:	28401197 	ld.h	$r23,$r12,4(0x4)
1c00a058:	00150244 	move	$r4,$r18
1c00a05c:	67f3fae4 	bge	$r23,$r4,-3080(0x3f3f8) # 1c009454 <minmax_sequence_TestOneType_16+0x174>
1c00a060:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a044 <minmax_sequence_TestOneType_16+0xd64>
1c00a064:	28400984 	ld.h	$r4,$r12,2(0x2)
1c00a068:	001503f2 	move	$r18,$r31
1c00a06c:	67f3e092 	bge	$r4,$r18,-3104(0x3f3e0) # 1c00944c <minmax_sequence_TestOneType_16+0x16c>
1c00a070:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a054 <minmax_sequence_TestOneType_16+0xd74>
1c00a074:	28400972 	ld.h	$r18,$r11,2(0x2)
1c00a078:	001501ff 	move	$r31,$r15
1c00a07c:	0280096c 	addi.w	$r12,$r11,2(0x2)
1c00a080:	67f3c65f 	bge	$r18,$r31,-3132(0x3f3c4) # 1c009444 <minmax_sequence_TestOneType_16+0x164>
1c00a084:	53ffe3ff 	b	-32(0xfffffe0) # 1c00a064 <minmax_sequence_TestOneType_16+0xd84>
1c00a088:	00150296 	move	$r22,$r20
1c00a08c:	028068d8 	addi.w	$r24,$r6,26(0x1a)
1c00a090:	0299407a 	addi.w	$r26,$r3,1616(0x650)
1c00a094:	001502d9 	move	$r25,$r22
1c00a098:	5ff2f71a 	bne	$r24,$r26,-3340(0x3f2f4) # 1c00938c <minmax_sequence_TestOneType_16+0xac>
1c00a09c:	53f377ff 	b	-3212(0xffff374) # 1c009410 <minmax_sequence_TestOneType_16+0x130>
1c00a0a0:	284060d6 	ld.h	$r22,$r6,24(0x18)
1c00a0a4:	00150274 	move	$r20,$r19
1c00a0a8:	67f35a96 	bge	$r20,$r22,-3240(0x3f358) # 1c009400 <minmax_sequence_TestOneType_16+0x120>
1c00a0ac:	53ffdfff 	b	-36(0xfffffdc) # 1c00a088 <minmax_sequence_TestOneType_16+0xda8>
1c00a0b0:	284058d4 	ld.h	$r20,$r6,22(0x16)
1c00a0b4:	00150253 	move	$r19,$r18
1c00a0b8:	67f34274 	bge	$r19,$r20,-3264(0x3f340) # 1c0093f8 <minmax_sequence_TestOneType_16+0x118>
1c00a0bc:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a0a0 <minmax_sequence_TestOneType_16+0xdc0>
1c00a0c0:	284050d3 	ld.h	$r19,$r6,20(0x14)
1c00a0c4:	001501f2 	move	$r18,$r15
1c00a0c8:	67f32a53 	bge	$r18,$r19,-3288(0x3f328) # 1c0093f0 <minmax_sequence_TestOneType_16+0x110>
1c00a0cc:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a0b0 <minmax_sequence_TestOneType_16+0xdd0>
1c00a0d0:	284048d2 	ld.h	$r18,$r6,18(0x12)
1c00a0d4:	001501cf 	move	$r15,$r14
1c00a0d8:	67f311f2 	bge	$r15,$r18,-3312(0x3f310) # 1c0093e8 <minmax_sequence_TestOneType_16+0x108>
1c00a0dc:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a0c0 <minmax_sequence_TestOneType_16+0xde0>
1c00a0e0:	284040cf 	ld.h	$r15,$r6,16(0x10)
1c00a0e4:	0015016e 	move	$r14,$r11
1c00a0e8:	67f2f9cf 	bge	$r14,$r15,-3336(0x3f2f8) # 1c0093e0 <minmax_sequence_TestOneType_16+0x100>
1c00a0ec:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a0d0 <minmax_sequence_TestOneType_16+0xdf0>
1c00a0f0:	284038ce 	ld.h	$r14,$r6,14(0xe)
1c00a0f4:	0015014b 	move	$r11,$r10
1c00a0f8:	67f2e16e 	bge	$r11,$r14,-3360(0x3f2e0) # 1c0093d8 <minmax_sequence_TestOneType_16+0xf8>
1c00a0fc:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a0e0 <minmax_sequence_TestOneType_16+0xe00>
1c00a100:	284030cb 	ld.h	$r11,$r6,12(0xc)
1c00a104:	0015012a 	move	$r10,$r9
1c00a108:	67f2c94b 	bge	$r10,$r11,-3384(0x3f2c8) # 1c0093d0 <minmax_sequence_TestOneType_16+0xf0>
1c00a10c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a0f0 <minmax_sequence_TestOneType_16+0xe10>
1c00a110:	284028ca 	ld.h	$r10,$r6,10(0xa)
1c00a114:	00150109 	move	$r9,$r8
1c00a118:	67f2b12a 	bge	$r9,$r10,-3408(0x3f2b0) # 1c0093c8 <minmax_sequence_TestOneType_16+0xe8>
1c00a11c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a100 <minmax_sequence_TestOneType_16+0xe20>
1c00a120:	284020c9 	ld.h	$r9,$r6,8(0x8)
1c00a124:	001500e8 	move	$r8,$r7
1c00a128:	67f29909 	bge	$r8,$r9,-3432(0x3f298) # 1c0093c0 <minmax_sequence_TestOneType_16+0xe0>
1c00a12c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a110 <minmax_sequence_TestOneType_16+0xe30>
1c00a130:	284018c8 	ld.h	$r8,$r6,6(0x6)
1c00a134:	001501a7 	move	$r7,$r13
1c00a138:	67f280e8 	bge	$r7,$r8,-3456(0x3f280) # 1c0093b8 <minmax_sequence_TestOneType_16+0xd8>
1c00a13c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a120 <minmax_sequence_TestOneType_16+0xe40>
1c00a140:	284010c7 	ld.h	$r7,$r6,4(0x4)
1c00a144:	0015020d 	move	$r13,$r16
1c00a148:	67f269a7 	bge	$r13,$r7,-3480(0x3f268) # 1c0093b0 <minmax_sequence_TestOneType_16+0xd0>
1c00a14c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a130 <minmax_sequence_TestOneType_16+0xe50>
1c00a150:	284008cd 	ld.h	$r13,$r6,2(0x2)
1c00a154:	00150230 	move	$r16,$r17
1c00a158:	67f2520d 	bge	$r16,$r13,-3504(0x3f250) # 1c0093a8 <minmax_sequence_TestOneType_16+0xc8>
1c00a15c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00a140 <minmax_sequence_TestOneType_16+0xe60>
1c00a160:	28400b10 	ld.h	$r16,$r24,2(0x2)
1c00a164:	00150331 	move	$r17,$r25
1c00a168:	02800b06 	addi.w	$r6,$r24,2(0x2)
1c00a16c:	67f23630 	bge	$r17,$r16,-3532(0x3f234) # 1c0093a0 <minmax_sequence_TestOneType_16+0xc0>
1c00a170:	53ffe3ff 	b	-32(0xfffffe0) # 1c00a150 <minmax_sequence_TestOneType_16+0xe70>
1c00a174:	03400000 	andi	$r0,$r0,0x0
1c00a178:	03400000 	andi	$r0,$r0,0x0
1c00a17c:	03400000 	andi	$r0,$r0,0x0

1c00a180 <minmax_sequence_TestOneType_u16>:
minmax_sequence_TestOneType_u16():
1c00a180:	1c000ecc 	pcaddu12i	$r12,118(0x76)
1c00a184:	0290c18c 	addi.w	$r12,$r12,1072(0x430)
1c00a188:	28800184 	ld.w	$r4,$r12,0
1c00a18c:	02a60063 	addi.w	$r3,$r3,-1664(0x980)
1c00a190:	2999d077 	st.w	$r23,$r3,1652(0x674)
1c00a194:	0281ec84 	addi.w	$r4,$r4,123(0x7b)
1c00a198:	2999f061 	st.w	$r1,$r3,1660(0x67c)
1c00a19c:	2999e076 	st.w	$r22,$r3,1656(0x678)
1c00a1a0:	2999c078 	st.w	$r24,$r3,1648(0x670)
1c00a1a4:	2999b079 	st.w	$r25,$r3,1644(0x66c)
1c00a1a8:	2999a07a 	st.w	$r26,$r3,1640(0x668)
1c00a1ac:	2999907b 	st.w	$r27,$r3,1636(0x664)
1c00a1b0:	2999807c 	st.w	$r28,$r3,1632(0x660)
1c00a1b4:	2999707d 	st.w	$r29,$r3,1628(0x65c)
1c00a1b8:	2999607e 	st.w	$r30,$r3,1624(0x658)
1c00a1bc:	2999507f 	st.w	$r31,$r3,1620(0x654)
1c00a1c0:	02804077 	addi.w	$r23,$r3,16(0x10)
1c00a1c4:	54362c00 	bl	13868(0x362c) # 1c00d7f0 <srand>
1c00a1c8:	028042f7 	addi.w	$r23,$r23,16(0x10)
1c00a1cc:	5435e400 	bl	13796(0x35e4) # 1c00d7b0 <rand>
1c00a1d0:	297fc2e4 	st.h	$r4,$r23,-16(0xff0)
1c00a1d4:	5435dc00 	bl	13788(0x35dc) # 1c00d7b0 <rand>
1c00a1d8:	297fcae4 	st.h	$r4,$r23,-14(0xff2)
1c00a1dc:	5435d400 	bl	13780(0x35d4) # 1c00d7b0 <rand>
1c00a1e0:	297fd2e4 	st.h	$r4,$r23,-12(0xff4)
1c00a1e4:	5435cc00 	bl	13772(0x35cc) # 1c00d7b0 <rand>
1c00a1e8:	297fdae4 	st.h	$r4,$r23,-10(0xff6)
1c00a1ec:	5435c400 	bl	13764(0x35c4) # 1c00d7b0 <rand>
1c00a1f0:	297fe2e4 	st.h	$r4,$r23,-8(0xff8)
1c00a1f4:	5435bc00 	bl	13756(0x35bc) # 1c00d7b0 <rand>
1c00a1f8:	297feae4 	st.h	$r4,$r23,-6(0xffa)
1c00a1fc:	5435b400 	bl	13748(0x35b4) # 1c00d7b0 <rand>
1c00a200:	297ff2e4 	st.h	$r4,$r23,-4(0xffc)
1c00a204:	5435ac00 	bl	13740(0x35ac) # 1c00d7b0 <rand>
1c00a208:	297ffae4 	st.h	$r4,$r23,-2(0xffe)
1c00a20c:	02994065 	addi.w	$r5,$r3,1616(0x650)
1c00a210:	5fffbae5 	bne	$r23,$r5,-72(0x3ffb8) # 1c00a1c8 <minmax_sequence_TestOneType_u16+0x48>
1c00a214:	0280487b 	addi.w	$r27,$r3,18(0x12)
1c00a218:	2a40407d 	ld.hu	$r29,$r3,16(0x10)
1c00a21c:	2a400361 	ld.hu	$r1,$r27,0
1c00a220:	680bd7a1 	bltu	$r29,$r1,3028(0xbd4) # 1c00adf4 <minmax_sequence_TestOneType_u16+0xc74>
1c00a224:	00150039 	move	$r25,$r1
1c00a228:	02800b78 	addi.w	$r24,$r27,2(0x2)
1c00a22c:	2a400311 	ld.hu	$r17,$r24,0
1c00a230:	680dd331 	bltu	$r25,$r17,3536(0xdd0) # 1c00b000 <minmax_sequence_TestOneType_u16+0xe80>
1c00a234:	2a400b10 	ld.hu	$r16,$r24,2(0x2)
1c00a238:	02800b06 	addi.w	$r6,$r24,2(0x2)
1c00a23c:	680db630 	bltu	$r17,$r16,3508(0xdb4) # 1c00aff0 <minmax_sequence_TestOneType_u16+0xe70>
1c00a240:	2a4008cd 	ld.hu	$r13,$r6,2(0x2)
1c00a244:	680d9e0d 	bltu	$r16,$r13,3484(0xd9c) # 1c00afe0 <minmax_sequence_TestOneType_u16+0xe60>
1c00a248:	2a4010c7 	ld.hu	$r7,$r6,4(0x4)
1c00a24c:	680d85a7 	bltu	$r13,$r7,3460(0xd84) # 1c00afd0 <minmax_sequence_TestOneType_u16+0xe50>
1c00a250:	2a4018c8 	ld.hu	$r8,$r6,6(0x6)
1c00a254:	680d6ce8 	bltu	$r7,$r8,3436(0xd6c) # 1c00afc0 <minmax_sequence_TestOneType_u16+0xe40>
1c00a258:	2a4020c9 	ld.hu	$r9,$r6,8(0x8)
1c00a25c:	680d5509 	bltu	$r8,$r9,3412(0xd54) # 1c00afb0 <minmax_sequence_TestOneType_u16+0xe30>
1c00a260:	2a4028ca 	ld.hu	$r10,$r6,10(0xa)
1c00a264:	680d3d2a 	bltu	$r9,$r10,3388(0xd3c) # 1c00afa0 <minmax_sequence_TestOneType_u16+0xe20>
1c00a268:	2a4030cb 	ld.hu	$r11,$r6,12(0xc)
1c00a26c:	680d254b 	bltu	$r10,$r11,3364(0xd24) # 1c00af90 <minmax_sequence_TestOneType_u16+0xe10>
1c00a270:	2a4038ce 	ld.hu	$r14,$r6,14(0xe)
1c00a274:	680d0d6e 	bltu	$r11,$r14,3340(0xd0c) # 1c00af80 <minmax_sequence_TestOneType_u16+0xe00>
1c00a278:	2a4040cf 	ld.hu	$r15,$r6,16(0x10)
1c00a27c:	680cf5cf 	bltu	$r14,$r15,3316(0xcf4) # 1c00af70 <minmax_sequence_TestOneType_u16+0xdf0>
1c00a280:	2a4048d2 	ld.hu	$r18,$r6,18(0x12)
1c00a284:	680cddf2 	bltu	$r15,$r18,3292(0xcdc) # 1c00af60 <minmax_sequence_TestOneType_u16+0xde0>
1c00a288:	2a4050d3 	ld.hu	$r19,$r6,20(0x14)
1c00a28c:	680cc653 	bltu	$r18,$r19,3268(0xcc4) # 1c00af50 <minmax_sequence_TestOneType_u16+0xdd0>
1c00a290:	2a4058d4 	ld.hu	$r20,$r6,22(0x16)
1c00a294:	680cae74 	bltu	$r19,$r20,3244(0xcac) # 1c00af40 <minmax_sequence_TestOneType_u16+0xdc0>
1c00a298:	2a4060d6 	ld.hu	$r22,$r6,24(0x18)
1c00a29c:	680c8e96 	bltu	$r20,$r22,3212(0xc8c) # 1c00af28 <minmax_sequence_TestOneType_u16+0xda8>
1c00a2a0:	028068d8 	addi.w	$r24,$r6,26(0x1a)
1c00a2a4:	0299407a 	addi.w	$r26,$r3,1616(0x650)
1c00a2a8:	001502d9 	move	$r25,$r22
1c00a2ac:	5fff831a 	bne	$r24,$r26,-128(0x3ff80) # 1c00a22c <minmax_sequence_TestOneType_u16+0xac>
1c00a2b0:	2a40037c 	ld.hu	$r28,$r27,0
1c00a2b4:	1c000ede 	pcaddu12i	$r30,118(0x76)
1c00a2b8:	028c73de 	addi.w	$r30,$r30,796(0x31c)
1c00a2bc:	298003d6 	st.w	$r22,$r30,0
1c00a2c0:	6c000b9d 	bgeu	$r28,$r29,8(0x8) # 1c00a2c8 <minmax_sequence_TestOneType_u16+0x148>
1c00a2c4:	001503bc 	move	$r28,$r29
1c00a2c8:	0015038f 	move	$r15,$r28
1c00a2cc:	02800b6b 	addi.w	$r11,$r27,2(0x2)
1c00a2d0:	2a40017f 	ld.hu	$r31,$r11,0
1c00a2d4:	680c43ef 	bltu	$r31,$r15,3136(0xc40) # 1c00af14 <minmax_sequence_TestOneType_u16+0xd94>
1c00a2d8:	2a400972 	ld.hu	$r18,$r11,2(0x2)
1c00a2dc:	0280096c 	addi.w	$r12,$r11,2(0x2)
1c00a2e0:	680c265f 	bltu	$r18,$r31,3108(0xc24) # 1c00af04 <minmax_sequence_TestOneType_u16+0xd84>
1c00a2e4:	2a400984 	ld.hu	$r4,$r12,2(0x2)
1c00a2e8:	680c0c92 	bltu	$r4,$r18,3084(0xc0c) # 1c00aef4 <minmax_sequence_TestOneType_u16+0xd74>
1c00a2ec:	2a401197 	ld.hu	$r23,$r12,4(0x4)
1c00a2f0:	680bf6e4 	bltu	$r23,$r4,3060(0xbf4) # 1c00aee4 <minmax_sequence_TestOneType_u16+0xd64>
1c00a2f4:	2a401985 	ld.hu	$r5,$r12,6(0x6)
1c00a2f8:	680bdcb7 	bltu	$r5,$r23,3036(0xbdc) # 1c00aed4 <minmax_sequence_TestOneType_u16+0xd54>
1c00a2fc:	2a402181 	ld.hu	$r1,$r12,8(0x8)
1c00a300:	680bc425 	bltu	$r1,$r5,3012(0xbc4) # 1c00aec4 <minmax_sequence_TestOneType_u16+0xd44>
1c00a304:	2a402991 	ld.hu	$r17,$r12,10(0xa)
1c00a308:	680bae21 	bltu	$r17,$r1,2988(0xbac) # 1c00aeb4 <minmax_sequence_TestOneType_u16+0xd34>
1c00a30c:	2a403186 	ld.hu	$r6,$r12,12(0xc)
1c00a310:	680b94d1 	bltu	$r6,$r17,2964(0xb94) # 1c00aea4 <minmax_sequence_TestOneType_u16+0xd24>
1c00a314:	2a40398d 	ld.hu	$r13,$r12,14(0xe)
1c00a318:	680b7da6 	bltu	$r13,$r6,2940(0xb7c) # 1c00ae94 <minmax_sequence_TestOneType_u16+0xd14>
1c00a31c:	2a404190 	ld.hu	$r16,$r12,16(0x10)
1c00a320:	680b660d 	bltu	$r16,$r13,2916(0xb64) # 1c00ae84 <minmax_sequence_TestOneType_u16+0xd04>
1c00a324:	2a404987 	ld.hu	$r7,$r12,18(0x12)
1c00a328:	680b4cf0 	bltu	$r7,$r16,2892(0xb4c) # 1c00ae74 <minmax_sequence_TestOneType_u16+0xcf4>
1c00a32c:	2a405188 	ld.hu	$r8,$r12,20(0x14)
1c00a330:	680b3507 	bltu	$r8,$r7,2868(0xb34) # 1c00ae64 <minmax_sequence_TestOneType_u16+0xce4>
1c00a334:	2a405989 	ld.hu	$r9,$r12,22(0x16)
1c00a338:	680b1d28 	bltu	$r9,$r8,2844(0xb1c) # 1c00ae54 <minmax_sequence_TestOneType_u16+0xcd4>
1c00a33c:	2a40618a 	ld.hu	$r10,$r12,24(0x18)
1c00a340:	680afd49 	bltu	$r10,$r9,2812(0xafc) # 1c00ae3c <minmax_sequence_TestOneType_u16+0xcbc>
1c00a344:	0280698b 	addi.w	$r11,$r12,26(0x1a)
1c00a348:	0299406e 	addi.w	$r14,$r3,1616(0x650)
1c00a34c:	0015014f 	move	$r15,$r10
1c00a350:	5fff816e 	bne	$r11,$r14,-128(0x3ff80) # 1c00a2d0 <minmax_sequence_TestOneType_u16+0x150>
1c00a354:	2a400374 	ld.hu	$r20,$r27,0
1c00a358:	1c000ed9 	pcaddu12i	$r25,118(0x76)
1c00a35c:	0289d339 	addi.w	$r25,$r25,628(0x274)
1c00a360:	2980032a 	st.w	$r10,$r25,0
1c00a364:	001503ac 	move	$r12,$r29
1c00a368:	00150012 	move	$r18,$r0
1c00a36c:	028c8013 	addi.w	$r19,$r0,800(0x320)
1c00a370:	6c000e9d 	bgeu	$r20,$r29,12(0xc) # 1c00a37c <minmax_sequence_TestOneType_u16+0x1fc>
1c00a374:	02800412 	addi.w	$r18,$r0,1(0x1)
1c00a378:	0015028c 	move	$r12,$r20
1c00a37c:	0280081a 	addi.w	$r26,$r0,2(0x2)
1c00a380:	02800b7c 	addi.w	$r28,$r27,2(0x2)
1c00a384:	2a400396 	ld.hu	$r22,$r28,0
1c00a388:	6c000ecc 	bgeu	$r22,$r12,12(0xc) # 1c00a394 <minmax_sequence_TestOneType_u16+0x214>
1c00a38c:	00150352 	move	$r18,$r26
1c00a390:	001502cc 	move	$r12,$r22
1c00a394:	2a400b98 	ld.hu	$r24,$r28,2(0x2)
1c00a398:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c00a39c:	02800b9c 	addi.w	$r28,$r28,2(0x2)
1c00a3a0:	6c000f0c 	bgeu	$r24,$r12,12(0xc) # 1c00a3ac <minmax_sequence_TestOneType_u16+0x22c>
1c00a3a4:	00150352 	move	$r18,$r26
1c00a3a8:	0015030c 	move	$r12,$r24
1c00a3ac:	2a400b9f 	ld.hu	$r31,$r28,2(0x2)
1c00a3b0:	02800744 	addi.w	$r4,$r26,1(0x1)
1c00a3b4:	6c000fec 	bgeu	$r31,$r12,12(0xc) # 1c00a3c0 <minmax_sequence_TestOneType_u16+0x240>
1c00a3b8:	00150092 	move	$r18,$r4
1c00a3bc:	001503ec 	move	$r12,$r31
1c00a3c0:	2a401397 	ld.hu	$r23,$r28,4(0x4)
1c00a3c4:	02800b45 	addi.w	$r5,$r26,2(0x2)
1c00a3c8:	6c000eec 	bgeu	$r23,$r12,12(0xc) # 1c00a3d4 <minmax_sequence_TestOneType_u16+0x254>
1c00a3cc:	001500b2 	move	$r18,$r5
1c00a3d0:	001502ec 	move	$r12,$r23
1c00a3d4:	2a401b81 	ld.hu	$r1,$r28,6(0x6)
1c00a3d8:	02800f51 	addi.w	$r17,$r26,3(0x3)
1c00a3dc:	6c000c2c 	bgeu	$r1,$r12,12(0xc) # 1c00a3e8 <minmax_sequence_TestOneType_u16+0x268>
1c00a3e0:	00150232 	move	$r18,$r17
1c00a3e4:	0015002c 	move	$r12,$r1
1c00a3e8:	2a402386 	ld.hu	$r6,$r28,8(0x8)
1c00a3ec:	0280134d 	addi.w	$r13,$r26,4(0x4)
1c00a3f0:	6c000ccc 	bgeu	$r6,$r12,12(0xc) # 1c00a3fc <minmax_sequence_TestOneType_u16+0x27c>
1c00a3f4:	001501b2 	move	$r18,$r13
1c00a3f8:	001500cc 	move	$r12,$r6
1c00a3fc:	2a402b90 	ld.hu	$r16,$r28,10(0xa)
1c00a400:	02801747 	addi.w	$r7,$r26,5(0x5)
1c00a404:	6c000e0c 	bgeu	$r16,$r12,12(0xc) # 1c00a410 <minmax_sequence_TestOneType_u16+0x290>
1c00a408:	001500f2 	move	$r18,$r7
1c00a40c:	0015020c 	move	$r12,$r16
1c00a410:	2a403388 	ld.hu	$r8,$r28,12(0xc)
1c00a414:	02801b49 	addi.w	$r9,$r26,6(0x6)
1c00a418:	6c000d0c 	bgeu	$r8,$r12,12(0xc) # 1c00a424 <minmax_sequence_TestOneType_u16+0x2a4>
1c00a41c:	00150132 	move	$r18,$r9
1c00a420:	0015010c 	move	$r12,$r8
1c00a424:	2a403b8a 	ld.hu	$r10,$r28,14(0xe)
1c00a428:	02801f4b 	addi.w	$r11,$r26,7(0x7)
1c00a42c:	6c000d4c 	bgeu	$r10,$r12,12(0xc) # 1c00a438 <minmax_sequence_TestOneType_u16+0x2b8>
1c00a430:	00150172 	move	$r18,$r11
1c00a434:	0015014c 	move	$r12,$r10
1c00a438:	2a40438f 	ld.hu	$r15,$r28,16(0x10)
1c00a43c:	0280234e 	addi.w	$r14,$r26,8(0x8)
1c00a440:	6c000dec 	bgeu	$r15,$r12,12(0xc) # 1c00a44c <minmax_sequence_TestOneType_u16+0x2cc>
1c00a444:	001501d2 	move	$r18,$r14
1c00a448:	001501ec 	move	$r12,$r15
1c00a44c:	2a404b94 	ld.hu	$r20,$r28,18(0x12)
1c00a450:	02802756 	addi.w	$r22,$r26,9(0x9)
1c00a454:	6c000e8c 	bgeu	$r20,$r12,12(0xc) # 1c00a460 <minmax_sequence_TestOneType_u16+0x2e0>
1c00a458:	001502d2 	move	$r18,$r22
1c00a45c:	0015028c 	move	$r12,$r20
1c00a460:	2a405398 	ld.hu	$r24,$r28,20(0x14)
1c00a464:	02802b5f 	addi.w	$r31,$r26,10(0xa)
1c00a468:	6c000f0c 	bgeu	$r24,$r12,12(0xc) # 1c00a474 <minmax_sequence_TestOneType_u16+0x2f4>
1c00a46c:	001503f2 	move	$r18,$r31
1c00a470:	0015030c 	move	$r12,$r24
1c00a474:	2a405b97 	ld.hu	$r23,$r28,22(0x16)
1c00a478:	02802f44 	addi.w	$r4,$r26,11(0xb)
1c00a47c:	6c000eec 	bgeu	$r23,$r12,12(0xc) # 1c00a488 <minmax_sequence_TestOneType_u16+0x308>
1c00a480:	00150092 	move	$r18,$r4
1c00a484:	001502ec 	move	$r12,$r23
1c00a488:	2a406385 	ld.hu	$r5,$r28,24(0x18)
1c00a48c:	02803341 	addi.w	$r1,$r26,12(0xc)
1c00a490:	6c000cac 	bgeu	$r5,$r12,12(0xc) # 1c00a49c <minmax_sequence_TestOneType_u16+0x31c>
1c00a494:	00150032 	move	$r18,$r1
1c00a498:	001500ac 	move	$r12,$r5
1c00a49c:	0280375a 	addi.w	$r26,$r26,13(0xd)
1c00a4a0:	02806b9c 	addi.w	$r28,$r28,26(0x1a)
1c00a4a4:	5ffee353 	bne	$r26,$r19,-288(0x3fee0) # 1c00a384 <minmax_sequence_TestOneType_u16+0x204>
1c00a4a8:	2a400371 	ld.hu	$r17,$r27,0
1c00a4ac:	1c000eda 	pcaddu12i	$r26,118(0x76)
1c00a4b0:	0284735a 	addi.w	$r26,$r26,284(0x11c)
1c00a4b4:	29800352 	st.w	$r18,$r26,0
1c00a4b8:	001503ac 	move	$r12,$r29
1c00a4bc:	00150013 	move	$r19,$r0
1c00a4c0:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00a4c4:	6c000fb1 	bgeu	$r29,$r17,12(0xc) # 1c00a4d0 <minmax_sequence_TestOneType_u16+0x350>
1c00a4c8:	02800413 	addi.w	$r19,$r0,1(0x1)
1c00a4cc:	0015022c 	move	$r12,$r17
1c00a4d0:	02800810 	addi.w	$r16,$r0,2(0x2)
1c00a4d4:	02800b6d 	addi.w	$r13,$r27,2(0x2)
1c00a4d8:	2a4001a7 	ld.hu	$r7,$r13,0
1c00a4dc:	6c000d87 	bgeu	$r12,$r7,12(0xc) # 1c00a4e8 <minmax_sequence_TestOneType_u16+0x368>
1c00a4e0:	00150213 	move	$r19,$r16
1c00a4e4:	001500ec 	move	$r12,$r7
1c00a4e8:	2a4009a8 	ld.hu	$r8,$r13,2(0x2)
1c00a4ec:	02800610 	addi.w	$r16,$r16,1(0x1)
1c00a4f0:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c00a4f4:	6c000d88 	bgeu	$r12,$r8,12(0xc) # 1c00a500 <minmax_sequence_TestOneType_u16+0x380>
1c00a4f8:	00150213 	move	$r19,$r16
1c00a4fc:	0015010c 	move	$r12,$r8
1c00a500:	2a4009a9 	ld.hu	$r9,$r13,2(0x2)
1c00a504:	0280060a 	addi.w	$r10,$r16,1(0x1)
1c00a508:	6c000d89 	bgeu	$r12,$r9,12(0xc) # 1c00a514 <minmax_sequence_TestOneType_u16+0x394>
1c00a50c:	00150153 	move	$r19,$r10
1c00a510:	0015012c 	move	$r12,$r9
1c00a514:	2a4011ab 	ld.hu	$r11,$r13,4(0x4)
1c00a518:	02800a0f 	addi.w	$r15,$r16,2(0x2)
1c00a51c:	6c000d8b 	bgeu	$r12,$r11,12(0xc) # 1c00a528 <minmax_sequence_TestOneType_u16+0x3a8>
1c00a520:	001501f3 	move	$r19,$r15
1c00a524:	0015016c 	move	$r12,$r11
1c00a528:	2a4019ae 	ld.hu	$r14,$r13,6(0x6)
1c00a52c:	02800e14 	addi.w	$r20,$r16,3(0x3)
1c00a530:	6c000d8e 	bgeu	$r12,$r14,12(0xc) # 1c00a53c <minmax_sequence_TestOneType_u16+0x3bc>
1c00a534:	00150293 	move	$r19,$r20
1c00a538:	001501cc 	move	$r12,$r14
1c00a53c:	2a4021b6 	ld.hu	$r22,$r13,8(0x8)
1c00a540:	02801218 	addi.w	$r24,$r16,4(0x4)
1c00a544:	6c000d96 	bgeu	$r12,$r22,12(0xc) # 1c00a550 <minmax_sequence_TestOneType_u16+0x3d0>
1c00a548:	00150313 	move	$r19,$r24
1c00a54c:	001502cc 	move	$r12,$r22
1c00a550:	2a4029bf 	ld.hu	$r31,$r13,10(0xa)
1c00a554:	02801617 	addi.w	$r23,$r16,5(0x5)
1c00a558:	6c000d9f 	bgeu	$r12,$r31,12(0xc) # 1c00a564 <minmax_sequence_TestOneType_u16+0x3e4>
1c00a55c:	001502f3 	move	$r19,$r23
1c00a560:	001503ec 	move	$r12,$r31
1c00a564:	2a4031a5 	ld.hu	$r5,$r13,12(0xc)
1c00a568:	02801a04 	addi.w	$r4,$r16,6(0x6)
1c00a56c:	6c000d85 	bgeu	$r12,$r5,12(0xc) # 1c00a578 <minmax_sequence_TestOneType_u16+0x3f8>
1c00a570:	00150093 	move	$r19,$r4
1c00a574:	001500ac 	move	$r12,$r5
1c00a578:	2a4039a1 	ld.hu	$r1,$r13,14(0xe)
1c00a57c:	02801e12 	addi.w	$r18,$r16,7(0x7)
1c00a580:	6c000d81 	bgeu	$r12,$r1,12(0xc) # 1c00a58c <minmax_sequence_TestOneType_u16+0x40c>
1c00a584:	00150253 	move	$r19,$r18
1c00a588:	0015002c 	move	$r12,$r1
1c00a58c:	2a4041bc 	ld.hu	$r28,$r13,16(0x10)
1c00a590:	02802211 	addi.w	$r17,$r16,8(0x8)
1c00a594:	6c000d9c 	bgeu	$r12,$r28,12(0xc) # 1c00a5a0 <minmax_sequence_TestOneType_u16+0x420>
1c00a598:	00150233 	move	$r19,$r17
1c00a59c:	0015038c 	move	$r12,$r28
1c00a5a0:	2a4049a7 	ld.hu	$r7,$r13,18(0x12)
1c00a5a4:	02802608 	addi.w	$r8,$r16,9(0x9)
1c00a5a8:	6c000d87 	bgeu	$r12,$r7,12(0xc) # 1c00a5b4 <minmax_sequence_TestOneType_u16+0x434>
1c00a5ac:	00150113 	move	$r19,$r8
1c00a5b0:	001500ec 	move	$r12,$r7
1c00a5b4:	2a4051a9 	ld.hu	$r9,$r13,20(0x14)
1c00a5b8:	02802a0a 	addi.w	$r10,$r16,10(0xa)
1c00a5bc:	6c000d89 	bgeu	$r12,$r9,12(0xc) # 1c00a5c8 <minmax_sequence_TestOneType_u16+0x448>
1c00a5c0:	00150153 	move	$r19,$r10
1c00a5c4:	0015012c 	move	$r12,$r9
1c00a5c8:	2a4059ab 	ld.hu	$r11,$r13,22(0x16)
1c00a5cc:	02802e0f 	addi.w	$r15,$r16,11(0xb)
1c00a5d0:	6c000d8b 	bgeu	$r12,$r11,12(0xc) # 1c00a5dc <minmax_sequence_TestOneType_u16+0x45c>
1c00a5d4:	001501f3 	move	$r19,$r15
1c00a5d8:	0015016c 	move	$r12,$r11
1c00a5dc:	2a4061ae 	ld.hu	$r14,$r13,24(0x18)
1c00a5e0:	02803214 	addi.w	$r20,$r16,12(0xc)
1c00a5e4:	6c000d8e 	bgeu	$r12,$r14,12(0xc) # 1c00a5f0 <minmax_sequence_TestOneType_u16+0x470>
1c00a5e8:	00150293 	move	$r19,$r20
1c00a5ec:	001501cc 	move	$r12,$r14
1c00a5f0:	02803610 	addi.w	$r16,$r16,13(0xd)
1c00a5f4:	028069ad 	addi.w	$r13,$r13,26(0x1a)
1c00a5f8:	5ffee206 	bne	$r16,$r6,-288(0x3fee0) # 1c00a4d8 <minmax_sequence_TestOneType_u16+0x358>
1c00a5fc:	1c000ec6 	pcaddu12i	$r6,118(0x76)
1c00a600:	02bf20c6 	addi.w	$r6,$r6,-56(0xfc8)
1c00a604:	1c000ed7 	pcaddu12i	$r23,118(0x76)
1c00a608:	02bec2f7 	addi.w	$r23,$r23,-80(0xfb0)
1c00a60c:	298000d3 	st.w	$r19,$r6,0
1c00a610:	54313000 	bl	12592(0x3130) # 1c00d740 <get_clock>
1c00a614:	288002f2 	ld.w	$r18,$r23,0
1c00a618:	1c000edc 	pcaddu12i	$r28,118(0x76)
1c00a61c:	28bea39c 	ld.w	$r28,$r28,-88(0xfa8)
1c00a620:	29800384 	st.w	$r4,$r28,0
1c00a624:	00150018 	move	$r24,$r0
1c00a628:	64018c12 	bge	$r0,$r18,396(0x18c) # 1c00a7b4 <minmax_sequence_TestOneType_u16+0x634>
1c00a62c:	0015001f 	move	$r31,$r0
1c00a630:	02994076 	addi.w	$r22,$r3,1616(0x650)
1c00a634:	00116ec5 	sub.w	$r5,$r22,$r27
1c00a638:	02bff8a4 	addi.w	$r4,$r5,-2(0xffe)
1c00a63c:	00448481 	srli.w	$r1,$r4,0x1
1c00a640:	02800431 	addi.w	$r17,$r1,1(0x1)
1c00a644:	03401e27 	andi	$r7,$r17,0x7
1c00a648:	0015036c 	move	$r12,$r27
1c00a64c:	001503b0 	move	$r16,$r29
1c00a650:	5800c0e0 	beq	$r7,$r0,192(0xc0) # 1c00a710 <minmax_sequence_TestOneType_u16+0x590>
1c00a654:	02800408 	addi.w	$r8,$r0,1(0x1)
1c00a658:	5800a0e8 	beq	$r7,$r8,160(0xa0) # 1c00a6f8 <minmax_sequence_TestOneType_u16+0x578>
1c00a65c:	02800809 	addi.w	$r9,$r0,2(0x2)
1c00a660:	580084e9 	beq	$r7,$r9,132(0x84) # 1c00a6e4 <minmax_sequence_TestOneType_u16+0x564>
1c00a664:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c00a668:	580068ea 	beq	$r7,$r10,104(0x68) # 1c00a6d0 <minmax_sequence_TestOneType_u16+0x550>
1c00a66c:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c00a670:	58004ceb 	beq	$r7,$r11,76(0x4c) # 1c00a6bc <minmax_sequence_TestOneType_u16+0x53c>
1c00a674:	0280140f 	addi.w	$r15,$r0,5(0x5)
1c00a678:	580030ef 	beq	$r7,$r15,48(0x30) # 1c00a6a8 <minmax_sequence_TestOneType_u16+0x528>
1c00a67c:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c00a680:	580014ee 	beq	$r7,$r14,20(0x14) # 1c00a694 <minmax_sequence_TestOneType_u16+0x514>
1c00a684:	2a400370 	ld.hu	$r16,$r27,0
1c00a688:	6c000bb0 	bgeu	$r29,$r16,8(0x8) # 1c00a690 <minmax_sequence_TestOneType_u16+0x510>
1c00a68c:	001503b0 	move	$r16,$r29
1c00a690:	02800b6c 	addi.w	$r12,$r27,2(0x2)
1c00a694:	2a400194 	ld.hu	$r20,$r12,0
1c00a698:	6c000a14 	bgeu	$r16,$r20,8(0x8) # 1c00a6a0 <minmax_sequence_TestOneType_u16+0x520>
1c00a69c:	00150214 	move	$r20,$r16
1c00a6a0:	00150290 	move	$r16,$r20
1c00a6a4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a6a8:	2a400193 	ld.hu	$r19,$r12,0
1c00a6ac:	6c000a13 	bgeu	$r16,$r19,8(0x8) # 1c00a6b4 <minmax_sequence_TestOneType_u16+0x534>
1c00a6b0:	00150213 	move	$r19,$r16
1c00a6b4:	00150270 	move	$r16,$r19
1c00a6b8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a6bc:	2a40018d 	ld.hu	$r13,$r12,0
1c00a6c0:	6c000a0d 	bgeu	$r16,$r13,8(0x8) # 1c00a6c8 <minmax_sequence_TestOneType_u16+0x548>
1c00a6c4:	0015020d 	move	$r13,$r16
1c00a6c8:	001501b0 	move	$r16,$r13
1c00a6cc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a6d0:	2a400186 	ld.hu	$r6,$r12,0
1c00a6d4:	6c000a06 	bgeu	$r16,$r6,8(0x8) # 1c00a6dc <minmax_sequence_TestOneType_u16+0x55c>
1c00a6d8:	00150206 	move	$r6,$r16
1c00a6dc:	001500d0 	move	$r16,$r6
1c00a6e0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a6e4:	2a400185 	ld.hu	$r5,$r12,0
1c00a6e8:	6c000a05 	bgeu	$r16,$r5,8(0x8) # 1c00a6f0 <minmax_sequence_TestOneType_u16+0x570>
1c00a6ec:	00150205 	move	$r5,$r16
1c00a6f0:	001500b0 	move	$r16,$r5
1c00a6f4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a6f8:	2a400186 	ld.hu	$r6,$r12,0
1c00a6fc:	6c000a06 	bgeu	$r16,$r6,8(0x8) # 1c00a704 <minmax_sequence_TestOneType_u16+0x584>
1c00a700:	00150206 	move	$r6,$r16
1c00a704:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a708:	001500d0 	move	$r16,$r6
1c00a70c:	580076cc 	beq	$r22,$r12,116(0x74) # 1c00a780 <minmax_sequence_TestOneType_u16+0x600>
1c00a710:	2a400184 	ld.hu	$r4,$r12,0
1c00a714:	6c000a04 	bgeu	$r16,$r4,8(0x8) # 1c00a71c <minmax_sequence_TestOneType_u16+0x59c>
1c00a718:	00150204 	move	$r4,$r16
1c00a71c:	2a400990 	ld.hu	$r16,$r12,2(0x2)
1c00a720:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a724:	6c000890 	bgeu	$r4,$r16,8(0x8) # 1c00a72c <minmax_sequence_TestOneType_u16+0x5ac>
1c00a728:	00150090 	move	$r16,$r4
1c00a72c:	2a400981 	ld.hu	$r1,$r12,2(0x2)
1c00a730:	6c000a01 	bgeu	$r16,$r1,8(0x8) # 1c00a738 <minmax_sequence_TestOneType_u16+0x5b8>
1c00a734:	00150201 	move	$r1,$r16
1c00a738:	2a401191 	ld.hu	$r17,$r12,4(0x4)
1c00a73c:	6c000831 	bgeu	$r1,$r17,8(0x8) # 1c00a744 <minmax_sequence_TestOneType_u16+0x5c4>
1c00a740:	00150031 	move	$r17,$r1
1c00a744:	2a401987 	ld.hu	$r7,$r12,6(0x6)
1c00a748:	6c000a27 	bgeu	$r17,$r7,8(0x8) # 1c00a750 <minmax_sequence_TestOneType_u16+0x5d0>
1c00a74c:	00150227 	move	$r7,$r17
1c00a750:	2a402188 	ld.hu	$r8,$r12,8(0x8)
1c00a754:	6c0008e8 	bgeu	$r7,$r8,8(0x8) # 1c00a75c <minmax_sequence_TestOneType_u16+0x5dc>
1c00a758:	001500e8 	move	$r8,$r7
1c00a75c:	2a402990 	ld.hu	$r16,$r12,10(0xa)
1c00a760:	6c000910 	bgeu	$r8,$r16,8(0x8) # 1c00a768 <minmax_sequence_TestOneType_u16+0x5e8>
1c00a764:	00150110 	move	$r16,$r8
1c00a768:	2a403186 	ld.hu	$r6,$r12,12(0xc)
1c00a76c:	6c000a06 	bgeu	$r16,$r6,8(0x8) # 1c00a774 <minmax_sequence_TestOneType_u16+0x5f4>
1c00a770:	00150206 	move	$r6,$r16
1c00a774:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c00a778:	001500d0 	move	$r16,$r6
1c00a77c:	5fff96cc 	bne	$r22,$r12,-108(0x3ff94) # 1c00a710 <minmax_sequence_TestOneType_u16+0x590>
1c00a780:	288003c7 	ld.w	$r7,$r30,0
1c00a784:	29803067 	st.w	$r7,$r3,12(0xc)
1c00a788:	2a403069 	ld.hu	$r9,$r3,12(0xc)
1c00a78c:	58069526 	beq	$r9,$r6,1684(0x694) # 1c00ae20 <minmax_sequence_TestOneType_u16+0xca0>
1c00a790:	1c000ec5 	pcaddu12i	$r5,118(0x76)
1c00a794:	02a9d0a5 	addi.w	$r5,$r5,-1420(0xa74)
1c00a798:	1c000ec4 	pcaddu12i	$r4,118(0x76)
1c00a79c:	02a25084 	addi.w	$r4,$r4,-1900(0x894)
1c00a7a0:	542a9000 	bl	10896(0x2a90) # 1c00d230 <printf>
1c00a7a4:	288002f2 	ld.w	$r18,$r23,0
1c00a7a8:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00a7ac:	02800718 	addi.w	$r24,$r24,1(0x1)
1c00a7b0:	63fe87f2 	blt	$r31,$r18,-380(0x3fe84) # 1c00a634 <minmax_sequence_TestOneType_u16+0x4b4>
1c00a7b4:	542f8c00 	bl	12172(0x2f8c) # 1c00d740 <get_clock>
1c00a7b8:	2880038a 	ld.w	$r10,$r28,0
1c00a7bc:	0015009e 	move	$r30,$r4
1c00a7c0:	14001e8b 	lu12i.w	$r11,244(0xf4)
1c00a7c4:	0389016f 	ori	$r15,$r11,0x240
1c00a7c8:	1c000ece 	pcaddu12i	$r14,118(0x76)
1c00a7cc:	28b7d1ce 	ld.w	$r14,$r14,-524(0xdf4)
1c00a7d0:	00112bd4 	sub.w	$r20,$r30,$r10
1c00a7d4:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00a7d8:	00213e87 	div.wu	$r7,$r20,$r15
1c00a7dc:	5c0009e0 	bne	$r15,$r0,8(0x8) # 1c00a7e4 <minmax_sequence_TestOneType_u16+0x664>
1c00a7e0:	002a0007 	break	0x7
1c00a7e4:	1c000ec5 	pcaddu12i	$r5,118(0x76)
1c00a7e8:	02a880a5 	addi.w	$r5,$r5,-1504(0xa20)
1c00a7ec:	1c000ec4 	pcaddu12i	$r4,118(0x76)
1c00a7f0:	02a1a084 	addi.w	$r4,$r4,-1944(0x868)
1c00a7f4:	298001de 	st.w	$r30,$r14,0
1c00a7f8:	542a3800 	bl	10808(0x2a38) # 1c00d230 <printf>
1c00a7fc:	542f4400 	bl	12100(0x2f44) # 1c00d740 <get_clock>
1c00a800:	288002f3 	ld.w	$r19,$r23,0
1c00a804:	29800384 	st.w	$r4,$r28,0
1c00a808:	64019413 	bge	$r0,$r19,404(0x194) # 1c00a99c <minmax_sequence_TestOneType_u16+0x81c>
1c00a80c:	00150016 	move	$r22,$r0
1c00a810:	0015001e 	move	$r30,$r0
1c00a814:	0299407f 	addi.w	$r31,$r3,1616(0x650)
1c00a818:	00116fed 	sub.w	$r13,$r31,$r27
1c00a81c:	02bff9a6 	addi.w	$r6,$r13,-2(0xffe)
1c00a820:	004484c5 	srli.w	$r5,$r6,0x1
1c00a824:	028004a4 	addi.w	$r4,$r5,1(0x1)
1c00a828:	03401c81 	andi	$r1,$r4,0x7
1c00a82c:	0015036c 	move	$r12,$r27
1c00a830:	001503b2 	move	$r18,$r29
1c00a834:	5800c020 	beq	$r1,$r0,192(0xc0) # 1c00a8f4 <minmax_sequence_TestOneType_u16+0x774>
1c00a838:	02800411 	addi.w	$r17,$r0,1(0x1)
1c00a83c:	5800a031 	beq	$r1,$r17,160(0xa0) # 1c00a8dc <minmax_sequence_TestOneType_u16+0x75c>
1c00a840:	02800808 	addi.w	$r8,$r0,2(0x2)
1c00a844:	58008428 	beq	$r1,$r8,132(0x84) # 1c00a8c8 <minmax_sequence_TestOneType_u16+0x748>
1c00a848:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c00a84c:	58006830 	beq	$r1,$r16,104(0x68) # 1c00a8b4 <minmax_sequence_TestOneType_u16+0x734>
1c00a850:	02801009 	addi.w	$r9,$r0,4(0x4)
1c00a854:	58004c29 	beq	$r1,$r9,76(0x4c) # 1c00a8a0 <minmax_sequence_TestOneType_u16+0x720>
1c00a858:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c00a85c:	5800302a 	beq	$r1,$r10,48(0x30) # 1c00a88c <minmax_sequence_TestOneType_u16+0x70c>
1c00a860:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c00a864:	5800142b 	beq	$r1,$r11,20(0x14) # 1c00a878 <minmax_sequence_TestOneType_u16+0x6f8>
1c00a868:	2a400372 	ld.hu	$r18,$r27,0
1c00a86c:	6c000a5d 	bgeu	$r18,$r29,8(0x8) # 1c00a874 <minmax_sequence_TestOneType_u16+0x6f4>
1c00a870:	001503b2 	move	$r18,$r29
1c00a874:	02800b6c 	addi.w	$r12,$r27,2(0x2)
1c00a878:	2a40018f 	ld.hu	$r15,$r12,0
1c00a87c:	6c0009f2 	bgeu	$r15,$r18,8(0x8) # 1c00a884 <minmax_sequence_TestOneType_u16+0x704>
1c00a880:	0015024f 	move	$r15,$r18
1c00a884:	001501f2 	move	$r18,$r15
1c00a888:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a88c:	2a40018e 	ld.hu	$r14,$r12,0
1c00a890:	6c0009d2 	bgeu	$r14,$r18,8(0x8) # 1c00a898 <minmax_sequence_TestOneType_u16+0x718>
1c00a894:	0015024e 	move	$r14,$r18
1c00a898:	001501d2 	move	$r18,$r14
1c00a89c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a8a0:	2a400194 	ld.hu	$r20,$r12,0
1c00a8a4:	6c000a92 	bgeu	$r20,$r18,8(0x8) # 1c00a8ac <minmax_sequence_TestOneType_u16+0x72c>
1c00a8a8:	00150254 	move	$r20,$r18
1c00a8ac:	00150292 	move	$r18,$r20
1c00a8b0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a8b4:	2a400187 	ld.hu	$r7,$r12,0
1c00a8b8:	6c0008f2 	bgeu	$r7,$r18,8(0x8) # 1c00a8c0 <minmax_sequence_TestOneType_u16+0x740>
1c00a8bc:	00150247 	move	$r7,$r18
1c00a8c0:	001500f2 	move	$r18,$r7
1c00a8c4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a8c8:	2a40018d 	ld.hu	$r13,$r12,0
1c00a8cc:	6c0009b2 	bgeu	$r13,$r18,8(0x8) # 1c00a8d4 <minmax_sequence_TestOneType_u16+0x754>
1c00a8d0:	0015024d 	move	$r13,$r18
1c00a8d4:	001501b2 	move	$r18,$r13
1c00a8d8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a8dc:	2a400186 	ld.hu	$r6,$r12,0
1c00a8e0:	6c0008d2 	bgeu	$r6,$r18,8(0x8) # 1c00a8e8 <minmax_sequence_TestOneType_u16+0x768>
1c00a8e4:	00150246 	move	$r6,$r18
1c00a8e8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a8ec:	001500d2 	move	$r18,$r6
1c00a8f0:	5800759f 	beq	$r12,$r31,116(0x74) # 1c00a964 <minmax_sequence_TestOneType_u16+0x7e4>
1c00a8f4:	2a400186 	ld.hu	$r6,$r12,0
1c00a8f8:	6c0008d2 	bgeu	$r6,$r18,8(0x8) # 1c00a900 <minmax_sequence_TestOneType_u16+0x780>
1c00a8fc:	00150246 	move	$r6,$r18
1c00a900:	2a400992 	ld.hu	$r18,$r12,2(0x2)
1c00a904:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00a908:	6c000a46 	bgeu	$r18,$r6,8(0x8) # 1c00a910 <minmax_sequence_TestOneType_u16+0x790>
1c00a90c:	001500d2 	move	$r18,$r6
1c00a910:	2a400985 	ld.hu	$r5,$r12,2(0x2)
1c00a914:	6c0008b2 	bgeu	$r5,$r18,8(0x8) # 1c00a91c <minmax_sequence_TestOneType_u16+0x79c>
1c00a918:	00150245 	move	$r5,$r18
1c00a91c:	2a401184 	ld.hu	$r4,$r12,4(0x4)
1c00a920:	6c000885 	bgeu	$r4,$r5,8(0x8) # 1c00a928 <minmax_sequence_TestOneType_u16+0x7a8>
1c00a924:	001500a4 	move	$r4,$r5
1c00a928:	2a401981 	ld.hu	$r1,$r12,6(0x6)
1c00a92c:	6c000824 	bgeu	$r1,$r4,8(0x8) # 1c00a934 <minmax_sequence_TestOneType_u16+0x7b4>
1c00a930:	00150081 	move	$r1,$r4
1c00a934:	2a402191 	ld.hu	$r17,$r12,8(0x8)
1c00a938:	6c000a21 	bgeu	$r17,$r1,8(0x8) # 1c00a940 <minmax_sequence_TestOneType_u16+0x7c0>
1c00a93c:	00150031 	move	$r17,$r1
1c00a940:	2a402992 	ld.hu	$r18,$r12,10(0xa)
1c00a944:	6c000a51 	bgeu	$r18,$r17,8(0x8) # 1c00a94c <minmax_sequence_TestOneType_u16+0x7cc>
1c00a948:	00150232 	move	$r18,$r17
1c00a94c:	2a403186 	ld.hu	$r6,$r12,12(0xc)
1c00a950:	6c0008d2 	bgeu	$r6,$r18,8(0x8) # 1c00a958 <minmax_sequence_TestOneType_u16+0x7d8>
1c00a954:	00150246 	move	$r6,$r18
1c00a958:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c00a95c:	001500d2 	move	$r18,$r6
1c00a960:	5fff959f 	bne	$r12,$r31,-108(0x3ff94) # 1c00a8f4 <minmax_sequence_TestOneType_u16+0x774>
1c00a964:	28800327 	ld.w	$r7,$r25,0
1c00a968:	29803067 	st.w	$r7,$r3,12(0xc)
1c00a96c:	2a403068 	ld.hu	$r8,$r3,12(0xc)
1c00a970:	5804c106 	beq	$r8,$r6,1216(0x4c0) # 1c00ae30 <minmax_sequence_TestOneType_u16+0xcb0>
1c00a974:	1c000ec5 	pcaddu12i	$r5,118(0x76)
1c00a978:	02a2d0a5 	addi.w	$r5,$r5,-1868(0x8b4)
1c00a97c:	1c000ea4 	pcaddu12i	$r4,117(0x75)
1c00a980:	029ac084 	addi.w	$r4,$r4,1712(0x6b0)
1c00a984:	5428ac00 	bl	10412(0x28ac) # 1c00d230 <printf>
1c00a988:	288002f3 	ld.w	$r19,$r23,0
1c00a98c:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00a990:	028007de 	addi.w	$r30,$r30,1(0x1)
1c00a994:	63fe86d3 	blt	$r22,$r19,-380(0x3fe84) # 1c00a818 <minmax_sequence_TestOneType_u16+0x698>
1c00a998:	00107b18 	add.w	$r24,$r24,$r30
1c00a99c:	542da400 	bl	11684(0x2da4) # 1c00d740 <get_clock>
1c00a9a0:	28800389 	ld.w	$r9,$r28,0
1c00a9a4:	00150090 	move	$r16,$r4
1c00a9a8:	14001e99 	lu12i.w	$r25,244(0xf4)
1c00a9ac:	0389032a 	ori	$r10,$r25,0x240
1c00a9b0:	1c000ecb 	pcaddu12i	$r11,118(0x76)
1c00a9b4:	28b0316b 	ld.w	$r11,$r11,-1012(0xc0c)
1c00a9b8:	0011260f 	sub.w	$r15,$r16,$r9
1c00a9bc:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00a9c0:	002129e7 	div.wu	$r7,$r15,$r10
1c00a9c4:	5c000940 	bne	$r10,$r0,8(0x8) # 1c00a9cc <minmax_sequence_TestOneType_u16+0x84c>
1c00a9c8:	002a0007 	break	0x7
1c00a9cc:	1c000ec5 	pcaddu12i	$r5,118(0x76)
1c00a9d0:	02a170a5 	addi.w	$r5,$r5,-1956(0x85c)
1c00a9d4:	1c000ea4 	pcaddu12i	$r4,117(0x75)
1c00a9d8:	029a0084 	addi.w	$r4,$r4,1664(0x680)
1c00a9dc:	29800170 	st.w	$r16,$r11,0
1c00a9e0:	54285000 	bl	10320(0x2850) # 1c00d230 <printf>
1c00a9e4:	288002ee 	ld.w	$r14,$r23,0
1c00a9e8:	02801414 	addi.w	$r20,$r0,5(0x5)
1c00a9ec:	00150016 	move	$r22,$r0
1c00a9f0:	002051c6 	div.w	$r6,$r14,$r20
1c00a9f4:	5c000a80 	bne	$r20,$r0,8(0x8) # 1c00a9fc <minmax_sequence_TestOneType_u16+0x87c>
1c00a9f8:	002a0007 	break	0x7
1c00a9fc:	2980306e 	st.w	$r14,$r3,12(0xc)
1c00aa00:	298002e6 	st.w	$r6,$r23,0
1c00aa04:	542d3c00 	bl	11580(0x2d3c) # 1c00d740 <get_clock>
1c00aa08:	288002f2 	ld.w	$r18,$r23,0
1c00aa0c:	29800384 	st.w	$r4,$r28,0
1c00aa10:	028c8019 	addi.w	$r25,$r0,800(0x320)
1c00aa14:	1c000edf 	pcaddu12i	$r31,118(0x76)
1c00aa18:	02a0e3ff 	addi.w	$r31,$r31,-1992(0x838)
1c00aa1c:	1c000ebe 	pcaddu12i	$r30,117(0x75)
1c00aa20:	029793de 	addi.w	$r30,$r30,1508(0x5e4)
1c00aa24:	64016812 	bge	$r0,$r18,360(0x168) # 1c00ab8c <minmax_sequence_TestOneType_u16+0xa0c>
1c00aa28:	2a400365 	ld.hu	$r5,$r27,0
1c00aa2c:	001503ac 	move	$r12,$r29
1c00aa30:	00150006 	move	$r6,$r0
1c00aa34:	6c000cbd 	bgeu	$r5,$r29,12(0xc) # 1c00aa40 <minmax_sequence_TestOneType_u16+0x8c0>
1c00aa38:	001500ac 	move	$r12,$r5
1c00aa3c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00aa40:	02800811 	addi.w	$r17,$r0,2(0x2)
1c00aa44:	02800b68 	addi.w	$r8,$r27,2(0x2)
1c00aa48:	2a400104 	ld.hu	$r4,$r8,0
1c00aa4c:	6c000c8c 	bgeu	$r4,$r12,12(0xc) # 1c00aa58 <minmax_sequence_TestOneType_u16+0x8d8>
1c00aa50:	0015008c 	move	$r12,$r4
1c00aa54:	00150226 	move	$r6,$r17
1c00aa58:	2a400901 	ld.hu	$r1,$r8,2(0x2)
1c00aa5c:	02800631 	addi.w	$r17,$r17,1(0x1)
1c00aa60:	02800908 	addi.w	$r8,$r8,2(0x2)
1c00aa64:	6c000c2c 	bgeu	$r1,$r12,12(0xc) # 1c00aa70 <minmax_sequence_TestOneType_u16+0x8f0>
1c00aa68:	0015002c 	move	$r12,$r1
1c00aa6c:	00150226 	move	$r6,$r17
1c00aa70:	2a400913 	ld.hu	$r19,$r8,2(0x2)
1c00aa74:	02800630 	addi.w	$r16,$r17,1(0x1)
1c00aa78:	6c000e6c 	bgeu	$r19,$r12,12(0xc) # 1c00aa84 <minmax_sequence_TestOneType_u16+0x904>
1c00aa7c:	0015026c 	move	$r12,$r19
1c00aa80:	00150206 	move	$r6,$r16
1c00aa84:	2a401109 	ld.hu	$r9,$r8,4(0x4)
1c00aa88:	02800a2a 	addi.w	$r10,$r17,2(0x2)
1c00aa8c:	6c000d2c 	bgeu	$r9,$r12,12(0xc) # 1c00aa98 <minmax_sequence_TestOneType_u16+0x918>
1c00aa90:	0015012c 	move	$r12,$r9
1c00aa94:	00150146 	move	$r6,$r10
1c00aa98:	2a40190b 	ld.hu	$r11,$r8,6(0x6)
1c00aa9c:	02800e2f 	addi.w	$r15,$r17,3(0x3)
1c00aaa0:	6c000d6c 	bgeu	$r11,$r12,12(0xc) # 1c00aaac <minmax_sequence_TestOneType_u16+0x92c>
1c00aaa4:	0015016c 	move	$r12,$r11
1c00aaa8:	001501e6 	move	$r6,$r15
1c00aaac:	2a402107 	ld.hu	$r7,$r8,8(0x8)
1c00aab0:	0280122e 	addi.w	$r14,$r17,4(0x4)
1c00aab4:	6c000cec 	bgeu	$r7,$r12,12(0xc) # 1c00aac0 <minmax_sequence_TestOneType_u16+0x940>
1c00aab8:	001500ec 	move	$r12,$r7
1c00aabc:	001501c6 	move	$r6,$r14
1c00aac0:	2a40290d 	ld.hu	$r13,$r8,10(0xa)
1c00aac4:	02801634 	addi.w	$r20,$r17,5(0x5)
1c00aac8:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c00aad4 <minmax_sequence_TestOneType_u16+0x954>
1c00aacc:	001501ac 	move	$r12,$r13
1c00aad0:	00150286 	move	$r6,$r20
1c00aad4:	2a403105 	ld.hu	$r5,$r8,12(0xc)
1c00aad8:	02801a24 	addi.w	$r4,$r17,6(0x6)
1c00aadc:	6c000cac 	bgeu	$r5,$r12,12(0xc) # 1c00aae8 <minmax_sequence_TestOneType_u16+0x968>
1c00aae0:	001500ac 	move	$r12,$r5
1c00aae4:	00150086 	move	$r6,$r4
1c00aae8:	2a403901 	ld.hu	$r1,$r8,14(0xe)
1c00aaec:	02801e33 	addi.w	$r19,$r17,7(0x7)
1c00aaf0:	6c000c2c 	bgeu	$r1,$r12,12(0xc) # 1c00aafc <minmax_sequence_TestOneType_u16+0x97c>
1c00aaf4:	0015002c 	move	$r12,$r1
1c00aaf8:	00150266 	move	$r6,$r19
1c00aafc:	2a404110 	ld.hu	$r16,$r8,16(0x10)
1c00ab00:	02802229 	addi.w	$r9,$r17,8(0x8)
1c00ab04:	6c000e0c 	bgeu	$r16,$r12,12(0xc) # 1c00ab10 <minmax_sequence_TestOneType_u16+0x990>
1c00ab08:	0015020c 	move	$r12,$r16
1c00ab0c:	00150126 	move	$r6,$r9
1c00ab10:	2a40490a 	ld.hu	$r10,$r8,18(0x12)
1c00ab14:	0280262b 	addi.w	$r11,$r17,9(0x9)
1c00ab18:	6c000d4c 	bgeu	$r10,$r12,12(0xc) # 1c00ab24 <minmax_sequence_TestOneType_u16+0x9a4>
1c00ab1c:	0015014c 	move	$r12,$r10
1c00ab20:	00150166 	move	$r6,$r11
1c00ab24:	2a40510f 	ld.hu	$r15,$r8,20(0x14)
1c00ab28:	02802a27 	addi.w	$r7,$r17,10(0xa)
1c00ab2c:	6c000dec 	bgeu	$r15,$r12,12(0xc) # 1c00ab38 <minmax_sequence_TestOneType_u16+0x9b8>
1c00ab30:	001501ec 	move	$r12,$r15
1c00ab34:	001500e6 	move	$r6,$r7
1c00ab38:	2a40590e 	ld.hu	$r14,$r8,22(0x16)
1c00ab3c:	02802e2d 	addi.w	$r13,$r17,11(0xb)
1c00ab40:	6c000dcc 	bgeu	$r14,$r12,12(0xc) # 1c00ab4c <minmax_sequence_TestOneType_u16+0x9cc>
1c00ab44:	001501cc 	move	$r12,$r14
1c00ab48:	001501a6 	move	$r6,$r13
1c00ab4c:	2a406105 	ld.hu	$r5,$r8,24(0x18)
1c00ab50:	02803234 	addi.w	$r20,$r17,12(0xc)
1c00ab54:	6c000cac 	bgeu	$r5,$r12,12(0xc) # 1c00ab60 <minmax_sequence_TestOneType_u16+0x9e0>
1c00ab58:	001500ac 	move	$r12,$r5
1c00ab5c:	00150286 	move	$r6,$r20
1c00ab60:	02803631 	addi.w	$r17,$r17,13(0xd)
1c00ab64:	02806908 	addi.w	$r8,$r8,26(0x1a)
1c00ab68:	5ffee239 	bne	$r17,$r25,-288(0x3fee0) # 1c00aa48 <minmax_sequence_TestOneType_u16+0x8c8>
1c00ab6c:	28800347 	ld.w	$r7,$r26,0
1c00ab70:	5802a0e6 	beq	$r7,$r6,672(0x2a0) # 1c00ae10 <minmax_sequence_TestOneType_u16+0xc90>
1c00ab74:	001503e5 	move	$r5,$r31
1c00ab78:	001503c4 	move	$r4,$r30
1c00ab7c:	5426b400 	bl	9908(0x26b4) # 1c00d230 <printf>
1c00ab80:	288002f2 	ld.w	$r18,$r23,0
1c00ab84:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00ab88:	63fea2d2 	blt	$r22,$r18,-352(0x3fea0) # 1c00aa28 <minmax_sequence_TestOneType_u16+0x8a8>
1c00ab8c:	542bb400 	bl	11188(0x2bb4) # 1c00d740 <get_clock>
1c00ab90:	28800393 	ld.w	$r19,$r28,0
1c00ab94:	0015009a 	move	$r26,$r4
1c00ab98:	14001e86 	lu12i.w	$r6,244(0xf4)
1c00ab9c:	038900d0 	ori	$r16,$r6,0x240
1c00aba0:	00114f4a 	sub.w	$r10,$r26,$r19
1c00aba4:	1c000ec9 	pcaddu12i	$r9,118(0x76)
1c00aba8:	28a86129 	ld.w	$r9,$r9,-1512(0xa18)
1c00abac:	00214147 	div.wu	$r7,$r10,$r16
1c00abb0:	5c000a00 	bne	$r16,$r0,8(0x8) # 1c00abb8 <minmax_sequence_TestOneType_u16+0xa38>
1c00abb4:	002a0007 	break	0x7
1c00abb8:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00abbc:	1c000ea5 	pcaddu12i	$r5,117(0x75)
1c00abc0:	029a40a5 	addi.w	$r5,$r5,1680(0x690)
1c00abc4:	1c000ea4 	pcaddu12i	$r4,117(0x75)
1c00abc8:	02924084 	addi.w	$r4,$r4,1168(0x490)
1c00abcc:	2980013a 	st.w	$r26,$r9,0
1c00abd0:	54266000 	bl	9824(0x2660) # 1c00d230 <printf>
1c00abd4:	542b6c00 	bl	11116(0x2b6c) # 1c00d740 <get_clock>
1c00abd8:	288002f1 	ld.w	$r17,$r23,0
1c00abdc:	29800384 	st.w	$r4,$r28,0
1c00abe0:	0015001f 	move	$r31,$r0
1c00abe4:	028c8019 	addi.w	$r25,$r0,800(0x320)
1c00abe8:	1c000ebe 	pcaddu12i	$r30,117(0x75)
1c00abec:	029a23de 	addi.w	$r30,$r30,1672(0x688)
1c00abf0:	1c000eba 	pcaddu12i	$r26,117(0x75)
1c00abf4:	0290435a 	addi.w	$r26,$r26,1040(0x410)
1c00abf8:	64017411 	bge	$r0,$r17,372(0x174) # 1c00ad6c <minmax_sequence_TestOneType_u16+0xbec>
1c00abfc:	03400000 	andi	$r0,$r0,0x0
1c00ac00:	2a400364 	ld.hu	$r4,$r27,0
1c00ac04:	001503ac 	move	$r12,$r29
1c00ac08:	00150006 	move	$r6,$r0
1c00ac0c:	6c000fa4 	bgeu	$r29,$r4,12(0xc) # 1c00ac18 <minmax_sequence_TestOneType_u16+0xa98>
1c00ac10:	0015008c 	move	$r12,$r4
1c00ac14:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00ac18:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c00ac1c:	02800b6e 	addi.w	$r14,$r27,2(0x2)
1c00ac20:	2a4001c1 	ld.hu	$r1,$r14,0
1c00ac24:	6c000d81 	bgeu	$r12,$r1,12(0xc) # 1c00ac30 <minmax_sequence_TestOneType_u16+0xab0>
1c00ac28:	0015002c 	move	$r12,$r1
1c00ac2c:	001501e6 	move	$r6,$r15
1c00ac30:	2a4009cb 	ld.hu	$r11,$r14,2(0x2)
1c00ac34:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c00ac38:	028009ce 	addi.w	$r14,$r14,2(0x2)
1c00ac3c:	6c000d8b 	bgeu	$r12,$r11,12(0xc) # 1c00ac48 <minmax_sequence_TestOneType_u16+0xac8>
1c00ac40:	0015016c 	move	$r12,$r11
1c00ac44:	001501e6 	move	$r6,$r15
1c00ac48:	2a4009cd 	ld.hu	$r13,$r14,2(0x2)
1c00ac4c:	028005e5 	addi.w	$r5,$r15,1(0x1)
1c00ac50:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c00ac5c <minmax_sequence_TestOneType_u16+0xadc>
1c00ac54:	001501ac 	move	$r12,$r13
1c00ac58:	001500a6 	move	$r6,$r5
1c00ac5c:	2a4011d4 	ld.hu	$r20,$r14,4(0x4)
1c00ac60:	028009e8 	addi.w	$r8,$r15,2(0x2)
1c00ac64:	6c000d94 	bgeu	$r12,$r20,12(0xc) # 1c00ac70 <minmax_sequence_TestOneType_u16+0xaf0>
1c00ac68:	0015028c 	move	$r12,$r20
1c00ac6c:	00150106 	move	$r6,$r8
1c00ac70:	2a4019d2 	ld.hu	$r18,$r14,6(0x6)
1c00ac74:	02800df6 	addi.w	$r22,$r15,3(0x3)
1c00ac78:	6c000d92 	bgeu	$r12,$r18,12(0xc) # 1c00ac84 <minmax_sequence_TestOneType_u16+0xb04>
1c00ac7c:	0015024c 	move	$r12,$r18
1c00ac80:	001502c6 	move	$r6,$r22
1c00ac84:	2a4021d0 	ld.hu	$r16,$r14,8(0x8)
1c00ac88:	028011f3 	addi.w	$r19,$r15,4(0x4)
1c00ac8c:	6c000d90 	bgeu	$r12,$r16,12(0xc) # 1c00ac98 <minmax_sequence_TestOneType_u16+0xb18>
1c00ac90:	0015020c 	move	$r12,$r16
1c00ac94:	00150266 	move	$r6,$r19
1c00ac98:	2a4029c9 	ld.hu	$r9,$r14,10(0xa)
1c00ac9c:	028015ea 	addi.w	$r10,$r15,5(0x5)
1c00aca0:	6c000d89 	bgeu	$r12,$r9,12(0xc) # 1c00acac <minmax_sequence_TestOneType_u16+0xb2c>
1c00aca4:	0015012c 	move	$r12,$r9
1c00aca8:	00150146 	move	$r6,$r10
1c00acac:	2a4031c7 	ld.hu	$r7,$r14,12(0xc)
1c00acb0:	028019e4 	addi.w	$r4,$r15,6(0x6)
1c00acb4:	6c000d87 	bgeu	$r12,$r7,12(0xc) # 1c00acc0 <minmax_sequence_TestOneType_u16+0xb40>
1c00acb8:	001500ec 	move	$r12,$r7
1c00acbc:	00150086 	move	$r6,$r4
1c00acc0:	2a4039c1 	ld.hu	$r1,$r14,14(0xe)
1c00acc4:	02801deb 	addi.w	$r11,$r15,7(0x7)
1c00acc8:	6c000d81 	bgeu	$r12,$r1,12(0xc) # 1c00acd4 <minmax_sequence_TestOneType_u16+0xb54>
1c00accc:	0015002c 	move	$r12,$r1
1c00acd0:	00150166 	move	$r6,$r11
1c00acd4:	2a4041cd 	ld.hu	$r13,$r14,16(0x10)
1c00acd8:	028021e5 	addi.w	$r5,$r15,8(0x8)
1c00acdc:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c00ace8 <minmax_sequence_TestOneType_u16+0xb68>
1c00ace0:	001501ac 	move	$r12,$r13
1c00ace4:	001500a6 	move	$r6,$r5
1c00ace8:	2a4049d4 	ld.hu	$r20,$r14,18(0x12)
1c00acec:	028025e8 	addi.w	$r8,$r15,9(0x9)
1c00acf0:	6c000d94 	bgeu	$r12,$r20,12(0xc) # 1c00acfc <minmax_sequence_TestOneType_u16+0xb7c>
1c00acf4:	0015028c 	move	$r12,$r20
1c00acf8:	00150106 	move	$r6,$r8
1c00acfc:	2a4051d2 	ld.hu	$r18,$r14,20(0x14)
1c00ad00:	028029f6 	addi.w	$r22,$r15,10(0xa)
1c00ad04:	6c000d92 	bgeu	$r12,$r18,12(0xc) # 1c00ad10 <minmax_sequence_TestOneType_u16+0xb90>
1c00ad08:	0015024c 	move	$r12,$r18
1c00ad0c:	001502c6 	move	$r6,$r22
1c00ad10:	2a4059d0 	ld.hu	$r16,$r14,22(0x16)
1c00ad14:	02802df3 	addi.w	$r19,$r15,11(0xb)
1c00ad18:	6c000d90 	bgeu	$r12,$r16,12(0xc) # 1c00ad24 <minmax_sequence_TestOneType_u16+0xba4>
1c00ad1c:	0015020c 	move	$r12,$r16
1c00ad20:	00150266 	move	$r6,$r19
1c00ad24:	2a4061c9 	ld.hu	$r9,$r14,24(0x18)
1c00ad28:	028031ea 	addi.w	$r10,$r15,12(0xc)
1c00ad2c:	6c000d89 	bgeu	$r12,$r9,12(0xc) # 1c00ad38 <minmax_sequence_TestOneType_u16+0xbb8>
1c00ad30:	0015012c 	move	$r12,$r9
1c00ad34:	00150146 	move	$r6,$r10
1c00ad38:	028035ef 	addi.w	$r15,$r15,13(0xd)
1c00ad3c:	028069ce 	addi.w	$r14,$r14,26(0x1a)
1c00ad40:	5ffee1f9 	bne	$r15,$r25,-288(0x3fee0) # 1c00ac20 <minmax_sequence_TestOneType_u16+0xaa0>
1c00ad44:	1c000ec7 	pcaddu12i	$r7,118(0x76)
1c00ad48:	02a200e7 	addi.w	$r7,$r7,-1920(0x880)
1c00ad4c:	288000e7 	ld.w	$r7,$r7,0
1c00ad50:	5800b0c7 	beq	$r6,$r7,176(0xb0) # 1c00ae00 <minmax_sequence_TestOneType_u16+0xc80>
1c00ad54:	001503c5 	move	$r5,$r30
1c00ad58:	00150344 	move	$r4,$r26
1c00ad5c:	5424d400 	bl	9428(0x24d4) # 1c00d230 <printf>
1c00ad60:	288002f1 	ld.w	$r17,$r23,0
1c00ad64:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00ad68:	63fe9bf1 	blt	$r31,$r17,-360(0x3fe98) # 1c00ac00 <minmax_sequence_TestOneType_u16+0xa80>
1c00ad6c:	5429d400 	bl	10708(0x29d4) # 1c00d740 <get_clock>
1c00ad70:	2880039d 	ld.w	$r29,$r28,0
1c00ad74:	0015009b 	move	$r27,$r4
1c00ad78:	14001e86 	lu12i.w	$r6,244(0xf4)
1c00ad7c:	00117774 	sub.w	$r20,$r27,$r29
1c00ad80:	038900cb 	ori	$r11,$r6,0x240
1c00ad84:	1c000ecd 	pcaddu12i	$r13,118(0x76)
1c00ad88:	28a0e1ad 	ld.w	$r13,$r13,-1992(0x838)
1c00ad8c:	00212e87 	div.wu	$r7,$r20,$r11
1c00ad90:	5c000960 	bne	$r11,$r0,8(0x8) # 1c00ad98 <minmax_sequence_TestOneType_u16+0xc18>
1c00ad94:	002a0007 	break	0x7
1c00ad98:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00ad9c:	1c000ea5 	pcaddu12i	$r5,117(0x75)
1c00ada0:	029350a5 	addi.w	$r5,$r5,1236(0x4d4)
1c00ada4:	1c000ea4 	pcaddu12i	$r4,117(0x75)
1c00ada8:	028ac084 	addi.w	$r4,$r4,688(0x2b0)
1c00adac:	298001bb 	st.w	$r27,$r13,0
1c00adb0:	54248000 	bl	9344(0x2480) # 1c00d230 <printf>
1c00adb4:	28803064 	ld.w	$r4,$r3,12(0xc)
1c00adb8:	2899f061 	ld.w	$r1,$r3,1660(0x67c)
1c00adbc:	2899e076 	ld.w	$r22,$r3,1656(0x678)
1c00adc0:	298002e4 	st.w	$r4,$r23,0
1c00adc4:	2899b079 	ld.w	$r25,$r3,1644(0x66c)
1c00adc8:	00150304 	move	$r4,$r24
1c00adcc:	2899d077 	ld.w	$r23,$r3,1652(0x674)
1c00add0:	2899c078 	ld.w	$r24,$r3,1648(0x670)
1c00add4:	2899a07a 	ld.w	$r26,$r3,1640(0x668)
1c00add8:	2899907b 	ld.w	$r27,$r3,1636(0x664)
1c00addc:	2899807c 	ld.w	$r28,$r3,1632(0x660)
1c00ade0:	2899707d 	ld.w	$r29,$r3,1628(0x65c)
1c00ade4:	2899607e 	ld.w	$r30,$r3,1624(0x658)
1c00ade8:	2899507f 	ld.w	$r31,$r3,1620(0x654)
1c00adec:	029a0063 	addi.w	$r3,$r3,1664(0x680)
1c00adf0:	4c000020 	jirl	$r0,$r1,0
1c00adf4:	001503a1 	move	$r1,$r29
1c00adf8:	53f42fff 	b	-3028(0xffff42c) # 1c00a224 <minmax_sequence_TestOneType_u16+0xa4>
1c00adfc:	03400000 	andi	$r0,$r0,0x0
1c00ae00:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00ae04:	63fdfff1 	blt	$r31,$r17,-516(0x3fdfc) # 1c00ac00 <minmax_sequence_TestOneType_u16+0xa80>
1c00ae08:	53ff67ff 	b	-156(0xfffff64) # 1c00ad6c <minmax_sequence_TestOneType_u16+0xbec>
1c00ae0c:	03400000 	andi	$r0,$r0,0x0
1c00ae10:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00ae14:	63fc16d2 	blt	$r22,$r18,-1004(0x3fc14) # 1c00aa28 <minmax_sequence_TestOneType_u16+0x8a8>
1c00ae18:	53fd77ff 	b	-652(0xffffd74) # 1c00ab8c <minmax_sequence_TestOneType_u16+0xa0c>
1c00ae1c:	03400000 	andi	$r0,$r0,0x0
1c00ae20:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00ae24:	63f813f2 	blt	$r31,$r18,-2032(0x3f810) # 1c00a634 <minmax_sequence_TestOneType_u16+0x4b4>
1c00ae28:	53f98fff 	b	-1652(0xffff98c) # 1c00a7b4 <minmax_sequence_TestOneType_u16+0x634>
1c00ae2c:	03400000 	andi	$r0,$r0,0x0
1c00ae30:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00ae34:	63f9e6d3 	blt	$r22,$r19,-1564(0x3f9e4) # 1c00a818 <minmax_sequence_TestOneType_u16+0x698>
1c00ae38:	53fb63ff 	b	-1184(0xffffb60) # 1c00a998 <minmax_sequence_TestOneType_u16+0x818>
1c00ae3c:	0015012a 	move	$r10,$r9
1c00ae40:	0280698b 	addi.w	$r11,$r12,26(0x1a)
1c00ae44:	0299406e 	addi.w	$r14,$r3,1616(0x650)
1c00ae48:	0015014f 	move	$r15,$r10
1c00ae4c:	5ff4856e 	bne	$r11,$r14,-2940(0x3f484) # 1c00a2d0 <minmax_sequence_TestOneType_u16+0x150>
1c00ae50:	53f507ff 	b	-2812(0xffff504) # 1c00a354 <minmax_sequence_TestOneType_u16+0x1d4>
1c00ae54:	2a40618a 	ld.hu	$r10,$r12,24(0x18)
1c00ae58:	00150109 	move	$r9,$r8
1c00ae5c:	6ff4e949 	bgeu	$r10,$r9,-2840(0x3f4e8) # 1c00a344 <minmax_sequence_TestOneType_u16+0x1c4>
1c00ae60:	53ffdfff 	b	-36(0xfffffdc) # 1c00ae3c <minmax_sequence_TestOneType_u16+0xcbc>
1c00ae64:	2a405989 	ld.hu	$r9,$r12,22(0x16)
1c00ae68:	001500e8 	move	$r8,$r7
1c00ae6c:	6ff4d128 	bgeu	$r9,$r8,-2864(0x3f4d0) # 1c00a33c <minmax_sequence_TestOneType_u16+0x1bc>
1c00ae70:	53ffe7ff 	b	-28(0xfffffe4) # 1c00ae54 <minmax_sequence_TestOneType_u16+0xcd4>
1c00ae74:	2a405188 	ld.hu	$r8,$r12,20(0x14)
1c00ae78:	00150207 	move	$r7,$r16
1c00ae7c:	6ff4b907 	bgeu	$r8,$r7,-2888(0x3f4b8) # 1c00a334 <minmax_sequence_TestOneType_u16+0x1b4>
1c00ae80:	53ffe7ff 	b	-28(0xfffffe4) # 1c00ae64 <minmax_sequence_TestOneType_u16+0xce4>
1c00ae84:	2a404987 	ld.hu	$r7,$r12,18(0x12)
1c00ae88:	001501b0 	move	$r16,$r13
1c00ae8c:	6ff4a0f0 	bgeu	$r7,$r16,-2912(0x3f4a0) # 1c00a32c <minmax_sequence_TestOneType_u16+0x1ac>
1c00ae90:	53ffe7ff 	b	-28(0xfffffe4) # 1c00ae74 <minmax_sequence_TestOneType_u16+0xcf4>
1c00ae94:	2a404190 	ld.hu	$r16,$r12,16(0x10)
1c00ae98:	001500cd 	move	$r13,$r6
1c00ae9c:	6ff48a0d 	bgeu	$r16,$r13,-2936(0x3f488) # 1c00a324 <minmax_sequence_TestOneType_u16+0x1a4>
1c00aea0:	53ffe7ff 	b	-28(0xfffffe4) # 1c00ae84 <minmax_sequence_TestOneType_u16+0xd04>
1c00aea4:	2a40398d 	ld.hu	$r13,$r12,14(0xe)
1c00aea8:	00150226 	move	$r6,$r17
1c00aeac:	6ff471a6 	bgeu	$r13,$r6,-2960(0x3f470) # 1c00a31c <minmax_sequence_TestOneType_u16+0x19c>
1c00aeb0:	53ffe7ff 	b	-28(0xfffffe4) # 1c00ae94 <minmax_sequence_TestOneType_u16+0xd14>
1c00aeb4:	2a403186 	ld.hu	$r6,$r12,12(0xc)
1c00aeb8:	00150031 	move	$r17,$r1
1c00aebc:	6ff458d1 	bgeu	$r6,$r17,-2984(0x3f458) # 1c00a314 <minmax_sequence_TestOneType_u16+0x194>
1c00aec0:	53ffe7ff 	b	-28(0xfffffe4) # 1c00aea4 <minmax_sequence_TestOneType_u16+0xd24>
1c00aec4:	2a402991 	ld.hu	$r17,$r12,10(0xa)
1c00aec8:	001500a1 	move	$r1,$r5
1c00aecc:	6ff44221 	bgeu	$r17,$r1,-3008(0x3f440) # 1c00a30c <minmax_sequence_TestOneType_u16+0x18c>
1c00aed0:	53ffe7ff 	b	-28(0xfffffe4) # 1c00aeb4 <minmax_sequence_TestOneType_u16+0xd34>
1c00aed4:	2a402181 	ld.hu	$r1,$r12,8(0x8)
1c00aed8:	001502e5 	move	$r5,$r23
1c00aedc:	6ff42825 	bgeu	$r1,$r5,-3032(0x3f428) # 1c00a304 <minmax_sequence_TestOneType_u16+0x184>
1c00aee0:	53ffe7ff 	b	-28(0xfffffe4) # 1c00aec4 <minmax_sequence_TestOneType_u16+0xd44>
1c00aee4:	2a401985 	ld.hu	$r5,$r12,6(0x6)
1c00aee8:	00150097 	move	$r23,$r4
1c00aeec:	6ff410b7 	bgeu	$r5,$r23,-3056(0x3f410) # 1c00a2fc <minmax_sequence_TestOneType_u16+0x17c>
1c00aef0:	53ffe7ff 	b	-28(0xfffffe4) # 1c00aed4 <minmax_sequence_TestOneType_u16+0xd54>
1c00aef4:	2a401197 	ld.hu	$r23,$r12,4(0x4)
1c00aef8:	00150244 	move	$r4,$r18
1c00aefc:	6ff3fae4 	bgeu	$r23,$r4,-3080(0x3f3f8) # 1c00a2f4 <minmax_sequence_TestOneType_u16+0x174>
1c00af00:	53ffe7ff 	b	-28(0xfffffe4) # 1c00aee4 <minmax_sequence_TestOneType_u16+0xd64>
1c00af04:	2a400984 	ld.hu	$r4,$r12,2(0x2)
1c00af08:	001503f2 	move	$r18,$r31
1c00af0c:	6ff3e092 	bgeu	$r4,$r18,-3104(0x3f3e0) # 1c00a2ec <minmax_sequence_TestOneType_u16+0x16c>
1c00af10:	53ffe7ff 	b	-28(0xfffffe4) # 1c00aef4 <minmax_sequence_TestOneType_u16+0xd74>
1c00af14:	2a400972 	ld.hu	$r18,$r11,2(0x2)
1c00af18:	001501ff 	move	$r31,$r15
1c00af1c:	0280096c 	addi.w	$r12,$r11,2(0x2)
1c00af20:	6ff3c65f 	bgeu	$r18,$r31,-3132(0x3f3c4) # 1c00a2e4 <minmax_sequence_TestOneType_u16+0x164>
1c00af24:	53ffe3ff 	b	-32(0xfffffe0) # 1c00af04 <minmax_sequence_TestOneType_u16+0xd84>
1c00af28:	00150296 	move	$r22,$r20
1c00af2c:	028068d8 	addi.w	$r24,$r6,26(0x1a)
1c00af30:	0299407a 	addi.w	$r26,$r3,1616(0x650)
1c00af34:	001502d9 	move	$r25,$r22
1c00af38:	5ff2f71a 	bne	$r24,$r26,-3340(0x3f2f4) # 1c00a22c <minmax_sequence_TestOneType_u16+0xac>
1c00af3c:	53f377ff 	b	-3212(0xffff374) # 1c00a2b0 <minmax_sequence_TestOneType_u16+0x130>
1c00af40:	2a4060d6 	ld.hu	$r22,$r6,24(0x18)
1c00af44:	00150274 	move	$r20,$r19
1c00af48:	6ff35a96 	bgeu	$r20,$r22,-3240(0x3f358) # 1c00a2a0 <minmax_sequence_TestOneType_u16+0x120>
1c00af4c:	53ffdfff 	b	-36(0xfffffdc) # 1c00af28 <minmax_sequence_TestOneType_u16+0xda8>
1c00af50:	2a4058d4 	ld.hu	$r20,$r6,22(0x16)
1c00af54:	00150253 	move	$r19,$r18
1c00af58:	6ff34274 	bgeu	$r19,$r20,-3264(0x3f340) # 1c00a298 <minmax_sequence_TestOneType_u16+0x118>
1c00af5c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00af40 <minmax_sequence_TestOneType_u16+0xdc0>
1c00af60:	2a4050d3 	ld.hu	$r19,$r6,20(0x14)
1c00af64:	001501f2 	move	$r18,$r15
1c00af68:	6ff32a53 	bgeu	$r18,$r19,-3288(0x3f328) # 1c00a290 <minmax_sequence_TestOneType_u16+0x110>
1c00af6c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00af50 <minmax_sequence_TestOneType_u16+0xdd0>
1c00af70:	2a4048d2 	ld.hu	$r18,$r6,18(0x12)
1c00af74:	001501cf 	move	$r15,$r14
1c00af78:	6ff311f2 	bgeu	$r15,$r18,-3312(0x3f310) # 1c00a288 <minmax_sequence_TestOneType_u16+0x108>
1c00af7c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00af60 <minmax_sequence_TestOneType_u16+0xde0>
1c00af80:	2a4040cf 	ld.hu	$r15,$r6,16(0x10)
1c00af84:	0015016e 	move	$r14,$r11
1c00af88:	6ff2f9cf 	bgeu	$r14,$r15,-3336(0x3f2f8) # 1c00a280 <minmax_sequence_TestOneType_u16+0x100>
1c00af8c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00af70 <minmax_sequence_TestOneType_u16+0xdf0>
1c00af90:	2a4038ce 	ld.hu	$r14,$r6,14(0xe)
1c00af94:	0015014b 	move	$r11,$r10
1c00af98:	6ff2e16e 	bgeu	$r11,$r14,-3360(0x3f2e0) # 1c00a278 <minmax_sequence_TestOneType_u16+0xf8>
1c00af9c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00af80 <minmax_sequence_TestOneType_u16+0xe00>
1c00afa0:	2a4030cb 	ld.hu	$r11,$r6,12(0xc)
1c00afa4:	0015012a 	move	$r10,$r9
1c00afa8:	6ff2c94b 	bgeu	$r10,$r11,-3384(0x3f2c8) # 1c00a270 <minmax_sequence_TestOneType_u16+0xf0>
1c00afac:	53ffe7ff 	b	-28(0xfffffe4) # 1c00af90 <minmax_sequence_TestOneType_u16+0xe10>
1c00afb0:	2a4028ca 	ld.hu	$r10,$r6,10(0xa)
1c00afb4:	00150109 	move	$r9,$r8
1c00afb8:	6ff2b12a 	bgeu	$r9,$r10,-3408(0x3f2b0) # 1c00a268 <minmax_sequence_TestOneType_u16+0xe8>
1c00afbc:	53ffe7ff 	b	-28(0xfffffe4) # 1c00afa0 <minmax_sequence_TestOneType_u16+0xe20>
1c00afc0:	2a4020c9 	ld.hu	$r9,$r6,8(0x8)
1c00afc4:	001500e8 	move	$r8,$r7
1c00afc8:	6ff29909 	bgeu	$r8,$r9,-3432(0x3f298) # 1c00a260 <minmax_sequence_TestOneType_u16+0xe0>
1c00afcc:	53ffe7ff 	b	-28(0xfffffe4) # 1c00afb0 <minmax_sequence_TestOneType_u16+0xe30>
1c00afd0:	2a4018c8 	ld.hu	$r8,$r6,6(0x6)
1c00afd4:	001501a7 	move	$r7,$r13
1c00afd8:	6ff280e8 	bgeu	$r7,$r8,-3456(0x3f280) # 1c00a258 <minmax_sequence_TestOneType_u16+0xd8>
1c00afdc:	53ffe7ff 	b	-28(0xfffffe4) # 1c00afc0 <minmax_sequence_TestOneType_u16+0xe40>
1c00afe0:	2a4010c7 	ld.hu	$r7,$r6,4(0x4)
1c00afe4:	0015020d 	move	$r13,$r16
1c00afe8:	6ff269a7 	bgeu	$r13,$r7,-3480(0x3f268) # 1c00a250 <minmax_sequence_TestOneType_u16+0xd0>
1c00afec:	53ffe7ff 	b	-28(0xfffffe4) # 1c00afd0 <minmax_sequence_TestOneType_u16+0xe50>
1c00aff0:	2a4008cd 	ld.hu	$r13,$r6,2(0x2)
1c00aff4:	00150230 	move	$r16,$r17
1c00aff8:	6ff2520d 	bgeu	$r16,$r13,-3504(0x3f250) # 1c00a248 <minmax_sequence_TestOneType_u16+0xc8>
1c00affc:	53ffe7ff 	b	-28(0xfffffe4) # 1c00afe0 <minmax_sequence_TestOneType_u16+0xe60>
1c00b000:	2a400b10 	ld.hu	$r16,$r24,2(0x2)
1c00b004:	00150331 	move	$r17,$r25
1c00b008:	02800b06 	addi.w	$r6,$r24,2(0x2)
1c00b00c:	6ff23630 	bgeu	$r17,$r16,-3532(0x3f234) # 1c00a240 <minmax_sequence_TestOneType_u16+0xc0>
1c00b010:	53ffe3ff 	b	-32(0xfffffe0) # 1c00aff0 <minmax_sequence_TestOneType_u16+0xe70>
1c00b014:	03400000 	andi	$r0,$r0,0x0
1c00b018:	03400000 	andi	$r0,$r0,0x0
1c00b01c:	03400000 	andi	$r0,$r0,0x0

1c00b020 <TestOneType_32>:
TestOneType_32():
1c00b020:	1c000eac 	pcaddu12i	$r12,117(0x75)
1c00b024:	0296418c 	addi.w	$r12,$r12,1424(0x590)
1c00b028:	28800184 	ld.w	$r4,$r12,0
1c00b02c:	02a04063 	addi.w	$r3,$r3,-2032(0x810)
1c00b030:	299fa076 	st.w	$r22,$r3,2024(0x7e8)
1c00b034:	299f9077 	st.w	$r23,$r3,2020(0x7e4)
1c00b038:	299f8078 	st.w	$r24,$r3,2016(0x7e0)
1c00b03c:	299fb061 	st.w	$r1,$r3,2028(0x7ec)
1c00b040:	299f7079 	st.w	$r25,$r3,2012(0x7dc)
1c00b044:	299f607a 	st.w	$r26,$r3,2008(0x7d8)
1c00b048:	299f507b 	st.w	$r27,$r3,2004(0x7d4)
1c00b04c:	299f407c 	st.w	$r28,$r3,2000(0x7d0)
1c00b050:	299f307d 	st.w	$r29,$r3,1996(0x7cc)
1c00b054:	299f207e 	st.w	$r30,$r3,1992(0x7c8)
1c00b058:	299f107f 	st.w	$r31,$r3,1988(0x7c4)
1c00b05c:	0281ec84 	addi.w	$r4,$r4,123(0x7b)
1c00b060:	02acc063 	addi.w	$r3,$r3,-1232(0xb30)
1c00b064:	54278c00 	bl	10124(0x278c) # 1c00d7f0 <srand>
1c00b068:	15fffff7 	lu12i.w	$r23,-1(0xfffff)
1c00b06c:	03b20006 	ori	$r6,$r0,0xc80
1c00b070:	0280406d 	addi.w	$r13,$r3,16(0x10)
1c00b074:	038e02e5 	ori	$r5,$r23,0x380
1c00b078:	001034c7 	add.w	$r7,$r6,$r13
1c00b07c:	001014f6 	add.w	$r22,$r7,$r5
1c00b080:	001502d8 	move	$r24,$r22
1c00b084:	54272c00 	bl	10028(0x272c) # 1c00d7b0 <rand>
1c00b088:	298002c4 	st.w	$r4,$r22,0
1c00b08c:	54272400 	bl	10020(0x2724) # 1c00d7b0 <rand>
1c00b090:	298012c4 	st.w	$r4,$r22,4(0x4)
1c00b094:	54271c00 	bl	10012(0x271c) # 1c00d7b0 <rand>
1c00b098:	298022c4 	st.w	$r4,$r22,8(0x8)
1c00b09c:	54271400 	bl	10004(0x2714) # 1c00d7b0 <rand>
1c00b0a0:	028042dc 	addi.w	$r28,$r22,16(0x10)
1c00b0a4:	29bff384 	st.w	$r4,$r28,-4(0xffc)
1c00b0a8:	54270800 	bl	9992(0x2708) # 1c00d7b0 <rand>
1c00b0ac:	028052db 	addi.w	$r27,$r22,20(0x14)
1c00b0b0:	29bff364 	st.w	$r4,$r27,-4(0xffc)
1c00b0b4:	5426fc00 	bl	9980(0x26fc) # 1c00d7b0 <rand>
1c00b0b8:	028062da 	addi.w	$r26,$r22,24(0x18)
1c00b0bc:	29bff344 	st.w	$r4,$r26,-4(0xffc)
1c00b0c0:	5426f000 	bl	9968(0x26f0) # 1c00d7b0 <rand>
1c00b0c4:	028072d9 	addi.w	$r25,$r22,28(0x1c)
1c00b0c8:	29bff324 	st.w	$r4,$r25,-4(0xffc)
1c00b0cc:	5426e400 	bl	9956(0x26e4) # 1c00d7b0 <rand>
1c00b0d0:	028082d6 	addi.w	$r22,$r22,32(0x20)
1c00b0d4:	03b20008 	ori	$r8,$r0,0xc80
1c00b0d8:	02804069 	addi.w	$r9,$r3,16(0x10)
1c00b0dc:	29bff2c4 	st.w	$r4,$r22,-4(0xffc)
1c00b0e0:	0010250a 	add.w	$r10,$r8,$r9
1c00b0e4:	5fffa2ca 	bne	$r22,$r10,-96(0x3ffa0) # 1c00b084 <TestOneType_32+0x64>
1c00b0e8:	03b2000e 	ori	$r14,$r0,0xc80
1c00b0ec:	0280406f 	addi.w	$r15,$r3,16(0x10)
1c00b0f0:	0280130c 	addi.w	$r12,$r24,4(0x4)
1c00b0f4:	00103dcb 	add.w	$r11,$r14,$r15
1c00b0f8:	00113171 	sub.w	$r17,$r11,$r12
1c00b0fc:	02bff233 	addi.w	$r19,$r17,-4(0xffc)
1c00b100:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c00b104:	00448a77 	srli.w	$r23,$r19,0x2
1c00b108:	15ffffe1 	lu12i.w	$r1,-1(0xfffff)
1c00b10c:	03b20014 	ori	$r20,$r0,0xc80
1c00b110:	0280407e 	addi.w	$r30,$r3,16(0x10)
1c00b114:	028006e5 	addi.w	$r5,$r23,1(0x1)
1c00b118:	038e0032 	ori	$r18,$r1,0x380
1c00b11c:	00107a9f 	add.w	$r31,$r20,$r30
1c00b120:	03401ca6 	andi	$r6,$r5,0x7
1c00b124:	001503b0 	move	$r16,$r29
1c00b128:	00104be4 	add.w	$r4,$r31,$r18
1c00b12c:	5800a0c0 	beq	$r6,$r0,160(0xa0) # 1c00b1cc <TestOneType_32+0x1ac>
1c00b130:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00b134:	58007ccd 	beq	$r6,$r13,124(0x7c) # 1c00b1b0 <TestOneType_32+0x190>
1c00b138:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00b13c:	580068c7 	beq	$r6,$r7,104(0x68) # 1c00b1a4 <TestOneType_32+0x184>
1c00b140:	02800c18 	addi.w	$r24,$r0,3(0x3)
1c00b144:	580054d8 	beq	$r6,$r24,84(0x54) # 1c00b198 <TestOneType_32+0x178>
1c00b148:	0280101c 	addi.w	$r28,$r0,4(0x4)
1c00b14c:	58003cdc 	beq	$r6,$r28,60(0x3c) # 1c00b188 <TestOneType_32+0x168>
1c00b150:	0280141b 	addi.w	$r27,$r0,5(0x5)
1c00b154:	580028db 	beq	$r6,$r27,40(0x28) # 1c00b17c <TestOneType_32+0x15c>
1c00b158:	0280181a 	addi.w	$r26,$r0,6(0x6)
1c00b15c:	580014da 	beq	$r6,$r26,20(0x14) # 1c00b170 <TestOneType_32+0x150>
1c00b160:	28800199 	ld.w	$r25,$r12,0
1c00b164:	64000b3d 	bge	$r25,$r29,8(0x8) # 1c00b16c <TestOneType_32+0x14c>
1c00b168:	00150330 	move	$r16,$r25
1c00b16c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b170:	28800196 	ld.w	$r22,$r12,0
1c00b174:	600e3ad0 	blt	$r22,$r16,3640(0xe38) # 1c00bfac <TestOneType_32+0xf8c>
1c00b178:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b17c:	28800188 	ld.w	$r8,$r12,0
1c00b180:	600e1d10 	blt	$r8,$r16,3612(0xe1c) # 1c00bf9c <TestOneType_32+0xf7c>
1c00b184:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b188:	28800189 	ld.w	$r9,$r12,0
1c00b18c:	64000930 	bge	$r9,$r16,8(0x8) # 1c00b194 <TestOneType_32+0x174>
1c00b190:	00150130 	move	$r16,$r9
1c00b194:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b198:	2880018a 	ld.w	$r10,$r12,0
1c00b19c:	600de950 	blt	$r10,$r16,3560(0xde8) # 1c00bf84 <TestOneType_32+0xf64>
1c00b1a0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b1a4:	28800181 	ld.w	$r1,$r12,0
1c00b1a8:	600dcc30 	blt	$r1,$r16,3532(0xdcc) # 1c00bf74 <TestOneType_32+0xf54>
1c00b1ac:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b1b0:	2880018e 	ld.w	$r14,$r12,0
1c00b1b4:	600c69d0 	blt	$r14,$r16,3176(0xc68) # 1c00be1c <TestOneType_32+0xdfc>
1c00b1b8:	03b2000b 	ori	$r11,$r0,0xc80
1c00b1bc:	0280406f 	addi.w	$r15,$r3,16(0x10)
1c00b1c0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b1c4:	00103d71 	add.w	$r17,$r11,$r15
1c00b1c8:	58005d91 	beq	$r12,$r17,92(0x5c) # 1c00b224 <TestOneType_32+0x204>
1c00b1cc:	28800192 	ld.w	$r18,$r12,0
1c00b1d0:	600ce650 	blt	$r18,$r16,3300(0xce4) # 1c00beb4 <TestOneType_32+0xe94>
1c00b1d4:	28801193 	ld.w	$r19,$r12,4(0x4)
1c00b1d8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b1dc:	600cca70 	blt	$r19,$r16,3272(0xcc8) # 1c00bea4 <TestOneType_32+0xe84>
1c00b1e0:	28801194 	ld.w	$r20,$r12,4(0x4)
1c00b1e4:	600cb290 	blt	$r20,$r16,3248(0xcb0) # 1c00be94 <TestOneType_32+0xe74>
1c00b1e8:	2880219e 	ld.w	$r30,$r12,8(0x8)
1c00b1ec:	600c9bd0 	blt	$r30,$r16,3224(0xc98) # 1c00be84 <TestOneType_32+0xe64>
1c00b1f0:	2880319f 	ld.w	$r31,$r12,12(0xc)
1c00b1f4:	600c83f0 	blt	$r31,$r16,3200(0xc80) # 1c00be74 <TestOneType_32+0xe54>
1c00b1f8:	28804197 	ld.w	$r23,$r12,16(0x10)
1c00b1fc:	600c6af0 	blt	$r23,$r16,3176(0xc68) # 1c00be64 <TestOneType_32+0xe44>
1c00b200:	28805185 	ld.w	$r5,$r12,20(0x14)
1c00b204:	600c50b0 	blt	$r5,$r16,3152(0xc50) # 1c00be54 <TestOneType_32+0xe34>
1c00b208:	28806186 	ld.w	$r6,$r12,24(0x18)
1c00b20c:	600c2cd0 	blt	$r6,$r16,3116(0xc2c) # 1c00be38 <TestOneType_32+0xe18>
1c00b210:	03b2000d 	ori	$r13,$r0,0xc80
1c00b214:	02804067 	addi.w	$r7,$r3,16(0x10)
1c00b218:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c00b21c:	00101db8 	add.w	$r24,$r13,$r7
1c00b220:	5fffad98 	bne	$r12,$r24,-84(0x3ffac) # 1c00b1cc <TestOneType_32+0x1ac>
1c00b224:	03b2001c 	ori	$r28,$r0,0xc80
1c00b228:	0280407b 	addi.w	$r27,$r3,16(0x10)
1c00b22c:	0280108c 	addi.w	$r12,$r4,4(0x4)
1c00b230:	00106f9a 	add.w	$r26,$r28,$r27
1c00b234:	00113359 	sub.w	$r25,$r26,$r12
1c00b238:	02bff329 	addi.w	$r9,$r25,-4(0xffc)
1c00b23c:	0044892f 	srli.w	$r15,$r9,0x2
1c00b240:	1c000eb6 	pcaddu12i	$r22,117(0x75)
1c00b244:	028e42d6 	addi.w	$r22,$r22,912(0x390)
1c00b248:	15ffffe4 	lu12i.w	$r4,-1(0xfffff)
1c00b24c:	03b2000a 	ori	$r10,$r0,0xc80
1c00b250:	02804061 	addi.w	$r1,$r3,16(0x10)
1c00b254:	028005f2 	addi.w	$r18,$r15,1(0x1)
1c00b258:	038e0088 	ori	$r8,$r4,0x380
1c00b25c:	0010054e 	add.w	$r14,$r10,$r1
1c00b260:	298002d0 	st.w	$r16,$r22,0
1c00b264:	03401e53 	andi	$r19,$r18,0x7
1c00b268:	001503b1 	move	$r17,$r29
1c00b26c:	001021cb 	add.w	$r11,$r14,$r8
1c00b270:	5800a260 	beq	$r19,$r0,160(0xa0) # 1c00b310 <TestOneType_32+0x2f0>
1c00b274:	02800414 	addi.w	$r20,$r0,1(0x1)
1c00b278:	58007e74 	beq	$r19,$r20,124(0x7c) # 1c00b2f4 <TestOneType_32+0x2d4>
1c00b27c:	0280081e 	addi.w	$r30,$r0,2(0x2)
1c00b280:	58006a7e 	beq	$r19,$r30,104(0x68) # 1c00b2e8 <TestOneType_32+0x2c8>
1c00b284:	02800c1f 	addi.w	$r31,$r0,3(0x3)
1c00b288:	5800567f 	beq	$r19,$r31,84(0x54) # 1c00b2dc <TestOneType_32+0x2bc>
1c00b28c:	02801017 	addi.w	$r23,$r0,4(0x4)
1c00b290:	58003e77 	beq	$r19,$r23,60(0x3c) # 1c00b2cc <TestOneType_32+0x2ac>
1c00b294:	02801405 	addi.w	$r5,$r0,5(0x5)
1c00b298:	58002a65 	beq	$r19,$r5,40(0x28) # 1c00b2c0 <TestOneType_32+0x2a0>
1c00b29c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00b2a0:	58001666 	beq	$r19,$r6,20(0x14) # 1c00b2b4 <TestOneType_32+0x294>
1c00b2a4:	28800190 	ld.w	$r16,$r12,0
1c00b2a8:	64000bb0 	bge	$r29,$r16,8(0x8) # 1c00b2b0 <TestOneType_32+0x290>
1c00b2ac:	00150211 	move	$r17,$r16
1c00b2b0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b2b4:	2880018d 	ld.w	$r13,$r12,0
1c00b2b8:	600cee2d 	blt	$r17,$r13,3308(0xcec) # 1c00bfa4 <TestOneType_32+0xf84>
1c00b2bc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b2c0:	28800187 	ld.w	$r7,$r12,0
1c00b2c4:	600cd227 	blt	$r17,$r7,3280(0xcd0) # 1c00bf94 <TestOneType_32+0xf74>
1c00b2c8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b2cc:	28800198 	ld.w	$r24,$r12,0
1c00b2d0:	64000a38 	bge	$r17,$r24,8(0x8) # 1c00b2d8 <TestOneType_32+0x2b8>
1c00b2d4:	00150311 	move	$r17,$r24
1c00b2d8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b2dc:	28800184 	ld.w	$r4,$r12,0
1c00b2e0:	600cae24 	blt	$r17,$r4,3244(0xcac) # 1c00bf8c <TestOneType_32+0xf6c>
1c00b2e4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b2e8:	2880019c 	ld.w	$r28,$r12,0
1c00b2ec:	600c923c 	blt	$r17,$r28,3216(0xc90) # 1c00bf7c <TestOneType_32+0xf5c>
1c00b2f0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b2f4:	2880019b 	ld.w	$r27,$r12,0
1c00b2f8:	600bd23b 	blt	$r17,$r27,3024(0xbd0) # 1c00bec8 <TestOneType_32+0xea8>
1c00b2fc:	03b2001a 	ori	$r26,$r0,0xc80
1c00b300:	02804079 	addi.w	$r25,$r3,16(0x10)
1c00b304:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b308:	00106748 	add.w	$r8,$r26,$r25
1c00b30c:	58005d88 	beq	$r12,$r8,92(0x5c) # 1c00b368 <TestOneType_32+0x348>
1c00b310:	28800189 	ld.w	$r9,$r12,0
1c00b314:	600c4e29 	blt	$r17,$r9,3148(0xc4c) # 1c00bf60 <TestOneType_32+0xf40>
1c00b318:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c00b31c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b320:	600c322a 	blt	$r17,$r10,3120(0xc30) # 1c00bf50 <TestOneType_32+0xf30>
1c00b324:	28801181 	ld.w	$r1,$r12,4(0x4)
1c00b328:	600c1a21 	blt	$r17,$r1,3096(0xc18) # 1c00bf40 <TestOneType_32+0xf20>
1c00b32c:	2880218e 	ld.w	$r14,$r12,8(0x8)
1c00b330:	600c022e 	blt	$r17,$r14,3072(0xc00) # 1c00bf30 <TestOneType_32+0xf10>
1c00b334:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c00b338:	600bea2f 	blt	$r17,$r15,3048(0xbe8) # 1c00bf20 <TestOneType_32+0xf00>
1c00b33c:	28804192 	ld.w	$r18,$r12,16(0x10)
1c00b340:	600bd232 	blt	$r17,$r18,3024(0xbd0) # 1c00bf10 <TestOneType_32+0xef0>
1c00b344:	28805193 	ld.w	$r19,$r12,20(0x14)
1c00b348:	600bba33 	blt	$r17,$r19,3000(0xbb8) # 1c00bf00 <TestOneType_32+0xee0>
1c00b34c:	28806194 	ld.w	$r20,$r12,24(0x18)
1c00b350:	600b9634 	blt	$r17,$r20,2964(0xb94) # 1c00bee4 <TestOneType_32+0xec4>
1c00b354:	03b2001e 	ori	$r30,$r0,0xc80
1c00b358:	0280407f 	addi.w	$r31,$r3,16(0x10)
1c00b35c:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c00b360:	00107fd7 	add.w	$r23,$r30,$r31
1c00b364:	5fffad97 	bne	$r12,$r23,-84(0x3ffac) # 1c00b310 <TestOneType_32+0x2f0>
1c00b368:	0280117b 	addi.w	$r27,$r11,4(0x4)
1c00b36c:	2880036b 	ld.w	$r11,$r27,0
1c00b370:	1c000eb9 	pcaddu12i	$r25,117(0x75)
1c00b374:	02897339 	addi.w	$r25,$r25,604(0x25c)
1c00b378:	29800331 	st.w	$r17,$r25,0
1c00b37c:	001503b0 	move	$r16,$r29
1c00b380:	00150011 	move	$r17,$r0
1c00b384:	028c8005 	addi.w	$r5,$r0,800(0x320)
1c00b388:	64000d7d 	bge	$r11,$r29,12(0xc) # 1c00b394 <TestOneType_32+0x374>
1c00b38c:	02800411 	addi.w	$r17,$r0,1(0x1)
1c00b390:	00150170 	move	$r16,$r11
1c00b394:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00b398:	02801378 	addi.w	$r24,$r27,4(0x4)
1c00b39c:	28800306 	ld.w	$r6,$r24,0
1c00b3a0:	64000cd0 	bge	$r6,$r16,12(0xc) # 1c00b3ac <TestOneType_32+0x38c>
1c00b3a4:	001501b1 	move	$r17,$r13
1c00b3a8:	001500d0 	move	$r16,$r6
1c00b3ac:	28801307 	ld.w	$r7,$r24,4(0x4)
1c00b3b0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00b3b4:	02801318 	addi.w	$r24,$r24,4(0x4)
1c00b3b8:	64000cf0 	bge	$r7,$r16,12(0xc) # 1c00b3c4 <TestOneType_32+0x3a4>
1c00b3bc:	001501b1 	move	$r17,$r13
1c00b3c0:	001500f0 	move	$r16,$r7
1c00b3c4:	28801304 	ld.w	$r4,$r24,4(0x4)
1c00b3c8:	028005bc 	addi.w	$r28,$r13,1(0x1)
1c00b3cc:	64000c90 	bge	$r4,$r16,12(0xc) # 1c00b3d8 <TestOneType_32+0x3b8>
1c00b3d0:	00150391 	move	$r17,$r28
1c00b3d4:	00150090 	move	$r16,$r4
1c00b3d8:	2880231a 	ld.w	$r26,$r24,8(0x8)
1c00b3dc:	028009a8 	addi.w	$r8,$r13,2(0x2)
1c00b3e0:	64000f50 	bge	$r26,$r16,12(0xc) # 1c00b3ec <TestOneType_32+0x3cc>
1c00b3e4:	00150111 	move	$r17,$r8
1c00b3e8:	00150350 	move	$r16,$r26
1c00b3ec:	28803309 	ld.w	$r9,$r24,12(0xc)
1c00b3f0:	02800daa 	addi.w	$r10,$r13,3(0x3)
1c00b3f4:	64000d30 	bge	$r9,$r16,12(0xc) # 1c00b400 <TestOneType_32+0x3e0>
1c00b3f8:	00150151 	move	$r17,$r10
1c00b3fc:	00150130 	move	$r16,$r9
1c00b400:	28804301 	ld.w	$r1,$r24,16(0x10)
1c00b404:	028011ae 	addi.w	$r14,$r13,4(0x4)
1c00b408:	64000c30 	bge	$r1,$r16,12(0xc) # 1c00b414 <TestOneType_32+0x3f4>
1c00b40c:	001501d1 	move	$r17,$r14
1c00b410:	00150030 	move	$r16,$r1
1c00b414:	2880530f 	ld.w	$r15,$r24,20(0x14)
1c00b418:	028015b2 	addi.w	$r18,$r13,5(0x5)
1c00b41c:	64000df0 	bge	$r15,$r16,12(0xc) # 1c00b428 <TestOneType_32+0x408>
1c00b420:	00150251 	move	$r17,$r18
1c00b424:	001501f0 	move	$r16,$r15
1c00b428:	28806313 	ld.w	$r19,$r24,24(0x18)
1c00b42c:	028019b4 	addi.w	$r20,$r13,6(0x6)
1c00b430:	64000e70 	bge	$r19,$r16,12(0xc) # 1c00b43c <TestOneType_32+0x41c>
1c00b434:	00150291 	move	$r17,$r20
1c00b438:	00150270 	move	$r16,$r19
1c00b43c:	2880730c 	ld.w	$r12,$r24,28(0x1c)
1c00b440:	02801dbe 	addi.w	$r30,$r13,7(0x7)
1c00b444:	64000d90 	bge	$r12,$r16,12(0xc) # 1c00b450 <TestOneType_32+0x430>
1c00b448:	001503d1 	move	$r17,$r30
1c00b44c:	00150190 	move	$r16,$r12
1c00b450:	2880831f 	ld.w	$r31,$r24,32(0x20)
1c00b454:	028021b7 	addi.w	$r23,$r13,8(0x8)
1c00b458:	64000ff0 	bge	$r31,$r16,12(0xc) # 1c00b464 <TestOneType_32+0x444>
1c00b45c:	001502f1 	move	$r17,$r23
1c00b460:	001503f0 	move	$r16,$r31
1c00b464:	2880930b 	ld.w	$r11,$r24,36(0x24)
1c00b468:	028025a6 	addi.w	$r6,$r13,9(0x9)
1c00b46c:	64000d70 	bge	$r11,$r16,12(0xc) # 1c00b478 <TestOneType_32+0x458>
1c00b470:	001500d1 	move	$r17,$r6
1c00b474:	00150170 	move	$r16,$r11
1c00b478:	2880a307 	ld.w	$r7,$r24,40(0x28)
1c00b47c:	028029a4 	addi.w	$r4,$r13,10(0xa)
1c00b480:	64000cf0 	bge	$r7,$r16,12(0xc) # 1c00b48c <TestOneType_32+0x46c>
1c00b484:	00150091 	move	$r17,$r4
1c00b488:	001500f0 	move	$r16,$r7
1c00b48c:	2880b31c 	ld.w	$r28,$r24,44(0x2c)
1c00b490:	02802dba 	addi.w	$r26,$r13,11(0xb)
1c00b494:	64000f90 	bge	$r28,$r16,12(0xc) # 1c00b4a0 <TestOneType_32+0x480>
1c00b498:	00150351 	move	$r17,$r26
1c00b49c:	00150390 	move	$r16,$r28
1c00b4a0:	2880c308 	ld.w	$r8,$r24,48(0x30)
1c00b4a4:	028031a9 	addi.w	$r9,$r13,12(0xc)
1c00b4a8:	64000d10 	bge	$r8,$r16,12(0xc) # 1c00b4b4 <TestOneType_32+0x494>
1c00b4ac:	00150131 	move	$r17,$r9
1c00b4b0:	00150110 	move	$r16,$r8
1c00b4b4:	028035ad 	addi.w	$r13,$r13,13(0xd)
1c00b4b8:	0280d318 	addi.w	$r24,$r24,52(0x34)
1c00b4bc:	5ffee1a5 	bne	$r13,$r5,-288(0x3fee0) # 1c00b39c <TestOneType_32+0x37c>
1c00b4c0:	28800365 	ld.w	$r5,$r27,0
1c00b4c4:	1c000eba 	pcaddu12i	$r26,117(0x75)
1c00b4c8:	0284135a 	addi.w	$r26,$r26,260(0x104)
1c00b4cc:	29800351 	st.w	$r17,$r26,0
1c00b4d0:	001503b0 	move	$r16,$r29
1c00b4d4:	00150012 	move	$r18,$r0
1c00b4d8:	028c800a 	addi.w	$r10,$r0,800(0x320)
1c00b4dc:	64000fa5 	bge	$r29,$r5,12(0xc) # 1c00b4e8 <TestOneType_32+0x4c8>
1c00b4e0:	02800412 	addi.w	$r18,$r0,1(0x1)
1c00b4e4:	001500b0 	move	$r16,$r5
1c00b4e8:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c00b4ec:	0280136c 	addi.w	$r12,$r27,4(0x4)
1c00b4f0:	28800181 	ld.w	$r1,$r12,0
1c00b4f4:	64000e01 	bge	$r16,$r1,12(0xc) # 1c00b500 <TestOneType_32+0x4e0>
1c00b4f8:	001501f2 	move	$r18,$r15
1c00b4fc:	00150030 	move	$r16,$r1
1c00b500:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c00b504:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c00b508:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b50c:	64000e0e 	bge	$r16,$r14,12(0xc) # 1c00b518 <TestOneType_32+0x4f8>
1c00b510:	001501f2 	move	$r18,$r15
1c00b514:	001501d0 	move	$r16,$r14
1c00b518:	28801193 	ld.w	$r19,$r12,4(0x4)
1c00b51c:	028005f4 	addi.w	$r20,$r15,1(0x1)
1c00b520:	64000e13 	bge	$r16,$r19,12(0xc) # 1c00b52c <TestOneType_32+0x50c>
1c00b524:	00150292 	move	$r18,$r20
1c00b528:	00150270 	move	$r16,$r19
1c00b52c:	2880219e 	ld.w	$r30,$r12,8(0x8)
1c00b530:	028009ff 	addi.w	$r31,$r15,2(0x2)
1c00b534:	64000e1e 	bge	$r16,$r30,12(0xc) # 1c00b540 <TestOneType_32+0x520>
1c00b538:	001503f2 	move	$r18,$r31
1c00b53c:	001503d0 	move	$r16,$r30
1c00b540:	28803197 	ld.w	$r23,$r12,12(0xc)
1c00b544:	02800deb 	addi.w	$r11,$r15,3(0x3)
1c00b548:	64000e17 	bge	$r16,$r23,12(0xc) # 1c00b554 <TestOneType_32+0x534>
1c00b54c:	00150172 	move	$r18,$r11
1c00b550:	001502f0 	move	$r16,$r23
1c00b554:	28804186 	ld.w	$r6,$r12,16(0x10)
1c00b558:	028011e7 	addi.w	$r7,$r15,4(0x4)
1c00b55c:	64000e06 	bge	$r16,$r6,12(0xc) # 1c00b568 <TestOneType_32+0x548>
1c00b560:	001500f2 	move	$r18,$r7
1c00b564:	001500d0 	move	$r16,$r6
1c00b568:	28805184 	ld.w	$r4,$r12,20(0x14)
1c00b56c:	028015fc 	addi.w	$r28,$r15,5(0x5)
1c00b570:	64000e04 	bge	$r16,$r4,12(0xc) # 1c00b57c <TestOneType_32+0x55c>
1c00b574:	00150392 	move	$r18,$r28
1c00b578:	00150090 	move	$r16,$r4
1c00b57c:	28806188 	ld.w	$r8,$r12,24(0x18)
1c00b580:	028019e9 	addi.w	$r9,$r15,6(0x6)
1c00b584:	64000e08 	bge	$r16,$r8,12(0xc) # 1c00b590 <TestOneType_32+0x570>
1c00b588:	00150132 	move	$r18,$r9
1c00b58c:	00150110 	move	$r16,$r8
1c00b590:	28807191 	ld.w	$r17,$r12,28(0x1c)
1c00b594:	02801ded 	addi.w	$r13,$r15,7(0x7)
1c00b598:	64000e11 	bge	$r16,$r17,12(0xc) # 1c00b5a4 <TestOneType_32+0x584>
1c00b59c:	001501b2 	move	$r18,$r13
1c00b5a0:	00150230 	move	$r16,$r17
1c00b5a4:	28808198 	ld.w	$r24,$r12,32(0x20)
1c00b5a8:	028021e5 	addi.w	$r5,$r15,8(0x8)
1c00b5ac:	64000e18 	bge	$r16,$r24,12(0xc) # 1c00b5b8 <TestOneType_32+0x598>
1c00b5b0:	001500b2 	move	$r18,$r5
1c00b5b4:	00150310 	move	$r16,$r24
1c00b5b8:	28809181 	ld.w	$r1,$r12,36(0x24)
1c00b5bc:	028025ee 	addi.w	$r14,$r15,9(0x9)
1c00b5c0:	64000e01 	bge	$r16,$r1,12(0xc) # 1c00b5cc <TestOneType_32+0x5ac>
1c00b5c4:	001501d2 	move	$r18,$r14
1c00b5c8:	00150030 	move	$r16,$r1
1c00b5cc:	2880a193 	ld.w	$r19,$r12,40(0x28)
1c00b5d0:	028029f4 	addi.w	$r20,$r15,10(0xa)
1c00b5d4:	64000e13 	bge	$r16,$r19,12(0xc) # 1c00b5e0 <TestOneType_32+0x5c0>
1c00b5d8:	00150292 	move	$r18,$r20
1c00b5dc:	00150270 	move	$r16,$r19
1c00b5e0:	2880b19e 	ld.w	$r30,$r12,44(0x2c)
1c00b5e4:	02802dff 	addi.w	$r31,$r15,11(0xb)
1c00b5e8:	64000e1e 	bge	$r16,$r30,12(0xc) # 1c00b5f4 <TestOneType_32+0x5d4>
1c00b5ec:	001503f2 	move	$r18,$r31
1c00b5f0:	001503d0 	move	$r16,$r30
1c00b5f4:	2880c197 	ld.w	$r23,$r12,48(0x30)
1c00b5f8:	028031eb 	addi.w	$r11,$r15,12(0xc)
1c00b5fc:	64000e17 	bge	$r16,$r23,12(0xc) # 1c00b608 <TestOneType_32+0x5e8>
1c00b600:	00150172 	move	$r18,$r11
1c00b604:	001502f0 	move	$r16,$r23
1c00b608:	028035ef 	addi.w	$r15,$r15,13(0xd)
1c00b60c:	0280d18c 	addi.w	$r12,$r12,52(0x34)
1c00b610:	5ffee1ea 	bne	$r15,$r10,-288(0x3fee0) # 1c00b4f0 <TestOneType_32+0x4d0>
1c00b614:	1c000eaa 	pcaddu12i	$r10,117(0x75)
1c00b618:	02bec14a 	addi.w	$r10,$r10,-80(0xfb0)
1c00b61c:	1c000eb7 	pcaddu12i	$r23,117(0x75)
1c00b620:	02be62f7 	addi.w	$r23,$r23,-104(0xf98)
1c00b624:	29800152 	st.w	$r18,$r10,0
1c00b628:	54211800 	bl	8472(0x2118) # 1c00d740 <get_clock>
1c00b62c:	288002f1 	ld.w	$r17,$r23,0
1c00b630:	1c000ebc 	pcaddu12i	$r28,117(0x75)
1c00b634:	28be439c 	ld.w	$r28,$r28,-112(0xf90)
1c00b638:	29800384 	st.w	$r4,$r28,0
1c00b63c:	00150018 	move	$r24,$r0
1c00b640:	64017011 	bge	$r0,$r17,368(0x170) # 1c00b7b0 <TestOneType_32+0x790>
1c00b644:	03b20006 	ori	$r6,$r0,0xc80
1c00b648:	02804067 	addi.w	$r7,$r3,16(0x10)
1c00b64c:	0015001f 	move	$r31,$r0
1c00b650:	00101cde 	add.w	$r30,$r6,$r7
1c00b654:	00116fc4 	sub.w	$r4,$r30,$r27
1c00b658:	02bff088 	addi.w	$r8,$r4,-4(0xffc)
1c00b65c:	00448909 	srli.w	$r9,$r8,0x2
1c00b660:	0280052d 	addi.w	$r13,$r9,1(0x1)
1c00b664:	03401da5 	andi	$r5,$r13,0x7
1c00b668:	00150370 	move	$r16,$r27
1c00b66c:	001503a6 	move	$r6,$r29
1c00b670:	5800a8a0 	beq	$r5,$r0,168(0xa8) # 1c00b718 <TestOneType_32+0x6f8>
1c00b674:	02800401 	addi.w	$r1,$r0,1(0x1)
1c00b678:	58008ca1 	beq	$r5,$r1,140(0x8c) # 1c00b704 <TestOneType_32+0x6e4>
1c00b67c:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c00b680:	580074ae 	beq	$r5,$r14,116(0x74) # 1c00b6f4 <TestOneType_32+0x6d4>
1c00b684:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c00b688:	58005cb3 	beq	$r5,$r19,92(0x5c) # 1c00b6e4 <TestOneType_32+0x6c4>
1c00b68c:	02801014 	addi.w	$r20,$r0,4(0x4)
1c00b690:	580044b4 	beq	$r5,$r20,68(0x44) # 1c00b6d4 <TestOneType_32+0x6b4>
1c00b694:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c00b698:	58002cab 	beq	$r5,$r11,44(0x2c) # 1c00b6c4 <TestOneType_32+0x6a4>
1c00b69c:	02801812 	addi.w	$r18,$r0,6(0x6)
1c00b6a0:	580014b2 	beq	$r5,$r18,20(0x14) # 1c00b6b4 <TestOneType_32+0x694>
1c00b6a4:	28800370 	ld.w	$r16,$r27,0
1c00b6a8:	64000a1d 	bge	$r16,$r29,8(0x8) # 1c00b6b0 <TestOneType_32+0x690>
1c00b6ac:	00150206 	move	$r6,$r16
1c00b6b0:	02801370 	addi.w	$r16,$r27,4(0x4)
1c00b6b4:	2880020f 	ld.w	$r15,$r16,0
1c00b6b8:	640009e6 	bge	$r15,$r6,8(0x8) # 1c00b6c0 <TestOneType_32+0x6a0>
1c00b6bc:	001501e6 	move	$r6,$r15
1c00b6c0:	02801210 	addi.w	$r16,$r16,4(0x4)
1c00b6c4:	2880020a 	ld.w	$r10,$r16,0
1c00b6c8:	64000946 	bge	$r10,$r6,8(0x8) # 1c00b6d0 <TestOneType_32+0x6b0>
1c00b6cc:	00150146 	move	$r6,$r10
1c00b6d0:	02801210 	addi.w	$r16,$r16,4(0x4)
1c00b6d4:	28800207 	ld.w	$r7,$r16,0
1c00b6d8:	640008e6 	bge	$r7,$r6,8(0x8) # 1c00b6e0 <TestOneType_32+0x6c0>
1c00b6dc:	001500e6 	move	$r6,$r7
1c00b6e0:	02801210 	addi.w	$r16,$r16,4(0x4)
1c00b6e4:	28800204 	ld.w	$r4,$r16,0
1c00b6e8:	64000886 	bge	$r4,$r6,8(0x8) # 1c00b6f0 <TestOneType_32+0x6d0>
1c00b6ec:	00150086 	move	$r6,$r4
1c00b6f0:	02801210 	addi.w	$r16,$r16,4(0x4)
1c00b6f4:	28800208 	ld.w	$r8,$r16,0
1c00b6f8:	64000906 	bge	$r8,$r6,8(0x8) # 1c00b700 <TestOneType_32+0x6e0>
1c00b6fc:	00150106 	move	$r6,$r8
1c00b700:	02801210 	addi.w	$r16,$r16,4(0x4)
1c00b704:	28800209 	ld.w	$r9,$r16,0
1c00b708:	64000926 	bge	$r9,$r6,8(0x8) # 1c00b710 <TestOneType_32+0x6f0>
1c00b70c:	00150126 	move	$r6,$r9
1c00b710:	02801210 	addi.w	$r16,$r16,4(0x4)
1c00b714:	580073d0 	beq	$r30,$r16,112(0x70) # 1c00b784 <TestOneType_32+0x764>
1c00b718:	2880020d 	ld.w	$r13,$r16,0
1c00b71c:	640009a6 	bge	$r13,$r6,8(0x8) # 1c00b724 <TestOneType_32+0x704>
1c00b720:	001501a6 	move	$r6,$r13
1c00b724:	28801205 	ld.w	$r5,$r16,4(0x4)
1c00b728:	0280120c 	addi.w	$r12,$r16,4(0x4)
1c00b72c:	640008a6 	bge	$r5,$r6,8(0x8) # 1c00b734 <TestOneType_32+0x714>
1c00b730:	001500a6 	move	$r6,$r5
1c00b734:	28801181 	ld.w	$r1,$r12,4(0x4)
1c00b738:	64000826 	bge	$r1,$r6,8(0x8) # 1c00b740 <TestOneType_32+0x720>
1c00b73c:	00150026 	move	$r6,$r1
1c00b740:	2880218e 	ld.w	$r14,$r12,8(0x8)
1c00b744:	640009c6 	bge	$r14,$r6,8(0x8) # 1c00b74c <TestOneType_32+0x72c>
1c00b748:	001501c6 	move	$r6,$r14
1c00b74c:	28803193 	ld.w	$r19,$r12,12(0xc)
1c00b750:	64000a66 	bge	$r19,$r6,8(0x8) # 1c00b758 <TestOneType_32+0x738>
1c00b754:	00150266 	move	$r6,$r19
1c00b758:	28804194 	ld.w	$r20,$r12,16(0x10)
1c00b75c:	64000a86 	bge	$r20,$r6,8(0x8) # 1c00b764 <TestOneType_32+0x744>
1c00b760:	00150286 	move	$r6,$r20
1c00b764:	2880518b 	ld.w	$r11,$r12,20(0x14)
1c00b768:	64000966 	bge	$r11,$r6,8(0x8) # 1c00b770 <TestOneType_32+0x750>
1c00b76c:	00150166 	move	$r6,$r11
1c00b770:	28806192 	ld.w	$r18,$r12,24(0x18)
1c00b774:	64000a46 	bge	$r18,$r6,8(0x8) # 1c00b77c <TestOneType_32+0x75c>
1c00b778:	00150246 	move	$r6,$r18
1c00b77c:	02807190 	addi.w	$r16,$r12,28(0x1c)
1c00b780:	5fff9bd0 	bne	$r30,$r16,-104(0x3ff98) # 1c00b718 <TestOneType_32+0x6f8>
1c00b784:	288002c7 	ld.w	$r7,$r22,0
1c00b788:	580678e6 	beq	$r7,$r6,1656(0x678) # 1c00be00 <TestOneType_32+0xde0>
1c00b78c:	1c000ea5 	pcaddu12i	$r5,117(0x75)
1c00b790:	02ac20a5 	addi.w	$r5,$r5,-1272(0xb08)
1c00b794:	1c000ea4 	pcaddu12i	$r4,117(0x75)
1c00b798:	02a26084 	addi.w	$r4,$r4,-1896(0x898)
1c00b79c:	541a9400 	bl	6804(0x1a94) # 1c00d230 <printf>
1c00b7a0:	288002f1 	ld.w	$r17,$r23,0
1c00b7a4:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00b7a8:	02800718 	addi.w	$r24,$r24,1(0x1)
1c00b7ac:	63feabf1 	blt	$r31,$r17,-344(0x3fea8) # 1c00b654 <TestOneType_32+0x634>
1c00b7b0:	541f9000 	bl	8080(0x1f90) # 1c00d740 <get_clock>
1c00b7b4:	2880038f 	ld.w	$r15,$r28,0
1c00b7b8:	00150096 	move	$r22,$r4
1c00b7bc:	14001e86 	lu12i.w	$r6,244(0xf4)
1c00b7c0:	038900ca 	ori	$r10,$r6,0x240
1c00b7c4:	00113ec8 	sub.w	$r8,$r22,$r15
1c00b7c8:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00b7cc:	1c000ea5 	pcaddu12i	$r5,117(0x75)
1c00b7d0:	02ab20a5 	addi.w	$r5,$r5,-1336(0xac8)
1c00b7d4:	1c000ea7 	pcaddu12i	$r7,117(0x75)
1c00b7d8:	28b7a0e7 	ld.w	$r7,$r7,-536(0xde8)
1c00b7dc:	1c000ea4 	pcaddu12i	$r4,117(0x75)
1c00b7e0:	02a1e084 	addi.w	$r4,$r4,-1928(0x878)
1c00b7e4:	298000f6 	st.w	$r22,$r7,0
1c00b7e8:	00212907 	div.wu	$r7,$r8,$r10
1c00b7ec:	5c000940 	bne	$r10,$r0,8(0x8) # 1c00b7f4 <TestOneType_32+0x7d4>
1c00b7f0:	002a0007 	break	0x7
1c00b7f4:	541a3c00 	bl	6716(0x1a3c) # 1c00d230 <printf>
1c00b7f8:	541f4800 	bl	8008(0x1f48) # 1c00d740 <get_clock>
1c00b7fc:	288002f2 	ld.w	$r18,$r23,0
1c00b800:	29800384 	st.w	$r4,$r28,0
1c00b804:	64017c12 	bge	$r0,$r18,380(0x17c) # 1c00b980 <TestOneType_32+0x960>
1c00b808:	03b20004 	ori	$r4,$r0,0xc80
1c00b80c:	02804069 	addi.w	$r9,$r3,16(0x10)
1c00b810:	00150016 	move	$r22,$r0
1c00b814:	0015001e 	move	$r30,$r0
1c00b818:	0010249f 	add.w	$r31,$r4,$r9
1c00b81c:	03400000 	andi	$r0,$r0,0x0
1c00b820:	00116fed 	sub.w	$r13,$r31,$r27
1c00b824:	02bff1a5 	addi.w	$r5,$r13,-4(0xffc)
1c00b828:	004488a1 	srli.w	$r1,$r5,0x2
1c00b82c:	0280042e 	addi.w	$r14,$r1,1(0x1)
1c00b830:	03401dd4 	andi	$r20,$r14,0x7
1c00b834:	0015036c 	move	$r12,$r27
1c00b838:	001503a6 	move	$r6,$r29
1c00b83c:	5800aa80 	beq	$r20,$r0,168(0xa8) # 1c00b8e4 <TestOneType_32+0x8c4>
1c00b840:	02800413 	addi.w	$r19,$r0,1(0x1)
1c00b844:	58008e93 	beq	$r20,$r19,140(0x8c) # 1c00b8d0 <TestOneType_32+0x8b0>
1c00b848:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c00b84c:	5800768b 	beq	$r20,$r11,116(0x74) # 1c00b8c0 <TestOneType_32+0x8a0>
1c00b850:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c00b854:	58005e90 	beq	$r20,$r16,92(0x5c) # 1c00b8b0 <TestOneType_32+0x890>
1c00b858:	02801011 	addi.w	$r17,$r0,4(0x4)
1c00b85c:	58004691 	beq	$r20,$r17,68(0x44) # 1c00b8a0 <TestOneType_32+0x880>
1c00b860:	0280140f 	addi.w	$r15,$r0,5(0x5)
1c00b864:	58002e8f 	beq	$r20,$r15,44(0x2c) # 1c00b890 <TestOneType_32+0x870>
1c00b868:	0280180a 	addi.w	$r10,$r0,6(0x6)
1c00b86c:	5800168a 	beq	$r20,$r10,20(0x14) # 1c00b880 <TestOneType_32+0x860>
1c00b870:	2880036c 	ld.w	$r12,$r27,0
1c00b874:	64000bac 	bge	$r29,$r12,8(0x8) # 1c00b87c <TestOneType_32+0x85c>
1c00b878:	00150186 	move	$r6,$r12
1c00b87c:	0280136c 	addi.w	$r12,$r27,4(0x4)
1c00b880:	28800188 	ld.w	$r8,$r12,0
1c00b884:	640008c8 	bge	$r6,$r8,8(0x8) # 1c00b88c <TestOneType_32+0x86c>
1c00b888:	00150106 	move	$r6,$r8
1c00b88c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b890:	28800187 	ld.w	$r7,$r12,0
1c00b894:	640008c7 	bge	$r6,$r7,8(0x8) # 1c00b89c <TestOneType_32+0x87c>
1c00b898:	001500e6 	move	$r6,$r7
1c00b89c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b8a0:	28800184 	ld.w	$r4,$r12,0
1c00b8a4:	640008c4 	bge	$r6,$r4,8(0x8) # 1c00b8ac <TestOneType_32+0x88c>
1c00b8a8:	00150086 	move	$r6,$r4
1c00b8ac:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b8b0:	28800189 	ld.w	$r9,$r12,0
1c00b8b4:	640008c9 	bge	$r6,$r9,8(0x8) # 1c00b8bc <TestOneType_32+0x89c>
1c00b8b8:	00150126 	move	$r6,$r9
1c00b8bc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b8c0:	2880018d 	ld.w	$r13,$r12,0
1c00b8c4:	640008cd 	bge	$r6,$r13,8(0x8) # 1c00b8cc <TestOneType_32+0x8ac>
1c00b8c8:	001501a6 	move	$r6,$r13
1c00b8cc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b8d0:	28800185 	ld.w	$r5,$r12,0
1c00b8d4:	640008c5 	bge	$r6,$r5,8(0x8) # 1c00b8dc <TestOneType_32+0x8bc>
1c00b8d8:	001500a6 	move	$r6,$r5
1c00b8dc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00b8e0:	5800719f 	beq	$r12,$r31,112(0x70) # 1c00b950 <TestOneType_32+0x930>
1c00b8e4:	28800181 	ld.w	$r1,$r12,0
1c00b8e8:	640008c1 	bge	$r6,$r1,8(0x8) # 1c00b8f0 <TestOneType_32+0x8d0>
1c00b8ec:	00150026 	move	$r6,$r1
1c00b8f0:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c00b8f4:	02801194 	addi.w	$r20,$r12,4(0x4)
1c00b8f8:	640008ce 	bge	$r6,$r14,8(0x8) # 1c00b900 <TestOneType_32+0x8e0>
1c00b8fc:	001501c6 	move	$r6,$r14
1c00b900:	28801293 	ld.w	$r19,$r20,4(0x4)
1c00b904:	640008d3 	bge	$r6,$r19,8(0x8) # 1c00b90c <TestOneType_32+0x8ec>
1c00b908:	00150266 	move	$r6,$r19
1c00b90c:	2880228b 	ld.w	$r11,$r20,8(0x8)
1c00b910:	640008cb 	bge	$r6,$r11,8(0x8) # 1c00b918 <TestOneType_32+0x8f8>
1c00b914:	00150166 	move	$r6,$r11
1c00b918:	28803290 	ld.w	$r16,$r20,12(0xc)
1c00b91c:	640008d0 	bge	$r6,$r16,8(0x8) # 1c00b924 <TestOneType_32+0x904>
1c00b920:	00150206 	move	$r6,$r16
1c00b924:	28804291 	ld.w	$r17,$r20,16(0x10)
1c00b928:	640008d1 	bge	$r6,$r17,8(0x8) # 1c00b930 <TestOneType_32+0x910>
1c00b92c:	00150226 	move	$r6,$r17
1c00b930:	2880528f 	ld.w	$r15,$r20,20(0x14)
1c00b934:	640008cf 	bge	$r6,$r15,8(0x8) # 1c00b93c <TestOneType_32+0x91c>
1c00b938:	001501e6 	move	$r6,$r15
1c00b93c:	2880628a 	ld.w	$r10,$r20,24(0x18)
1c00b940:	640008ca 	bge	$r6,$r10,8(0x8) # 1c00b948 <TestOneType_32+0x928>
1c00b944:	00150146 	move	$r6,$r10
1c00b948:	0280728c 	addi.w	$r12,$r20,28(0x1c)
1c00b94c:	5fff999f 	bne	$r12,$r31,-104(0x3ff98) # 1c00b8e4 <TestOneType_32+0x8c4>
1c00b950:	28800327 	ld.w	$r7,$r25,0
1c00b954:	5804bce6 	beq	$r7,$r6,1212(0x4bc) # 1c00be10 <TestOneType_32+0xdf0>
1c00b958:	1c000ea5 	pcaddu12i	$r5,117(0x75)
1c00b95c:	02a570a5 	addi.w	$r5,$r5,-1700(0x95c)
1c00b960:	1c000e84 	pcaddu12i	$r4,116(0x74)
1c00b964:	029b3084 	addi.w	$r4,$r4,1740(0x6cc)
1c00b968:	5418c800 	bl	6344(0x18c8) # 1c00d230 <printf>
1c00b96c:	288002f2 	ld.w	$r18,$r23,0
1c00b970:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00b974:	028007de 	addi.w	$r30,$r30,1(0x1)
1c00b978:	63feaad2 	blt	$r22,$r18,-344(0x3fea8) # 1c00b820 <TestOneType_32+0x800>
1c00b97c:	00107b18 	add.w	$r24,$r24,$r30
1c00b980:	541dc000 	bl	7616(0x1dc0) # 1c00d740 <get_clock>
1c00b984:	28800389 	ld.w	$r9,$r28,0
1c00b988:	00150088 	move	$r8,$r4
1c00b98c:	14001e99 	lu12i.w	$r25,244(0xf4)
1c00b990:	0011250e 	sub.w	$r14,$r8,$r9
1c00b994:	03890327 	ori	$r7,$r25,0x240
1c00b998:	00211dd4 	div.wu	$r20,$r14,$r7
1c00b99c:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c00b9a4 <TestOneType_32+0x984>
1c00b9a0:	002a0007 	break	0x7
1c00b9a4:	1c000ead 	pcaddu12i	$r13,117(0x75)
1c00b9a8:	28b061ad 	ld.w	$r13,$r13,-1000(0xc18)
1c00b9ac:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00b9b0:	1c000ea5 	pcaddu12i	$r5,117(0x75)
1c00b9b4:	02a410a5 	addi.w	$r5,$r5,-1788(0x904)
1c00b9b8:	00150287 	move	$r7,$r20
1c00b9bc:	1c000e84 	pcaddu12i	$r4,116(0x74)
1c00b9c0:	029a6084 	addi.w	$r4,$r4,1688(0x698)
1c00b9c4:	298001a8 	st.w	$r8,$r13,0
1c00b9c8:	54186800 	bl	6248(0x1868) # 1c00d230 <printf>
1c00b9cc:	288002ee 	ld.w	$r14,$r23,0
1c00b9d0:	02801406 	addi.w	$r6,$r0,5(0x5)
1c00b9d4:	00150016 	move	$r22,$r0
1c00b9d8:	002019c5 	div.w	$r5,$r14,$r6
1c00b9dc:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c00b9e4 <TestOneType_32+0x9c4>
1c00b9e0:	002a0007 	break	0x7
1c00b9e4:	2980306e 	st.w	$r14,$r3,12(0xc)
1c00b9e8:	298002e5 	st.w	$r5,$r23,0
1c00b9ec:	541d5400 	bl	7508(0x1d54) # 1c00d740 <get_clock>
1c00b9f0:	288002f2 	ld.w	$r18,$r23,0
1c00b9f4:	29800384 	st.w	$r4,$r28,0
1c00b9f8:	028c8019 	addi.w	$r25,$r0,800(0x320)
1c00b9fc:	1c000ebf 	pcaddu12i	$r31,117(0x75)
1c00ba00:	02a363ff 	addi.w	$r31,$r31,-1832(0x8d8)
1c00ba04:	1c000e9e 	pcaddu12i	$r30,116(0x74)
1c00ba08:	0297f3de 	addi.w	$r30,$r30,1532(0x5fc)
1c00ba0c:	64016812 	bge	$r0,$r18,360(0x168) # 1c00bb74 <TestOneType_32+0xb54>
1c00ba10:	28800361 	ld.w	$r1,$r27,0
1c00ba14:	001503ac 	move	$r12,$r29
1c00ba18:	00150006 	move	$r6,$r0
1c00ba1c:	64000c3d 	bge	$r1,$r29,12(0xc) # 1c00ba28 <TestOneType_32+0xa08>
1c00ba20:	0015002c 	move	$r12,$r1
1c00ba24:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00ba28:	02800810 	addi.w	$r16,$r0,2(0x2)
1c00ba2c:	02801371 	addi.w	$r17,$r27,4(0x4)
1c00ba30:	28800233 	ld.w	$r19,$r17,0
1c00ba34:	64000e6c 	bge	$r19,$r12,12(0xc) # 1c00ba40 <TestOneType_32+0xa20>
1c00ba38:	0015026c 	move	$r12,$r19
1c00ba3c:	00150206 	move	$r6,$r16
1c00ba40:	2880122b 	ld.w	$r11,$r17,4(0x4)
1c00ba44:	02800610 	addi.w	$r16,$r16,1(0x1)
1c00ba48:	02801231 	addi.w	$r17,$r17,4(0x4)
1c00ba4c:	64000d6c 	bge	$r11,$r12,12(0xc) # 1c00ba58 <TestOneType_32+0xa38>
1c00ba50:	0015016c 	move	$r12,$r11
1c00ba54:	00150206 	move	$r6,$r16
1c00ba58:	2880122f 	ld.w	$r15,$r17,4(0x4)
1c00ba5c:	0280060a 	addi.w	$r10,$r16,1(0x1)
1c00ba60:	64000dec 	bge	$r15,$r12,12(0xc) # 1c00ba6c <TestOneType_32+0xa4c>
1c00ba64:	001501ec 	move	$r12,$r15
1c00ba68:	00150146 	move	$r6,$r10
1c00ba6c:	28802228 	ld.w	$r8,$r17,8(0x8)
1c00ba70:	02800a09 	addi.w	$r9,$r16,2(0x2)
1c00ba74:	64000d0c 	bge	$r8,$r12,12(0xc) # 1c00ba80 <TestOneType_32+0xa60>
1c00ba78:	0015010c 	move	$r12,$r8
1c00ba7c:	00150126 	move	$r6,$r9
1c00ba80:	28803227 	ld.w	$r7,$r17,12(0xc)
1c00ba84:	02800e0d 	addi.w	$r13,$r16,3(0x3)
1c00ba88:	64000cec 	bge	$r7,$r12,12(0xc) # 1c00ba94 <TestOneType_32+0xa74>
1c00ba8c:	001500ec 	move	$r12,$r7
1c00ba90:	001501a6 	move	$r6,$r13
1c00ba94:	2880422e 	ld.w	$r14,$r17,16(0x10)
1c00ba98:	02801214 	addi.w	$r20,$r16,4(0x4)
1c00ba9c:	64000dcc 	bge	$r14,$r12,12(0xc) # 1c00baa8 <TestOneType_32+0xa88>
1c00baa0:	001501cc 	move	$r12,$r14
1c00baa4:	00150286 	move	$r6,$r20
1c00baa8:	28805224 	ld.w	$r4,$r17,20(0x14)
1c00baac:	02801605 	addi.w	$r5,$r16,5(0x5)
1c00bab0:	64000c8c 	bge	$r4,$r12,12(0xc) # 1c00babc <TestOneType_32+0xa9c>
1c00bab4:	0015008c 	move	$r12,$r4
1c00bab8:	001500a6 	move	$r6,$r5
1c00babc:	28806221 	ld.w	$r1,$r17,24(0x18)
1c00bac0:	02801a13 	addi.w	$r19,$r16,6(0x6)
1c00bac4:	64000c2c 	bge	$r1,$r12,12(0xc) # 1c00bad0 <TestOneType_32+0xab0>
1c00bac8:	0015002c 	move	$r12,$r1
1c00bacc:	00150266 	move	$r6,$r19
1c00bad0:	2880722b 	ld.w	$r11,$r17,28(0x1c)
1c00bad4:	02801e0f 	addi.w	$r15,$r16,7(0x7)
1c00bad8:	64000d6c 	bge	$r11,$r12,12(0xc) # 1c00bae4 <TestOneType_32+0xac4>
1c00badc:	0015016c 	move	$r12,$r11
1c00bae0:	001501e6 	move	$r6,$r15
1c00bae4:	2880822a 	ld.w	$r10,$r17,32(0x20)
1c00bae8:	02802208 	addi.w	$r8,$r16,8(0x8)
1c00baec:	64000d4c 	bge	$r10,$r12,12(0xc) # 1c00baf8 <TestOneType_32+0xad8>
1c00baf0:	0015014c 	move	$r12,$r10
1c00baf4:	00150106 	move	$r6,$r8
1c00baf8:	28809229 	ld.w	$r9,$r17,36(0x24)
1c00bafc:	02802607 	addi.w	$r7,$r16,9(0x9)
1c00bb00:	64000d2c 	bge	$r9,$r12,12(0xc) # 1c00bb0c <TestOneType_32+0xaec>
1c00bb04:	0015012c 	move	$r12,$r9
1c00bb08:	001500e6 	move	$r6,$r7
1c00bb0c:	2880a22d 	ld.w	$r13,$r17,40(0x28)
1c00bb10:	02802a0e 	addi.w	$r14,$r16,10(0xa)
1c00bb14:	64000dac 	bge	$r13,$r12,12(0xc) # 1c00bb20 <TestOneType_32+0xb00>
1c00bb18:	001501ac 	move	$r12,$r13
1c00bb1c:	001501c6 	move	$r6,$r14
1c00bb20:	2880b224 	ld.w	$r4,$r17,44(0x2c)
1c00bb24:	02802e14 	addi.w	$r20,$r16,11(0xb)
1c00bb28:	64000c8c 	bge	$r4,$r12,12(0xc) # 1c00bb34 <TestOneType_32+0xb14>
1c00bb2c:	0015008c 	move	$r12,$r4
1c00bb30:	00150286 	move	$r6,$r20
1c00bb34:	2880c225 	ld.w	$r5,$r17,48(0x30)
1c00bb38:	02803201 	addi.w	$r1,$r16,12(0xc)
1c00bb3c:	64000cac 	bge	$r5,$r12,12(0xc) # 1c00bb48 <TestOneType_32+0xb28>
1c00bb40:	001500ac 	move	$r12,$r5
1c00bb44:	00150026 	move	$r6,$r1
1c00bb48:	02803610 	addi.w	$r16,$r16,13(0xd)
1c00bb4c:	0280d231 	addi.w	$r17,$r17,52(0x34)
1c00bb50:	5ffee219 	bne	$r16,$r25,-288(0x3fee0) # 1c00ba30 <TestOneType_32+0xa10>
1c00bb54:	28800347 	ld.w	$r7,$r26,0
1c00bb58:	580298e6 	beq	$r7,$r6,664(0x298) # 1c00bdf0 <TestOneType_32+0xdd0>
1c00bb5c:	001503e5 	move	$r5,$r31
1c00bb60:	001503c4 	move	$r4,$r30
1c00bb64:	5416cc00 	bl	5836(0x16cc) # 1c00d230 <printf>
1c00bb68:	288002f2 	ld.w	$r18,$r23,0
1c00bb6c:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00bb70:	63fea2d2 	blt	$r22,$r18,-352(0x3fea0) # 1c00ba10 <TestOneType_32+0x9f0>
1c00bb74:	541bcc00 	bl	7116(0x1bcc) # 1c00d740 <get_clock>
1c00bb78:	28800393 	ld.w	$r19,$r28,0
1c00bb7c:	0015009a 	move	$r26,$r4
1c00bb80:	14001e86 	lu12i.w	$r6,244(0xf4)
1c00bb84:	038900cb 	ori	$r11,$r6,0x240
1c00bb88:	00114f4a 	sub.w	$r10,$r26,$r19
1c00bb8c:	1c000eaf 	pcaddu12i	$r15,117(0x75)
1c00bb90:	28a8c1ef 	ld.w	$r15,$r15,-1488(0xa30)
1c00bb94:	00212d47 	div.wu	$r7,$r10,$r11
1c00bb98:	5c000960 	bne	$r11,$r0,8(0x8) # 1c00bba0 <TestOneType_32+0xb80>
1c00bb9c:	002a0007 	break	0x7
1c00bba0:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00bba4:	1c000e85 	pcaddu12i	$r5,116(0x74)
1c00bba8:	029cc0a5 	addi.w	$r5,$r5,1840(0x730)
1c00bbac:	1c000e84 	pcaddu12i	$r4,116(0x74)
1c00bbb0:	0292a084 	addi.w	$r4,$r4,1192(0x4a8)
1c00bbb4:	298001fa 	st.w	$r26,$r15,0
1c00bbb8:	54167800 	bl	5752(0x1678) # 1c00d230 <printf>
1c00bbbc:	541b8400 	bl	7044(0x1b84) # 1c00d740 <get_clock>
1c00bbc0:	288002f1 	ld.w	$r17,$r23,0
1c00bbc4:	29800384 	st.w	$r4,$r28,0
1c00bbc8:	0015001f 	move	$r31,$r0
1c00bbcc:	028c8019 	addi.w	$r25,$r0,800(0x320)
1c00bbd0:	1c000e9e 	pcaddu12i	$r30,116(0x74)
1c00bbd4:	029ca3de 	addi.w	$r30,$r30,1832(0x728)
1c00bbd8:	1c000e9a 	pcaddu12i	$r26,116(0x74)
1c00bbdc:	0290a35a 	addi.w	$r26,$r26,1064(0x428)
1c00bbe0:	64017011 	bge	$r0,$r17,368(0x170) # 1c00bd50 <TestOneType_32+0xd30>
1c00bbe4:	28800368 	ld.w	$r8,$r27,0
1c00bbe8:	001503ac 	move	$r12,$r29
1c00bbec:	00150006 	move	$r6,$r0
1c00bbf0:	64000fa8 	bge	$r29,$r8,12(0xc) # 1c00bbfc <TestOneType_32+0xbdc>
1c00bbf4:	0015010c 	move	$r12,$r8
1c00bbf8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00bbfc:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00bc00:	0280136d 	addi.w	$r13,$r27,4(0x4)
1c00bc04:	288001a9 	ld.w	$r9,$r13,0
1c00bc08:	64000d89 	bge	$r12,$r9,12(0xc) # 1c00bc14 <TestOneType_32+0xbf4>
1c00bc0c:	0015012c 	move	$r12,$r9
1c00bc10:	00150086 	move	$r6,$r4
1c00bc14:	288011ae 	ld.w	$r14,$r13,4(0x4)
1c00bc18:	02800484 	addi.w	$r4,$r4,1(0x1)
1c00bc1c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00bc20:	64000d8e 	bge	$r12,$r14,12(0xc) # 1c00bc2c <TestOneType_32+0xc0c>
1c00bc24:	001501cc 	move	$r12,$r14
1c00bc28:	00150086 	move	$r6,$r4
1c00bc2c:	288011b4 	ld.w	$r20,$r13,4(0x4)
1c00bc30:	02800485 	addi.w	$r5,$r4,1(0x1)
1c00bc34:	64000d94 	bge	$r12,$r20,12(0xc) # 1c00bc40 <TestOneType_32+0xc20>
1c00bc38:	0015028c 	move	$r12,$r20
1c00bc3c:	001500a6 	move	$r6,$r5
1c00bc40:	288021a1 	ld.w	$r1,$r13,8(0x8)
1c00bc44:	02800890 	addi.w	$r16,$r4,2(0x2)
1c00bc48:	64000d81 	bge	$r12,$r1,12(0xc) # 1c00bc54 <TestOneType_32+0xc34>
1c00bc4c:	0015002c 	move	$r12,$r1
1c00bc50:	00150206 	move	$r6,$r16
1c00bc54:	288031b2 	ld.w	$r18,$r13,12(0xc)
1c00bc58:	02800c93 	addi.w	$r19,$r4,3(0x3)
1c00bc5c:	64000d92 	bge	$r12,$r18,12(0xc) # 1c00bc68 <TestOneType_32+0xc48>
1c00bc60:	0015024c 	move	$r12,$r18
1c00bc64:	00150266 	move	$r6,$r19
1c00bc68:	288041ab 	ld.w	$r11,$r13,16(0x10)
1c00bc6c:	0280108f 	addi.w	$r15,$r4,4(0x4)
1c00bc70:	64000d8b 	bge	$r12,$r11,12(0xc) # 1c00bc7c <TestOneType_32+0xc5c>
1c00bc74:	0015016c 	move	$r12,$r11
1c00bc78:	001501e6 	move	$r6,$r15
1c00bc7c:	288051aa 	ld.w	$r10,$r13,20(0x14)
1c00bc80:	02801487 	addi.w	$r7,$r4,5(0x5)
1c00bc84:	64000d8a 	bge	$r12,$r10,12(0xc) # 1c00bc90 <TestOneType_32+0xc70>
1c00bc88:	0015014c 	move	$r12,$r10
1c00bc8c:	001500e6 	move	$r6,$r7
1c00bc90:	288061a8 	ld.w	$r8,$r13,24(0x18)
1c00bc94:	02801889 	addi.w	$r9,$r4,6(0x6)
1c00bc98:	64000d88 	bge	$r12,$r8,12(0xc) # 1c00bca4 <TestOneType_32+0xc84>
1c00bc9c:	0015010c 	move	$r12,$r8
1c00bca0:	00150126 	move	$r6,$r9
1c00bca4:	288071ae 	ld.w	$r14,$r13,28(0x1c)
1c00bca8:	02801c94 	addi.w	$r20,$r4,7(0x7)
1c00bcac:	64000d8e 	bge	$r12,$r14,12(0xc) # 1c00bcb8 <TestOneType_32+0xc98>
1c00bcb0:	001501cc 	move	$r12,$r14
1c00bcb4:	00150286 	move	$r6,$r20
1c00bcb8:	288081a5 	ld.w	$r5,$r13,32(0x20)
1c00bcbc:	02802081 	addi.w	$r1,$r4,8(0x8)
1c00bcc0:	64000d85 	bge	$r12,$r5,12(0xc) # 1c00bccc <TestOneType_32+0xcac>
1c00bcc4:	001500ac 	move	$r12,$r5
1c00bcc8:	00150026 	move	$r6,$r1
1c00bccc:	288091b0 	ld.w	$r16,$r13,36(0x24)
1c00bcd0:	02802492 	addi.w	$r18,$r4,9(0x9)
1c00bcd4:	64000d90 	bge	$r12,$r16,12(0xc) # 1c00bce0 <TestOneType_32+0xcc0>
1c00bcd8:	0015020c 	move	$r12,$r16
1c00bcdc:	00150246 	move	$r6,$r18
1c00bce0:	2880a1ab 	ld.w	$r11,$r13,40(0x28)
1c00bce4:	02802893 	addi.w	$r19,$r4,10(0xa)
1c00bce8:	64000d8b 	bge	$r12,$r11,12(0xc) # 1c00bcf4 <TestOneType_32+0xcd4>
1c00bcec:	0015016c 	move	$r12,$r11
1c00bcf0:	00150266 	move	$r6,$r19
1c00bcf4:	2880b1af 	ld.w	$r15,$r13,44(0x2c)
1c00bcf8:	02802c8a 	addi.w	$r10,$r4,11(0xb)
1c00bcfc:	64000d8f 	bge	$r12,$r15,12(0xc) # 1c00bd08 <TestOneType_32+0xce8>
1c00bd00:	001501ec 	move	$r12,$r15
1c00bd04:	00150146 	move	$r6,$r10
1c00bd08:	2880c1a7 	ld.w	$r7,$r13,48(0x30)
1c00bd0c:	02803088 	addi.w	$r8,$r4,12(0xc)
1c00bd10:	64000d87 	bge	$r12,$r7,12(0xc) # 1c00bd1c <TestOneType_32+0xcfc>
1c00bd14:	001500ec 	move	$r12,$r7
1c00bd18:	00150106 	move	$r6,$r8
1c00bd1c:	02803484 	addi.w	$r4,$r4,13(0xd)
1c00bd20:	0280d1ad 	addi.w	$r13,$r13,52(0x34)
1c00bd24:	5ffee099 	bne	$r4,$r25,-288(0x3fee0) # 1c00bc04 <TestOneType_32+0xbe4>
1c00bd28:	1c000ea9 	pcaddu12i	$r9,117(0x75)
1c00bd2c:	02a27129 	addi.w	$r9,$r9,-1892(0x89c)
1c00bd30:	28800127 	ld.w	$r7,$r9,0
1c00bd34:	5800acc7 	beq	$r6,$r7,172(0xac) # 1c00bde0 <TestOneType_32+0xdc0>
1c00bd38:	001503c5 	move	$r5,$r30
1c00bd3c:	00150344 	move	$r4,$r26
1c00bd40:	5414f000 	bl	5360(0x14f0) # 1c00d230 <printf>
1c00bd44:	288002f1 	ld.w	$r17,$r23,0
1c00bd48:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00bd4c:	63fe9bf1 	blt	$r31,$r17,-360(0x3fe98) # 1c00bbe4 <TestOneType_32+0xbc4>
1c00bd50:	5419f000 	bl	6640(0x19f0) # 1c00d740 <get_clock>
1c00bd54:	2880039b 	ld.w	$r27,$r28,0
1c00bd58:	0015009d 	move	$r29,$r4
1c00bd5c:	14001e86 	lu12i.w	$r6,244(0xf4)
1c00bd60:	00116fb0 	sub.w	$r16,$r29,$r27
1c00bd64:	038900d4 	ori	$r20,$r6,0x240
1c00bd68:	1c000e85 	pcaddu12i	$r5,116(0x74)
1c00bd6c:	029640a5 	addi.w	$r5,$r5,1424(0x590)
1c00bd70:	00215207 	div.wu	$r7,$r16,$r20
1c00bd74:	5c000a80 	bne	$r20,$r0,8(0x8) # 1c00bd7c <TestOneType_32+0xd5c>
1c00bd78:	002a0007 	break	0x7
1c00bd7c:	1c000eae 	pcaddu12i	$r14,117(0x75)
1c00bd80:	28a101ce 	ld.w	$r14,$r14,-1984(0x840)
1c00bd84:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00bd88:	1c000e84 	pcaddu12i	$r4,116(0x74)
1c00bd8c:	028b3084 	addi.w	$r4,$r4,716(0x2cc)
1c00bd90:	298001dd 	st.w	$r29,$r14,0
1c00bd94:	54149c00 	bl	5276(0x149c) # 1c00d230 <printf>
1c00bd98:	28803065 	ld.w	$r5,$r3,12(0xc)
1c00bd9c:	00150304 	move	$r4,$r24
1c00bda0:	298002e5 	st.w	$r5,$r23,0
1c00bda4:	02934063 	addi.w	$r3,$r3,1232(0x4d0)
1c00bda8:	289fb061 	ld.w	$r1,$r3,2028(0x7ec)
1c00bdac:	289fa076 	ld.w	$r22,$r3,2024(0x7e8)
1c00bdb0:	289f9077 	ld.w	$r23,$r3,2020(0x7e4)
1c00bdb4:	289f8078 	ld.w	$r24,$r3,2016(0x7e0)
1c00bdb8:	289f7079 	ld.w	$r25,$r3,2012(0x7dc)
1c00bdbc:	289f607a 	ld.w	$r26,$r3,2008(0x7d8)
1c00bdc0:	289f507b 	ld.w	$r27,$r3,2004(0x7d4)
1c00bdc4:	289f407c 	ld.w	$r28,$r3,2000(0x7d0)
1c00bdc8:	289f307d 	ld.w	$r29,$r3,1996(0x7cc)
1c00bdcc:	289f207e 	ld.w	$r30,$r3,1992(0x7c8)
1c00bdd0:	289f107f 	ld.w	$r31,$r3,1988(0x7c4)
1c00bdd4:	029fc063 	addi.w	$r3,$r3,2032(0x7f0)
1c00bdd8:	4c000020 	jirl	$r0,$r1,0
1c00bddc:	03400000 	andi	$r0,$r0,0x0
1c00bde0:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00bde4:	63fe03f1 	blt	$r31,$r17,-512(0x3fe00) # 1c00bbe4 <TestOneType_32+0xbc4>
1c00bde8:	53ff6bff 	b	-152(0xfffff68) # 1c00bd50 <TestOneType_32+0xd30>
1c00bdec:	03400000 	andi	$r0,$r0,0x0
1c00bdf0:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00bdf4:	63fc1ed2 	blt	$r22,$r18,-996(0x3fc1c) # 1c00ba10 <TestOneType_32+0x9f0>
1c00bdf8:	53fd7fff 	b	-644(0xffffd7c) # 1c00bb74 <TestOneType_32+0xb54>
1c00bdfc:	03400000 	andi	$r0,$r0,0x0
1c00be00:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00be04:	63f853f1 	blt	$r31,$r17,-1968(0x3f850) # 1c00b654 <TestOneType_32+0x634>
1c00be08:	53f9abff 	b	-1624(0xffff9a8) # 1c00b7b0 <TestOneType_32+0x790>
1c00be0c:	03400000 	andi	$r0,$r0,0x0
1c00be10:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00be14:	63fa0ed2 	blt	$r22,$r18,-1524(0x3fa0c) # 1c00b820 <TestOneType_32+0x800>
1c00be18:	53fb67ff 	b	-1180(0xffffb64) # 1c00b97c <TestOneType_32+0x95c>
1c00be1c:	03b2000b 	ori	$r11,$r0,0xc80
1c00be20:	0280406f 	addi.w	$r15,$r3,16(0x10)
1c00be24:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00be28:	00103d71 	add.w	$r17,$r11,$r15
1c00be2c:	001501d0 	move	$r16,$r14
1c00be30:	5ff39d91 	bne	$r12,$r17,-3172(0x3f39c) # 1c00b1cc <TestOneType_32+0x1ac>
1c00be34:	53f3f3ff 	b	-3088(0xffff3f0) # 1c00b224 <TestOneType_32+0x204>
1c00be38:	03b2000d 	ori	$r13,$r0,0xc80
1c00be3c:	02804067 	addi.w	$r7,$r3,16(0x10)
1c00be40:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c00be44:	00101db8 	add.w	$r24,$r13,$r7
1c00be48:	001500d0 	move	$r16,$r6
1c00be4c:	5ff38198 	bne	$r12,$r24,-3200(0x3f380) # 1c00b1cc <TestOneType_32+0x1ac>
1c00be50:	53f3d7ff 	b	-3116(0xffff3d4) # 1c00b224 <TestOneType_32+0x204>
1c00be54:	28806186 	ld.w	$r6,$r12,24(0x18)
1c00be58:	001500b0 	move	$r16,$r5
1c00be5c:	67f3b4d0 	bge	$r6,$r16,-3148(0x3f3b4) # 1c00b210 <TestOneType_32+0x1f0>
1c00be60:	53ffdbff 	b	-40(0xfffffd8) # 1c00be38 <TestOneType_32+0xe18>
1c00be64:	28805185 	ld.w	$r5,$r12,20(0x14)
1c00be68:	001502f0 	move	$r16,$r23
1c00be6c:	67f39cb0 	bge	$r5,$r16,-3172(0x3f39c) # 1c00b208 <TestOneType_32+0x1e8>
1c00be70:	53ffe7ff 	b	-28(0xfffffe4) # 1c00be54 <TestOneType_32+0xe34>
1c00be74:	28804197 	ld.w	$r23,$r12,16(0x10)
1c00be78:	001503f0 	move	$r16,$r31
1c00be7c:	67f386f0 	bge	$r23,$r16,-3196(0x3f384) # 1c00b200 <TestOneType_32+0x1e0>
1c00be80:	53ffe7ff 	b	-28(0xfffffe4) # 1c00be64 <TestOneType_32+0xe44>
1c00be84:	2880319f 	ld.w	$r31,$r12,12(0xc)
1c00be88:	001503d0 	move	$r16,$r30
1c00be8c:	67f36ff0 	bge	$r31,$r16,-3220(0x3f36c) # 1c00b1f8 <TestOneType_32+0x1d8>
1c00be90:	53ffe7ff 	b	-28(0xfffffe4) # 1c00be74 <TestOneType_32+0xe54>
1c00be94:	2880219e 	ld.w	$r30,$r12,8(0x8)
1c00be98:	00150290 	move	$r16,$r20
1c00be9c:	67f357d0 	bge	$r30,$r16,-3244(0x3f354) # 1c00b1f0 <TestOneType_32+0x1d0>
1c00bea0:	53ffe7ff 	b	-28(0xfffffe4) # 1c00be84 <TestOneType_32+0xe64>
1c00bea4:	28801194 	ld.w	$r20,$r12,4(0x4)
1c00bea8:	00150270 	move	$r16,$r19
1c00beac:	67f33e90 	bge	$r20,$r16,-3268(0x3f33c) # 1c00b1e8 <TestOneType_32+0x1c8>
1c00beb0:	53ffe7ff 	b	-28(0xfffffe4) # 1c00be94 <TestOneType_32+0xe74>
1c00beb4:	28801193 	ld.w	$r19,$r12,4(0x4)
1c00beb8:	00150250 	move	$r16,$r18
1c00bebc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00bec0:	67f32270 	bge	$r19,$r16,-3296(0x3f320) # 1c00b1e0 <TestOneType_32+0x1c0>
1c00bec4:	53ffe3ff 	b	-32(0xfffffe0) # 1c00bea4 <TestOneType_32+0xe84>
1c00bec8:	03b2001a 	ori	$r26,$r0,0xc80
1c00becc:	02804079 	addi.w	$r25,$r3,16(0x10)
1c00bed0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00bed4:	00106748 	add.w	$r8,$r26,$r25
1c00bed8:	00150371 	move	$r17,$r27
1c00bedc:	5ff43588 	bne	$r12,$r8,-3020(0x3f434) # 1c00b310 <TestOneType_32+0x2f0>
1c00bee0:	53f48bff 	b	-2936(0xffff488) # 1c00b368 <TestOneType_32+0x348>
1c00bee4:	03b2001e 	ori	$r30,$r0,0xc80
1c00bee8:	0280407f 	addi.w	$r31,$r3,16(0x10)
1c00beec:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c00bef0:	00107fd7 	add.w	$r23,$r30,$r31
1c00bef4:	00150291 	move	$r17,$r20
1c00bef8:	5ff41997 	bne	$r12,$r23,-3048(0x3f418) # 1c00b310 <TestOneType_32+0x2f0>
1c00befc:	53f46fff 	b	-2964(0xffff46c) # 1c00b368 <TestOneType_32+0x348>
1c00bf00:	28806194 	ld.w	$r20,$r12,24(0x18)
1c00bf04:	00150271 	move	$r17,$r19
1c00bf08:	67f44e34 	bge	$r17,$r20,-2996(0x3f44c) # 1c00b354 <TestOneType_32+0x334>
1c00bf0c:	53ffdbff 	b	-40(0xfffffd8) # 1c00bee4 <TestOneType_32+0xec4>
1c00bf10:	28805193 	ld.w	$r19,$r12,20(0x14)
1c00bf14:	00150251 	move	$r17,$r18
1c00bf18:	67f43633 	bge	$r17,$r19,-3020(0x3f434) # 1c00b34c <TestOneType_32+0x32c>
1c00bf1c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00bf00 <TestOneType_32+0xee0>
1c00bf20:	28804192 	ld.w	$r18,$r12,16(0x10)
1c00bf24:	001501f1 	move	$r17,$r15
1c00bf28:	67f41e32 	bge	$r17,$r18,-3044(0x3f41c) # 1c00b344 <TestOneType_32+0x324>
1c00bf2c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00bf10 <TestOneType_32+0xef0>
1c00bf30:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c00bf34:	001501d1 	move	$r17,$r14
1c00bf38:	67f4062f 	bge	$r17,$r15,-3068(0x3f404) # 1c00b33c <TestOneType_32+0x31c>
1c00bf3c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00bf20 <TestOneType_32+0xf00>
1c00bf40:	2880218e 	ld.w	$r14,$r12,8(0x8)
1c00bf44:	00150031 	move	$r17,$r1
1c00bf48:	67f3ee2e 	bge	$r17,$r14,-3092(0x3f3ec) # 1c00b334 <TestOneType_32+0x314>
1c00bf4c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00bf30 <TestOneType_32+0xf10>
1c00bf50:	28801181 	ld.w	$r1,$r12,4(0x4)
1c00bf54:	00150151 	move	$r17,$r10
1c00bf58:	67f3d621 	bge	$r17,$r1,-3116(0x3f3d4) # 1c00b32c <TestOneType_32+0x30c>
1c00bf5c:	53ffe7ff 	b	-28(0xfffffe4) # 1c00bf40 <TestOneType_32+0xf20>
1c00bf60:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c00bf64:	00150131 	move	$r17,$r9
1c00bf68:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00bf6c:	67f3ba2a 	bge	$r17,$r10,-3144(0x3f3b8) # 1c00b324 <TestOneType_32+0x304>
1c00bf70:	53ffe3ff 	b	-32(0xfffffe0) # 1c00bf50 <TestOneType_32+0xf30>
1c00bf74:	00150030 	move	$r16,$r1
1c00bf78:	53f237ff 	b	-3532(0xffff234) # 1c00b1ac <TestOneType_32+0x18c>
1c00bf7c:	00150391 	move	$r17,$r28
1c00bf80:	53f373ff 	b	-3216(0xffff370) # 1c00b2f0 <TestOneType_32+0x2d0>
1c00bf84:	00150150 	move	$r16,$r10
1c00bf88:	53f21bff 	b	-3560(0xffff218) # 1c00b1a0 <TestOneType_32+0x180>
1c00bf8c:	00150091 	move	$r17,$r4
1c00bf90:	53f357ff 	b	-3244(0xffff354) # 1c00b2e4 <TestOneType_32+0x2c4>
1c00bf94:	001500f1 	move	$r17,$r7
1c00bf98:	53f333ff 	b	-3280(0xffff330) # 1c00b2c8 <TestOneType_32+0x2a8>
1c00bf9c:	00150110 	move	$r16,$r8
1c00bfa0:	53f1e7ff 	b	-3612(0xffff1e4) # 1c00b184 <TestOneType_32+0x164>
1c00bfa4:	001501b1 	move	$r17,$r13
1c00bfa8:	53f317ff 	b	-3308(0xffff314) # 1c00b2bc <TestOneType_32+0x29c>
1c00bfac:	001502d0 	move	$r16,$r22
1c00bfb0:	53f1cbff 	b	-3640(0xffff1c8) # 1c00b178 <TestOneType_32+0x158>
1c00bfb4:	03400000 	andi	$r0,$r0,0x0
1c00bfb8:	03400000 	andi	$r0,$r0,0x0
1c00bfbc:	03400000 	andi	$r0,$r0,0x0

1c00bfc0 <TestOneType_u32>:
TestOneType_u32():
1c00bfc0:	1c000e8c 	pcaddu12i	$r12,116(0x74)
1c00bfc4:	0297c18c 	addi.w	$r12,$r12,1520(0x5f0)
1c00bfc8:	28800184 	ld.w	$r4,$r12,0
1c00bfcc:	02a04063 	addi.w	$r3,$r3,-2032(0x810)
1c00bfd0:	299fa076 	st.w	$r22,$r3,2024(0x7e8)
1c00bfd4:	299f9077 	st.w	$r23,$r3,2020(0x7e4)
1c00bfd8:	299f8078 	st.w	$r24,$r3,2016(0x7e0)
1c00bfdc:	299fb061 	st.w	$r1,$r3,2028(0x7ec)
1c00bfe0:	299f7079 	st.w	$r25,$r3,2012(0x7dc)
1c00bfe4:	299f607a 	st.w	$r26,$r3,2008(0x7d8)
1c00bfe8:	299f507b 	st.w	$r27,$r3,2004(0x7d4)
1c00bfec:	299f407c 	st.w	$r28,$r3,2000(0x7d0)
1c00bff0:	299f307d 	st.w	$r29,$r3,1996(0x7cc)
1c00bff4:	299f207e 	st.w	$r30,$r3,1992(0x7c8)
1c00bff8:	299f107f 	st.w	$r31,$r3,1988(0x7c4)
1c00bffc:	0281ec84 	addi.w	$r4,$r4,123(0x7b)
1c00c000:	02acc063 	addi.w	$r3,$r3,-1232(0xb30)
1c00c004:	5417ec00 	bl	6124(0x17ec) # 1c00d7f0 <srand>
1c00c008:	15fffff7 	lu12i.w	$r23,-1(0xfffff)
1c00c00c:	03b20006 	ori	$r6,$r0,0xc80
1c00c010:	0280406d 	addi.w	$r13,$r3,16(0x10)
1c00c014:	038e02e5 	ori	$r5,$r23,0x380
1c00c018:	001034c7 	add.w	$r7,$r6,$r13
1c00c01c:	001014f6 	add.w	$r22,$r7,$r5
1c00c020:	001502d8 	move	$r24,$r22
1c00c024:	028082d6 	addi.w	$r22,$r22,32(0x20)
1c00c028:	54178800 	bl	6024(0x1788) # 1c00d7b0 <rand>
1c00c02c:	29bf82c4 	st.w	$r4,$r22,-32(0xfe0)
1c00c030:	54178000 	bl	6016(0x1780) # 1c00d7b0 <rand>
1c00c034:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c00c038:	54177800 	bl	6008(0x1778) # 1c00d7b0 <rand>
1c00c03c:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00c040:	54177000 	bl	6000(0x1770) # 1c00d7b0 <rand>
1c00c044:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00c048:	54176800 	bl	5992(0x1768) # 1c00d7b0 <rand>
1c00c04c:	29bfc2c4 	st.w	$r4,$r22,-16(0xff0)
1c00c050:	54176000 	bl	5984(0x1760) # 1c00d7b0 <rand>
1c00c054:	29bfd2c4 	st.w	$r4,$r22,-12(0xff4)
1c00c058:	54175800 	bl	5976(0x1758) # 1c00d7b0 <rand>
1c00c05c:	29bfe2c4 	st.w	$r4,$r22,-8(0xff8)
1c00c060:	54175000 	bl	5968(0x1750) # 1c00d7b0 <rand>
1c00c064:	03b20008 	ori	$r8,$r0,0xc80
1c00c068:	02804069 	addi.w	$r9,$r3,16(0x10)
1c00c06c:	29bff2c4 	st.w	$r4,$r22,-4(0xffc)
1c00c070:	0010250a 	add.w	$r10,$r8,$r9
1c00c074:	5fffb2ca 	bne	$r22,$r10,-80(0x3ffb0) # 1c00c024 <TestOneType_u32+0x64>
1c00c078:	03b2000e 	ori	$r14,$r0,0xc80
1c00c07c:	0280406f 	addi.w	$r15,$r3,16(0x10)
1c00c080:	0280130c 	addi.w	$r12,$r24,4(0x4)
1c00c084:	00103dcb 	add.w	$r11,$r14,$r15
1c00c088:	00113171 	sub.w	$r17,$r11,$r12
1c00c08c:	02bff233 	addi.w	$r19,$r17,-4(0xffc)
1c00c090:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c00c094:	00448a7c 	srli.w	$r28,$r19,0x2
1c00c098:	15ffffe1 	lu12i.w	$r1,-1(0xfffff)
1c00c09c:	03b20014 	ori	$r20,$r0,0xc80
1c00c0a0:	02804079 	addi.w	$r25,$r3,16(0x10)
1c00c0a4:	0280079e 	addi.w	$r30,$r28,1(0x1)
1c00c0a8:	038e0032 	ori	$r18,$r1,0x380
1c00c0ac:	0010669a 	add.w	$r26,$r20,$r25
1c00c0b0:	03401fdf 	andi	$r31,$r30,0x7
1c00c0b4:	001503b0 	move	$r16,$r29
1c00c0b8:	00104b5b 	add.w	$r27,$r26,$r18
1c00c0bc:	5800a3e0 	beq	$r31,$r0,160(0xa0) # 1c00c15c <TestOneType_u32+0x19c>
1c00c0c0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00c0c4:	58007fe4 	beq	$r31,$r4,124(0x7c) # 1c00c140 <TestOneType_u32+0x180>
1c00c0c8:	02800817 	addi.w	$r23,$r0,2(0x2)
1c00c0cc:	58006bf7 	beq	$r31,$r23,104(0x68) # 1c00c134 <TestOneType_u32+0x174>
1c00c0d0:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00c0d4:	580057e5 	beq	$r31,$r5,84(0x54) # 1c00c128 <TestOneType_u32+0x168>
1c00c0d8:	02801006 	addi.w	$r6,$r0,4(0x4)
1c00c0dc:	58003fe6 	beq	$r31,$r6,60(0x3c) # 1c00c118 <TestOneType_u32+0x158>
1c00c0e0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00c0e4:	58002bed 	beq	$r31,$r13,40(0x28) # 1c00c10c <TestOneType_u32+0x14c>
1c00c0e8:	02801807 	addi.w	$r7,$r0,6(0x6)
1c00c0ec:	580017e7 	beq	$r31,$r7,20(0x14) # 1c00c100 <TestOneType_u32+0x140>
1c00c0f0:	28800198 	ld.w	$r24,$r12,0
1c00c0f4:	6c000b1d 	bgeu	$r24,$r29,8(0x8) # 1c00c0fc <TestOneType_u32+0x13c>
1c00c0f8:	00150310 	move	$r16,$r24
1c00c0fc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c100:	28800196 	ld.w	$r22,$r12,0
1c00c104:	680e3ad0 	bltu	$r22,$r16,3640(0xe38) # 1c00cf3c <TestOneType_u32+0xf7c>
1c00c108:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c10c:	28800188 	ld.w	$r8,$r12,0
1c00c110:	680e1d10 	bltu	$r8,$r16,3612(0xe1c) # 1c00cf2c <TestOneType_u32+0xf6c>
1c00c114:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c118:	28800189 	ld.w	$r9,$r12,0
1c00c11c:	6c000930 	bgeu	$r9,$r16,8(0x8) # 1c00c124 <TestOneType_u32+0x164>
1c00c120:	00150130 	move	$r16,$r9
1c00c124:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c128:	2880018a 	ld.w	$r10,$r12,0
1c00c12c:	680de950 	bltu	$r10,$r16,3560(0xde8) # 1c00cf14 <TestOneType_u32+0xf54>
1c00c130:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c134:	28800181 	ld.w	$r1,$r12,0
1c00c138:	680dcc30 	bltu	$r1,$r16,3532(0xdcc) # 1c00cf04 <TestOneType_u32+0xf44>
1c00c13c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c140:	2880018e 	ld.w	$r14,$r12,0
1c00c144:	680c69d0 	bltu	$r14,$r16,3176(0xc68) # 1c00cdac <TestOneType_u32+0xdec>
1c00c148:	03b2000b 	ori	$r11,$r0,0xc80
1c00c14c:	0280406f 	addi.w	$r15,$r3,16(0x10)
1c00c150:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c154:	00103d71 	add.w	$r17,$r11,$r15
1c00c158:	58005d91 	beq	$r12,$r17,92(0x5c) # 1c00c1b4 <TestOneType_u32+0x1f4>
1c00c15c:	28800192 	ld.w	$r18,$r12,0
1c00c160:	680ce650 	bltu	$r18,$r16,3300(0xce4) # 1c00ce44 <TestOneType_u32+0xe84>
1c00c164:	28801193 	ld.w	$r19,$r12,4(0x4)
1c00c168:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c16c:	680cca70 	bltu	$r19,$r16,3272(0xcc8) # 1c00ce34 <TestOneType_u32+0xe74>
1c00c170:	28801194 	ld.w	$r20,$r12,4(0x4)
1c00c174:	680cb290 	bltu	$r20,$r16,3248(0xcb0) # 1c00ce24 <TestOneType_u32+0xe64>
1c00c178:	28802199 	ld.w	$r25,$r12,8(0x8)
1c00c17c:	680c9b30 	bltu	$r25,$r16,3224(0xc98) # 1c00ce14 <TestOneType_u32+0xe54>
1c00c180:	2880319a 	ld.w	$r26,$r12,12(0xc)
1c00c184:	680c8350 	bltu	$r26,$r16,3200(0xc80) # 1c00ce04 <TestOneType_u32+0xe44>
1c00c188:	2880419c 	ld.w	$r28,$r12,16(0x10)
1c00c18c:	680c6b90 	bltu	$r28,$r16,3176(0xc68) # 1c00cdf4 <TestOneType_u32+0xe34>
1c00c190:	2880519e 	ld.w	$r30,$r12,20(0x14)
1c00c194:	680c53d0 	bltu	$r30,$r16,3152(0xc50) # 1c00cde4 <TestOneType_u32+0xe24>
1c00c198:	2880619f 	ld.w	$r31,$r12,24(0x18)
1c00c19c:	680c2ff0 	bltu	$r31,$r16,3116(0xc2c) # 1c00cdc8 <TestOneType_u32+0xe08>
1c00c1a0:	03b20004 	ori	$r4,$r0,0xc80
1c00c1a4:	02804077 	addi.w	$r23,$r3,16(0x10)
1c00c1a8:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c00c1ac:	00105c85 	add.w	$r5,$r4,$r23
1c00c1b0:	5fffad85 	bne	$r12,$r5,-84(0x3ffac) # 1c00c15c <TestOneType_u32+0x19c>
1c00c1b4:	03b20006 	ori	$r6,$r0,0xc80
1c00c1b8:	0280406d 	addi.w	$r13,$r3,16(0x10)
1c00c1bc:	0280136c 	addi.w	$r12,$r27,4(0x4)
1c00c1c0:	001034c7 	add.w	$r7,$r6,$r13
1c00c1c4:	001130f8 	sub.w	$r24,$r7,$r12
1c00c1c8:	02bff309 	addi.w	$r9,$r24,-4(0xffc)
1c00c1cc:	0044892f 	srli.w	$r15,$r9,0x2
1c00c1d0:	1c000e96 	pcaddu12i	$r22,116(0x74)
1c00c1d4:	029002d6 	addi.w	$r22,$r22,1024(0x400)
1c00c1d8:	15fffffb 	lu12i.w	$r27,-1(0xfffff)
1c00c1dc:	03b2000a 	ori	$r10,$r0,0xc80
1c00c1e0:	02804061 	addi.w	$r1,$r3,16(0x10)
1c00c1e4:	028005f2 	addi.w	$r18,$r15,1(0x1)
1c00c1e8:	038e0368 	ori	$r8,$r27,0x380
1c00c1ec:	0010054e 	add.w	$r14,$r10,$r1
1c00c1f0:	298002d0 	st.w	$r16,$r22,0
1c00c1f4:	03401e53 	andi	$r19,$r18,0x7
1c00c1f8:	001503b1 	move	$r17,$r29
1c00c1fc:	001021cb 	add.w	$r11,$r14,$r8
1c00c200:	5800a260 	beq	$r19,$r0,160(0xa0) # 1c00c2a0 <TestOneType_u32+0x2e0>
1c00c204:	02800414 	addi.w	$r20,$r0,1(0x1)
1c00c208:	58007e74 	beq	$r19,$r20,124(0x7c) # 1c00c284 <TestOneType_u32+0x2c4>
1c00c20c:	02800819 	addi.w	$r25,$r0,2(0x2)
1c00c210:	58006a79 	beq	$r19,$r25,104(0x68) # 1c00c278 <TestOneType_u32+0x2b8>
1c00c214:	02800c1a 	addi.w	$r26,$r0,3(0x3)
1c00c218:	5800567a 	beq	$r19,$r26,84(0x54) # 1c00c26c <TestOneType_u32+0x2ac>
1c00c21c:	0280101c 	addi.w	$r28,$r0,4(0x4)
1c00c220:	58003e7c 	beq	$r19,$r28,60(0x3c) # 1c00c25c <TestOneType_u32+0x29c>
1c00c224:	0280141e 	addi.w	$r30,$r0,5(0x5)
1c00c228:	58002a7e 	beq	$r19,$r30,40(0x28) # 1c00c250 <TestOneType_u32+0x290>
1c00c22c:	0280181f 	addi.w	$r31,$r0,6(0x6)
1c00c230:	5800167f 	beq	$r19,$r31,20(0x14) # 1c00c244 <TestOneType_u32+0x284>
1c00c234:	28800190 	ld.w	$r16,$r12,0
1c00c238:	6c000bb0 	bgeu	$r29,$r16,8(0x8) # 1c00c240 <TestOneType_u32+0x280>
1c00c23c:	00150211 	move	$r17,$r16
1c00c240:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c244:	28800184 	ld.w	$r4,$r12,0
1c00c248:	680cee24 	bltu	$r17,$r4,3308(0xcec) # 1c00cf34 <TestOneType_u32+0xf74>
1c00c24c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c250:	28800197 	ld.w	$r23,$r12,0
1c00c254:	680cd237 	bltu	$r17,$r23,3280(0xcd0) # 1c00cf24 <TestOneType_u32+0xf64>
1c00c258:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c25c:	28800185 	ld.w	$r5,$r12,0
1c00c260:	6c000a25 	bgeu	$r17,$r5,8(0x8) # 1c00c268 <TestOneType_u32+0x2a8>
1c00c264:	001500b1 	move	$r17,$r5
1c00c268:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c26c:	2880019b 	ld.w	$r27,$r12,0
1c00c270:	680cae3b 	bltu	$r17,$r27,3244(0xcac) # 1c00cf1c <TestOneType_u32+0xf5c>
1c00c274:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c278:	28800186 	ld.w	$r6,$r12,0
1c00c27c:	680c9226 	bltu	$r17,$r6,3216(0xc90) # 1c00cf0c <TestOneType_u32+0xf4c>
1c00c280:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c284:	2880018d 	ld.w	$r13,$r12,0
1c00c288:	680bd22d 	bltu	$r17,$r13,3024(0xbd0) # 1c00ce58 <TestOneType_u32+0xe98>
1c00c28c:	03b20007 	ori	$r7,$r0,0xc80
1c00c290:	02804078 	addi.w	$r24,$r3,16(0x10)
1c00c294:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c298:	001060e8 	add.w	$r8,$r7,$r24
1c00c29c:	58005d88 	beq	$r12,$r8,92(0x5c) # 1c00c2f8 <TestOneType_u32+0x338>
1c00c2a0:	28800189 	ld.w	$r9,$r12,0
1c00c2a4:	680c4e29 	bltu	$r17,$r9,3148(0xc4c) # 1c00cef0 <TestOneType_u32+0xf30>
1c00c2a8:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c00c2ac:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c2b0:	680c322a 	bltu	$r17,$r10,3120(0xc30) # 1c00cee0 <TestOneType_u32+0xf20>
1c00c2b4:	28801181 	ld.w	$r1,$r12,4(0x4)
1c00c2b8:	680c1a21 	bltu	$r17,$r1,3096(0xc18) # 1c00ced0 <TestOneType_u32+0xf10>
1c00c2bc:	2880218e 	ld.w	$r14,$r12,8(0x8)
1c00c2c0:	680c022e 	bltu	$r17,$r14,3072(0xc00) # 1c00cec0 <TestOneType_u32+0xf00>
1c00c2c4:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c00c2c8:	680bea2f 	bltu	$r17,$r15,3048(0xbe8) # 1c00ceb0 <TestOneType_u32+0xef0>
1c00c2cc:	28804192 	ld.w	$r18,$r12,16(0x10)
1c00c2d0:	680bd232 	bltu	$r17,$r18,3024(0xbd0) # 1c00cea0 <TestOneType_u32+0xee0>
1c00c2d4:	28805193 	ld.w	$r19,$r12,20(0x14)
1c00c2d8:	680bba33 	bltu	$r17,$r19,3000(0xbb8) # 1c00ce90 <TestOneType_u32+0xed0>
1c00c2dc:	28806194 	ld.w	$r20,$r12,24(0x18)
1c00c2e0:	680b9634 	bltu	$r17,$r20,2964(0xb94) # 1c00ce74 <TestOneType_u32+0xeb4>
1c00c2e4:	03b20019 	ori	$r25,$r0,0xc80
1c00c2e8:	0280407a 	addi.w	$r26,$r3,16(0x10)
1c00c2ec:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c00c2f0:	00106b3c 	add.w	$r28,$r25,$r26
1c00c2f4:	5fffad9c 	bne	$r12,$r28,-84(0x3ffac) # 1c00c2a0 <TestOneType_u32+0x2e0>
1c00c2f8:	0280117b 	addi.w	$r27,$r11,4(0x4)
1c00c2fc:	2880036b 	ld.w	$r11,$r27,0
1c00c300:	1c000e99 	pcaddu12i	$r25,116(0x74)
1c00c304:	028b3339 	addi.w	$r25,$r25,716(0x2cc)
1c00c308:	29800331 	st.w	$r17,$r25,0
1c00c30c:	001503b0 	move	$r16,$r29
1c00c310:	00150011 	move	$r17,$r0
1c00c314:	028c801e 	addi.w	$r30,$r0,800(0x320)
1c00c318:	6c000d7d 	bgeu	$r11,$r29,12(0xc) # 1c00c324 <TestOneType_u32+0x364>
1c00c31c:	02800411 	addi.w	$r17,$r0,1(0x1)
1c00c320:	00150170 	move	$r16,$r11
1c00c324:	02800817 	addi.w	$r23,$r0,2(0x2)
1c00c328:	02801365 	addi.w	$r5,$r27,4(0x4)
1c00c32c:	288000bf 	ld.w	$r31,$r5,0
1c00c330:	6c000ff0 	bgeu	$r31,$r16,12(0xc) # 1c00c33c <TestOneType_u32+0x37c>
1c00c334:	001502f1 	move	$r17,$r23
1c00c338:	001503f0 	move	$r16,$r31
1c00c33c:	288010a4 	ld.w	$r4,$r5,4(0x4)
1c00c340:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c00c344:	028010a5 	addi.w	$r5,$r5,4(0x4)
1c00c348:	6c000c90 	bgeu	$r4,$r16,12(0xc) # 1c00c354 <TestOneType_u32+0x394>
1c00c34c:	001502f1 	move	$r17,$r23
1c00c350:	00150090 	move	$r16,$r4
1c00c354:	288010a6 	ld.w	$r6,$r5,4(0x4)
1c00c358:	028006ed 	addi.w	$r13,$r23,1(0x1)
1c00c35c:	6c000cd0 	bgeu	$r6,$r16,12(0xc) # 1c00c368 <TestOneType_u32+0x3a8>
1c00c360:	001501b1 	move	$r17,$r13
1c00c364:	001500d0 	move	$r16,$r6
1c00c368:	288020a7 	ld.w	$r7,$r5,8(0x8)
1c00c36c:	02800af8 	addi.w	$r24,$r23,2(0x2)
1c00c370:	6c000cf0 	bgeu	$r7,$r16,12(0xc) # 1c00c37c <TestOneType_u32+0x3bc>
1c00c374:	00150311 	move	$r17,$r24
1c00c378:	001500f0 	move	$r16,$r7
1c00c37c:	288030a8 	ld.w	$r8,$r5,12(0xc)
1c00c380:	02800ee9 	addi.w	$r9,$r23,3(0x3)
1c00c384:	6c000d10 	bgeu	$r8,$r16,12(0xc) # 1c00c390 <TestOneType_u32+0x3d0>
1c00c388:	00150131 	move	$r17,$r9
1c00c38c:	00150110 	move	$r16,$r8
1c00c390:	288040aa 	ld.w	$r10,$r5,16(0x10)
1c00c394:	028012e1 	addi.w	$r1,$r23,4(0x4)
1c00c398:	6c000d50 	bgeu	$r10,$r16,12(0xc) # 1c00c3a4 <TestOneType_u32+0x3e4>
1c00c39c:	00150031 	move	$r17,$r1
1c00c3a0:	00150150 	move	$r16,$r10
1c00c3a4:	288050ae 	ld.w	$r14,$r5,20(0x14)
1c00c3a8:	028016ef 	addi.w	$r15,$r23,5(0x5)
1c00c3ac:	6c000dd0 	bgeu	$r14,$r16,12(0xc) # 1c00c3b8 <TestOneType_u32+0x3f8>
1c00c3b0:	001501f1 	move	$r17,$r15
1c00c3b4:	001501d0 	move	$r16,$r14
1c00c3b8:	288060b2 	ld.w	$r18,$r5,24(0x18)
1c00c3bc:	02801af3 	addi.w	$r19,$r23,6(0x6)
1c00c3c0:	6c000e50 	bgeu	$r18,$r16,12(0xc) # 1c00c3cc <TestOneType_u32+0x40c>
1c00c3c4:	00150271 	move	$r17,$r19
1c00c3c8:	00150250 	move	$r16,$r18
1c00c3cc:	288070ac 	ld.w	$r12,$r5,28(0x1c)
1c00c3d0:	02801ef4 	addi.w	$r20,$r23,7(0x7)
1c00c3d4:	6c000d90 	bgeu	$r12,$r16,12(0xc) # 1c00c3e0 <TestOneType_u32+0x420>
1c00c3d8:	00150291 	move	$r17,$r20
1c00c3dc:	00150190 	move	$r16,$r12
1c00c3e0:	288080ba 	ld.w	$r26,$r5,32(0x20)
1c00c3e4:	028022fc 	addi.w	$r28,$r23,8(0x8)
1c00c3e8:	6c000f50 	bgeu	$r26,$r16,12(0xc) # 1c00c3f4 <TestOneType_u32+0x434>
1c00c3ec:	00150391 	move	$r17,$r28
1c00c3f0:	00150350 	move	$r16,$r26
1c00c3f4:	288090ab 	ld.w	$r11,$r5,36(0x24)
1c00c3f8:	028026ff 	addi.w	$r31,$r23,9(0x9)
1c00c3fc:	6c000d70 	bgeu	$r11,$r16,12(0xc) # 1c00c408 <TestOneType_u32+0x448>
1c00c400:	001503f1 	move	$r17,$r31
1c00c404:	00150170 	move	$r16,$r11
1c00c408:	2880a0a4 	ld.w	$r4,$r5,40(0x28)
1c00c40c:	02802ae6 	addi.w	$r6,$r23,10(0xa)
1c00c410:	6c000c90 	bgeu	$r4,$r16,12(0xc) # 1c00c41c <TestOneType_u32+0x45c>
1c00c414:	001500d1 	move	$r17,$r6
1c00c418:	00150090 	move	$r16,$r4
1c00c41c:	2880b0ad 	ld.w	$r13,$r5,44(0x2c)
1c00c420:	02802ee7 	addi.w	$r7,$r23,11(0xb)
1c00c424:	6c000db0 	bgeu	$r13,$r16,12(0xc) # 1c00c430 <TestOneType_u32+0x470>
1c00c428:	001500f1 	move	$r17,$r7
1c00c42c:	001501b0 	move	$r16,$r13
1c00c430:	2880c0b8 	ld.w	$r24,$r5,48(0x30)
1c00c434:	028032e8 	addi.w	$r8,$r23,12(0xc)
1c00c438:	6c000f10 	bgeu	$r24,$r16,12(0xc) # 1c00c444 <TestOneType_u32+0x484>
1c00c43c:	00150111 	move	$r17,$r8
1c00c440:	00150310 	move	$r16,$r24
1c00c444:	028036f7 	addi.w	$r23,$r23,13(0xd)
1c00c448:	0280d0a5 	addi.w	$r5,$r5,52(0x34)
1c00c44c:	5ffee2fe 	bne	$r23,$r30,-288(0x3fee0) # 1c00c32c <TestOneType_u32+0x36c>
1c00c450:	2880037e 	ld.w	$r30,$r27,0
1c00c454:	1c000e9a 	pcaddu12i	$r26,116(0x74)
1c00c458:	0285d35a 	addi.w	$r26,$r26,372(0x174)
1c00c45c:	29800351 	st.w	$r17,$r26,0
1c00c460:	001503b0 	move	$r16,$r29
1c00c464:	00150012 	move	$r18,$r0
1c00c468:	028c8009 	addi.w	$r9,$r0,800(0x320)
1c00c46c:	6c000fbe 	bgeu	$r29,$r30,12(0xc) # 1c00c478 <TestOneType_u32+0x4b8>
1c00c470:	02800412 	addi.w	$r18,$r0,1(0x1)
1c00c474:	001503d0 	move	$r16,$r30
1c00c478:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c00c47c:	0280136f 	addi.w	$r15,$r27,4(0x4)
1c00c480:	288001ea 	ld.w	$r10,$r15,0
1c00c484:	6c000e0a 	bgeu	$r16,$r10,12(0xc) # 1c00c490 <TestOneType_u32+0x4d0>
1c00c488:	001501d2 	move	$r18,$r14
1c00c48c:	00150150 	move	$r16,$r10
1c00c490:	288011e1 	ld.w	$r1,$r15,4(0x4)
1c00c494:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c00c498:	028011ef 	addi.w	$r15,$r15,4(0x4)
1c00c49c:	6c000e01 	bgeu	$r16,$r1,12(0xc) # 1c00c4a8 <TestOneType_u32+0x4e8>
1c00c4a0:	001501d2 	move	$r18,$r14
1c00c4a4:	00150030 	move	$r16,$r1
1c00c4a8:	288011f3 	ld.w	$r19,$r15,4(0x4)
1c00c4ac:	028005cc 	addi.w	$r12,$r14,1(0x1)
1c00c4b0:	6c000e13 	bgeu	$r16,$r19,12(0xc) # 1c00c4bc <TestOneType_u32+0x4fc>
1c00c4b4:	00150192 	move	$r18,$r12
1c00c4b8:	00150270 	move	$r16,$r19
1c00c4bc:	288021fc 	ld.w	$r28,$r15,8(0x8)
1c00c4c0:	028009d4 	addi.w	$r20,$r14,2(0x2)
1c00c4c4:	6c000e1c 	bgeu	$r16,$r28,12(0xc) # 1c00c4d0 <TestOneType_u32+0x510>
1c00c4c8:	00150292 	move	$r18,$r20
1c00c4cc:	00150390 	move	$r16,$r28
1c00c4d0:	288031eb 	ld.w	$r11,$r15,12(0xc)
1c00c4d4:	02800ddf 	addi.w	$r31,$r14,3(0x3)
1c00c4d8:	6c000e0b 	bgeu	$r16,$r11,12(0xc) # 1c00c4e4 <TestOneType_u32+0x524>
1c00c4dc:	001503f2 	move	$r18,$r31
1c00c4e0:	00150170 	move	$r16,$r11
1c00c4e4:	288041e4 	ld.w	$r4,$r15,16(0x10)
1c00c4e8:	028011c6 	addi.w	$r6,$r14,4(0x4)
1c00c4ec:	6c000e04 	bgeu	$r16,$r4,12(0xc) # 1c00c4f8 <TestOneType_u32+0x538>
1c00c4f0:	001500d2 	move	$r18,$r6
1c00c4f4:	00150090 	move	$r16,$r4
1c00c4f8:	288051ed 	ld.w	$r13,$r15,20(0x14)
1c00c4fc:	028015c7 	addi.w	$r7,$r14,5(0x5)
1c00c500:	6c000e0d 	bgeu	$r16,$r13,12(0xc) # 1c00c50c <TestOneType_u32+0x54c>
1c00c504:	001500f2 	move	$r18,$r7
1c00c508:	001501b0 	move	$r16,$r13
1c00c50c:	288061f8 	ld.w	$r24,$r15,24(0x18)
1c00c510:	028019c8 	addi.w	$r8,$r14,6(0x6)
1c00c514:	6c000e18 	bgeu	$r16,$r24,12(0xc) # 1c00c520 <TestOneType_u32+0x560>
1c00c518:	00150112 	move	$r18,$r8
1c00c51c:	00150310 	move	$r16,$r24
1c00c520:	288071f1 	ld.w	$r17,$r15,28(0x1c)
1c00c524:	02801dd7 	addi.w	$r23,$r14,7(0x7)
1c00c528:	6c000e11 	bgeu	$r16,$r17,12(0xc) # 1c00c534 <TestOneType_u32+0x574>
1c00c52c:	001502f2 	move	$r18,$r23
1c00c530:	00150230 	move	$r16,$r17
1c00c534:	288081e5 	ld.w	$r5,$r15,32(0x20)
1c00c538:	028021de 	addi.w	$r30,$r14,8(0x8)
1c00c53c:	6c000e05 	bgeu	$r16,$r5,12(0xc) # 1c00c548 <TestOneType_u32+0x588>
1c00c540:	001503d2 	move	$r18,$r30
1c00c544:	001500b0 	move	$r16,$r5
1c00c548:	288091ea 	ld.w	$r10,$r15,36(0x24)
1c00c54c:	028025c1 	addi.w	$r1,$r14,9(0x9)
1c00c550:	6c000e0a 	bgeu	$r16,$r10,12(0xc) # 1c00c55c <TestOneType_u32+0x59c>
1c00c554:	00150032 	move	$r18,$r1
1c00c558:	00150150 	move	$r16,$r10
1c00c55c:	2880a1f3 	ld.w	$r19,$r15,40(0x28)
1c00c560:	028029cc 	addi.w	$r12,$r14,10(0xa)
1c00c564:	6c000e13 	bgeu	$r16,$r19,12(0xc) # 1c00c570 <TestOneType_u32+0x5b0>
1c00c568:	00150192 	move	$r18,$r12
1c00c56c:	00150270 	move	$r16,$r19
1c00c570:	2880b1fc 	ld.w	$r28,$r15,44(0x2c)
1c00c574:	02802dd4 	addi.w	$r20,$r14,11(0xb)
1c00c578:	6c000e1c 	bgeu	$r16,$r28,12(0xc) # 1c00c584 <TestOneType_u32+0x5c4>
1c00c57c:	00150292 	move	$r18,$r20
1c00c580:	00150390 	move	$r16,$r28
1c00c584:	2880c1eb 	ld.w	$r11,$r15,48(0x30)
1c00c588:	028031df 	addi.w	$r31,$r14,12(0xc)
1c00c58c:	6c000e0b 	bgeu	$r16,$r11,12(0xc) # 1c00c598 <TestOneType_u32+0x5d8>
1c00c590:	001503f2 	move	$r18,$r31
1c00c594:	00150170 	move	$r16,$r11
1c00c598:	028035ce 	addi.w	$r14,$r14,13(0xd)
1c00c59c:	0280d1ef 	addi.w	$r15,$r15,52(0x34)
1c00c5a0:	5ffee1c9 	bne	$r14,$r9,-288(0x3fee0) # 1c00c480 <TestOneType_u32+0x4c0>
1c00c5a4:	1c000e89 	pcaddu12i	$r9,116(0x74)
1c00c5a8:	02808129 	addi.w	$r9,$r9,32(0x20)
1c00c5ac:	1c000e97 	pcaddu12i	$r23,116(0x74)
1c00c5b0:	028022f7 	addi.w	$r23,$r23,8(0x8)
1c00c5b4:	29800132 	st.w	$r18,$r9,0
1c00c5b8:	54118800 	bl	4488(0x1188) # 1c00d740 <get_clock>
1c00c5bc:	288002f1 	ld.w	$r17,$r23,0
1c00c5c0:	1c000e9c 	pcaddu12i	$r28,116(0x74)
1c00c5c4:	2880039c 	ld.w	$r28,$r28,0
1c00c5c8:	29800384 	st.w	$r4,$r28,0
1c00c5cc:	00150018 	move	$r24,$r0
1c00c5d0:	64017011 	bge	$r0,$r17,368(0x170) # 1c00c740 <TestOneType_u32+0x780>
1c00c5d4:	03b20004 	ori	$r4,$r0,0xc80
1c00c5d8:	02804066 	addi.w	$r6,$r3,16(0x10)
1c00c5dc:	0015001f 	move	$r31,$r0
1c00c5e0:	0010189e 	add.w	$r30,$r4,$r6
1c00c5e4:	00116fcd 	sub.w	$r13,$r30,$r27
1c00c5e8:	02bff1a7 	addi.w	$r7,$r13,-4(0xffc)
1c00c5ec:	004488e8 	srli.w	$r8,$r7,0x2
1c00c5f0:	02800505 	addi.w	$r5,$r8,1(0x1)
1c00c5f4:	03401caa 	andi	$r10,$r5,0x7
1c00c5f8:	0015036c 	move	$r12,$r27
1c00c5fc:	001503a6 	move	$r6,$r29
1c00c600:	5800a940 	beq	$r10,$r0,168(0xa8) # 1c00c6a8 <TestOneType_u32+0x6e8>
1c00c604:	02800401 	addi.w	$r1,$r0,1(0x1)
1c00c608:	58008d41 	beq	$r10,$r1,140(0x8c) # 1c00c694 <TestOneType_u32+0x6d4>
1c00c60c:	02800813 	addi.w	$r19,$r0,2(0x2)
1c00c610:	58007553 	beq	$r10,$r19,116(0x74) # 1c00c684 <TestOneType_u32+0x6c4>
1c00c614:	02800c14 	addi.w	$r20,$r0,3(0x3)
1c00c618:	58005d54 	beq	$r10,$r20,92(0x5c) # 1c00c674 <TestOneType_u32+0x6b4>
1c00c61c:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c00c620:	5800454b 	beq	$r10,$r11,68(0x44) # 1c00c664 <TestOneType_u32+0x6a4>
1c00c624:	02801412 	addi.w	$r18,$r0,5(0x5)
1c00c628:	58002d52 	beq	$r10,$r18,44(0x2c) # 1c00c654 <TestOneType_u32+0x694>
1c00c62c:	02801810 	addi.w	$r16,$r0,6(0x6)
1c00c630:	58001550 	beq	$r10,$r16,20(0x14) # 1c00c644 <TestOneType_u32+0x684>
1c00c634:	2880036c 	ld.w	$r12,$r27,0
1c00c638:	6c00099d 	bgeu	$r12,$r29,8(0x8) # 1c00c640 <TestOneType_u32+0x680>
1c00c63c:	00150186 	move	$r6,$r12
1c00c640:	0280136c 	addi.w	$r12,$r27,4(0x4)
1c00c644:	2880018e 	ld.w	$r14,$r12,0
1c00c648:	6c0009c6 	bgeu	$r14,$r6,8(0x8) # 1c00c650 <TestOneType_u32+0x690>
1c00c64c:	001501c6 	move	$r6,$r14
1c00c650:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c654:	2880018f 	ld.w	$r15,$r12,0
1c00c658:	6c0009e6 	bgeu	$r15,$r6,8(0x8) # 1c00c660 <TestOneType_u32+0x6a0>
1c00c65c:	001501e6 	move	$r6,$r15
1c00c660:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c664:	28800189 	ld.w	$r9,$r12,0
1c00c668:	6c000926 	bgeu	$r9,$r6,8(0x8) # 1c00c670 <TestOneType_u32+0x6b0>
1c00c66c:	00150126 	move	$r6,$r9
1c00c670:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c674:	28800184 	ld.w	$r4,$r12,0
1c00c678:	6c000886 	bgeu	$r4,$r6,8(0x8) # 1c00c680 <TestOneType_u32+0x6c0>
1c00c67c:	00150086 	move	$r6,$r4
1c00c680:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c684:	2880018d 	ld.w	$r13,$r12,0
1c00c688:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1c00c690 <TestOneType_u32+0x6d0>
1c00c68c:	001501a6 	move	$r6,$r13
1c00c690:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c694:	28800187 	ld.w	$r7,$r12,0
1c00c698:	6c0008e6 	bgeu	$r7,$r6,8(0x8) # 1c00c6a0 <TestOneType_u32+0x6e0>
1c00c69c:	001500e6 	move	$r6,$r7
1c00c6a0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c6a4:	580073cc 	beq	$r30,$r12,112(0x70) # 1c00c714 <TestOneType_u32+0x754>
1c00c6a8:	28800188 	ld.w	$r8,$r12,0
1c00c6ac:	6c000906 	bgeu	$r8,$r6,8(0x8) # 1c00c6b4 <TestOneType_u32+0x6f4>
1c00c6b0:	00150106 	move	$r6,$r8
1c00c6b4:	28801185 	ld.w	$r5,$r12,4(0x4)
1c00c6b8:	0280118a 	addi.w	$r10,$r12,4(0x4)
1c00c6bc:	6c0008a6 	bgeu	$r5,$r6,8(0x8) # 1c00c6c4 <TestOneType_u32+0x704>
1c00c6c0:	001500a6 	move	$r6,$r5
1c00c6c4:	28801141 	ld.w	$r1,$r10,4(0x4)
1c00c6c8:	6c000826 	bgeu	$r1,$r6,8(0x8) # 1c00c6d0 <TestOneType_u32+0x710>
1c00c6cc:	00150026 	move	$r6,$r1
1c00c6d0:	28802153 	ld.w	$r19,$r10,8(0x8)
1c00c6d4:	6c000a66 	bgeu	$r19,$r6,8(0x8) # 1c00c6dc <TestOneType_u32+0x71c>
1c00c6d8:	00150266 	move	$r6,$r19
1c00c6dc:	28803154 	ld.w	$r20,$r10,12(0xc)
1c00c6e0:	6c000a86 	bgeu	$r20,$r6,8(0x8) # 1c00c6e8 <TestOneType_u32+0x728>
1c00c6e4:	00150286 	move	$r6,$r20
1c00c6e8:	2880414b 	ld.w	$r11,$r10,16(0x10)
1c00c6ec:	6c000966 	bgeu	$r11,$r6,8(0x8) # 1c00c6f4 <TestOneType_u32+0x734>
1c00c6f0:	00150166 	move	$r6,$r11
1c00c6f4:	28805152 	ld.w	$r18,$r10,20(0x14)
1c00c6f8:	6c000a46 	bgeu	$r18,$r6,8(0x8) # 1c00c700 <TestOneType_u32+0x740>
1c00c6fc:	00150246 	move	$r6,$r18
1c00c700:	28806150 	ld.w	$r16,$r10,24(0x18)
1c00c704:	6c000a06 	bgeu	$r16,$r6,8(0x8) # 1c00c70c <TestOneType_u32+0x74c>
1c00c708:	00150206 	move	$r6,$r16
1c00c70c:	0280714c 	addi.w	$r12,$r10,28(0x1c)
1c00c710:	5fff9bcc 	bne	$r30,$r12,-104(0x3ff98) # 1c00c6a8 <TestOneType_u32+0x6e8>
1c00c714:	288002c7 	ld.w	$r7,$r22,0
1c00c718:	580678e6 	beq	$r7,$r6,1656(0x678) # 1c00cd90 <TestOneType_u32+0xdd0>
1c00c71c:	1c000e85 	pcaddu12i	$r5,116(0x74)
1c00c720:	02b000a5 	addi.w	$r5,$r5,-1024(0xc00)
1c00c724:	1c000e84 	pcaddu12i	$r4,116(0x74)
1c00c728:	02a42084 	addi.w	$r4,$r4,-1784(0x908)
1c00c72c:	540b0400 	bl	2820(0xb04) # 1c00d230 <printf>
1c00c730:	288002f1 	ld.w	$r17,$r23,0
1c00c734:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00c738:	02800718 	addi.w	$r24,$r24,1(0x1)
1c00c73c:	63feabf1 	blt	$r31,$r17,-344(0x3fea8) # 1c00c5e4 <TestOneType_u32+0x624>
1c00c740:	54100000 	bl	4096(0x1000) # 1c00d740 <get_clock>
1c00c744:	2880038f 	ld.w	$r15,$r28,0
1c00c748:	00150096 	move	$r22,$r4
1c00c74c:	14001e86 	lu12i.w	$r6,244(0xf4)
1c00c750:	038900c9 	ori	$r9,$r6,0x240
1c00c754:	00113ec7 	sub.w	$r7,$r22,$r15
1c00c758:	1c000e8e 	pcaddu12i	$r14,116(0x74)
1c00c75c:	28b991ce 	ld.w	$r14,$r14,-412(0xe64)
1c00c760:	002124ed 	div.wu	$r13,$r7,$r9
1c00c764:	5c000920 	bne	$r9,$r0,8(0x8) # 1c00c76c <TestOneType_u32+0x7ac>
1c00c768:	002a0007 	break	0x7
1c00c76c:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00c770:	1c000e85 	pcaddu12i	$r5,116(0x74)
1c00c774:	02aeb0a5 	addi.w	$r5,$r5,-1108(0xbac)
1c00c778:	001501a7 	move	$r7,$r13
1c00c77c:	1c000e84 	pcaddu12i	$r4,116(0x74)
1c00c780:	02a36084 	addi.w	$r4,$r4,-1832(0x8d8)
1c00c784:	298001d6 	st.w	$r22,$r14,0
1c00c788:	540aa800 	bl	2728(0xaa8) # 1c00d230 <printf>
1c00c78c:	540fb400 	bl	4020(0xfb4) # 1c00d740 <get_clock>
1c00c790:	288002f2 	ld.w	$r18,$r23,0
1c00c794:	29800384 	st.w	$r4,$r28,0
1c00c798:	64017812 	bge	$r0,$r18,376(0x178) # 1c00c910 <TestOneType_u32+0x950>
1c00c79c:	03b20004 	ori	$r4,$r0,0xc80
1c00c7a0:	02804068 	addi.w	$r8,$r3,16(0x10)
1c00c7a4:	00150016 	move	$r22,$r0
1c00c7a8:	0015001e 	move	$r30,$r0
1c00c7ac:	0010209f 	add.w	$r31,$r4,$r8
1c00c7b0:	00116fe5 	sub.w	$r5,$r31,$r27
1c00c7b4:	02bff0aa 	addi.w	$r10,$r5,-4(0xffc)
1c00c7b8:	00448941 	srli.w	$r1,$r10,0x2
1c00c7bc:	02800433 	addi.w	$r19,$r1,1(0x1)
1c00c7c0:	03401e74 	andi	$r20,$r19,0x7
1c00c7c4:	0015036c 	move	$r12,$r27
1c00c7c8:	001503a6 	move	$r6,$r29
1c00c7cc:	5800aa80 	beq	$r20,$r0,168(0xa8) # 1c00c874 <TestOneType_u32+0x8b4>
1c00c7d0:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c00c7d4:	58008e8b 	beq	$r20,$r11,140(0x8c) # 1c00c860 <TestOneType_u32+0x8a0>
1c00c7d8:	02800810 	addi.w	$r16,$r0,2(0x2)
1c00c7dc:	58007690 	beq	$r20,$r16,116(0x74) # 1c00c850 <TestOneType_u32+0x890>
1c00c7e0:	02800c11 	addi.w	$r17,$r0,3(0x3)
1c00c7e4:	58005e91 	beq	$r20,$r17,92(0x5c) # 1c00c840 <TestOneType_u32+0x880>
1c00c7e8:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c00c7ec:	5800468f 	beq	$r20,$r15,68(0x44) # 1c00c830 <TestOneType_u32+0x870>
1c00c7f0:	02801409 	addi.w	$r9,$r0,5(0x5)
1c00c7f4:	58002e89 	beq	$r20,$r9,44(0x2c) # 1c00c820 <TestOneType_u32+0x860>
1c00c7f8:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c00c7fc:	5800168e 	beq	$r20,$r14,20(0x14) # 1c00c810 <TestOneType_u32+0x850>
1c00c800:	2880036c 	ld.w	$r12,$r27,0
1c00c804:	6c000bac 	bgeu	$r29,$r12,8(0x8) # 1c00c80c <TestOneType_u32+0x84c>
1c00c808:	00150186 	move	$r6,$r12
1c00c80c:	0280136c 	addi.w	$r12,$r27,4(0x4)
1c00c810:	28800187 	ld.w	$r7,$r12,0
1c00c814:	6c0008c7 	bgeu	$r6,$r7,8(0x8) # 1c00c81c <TestOneType_u32+0x85c>
1c00c818:	001500e6 	move	$r6,$r7
1c00c81c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c820:	2880018d 	ld.w	$r13,$r12,0
1c00c824:	6c0008cd 	bgeu	$r6,$r13,8(0x8) # 1c00c82c <TestOneType_u32+0x86c>
1c00c828:	001501a6 	move	$r6,$r13
1c00c82c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c830:	28800184 	ld.w	$r4,$r12,0
1c00c834:	6c0008c4 	bgeu	$r6,$r4,8(0x8) # 1c00c83c <TestOneType_u32+0x87c>
1c00c838:	00150086 	move	$r6,$r4
1c00c83c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c840:	28800188 	ld.w	$r8,$r12,0
1c00c844:	6c0008c8 	bgeu	$r6,$r8,8(0x8) # 1c00c84c <TestOneType_u32+0x88c>
1c00c848:	00150106 	move	$r6,$r8
1c00c84c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c850:	28800185 	ld.w	$r5,$r12,0
1c00c854:	6c0008c5 	bgeu	$r6,$r5,8(0x8) # 1c00c85c <TestOneType_u32+0x89c>
1c00c858:	001500a6 	move	$r6,$r5
1c00c85c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c860:	2880018a 	ld.w	$r10,$r12,0
1c00c864:	6c0008ca 	bgeu	$r6,$r10,8(0x8) # 1c00c86c <TestOneType_u32+0x8ac>
1c00c868:	00150146 	move	$r6,$r10
1c00c86c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00c870:	5800719f 	beq	$r12,$r31,112(0x70) # 1c00c8e0 <TestOneType_u32+0x920>
1c00c874:	28800181 	ld.w	$r1,$r12,0
1c00c878:	6c0008c1 	bgeu	$r6,$r1,8(0x8) # 1c00c880 <TestOneType_u32+0x8c0>
1c00c87c:	00150026 	move	$r6,$r1
1c00c880:	28801193 	ld.w	$r19,$r12,4(0x4)
1c00c884:	02801194 	addi.w	$r20,$r12,4(0x4)
1c00c888:	6c0008d3 	bgeu	$r6,$r19,8(0x8) # 1c00c890 <TestOneType_u32+0x8d0>
1c00c88c:	00150266 	move	$r6,$r19
1c00c890:	2880128b 	ld.w	$r11,$r20,4(0x4)
1c00c894:	6c0008cb 	bgeu	$r6,$r11,8(0x8) # 1c00c89c <TestOneType_u32+0x8dc>
1c00c898:	00150166 	move	$r6,$r11
1c00c89c:	28802290 	ld.w	$r16,$r20,8(0x8)
1c00c8a0:	6c0008d0 	bgeu	$r6,$r16,8(0x8) # 1c00c8a8 <TestOneType_u32+0x8e8>
1c00c8a4:	00150206 	move	$r6,$r16
1c00c8a8:	28803291 	ld.w	$r17,$r20,12(0xc)
1c00c8ac:	6c0008d1 	bgeu	$r6,$r17,8(0x8) # 1c00c8b4 <TestOneType_u32+0x8f4>
1c00c8b0:	00150226 	move	$r6,$r17
1c00c8b4:	2880428f 	ld.w	$r15,$r20,16(0x10)
1c00c8b8:	6c0008cf 	bgeu	$r6,$r15,8(0x8) # 1c00c8c0 <TestOneType_u32+0x900>
1c00c8bc:	001501e6 	move	$r6,$r15
1c00c8c0:	28805289 	ld.w	$r9,$r20,20(0x14)
1c00c8c4:	6c0008c9 	bgeu	$r6,$r9,8(0x8) # 1c00c8cc <TestOneType_u32+0x90c>
1c00c8c8:	00150126 	move	$r6,$r9
1c00c8cc:	2880628e 	ld.w	$r14,$r20,24(0x18)
1c00c8d0:	6c0008ce 	bgeu	$r6,$r14,8(0x8) # 1c00c8d8 <TestOneType_u32+0x918>
1c00c8d4:	001501c6 	move	$r6,$r14
1c00c8d8:	0280728c 	addi.w	$r12,$r20,28(0x1c)
1c00c8dc:	5fff999f 	bne	$r12,$r31,-104(0x3ff98) # 1c00c874 <TestOneType_u32+0x8b4>
1c00c8e0:	28800327 	ld.w	$r7,$r25,0
1c00c8e4:	5804bce6 	beq	$r7,$r6,1212(0x4bc) # 1c00cda0 <TestOneType_u32+0xde0>
1c00c8e8:	1c000e85 	pcaddu12i	$r5,116(0x74)
1c00c8ec:	02a960a5 	addi.w	$r5,$r5,-1448(0xa58)
1c00c8f0:	1c000e64 	pcaddu12i	$r4,115(0x73)
1c00c8f4:	029cf084 	addi.w	$r4,$r4,1852(0x73c)
1c00c8f8:	54093800 	bl	2360(0x938) # 1c00d230 <printf>
1c00c8fc:	288002f2 	ld.w	$r18,$r23,0
1c00c900:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00c904:	028007de 	addi.w	$r30,$r30,1(0x1)
1c00c908:	63feaad2 	blt	$r22,$r18,-344(0x3fea8) # 1c00c7b0 <TestOneType_u32+0x7f0>
1c00c90c:	00107b18 	add.w	$r24,$r24,$r30
1c00c910:	540e3000 	bl	3632(0xe30) # 1c00d740 <get_clock>
1c00c914:	2880038d 	ld.w	$r13,$r28,0
1c00c918:	00150088 	move	$r8,$r4
1c00c91c:	14001e99 	lu12i.w	$r25,244(0xf4)
1c00c920:	03890327 	ori	$r7,$r25,0x240
1c00c924:	00113513 	sub.w	$r19,$r8,$r13
1c00c928:	1c000e8a 	pcaddu12i	$r10,116(0x74)
1c00c92c:	28b2514a 	ld.w	$r10,$r10,-876(0xc94)
1c00c930:	00211e74 	div.wu	$r20,$r19,$r7
1c00c934:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c00c93c <TestOneType_u32+0x97c>
1c00c938:	002a0007 	break	0x7
1c00c93c:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00c940:	1c000e85 	pcaddu12i	$r5,116(0x74)
1c00c944:	02a800a5 	addi.w	$r5,$r5,-1536(0xa00)
1c00c948:	00150287 	move	$r7,$r20
1c00c94c:	1c000e64 	pcaddu12i	$r4,115(0x73)
1c00c950:	029c2084 	addi.w	$r4,$r4,1800(0x708)
1c00c954:	29800148 	st.w	$r8,$r10,0
1c00c958:	5408d800 	bl	2264(0x8d8) # 1c00d230 <printf>
1c00c95c:	288002ee 	ld.w	$r14,$r23,0
1c00c960:	02801406 	addi.w	$r6,$r0,5(0x5)
1c00c964:	00150016 	move	$r22,$r0
1c00c968:	002019c5 	div.w	$r5,$r14,$r6
1c00c96c:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c00c974 <TestOneType_u32+0x9b4>
1c00c970:	002a0007 	break	0x7
1c00c974:	2980306e 	st.w	$r14,$r3,12(0xc)
1c00c978:	298002e5 	st.w	$r5,$r23,0
1c00c97c:	540dc400 	bl	3524(0xdc4) # 1c00d740 <get_clock>
1c00c980:	288002f2 	ld.w	$r18,$r23,0
1c00c984:	29800384 	st.w	$r4,$r28,0
1c00c988:	028c8019 	addi.w	$r25,$r0,800(0x320)
1c00c98c:	1c000e9f 	pcaddu12i	$r31,116(0x74)
1c00c990:	02a763ff 	addi.w	$r31,$r31,-1576(0x9d8)
1c00c994:	1c000e7e 	pcaddu12i	$r30,115(0x73)
1c00c998:	0299b3de 	addi.w	$r30,$r30,1644(0x66c)
1c00c99c:	64016812 	bge	$r0,$r18,360(0x168) # 1c00cb04 <TestOneType_u32+0xb44>
1c00c9a0:	28800361 	ld.w	$r1,$r27,0
1c00c9a4:	001503ac 	move	$r12,$r29
1c00c9a8:	00150006 	move	$r6,$r0
1c00c9ac:	6c000c3d 	bgeu	$r1,$r29,12(0xc) # 1c00c9b8 <TestOneType_u32+0x9f8>
1c00c9b0:	0015002c 	move	$r12,$r1
1c00c9b4:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00c9b8:	02800810 	addi.w	$r16,$r0,2(0x2)
1c00c9bc:	0280136f 	addi.w	$r15,$r27,4(0x4)
1c00c9c0:	288001eb 	ld.w	$r11,$r15,0
1c00c9c4:	6c000d6c 	bgeu	$r11,$r12,12(0xc) # 1c00c9d0 <TestOneType_u32+0xa10>
1c00c9c8:	0015016c 	move	$r12,$r11
1c00c9cc:	00150206 	move	$r6,$r16
1c00c9d0:	288011f1 	ld.w	$r17,$r15,4(0x4)
1c00c9d4:	02800610 	addi.w	$r16,$r16,1(0x1)
1c00c9d8:	028011ef 	addi.w	$r15,$r15,4(0x4)
1c00c9dc:	6c000e2c 	bgeu	$r17,$r12,12(0xc) # 1c00c9e8 <TestOneType_u32+0xa28>
1c00c9e0:	0015022c 	move	$r12,$r17
1c00c9e4:	00150206 	move	$r6,$r16
1c00c9e8:	288011e9 	ld.w	$r9,$r15,4(0x4)
1c00c9ec:	02800608 	addi.w	$r8,$r16,1(0x1)
1c00c9f0:	6c000d2c 	bgeu	$r9,$r12,12(0xc) # 1c00c9fc <TestOneType_u32+0xa3c>
1c00c9f4:	0015012c 	move	$r12,$r9
1c00c9f8:	00150106 	move	$r6,$r8
1c00c9fc:	288021ed 	ld.w	$r13,$r15,8(0x8)
1c00ca00:	02800a07 	addi.w	$r7,$r16,2(0x2)
1c00ca04:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c00ca10 <TestOneType_u32+0xa50>
1c00ca08:	001501ac 	move	$r12,$r13
1c00ca0c:	001500e6 	move	$r6,$r7
1c00ca10:	288031ea 	ld.w	$r10,$r15,12(0xc)
1c00ca14:	02800e13 	addi.w	$r19,$r16,3(0x3)
1c00ca18:	6c000d4c 	bgeu	$r10,$r12,12(0xc) # 1c00ca24 <TestOneType_u32+0xa64>
1c00ca1c:	0015014c 	move	$r12,$r10
1c00ca20:	00150266 	move	$r6,$r19
1c00ca24:	288041ee 	ld.w	$r14,$r15,16(0x10)
1c00ca28:	02801214 	addi.w	$r20,$r16,4(0x4)
1c00ca2c:	6c000dcc 	bgeu	$r14,$r12,12(0xc) # 1c00ca38 <TestOneType_u32+0xa78>
1c00ca30:	001501cc 	move	$r12,$r14
1c00ca34:	00150286 	move	$r6,$r20
1c00ca38:	288051e4 	ld.w	$r4,$r15,20(0x14)
1c00ca3c:	02801605 	addi.w	$r5,$r16,5(0x5)
1c00ca40:	6c000c8c 	bgeu	$r4,$r12,12(0xc) # 1c00ca4c <TestOneType_u32+0xa8c>
1c00ca44:	0015008c 	move	$r12,$r4
1c00ca48:	001500a6 	move	$r6,$r5
1c00ca4c:	288061e1 	ld.w	$r1,$r15,24(0x18)
1c00ca50:	02801a0b 	addi.w	$r11,$r16,6(0x6)
1c00ca54:	6c000c2c 	bgeu	$r1,$r12,12(0xc) # 1c00ca60 <TestOneType_u32+0xaa0>
1c00ca58:	0015002c 	move	$r12,$r1
1c00ca5c:	00150166 	move	$r6,$r11
1c00ca60:	288071f1 	ld.w	$r17,$r15,28(0x1c)
1c00ca64:	02801e09 	addi.w	$r9,$r16,7(0x7)
1c00ca68:	6c000e2c 	bgeu	$r17,$r12,12(0xc) # 1c00ca74 <TestOneType_u32+0xab4>
1c00ca6c:	0015022c 	move	$r12,$r17
1c00ca70:	00150126 	move	$r6,$r9
1c00ca74:	288081e8 	ld.w	$r8,$r15,32(0x20)
1c00ca78:	0280220d 	addi.w	$r13,$r16,8(0x8)
1c00ca7c:	6c000d0c 	bgeu	$r8,$r12,12(0xc) # 1c00ca88 <TestOneType_u32+0xac8>
1c00ca80:	0015010c 	move	$r12,$r8
1c00ca84:	001501a6 	move	$r6,$r13
1c00ca88:	288091e7 	ld.w	$r7,$r15,36(0x24)
1c00ca8c:	0280260a 	addi.w	$r10,$r16,9(0x9)
1c00ca90:	6c000cec 	bgeu	$r7,$r12,12(0xc) # 1c00ca9c <TestOneType_u32+0xadc>
1c00ca94:	001500ec 	move	$r12,$r7
1c00ca98:	00150146 	move	$r6,$r10
1c00ca9c:	2880a1f3 	ld.w	$r19,$r15,40(0x28)
1c00caa0:	02802a0e 	addi.w	$r14,$r16,10(0xa)
1c00caa4:	6c000e6c 	bgeu	$r19,$r12,12(0xc) # 1c00cab0 <TestOneType_u32+0xaf0>
1c00caa8:	0015026c 	move	$r12,$r19
1c00caac:	001501c6 	move	$r6,$r14
1c00cab0:	2880b1e4 	ld.w	$r4,$r15,44(0x2c)
1c00cab4:	02802e14 	addi.w	$r20,$r16,11(0xb)
1c00cab8:	6c000c8c 	bgeu	$r4,$r12,12(0xc) # 1c00cac4 <TestOneType_u32+0xb04>
1c00cabc:	0015008c 	move	$r12,$r4
1c00cac0:	00150286 	move	$r6,$r20
1c00cac4:	2880c1e5 	ld.w	$r5,$r15,48(0x30)
1c00cac8:	02803201 	addi.w	$r1,$r16,12(0xc)
1c00cacc:	6c000cac 	bgeu	$r5,$r12,12(0xc) # 1c00cad8 <TestOneType_u32+0xb18>
1c00cad0:	001500ac 	move	$r12,$r5
1c00cad4:	00150026 	move	$r6,$r1
1c00cad8:	02803610 	addi.w	$r16,$r16,13(0xd)
1c00cadc:	0280d1ef 	addi.w	$r15,$r15,52(0x34)
1c00cae0:	5ffee219 	bne	$r16,$r25,-288(0x3fee0) # 1c00c9c0 <TestOneType_u32+0xa00>
1c00cae4:	28800347 	ld.w	$r7,$r26,0
1c00cae8:	580298e6 	beq	$r7,$r6,664(0x298) # 1c00cd80 <TestOneType_u32+0xdc0>
1c00caec:	001503e5 	move	$r5,$r31
1c00caf0:	001503c4 	move	$r4,$r30
1c00caf4:	54073c00 	bl	1852(0x73c) # 1c00d230 <printf>
1c00caf8:	288002f2 	ld.w	$r18,$r23,0
1c00cafc:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00cb00:	63fea2d2 	blt	$r22,$r18,-352(0x3fea0) # 1c00c9a0 <TestOneType_u32+0x9e0>
1c00cb04:	540c3c00 	bl	3132(0xc3c) # 1c00d740 <get_clock>
1c00cb08:	2880038b 	ld.w	$r11,$r28,0
1c00cb0c:	0015009a 	move	$r26,$r4
1c00cb10:	14001e86 	lu12i.w	$r6,244(0xf4)
1c00cb14:	038900d1 	ori	$r17,$r6,0x240
1c00cb18:	00112f48 	sub.w	$r8,$r26,$r11
1c00cb1c:	1c000e89 	pcaddu12i	$r9,116(0x74)
1c00cb20:	28aa8129 	ld.w	$r9,$r9,-1376(0xaa0)
1c00cb24:	00214507 	div.wu	$r7,$r8,$r17
1c00cb28:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c00cb30 <TestOneType_u32+0xb70>
1c00cb2c:	002a0007 	break	0x7
1c00cb30:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00cb34:	1c000e85 	pcaddu12i	$r5,116(0x74)
1c00cb38:	02a0c0a5 	addi.w	$r5,$r5,-2000(0x830)
1c00cb3c:	1c000e64 	pcaddu12i	$r4,115(0x73)
1c00cb40:	02946084 	addi.w	$r4,$r4,1304(0x518)
1c00cb44:	2980013a 	st.w	$r26,$r9,0
1c00cb48:	5406e800 	bl	1768(0x6e8) # 1c00d230 <printf>
1c00cb4c:	540bf400 	bl	3060(0xbf4) # 1c00d740 <get_clock>
1c00cb50:	288002f1 	ld.w	$r17,$r23,0
1c00cb54:	29800384 	st.w	$r4,$r28,0
1c00cb58:	0015001f 	move	$r31,$r0
1c00cb5c:	028c8019 	addi.w	$r25,$r0,800(0x320)
1c00cb60:	1c000e9e 	pcaddu12i	$r30,116(0x74)
1c00cb64:	02a0a3de 	addi.w	$r30,$r30,-2008(0x828)
1c00cb68:	1c000e7a 	pcaddu12i	$r26,115(0x73)
1c00cb6c:	0292635a 	addi.w	$r26,$r26,1176(0x498)
1c00cb70:	64017011 	bge	$r0,$r17,368(0x170) # 1c00cce0 <TestOneType_u32+0xd20>
1c00cb74:	2880036d 	ld.w	$r13,$r27,0
1c00cb78:	001503ac 	move	$r12,$r29
1c00cb7c:	00150006 	move	$r6,$r0
1c00cb80:	6c000fad 	bgeu	$r29,$r13,12(0xc) # 1c00cb8c <TestOneType_u32+0xbcc>
1c00cb84:	001501ac 	move	$r12,$r13
1c00cb88:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00cb8c:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c00cb90:	02801364 	addi.w	$r4,$r27,4(0x4)
1c00cb94:	2880008a 	ld.w	$r10,$r4,0
1c00cb98:	6c000d8a 	bgeu	$r12,$r10,12(0xc) # 1c00cba4 <TestOneType_u32+0xbe4>
1c00cb9c:	0015014c 	move	$r12,$r10
1c00cba0:	001501c6 	move	$r6,$r14
1c00cba4:	28801093 	ld.w	$r19,$r4,4(0x4)
1c00cba8:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c00cbac:	02801084 	addi.w	$r4,$r4,4(0x4)
1c00cbb0:	6c000d93 	bgeu	$r12,$r19,12(0xc) # 1c00cbbc <TestOneType_u32+0xbfc>
1c00cbb4:	0015026c 	move	$r12,$r19
1c00cbb8:	001501c6 	move	$r6,$r14
1c00cbbc:	28801094 	ld.w	$r20,$r4,4(0x4)
1c00cbc0:	028005c5 	addi.w	$r5,$r14,1(0x1)
1c00cbc4:	6c000d94 	bgeu	$r12,$r20,12(0xc) # 1c00cbd0 <TestOneType_u32+0xc10>
1c00cbc8:	0015028c 	move	$r12,$r20
1c00cbcc:	001500a6 	move	$r6,$r5
1c00cbd0:	28802081 	ld.w	$r1,$r4,8(0x8)
1c00cbd4:	028009d0 	addi.w	$r16,$r14,2(0x2)
1c00cbd8:	6c000d81 	bgeu	$r12,$r1,12(0xc) # 1c00cbe4 <TestOneType_u32+0xc24>
1c00cbdc:	0015002c 	move	$r12,$r1
1c00cbe0:	00150206 	move	$r6,$r16
1c00cbe4:	2880308f 	ld.w	$r15,$r4,12(0xc)
1c00cbe8:	02800dd2 	addi.w	$r18,$r14,3(0x3)
1c00cbec:	6c000d8f 	bgeu	$r12,$r15,12(0xc) # 1c00cbf8 <TestOneType_u32+0xc38>
1c00cbf0:	001501ec 	move	$r12,$r15
1c00cbf4:	00150246 	move	$r6,$r18
1c00cbf8:	2880408b 	ld.w	$r11,$r4,16(0x10)
1c00cbfc:	028011c9 	addi.w	$r9,$r14,4(0x4)
1c00cc00:	6c000d8b 	bgeu	$r12,$r11,12(0xc) # 1c00cc0c <TestOneType_u32+0xc4c>
1c00cc04:	0015016c 	move	$r12,$r11
1c00cc08:	00150126 	move	$r6,$r9
1c00cc0c:	28805088 	ld.w	$r8,$r4,20(0x14)
1c00cc10:	028015c7 	addi.w	$r7,$r14,5(0x5)
1c00cc14:	6c000d88 	bgeu	$r12,$r8,12(0xc) # 1c00cc20 <TestOneType_u32+0xc60>
1c00cc18:	0015010c 	move	$r12,$r8
1c00cc1c:	001500e6 	move	$r6,$r7
1c00cc20:	2880608d 	ld.w	$r13,$r4,24(0x18)
1c00cc24:	028019ca 	addi.w	$r10,$r14,6(0x6)
1c00cc28:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c00cc34 <TestOneType_u32+0xc74>
1c00cc2c:	001501ac 	move	$r12,$r13
1c00cc30:	00150146 	move	$r6,$r10
1c00cc34:	28807094 	ld.w	$r20,$r4,28(0x1c)
1c00cc38:	02801dd3 	addi.w	$r19,$r14,7(0x7)
1c00cc3c:	6c000d94 	bgeu	$r12,$r20,12(0xc) # 1c00cc48 <TestOneType_u32+0xc88>
1c00cc40:	0015028c 	move	$r12,$r20
1c00cc44:	00150266 	move	$r6,$r19
1c00cc48:	28808085 	ld.w	$r5,$r4,32(0x20)
1c00cc4c:	028021c1 	addi.w	$r1,$r14,8(0x8)
1c00cc50:	6c000d85 	bgeu	$r12,$r5,12(0xc) # 1c00cc5c <TestOneType_u32+0xc9c>
1c00cc54:	001500ac 	move	$r12,$r5
1c00cc58:	00150026 	move	$r6,$r1
1c00cc5c:	28809090 	ld.w	$r16,$r4,36(0x24)
1c00cc60:	028025cf 	addi.w	$r15,$r14,9(0x9)
1c00cc64:	6c000d90 	bgeu	$r12,$r16,12(0xc) # 1c00cc70 <TestOneType_u32+0xcb0>
1c00cc68:	0015020c 	move	$r12,$r16
1c00cc6c:	001501e6 	move	$r6,$r15
1c00cc70:	2880a092 	ld.w	$r18,$r4,40(0x28)
1c00cc74:	028029cb 	addi.w	$r11,$r14,10(0xa)
1c00cc78:	6c000d92 	bgeu	$r12,$r18,12(0xc) # 1c00cc84 <TestOneType_u32+0xcc4>
1c00cc7c:	0015024c 	move	$r12,$r18
1c00cc80:	00150166 	move	$r6,$r11
1c00cc84:	2880b089 	ld.w	$r9,$r4,44(0x2c)
1c00cc88:	02802dc8 	addi.w	$r8,$r14,11(0xb)
1c00cc8c:	6c000d89 	bgeu	$r12,$r9,12(0xc) # 1c00cc98 <TestOneType_u32+0xcd8>
1c00cc90:	0015012c 	move	$r12,$r9
1c00cc94:	00150106 	move	$r6,$r8
1c00cc98:	2880c087 	ld.w	$r7,$r4,48(0x30)
1c00cc9c:	028031cd 	addi.w	$r13,$r14,12(0xc)
1c00cca0:	6c000d87 	bgeu	$r12,$r7,12(0xc) # 1c00ccac <TestOneType_u32+0xcec>
1c00cca4:	001500ec 	move	$r12,$r7
1c00cca8:	001501a6 	move	$r6,$r13
1c00ccac:	028035ce 	addi.w	$r14,$r14,13(0xd)
1c00ccb0:	0280d084 	addi.w	$r4,$r4,52(0x34)
1c00ccb4:	5ffee1d9 	bne	$r14,$r25,-288(0x3fee0) # 1c00cb94 <TestOneType_u32+0xbd4>
1c00ccb8:	1c000e8a 	pcaddu12i	$r10,116(0x74)
1c00ccbc:	02a4314a 	addi.w	$r10,$r10,-1780(0x90c)
1c00ccc0:	28800147 	ld.w	$r7,$r10,0
1c00ccc4:	5800ace6 	beq	$r7,$r6,172(0xac) # 1c00cd70 <TestOneType_u32+0xdb0>
1c00ccc8:	001503c5 	move	$r5,$r30
1c00cccc:	00150344 	move	$r4,$r26
1c00ccd0:	54056000 	bl	1376(0x560) # 1c00d230 <printf>
1c00ccd4:	288002f1 	ld.w	$r17,$r23,0
1c00ccd8:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00ccdc:	63fe9bf1 	blt	$r31,$r17,-360(0x3fe98) # 1c00cb74 <TestOneType_u32+0xbb4>
1c00cce0:	540a6000 	bl	2656(0xa60) # 1c00d740 <get_clock>
1c00cce4:	2880039b 	ld.w	$r27,$r28,0
1c00cce8:	0015009d 	move	$r29,$r4
1c00ccec:	14001e86 	lu12i.w	$r6,244(0xf4)
1c00ccf0:	00116fb0 	sub.w	$r16,$r29,$r27
1c00ccf4:	038900d4 	ori	$r20,$r6,0x240
1c00ccf8:	1c000e65 	pcaddu12i	$r5,115(0x73)
1c00ccfc:	029a40a5 	addi.w	$r5,$r5,1680(0x690)
1c00cd00:	00215207 	div.wu	$r7,$r16,$r20
1c00cd04:	5c000a80 	bne	$r20,$r0,8(0x8) # 1c00cd0c <TestOneType_u32+0xd4c>
1c00cd08:	002a0007 	break	0x7
1c00cd0c:	1c000e93 	pcaddu12i	$r19,116(0x74)
1c00cd10:	28a2c273 	ld.w	$r19,$r19,-1872(0x8b0)
1c00cd14:	028c8006 	addi.w	$r6,$r0,800(0x320)
1c00cd18:	1c000e64 	pcaddu12i	$r4,115(0x73)
1c00cd1c:	028cf084 	addi.w	$r4,$r4,828(0x33c)
1c00cd20:	2980027d 	st.w	$r29,$r19,0
1c00cd24:	54050c00 	bl	1292(0x50c) # 1c00d230 <printf>
1c00cd28:	28803065 	ld.w	$r5,$r3,12(0xc)
1c00cd2c:	00150304 	move	$r4,$r24
1c00cd30:	298002e5 	st.w	$r5,$r23,0
1c00cd34:	02934063 	addi.w	$r3,$r3,1232(0x4d0)
1c00cd38:	289fb061 	ld.w	$r1,$r3,2028(0x7ec)
1c00cd3c:	289fa076 	ld.w	$r22,$r3,2024(0x7e8)
1c00cd40:	289f9077 	ld.w	$r23,$r3,2020(0x7e4)
1c00cd44:	289f8078 	ld.w	$r24,$r3,2016(0x7e0)
1c00cd48:	289f7079 	ld.w	$r25,$r3,2012(0x7dc)
1c00cd4c:	289f607a 	ld.w	$r26,$r3,2008(0x7d8)
1c00cd50:	289f507b 	ld.w	$r27,$r3,2004(0x7d4)
1c00cd54:	289f407c 	ld.w	$r28,$r3,2000(0x7d0)
1c00cd58:	289f307d 	ld.w	$r29,$r3,1996(0x7cc)
1c00cd5c:	289f207e 	ld.w	$r30,$r3,1992(0x7c8)
1c00cd60:	289f107f 	ld.w	$r31,$r3,1988(0x7c4)
1c00cd64:	029fc063 	addi.w	$r3,$r3,2032(0x7f0)
1c00cd68:	4c000020 	jirl	$r0,$r1,0
1c00cd6c:	03400000 	andi	$r0,$r0,0x0
1c00cd70:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00cd74:	63fe03f1 	blt	$r31,$r17,-512(0x3fe00) # 1c00cb74 <TestOneType_u32+0xbb4>
1c00cd78:	53ff6bff 	b	-152(0xfffff68) # 1c00cce0 <TestOneType_u32+0xd20>
1c00cd7c:	03400000 	andi	$r0,$r0,0x0
1c00cd80:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00cd84:	63fc1ed2 	blt	$r22,$r18,-996(0x3fc1c) # 1c00c9a0 <TestOneType_u32+0x9e0>
1c00cd88:	53fd7fff 	b	-644(0xffffd7c) # 1c00cb04 <TestOneType_u32+0xb44>
1c00cd8c:	03400000 	andi	$r0,$r0,0x0
1c00cd90:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00cd94:	63f853f1 	blt	$r31,$r17,-1968(0x3f850) # 1c00c5e4 <TestOneType_u32+0x624>
1c00cd98:	53f9abff 	b	-1624(0xffff9a8) # 1c00c740 <TestOneType_u32+0x780>
1c00cd9c:	03400000 	andi	$r0,$r0,0x0
1c00cda0:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c00cda4:	63fa0ed2 	blt	$r22,$r18,-1524(0x3fa0c) # 1c00c7b0 <TestOneType_u32+0x7f0>
1c00cda8:	53fb67ff 	b	-1180(0xffffb64) # 1c00c90c <TestOneType_u32+0x94c>
1c00cdac:	03b2000b 	ori	$r11,$r0,0xc80
1c00cdb0:	0280406f 	addi.w	$r15,$r3,16(0x10)
1c00cdb4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00cdb8:	00103d71 	add.w	$r17,$r11,$r15
1c00cdbc:	001501d0 	move	$r16,$r14
1c00cdc0:	5ff39d91 	bne	$r12,$r17,-3172(0x3f39c) # 1c00c15c <TestOneType_u32+0x19c>
1c00cdc4:	53f3f3ff 	b	-3088(0xffff3f0) # 1c00c1b4 <TestOneType_u32+0x1f4>
1c00cdc8:	03b20004 	ori	$r4,$r0,0xc80
1c00cdcc:	02804077 	addi.w	$r23,$r3,16(0x10)
1c00cdd0:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c00cdd4:	00105c85 	add.w	$r5,$r4,$r23
1c00cdd8:	001503f0 	move	$r16,$r31
1c00cddc:	5ff38185 	bne	$r12,$r5,-3200(0x3f380) # 1c00c15c <TestOneType_u32+0x19c>
1c00cde0:	53f3d7ff 	b	-3116(0xffff3d4) # 1c00c1b4 <TestOneType_u32+0x1f4>
1c00cde4:	2880619f 	ld.w	$r31,$r12,24(0x18)
1c00cde8:	001503d0 	move	$r16,$r30
1c00cdec:	6ff3b7f0 	bgeu	$r31,$r16,-3148(0x3f3b4) # 1c00c1a0 <TestOneType_u32+0x1e0>
1c00cdf0:	53ffdbff 	b	-40(0xfffffd8) # 1c00cdc8 <TestOneType_u32+0xe08>
1c00cdf4:	2880519e 	ld.w	$r30,$r12,20(0x14)
1c00cdf8:	00150390 	move	$r16,$r28
1c00cdfc:	6ff39fd0 	bgeu	$r30,$r16,-3172(0x3f39c) # 1c00c198 <TestOneType_u32+0x1d8>
1c00ce00:	53ffe7ff 	b	-28(0xfffffe4) # 1c00cde4 <TestOneType_u32+0xe24>
1c00ce04:	2880419c 	ld.w	$r28,$r12,16(0x10)
1c00ce08:	00150350 	move	$r16,$r26
1c00ce0c:	6ff38790 	bgeu	$r28,$r16,-3196(0x3f384) # 1c00c190 <TestOneType_u32+0x1d0>
1c00ce10:	53ffe7ff 	b	-28(0xfffffe4) # 1c00cdf4 <TestOneType_u32+0xe34>
1c00ce14:	2880319a 	ld.w	$r26,$r12,12(0xc)
1c00ce18:	00150330 	move	$r16,$r25
1c00ce1c:	6ff36f50 	bgeu	$r26,$r16,-3220(0x3f36c) # 1c00c188 <TestOneType_u32+0x1c8>
1c00ce20:	53ffe7ff 	b	-28(0xfffffe4) # 1c00ce04 <TestOneType_u32+0xe44>
1c00ce24:	28802199 	ld.w	$r25,$r12,8(0x8)
1c00ce28:	00150290 	move	$r16,$r20
1c00ce2c:	6ff35730 	bgeu	$r25,$r16,-3244(0x3f354) # 1c00c180 <TestOneType_u32+0x1c0>
1c00ce30:	53ffe7ff 	b	-28(0xfffffe4) # 1c00ce14 <TestOneType_u32+0xe54>
1c00ce34:	28801194 	ld.w	$r20,$r12,4(0x4)
1c00ce38:	00150270 	move	$r16,$r19
1c00ce3c:	6ff33e90 	bgeu	$r20,$r16,-3268(0x3f33c) # 1c00c178 <TestOneType_u32+0x1b8>
1c00ce40:	53ffe7ff 	b	-28(0xfffffe4) # 1c00ce24 <TestOneType_u32+0xe64>
1c00ce44:	28801193 	ld.w	$r19,$r12,4(0x4)
1c00ce48:	00150250 	move	$r16,$r18
1c00ce4c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00ce50:	6ff32270 	bgeu	$r19,$r16,-3296(0x3f320) # 1c00c170 <TestOneType_u32+0x1b0>
1c00ce54:	53ffe3ff 	b	-32(0xfffffe0) # 1c00ce34 <TestOneType_u32+0xe74>
1c00ce58:	03b20007 	ori	$r7,$r0,0xc80
1c00ce5c:	02804078 	addi.w	$r24,$r3,16(0x10)
1c00ce60:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00ce64:	001060e8 	add.w	$r8,$r7,$r24
1c00ce68:	001501b1 	move	$r17,$r13
1c00ce6c:	5ff43588 	bne	$r12,$r8,-3020(0x3f434) # 1c00c2a0 <TestOneType_u32+0x2e0>
1c00ce70:	53f48bff 	b	-2936(0xffff488) # 1c00c2f8 <TestOneType_u32+0x338>
1c00ce74:	03b20019 	ori	$r25,$r0,0xc80
1c00ce78:	0280407a 	addi.w	$r26,$r3,16(0x10)
1c00ce7c:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c00ce80:	00106b3c 	add.w	$r28,$r25,$r26
1c00ce84:	00150291 	move	$r17,$r20
1c00ce88:	5ff4199c 	bne	$r12,$r28,-3048(0x3f418) # 1c00c2a0 <TestOneType_u32+0x2e0>
1c00ce8c:	53f46fff 	b	-2964(0xffff46c) # 1c00c2f8 <TestOneType_u32+0x338>
1c00ce90:	28806194 	ld.w	$r20,$r12,24(0x18)
1c00ce94:	00150271 	move	$r17,$r19
1c00ce98:	6ff44e34 	bgeu	$r17,$r20,-2996(0x3f44c) # 1c00c2e4 <TestOneType_u32+0x324>
1c00ce9c:	53ffdbff 	b	-40(0xfffffd8) # 1c00ce74 <TestOneType_u32+0xeb4>
1c00cea0:	28805193 	ld.w	$r19,$r12,20(0x14)
1c00cea4:	00150251 	move	$r17,$r18
1c00cea8:	6ff43633 	bgeu	$r17,$r19,-3020(0x3f434) # 1c00c2dc <TestOneType_u32+0x31c>
1c00ceac:	53ffe7ff 	b	-28(0xfffffe4) # 1c00ce90 <TestOneType_u32+0xed0>
1c00ceb0:	28804192 	ld.w	$r18,$r12,16(0x10)
1c00ceb4:	001501f1 	move	$r17,$r15
1c00ceb8:	6ff41e32 	bgeu	$r17,$r18,-3044(0x3f41c) # 1c00c2d4 <TestOneType_u32+0x314>
1c00cebc:	53ffe7ff 	b	-28(0xfffffe4) # 1c00cea0 <TestOneType_u32+0xee0>
1c00cec0:	2880318f 	ld.w	$r15,$r12,12(0xc)
1c00cec4:	001501d1 	move	$r17,$r14
1c00cec8:	6ff4062f 	bgeu	$r17,$r15,-3068(0x3f404) # 1c00c2cc <TestOneType_u32+0x30c>
1c00cecc:	53ffe7ff 	b	-28(0xfffffe4) # 1c00ceb0 <TestOneType_u32+0xef0>
1c00ced0:	2880218e 	ld.w	$r14,$r12,8(0x8)
1c00ced4:	00150031 	move	$r17,$r1
1c00ced8:	6ff3ee2e 	bgeu	$r17,$r14,-3092(0x3f3ec) # 1c00c2c4 <TestOneType_u32+0x304>
1c00cedc:	53ffe7ff 	b	-28(0xfffffe4) # 1c00cec0 <TestOneType_u32+0xf00>
1c00cee0:	28801181 	ld.w	$r1,$r12,4(0x4)
1c00cee4:	00150151 	move	$r17,$r10
1c00cee8:	6ff3d621 	bgeu	$r17,$r1,-3116(0x3f3d4) # 1c00c2bc <TestOneType_u32+0x2fc>
1c00ceec:	53ffe7ff 	b	-28(0xfffffe4) # 1c00ced0 <TestOneType_u32+0xf10>
1c00cef0:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c00cef4:	00150131 	move	$r17,$r9
1c00cef8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00cefc:	6ff3ba2a 	bgeu	$r17,$r10,-3144(0x3f3b8) # 1c00c2b4 <TestOneType_u32+0x2f4>
1c00cf00:	53ffe3ff 	b	-32(0xfffffe0) # 1c00cee0 <TestOneType_u32+0xf20>
1c00cf04:	00150030 	move	$r16,$r1
1c00cf08:	53f237ff 	b	-3532(0xffff234) # 1c00c13c <TestOneType_u32+0x17c>
1c00cf0c:	001500d1 	move	$r17,$r6
1c00cf10:	53f373ff 	b	-3216(0xffff370) # 1c00c280 <TestOneType_u32+0x2c0>
1c00cf14:	00150150 	move	$r16,$r10
1c00cf18:	53f21bff 	b	-3560(0xffff218) # 1c00c130 <TestOneType_u32+0x170>
1c00cf1c:	00150371 	move	$r17,$r27
1c00cf20:	53f357ff 	b	-3244(0xffff354) # 1c00c274 <TestOneType_u32+0x2b4>
1c00cf24:	001502f1 	move	$r17,$r23
1c00cf28:	53f333ff 	b	-3280(0xffff330) # 1c00c258 <TestOneType_u32+0x298>
1c00cf2c:	00150110 	move	$r16,$r8
1c00cf30:	53f1e7ff 	b	-3612(0xffff1e4) # 1c00c114 <TestOneType_u32+0x154>
1c00cf34:	00150091 	move	$r17,$r4
1c00cf38:	53f317ff 	b	-3308(0xffff314) # 1c00c24c <TestOneType_u32+0x28c>
1c00cf3c:	001502d0 	move	$r16,$r22
1c00cf40:	53f1cbff 	b	-3640(0xffff1c8) # 1c00c108 <TestOneType_u32+0x148>
1c00cf44:	03400000 	andi	$r0,$r0,0x0
1c00cf48:	03400000 	andi	$r0,$r0,0x0
1c00cf4c:	03400000 	andi	$r0,$r0,0x0

1c00cf50 <shell20_main>:
shell20_main():
1c00cf50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00cf54:	29803061 	st.w	$r1,$r3,12(0xc)
1c00cf58:	29802077 	st.w	$r23,$r3,8(0x8)
1c00cf5c:	57a2a7ff 	bl	-23900(0xfffa2a4) # 1c007200 <minmax_sequence_TestOneType_8>
1c00cf60:	00150097 	move	$r23,$r4
1c00cf64:	57b30fff 	bl	-19700(0xfffb30c) # 1c008270 <minmax_sequence_TestOneType_u8>
1c00cf68:	001012f7 	add.w	$r23,$r23,$r4
1c00cf6c:	57c377ff 	bl	-15500(0xfffc374) # 1c0092e0 <minmax_sequence_TestOneType_16>
1c00cf70:	001012f7 	add.w	$r23,$r23,$r4
1c00cf74:	57d20fff 	bl	-11764(0xfffd20c) # 1c00a180 <minmax_sequence_TestOneType_u16>
1c00cf78:	001012f7 	add.w	$r23,$r23,$r4
1c00cf7c:	57e0a7ff 	bl	-8028(0xfffe0a4) # 1c00b020 <TestOneType_32>
1c00cf80:	001012f7 	add.w	$r23,$r23,$r4
1c00cf84:	57f03fff 	bl	-4036(0xffff03c) # 1c00bfc0 <TestOneType_u32>
1c00cf88:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00cf8c:	001012e4 	add.w	$r4,$r23,$r4
1c00cf90:	28802077 	ld.w	$r23,$r3,8(0x8)
1c00cf94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00cf98:	4c000020 	jirl	$r0,$r1,0
1c00cf9c:	03400000 	andi	$r0,$r0,0x0

1c00cfa0 <shell20>:
shell20():
1c00cfa0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00cfa4:	1c000e64 	pcaddu12i	$r4,115(0x73)
1c00cfa8:	02902084 	addi.w	$r4,$r4,1032(0x408)
1c00cfac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00cfb0:	29804079 	st.w	$r25,$r3,16(0x10)
1c00cfb4:	2980307a 	st.w	$r26,$r3,12(0xc)
1c00cfb8:	2980207b 	st.w	$r27,$r3,8(0x8)
1c00cfbc:	2980107c 	st.w	$r28,$r3,4(0x4)
1c00cfc0:	29806077 	st.w	$r23,$r3,24(0x18)
1c00cfc4:	29805078 	st.w	$r24,$r3,20(0x14)
1c00cfc8:	54058800 	bl	1416(0x588) # 1c00d550 <puts>
1c00cfcc:	5406a400 	bl	1700(0x6a4) # 1c00d670 <get_count>
1c00cfd0:	0015009a 	move	$r26,$r4
1c00cfd4:	5406cc00 	bl	1740(0x6cc) # 1c00d6a0 <get_count_my>
1c00cfd8:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c00cfdc:	0015009b 	move	$r27,$r4
1c00cfe0:	03bc8184 	ori	$r4,$r12,0xf20
1c00cfe4:	28800085 	ld.w	$r5,$r4,0
1c00cfe8:	02802819 	addi.w	$r25,$r0,10(0xa)
1c00cfec:	0015001c 	move	$r28,$r0
1c00cff0:	5c01f0a0 	bne	$r5,$r0,496(0x1f0) # 1c00d1e0 <shell20+0x240>
1c00cff4:	57a20fff 	bl	-24052(0xfffa20c) # 1c007200 <minmax_sequence_TestOneType_8>
1c00cff8:	00150098 	move	$r24,$r4
1c00cffc:	57b277ff 	bl	-19852(0xfffb274) # 1c008270 <minmax_sequence_TestOneType_u8>
1c00d000:	00101317 	add.w	$r23,$r24,$r4
1c00d004:	57c2dfff 	bl	-15652(0xfffc2dc) # 1c0092e0 <minmax_sequence_TestOneType_16>
1c00d008:	001012f8 	add.w	$r24,$r23,$r4
1c00d00c:	57d177ff 	bl	-11916(0xfffd174) # 1c00a180 <minmax_sequence_TestOneType_u16>
1c00d010:	00101317 	add.w	$r23,$r24,$r4
1c00d014:	57e00fff 	bl	-8180(0xfffe00c) # 1c00b020 <TestOneType_32>
1c00d018:	001012f8 	add.w	$r24,$r23,$r4
1c00d01c:	57efa7ff 	bl	-4188(0xfffefa4) # 1c00bfc0 <TestOneType_u32>
1c00d020:	00101306 	add.w	$r6,$r24,$r4
1c00d024:	00101b9c 	add.w	$r28,$r28,$r6
1c00d028:	57a1dbff 	bl	-24104(0xfffa1d8) # 1c007200 <minmax_sequence_TestOneType_8>
1c00d02c:	00150097 	move	$r23,$r4
1c00d030:	57b243ff 	bl	-19904(0xfffb240) # 1c008270 <minmax_sequence_TestOneType_u8>
1c00d034:	001012f8 	add.w	$r24,$r23,$r4
1c00d038:	57c2abff 	bl	-15704(0xfffc2a8) # 1c0092e0 <minmax_sequence_TestOneType_16>
1c00d03c:	00101317 	add.w	$r23,$r24,$r4
1c00d040:	57d143ff 	bl	-11968(0xfffd140) # 1c00a180 <minmax_sequence_TestOneType_u16>
1c00d044:	001012f8 	add.w	$r24,$r23,$r4
1c00d048:	57dfdbff 	bl	-8232(0xfffdfd8) # 1c00b020 <TestOneType_32>
1c00d04c:	00101317 	add.w	$r23,$r24,$r4
1c00d050:	57ef73ff 	bl	-4240(0xfffef70) # 1c00bfc0 <TestOneType_u32>
1c00d054:	001012e7 	add.w	$r7,$r23,$r4
1c00d058:	00101f9c 	add.w	$r28,$r28,$r7
1c00d05c:	57a1a7ff 	bl	-24156(0xfffa1a4) # 1c007200 <minmax_sequence_TestOneType_8>
1c00d060:	00150098 	move	$r24,$r4
1c00d064:	57b20fff 	bl	-19956(0xfffb20c) # 1c008270 <minmax_sequence_TestOneType_u8>
1c00d068:	00101317 	add.w	$r23,$r24,$r4
1c00d06c:	57c277ff 	bl	-15756(0xfffc274) # 1c0092e0 <minmax_sequence_TestOneType_16>
1c00d070:	001012f8 	add.w	$r24,$r23,$r4
1c00d074:	57d10fff 	bl	-12020(0xfffd10c) # 1c00a180 <minmax_sequence_TestOneType_u16>
1c00d078:	00101317 	add.w	$r23,$r24,$r4
1c00d07c:	57dfa7ff 	bl	-8284(0xfffdfa4) # 1c00b020 <TestOneType_32>
1c00d080:	001012f8 	add.w	$r24,$r23,$r4
1c00d084:	57ef3fff 	bl	-4292(0xfffef3c) # 1c00bfc0 <TestOneType_u32>
1c00d088:	00101308 	add.w	$r8,$r24,$r4
1c00d08c:	0010239c 	add.w	$r28,$r28,$r8
1c00d090:	57a173ff 	bl	-24208(0xfffa170) # 1c007200 <minmax_sequence_TestOneType_8>
1c00d094:	00150097 	move	$r23,$r4
1c00d098:	57b1dbff 	bl	-20008(0xfffb1d8) # 1c008270 <minmax_sequence_TestOneType_u8>
1c00d09c:	001012f8 	add.w	$r24,$r23,$r4
1c00d0a0:	57c243ff 	bl	-15808(0xfffc240) # 1c0092e0 <minmax_sequence_TestOneType_16>
1c00d0a4:	00101317 	add.w	$r23,$r24,$r4
1c00d0a8:	57d0dbff 	bl	-12072(0xfffd0d8) # 1c00a180 <minmax_sequence_TestOneType_u16>
1c00d0ac:	001012f8 	add.w	$r24,$r23,$r4
1c00d0b0:	57df73ff 	bl	-8336(0xfffdf70) # 1c00b020 <TestOneType_32>
1c00d0b4:	00101317 	add.w	$r23,$r24,$r4
1c00d0b8:	57ef0bff 	bl	-4344(0xfffef08) # 1c00bfc0 <TestOneType_u32>
1c00d0bc:	001012e9 	add.w	$r9,$r23,$r4
1c00d0c0:	00102798 	add.w	$r24,$r28,$r9
1c00d0c4:	57a13fff 	bl	-24260(0xfffa13c) # 1c007200 <minmax_sequence_TestOneType_8>
1c00d0c8:	0015009c 	move	$r28,$r4
1c00d0cc:	57b1a7ff 	bl	-20060(0xfffb1a4) # 1c008270 <minmax_sequence_TestOneType_u8>
1c00d0d0:	00101397 	add.w	$r23,$r28,$r4
1c00d0d4:	57c20fff 	bl	-15860(0xfffc20c) # 1c0092e0 <minmax_sequence_TestOneType_16>
1c00d0d8:	001012fc 	add.w	$r28,$r23,$r4
1c00d0dc:	57d0a7ff 	bl	-12124(0xfffd0a4) # 1c00a180 <minmax_sequence_TestOneType_u16>
1c00d0e0:	00101397 	add.w	$r23,$r28,$r4
1c00d0e4:	57df3fff 	bl	-8388(0xfffdf3c) # 1c00b020 <TestOneType_32>
1c00d0e8:	001012fc 	add.w	$r28,$r23,$r4
1c00d0ec:	57eed7ff 	bl	-4396(0xfffeed4) # 1c00bfc0 <TestOneType_u32>
1c00d0f0:	0010138a 	add.w	$r10,$r28,$r4
1c00d0f4:	02bfef39 	addi.w	$r25,$r25,-5(0xffb)
1c00d0f8:	00102b1c 	add.w	$r28,$r24,$r10
1c00d0fc:	5ffefb20 	bne	$r25,$r0,-264(0x3fef8) # 1c00cff4 <shell20+0x54>
1c00d100:	5405a000 	bl	1440(0x5a0) # 1c00d6a0 <get_count_my>
1c00d104:	00150098 	move	$r24,$r4
1c00d108:	54056800 	bl	1384(0x568) # 1c00d670 <get_count>
1c00d10c:	00116f1b 	sub.w	$r27,$r24,$r27
1c00d110:	0011689a 	sub.w	$r26,$r4,$r26
1c00d114:	58009380 	beq	$r28,$r0,144(0x90) # 1c00d1a4 <shell20+0x204>
1c00d118:	1c000e64 	pcaddu12i	$r4,115(0x73)
1c00d11c:	028b2084 	addi.w	$r4,$r4,712(0x2c8)
1c00d120:	54043000 	bl	1072(0x430) # 1c00d550 <puts>
1c00d124:	157f5feb 	lu12i.w	$r11,-263425(0xbfaff)
1c00d128:	02800410 	addi.w	$r16,$r0,1(0x1)
1c00d12c:	0381016f 	ori	$r15,$r11,0x40
1c00d130:	298001f0 	st.w	$r16,$r15,0
1c00d134:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c00d138:	0380c16d 	ori	$r13,$r11,0x30
1c00d13c:	03808171 	ori	$r17,$r11,0x20
1c00d140:	298001ae 	st.w	$r14,$r13,0
1c00d144:	29800220 	st.w	$r0,$r17,0
1c00d148:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c00d14c:	03814028 	ori	$r8,$r1,0x50
1c00d150:	2980011b 	st.w	$r27,$r8,0
1c00d154:	157f5f07 	lu12i.w	$r7,-263432(0xbfaf8)
1c00d158:	298000fb 	st.w	$r27,$r7,0
1c00d15c:	038040e9 	ori	$r9,$r7,0x10
1c00d160:	00150345 	move	$r5,$r26
1c00d164:	2980013a 	st.w	$r26,$r9,0
1c00d168:	1c000e64 	pcaddu12i	$r4,115(0x73)
1c00d16c:	028a5084 	addi.w	$r4,$r4,660(0x294)
1c00d170:	5400c000 	bl	192(0xc0) # 1c00d230 <printf>
1c00d174:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00d178:	28806077 	ld.w	$r23,$r3,24(0x18)
1c00d17c:	28805078 	ld.w	$r24,$r3,20(0x14)
1c00d180:	28804079 	ld.w	$r25,$r3,16(0x10)
1c00d184:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c00d188:	2880107c 	ld.w	$r28,$r3,4(0x4)
1c00d18c:	00150365 	move	$r5,$r27
1c00d190:	2880207b 	ld.w	$r27,$r3,8(0x8)
1c00d194:	1c000e64 	pcaddu12i	$r4,115(0x73)
1c00d198:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c00d19c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00d1a0:	50009000 	b	144(0x90) # 1c00d230 <printf>
1c00d1a4:	1c000e64 	pcaddu12i	$r4,115(0x73)
1c00d1a8:	02889084 	addi.w	$r4,$r4,548(0x224)
1c00d1ac:	5403a400 	bl	932(0x3a4) # 1c00d550 <puts>
1c00d1b0:	157f5ff2 	lu12i.w	$r18,-263425(0xbfaff)
1c00d1b4:	02800414 	addi.w	$r20,$r0,1(0x1)
1c00d1b8:	03810244 	ori	$r4,$r18,0x40
1c00d1bc:	29800094 	st.w	$r20,$r4,0
1c00d1c0:	140001f3 	lu12i.w	$r19,15(0xf)
1c00d1c4:	0380c245 	ori	$r5,$r18,0x30
1c00d1c8:	0380824c 	ori	$r12,$r18,0x20
1c00d1cc:	03bffe66 	ori	$r6,$r19,0xfff
1c00d1d0:	298000b4 	st.w	$r20,$r5,0
1c00d1d4:	29800186 	st.w	$r6,$r12,0
1c00d1d8:	53ff73ff 	b	-144(0xfffff70) # 1c00d148 <shell20+0x1a8>
1c00d1dc:	03400000 	andi	$r0,$r0,0x0
1c00d1e0:	57a023ff 	bl	-24544(0xfffa020) # 1c007200 <minmax_sequence_TestOneType_8>
1c00d1e4:	00150099 	move	$r25,$r4
1c00d1e8:	57b08bff 	bl	-20344(0xfffb088) # 1c008270 <minmax_sequence_TestOneType_u8>
1c00d1ec:	00101338 	add.w	$r24,$r25,$r4
1c00d1f0:	57c0f3ff 	bl	-16144(0xfffc0f0) # 1c0092e0 <minmax_sequence_TestOneType_16>
1c00d1f4:	00101317 	add.w	$r23,$r24,$r4
1c00d1f8:	57cf8bff 	bl	-12408(0xfffcf88) # 1c00a180 <minmax_sequence_TestOneType_u16>
1c00d1fc:	001012fc 	add.w	$r28,$r23,$r4
1c00d200:	57de23ff 	bl	-8672(0xfffde20) # 1c00b020 <TestOneType_32>
1c00d204:	00101399 	add.w	$r25,$r28,$r4
1c00d208:	57edbbff 	bl	-4680(0xfffedb8) # 1c00bfc0 <TestOneType_u32>
1c00d20c:	0010133c 	add.w	$r28,$r25,$r4
1c00d210:	54049000 	bl	1168(0x490) # 1c00d6a0 <get_count_my>
1c00d214:	00150098 	move	$r24,$r4
1c00d218:	54045800 	bl	1112(0x458) # 1c00d670 <get_count>
1c00d21c:	00116f1b 	sub.w	$r27,$r24,$r27
1c00d220:	0011689a 	sub.w	$r26,$r4,$r26
1c00d224:	5ffef780 	bne	$r28,$r0,-268(0x3fef4) # 1c00d118 <shell20+0x178>
1c00d228:	53ff7fff 	b	-132(0xfffff7c) # 1c00d1a4 <shell20+0x204>
1c00d22c:	03400000 	andi	$r0,$r0,0x0

1c00d230 <printf>:
printf():
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
int printf(const char *fmt,...)
{
1c00d230:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c00d234:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c00d238:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00d23c:	2980e077 	st.w	$r23,$r3,56(0x38)
1c00d240:	2980d078 	st.w	$r24,$r3,52(0x34)
1c00d244:	2980c079 	st.w	$r25,$r3,48(0x30)
1c00d248:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c00d24c:	2980907c 	st.w	$r28,$r3,36(0x24)
1c00d250:	29811065 	st.w	$r5,$r3,68(0x44)
1c00d254:	29812066 	st.w	$r6,$r3,72(0x48)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c00d258:	28000097 	ld.b	$r23,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c00d25c:	0281107a 	addi.w	$r26,$r3,68(0x44)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
{
1c00d260:	29813067 	st.w	$r7,$r3,76(0x4c)
1c00d264:	29814068 	st.w	$r8,$r3,80(0x50)
1c00d268:	29815069 	st.w	$r9,$r3,84(0x54)
1c00d26c:	2981606a 	st.w	$r10,$r3,88(0x58)
1c00d270:	2981706b 	st.w	$r11,$r3,92(0x5c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c00d274:	2980707a 	st.w	$r26,$r3,28(0x1c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
for(i=0;fmt[i];i++)
1c00d278:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c00d300 <printf+0xd0>
1c00d27c:	00150099 	move	$r25,$r4
1c00d280:	00150018 	move	$r24,$r0
1c00d284:	1c000e7c 	pcaddu12i	$r28,115(0x73)
1c00d288:	0287639c 	addi.w	$r28,$r28,472(0x1d8)
1c00d28c:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c00d290:	50001c00 	b	28(0x1c) # 1c00d2ac <printf+0x7c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c00d294:	001502e4 	move	$r4,$r23
1c00d298:	5401d800 	bl	472(0x1d8) # 1c00d470 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c00d29c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c00d2a0:	0010632c 	add.w	$r12,$r25,$r24
1c00d2a4:	28000197 	ld.b	$r23,$r12,0
1c00d2a8:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c00d300 <printf+0xd0>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:13
	if(c=='%')
1c00d2ac:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c00d2b0:	58001aec 	beq	$r23,$r12,24(0x18) # 1c00d2c8 <printf+0x98>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c00d2b4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00d2b8:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c00d294 <printf+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79 (discriminator 1)
1c00d2bc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00d2c0:	5401b000 	bl	432(0x1b0) # 1c00d470 <putchar>
1c00d2c4:	53ffd3ff 	b	-48(0xfffffd0) # 1c00d294 <printf+0x64>
1c00d2c8:	0010632c 	add.w	$r12,$r25,$r24
1c00d2cc:	2800058d 	ld.b	$r13,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:15
		w=1;
1c00d2d0:	02800405 	addi.w	$r5,$r0,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c00d2d4:	02814c10 	addi.w	$r16,$r0,83(0x53)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c00d2d8:	0280280f 	addi.w	$r15,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c00d2dc:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c00d2e0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c00d2e4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c00d2e8:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c00d460 <printf+0x230>
1c00d2ec:	0040898c 	slli.w	$r12,$r12,0x2
1c00d2f0:	0010338c 	add.w	$r12,$r28,$r12
1c00d2f4:	2880018c 	ld.w	$r12,$r12,0
1c00d2f8:	4c000180 	jirl	$r0,$r12,0
1c00d2fc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:84
	}
}
	return 0;
}
1c00d300:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00d304:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c00d308:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c00d30c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c00d310:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c00d314:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c00d318:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c00d31c:	00150004 	move	$r4,$r0
1c00d320:	02818063 	addi.w	$r3,$r3,96(0x60)
1c00d324:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:65
				i++;
1c00d328:	0010632c 	add.w	$r12,$r25,$r24
1c00d32c:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c00d330:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c00d334:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c00d338:	2980306c 	st.w	$r12,$r3,12(0xc)
1c00d33c:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c00d340:	00150005 	move	$r5,$r0
1c00d344:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c00d2dc <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c00d348:	001c3ca5 	mul.w	$r5,$r5,$r15
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c00d34c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c00d350:	0010632c 	add.w	$r12,$r25,$r24
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c00d354:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c00d358:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c00d35c:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c00d360:	2980306c 	st.w	$r12,$r3,12(0xc)
1c00d364:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c00d368:	001015c5 	add.w	$r5,$r14,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c00d36c:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c00d348 <printf+0x118>
1c00d370:	53ff6fff 	b	-148(0xfffff6c) # 1c00d2dc <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c00d374:	28800344 	ld.w	$r4,$r26,0
1c00d378:	00150007 	move	$r7,$r0
1c00d37c:	02800806 	addi.w	$r6,$r0,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:51
				arg++;
1c00d380:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:52
				i++;
1c00d384:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c00d388:	5401f800 	bl	504(0x1f8) # 1c00d580 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:53
				break;
1c00d38c:	53ff13ff 	b	-240(0xfffff10) # 1c00d29c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c00d390:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:27
				i++;
1c00d394:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:26
				arg++;
1c00d398:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c00d39c:	5400d400 	bl	212(0xd4) # 1c00d470 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:28
				break;
1c00d3a0:	53feffff 	b	-260(0xffffefc) # 1c00d29c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c00d3a4:	28800344 	ld.w	$r4,$r26,0
1c00d3a8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c00d3ac:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:36
				arg++;
1c00d3b0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:37
				i++;
1c00d3b4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c00d3b8:	5401c800 	bl	456(0x1c8) # 1c00d580 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:38
				break;
1c00d3bc:	53fee3ff 	b	-288(0xffffee0) # 1c00d29c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c00d3c0:	28800344 	ld.w	$r4,$r26,0
1c00d3c4:	00150007 	move	$r7,$r0
1c00d3c8:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:41
                arg++;
1c00d3cc:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:42
                i=i+2;
1c00d3d0:	02800b18 	addi.w	$r24,$r24,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c00d3d4:	5401ac00 	bl	428(0x1ac) # 1c00d580 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:43
                break;
1c00d3d8:	53fec7ff 	b	-316(0xffffec4) # 1c00d29c <printf+0x6c>
1c00d3dc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c00d3e0:	28800344 	ld.w	$r4,$r26,0
1c00d3e4:	00150007 	move	$r7,$r0
1c00d3e8:	02802006 	addi.w	$r6,$r0,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:46
				arg++;
1c00d3ec:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:47
				i++;
1c00d3f0:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c00d3f4:	54018c00 	bl	396(0x18c) # 1c00d580 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:48
				break;
1c00d3f8:	53fea7ff 	b	-348(0xffffea4) # 1c00d29c <printf+0x6c>
1c00d3fc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c00d400:	28800344 	ld.w	$r4,$r26,0
1c00d404:	00150007 	move	$r7,$r0
1c00d408:	02804006 	addi.w	$r6,$r0,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:57
				arg++;
1c00d40c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:58
				i++;
1c00d410:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c00d414:	54016c00 	bl	364(0x16c) # 1c00d580 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:59
				break;
1c00d418:	53fe87ff 	b	-380(0xffffe84) # 1c00d29c <printf+0x6c>
1c00d41c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c00d420:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:22
				i++;
1c00d424:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:21
				arg++;
1c00d428:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c00d42c:	5400a400 	bl	164(0xa4) # 1c00d4d0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:23
				break;
1c00d430:	53fe6fff 	b	-404(0xffffe6c) # 1c00d29c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c00d434:	28800344 	ld.w	$r4,$r26,0
1c00d438:	00150007 	move	$r7,$r0
1c00d43c:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:31
				arg++;
1c00d440:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:32
				i++;
1c00d444:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c00d448:	54013800 	bl	312(0x138) # 1c00d580 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:33
				break;
1c00d44c:	53fe53ff 	b	-432(0xffffe50) # 1c00d29c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c00d450:	02809404 	addi.w	$r4,$r0,37(0x25)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:62
				i++;
1c00d454:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c00d458:	54001800 	bl	24(0x18) # 1c00d470 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:63
				break;
1c00d45c:	53fe43ff 	b	-448(0xffffe40) # 1c00d29c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:73
				putchar('%');
1c00d460:	02809404 	addi.w	$r4,$r0,37(0x25)
1c00d464:	54000c00 	bl	12(0xc) # 1c00d470 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:74
				break;
1c00d468:	53fe37ff 	b	-460(0xffffe34) # 1c00d29c <printf+0x6c>
1c00d46c:	03400000 	andi	$r0,$r0,0x0

1c00d470 <putchar>:
putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:2
int putchar(int c)
{
1c00d470:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00d474:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c00d478:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00d47c:	03bc4339 	ori	$r25,$r25,0xf10
1c00d480:	29000324 	st.b	$r4,$r25,0
1c00d484:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:5
}
1c00d488:	00150004 	move	$r4,$r0
1c00d48c:	28803079 	ld.w	$r25,$r3,12(0xc)
1c00d490:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00d494:	4c000020 	jirl	$r0,$r1,0
1c00d498:	03400000 	andi	$r0,$r0,0x0
1c00d49c:	03400000 	andi	$r0,$r0,0x0

1c00d4a0 <tgt_putchar>:
tgt_putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:8
{   //UART_ADDR
1c00d4a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00d4a4:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
    asm(
1c00d4a8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00d4ac:	03bc4339 	ori	$r25,$r25,0xf10
1c00d4b0:	29000324 	st.b	$r4,$r25,0
1c00d4b4:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c00d4b8:	28803079 	ld.w	$r25,$r3,12(0xc)
1c00d4bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00d4c0:	4c000020 	jirl	$r0,$r1,0
1c00d4c4:	03400000 	andi	$r0,$r0,0x0
1c00d4c8:	03400000 	andi	$r0,$r0,0x0
1c00d4cc:	03400000 	andi	$r0,$r0,0x0

1c00d4d0 <putstring>:
putstring():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:2
int putstring(char *s)
{
1c00d4d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00d4d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c00d4d8:	29802077 	st.w	$r23,$r3,8(0x8)
1c00d4dc:	29801078 	st.w	$r24,$r3,4(0x4)
1c00d4e0:	29800079 	st.w	$r25,$r3,0
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
char c;
while((c=*s))
1c00d4e4:	28000097 	ld.b	$r23,$r4,0
1c00d4e8:	580042e0 	beq	$r23,$r0,64(0x40) # 1c00d528 <putstring+0x58>
1c00d4ec:	00150098 	move	$r24,$r4
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c00d4f0:	02802819 	addi.w	$r25,$r0,10(0xa)
1c00d4f4:	50001400 	b	20(0x14) # 1c00d508 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7
 putchar(c);
1c00d4f8:	001502e4 	move	$r4,$r23
1c00d4fc:	57ff77ff 	bl	-140(0xfffff74) # 1c00d470 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
while((c=*s))
1c00d500:	28000317 	ld.b	$r23,$r24,0
1c00d504:	580026e0 	beq	$r23,$r0,36(0x24) # 1c00d528 <putstring+0x58>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:8
 s++;
1c00d508:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c00d50c:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c00d4f8 <putstring+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6 (discriminator 1)
1c00d510:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00d514:	57ff5fff 	bl	-164(0xfffff5c) # 1c00d470 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c00d518:	001502e4 	move	$r4,$r23
1c00d51c:	57ff57ff 	bl	-172(0xfffff54) # 1c00d470 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c00d520:	28000317 	ld.b	$r23,$r24,0
1c00d524:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c00d508 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:11
}
return 0;
}
1c00d528:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00d52c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c00d530:	28801078 	ld.w	$r24,$r3,4(0x4)
1c00d534:	28800079 	ld.w	$r25,$r3,0
1c00d538:	00150004 	move	$r4,$r0
1c00d53c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00d540:	4c000020 	jirl	$r0,$r1,0
1c00d544:	03400000 	andi	$r0,$r0,0x0
1c00d548:	03400000 	andi	$r0,$r0,0x0
1c00d54c:	03400000 	andi	$r0,$r0,0x0

1c00d550 <puts>:
puts():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:15


int puts(char *s)
{
1c00d550:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00d554:	29803061 	st.w	$r1,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:16
putstring(s);
1c00d558:	57ff7bff 	bl	-136(0xfffff78) # 1c00d4d0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:17
putchar('\r');
1c00d55c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00d560:	57ff13ff 	bl	-240(0xfffff10) # 1c00d470 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:18
putchar('\n');
1c00d564:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00d568:	57ff0bff 	bl	-248(0xfffff08) # 1c00d470 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:20
return 0;
}
1c00d56c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00d570:	00150004 	move	$r4,$r0
1c00d574:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00d578:	4c000020 	jirl	$r0,$r1,0
1c00d57c:	03400000 	andi	$r0,$r0,0x0

1c00d580 <printbase>:
printbase():
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c00d580:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c00d584:	29816077 	st.w	$r23,$r3,88(0x58)
1c00d588:	29817061 	st.w	$r1,$r3,92(0x5c)
1c00d58c:	29815078 	st.w	$r24,$r3,84(0x54)
1c00d590:	29814079 	st.w	$r25,$r3,80(0x50)
1c00d594:	00150097 	move	$r23,$r4
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c00d598:	580008e0 	beq	$r7,$r0,8(0x8) # 1c00d5a0 <printbase+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7 (discriminator 1)
1c00d59c:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c00d640 <printbase+0xc0>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c00d5a0:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c00d660 <printbase+0xe0>
1c00d5a4:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c00d5a8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00d5ac:	001131ce 	sub.w	$r14,$r14,$r12
1c00d5b0:	50000800 	b	8(0x8) # 1c00d5b8 <printbase+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c00d5b4:	001501b7 	move	$r23,$r13
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c00d5b8:	00219aed 	mod.wu	$r13,$r23,$r6
1c00d5bc:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c00d5c4 <printbase+0x44>
1c00d5c0:	002a0007 	break	0x7
1c00d5c4:	2900018d 	st.b	$r13,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c00d5c8:	001031d8 	add.w	$r24,$r14,$r12
1c00d5cc:	00211aed 	div.wu	$r13,$r23,$r6
1c00d5d0:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c00d5d8 <printbase+0x58>
1c00d5d4:	002a0007 	break	0x7
1c00d5d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c00d5dc:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c00d5b4 <printbase+0x34>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c00d5e0:	600058b8 	blt	$r5,$r24,88(0x58) # 1c00d638 <printbase+0xb8>
1c00d5e4:	001500b7 	move	$r23,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c00d5e8:	02802419 	addi.w	$r25,$r0,9(0x9)
1c00d5ec:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c00d5f0:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c00d5f4:	00105d8c 	add.w	$r12,$r12,$r23
1c00d5f8:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00d5fc:	60001717 	blt	$r24,$r23,20(0x14) # 1c00d610 <printbase+0x90>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24 (discriminator 1)
1c00d600:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c00d604:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c00d608:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c00d610 <printbase+0x90>
1c00d60c:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c00d610:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 4)
1c00d614:	57fe5fff 	bl	-420(0xffffe5c) # 1c00d470 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c00d618:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c00d5f0 <printbase+0x70>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:28
	}
	return 0;
}
1c00d61c:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c00d620:	28816077 	ld.w	$r23,$r3,88(0x58)
1c00d624:	28815078 	ld.w	$r24,$r3,84(0x54)
1c00d628:	28814079 	ld.w	$r25,$r3,80(0x50)
1c00d62c:	00150004 	move	$r4,$r0
1c00d630:	02818063 	addi.w	$r3,$r3,96(0x60)
1c00d634:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c00d638:	00150305 	move	$r5,$r24
1c00d63c:	53ffabff 	b	-88(0xfffffa8) # 1c00d5e4 <printbase+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c00d640:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c00d644:	29803066 	st.w	$r6,$r3,12(0xc)
1c00d648:	29802065 	st.w	$r5,$r3,8(0x8)
1c00d64c:	57fe27ff 	bl	-476(0xffffe24) # 1c00d470 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:9
	value = -v;
1c00d650:	00115c17 	sub.w	$r23,$r0,$r23
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c00d654:	28802065 	ld.w	$r5,$r3,8(0x8)
1c00d658:	28803066 	ld.w	$r6,$r3,12(0xc)
1c00d65c:	53ff4bff 	b	-184(0xfffff48) # 1c00d5a4 <printbase+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c00d660:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c00d61c <printbase+0x9c>
1c00d664:	00150018 	move	$r24,$r0
1c00d668:	53ff7fff 	b	-132(0xfffff7c) # 1c00d5e4 <printbase+0x64>
1c00d66c:	03400000 	andi	$r0,$r0,0x0

1c00d670 <get_count>:
get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c00d670:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00d674:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c00d678:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00d67c:	28800324 	ld.w	$r4,$r25,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
    return  _get_count();
}
1c00d680:	28803079 	ld.w	$r25,$r3,12(0xc)
1c00d684:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00d688:	4c000020 	jirl	$r0,$r1,0
1c00d68c:	03400000 	andi	$r0,$r0,0x0

1c00d690 <_get_count>:
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
1c00d690:	53ffe3ff 	b	-32(0xfffffe0) # 1c00d670 <get_count>
1c00d694:	03400000 	andi	$r0,$r0,0x0
1c00d698:	03400000 	andi	$r0,$r0,0x0
1c00d69c:	03400000 	andi	$r0,$r0,0x0

1c00d6a0 <get_count_my>:
get_count_my():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c00d6a0:	00006004 	rdtimel.w	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c00d6a4:	4c000020 	jirl	$r0,$r1,0
1c00d6a8:	03400000 	andi	$r0,$r0,0x0
1c00d6ac:	03400000 	andi	$r0,$r0,0x0

1c00d6b0 <clock_gettime>:
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c00d6b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00d6b4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c00d6b8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00d6bc:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00d6c0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00d6c4:	001c35ed 	mul.w	$r13,$r15,$r13
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c00d6c8:	02819011 	addi.w	$r17,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00d6cc:	1400030e 	lu12i.w	$r14,24(0x18)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c00d6d0:	002145f0 	div.wu	$r16,$r15,$r17
1c00d6d4:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c00d6dc <clock_gettime+0x2c>
1c00d6d8:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00d6dc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00d6e0:	039a81ce 	ori	$r14,$r14,0x6a0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c00d6e4:	0021b211 	mod.wu	$r17,$r16,$r12
1c00d6e8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00d6f0 <clock_gettime+0x40>
1c00d6ec:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00d6f0:	002139f0 	div.wu	$r16,$r15,$r14
1c00d6f4:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c00d6fc <clock_gettime+0x4c>
1c00d6f8:	002a0007 	break	0x7
1c00d6fc:	0021b20e 	mod.wu	$r14,$r16,$r12
1c00d700:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00d708 <clock_gettime+0x58>
1c00d704:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c00d708:	298000a0 	st.w	$r0,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00d70c:	298030ae 	st.w	$r14,$r5,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c00d710:	298020b1 	st.w	$r17,$r5,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c00d714:	28803079 	ld.w	$r25,$r3,12(0xc)
1c00d718:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00d71c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00d720:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00d728 <clock_gettime+0x78>
1c00d724:	002a0007 	break	0x7
1c00d728:	298010ae 	st.w	$r14,$r5,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
}
1c00d72c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00d730:	4c000020 	jirl	$r0,$r1,0
1c00d734:	03400000 	andi	$r0,$r0,0x0
1c00d738:	03400000 	andi	$r0,$r0,0x0
1c00d73c:	03400000 	andi	$r0,$r0,0x0

1c00d740 <get_clock>:
get_clock():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
1c00d740:	53ff33ff 	b	-208(0xfffff30) # 1c00d670 <get_count>
1c00d744:	03400000 	andi	$r0,$r0,0x0
1c00d748:	03400000 	andi	$r0,$r0,0x0
1c00d74c:	03400000 	andi	$r0,$r0,0x0

1c00d750 <get_ns>:
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c00d750:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00d754:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c00d758:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00d75c:	28800324 	ld.w	$r4,$r25,0
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c00d760:	0280280c 	addi.w	$r12,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:57
    return n;
}
1c00d764:	28803079 	ld.w	$r25,$r3,12(0xc)
1c00d768:	001c3084 	mul.w	$r4,$r4,$r12
1c00d76c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00d770:	4c000020 	jirl	$r0,$r1,0
1c00d774:	03400000 	andi	$r0,$r0,0x0
1c00d778:	03400000 	andi	$r0,$r0,0x0
1c00d77c:	03400000 	andi	$r0,$r0,0x0

1c00d780 <get_us>:
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:61


unsigned long get_us(void)
{
1c00d780:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00d784:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c00d788:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00d78c:	28800324 	ld.w	$r4,$r25,0
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c00d790:	0281900c 	addi.w	$r12,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:66
    return n;
}
1c00d794:	28803079 	ld.w	$r25,$r3,12(0xc)
1c00d798:	0021308d 	div.wu	$r13,$r4,$r12
1c00d79c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00d7a4 <get_us+0x24>
1c00d7a0:	002a0007 	break	0x7
1c00d7a4:	001501a4 	move	$r4,$r13
1c00d7a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00d7ac:	4c000020 	jirl	$r0,$r1,0

1c00d7b0 <rand>:
rand():
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:4
static unsigned long next = 0xDEEDBEEF;

int rand(void) {
    next = next * 1103515245 + 12345;
1c00d7b0:	1c000e6f 	pcaddu12i	$r15,115(0x73)
1c00d7b4:	02b7f1ef 	addi.w	$r15,$r15,-516(0xdfc)
1c00d7b8:	288001ec 	ld.w	$r12,$r15,0
1c00d7bc:	14838c8e 	lu12i.w	$r14,269412(0x41c64)
1c00d7c0:	03b9b5ce 	ori	$r14,$r14,0xe6d
1c00d7c4:	001c398c 	mul.w	$r12,$r12,$r14
1c00d7c8:	1400006d 	lu12i.w	$r13,3(0x3)
1c00d7cc:	0380e5ad 	ori	$r13,$r13,0x39
1c00d7d0:	0010358c 	add.w	$r12,$r12,$r13
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:5
    return (unsigned int)(next/65536) % 32768;
1c00d7d4:	00408584 	slli.w	$r4,$r12,0x1
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:4
    next = next * 1103515245 + 12345;
1c00d7d8:	298001ec 	st.w	$r12,$r15,0
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:6
}
1c00d7dc:	0044c484 	srli.w	$r4,$r4,0x11
1c00d7e0:	4c000020 	jirl	$r0,$r1,0
1c00d7e4:	03400000 	andi	$r0,$r0,0x0
1c00d7e8:	03400000 	andi	$r0,$r0,0x0
1c00d7ec:	03400000 	andi	$r0,$r0,0x0

1c00d7f0 <srand>:
srand():
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:8
void srand(unsigned int seed) {
    next = seed;
1c00d7f0:	1c000e6c 	pcaddu12i	$r12,115(0x73)
1c00d7f4:	02b6f18c 	addi.w	$r12,$r12,-580(0xdbc)
1c00d7f8:	29800184 	st.w	$r4,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:9
}
1c00d7fc:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <rodata_end-0x5ac>:
1c080000:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c080004:	20732520 	ll.w	$r0,$r9,29476(0x7324)
1c080008:	6c696166 	bgeu	$r11,$r6,26976(0x6960) # 1c086968 <_end+0x6388>
1c08000c:	28206465 	ld.b	$r5,$r3,-2023(0x819)
1c080010:	20746f67 	ll.w	$r7,$r27,29804(0x746c)
1c080014:	20757425 	ll.w	$r5,$r1,30068(0x7574)
1c080018:	74736e69 	xvmin.w	$xr9,$xr19,$xr27
1c08001c:	20646165 	ll.w	$r5,$r11,25696(0x6460)
1c080020:	2520666f 	stptr.w	$r15,$r19,8292(0x2064)
1c080024:	0a29757a 	xvfmadd.d	$xr26,$xr11,$xr29,$xr18
1c080028:	00000000 	0x00000000
1c08002c:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c080030:	20732520 	ll.w	$r0,$r9,29476(0x7324)
1c080034:	6c696166 	bgeu	$r11,$r6,26976(0x6960) # 1c086994 <_end+0x63b4>
1c080038:	28206465 	ld.b	$r5,$r3,-2023(0x819)
1c08003c:	20746f67 	ll.w	$r7,$r27,29804(0x746c)
1c080040:	69206725 	bltu	$r25,$r5,73828(0x12064) # 1c0920a4 <_end+0x11ac4>
1c080044:	6574736e 	bge	$r27,$r14,95344(0x17470) # 1c0974b4 <_end+0x16ed4>
1c080048:	6f206461 	bgeu	$r3,$r1,-57244(0x32064) # 1c0720ac <_data_lma+0x648ac>
1c08004c:	67252066 	bge	$r3,$r6,-56032(0x32520) # 1c07256c <_data_lma+0x64d6c>
1c080050:	00000a29 	0x00000a29
1c080054:	2c732522 	vst	$vr2,$r9,-823(0xcc9)
1c080058:	20752520 	ll.w	$r0,$r9,29988(0x7524)
1c08005c:	6d657469 	bgeu	$r3,$r9,91508(0x16574) # 1c0965d0 <_end+0x15ff0>
1c080060:	20202273 	ll.w	$r19,$r19,8224(0x2020)
1c080064:	73206425 	0x73206425
1c080068:	000a6365 	0x000a6365
1c08006c:	38746e69 	fldgt.s	$f9,$r19,$r27
1c080070:	6d20745f 	bgeu	$r2,$r31,73844(0x12074) # 1c0920e4 <_end+0x11b04>
1c080074:	6d696e69 	bgeu	$r19,$r9,92524(0x1696c) # 1c0969e0 <_end+0x16400>
1c080078:	76206d75 	0x76206d75
1c08007c:	65756c61 	bge	$r3,$r1,95596(0x1756c) # 1c0975e8 <_end+0x17008>
1c080080:	71657320 	0x71657320
1c080084:	636e6575 	blt	$r11,$r21,-37276(0x36e64) # 1c076ee8 <_data_lma+0x696e8>
1c080088:	00003265 	revb.2h	$r5,$r19
1c08008c:	38746e69 	fldgt.s	$f9,$r19,$r27
1c080090:	6d20745f 	bgeu	$r2,$r31,73844(0x12074) # 1c092104 <_end+0x11b24>
1c080094:	6d697861 	bgeu	$r3,$r1,92536(0x16978) # 1c096a0c <_end+0x1642c>
1c080098:	76206d75 	0x76206d75
1c08009c:	65756c61 	bge	$r3,$r1,95596(0x1756c) # 1c097608 <_end+0x17028>
1c0800a0:	71657320 	0x71657320
1c0800a4:	636e6575 	blt	$r11,$r21,-37276(0x36e64) # 1c076f08 <_data_lma+0x69708>
1c0800a8:	00003265 	revb.2h	$r5,$r19
1c0800ac:	38746e69 	fldgt.s	$f9,$r19,$r27
1c0800b0:	6d20745f 	bgeu	$r2,$r31,73844(0x12074) # 1c092124 <_end+0x11b44>
1c0800b4:	6d696e69 	bgeu	$r19,$r9,92524(0x1696c) # 1c096a20 <_end+0x16440>
1c0800b8:	70206d75 	vsubwev.h.b	$vr21,$vr11,$vr27
1c0800bc:	7469736f 	xvavgr.w	$xr15,$xr27,$xr28
1c0800c0:	206e6f69 	ll.w	$r9,$r27,28268(0x6e6c)
1c0800c4:	75716573 	0x75716573
1c0800c8:	65636e65 	bge	$r19,$r5,90988(0x1636c) # 1c096434 <_end+0x15e54>
1c0800cc:	00000031 	0x00000031
1c0800d0:	38746e69 	fldgt.s	$f9,$r19,$r27
1c0800d4:	6d20745f 	bgeu	$r2,$r31,73844(0x12074) # 1c092148 <_end+0x11b68>
1c0800d8:	6d697861 	bgeu	$r3,$r1,92536(0x16978) # 1c096a50 <_end+0x16470>
1c0800dc:	70206d75 	vsubwev.h.b	$vr21,$vr11,$vr27
1c0800e0:	7469736f 	xvavgr.w	$xr15,$xr27,$xr28
1c0800e4:	206e6f69 	ll.w	$r9,$r27,28268(0x6e6c)
1c0800e8:	75716573 	0x75716573
1c0800ec:	65636e65 	bge	$r19,$r5,90988(0x1636c) # 1c096458 <_end+0x15e78>
1c0800f0:	00000031 	0x00000031
1c0800f4:	746e6975 	0x746e6975
1c0800f8:	20745f38 	ll.w	$r24,$r25,29788(0x745c)
1c0800fc:	696e696d 	bltu	$r11,$r13,93800(0x16e68) # 1c096f64 <_end+0x16984>
1c080100:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c080104:	756c6176 	0x756c6176
1c080108:	65732065 	bge	$r3,$r5,95008(0x17320) # 1c097428 <_end+0x16e48>
1c08010c:	6e657571 	bgeu	$r11,$r17,-105100(0x26574) # 1c066680 <_data_lma+0x58e80>
1c080110:	00326563 	0x00326563
1c080114:	746e6975 	0x746e6975
1c080118:	20745f38 	ll.w	$r24,$r25,29788(0x745c)
1c08011c:	6978616d 	bltu	$r11,$r13,96352(0x17860) # 1c09797c <_end+0x1739c>
1c080120:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c080124:	756c6176 	0x756c6176
1c080128:	65732065 	bge	$r3,$r5,95008(0x17320) # 1c097448 <_end+0x16e68>
1c08012c:	6e657571 	bgeu	$r11,$r17,-105100(0x26574) # 1c0666a0 <_data_lma+0x58ea0>
1c080130:	00326563 	0x00326563
1c080134:	746e6975 	0x746e6975
1c080138:	20745f38 	ll.w	$r24,$r25,29788(0x745c)
1c08013c:	696e696d 	bltu	$r11,$r13,93800(0x16e68) # 1c096fa4 <_end+0x169c4>
1c080140:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c080144:	69736f70 	bltu	$r27,$r16,95084(0x1736c) # 1c0974b0 <_end+0x16ed0>
1c080148:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c0670b0 <_data_lma+0x598b0>
1c08014c:	71657320 	0x71657320
1c080150:	636e6575 	blt	$r11,$r21,-37276(0x36e64) # 1c076fb4 <_data_lma+0x697b4>
1c080154:	00003165 	revb.2h	$r5,$r11
1c080158:	746e6975 	0x746e6975
1c08015c:	20745f38 	ll.w	$r24,$r25,29788(0x745c)
1c080160:	6978616d 	bltu	$r11,$r13,96352(0x17860) # 1c0979c0 <_end+0x173e0>
1c080164:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c080168:	69736f70 	bltu	$r27,$r16,95084(0x1736c) # 1c0974d4 <_end+0x16ef4>
1c08016c:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c0670d4 <_data_lma+0x598d4>
1c080170:	71657320 	0x71657320
1c080174:	636e6575 	blt	$r11,$r21,-37276(0x36e64) # 1c076fd8 <_data_lma+0x697d8>
1c080178:	00003165 	revb.2h	$r5,$r11
1c08017c:	31746e69 	0x31746e69
1c080180:	20745f36 	ll.w	$r22,$r25,29788(0x745c)
1c080184:	696e696d 	bltu	$r11,$r13,93800(0x16e68) # 1c096fec <_end+0x16a0c>
1c080188:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c08018c:	756c6176 	0x756c6176
1c080190:	65732065 	bge	$r3,$r5,95008(0x17320) # 1c0974b0 <_end+0x16ed0>
1c080194:	6e657571 	bgeu	$r11,$r17,-105100(0x26574) # 1c066708 <_data_lma+0x58f08>
1c080198:	00326563 	0x00326563
1c08019c:	31746e69 	0x31746e69
1c0801a0:	20745f36 	ll.w	$r22,$r25,29788(0x745c)
1c0801a4:	6978616d 	bltu	$r11,$r13,96352(0x17860) # 1c097a04 <_end+0x17424>
1c0801a8:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c0801ac:	756c6176 	0x756c6176
1c0801b0:	65732065 	bge	$r3,$r5,95008(0x17320) # 1c0974d0 <_end+0x16ef0>
1c0801b4:	6e657571 	bgeu	$r11,$r17,-105100(0x26574) # 1c066728 <_data_lma+0x58f28>
1c0801b8:	00326563 	0x00326563
1c0801bc:	31746e69 	0x31746e69
1c0801c0:	20745f36 	ll.w	$r22,$r25,29788(0x745c)
1c0801c4:	696e696d 	bltu	$r11,$r13,93800(0x16e68) # 1c09702c <_end+0x16a4c>
1c0801c8:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c0801cc:	69736f70 	bltu	$r27,$r16,95084(0x1736c) # 1c097538 <_end+0x16f58>
1c0801d0:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c067138 <_data_lma+0x59938>
1c0801d4:	71657320 	0x71657320
1c0801d8:	636e6575 	blt	$r11,$r21,-37276(0x36e64) # 1c07703c <_data_lma+0x6983c>
1c0801dc:	00003165 	revb.2h	$r5,$r11
1c0801e0:	31746e69 	0x31746e69
1c0801e4:	20745f36 	ll.w	$r22,$r25,29788(0x745c)
1c0801e8:	6978616d 	bltu	$r11,$r13,96352(0x17860) # 1c097a48 <_end+0x17468>
1c0801ec:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c0801f0:	69736f70 	bltu	$r27,$r16,95084(0x1736c) # 1c09755c <_end+0x16f7c>
1c0801f4:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c06715c <_data_lma+0x5995c>
1c0801f8:	71657320 	0x71657320
1c0801fc:	636e6575 	blt	$r11,$r21,-37276(0x36e64) # 1c077060 <_data_lma+0x69860>
1c080200:	00003165 	revb.2h	$r5,$r11
1c080204:	746e6975 	0x746e6975
1c080208:	745f3631 	0x745f3631
1c08020c:	6e696d20 	bgeu	$r9,$r0,-104084(0x2696c) # 1c066b78 <_data_lma+0x59378>
1c080210:	6d756d69 	bgeu	$r11,$r9,95596(0x1756c) # 1c09777c <_end+0x1719c>
1c080214:	6c617620 	bgeu	$r17,$r0,24948(0x6174) # 1c086388 <_end+0x5da8>
1c080218:	73206575 	0x73206575
1c08021c:	65757165 	bge	$r11,$r5,95600(0x17570) # 1c09778c <_end+0x171ac>
1c080220:	3265636e 	0x3265636e
1c080224:	00000000 	0x00000000
1c080228:	746e6975 	0x746e6975
1c08022c:	745f3631 	0x745f3631
1c080230:	78616d20 	0x78616d20
1c080234:	6d756d69 	bgeu	$r11,$r9,95596(0x1756c) # 1c0977a0 <_end+0x171c0>
1c080238:	6c617620 	bgeu	$r17,$r0,24948(0x6174) # 1c0863ac <_end+0x5dcc>
1c08023c:	73206575 	0x73206575
1c080240:	65757165 	bge	$r11,$r5,95600(0x17570) # 1c0977b0 <_end+0x171d0>
1c080244:	3265636e 	0x3265636e
1c080248:	00000000 	0x00000000
1c08024c:	746e6975 	0x746e6975
1c080250:	745f3631 	0x745f3631
1c080254:	6e696d20 	bgeu	$r9,$r0,-104084(0x2696c) # 1c066bc0 <_data_lma+0x593c0>
1c080258:	6d756d69 	bgeu	$r11,$r9,95596(0x1756c) # 1c0977c4 <_end+0x171e4>
1c08025c:	736f7020 	vssrarni.du.q	$vr0,$vr1,0x5c
1c080260:	6f697469 	bgeu	$r3,$r9,-38540(0x36974) # 1c076bd4 <_data_lma+0x693d4>
1c080264:	6573206e 	bge	$r3,$r14,95008(0x17320) # 1c097584 <_end+0x16fa4>
1c080268:	6e657571 	bgeu	$r11,$r17,-105100(0x26574) # 1c0667dc <_data_lma+0x58fdc>
1c08026c:	00316563 	0x00316563
1c080270:	746e6975 	0x746e6975
1c080274:	745f3631 	0x745f3631
1c080278:	78616d20 	0x78616d20
1c08027c:	6d756d69 	bgeu	$r11,$r9,95596(0x1756c) # 1c0977e8 <_end+0x17208>
1c080280:	736f7020 	vssrarni.du.q	$vr0,$vr1,0x5c
1c080284:	6f697469 	bgeu	$r3,$r9,-38540(0x36974) # 1c076bf8 <_data_lma+0x693f8>
1c080288:	6573206e 	bge	$r3,$r14,95008(0x17320) # 1c0975a8 <_end+0x16fc8>
1c08028c:	6e657571 	bgeu	$r11,$r17,-105100(0x26574) # 1c066800 <_data_lma+0x59000>
1c080290:	00316563 	0x00316563
1c080294:	33746e69 	xvstelm.h	$xr9,$r19,54(0x36),0xd
1c080298:	20745f32 	ll.w	$r18,$r25,29788(0x745c)
1c08029c:	696e696d 	bltu	$r11,$r13,93800(0x16e68) # 1c097104 <_end+0x16b24>
1c0802a0:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c0802a4:	756c6176 	0x756c6176
1c0802a8:	65732065 	bge	$r3,$r5,95008(0x17320) # 1c0975c8 <_end+0x16fe8>
1c0802ac:	6e657571 	bgeu	$r11,$r17,-105100(0x26574) # 1c066820 <_data_lma+0x59020>
1c0802b0:	00326563 	0x00326563
1c0802b4:	33746e69 	xvstelm.h	$xr9,$r19,54(0x36),0xd
1c0802b8:	20745f32 	ll.w	$r18,$r25,29788(0x745c)
1c0802bc:	6978616d 	bltu	$r11,$r13,96352(0x17860) # 1c097b1c <_end+0x1753c>
1c0802c0:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c0802c4:	756c6176 	0x756c6176
1c0802c8:	65732065 	bge	$r3,$r5,95008(0x17320) # 1c0975e8 <_end+0x17008>
1c0802cc:	6e657571 	bgeu	$r11,$r17,-105100(0x26574) # 1c066840 <_data_lma+0x59040>
1c0802d0:	00326563 	0x00326563
1c0802d4:	33746e69 	xvstelm.h	$xr9,$r19,54(0x36),0xd
1c0802d8:	20745f32 	ll.w	$r18,$r25,29788(0x745c)
1c0802dc:	696e696d 	bltu	$r11,$r13,93800(0x16e68) # 1c097144 <_end+0x16b64>
1c0802e0:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c0802e4:	69736f70 	bltu	$r27,$r16,95084(0x1736c) # 1c097650 <_end+0x17070>
1c0802e8:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c067250 <_data_lma+0x59a50>
1c0802ec:	71657320 	0x71657320
1c0802f0:	636e6575 	blt	$r11,$r21,-37276(0x36e64) # 1c077154 <_data_lma+0x69954>
1c0802f4:	00003165 	revb.2h	$r5,$r11
1c0802f8:	33746e69 	xvstelm.h	$xr9,$r19,54(0x36),0xd
1c0802fc:	20745f32 	ll.w	$r18,$r25,29788(0x745c)
1c080300:	6978616d 	bltu	$r11,$r13,96352(0x17860) # 1c097b60 <_end+0x17580>
1c080304:	206d756d 	ll.w	$r13,$r11,28020(0x6d74)
1c080308:	69736f70 	bltu	$r27,$r16,95084(0x1736c) # 1c097674 <_end+0x17094>
1c08030c:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c067274 <_data_lma+0x59a74>
1c080310:	71657320 	0x71657320
1c080314:	636e6575 	blt	$r11,$r21,-37276(0x36e64) # 1c077178 <_data_lma+0x69978>
1c080318:	00003165 	revb.2h	$r5,$r11
1c08031c:	746e6975 	0x746e6975
1c080320:	745f3233 	0x745f3233
1c080324:	6e696d20 	bgeu	$r9,$r0,-104084(0x2696c) # 1c066c90 <_data_lma+0x59490>
1c080328:	6d756d69 	bgeu	$r11,$r9,95596(0x1756c) # 1c097894 <_end+0x172b4>
1c08032c:	6c617620 	bgeu	$r17,$r0,24948(0x6174) # 1c0864a0 <_end+0x5ec0>
1c080330:	73206575 	0x73206575
1c080334:	65757165 	bge	$r11,$r5,95600(0x17570) # 1c0978a4 <_end+0x172c4>
1c080338:	3265636e 	0x3265636e
1c08033c:	00000000 	0x00000000
1c080340:	746e6975 	0x746e6975
1c080344:	745f3233 	0x745f3233
1c080348:	78616d20 	0x78616d20
1c08034c:	6d756d69 	bgeu	$r11,$r9,95596(0x1756c) # 1c0978b8 <_end+0x172d8>
1c080350:	6c617620 	bgeu	$r17,$r0,24948(0x6174) # 1c0864c4 <_end+0x5ee4>
1c080354:	73206575 	0x73206575
1c080358:	65757165 	bge	$r11,$r5,95600(0x17570) # 1c0978c8 <_end+0x172e8>
1c08035c:	3265636e 	0x3265636e
1c080360:	00000000 	0x00000000
1c080364:	746e6975 	0x746e6975
1c080368:	745f3233 	0x745f3233
1c08036c:	6e696d20 	bgeu	$r9,$r0,-104084(0x2696c) # 1c066cd8 <_data_lma+0x594d8>
1c080370:	6d756d69 	bgeu	$r11,$r9,95596(0x1756c) # 1c0978dc <_end+0x172fc>
1c080374:	736f7020 	vssrarni.du.q	$vr0,$vr1,0x5c
1c080378:	6f697469 	bgeu	$r3,$r9,-38540(0x36974) # 1c076cec <_data_lma+0x694ec>
1c08037c:	6573206e 	bge	$r3,$r14,95008(0x17320) # 1c09769c <_end+0x170bc>
1c080380:	6e657571 	bgeu	$r11,$r17,-105100(0x26574) # 1c0668f4 <_data_lma+0x590f4>
1c080384:	00316563 	0x00316563
1c080388:	746e6975 	0x746e6975
1c08038c:	745f3233 	0x745f3233
1c080390:	78616d20 	0x78616d20
1c080394:	6d756d69 	bgeu	$r11,$r9,95596(0x1756c) # 1c097900 <_end+0x17320>
1c080398:	736f7020 	vssrarni.du.q	$vr0,$vr1,0x5c
1c08039c:	6f697469 	bgeu	$r3,$r9,-38540(0x36974) # 1c076d10 <_data_lma+0x69510>
1c0803a0:	6573206e 	bge	$r3,$r14,95008(0x17320) # 1c0976c0 <_end+0x170e0>
1c0803a4:	6e657571 	bgeu	$r11,$r17,-105100(0x26574) # 1c066918 <_data_lma+0x59118>
1c0803a8:	00316563 	0x00316563
1c0803ac:	6d6e696d 	bgeu	$r11,$r13,93800(0x16e68) # 1c097214 <_end+0x16c34>
1c0803b0:	73207861 	0x73207861
1c0803b4:	65757165 	bge	$r11,$r5,95600(0x17570) # 1c097924 <_end+0x17344>
1c0803b8:	2065636e 	ll.w	$r14,$r27,25952(0x6560)
1c0803bc:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c0803c0:	67656220 	bge	$r17,$r0,-39584(0x36560) # 1c076920 <_data_lma+0x69120>
1c0803c4:	002e6e69 	0x002e6e69
1c0803c8:	6d6e696d 	bgeu	$r11,$r13,93800(0x16e68) # 1c097230 <_end+0x16c50>
1c0803cc:	73207861 	0x73207861
1c0803d0:	65757165 	bge	$r11,$r5,95600(0x17570) # 1c097940 <_end+0x17360>
1c0803d4:	2065636e 	ll.w	$r14,$r27,25952(0x6560)
1c0803d8:	53534150 	b	88298304(0x5435340) # 214b5718 <_stack+0x53b571c>
1c0803dc:	00000021 	0x00000021
1c0803e0:	6d6e696d 	bgeu	$r11,$r13,93800(0x16e68) # 1c097248 <_end+0x16c68>
1c0803e4:	73207861 	0x73207861
1c0803e8:	65757165 	bge	$r11,$r5,95600(0x17570) # 1c097958 <_end+0x17378>
1c0803ec:	2065636e 	ll.w	$r14,$r27,25952(0x6560)
1c0803f0:	4f525245 	jirl	$r5,$r18,-44464(0x35250)
1c0803f4:	21212145 	sc.w	$r5,$r10,8480(0x2120)
1c0803f8:	00000000 	0x00000000
1c0803fc:	6d6e696d 	bgeu	$r11,$r13,93800(0x16e68) # 1c097264 <_end+0x16c84>
1c080400:	73207861 	0x73207861
1c080404:	65757165 	bge	$r11,$r5,95600(0x17570) # 1c097974 <_end+0x17394>
1c080408:	3a65636e 	0x3a65636e
1c08040c:	746f5420 	0x746f5420
1c080410:	43206c61 	beqz	$r3,467052(0x7206c) # 1c0f247c <_end+0x71e9c>
1c080414:	746e756f 	0x746e756f
1c080418:	436f5328 	beqz	$r25,2322256(0x236f50) # 1c2b7368 <_stack+0x1b736c>
1c08041c:	756f6320 	0x756f6320
1c080420:	2029746e 	ll.w	$r14,$r3,10612(0x2974)
1c080424:	7830203d 	0x7830203d
1c080428:	000a7825 	0x000a7825
1c08042c:	6d6e696d 	bgeu	$r11,$r13,93800(0x16e68) # 1c097294 <_end+0x16cb4>
1c080430:	73207861 	0x73207861
1c080434:	65757165 	bge	$r11,$r5,95600(0x17570) # 1c0979a4 <_end+0x173c4>
1c080438:	3a65636e 	0x3a65636e
1c08043c:	746f5420 	0x746f5420
1c080440:	43206c61 	beqz	$r3,467052(0x7206c) # 1c0f24ac <_end+0x71ecc>
1c080444:	746e756f 	0x746e756f
1c080448:	55504328 	bl	-56537024(0xca15040) # 18a95488 <__stack_size+0x18a85488>
1c08044c:	756f6320 	0x756f6320
1c080450:	2029746e 	ll.w	$r14,$r3,10612(0x2974)
1c080454:	7830203d 	0x7830203d
1c080458:	000a7825 	0x000a7825
1c08045c:	1c00d450 	pcaddu12i	$r16,1698(0x6a2)
1c080460:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080464:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080468:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c08046c:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080470:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080474:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080478:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c08047c:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080480:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080484:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080488:	1c00d328 	pcaddu12i	$r8,1689(0x699)
1c08048c:	1c00d334 	pcaddu12i	$r20,1689(0x699)
1c080490:	1c00d334 	pcaddu12i	$r20,1689(0x699)
1c080494:	1c00d334 	pcaddu12i	$r20,1689(0x699)
1c080498:	1c00d334 	pcaddu12i	$r20,1689(0x699)
1c08049c:	1c00d334 	pcaddu12i	$r20,1689(0x699)
1c0804a0:	1c00d334 	pcaddu12i	$r20,1689(0x699)
1c0804a4:	1c00d334 	pcaddu12i	$r20,1689(0x699)
1c0804a8:	1c00d334 	pcaddu12i	$r20,1689(0x699)
1c0804ac:	1c00d334 	pcaddu12i	$r20,1689(0x699)
1c0804b0:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804b4:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804b8:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804bc:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804c0:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804c4:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804c8:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804cc:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804d0:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804d4:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804d8:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804dc:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804e0:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804e4:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804e8:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804ec:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804f0:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804f4:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804f8:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0804fc:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080500:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080504:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080508:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c08050c:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080510:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080514:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080518:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c08051c:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080520:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080524:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080528:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c08052c:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080530:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080534:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080538:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c08053c:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080540:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080544:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080548:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c08054c:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080550:	1c00d374 	pcaddu12i	$r20,1691(0x69b)
1c080554:	1c00d390 	pcaddu12i	$r16,1692(0x69c)
1c080558:	1c00d3a4 	pcaddu12i	$r4,1693(0x69d)
1c08055c:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080560:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080564:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080568:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c08056c:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080570:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080574:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080578:	1c00d3c0 	pcaddu12i	$r0,1694(0x69e)
1c08057c:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080580:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080584:	1c00d3e0 	pcaddu12i	$r0,1695(0x69f)
1c080588:	1c00d400 	pcaddu12i	$r0,1696(0x6a0)
1c08058c:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080590:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c080594:	1c00d420 	pcaddu12i	$r0,1697(0x6a1)
1c080598:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c08059c:	1c00d434 	pcaddu12i	$r20,1697(0x6a1)
1c0805a0:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0805a4:	1c00d460 	pcaddu12i	$r0,1699(0x6a3)
1c0805a8:	1c00d400 	pcaddu12i	$r0,1696(0x6a0)

1c0805ac <rodata_end>:
rodata_end():
1c0805ac:	deedbeef 	0xdeedbeef

1c0805b0 <minmax_sequence_init_value>:
1c0805b0:	00000003 	0x00000003

1c0805b4 <minmax_sequence_iter>:
1c0805b4:	00000002 	0x00000002

Disassembly of section .got:

1c0805b8 <_GLOBAL_OFFSET_TABLE_>:
1c0805b8:	00000000 	0x00000000
1c0805bc:	1c0805d4 	pcaddu12i	$r20,16430(0x402e)
1c0805c0:	1c0805d8 	pcaddu12i	$r24,16430(0x402e)

Disassembly of section .bss:

1c0805c4 <gMaxPosition>:
__bss_start():
1c0805c4:	00000000 	0x00000000

1c0805c8 <gMinPosition>:
1c0805c8:	00000000 	0x00000000

1c0805cc <gMaxResult>:
1c0805cc:	00000000 	0x00000000

1c0805d0 <gMinResult>:
1c0805d0:	00000000 	0x00000000

1c0805d4 <end_time>:
1c0805d4:	00000000 	0x00000000

1c0805d8 <start_time>:
1c0805d8:	00000000 	0x00000000

Disassembly of section .stack:

1c0f0000 <_stack-0xfffc>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	6f4c2820 	bgeu	$r1,$r0,-46040(0x34c28) # ffff4c2c <_stack+0xe3ef4c30>
   8:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d6774 <__stack_size+0x3c6774>
   c:	20686372 	ll.w	$r18,$r27,26720(0x6860)
  10:	20554e47 	ll.w	$r7,$r18,21836(0x554c)
  14:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 6f80 <__stack_size-0x9080>
  18:	69616863 	bltu	$r3,$r3,90472(0x16168) # 16180 <__stack_size+0x6180>
  1c:	414c206e 	beqz	$r3,3755040(0x394c20) # 394c3c <__stack_size+0x384c3c>
  20:	76203233 	0x76203233
  24:	20302e32 	ll.w	$r18,$r17,12332(0x302c)
  28:	32303228 	0x32303228
  2c:	30393033 	0x30393033
  30:	20292933 	ll.w	$r19,$r9,10536(0x2928)
  34:	2e332e38 	0x2e332e38
  38:	Address 0x0000000000000038 is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000268 	0x00000268
   4:	00000004 	0x00000004
   8:	01040000 	0x01040000
   c:	00000018 	0x00000018
  10:	0000b30c 	0x0000b30c
  14:	0000bc00 	0x0000bc00
  18:	00d23000 	bstrpick.d	$r0,$r0,0x12,0xc
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e60400 	bstrpick.d	$r0,$r0,0x26,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	00d23000 	bstrpick.d	$r0,$r0,0x12,0xc
  44:	00023c1c 	0x00023c1c
  48:	289c0100 	ld.w	$r0,$r8,1792(0x700)
  4c:	05000002 	0x05000002
  50:	00746d66 	bstrins.w	$r6,$r11,0x14,0x1b
  54:	2f180101 	0x2f180101
  58:	08000002 	0x08000002
  5c:	00000000 	0x00000000
  60:	06000000 	cacop	0x0,$r0,0
  64:	01006907 	0x01006907
  68:	02280503 	slti	$r3,$r8,-1535(0xa01)
  6c:	00710000 	bstrins.w	$r0,$r0,0x11,0x0
  70:	003f0000 	0x003f0000
  74:	63070000 	blt	$r0,$r0,-63744(0x30700) # ffff0774 <_stack+0xe3ef0778>
  78:	06040100 	cacop	0x0,$r8,256(0x100)
  7c:	00000235 	0x00000235
  80:	000001a9 	0x000001a9
  84:	000001a3 	0x000001a3
  88:	67726107 	bge	$r8,$r7,-36256(0x37260) # ffff72e8 <_stack+0xe3ef72ec>
  8c:	08050100 	0x08050100
  90:	00000241 	0x00000241
  94:	000001f6 	0x000001f6
  98:	000001d2 	0x000001d2
  9c:	00706108 	bstrins.w	$r8,$r8,0x10,0x18
  a0:	25070601 	stptr.w	$r1,$r16,1796(0x704)
  a4:	03000000 	lu52i.d	$r0,$r0,0
  a8:	077fbc91 	0x077fbc91
  ac:	07010077 	0x07010077
  b0:	00022805 	0x00022805
  b4:	0002f000 	0x0002f000
  b8:	0002d400 	0x0002d400
  bc:	00000900 	0x00000900
  c0:	10010000 	addu16i.d	$r0,$r0,64(0x40)
  c4:	00d2dc01 	bstrpick.d	$r1,$r0,0x12,0x37
  c8:	00180a1c 	sra.w	$r28,$r16,$r2
  cc:	01d00000 	0x01d00000
  d0:	a90b0000 	0xa90b0000
  d4:	01000000 	0x01000000
  d8:	02280514 	slti	$r20,$r8,-1535(0xa01)
  dc:	00e40000 	bstrpick.d	$r0,$r0,0x24,0x0
  e0:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
  e4:	0000f10b 	0x0000f10b
  e8:	05190100 	0x05190100
  ec:	00000228 	0x00000228
  f0:	000000f6 	0x000000f6
  f4:	9f0b0006 	0x9f0b0006
  f8:	01000000 	0x01000000
  fc:	0228051e 	slti	$r30,$r8,-1535(0xa01)
 100:	01080000 	0x01080000
 104:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
 108:	00d38c0c 	bstrpick.d	$r12,$r0,0x13,0x23
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	00d3a00e 	bstrpick.d	$r14,$r0,0x13,0x28
 124:	0002531c 	0x0002531c
 128:	d3bc0c00 	0xd3bc0c00
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	d3d80c00 	0xd3d80c00
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	d3f80c00 	0xd3f80c00
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	180c0030 	pcaddi	$r16,24577(0x6001)
 174:	471c00d4 	bnez	$r6,-2941952(0x531c00) # ffd31d74 <_stack+0xe3c31d78>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	300e0030 	0x300e0030
 18c:	5f1c00d4 	bne	$r6,$r20,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c00d44c 	pcaddu12i	$r12,1698(0x6a2)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c00d45c 	pcaddu12i	$r28,1698(0x6a2)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c00d468 	pcaddu12i	$r8,1699(0x6a3)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00f10b00 	bstrpick.d	$r0,$r24,0x31,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c00d2bc 	pcaddu12i	$r28,1685(0x695)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000f10b 	0x0000f10b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	c40f0006 	0xc40f0006
 208:	531c00d2 	b	55254016(0x34b1c00) # 34b1e08 <__stack_size+0x34a1e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	9c0f0000 	0x9c0f0000
 218:	531c00d2 	b	55254016(0x34b1c00) # 34b1e18 <__stack_size+0x34a1e18>
 21c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 220:	87025401 	0x87025401
 224:	00000000 	0x00000000
 228:	69050412 	bltu	$r0,$r18,66820(0x10504) # 1072c <__stack_size+0x72c>
 22c:	1300746e 	addu16i.d	$r14,$r3,-16355(0xc01d)
 230:	00023c04 	0x00023c04
 234:	06010300 	cacop	0x0,$r24,64(0x40)
 238:	000000f4 	0x000000f4
 23c:	00023514 	0x00023514
 240:	25041300 	stptr.w	$r0,$r24,1040(0x410)
 244:	15000000 	lu12i.w	$r0,-524288(0x80000)
 248:	0000009f 	0x0000009f
 24c:	0000009f 	0x0000009f
 250:	15051e01 	lu12i.w	$r1,-513808(0x828f0)
 254:	000000f1 	0x000000f1
 258:	000000f1 	0x000000f1
 25c:	15051901 	lu12i.w	$r1,-513848(0x828c8)
 260:	000000a9 	0x000000a9
 264:	000000a9 	0x000000a9
 268:	00051401 	alsl.w	$r1,$r0,$r5,0x3
 26c:	000000c4 	0x000000c4
 270:	011e0004 	0x011e0004
 274:	01040000 	0x01040000
 278:	00000018 	0x00000018
 27c:	0000f90c 	0x0000f90c
 280:	0000bc00 	0x0000bc00
 284:	00d47000 	bstrpick.d	$r0,$r0,0x14,0x1c
 288:	0000541c 	bitrev.d	$r28,$r0
 28c:	0001a800 	asrtgt.d	$r0,$r10
 290:	07040200 	0x07040200
 294:	0000000b 	0x0000000b
 298:	06070402 	cacop	0x2,$r0,449(0x1c1)
 29c:	03000000 	lu52i.d	$r0,$r0,0
 2a0:	000000ed 	0x000000ed
 2a4:	01060701 	0x01060701
 2a8:	0000004b 	0x0000004b
 2ac:	01006304 	0x01006304
 2b0:	004b0607 	0x004b0607
 2b4:	05000000 	0x05000000
 2b8:	6e690504 	bgeu	$r8,$r4,-104188(0x26904) # fffe6bbc <_stack+0xe3ee6bc0>
 2bc:	f1060074 	0xf1060074
 2c0:	01000000 	0x01000000
 2c4:	004b0501 	0x004b0501
 2c8:	d4700000 	0xd4700000
 2cc:	00281c00 	0x00281c00
 2d0:	9c010000 	0x9c010000
 2d4:	000000b0 	0x000000b0
 2d8:	01006307 	0x01006307
 2dc:	004b1101 	0x004b1101
 2e0:	03970000 	ori	$r0,$r0,0x5c0
 2e4:	03930000 	ori	$r0,$r0,0x4c0
 2e8:	ed080000 	0xed080000
 2ec:	01000000 	0x01000000
 2f0:	004b0103 	0x004b0103
 2f4:	00900000 	bstrins.d	$r0,$r0,0x10,0x0
 2f8:	00090000 	bytepick.w	$r0,$r0,$r0,0x2
 2fc:	0000330a 	revb.2h	$r10,$r24
 300:	00d47000 	bstrpick.d	$r0,$r0,0x14,0x1c
 304:	0030021c 	0x0030021c
 308:	03010000 	lu52i.d	$r0,$r0,64(0x40)
 30c:	00400b01 	0x00400b01
 310:	03ba0000 	ori	$r0,$r0,0xe80
 314:	03b80000 	ori	$r0,$r0,0xe00
 318:	00000000 	0x00000000
 31c:	0000330c 	revb.2h	$r12,$r24
 320:	00d4a000 	bstrpick.d	$r0,$r0,0x14,0x28
 324:	0000241c 	clz.d	$r28,$r0
 328:	0d9c0100 	0x0d9c0100
 32c:	00000040 	0x00000040
 330:	00005401 	bitrev.d	$r1,$r0
 334:	00000170 	0x00000170
 338:	01ef0004 	0x01ef0004
 33c:	01040000 	0x01040000
 340:	00000018 	0x00000018
 344:	0001030c 	0x0001030c
 348:	0000bc00 	0x0000bc00
 34c:	00d4d000 	bstrpick.d	$r0,$r0,0x14,0x34
 350:	0000ac1c 	0x0000ac1c
 354:	00020900 	0x00020900
 358:	07040200 	0x07040200
 35c:	0000000b 	0x0000000b
 360:	06070402 	cacop	0x2,$r0,449(0x1c1)
 364:	03000000 	lu52i.d	$r0,$r0,0
 368:	0000010a 	0x0000010a
 36c:	a9050e01 	0xa9050e01
 370:	50000000 	b	0 # 370 <__stack_size-0xfc90>
 374:	2c1c00d5 	vld	$vr21,$r6,1792(0x700)
 378:	01000000 	0x01000000
 37c:	0000a99c 	0x0000a99c
 380:	00730400 	bstrins.w	$r0,$r0,0x13,0x1
 384:	b0100e01 	0xb0100e01
 388:	d1000000 	0xd1000000
 38c:	cd000003 	0xcd000003
 390:	05000003 	0x05000003
 394:	000000f1 	0x000000f1
 398:	a9100601 	0xa9100601
 39c:	71000000 	0x71000000
 3a0:	06000000 	cacop	0x0,$r0,0
 3a4:	d55c0700 	0xd55c0700
 3a8:	00bd1c00 	bstrins.d	$r0,$r0,0x3d,0x7
 3ac:	00860000 	bstrins.d	$r0,$r0,0x6,0x0
 3b0:	01080000 	0x01080000
 3b4:	01f30354 	0x01f30354
 3b8:	64070054 	bge	$r2,$r20,1792(0x700) # ab8 <__stack_size-0xf548>
 3bc:	671c00d5 	bge	$r6,$r21,-58368(0x31c00) # ffff1fbc <_stack+0xe3ef1fc0>
 3c0:	99000001 	0x99000001
 3c4:	08000000 	0x08000000
 3c8:	3d015401 	0x3d015401
 3cc:	d56c0900 	0xd56c0900
 3d0:	01671c00 	0x01671c00
 3d4:	01080000 	0x01080000
 3d8:	003a0154 	0x003a0154
 3dc:	05040a00 	0x05040a00
 3e0:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
 3e4:	00b6040b 	bstrins.d	$r11,$r0,0x36,0x1
 3e8:	01020000 	0x01020000
 3ec:	0000f406 	0x0000f406
 3f0:	00a90300 	bstrins.d	$r0,$r24,0x29,0x0
 3f4:	01010000 	fadd.d	$f0,$f0,$f0
 3f8:	0000a905 	0x0000a905
 3fc:	00d4d000 	bstrpick.d	$r0,$r0,0x14,0x34
 400:	0000741c 	0x0000741c
 404:	679c0100 	bge	$r8,$r0,-25600(0x39c00) # ffffa004 <_stack+0xe3efa008>
 408:	04000001 	csrrd	$r1,0x0
 40c:	01010073 	fadd.d	$f19,$f3,$f0
 410:	0000b015 	0x0000b015
 414:	0003fc00 	0x0003fc00
 418:	0003f200 	0x0003f200
 41c:	00630c00 	bstrins.w	$r0,$r0,0x3,0x3
 420:	b6060301 	0xb6060301
 424:	41000000 	beqz	$r0,65536(0x10000) # 10424 <__stack_size+0x424>
 428:	3f000004 	0x3f000004
 42c:	0d000004 	fsel	$f4,$f0,$f0,$fcc0
 430:	00000048 	0x00000048
 434:	0000f105 	0x0000f105
 438:	10060100 	addu16i.d	$r0,$r8,384(0x180)
 43c:	000000a9 	0x000000a9
 440:	00000112 	0x00000112
 444:	100e0006 	addu16i.d	$r6,$r0,896(0x380)
 448:	081c00d5 	fmadd.s	$f21,$f6,$f0,$f24
 44c:	41000000 	beqz	$r0,65536(0x10000) # 1044c <__stack_size+0x44c>
 450:	05000001 	0x05000001
 454:	000000f1 	0x000000f1
 458:	a9100601 	0xa9100601
 45c:	31000000 	0x31000000
 460:	06000001 	cacop	0x1,$r0,0
 464:	d5180900 	0xd5180900
 468:	01671c00 	0x01671c00
 46c:	01080000 	0x01080000
 470:	003d0154 	0x003d0154
 474:	d5000700 	0xd5000700
 478:	01671c00 	0x01671c00
 47c:	01550000 	0x01550000
 480:	01080000 	0x01080000
 484:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
 488:	d5200900 	0xd5200900
 48c:	01671c00 	0x01671c00
 490:	01080000 	0x01080000
 494:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
 498:	0f000000 	0x0f000000
 49c:	000000f1 	0x000000f1
 4a0:	000000f1 	0x000000f1
 4a4:	00100601 	add.w	$r1,$r16,$r1
 4a8:	00000177 	0x00000177
 4ac:	02cb0004 	addi.d	$r4,$r0,704(0x2c0)
 4b0:	01040000 	0x01040000
 4b4:	00000018 	0x00000018
 4b8:	00010f0c 	0x00010f0c
 4bc:	0000bc00 	0x0000bc00
 4c0:	00d58000 	bstrpick.d	$r0,$r0,0x15,0x20
 4c4:	0000ec1c 	0x0000ec1c
 4c8:	0002a100 	0x0002a100
 4cc:	07040200 	0x07040200
 4d0:	0000000b 	0x0000000b
 4d4:	06070402 	cacop	0x2,$r0,449(0x1c1)
 4d8:	03000000 	lu52i.d	$r0,$r0,0
 4dc:	0000009f 	0x0000009f
 4e0:	49050101 	bcnez	$fcc0,328960(0x50500) # 509e0 <__stack_size+0x409e0>
 4e4:	80000001 	0x80000001
 4e8:	ec1c00d5 	0xec1c00d5
 4ec:	01000000 	0x01000000
 4f0:	0001499c 	0x0001499c
 4f4:	00760400 	bstrins.w	$r0,$r0,0x16,0x1
 4f8:	50140101 	b	67376128(0x4041400) # 40418f8 <__stack_size+0x40318f8>
 4fc:	60000001 	blt	$r0,$r1,0 # 4fc <__stack_size-0xfb04>
 500:	54000004 	bl	1048576(0x100000) # 100500 <__stack_size+0xf0500>
 504:	04000004 	csrrd	$r4,0x0
 508:	01010077 	fadd.d	$f23,$f3,$f0
 50c:	0001491a 	0x0001491a
 510:	0004ba00 	alsl.w	$r0,$r16,$r14,0x2
 514:	0004b000 	alsl.w	$r0,$r0,$r12,0x2
 518:	00a40500 	bstrins.d	$r0,$r8,0x24,0x1
 51c:	01010000 	fadd.d	$f0,$f0,$f0
 520:	00014920 	asrtle.d	$r9,$r18
 524:	00050800 	alsl.w	$r0,$r0,$r2,0x3
 528:	0004fe00 	alsl.w	$r0,$r16,$r31,0x2
 52c:	01210500 	0x01210500
 530:	01010000 	fadd.d	$f0,$f0,$f0
 534:	00014929 	0x00014929
 538:	00055600 	alsl.w	$r0,$r16,$r21,0x3
 53c:	00054c00 	alsl.w	$r0,$r0,$r19,0x3
 540:	00690600 	bstrins.w	$r0,$r16,0x9,0x1
 544:	49060301 	0x49060301
 548:	a7000001 	0xa7000001
 54c:	9b000005 	0x9b000005
 550:	06000005 	cacop	0x5,$r0,0
 554:	0301006a 	lu52i.d	$r10,$r3,64(0x40)
 558:	00014908 	0x00014908
 55c:	00060400 	alsl.wu	$r0,$r0,$r1,0x1
 560:	0005fa00 	alsl.w	$r0,$r16,$r30,0x4
 564:	00630600 	bstrins.w	$r0,$r16,0x3,0x1
 568:	49060401 	bceqz	$fcc0,329220(0x50604) # 50b6c <__stack_size+0x40b6c>
 56c:	53000001 	b	458752(0x70000) # 7056c <__stack_size+0x6056c>
 570:	51000006 	b	1638400(0x190000) # 190570 <__stack_size+0x180570>
 574:	07000006 	0x07000006
 578:	00667562 	bstrins.w	$r2,$r11,0x6,0x1d
 57c:	57070501 	bl	67569412(0x4070704) # 4070c80 <__stack_size+0x4060c80>
 580:	03000001 	lu52i.d	$r1,$r0,0
 584:	087fb091 	0x087fb091
 588:	0000011b 	0x0000011b
 58c:	2c100601 	vld	$vr1,$r16,1025(0x401)
 590:	76000000 	0x76000000
 594:	66000006 	bge	$r0,$r6,-131072(0x20000) # fffe0594 <_stack+0xe3ee0598>
 598:	09000006 	0x09000006
 59c:	1c00d640 	pcaddu12i	$r0,1714(0x6b2)
 5a0:	00000020 	0x00000020
 5a4:	00000123 	0x00000123
 5a8:	0000f10a 	0x0000f10a
 5ac:	020a0100 	slti	$r0,$r8,640(0x280)
 5b0:	00000149 	0x00000149
 5b4:	00000112 	0x00000112
 5b8:	500c000b 	b	2886656(0x2c0c00) # 2c11b8 <__stack_size+0x2b11b8>
 5bc:	6e1c00d6 	bgeu	$r6,$r22,-123904(0x21c00) # fffe21bc <_stack+0xe3ee21c0>
 5c0:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 5c4:	08025401 	0x08025401
 5c8:	0e00002d 	0x0e00002d
 5cc:	1c00d5e8 	pcaddu12i	$r8,1711(0x6af)
 5d0:	00000030 	0x00000030
 5d4:	0000f10a 	0x0000f10a
 5d8:	020a0100 	slti	$r0,$r8,640(0x280)
 5dc:	00000149 	0x00000149
 5e0:	0000013e 	0x0000013e
 5e4:	180f000b 	pcaddi	$r11,30720(0x7800)
 5e8:	6e1c00d6 	bgeu	$r6,$r22,-123904(0x21c00) # fffe21e8 <_stack+0xe3ee21ec>
 5ec:	00000001 	0x00000001
 5f0:	05041000 	0x05041000
 5f4:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
 5f8:	26050402 	ldptr.d	$r2,$r0,1284(0x504)
 5fc:	11000001 	addu16i.d	$r1,$r0,16384(0x4000)
 600:	00000167 	0x00000167
 604:	00000167 	0x00000167
 608:	00002512 	clz.d	$r18,$r8
 60c:	02003f00 	slti	$r0,$r24,15(0xf)
 610:	00f40601 	bstrpick.d	$r1,$r16,0x34,0x1
 614:	f1130000 	0xf1130000
 618:	f1000000 	0xf1000000
 61c:	01000000 	0x01000000
 620:	4500020a 	bnez	$r16,2686976(0x290000) # 290620 <__stack_size+0x280620>
 624:	04000002 	csrrd	$r2,0x0
 628:	0003e900 	0x0003e900
 62c:	18010400 	pcaddi	$r0,2080(0x820)
 630:	0c000000 	0x0c000000
 634:	00000161 	0x00000161
 638:	000000bc 	0x000000bc
 63c:	1c00d670 	pcaddu12i	$r16,1715(0x6b3)
 640:	00000140 	0x00000140
 644:	0000038d 	0x0000038d
 648:	0b070402 	0x0b070402
 64c:	02000000 	slti	$r0,$r0,0
 650:	00060704 	alsl.wu	$r4,$r24,$r1,0x1
 654:	50030000 	b	768(0x300) # 954 <__stack_size-0xf6ac>
 658:	02000001 	slti	$r1,$r0,0
 65c:	002c1703 	alsl.d	$r3,$r24,$r5,0x1
 660:	04040000 	csrrd	$r0,0x100
 664:	746e6905 	0x746e6905
 668:	01470500 	0x01470500
 66c:	02100000 	slti	$r0,$r0,1024(0x400)
 670:	00880820 	bstrins.d	$r0,$r1,0x8,0x2
 674:	8a060000 	0x8a060000
 678:	02000001 	slti	$r1,$r0,0
 67c:	00330b21 	0x00330b21
 680:	06000000 	cacop	0x0,$r0,0
 684:	00000198 	0x00000198
 688:	330b2202 	0x330b2202
 68c:	04000000 	csrrd	$r0,0x0
 690:	00017906 	0x00017906
 694:	0b230200 	0x0b230200
 698:	00000033 	0x00000033
 69c:	01590608 	0x01590608
 6a0:	24020000 	ldptr.w	$r0,$r0,512(0x200)
 6a4:	0000330b 	revb.2h	$r11,$r24
 6a8:	07000c00 	0x07000c00
 6ac:	00000168 	0x00000168
 6b0:	2c0f3c01 	vld	$vr1,$r0,975(0x3cf)
 6b4:	80000000 	0x80000000
 6b8:	301c00d7 	0x301c00d7
 6bc:	01000000 	0x01000000
 6c0:	0000da9c 	0x0000da9c
 6c4:	006e0800 	bstrins.w	$r0,$r0,0xe,0x2
 6c8:	2c133e01 	vld	$vr1,$r16,1231(0x4cf)
 6cc:	de000000 	0xde000000
 6d0:	d6000006 	0xd6000006
 6d4:	09000006 	0x09000006
 6d8:	0000022e 	0x0000022e
 6dc:	1c00d780 	pcaddu12i	$r0,1724(0x6bc)
 6e0:	0000a803 	0x0000a803
 6e4:	093f0100 	0x093f0100
 6e8:	0000a80a 	0x0000a80a
 6ec:	023b0b00 	slti	$r0,$r24,-318(0xec2)
 6f0:	07200000 	0x07200000
 6f4:	071e0000 	0x071e0000
 6f8:	00000000 	0x00000000
 6fc:	01910700 	0x01910700
 700:	33010000 	0x33010000
 704:	00002c0f 	ctz.d	$r15,$r0
 708:	00d75000 	bstrpick.d	$r0,$r0,0x17,0x14
 70c:	0000241c 	clz.d	$r28,$r0
 710:	2c9c0100 	xvld	$xr0,$r8,1792(0x700)
 714:	08000001 	0x08000001
 718:	3501006e 	0x3501006e
 71c:	00002c13 	ctz.d	$r19,$r0
 720:	00073b00 	alsl.wu	$r0,$r24,$r14,0x3
 724:	00073300 	alsl.wu	$r0,$r24,$r12,0x3
 728:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 72c:	d7500000 	0xd7500000
 730:	90031c00 	0x90031c00
 734:	01000000 	0x01000000
 738:	900a0936 	0x900a0936
 73c:	0b000000 	0x0b000000
 740:	0000023b 	0x0000023b
 744:	00000776 	0x00000776
 748:	00000774 	0x00000774
 74c:	0c000000 	0x0c000000
 750:	0000016f 	0x0000016f
 754:	2c0f2c01 	vld	$vr1,$r0,971(0x3cb)
 758:	47000000 	bnez	$r0,196608(0x30000) # 30758 <__stack_size+0x20758>
 75c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 760:	2e01006e 	0x2e01006e
 764:	00002c13 	ctz.d	$r19,$r0
 768:	a0070000 	0xa0070000
 76c:	01000001 	0x01000001
 770:	002c0f20 	alsl.d	$r0,$r25,$r3,0x1
 774:	d6b00000 	0xd6b00000
 778:	00841c00 	bstrins.d	$r0,$r0,0x4,0x7
 77c:	9c010000 	0x9c010000
 780:	000001bb 	0x000001bb
 784:	6c65730e 	bgeu	$r24,$r14,25968(0x6570) # 6cf4 <__stack_size-0x930c>
 788:	21200100 	sc.w	$r0,$r8,8192(0x2000)
 78c:	0000003f 	0x0000003f
 790:	0000078d 	0x0000078d
 794:	00000789 	0x00000789
 798:	706d740f 	0x706d740f
 79c:	36200100 	0x36200100
 7a0:	000001bb 	0x000001bb
 7a4:	6e085501 	bgeu	$r8,$r1,-128940(0x20854) # fffe0ff8 <_stack+0xe3ee0ffc>
 7a8:	13220100 	addu16i.d	$r0,$r8,-14208(0xc880)
 7ac:	0000002c 	0x0000002c
 7b0:	000007b2 	0x000007b2
 7b4:	000007ae 	0x000007ae
 7b8:	00022e09 	0x00022e09
 7bc:	00d6b000 	bstrpick.d	$r0,$r0,0x16,0x2c
 7c0:	0078031c 	bstrins.w	$r28,$r24,0x18,0x0
 7c4:	23010000 	sc.d	$r0,$r0,256(0x100)
 7c8:	00780a09 	bstrins.w	$r9,$r16,0x18,0x2
 7cc:	3b0b0000 	0x3b0b0000
 7d0:	d3000002 	0xd3000002
 7d4:	d1000007 	0xd1000007
 7d8:	00000007 	0x00000007
 7dc:	04100000 	csrrd	$r0,0x400
 7e0:	00000046 	0x00000046
 7e4:	00012f11 	0x00012f11
 7e8:	0f160100 	0x0f160100
 7ec:	0000002c 	0x0000002c
 7f0:	1c00d6a0 	pcaddu12i	$r0,1717(0x6b5)
 7f4:	00000008 	0x00000008
 7f8:	01ee9c01 	0x01ee9c01
 7fc:	6e080000 	bgeu	$r0,$r0,-129024(0x20800) # fffe0ffc <_stack+0xe3ee1000>
 800:	13180100 	addu16i.d	$r0,$r8,-14848(0xc600)
 804:	0000002c 	0x0000002c
 808:	000007e8 	0x000007e8
 80c:	000007e6 	0x000007e6
 810:	013d1100 	0x013d1100
 814:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
 818:	00002c0f 	ctz.d	$r15,$r0
 81c:	00d67000 	bstrpick.d	$r0,$r0,0x16,0x1c
 820:	00001c1c 	ctz.w	$r28,$r0
 824:	2e9c0100 	0x2e9c0100
 828:	09000002 	0x09000002
 82c:	0000022e 	0x0000022e
 830:	1c00d670 	pcaddu12i	$r16,1715(0x6b3)
 834:	00006002 	rdtimel.w	$r2,$r0
 838:	0d130100 	vbitsel.v	$vr0,$vr8,$vr0,$vr6
 83c:	0000600a 	rdtimel.w	$r10,$r0
 840:	023b0b00 	slti	$r0,$r24,-318(0xec2)
 844:	07fd0000 	0x07fd0000
 848:	07fb0000 	0x07fb0000
 84c:	00000000 	0x00000000
 850:	013c1200 	0x013c1200
 854:	04010000 	csrrd	$r0,0x40
 858:	00002c0f 	ctz.d	$r15,$r0
 85c:	81130100 	0x81130100
 860:	01000001 	0x01000001
 864:	002c1306 	alsl.d	$r6,$r24,$r4,0x1
 868:	00000000 	0x00000000
 86c:	00000084 	0x00000084
 870:	052b0004 	0x052b0004
 874:	01040000 	0x01040000
 878:	00000018 	0x00000018
 87c:	0001ae0c 	0x0001ae0c
 880:	0000bc00 	0x0000bc00
 884:	00d7b000 	bstrpick.d	$r0,$r0,0x17,0x2c
 888:	0000501c 	bitrev.w	$r28,$r0
 88c:	0004b800 	alsl.w	$r0,$r0,$r14,0x2
 890:	07040200 	0x07040200
 894:	0000000b 	0x0000000b
 898:	06070402 	cacop	0x2,$r0,449(0x1c1)
 89c:	03000000 	lu52i.d	$r0,$r0,0
 8a0:	000001bb 	0x000001bb
 8a4:	2c160101 	vld	$vr1,$r8,1408(0x580)
 8a8:	05000000 	0x05000000
 8ac:	0805ac03 	0x0805ac03
 8b0:	01b5041c 	0x01b5041c
 8b4:	07010000 	0x07010000
 8b8:	00d7f006 	bstrpick.d	$r6,$r0,0x17,0x3c
 8bc:	0000101c 	clo.w	$r28,$r0
 8c0:	6a9c0100 	bltu	$r8,$r0,-91136(0x29c00) # fffea4c0 <_stack+0xe3eea4c4>
 8c4:	05000000 	0x05000000
 8c8:	000001c0 	0x000001c0
 8cc:	25190701 	stptr.w	$r1,$r24,6404(0x1904)
 8d0:	01000000 	0x01000000
 8d4:	b6060054 	0xb6060054
 8d8:	01000001 	0x01000001
 8dc:	00800503 	bstrins.d	$r3,$r8,0x0,0x1
 8e0:	d7b00000 	0xd7b00000
 8e4:	00341c00 	0x00341c00
 8e8:	9c010000 	0x9c010000
 8ec:	69050407 	bltu	$r0,$r7,66820(0x10504) # 10df0 <__stack_size+0xdf0>
 8f0:	0000746e 	0x0000746e

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	stptr.w	$r1,$r8,272(0x110)
   4:	030b130e 	lu52i.d	$r14,$r24,708(0x2c4)
   8:	110e1b0e 	addu16i.d	$r14,$r24,17286(0x4386)
   c:	10061201 	addu16i.d	$r1,$r16,388(0x184)
  10:	02000017 	slti	$r23,$r0,0
  14:	0b0b000f 	0x0b0b000f
  18:	24030000 	ldptr.w	$r0,$r0,768(0x300)
  1c:	3e0b0b00 	0x3e0b0b00
  20:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
  24:	012e0400 	0x012e0400
  28:	0e03193f 	0x0e03193f
  2c:	0b3b0b3a 	0x0b3b0b3a
  30:	19270b39 	pcaddi	$r25,-444327(0x93859)
  34:	01111349 	fscaleb.d	$f9,$f26,$f4
  38:	18400612 	pcaddi	$r18,131120(0x20030)
  3c:	01194297 	0x01194297
  40:	05000013 	0x05000013
  44:	08030005 	0x08030005
  48:	0b3b0b3a 	0x0b3b0b3a
  4c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
  50:	42b71702 	beqz	$r24,702228(0xab714) # ab764 <__stack_size+0x9b764>
  54:	06000017 	cacop	0x17,$r0,0
  58:	00000018 	0x00000018
  5c:	03003407 	lu52i.d	$r7,$r0,13(0xd)
  60:	3b0b3a08 	0x3b0b3a08
  64:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0b9c <__stack_size+0x2c0b9c>
  68:	b7170213 	0xb7170213
  6c:	00001742 	clz.w	$r2,$r26
  70:	03003408 	lu52i.d	$r8,$r0,13(0xd)
  74:	3b0b3a08 	0x3b0b3a08
  78:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0bb0 <__stack_size+0x2c0bb0>
  7c:	00180213 	sra.w	$r19,$r16,$r0
  80:	000a0900 	0x000a0900
  84:	0b3a0e03 	0x0b3a0e03
  88:	0b390b3b 	0x0b390b3b
  8c:	00000111 	0x00000111
  90:	55010b0a 	bl	-64421624(0xc290108) # fc290198 <_stack+0xe019019c>
  94:	00130117 	maskeqz	$r23,$r8,$r0
  98:	012e0b00 	0x012e0b00
  9c:	0e03193f 	0x0e03193f
  a0:	0b3b0b3a 	0x0b3b0b3a
  a4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
  a8:	1301193c 	addu16i.d	$r28,$r9,-16314(0xc046)
  ac:	890c0000 	0x890c0000
  b0:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
  b4:	01133101 	fcopysign.d	$f1,$f8,$f12
  b8:	0d000013 	fsel	$f19,$f0,$f0,$fcc0
  bc:	0001828a 	0x0001828a
  c0:	42911802 	beqz	$r0,692504(0xa9118) # a91d8 <__stack_size+0x991d8>
  c4:	0e000018 	0x0e000018
  c8:	00018289 	0x00018289
  cc:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
  d0:	890f0000 	0x890f0000
  d4:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
  d8:	00133101 	maskeqz	$r1,$r8,$r12
  dc:	010b1000 	fmin.d	$f0,$f0,$f4
  e0:	00001755 	clz.w	$r21,$r26
  e4:	11010b11 	addu16i.d	$r17,$r24,16450(0x4042)
  e8:	01061201 	0x01061201
  ec:	12000013 	addu16i.d	$r19,$r0,-32768(0x8000)
  f0:	0b0b0024 	0x0b0b0024
  f4:	08030b3e 	0x08030b3e
  f8:	0f130000 	0x0f130000
  fc:	490b0b00 	0x490b0b00
 100:	14000013 	lu12i.w	$r19,0
 104:	13490026 	addu16i.d	$r6,$r1,-11712(0xd240)
 108:	2e150000 	0x2e150000
 10c:	3c193f00 	0x3c193f00
 110:	030e6e19 	lu52i.d	$r25,$r16,923(0x39b)
 114:	3b0b3a0e 	0x3b0b3a0e
 118:	000b390b 	0x000b390b
 11c:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
 120:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
 124:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
 128:	1201110e 	addu16i.d	$r14,$r8,-32700(0x8044)
 12c:	00171006 	sll.w	$r6,$r0,$r4
 130:	00240200 	crc.w.b.w	$r0,$r16,$r0
 134:	0b3e0b0b 	0x0b3e0b0b
 138:	00000e03 	0x00000e03
 13c:	3f012e03 	0x3f012e03
 140:	3a0e0319 	0x3a0e0319
 144:	390b3b0b 	0x390b3b0b
 148:	010b200b 	fmin.d	$f11,$f0,$f8
 14c:	04000013 	csrrd	$r19,0x0
 150:	08030005 	0x08030005
 154:	0b3b0b3a 	0x0b3b0b3a
 158:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 15c:	24050000 	ldptr.w	$r0,$r0,1280(0x500)
 160:	3e0b0b00 	0x3e0b0b00
 164:	0008030b 	bytepick.w	$r11,$r24,$r0,0x0
 168:	012e0600 	0x012e0600
 16c:	0e03193f 	0x0e03193f
 170:	0b3b0b3a 	0x0b3b0b3a
 174:	19270b39 	pcaddi	$r25,-444327(0x93859)
 178:	01111349 	fscaleb.d	$f9,$f26,$f4
 17c:	18400612 	pcaddi	$r18,131120(0x20030)
 180:	01194297 	0x01194297
 184:	07000013 	0x07000013
 188:	08030005 	0x08030005
 18c:	0b3b0b3a 	0x0b3b0b3a
 190:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 194:	42b71702 	beqz	$r24,702228(0xab714) # ab8a8 <__stack_size+0x9b8a8>
 198:	08000017 	0x08000017
 19c:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 1a0:	0b3a0e03 	0x0b3a0e03
 1a4:	0b390b3b 	0x0b390b3b
 1a8:	193c1349 	pcaddi	$r9,-401254(0x9e09a)
 1ac:	00001301 	clo.w	$r1,$r24
 1b0:	00001809 	cto.w	$r9,$r0
 1b4:	011d0a00 	0x011d0a00
 1b8:	01521331 	0x01521331
 1bc:	550b42b8 	bl	-85914816(0xae10b40) # fae10cfc <_stack+0xded10d00>
 1c0:	590b5817 	beq	$r0,$r23,68440(0x10b58) # 10d18 <__stack_size+0xd18>
 1c4:	000b570b 	0x000b570b
 1c8:	00050b00 	alsl.w	$r0,$r24,$r2,0x3
 1cc:	17021331 	lu32i.d	$r17,-520039(0x81099)
 1d0:	001742b7 	sll.w	$r23,$r21,$r16
 1d4:	012e0c00 	0x012e0c00
 1d8:	01111331 	fscaleb.d	$f17,$f25,$f4
 1dc:	18400612 	pcaddi	$r18,131120(0x20030)
 1e0:	00194297 	srl.d	$r23,$r20,$r16
 1e4:	00050d00 	alsl.w	$r0,$r8,$r3,0x3
 1e8:	18021331 	pcaddi	$r17,4249(0x1099)
 1ec:	01000000 	0x01000000
 1f0:	0e250111 	0x0e250111
 1f4:	0e030b13 	0x0e030b13
 1f8:	01110e1b 	fscaleb.d	$f27,$f16,$f3
 1fc:	17100612 	lu32i.d	$r18,-491472(0x88030)
 200:	24020000 	ldptr.w	$r0,$r0,512(0x200)
 204:	3e0b0b00 	0x3e0b0b00
 208:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
 20c:	012e0300 	0x012e0300
 210:	0e03193f 	0x0e03193f
 214:	0b3b0b3a 	0x0b3b0b3a
 218:	19270b39 	pcaddi	$r25,-444327(0x93859)
 21c:	01111349 	fscaleb.d	$f9,$f26,$f4
 220:	18400612 	pcaddi	$r18,131120(0x20030)
 224:	01194297 	0x01194297
 228:	04000013 	csrrd	$r19,0x0
 22c:	08030005 	0x08030005
 230:	0b3b0b3a 	0x0b3b0b3a
 234:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 238:	42b71702 	beqz	$r24,702228(0xab714) # ab94c <__stack_size+0x9b94c>
 23c:	05000017 	0x05000017
 240:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 244:	0b3a0e03 	0x0b3a0e03
 248:	0b390b3b 	0x0b390b3b
 24c:	193c1349 	pcaddi	$r9,-401254(0x9e09a)
 250:	00001301 	clo.w	$r1,$r24
 254:	00001806 	cto.w	$r6,$r0
 258:	82890700 	0x82890700
 25c:	01110101 	fscaleb.d	$f1,$f8,$f0
 260:	13011331 	addu16i.d	$r17,$r25,-16316(0xc044)
 264:	8a080000 	0x8a080000
 268:	02000182 	slti	$r2,$r12,0
 26c:	18429118 	pcaddi	$r24,136328(0x21488)
 270:	89090000 	0x89090000
 274:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
 278:	00133101 	maskeqz	$r1,$r8,$r12
 27c:	00240a00 	crc.w.b.w	$r0,$r16,$r2
 280:	0b3e0b0b 	0x0b3e0b0b
 284:	00000803 	0x00000803
 288:	0b000f0b 	0x0b000f0b
 28c:	0013490b 	maskeqz	$r11,$r8,$r18
 290:	00340c00 	0x00340c00
 294:	0b3a0803 	0x0b3a0803
 298:	0b390b3b 	0x0b390b3b
 29c:	17021349 	lu32i.d	$r9,-520038(0x8109a)
 2a0:	001742b7 	sll.w	$r23,$r21,$r16
 2a4:	010b0d00 	fmin.d	$f0,$f8,$f3
 2a8:	00001755 	clz.w	$r21,$r26
 2ac:	11010b0e 	addu16i.d	$r14,$r24,16450(0x4042)
 2b0:	01061201 	0x01061201
 2b4:	0f000013 	0x0f000013
 2b8:	193f002e 	pcaddi	$r14,-395263(0x9f801)
 2bc:	0e6e193c 	0x0e6e193c
 2c0:	0b3a0e03 	0x0b3a0e03
 2c4:	0b390b3b 	0x0b390b3b
 2c8:	01000000 	0x01000000
 2cc:	0e250111 	0x0e250111
 2d0:	0e030b13 	0x0e030b13
 2d4:	01110e1b 	fscaleb.d	$f27,$f16,$f3
 2d8:	17100612 	lu32i.d	$r18,-491472(0x88030)
 2dc:	24020000 	ldptr.w	$r0,$r0,512(0x200)
 2e0:	3e0b0b00 	0x3e0b0b00
 2e4:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
 2e8:	012e0300 	0x012e0300
 2ec:	0e03193f 	0x0e03193f
 2f0:	0b3b0b3a 	0x0b3b0b3a
 2f4:	19270b39 	pcaddi	$r25,-444327(0x93859)
 2f8:	01111349 	fscaleb.d	$f9,$f26,$f4
 2fc:	18400612 	pcaddi	$r18,131120(0x20030)
 300:	01194297 	0x01194297
 304:	04000013 	csrrd	$r19,0x0
 308:	08030005 	0x08030005
 30c:	0b3b0b3a 	0x0b3b0b3a
 310:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 314:	42b71702 	beqz	$r24,702228(0xab714) # aba28 <__stack_size+0x9ba28>
 318:	05000017 	0x05000017
 31c:	0e030005 	0x0e030005
 320:	0b3b0b3a 	0x0b3b0b3a
 324:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 328:	42b71702 	beqz	$r24,702228(0xab714) # aba3c <__stack_size+0x9ba3c>
 32c:	06000017 	cacop	0x17,$r0,0
 330:	08030034 	0x08030034
 334:	0b3b0b3a 	0x0b3b0b3a
 338:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 33c:	42b71702 	beqz	$r24,702228(0xab714) # aba50 <__stack_size+0x9ba50>
 340:	07000017 	0x07000017
 344:	08030034 	0x08030034
 348:	0b3b0b3a 	0x0b3b0b3a
 34c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 350:	00001802 	cto.w	$r2,$r0
 354:	03003408 	lu52i.d	$r8,$r0,13(0xd)
 358:	3b0b3a0e 	0x3b0b3a0e
 35c:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0e94 <__stack_size+0x2c0e94>
 360:	b7170213 	0xb7170213
 364:	00001742 	clz.w	$r2,$r26
 368:	11010b09 	addu16i.d	$r9,$r24,16450(0x4042)
 36c:	01061201 	0x01061201
 370:	0a000013 	0x0a000013
 374:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 378:	0b3a0e03 	0x0b3a0e03
 37c:	0b390b3b 	0x0b390b3b
 380:	193c1349 	pcaddi	$r9,-401254(0x9e09a)
 384:	00001301 	clo.w	$r1,$r24
 388:	0000180b 	cto.w	$r11,$r0
 38c:	82890c00 	0x82890c00
 390:	01110101 	fscaleb.d	$f1,$f8,$f0
 394:	00001331 	clo.w	$r17,$r25
 398:	01828a0d 	0x01828a0d
 39c:	91180200 	0x91180200
 3a0:	00001842 	cto.w	$r2,$r2
 3a4:	11010b0e 	addu16i.d	$r14,$r24,16450(0x4042)
 3a8:	00061201 	alsl.wu	$r1,$r16,$r4,0x1
 3ac:	82890f00 	0x82890f00
 3b0:	01110001 	fscaleb.d	$f1,$f0,$f0
 3b4:	00001331 	clo.w	$r17,$r25
 3b8:	0b002410 	0x0b002410
 3bc:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
 3c0:	11000008 	addu16i.d	$r8,$r0,16384(0x4000)
 3c4:	13490101 	addu16i.d	$r1,$r8,-11712(0xd240)
 3c8:	00001301 	clo.w	$r1,$r24
 3cc:	49002112 	bcnez	$fcc0,-3604448(0x490020) # ffc903ec <_stack+0xe3b903f0>
 3d0:	000b2f13 	0x000b2f13
 3d4:	002e1300 	0x002e1300
 3d8:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
 3dc:	0e030e6e 	0x0e030e6e
 3e0:	0b3b0b3a 	0x0b3b0b3a
 3e4:	00000b39 	0x00000b39
 3e8:	01110100 	fscaleb.d	$f0,$f8,$f0
 3ec:	0b130e25 	0x0b130e25
 3f0:	0e1b0e03 	0x0e1b0e03
 3f4:	06120111 	cacop	0x11,$r8,1152(0x480)
 3f8:	00001710 	clz.w	$r16,$r24
 3fc:	0b002402 	0x0b002402
 400:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
 404:	0300000e 	lu52i.d	$r14,$r0,0
 408:	0e030016 	0x0e030016
 40c:	0b3b0b3a 	0x0b3b0b3a
 410:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 414:	24040000 	ldptr.w	$r0,$r0,1024(0x400)
 418:	3e0b0b00 	0x3e0b0b00
 41c:	0008030b 	bytepick.w	$r11,$r24,$r0,0x0
 420:	01130500 	fcopysign.d	$f0,$f8,$f1
 424:	0b0b0e03 	0x0b0b0e03
 428:	0b3b0b3a 	0x0b3b0b3a
 42c:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
 430:	0d060000 	0x0d060000
 434:	3a0e0300 	0x3a0e0300
 438:	390b3b0b 	0x390b3b0b
 43c:	3813490b 	0x3813490b
 440:	0700000b 	0x0700000b
 444:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 448:	0b3a0e03 	0x0b3a0e03
 44c:	0b390b3b 	0x0b390b3b
 450:	13491927 	addu16i.d	$r7,$r9,-11706(0xd246)
 454:	06120111 	cacop	0x11,$r8,1152(0x480)
 458:	42971840 	beqz	$r2,169752(0x29718) # 29b70 <__stack_size+0x19b70>
 45c:	00130119 	maskeqz	$r25,$r8,$r0
 460:	00340800 	0x00340800
 464:	0b3a0803 	0x0b3a0803
 468:	0b390b3b 	0x0b390b3b
 46c:	17021349 	lu32i.d	$r9,-520038(0x8109a)
 470:	001742b7 	sll.w	$r23,$r21,$r16
 474:	011d0900 	0x011d0900
 478:	01521331 	0x01521331
 47c:	550b42b8 	bl	-85914816(0xae10b40) # fae10fbc <_stack+0xded10fc0>
 480:	590b5817 	beq	$r0,$r23,68440(0x10b58) # 10fd8 <__stack_size+0xfd8>
 484:	000b570b 	0x000b570b
 488:	010b0a00 	fmin.d	$f0,$f16,$f2
 48c:	00001755 	clz.w	$r21,$r26
 490:	3100340b 	0x3100340b
 494:	b7170213 	0xb7170213
 498:	00001742 	clz.w	$r2,$r26
 49c:	3f012e0c 	0x3f012e0c
 4a0:	3a0e0319 	0x3a0e0319
 4a4:	390b3b0b 	0x390b3b0b
 4a8:	0113490b 	fcopysign.d	$f11,$f8,$f18
 4ac:	0d000013 	fsel	$f19,$f0,$f0,$fcc0
 4b0:	08030034 	0x08030034
 4b4:	0b3b0b3a 	0x0b3b0b3a
 4b8:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 4bc:	050e0000 	0x050e0000
 4c0:	3a080300 	0x3a080300
 4c4:	390b3b0b 	0x390b3b0b
 4c8:	0213490b 	slti	$r11,$r8,1234(0x4d2)
 4cc:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
 4d0:	050f0000 	0x050f0000
 4d4:	3a080300 	0x3a080300
 4d8:	390b3b0b 	0x390b3b0b
 4dc:	0213490b 	slti	$r11,$r8,1234(0x4d2)
 4e0:	10000018 	addu16i.d	$r24,$r0,0
 4e4:	0b0b000f 	0x0b0b000f
 4e8:	00001349 	clo.w	$r9,$r26
 4ec:	3f012e11 	0x3f012e11
 4f0:	3a0e0319 	0x3a0e0319
 4f4:	390b3b0b 	0x390b3b0b
 4f8:	1113490b 	addu16i.d	$r11,$r8,17618(0x44d2)
 4fc:	40061201 	beqz	$r16,263696(0x40610) # 40b0c <__stack_size+0x30b0c>
 500:	19429718 	pcaddi	$r24,-387912(0xa14b8)
 504:	00001301 	clo.w	$r1,$r24
 508:	3f012e12 	0x3f012e12
 50c:	3a0e0319 	0x3a0e0319
 510:	390b3b0b 	0x390b3b0b
 514:	2013490b 	ll.w	$r11,$r8,4936(0x1348)
 518:	1300000b 	addu16i.d	$r11,$r0,-16384(0xc000)
 51c:	0e030034 	0x0e030034
 520:	0b3b0b3a 	0x0b3b0b3a
 524:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 528:	01000000 	0x01000000
 52c:	0e250111 	0x0e250111
 530:	0e030b13 	0x0e030b13
 534:	01110e1b 	fscaleb.d	$f27,$f16,$f3
 538:	17100612 	lu32i.d	$r18,-491472(0x88030)
 53c:	24020000 	ldptr.w	$r0,$r0,512(0x200)
 540:	3e0b0b00 	0x3e0b0b00
 544:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
 548:	00340300 	0x00340300
 54c:	0b3a0e03 	0x0b3a0e03
 550:	0b390b3b 	0x0b390b3b
 554:	18021349 	pcaddi	$r9,4250(0x109a)
 558:	2e040000 	0x2e040000
 55c:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
 560:	3b0b3a0e 	0x3b0b3a0e
 564:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
 568:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
 56c:	97184006 	0x97184006
 570:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
 574:	05050000 	0x05050000
 578:	3a0e0300 	0x3a0e0300
 57c:	390b3b0b 	0x390b3b0b
 580:	0213490b 	slti	$r11,$r8,1234(0x4d2)
 584:	06000018 	cacop	0x18,$r0,0
 588:	193f002e 	pcaddi	$r14,-395263(0x9f801)
 58c:	0b3a0e03 	0x0b3a0e03
 590:	0b390b3b 	0x0b390b3b
 594:	13491927 	addu16i.d	$r7,$r9,-11706(0xd246)
 598:	06120111 	cacop	0x11,$r8,1152(0x480)
 59c:	42971840 	beqz	$r2,169752(0x29718) # 29cb4 <__stack_size+0x19cb4>
 5a0:	07000019 	0x07000019
 5a4:	0b0b0024 	0x0b0b0024
 5a8:	08030b3e 	0x08030b3e
 5ac:	Address 0x00000000000005ac is out of bounds.


Disassembly of section .debug_loc:

00000000 <.debug_loc>:
	...
   c:	00000064 	0x00000064
  10:	64540001 	bge	$r0,$r1,21504(0x5400) # 5410 <__stack_size-0xabf0>
  14:	cc000000 	0xcc000000
  18:	01000000 	0x01000000
  1c:	00cc6900 	bstrpick.d	$r0,$r8,0xc,0x1a
  20:	00f80000 	bstrpick.d	$r0,$r0,0x38,0x0
  24:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  28:	9f5401f3 	0x9f5401f3
  2c:	000000f8 	0x000000f8
  30:	0000023c 	0x0000023c
  34:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
  38:	00000000 	0x00000000
  3c:	02000000 	slti	$r0,$r0,0
  40:	00000000 	0x00000000
  44:	00000101 	0x00000101
  48:	00000000 	0x00000000
  4c:	02020000 	slti	$r0,$r0,128(0x80)
  50:	02020000 	slti	$r0,$r0,128(0x80)
  54:	02020000 	slti	$r0,$r0,128(0x80)
  58:	02020000 	slti	$r0,$r0,128(0x80)
  5c:	02020000 	slti	$r0,$r0,128(0x80)
  60:	02020000 	slti	$r0,$r0,128(0x80)
  64:	02020000 	slti	$r0,$r0,128(0x80)
  68:	02020000 	slti	$r0,$r0,128(0x80)
  6c:	01010000 	fadd.d	$f0,$f0,$f0
  70:	00004800 	bitrev.4b	$r0,$r0
  74:	00006400 	rdtimeh.w	$r0,$r0
  78:	30000200 	0x30000200
  7c:	0000649f 	rdtimeh.w	$r31,$r4
  80:	0000cc00 	0x0000cc00
  84:	68000100 	bltu	$r8,$r0,0 # 84 <__stack_size-0xff7c>
  88:	000000f8 	0x000000f8
  8c:	000000f8 	0x000000f8
  90:	f8680001 	0xf8680001
  94:	04000000 	csrrd	$r0,0x0
  98:	03000001 	lu52i.d	$r1,$r0,0
  9c:	9f018800 	0x9f018800
  a0:	00000104 	0x00000104
  a4:	00000120 	0x00000120
  a8:	20680001 	ll.w	$r1,$r0,26624(0x6800)
  ac:	3c000001 	0x3c000001
  b0:	03000001 	lu52i.d	$r1,$r0,0
  b4:	9f7f8800 	0x9f7f8800
  b8:	0000013c 	0x0000013c
  bc:	00000158 	0x00000158
  c0:	58680001 	beq	$r0,$r1,26624(0x6800) # 68c0 <__stack_size-0x9740>
  c4:	5c000001 	bne	$r0,$r1,0 # c4 <__stack_size-0xff3c>
  c8:	03000001 	lu52i.d	$r1,$r0,0
  cc:	9f7f8800 	0x9f7f8800
  d0:	0000015c 	0x0000015c
  d4:	00000168 	0x00000168
  d8:	68680001 	bltu	$r0,$r1,26624(0x6800) # 68d8 <__stack_size-0x9728>
  dc:	70000001 	vseq.b	$vr1,$vr0,$vr0
  e0:	03000001 	lu52i.d	$r1,$r0,0
  e4:	9f7f8800 	0x9f7f8800
  e8:	00000170 	0x00000170
  ec:	00000188 	0x00000188
  f0:	88680001 	0x88680001
  f4:	8c000001 	0x8c000001
  f8:	03000001 	lu52i.d	$r1,$r0,0
  fc:	9f7f8800 	0x9f7f8800
 100:	0000018c 	0x0000018c
 104:	000001a4 	0x000001a4
 108:	a4680001 	0xa4680001
 10c:	a8000001 	0xa8000001
 110:	03000001 	lu52i.d	$r1,$r0,0
 114:	9f7e8800 	0x9f7e8800
 118:	000001a8 	0x000001a8
 11c:	000001c4 	0x000001c4
 120:	c4680001 	0xc4680001
 124:	c8000001 	0xc8000001
 128:	03000001 	lu52i.d	$r1,$r0,0
 12c:	9f7f8800 	0x9f7f8800
 130:	000001c8 	0x000001c8
 134:	000001e4 	0x000001e4
 138:	e4680001 	0xe4680001
 13c:	e8000001 	0xe8000001
 140:	03000001 	lu52i.d	$r1,$r0,0
 144:	9f7f8800 	0x9f7f8800
 148:	000001e8 	0x000001e8
 14c:	000001f8 	0x000001f8
 150:	f8680001 	0xf8680001
 154:	00000001 	0x00000001
 158:	03000002 	lu52i.d	$r2,$r0,0
 15c:	9f7f8800 	0x9f7f8800
 160:	00000200 	0x00000200
 164:	00000218 	0x00000218
 168:	18680001 	pcaddi	$r1,212992(0x34000)
 16c:	1c000002 	pcaddu12i	$r2,0
 170:	03000002 	lu52i.d	$r2,$r0,0
 174:	9f7f8800 	0x9f7f8800
 178:	0000021c 	0x0000021c
 17c:	00000228 	0x00000228
 180:	28680001 	ld.h	$r1,$r0,-1536(0xa00)
 184:	2c000002 	vld	$vr2,$r0,0
 188:	03000002 	lu52i.d	$r2,$r0,0
 18c:	9f7f8800 	0x9f7f8800
 190:	0000022c 	0x0000022c
 194:	0000023c 	0x0000023c
 198:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
	...
 1a4:	00000100 	0x00000100
 1a8:	00006400 	rdtimeh.w	$r0,$r0
 1ac:	00007800 	0x00007800
 1b0:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff01b0 <_stack+0xe3ef01b4>
 1b4:	0000007c 	0x0000007c
 1b8:	000000cc 	0x000000cc
 1bc:	f8670001 	0xf8670001
 1c0:	3c000000 	0x3c000000
 1c4:	01000002 	0x01000002
 1c8:	00006700 	rdtimeh.w	$r0,$r24
 1cc:	00000000 	0x00000000
 1d0:	00010000 	asrtle.d	$r0,$r0
 1d4:	01000000 	0x01000000
 1d8:	01000001 	0x01000001
 1dc:	01000001 	0x01000001
 1e0:	01000001 	0x01000001
 1e4:	01000001 	0x01000001
 1e8:	01000001 	0x01000001
 1ec:	01000001 	0x01000001
 1f0:	01000001 	0x01000001
 1f4:	00480001 	0x00480001
 1f8:	00cc0000 	bstrpick.d	$r0,$r0,0xc,0x0
 1fc:	00010000 	asrtle.d	$r0,$r0
 200:	0000f86a 	0x0000f86a
 204:	00015400 	asrtle.d	$r0,$r21
 208:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0208 <_stack+0xe3ee020c>
 20c:	00000154 	0x00000154
 210:	0000015c 	0x0000015c
 214:	7c8a0003 	0x7c8a0003
 218:	00015c9f 	0x00015c9f
 21c:	00016c00 	asrtle.d	$r0,$r27
 220:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0220 <_stack+0xe3ee0224>
 224:	0000016c 	0x0000016c
 228:	00000170 	0x00000170
 22c:	7c8a0003 	0x7c8a0003
 230:	0001709f 	0x0001709f
 234:	00018400 	asrtgt.d	$r0,$r1
 238:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0238 <_stack+0xe3ee023c>
 23c:	00000184 	0x00000184
 240:	0000018c 	0x0000018c
 244:	7c8a0003 	0x7c8a0003
 248:	00018c9f 	0x00018c9f
 24c:	0001a000 	asrtgt.d	$r0,$r8
 250:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0250 <_stack+0xe3ee0254>
 254:	000001a0 	0x000001a0
 258:	000001a8 	0x000001a8
 25c:	7c8a0003 	0x7c8a0003
 260:	0001a89f 	0x0001a89f
 264:	0001c000 	asrtgt.d	$r0,$r16
 268:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0268 <_stack+0xe3ee026c>
 26c:	000001c0 	0x000001c0
 270:	000001c8 	0x000001c8
 274:	7c8a0003 	0x7c8a0003
 278:	0001c89f 	0x0001c89f
 27c:	0001e000 	asrtgt.d	$r0,$r24
 280:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0280 <_stack+0xe3ee0284>
 284:	000001e0 	0x000001e0
 288:	000001e8 	0x000001e8
 28c:	7c8a0003 	0x7c8a0003
 290:	0001e89f 	0x0001e89f
 294:	0001fc00 	asrtgt.d	$r0,$r31
 298:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0298 <_stack+0xe3ee029c>
 29c:	000001fc 	0x000001fc
 2a0:	00000200 	0x00000200
 2a4:	7c8a0003 	0x7c8a0003
 2a8:	0002009f 	0x0002009f
 2ac:	00021400 	0x00021400
 2b0:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe02b0 <_stack+0xe3ee02b4>
 2b4:	00000214 	0x00000214
 2b8:	0000021c 	0x0000021c
 2bc:	7c8a0003 	0x7c8a0003
 2c0:	00021c9f 	0x00021c9f
 2c4:	00023c00 	0x00023c00
 2c8:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe02c8 <_stack+0xe3ee02cc>
	...
 2f0:	000000ac 	0x000000ac
 2f4:	000000cc 	0x000000cc
 2f8:	f8550001 	0xf8550001
 2fc:	04000000 	csrrd	$r0,0x0
 300:	01000001 	0x01000001
 304:	01045500 	0x01045500
 308:	01180000 	0x01180000
 30c:	00020000 	0x00020000
 310:	01189f30 	0x01189f30
 314:	011c0000 	0x011c0000
 318:	00010000 	asrtle.d	$r0,$r0
 31c:	00013c55 	0x00013c55
 320:	00015b00 	asrtle.d	$r24,$r22
 324:	55000100 	bl	67174400(0x4010000) # 4010324 <__stack_size+0x4000324>
 328:	00000160 	0x00000160
 32c:	0000016f 	0x0000016f
 330:	74550001 	xvhaddw.d.w	$xr1,$xr0,$xr0
 334:	8b000001 	0x8b000001
 338:	01000001 	0x01000001
 33c:	01905500 	0x01905500
 340:	01a70000 	0x01a70000
 344:	00010000 	asrtle.d	$r0,$r0
 348:	0001ac55 	0x0001ac55
 34c:	0001c700 	asrtgt.d	$r24,$r17
 350:	55000100 	bl	67174400(0x4010000) # 4010350 <__stack_size+0x4000350>
 354:	000001cc 	0x000001cc
 358:	000001e7 	0x000001e7
 35c:	ec550001 	0xec550001
 360:	ff000001 	0xff000001
 364:	01000001 	0x01000001
 368:	02045500 	slti	$r0,$r8,277(0x115)
 36c:	021b0000 	slti	$r0,$r0,1728(0x6c0)
 370:	00010000 	asrtle.d	$r0,$r0
 374:	00022055 	0x00022055
 378:	00022b00 	0x00022b00
 37c:	55000100 	bl	67174400(0x4010000) # 401037c <__stack_size+0x400037c>
 380:	00000230 	0x00000230
 384:	00000237 	0x00000237
 388:	00550001 	0x00550001
	...
 398:	1c000000 	pcaddu12i	$r0,0
 39c:	01000000 	0x01000000
 3a0:	001c5400 	mul.w	$r0,$r0,$r21
 3a4:	00280000 	0x00280000
 3a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 3ac:	9f5401f3 	0x9f5401f3
	...
 3b8:	00000002 	0x00000002
 3bc:	00180000 	sra.w	$r0,$r0,$r0
 3c0:	00010000 	asrtle.d	$r0,$r0
 3c4:	00000054 	0x00000054
	...
 3d0:	00008000 	0x00008000
 3d4:	00008b00 	0x00008b00
 3d8:	54000100 	bl	67108864(0x4000000) # 40003d8 <__stack_size+0x3ff03d8>
 3dc:	0000008b 	0x0000008b
 3e0:	000000ac 	0x000000ac
 3e4:	01f30004 	0x01f30004
 3e8:	00009f54 	0x00009f54
	...
 3f4:	00010100 	asrtle.d	$r8,$r0
 3f8:	00010100 	asrtle.d	$r8,$r0
 3fc:	00000000 	0x00000000
 400:	00000028 	0x00000028
 404:	28540001 	ld.h	$r1,$r0,1280(0x500)
 408:	30000000 	0x30000000
 40c:	03000000 	lu52i.d	$r0,$r0,0
 410:	9f7f8800 	0x9f7f8800
 414:	00000030 	0x00000030
 418:	0000003c 	0x0000003c
 41c:	3c680001 	0x3c680001
 420:	50000000 	b	0 # 420 <__stack_size-0xfbe0>
 424:	03000000 	lu52i.d	$r0,$r0,0
 428:	9f7f8800 	0x9f7f8800
 42c:	00000050 	0x00000050
 430:	00000058 	0x00000058
 434:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
	...
 440:	00001800 	cto.w	$r0,$r0
 444:	00006000 	rdtimel.w	$r0,$r0
 448:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff0448 <_stack+0xe3ef044c>
	...
 464:	00000024 	0x00000024
 468:	24540001 	ldptr.w	$r1,$r0,21504(0x5400)
 46c:	c0000000 	0xc0000000
 470:	04000000 	csrrd	$r0,0x0
 474:	5401f300 	bl	-67108368(0xc0001f0) # fc000664 <_stack+0xdff00668>
 478:	0000c09f 	0x0000c09f
 47c:	0000c400 	0x0000c400
 480:	54000100 	bl	67108864(0x4000000) # 4000480 <__stack_size+0x3ff0480>
 484:	000000c4 	0x000000c4
 488:	000000d4 	0x000000d4
 48c:	d4670001 	0xd4670001
 490:	e0000000 	0xe0000000
 494:	04000000 	csrrd	$r0,0x0
 498:	1f008700 	pcaddu18i	$r0,-523208(0x80438)
 49c:	0000e09f 	0x0000e09f
 4a0:	0000ec00 	0x0000ec00
 4a4:	54000100 	bl	67108864(0x4000000) # 40004a4 <__stack_size+0x3ff04a4>
	...
 4bc:	00240000 	crc.w.b.w	$r0,$r0,$r0
 4c0:	00010000 	asrtle.d	$r0,$r0
 4c4:	00002455 	clz.d	$r21,$r2
 4c8:	0000c000 	0x0000c000
 4cc:	f3000400 	0xf3000400
 4d0:	c09f5501 	0xc09f5501
 4d4:	cf000000 	0xcf000000
 4d8:	01000000 	0x01000000
 4dc:	00cf5500 	bstrpick.d	$r0,$r8,0xf,0x15
 4e0:	00e00000 	bstrpick.d	$r0,$r0,0x20,0x0
 4e4:	00030000 	0x00030000
 4e8:	e07fa891 	0xe07fa891
 4ec:	ec000000 	0xec000000
 4f0:	01000000 	0x01000000
 4f4:	00005500 	bitrev.d	$r0,$r8
	...
 50c:	00000024 	0x00000024
 510:	24560001 	ldptr.w	$r1,$r0,22016(0x5600)
 514:	c0000000 	0xc0000000
 518:	04000000 	csrrd	$r0,0x0
 51c:	5601f300 	bl	-66977296(0xc0201f0) # fc02070c <_stack+0xdff20710>
 520:	0000c09f 	0x0000c09f
 524:	0000cf00 	0x0000cf00
 528:	56000100 	bl	67239936(0x4020000) # 4020528 <__stack_size+0x4010528>
 52c:	000000cf 	0x000000cf
 530:	000000e0 	0x000000e0
 534:	ac910003 	0xac910003
 538:	0000e07f 	0x0000e07f
 53c:	0000ec00 	0x0000ec00
 540:	56000100 	bl	67239936(0x4020000) # 4020540 <__stack_size+0x4010540>
	...
 558:	00240000 	crc.w.b.w	$r0,$r0,$r0
 55c:	00010000 	asrtle.d	$r0,$r0
 560:	00002457 	clz.d	$r23,$r2
 564:	0000c000 	0x0000c000
 568:	f3000400 	0xf3000400
 56c:	c09f5701 	0xc09f5701
 570:	cf000000 	0xcf000000
 574:	01000000 	0x01000000
 578:	00cf5700 	bstrpick.d	$r0,$r24,0xf,0x15
 57c:	00e00000 	bstrpick.d	$r0,$r0,0x20,0x0
 580:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 584:	9f5701f3 	0x9f5701f3
 588:	000000e0 	0x000000e0
 58c:	000000ec 	0x000000ec
 590:	00570001 	0x00570001
 594:	00000000 	0x00000000
 598:	01000000 	0x01000000
	...
 5a4:	20000100 	ll.w	$r0,$r8,0
 5a8:	34000000 	0x34000000
 5ac:	02000000 	slti	$r0,$r0,0
 5b0:	349f3000 	0x349f3000
 5b4:	38000000 	ldx.b	$r0,$r0,$r0
 5b8:	01000000 	0x01000000
 5bc:	00386800 	0x00386800
 5c0:	00580000 	0x00580000
 5c4:	00080000 	bytepick.w	$r0,$r0,$r0,0x0
 5c8:	0091007c 	bstrins.d	$r28,$r3,0x11,0x0
 5cc:	9f50231c 	0x9f50231c
 5d0:	00000058 	0x00000058
 5d4:	00000064 	0x00000064
 5d8:	b8680001 	0xb8680001
 5dc:	c0000000 	0xc0000000
 5e0:	01000000 	0x01000000
 5e4:	00d46800 	bstrpick.d	$r0,$r0,0x14,0x1a
 5e8:	00ec0000 	bstrpick.d	$r0,$r0,0x2c,0x0
 5ec:	00020000 	0x00020000
 5f0:	00009f30 	0x00009f30
	...
 600:	00020000 	0x00020000
 604:	00000070 	0x00000070
 608:	00000094 	0x00000094
 60c:	94670001 	0x94670001
 610:	98000000 	0x98000000
 614:	03000000 	lu52i.d	$r0,$r0,0
 618:	9f018700 	0x9f018700
 61c:	00000098 	0x00000098
 620:	0000009c 	0x0000009c
 624:	bc670001 	0xbc670001
 628:	c0000000 	0xc0000000
 62c:	01000000 	0x01000000
 630:	00e05500 	bstrpick.d	$r0,$r8,0x20,0x15
 634:	00ec0000 	bstrpick.d	$r0,$r0,0x2c,0x0
 638:	000d0000 	bytepick.d	$r0,$r0,$r0,0x2
 63c:	30120075 	vldrepl.d	$vr21,$r3,1024(0x400)
 640:	282b1416 	ld.b	$r22,$r0,-1339(0xac5)
 644:	13160001 	addu16i.d	$r1,$r0,-14976(0xc580)
 648:	0000009f 	0x0000009f
 64c:	00000000 	0x00000000
 650:	84000000 	0x84000000
 654:	90000000 	0x90000000
 658:	01000000 	0x01000000
 65c:	00005c00 	ext.w.b	$r0,$r0
 660:	00000000 	0x00000000
 664:	00010000 	asrtle.d	$r0,$r0
	...
 674:	00200000 	div.w	$r0,$r0,$r0
 678:	00240000 	crc.w.b.w	$r0,$r0,$r0
 67c:	00010000 	asrtle.d	$r0,$r0
 680:	00002454 	clz.d	$r20,$r2
 684:	00003400 	revb.4h	$r0,$r0
 688:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff0688 <_stack+0xe3ef068c>
 68c:	00000034 	0x00000034
 690:	00000038 	0x00000038
 694:	385d0001 	0x385d0001
 698:	58000000 	beq	$r0,$r0,0 # 698 <__stack_size-0xf968>
 69c:	01000000 	0x01000000
 6a0:	00586700 	0x00586700
 6a4:	00640000 	bstrins.w	$r0,$r0,0x4,0x0
 6a8:	00010000 	asrtle.d	$r0,$r0
 6ac:	0000b85d 	0x0000b85d
 6b0:	0000c000 	0x0000c000
 6b4:	5d000100 	bne	$r8,$r0,65536(0x10000) # 106b4 <__stack_size+0x6b4>
 6b8:	000000d4 	0x000000d4
 6bc:	000000e0 	0x000000e0
 6c0:	e0670001 	0xe0670001
 6c4:	ec000000 	0xec000000
 6c8:	01000000 	0x01000000
 6cc:	00005400 	bitrev.d	$r0,$r0
 6d0:	00000000 	0x00000000
 6d4:	01020000 	0x01020000
 6d8:	00030301 	0x00030301
 6dc:	01100000 	0x01100000
 6e0:	01200000 	0x01200000
 6e4:	00020000 	0x00020000
 6e8:	01209f30 	0x01209f30
 6ec:	01200000 	0x01200000
 6f0:	00010000 	asrtle.d	$r0,$r0
 6f4:	00012054 	0x00012054
 6f8:	00013400 	asrtle.d	$r0,$r13
 6fc:	74000c00 	xvseq.b	$xr0,$xr0,$xr3
 700:	0825f700 	fmadd.d	$f0,$f24,$f29,$f11
 704:	1b25f764 	pcalau12i	$r4,-446533(0x92fbb)
 708:	349f00f7 	0x349f00f7
 70c:	40000001 	beqz	$r0,262144(0x40000) # 4070c <__stack_size+0x3070c>
 710:	01000001 	0x01000001
 714:	00005d00 	ext.w.b	$r0,$r8
 718:	00000000 	0x00000000
 71c:	01000000 	0x01000000
 720:	00000120 	0x00000120
 724:	00000120 	0x00000120
 728:	00540001 	0x00540001
 72c:	00000000 	0x00000000
 730:	02000000 	slti	$r0,$r0,0
 734:	03030101 	lu52i.d	$r1,$r8,192(0xc0)
 738:	e0000000 	0xe0000000
 73c:	f0000000 	0xf0000000
 740:	02000000 	slti	$r0,$r0,0
 744:	f09f3000 	0xf09f3000
 748:	f0000000 	0xf0000000
 74c:	01000000 	0x01000000
 750:	00f05400 	bstrpick.d	$r0,$r0,0x30,0x15
 754:	00fc0000 	bstrpick.d	$r0,$r0,0x3c,0x0
 758:	00050000 	alsl.w	$r0,$r0,$r0,0x3
 75c:	1e3a0074 	pcaddu18i	$r20,118787(0x1d003)
 760:	0000fc9f 	0x0000fc9f
 764:	00010400 	asrtle.d	$r0,$r1
 768:	54000100 	bl	67108864(0x4000000) # 4000768 <__stack_size+0x3ff0768>
	...
 774:	00f00100 	bstrpick.d	$r0,$r8,0x30,0x0
 778:	00f00000 	bstrpick.d	$r0,$r0,0x30,0x0
 77c:	00010000 	asrtle.d	$r0,$r0
 780:	00000054 	0x00000054
	...
 78c:	00004000 	revh.2w	$r0,$r0
 790:	0000ac00 	0x0000ac00
 794:	54000100 	bl	67108864(0x4000000) # 4000794 <__stack_size+0x3ff0794>
 798:	000000ac 	0x000000ac
 79c:	000000c4 	0x000000c4
 7a0:	01f30004 	0x01f30004
 7a4:	00009f54 	0x00009f54
 7a8:	00000000 	0x00000000
 7ac:	01020000 	0x01020000
 7b0:	00400001 	0x00400001
 7b4:	00500000 	0x00500000
 7b8:	00020000 	0x00020000
 7bc:	00509f30 	0x00509f30
 7c0:	00c40000 	bstrpick.d	$r0,$r0,0x4,0x0
 7c4:	00010000 	asrtle.d	$r0,$r0
 7c8:	0000005f 	0x0000005f
 7cc:	00000000 	0x00000000
 7d0:	50010000 	b	256(0x100) # 8d0 <__stack_size-0xf730>
 7d4:	50000000 	b	0 # 7d4 <__stack_size-0xf82c>
 7d8:	01000000 	0x01000000
 7dc:	00005f00 	ext.w.b	$r0,$r24
	...
 7e8:	00000034 	0x00000034
 7ec:	00000038 	0x00000038
 7f0:	00540001 	0x00540001
	...
 7fc:	00001001 	clo.w	$r1,$r0
 800:	00001000 	clo.w	$r0,$r0
 804:	54000100 	bl	67108864(0x4000000) # 4000804 <__stack_size+0x3ff0804>
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x0000001c
   4:	00000002 	0x00000002
   8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
   c:	00000000 	0x00000000
  10:	1c00d230 	pcaddu12i	$r16,1681(0x691)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c00d470 	pcaddu12i	$r16,1699(0x6a3)
  34:	00000054 	0x00000054
	...
  40:	0000001c 	0x0000001c
  44:	03340002 	lu52i.d	$r2,$r0,-768(0xd00)
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c00d4d0 	pcaddu12i	$r16,1702(0x6a6)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04a80002 	csrrd	$r2,0x2a00
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c00d580 	pcaddu12i	$r0,1708(0x6ac)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06230002 	cacop	0x2,$r0,-1856(0x8c0)
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c00d670 	pcaddu12i	$r16,1715(0x6b3)
  94:	00000140 	0x00000140
	...
  a0:	0000001c 	0x0000001c
  a4:	086c0002 	fmsub.d	$f2,$f0,$f0,$f24
  a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  ac:	00000000 	0x00000000
  b0:	1c00d7b0 	pcaddu12i	$r16,1725(0x6bd)
  b4:	00000050 	0x00000050
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	00000064 	0x00000064
   4:	0000006c 	0x0000006c
   8:	00000084 	0x00000084
   c:	000000a0 	0x000000a0
	...
  18:	000000a8 	0x000000a8
  1c:	000000ac 	0x000000ac
  20:	000000f8 	0x000000f8
  24:	0000023c 	0x0000023c
	...
  38:	00000008 	0x00000008
  3c:	00000018 	0x00000018
	...
  48:	00000020 	0x00000020
  4c:	00000030 	0x00000030
  50:	00000038 	0x00000038
  54:	00000050 	0x00000050
	...
  68:	00000008 	0x00000008
  6c:	00000010 	0x00000010
	...
  78:	00000040 	0x00000040
  7c:	00000040 	0x00000040
  80:	00000048 	0x00000048
  84:	00000050 	0x00000050
	...
  90:	000000e0 	0x000000e0
  94:	000000e0 	0x000000e0
  98:	000000e8 	0x000000e8
  9c:	000000f0 	0x000000f0
	...
  a8:	00000110 	0x00000110
  ac:	00000110 	0x00000110
  b0:	00000118 	0x00000118
  b4:	00000120 	0x00000120
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000001a4 	0x000001a4
   4:	001f0002 	mulw.d.w	$r2,$r0,$r0
   8:	01010000 	fadd.d	$f0,$f0,$f0
   c:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
  10:	01010101 	fadd.d	$f1,$f8,$f0
  14:	01000000 	0x01000000
  18:	00010000 	asrtle.d	$r0,$r0
  1c:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe698c <_stack+0xe3ee6990>
  20:	632e6674 	blt	$r19,$r20,-53660(0x32e64) # ffff2e84 <_stack+0xe3ef2e88>
  24:	00000000 	0x00000000
  28:	00010500 	asrtle.d	$r8,$r1
  2c:	d2300205 	0xd2300205
  30:	13131c00 	addu16i.d	$r0,$r0,-15161(0xc4c7)
  34:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
  38:	7a030613 	0x7a030613
  3c:	05e40801 	0x05e40801
  40:	01058a0c 	0x01058a0c
  44:	4a7a0348 	0x4a7a0348
  48:	4b064208 	0x4b064208
  4c:	05010613 	0x05010613
  50:	c6030603 	0xc6030603
  54:	06ac0800 	0x06ac0800
  58:	00110582 	sub.w	$r2,$r12,$r1
  5c:	03020402 	lu52i.d	$r2,$r0,129(0x81)
  60:	05017fba 	0x05017fba
  64:	0402000c 	csrrd	$r12,0x80
  68:	01054a02 	fmul.d	$f2,$f16,$f18
  6c:	02040200 	slti	$r0,$r16,256(0x100)
  70:	06020582 	cacop	0x2,$r12,129(0x81)
  74:	0405134c 	csrxchg	$r12,$r26,0x144
  78:	03050106 	lu52i.d	$r6,$r8,320(0x140)
  7c:	00c20306 	bstrpick.d	$r6,$r24,0x2,0x0
  80:	06050582 	cacop	0x2,$r12,321(0x141)
  84:	000f0501 	bytepick.d	$r1,$r8,$r1,0x6
  88:	06010402 	cacop	0x2,$r0,65(0x41)
  8c:	06040582 	cacop	0x2,$r12,257(0x101)
  90:	3c084003 	0x3c084003
  94:	054c0305 	0x054c0305
  98:	4a330309 	0x4a330309
  9c:	0603054a 	cacop	0xa,$r10,193(0xc1)
  a0:	06014d03 	cacop	0x3,$r8,83(0x53)
  a4:	030105f2 	lu52i.d	$r18,$r15,65(0x41)
  a8:	3c0800c3 	0x3c0800c3
  ac:	03060505 	lu52i.d	$r5,$r8,385(0x181)
  b0:	0128026d 	0x0128026d
  b4:	1a050106 	pcalau12i	$r6,10248(0x2808)
  b8:	01040200 	0x01040200
  bc:	000505bc 	alsl.w	$r28,$r13,$r1,0x3
  c0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a01c4 <__stack_size+0x901c4>
  c4:	02000605 	slti	$r5,$r16,1(0x1)
  c8:	f3060304 	0xf3060304
  cc:	02000905 	slti	$r5,$r8,2(0x2)
  d0:	01060304 	0x01060304
  d4:	02002c05 	slti	$r5,$r0,11(0xb)
  d8:	05490304 	0x05490304
  dc:	04020010 	csrrd	$r16,0x80
  e0:	16054a03 	lu32i.d	$r3,10832(0x2a50)
  e4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  e8:	0010054b 	add.w	$r11,$r10,$r1
  ec:	49030402 	bceqz	$fcc0,590596(0x90304) # 903f0 <__stack_size+0x803f0>
  f0:	02001a05 	slti	$r5,$r16,6(0x6)
  f4:	054a0304 	0x054a0304
  f8:	04020005 	csrrd	$r5,0x80
  fc:	07054a03 	0x07054a03
 100:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 104:	00050583 	alsl.w	$r3,$r12,$r1,0x3
 108:	49030402 	bceqz	$fcc0,590596(0x90304) # 9040c <__stack_size+0x8040c>
 10c:	826f0306 	0x826f0306
 110:	bb060805 	0xbb060805
 114:	054b0605 	0x054b0605
 118:	4b064805 	bceqz	$fcc0,1508936(0x170648) # 170760 <__stack_size+0x160760>
 11c:	64031313 	bge	$r24,$r19,784(0x310) # 42c <__stack_size-0xfbd4>
 120:	0606054a 	cacop	0xa,$r10,385(0x181)
 124:	4908054c 	bcnez	$fcc2,3213316(0x310804) # 310928 <__stack_size+0x300928>
 128:	06490505 	0x06490505
 12c:	5113134b 	b	-47377648(0xd2d1310) # fd2d143c <_stack+0xe11d1440>
 130:	bb060805 	0xbb060805
 134:	054b0605 	0x054b0605
 138:	4b064805 	bceqz	$fcc0,1508936(0x170648) # 170780 <__stack_size+0x160780>
 13c:	11051313 	addu16i.d	$r19,$r24,16708(0x4144)
 140:	0614054c 	cacop	0xc,$r10,1281(0x501)
 144:	4b1205bb 	bcnez	$fcc5,-1109500(0x6f1204) # ffef1348 <_stack+0xe3df134c>
 148:	06481105 	iocsrwr.b	$r5,$r8
 14c:	0513134b 	0x0513134b
 150:	08058405 	0x08058405
 154:	0605bb06 	cacop	0x6,$r24,366(0x16e)
 158:	4805054b 	bcnez	$fcc2,2884868(0x2c0504) # 2c065c <__stack_size+0x2b065c>
 15c:	13134b06 	addu16i.d	$r6,$r24,-15150(0xc4d2)
 160:	0608058a 	cacop	0xa,$r12,513(0x201)
 164:	4b0605bb 	bcnez	$fcc5,-1112572(0x6f0604) # ffef0768 <_stack+0xe3df076c>
 168:	06480505 	iocsrrd.h	$r5,$r8
 16c:	0313134b 	lu52i.d	$r11,$r26,1220(0x4c4)
 170:	06058259 	cacop	0x19,$r18,352(0x160)
 174:	08054c06 	0x08054c06
 178:	49050549 	bcnez	$fcc2,2426116(0x250504) # 25067c <__stack_size+0x24067c>
 17c:	13134b06 	addu16i.d	$r6,$r24,-15150(0xc4d2)
 180:	06080551 	cacop	0x11,$r10,513(0x201)
 184:	4b0605bb 	bcnez	$fcc5,-1112572(0x6f0604) # ffef0788 <_stack+0xe3df078c>
 188:	06480505 	iocsrrd.h	$r5,$r8
 18c:	0313134b 	lu52i.d	$r11,$r26,1220(0x4c4)
 190:	06054a1c 	cacop	0x1c,$r16,338(0x152)
 194:	05054b06 	0x05054b06
 198:	134b0649 	addu16i.d	$r9,$r18,-11583(0xd2c1)
 19c:	05510605 	0x05510605
 1a0:	02831505 	addi.w	$r5,$r8,197(0xc5)
 1a4:	01010004 	fadd.d	$f4,$f0,$f0
 1a8:	0000005d 	0x0000005d
 1ac:	00200002 	div.w	$r2,$r0,$r0
 1b0:	01010000 	fadd.d	$f0,$f0,$f0
 1b4:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
 1b8:	01010101 	fadd.d	$f1,$f8,$f0
 1bc:	01000000 	0x01000000
 1c0:	00010000 	asrtle.d	$r0,$r0
 1c4:	63747570 	blt	$r11,$r16,-35724(0x37474) # ffff7638 <_stack+0xe3ef763c>
 1c8:	2e726168 	0x2e726168
 1cc:	00000063 	0x00000063
 1d0:	01050000 	fmul.d	$f0,$f0,$f0
 1d4:	70020500 	vsle.b	$vr0,$vr8,$vr1
 1d8:	131c00d4 	addu16i.d	$r20,$r6,-14592(0xc700)
 1dc:	16060513 	lu32i.d	$r19,12328(0x3028)
 1e0:	05140505 	0x05140505
 1e4:	79030601 	0x79030601
 1e8:	89050501 	0x89050501
 1ec:	060105f2 	cacop	0x12,$r15,65(0x41)
 1f0:	4a13060d 	0x4a13060d
 1f4:	053f0806 	0x053f0806
 1f8:	01051305 	fmul.d	$f5,$f24,$f4
 1fc:	05051106 	0x05051106
 200:	f9010583 	0xf9010583
 204:	01000c02 	0x01000c02
 208:	00009401 	0x00009401
 20c:	1d000200 	pcaddu12i	$r0,-524272(0x80010)
 210:	01000000 	0x01000000
 214:	0d0efb01 	0x0d0efb01
 218:	01010100 	fadd.d	$f0,$f8,$f0
 21c:	00000001 	0x00000001
 220:	01000001 	0x01000001
 224:	74757000 	xvmax.wu	$xr0,$xr0,$xr28
 228:	00632e73 	bstrins.w	$r19,$r19,0x3,0xb
 22c:	00000000 	0x00000000
 230:	05000105 	0x05000105
 234:	00d4d002 	bstrpick.d	$r2,$r0,0x14,0x34
 238:	1313131c 	addu16i.d	$r28,$r24,-15164(0xc4c4)
 23c:	09051006 	0x09051006
 240:	06053e08 	cacop	0x8,$r16,335(0x14f)
 244:	8404054a 	0x8404054a
 248:	83060205 	0x83060205
 24c:	05010683 	0x05010683
 250:	06050e09 	cacop	0x9,$r16,323(0x143)
 254:	0602054a 	cacop	0xa,$r10,129(0x81)
 258:	0603054c 	cacop	0xc,$r10,193(0xc1)
 25c:	48040514 	bcnez	$fcc0,-3144700(0x500404) # ffd00660 <_stack+0xe3c00664>
 260:	02001005 	slti	$r5,$r0,4(0x4)
 264:	4a060104 	bcnez	$fcc0,1181184(0x120600) # 120864 <__stack_size+0x110864>
 268:	02000205 	slti	$r5,$r16,0
 26c:	00830104 	bstrins.d	$r4,$r8,0x3,0x0
 270:	83010402 	0x83010402
 274:	01040200 	0x01040200
 278:	09050106 	0x09050106
 27c:	01040200 	0x01040200
 280:	0006050e 	alsl.wu	$r14,$r8,$r1,0x1
 284:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0388 <__stack_size+0x90388>
 288:	50060105 	b	68421120(0x4140600) # 4140888 <__stack_size+0x4130888>
 28c:	06821306 	0x06821306
 290:	0613e808 	cacop	0x8,$r0,1274(0x4fa)
 294:	4b068311 	0x4b068311
 298:	13068383 	addu16i.d	$r3,$r28,-15968(0xc1a0)
 29c:	01001002 	0x01001002
 2a0:	0000e801 	0x0000e801
 2a4:	22000200 	ll.d	$r0,$r16,0
 2a8:	01000000 	0x01000000
 2ac:	0d0efb01 	0x0d0efb01
 2b0:	01010100 	fadd.d	$f0,$f8,$f0
 2b4:	00000001 	0x00000001
 2b8:	01000001 	0x01000001
 2bc:	69727000 	bltu	$r0,$r0,94832(0x17270) # 1752c <__stack_size+0x752c>
 2c0:	6162746e 	blt	$r3,$r14,90740(0x16274) # 16534 <__stack_size+0x6534>
 2c4:	632e6573 	blt	$r11,$r19,-53660(0x32e64) # ffff3128 <_stack+0xe3ef312c>
 2c8:	00000000 	0x00000000
 2cc:	00010500 	asrtle.d	$r8,$r1
 2d0:	d5800205 	0xd5800205
 2d4:	05131c00 	0x05131c00
 2d8:	13131302 	addu16i.d	$r2,$r24,-15164(0xc4c4)
 2dc:	01051313 	fmul.d	$f19,$f24,$f4
 2e0:	3c080d06 	0x3c080d06
 2e4:	054f0405 	0x054f0405
 2e8:	0402000a 	csrrd	$r10,0x80
 2ec:	07054a01 	0x07054a01
 2f0:	02054f06 	slti	$r6,$r24,339(0x153)
 2f4:	054a1406 	0x054a1406
 2f8:	0205f507 	slti	$r7,$r8,381(0x17d)
 2fc:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 300:	0e054906 	0x0e054906
 304:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 308:	08050106 	0x08050106
 30c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 310:	000205ba 	0x000205ba
 314:	06030402 	cacop	0x2,$r0,193(0xc1)
 318:	0007054b 	alsl.wu	$r11,$r10,$r1,0x3
 31c:	06030402 	cacop	0x2,$r0,193(0xc1)
 320:	0402004a 	csrxchg	$r10,$r2,0x80
 324:	0205ba03 	slti	$r3,$r16,366(0x16e)
 328:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 32c:	05520647 	0x05520647
 330:	4a010607 	0x4a010607
 334:	064d0305 	0x064d0305
 338:	060e0581 	cacop	0x1,$r12,897(0x381)
 33c:	ba0a0501 	0xba0a0501
 340:	01040200 	0x01040200
 344:	0003054a 	0x0003054a
 348:	06010402 	cacop	0x2,$r0,65(0x41)
 34c:	0402004b 	csrxchg	$r11,$r2,0x80
 350:	00ba0601 	bstrins.d	$r1,$r16,0x3a,0x1
 354:	4a040402 	bceqz	$fcc0,656388(0xa0404) # a0758 <__stack_size+0x90758>
 358:	04040200 	csrxchg	$r0,$r16,0x100
 35c:	0002054a 	0x0002054a
 360:	0f040402 	0x0f040402
 364:	05500105 	0x05500105
 368:	087a0307 	0x087a0307
 36c:	02054aac 	slti	$r12,$r21,338(0x152)
 370:	4a4a7403 	bceqz	$fcc0,936564(0xe4a74) # e4de4 <__stack_size+0xd4de4>
 374:	13068106 	addu16i.d	$r6,$r8,-15968(0xc1a0)
 378:	05490a05 	0x05490a05
 37c:	064b0602 	0x064b0602
 380:	0306ba01 	lu52i.d	$r1,$r16,430(0x1ae)
 384:	0106010c 	0x0106010c
 388:	01000c02 	0x01000c02
 38c:	00012701 	0x00012701
 390:	32000200 	0x32000200
 394:	01000000 	0x01000000
 398:	0d0efb01 	0x0d0efb01
 39c:	01010100 	fadd.d	$f0,$f8,$f0
 3a0:	00000001 	0x00000001
 3a4:	01000001 	0x01000001
 3a8:	692f2e2e 	bltu	$r17,$r14,77612(0x12f2c) # 132d4 <__stack_size+0x32d4>
 3ac:	756c636e 	0x756c636e
 3b0:	00006564 	rdtimeh.w	$r4,$r11
 3b4:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1711c <__stack_size+0x711c>
 3b8:	0000632e 	rdtimel.w	$r14,$r25
 3bc:	69740000 	bltu	$r0,$r0,95232(0x17400) # 177bc <__stack_size+0x77bc>
 3c0:	682e656d 	bltu	$r11,$r13,11876(0x2e64) # 3224 <__stack_size-0xcddc>
 3c4:	00000100 	0x00000100
 3c8:	00010500 	asrtle.d	$r8,$r1
 3cc:	d6700205 	0xd6700205
 3d0:	11031c00 	addu16i.d	$r0,$r0,16583(0x40c7)
 3d4:	13050501 	addu16i.d	$r1,$r8,-16063(0xc141)
 3d8:	71030f05 	vssrarn.h.w	$vr5,$vr24,$vr3
 3dc:	14050501 	lu12i.w	$r1,10280(0x2828)
 3e0:	06010513 	cacop	0x13,$r8,65(0x41)
 3e4:	05010b03 	0x05010b03
 3e8:	82750305 	0x82750305
 3ec:	01068906 	fdiv.s	$f6,$f8,$f2
 3f0:	06180105 	cacop	0x5,$r8,1536(0x600)
 3f4:	0505e708 	0x0505e708
 3f8:	054e1313 	0x054e1313
 3fc:	06130601 	cacop	0x1,$r16,1217(0x4c1)
 400:	130505bd 	addu16i.d	$r29,$r13,-16063(0xc141)
 404:	030f0513 	lu52i.d	$r19,$r8,961(0x3c1)
 408:	05050161 	0x05050161
 40c:	01051314 	fmul.d	$f20,$f24,$f4
 410:	011a0306 	0x011a0306
 414:	66030505 	bge	$r8,$r5,-130300(0x20304) # fffe0718 <_stack+0xe3ee071c>
 418:	06890682 	0x06890682
 41c:	16030601 	lu32i.d	$r1,6192(0x1830)
 420:	06150501 	cacop	0x1,$r8,1345(0x541)
 424:	83160501 	0x83160501
 428:	054b2705 	0x054b2705
 42c:	36054916 	0x36054916
 430:	4c2705b9 	jirl	$r25,$r13,9988(0x2704)
 434:	05492805 	0x05492805
 438:	3605bb27 	0x3605bb27
 43c:	bb1205ba 	0xbb1205ba
 440:	01054949 	fmul.d	$f9,$f10,$f18
 444:	0336054f 	lu52i.d	$r15,$r10,-639(0xd81)
 448:	1205827a 	addu16i.d	$r26,$r19,-32416(0x8160)
 44c:	060505ba 	cacop	0x1a,$r13,321(0x141)
 450:	1413134b 	lu12i.w	$r11,39066(0x989a)
 454:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
 458:	020a0306 	slti	$r6,$r24,640(0x280)
 45c:	05050124 	0x05050124
 460:	0f051313 	0x0f051313
 464:	05014e03 	0x05014e03
 468:	05131405 	0x05131405
 46c:	2d030601 	0x2d030601
 470:	03050501 	lu52i.d	$r1,$r8,321(0x141)
 474:	89068253 	0x89068253
 478:	03060106 	lu52i.d	$r6,$r8,384(0x180)
 47c:	05130129 	0x05130129
 480:	05110606 	0x05110606
 484:	06824c01 	0x06824c01
 488:	05054008 	0x05054008
 48c:	0f051313 	0x0f051313
 490:	05014503 	0x05014503
 494:	05131405 	0x05131405
 498:	36030601 	0x36030601
 49c:	03050501 	lu52i.d	$r1,$r8,321(0x141)
 4a0:	8906824a 	0x8906824a
 4a4:	03060106 	lu52i.d	$r6,$r8,384(0x180)
 4a8:	05130132 	0x05130132
 4ac:	05110606 	0x05110606
 4b0:	02f24c01 	addi.d	$r1,$r0,-877(0xc93)
 4b4:	0101000c 	fadd.d	$f12,$f0,$f0
 4b8:	0000005a 	0x0000005a
 4bc:	001d0002 	mulh.wu	$r2,$r0,$r0
 4c0:	01010000 	fadd.d	$f0,$f0,$f0
 4c4:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
 4c8:	01010101 	fadd.d	$f1,$f8,$f0
 4cc:	01000000 	0x01000000
 4d0:	00010000 	asrtle.d	$r0,$r0
 4d4:	646e6172 	bge	$r11,$r18,28256(0x6e60) # 7334 <__stack_size-0x8ccc>
 4d8:	0000632e 	rdtimel.w	$r14,$r25
 4dc:	05000000 	0x05000000
 4e0:	02050010 	slti	$r16,$r0,320(0x140)
 4e4:	1c00d7b0 	pcaddu12i	$r16,1725(0x6bd)
 4e8:	13050514 	addu16i.d	$r20,$r8,-16063(0xc141)
 4ec:	01061105 	0x01061105
 4f0:	74081e05 	xvslt.bu	$xr5,$xr16,$xr7
 4f4:	05bb2705 	0x05bb2705
 4f8:	0505490a 	0x0505490a
 4fc:	01054b06 	fmul.d	$f6,$f24,$f18
 500:	1f051306 	pcaddu18i	$r6,-513896(0x82898)
 504:	053d0806 	0x053d0806
 508:	0a051305 	0x0a051305
 50c:	01050106 	fmul.d	$f6,$f8,$f0
 510:	000402bb 	alsl.w	$r27,$r21,$r0,0x1
 514:	Address 0x0000000000000514 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	69616761 	bltu	$r27,$r1,90468(0x16164) # 16164 <__stack_size+0x6164>
   4:	6f6c006e 	bgeu	$r3,$r14,-37888(0x36c00) # ffff6c04 <_stack+0xe3ef6c08>
   8:	7520676e 	xvpickod.b	$xr14,$xr27,$xr25
   c:	6769736e 	bge	$r27,$r14,-38544(0x36970) # ffff697c <_stack+0xe3ef6980>
  10:	2064656e 	ll.w	$r14,$r11,25700(0x6464)
  14:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
  18:	20554e47 	ll.w	$r7,$r18,21836(0x554c)
  1c:	20373143 	ll.w	$r3,$r10,14128(0x3730)
  20:	2e332e38 	0x2e332e38
  24:	6d2d2030 	bgeu	$r1,$r16,77088(0x12d20) # 12d44 <__stack_size+0x2d44>
  28:	3d696261 	0x3d696261
  2c:	33706c69 	xvstelm.h	$xr9,$r3,54(0x36),0xc
  30:	2d207332 	0x2d207332
  34:	6372616d 	blt	$r11,$r13,-36256(0x37260) # ffff7294 <_stack+0xe3ef7298>
  38:	6f6c3d68 	bgeu	$r11,$r8,-37828(0x36c3c) # ffff6c74 <_stack+0xe3ef6c78>
  3c:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 167a8 <__stack_size+0x67a8>
  40:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
  44:	2d207232 	0x2d207232
  48:	7570666d 	0x7570666d
  4c:	6e6f6e3d 	bgeu	$r17,$r29,-102548(0x26f6c) # fffe6fb8 <_stack+0xe3ee6fbc>
  50:	6d2d2065 	bgeu	$r3,$r5,77088(0x12d20) # 12d70 <__stack_size+0x2d70>
  54:	646d6973 	bge	$r11,$r19,28008(0x6d68) # 6dbc <__stack_size-0x9244>
  58:	6e6f6e3d 	bgeu	$r17,$r29,-102548(0x26f6c) # fffe6fc4 <_stack+0xe3ee6fc8>
  5c:	6d2d2065 	bgeu	$r3,$r5,77088(0x12d20) # 12d7c <__stack_size+0x2d7c>
  60:	646f6d63 	bge	$r11,$r3,28524(0x6f6c) # 6fcc <__stack_size-0x9034>
  64:	6e3d6c65 	bgeu	$r3,$r5,-115348(0x23d6c) # fffe3dd0 <_stack+0xe3ee3dd4>
  68:	616d726f 	blt	$r19,$r15,93552(0x16d70) # 16dd8 <__stack_size+0x6dd8>
  6c:	6d2d206c 	bgeu	$r3,$r12,77088(0x12d20) # 12d8c <__stack_size+0x2d8c>
  70:	656e7574 	bge	$r11,$r20,93812(0x16e74) # 16ee4 <__stack_size+0x6ee4>
  74:	6f6f6c3d 	bgeu	$r1,$r29,-37012(0x36f6c) # ffff6fe0 <_stack+0xe3ef6fe4>
  78:	7261676e 	0x7261676e
  7c:	32336863 	0x32336863
  80:	672d2072 	bge	$r3,$r18,-53984(0x32d20) # ffff2da0 <_stack+0xe3ef2da4>
  84:	324f2d20 	xvldrepl.h	$xr0,$r9,1942(0x796)
  88:	6e662d20 	bgeu	$r9,$r0,-104916(0x2662c) # fffe66b4 <_stack+0xe3ee66b8>
  8c:	75622d6f 	0x75622d6f
  90:	69746c69 	bltu	$r3,$r9,95340(0x1746c) # 174fc <__stack_size+0x74fc>
  94:	662d206e 	bge	$r3,$r14,-119520(0x22d20) # fffe2db4 <_stack+0xe3ee2db8>
  98:	702d6f6e 	0x702d6f6e
  9c:	70006369 	vseq.b	$vr9,$vr27,$vr24
  a0:	746e6972 	0x746e6972
  a4:	65736162 	bge	$r11,$r2,95072(0x17360) # 17404 <__stack_size+0x7404>
  a8:	74757000 	xvmax.wu	$xr0,$xr0,$xr28
  ac:	69727473 	bltu	$r3,$r19,94836(0x17274) # 17320 <__stack_size+0x7320>
  b0:	7000676e 	vseq.b	$vr14,$vr27,$vr25
  b4:	746e6972 	0x746e6972
  b8:	00632e66 	bstrins.w	$r6,$r19,0x3,0xb
  bc:	6d6f682f 	bgeu	$r1,$r15,94056(0x16f68) # 17024 <__stack_size+0x7024>
  c0:	33312f65 	xvstelm.w	$xr5,$r27,300(0x12c),0x4
  c4:	69672f32 	bltu	$r25,$r18,91948(0x1672c) # 167f0 <__stack_size+0x67f0>
  c8:	65725f74 	bge	$r27,$r20,94812(0x1725c) # 17324 <__stack_size+0x7324>
  cc:	65702f70 	bge	$r27,$r16,94252(0x1702c) # 170f8 <__stack_size+0x70f8>
  d0:	732f6672 	0x732f6672
  d4:	2f74666f 	0x2f74666f
  d8:	66726570 	bge	$r11,$r16,-101788(0x27264) # fffe733c <_stack+0xe3ee7340>
  dc:	6e75665f 	bgeu	$r18,$r31,-101020(0x27564) # fffe7640 <_stack+0xe3ee7644>
  e0:	696c2f63 	bltu	$r27,$r3,93228(0x16c2c) # 16d0c <__stack_size+0x6d0c>
  e4:	72700062 	0x72700062
  e8:	66746e69 	bge	$r19,$r9,-101268(0x2746c) # fffe7554 <_stack+0xe3ee7558>
  ec:	74677400 	xvavg.wu	$xr0,$xr0,$xr29
  f0:	7475705f 	xvmax.wu	$xr31,$xr2,$xr28
  f4:	72616863 	0x72616863
  f8:	74757000 	xvmax.wu	$xr0,$xr0,$xr28
  fc:	72616863 	0x72616863
 100:	7000632e 	vseq.b	$vr14,$vr25,$vr24
 104:	2e737475 	0x2e737475
 108:	75700063 	0x75700063
 10c:	70007374 	vseq.b	$vr20,$vr27,$vr28
 110:	746e6972 	0x746e6972
 114:	65736162 	bge	$r11,$r2,95072(0x17360) # 17474 <__stack_size+0x7474>
 118:	7600632e 	0x7600632e
 11c:	65756c61 	bge	$r3,$r1,95596(0x1756c) # 17688 <__stack_size+0x7688>
 120:	67697300 	bge	$r24,$r0,-38544(0x36970) # ffff6a90 <_stack+0xe3ef6a94>
 124:	6f6c006e 	bgeu	$r3,$r14,-37888(0x36c00) # ffff6d24 <_stack+0xe3ef6d28>
 128:	6920676e 	bltu	$r27,$r14,73828(0x12064) # 1218c <__stack_size+0x218c>
 12c:	6700746e 	bge	$r3,$r14,-65420(0x30074) # ffff01a0 <_stack+0xe3ef01a4>
 130:	635f7465 	blt	$r3,$r5,-41100(0x35f74) # ffff60a4 <_stack+0xe3ef60a8>
 134:	746e756f 	0x746e756f
 138:	00796d5f 	bstrins.w	$r31,$r10,0x19,0x1b
 13c:	7465675f 	xvavg.w	$xr31,$xr26,$xr25
 140:	756f635f 	0x756f635f
 144:	7400746e 	xvseq.b	$xr14,$xr3,$xr29
 148:	73656d69 	vssrani.wu.d	$vr9,$vr11,0x1b
 14c:	00636570 	bstrins.w	$r16,$r11,0x3,0x19
 150:	6f6c635f 	bgeu	$r26,$r31,-37792(0x36c60) # ffff6db0 <_stack+0xe3ef6db4>
 154:	745f6b63 	0x745f6b63
 158:	5f767400 	bne	$r0,$r0,-35212(0x37674) # ffff77cc <_stack+0xe3ef77d0>
 15c:	6365736d 	blt	$r27,$r13,-39568(0x36570) # ffff66cc <_stack+0xe3ef66d0>
 160:	6d697400 	bgeu	$r0,$r0,92532(0x16974) # 16ad4 <__stack_size+0x6ad4>
 164:	00632e65 	bstrins.w	$r5,$r19,0x3,0xb
 168:	5f746567 	bne	$r11,$r7,-35740(0x37464) # ffff75cc <_stack+0xe3ef75d0>
 16c:	67007375 	bge	$r27,$r21,-65424(0x30070) # ffff01dc <_stack+0xe3ef01e0>
 170:	635f7465 	blt	$r3,$r5,-41100(0x35f74) # ffff60e4 <_stack+0xe3ef60e8>
 174:	6b636f6c 	bltu	$r27,$r12,-40084(0x3636c) # ffff64e0 <_stack+0xe3ef64e4>
 178:	5f767400 	bne	$r0,$r0,-35212(0x37674) # ffff77ec <_stack+0xe3ef77f0>
 17c:	63657375 	blt	$r27,$r21,-39568(0x36570) # ffff66ec <_stack+0xe3ef66f0>
 180:	6f635f00 	bgeu	$r24,$r0,-40100(0x3635c) # ffff64dc <_stack+0xe3ef64e0>
 184:	6176746e 	blt	$r3,$r14,95860(0x17674) # 177f8 <__stack_size+0x77f8>
 188:	7674006c 	0x7674006c
 18c:	6365735f 	blt	$r26,$r31,-39568(0x36570) # ffff66fc <_stack+0xe3ef6700>
 190:	74656700 	xvavg.w	$xr0,$xr24,$xr25
 194:	00736e5f 	bstrins.w	$r31,$r18,0x13,0x1b
 198:	6e5f7674 	bgeu	$r19,$r20,-106636(0x25f74) # fffe610c <_stack+0xe3ee6110>
 19c:	00636573 	bstrins.w	$r19,$r11,0x3,0x19
 1a0:	636f6c63 	blt	$r3,$r3,-37012(0x36f6c) # ffff710c <_stack+0xe3ef7110>
 1a4:	65675f6b 	bge	$r27,$r11,91996(0x1675c) # 16900 <__stack_size+0x6900>
 1a8:	6d697474 	bgeu	$r3,$r20,92532(0x16974) # 16b1c <__stack_size+0x6b1c>
 1ac:	61720065 	blt	$r3,$r5,94720(0x17200) # 173ac <__stack_size+0x73ac>
 1b0:	632e646e 	blt	$r3,$r14,-53660(0x32e64) # ffff3014 <_stack+0xe3ef3018>
 1b4:	61727300 	blt	$r24,$r0,94832(0x17270) # 17424 <__stack_size+0x7424>
 1b8:	6e00646e 	bgeu	$r3,$r14,-130972(0x20064) # fffe021c <_stack+0xe3ee0220>
 1bc:	00747865 	bstrins.w	$r5,$r3,0x14,0x1e
 1c0:	64656573 	bge	$r11,$r19,25956(0x6564) # 6724 <__stack_size-0x98dc>
	...

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	0x0000000c
   4:	ffffffff 	0xffffffff
   8:	7c010001 	0x7c010001
   c:	00030d01 	0x00030d01
  10:	00000034 	0x00000034
  14:	00000000 	0x00000000
  18:	1c00d230 	pcaddu12i	$r16,1681(0x691)
  1c:	0000023c 	0x0000023c
  20:	5c600e44 	bne	$r18,$r4,24588(0x600c) # 602c <__stack_size-0x9fd4>
  24:	09810d9a 	0x09810d9a
  28:	0b980a97 	0x0b980a97
  2c:	0e9b0c99 	0x0e9b0c99
  30:	b4020f9c 	0xb4020f9c
  34:	d744c10a 	0xd744c10a
  38:	d944d844 	0xd944d844
  3c:	db44da44 	0xdb44da44
  40:	0e48dc44 	0x0e48dc44
  44:	000b4400 	0x000b4400
  48:	0000000c 	0x0000000c
  4c:	ffffffff 	0xffffffff
  50:	7c010001 	0x7c010001
  54:	00030d01 	0x00030d01
  58:	00000018 	0x00000018
  5c:	00000048 	0x00000048
  60:	1c00d470 	pcaddu12i	$r16,1699(0x6a3)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c00d4a0 	pcaddu12i	$r0,1701(0x6a5)
  80:	00000024 	0x00000024
  84:	44100e44 	bnez	$r18,1052684(0x10100c) # 101090 <__stack_size+0xf1090>
  88:	d9540199 	0xd9540199
  8c:	00000e44 	0x00000e44
  90:	0000000c 	0x0000000c
  94:	ffffffff 	0xffffffff
  98:	7c010001 	0x7c010001
  9c:	00030d01 	0x00030d01
  a0:	00000024 	0x00000024
  a4:	00000090 	0x00000090
  a8:	1c00d4d0 	pcaddu12i	$r16,1702(0x6a6)
  ac:	00000074 	0x00000074
  b0:	50100e44 	b	-116387828(0x910100c) # f91010bc <_stack+0xdd0010c0>
  b4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  b8:	04990398 	csrxchg	$r24,$r28,0x2640
  bc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c204 <__stack_size+0x7c204>
  c0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd904 <_stack+0xe3ccd908>
  c4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  c8:	00000018 	0x00000018
  cc:	00000090 	0x00000090
  d0:	1c00d550 	pcaddu12i	$r16,1706(0x6aa)
  d4:	0000002c 	0x0000002c
  d8:	44100e44 	bnez	$r18,1052684(0x10100c) # 1010e4 <__stack_size+0xf10e4>
  dc:	c1580181 	0xc1580181
  e0:	00000e48 	0x00000e48
  e4:	0000000c 	0x0000000c
  e8:	ffffffff 	0xffffffff
  ec:	7c010001 	0x7c010001
  f0:	00030d01 	0x00030d01
  f4:	00000028 	0x00000028
  f8:	000000e4 	0x000000e4
  fc:	1c00d580 	pcaddu12i	$r0,1708(0x6ac)
 100:	000000ec 	0x000000ec
 104:	50600e44 	b	-116367348(0x910600c) # f9106110 <_stack+0xdd006114>
 108:	01810297 	0x01810297
 10c:	04990398 	csrxchg	$r24,$r28,0x2640
 110:	c10a8c02 	0xc10a8c02
 114:	d844d744 	0xd844d744
 118:	0e48d944 	0x0e48d944
 11c:	000b4400 	0x000b4400
 120:	0000000c 	0x0000000c
 124:	ffffffff 	0xffffffff
 128:	7c010001 	0x7c010001
 12c:	00030d01 	0x00030d01
 130:	00000018 	0x00000018
 134:	00000120 	0x00000120
 138:	1c00d670 	pcaddu12i	$r16,1715(0x6b3)
 13c:	0000001c 	0x0000001c
 140:	44100e44 	bnez	$r18,1052684(0x10100c) # 10114c <__stack_size+0xf114c>
 144:	d94c0199 	0xd94c0199
 148:	00000e44 	0x00000e44
 14c:	0000000c 	0x0000000c
 150:	00000120 	0x00000120
 154:	1c00d690 	pcaddu12i	$r16,1716(0x6b4)
 158:	00000004 	0x00000004
 15c:	0000000c 	0x0000000c
 160:	00000120 	0x00000120
 164:	1c00d6a0 	pcaddu12i	$r0,1717(0x6b5)
 168:	00000008 	0x00000008
 16c:	00000018 	0x00000018
 170:	00000120 	0x00000120
 174:	1c00d6b0 	pcaddu12i	$r16,1717(0x6b5)
 178:	00000084 	0x00000084
 17c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101188 <__stack_size+0xf1188>
 180:	60020199 	blt	$r12,$r25,512(0x200) # 380 <__stack_size-0xfc80>
 184:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 188:	0000000c 	0x0000000c
 18c:	00000120 	0x00000120
 190:	1c00d740 	pcaddu12i	$r0,1722(0x6ba)
 194:	00000004 	0x00000004
 198:	00000018 	0x00000018
 19c:	00000120 	0x00000120
 1a0:	1c00d750 	pcaddu12i	$r16,1722(0x6ba)
 1a4:	00000024 	0x00000024
 1a8:	44100e44 	bnez	$r18,1052684(0x10100c) # 1011b4 <__stack_size+0xf11b4>
 1ac:	d9500199 	0xd9500199
 1b0:	00000e48 	0x00000e48
 1b4:	00000018 	0x00000018
 1b8:	00000120 	0x00000120
 1bc:	1c00d780 	pcaddu12i	$r0,1724(0x6bc)
 1c0:	00000030 	0x00000030
 1c4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1011d0 <__stack_size+0xf11d0>
 1c8:	d9500199 	0xd9500199
 1cc:	00000e54 	0x00000e54
 1d0:	0000000c 	0x0000000c
 1d4:	ffffffff 	0xffffffff
 1d8:	7c010001 	0x7c010001
 1dc:	00030d01 	0x00030d01
 1e0:	0000000c 	0x0000000c
 1e4:	000001d0 	0x000001d0
 1e8:	1c00d7b0 	pcaddu12i	$r16,1725(0x6bd)
 1ec:	00000034 	0x00000034
 1f0:	0000000c 	0x0000000c
 1f4:	000001d0 	0x000001d0
 1f8:	1c00d7f0 	pcaddu12i	$r16,1727(0x6bf)
 1fc:	00000010 	0x00000010
