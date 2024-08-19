
obj/fireye_I2/main.elf:     file format elf32-loongarch
obj/fireye_I2/main.elf


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
1c000050:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c000054:	0298818c 	addi.w	$r12,$r12,1568(0x620)
1c000058:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00005c:	02bea1ad 	addi.w	$r13,$r13,-88(0xfa8)
1c000060:	1c00102e 	pcaddu12i	$r14,129(0x81)
1c000064:	02baf1ce 	addi.w	$r14,$r14,-324(0xebc)
1c000068:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000080 <_start+0x80>
1c00006c:	2880018f 	ld.w	$r15,$r12,0
1c000070:	298001af 	st.w	$r15,$r13,0
1c000074:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000078:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00007c:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c00006c <_start+0x6c>
1c000080:	1c00102c 	pcaddu12i	$r12,129(0x81)
1c000084:	02ba718c 	addi.w	$r12,$r12,-356(0xe9c)
1c000088:	1c00102d 	pcaddu12i	$r13,129(0x81)
1c00008c:	02bce1ad 	addi.w	$r13,$r13,-200(0xf38)
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
1c00038c:	541de400 	bl	7652(0x1de4) # 1c002170 <shell15>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <check>:
check():
1c0003a0:	00101886 	add.w	$r6,$r4,$r6
1c0003a4:	6401e886 	bge	$r4,$r6,488(0x1e8) # 1c00058c <check+0x1ec>
1c0003a8:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c0003ac:	0280540d 	addi.w	$r13,$r0,21(0x15)
1c0003b0:	001c3089 	mul.w	$r9,$r4,$r12
1c0003b4:	1c00102f 	pcaddu12i	$r15,129(0x81)
1c0003b8:	02a2c1ef 	addi.w	$r15,$r15,-1872(0x8b0)
1c0003bc:	00101ca7 	add.w	$r7,$r5,$r7
1c0003c0:	028004ab 	addi.w	$r11,$r5,1(0x1)
1c0003c4:	00101dee 	add.w	$r14,$r15,$r7
1c0003c8:	1c001010 	pcaddu12i	$r16,128(0x80)
1c0003cc:	02bc7210 	addi.w	$r16,$r16,-228(0xf1c)
1c0003d0:	001c3484 	mul.w	$r4,$r4,$r13
1c0003d4:	00101531 	add.w	$r17,$r9,$r5
1c0003d8:	00408a33 	slli.w	$r19,$r17,0x2
1c0003dc:	00104e10 	add.w	$r16,$r16,$r19
1c0003e0:	001c34ca 	mul.w	$r10,$r6,$r13
1c0003e4:	00101172 	add.w	$r18,$r11,$r4
1c0003e8:	001049ef 	add.w	$r15,$r15,$r18
1c0003ec:	001011c4 	add.w	$r4,$r14,$r4
1c0003f0:	00103946 	add.w	$r6,$r10,$r14
1c0003f4:	640188a7 	bge	$r5,$r7,392(0x188) # 1c00057c <check+0x1dc>
1c0003f8:	283ffdf4 	ld.b	$r20,$r15,-1(0xfff)
1c0003fc:	5c017a88 	bne	$r20,$r8,376(0x178) # 1c000574 <check+0x1d4>
1c000400:	2880020c 	ld.w	$r12,$r16,0
1c000404:	5c017180 	bne	$r12,$r0,368(0x170) # 1c000574 <check+0x1d4>
1c000408:	00113c89 	sub.w	$r9,$r4,$r15
1c00040c:	03401d2a 	andi	$r10,$r9,0x7
1c000410:	001501ec 	move	$r12,$r15
1c000414:	0015020d 	move	$r13,$r16
1c000418:	5800c540 	beq	$r10,$r0,196(0xc4) # 1c0004dc <check+0x13c>
1c00041c:	280001ed 	ld.b	$r13,$r15,0
1c000420:	5c0155a8 	bne	$r13,$r8,340(0x154) # 1c000574 <check+0x1d4>
1c000424:	2880120b 	ld.w	$r11,$r16,4(0x4)
1c000428:	0280120d 	addi.w	$r13,$r16,4(0x4)
1c00042c:	028005ec 	addi.w	$r12,$r15,1(0x1)
1c000430:	5c014560 	bne	$r11,$r0,324(0x144) # 1c000574 <check+0x1d4>
1c000434:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000438:	5800a54e 	beq	$r10,$r14,164(0xa4) # 1c0004dc <check+0x13c>
1c00043c:	02800811 	addi.w	$r17,$r0,2(0x2)
1c000440:	58008551 	beq	$r10,$r17,132(0x84) # 1c0004c4 <check+0x124>
1c000444:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c000448:	58006552 	beq	$r10,$r18,100(0x64) # 1c0004ac <check+0x10c>
1c00044c:	02801013 	addi.w	$r19,$r0,4(0x4)
1c000450:	58004553 	beq	$r10,$r19,68(0x44) # 1c000494 <check+0xf4>
1c000454:	02801414 	addi.w	$r20,$r0,5(0x5)
1c000458:	58002554 	beq	$r10,$r20,36(0x24) # 1c00047c <check+0xdc>
1c00045c:	02801809 	addi.w	$r9,$r0,6(0x6)
1c000460:	5c013549 	bne	$r10,$r9,308(0x134) # 1c000594 <check+0x1f4>
1c000464:	2800018e 	ld.b	$r14,$r12,0
1c000468:	5c010dc8 	bne	$r14,$r8,268(0x10c) # 1c000574 <check+0x1d4>
1c00046c:	288011b1 	ld.w	$r17,$r13,4(0x4)
1c000470:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000474:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000478:	5c00fe20 	bne	$r17,$r0,252(0xfc) # 1c000574 <check+0x1d4>
1c00047c:	28000192 	ld.b	$r18,$r12,0
1c000480:	5c00f648 	bne	$r18,$r8,244(0xf4) # 1c000574 <check+0x1d4>
1c000484:	288011b3 	ld.w	$r19,$r13,4(0x4)
1c000488:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00048c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000490:	5c00e660 	bne	$r19,$r0,228(0xe4) # 1c000574 <check+0x1d4>
1c000494:	28000194 	ld.b	$r20,$r12,0
1c000498:	5c00de88 	bne	$r20,$r8,220(0xdc) # 1c000574 <check+0x1d4>
1c00049c:	288011a9 	ld.w	$r9,$r13,4(0x4)
1c0004a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0004a4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0004a8:	5c00cd20 	bne	$r9,$r0,204(0xcc) # 1c000574 <check+0x1d4>
1c0004ac:	2800018a 	ld.b	$r10,$r12,0
1c0004b0:	5c00c548 	bne	$r10,$r8,196(0xc4) # 1c000574 <check+0x1d4>
1c0004b4:	288011ab 	ld.w	$r11,$r13,4(0x4)
1c0004b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0004bc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0004c0:	5c00b560 	bne	$r11,$r0,180(0xb4) # 1c000574 <check+0x1d4>
1c0004c4:	2800018e 	ld.b	$r14,$r12,0
1c0004c8:	5c00adc8 	bne	$r14,$r8,172(0xac) # 1c000574 <check+0x1d4>
1c0004cc:	288011b1 	ld.w	$r17,$r13,4(0x4)
1c0004d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0004d4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0004d8:	5c009e20 	bne	$r17,$r0,156(0x9c) # 1c000574 <check+0x1d4>
1c0004dc:	5800a184 	beq	$r12,$r4,160(0xa0) # 1c00057c <check+0x1dc>
1c0004e0:	28000192 	ld.b	$r18,$r12,0
1c0004e4:	5c009248 	bne	$r18,$r8,144(0x90) # 1c000574 <check+0x1d4>
1c0004e8:	288011b3 	ld.w	$r19,$r13,4(0x4)
1c0004ec:	028011b4 	addi.w	$r20,$r13,4(0x4)
1c0004f0:	02800589 	addi.w	$r9,$r12,1(0x1)
1c0004f4:	5c008260 	bne	$r19,$r0,128(0x80) # 1c000574 <check+0x1d4>
1c0004f8:	2800058a 	ld.b	$r10,$r12,1(0x1)
1c0004fc:	5c007948 	bne	$r10,$r8,120(0x78) # 1c000574 <check+0x1d4>
1c000500:	2880128b 	ld.w	$r11,$r20,4(0x4)
1c000504:	5c007160 	bne	$r11,$r0,112(0x70) # 1c000574 <check+0x1d4>
1c000508:	2800098e 	ld.b	$r14,$r12,2(0x2)
1c00050c:	5c0069c8 	bne	$r14,$r8,104(0x68) # 1c000574 <check+0x1d4>
1c000510:	288031b1 	ld.w	$r17,$r13,12(0xc)
1c000514:	5c006220 	bne	$r17,$r0,96(0x60) # 1c000574 <check+0x1d4>
1c000518:	28000d92 	ld.b	$r18,$r12,3(0x3)
1c00051c:	5c005a48 	bne	$r18,$r8,88(0x58) # 1c000574 <check+0x1d4>
1c000520:	288041b3 	ld.w	$r19,$r13,16(0x10)
1c000524:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c000528:	5c004e60 	bne	$r19,$r0,76(0x4c) # 1c000574 <check+0x1d4>
1c00052c:	2800118c 	ld.b	$r12,$r12,4(0x4)
1c000530:	5c004588 	bne	$r12,$r8,68(0x44) # 1c000574 <check+0x1d4>
1c000534:	288011aa 	ld.w	$r10,$r13,4(0x4)
1c000538:	5c003d40 	bne	$r10,$r0,60(0x3c) # 1c000574 <check+0x1d4>
1c00053c:	2800112b 	ld.b	$r11,$r9,4(0x4)
1c000540:	5c003568 	bne	$r11,$r8,52(0x34) # 1c000574 <check+0x1d4>
1c000544:	2880528e 	ld.w	$r14,$r20,20(0x14)
1c000548:	5c002dc0 	bne	$r14,$r0,44(0x2c) # 1c000574 <check+0x1d4>
1c00054c:	28001531 	ld.b	$r17,$r9,5(0x5)
1c000550:	5c002628 	bne	$r17,$r8,36(0x24) # 1c000574 <check+0x1d4>
1c000554:	28806292 	ld.w	$r18,$r20,24(0x18)
1c000558:	5c001e40 	bne	$r18,$r0,28(0x1c) # 1c000574 <check+0x1d4>
1c00055c:	28001933 	ld.b	$r19,$r9,6(0x6)
1c000560:	5c001668 	bne	$r19,$r8,20(0x14) # 1c000574 <check+0x1d4>
1c000564:	2880728a 	ld.w	$r10,$r20,28(0x1c)
1c000568:	0280728d 	addi.w	$r13,$r20,28(0x1c)
1c00056c:	02801d2c 	addi.w	$r12,$r9,7(0x7)
1c000570:	5bff6d40 	beq	$r10,$r0,-148(0x3ff6c) # 1c0004dc <check+0x13c>
1c000574:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000578:	4c000020 	jirl	$r0,$r1,0
1c00057c:	02805484 	addi.w	$r4,$r4,21(0x15)
1c000580:	02813210 	addi.w	$r16,$r16,76(0x4c)
1c000584:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000588:	5ffe6c86 	bne	$r4,$r6,-404(0x3fe6c) # 1c0003f4 <check+0x54>
1c00058c:	00150004 	move	$r4,$r0
1c000590:	4c000020 	jirl	$r0,$r1,0
1c000594:	2800018a 	ld.b	$r10,$r12,0
1c000598:	5fffdd48 	bne	$r10,$r8,-36(0x3ffdc) # 1c000574 <check+0x1d4>
1c00059c:	288011ab 	ld.w	$r11,$r13,4(0x4)
1c0005a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005a4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0005a8:	5bfebd60 	beq	$r11,$r0,-324(0x3febc) # 1c000464 <check+0xc4>
1c0005ac:	53ffcbff 	b	-56(0xfffffc8) # 1c000574 <check+0x1d4>

1c0005b0 <find>:
find():
1c0005b0:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c0005b4:	001c3108 	mul.w	$r8,$r8,$r12
1c0005b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0005bc:	00101cc9 	add.w	$r9,$r6,$r7
1c0005c0:	29809078 	st.w	$r24,$r3,36(0x24)
1c0005c4:	29808079 	st.w	$r25,$r3,32(0x20)
1c0005c8:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0005cc:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0005d0:	2980407d 	st.w	$r29,$r3,16(0x10)
1c0005d4:	2980307e 	st.w	$r30,$r3,12(0xc)
1c0005d8:	2980207f 	st.w	$r31,$r3,8(0x8)
1c0005dc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0005e0:	2980a077 	st.w	$r23,$r3,40(0x28)
1c0005e4:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0005e8:	1c00102b 	pcaddu12i	$r11,129(0x81)
1c0005ec:	28a4c16b 	ld.w	$r11,$r11,-1744(0x930)
1c0005f0:	1c00102a 	pcaddu12i	$r10,129(0x81)
1c0005f4:	28a4914a 	ld.w	$r10,$r10,-1756(0x924)
1c0005f8:	0010192e 	add.w	$r14,$r9,$r6
1c0005fc:	0040852d 	slli.w	$r13,$r9,0x1
1c000600:	29801146 	st.w	$r6,$r10,4(0x4)
1c000604:	29802149 	st.w	$r9,$r10,8(0x8)
1c000608:	29804146 	st.w	$r6,$r10,16(0x10)
1c00060c:	29805149 	st.w	$r9,$r10,20(0x14)
1c000610:	29807146 	st.w	$r6,$r10,28(0x1c)
1c000614:	29808149 	st.w	$r9,$r10,32(0x20)
1c000618:	2980a146 	st.w	$r6,$r10,40(0x28)
1c00061c:	2980b149 	st.w	$r9,$r10,44(0x2c)
1c000620:	2980d146 	st.w	$r6,$r10,52(0x34)
1c000624:	2980e149 	st.w	$r9,$r10,56(0x38)
1c000628:	29806169 	st.w	$r9,$r11,24(0x18)
1c00062c:	1c001018 	pcaddu12i	$r24,128(0x80)
1c000630:	02af1318 	addi.w	$r24,$r24,-1084(0xbc4)
1c000634:	29800140 	st.w	$r0,$r10,0
1c000638:	29803140 	st.w	$r0,$r10,12(0xc)
1c00063c:	29806140 	st.w	$r0,$r10,24(0x18)
1c000640:	29809140 	st.w	$r0,$r10,36(0x24)
1c000644:	2980c140 	st.w	$r0,$r10,48(0x30)
1c000648:	29800160 	st.w	$r0,$r11,0
1c00064c:	29803166 	st.w	$r6,$r11,12(0xc)
1c000650:	2980916e 	st.w	$r14,$r11,36(0x24)
1c000654:	2980c16d 	st.w	$r13,$r11,48(0x30)
1c000658:	29801160 	st.w	$r0,$r11,4(0x4)
1c00065c:	29802160 	st.w	$r0,$r11,8(0x8)
1c000660:	29804166 	st.w	$r6,$r11,16(0x10)
1c000664:	29805166 	st.w	$r6,$r11,20(0x14)
1c000668:	0015009d 	move	$r29,$r4
1c00066c:	29807169 	st.w	$r9,$r11,28(0x1c)
1c000670:	29808169 	st.w	$r9,$r11,32(0x20)
1c000674:	2980a16e 	st.w	$r14,$r11,40(0x28)
1c000678:	2980b16e 	st.w	$r14,$r11,44(0x2c)
1c00067c:	2980d16d 	st.w	$r13,$r11,52(0x34)
1c000680:	2980e16d 	st.w	$r13,$r11,56(0x38)
1c000684:	00150009 	move	$r9,$r0
1c000688:	02800c1c 	addi.w	$r28,$r0,3(0x3)
1c00068c:	02804c1f 	addi.w	$r31,$r0,19(0x13)
1c000690:	1c00101e 	pcaddu12i	$r30,128(0x80)
1c000694:	02b153de 	addi.w	$r30,$r30,-940(0xc54)
1c000698:	0280541a 	addi.w	$r26,$r0,21(0x15)
1c00069c:	1c001019 	pcaddu12i	$r25,128(0x80)
1c0006a0:	02972339 	addi.w	$r25,$r25,1480(0x5c8)
1c0006a4:	00102318 	add.w	$r24,$r24,$r8
1c0006a8:	001500cc 	move	$r12,$r6
1c0006ac:	03400000 	andi	$r0,$r0,0x0
1c0006b0:	0020f124 	mod.w	$r4,$r9,$r28
1c0006b4:	5c000b80 	bne	$r28,$r0,8(0x8) # 1c0006bc <find+0x10c>
1c0006b8:	002a0007 	break	0x7
1c0006bc:	0340048f 	andi	$r15,$r4,0x1
1c0006c0:	001500d4 	move	$r20,$r6
1c0006c4:	580009e0 	beq	$r15,$r0,8(0x8) # 1c0006cc <find+0x11c>
1c0006c8:	001500f4 	move	$r20,$r7
1c0006cc:	28800310 	ld.w	$r16,$r24,0
1c0006d0:	28800171 	ld.w	$r17,$r11,0
1c0006d4:	28800153 	ld.w	$r19,$r10,0
1c0006d8:	02400612 	sltui	$r18,$r16,1(0x1)
1c0006dc:	001047b6 	add.w	$r22,$r29,$r17
1c0006e0:	00114817 	sub.w	$r23,$r0,$r18
1c0006e4:	001032db 	add.w	$r27,$r22,$r12
1c0006e8:	03402eec 	andi	$r12,$r23,0xb
1c0006ec:	00104cb3 	add.w	$r19,$r5,$r19
1c0006f0:	02808d8c 	addi.w	$r12,$r12,35(0x23)
1c0006f4:	640216db 	bge	$r22,$r27,532(0x214) # 1c000908 <find+0x358>
1c0006f8:	001c7ec8 	mul.w	$r8,$r22,$r31
1c0006fc:	02800664 	addi.w	$r4,$r19,1(0x1)
1c000700:	00105274 	add.w	$r20,$r19,$r20
1c000704:	001c6ace 	mul.w	$r14,$r22,$r26
1c000708:	00104d10 	add.w	$r16,$r8,$r19
1c00070c:	00408a17 	slli.w	$r23,$r16,0x2
1c000710:	00105fd0 	add.w	$r16,$r30,$r23
1c000714:	001c6b6d 	mul.w	$r13,$r27,$r26
1c000718:	00103891 	add.w	$r17,$r4,$r14
1c00071c:	001065cf 	add.w	$r15,$r14,$r25
1c000720:	00104732 	add.w	$r18,$r25,$r17
1c000724:	001051ef 	add.w	$r15,$r15,$r20
1c000728:	001065b6 	add.w	$r22,$r13,$r25
1c00072c:	001052c8 	add.w	$r8,$r22,$r20
1c000730:	6401ca74 	bge	$r19,$r20,456(0x1c8) # 1c0008f8 <find+0x348>
1c000734:	283ffe5b 	ld.b	$r27,$r18,-1(0xfff)
1c000738:	5c020b6c 	bne	$r27,$r12,520(0x208) # 1c000940 <find+0x390>
1c00073c:	28800204 	ld.w	$r4,$r16,0
1c000740:	5c020080 	bne	$r4,$r0,512(0x200) # 1c000940 <find+0x390>
1c000744:	001149f1 	sub.w	$r17,$r15,$r18
1c000748:	03401e36 	andi	$r22,$r17,0x7
1c00074c:	0015024d 	move	$r13,$r18
1c000750:	0015020e 	move	$r14,$r16
1c000754:	5800dec0 	beq	$r22,$r0,220(0xdc) # 1c000830 <find+0x280>
1c000758:	2800024e 	ld.b	$r14,$r18,0
1c00075c:	5c016dcc 	bne	$r14,$r12,364(0x16c) # 1c0008c8 <find+0x318>
1c000760:	28801217 	ld.w	$r23,$r16,4(0x4)
1c000764:	0280120e 	addi.w	$r14,$r16,4(0x4)
1c000768:	0280064d 	addi.w	$r13,$r18,1(0x1)
1c00076c:	5c015ee0 	bne	$r23,$r0,348(0x15c) # 1c0008c8 <find+0x318>
1c000770:	0280041b 	addi.w	$r27,$r0,1(0x1)
1c000774:	5800bedb 	beq	$r22,$r27,188(0xbc) # 1c000830 <find+0x280>
1c000778:	02800811 	addi.w	$r17,$r0,2(0x2)
1c00077c:	58009ed1 	beq	$r22,$r17,156(0x9c) # 1c000818 <find+0x268>
1c000780:	02800c17 	addi.w	$r23,$r0,3(0x3)
1c000784:	58007ed7 	beq	$r22,$r23,124(0x7c) # 1c000800 <find+0x250>
1c000788:	0280101b 	addi.w	$r27,$r0,4(0x4)
1c00078c:	58005edb 	beq	$r22,$r27,92(0x5c) # 1c0007e8 <find+0x238>
1c000790:	02801411 	addi.w	$r17,$r0,5(0x5)
1c000794:	58003ed1 	beq	$r22,$r17,60(0x3c) # 1c0007d0 <find+0x220>
1c000798:	02801817 	addi.w	$r23,$r0,6(0x6)
1c00079c:	58001ed7 	beq	$r22,$r23,28(0x1c) # 1c0007b8 <find+0x208>
1c0007a0:	280001b6 	ld.b	$r22,$r13,0
1c0007a4:	5c0126cc 	bne	$r22,$r12,292(0x124) # 1c0008c8 <find+0x318>
1c0007a8:	288011db 	ld.w	$r27,$r14,4(0x4)
1c0007ac:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0007b0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007b4:	5c011760 	bne	$r27,$r0,276(0x114) # 1c0008c8 <find+0x318>
1c0007b8:	280001b1 	ld.b	$r17,$r13,0
1c0007bc:	5c010e2c 	bne	$r17,$r12,268(0x10c) # 1c0008c8 <find+0x318>
1c0007c0:	288011d7 	ld.w	$r23,$r14,4(0x4)
1c0007c4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0007c8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007cc:	5c00fee0 	bne	$r23,$r0,252(0xfc) # 1c0008c8 <find+0x318>
1c0007d0:	280001b6 	ld.b	$r22,$r13,0
1c0007d4:	5c00f6cc 	bne	$r22,$r12,244(0xf4) # 1c0008c8 <find+0x318>
1c0007d8:	288011db 	ld.w	$r27,$r14,4(0x4)
1c0007dc:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0007e0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007e4:	5c00e760 	bne	$r27,$r0,228(0xe4) # 1c0008c8 <find+0x318>
1c0007e8:	280001b1 	ld.b	$r17,$r13,0
1c0007ec:	5c00de2c 	bne	$r17,$r12,220(0xdc) # 1c0008c8 <find+0x318>
1c0007f0:	288011d7 	ld.w	$r23,$r14,4(0x4)
1c0007f4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0007f8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007fc:	5c00cee0 	bne	$r23,$r0,204(0xcc) # 1c0008c8 <find+0x318>
1c000800:	280001b6 	ld.b	$r22,$r13,0
1c000804:	5c00c6cc 	bne	$r22,$r12,196(0xc4) # 1c0008c8 <find+0x318>
1c000808:	288011db 	ld.w	$r27,$r14,4(0x4)
1c00080c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000810:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c000814:	5c00b760 	bne	$r27,$r0,180(0xb4) # 1c0008c8 <find+0x318>
1c000818:	280001b1 	ld.b	$r17,$r13,0
1c00081c:	5c00ae2c 	bne	$r17,$r12,172(0xac) # 1c0008c8 <find+0x318>
1c000820:	288011d7 	ld.w	$r23,$r14,4(0x4)
1c000824:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000828:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c00082c:	5c009ee0 	bne	$r23,$r0,156(0x9c) # 1c0008c8 <find+0x318>
1c000830:	5800c9af 	beq	$r13,$r15,200(0xc8) # 1c0008f8 <find+0x348>
1c000834:	280001b6 	ld.b	$r22,$r13,0
1c000838:	5c0092cc 	bne	$r22,$r12,144(0x90) # 1c0008c8 <find+0x318>
1c00083c:	288011db 	ld.w	$r27,$r14,4(0x4)
1c000840:	028011d1 	addi.w	$r17,$r14,4(0x4)
1c000844:	028005b7 	addi.w	$r23,$r13,1(0x1)
1c000848:	5c008360 	bne	$r27,$r0,128(0x80) # 1c0008c8 <find+0x318>
1c00084c:	280005b6 	ld.b	$r22,$r13,1(0x1)
1c000850:	5c007acc 	bne	$r22,$r12,120(0x78) # 1c0008c8 <find+0x318>
1c000854:	2880123b 	ld.w	$r27,$r17,4(0x4)
1c000858:	5c007360 	bne	$r27,$r0,112(0x70) # 1c0008c8 <find+0x318>
1c00085c:	280009b6 	ld.b	$r22,$r13,2(0x2)
1c000860:	5c006acc 	bne	$r22,$r12,104(0x68) # 1c0008c8 <find+0x318>
1c000864:	288031db 	ld.w	$r27,$r14,12(0xc)
1c000868:	5c006360 	bne	$r27,$r0,96(0x60) # 1c0008c8 <find+0x318>
1c00086c:	28000db6 	ld.b	$r22,$r13,3(0x3)
1c000870:	5c005acc 	bne	$r22,$r12,88(0x58) # 1c0008c8 <find+0x318>
1c000874:	288041db 	ld.w	$r27,$r14,16(0x10)
1c000878:	028041ce 	addi.w	$r14,$r14,16(0x10)
1c00087c:	5c004f60 	bne	$r27,$r0,76(0x4c) # 1c0008c8 <find+0x318>
1c000880:	280011ad 	ld.b	$r13,$r13,4(0x4)
1c000884:	5c0045ac 	bne	$r13,$r12,68(0x44) # 1c0008c8 <find+0x318>
1c000888:	288011d6 	ld.w	$r22,$r14,4(0x4)
1c00088c:	5c003ec0 	bne	$r22,$r0,60(0x3c) # 1c0008c8 <find+0x318>
1c000890:	280012fb 	ld.b	$r27,$r23,4(0x4)
1c000894:	5c00376c 	bne	$r27,$r12,52(0x34) # 1c0008c8 <find+0x318>
1c000898:	2880522e 	ld.w	$r14,$r17,20(0x14)
1c00089c:	5c002dc0 	bne	$r14,$r0,44(0x2c) # 1c0008c8 <find+0x318>
1c0008a0:	280016ed 	ld.b	$r13,$r23,5(0x5)
1c0008a4:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0008c8 <find+0x318>
1c0008a8:	28806236 	ld.w	$r22,$r17,24(0x18)
1c0008ac:	5c001ec0 	bne	$r22,$r0,28(0x1c) # 1c0008c8 <find+0x318>
1c0008b0:	28001afb 	ld.b	$r27,$r23,6(0x6)
1c0008b4:	5c00176c 	bne	$r27,$r12,20(0x14) # 1c0008c8 <find+0x318>
1c0008b8:	28807236 	ld.w	$r22,$r17,28(0x1c)
1c0008bc:	0280722e 	addi.w	$r14,$r17,28(0x1c)
1c0008c0:	02801eed 	addi.w	$r13,$r23,7(0x7)
1c0008c4:	5bff6ec0 	beq	$r22,$r0,-148(0x3ff6c) # 1c000830 <find+0x280>
1c0008c8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0008cc:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c0008d0:	28809078 	ld.w	$r24,$r3,36(0x24)
1c0008d4:	28808079 	ld.w	$r25,$r3,32(0x20)
1c0008d8:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c0008dc:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c0008e0:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c0008e4:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c0008e8:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c0008ec:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c0008f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0008f4:	4c000020 	jirl	$r0,$r1,0
1c0008f8:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c0008fc:	02813210 	addi.w	$r16,$r16,76(0x4c)
1c000900:	02805652 	addi.w	$r18,$r18,21(0x15)
1c000904:	5ffe2de8 	bne	$r15,$r8,-468(0x3fe2c) # 1c000730 <find+0x180>
1c000908:	02800529 	addi.w	$r9,$r9,1(0x1)
1c00090c:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c000910:	5800652d 	beq	$r9,$r13,100(0x64) # 1c000974 <find+0x3c4>
1c000914:	00207124 	div.w	$r4,$r9,$r28
1c000918:	5c000b80 	bne	$r28,$r0,8(0x8) # 1c000920 <find+0x370>
1c00091c:	002a0007 	break	0x7
1c000920:	03400488 	andi	$r8,$r4,0x1
1c000924:	001500cc 	move	$r12,$r6
1c000928:	58000900 	beq	$r8,$r0,8(0x8) # 1c000930 <find+0x380>
1c00092c:	001500ec 	move	$r12,$r7
1c000930:	0280116b 	addi.w	$r11,$r11,4(0x4)
1c000934:	0280114a 	addi.w	$r10,$r10,4(0x4)
1c000938:	02801318 	addi.w	$r24,$r24,4(0x4)
1c00093c:	53fd77ff 	b	-652(0xffffd74) # 1c0006b0 <find+0x100>
1c000940:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c000944:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c000948:	28809078 	ld.w	$r24,$r3,36(0x24)
1c00094c:	28808079 	ld.w	$r25,$r3,32(0x20)
1c000950:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c000954:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c000958:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c00095c:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c000960:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c000964:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c000968:	00150004 	move	$r4,$r0
1c00096c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c000970:	4c000020 	jirl	$r0,$r1,0
1c000974:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c000978:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c00097c:	28809078 	ld.w	$r24,$r3,36(0x24)
1c000980:	28808079 	ld.w	$r25,$r3,32(0x20)
1c000984:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c000988:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c00098c:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c000990:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c000994:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c000998:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c00099c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0009a0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0009a4:	4c000020 	jirl	$r0,$r1,0
1c0009a8:	03400000 	andi	$r0,$r0,0x0
1c0009ac:	03400000 	andi	$r0,$r0,0x0

1c0009b0 <shell15_main>:
shell15_main():
1c0009b0:	02bdc063 	addi.w	$r3,$r3,-144(0xf70)
1c0009b4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0009b8:	2981e07a 	st.w	$r26,$r3,120(0x78)
1c0009bc:	29823061 	st.w	$r1,$r3,140(0x8c)
1c0009c0:	29822076 	st.w	$r22,$r3,136(0x88)
1c0009c4:	29821077 	st.w	$r23,$r3,132(0x84)
1c0009c8:	29820078 	st.w	$r24,$r3,128(0x80)
1c0009cc:	2981f079 	st.w	$r25,$r3,124(0x7c)
1c0009d0:	2981d07b 	st.w	$r27,$r3,116(0x74)
1c0009d4:	2981c07c 	st.w	$r28,$r3,112(0x70)
1c0009d8:	2981b07d 	st.w	$r29,$r3,108(0x6c)
1c0009dc:	2981a07e 	st.w	$r30,$r3,104(0x68)
1c0009e0:	2981907f 	st.w	$r31,$r3,100(0x64)
1c0009e4:	1c00101a 	pcaddu12i	$r26,128(0x80)
1c0009e8:	028a035a 	addi.w	$r26,$r26,640(0x280)
1c0009ec:	2980b06c 	st.w	$r12,$r3,44(0x2c)
1c0009f0:	00150005 	move	$r5,$r0
1c0009f4:	03a60006 	ori	$r6,$r0,0x980
1c0009f8:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0009fc:	02a3b084 	addi.w	$r4,$r4,-1812(0x8ec)
1c000a00:	544a0000 	bl	18944(0x4a00) # 1c005400 <memset>
1c000a04:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000a08:	02941084 	addi.w	$r4,$r4,1284(0x504)
1c000a0c:	28800085 	ld.w	$r5,$r4,0
1c000a10:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c000a14:	29801065 	st.w	$r5,$r3,4(0x4)
1c000a18:	640e51a5 	bge	$r13,$r5,3664(0xe50) # 1c001868 <shell15_main+0xeb8>
1c000a1c:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000a20:	0293c1ce 	addi.w	$r14,$r14,1264(0x4f0)
1c000a24:	288001de 	ld.w	$r30,$r14,0
1c000a28:	1c00100f 	pcaddu12i	$r15,128(0x80)
1c000a2c:	02a1f1ef 	addi.w	$r15,$r15,-1924(0x87c)
1c000a30:	288001f1 	ld.w	$r17,$r15,0
1c000a34:	288011f6 	ld.w	$r22,$r15,4(0x4)
1c000a38:	288021f2 	ld.w	$r18,$r15,8(0x8)
1c000a3c:	288031e4 	ld.w	$r4,$r15,12(0xc)
1c000a40:	288041f3 	ld.w	$r19,$r15,16(0x10)
1c000a44:	288051e8 	ld.w	$r8,$r15,20(0x14)
1c000a48:	288061f4 	ld.w	$r20,$r15,24(0x18)
1c000a4c:	288071ea 	ld.w	$r10,$r15,28(0x1c)
1c000a50:	288081e6 	ld.w	$r6,$r15,32(0x20)
1c000a54:	288091e1 	ld.w	$r1,$r15,36(0x24)
1c000a58:	2880a1e7 	ld.w	$r7,$r15,40(0x28)
1c000a5c:	2880b1f8 	ld.w	$r24,$r15,44(0x2c)
1c000a60:	2880c1e9 	ld.w	$r9,$r15,48(0x30)
1c000a64:	2880d1f9 	ld.w	$r25,$r15,52(0x34)
1c000a68:	2880e1eb 	ld.w	$r11,$r15,56(0x38)
1c000a6c:	2880f1fb 	ld.w	$r27,$r15,60(0x3c)
1c000a70:	6400a5be 	bge	$r13,$r30,164(0xa4) # 1c000b14 <shell15_main+0x164>
1c000a74:	2880107d 	ld.w	$r29,$r3,4(0x4)
1c000a78:	02805410 	addi.w	$r16,$r0,21(0x15)
1c000a7c:	02bfac17 	addi.w	$r23,$r0,-21(0xfeb)
1c000a80:	001c4231 	mul.w	$r17,$r17,$r16
1c000a84:	0280ab5c 	addi.w	$r28,$r26,42(0x2a)
1c000a88:	00107b8e 	add.w	$r14,$r28,$r30
1c000a8c:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c000a90:	0280b81c 	addi.w	$r28,$r0,46(0x2e)
1c000a94:	001c5fa5 	mul.w	$r5,$r29,$r23
1c000a98:	02800b57 	addi.w	$r23,$r26,2(0x2)
1c000a9c:	001c4252 	mul.w	$r18,$r18,$r16
1c000aa0:	001c4273 	mul.w	$r19,$r19,$r16
1c000aa4:	001c4294 	mul.w	$r20,$r20,$r16
1c000aa8:	001c40c6 	mul.w	$r6,$r6,$r16
1c000aac:	001c40e7 	mul.w	$r7,$r7,$r16
1c000ab0:	001c4129 	mul.w	$r9,$r9,$r16
1c000ab4:	001c416b 	mul.w	$r11,$r11,$r16
1c000ab8:	02bf5810 	addi.w	$r16,$r0,-42(0xfd6)
1c000abc:	03400000 	andi	$r0,$r0,0x0
1c000ac0:	001142ec 	sub.w	$r12,$r23,$r16
1c000ac4:	001131df 	sub.w	$r31,$r14,$r12
1c000ac8:	03400fef 	andi	$r15,$r31,0x3
1c000acc:	5809bde0 	beq	$r15,$r0,2492(0x9bc) # 1c001488 <shell15_main+0xad8>
1c000ad0:	0280041d 	addi.w	$r29,$r0,1(0x1)
1c000ad4:	580025fd 	beq	$r15,$r29,36(0x24) # 1c000af8 <shell15_main+0x148>
1c000ad8:	0280081f 	addi.w	$r31,$r0,2(0x2)
1c000adc:	580011ff 	beq	$r15,$r31,16(0x10) # 1c000aec <shell15_main+0x13c>
1c000ae0:	2800018f 	ld.b	$r15,$r12,0
1c000ae4:	580beded 	beq	$r15,$r13,3052(0xbec) # 1c0016d0 <shell15_main+0xd20>
1c000ae8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000aec:	2800018f 	ld.b	$r15,$r12,0
1c000af0:	580b59ed 	beq	$r15,$r13,2904(0xb58) # 1c001648 <shell15_main+0xc98>
1c000af4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000af8:	2800019d 	ld.b	$r29,$r12,0
1c000afc:	580ce7ad 	beq	$r29,$r13,3300(0xce4) # 1c0017e0 <shell15_main+0xe30>
1c000b00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000b04:	5c09858e 	bne	$r12,$r14,2436(0x984) # 1c001488 <shell15_main+0xad8>
1c000b08:	02bfae10 	addi.w	$r16,$r16,-21(0xfeb)
1c000b0c:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c000b10:	5fffb205 	bne	$r16,$r5,-80(0x3ffb0) # 1c000ac0 <shell15_main+0x110>
1c000b14:	02bfffd6 	addi.w	$r22,$r30,-1(0xfff)
1c000b18:	2880107e 	ld.w	$r30,$r3,4(0x4)
1c000b1c:	02bff818 	addi.w	$r24,$r0,-2(0xffe)
1c000b20:	02805417 	addi.w	$r23,$r0,21(0x15)
1c000b24:	00117804 	sub.w	$r4,$r0,$r30
1c000b28:	29804064 	st.w	$r4,$r3,16(0x10)
1c000b2c:	29813060 	st.w	$r0,$r3,76(0x4c)
1c000b30:	29812060 	st.w	$r0,$r3,72(0x48)
1c000b34:	29811060 	st.w	$r0,$r3,68(0x44)
1c000b38:	02808c1e 	addi.w	$r30,$r0,35(0x23)
1c000b3c:	001502dc 	move	$r28,$r22
1c000b40:	02800808 	addi.w	$r8,$r0,2(0x2)
1c000b44:	00116001 	sub.w	$r1,$r0,$r24
1c000b48:	640c111c 	bge	$r8,$r28,3088(0xc10) # 1c001758 <shell15_main+0xda8>
1c000b4c:	28801066 	ld.w	$r6,$r3,4(0x4)
1c000b50:	02bfac19 	addi.w	$r25,$r0,-21(0xfeb)
1c000b54:	02bed00a 	addi.w	$r10,$r0,-76(0xfb4)
1c000b58:	001c6712 	mul.w	$r18,$r24,$r25
1c000b5c:	02bffcc7 	addi.w	$r7,$r6,-1(0xfff)
1c000b60:	29800067 	st.w	$r7,$r3,0
1c000b64:	02805407 	addi.w	$r7,$r0,21(0x15)
1c000b68:	0280541b 	addi.w	$r27,$r0,21(0x15)
1c000b6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000b70:	02806354 	addi.w	$r20,$r26,24(0x18)
1c000b74:	0280aaee 	addi.w	$r14,$r23,42(0x2a)
1c000b78:	001160a9 	sub.w	$r9,$r5,$r24
1c000b7c:	02800808 	addi.w	$r8,$r0,2(0x2)
1c000b80:	0280b81d 	addi.w	$r29,$r0,46(0x2e)
1c000b84:	2980306e 	st.w	$r14,$r3,12(0xc)
1c000b88:	0015003f 	move	$r31,$r1
1c000b8c:	001c1c2b 	mul.w	$r11,$r1,$r7
1c000b90:	02805650 	addi.w	$r16,$r18,21(0x15)
1c000b94:	29806070 	st.w	$r16,$r3,24(0x18)
1c000b98:	001c2b11 	mul.w	$r17,$r24,$r10
1c000b9c:	00102f4d 	add.w	$r13,$r26,$r11
1c000ba0:	00105e8a 	add.w	$r10,$r20,$r23
1c000ba4:	2980506d 	st.w	$r13,$r3,20(0x14)
1c000ba8:	001c6f13 	mul.w	$r19,$r24,$r27
1c000bac:	02802236 	addi.w	$r22,$r17,8(0x8)
1c000bb0:	0280071b 	addi.w	$r27,$r24,1(0x1)
1c000bb4:	29802073 	st.w	$r19,$r3,8(0x8)
1c000bb8:	50001800 	b	24(0x18) # 1c000bd0 <shell15_main+0x220>
1c000bbc:	03400000 	andi	$r0,$r0,0x0
1c000bc0:	00150188 	move	$r8,$r12
1c000bc4:	0280054a 	addi.w	$r10,$r10,1(0x1)
1c000bc8:	028012d6 	addi.w	$r22,$r22,4(0x4)
1c000bcc:	640b8d9c 	bge	$r12,$r28,2956(0xb8c) # 1c001758 <shell15_main+0xda8>
1c000bd0:	283ffd4d 	ld.b	$r13,$r10,-1(0xfff)
1c000bd4:	0280050c 	addi.w	$r12,$r8,1(0x1)
1c000bd8:	5fffe9bd 	bne	$r13,$r29,-24(0x3ffe8) # 1c000bc0 <shell15_main+0x210>
1c000bdc:	2800014f 	ld.b	$r15,$r10,0
1c000be0:	5fffe1fe 	bne	$r15,$r30,-32(0x3ffe0) # 1c000bc0 <shell15_main+0x210>
1c000be4:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000be8:	029c0084 	addi.w	$r4,$r4,1792(0x700)
1c000bec:	00105881 	add.w	$r1,$r4,$r22
1c000bf0:	28800030 	ld.w	$r16,$r1,0
1c000bf4:	5fffce00 	bne	$r16,$r0,-52(0x3ffcc) # 1c000bc0 <shell15_main+0x210>
1c000bf8:	02800919 	addi.w	$r25,$r8,2(0x2)
1c000bfc:	2980a079 	st.w	$r25,$r3,40(0x28)
1c000c00:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000c04:	64014b3c 	bge	$r25,$r28,328(0x148) # 1c000d4c <shell15_main+0x39c>
1c000c08:	28000551 	ld.b	$r17,$r10,1(0x1)
1c000c0c:	5c01423e 	bne	$r17,$r30,320(0x140) # 1c000d4c <shell15_main+0x39c>
1c000c10:	00113392 	sub.w	$r18,$r28,$r12
1c000c14:	02bffa53 	addi.w	$r19,$r18,-2(0xffe)
1c000c18:	03401e66 	andi	$r6,$r19,0x7
1c000c1c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000c20:	02bffd54 	addi.w	$r20,$r10,-1(0xfff)
1c000c24:	580098c0 	beq	$r6,$r0,152(0x98) # 1c000cbc <shell15_main+0x30c>
1c000c28:	2800094b 	ld.b	$r11,$r10,2(0x2)
1c000c2c:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c000c30:	5c01197e 	bne	$r11,$r30,280(0x118) # 1c000d48 <shell15_main+0x398>
1c000c34:	580088c5 	beq	$r6,$r5,136(0x88) # 1c000cbc <shell15_main+0x30c>
1c000c38:	580074ce 	beq	$r6,$r14,116(0x74) # 1c000cac <shell15_main+0x2fc>
1c000c3c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c000c40:	58005cc5 	beq	$r6,$r5,92(0x5c) # 1c000c9c <shell15_main+0x2ec>
1c000c44:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c000c48:	580044cf 	beq	$r6,$r15,68(0x44) # 1c000c8c <shell15_main+0x2dc>
1c000c4c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c000c50:	58002cc4 	beq	$r6,$r4,44(0x2c) # 1c000c7c <shell15_main+0x2cc>
1c000c54:	02801801 	addi.w	$r1,$r0,6(0x6)
1c000c58:	580014c1 	beq	$r6,$r1,20(0x14) # 1c000c6c <shell15_main+0x2bc>
1c000c5c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000c60:	00103a99 	add.w	$r25,$r20,$r14
1c000c64:	28000731 	ld.b	$r17,$r25,1(0x1)
1c000c68:	5c00e23e 	bne	$r17,$r30,224(0xe0) # 1c000d48 <shell15_main+0x398>
1c000c6c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000c70:	00103a93 	add.w	$r19,$r20,$r14
1c000c74:	28000666 	ld.b	$r6,$r19,1(0x1)
1c000c78:	5c00d0de 	bne	$r6,$r30,208(0xd0) # 1c000d48 <shell15_main+0x398>
1c000c7c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000c80:	00103a8b 	add.w	$r11,$r20,$r14
1c000c84:	28000565 	ld.b	$r5,$r11,1(0x1)
1c000c88:	5c00c0be 	bne	$r5,$r30,192(0xc0) # 1c000d48 <shell15_main+0x398>
1c000c8c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000c90:	00103a8f 	add.w	$r15,$r20,$r14
1c000c94:	280005e4 	ld.b	$r4,$r15,1(0x1)
1c000c98:	5c00b09e 	bne	$r4,$r30,176(0xb0) # 1c000d48 <shell15_main+0x398>
1c000c9c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000ca0:	00103a81 	add.w	$r1,$r20,$r14
1c000ca4:	28000439 	ld.b	$r25,$r1,1(0x1)
1c000ca8:	5c00a33e 	bne	$r25,$r30,160(0xa0) # 1c000d48 <shell15_main+0x398>
1c000cac:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000cb0:	00103a91 	add.w	$r17,$r20,$r14
1c000cb4:	28000633 	ld.b	$r19,$r17,1(0x1)
1c000cb8:	5c00927e 	bne	$r19,$r30,144(0x90) # 1c000d48 <shell15_main+0x398>
1c000cbc:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000cc0:	00150245 	move	$r5,$r18
1c000cc4:	00103a86 	add.w	$r6,$r20,$r14
1c000cc8:	001501cb 	move	$r11,$r14
1c000ccc:	580081d2 	beq	$r14,$r18,128(0x80) # 1c000d4c <shell15_main+0x39c>
1c000cd0:	280004c5 	ld.b	$r5,$r6,1(0x1)
1c000cd4:	5c0074be 	bne	$r5,$r30,116(0x74) # 1c000d48 <shell15_main+0x398>
1c000cd8:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000cdc:	00103a8f 	add.w	$r15,$r20,$r14
1c000ce0:	280005e4 	ld.b	$r4,$r15,1(0x1)
1c000ce4:	5c00649e 	bne	$r4,$r30,100(0x64) # 1c000d48 <shell15_main+0x398>
1c000ce8:	0280096e 	addi.w	$r14,$r11,2(0x2)
1c000cec:	00103a81 	add.w	$r1,$r20,$r14
1c000cf0:	28000439 	ld.b	$r25,$r1,1(0x1)
1c000cf4:	5c00573e 	bne	$r25,$r30,84(0x54) # 1c000d48 <shell15_main+0x398>
1c000cf8:	02800d6e 	addi.w	$r14,$r11,3(0x3)
1c000cfc:	00103a91 	add.w	$r17,$r20,$r14
1c000d00:	28000633 	ld.b	$r19,$r17,1(0x1)
1c000d04:	5c00467e 	bne	$r19,$r30,68(0x44) # 1c000d48 <shell15_main+0x398>
1c000d08:	0280116e 	addi.w	$r14,$r11,4(0x4)
1c000d0c:	00103a86 	add.w	$r6,$r20,$r14
1c000d10:	280004c5 	ld.b	$r5,$r6,1(0x1)
1c000d14:	5c0034be 	bne	$r5,$r30,52(0x34) # 1c000d48 <shell15_main+0x398>
1c000d18:	0280156e 	addi.w	$r14,$r11,5(0x5)
1c000d1c:	00103a8f 	add.w	$r15,$r20,$r14
1c000d20:	280005e4 	ld.b	$r4,$r15,1(0x1)
1c000d24:	5c00249e 	bne	$r4,$r30,36(0x24) # 1c000d48 <shell15_main+0x398>
1c000d28:	0280196e 	addi.w	$r14,$r11,6(0x6)
1c000d2c:	00103a81 	add.w	$r1,$r20,$r14
1c000d30:	28000439 	ld.b	$r25,$r1,1(0x1)
1c000d34:	5c00173e 	bne	$r25,$r30,20(0x14) # 1c000d48 <shell15_main+0x398>
1c000d38:	02801d6e 	addi.w	$r14,$r11,7(0x7)
1c000d3c:	00103a8b 	add.w	$r11,$r20,$r14
1c000d40:	28000571 	ld.b	$r17,$r11,1(0x1)
1c000d44:	5bff7a3e 	beq	$r17,$r30,-136(0x3ff78) # 1c000cbc <shell15_main+0x30c>
1c000d48:	001501c5 	move	$r5,$r14
1c000d4c:	28800074 	ld.w	$r20,$r3,0
1c000d50:	67fe7134 	bge	$r9,$r20,-400(0x3fe70) # 1c000bc0 <shell15_main+0x210>
1c000d54:	28802072 	ld.w	$r18,$r3,8(0x8)
1c000d58:	28803066 	ld.w	$r6,$r3,12(0xc)
1c000d5c:	0015012e 	move	$r14,$r9
1c000d60:	00104953 	add.w	$r19,$r10,$r18
1c000d64:	00101a6f 	add.w	$r15,$r19,$r6
1c000d68:	280001e4 	ld.b	$r4,$r15,0
1c000d6c:	0015014f 	move	$r15,$r10
1c000d70:	5ffe509e 	bne	$r4,$r30,-432(0x3fe50) # 1c000bc0 <shell15_main+0x210>
1c000d74:	00142401 	nor	$r1,$r0,$r9
1c000d78:	00105039 	add.w	$r25,$r1,$r20
1c000d7c:	03401f2b 	andi	$r11,$r25,0x7
1c000d80:	5800c160 	beq	$r11,$r0,192(0xc0) # 1c000e40 <shell15_main+0x490>
1c000d84:	0280554f 	addi.w	$r15,$r10,21(0x15)
1c000d88:	280055f4 	ld.b	$r20,$r15,21(0x15)
1c000d8c:	00102771 	add.w	$r17,$r27,$r9
1c000d90:	0280052e 	addi.w	$r14,$r9,1(0x1)
1c000d94:	5c013e9e 	bne	$r20,$r30,316(0x13c) # 1c000ed0 <shell15_main+0x520>
1c000d98:	02800411 	addi.w	$r17,$r0,1(0x1)
1c000d9c:	5800a571 	beq	$r11,$r17,164(0xa4) # 1c000e40 <shell15_main+0x490>
1c000da0:	02800812 	addi.w	$r18,$r0,2(0x2)
1c000da4:	58008972 	beq	$r11,$r18,136(0x88) # 1c000e2c <shell15_main+0x47c>
1c000da8:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c000dac:	58006d73 	beq	$r11,$r19,108(0x6c) # 1c000e18 <shell15_main+0x468>
1c000db0:	02801006 	addi.w	$r6,$r0,4(0x4)
1c000db4:	58005166 	beq	$r11,$r6,80(0x50) # 1c000e04 <shell15_main+0x454>
1c000db8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c000dbc:	58003564 	beq	$r11,$r4,52(0x34) # 1c000df0 <shell15_main+0x440>
1c000dc0:	02801801 	addi.w	$r1,$r0,6(0x6)
1c000dc4:	58001961 	beq	$r11,$r1,24(0x18) # 1c000ddc <shell15_main+0x42c>
1c000dc8:	2800a9f9 	ld.b	$r25,$r15,42(0x2a)
1c000dcc:	00103b71 	add.w	$r17,$r27,$r14
1c000dd0:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000dd4:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000dd8:	5c00fb3e 	bne	$r25,$r30,248(0xf8) # 1c000ed0 <shell15_main+0x520>
1c000ddc:	2800a9eb 	ld.b	$r11,$r15,42(0x2a)
1c000de0:	00103b71 	add.w	$r17,$r27,$r14
1c000de4:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000de8:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000dec:	5c00e57e 	bne	$r11,$r30,228(0xe4) # 1c000ed0 <shell15_main+0x520>
1c000df0:	2800a9f4 	ld.b	$r20,$r15,42(0x2a)
1c000df4:	00103b71 	add.w	$r17,$r27,$r14
1c000df8:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000dfc:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000e00:	5c00d29e 	bne	$r20,$r30,208(0xd0) # 1c000ed0 <shell15_main+0x520>
1c000e04:	2800a9f2 	ld.b	$r18,$r15,42(0x2a)
1c000e08:	00103b71 	add.w	$r17,$r27,$r14
1c000e0c:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000e10:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000e14:	5c00be5e 	bne	$r18,$r30,188(0xbc) # 1c000ed0 <shell15_main+0x520>
1c000e18:	2800a9f3 	ld.b	$r19,$r15,42(0x2a)
1c000e1c:	00103b71 	add.w	$r17,$r27,$r14
1c000e20:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000e24:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000e28:	5c00aa7e 	bne	$r19,$r30,168(0xa8) # 1c000ed0 <shell15_main+0x520>
1c000e2c:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000e30:	280055e6 	ld.b	$r6,$r15,21(0x15)
1c000e34:	00103b71 	add.w	$r17,$r27,$r14
1c000e38:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000e3c:	5c0094de 	bne	$r6,$r30,148(0x94) # 1c000ed0 <shell15_main+0x520>
1c000e40:	28800061 	ld.w	$r1,$r3,0
1c000e44:	028005d2 	addi.w	$r18,$r14,1(0x1)
1c000e48:	00103b71 	add.w	$r17,$r27,$r14
1c000e4c:	028009d3 	addi.w	$r19,$r14,2(0x2)
1c000e50:	02800dc4 	addi.w	$r4,$r14,3(0x3)
1c000e54:	64007e41 	bge	$r18,$r1,124(0x7c) # 1c000ed0 <shell15_main+0x520>
1c000e58:	2800a9f4 	ld.b	$r20,$r15,42(0x2a)
1c000e5c:	028011c6 	addi.w	$r6,$r14,4(0x4)
1c000e60:	028015cb 	addi.w	$r11,$r14,5(0x5)
1c000e64:	028019c1 	addi.w	$r1,$r14,6(0x6)
1c000e68:	02801dd9 	addi.w	$r25,$r14,7(0x7)
1c000e6c:	028021ce 	addi.w	$r14,$r14,8(0x8)
1c000e70:	5c00629e 	bne	$r20,$r30,96(0x60) # 1c000ed0 <shell15_main+0x520>
1c000e74:	2800fdf4 	ld.b	$r20,$r15,63(0x3f)
1c000e78:	00104b71 	add.w	$r17,$r27,$r18
1c000e7c:	5c00569e 	bne	$r20,$r30,84(0x54) # 1c000ed0 <shell15_main+0x520>
1c000e80:	280151f2 	ld.b	$r18,$r15,84(0x54)
1c000e84:	00104f71 	add.w	$r17,$r27,$r19
1c000e88:	5c004a5e 	bne	$r18,$r30,72(0x48) # 1c000ed0 <shell15_main+0x520>
1c000e8c:	2801a5f3 	ld.b	$r19,$r15,105(0x69)
1c000e90:	00101371 	add.w	$r17,$r27,$r4
1c000e94:	5c003e7e 	bne	$r19,$r30,60(0x3c) # 1c000ed0 <shell15_main+0x520>
1c000e98:	2801f9e4 	ld.b	$r4,$r15,126(0x7e)
1c000e9c:	00101b71 	add.w	$r17,$r27,$r6
1c000ea0:	5c00309e 	bne	$r4,$r30,48(0x30) # 1c000ed0 <shell15_main+0x520>
1c000ea4:	28024de6 	ld.b	$r6,$r15,147(0x93)
1c000ea8:	00102f71 	add.w	$r17,$r27,$r11
1c000eac:	5c0024de 	bne	$r6,$r30,36(0x24) # 1c000ed0 <shell15_main+0x520>
1c000eb0:	0282a1ef 	addi.w	$r15,$r15,168(0xa8)
1c000eb4:	280001eb 	ld.b	$r11,$r15,0
1c000eb8:	00100771 	add.w	$r17,$r27,$r1
1c000ebc:	5c00157e 	bne	$r11,$r30,20(0x14) # 1c000ed0 <shell15_main+0x520>
1c000ec0:	280055e1 	ld.b	$r1,$r15,21(0x15)
1c000ec4:	00106771 	add.w	$r17,$r27,$r25
1c000ec8:	5bff783e 	beq	$r1,$r30,-136(0x3ff78) # 1c000e40 <shell15_main+0x490>
1c000ecc:	03400000 	andi	$r0,$r0,0x0
1c000ed0:	004084b9 	slli.w	$r25,$r5,0x1
1c000ed4:	0011472e 	sub.w	$r14,$r25,$r17
1c000ed8:	001501c4 	move	$r4,$r14
1c000edc:	67fce40e 	bge	$r0,$r14,-796(0x3fce4) # 1c000bc0 <shell15_main+0x210>
1c000ee0:	02bff414 	addi.w	$r20,$r0,-3(0xffd)
1c000ee4:	001c50b2 	mul.w	$r18,$r5,$r20
1c000ee8:	00408633 	slli.w	$r19,$r17,0x1
1c000eec:	00104a66 	add.w	$r6,$r19,$r18
1c000ef0:	29807066 	st.w	$r6,$r3,28(0x1c)
1c000ef4:	67fccc06 	bge	$r0,$r6,-820(0x3fccc) # 1c000bc0 <shell15_main+0x210>
1c000ef8:	0010150f 	add.w	$r15,$r8,$r5
1c000efc:	028005eb 	addi.w	$r11,$r15,1(0x1)
1c000f00:	2980e06f 	st.w	$r15,$r3,56(0x38)
1c000f04:	2980c06b 	st.w	$r11,$r3,48(0x30)
1c000f08:	600d1568 	blt	$r11,$r8,3348(0xd14) # 1c001c1c <shell15_main+0x126c>
1c000f0c:	283fa959 	ld.b	$r25,$r10,-22(0xfea)
1c000f10:	5bfcb33e 	beq	$r25,$r30,-848(0x3fcb0) # 1c000bc0 <shell15_main+0x210>
1c000f14:	00116231 	sub.w	$r17,$r17,$r24
1c000f18:	001c1e34 	mul.w	$r20,$r17,$r7
1c000f1c:	29810071 	st.w	$r17,$r3,64(0x40)
1c000f20:	0010534e 	add.w	$r14,$r26,$r20
1c000f24:	001021d2 	add.w	$r18,$r14,$r8
1c000f28:	28000253 	ld.b	$r19,$r18,0
1c000f2c:	5bfc967e 	beq	$r19,$r30,-876(0x3fc94) # 1c000bc0 <shell15_main+0x210>
1c000f30:	2880e061 	ld.w	$r1,$r3,56(0x38)
1c000f34:	1c00100f 	pcaddu12i	$r15,128(0x80)
1c000f38:	02b4c1ef 	addi.w	$r15,$r15,-720(0xd30)
1c000f3c:	028005eb 	addi.w	$r11,$r15,1(0x1)
1c000f40:	00105106 	add.w	$r6,$r8,$r20
1c000f44:	00100579 	add.w	$r25,$r11,$r1
1c000f48:	00101b4e 	add.w	$r14,$r26,$r6
1c000f4c:	00105334 	add.w	$r20,$r25,$r20
1c000f50:	02bfac12 	addi.w	$r18,$r0,-21(0xfeb)
1c000f54:	001c4a26 	mul.w	$r6,$r17,$r18
1c000f58:	00113a91 	sub.w	$r17,$r20,$r14
1c000f5c:	03401e33 	andi	$r19,$r17,0x7
1c000f60:	5800fa60 	beq	$r19,$r0,248(0xf8) # 1c001058 <shell15_main+0x6a8>
1c000f64:	00105dcf 	add.w	$r15,$r14,$r23
1c000f68:	001019eb 	add.w	$r11,$r15,$r6
1c000f6c:	28000561 	ld.b	$r1,$r11,1(0x1)
1c000f70:	5bfc503e 	beq	$r1,$r30,-944(0x3fc50) # 1c000bc0 <shell15_main+0x210>
1c000f74:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000f78:	280001d9 	ld.b	$r25,$r14,0
1c000f7c:	5bfc473e 	beq	$r25,$r30,-956(0x3fc44) # 1c000bc0 <shell15_main+0x210>
1c000f80:	02800412 	addi.w	$r18,$r0,1(0x1)
1c000f84:	5800d672 	beq	$r19,$r18,212(0xd4) # 1c001058 <shell15_main+0x6a8>
1c000f88:	02800811 	addi.w	$r17,$r0,2(0x2)
1c000f8c:	5800b271 	beq	$r19,$r17,176(0xb0) # 1c00103c <shell15_main+0x68c>
1c000f90:	02800c0f 	addi.w	$r15,$r0,3(0x3)
1c000f94:	58008e6f 	beq	$r19,$r15,140(0x8c) # 1c001020 <shell15_main+0x670>
1c000f98:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c000f9c:	58006a6b 	beq	$r19,$r11,104(0x68) # 1c001004 <shell15_main+0x654>
1c000fa0:	02801401 	addi.w	$r1,$r0,5(0x5)
1c000fa4:	58004661 	beq	$r19,$r1,68(0x44) # 1c000fe8 <shell15_main+0x638>
1c000fa8:	02801819 	addi.w	$r25,$r0,6(0x6)
1c000fac:	58002279 	beq	$r19,$r25,32(0x20) # 1c000fcc <shell15_main+0x61c>
1c000fb0:	00105dd3 	add.w	$r19,$r14,$r23
1c000fb4:	00101a72 	add.w	$r18,$r19,$r6
1c000fb8:	28000651 	ld.b	$r17,$r18,1(0x1)
1c000fbc:	5bfc063e 	beq	$r17,$r30,-1020(0x3fc04) # 1c000bc0 <shell15_main+0x210>
1c000fc0:	280005cf 	ld.b	$r15,$r14,1(0x1)
1c000fc4:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000fc8:	5bfbf9fe 	beq	$r15,$r30,-1032(0x3fbf8) # 1c000bc0 <shell15_main+0x210>
1c000fcc:	00105dcb 	add.w	$r11,$r14,$r23
1c000fd0:	00101961 	add.w	$r1,$r11,$r6
1c000fd4:	28000439 	ld.b	$r25,$r1,1(0x1)
1c000fd8:	5bfbeb3e 	beq	$r25,$r30,-1048(0x3fbe8) # 1c000bc0 <shell15_main+0x210>
1c000fdc:	280005d3 	ld.b	$r19,$r14,1(0x1)
1c000fe0:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000fe4:	5bfbde7e 	beq	$r19,$r30,-1060(0x3fbdc) # 1c000bc0 <shell15_main+0x210>
1c000fe8:	00105dd2 	add.w	$r18,$r14,$r23
1c000fec:	00101a51 	add.w	$r17,$r18,$r6
1c000ff0:	2800062f 	ld.b	$r15,$r17,1(0x1)
1c000ff4:	5bfbcdfe 	beq	$r15,$r30,-1076(0x3fbcc) # 1c000bc0 <shell15_main+0x210>
1c000ff8:	280005cb 	ld.b	$r11,$r14,1(0x1)
1c000ffc:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c001000:	5bfbc17e 	beq	$r11,$r30,-1088(0x3fbc0) # 1c000bc0 <shell15_main+0x210>
1c001004:	00105dc1 	add.w	$r1,$r14,$r23
1c001008:	00101839 	add.w	$r25,$r1,$r6
1c00100c:	28000733 	ld.b	$r19,$r25,1(0x1)
1c001010:	5bfbb27e 	beq	$r19,$r30,-1104(0x3fbb0) # 1c000bc0 <shell15_main+0x210>
1c001014:	280005d2 	ld.b	$r18,$r14,1(0x1)
1c001018:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c00101c:	5bfba65e 	beq	$r18,$r30,-1116(0x3fba4) # 1c000bc0 <shell15_main+0x210>
1c001020:	00105dd1 	add.w	$r17,$r14,$r23
1c001024:	00101a2f 	add.w	$r15,$r17,$r6
1c001028:	280005eb 	ld.b	$r11,$r15,1(0x1)
1c00102c:	5bfb957e 	beq	$r11,$r30,-1132(0x3fb94) # 1c000bc0 <shell15_main+0x210>
1c001030:	280005c1 	ld.b	$r1,$r14,1(0x1)
1c001034:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c001038:	5bfb883e 	beq	$r1,$r30,-1144(0x3fb88) # 1c000bc0 <shell15_main+0x210>
1c00103c:	00105dd9 	add.w	$r25,$r14,$r23
1c001040:	00101b33 	add.w	$r19,$r25,$r6
1c001044:	28000672 	ld.b	$r18,$r19,1(0x1)
1c001048:	5bfb7a5e 	beq	$r18,$r30,-1160(0x3fb78) # 1c000bc0 <shell15_main+0x210>
1c00104c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c001050:	280001d1 	ld.b	$r17,$r14,0
1c001054:	5bfb6e3e 	beq	$r17,$r30,-1172(0x3fb6c) # 1c000bc0 <shell15_main+0x210>
1c001058:	5800e9d4 	beq	$r14,$r20,232(0xe8) # 1c001140 <shell15_main+0x790>
1c00105c:	00105dd1 	add.w	$r17,$r14,$r23
1c001060:	00101a32 	add.w	$r18,$r17,$r6
1c001064:	28000659 	ld.b	$r25,$r18,1(0x1)
1c001068:	5bfb5b3e 	beq	$r25,$r30,-1192(0x3fb58) # 1c000bc0 <shell15_main+0x210>
1c00106c:	280005cb 	ld.b	$r11,$r14,1(0x1)
1c001070:	028005c1 	addi.w	$r1,$r14,1(0x1)
1c001074:	5bfb4d7e 	beq	$r11,$r30,-1204(0x3fb4c) # 1c000bc0 <shell15_main+0x210>
1c001078:	00105c2f 	add.w	$r15,$r1,$r23
1c00107c:	001019f3 	add.w	$r19,$r15,$r6
1c001080:	28000671 	ld.b	$r17,$r19,1(0x1)
1c001084:	5bfb3e3e 	beq	$r17,$r30,-1220(0x3fb3c) # 1c000bc0 <shell15_main+0x210>
1c001088:	280009d9 	ld.b	$r25,$r14,2(0x2)
1c00108c:	028009d2 	addi.w	$r18,$r14,2(0x2)
1c001090:	5bfb333e 	beq	$r25,$r30,-1232(0x3fb30) # 1c000bc0 <shell15_main+0x210>
1c001094:	00105e4b 	add.w	$r11,$r18,$r23
1c001098:	0010196f 	add.w	$r15,$r11,$r6
1c00109c:	280005f3 	ld.b	$r19,$r15,1(0x1)
1c0010a0:	5bfb227e 	beq	$r19,$r30,-1248(0x3fb20) # 1c000bc0 <shell15_main+0x210>
1c0010a4:	28000dd1 	ld.b	$r17,$r14,3(0x3)
1c0010a8:	02800dd9 	addi.w	$r25,$r14,3(0x3)
1c0010ac:	5bfb163e 	beq	$r17,$r30,-1260(0x3fb14) # 1c000bc0 <shell15_main+0x210>
1c0010b0:	00105f32 	add.w	$r18,$r25,$r23
1c0010b4:	00101a4b 	add.w	$r11,$r18,$r6
1c0010b8:	2800056f 	ld.b	$r15,$r11,1(0x1)
1c0010bc:	5bfb05fe 	beq	$r15,$r30,-1276(0x3fb04) # 1c000bc0 <shell15_main+0x210>
1c0010c0:	280011d3 	ld.b	$r19,$r14,4(0x4)
1c0010c4:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0010c8:	5bfafa7e 	beq	$r19,$r30,-1288(0x3faf8) # 1c000bc0 <shell15_main+0x210>
1c0010cc:	00105dd1 	add.w	$r17,$r14,$r23
1c0010d0:	00101a39 	add.w	$r25,$r17,$r6
1c0010d4:	28000732 	ld.b	$r18,$r25,1(0x1)
1c0010d8:	5bfaea5e 	beq	$r18,$r30,-1304(0x3fae8) # 1c000bc0 <shell15_main+0x210>
1c0010dc:	2800102b 	ld.b	$r11,$r1,4(0x4)
1c0010e0:	0280102f 	addi.w	$r15,$r1,4(0x4)
1c0010e4:	5bfadd7e 	beq	$r11,$r30,-1316(0x3fadc) # 1c000bc0 <shell15_main+0x210>
1c0010e8:	00105df3 	add.w	$r19,$r15,$r23
1c0010ec:	00101a6e 	add.w	$r14,$r19,$r6
1c0010f0:	280005d1 	ld.b	$r17,$r14,1(0x1)
1c0010f4:	5bface3e 	beq	$r17,$r30,-1332(0x3facc) # 1c000bc0 <shell15_main+0x210>
1c0010f8:	28001439 	ld.b	$r25,$r1,5(0x5)
1c0010fc:	02801432 	addi.w	$r18,$r1,5(0x5)
1c001100:	5bfac33e 	beq	$r25,$r30,-1344(0x3fac0) # 1c000bc0 <shell15_main+0x210>
1c001104:	00105e4b 	add.w	$r11,$r18,$r23
1c001108:	0010196f 	add.w	$r15,$r11,$r6
1c00110c:	280005f3 	ld.b	$r19,$r15,1(0x1)
1c001110:	5bfab27e 	beq	$r19,$r30,-1360(0x3fab0) # 1c000bc0 <shell15_main+0x210>
1c001114:	28001831 	ld.b	$r17,$r1,6(0x6)
1c001118:	0280182e 	addi.w	$r14,$r1,6(0x6)
1c00111c:	5bfaa63e 	beq	$r17,$r30,-1372(0x3faa4) # 1c000bc0 <shell15_main+0x210>
1c001120:	00105dd9 	add.w	$r25,$r14,$r23
1c001124:	00101b32 	add.w	$r18,$r25,$r6
1c001128:	2800064b 	ld.b	$r11,$r18,1(0x1)
1c00112c:	5bfa957e 	beq	$r11,$r30,-1388(0x3fa94) # 1c000bc0 <shell15_main+0x210>
1c001130:	28001c2f 	ld.b	$r15,$r1,7(0x7)
1c001134:	02801c2e 	addi.w	$r14,$r1,7(0x7)
1c001138:	5bfa89fe 	beq	$r15,$r30,-1400(0x3fa88) # 1c000bc0 <shell15_main+0x210>
1c00113c:	5fff21d4 	bne	$r14,$r20,-224(0x3ff20) # 1c00105c <shell15_main+0x6ac>
1c001140:	28810074 	ld.w	$r20,$r3,64(0x40)
1c001144:	640227f4 	bge	$r31,$r20,548(0x224) # 1c001368 <shell15_main+0x9b8>
1c001148:	2880506e 	ld.w	$r14,$r3,20(0x14)
1c00114c:	2880c066 	ld.w	$r6,$r3,48(0x30)
1c001150:	001019cf 	add.w	$r15,$r14,$r6
1c001154:	280001eb 	ld.b	$r11,$r15,0
1c001158:	5bfa697e 	beq	$r11,$r30,-1432(0x3fa68) # 1c000bc0 <shell15_main+0x210>
1c00115c:	001c1e81 	mul.w	$r1,$r20,$r7
1c001160:	28806079 	ld.w	$r25,$r3,24(0x18)
1c001164:	00101b51 	add.w	$r17,$r26,$r6
1c001168:	1479e792 	lu12i.w	$r18,249660(0x3cf3c)
1c00116c:	00101b33 	add.w	$r19,$r25,$r6
1c001170:	00104f4e 	add.w	$r14,$r26,$r19
1c001174:	03bcf654 	ori	$r20,$r18,0xf3d
1c001178:	00104426 	add.w	$r6,$r1,$r17
1c00117c:	001138cf 	sub.w	$r15,$r6,$r14
1c001180:	001c51eb 	mul.w	$r11,$r15,$r20
1c001184:	03401d61 	andi	$r1,$r11,0x7
1c001188:	5800f420 	beq	$r1,$r0,244(0xf4) # 1c00127c <shell15_main+0x8cc>
1c00118c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001190:	001165d3 	sub.w	$r19,$r14,$r25
1c001194:	00102271 	add.w	$r17,$r19,$r8
1c001198:	28000232 	ld.b	$r18,$r17,0
1c00119c:	5bfa265e 	beq	$r18,$r30,-1500(0x3fa24) # 1c000bc0 <shell15_main+0x210>
1c0011a0:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c0011a4:	283fadd4 	ld.b	$r20,$r14,-21(0xfeb)
1c0011a8:	5bfa1a9e 	beq	$r20,$r30,-1512(0x3fa18) # 1c000bc0 <shell15_main+0x210>
1c0011ac:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c0011b0:	580a782f 	beq	$r1,$r15,2680(0xa78) # 1c001c28 <shell15_main+0x1278>
1c0011b4:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c0011b8:	5800a42b 	beq	$r1,$r11,164(0xa4) # 1c00125c <shell15_main+0x8ac>
1c0011bc:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c0011c0:	58007c33 	beq	$r1,$r19,124(0x7c) # 1c00123c <shell15_main+0x88c>
1c0011c4:	02801011 	addi.w	$r17,$r0,4(0x4)
1c0011c8:	58005431 	beq	$r1,$r17,84(0x54) # 1c00121c <shell15_main+0x86c>
1c0011cc:	02801412 	addi.w	$r18,$r0,5(0x5)
1c0011d0:	58002c32 	beq	$r1,$r18,44(0x2c) # 1c0011fc <shell15_main+0x84c>
1c0011d4:	02801814 	addi.w	$r20,$r0,6(0x6)
1c0011d8:	5c06ec34 	bne	$r1,$r20,1772(0x6ec) # 1c0018c4 <shell15_main+0xf14>
1c0011dc:	2880c073 	ld.w	$r19,$r3,48(0x30)
1c0011e0:	00114dd1 	sub.w	$r17,$r14,$r19
1c0011e4:	00102232 	add.w	$r18,$r17,$r8
1c0011e8:	28000254 	ld.b	$r20,$r18,0
1c0011ec:	5bf9d69e 	beq	$r20,$r30,-1580(0x3f9d4) # 1c000bc0 <shell15_main+0x210>
1c0011f0:	280001c1 	ld.b	$r1,$r14,0
1c0011f4:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c0011f8:	5bf9c83e 	beq	$r1,$r30,-1592(0x3f9c8) # 1c000bc0 <shell15_main+0x210>
1c0011fc:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001200:	001165cf 	sub.w	$r15,$r14,$r25
1c001204:	001021eb 	add.w	$r11,$r15,$r8
1c001208:	28000173 	ld.b	$r19,$r11,0
1c00120c:	5bf9b67e 	beq	$r19,$r30,-1612(0x3f9b4) # 1c000bc0 <shell15_main+0x210>
1c001210:	280001d1 	ld.b	$r17,$r14,0
1c001214:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c001218:	5bf9aa3e 	beq	$r17,$r30,-1624(0x3f9a8) # 1c000bc0 <shell15_main+0x210>
1c00121c:	2880c072 	ld.w	$r18,$r3,48(0x30)
1c001220:	001149d4 	sub.w	$r20,$r14,$r18
1c001224:	00102281 	add.w	$r1,$r20,$r8
1c001228:	28000039 	ld.b	$r25,$r1,0
1c00122c:	5bf9973e 	beq	$r25,$r30,-1644(0x3f994) # 1c000bc0 <shell15_main+0x210>
1c001230:	280001cf 	ld.b	$r15,$r14,0
1c001234:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c001238:	5bf989fe 	beq	$r15,$r30,-1656(0x3f988) # 1c000bc0 <shell15_main+0x210>
1c00123c:	2880c06b 	ld.w	$r11,$r3,48(0x30)
1c001240:	00112dd3 	sub.w	$r19,$r14,$r11
1c001244:	00102271 	add.w	$r17,$r19,$r8
1c001248:	28000232 	ld.b	$r18,$r17,0
1c00124c:	5bf9765e 	beq	$r18,$r30,-1676(0x3f974) # 1c000bc0 <shell15_main+0x210>
1c001250:	280001d4 	ld.b	$r20,$r14,0
1c001254:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c001258:	5bf96a9e 	beq	$r20,$r30,-1688(0x3f968) # 1c000bc0 <shell15_main+0x210>
1c00125c:	2880c061 	ld.w	$r1,$r3,48(0x30)
1c001260:	001105d9 	sub.w	$r25,$r14,$r1
1c001264:	0010232f 	add.w	$r15,$r25,$r8
1c001268:	280001eb 	ld.b	$r11,$r15,0
1c00126c:	5bf9557e 	beq	$r11,$r30,-1708(0x3f954) # 1c000bc0 <shell15_main+0x210>
1c001270:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c001274:	283fadd3 	ld.b	$r19,$r14,-21(0xfeb)
1c001278:	5bf94a7e 	beq	$r19,$r30,-1720(0x3f948) # 1c000bc0 <shell15_main+0x210>
1c00127c:	2880c071 	ld.w	$r17,$r3,48(0x30)
1c001280:	5800e9c6 	beq	$r14,$r6,232(0xe8) # 1c001368 <shell15_main+0x9b8>
1c001284:	001145cb 	sub.w	$r11,$r14,$r17
1c001288:	00102161 	add.w	$r1,$r11,$r8
1c00128c:	2800002f 	ld.b	$r15,$r1,0
1c001290:	5bf931fe 	beq	$r15,$r30,-1744(0x3f930) # 1c000bc0 <shell15_main+0x210>
1c001294:	028055d3 	addi.w	$r19,$r14,21(0x15)
1c001298:	283fae74 	ld.b	$r20,$r19,-21(0xfeb)
1c00129c:	5bf9269e 	beq	$r20,$r30,-1756(0x3f924) # 1c000bc0 <shell15_main+0x210>
1c0012a0:	00114672 	sub.w	$r18,$r19,$r17
1c0012a4:	00102259 	add.w	$r25,$r18,$r8
1c0012a8:	2800032b 	ld.b	$r11,$r25,0
1c0012ac:	5bf9157e 	beq	$r11,$r30,-1772(0x3f914) # 1c000bc0 <shell15_main+0x210>
1c0012b0:	280055cf 	ld.b	$r15,$r14,21(0x15)
1c0012b4:	0280a9c1 	addi.w	$r1,$r14,42(0x2a)
1c0012b8:	5bf909fe 	beq	$r15,$r30,-1784(0x3f908) # 1c000bc0 <shell15_main+0x210>
1c0012bc:	00114434 	sub.w	$r20,$r1,$r17
1c0012c0:	00102292 	add.w	$r18,$r20,$r8
1c0012c4:	28000259 	ld.b	$r25,$r18,0
1c0012c8:	5bf8fb3e 	beq	$r25,$r30,-1800(0x3f8f8) # 1c000bc0 <shell15_main+0x210>
1c0012cc:	2800a9c1 	ld.b	$r1,$r14,42(0x2a)
1c0012d0:	0280fdcb 	addi.w	$r11,$r14,63(0x3f)
1c0012d4:	5bf8ec3e 	beq	$r1,$r30,-1812(0x3f8ec) # 1c000bc0 <shell15_main+0x210>
1c0012d8:	0011456f 	sub.w	$r15,$r11,$r17
1c0012dc:	001021f4 	add.w	$r20,$r15,$r8
1c0012e0:	28000292 	ld.b	$r18,$r20,0
1c0012e4:	5bf8de5e 	beq	$r18,$r30,-1828(0x3f8dc) # 1c000bc0 <shell15_main+0x210>
1c0012e8:	2800fdd9 	ld.b	$r25,$r14,63(0x3f)
1c0012ec:	028151ce 	addi.w	$r14,$r14,84(0x54)
1c0012f0:	5bf8d33e 	beq	$r25,$r30,-1840(0x3f8d0) # 1c000bc0 <shell15_main+0x210>
1c0012f4:	001145cb 	sub.w	$r11,$r14,$r17
1c0012f8:	00102161 	add.w	$r1,$r11,$r8
1c0012fc:	2800002f 	ld.b	$r15,$r1,0
1c001300:	5bf8c1fe 	beq	$r15,$r30,-1856(0x3f8c0) # 1c000bc0 <shell15_main+0x210>
1c001304:	2800fe72 	ld.b	$r18,$r19,63(0x3f)
1c001308:	02815274 	addi.w	$r20,$r19,84(0x54)
1c00130c:	5bf8b65e 	beq	$r18,$r30,-1868(0x3f8b4) # 1c000bc0 <shell15_main+0x210>
1c001310:	00114699 	sub.w	$r25,$r20,$r17
1c001314:	0010232e 	add.w	$r14,$r25,$r8
1c001318:	280001cb 	ld.b	$r11,$r14,0
1c00131c:	5bf8a57e 	beq	$r11,$r30,-1884(0x3f8a4) # 1c000bc0 <shell15_main+0x210>
1c001320:	2801526f 	ld.b	$r15,$r19,84(0x54)
1c001324:	0281a661 	addi.w	$r1,$r19,105(0x69)
1c001328:	5bf899fe 	beq	$r15,$r30,-1896(0x3f898) # 1c000bc0 <shell15_main+0x210>
1c00132c:	00114434 	sub.w	$r20,$r1,$r17
1c001330:	00102292 	add.w	$r18,$r20,$r8
1c001334:	28000259 	ld.b	$r25,$r18,0
1c001338:	5bf88b3e 	beq	$r25,$r30,-1912(0x3f888) # 1c000bc0 <shell15_main+0x210>
1c00133c:	2801a66b 	ld.b	$r11,$r19,105(0x69)
1c001340:	0281fa6e 	addi.w	$r14,$r19,126(0x7e)
1c001344:	5bf87d7e 	beq	$r11,$r30,-1924(0x3f87c) # 1c000bc0 <shell15_main+0x210>
1c001348:	001145c1 	sub.w	$r1,$r14,$r17
1c00134c:	0010202f 	add.w	$r15,$r1,$r8
1c001350:	280001f4 	ld.b	$r20,$r15,0
1c001354:	5bf86e9e 	beq	$r20,$r30,-1940(0x3f86c) # 1c000bc0 <shell15_main+0x210>
1c001358:	02824e6e 	addi.w	$r14,$r19,147(0x93)
1c00135c:	283fadd3 	ld.b	$r19,$r14,-21(0xfeb)
1c001360:	5bf8627e 	beq	$r19,$r30,-1952(0x3f860) # 1c000bc0 <shell15_main+0x210>
1c001364:	5fff21c6 	bne	$r14,$r6,-224(0x3ff20) # 1c001284 <shell15_main+0x8d4>
1c001368:	28805072 	ld.w	$r18,$r3,20(0x14)
1c00136c:	00102086 	add.w	$r6,$r4,$r8
1c001370:	028004d4 	addi.w	$r20,$r6,1(0x1)
1c001374:	00105241 	add.w	$r1,$r18,$r20
1c001378:	28000039 	ld.b	$r25,$r1,0
1c00137c:	29814079 	st.w	$r25,$r3,80(0x50)
1c001380:	5ff8433e 	bne	$r25,$r30,-1984(0x3f840) # 1c000bc0 <shell15_main+0x210>
1c001384:	28807073 	ld.w	$r19,$r3,28(0x1c)
1c001388:	0011608b 	sub.w	$r11,$r4,$r24
1c00138c:	00104d71 	add.w	$r17,$r11,$r19
1c001390:	001c1e2e 	mul.w	$r14,$r17,$r7
1c001394:	00103b46 	add.w	$r6,$r26,$r14
1c001398:	001050d2 	add.w	$r18,$r6,$r20
1c00139c:	28000241 	ld.b	$r1,$r18,0
1c0013a0:	5805443e 	beq	$r1,$r30,1348(0x544) # 1c0018e4 <shell15_main+0xf34>
1c0013a4:	5ff81c3d 	bne	$r1,$r29,-2020(0x3f81c) # 1c000bc0 <shell15_main+0x210>
1c0013a8:	00104c8b 	add.w	$r11,$r4,$r19
1c0013ac:	00408571 	slli.w	$r17,$r11,0x1
1c0013b0:	0011622f 	sub.w	$r15,$r17,$r24
1c0013b4:	001c1df3 	mul.w	$r19,$r15,$r7
1c0013b8:	00104f4e 	add.w	$r14,$r26,$r19
1c0013bc:	001051d4 	add.w	$r20,$r14,$r20
1c0013c0:	28000286 	ld.b	$r6,$r20,0
1c0013c4:	5ff7fcde 	bne	$r6,$r30,-2052(0x3f7fc) # 1c000bc0 <shell15_main+0x210>
1c0013c8:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c0013cc:	02800801 	addi.w	$r1,$r0,2(0x2)
1c0013d0:	29815072 	st.w	$r18,$r3,84(0x54)
1c0013d4:	50054000 	b	1344(0x540) # 1c001914 <shell15_main+0xf64>
1c0013d8:	0010458f 	add.w	$r15,$r12,$r17
1c0013dc:	001059fd 	add.w	$r29,$r15,$r22
1c0013e0:	280003bf 	ld.b	$r31,$r29,0
1c0013e4:	58007bed 	beq	$r31,$r13,120(0x78) # 1c00145c <shell15_main+0xaac>
1c0013e8:	0010498f 	add.w	$r15,$r12,$r18
1c0013ec:	001011fd 	add.w	$r29,$r15,$r4
1c0013f0:	280003bf 	ld.b	$r31,$r29,0
1c0013f4:	58006bed 	beq	$r31,$r13,104(0x68) # 1c00145c <shell15_main+0xaac>
1c0013f8:	00104d8f 	add.w	$r15,$r12,$r19
1c0013fc:	001021fd 	add.w	$r29,$r15,$r8
1c001400:	280003bf 	ld.b	$r31,$r29,0
1c001404:	58005bed 	beq	$r31,$r13,88(0x58) # 1c00145c <shell15_main+0xaac>
1c001408:	0010518f 	add.w	$r15,$r12,$r20
1c00140c:	001029fd 	add.w	$r29,$r15,$r10
1c001410:	280003bf 	ld.b	$r31,$r29,0
1c001414:	58004bed 	beq	$r31,$r13,72(0x48) # 1c00145c <shell15_main+0xaac>
1c001418:	0010198f 	add.w	$r15,$r12,$r6
1c00141c:	001005fd 	add.w	$r29,$r15,$r1
1c001420:	280003bf 	ld.b	$r31,$r29,0
1c001424:	58003bed 	beq	$r31,$r13,56(0x38) # 1c00145c <shell15_main+0xaac>
1c001428:	00101d8f 	add.w	$r15,$r12,$r7
1c00142c:	001061fd 	add.w	$r29,$r15,$r24
1c001430:	280003bf 	ld.b	$r31,$r29,0
1c001434:	58002bed 	beq	$r31,$r13,40(0x28) # 1c00145c <shell15_main+0xaac>
1c001438:	0010258f 	add.w	$r15,$r12,$r9
1c00143c:	001065fd 	add.w	$r29,$r15,$r25
1c001440:	280003bf 	ld.b	$r31,$r29,0
1c001444:	58001bed 	beq	$r31,$r13,24(0x18) # 1c00145c <shell15_main+0xaac>
1c001448:	00102d8f 	add.w	$r15,$r12,$r11
1c00144c:	00106dfd 	add.w	$r29,$r15,$r27
1c001450:	280003bf 	ld.b	$r31,$r29,0
1c001454:	58000bed 	beq	$r31,$r13,8(0x8) # 1c00145c <shell15_main+0xaac>
1c001458:	2900019c 	st.b	$r28,$r12,0
1c00145c:	2800058f 	ld.b	$r15,$r12,1(0x1)
1c001460:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001464:	580039ed 	beq	$r15,$r13,56(0x38) # 1c00149c <shell15_main+0xaec>
1c001468:	2800059d 	ld.b	$r29,$r12,1(0x1)
1c00146c:	0280058f 	addi.w	$r15,$r12,1(0x1)
1c001470:	5800c3ad 	beq	$r29,$r13,192(0xc0) # 1c001530 <shell15_main+0xb80>
1c001474:	2800099d 	ld.b	$r29,$r12,2(0x2)
1c001478:	0280098f 	addi.w	$r15,$r12,2(0x2)
1c00147c:	580147ad 	beq	$r29,$r13,324(0x144) # 1c0015c0 <shell15_main+0xc10>
1c001480:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c001484:	5bf6858e 	beq	$r12,$r14,-2428(0x3f684) # 1c000b08 <shell15_main+0x158>
1c001488:	2800019f 	ld.b	$r31,$r12,0
1c00148c:	5bff4fed 	beq	$r31,$r13,-180(0x3ff4c) # 1c0013d8 <shell15_main+0xa28>
1c001490:	2800058f 	ld.b	$r15,$r12,1(0x1)
1c001494:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001498:	5fffd1ed 	bne	$r15,$r13,-48(0x3ffd0) # 1c001468 <shell15_main+0xab8>
1c00149c:	0010459d 	add.w	$r29,$r12,$r17
1c0014a0:	00105bbf 	add.w	$r31,$r29,$r22
1c0014a4:	280003ef 	ld.b	$r15,$r31,0
1c0014a8:	5bffc1ed 	beq	$r15,$r13,-64(0x3ffc0) # 1c001468 <shell15_main+0xab8>
1c0014ac:	0010499d 	add.w	$r29,$r12,$r18
1c0014b0:	001013bf 	add.w	$r31,$r29,$r4
1c0014b4:	280003ef 	ld.b	$r15,$r31,0
1c0014b8:	5bffb1ed 	beq	$r15,$r13,-80(0x3ffb0) # 1c001468 <shell15_main+0xab8>
1c0014bc:	00104d9d 	add.w	$r29,$r12,$r19
1c0014c0:	001023bf 	add.w	$r31,$r29,$r8
1c0014c4:	280003ef 	ld.b	$r15,$r31,0
1c0014c8:	5bffa1ed 	beq	$r15,$r13,-96(0x3ffa0) # 1c001468 <shell15_main+0xab8>
1c0014cc:	0010519d 	add.w	$r29,$r12,$r20
1c0014d0:	00102bbf 	add.w	$r31,$r29,$r10
1c0014d4:	280003ef 	ld.b	$r15,$r31,0
1c0014d8:	5bff91ed 	beq	$r15,$r13,-112(0x3ff90) # 1c001468 <shell15_main+0xab8>
1c0014dc:	0010199d 	add.w	$r29,$r12,$r6
1c0014e0:	001007bf 	add.w	$r31,$r29,$r1
1c0014e4:	280003ef 	ld.b	$r15,$r31,0
1c0014e8:	5bff81ed 	beq	$r15,$r13,-128(0x3ff80) # 1c001468 <shell15_main+0xab8>
1c0014ec:	00101d9d 	add.w	$r29,$r12,$r7
1c0014f0:	001063bf 	add.w	$r31,$r29,$r24
1c0014f4:	280003ef 	ld.b	$r15,$r31,0
1c0014f8:	5bff71ed 	beq	$r15,$r13,-144(0x3ff70) # 1c001468 <shell15_main+0xab8>
1c0014fc:	0010259d 	add.w	$r29,$r12,$r9
1c001500:	001067bf 	add.w	$r31,$r29,$r25
1c001504:	280003ef 	ld.b	$r15,$r31,0
1c001508:	5bff61ed 	beq	$r15,$r13,-160(0x3ff60) # 1c001468 <shell15_main+0xab8>
1c00150c:	00102d9d 	add.w	$r29,$r12,$r11
1c001510:	00106fbf 	add.w	$r31,$r29,$r27
1c001514:	280003ef 	ld.b	$r15,$r31,0
1c001518:	5bff51ed 	beq	$r15,$r13,-176(0x3ff50) # 1c001468 <shell15_main+0xab8>
1c00151c:	2800059d 	ld.b	$r29,$r12,1(0x1)
1c001520:	2900019c 	st.b	$r28,$r12,0
1c001524:	0280058f 	addi.w	$r15,$r12,1(0x1)
1c001528:	5fff4fad 	bne	$r29,$r13,-180(0x3ff4c) # 1c001474 <shell15_main+0xac4>
1c00152c:	03400000 	andi	$r0,$r0,0x0
1c001530:	001045ff 	add.w	$r31,$r15,$r17
1c001534:	00105bfd 	add.w	$r29,$r31,$r22
1c001538:	280003bf 	ld.b	$r31,$r29,0
1c00153c:	5bff3bed 	beq	$r31,$r13,-200(0x3ff38) # 1c001474 <shell15_main+0xac4>
1c001540:	001049fd 	add.w	$r29,$r15,$r18
1c001544:	001013bf 	add.w	$r31,$r29,$r4
1c001548:	280003fd 	ld.b	$r29,$r31,0
1c00154c:	5bff2bad 	beq	$r29,$r13,-216(0x3ff28) # 1c001474 <shell15_main+0xac4>
1c001550:	00104dff 	add.w	$r31,$r15,$r19
1c001554:	001023fd 	add.w	$r29,$r31,$r8
1c001558:	280003bf 	ld.b	$r31,$r29,0
1c00155c:	5bff1bed 	beq	$r31,$r13,-232(0x3ff18) # 1c001474 <shell15_main+0xac4>
1c001560:	001051fd 	add.w	$r29,$r15,$r20
1c001564:	00102bbf 	add.w	$r31,$r29,$r10
1c001568:	280003fd 	ld.b	$r29,$r31,0
1c00156c:	5bff0bad 	beq	$r29,$r13,-248(0x3ff08) # 1c001474 <shell15_main+0xac4>
1c001570:	001019ff 	add.w	$r31,$r15,$r6
1c001574:	001007fd 	add.w	$r29,$r31,$r1
1c001578:	280003bf 	ld.b	$r31,$r29,0
1c00157c:	5bfefbed 	beq	$r31,$r13,-264(0x3fef8) # 1c001474 <shell15_main+0xac4>
1c001580:	00101dfd 	add.w	$r29,$r15,$r7
1c001584:	001063bf 	add.w	$r31,$r29,$r24
1c001588:	280003fd 	ld.b	$r29,$r31,0
1c00158c:	5bfeebad 	beq	$r29,$r13,-280(0x3fee8) # 1c001474 <shell15_main+0xac4>
1c001590:	001025ff 	add.w	$r31,$r15,$r9
1c001594:	001067fd 	add.w	$r29,$r31,$r25
1c001598:	280003bf 	ld.b	$r31,$r29,0
1c00159c:	5bfedbed 	beq	$r31,$r13,-296(0x3fed8) # 1c001474 <shell15_main+0xac4>
1c0015a0:	00102def 	add.w	$r15,$r15,$r11
1c0015a4:	00106dfd 	add.w	$r29,$r15,$r27
1c0015a8:	280003bf 	ld.b	$r31,$r29,0
1c0015ac:	5bfecbed 	beq	$r31,$r13,-312(0x3fec8) # 1c001474 <shell15_main+0xac4>
1c0015b0:	2800099d 	ld.b	$r29,$r12,2(0x2)
1c0015b4:	2900059c 	st.b	$r28,$r12,1(0x1)
1c0015b8:	0280098f 	addi.w	$r15,$r12,2(0x2)
1c0015bc:	5ffec7ad 	bne	$r29,$r13,-316(0x3fec4) # 1c001480 <shell15_main+0xad0>
1c0015c0:	001045ff 	add.w	$r31,$r15,$r17
1c0015c4:	00105bfd 	add.w	$r29,$r31,$r22
1c0015c8:	280003bf 	ld.b	$r31,$r29,0
1c0015cc:	5bfeb7ed 	beq	$r31,$r13,-332(0x3feb4) # 1c001480 <shell15_main+0xad0>
1c0015d0:	001049fd 	add.w	$r29,$r15,$r18
1c0015d4:	001013bf 	add.w	$r31,$r29,$r4
1c0015d8:	280003fd 	ld.b	$r29,$r31,0
1c0015dc:	5bfea7ad 	beq	$r29,$r13,-348(0x3fea4) # 1c001480 <shell15_main+0xad0>
1c0015e0:	00104dff 	add.w	$r31,$r15,$r19
1c0015e4:	001023fd 	add.w	$r29,$r31,$r8
1c0015e8:	280003bf 	ld.b	$r31,$r29,0
1c0015ec:	5bfe97ed 	beq	$r31,$r13,-364(0x3fe94) # 1c001480 <shell15_main+0xad0>
1c0015f0:	001051fd 	add.w	$r29,$r15,$r20
1c0015f4:	00102bbf 	add.w	$r31,$r29,$r10
1c0015f8:	280003fd 	ld.b	$r29,$r31,0
1c0015fc:	5bfe87ad 	beq	$r29,$r13,-380(0x3fe84) # 1c001480 <shell15_main+0xad0>
1c001600:	001019ff 	add.w	$r31,$r15,$r6
1c001604:	001007fd 	add.w	$r29,$r31,$r1
1c001608:	280003bf 	ld.b	$r31,$r29,0
1c00160c:	5bfe77ed 	beq	$r31,$r13,-396(0x3fe74) # 1c001480 <shell15_main+0xad0>
1c001610:	00101dfd 	add.w	$r29,$r15,$r7
1c001614:	001063bf 	add.w	$r31,$r29,$r24
1c001618:	280003fd 	ld.b	$r29,$r31,0
1c00161c:	5bfe67ad 	beq	$r29,$r13,-412(0x3fe64) # 1c001480 <shell15_main+0xad0>
1c001620:	001025ff 	add.w	$r31,$r15,$r9
1c001624:	001067fd 	add.w	$r29,$r31,$r25
1c001628:	280003bf 	ld.b	$r31,$r29,0
1c00162c:	5bfe57ed 	beq	$r31,$r13,-428(0x3fe54) # 1c001480 <shell15_main+0xad0>
1c001630:	00102def 	add.w	$r15,$r15,$r11
1c001634:	00106dfd 	add.w	$r29,$r15,$r27
1c001638:	280003bf 	ld.b	$r31,$r29,0
1c00163c:	5bfe47ed 	beq	$r31,$r13,-444(0x3fe44) # 1c001480 <shell15_main+0xad0>
1c001640:	2900099c 	st.b	$r28,$r12,2(0x2)
1c001644:	53fe3fff 	b	-452(0xffffe3c) # 1c001480 <shell15_main+0xad0>
1c001648:	0010459d 	add.w	$r29,$r12,$r17
1c00164c:	00105bbf 	add.w	$r31,$r29,$r22
1c001650:	280003ef 	ld.b	$r15,$r31,0
1c001654:	5bf4a1ed 	beq	$r15,$r13,-2912(0x3f4a0) # 1c000af4 <shell15_main+0x144>
1c001658:	0010499d 	add.w	$r29,$r12,$r18
1c00165c:	001013bf 	add.w	$r31,$r29,$r4
1c001660:	280003ef 	ld.b	$r15,$r31,0
1c001664:	5bf491ed 	beq	$r15,$r13,-2928(0x3f490) # 1c000af4 <shell15_main+0x144>
1c001668:	00104d9d 	add.w	$r29,$r12,$r19
1c00166c:	001023bf 	add.w	$r31,$r29,$r8
1c001670:	280003ef 	ld.b	$r15,$r31,0
1c001674:	5bf481ed 	beq	$r15,$r13,-2944(0x3f480) # 1c000af4 <shell15_main+0x144>
1c001678:	0010519d 	add.w	$r29,$r12,$r20
1c00167c:	00102bbf 	add.w	$r31,$r29,$r10
1c001680:	280003ef 	ld.b	$r15,$r31,0
1c001684:	5bf471ed 	beq	$r15,$r13,-2960(0x3f470) # 1c000af4 <shell15_main+0x144>
1c001688:	0010199d 	add.w	$r29,$r12,$r6
1c00168c:	001007bf 	add.w	$r31,$r29,$r1
1c001690:	280003ef 	ld.b	$r15,$r31,0
1c001694:	5bf461ed 	beq	$r15,$r13,-2976(0x3f460) # 1c000af4 <shell15_main+0x144>
1c001698:	00101d9d 	add.w	$r29,$r12,$r7
1c00169c:	001063bf 	add.w	$r31,$r29,$r24
1c0016a0:	280003ef 	ld.b	$r15,$r31,0
1c0016a4:	5bf451ed 	beq	$r15,$r13,-2992(0x3f450) # 1c000af4 <shell15_main+0x144>
1c0016a8:	0010259d 	add.w	$r29,$r12,$r9
1c0016ac:	001067bf 	add.w	$r31,$r29,$r25
1c0016b0:	280003ef 	ld.b	$r15,$r31,0
1c0016b4:	5bf441ed 	beq	$r15,$r13,-3008(0x3f440) # 1c000af4 <shell15_main+0x144>
1c0016b8:	00102d9d 	add.w	$r29,$r12,$r11
1c0016bc:	00106fbf 	add.w	$r31,$r29,$r27
1c0016c0:	280003ef 	ld.b	$r15,$r31,0
1c0016c4:	5bf431ed 	beq	$r15,$r13,-3024(0x3f430) # 1c000af4 <shell15_main+0x144>
1c0016c8:	2900019c 	st.b	$r28,$r12,0
1c0016cc:	53f42bff 	b	-3032(0xffff428) # 1c000af4 <shell15_main+0x144>
1c0016d0:	0010459d 	add.w	$r29,$r12,$r17
1c0016d4:	00105bbf 	add.w	$r31,$r29,$r22
1c0016d8:	280003fd 	ld.b	$r29,$r31,0
1c0016dc:	5bf40fad 	beq	$r29,$r13,-3060(0x3f40c) # 1c000ae8 <shell15_main+0x138>
1c0016e0:	0010499f 	add.w	$r31,$r12,$r18
1c0016e4:	001013fd 	add.w	$r29,$r31,$r4
1c0016e8:	280003bf 	ld.b	$r31,$r29,0
1c0016ec:	5bf3ffed 	beq	$r31,$r13,-3076(0x3f3fc) # 1c000ae8 <shell15_main+0x138>
1c0016f0:	00104d9d 	add.w	$r29,$r12,$r19
1c0016f4:	001023bf 	add.w	$r31,$r29,$r8
1c0016f8:	280003fd 	ld.b	$r29,$r31,0
1c0016fc:	5bf3efad 	beq	$r29,$r13,-3092(0x3f3ec) # 1c000ae8 <shell15_main+0x138>
1c001700:	0010519f 	add.w	$r31,$r12,$r20
1c001704:	00102bfd 	add.w	$r29,$r31,$r10
1c001708:	280003bf 	ld.b	$r31,$r29,0
1c00170c:	5bf3dfed 	beq	$r31,$r13,-3108(0x3f3dc) # 1c000ae8 <shell15_main+0x138>
1c001710:	0010199d 	add.w	$r29,$r12,$r6
1c001714:	001007bf 	add.w	$r31,$r29,$r1
1c001718:	280003fd 	ld.b	$r29,$r31,0
1c00171c:	5bf3cfad 	beq	$r29,$r13,-3124(0x3f3cc) # 1c000ae8 <shell15_main+0x138>
1c001720:	00101d9f 	add.w	$r31,$r12,$r7
1c001724:	001063fd 	add.w	$r29,$r31,$r24
1c001728:	280003bf 	ld.b	$r31,$r29,0
1c00172c:	5bf3bfed 	beq	$r31,$r13,-3140(0x3f3bc) # 1c000ae8 <shell15_main+0x138>
1c001730:	0010259d 	add.w	$r29,$r12,$r9
1c001734:	001067bf 	add.w	$r31,$r29,$r25
1c001738:	280003fd 	ld.b	$r29,$r31,0
1c00173c:	5bf3afaf 	beq	$r29,$r15,-3156(0x3f3ac) # 1c000ae8 <shell15_main+0x138>
1c001740:	00102d9f 	add.w	$r31,$r12,$r11
1c001744:	00106ffd 	add.w	$r29,$r31,$r27
1c001748:	280003bf 	ld.b	$r31,$r29,0
1c00174c:	5bf39fef 	beq	$r31,$r15,-3172(0x3f39c) # 1c000ae8 <shell15_main+0x138>
1c001750:	2900019c 	st.b	$r28,$r12,0
1c001754:	53f397ff 	b	-3180(0xffff394) # 1c000ae8 <shell15_main+0x138>
1c001758:	28804067 	ld.w	$r7,$r3,16(0x10)
1c00175c:	02bfff18 	addi.w	$r24,$r24,-1(0xfff)
1c001760:	028056f7 	addi.w	$r23,$r23,21(0x15)
1c001764:	5ff3df07 	bne	$r24,$r7,-3108(0x3f3dc) # 1c000b40 <shell15_main+0x190>
1c001768:	2880b06a 	ld.w	$r10,$r3,44(0x2c)
1c00176c:	02bffd4c 	addi.w	$r12,$r10,-1(0xfff)
1c001770:	2980b06c 	st.w	$r12,$r3,44(0x2c)
1c001774:	5ff27d80 	bne	$r12,$r0,-3460(0x3f27c) # 1c0009f0 <shell15_main+0x40>
1c001778:	28812078 	ld.w	$r24,$r3,72(0x48)
1c00177c:	28811077 	ld.w	$r23,$r3,68(0x44)
1c001780:	28813076 	ld.w	$r22,$r3,76(0x4c)
1c001784:	00150306 	move	$r6,$r24
1c001788:	001502e5 	move	$r5,$r23
1c00178c:	001502c7 	move	$r7,$r22
1c001790:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001794:	02a1c084 	addi.w	$r4,$r4,-1936(0x870)
1c001798:	54367800 	bl	13944(0x3678) # 1c004e10 <printf>
1c00179c:	001562fa 	or	$r26,$r23,$r24
1c0017a0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0017a4:	5800e740 	beq	$r26,$r0,228(0xe4) # 1c001888 <shell15_main+0xed8>
1c0017a8:	28823061 	ld.w	$r1,$r3,140(0x8c)
1c0017ac:	28822076 	ld.w	$r22,$r3,136(0x88)
1c0017b0:	28821077 	ld.w	$r23,$r3,132(0x84)
1c0017b4:	28820078 	ld.w	$r24,$r3,128(0x80)
1c0017b8:	2881f079 	ld.w	$r25,$r3,124(0x7c)
1c0017bc:	2881e07a 	ld.w	$r26,$r3,120(0x78)
1c0017c0:	2881d07b 	ld.w	$r27,$r3,116(0x74)
1c0017c4:	2881c07c 	ld.w	$r28,$r3,112(0x70)
1c0017c8:	2881b07d 	ld.w	$r29,$r3,108(0x6c)
1c0017cc:	2881a07e 	ld.w	$r30,$r3,104(0x68)
1c0017d0:	2881907f 	ld.w	$r31,$r3,100(0x64)
1c0017d4:	02824063 	addi.w	$r3,$r3,144(0x90)
1c0017d8:	4c000020 	jirl	$r0,$r1,0
1c0017dc:	03400000 	andi	$r0,$r0,0x0
1c0017e0:	0010459f 	add.w	$r31,$r12,$r17
1c0017e4:	00105bef 	add.w	$r15,$r31,$r22
1c0017e8:	280001fd 	ld.b	$r29,$r15,0
1c0017ec:	5bf317ad 	beq	$r29,$r13,-3308(0x3f314) # 1c000b00 <shell15_main+0x150>
1c0017f0:	0010499f 	add.w	$r31,$r12,$r18
1c0017f4:	001013ef 	add.w	$r15,$r31,$r4
1c0017f8:	280001fd 	ld.b	$r29,$r15,0
1c0017fc:	5bf307ad 	beq	$r29,$r13,-3324(0x3f304) # 1c000b00 <shell15_main+0x150>
1c001800:	00104d9f 	add.w	$r31,$r12,$r19
1c001804:	001023ef 	add.w	$r15,$r31,$r8
1c001808:	280001fd 	ld.b	$r29,$r15,0
1c00180c:	5bf2f7ad 	beq	$r29,$r13,-3340(0x3f2f4) # 1c000b00 <shell15_main+0x150>
1c001810:	0010519f 	add.w	$r31,$r12,$r20
1c001814:	00102bef 	add.w	$r15,$r31,$r10
1c001818:	280001fd 	ld.b	$r29,$r15,0
1c00181c:	5bf2e7ad 	beq	$r29,$r13,-3356(0x3f2e4) # 1c000b00 <shell15_main+0x150>
1c001820:	0010199f 	add.w	$r31,$r12,$r6
1c001824:	001007ef 	add.w	$r15,$r31,$r1
1c001828:	280001fd 	ld.b	$r29,$r15,0
1c00182c:	5bf2d7ad 	beq	$r29,$r13,-3372(0x3f2d4) # 1c000b00 <shell15_main+0x150>
1c001830:	00101d9f 	add.w	$r31,$r12,$r7
1c001834:	001063ef 	add.w	$r15,$r31,$r24
1c001838:	280001fd 	ld.b	$r29,$r15,0
1c00183c:	5bf2c7ad 	beq	$r29,$r13,-3388(0x3f2c4) # 1c000b00 <shell15_main+0x150>
1c001840:	0010259f 	add.w	$r31,$r12,$r9
1c001844:	001067ef 	add.w	$r15,$r31,$r25
1c001848:	280001fd 	ld.b	$r29,$r15,0
1c00184c:	5bf2b7ad 	beq	$r29,$r13,-3404(0x3f2b4) # 1c000b00 <shell15_main+0x150>
1c001850:	00102d9f 	add.w	$r31,$r12,$r11
1c001854:	00106fef 	add.w	$r15,$r31,$r27
1c001858:	280001fd 	ld.b	$r29,$r15,0
1c00185c:	5bf2a7ad 	beq	$r29,$r13,-3420(0x3f2a4) # 1c000b00 <shell15_main+0x150>
1c001860:	2900019c 	st.b	$r28,$r12,0
1c001864:	53f29fff 	b	-3428(0xffff29c) # 1c000b00 <shell15_main+0x150>
1c001868:	2880b06a 	ld.w	$r10,$r3,44(0x2c)
1c00186c:	29813060 	st.w	$r0,$r3,76(0x4c)
1c001870:	29812060 	st.w	$r0,$r3,72(0x48)
1c001874:	02bffd4c 	addi.w	$r12,$r10,-1(0xfff)
1c001878:	29811060 	st.w	$r0,$r3,68(0x44)
1c00187c:	2980b06c 	st.w	$r12,$r3,44(0x2c)
1c001880:	5ff17180 	bne	$r12,$r0,-3728(0x3f170) # 1c0009f0 <shell15_main+0x40>
1c001884:	53fef7ff 	b	-268(0xffffef4) # 1c001778 <shell15_main+0xdc8>
1c001888:	03c006db 	xori	$r27,$r22,0x1
1c00188c:	28823061 	ld.w	$r1,$r3,140(0x8c)
1c001890:	28822076 	ld.w	$r22,$r3,136(0x88)
1c001894:	0012ec04 	sltu	$r4,$r0,$r27
1c001898:	28821077 	ld.w	$r23,$r3,132(0x84)
1c00189c:	28820078 	ld.w	$r24,$r3,128(0x80)
1c0018a0:	2881f079 	ld.w	$r25,$r3,124(0x7c)
1c0018a4:	2881e07a 	ld.w	$r26,$r3,120(0x78)
1c0018a8:	2881d07b 	ld.w	$r27,$r3,116(0x74)
1c0018ac:	2881c07c 	ld.w	$r28,$r3,112(0x70)
1c0018b0:	2881b07d 	ld.w	$r29,$r3,108(0x6c)
1c0018b4:	2881a07e 	ld.w	$r30,$r3,104(0x68)
1c0018b8:	2881907f 	ld.w	$r31,$r3,100(0x64)
1c0018bc:	02824063 	addi.w	$r3,$r3,144(0x90)
1c0018c0:	4c000020 	jirl	$r0,$r1,0
1c0018c4:	001165c1 	sub.w	$r1,$r14,$r25
1c0018c8:	00102039 	add.w	$r25,$r1,$r8
1c0018cc:	2800032f 	ld.b	$r15,$r25,0
1c0018d0:	5bf2f1fe 	beq	$r15,$r30,-3344(0x3f2f0) # 1c000bc0 <shell15_main+0x210>
1c0018d4:	280001cb 	ld.b	$r11,$r14,0
1c0018d8:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c0018dc:	5ff9017e 	bne	$r11,$r30,-1792(0x3f900) # 1c0011dc <shell15_main+0x82c>
1c0018e0:	53f2e3ff 	b	-3360(0xffff2e0) # 1c000bc0 <shell15_main+0x210>
1c0018e4:	00104c8b 	add.w	$r11,$r4,$r19
1c0018e8:	00408571 	slli.w	$r17,$r11,0x1
1c0018ec:	00116239 	sub.w	$r25,$r17,$r24
1c0018f0:	001c1f2f 	mul.w	$r15,$r25,$r7
1c0018f4:	00103f53 	add.w	$r19,$r26,$r15
1c0018f8:	0010526e 	add.w	$r14,$r19,$r20
1c0018fc:	280001d4 	ld.b	$r20,$r14,0
1c001900:	5803329e 	beq	$r20,$r30,816(0x330) # 1c001c30 <shell15_main+0x1280>
1c001904:	5ff2be9d 	bne	$r20,$r29,-3396(0x3f2bc) # 1c000bc0 <shell15_main+0x210>
1c001908:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00190c:	00150001 	move	$r1,$r0
1c001910:	29815066 	st.w	$r6,$r3,84(0x54)
1c001914:	1c000ff4 	pcaddu12i	$r20,127(0x7f)
1c001918:	28981294 	ld.w	$r20,$r20,1540(0x604)
1c00191c:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c001920:	2897e339 	ld.w	$r25,$r25,1528(0x5f8)
1c001924:	29801324 	st.w	$r4,$r25,4(0x4)
1c001928:	2980232b 	st.w	$r11,$r25,8(0x8)
1c00192c:	29804324 	st.w	$r4,$r25,16(0x10)
1c001930:	2980532b 	st.w	$r11,$r25,20(0x14)
1c001934:	29807324 	st.w	$r4,$r25,28(0x1c)
1c001938:	2980832b 	st.w	$r11,$r25,32(0x20)
1c00193c:	2980a324 	st.w	$r4,$r25,40(0x28)
1c001940:	2980b32b 	st.w	$r11,$r25,44(0x2c)
1c001944:	2980d324 	st.w	$r4,$r25,52(0x34)
1c001948:	2980e32b 	st.w	$r11,$r25,56(0x38)
1c00194c:	2980628b 	st.w	$r11,$r20,24(0x18)
1c001950:	2980728b 	st.w	$r11,$r20,28(0x1c)
1c001954:	2980828b 	st.w	$r11,$r20,32(0x20)
1c001958:	0280f00b 	addi.w	$r11,$r0,60(0x3c)
1c00195c:	001c2c2e 	mul.w	$r14,$r1,$r11
1c001960:	28807073 	ld.w	$r19,$r3,28(0x1c)
1c001964:	0040848f 	slli.w	$r15,$r4,0x1
1c001968:	29803284 	st.w	$r4,$r20,12(0xc)
1c00196c:	00104de6 	add.w	$r6,$r15,$r19
1c001970:	2980c291 	st.w	$r17,$r20,48(0x30)
1c001974:	29804284 	st.w	$r4,$r20,16(0x10)
1c001978:	29805284 	st.w	$r4,$r20,20(0x14)
1c00197c:	2980d291 	st.w	$r17,$r20,52(0x34)
1c001980:	2980e291 	st.w	$r17,$r20,56(0x38)
1c001984:	29800320 	st.w	$r0,$r25,0
1c001988:	00150091 	move	$r17,$r4
1c00198c:	29803320 	st.w	$r0,$r25,12(0xc)
1c001990:	29806320 	st.w	$r0,$r25,24(0x18)
1c001994:	29809320 	st.w	$r0,$r25,36(0x24)
1c001998:	2980c320 	st.w	$r0,$r25,48(0x30)
1c00199c:	29800280 	st.w	$r0,$r20,0
1c0019a0:	29801280 	st.w	$r0,$r20,4(0x4)
1c0019a4:	29802280 	st.w	$r0,$r20,8(0x8)
1c0019a8:	29809286 	st.w	$r6,$r20,36(0x24)
1c0019ac:	2980a286 	st.w	$r6,$r20,40(0x28)
1c0019b0:	2980b286 	st.w	$r6,$r20,44(0x2c)
1c0019b4:	1c000fe1 	pcaddu12i	$r1,127(0x7f)
1c0019b8:	02a0f021 	addi.w	$r1,$r1,-1988(0x83c)
1c0019bc:	2980f06d 	st.w	$r13,$r3,60(0x3c)
1c0019c0:	2980807f 	st.w	$r31,$r3,32(0x20)
1c0019c4:	1c000feb 	pcaddu12i	$r11,127(0x7f)
1c0019c8:	2895416b 	ld.w	$r11,$r11,1360(0x550)
1c0019cc:	29816068 	st.w	$r8,$r3,88(0x58)
1c0019d0:	29817065 	st.w	$r5,$r3,92(0x5c)
1c0019d4:	29809069 	st.w	$r9,$r3,36(0x24)
1c0019d8:	00150224 	move	$r4,$r17
1c0019dc:	00103821 	add.w	$r1,$r1,$r14
1c0019e0:	00150288 	move	$r8,$r20
1c0019e4:	00150229 	move	$r9,$r17
1c0019e8:	02800c1f 	addi.w	$r31,$r0,3(0x3)
1c0019ec:	0020fe0d 	mod.w	$r13,$r16,$r31
1c0019f0:	5c000be0 	bne	$r31,$r0,8(0x8) # 1c0019f8 <shell15_main+0x1048>
1c0019f4:	002a0007 	break	0x7
1c0019f8:	034005a5 	andi	$r5,$r13,0x1
1c0019fc:	00150139 	move	$r25,$r9
1c001a00:	580008a0 	beq	$r5,$r0,8(0x8) # 1c001a08 <shell15_main+0x1058>
1c001a04:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c001a08:	28800034 	ld.w	$r20,$r1,0
1c001a0c:	2880f071 	ld.w	$r17,$r3,60(0x3c)
1c001a10:	58000a80 	beq	$r20,$r0,8(0x8) # 1c001a18 <shell15_main+0x1068>
1c001a14:	28814071 	ld.w	$r17,$r3,80(0x50)
1c001a18:	2880010e 	ld.w	$r14,$r8,0
1c001a1c:	28800173 	ld.w	$r19,$r11,0
1c001a20:	001161cf 	sub.w	$r15,$r14,$r24
1c001a24:	001011e4 	add.w	$r4,$r15,$r4
1c001a28:	00104d94 	add.w	$r20,$r12,$r19
1c001a2c:	640229e4 	bge	$r15,$r4,552(0x228) # 1c001c54 <shell15_main+0x12a4>
1c001a30:	02804c12 	addi.w	$r18,$r0,19(0x13)
1c001a34:	001c1c86 	mul.w	$r6,$r4,$r7
1c001a38:	02800685 	addi.w	$r5,$r20,1(0x1)
1c001a3c:	00106684 	add.w	$r4,$r20,$r25
1c001a40:	001c49ff 	mul.w	$r31,$r15,$r18
1c001a44:	00101b46 	add.w	$r6,$r26,$r6
1c001a48:	001c1ded 	mul.w	$r13,$r15,$r7
1c001a4c:	001053f9 	add.w	$r25,$r31,$r20
1c001a50:	00408b33 	slli.w	$r19,$r25,0x2
1c001a54:	001010df 	add.w	$r31,$r6,$r4
1c001a58:	2980d07f 	st.w	$r31,$r3,52(0x34)
1c001a5c:	001034ae 	add.w	$r14,$r5,$r13
1c001a60:	0010374f 	add.w	$r15,$r26,$r13
1c001a64:	1c000fed 	pcaddu12i	$r13,127(0x7f)
1c001a68:	02a201ad 	addi.w	$r13,$r13,-1920(0x880)
1c001a6c:	00103b52 	add.w	$r18,$r26,$r14
1c001a70:	001011ef 	add.w	$r15,$r15,$r4
1c001a74:	00104db3 	add.w	$r19,$r13,$r19
1c001a78:	6401ca84 	bge	$r20,$r4,456(0x1c8) # 1c001c40 <shell15_main+0x1290>
1c001a7c:	283ffe45 	ld.b	$r5,$r18,-1(0xfff)
1c001a80:	5c0560b1 	bne	$r5,$r17,1376(0x560) # 1c001fe0 <shell15_main+0x1630>
1c001a84:	28800279 	ld.w	$r25,$r19,0
1c001a88:	5c054f20 	bne	$r25,$r0,1356(0x54c) # 1c001fd4 <shell15_main+0x1624>
1c001a8c:	001149ee 	sub.w	$r14,$r15,$r18
1c001a90:	03401ddf 	andi	$r31,$r14,0x7
1c001a94:	0015024d 	move	$r13,$r18
1c001a98:	0015026e 	move	$r14,$r19
1c001a9c:	5800dfe0 	beq	$r31,$r0,220(0xdc) # 1c001b78 <shell15_main+0x11c8>
1c001aa0:	28000246 	ld.b	$r6,$r18,0
1c001aa4:	5c0548d1 	bne	$r6,$r17,1352(0x548) # 1c001fec <shell15_main+0x163c>
1c001aa8:	28801265 	ld.w	$r5,$r19,4(0x4)
1c001aac:	0280126e 	addi.w	$r14,$r19,4(0x4)
1c001ab0:	0280064d 	addi.w	$r13,$r18,1(0x1)
1c001ab4:	5c0544a0 	bne	$r5,$r0,1348(0x544) # 1c001ff8 <shell15_main+0x1648>
1c001ab8:	02800419 	addi.w	$r25,$r0,1(0x1)
1c001abc:	5800bff9 	beq	$r31,$r25,188(0xbc) # 1c001b78 <shell15_main+0x11c8>
1c001ac0:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001ac4:	58009fe6 	beq	$r31,$r6,156(0x9c) # 1c001b60 <shell15_main+0x11b0>
1c001ac8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c001acc:	58007fe5 	beq	$r31,$r5,124(0x7c) # 1c001b48 <shell15_main+0x1198>
1c001ad0:	02801019 	addi.w	$r25,$r0,4(0x4)
1c001ad4:	58005ff9 	beq	$r31,$r25,92(0x5c) # 1c001b30 <shell15_main+0x1180>
1c001ad8:	02801406 	addi.w	$r6,$r0,5(0x5)
1c001adc:	58003fe6 	beq	$r31,$r6,60(0x3c) # 1c001b18 <shell15_main+0x1168>
1c001ae0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c001ae4:	58001fe5 	beq	$r31,$r5,28(0x1c) # 1c001b00 <shell15_main+0x1150>
1c001ae8:	280001bf 	ld.b	$r31,$r13,0
1c001aec:	5c0673f1 	bne	$r31,$r17,1648(0x670) # 1c00215c <shell15_main+0x17ac>
1c001af0:	288011d9 	ld.w	$r25,$r14,4(0x4)
1c001af4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001af8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001afc:	5c065720 	bne	$r25,$r0,1620(0x654) # 1c002150 <shell15_main+0x17a0>
1c001b00:	280001a6 	ld.b	$r6,$r13,0
1c001b04:	5c0630d1 	bne	$r6,$r17,1584(0x630) # 1c002134 <shell15_main+0x1784>
1c001b08:	288011c5 	ld.w	$r5,$r14,4(0x4)
1c001b0c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001b10:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001b14:	5c0614a0 	bne	$r5,$r0,1556(0x614) # 1c002128 <shell15_main+0x1778>
1c001b18:	280001bf 	ld.b	$r31,$r13,0
1c001b1c:	5c05dbf1 	bne	$r31,$r17,1496(0x5d8) # 1c0020f4 <shell15_main+0x1744>
1c001b20:	288011d9 	ld.w	$r25,$r14,4(0x4)
1c001b24:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001b28:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001b2c:	5c05bf20 	bne	$r25,$r0,1468(0x5bc) # 1c0020e8 <shell15_main+0x1738>
1c001b30:	280001a6 	ld.b	$r6,$r13,0
1c001b34:	5c05d8d1 	bne	$r6,$r17,1496(0x5d8) # 1c00210c <shell15_main+0x175c>
1c001b38:	288011c5 	ld.w	$r5,$r14,4(0x4)
1c001b3c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001b40:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001b44:	5c05bca0 	bne	$r5,$r0,1468(0x5bc) # 1c002100 <shell15_main+0x1750>
1c001b48:	280001bf 	ld.b	$r31,$r13,0
1c001b4c:	5c057bf1 	bne	$r31,$r17,1400(0x578) # 1c0020c4 <shell15_main+0x1714>
1c001b50:	288011d9 	ld.w	$r25,$r14,4(0x4)
1c001b54:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001b58:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001b5c:	5c058320 	bne	$r25,$r0,1408(0x580) # 1c0020dc <shell15_main+0x172c>
1c001b60:	280001a6 	ld.b	$r6,$r13,0
1c001b64:	5c053cd1 	bne	$r6,$r17,1340(0x53c) # 1c0020a0 <shell15_main+0x16f0>
1c001b68:	288011c5 	ld.w	$r5,$r14,4(0x4)
1c001b6c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001b70:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001b74:	5c0520a0 	bne	$r5,$r0,1312(0x520) # 1c002094 <shell15_main+0x16e4>
1c001b78:	5800c9af 	beq	$r13,$r15,200(0xc8) # 1c001c40 <shell15_main+0x1290>
1c001b7c:	280001a5 	ld.b	$r5,$r13,0
1c001b80:	5c04a8b1 	bne	$r5,$r17,1192(0x4a8) # 1c002028 <shell15_main+0x1678>
1c001b84:	288011d9 	ld.w	$r25,$r14,4(0x4)
1c001b88:	028011df 	addi.w	$r31,$r14,4(0x4)
1c001b8c:	028005a6 	addi.w	$r6,$r13,1(0x1)
1c001b90:	5c048f20 	bne	$r25,$r0,1164(0x48c) # 1c00201c <shell15_main+0x166c>
1c001b94:	280005a5 	ld.b	$r5,$r13,1(0x1)
1c001b98:	5c0478b1 	bne	$r5,$r17,1144(0x478) # 1c002010 <shell15_main+0x1660>
1c001b9c:	288013f9 	ld.w	$r25,$r31,4(0x4)
1c001ba0:	5c046720 	bne	$r25,$r0,1124(0x464) # 1c002004 <shell15_main+0x1654>
1c001ba4:	280009a5 	ld.b	$r5,$r13,2(0x2)
1c001ba8:	5c04bcb1 	bne	$r5,$r17,1212(0x4bc) # 1c002064 <shell15_main+0x16b4>
1c001bac:	288031d9 	ld.w	$r25,$r14,12(0xc)
1c001bb0:	5c04ab20 	bne	$r25,$r0,1192(0x4a8) # 1c002058 <shell15_main+0x16a8>
1c001bb4:	28000da5 	ld.b	$r5,$r13,3(0x3)
1c001bb8:	5c0494b1 	bne	$r5,$r17,1172(0x494) # 1c00204c <shell15_main+0x169c>
1c001bbc:	288041d9 	ld.w	$r25,$r14,16(0x10)
1c001bc0:	028041ce 	addi.w	$r14,$r14,16(0x10)
1c001bc4:	5c047f20 	bne	$r25,$r0,1148(0x47c) # 1c002040 <shell15_main+0x1690>
1c001bc8:	280011ad 	ld.b	$r13,$r13,4(0x4)
1c001bcc:	5c0469b1 	bne	$r13,$r17,1128(0x468) # 1c002034 <shell15_main+0x1684>
1c001bd0:	288011c5 	ld.w	$r5,$r14,4(0x4)
1c001bd4:	5c049ca0 	bne	$r5,$r0,1180(0x49c) # 1c002070 <shell15_main+0x16c0>
1c001bd8:	280010d9 	ld.b	$r25,$r6,4(0x4)
1c001bdc:	5c04af31 	bne	$r25,$r17,1196(0x4ac) # 1c002088 <shell15_main+0x16d8>
1c001be0:	288053ee 	ld.w	$r14,$r31,20(0x14)
1c001be4:	5c0499c0 	bne	$r14,$r0,1176(0x498) # 1c00207c <shell15_main+0x16cc>
1c001be8:	280014cd 	ld.b	$r13,$r6,5(0x5)
1c001bec:	5c04cdb1 	bne	$r13,$r17,1228(0x4cc) # 1c0020b8 <shell15_main+0x1708>
1c001bf0:	288063e5 	ld.w	$r5,$r31,24(0x18)
1c001bf4:	5c04b8a0 	bne	$r5,$r0,1208(0x4b8) # 1c0020ac <shell15_main+0x16fc>
1c001bf8:	280018d9 	ld.b	$r25,$r6,6(0x6)
1c001bfc:	5c04d731 	bne	$r25,$r17,1236(0x4d4) # 1c0020d0 <shell15_main+0x1720>
1c001c00:	288073e5 	ld.w	$r5,$r31,28(0x1c)
1c001c04:	028073ee 	addi.w	$r14,$r31,28(0x1c)
1c001c08:	02801ccd 	addi.w	$r13,$r6,7(0x7)
1c001c0c:	5bff6ca0 	beq	$r5,$r0,-148(0x3ff6c) # 1c001b78 <shell15_main+0x11c8>
1c001c10:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001c14:	28809069 	ld.w	$r9,$r3,36(0x24)
1c001c18:	53efabff 	b	-4184(0xfffefa8) # 1c000bc0 <shell15_main+0x210>
1c001c1c:	00116221 	sub.w	$r1,$r17,$r24
1c001c20:	29810061 	st.w	$r1,$r3,64(0x40)
1c001c24:	53f51fff 	b	-2788(0xffff51c) # 1c001140 <shell15_main+0x790>
1c001c28:	00150331 	move	$r17,$r25
1c001c2c:	53f657ff 	b	-2476(0xffff654) # 1c001280 <shell15_main+0x8d0>
1c001c30:	02800812 	addi.w	$r18,$r0,2(0x2)
1c001c34:	02800401 	addi.w	$r1,$r0,1(0x1)
1c001c38:	29815072 	st.w	$r18,$r3,84(0x54)
1c001c3c:	53fcdbff 	b	-808(0xffffcd8) # 1c001914 <shell15_main+0xf64>
1c001c40:	2880d06d 	ld.w	$r13,$r3,52(0x34)
1c001c44:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c001c48:	02813273 	addi.w	$r19,$r19,76(0x4c)
1c001c4c:	02805652 	addi.w	$r18,$r18,21(0x15)
1c001c50:	5ffe29ed 	bne	$r15,$r13,-472(0x3fe28) # 1c001a78 <shell15_main+0x10c8>
1c001c54:	02800610 	addi.w	$r16,$r16,1(0x1)
1c001c58:	02803c0e 	addi.w	$r14,$r0,15(0xf)
1c001c5c:	5800360e 	beq	$r16,$r14,52(0x34) # 1c001c90 <shell15_main+0x12e0>
1c001c60:	02800c19 	addi.w	$r25,$r0,3(0x3)
1c001c64:	0020660e 	div.w	$r14,$r16,$r25
1c001c68:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c001c70 <shell15_main+0x12c0>
1c001c6c:	002a0007 	break	0x7
1c001c70:	034005df 	andi	$r31,$r14,0x1
1c001c74:	00150124 	move	$r4,$r9
1c001c78:	58000be0 	beq	$r31,$r0,8(0x8) # 1c001c80 <shell15_main+0x12d0>
1c001c7c:	28807064 	ld.w	$r4,$r3,28(0x1c)
1c001c80:	02801108 	addi.w	$r8,$r8,4(0x4)
1c001c84:	0280116b 	addi.w	$r11,$r11,4(0x4)
1c001c88:	02801021 	addi.w	$r1,$r1,4(0x4)
1c001c8c:	53fd5fff 	b	-676(0xffffd5c) # 1c0019e8 <shell15_main+0x1038>
1c001c90:	28816068 	ld.w	$r8,$r3,88(0x58)
1c001c94:	28817065 	ld.w	$r5,$r3,92(0x5c)
1c001c98:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001c9c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001ca0:	28809069 	ld.w	$r9,$r3,36(0x24)
1c001ca4:	00146010 	nor	$r16,$r0,$r24
1c001ca8:	60030b28 	blt	$r25,$r8,776(0x308) # 1c001fb0 <shell15_main+0x1600>
1c001cac:	0280390e 	addi.w	$r14,$r8,14(0xe)
1c001cb0:	02803104 	addi.w	$r4,$r8,12(0xc)
1c001cb4:	0280350d 	addi.w	$r13,$r8,13(0xd)
1c001cb8:	2980c06e 	st.w	$r14,$r3,48(0x30)
1c001cbc:	2880e06e 	ld.w	$r14,$r3,56(0x38)
1c001cc0:	2980e069 	st.w	$r9,$r3,56(0x38)
1c001cc4:	2880a069 	ld.w	$r9,$r3,40(0x28)
1c001cc8:	1c000fc6 	pcaddu12i	$r6,126(0x7e)
1c001ccc:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c001cd0:	02801d01 	addi.w	$r1,$r8,7(0x7)
1c001cd4:	29808064 	st.w	$r4,$r3,32(0x20)
1c001cd8:	2980906d 	st.w	$r13,$r3,36(0x24)
1c001cdc:	02803d04 	addi.w	$r4,$r8,15(0xf)
1c001ce0:	0280410d 	addi.w	$r13,$r8,16(0x10)
1c001ce4:	001058cf 	add.w	$r15,$r6,$r22
1c001ce8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001cec:	02800d14 	addi.w	$r20,$r8,3(0x3)
1c001cf0:	02801113 	addi.w	$r19,$r8,4(0x4)
1c001cf4:	02801512 	addi.w	$r18,$r8,5(0x5)
1c001cf8:	02801911 	addi.w	$r17,$r8,6(0x6)
1c001cfc:	02802106 	addi.w	$r6,$r8,8(0x8)
1c001d00:	0280250b 	addi.w	$r11,$r8,9(0x9)
1c001d04:	02802901 	addi.w	$r1,$r8,10(0xa)
1c001d08:	02802d19 	addi.w	$r25,$r8,11(0xb)
1c001d0c:	2980d064 	st.w	$r4,$r3,52(0x34)
1c001d10:	2980f06d 	st.w	$r13,$r3,60(0x3c)
1c001d14:	2981407f 	st.w	$r31,$r3,80(0x50)
1c001d18:	28bed1ff 	ld.w	$r31,$r15,-76(0xfb4)
1c001d1c:	028007e4 	addi.w	$r4,$r31,1(0x1)
1c001d20:	29bed1e4 	st.w	$r4,$r15,-76(0xfb4)
1c001d24:	600275c8 	blt	$r14,$r8,628(0x274) # 1c001f98 <shell15_main+0x15e8>
1c001d28:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c001d2c:	001c360d 	mul.w	$r13,$r16,$r13
1c001d30:	001031bf 	add.w	$r31,$r13,$r12
1c001d34:	00408be4 	slli.w	$r4,$r31,0x2
1c001d38:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001d3c:	0296b3ff 	addi.w	$r31,$r31,1452(0x5ac)
1c001d40:	001013e4 	add.w	$r4,$r31,$r4
1c001d44:	2880009f 	ld.w	$r31,$r4,0
1c001d48:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001d4c:	2980009f 	st.w	$r31,$r4,0
1c001d50:	64024805 	bge	$r0,$r5,584(0x248) # 1c001f98 <shell15_main+0x15e8>
1c001d54:	001025a4 	add.w	$r4,$r13,$r9
1c001d58:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001d5c:	029633ff 	addi.w	$r31,$r31,1420(0x58c)
1c001d60:	00408884 	slli.w	$r4,$r4,0x2
1c001d64:	001013e4 	add.w	$r4,$r31,$r4
1c001d68:	2880009f 	ld.w	$r31,$r4,0
1c001d6c:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001d70:	2980009f 	st.w	$r31,$r4,0
1c001d74:	600225c9 	blt	$r14,$r9,548(0x224) # 1c001f98 <shell15_main+0x15e8>
1c001d78:	001051a4 	add.w	$r4,$r13,$r20
1c001d7c:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001d80:	0295a3ff 	addi.w	$r31,$r31,1384(0x568)
1c001d84:	00408884 	slli.w	$r4,$r4,0x2
1c001d88:	001013e4 	add.w	$r4,$r31,$r4
1c001d8c:	2880009f 	ld.w	$r31,$r4,0
1c001d90:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001d94:	2980009f 	st.w	$r31,$r4,0
1c001d98:	600201d4 	blt	$r14,$r20,512(0x200) # 1c001f98 <shell15_main+0x15e8>
1c001d9c:	00104da4 	add.w	$r4,$r13,$r19
1c001da0:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001da4:	029513ff 	addi.w	$r31,$r31,1348(0x544)
1c001da8:	00408884 	slli.w	$r4,$r4,0x2
1c001dac:	001013e4 	add.w	$r4,$r31,$r4
1c001db0:	2880009f 	ld.w	$r31,$r4,0
1c001db4:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001db8:	2980009f 	st.w	$r31,$r4,0
1c001dbc:	6001ddd3 	blt	$r14,$r19,476(0x1dc) # 1c001f98 <shell15_main+0x15e8>
1c001dc0:	001049a4 	add.w	$r4,$r13,$r18
1c001dc4:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001dc8:	029483ff 	addi.w	$r31,$r31,1312(0x520)
1c001dcc:	00408884 	slli.w	$r4,$r4,0x2
1c001dd0:	001013e4 	add.w	$r4,$r31,$r4
1c001dd4:	2880009f 	ld.w	$r31,$r4,0
1c001dd8:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001ddc:	2980009f 	st.w	$r31,$r4,0
1c001de0:	6001b9d2 	blt	$r14,$r18,440(0x1b8) # 1c001f98 <shell15_main+0x15e8>
1c001de4:	001045a4 	add.w	$r4,$r13,$r17
1c001de8:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001dec:	0293f3ff 	addi.w	$r31,$r31,1276(0x4fc)
1c001df0:	00408884 	slli.w	$r4,$r4,0x2
1c001df4:	001013e4 	add.w	$r4,$r31,$r4
1c001df8:	2880009f 	ld.w	$r31,$r4,0
1c001dfc:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001e00:	2980009f 	st.w	$r31,$r4,0
1c001e04:	600195d1 	blt	$r14,$r17,404(0x194) # 1c001f98 <shell15_main+0x15e8>
1c001e08:	28807064 	ld.w	$r4,$r3,28(0x1c)
1c001e0c:	001011bf 	add.w	$r31,$r13,$r4
1c001e10:	00408be4 	slli.w	$r4,$r31,0x2
1c001e14:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001e18:	029343ff 	addi.w	$r31,$r31,1232(0x4d0)
1c001e1c:	001013e4 	add.w	$r4,$r31,$r4
1c001e20:	2880009f 	ld.w	$r31,$r4,0
1c001e24:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001e28:	2980009f 	st.w	$r31,$r4,0
1c001e2c:	28807064 	ld.w	$r4,$r3,28(0x1c)
1c001e30:	600169c4 	blt	$r14,$r4,360(0x168) # 1c001f98 <shell15_main+0x15e8>
1c001e34:	001019bf 	add.w	$r31,$r13,$r6
1c001e38:	00408be4 	slli.w	$r4,$r31,0x2
1c001e3c:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001e40:	0292a3ff 	addi.w	$r31,$r31,1192(0x4a8)
1c001e44:	001013e4 	add.w	$r4,$r31,$r4
1c001e48:	2880009f 	ld.w	$r31,$r4,0
1c001e4c:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001e50:	2980009f 	st.w	$r31,$r4,0
1c001e54:	600145c6 	blt	$r14,$r6,324(0x144) # 1c001f98 <shell15_main+0x15e8>
1c001e58:	00102dad 	add.w	$r13,$r13,$r11
1c001e5c:	004089a4 	slli.w	$r4,$r13,0x2
1c001e60:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001e64:	029213ff 	addi.w	$r31,$r31,1156(0x484)
1c001e68:	001013ed 	add.w	$r13,$r31,$r4
1c001e6c:	288001a4 	ld.w	$r4,$r13,0
1c001e70:	02800484 	addi.w	$r4,$r4,1(0x1)
1c001e74:	298001a4 	st.w	$r4,$r13,0
1c001e78:	600121cb 	blt	$r14,$r11,288(0x120) # 1c001f98 <shell15_main+0x15e8>
1c001e7c:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c001e80:	001c360d 	mul.w	$r13,$r16,$r13
1c001e84:	001005a4 	add.w	$r4,$r13,$r1
1c001e88:	00408884 	slli.w	$r4,$r4,0x2
1c001e8c:	001013e4 	add.w	$r4,$r31,$r4
1c001e90:	2880009f 	ld.w	$r31,$r4,0
1c001e94:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001e98:	2980009f 	st.w	$r31,$r4,0
1c001e9c:	6000fdc1 	blt	$r14,$r1,252(0xfc) # 1c001f98 <shell15_main+0x15e8>
1c001ea0:	001065a4 	add.w	$r4,$r13,$r25
1c001ea4:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001ea8:	029103ff 	addi.w	$r31,$r31,1088(0x440)
1c001eac:	00408884 	slli.w	$r4,$r4,0x2
1c001eb0:	001013e4 	add.w	$r4,$r31,$r4
1c001eb4:	2880009f 	ld.w	$r31,$r4,0
1c001eb8:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001ebc:	2980009f 	st.w	$r31,$r4,0
1c001ec0:	6000d9d9 	blt	$r14,$r25,216(0xd8) # 1c001f98 <shell15_main+0x15e8>
1c001ec4:	28808064 	ld.w	$r4,$r3,32(0x20)
1c001ec8:	001011bf 	add.w	$r31,$r13,$r4
1c001ecc:	00408be4 	slli.w	$r4,$r31,0x2
1c001ed0:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001ed4:	029053ff 	addi.w	$r31,$r31,1044(0x414)
1c001ed8:	001013e4 	add.w	$r4,$r31,$r4
1c001edc:	2880009f 	ld.w	$r31,$r4,0
1c001ee0:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001ee4:	2980009f 	st.w	$r31,$r4,0
1c001ee8:	28808064 	ld.w	$r4,$r3,32(0x20)
1c001eec:	6000adc4 	blt	$r14,$r4,172(0xac) # 1c001f98 <shell15_main+0x15e8>
1c001ef0:	2880907f 	ld.w	$r31,$r3,36(0x24)
1c001ef4:	00107da4 	add.w	$r4,$r13,$r31
1c001ef8:	00408884 	slli.w	$r4,$r4,0x2
1c001efc:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001f00:	028fa3ff 	addi.w	$r31,$r31,1000(0x3e8)
1c001f04:	001013e4 	add.w	$r4,$r31,$r4
1c001f08:	2880009f 	ld.w	$r31,$r4,0
1c001f0c:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001f10:	2980009f 	st.w	$r31,$r4,0
1c001f14:	28809064 	ld.w	$r4,$r3,36(0x24)
1c001f18:	600081c4 	blt	$r14,$r4,128(0x80) # 1c001f98 <shell15_main+0x15e8>
1c001f1c:	2880c07f 	ld.w	$r31,$r3,48(0x30)
1c001f20:	00107da4 	add.w	$r4,$r13,$r31
1c001f24:	00408884 	slli.w	$r4,$r4,0x2
1c001f28:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001f2c:	028ef3ff 	addi.w	$r31,$r31,956(0x3bc)
1c001f30:	001013e4 	add.w	$r4,$r31,$r4
1c001f34:	2880009f 	ld.w	$r31,$r4,0
1c001f38:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001f3c:	2980009f 	st.w	$r31,$r4,0
1c001f40:	2880c064 	ld.w	$r4,$r3,48(0x30)
1c001f44:	600055c4 	blt	$r14,$r4,84(0x54) # 1c001f98 <shell15_main+0x15e8>
1c001f48:	2880d07f 	ld.w	$r31,$r3,52(0x34)
1c001f4c:	00107da4 	add.w	$r4,$r13,$r31
1c001f50:	00408884 	slli.w	$r4,$r4,0x2
1c001f54:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001f58:	028e43ff 	addi.w	$r31,$r31,912(0x390)
1c001f5c:	001013e4 	add.w	$r4,$r31,$r4
1c001f60:	2880009f 	ld.w	$r31,$r4,0
1c001f64:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001f68:	2980009f 	st.w	$r31,$r4,0
1c001f6c:	2880d064 	ld.w	$r4,$r3,52(0x34)
1c001f70:	600029c4 	blt	$r14,$r4,40(0x28) # 1c001f98 <shell15_main+0x15e8>
1c001f74:	2880f07f 	ld.w	$r31,$r3,60(0x3c)
1c001f78:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c001f7c:	028db084 	addi.w	$r4,$r4,876(0x36c)
1c001f80:	00107dad 	add.w	$r13,$r13,$r31
1c001f84:	004089bf 	slli.w	$r31,$r13,0x2
1c001f88:	00107c8d 	add.w	$r13,$r4,$r31
1c001f8c:	288001bf 	ld.w	$r31,$r13,0
1c001f90:	028007e4 	addi.w	$r4,$r31,1(0x1)
1c001f94:	298001a4 	st.w	$r4,$r13,0
1c001f98:	2881006d 	ld.w	$r13,$r3,64(0x40)
1c001f9c:	02800610 	addi.w	$r16,$r16,1(0x1)
1c001fa0:	028131ef 	addi.w	$r15,$r15,76(0x4c)
1c001fa4:	67fd75b0 	bge	$r13,$r16,-652(0x3fd74) # 1c001d18 <shell15_main+0x1368>
1c001fa8:	2881407f 	ld.w	$r31,$r3,80(0x50)
1c001fac:	2880e069 	ld.w	$r9,$r3,56(0x38)
1c001fb0:	28815068 	ld.w	$r8,$r3,84(0x54)
1c001fb4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001fb8:	58016105 	beq	$r8,$r5,352(0x160) # 1c002118 <shell15_main+0x1768>
1c001fbc:	02800810 	addi.w	$r16,$r0,2(0x2)
1c001fc0:	58018110 	beq	$r8,$r16,384(0x180) # 1c002140 <shell15_main+0x1790>
1c001fc4:	2881306f 	ld.w	$r15,$r3,76(0x4c)
1c001fc8:	028005f4 	addi.w	$r20,$r15,1(0x1)
1c001fcc:	29813074 	st.w	$r20,$r3,76(0x4c)
1c001fd0:	53ebf3ff 	b	-5136(0xfffebf0) # 1c000bc0 <shell15_main+0x210>
1c001fd4:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001fd8:	28809069 	ld.w	$r9,$r3,36(0x24)
1c001fdc:	53ebe7ff 	b	-5148(0xfffebe4) # 1c000bc0 <shell15_main+0x210>
1c001fe0:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001fe4:	28809069 	ld.w	$r9,$r3,36(0x24)
1c001fe8:	53ebdbff 	b	-5160(0xfffebd8) # 1c000bc0 <shell15_main+0x210>
1c001fec:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001ff0:	28809069 	ld.w	$r9,$r3,36(0x24)
1c001ff4:	53ebcfff 	b	-5172(0xfffebcc) # 1c000bc0 <shell15_main+0x210>
1c001ff8:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001ffc:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002000:	53ebc3ff 	b	-5184(0xfffebc0) # 1c000bc0 <shell15_main+0x210>
1c002004:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002008:	28809069 	ld.w	$r9,$r3,36(0x24)
1c00200c:	53ebb7ff 	b	-5196(0xfffebb4) # 1c000bc0 <shell15_main+0x210>
1c002010:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002014:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002018:	53ebabff 	b	-5208(0xfffeba8) # 1c000bc0 <shell15_main+0x210>
1c00201c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002020:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002024:	53eb9fff 	b	-5220(0xfffeb9c) # 1c000bc0 <shell15_main+0x210>
1c002028:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c00202c:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002030:	53eb93ff 	b	-5232(0xfffeb90) # 1c000bc0 <shell15_main+0x210>
1c002034:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002038:	28809069 	ld.w	$r9,$r3,36(0x24)
1c00203c:	53eb87ff 	b	-5244(0xfffeb84) # 1c000bc0 <shell15_main+0x210>
1c002040:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002044:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002048:	53eb7bff 	b	-5256(0xfffeb78) # 1c000bc0 <shell15_main+0x210>
1c00204c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002050:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002054:	53eb6fff 	b	-5268(0xfffeb6c) # 1c000bc0 <shell15_main+0x210>
1c002058:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c00205c:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002060:	53eb63ff 	b	-5280(0xfffeb60) # 1c000bc0 <shell15_main+0x210>
1c002064:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002068:	28809069 	ld.w	$r9,$r3,36(0x24)
1c00206c:	53eb57ff 	b	-5292(0xfffeb54) # 1c000bc0 <shell15_main+0x210>
1c002070:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002074:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002078:	53eb4bff 	b	-5304(0xfffeb48) # 1c000bc0 <shell15_main+0x210>
1c00207c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002080:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002084:	53eb3fff 	b	-5316(0xfffeb3c) # 1c000bc0 <shell15_main+0x210>
1c002088:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c00208c:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002090:	53eb33ff 	b	-5328(0xfffeb30) # 1c000bc0 <shell15_main+0x210>
1c002094:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002098:	28809069 	ld.w	$r9,$r3,36(0x24)
1c00209c:	53eb27ff 	b	-5340(0xfffeb24) # 1c000bc0 <shell15_main+0x210>
1c0020a0:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020a4:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020a8:	53eb1bff 	b	-5352(0xfffeb18) # 1c000bc0 <shell15_main+0x210>
1c0020ac:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020b0:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020b4:	53eb0fff 	b	-5364(0xfffeb0c) # 1c000bc0 <shell15_main+0x210>
1c0020b8:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020bc:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020c0:	53eb03ff 	b	-5376(0xfffeb00) # 1c000bc0 <shell15_main+0x210>
1c0020c4:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020c8:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020cc:	53eaf7ff 	b	-5388(0xfffeaf4) # 1c000bc0 <shell15_main+0x210>
1c0020d0:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020d4:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020d8:	53eaebff 	b	-5400(0xfffeae8) # 1c000bc0 <shell15_main+0x210>
1c0020dc:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020e0:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020e4:	53eadfff 	b	-5412(0xfffeadc) # 1c000bc0 <shell15_main+0x210>
1c0020e8:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020ec:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020f0:	53ead3ff 	b	-5424(0xfffead0) # 1c000bc0 <shell15_main+0x210>
1c0020f4:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020f8:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020fc:	53eac7ff 	b	-5436(0xfffeac4) # 1c000bc0 <shell15_main+0x210>
1c002100:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002104:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002108:	53eabbff 	b	-5448(0xfffeab8) # 1c000bc0 <shell15_main+0x210>
1c00210c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002110:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002114:	53eaafff 	b	-5460(0xfffeaac) # 1c000bc0 <shell15_main+0x210>
1c002118:	28811071 	ld.w	$r17,$r3,68(0x44)
1c00211c:	02800626 	addi.w	$r6,$r17,1(0x1)
1c002120:	29811066 	st.w	$r6,$r3,68(0x44)
1c002124:	53ea9fff 	b	-5476(0xfffea9c) # 1c000bc0 <shell15_main+0x210>
1c002128:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c00212c:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002130:	53ea93ff 	b	-5488(0xfffea90) # 1c000bc0 <shell15_main+0x210>
1c002134:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002138:	28809069 	ld.w	$r9,$r3,36(0x24)
1c00213c:	53ea87ff 	b	-5500(0xfffea84) # 1c000bc0 <shell15_main+0x210>
1c002140:	28812073 	ld.w	$r19,$r3,72(0x48)
1c002144:	02800672 	addi.w	$r18,$r19,1(0x1)
1c002148:	29812072 	st.w	$r18,$r3,72(0x48)
1c00214c:	53ea77ff 	b	-5516(0xfffea74) # 1c000bc0 <shell15_main+0x210>
1c002150:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002154:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002158:	53ea6bff 	b	-5528(0xfffea68) # 1c000bc0 <shell15_main+0x210>
1c00215c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002160:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002164:	53ea5fff 	b	-5540(0xfffea5c) # 1c000bc0 <shell15_main+0x210>
1c002168:	03400000 	andi	$r0,$r0,0x0
1c00216c:	03400000 	andi	$r0,$r0,0x0

1c002170 <shell15>:
shell15():
1c002170:	02bd0063 	addi.w	$r3,$r3,-192(0xf40)
1c002174:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002178:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c00217c:	02ba5084 	addi.w	$r4,$r4,-364(0xe94)
1c002180:	2982f061 	st.w	$r1,$r3,188(0xbc)
1c002184:	2981a06c 	st.w	$r12,$r3,104(0x68)
1c002188:	2982907b 	st.w	$r27,$r3,164(0xa4)
1c00218c:	2982e076 	st.w	$r22,$r3,184(0xb8)
1c002190:	2982d077 	st.w	$r23,$r3,180(0xb4)
1c002194:	2982c078 	st.w	$r24,$r3,176(0xb0)
1c002198:	2982b079 	st.w	$r25,$r3,172(0xac)
1c00219c:	2982a07a 	st.w	$r26,$r3,168(0xa8)
1c0021a0:	2982807c 	st.w	$r28,$r3,160(0xa0)
1c0021a4:	2982707d 	st.w	$r29,$r3,156(0x9c)
1c0021a8:	2982607e 	st.w	$r30,$r3,152(0x98)
1c0021ac:	2982507f 	st.w	$r31,$r3,148(0x94)
1c0021b0:	1c000ffb 	pcaddu12i	$r27,127(0x7f)
1c0021b4:	02aad37b 	addi.w	$r27,$r27,-1356(0xab4)
1c0021b8:	29814060 	st.w	$r0,$r3,80(0x50)
1c0021bc:	542f7400 	bl	12148(0x2f74) # 1c005130 <puts>
1c0021c0:	02800764 	addi.w	$r4,$r27,1(0x1)
1c0021c4:	29813064 	st.w	$r4,$r3,76(0x4c)
1c0021c8:	54336800 	bl	13160(0x3368) # 1c005530 <get_count>
1c0021cc:	29822064 	st.w	$r4,$r3,136(0x88)
1c0021d0:	54339000 	bl	13200(0x3390) # 1c005560 <get_count_my>
1c0021d4:	157f5fe5 	lu12i.w	$r5,-263425(0xbfaff)
1c0021d8:	03bc80a6 	ori	$r6,$r5,0xf20
1c0021dc:	288000c7 	ld.w	$r7,$r6,0
1c0021e0:	29823064 	st.w	$r4,$r3,140(0x8c)
1c0021e4:	5c169ce0 	bne	$r7,$r0,5788(0x169c) # 1c003880 <shell15+0x1710>
1c0021e8:	02802801 	addi.w	$r1,$r0,10(0xa)
1c0021ec:	29812061 	st.w	$r1,$r3,72(0x48)
1c0021f0:	03a60006 	ori	$r6,$r0,0x980
1c0021f4:	00150005 	move	$r5,$r0
1c0021f8:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c0021fc:	0283b084 	addi.w	$r4,$r4,236(0xec)
1c002200:	54320000 	bl	12800(0x3200) # 1c005400 <memset>
1c002204:	1c000fe8 	pcaddu12i	$r8,127(0x7f)
1c002208:	02b41108 	addi.w	$r8,$r8,-764(0xd04)
1c00220c:	28800109 	ld.w	$r9,$r8,0
1c002210:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c002214:	29807069 	st.w	$r9,$r3,28(0x1c)
1c002218:	64122da9 	bge	$r13,$r9,4652(0x122c) # 1c003444 <shell15+0x12d4>
1c00221c:	1c000fea 	pcaddu12i	$r10,127(0x7f)
1c002220:	02b3c14a 	addi.w	$r10,$r10,-784(0xcf0)
1c002224:	28800151 	ld.w	$r17,$r10,0
1c002228:	1c000fcb 	pcaddu12i	$r11,126(0x7e)
1c00222c:	0281f16b 	addi.w	$r11,$r11,124(0x7c)
1c002230:	2880016e 	ld.w	$r14,$r11,0
1c002234:	2880116f 	ld.w	$r15,$r11,4(0x4)
1c002238:	2980e071 	st.w	$r17,$r3,56(0x38)
1c00223c:	28802173 	ld.w	$r19,$r11,8(0x8)
1c002240:	28803176 	ld.w	$r22,$r11,12(0xc)
1c002244:	28804172 	ld.w	$r18,$r11,16(0x10)
1c002248:	28805177 	ld.w	$r23,$r11,20(0x14)
1c00224c:	28806174 	ld.w	$r20,$r11,24(0x18)
1c002250:	28807178 	ld.w	$r24,$r11,28(0x1c)
1c002254:	2880817e 	ld.w	$r30,$r11,32(0x20)
1c002258:	28809179 	ld.w	$r25,$r11,36(0x24)
1c00225c:	2880a164 	ld.w	$r4,$r11,40(0x28)
1c002260:	2880b17a 	ld.w	$r26,$r11,44(0x2c)
1c002264:	2880c167 	ld.w	$r7,$r11,48(0x30)
1c002268:	2880d17c 	ld.w	$r28,$r11,52(0x34)
1c00226c:	2880e170 	ld.w	$r16,$r11,56(0x38)
1c002270:	2880f17d 	ld.w	$r29,$r11,60(0x3c)
1c002274:	640319b1 	bge	$r13,$r17,792(0x318) # 1c00258c <shell15+0x41c>
1c002278:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00227c:	0280541f 	addi.w	$r31,$r0,21(0x15)
1c002280:	02bfac0c 	addi.w	$r12,$r0,-21(0xfeb)
1c002284:	001c7e86 	mul.w	$r6,$r20,$r31
1c002288:	0010476b 	add.w	$r11,$r27,$r17
1c00228c:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c002290:	001c3034 	mul.w	$r20,$r1,$r12
1c002294:	001c7dca 	mul.w	$r10,$r14,$r31
1c002298:	001c7e45 	mul.w	$r5,$r18,$r31
1c00229c:	0280b812 	addi.w	$r18,$r0,46(0x2e)
1c0022a0:	001c7e6e 	mul.w	$r14,$r19,$r31
1c0022a4:	001c7fc9 	mul.w	$r9,$r30,$r31
1c0022a8:	001c7cf3 	mul.w	$r19,$r7,$r31
1c0022ac:	001c7c88 	mul.w	$r8,$r4,$r31
1c0022b0:	001c7e07 	mul.w	$r7,$r16,$r31
1c0022b4:	02bf5810 	addi.w	$r16,$r0,-42(0xfd6)
1c0022b8:	02800b7f 	addi.w	$r31,$r27,2(0x2)
1c0022bc:	03400000 	andi	$r0,$r0,0x0
1c0022c0:	001143ec 	sub.w	$r12,$r31,$r16
1c0022c4:	00114164 	sub.w	$r4,$r11,$r16
1c0022c8:	0011309e 	sub.w	$r30,$r4,$r12
1c0022cc:	03400fd1 	andi	$r17,$r30,0x3
1c0022d0:	58007220 	beq	$r17,$r0,112(0x70) # 1c002340 <shell15+0x1d0>
1c0022d4:	02800401 	addi.w	$r1,$r0,1(0x1)
1c0022d8:	58002621 	beq	$r17,$r1,36(0x24) # 1c0022fc <shell15+0x18c>
1c0022dc:	0280081e 	addi.w	$r30,$r0,2(0x2)
1c0022e0:	5800123e 	beq	$r17,$r30,16(0x10) # 1c0022f0 <shell15+0x180>
1c0022e4:	28000181 	ld.b	$r1,$r12,0
1c0022e8:	580f802d 	beq	$r1,$r13,3968(0xf80) # 1c003268 <shell15+0x10f8>
1c0022ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022f0:	28000181 	ld.b	$r1,$r12,0
1c0022f4:	580eec2d 	beq	$r1,$r13,3820(0xeec) # 1c0031e0 <shell15+0x1070>
1c0022f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022fc:	28000191 	ld.b	$r17,$r12,0
1c002300:	5811722d 	beq	$r17,$r13,4464(0x1170) # 1c003470 <shell15+0x1300>
1c002304:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002308:	5c003984 	bne	$r12,$r4,56(0x38) # 1c002340 <shell15+0x1d0>
1c00230c:	50027800 	b	632(0x278) # 1c002584 <shell15+0x414>
1c002310:	28000581 	ld.b	$r1,$r12,1(0x1)
1c002314:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002318:	5800c02d 	beq	$r1,$r13,192(0xc0) # 1c0023d8 <shell15+0x268>
1c00231c:	28000591 	ld.b	$r17,$r12,1(0x1)
1c002320:	0280059e 	addi.w	$r30,$r12,1(0x1)
1c002324:	5801462d 	beq	$r17,$r13,324(0x144) # 1c002468 <shell15+0x2f8>
1c002328:	28000991 	ld.b	$r17,$r12,2(0x2)
1c00232c:	0280099e 	addi.w	$r30,$r12,2(0x2)
1c002330:	5801ca2d 	beq	$r17,$r13,456(0x1c8) # 1c0024f8 <shell15+0x388>
1c002334:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c002338:	58024d84 	beq	$r12,$r4,588(0x24c) # 1c002584 <shell15+0x414>
1c00233c:	03400000 	andi	$r0,$r0,0x0
1c002340:	2800019e 	ld.b	$r30,$r12,0
1c002344:	5fffcfcd 	bne	$r30,$r13,-52(0x3ffcc) # 1c002310 <shell15+0x1a0>
1c002348:	00102981 	add.w	$r1,$r12,$r10
1c00234c:	00103c31 	add.w	$r17,$r1,$r15
1c002350:	2800023e 	ld.b	$r30,$r17,0
1c002354:	5bffbfcd 	beq	$r30,$r13,-68(0x3ffbc) # 1c002310 <shell15+0x1a0>
1c002358:	00103981 	add.w	$r1,$r12,$r14
1c00235c:	00105831 	add.w	$r17,$r1,$r22
1c002360:	2800023e 	ld.b	$r30,$r17,0
1c002364:	5bffafcd 	beq	$r30,$r13,-84(0x3ffac) # 1c002310 <shell15+0x1a0>
1c002368:	00101581 	add.w	$r1,$r12,$r5
1c00236c:	00105c31 	add.w	$r17,$r1,$r23
1c002370:	2800023e 	ld.b	$r30,$r17,0
1c002374:	5bff9fcd 	beq	$r30,$r13,-100(0x3ff9c) # 1c002310 <shell15+0x1a0>
1c002378:	00101981 	add.w	$r1,$r12,$r6
1c00237c:	00106031 	add.w	$r17,$r1,$r24
1c002380:	2800023e 	ld.b	$r30,$r17,0
1c002384:	5bff8fcd 	beq	$r30,$r13,-116(0x3ff8c) # 1c002310 <shell15+0x1a0>
1c002388:	00102581 	add.w	$r1,$r12,$r9
1c00238c:	00106431 	add.w	$r17,$r1,$r25
1c002390:	2800023e 	ld.b	$r30,$r17,0
1c002394:	5bff7fcd 	beq	$r30,$r13,-132(0x3ff7c) # 1c002310 <shell15+0x1a0>
1c002398:	00102181 	add.w	$r1,$r12,$r8
1c00239c:	00106831 	add.w	$r17,$r1,$r26
1c0023a0:	2800023e 	ld.b	$r30,$r17,0
1c0023a4:	5bff6fcd 	beq	$r30,$r13,-148(0x3ff6c) # 1c002310 <shell15+0x1a0>
1c0023a8:	00104d81 	add.w	$r1,$r12,$r19
1c0023ac:	00107031 	add.w	$r17,$r1,$r28
1c0023b0:	2800023e 	ld.b	$r30,$r17,0
1c0023b4:	5bff5fcd 	beq	$r30,$r13,-164(0x3ff5c) # 1c002310 <shell15+0x1a0>
1c0023b8:	00101d81 	add.w	$r1,$r12,$r7
1c0023bc:	00107431 	add.w	$r17,$r1,$r29
1c0023c0:	2800023e 	ld.b	$r30,$r17,0
1c0023c4:	5bff4fcd 	beq	$r30,$r13,-180(0x3ff4c) # 1c002310 <shell15+0x1a0>
1c0023c8:	28000581 	ld.b	$r1,$r12,1(0x1)
1c0023cc:	29000192 	st.b	$r18,$r12,0
1c0023d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023d4:	5fff482d 	bne	$r1,$r13,-184(0x3ff48) # 1c00231c <shell15+0x1ac>
1c0023d8:	00102991 	add.w	$r17,$r12,$r10
1c0023dc:	00103e3e 	add.w	$r30,$r17,$r15
1c0023e0:	280003c1 	ld.b	$r1,$r30,0
1c0023e4:	5bff382d 	beq	$r1,$r13,-200(0x3ff38) # 1c00231c <shell15+0x1ac>
1c0023e8:	00103991 	add.w	$r17,$r12,$r14
1c0023ec:	00105a3e 	add.w	$r30,$r17,$r22
1c0023f0:	280003c1 	ld.b	$r1,$r30,0
1c0023f4:	5bff282d 	beq	$r1,$r13,-216(0x3ff28) # 1c00231c <shell15+0x1ac>
1c0023f8:	00101591 	add.w	$r17,$r12,$r5
1c0023fc:	00105e3e 	add.w	$r30,$r17,$r23
1c002400:	280003c1 	ld.b	$r1,$r30,0
1c002404:	5bff182d 	beq	$r1,$r13,-232(0x3ff18) # 1c00231c <shell15+0x1ac>
1c002408:	00101991 	add.w	$r17,$r12,$r6
1c00240c:	0010623e 	add.w	$r30,$r17,$r24
1c002410:	280003c1 	ld.b	$r1,$r30,0
1c002414:	5bff082d 	beq	$r1,$r13,-248(0x3ff08) # 1c00231c <shell15+0x1ac>
1c002418:	00102591 	add.w	$r17,$r12,$r9
1c00241c:	0010663e 	add.w	$r30,$r17,$r25
1c002420:	280003c1 	ld.b	$r1,$r30,0
1c002424:	5bfef82d 	beq	$r1,$r13,-264(0x3fef8) # 1c00231c <shell15+0x1ac>
1c002428:	00102191 	add.w	$r17,$r12,$r8
1c00242c:	00106a3e 	add.w	$r30,$r17,$r26
1c002430:	280003c1 	ld.b	$r1,$r30,0
1c002434:	5bfee82d 	beq	$r1,$r13,-280(0x3fee8) # 1c00231c <shell15+0x1ac>
1c002438:	00104d91 	add.w	$r17,$r12,$r19
1c00243c:	0010723e 	add.w	$r30,$r17,$r28
1c002440:	280003c1 	ld.b	$r1,$r30,0
1c002444:	5bfed82d 	beq	$r1,$r13,-296(0x3fed8) # 1c00231c <shell15+0x1ac>
1c002448:	00101d91 	add.w	$r17,$r12,$r7
1c00244c:	0010763e 	add.w	$r30,$r17,$r29
1c002450:	280003c1 	ld.b	$r1,$r30,0
1c002454:	5bfec82d 	beq	$r1,$r13,-312(0x3fec8) # 1c00231c <shell15+0x1ac>
1c002458:	28000591 	ld.b	$r17,$r12,1(0x1)
1c00245c:	29000192 	st.b	$r18,$r12,0
1c002460:	0280059e 	addi.w	$r30,$r12,1(0x1)
1c002464:	5ffec62d 	bne	$r17,$r13,-316(0x3fec4) # 1c002328 <shell15+0x1b8>
1c002468:	00102bc1 	add.w	$r1,$r30,$r10
1c00246c:	00103c31 	add.w	$r17,$r1,$r15
1c002470:	28000221 	ld.b	$r1,$r17,0
1c002474:	5bfeb42d 	beq	$r1,$r13,-332(0x3feb4) # 1c002328 <shell15+0x1b8>
1c002478:	00103bd1 	add.w	$r17,$r30,$r14
1c00247c:	00105a21 	add.w	$r1,$r17,$r22
1c002480:	28000031 	ld.b	$r17,$r1,0
1c002484:	5bfea62d 	beq	$r17,$r13,-348(0x3fea4) # 1c002328 <shell15+0x1b8>
1c002488:	001017c1 	add.w	$r1,$r30,$r5
1c00248c:	00105c31 	add.w	$r17,$r1,$r23
1c002490:	28000221 	ld.b	$r1,$r17,0
1c002494:	5bfe942d 	beq	$r1,$r13,-364(0x3fe94) # 1c002328 <shell15+0x1b8>
1c002498:	00101bd1 	add.w	$r17,$r30,$r6
1c00249c:	00106221 	add.w	$r1,$r17,$r24
1c0024a0:	28000031 	ld.b	$r17,$r1,0
1c0024a4:	5bfe862d 	beq	$r17,$r13,-380(0x3fe84) # 1c002328 <shell15+0x1b8>
1c0024a8:	001027c1 	add.w	$r1,$r30,$r9
1c0024ac:	00106431 	add.w	$r17,$r1,$r25
1c0024b0:	28000221 	ld.b	$r1,$r17,0
1c0024b4:	5bfe742d 	beq	$r1,$r13,-396(0x3fe74) # 1c002328 <shell15+0x1b8>
1c0024b8:	001023d1 	add.w	$r17,$r30,$r8
1c0024bc:	00106a21 	add.w	$r1,$r17,$r26
1c0024c0:	28000031 	ld.b	$r17,$r1,0
1c0024c4:	5bfe662d 	beq	$r17,$r13,-412(0x3fe64) # 1c002328 <shell15+0x1b8>
1c0024c8:	00104fc1 	add.w	$r1,$r30,$r19
1c0024cc:	00107031 	add.w	$r17,$r1,$r28
1c0024d0:	28000221 	ld.b	$r1,$r17,0
1c0024d4:	5bfe542d 	beq	$r1,$r13,-428(0x3fe54) # 1c002328 <shell15+0x1b8>
1c0024d8:	00101fde 	add.w	$r30,$r30,$r7
1c0024dc:	001077d1 	add.w	$r17,$r30,$r29
1c0024e0:	28000221 	ld.b	$r1,$r17,0
1c0024e4:	5bfe442d 	beq	$r1,$r13,-444(0x3fe44) # 1c002328 <shell15+0x1b8>
1c0024e8:	28000991 	ld.b	$r17,$r12,2(0x2)
1c0024ec:	29000592 	st.b	$r18,$r12,1(0x1)
1c0024f0:	0280099e 	addi.w	$r30,$r12,2(0x2)
1c0024f4:	5ffe422d 	bne	$r17,$r13,-448(0x3fe40) # 1c002334 <shell15+0x1c4>
1c0024f8:	00102bc1 	add.w	$r1,$r30,$r10
1c0024fc:	00103c31 	add.w	$r17,$r1,$r15
1c002500:	28000221 	ld.b	$r1,$r17,0
1c002504:	5bfe302d 	beq	$r1,$r13,-464(0x3fe30) # 1c002334 <shell15+0x1c4>
1c002508:	00103bd1 	add.w	$r17,$r30,$r14
1c00250c:	00105a21 	add.w	$r1,$r17,$r22
1c002510:	28000031 	ld.b	$r17,$r1,0
1c002514:	5bfe222d 	beq	$r17,$r13,-480(0x3fe20) # 1c002334 <shell15+0x1c4>
1c002518:	001017c1 	add.w	$r1,$r30,$r5
1c00251c:	00105c31 	add.w	$r17,$r1,$r23
1c002520:	28000221 	ld.b	$r1,$r17,0
1c002524:	5bfe102d 	beq	$r1,$r13,-496(0x3fe10) # 1c002334 <shell15+0x1c4>
1c002528:	00101bd1 	add.w	$r17,$r30,$r6
1c00252c:	00106221 	add.w	$r1,$r17,$r24
1c002530:	28000031 	ld.b	$r17,$r1,0
1c002534:	5bfe022d 	beq	$r17,$r13,-512(0x3fe00) # 1c002334 <shell15+0x1c4>
1c002538:	001027c1 	add.w	$r1,$r30,$r9
1c00253c:	00106431 	add.w	$r17,$r1,$r25
1c002540:	28000221 	ld.b	$r1,$r17,0
1c002544:	5bfdf02d 	beq	$r1,$r13,-528(0x3fdf0) # 1c002334 <shell15+0x1c4>
1c002548:	001023d1 	add.w	$r17,$r30,$r8
1c00254c:	00106a21 	add.w	$r1,$r17,$r26
1c002550:	28000031 	ld.b	$r17,$r1,0
1c002554:	5bfde22d 	beq	$r17,$r13,-544(0x3fde0) # 1c002334 <shell15+0x1c4>
1c002558:	00104fc1 	add.w	$r1,$r30,$r19
1c00255c:	00107031 	add.w	$r17,$r1,$r28
1c002560:	28000221 	ld.b	$r1,$r17,0
1c002564:	5bfdd02d 	beq	$r1,$r13,-560(0x3fdd0) # 1c002334 <shell15+0x1c4>
1c002568:	00101fde 	add.w	$r30,$r30,$r7
1c00256c:	001077d1 	add.w	$r17,$r30,$r29
1c002570:	28000221 	ld.b	$r1,$r17,0
1c002574:	5bfdc02d 	beq	$r1,$r13,-576(0x3fdc0) # 1c002334 <shell15+0x1c4>
1c002578:	29000992 	st.b	$r18,$r12,2(0x2)
1c00257c:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c002580:	5ffdc184 	bne	$r12,$r4,-576(0x3fdc0) # 1c002340 <shell15+0x1d0>
1c002584:	02bfae10 	addi.w	$r16,$r16,-21(0xfeb)
1c002588:	5ffd3a14 	bne	$r16,$r20,-712(0x3fd38) # 1c0022c0 <shell15+0x150>
1c00258c:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c002590:	2880e06f 	ld.w	$r15,$r3,56(0x38)
1c002594:	1c000fde 	pcaddu12i	$r30,126(0x7e)
1c002598:	02b543de 	addi.w	$r30,$r30,-688(0xd50)
1c00259c:	02bfff5c 	addi.w	$r28,$r26,-1(0xfff)
1c0025a0:	02bffdf6 	addi.w	$r22,$r15,-1(0xfff)
1c0025a4:	028263d8 	addi.w	$r24,$r30,152(0x98)
1c0025a8:	02805419 	addi.w	$r25,$r0,21(0x15)
1c0025ac:	02800c17 	addi.w	$r23,$r0,3(0x3)
1c0025b0:	02800801 	addi.w	$r1,$r0,2(0x2)
1c0025b4:	29808076 	st.w	$r22,$r3,32(0x20)
1c0025b8:	29809078 	st.w	$r24,$r3,36(0x24)
1c0025bc:	2981107c 	st.w	$r28,$r3,68(0x44)
1c0025c0:	29803077 	st.w	$r23,$r3,12(0xc)
1c0025c4:	2980b060 	st.w	$r0,$r3,44(0x2c)
1c0025c8:	2980d060 	st.w	$r0,$r3,52(0x34)
1c0025cc:	2980c060 	st.w	$r0,$r3,48(0x30)
1c0025d0:	02808c1a 	addi.w	$r26,$r0,35(0x23)
1c0025d4:	1c000ffd 	pcaddu12i	$r29,127(0x7f)
1c0025d8:	28a503bd 	ld.w	$r29,$r29,-1728(0x940)
1c0025dc:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c0025e0:	28a4f39c 	ld.w	$r28,$r28,-1732(0x93c)
1c0025e4:	00150036 	move	$r22,$r1
1c0025e8:	00150338 	move	$r24,$r25
1c0025ec:	03400000 	andi	$r0,$r0,0x0
1c0025f0:	2880806e 	ld.w	$r14,$r3,32(0x20)
1c0025f4:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c0025f8:	640cf94e 	bge	$r10,$r14,3320(0xcf8) # 1c0032f0 <shell15+0x1180>
1c0025fc:	0280540b 	addi.w	$r11,$r0,21(0x15)
1c002600:	028006c8 	addi.w	$r8,$r22,1(0x1)
1c002604:	001c2ed3 	mul.w	$r19,$r22,$r11
1c002608:	02bfac06 	addi.w	$r6,$r0,-21(0xfeb)
1c00260c:	2880907f 	ld.w	$r31,$r3,36(0x24)
1c002610:	02806367 	addi.w	$r7,$r27,24(0x18)
1c002614:	02800411 	addi.w	$r17,$r0,1(0x1)
1c002618:	001060f4 	add.w	$r20,$r7,$r24
1c00261c:	0280ab04 	addi.w	$r4,$r24,42(0x2a)
1c002620:	00115a2f 	sub.w	$r15,$r17,$r22
1c002624:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002628:	02800812 	addi.w	$r18,$r0,2(0x2)
1c00262c:	2980407f 	st.w	$r31,$r3,16(0x10)
1c002630:	29802076 	st.w	$r22,$r3,8(0x8)
1c002634:	2980f068 	st.w	$r8,$r3,60(0x3c)
1c002638:	2980506d 	st.w	$r13,$r3,20(0x14)
1c00263c:	02800817 	addi.w	$r23,$r0,2(0x2)
1c002640:	29818064 	st.w	$r4,$r3,96(0x60)
1c002644:	001501ea 	move	$r10,$r15
1c002648:	001c1ac9 	mul.w	$r9,$r22,$r6
1c00264c:	00104f6c 	add.w	$r12,$r27,$r19
1c002650:	00150316 	move	$r22,$r24
1c002654:	2981006c 	st.w	$r12,$r3,64(0x40)
1c002658:	00150258 	move	$r24,$r18
1c00265c:	0015029f 	move	$r31,$r20
1c002660:	001c2d10 	mul.w	$r16,$r8,$r11
1c002664:	29817069 	st.w	$r9,$r3,92(0x5c)
1c002668:	29819070 	st.w	$r16,$r3,100(0x64)
1c00266c:	50003000 	b	48(0x30) # 1c00269c <shell15+0x52c>
1c002670:	28804068 	ld.w	$r8,$r3,16(0x10)
1c002674:	28805079 	ld.w	$r25,$r3,20(0x14)
1c002678:	28806078 	ld.w	$r24,$r3,24(0x18)
1c00267c:	28808070 	ld.w	$r16,$r3,32(0x20)
1c002680:	02801109 	addi.w	$r9,$r8,4(0x4)
1c002684:	02800721 	addi.w	$r1,$r25,1(0x1)
1c002688:	29804069 	st.w	$r9,$r3,16(0x10)
1c00268c:	29805061 	st.w	$r1,$r3,20(0x14)
1c002690:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c002694:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c002698:	640dcf10 	bge	$r24,$r16,3532(0xdcc) # 1c003464 <shell15+0x12f4>
1c00269c:	283ffff9 	ld.b	$r25,$r31,-1(0xfff)
1c0026a0:	02800701 	addi.w	$r1,$r24,1(0x1)
1c0026a4:	29806061 	st.w	$r1,$r3,24(0x18)
1c0026a8:	29815079 	st.w	$r25,$r3,84(0x54)
1c0026ac:	0280b80e 	addi.w	$r14,$r0,46(0x2e)
1c0026b0:	5fffc32e 	bne	$r25,$r14,-64(0x3ffc0) # 1c002670 <shell15+0x500>
1c0026b4:	280003e5 	ld.b	$r5,$r31,0
1c0026b8:	5fffb8ba 	bne	$r5,$r26,-72(0x3ffb8) # 1c002670 <shell15+0x500>
1c0026bc:	28804066 	ld.w	$r6,$r3,16(0x10)
1c0026c0:	288020c9 	ld.w	$r9,$r6,8(0x8)
1c0026c4:	5fffad20 	bne	$r9,$r0,-84(0x3ffac) # 1c002670 <shell15+0x500>
1c0026c8:	28808068 	ld.w	$r8,$r3,32(0x20)
1c0026cc:	28805073 	ld.w	$r19,$r3,20(0x14)
1c0026d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0026d4:	64014668 	bge	$r19,$r8,324(0x144) # 1c002818 <shell15+0x6a8>
1c0026d8:	280007e7 	ld.b	$r7,$r31,1(0x1)
1c0026dc:	5c013cfa 	bne	$r7,$r26,316(0x13c) # 1c002818 <shell15+0x6a8>
1c0026e0:	2880e074 	ld.w	$r20,$r3,56(0x38)
1c0026e4:	02bfffed 	addi.w	$r13,$r31,-1(0xfff)
1c0026e8:	00114e92 	sub.w	$r18,$r20,$r19
1c0026ec:	02bffa50 	addi.w	$r16,$r18,-2(0xffe)
1c0026f0:	03401e04 	andi	$r4,$r16,0x7
1c0026f4:	58009c80 	beq	$r4,$r0,156(0x9c) # 1c002790 <shell15+0x620>
1c0026f8:	28000bf1 	ld.b	$r17,$r31,2(0x2)
1c0026fc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002700:	5c011a3a 	bne	$r17,$r26,280(0x118) # 1c002818 <shell15+0x6a8>
1c002704:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c002708:	5800888f 	beq	$r4,$r15,136(0x88) # 1c002790 <shell15+0x620>
1c00270c:	5800748c 	beq	$r4,$r12,116(0x74) # 1c002780 <shell15+0x610>
1c002710:	02800c19 	addi.w	$r25,$r0,3(0x3)
1c002714:	58005c99 	beq	$r4,$r25,92(0x5c) # 1c002770 <shell15+0x600>
1c002718:	02801001 	addi.w	$r1,$r0,4(0x4)
1c00271c:	58004481 	beq	$r4,$r1,68(0x44) # 1c002760 <shell15+0x5f0>
1c002720:	0280140e 	addi.w	$r14,$r0,5(0x5)
1c002724:	58002c8e 	beq	$r4,$r14,44(0x2c) # 1c002750 <shell15+0x5e0>
1c002728:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00272c:	58001485 	beq	$r4,$r5,20(0x14) # 1c002740 <shell15+0x5d0>
1c002730:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002734:	001031a6 	add.w	$r6,$r13,$r12
1c002738:	280004c8 	ld.b	$r8,$r6,1(0x1)
1c00273c:	5c00dd1a 	bne	$r8,$r26,220(0xdc) # 1c002818 <shell15+0x6a8>
1c002740:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002744:	001031b3 	add.w	$r19,$r13,$r12
1c002748:	28000667 	ld.b	$r7,$r19,1(0x1)
1c00274c:	5c00ccfa 	bne	$r7,$r26,204(0xcc) # 1c002818 <shell15+0x6a8>
1c002750:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002754:	001031b4 	add.w	$r20,$r13,$r12
1c002758:	28000690 	ld.b	$r16,$r20,1(0x1)
1c00275c:	5c00be1a 	bne	$r16,$r26,188(0xbc) # 1c002818 <shell15+0x6a8>
1c002760:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002764:	001031a4 	add.w	$r4,$r13,$r12
1c002768:	28000491 	ld.b	$r17,$r4,1(0x1)
1c00276c:	5c00ae3a 	bne	$r17,$r26,172(0xac) # 1c002818 <shell15+0x6a8>
1c002770:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002774:	001031af 	add.w	$r15,$r13,$r12
1c002778:	280005f9 	ld.b	$r25,$r15,1(0x1)
1c00277c:	5c009f3a 	bne	$r25,$r26,156(0x9c) # 1c002818 <shell15+0x6a8>
1c002780:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002784:	001031a1 	add.w	$r1,$r13,$r12
1c002788:	2800042e 	ld.b	$r14,$r1,1(0x1)
1c00278c:	5c008dda 	bne	$r14,$r26,140(0x8c) # 1c002818 <shell15+0x6a8>
1c002790:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002794:	001031a5 	add.w	$r5,$r13,$r12
1c002798:	00150186 	move	$r6,$r12
1c00279c:	58007d92 	beq	$r12,$r18,124(0x7c) # 1c002818 <shell15+0x6a8>
1c0027a0:	280004a8 	ld.b	$r8,$r5,1(0x1)
1c0027a4:	5c00751a 	bne	$r8,$r26,116(0x74) # 1c002818 <shell15+0x6a8>
1c0027a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0027ac:	001031b3 	add.w	$r19,$r13,$r12
1c0027b0:	28000667 	ld.b	$r7,$r19,1(0x1)
1c0027b4:	5c0064fa 	bne	$r7,$r26,100(0x64) # 1c002818 <shell15+0x6a8>
1c0027b8:	028008cc 	addi.w	$r12,$r6,2(0x2)
1c0027bc:	001031b4 	add.w	$r20,$r13,$r12
1c0027c0:	28000690 	ld.b	$r16,$r20,1(0x1)
1c0027c4:	5c00561a 	bne	$r16,$r26,84(0x54) # 1c002818 <shell15+0x6a8>
1c0027c8:	02800ccc 	addi.w	$r12,$r6,3(0x3)
1c0027cc:	001031a4 	add.w	$r4,$r13,$r12
1c0027d0:	28000491 	ld.b	$r17,$r4,1(0x1)
1c0027d4:	5c00463a 	bne	$r17,$r26,68(0x44) # 1c002818 <shell15+0x6a8>
1c0027d8:	028010cc 	addi.w	$r12,$r6,4(0x4)
1c0027dc:	001031af 	add.w	$r15,$r13,$r12
1c0027e0:	280005f9 	ld.b	$r25,$r15,1(0x1)
1c0027e4:	5c00373a 	bne	$r25,$r26,52(0x34) # 1c002818 <shell15+0x6a8>
1c0027e8:	028014cc 	addi.w	$r12,$r6,5(0x5)
1c0027ec:	001031a1 	add.w	$r1,$r13,$r12
1c0027f0:	2800042e 	ld.b	$r14,$r1,1(0x1)
1c0027f4:	5c0025da 	bne	$r14,$r26,36(0x24) # 1c002818 <shell15+0x6a8>
1c0027f8:	028018cc 	addi.w	$r12,$r6,6(0x6)
1c0027fc:	001031a5 	add.w	$r5,$r13,$r12
1c002800:	280004a8 	ld.b	$r8,$r5,1(0x1)
1c002804:	5c00151a 	bne	$r8,$r26,20(0x14) # 1c002818 <shell15+0x6a8>
1c002808:	02801ccc 	addi.w	$r12,$r6,7(0x7)
1c00280c:	001031a6 	add.w	$r6,$r13,$r12
1c002810:	280004d3 	ld.b	$r19,$r6,1(0x1)
1c002814:	5bff7e7a 	beq	$r19,$r26,-132(0x3ff7c) # 1c002790 <shell15+0x620>
1c002818:	28803072 	ld.w	$r18,$r3,12(0xc)
1c00281c:	28811067 	ld.w	$r7,$r3,68(0x44)
1c002820:	0015024e 	move	$r14,$r18
1c002824:	67fe4e47 	bge	$r18,$r7,-436(0x3fe4c) # 1c002670 <shell15+0x500>
1c002828:	2881706d 	ld.w	$r13,$r3,92(0x5c)
1c00282c:	28818070 	ld.w	$r16,$r3,96(0x60)
1c002830:	001037f4 	add.w	$r20,$r31,$r13
1c002834:	00104284 	add.w	$r4,$r20,$r16
1c002838:	28000091 	ld.b	$r17,$r4,0
1c00283c:	001503ed 	move	$r13,$r31
1c002840:	5ffe323a 	bne	$r17,$r26,-464(0x3fe30) # 1c002670 <shell15+0x500>
1c002844:	00144819 	nor	$r25,$r0,$r18
1c002848:	00101f21 	add.w	$r1,$r25,$r7
1c00284c:	03401c25 	andi	$r5,$r1,0x7
1c002850:	5800c0a0 	beq	$r5,$r0,192(0xc0) # 1c002910 <shell15+0x7a0>
1c002854:	028057ed 	addi.w	$r13,$r31,21(0x15)
1c002858:	280055a8 	ld.b	$r8,$r13,21(0x15)
1c00285c:	00104952 	add.w	$r18,$r10,$r18
1c002860:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c002864:	5c013d1a 	bne	$r8,$r26,316(0x13c) # 1c0029a0 <shell15+0x830>
1c002868:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00286c:	5800a4a6 	beq	$r5,$r6,164(0xa4) # 1c002910 <shell15+0x7a0>
1c002870:	02800813 	addi.w	$r19,$r0,2(0x2)
1c002874:	580088b3 	beq	$r5,$r19,136(0x88) # 1c0028fc <shell15+0x78c>
1c002878:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c00287c:	58006cb2 	beq	$r5,$r18,108(0x6c) # 1c0028e8 <shell15+0x778>
1c002880:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002884:	580050a7 	beq	$r5,$r7,80(0x50) # 1c0028d4 <shell15+0x764>
1c002888:	02801414 	addi.w	$r20,$r0,5(0x5)
1c00288c:	580034b4 	beq	$r5,$r20,52(0x34) # 1c0028c0 <shell15+0x750>
1c002890:	02801810 	addi.w	$r16,$r0,6(0x6)
1c002894:	580018b0 	beq	$r5,$r16,24(0x18) # 1c0028ac <shell15+0x73c>
1c002898:	2800a9a4 	ld.b	$r4,$r13,42(0x2a)
1c00289c:	00103952 	add.w	$r18,$r10,$r14
1c0028a0:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c0028a4:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0028a8:	5c00f89a 	bne	$r4,$r26,248(0xf8) # 1c0029a0 <shell15+0x830>
1c0028ac:	2800a9b1 	ld.b	$r17,$r13,42(0x2a)
1c0028b0:	00103952 	add.w	$r18,$r10,$r14
1c0028b4:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c0028b8:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0028bc:	5c00e63a 	bne	$r17,$r26,228(0xe4) # 1c0029a0 <shell15+0x830>
1c0028c0:	2800a9af 	ld.b	$r15,$r13,42(0x2a)
1c0028c4:	00103952 	add.w	$r18,$r10,$r14
1c0028c8:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c0028cc:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0028d0:	5c00d1fa 	bne	$r15,$r26,208(0xd0) # 1c0029a0 <shell15+0x830>
1c0028d4:	2800a9b9 	ld.b	$r25,$r13,42(0x2a)
1c0028d8:	00103952 	add.w	$r18,$r10,$r14
1c0028dc:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c0028e0:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0028e4:	5c00bf3a 	bne	$r25,$r26,188(0xbc) # 1c0029a0 <shell15+0x830>
1c0028e8:	2800a9a1 	ld.b	$r1,$r13,42(0x2a)
1c0028ec:	00103952 	add.w	$r18,$r10,$r14
1c0028f0:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c0028f4:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0028f8:	5c00a83a 	bne	$r1,$r26,168(0xa8) # 1c0029a0 <shell15+0x830>
1c0028fc:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002900:	280055a5 	ld.b	$r5,$r13,21(0x15)
1c002904:	00103952 	add.w	$r18,$r10,$r14
1c002908:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c00290c:	5c0094ba 	bne	$r5,$r26,148(0x94) # 1c0029a0 <shell15+0x830>
1c002910:	28811066 	ld.w	$r6,$r3,68(0x44)
1c002914:	028005c8 	addi.w	$r8,$r14,1(0x1)
1c002918:	00103952 	add.w	$r18,$r10,$r14
1c00291c:	028009c7 	addi.w	$r7,$r14,2(0x2)
1c002920:	02800dc4 	addi.w	$r4,$r14,3(0x3)
1c002924:	64007d06 	bge	$r8,$r6,124(0x7c) # 1c0029a0 <shell15+0x830>
1c002928:	2800a9af 	ld.b	$r15,$r13,42(0x2a)
1c00292c:	028011d4 	addi.w	$r20,$r14,4(0x4)
1c002930:	028015d3 	addi.w	$r19,$r14,5(0x5)
1c002934:	028019d1 	addi.w	$r17,$r14,6(0x6)
1c002938:	02801dd0 	addi.w	$r16,$r14,7(0x7)
1c00293c:	028021ce 	addi.w	$r14,$r14,8(0x8)
1c002940:	5c0061fa 	bne	$r15,$r26,96(0x60) # 1c0029a0 <shell15+0x830>
1c002944:	2800fdb9 	ld.b	$r25,$r13,63(0x3f)
1c002948:	00102152 	add.w	$r18,$r10,$r8
1c00294c:	5c00573a 	bne	$r25,$r26,84(0x54) # 1c0029a0 <shell15+0x830>
1c002950:	280151a1 	ld.b	$r1,$r13,84(0x54)
1c002954:	00101d52 	add.w	$r18,$r10,$r7
1c002958:	5c00483a 	bne	$r1,$r26,72(0x48) # 1c0029a0 <shell15+0x830>
1c00295c:	2801a5a5 	ld.b	$r5,$r13,105(0x69)
1c002960:	00101152 	add.w	$r18,$r10,$r4
1c002964:	5c003cba 	bne	$r5,$r26,60(0x3c) # 1c0029a0 <shell15+0x830>
1c002968:	2801f9a8 	ld.b	$r8,$r13,126(0x7e)
1c00296c:	00105152 	add.w	$r18,$r10,$r20
1c002970:	5c00311a 	bne	$r8,$r26,48(0x30) # 1c0029a0 <shell15+0x830>
1c002974:	28024da7 	ld.b	$r7,$r13,147(0x93)
1c002978:	00104d52 	add.w	$r18,$r10,$r19
1c00297c:	5c0024fa 	bne	$r7,$r26,36(0x24) # 1c0029a0 <shell15+0x830>
1c002980:	0282a1ad 	addi.w	$r13,$r13,168(0xa8)
1c002984:	280001a4 	ld.b	$r4,$r13,0
1c002988:	00104552 	add.w	$r18,$r10,$r17
1c00298c:	5c00149a 	bne	$r4,$r26,20(0x14) # 1c0029a0 <shell15+0x830>
1c002990:	280055a6 	ld.b	$r6,$r13,21(0x15)
1c002994:	00104152 	add.w	$r18,$r10,$r16
1c002998:	5bff78da 	beq	$r6,$r26,-136(0x3ff78) # 1c002910 <shell15+0x7a0>
1c00299c:	03400000 	andi	$r0,$r0,0x0
1c0029a0:	0040858f 	slli.w	$r15,$r12,0x1
1c0029a4:	001149f0 	sub.w	$r16,$r15,$r18
1c0029a8:	67fcc810 	bge	$r0,$r16,-824(0x3fcc8) # 1c002670 <shell15+0x500>
1c0029ac:	02bff414 	addi.w	$r20,$r0,-3(0xffd)
1c0029b0:	001c5193 	mul.w	$r19,$r12,$r20
1c0029b4:	00408651 	slli.w	$r17,$r18,0x1
1c0029b8:	00104e28 	add.w	$r8,$r17,$r19
1c0029bc:	67fcb408 	bge	$r0,$r8,-844(0x3fcb4) # 1c002670 <shell15+0x500>
1c0029c0:	00106181 	add.w	$r1,$r12,$r24
1c0029c4:	02800427 	addi.w	$r7,$r1,1(0x1)
1c0029c8:	600e3cf7 	blt	$r7,$r23,3644(0xe3c) # 1c003804 <shell15+0x1694>
1c0029cc:	283fabe5 	ld.b	$r5,$r31,-22(0xfea)
1c0029d0:	5bfca0ba 	beq	$r5,$r26,-864(0x3fca0) # 1c002670 <shell15+0x500>
1c0029d4:	2880206d 	ld.w	$r13,$r3,8(0x8)
1c0029d8:	001049a4 	add.w	$r4,$r13,$r18
1c0029dc:	001c2c86 	mul.w	$r6,$r4,$r11
1c0029e0:	2980a064 	st.w	$r4,$r3,40(0x28)
1c0029e4:	00101b72 	add.w	$r18,$r27,$r6
1c0029e8:	0010624f 	add.w	$r15,$r18,$r24
1c0029ec:	280001f4 	ld.b	$r20,$r15,0
1c0029f0:	5bfc829a 	beq	$r20,$r26,-896(0x3fc80) # 1c002670 <shell15+0x500>
1c0029f4:	28813071 	ld.w	$r17,$r3,76(0x4c)
1c0029f8:	00105cd3 	add.w	$r19,$r6,$r23
1c0029fc:	00104f6d 	add.w	$r13,$r27,$r19
1c002a00:	0010062e 	add.w	$r14,$r17,$r1
1c002a04:	001019d9 	add.w	$r25,$r14,$r6
1c002a08:	02bfac05 	addi.w	$r5,$r0,-21(0xfeb)
1c002a0c:	001c1486 	mul.w	$r6,$r4,$r5
1c002a10:	00113724 	sub.w	$r4,$r25,$r13
1c002a14:	03401c92 	andi	$r18,$r4,0x7
1c002a18:	5800fa40 	beq	$r18,$r0,248(0xf8) # 1c002b10 <shell15+0x9a0>
1c002a1c:	001059af 	add.w	$r15,$r13,$r22
1c002a20:	001019f4 	add.w	$r20,$r15,$r6
1c002a24:	28000693 	ld.b	$r19,$r20,1(0x1)
1c002a28:	5bfc4a7a 	beq	$r19,$r26,-952(0x3fc48) # 1c002670 <shell15+0x500>
1c002a2c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a30:	280001b1 	ld.b	$r17,$r13,0
1c002a34:	5bfc3e3a 	beq	$r17,$r26,-964(0x3fc3c) # 1c002670 <shell15+0x500>
1c002a38:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002a3c:	5800d64e 	beq	$r18,$r14,212(0xd4) # 1c002b10 <shell15+0x9a0>
1c002a40:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a44:	5800b245 	beq	$r18,$r5,176(0xb0) # 1c002af4 <shell15+0x984>
1c002a48:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002a4c:	58008e44 	beq	$r18,$r4,140(0x8c) # 1c002ad8 <shell15+0x968>
1c002a50:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c002a54:	58006a4f 	beq	$r18,$r15,104(0x68) # 1c002abc <shell15+0x94c>
1c002a58:	02801414 	addi.w	$r20,$r0,5(0x5)
1c002a5c:	58004654 	beq	$r18,$r20,68(0x44) # 1c002aa0 <shell15+0x930>
1c002a60:	02801813 	addi.w	$r19,$r0,6(0x6)
1c002a64:	58002253 	beq	$r18,$r19,32(0x20) # 1c002a84 <shell15+0x914>
1c002a68:	001059b2 	add.w	$r18,$r13,$r22
1c002a6c:	00101a51 	add.w	$r17,$r18,$r6
1c002a70:	2800062e 	ld.b	$r14,$r17,1(0x1)
1c002a74:	5bfbfdda 	beq	$r14,$r26,-1028(0x3fbfc) # 1c002670 <shell15+0x500>
1c002a78:	280005a5 	ld.b	$r5,$r13,1(0x1)
1c002a7c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a80:	5bfbf0ba 	beq	$r5,$r26,-1040(0x3fbf0) # 1c002670 <shell15+0x500>
1c002a84:	001059a4 	add.w	$r4,$r13,$r22
1c002a88:	0010188f 	add.w	$r15,$r4,$r6
1c002a8c:	280005f4 	ld.b	$r20,$r15,1(0x1)
1c002a90:	5bfbe29a 	beq	$r20,$r26,-1056(0x3fbe0) # 1c002670 <shell15+0x500>
1c002a94:	280005b3 	ld.b	$r19,$r13,1(0x1)
1c002a98:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a9c:	5bfbd67a 	beq	$r19,$r26,-1068(0x3fbd4) # 1c002670 <shell15+0x500>
1c002aa0:	001059b2 	add.w	$r18,$r13,$r22
1c002aa4:	00101a51 	add.w	$r17,$r18,$r6
1c002aa8:	2800062e 	ld.b	$r14,$r17,1(0x1)
1c002aac:	5bfbc5da 	beq	$r14,$r26,-1084(0x3fbc4) # 1c002670 <shell15+0x500>
1c002ab0:	280005a5 	ld.b	$r5,$r13,1(0x1)
1c002ab4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002ab8:	5bfbb8ba 	beq	$r5,$r26,-1096(0x3fbb8) # 1c002670 <shell15+0x500>
1c002abc:	001059a4 	add.w	$r4,$r13,$r22
1c002ac0:	0010188f 	add.w	$r15,$r4,$r6
1c002ac4:	280005f4 	ld.b	$r20,$r15,1(0x1)
1c002ac8:	5bfbaa9a 	beq	$r20,$r26,-1112(0x3fba8) # 1c002670 <shell15+0x500>
1c002acc:	280005b3 	ld.b	$r19,$r13,1(0x1)
1c002ad0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002ad4:	5bfb9e7a 	beq	$r19,$r26,-1124(0x3fb9c) # 1c002670 <shell15+0x500>
1c002ad8:	001059b2 	add.w	$r18,$r13,$r22
1c002adc:	00101a51 	add.w	$r17,$r18,$r6
1c002ae0:	2800062e 	ld.b	$r14,$r17,1(0x1)
1c002ae4:	5bfb8dda 	beq	$r14,$r26,-1140(0x3fb8c) # 1c002670 <shell15+0x500>
1c002ae8:	280005a5 	ld.b	$r5,$r13,1(0x1)
1c002aec:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002af0:	5bfb80ba 	beq	$r5,$r26,-1152(0x3fb80) # 1c002670 <shell15+0x500>
1c002af4:	001059a4 	add.w	$r4,$r13,$r22
1c002af8:	0010188f 	add.w	$r15,$r4,$r6
1c002afc:	280005f4 	ld.b	$r20,$r15,1(0x1)
1c002b00:	5bfb729a 	beq	$r20,$r26,-1168(0x3fb70) # 1c002670 <shell15+0x500>
1c002b04:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002b08:	280001b3 	ld.b	$r19,$r13,0
1c002b0c:	5bfb667a 	beq	$r19,$r26,-1180(0x3fb64) # 1c002670 <shell15+0x500>
1c002b10:	5800e9b9 	beq	$r13,$r25,232(0xe8) # 1c002bf8 <shell15+0xa88>
1c002b14:	001059af 	add.w	$r15,$r13,$r22
1c002b18:	001019f4 	add.w	$r20,$r15,$r6
1c002b1c:	28000693 	ld.b	$r19,$r20,1(0x1)
1c002b20:	5bfb527a 	beq	$r19,$r26,-1200(0x3fb50) # 1c002670 <shell15+0x500>
1c002b24:	280005a4 	ld.b	$r4,$r13,1(0x1)
1c002b28:	028005b2 	addi.w	$r18,$r13,1(0x1)
1c002b2c:	5bfb449a 	beq	$r4,$r26,-1212(0x3fb44) # 1c002670 <shell15+0x500>
1c002b30:	00105a51 	add.w	$r17,$r18,$r22
1c002b34:	00101a2e 	add.w	$r14,$r17,$r6
1c002b38:	280005c5 	ld.b	$r5,$r14,1(0x1)
1c002b3c:	5bfb34ba 	beq	$r5,$r26,-1228(0x3fb34) # 1c002670 <shell15+0x500>
1c002b40:	280009af 	ld.b	$r15,$r13,2(0x2)
1c002b44:	028009b4 	addi.w	$r20,$r13,2(0x2)
1c002b48:	5bfb29fa 	beq	$r15,$r26,-1240(0x3fb28) # 1c002670 <shell15+0x500>
1c002b4c:	00105a93 	add.w	$r19,$r20,$r22
1c002b50:	00101a64 	add.w	$r4,$r19,$r6
1c002b54:	28000491 	ld.b	$r17,$r4,1(0x1)
1c002b58:	5bfb1a3a 	beq	$r17,$r26,-1256(0x3fb18) # 1c002670 <shell15+0x500>
1c002b5c:	28000dae 	ld.b	$r14,$r13,3(0x3)
1c002b60:	02800da5 	addi.w	$r5,$r13,3(0x3)
1c002b64:	5bfb0dda 	beq	$r14,$r26,-1268(0x3fb0c) # 1c002670 <shell15+0x500>
1c002b68:	001058af 	add.w	$r15,$r5,$r22
1c002b6c:	001019f4 	add.w	$r20,$r15,$r6
1c002b70:	28000693 	ld.b	$r19,$r20,1(0x1)
1c002b74:	5bfafe7a 	beq	$r19,$r26,-1284(0x3fafc) # 1c002670 <shell15+0x500>
1c002b78:	280011a4 	ld.b	$r4,$r13,4(0x4)
1c002b7c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002b80:	5bfaf09a 	beq	$r4,$r26,-1296(0x3faf0) # 1c002670 <shell15+0x500>
1c002b84:	001059b1 	add.w	$r17,$r13,$r22
1c002b88:	00101a2e 	add.w	$r14,$r17,$r6
1c002b8c:	280005c5 	ld.b	$r5,$r14,1(0x1)
1c002b90:	5bfae0ba 	beq	$r5,$r26,-1312(0x3fae0) # 1c002670 <shell15+0x500>
1c002b94:	2800124f 	ld.b	$r15,$r18,4(0x4)
1c002b98:	02801254 	addi.w	$r20,$r18,4(0x4)
1c002b9c:	5bfad5fa 	beq	$r15,$r26,-1324(0x3fad4) # 1c002670 <shell15+0x500>
1c002ba0:	00105a93 	add.w	$r19,$r20,$r22
1c002ba4:	00101a64 	add.w	$r4,$r19,$r6
1c002ba8:	2800048d 	ld.b	$r13,$r4,1(0x1)
1c002bac:	5bfac5ba 	beq	$r13,$r26,-1340(0x3fac4) # 1c002670 <shell15+0x500>
1c002bb0:	28001651 	ld.b	$r17,$r18,5(0x5)
1c002bb4:	0280164e 	addi.w	$r14,$r18,5(0x5)
1c002bb8:	5bfaba3a 	beq	$r17,$r26,-1352(0x3fab8) # 1c002670 <shell15+0x500>
1c002bbc:	001059c5 	add.w	$r5,$r14,$r22
1c002bc0:	001018af 	add.w	$r15,$r5,$r6
1c002bc4:	280005f4 	ld.b	$r20,$r15,1(0x1)
1c002bc8:	5bfaaa9a 	beq	$r20,$r26,-1368(0x3faa8) # 1c002670 <shell15+0x500>
1c002bcc:	28001a53 	ld.b	$r19,$r18,6(0x6)
1c002bd0:	02801a44 	addi.w	$r4,$r18,6(0x6)
1c002bd4:	5bfa9e7a 	beq	$r19,$r26,-1380(0x3fa9c) # 1c002670 <shell15+0x500>
1c002bd8:	0010588d 	add.w	$r13,$r4,$r22
1c002bdc:	001019b1 	add.w	$r17,$r13,$r6
1c002be0:	2800062e 	ld.b	$r14,$r17,1(0x1)
1c002be4:	5bfa8dda 	beq	$r14,$r26,-1396(0x3fa8c) # 1c002670 <shell15+0x500>
1c002be8:	28001e45 	ld.b	$r5,$r18,7(0x7)
1c002bec:	02801e4d 	addi.w	$r13,$r18,7(0x7)
1c002bf0:	5bfa80ba 	beq	$r5,$r26,-1408(0x3fa80) # 1c002670 <shell15+0x500>
1c002bf4:	5fff21b9 	bne	$r13,$r25,-224(0x3ff20) # 1c002b14 <shell15+0x9a4>
1c002bf8:	2880206d 	ld.w	$r13,$r3,8(0x8)
1c002bfc:	2880a079 	ld.w	$r25,$r3,40(0x28)
1c002c00:	640221b9 	bge	$r13,$r25,544(0x220) # 1c002e20 <shell15+0xcb0>
1c002c04:	28810066 	ld.w	$r6,$r3,64(0x40)
1c002c08:	00101cd2 	add.w	$r18,$r6,$r7
1c002c0c:	28000251 	ld.b	$r17,$r18,0
1c002c10:	5bfa623a 	beq	$r17,$r26,-1440(0x3fa60) # 1c002670 <shell15+0x500>
1c002c14:	001c2f2e 	mul.w	$r14,$r25,$r11
1c002c18:	28819065 	ld.w	$r5,$r3,100(0x64)
1c002c1c:	00101f6f 	add.w	$r15,$r27,$r7
1c002c20:	1479e794 	lu12i.w	$r20,249660(0x3cf3c)
1c002c24:	00101ca4 	add.w	$r4,$r5,$r7
1c002c28:	0010136d 	add.w	$r13,$r27,$r4
1c002c2c:	03bcf693 	ori	$r19,$r20,0xf3d
1c002c30:	001039f9 	add.w	$r25,$r15,$r14
1c002c34:	00113726 	sub.w	$r6,$r25,$r13
1c002c38:	001c4cd2 	mul.w	$r18,$r6,$r19
1c002c3c:	03401e51 	andi	$r17,$r18,0x7
1c002c40:	5800fa20 	beq	$r17,$r0,248(0xf8) # 1c002d38 <shell15+0xbc8>
1c002c44:	00111dae 	sub.w	$r14,$r13,$r7
1c002c48:	00105dc5 	add.w	$r5,$r14,$r23
1c002c4c:	280000a4 	ld.b	$r4,$r5,0
1c002c50:	5bfa209a 	beq	$r4,$r26,-1504(0x3fa20) # 1c002670 <shell15+0x500>
1c002c54:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002c58:	283fadaf 	ld.b	$r15,$r13,-21(0xfeb)
1c002c5c:	5bfa15fa 	beq	$r15,$r26,-1516(0x3fa14) # 1c002670 <shell15+0x500>
1c002c60:	02800414 	addi.w	$r20,$r0,1(0x1)
1c002c64:	5800d634 	beq	$r17,$r20,212(0xd4) # 1c002d38 <shell15+0xbc8>
1c002c68:	02800813 	addi.w	$r19,$r0,2(0x2)
1c002c6c:	5800b233 	beq	$r17,$r19,176(0xb0) # 1c002d1c <shell15+0xbac>
1c002c70:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c002c74:	58008e26 	beq	$r17,$r6,140(0x8c) # 1c002d00 <shell15+0xb90>
1c002c78:	02801012 	addi.w	$r18,$r0,4(0x4)
1c002c7c:	58006a32 	beq	$r17,$r18,104(0x68) # 1c002ce4 <shell15+0xb74>
1c002c80:	0280140e 	addi.w	$r14,$r0,5(0x5)
1c002c84:	5800462e 	beq	$r17,$r14,68(0x44) # 1c002cc8 <shell15+0xb58>
1c002c88:	02801805 	addi.w	$r5,$r0,6(0x6)
1c002c8c:	58002225 	beq	$r17,$r5,32(0x20) # 1c002cac <shell15+0xb3c>
1c002c90:	00111db1 	sub.w	$r17,$r13,$r7
1c002c94:	00105e24 	add.w	$r4,$r17,$r23
1c002c98:	2800008f 	ld.b	$r15,$r4,0
1c002c9c:	5bf9d5fa 	beq	$r15,$r26,-1580(0x3f9d4) # 1c002670 <shell15+0x500>
1c002ca0:	280001b4 	ld.b	$r20,$r13,0
1c002ca4:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002ca8:	5bf9ca9a 	beq	$r20,$r26,-1592(0x3f9c8) # 1c002670 <shell15+0x500>
1c002cac:	00111db3 	sub.w	$r19,$r13,$r7
1c002cb0:	00105e66 	add.w	$r6,$r19,$r23
1c002cb4:	280000d2 	ld.b	$r18,$r6,0
1c002cb8:	5bf9ba5a 	beq	$r18,$r26,-1608(0x3f9b8) # 1c002670 <shell15+0x500>
1c002cbc:	280001ae 	ld.b	$r14,$r13,0
1c002cc0:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002cc4:	5bf9adda 	beq	$r14,$r26,-1620(0x3f9ac) # 1c002670 <shell15+0x500>
1c002cc8:	00111da5 	sub.w	$r5,$r13,$r7
1c002ccc:	00105cb1 	add.w	$r17,$r5,$r23
1c002cd0:	28000224 	ld.b	$r4,$r17,0
1c002cd4:	5bf99c9a 	beq	$r4,$r26,-1636(0x3f99c) # 1c002670 <shell15+0x500>
1c002cd8:	280001af 	ld.b	$r15,$r13,0
1c002cdc:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002ce0:	5bf991fa 	beq	$r15,$r26,-1648(0x3f990) # 1c002670 <shell15+0x500>
1c002ce4:	00111db4 	sub.w	$r20,$r13,$r7
1c002ce8:	00105e93 	add.w	$r19,$r20,$r23
1c002cec:	28000266 	ld.b	$r6,$r19,0
1c002cf0:	5bf980da 	beq	$r6,$r26,-1664(0x3f980) # 1c002670 <shell15+0x500>
1c002cf4:	280001b2 	ld.b	$r18,$r13,0
1c002cf8:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002cfc:	5bf9765a 	beq	$r18,$r26,-1676(0x3f974) # 1c002670 <shell15+0x500>
1c002d00:	00111dae 	sub.w	$r14,$r13,$r7
1c002d04:	00105dc5 	add.w	$r5,$r14,$r23
1c002d08:	280000b1 	ld.b	$r17,$r5,0
1c002d0c:	5bf9663a 	beq	$r17,$r26,-1692(0x3f964) # 1c002670 <shell15+0x500>
1c002d10:	280001a4 	ld.b	$r4,$r13,0
1c002d14:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002d18:	5bf9589a 	beq	$r4,$r26,-1704(0x3f958) # 1c002670 <shell15+0x500>
1c002d1c:	00111daf 	sub.w	$r15,$r13,$r7
1c002d20:	00105df4 	add.w	$r20,$r15,$r23
1c002d24:	28000293 	ld.b	$r19,$r20,0
1c002d28:	5bf94a7a 	beq	$r19,$r26,-1720(0x3f948) # 1c002670 <shell15+0x500>
1c002d2c:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002d30:	283fada6 	ld.b	$r6,$r13,-21(0xfeb)
1c002d34:	5bf93cda 	beq	$r6,$r26,-1732(0x3f93c) # 1c002670 <shell15+0x500>
1c002d38:	5800e9b9 	beq	$r13,$r25,232(0xe8) # 1c002e20 <shell15+0xcb0>
1c002d3c:	00111db1 	sub.w	$r17,$r13,$r7
1c002d40:	00105e2e 	add.w	$r14,$r17,$r23
1c002d44:	280001cf 	ld.b	$r15,$r14,0
1c002d48:	5bf929fa 	beq	$r15,$r26,-1752(0x3f928) # 1c002670 <shell15+0x500>
1c002d4c:	028055a5 	addi.w	$r5,$r13,21(0x15)
1c002d50:	283facb4 	ld.b	$r20,$r5,-21(0xfeb)
1c002d54:	5bf91e9a 	beq	$r20,$r26,-1764(0x3f91c) # 1c002670 <shell15+0x500>
1c002d58:	00111cb3 	sub.w	$r19,$r5,$r7
1c002d5c:	00105e66 	add.w	$r6,$r19,$r23
1c002d60:	280000d2 	ld.b	$r18,$r6,0
1c002d64:	5bf90e5a 	beq	$r18,$r26,-1780(0x3f90c) # 1c002670 <shell15+0x500>
1c002d68:	280055b1 	ld.b	$r17,$r13,21(0x15)
1c002d6c:	0280a9a4 	addi.w	$r4,$r13,42(0x2a)
1c002d70:	5bf9023a 	beq	$r17,$r26,-1792(0x3f900) # 1c002670 <shell15+0x500>
1c002d74:	00111c8e 	sub.w	$r14,$r4,$r7
1c002d78:	00105dcf 	add.w	$r15,$r14,$r23
1c002d7c:	280001f4 	ld.b	$r20,$r15,0
1c002d80:	5bf8f29a 	beq	$r20,$r26,-1808(0x3f8f0) # 1c002670 <shell15+0x500>
1c002d84:	2800a9a6 	ld.b	$r6,$r13,42(0x2a)
1c002d88:	0280fdb3 	addi.w	$r19,$r13,63(0x3f)
1c002d8c:	5bf8e4da 	beq	$r6,$r26,-1820(0x3f8e4) # 1c002670 <shell15+0x500>
1c002d90:	00111e72 	sub.w	$r18,$r19,$r7
1c002d94:	00105e44 	add.w	$r4,$r18,$r23
1c002d98:	28000091 	ld.b	$r17,$r4,0
1c002d9c:	5bf8d63a 	beq	$r17,$r26,-1836(0x3f8d4) # 1c002670 <shell15+0x500>
1c002da0:	2800fdae 	ld.b	$r14,$r13,63(0x3f)
1c002da4:	028151ad 	addi.w	$r13,$r13,84(0x54)
1c002da8:	5bf8c9da 	beq	$r14,$r26,-1848(0x3f8c8) # 1c002670 <shell15+0x500>
1c002dac:	00111daf 	sub.w	$r15,$r13,$r7
1c002db0:	00105df4 	add.w	$r20,$r15,$r23
1c002db4:	28000293 	ld.b	$r19,$r20,0
1c002db8:	5bf8ba7a 	beq	$r19,$r26,-1864(0x3f8b8) # 1c002670 <shell15+0x500>
1c002dbc:	2800fcb2 	ld.b	$r18,$r5,63(0x3f)
1c002dc0:	028150a6 	addi.w	$r6,$r5,84(0x54)
1c002dc4:	5bf8ae5a 	beq	$r18,$r26,-1876(0x3f8ac) # 1c002670 <shell15+0x500>
1c002dc8:	00111cc4 	sub.w	$r4,$r6,$r7
1c002dcc:	00105c91 	add.w	$r17,$r4,$r23
1c002dd0:	2800022e 	ld.b	$r14,$r17,0
1c002dd4:	5bf89dda 	beq	$r14,$r26,-1892(0x3f89c) # 1c002670 <shell15+0x500>
1c002dd8:	280150af 	ld.b	$r15,$r5,84(0x54)
1c002ddc:	0281a4ad 	addi.w	$r13,$r5,105(0x69)
1c002de0:	5bf891fa 	beq	$r15,$r26,-1904(0x3f890) # 1c002670 <shell15+0x500>
1c002de4:	00111db4 	sub.w	$r20,$r13,$r7
1c002de8:	00105e93 	add.w	$r19,$r20,$r23
1c002dec:	28000266 	ld.b	$r6,$r19,0
1c002df0:	5bf880da 	beq	$r6,$r26,-1920(0x3f880) # 1c002670 <shell15+0x500>
1c002df4:	2801a4a4 	ld.b	$r4,$r5,105(0x69)
1c002df8:	0281f8b2 	addi.w	$r18,$r5,126(0x7e)
1c002dfc:	5bf8749a 	beq	$r4,$r26,-1932(0x3f874) # 1c002670 <shell15+0x500>
1c002e00:	00111e51 	sub.w	$r17,$r18,$r7
1c002e04:	00105e2e 	add.w	$r14,$r17,$r23
1c002e08:	280001cd 	ld.b	$r13,$r14,0
1c002e0c:	5bf865ba 	beq	$r13,$r26,-1948(0x3f864) # 1c002670 <shell15+0x500>
1c002e10:	02824cad 	addi.w	$r13,$r5,147(0x93)
1c002e14:	283fada5 	ld.b	$r5,$r13,-21(0xfeb)
1c002e18:	5bf858ba 	beq	$r5,$r26,-1960(0x3f858) # 1c002670 <shell15+0x500>
1c002e1c:	5fff21b9 	bne	$r13,$r25,-224(0x3ff20) # 1c002d3c <shell15+0xbcc>
1c002e20:	28810072 	ld.w	$r18,$r3,64(0x40)
1c002e24:	0010620d 	add.w	$r13,$r16,$r24
1c002e28:	028005b9 	addi.w	$r25,$r13,1(0x1)
1c002e2c:	0010664e 	add.w	$r14,$r18,$r25
1c002e30:	280001c5 	ld.b	$r5,$r14,0
1c002e34:	29816065 	st.w	$r5,$r3,88(0x58)
1c002e38:	5ff838ba 	bne	$r5,$r26,-1992(0x3f838) # 1c002670 <shell15+0x500>
1c002e3c:	28802071 	ld.w	$r17,$r3,8(0x8)
1c002e40:	0010220d 	add.w	$r13,$r16,$r8
1c002e44:	001045a4 	add.w	$r4,$r13,$r17
1c002e48:	001c2c8f 	mul.w	$r15,$r4,$r11
1c002e4c:	00103f74 	add.w	$r20,$r27,$r15
1c002e50:	00106693 	add.w	$r19,$r20,$r25
1c002e54:	28000266 	ld.b	$r6,$r19,0
1c002e58:	5809bcda 	beq	$r6,$r26,2492(0x9bc) # 1c003814 <shell15+0x16a4>
1c002e5c:	0280b812 	addi.w	$r18,$r0,46(0x2e)
1c002e60:	5ff810d2 	bne	$r6,$r18,-2032(0x3f810) # 1c002670 <shell15+0x500>
1c002e64:	2880206e 	ld.w	$r14,$r3,8(0x8)
1c002e68:	004085b1 	slli.w	$r17,$r13,0x1
1c002e6c:	00103a25 	add.w	$r5,$r17,$r14
1c002e70:	001c2ca4 	mul.w	$r4,$r5,$r11
1c002e74:	0010136f 	add.w	$r15,$r27,$r4
1c002e78:	001065f9 	add.w	$r25,$r15,$r25
1c002e7c:	28000334 	ld.b	$r20,$r25,0
1c002e80:	5ff7f29a 	bne	$r20,$r26,-2064(0x3f7f0) # 1c002670 <shell15+0x500>
1c002e84:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c002e88:	02800806 	addi.w	$r6,$r0,2(0x2)
1c002e8c:	29820073 	st.w	$r19,$r3,128(0x80)
1c002e90:	298013b0 	st.w	$r16,$r29,4(0x4)
1c002e94:	298023ad 	st.w	$r13,$r29,8(0x8)
1c002e98:	298043b0 	st.w	$r16,$r29,16(0x10)
1c002e9c:	298053ad 	st.w	$r13,$r29,20(0x14)
1c002ea0:	298073b0 	st.w	$r16,$r29,28(0x1c)
1c002ea4:	298083ad 	st.w	$r13,$r29,32(0x20)
1c002ea8:	2980a3b0 	st.w	$r16,$r29,40(0x28)
1c002eac:	2980b3ad 	st.w	$r13,$r29,44(0x2c)
1c002eb0:	2980d3b0 	st.w	$r16,$r29,52(0x34)
1c002eb4:	2980e3ad 	st.w	$r13,$r29,56(0x38)
1c002eb8:	2980638d 	st.w	$r13,$r28,24(0x18)
1c002ebc:	2980738d 	st.w	$r13,$r28,28(0x1c)
1c002ec0:	2980838d 	st.w	$r13,$r28,32(0x20)
1c002ec4:	0280f00d 	addi.w	$r13,$r0,60(0x3c)
1c002ec8:	2980c391 	st.w	$r17,$r28,48(0x30)
1c002ecc:	2980d391 	st.w	$r17,$r28,52(0x34)
1c002ed0:	2980e391 	st.w	$r17,$r28,56(0x38)
1c002ed4:	001c34d1 	mul.w	$r17,$r6,$r13
1c002ed8:	00408612 	slli.w	$r18,$r16,0x1
1c002edc:	0010224e 	add.w	$r14,$r18,$r8
1c002ee0:	298003a0 	st.w	$r0,$r29,0
1c002ee4:	298033a0 	st.w	$r0,$r29,12(0xc)
1c002ee8:	298063a0 	st.w	$r0,$r29,24(0x18)
1c002eec:	298093a0 	st.w	$r0,$r29,36(0x24)
1c002ef0:	2980c3a0 	st.w	$r0,$r29,48(0x30)
1c002ef4:	29800380 	st.w	$r0,$r28,0
1c002ef8:	29803390 	st.w	$r16,$r28,12(0xc)
1c002efc:	29801380 	st.w	$r0,$r28,4(0x4)
1c002f00:	29802380 	st.w	$r0,$r28,8(0x8)
1c002f04:	29804390 	st.w	$r16,$r28,16(0x10)
1c002f08:	29805390 	st.w	$r16,$r28,20(0x14)
1c002f0c:	2980938e 	st.w	$r14,$r28,36(0x24)
1c002f10:	2980a38e 	st.w	$r14,$r28,40(0x28)
1c002f14:	2980b38e 	st.w	$r14,$r28,44(0x2c)
1c002f18:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c002f1c:	28800084 	ld.w	$r4,$r4,0
1c002f20:	1c000fa5 	pcaddu12i	$r5,125(0x7d)
1c002f24:	028b40a5 	addi.w	$r5,$r5,720(0x2d0)
1c002f28:	2981b06c 	st.w	$r12,$r3,108(0x6c)
1c002f2c:	2981c061 	st.w	$r1,$r3,112(0x70)
1c002f30:	2981d067 	st.w	$r7,$r3,116(0x74)
1c002f34:	2981e078 	st.w	$r24,$r3,120(0x78)
1c002f38:	1c000fd9 	pcaddu12i	$r25,126(0x7e)
1c002f3c:	28bf7339 	ld.w	$r25,$r25,-36(0xfdc)
1c002f40:	00150212 	move	$r18,$r16
1c002f44:	001044a5 	add.w	$r5,$r5,$r17
1c002f48:	00150098 	move	$r24,$r4
1c002f4c:	03400000 	andi	$r0,$r0,0x0
1c002f50:	02800c01 	addi.w	$r1,$r0,3(0x3)
1c002f54:	0020852c 	mod.w	$r12,$r9,$r1
1c002f58:	5c000820 	bne	$r1,$r0,8(0x8) # 1c002f60 <shell15+0xdf0>
1c002f5c:	002a0007 	break	0x7
1c002f60:	03400587 	andi	$r7,$r12,0x1
1c002f64:	0015020f 	move	$r15,$r16
1c002f68:	580008e0 	beq	$r7,$r0,8(0x8) # 1c002f70 <shell15+0xe00>
1c002f6c:	0015010f 	move	$r15,$r8
1c002f70:	288000b4 	ld.w	$r20,$r5,0
1c002f74:	28815071 	ld.w	$r17,$r3,84(0x54)
1c002f78:	58000a80 	beq	$r20,$r0,8(0x8) # 1c002f80 <shell15+0xe10>
1c002f7c:	28816071 	ld.w	$r17,$r3,88(0x58)
1c002f80:	28800313 	ld.w	$r19,$r24,0
1c002f84:	2880206d 	ld.w	$r13,$r3,8(0x8)
1c002f88:	28806064 	ld.w	$r4,$r3,24(0x18)
1c002f8c:	00104dae 	add.w	$r14,$r13,$r19
1c002f90:	001049c6 	add.w	$r6,$r14,$r18
1c002f94:	28800332 	ld.w	$r18,$r25,0
1c002f98:	00104892 	add.w	$r18,$r4,$r18
1c002f9c:	640209c6 	bge	$r14,$r6,520(0x208) # 1c0031a4 <shell15+0x1034>
1c002fa0:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c002fa4:	001c2cc1 	mul.w	$r1,$r6,$r11
1c002fa8:	00103e53 	add.w	$r19,$r18,$r15
1c002fac:	28813074 	ld.w	$r20,$r3,76(0x4c)
1c002fb0:	00144806 	nor	$r6,$r0,$r18
1c002fb4:	00104a8d 	add.w	$r13,$r20,$r18
1c002fb8:	00104cd4 	add.w	$r20,$r6,$r19
1c002fbc:	001c31c7 	mul.w	$r7,$r14,$r12
1c002fc0:	001005a6 	add.w	$r6,$r13,$r1
1c002fc4:	001c2dcf 	mul.w	$r15,$r14,$r11
1c002fc8:	001048e1 	add.w	$r1,$r7,$r18
1c002fcc:	0280064e 	addi.w	$r14,$r18,1(0x1)
1c002fd0:	0040882c 	slli.w	$r12,$r1,0x2
1c002fd4:	00150201 	move	$r1,$r16
1c002fd8:	00103dc4 	add.w	$r4,$r14,$r15
1c002fdc:	0010136e 	add.w	$r14,$r27,$r4
1c002fe0:	001033cf 	add.w	$r15,$r30,$r12
1c002fe4:	6401b253 	bge	$r18,$r19,432(0x1b0) # 1c003194 <shell15+0x1024>
1c002fe8:	283ffdd0 	ld.b	$r16,$r14,-1(0xfff)
1c002fec:	5ff68611 	bne	$r16,$r17,-2428(0x3f684) # 1c002670 <shell15+0x500>
1c002ff0:	288001e7 	ld.w	$r7,$r15,0
1c002ff4:	5ff67ce0 	bne	$r7,$r0,-2436(0x3f67c) # 1c002670 <shell15+0x500>
1c002ff8:	00103a84 	add.w	$r4,$r20,$r14
1c002ffc:	03401e90 	andi	$r16,$r20,0x7
1c003000:	2981f064 	st.w	$r4,$r3,124(0x7c)
1c003004:	001501cc 	move	$r12,$r14
1c003008:	001501ed 	move	$r13,$r15
1c00300c:	5800de00 	beq	$r16,$r0,220(0xdc) # 1c0030e8 <shell15+0xf78>
1c003010:	280001cd 	ld.b	$r13,$r14,0
1c003014:	5ff65db1 	bne	$r13,$r17,-2468(0x3f65c) # 1c002670 <shell15+0x500>
1c003018:	288011e7 	ld.w	$r7,$r15,4(0x4)
1c00301c:	028011ed 	addi.w	$r13,$r15,4(0x4)
1c003020:	028005cc 	addi.w	$r12,$r14,1(0x1)
1c003024:	5ff64ce0 	bne	$r7,$r0,-2484(0x3f64c) # 1c002670 <shell15+0x500>
1c003028:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00302c:	5800be04 	beq	$r16,$r4,188(0xbc) # 1c0030e8 <shell15+0xf78>
1c003030:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003034:	58009e07 	beq	$r16,$r7,156(0x9c) # 1c0030d0 <shell15+0xf60>
1c003038:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c00303c:	58007e04 	beq	$r16,$r4,124(0x7c) # 1c0030b8 <shell15+0xf48>
1c003040:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003044:	58005e07 	beq	$r16,$r7,92(0x5c) # 1c0030a0 <shell15+0xf30>
1c003048:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00304c:	58003e04 	beq	$r16,$r4,60(0x3c) # 1c003088 <shell15+0xf18>
1c003050:	02801807 	addi.w	$r7,$r0,6(0x6)
1c003054:	58001e07 	beq	$r16,$r7,28(0x1c) # 1c003070 <shell15+0xf00>
1c003058:	28000190 	ld.b	$r16,$r12,0
1c00305c:	5ff61611 	bne	$r16,$r17,-2540(0x3f614) # 1c002670 <shell15+0x500>
1c003060:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c003064:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003068:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00306c:	5ff60480 	bne	$r4,$r0,-2556(0x3f604) # 1c002670 <shell15+0x500>
1c003070:	28000187 	ld.b	$r7,$r12,0
1c003074:	5ff5fcf1 	bne	$r7,$r17,-2564(0x3f5fc) # 1c002670 <shell15+0x500>
1c003078:	288011b0 	ld.w	$r16,$r13,4(0x4)
1c00307c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003080:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003084:	5ff5ee00 	bne	$r16,$r0,-2580(0x3f5ec) # 1c002670 <shell15+0x500>
1c003088:	28000184 	ld.b	$r4,$r12,0
1c00308c:	5ff5e491 	bne	$r4,$r17,-2588(0x3f5e4) # 1c002670 <shell15+0x500>
1c003090:	288011a7 	ld.w	$r7,$r13,4(0x4)
1c003094:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003098:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00309c:	5ff5d4e0 	bne	$r7,$r0,-2604(0x3f5d4) # 1c002670 <shell15+0x500>
1c0030a0:	28000190 	ld.b	$r16,$r12,0
1c0030a4:	5ff5ce11 	bne	$r16,$r17,-2612(0x3f5cc) # 1c002670 <shell15+0x500>
1c0030a8:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c0030ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030b0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0030b4:	5ff5bc80 	bne	$r4,$r0,-2628(0x3f5bc) # 1c002670 <shell15+0x500>
1c0030b8:	28000187 	ld.b	$r7,$r12,0
1c0030bc:	5ff5b4f1 	bne	$r7,$r17,-2636(0x3f5b4) # 1c002670 <shell15+0x500>
1c0030c0:	288011b0 	ld.w	$r16,$r13,4(0x4)
1c0030c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030c8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0030cc:	5ff5a600 	bne	$r16,$r0,-2652(0x3f5a4) # 1c002670 <shell15+0x500>
1c0030d0:	28000184 	ld.b	$r4,$r12,0
1c0030d4:	5ff59c91 	bne	$r4,$r17,-2660(0x3f59c) # 1c002670 <shell15+0x500>
1c0030d8:	288011a7 	ld.w	$r7,$r13,4(0x4)
1c0030dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030e0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0030e4:	5ff58ce0 	bne	$r7,$r0,-2676(0x3f58c) # 1c002670 <shell15+0x500>
1c0030e8:	2881f070 	ld.w	$r16,$r3,124(0x7c)
1c0030ec:	5800a990 	beq	$r12,$r16,168(0xa8) # 1c003194 <shell15+0x1024>
1c0030f0:	28000190 	ld.b	$r16,$r12,0
1c0030f4:	5ff57e11 	bne	$r16,$r17,-2692(0x3f57c) # 1c002670 <shell15+0x500>
1c0030f8:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c0030fc:	02800587 	addi.w	$r7,$r12,1(0x1)
1c003100:	29821067 	st.w	$r7,$r3,132(0x84)
1c003104:	028011b0 	addi.w	$r16,$r13,4(0x4)
1c003108:	5ff56880 	bne	$r4,$r0,-2712(0x3f568) # 1c002670 <shell15+0x500>
1c00310c:	28000584 	ld.b	$r4,$r12,1(0x1)
1c003110:	5ff56091 	bne	$r4,$r17,-2720(0x3f560) # 1c002670 <shell15+0x500>
1c003114:	28801207 	ld.w	$r7,$r16,4(0x4)
1c003118:	5ff558e0 	bne	$r7,$r0,-2728(0x3f558) # 1c002670 <shell15+0x500>
1c00311c:	28000984 	ld.b	$r4,$r12,2(0x2)
1c003120:	5ff55091 	bne	$r4,$r17,-2736(0x3f550) # 1c002670 <shell15+0x500>
1c003124:	288031a7 	ld.w	$r7,$r13,12(0xc)
1c003128:	5ff548e0 	bne	$r7,$r0,-2744(0x3f548) # 1c002670 <shell15+0x500>
1c00312c:	28000d84 	ld.b	$r4,$r12,3(0x3)
1c003130:	5ff54091 	bne	$r4,$r17,-2752(0x3f540) # 1c002670 <shell15+0x500>
1c003134:	288041a7 	ld.w	$r7,$r13,16(0x10)
1c003138:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c00313c:	5ff534e0 	bne	$r7,$r0,-2764(0x3f534) # 1c002670 <shell15+0x500>
1c003140:	2800118c 	ld.b	$r12,$r12,4(0x4)
1c003144:	5ff52d91 	bne	$r12,$r17,-2772(0x3f52c) # 1c002670 <shell15+0x500>
1c003148:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c00314c:	5ff52480 	bne	$r4,$r0,-2780(0x3f524) # 1c002670 <shell15+0x500>
1c003150:	28821067 	ld.w	$r7,$r3,132(0x84)
1c003154:	280010ed 	ld.b	$r13,$r7,4(0x4)
1c003158:	5ff519b1 	bne	$r13,$r17,-2792(0x3f518) # 1c002670 <shell15+0x500>
1c00315c:	2880520c 	ld.w	$r12,$r16,20(0x14)
1c003160:	5ff51180 	bne	$r12,$r0,-2800(0x3f510) # 1c002670 <shell15+0x500>
1c003164:	280014e4 	ld.b	$r4,$r7,5(0x5)
1c003168:	5ff50891 	bne	$r4,$r17,-2808(0x3f508) # 1c002670 <shell15+0x500>
1c00316c:	2880620d 	ld.w	$r13,$r16,24(0x18)
1c003170:	5ff501a0 	bne	$r13,$r0,-2816(0x3f500) # 1c002670 <shell15+0x500>
1c003174:	280018ec 	ld.b	$r12,$r7,6(0x6)
1c003178:	5ff4f991 	bne	$r12,$r17,-2824(0x3f4f8) # 1c002670 <shell15+0x500>
1c00317c:	28807204 	ld.w	$r4,$r16,28(0x1c)
1c003180:	0280720d 	addi.w	$r13,$r16,28(0x1c)
1c003184:	02801cec 	addi.w	$r12,$r7,7(0x7)
1c003188:	5ff4e880 	bne	$r4,$r0,-2840(0x3f4e8) # 1c002670 <shell15+0x500>
1c00318c:	2881f070 	ld.w	$r16,$r3,124(0x7c)
1c003190:	5fff6190 	bne	$r12,$r16,-160(0x3ff60) # 1c0030f0 <shell15+0xf80>
1c003194:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c003198:	028131ef 	addi.w	$r15,$r15,76(0x4c)
1c00319c:	5ffe49c6 	bne	$r14,$r6,-440(0x3fe48) # 1c002fe4 <shell15+0xe74>
1c0031a0:	00150030 	move	$r16,$r1
1c0031a4:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0031a8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0031ac:	58034d2c 	beq	$r9,$r12,844(0x34c) # 1c0034f8 <shell15+0x1388>
1c0031b0:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c0031b4:	00201927 	div.w	$r7,$r9,$r6
1c0031b8:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c0031c0 <shell15+0x1050>
1c0031bc:	002a0007 	break	0x7
1c0031c0:	034004ed 	andi	$r13,$r7,0x1
1c0031c4:	00150212 	move	$r18,$r16
1c0031c8:	580009a0 	beq	$r13,$r0,8(0x8) # 1c0031d0 <shell15+0x1060>
1c0031cc:	00150112 	move	$r18,$r8
1c0031d0:	02801318 	addi.w	$r24,$r24,4(0x4)
1c0031d4:	02801339 	addi.w	$r25,$r25,4(0x4)
1c0031d8:	028010a5 	addi.w	$r5,$r5,4(0x4)
1c0031dc:	53fd77ff 	b	-652(0xffffd74) # 1c002f50 <shell15+0xde0>
1c0031e0:	00102991 	add.w	$r17,$r12,$r10
1c0031e4:	00103e3e 	add.w	$r30,$r17,$r15
1c0031e8:	280003c1 	ld.b	$r1,$r30,0
1c0031ec:	5bf10c2d 	beq	$r1,$r13,-3828(0x3f10c) # 1c0022f8 <shell15+0x188>
1c0031f0:	00103991 	add.w	$r17,$r12,$r14
1c0031f4:	00105a3e 	add.w	$r30,$r17,$r22
1c0031f8:	280003c1 	ld.b	$r1,$r30,0
1c0031fc:	5bf0fc2d 	beq	$r1,$r13,-3844(0x3f0fc) # 1c0022f8 <shell15+0x188>
1c003200:	00101591 	add.w	$r17,$r12,$r5
1c003204:	00105e3e 	add.w	$r30,$r17,$r23
1c003208:	280003c1 	ld.b	$r1,$r30,0
1c00320c:	5bf0ec2d 	beq	$r1,$r13,-3860(0x3f0ec) # 1c0022f8 <shell15+0x188>
1c003210:	00101991 	add.w	$r17,$r12,$r6
1c003214:	0010623e 	add.w	$r30,$r17,$r24
1c003218:	280003c1 	ld.b	$r1,$r30,0
1c00321c:	5bf0dc2d 	beq	$r1,$r13,-3876(0x3f0dc) # 1c0022f8 <shell15+0x188>
1c003220:	00102591 	add.w	$r17,$r12,$r9
1c003224:	0010663e 	add.w	$r30,$r17,$r25
1c003228:	280003c1 	ld.b	$r1,$r30,0
1c00322c:	5bf0cc2d 	beq	$r1,$r13,-3892(0x3f0cc) # 1c0022f8 <shell15+0x188>
1c003230:	00102191 	add.w	$r17,$r12,$r8
1c003234:	00106a3e 	add.w	$r30,$r17,$r26
1c003238:	280003c1 	ld.b	$r1,$r30,0
1c00323c:	5bf0bc2d 	beq	$r1,$r13,-3908(0x3f0bc) # 1c0022f8 <shell15+0x188>
1c003240:	00104d91 	add.w	$r17,$r12,$r19
1c003244:	0010723e 	add.w	$r30,$r17,$r28
1c003248:	280003c1 	ld.b	$r1,$r30,0
1c00324c:	5bf0ac2d 	beq	$r1,$r13,-3924(0x3f0ac) # 1c0022f8 <shell15+0x188>
1c003250:	00101d91 	add.w	$r17,$r12,$r7
1c003254:	0010763e 	add.w	$r30,$r17,$r29
1c003258:	280003c1 	ld.b	$r1,$r30,0
1c00325c:	5bf09c2d 	beq	$r1,$r13,-3940(0x3f09c) # 1c0022f8 <shell15+0x188>
1c003260:	29000192 	st.b	$r18,$r12,0
1c003264:	53f097ff 	b	-3948(0xffff094) # 1c0022f8 <shell15+0x188>
1c003268:	00102991 	add.w	$r17,$r12,$r10
1c00326c:	00103e3e 	add.w	$r30,$r17,$r15
1c003270:	280003d1 	ld.b	$r17,$r30,0
1c003274:	5bf07a2d 	beq	$r17,$r13,-3976(0x3f078) # 1c0022ec <shell15+0x17c>
1c003278:	0010399e 	add.w	$r30,$r12,$r14
1c00327c:	00105bd1 	add.w	$r17,$r30,$r22
1c003280:	2800023e 	ld.b	$r30,$r17,0
1c003284:	5bf06bcd 	beq	$r30,$r13,-3992(0x3f068) # 1c0022ec <shell15+0x17c>
1c003288:	00101591 	add.w	$r17,$r12,$r5
1c00328c:	00105e3e 	add.w	$r30,$r17,$r23
1c003290:	280003d1 	ld.b	$r17,$r30,0
1c003294:	5bf05a2d 	beq	$r17,$r13,-4008(0x3f058) # 1c0022ec <shell15+0x17c>
1c003298:	0010199e 	add.w	$r30,$r12,$r6
1c00329c:	001063d1 	add.w	$r17,$r30,$r24
1c0032a0:	2800023e 	ld.b	$r30,$r17,0
1c0032a4:	5bf04bcd 	beq	$r30,$r13,-4024(0x3f048) # 1c0022ec <shell15+0x17c>
1c0032a8:	00102591 	add.w	$r17,$r12,$r9
1c0032ac:	0010663e 	add.w	$r30,$r17,$r25
1c0032b0:	280003d1 	ld.b	$r17,$r30,0
1c0032b4:	5bf03a2d 	beq	$r17,$r13,-4040(0x3f038) # 1c0022ec <shell15+0x17c>
1c0032b8:	0010219e 	add.w	$r30,$r12,$r8
1c0032bc:	00106bd1 	add.w	$r17,$r30,$r26
1c0032c0:	2800023e 	ld.b	$r30,$r17,0
1c0032c4:	5bf02bcd 	beq	$r30,$r13,-4056(0x3f028) # 1c0022ec <shell15+0x17c>
1c0032c8:	00104d91 	add.w	$r17,$r12,$r19
1c0032cc:	0010723e 	add.w	$r30,$r17,$r28
1c0032d0:	280003d1 	ld.b	$r17,$r30,0
1c0032d4:	5bf01a21 	beq	$r17,$r1,-4072(0x3f018) # 1c0022ec <shell15+0x17c>
1c0032d8:	00101d9e 	add.w	$r30,$r12,$r7
1c0032dc:	001077d1 	add.w	$r17,$r30,$r29
1c0032e0:	2800023e 	ld.b	$r30,$r17,0
1c0032e4:	5bf00bc1 	beq	$r30,$r1,-4088(0x3f008) # 1c0022ec <shell15+0x17c>
1c0032e8:	29000192 	st.b	$r18,$r12,0
1c0032ec:	53f003ff 	b	-4096(0xffff000) # 1c0022ec <shell15+0x17c>
1c0032f0:	028006c5 	addi.w	$r5,$r22,1(0x1)
1c0032f4:	2980f065 	st.w	$r5,$r3,60(0x3c)
1c0032f8:	2880306b 	ld.w	$r11,$r3,12(0xc)
1c0032fc:	2880907f 	ld.w	$r31,$r3,36(0x24)
1c003300:	2880f076 	ld.w	$r22,$r3,60(0x3c)
1c003304:	28807067 	ld.w	$r7,$r3,28(0x1c)
1c003308:	02800577 	addi.w	$r23,$r11,1(0x1)
1c00330c:	028133ea 	addi.w	$r10,$r31,76(0x4c)
1c003310:	29803077 	st.w	$r23,$r3,12(0xc)
1c003314:	2980906a 	st.w	$r10,$r3,36(0x24)
1c003318:	02805718 	addi.w	$r24,$r24,21(0x15)
1c00331c:	5ff2d4f6 	bne	$r7,$r22,-3372(0x3f2d4) # 1c0025f0 <shell15+0x480>
1c003320:	2881207a 	ld.w	$r26,$r3,72(0x48)
1c003324:	02bfff5c 	addi.w	$r28,$r26,-1(0xfff)
1c003328:	2981207c 	st.w	$r28,$r3,72(0x48)
1c00332c:	5feec780 	bne	$r28,$r0,-4412(0x3eec4) # 1c0021f0 <shell15+0x80>
1c003330:	2880d07e 	ld.w	$r30,$r3,52(0x34)
1c003334:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c003338:	2880b07d 	ld.w	$r29,$r3,44(0x2c)
1c00333c:	001503c6 	move	$r6,$r30
1c003340:	00150325 	move	$r5,$r25
1c003344:	001503a7 	move	$r7,$r29
1c003348:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c00334c:	02b2e084 	addi.w	$r4,$r4,-840(0xcb8)
1c003350:	541ac000 	bl	6848(0x1ac0) # 1c004e10 <printf>
1c003354:	001567c6 	or	$r6,$r30,$r25
1c003358:	5c0440c0 	bne	$r6,$r0,1088(0x440) # 1c003798 <shell15+0x1628>
1c00335c:	2881a06f 	ld.w	$r15,$r3,104(0x68)
1c003360:	28814064 	ld.w	$r4,$r3,80(0x50)
1c003364:	03c007b2 	xori	$r18,$r29,0x1
1c003368:	0012c813 	sltu	$r19,$r0,$r18
1c00336c:	02bffdf4 	addi.w	$r20,$r15,-1(0xfff)
1c003370:	00104c91 	add.w	$r17,$r4,$r19
1c003374:	2981a074 	st.w	$r20,$r3,104(0x68)
1c003378:	29814071 	st.w	$r17,$r3,80(0x50)
1c00337c:	5fee6e80 	bne	$r20,$r0,-4500(0x3ee6c) # 1c0021e8 <shell15+0x78>
1c003380:	5421e000 	bl	8672(0x21e0) # 1c005560 <get_count_my>
1c003384:	0015009b 	move	$r27,$r4
1c003388:	5421a800 	bl	8616(0x21a8) # 1c005530 <get_count>
1c00338c:	2882306e 	ld.w	$r14,$r3,140(0x8c)
1c003390:	28822065 	ld.w	$r5,$r3,136(0x88)
1c003394:	2881406d 	ld.w	$r13,$r3,80(0x50)
1c003398:	00113b76 	sub.w	$r22,$r27,$r14
1c00339c:	0011149a 	sub.w	$r26,$r4,$r5
1c0033a0:	5c0431a0 	bne	$r13,$r0,1072(0x430) # 1c0037d0 <shell15+0x1660>
1c0033a4:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c0033a8:	02b20084 	addi.w	$r4,$r4,-896(0xc80)
1c0033ac:	541d8400 	bl	7556(0x1d84) # 1c005130 <puts>
1c0033b0:	157f5fe6 	lu12i.w	$r6,-263425(0xbfaff)
1c0033b4:	02800408 	addi.w	$r8,$r0,1(0x1)
1c0033b8:	038100d0 	ori	$r16,$r6,0x40
1c0033bc:	29800208 	st.w	$r8,$r16,0
1c0033c0:	140001ed 	lu12i.w	$r13,15(0xf)
1c0033c4:	0380c0cf 	ori	$r15,$r6,0x30
1c0033c8:	038080d1 	ori	$r17,$r6,0x20
1c0033cc:	03bffda5 	ori	$r5,$r13,0xfff
1c0033d0:	298001e8 	st.w	$r8,$r15,0
1c0033d4:	29800225 	st.w	$r5,$r17,0
1c0033d8:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c0033dc:	0381403c 	ori	$r28,$r1,0x50
1c0033e0:	29800396 	st.w	$r22,$r28,0
1c0033e4:	157f5f1b 	lu12i.w	$r27,-263432(0xbfaf8)
1c0033e8:	29800376 	st.w	$r22,$r27,0
1c0033ec:	0380437e 	ori	$r30,$r27,0x10
1c0033f0:	00150345 	move	$r5,$r26
1c0033f4:	298003da 	st.w	$r26,$r30,0
1c0033f8:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c0033fc:	02b14084 	addi.w	$r4,$r4,-944(0xc50)
1c003400:	541a1000 	bl	6672(0x1a10) # 1c004e10 <printf>
1c003404:	001502c5 	move	$r5,$r22
1c003408:	2882e076 	ld.w	$r22,$r3,184(0xb8)
1c00340c:	2882f061 	ld.w	$r1,$r3,188(0xbc)
1c003410:	2882d077 	ld.w	$r23,$r3,180(0xb4)
1c003414:	2882c078 	ld.w	$r24,$r3,176(0xb0)
1c003418:	2882b079 	ld.w	$r25,$r3,172(0xac)
1c00341c:	2882a07a 	ld.w	$r26,$r3,168(0xa8)
1c003420:	2882907b 	ld.w	$r27,$r3,164(0xa4)
1c003424:	2882807c 	ld.w	$r28,$r3,160(0xa0)
1c003428:	2882707d 	ld.w	$r29,$r3,156(0x9c)
1c00342c:	2882607e 	ld.w	$r30,$r3,152(0x98)
1c003430:	2882507f 	ld.w	$r31,$r3,148(0x94)
1c003434:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c003438:	02b10084 	addi.w	$r4,$r4,-960(0xc40)
1c00343c:	02830063 	addi.w	$r3,$r3,192(0xc0)
1c003440:	5019d000 	b	6608(0x19d0) # 1c004e10 <printf>
1c003444:	2881207a 	ld.w	$r26,$r3,72(0x48)
1c003448:	2980b060 	st.w	$r0,$r3,44(0x2c)
1c00344c:	2980d060 	st.w	$r0,$r3,52(0x34)
1c003450:	02bfff5c 	addi.w	$r28,$r26,-1(0xfff)
1c003454:	2980c060 	st.w	$r0,$r3,48(0x30)
1c003458:	2981207c 	st.w	$r28,$r3,72(0x48)
1c00345c:	5fed9780 	bne	$r28,$r0,-4716(0x3ed94) # 1c0021f0 <shell15+0x80>
1c003460:	53fed3ff 	b	-304(0xffffed0) # 1c003330 <shell15+0x11c0>
1c003464:	001502d8 	move	$r24,$r22
1c003468:	53fe93ff 	b	-368(0xffffe90) # 1c0032f8 <shell15+0x1188>
1c00346c:	03400000 	andi	$r0,$r0,0x0
1c003470:	0010299e 	add.w	$r30,$r12,$r10
1c003474:	00103fc1 	add.w	$r1,$r30,$r15
1c003478:	28000031 	ld.b	$r17,$r1,0
1c00347c:	5bee8a2d 	beq	$r17,$r13,-4472(0x3ee88) # 1c002304 <shell15+0x194>
1c003480:	0010399e 	add.w	$r30,$r12,$r14
1c003484:	00105bc1 	add.w	$r1,$r30,$r22
1c003488:	28000031 	ld.b	$r17,$r1,0
1c00348c:	5bee7a2d 	beq	$r17,$r13,-4488(0x3ee78) # 1c002304 <shell15+0x194>
1c003490:	0010159e 	add.w	$r30,$r12,$r5
1c003494:	00105fc1 	add.w	$r1,$r30,$r23
1c003498:	28000031 	ld.b	$r17,$r1,0
1c00349c:	5bee6a2d 	beq	$r17,$r13,-4504(0x3ee68) # 1c002304 <shell15+0x194>
1c0034a0:	0010199e 	add.w	$r30,$r12,$r6
1c0034a4:	001063c1 	add.w	$r1,$r30,$r24
1c0034a8:	28000031 	ld.b	$r17,$r1,0
1c0034ac:	5bee5a2d 	beq	$r17,$r13,-4520(0x3ee58) # 1c002304 <shell15+0x194>
1c0034b0:	0010259e 	add.w	$r30,$r12,$r9
1c0034b4:	001067c1 	add.w	$r1,$r30,$r25
1c0034b8:	28000031 	ld.b	$r17,$r1,0
1c0034bc:	5bee4a2d 	beq	$r17,$r13,-4536(0x3ee48) # 1c002304 <shell15+0x194>
1c0034c0:	0010219e 	add.w	$r30,$r12,$r8
1c0034c4:	00106bc1 	add.w	$r1,$r30,$r26
1c0034c8:	28000031 	ld.b	$r17,$r1,0
1c0034cc:	5bee3a2d 	beq	$r17,$r13,-4552(0x3ee38) # 1c002304 <shell15+0x194>
1c0034d0:	00104d9e 	add.w	$r30,$r12,$r19
1c0034d4:	001073c1 	add.w	$r1,$r30,$r28
1c0034d8:	28000031 	ld.b	$r17,$r1,0
1c0034dc:	5bee2a2d 	beq	$r17,$r13,-4568(0x3ee28) # 1c002304 <shell15+0x194>
1c0034e0:	00101d9e 	add.w	$r30,$r12,$r7
1c0034e4:	001077c1 	add.w	$r1,$r30,$r29
1c0034e8:	28000031 	ld.b	$r17,$r1,0
1c0034ec:	5bee1a2d 	beq	$r17,$r13,-4584(0x3ee18) # 1c002304 <shell15+0x194>
1c0034f0:	29000192 	st.b	$r18,$r12,0
1c0034f4:	53ee13ff 	b	-4592(0xfffee10) # 1c002304 <shell15+0x194>
1c0034f8:	28802068 	ld.w	$r8,$r3,8(0x8)
1c0034fc:	2881d069 	ld.w	$r9,$r3,116(0x74)
1c003500:	2881e061 	ld.w	$r1,$r3,120(0x78)
1c003504:	2881b06c 	ld.w	$r12,$r3,108(0x6c)
1c003508:	2881c071 	ld.w	$r17,$r3,112(0x70)
1c00350c:	02bffd0e 	addi.w	$r14,$r8,-1(0xfff)
1c003510:	60026537 	blt	$r9,$r23,612(0x264) # 1c003774 <shell15+0x1604>
1c003514:	2880406d 	ld.w	$r13,$r3,16(0x10)
1c003518:	02803838 	addi.w	$r24,$r1,14(0xe)
1c00351c:	02800c25 	addi.w	$r5,$r1,3(0x3)
1c003520:	028021af 	addi.w	$r15,$r13,8(0x8)
1c003524:	02801024 	addi.w	$r4,$r1,4(0x4)
1c003528:	02803c2d 	addi.w	$r13,$r1,15(0xf)
1c00352c:	02801434 	addi.w	$r20,$r1,5(0x5)
1c003530:	02801833 	addi.w	$r19,$r1,6(0x6)
1c003534:	02801c32 	addi.w	$r18,$r1,7(0x7)
1c003538:	02802030 	addi.w	$r16,$r1,8(0x8)
1c00353c:	02802426 	addi.w	$r6,$r1,9(0x9)
1c003540:	02802827 	addi.w	$r7,$r1,10(0xa)
1c003544:	02802c28 	addi.w	$r8,$r1,11(0xb)
1c003548:	02803029 	addi.w	$r9,$r1,12(0xc)
1c00354c:	02803439 	addi.w	$r25,$r1,13(0xd)
1c003550:	02804021 	addi.w	$r1,$r1,16(0x10)
1c003554:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c003558:	2981c06a 	st.w	$r10,$r3,112(0x70)
1c00355c:	2880506a 	ld.w	$r10,$r3,20(0x14)
1c003560:	29815078 	st.w	$r24,$r3,84(0x54)
1c003564:	2981606d 	st.w	$r13,$r3,88(0x58)
1c003568:	28bed1f8 	ld.w	$r24,$r15,-76(0xfb4)
1c00356c:	0280070d 	addi.w	$r13,$r24,1(0x1)
1c003570:	29bed1ed 	st.w	$r13,$r15,-76(0xfb4)
1c003574:	6001ee37 	blt	$r17,$r23,492(0x1ec) # 1c003760 <shell15+0x15f0>
1c003578:	02804c01 	addi.w	$r1,$r0,19(0x13)
1c00357c:	001c05cd 	mul.w	$r13,$r14,$r1
1c003580:	28806078 	ld.w	$r24,$r3,24(0x18)
1c003584:	001061a1 	add.w	$r1,$r13,$r24
1c003588:	00408838 	slli.w	$r24,$r1,0x2
1c00358c:	001063c1 	add.w	$r1,$r30,$r24
1c003590:	28800038 	ld.w	$r24,$r1,0
1c003594:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003598:	29800038 	st.w	$r24,$r1,0
1c00359c:	6401c40c 	bge	$r0,$r12,452(0x1c4) # 1c003760 <shell15+0x15f0>
1c0035a0:	001029a1 	add.w	$r1,$r13,$r10
1c0035a4:	00408838 	slli.w	$r24,$r1,0x2
1c0035a8:	001063c1 	add.w	$r1,$r30,$r24
1c0035ac:	28800038 	ld.w	$r24,$r1,0
1c0035b0:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0035b4:	29800038 	st.w	$r24,$r1,0
1c0035b8:	6001aa2a 	blt	$r17,$r10,424(0x1a8) # 1c003760 <shell15+0x15f0>
1c0035bc:	001015a1 	add.w	$r1,$r13,$r5
1c0035c0:	00408838 	slli.w	$r24,$r1,0x2
1c0035c4:	001063c1 	add.w	$r1,$r30,$r24
1c0035c8:	28800038 	ld.w	$r24,$r1,0
1c0035cc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0035d0:	29800038 	st.w	$r24,$r1,0
1c0035d4:	60018e25 	blt	$r17,$r5,396(0x18c) # 1c003760 <shell15+0x15f0>
1c0035d8:	001011a1 	add.w	$r1,$r13,$r4
1c0035dc:	00408838 	slli.w	$r24,$r1,0x2
1c0035e0:	001063c1 	add.w	$r1,$r30,$r24
1c0035e4:	28800038 	ld.w	$r24,$r1,0
1c0035e8:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0035ec:	29800038 	st.w	$r24,$r1,0
1c0035f0:	60017224 	blt	$r17,$r4,368(0x170) # 1c003760 <shell15+0x15f0>
1c0035f4:	001051a1 	add.w	$r1,$r13,$r20
1c0035f8:	00408838 	slli.w	$r24,$r1,0x2
1c0035fc:	001063c1 	add.w	$r1,$r30,$r24
1c003600:	28800038 	ld.w	$r24,$r1,0
1c003604:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003608:	29800038 	st.w	$r24,$r1,0
1c00360c:	60015634 	blt	$r17,$r20,340(0x154) # 1c003760 <shell15+0x15f0>
1c003610:	00104da1 	add.w	$r1,$r13,$r19
1c003614:	00408838 	slli.w	$r24,$r1,0x2
1c003618:	001063c1 	add.w	$r1,$r30,$r24
1c00361c:	28800038 	ld.w	$r24,$r1,0
1c003620:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003624:	29800038 	st.w	$r24,$r1,0
1c003628:	60013a33 	blt	$r17,$r19,312(0x138) # 1c003760 <shell15+0x15f0>
1c00362c:	001049a1 	add.w	$r1,$r13,$r18
1c003630:	00408838 	slli.w	$r24,$r1,0x2
1c003634:	001063c1 	add.w	$r1,$r30,$r24
1c003638:	28800038 	ld.w	$r24,$r1,0
1c00363c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003640:	29800038 	st.w	$r24,$r1,0
1c003644:	60011e32 	blt	$r17,$r18,284(0x11c) # 1c003760 <shell15+0x15f0>
1c003648:	001041a1 	add.w	$r1,$r13,$r16
1c00364c:	00408838 	slli.w	$r24,$r1,0x2
1c003650:	001063c1 	add.w	$r1,$r30,$r24
1c003654:	28800038 	ld.w	$r24,$r1,0
1c003658:	02800718 	addi.w	$r24,$r24,1(0x1)
1c00365c:	29800038 	st.w	$r24,$r1,0
1c003660:	60010230 	blt	$r17,$r16,256(0x100) # 1c003760 <shell15+0x15f0>
1c003664:	001019ad 	add.w	$r13,$r13,$r6
1c003668:	004089a1 	slli.w	$r1,$r13,0x2
1c00366c:	001007d8 	add.w	$r24,$r30,$r1
1c003670:	2880030d 	ld.w	$r13,$r24,0
1c003674:	028005a1 	addi.w	$r1,$r13,1(0x1)
1c003678:	29800301 	st.w	$r1,$r24,0
1c00367c:	6000e626 	blt	$r17,$r6,228(0xe4) # 1c003760 <shell15+0x15f0>
1c003680:	02804c18 	addi.w	$r24,$r0,19(0x13)
1c003684:	001c61cd 	mul.w	$r13,$r14,$r24
1c003688:	00101da1 	add.w	$r1,$r13,$r7
1c00368c:	00408838 	slli.w	$r24,$r1,0x2
1c003690:	001063c1 	add.w	$r1,$r30,$r24
1c003694:	28800038 	ld.w	$r24,$r1,0
1c003698:	02800718 	addi.w	$r24,$r24,1(0x1)
1c00369c:	29800038 	st.w	$r24,$r1,0
1c0036a0:	6000c227 	blt	$r17,$r7,192(0xc0) # 1c003760 <shell15+0x15f0>
1c0036a4:	001021a1 	add.w	$r1,$r13,$r8
1c0036a8:	00408838 	slli.w	$r24,$r1,0x2
1c0036ac:	001063c1 	add.w	$r1,$r30,$r24
1c0036b0:	28800038 	ld.w	$r24,$r1,0
1c0036b4:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0036b8:	29800038 	st.w	$r24,$r1,0
1c0036bc:	6000a628 	blt	$r17,$r8,164(0xa4) # 1c003760 <shell15+0x15f0>
1c0036c0:	001025a1 	add.w	$r1,$r13,$r9
1c0036c4:	00408838 	slli.w	$r24,$r1,0x2
1c0036c8:	001063c1 	add.w	$r1,$r30,$r24
1c0036cc:	28800038 	ld.w	$r24,$r1,0
1c0036d0:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0036d4:	29800038 	st.w	$r24,$r1,0
1c0036d8:	60008a29 	blt	$r17,$r9,136(0x88) # 1c003760 <shell15+0x15f0>
1c0036dc:	001065a1 	add.w	$r1,$r13,$r25
1c0036e0:	00408838 	slli.w	$r24,$r1,0x2
1c0036e4:	001063c1 	add.w	$r1,$r30,$r24
1c0036e8:	28800038 	ld.w	$r24,$r1,0
1c0036ec:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0036f0:	29800038 	st.w	$r24,$r1,0
1c0036f4:	60006e39 	blt	$r17,$r25,108(0x6c) # 1c003760 <shell15+0x15f0>
1c0036f8:	28815061 	ld.w	$r1,$r3,84(0x54)
1c0036fc:	001005b8 	add.w	$r24,$r13,$r1
1c003700:	00408b01 	slli.w	$r1,$r24,0x2
1c003704:	001007c1 	add.w	$r1,$r30,$r1
1c003708:	28800038 	ld.w	$r24,$r1,0
1c00370c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003710:	29800038 	st.w	$r24,$r1,0
1c003714:	28815061 	ld.w	$r1,$r3,84(0x54)
1c003718:	60004a21 	blt	$r17,$r1,72(0x48) # 1c003760 <shell15+0x15f0>
1c00371c:	28816078 	ld.w	$r24,$r3,88(0x58)
1c003720:	001061a1 	add.w	$r1,$r13,$r24
1c003724:	00408838 	slli.w	$r24,$r1,0x2
1c003728:	001063c1 	add.w	$r1,$r30,$r24
1c00372c:	28800038 	ld.w	$r24,$r1,0
1c003730:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003734:	29800038 	st.w	$r24,$r1,0
1c003738:	28816061 	ld.w	$r1,$r3,88(0x58)
1c00373c:	60002621 	blt	$r17,$r1,36(0x24) # 1c003760 <shell15+0x15f0>
1c003740:	2881b078 	ld.w	$r24,$r3,108(0x6c)
1c003744:	001061ad 	add.w	$r13,$r13,$r24
1c003748:	004089a1 	slli.w	$r1,$r13,0x2
1c00374c:	001007d8 	add.w	$r24,$r30,$r1
1c003750:	2880030d 	ld.w	$r13,$r24,0
1c003754:	028005a1 	addi.w	$r1,$r13,1(0x1)
1c003758:	29800301 	st.w	$r1,$r24,0
1c00375c:	03400000 	andi	$r0,$r0,0x0
1c003760:	2880a078 	ld.w	$r24,$r3,40(0x28)
1c003764:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c003768:	028131ef 	addi.w	$r15,$r15,76(0x4c)
1c00376c:	67fdff0e 	bge	$r24,$r14,-516(0x3fdfc) # 1c003568 <shell15+0x13f8>
1c003770:	2881c06a 	ld.w	$r10,$r3,112(0x70)
1c003774:	2882006c 	ld.w	$r12,$r3,128(0x80)
1c003778:	02800411 	addi.w	$r17,$r0,1(0x1)
1c00377c:	5800d591 	beq	$r12,$r17,212(0xd4) # 1c003850 <shell15+0x16e0>
1c003780:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c003784:	5800dd8e 	beq	$r12,$r14,220(0xdc) # 1c003860 <shell15+0x16f0>
1c003788:	2880b06f 	ld.w	$r15,$r3,44(0x2c)
1c00378c:	028005e5 	addi.w	$r5,$r15,1(0x1)
1c003790:	2980b065 	st.w	$r5,$r3,44(0x2c)
1c003794:	53eedfff 	b	-4388(0xfffeedc) # 1c002670 <shell15+0x500>
1c003798:	2881a068 	ld.w	$r8,$r3,104(0x68)
1c00379c:	28814061 	ld.w	$r1,$r3,80(0x50)
1c0037a0:	02bffd09 	addi.w	$r9,$r8,-1(0xfff)
1c0037a4:	02800430 	addi.w	$r16,$r1,1(0x1)
1c0037a8:	2981a069 	st.w	$r9,$r3,104(0x68)
1c0037ac:	29814070 	st.w	$r16,$r3,80(0x50)
1c0037b0:	5fea3920 	bne	$r9,$r0,-5576(0x3ea38) # 1c0021e8 <shell15+0x78>
1c0037b4:	541dac00 	bl	7596(0x1dac) # 1c005560 <get_count_my>
1c0037b8:	0015009f 	move	$r31,$r4
1c0037bc:	541d7400 	bl	7540(0x1d74) # 1c005530 <get_count>
1c0037c0:	2882306e 	ld.w	$r14,$r3,140(0x8c)
1c0037c4:	28822074 	ld.w	$r20,$r3,136(0x88)
1c0037c8:	00113bf6 	sub.w	$r22,$r31,$r14
1c0037cc:	0011509a 	sub.w	$r26,$r4,$r20
1c0037d0:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c0037d4:	02a19084 	addi.w	$r4,$r4,-1948(0x864)
1c0037d8:	54195800 	bl	6488(0x1958) # 1c005130 <puts>
1c0037dc:	157f5fe4 	lu12i.w	$r4,-263425(0xbfaff)
1c0037e0:	02800413 	addi.w	$r19,$r0,1(0x1)
1c0037e4:	0381008a 	ori	$r10,$r4,0x40
1c0037e8:	29800153 	st.w	$r19,$r10,0
1c0037ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0037f0:	0380c08b 	ori	$r11,$r4,0x30
1c0037f4:	0380808c 	ori	$r12,$r4,0x20
1c0037f8:	29800167 	st.w	$r7,$r11,0
1c0037fc:	29800180 	st.w	$r0,$r12,0
1c003800:	53fbdbff 	b	-1064(0xffffbd8) # 1c0033d8 <shell15+0x1268>
1c003804:	2880206e 	ld.w	$r14,$r3,8(0x8)
1c003808:	001049d9 	add.w	$r25,$r14,$r18
1c00380c:	2980a079 	st.w	$r25,$r3,40(0x28)
1c003810:	53f3ebff 	b	-3096(0xffff3e8) # 1c002bf8 <shell15+0xa88>
1c003814:	28802066 	ld.w	$r6,$r3,8(0x8)
1c003818:	004085b1 	slli.w	$r17,$r13,0x1
1c00381c:	00101a32 	add.w	$r18,$r17,$r6
1c003820:	001c2e4e 	mul.w	$r14,$r18,$r11
1c003824:	00103b65 	add.w	$r5,$r27,$r14
1c003828:	001064a4 	add.w	$r4,$r5,$r25
1c00382c:	2800008f 	ld.b	$r15,$r4,0
1c003830:	580041fa 	beq	$r15,$r26,64(0x40) # 1c003870 <shell15+0x1700>
1c003834:	0280b819 	addi.w	$r25,$r0,46(0x2e)
1c003838:	5fee39f9 	bne	$r15,$r25,-4552(0x3ee38) # 1c002670 <shell15+0x500>
1c00383c:	02800414 	addi.w	$r20,$r0,1(0x1)
1c003840:	00150006 	move	$r6,$r0
1c003844:	29820074 	st.w	$r20,$r3,128(0x80)
1c003848:	53f64bff 	b	-2488(0xffff648) # 1c002e90 <shell15+0xd20>
1c00384c:	03400000 	andi	$r0,$r0,0x0
1c003850:	2880c073 	ld.w	$r19,$r3,48(0x30)
1c003854:	02800672 	addi.w	$r18,$r19,1(0x1)
1c003858:	2980c072 	st.w	$r18,$r3,48(0x30)
1c00385c:	53ee17ff 	b	-4588(0xfffee14) # 1c002670 <shell15+0x500>
1c003860:	2880d064 	ld.w	$r4,$r3,52(0x34)
1c003864:	02800494 	addi.w	$r20,$r4,1(0x1)
1c003868:	2980d074 	st.w	$r20,$r3,52(0x34)
1c00386c:	53ee07ff 	b	-4604(0xfffee04) # 1c002670 <shell15+0x500>
1c003870:	02800813 	addi.w	$r19,$r0,2(0x2)
1c003874:	02800406 	addi.w	$r6,$r0,1(0x1)
1c003878:	29820073 	st.w	$r19,$r3,128(0x80)
1c00387c:	53f617ff 	b	-2540(0xffff614) # 1c002e90 <shell15+0xd20>
1c003880:	02802816 	addi.w	$r22,$r0,10(0xa)
1c003884:	1c000fab 	pcaddu12i	$r11,125(0x7d)
1c003888:	029a116b 	addi.w	$r11,$r11,1668(0x684)
1c00388c:	0015037c 	move	$r28,$r27
1c003890:	2980c076 	st.w	$r22,$r3,48(0x30)
1c003894:	2981506b 	st.w	$r11,$r3,84(0x54)
1c003898:	03a60006 	ori	$r6,$r0,0x980
1c00389c:	00150005 	move	$r5,$r0
1c0038a0:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c0038a4:	02a91084 	addi.w	$r4,$r4,-1468(0xa44)
1c0038a8:	541b5800 	bl	7000(0x1b58) # 1c005400 <memset>
1c0038ac:	28815077 	ld.w	$r23,$r3,84(0x54)
1c0038b0:	02800818 	addi.w	$r24,$r0,2(0x2)
1c0038b4:	288002f9 	ld.w	$r25,$r23,0
1c0038b8:	640e7319 	bge	$r24,$r25,3696(0xe70) # 1c004728 <shell15+0x25b8>
1c0038bc:	1c000fbf 	pcaddu12i	$r31,125(0x7d)
1c0038c0:	029943ff 	addi.w	$r31,$r31,1616(0x650)
1c0038c4:	288003fe 	ld.w	$r30,$r31,0
1c0038c8:	1c000fba 	pcaddu12i	$r26,125(0x7d)
1c0038cc:	02a7735a 	addi.w	$r26,$r26,-1572(0x9dc)
1c0038d0:	2880035d 	ld.w	$r29,$r26,0
1c0038d4:	28801354 	ld.w	$r20,$r26,4(0x4)
1c0038d8:	2980807e 	st.w	$r30,$r3,32(0x20)
1c0038dc:	28802353 	ld.w	$r19,$r26,8(0x8)
1c0038e0:	28803345 	ld.w	$r5,$r26,12(0xc)
1c0038e4:	28804351 	ld.w	$r17,$r26,16(0x10)
1c0038e8:	28805347 	ld.w	$r7,$r26,20(0x14)
1c0038ec:	28806352 	ld.w	$r18,$r26,24(0x18)
1c0038f0:	28807349 	ld.w	$r9,$r26,28(0x1c)
1c0038f4:	28808344 	ld.w	$r4,$r26,32(0x20)
1c0038f8:	2880934b 	ld.w	$r11,$r26,36(0x24)
1c0038fc:	2880a346 	ld.w	$r6,$r26,40(0x28)
1c003900:	2880b341 	ld.w	$r1,$r26,44(0x2c)
1c003904:	2880c35b 	ld.w	$r27,$r26,48(0x30)
1c003908:	2880d357 	ld.w	$r23,$r26,52(0x34)
1c00390c:	2880e34a 	ld.w	$r10,$r26,56(0x38)
1c003910:	2880f35a 	ld.w	$r26,$r26,60(0x3c)
1c003914:	64009b1e 	bge	$r24,$r30,152(0x98) # 1c0039ac <shell15+0x183c>
1c003918:	0280540c 	addi.w	$r12,$r0,21(0x15)
1c00391c:	02bfac0e 	addi.w	$r14,$r0,-21(0xfeb)
1c003920:	001c33af 	mul.w	$r15,$r29,$r12
1c003924:	02800b9f 	addi.w	$r31,$r28,2(0x2)
1c003928:	00107b9e 	add.w	$r30,$r28,$r30
1c00392c:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c003930:	001c3231 	mul.w	$r17,$r17,$r12
1c003934:	001c3252 	mul.w	$r18,$r18,$r12
1c003938:	001c3084 	mul.w	$r4,$r4,$r12
1c00393c:	001c30c6 	mul.w	$r6,$r6,$r12
1c003940:	001c314a 	mul.w	$r10,$r10,$r12
1c003944:	001c3b3d 	mul.w	$r29,$r25,$r14
1c003948:	001c3270 	mul.w	$r16,$r19,$r12
1c00394c:	02bf5813 	addi.w	$r19,$r0,-42(0xfd6)
1c003950:	001c3368 	mul.w	$r8,$r27,$r12
1c003954:	0280b81b 	addi.w	$r27,$r0,46(0x2e)
1c003958:	00114fec 	sub.w	$r12,$r31,$r19
1c00395c:	00114fd8 	sub.w	$r24,$r30,$r19
1c003960:	00113316 	sub.w	$r22,$r24,$r12
1c003964:	03400ece 	andi	$r14,$r22,0x3
1c003968:	580721c0 	beq	$r14,$r0,1824(0x720) # 1c004088 <shell15+0x1f18>
1c00396c:	02800416 	addi.w	$r22,$r0,1(0x1)
1c003970:	580025d6 	beq	$r14,$r22,36(0x24) # 1c003994 <shell15+0x1824>
1c003974:	02800816 	addi.w	$r22,$r0,2(0x2)
1c003978:	580011d6 	beq	$r14,$r22,16(0x10) # 1c003988 <shell15+0x1818>
1c00397c:	2800018e 	ld.b	$r14,$r12,0
1c003980:	5808c9cd 	beq	$r14,$r13,2248(0x8c8) # 1c004248 <shell15+0x20d8>
1c003984:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003988:	2800018e 	ld.b	$r14,$r12,0
1c00398c:	580835cd 	beq	$r14,$r13,2100(0x834) # 1c0041c0 <shell15+0x2050>
1c003990:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003994:	28000196 	ld.b	$r22,$r12,0
1c003998:	580a3acd 	beq	$r22,$r13,2616(0xa38) # 1c0043d0 <shell15+0x2260>
1c00399c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0039a0:	5c06e998 	bne	$r12,$r24,1768(0x6e8) # 1c004088 <shell15+0x1f18>
1c0039a4:	02bfae73 	addi.w	$r19,$r19,-21(0xfeb)
1c0039a8:	5fffb27d 	bne	$r19,$r29,-80(0x3ffb0) # 1c003958 <shell15+0x17e8>
1c0039ac:	02805414 	addi.w	$r20,$r0,21(0x15)
1c0039b0:	001c5329 	mul.w	$r9,$r25,$r20
1c0039b4:	28808065 	ld.w	$r5,$r3,32(0x20)
1c0039b8:	1c000fab 	pcaddu12i	$r11,125(0x7d)
1c0039bc:	02a4b16b 	addi.w	$r11,$r11,-1748(0x92c)
1c0039c0:	02826161 	addi.w	$r1,$r11,152(0x98)
1c0039c4:	02bffca7 	addi.w	$r7,$r5,-1(0xfff)
1c0039c8:	02bfff39 	addi.w	$r25,$r25,-1(0xfff)
1c0039cc:	02805416 	addi.w	$r22,$r0,21(0x15)
1c0039d0:	02800c18 	addi.w	$r24,$r0,3(0x3)
1c0039d4:	29812060 	st.w	$r0,$r3,72(0x48)
1c0039d8:	29814060 	st.w	$r0,$r3,80(0x50)
1c0039dc:	29813060 	st.w	$r0,$r3,76(0x4c)
1c0039e0:	02808c1b 	addi.w	$r27,$r0,35(0x23)
1c0039e4:	29802067 	st.w	$r7,$r3,8(0x8)
1c0039e8:	29803079 	st.w	$r25,$r3,12(0xc)
1c0039ec:	0015003a 	move	$r26,$r1
1c0039f0:	02bfad37 	addi.w	$r23,$r9,-21(0xfeb)
1c0039f4:	29809077 	st.w	$r23,$r3,36(0x24)
1c0039f8:	28802071 	ld.w	$r17,$r3,8(0x8)
1c0039fc:	02bfff0f 	addi.w	$r15,$r24,-1(0xfff)
1c003a00:	2980406f 	st.w	$r15,$r3,16(0x10)
1c003a04:	02800810 	addi.w	$r16,$r0,2(0x2)
1c003a08:	6408ca11 	bge	$r16,$r17,2248(0x8c8) # 1c0042d0 <shell15+0x2160>
1c003a0c:	0280541e 	addi.w	$r30,$r0,21(0x15)
1c003a10:	02bfff06 	addi.w	$r6,$r24,-1(0xfff)
1c003a14:	02805412 	addi.w	$r18,$r0,21(0x15)
1c003a18:	001c78c8 	mul.w	$r8,$r6,$r30
1c003a1c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c003a20:	0280638a 	addi.w	$r10,$r28,24(0x18)
1c003a24:	02bfac1d 	addi.w	$r29,$r0,-21(0xfeb)
1c003a28:	00105957 	add.w	$r23,$r10,$r22
1c003a2c:	00115bb3 	sub.w	$r19,$r29,$r22
1c003a30:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c003a34:	02bffbed 	addi.w	$r13,$r31,-2(0xffe)
1c003a38:	00150359 	move	$r25,$r26
1c003a3c:	29806073 	st.w	$r19,$r3,24(0x18)
1c003a40:	0011614b 	sub.w	$r11,$r10,$r24
1c003a44:	2980706d 	st.w	$r13,$r3,28(0x1c)
1c003a48:	001c4b04 	mul.w	$r4,$r24,$r18
1c003a4c:	0010238e 	add.w	$r14,$r28,$r8
1c003a50:	2980b06e 	st.w	$r14,$r3,44(0x2c)
1c003a54:	29805064 	st.w	$r4,$r3,20(0x14)
1c003a58:	50001c00 	b	28(0x1c) # 1c003a74 <shell15+0x1904>
1c003a5c:	03400000 	andi	$r0,$r0,0x0
1c003a60:	001503ea 	move	$r10,$r31
1c003a64:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c003a68:	02801339 	addi.w	$r25,$r25,4(0x4)
1c003a6c:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c003a70:	6408615f 	bge	$r10,$r31,2144(0x860) # 1c0042d0 <shell15+0x2160>
1c003a74:	283ffee9 	ld.b	$r9,$r23,-1(0xfff)
1c003a78:	0280b80c 	addi.w	$r12,$r0,46(0x2e)
1c003a7c:	0280055f 	addi.w	$r31,$r10,1(0x1)
1c003a80:	5fffe12c 	bne	$r9,$r12,-32(0x3ffe0) # 1c003a60 <shell15+0x18f0>
1c003a84:	280002f4 	ld.b	$r20,$r23,0
1c003a88:	5fffda9b 	bne	$r20,$r27,-40(0x3ffd8) # 1c003a60 <shell15+0x18f0>
1c003a8c:	2880233d 	ld.w	$r29,$r25,8(0x8)
1c003a90:	5fffd3a0 	bne	$r29,$r0,-48(0x3ffd0) # 1c003a60 <shell15+0x18f0>
1c003a94:	28802067 	ld.w	$r7,$r3,8(0x8)
1c003a98:	02800945 	addi.w	$r5,$r10,2(0x2)
1c003a9c:	2980d065 	st.w	$r5,$r3,52(0x34)
1c003aa0:	02800410 	addi.w	$r16,$r0,1(0x1)
1c003aa4:	640150a7 	bge	$r5,$r7,336(0x150) # 1c003bf4 <shell15+0x1a84>
1c003aa8:	280006e1 	ld.b	$r1,$r23,1(0x1)
1c003aac:	5c01483b 	bne	$r1,$r27,328(0x148) # 1c003bf4 <shell15+0x1a84>
1c003ab0:	2880706f 	ld.w	$r15,$r3,28(0x1c)
1c003ab4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003ab8:	02bffee4 	addi.w	$r4,$r23,-1(0xfff)
1c003abc:	001129f2 	sub.w	$r18,$r15,$r10
1c003ac0:	02bffa51 	addi.w	$r17,$r18,-2(0xffe)
1c003ac4:	03401e26 	andi	$r6,$r17,0x7
1c003ac8:	580098c0 	beq	$r6,$r0,152(0x98) # 1c003b60 <shell15+0x19f0>
1c003acc:	28000ae8 	ld.b	$r8,$r23,2(0x2)
1c003ad0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003ad4:	5c011d1b 	bne	$r8,$r27,284(0x11c) # 1c003bf0 <shell15+0x1a80>
1c003ad8:	580088d0 	beq	$r6,$r16,136(0x88) # 1c003b60 <shell15+0x19f0>
1c003adc:	580074cc 	beq	$r6,$r12,116(0x74) # 1c003b50 <shell15+0x19e0>
1c003ae0:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c003ae4:	58005cd0 	beq	$r6,$r16,92(0x5c) # 1c003b40 <shell15+0x19d0>
1c003ae8:	02801013 	addi.w	$r19,$r0,4(0x4)
1c003aec:	580044d3 	beq	$r6,$r19,68(0x44) # 1c003b30 <shell15+0x19c0>
1c003af0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c003af4:	58002ccd 	beq	$r6,$r13,44(0x2c) # 1c003b20 <shell15+0x19b0>
1c003af8:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c003afc:	580014ce 	beq	$r6,$r14,20(0x14) # 1c003b10 <shell15+0x19a0>
1c003b00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b04:	00103094 	add.w	$r20,$r4,$r12
1c003b08:	28000685 	ld.b	$r5,$r20,1(0x1)
1c003b0c:	5c00e4bb 	bne	$r5,$r27,228(0xe4) # 1c003bf0 <shell15+0x1a80>
1c003b10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b14:	00103087 	add.w	$r7,$r4,$r12
1c003b18:	280004e1 	ld.b	$r1,$r7,1(0x1)
1c003b1c:	5c00d43b 	bne	$r1,$r27,212(0xd4) # 1c003bf0 <shell15+0x1a80>
1c003b20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b24:	0010308f 	add.w	$r15,$r4,$r12
1c003b28:	280005f1 	ld.b	$r17,$r15,1(0x1)
1c003b2c:	5c00c63b 	bne	$r17,$r27,196(0xc4) # 1c003bf0 <shell15+0x1a80>
1c003b30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b34:	00103086 	add.w	$r6,$r4,$r12
1c003b38:	280004c8 	ld.b	$r8,$r6,1(0x1)
1c003b3c:	5c00b51b 	bne	$r8,$r27,180(0xb4) # 1c003bf0 <shell15+0x1a80>
1c003b40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b44:	00103090 	add.w	$r16,$r4,$r12
1c003b48:	28000613 	ld.b	$r19,$r16,1(0x1)
1c003b4c:	5c00a67b 	bne	$r19,$r27,164(0xa4) # 1c003bf0 <shell15+0x1a80>
1c003b50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b54:	0010308d 	add.w	$r13,$r4,$r12
1c003b58:	280005ae 	ld.b	$r14,$r13,1(0x1)
1c003b5c:	5c0095db 	bne	$r14,$r27,148(0x94) # 1c003bf0 <shell15+0x1a80>
1c003b60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b64:	00150250 	move	$r16,$r18
1c003b68:	00103094 	add.w	$r20,$r4,$r12
1c003b6c:	00150185 	move	$r5,$r12
1c003b70:	58008592 	beq	$r12,$r18,132(0x84) # 1c003bf4 <shell15+0x1a84>
1c003b74:	28000687 	ld.b	$r7,$r20,1(0x1)
1c003b78:	5c0078fb 	bne	$r7,$r27,120(0x78) # 1c003bf0 <shell15+0x1a80>
1c003b7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b80:	00103081 	add.w	$r1,$r4,$r12
1c003b84:	2800042f 	ld.b	$r15,$r1,1(0x1)
1c003b88:	5c0069fb 	bne	$r15,$r27,104(0x68) # 1c003bf0 <shell15+0x1a80>
1c003b8c:	028008ac 	addi.w	$r12,$r5,2(0x2)
1c003b90:	00103091 	add.w	$r17,$r4,$r12
1c003b94:	28000626 	ld.b	$r6,$r17,1(0x1)
1c003b98:	5c0058db 	bne	$r6,$r27,88(0x58) # 1c003bf0 <shell15+0x1a80>
1c003b9c:	02800cac 	addi.w	$r12,$r5,3(0x3)
1c003ba0:	00103088 	add.w	$r8,$r4,$r12
1c003ba4:	28000510 	ld.b	$r16,$r8,1(0x1)
1c003ba8:	5c004a1b 	bne	$r16,$r27,72(0x48) # 1c003bf0 <shell15+0x1a80>
1c003bac:	028010ac 	addi.w	$r12,$r5,4(0x4)
1c003bb0:	00103093 	add.w	$r19,$r4,$r12
1c003bb4:	2800066d 	ld.b	$r13,$r19,1(0x1)
1c003bb8:	5c0039bb 	bne	$r13,$r27,56(0x38) # 1c003bf0 <shell15+0x1a80>
1c003bbc:	028014ac 	addi.w	$r12,$r5,5(0x5)
1c003bc0:	0010308e 	add.w	$r14,$r4,$r12
1c003bc4:	280005d4 	ld.b	$r20,$r14,1(0x1)
1c003bc8:	5c002a9b 	bne	$r20,$r27,40(0x28) # 1c003bf0 <shell15+0x1a80>
1c003bcc:	028018ac 	addi.w	$r12,$r5,6(0x6)
1c003bd0:	00103087 	add.w	$r7,$r4,$r12
1c003bd4:	280004e1 	ld.b	$r1,$r7,1(0x1)
1c003bd8:	5c00183b 	bne	$r1,$r27,24(0x18) # 1c003bf0 <shell15+0x1a80>
1c003bdc:	02801cac 	addi.w	$r12,$r5,7(0x7)
1c003be0:	00103085 	add.w	$r5,$r4,$r12
1c003be4:	280004af 	ld.b	$r15,$r5,1(0x1)
1c003be8:	5bff79fb 	beq	$r15,$r27,-136(0x3ff78) # 1c003b60 <shell15+0x19f0>
1c003bec:	03400000 	andi	$r0,$r0,0x0
1c003bf0:	00150190 	move	$r16,$r12
1c003bf4:	28803072 	ld.w	$r18,$r3,12(0xc)
1c003bf8:	67fe6b12 	bge	$r24,$r18,-408(0x3fe68) # 1c003a60 <shell15+0x18f0>
1c003bfc:	28806064 	ld.w	$r4,$r3,24(0x18)
1c003c00:	28805066 	ld.w	$r6,$r3,20(0x14)
1c003c04:	001502ed 	move	$r13,$r23
1c003c08:	00105c91 	add.w	$r17,$r4,$r23
1c003c0c:	00101a28 	add.w	$r8,$r17,$r6
1c003c10:	28000113 	ld.b	$r19,$r8,0
1c003c14:	0015030c 	move	$r12,$r24
1c003c18:	5ffe4a7b 	bne	$r19,$r27,-440(0x3fe48) # 1c003a60 <shell15+0x18f0>
1c003c1c:	0014600e 	nor	$r14,$r0,$r24
1c003c20:	001049d4 	add.w	$r20,$r14,$r18
1c003c24:	03401e87 	andi	$r7,$r20,0x7
1c003c28:	5800c0e0 	beq	$r7,$r0,192(0xc0) # 1c003ce8 <shell15+0x1b78>
1c003c2c:	028056ed 	addi.w	$r13,$r23,21(0x15)
1c003c30:	280055a1 	ld.b	$r1,$r13,21(0x15)
1c003c34:	0010616e 	add.w	$r14,$r11,$r24
1c003c38:	0280070c 	addi.w	$r12,$r24,1(0x1)
1c003c3c:	5c01383b 	bne	$r1,$r27,312(0x138) # 1c003d74 <shell15+0x1c04>
1c003c40:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003c44:	5800a4e5 	beq	$r7,$r5,164(0xa4) # 1c003ce8 <shell15+0x1b78>
1c003c48:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c003c4c:	580088ef 	beq	$r7,$r15,136(0x88) # 1c003cd4 <shell15+0x1b64>
1c003c50:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c003c54:	58006cf2 	beq	$r7,$r18,108(0x6c) # 1c003cc0 <shell15+0x1b50>
1c003c58:	02801004 	addi.w	$r4,$r0,4(0x4)
1c003c5c:	580050e4 	beq	$r7,$r4,80(0x50) # 1c003cac <shell15+0x1b3c>
1c003c60:	02801411 	addi.w	$r17,$r0,5(0x5)
1c003c64:	580034f1 	beq	$r7,$r17,52(0x34) # 1c003c98 <shell15+0x1b28>
1c003c68:	02801806 	addi.w	$r6,$r0,6(0x6)
1c003c6c:	580018e6 	beq	$r7,$r6,24(0x18) # 1c003c84 <shell15+0x1b14>
1c003c70:	2800a9a8 	ld.b	$r8,$r13,42(0x2a)
1c003c74:	0010316e 	add.w	$r14,$r11,$r12
1c003c78:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003c7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c80:	5c00f51b 	bne	$r8,$r27,244(0xf4) # 1c003d74 <shell15+0x1c04>
1c003c84:	2800a9b3 	ld.b	$r19,$r13,42(0x2a)
1c003c88:	0010316e 	add.w	$r14,$r11,$r12
1c003c8c:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003c90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c94:	5c00e27b 	bne	$r19,$r27,224(0xe0) # 1c003d74 <shell15+0x1c04>
1c003c98:	2800a9b4 	ld.b	$r20,$r13,42(0x2a)
1c003c9c:	0010316e 	add.w	$r14,$r11,$r12
1c003ca0:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003ca4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ca8:	5c00ce9b 	bne	$r20,$r27,204(0xcc) # 1c003d74 <shell15+0x1c04>
1c003cac:	2800a9a7 	ld.b	$r7,$r13,42(0x2a)
1c003cb0:	0010316e 	add.w	$r14,$r11,$r12
1c003cb4:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003cb8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003cbc:	5c00b8fb 	bne	$r7,$r27,184(0xb8) # 1c003d74 <shell15+0x1c04>
1c003cc0:	2800a9a1 	ld.b	$r1,$r13,42(0x2a)
1c003cc4:	0010316e 	add.w	$r14,$r11,$r12
1c003cc8:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003ccc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003cd0:	5c00a43b 	bne	$r1,$r27,164(0xa4) # 1c003d74 <shell15+0x1c04>
1c003cd4:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003cd8:	280055a5 	ld.b	$r5,$r13,21(0x15)
1c003cdc:	0010316e 	add.w	$r14,$r11,$r12
1c003ce0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ce4:	5c0090bb 	bne	$r5,$r27,144(0x90) # 1c003d74 <shell15+0x1c04>
1c003ce8:	28803064 	ld.w	$r4,$r3,12(0xc)
1c003cec:	0280058f 	addi.w	$r15,$r12,1(0x1)
1c003cf0:	0010316e 	add.w	$r14,$r11,$r12
1c003cf4:	02800992 	addi.w	$r18,$r12,2(0x2)
1c003cf8:	02800d88 	addi.w	$r8,$r12,3(0x3)
1c003cfc:	640079e4 	bge	$r15,$r4,120(0x78) # 1c003d74 <shell15+0x1c04>
1c003d00:	2800a9b1 	ld.b	$r17,$r13,42(0x2a)
1c003d04:	02801193 	addi.w	$r19,$r12,4(0x4)
1c003d08:	02801594 	addi.w	$r20,$r12,5(0x5)
1c003d0c:	02801986 	addi.w	$r6,$r12,6(0x6)
1c003d10:	02801d87 	addi.w	$r7,$r12,7(0x7)
1c003d14:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c003d18:	5c005e3b 	bne	$r17,$r27,92(0x5c) # 1c003d74 <shell15+0x1c04>
1c003d1c:	2800fda1 	ld.b	$r1,$r13,63(0x3f)
1c003d20:	00103d6e 	add.w	$r14,$r11,$r15
1c003d24:	5c00503b 	bne	$r1,$r27,80(0x50) # 1c003d74 <shell15+0x1c04>
1c003d28:	280151a5 	ld.b	$r5,$r13,84(0x54)
1c003d2c:	0010496e 	add.w	$r14,$r11,$r18
1c003d30:	5c0044bb 	bne	$r5,$r27,68(0x44) # 1c003d74 <shell15+0x1c04>
1c003d34:	2801a5af 	ld.b	$r15,$r13,105(0x69)
1c003d38:	0010216e 	add.w	$r14,$r11,$r8
1c003d3c:	5c0039fb 	bne	$r15,$r27,56(0x38) # 1c003d74 <shell15+0x1c04>
1c003d40:	2801f9b2 	ld.b	$r18,$r13,126(0x7e)
1c003d44:	00104d6e 	add.w	$r14,$r11,$r19
1c003d48:	5c002e5b 	bne	$r18,$r27,44(0x2c) # 1c003d74 <shell15+0x1c04>
1c003d4c:	28024da8 	ld.b	$r8,$r13,147(0x93)
1c003d50:	0010516e 	add.w	$r14,$r11,$r20
1c003d54:	5c00211b 	bne	$r8,$r27,32(0x20) # 1c003d74 <shell15+0x1c04>
1c003d58:	0282a1ad 	addi.w	$r13,$r13,168(0xa8)
1c003d5c:	280001a4 	ld.b	$r4,$r13,0
1c003d60:	0010196e 	add.w	$r14,$r11,$r6
1c003d64:	5c00109b 	bne	$r4,$r27,16(0x10) # 1c003d74 <shell15+0x1c04>
1c003d68:	280055b1 	ld.b	$r17,$r13,21(0x15)
1c003d6c:	00101d6e 	add.w	$r14,$r11,$r7
1c003d70:	5bff7a3b 	beq	$r17,$r27,-136(0x3ff78) # 1c003ce8 <shell15+0x1b78>
1c003d74:	00408613 	slli.w	$r19,$r16,0x1
1c003d78:	00113a72 	sub.w	$r18,$r19,$r14
1c003d7c:	67fce412 	bge	$r0,$r18,-796(0x3fce4) # 1c003a60 <shell15+0x18f0>
1c003d80:	02bff414 	addi.w	$r20,$r0,-3(0xffd)
1c003d84:	001c5206 	mul.w	$r6,$r16,$r20
1c003d88:	004085c7 	slli.w	$r7,$r14,0x1
1c003d8c:	001018ec 	add.w	$r12,$r7,$r6
1c003d90:	2980a06c 	st.w	$r12,$r3,40(0x28)
1c003d94:	67fccc0c 	bge	$r0,$r12,-820(0x3fccc) # 1c003a60 <shell15+0x18f0>
1c003d98:	00104150 	add.w	$r16,$r10,$r16
1c003d9c:	02800601 	addi.w	$r1,$r16,1(0x1)
1c003da0:	29810070 	st.w	$r16,$r3,64(0x40)
1c003da4:	2980e061 	st.w	$r1,$r3,56(0x38)
1c003da8:	6006b02a 	blt	$r1,$r10,1712(0x6b0) # 1c004458 <shell15+0x22e8>
1c003dac:	283faae8 	ld.b	$r8,$r23,-22(0xfea)
1c003db0:	5bfcb11b 	beq	$r8,$r27,-848(0x3fcb0) # 1c003a60 <shell15+0x18f0>
1c003db4:	2880406d 	ld.w	$r13,$r3,16(0x10)
1c003db8:	001035c4 	add.w	$r4,$r14,$r13
1c003dbc:	001c7891 	mul.w	$r17,$r4,$r30
1c003dc0:	29816064 	st.w	$r4,$r3,88(0x58)
1c003dc4:	0010478e 	add.w	$r14,$r28,$r17
1c003dc8:	001029d3 	add.w	$r19,$r14,$r10
1c003dcc:	28000274 	ld.b	$r20,$r19,0
1c003dd0:	5bfc929b 	beq	$r20,$r27,-880(0x3fc90) # 1c003a60 <shell15+0x18f0>
1c003dd4:	28810070 	ld.w	$r16,$r3,64(0x40)
1c003dd8:	1c000fa7 	pcaddu12i	$r7,125(0x7d)
1c003ddc:	02ba30e7 	addi.w	$r7,$r7,-372(0xe8c)
1c003de0:	028004e1 	addi.w	$r1,$r7,1(0x1)
1c003de4:	00102a26 	add.w	$r6,$r17,$r10
1c003de8:	00104025 	add.w	$r5,$r1,$r16
1c003dec:	001044af 	add.w	$r15,$r5,$r17
1c003df0:	00101b8c 	add.w	$r12,$r28,$r6
1c003df4:	02bfac08 	addi.w	$r8,$r0,-21(0xfeb)
1c003df8:	001c208d 	mul.w	$r13,$r4,$r8
1c003dfc:	001131e4 	sub.w	$r4,$r15,$r12
1c003e00:	03401c91 	andi	$r17,$r4,0x7
1c003e04:	5800fa20 	beq	$r17,$r0,248(0xf8) # 1c003efc <shell15+0x1d8c>
1c003e08:	0010598e 	add.w	$r14,$r12,$r22
1c003e0c:	001035d3 	add.w	$r19,$r14,$r13
1c003e10:	28000674 	ld.b	$r20,$r19,1(0x1)
1c003e14:	5bfc4e9b 	beq	$r20,$r27,-948(0x3fc4c) # 1c003a60 <shell15+0x18f0>
1c003e18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e1c:	28000186 	ld.b	$r6,$r12,0
1c003e20:	5bfc40db 	beq	$r6,$r27,-960(0x3fc40) # 1c003a60 <shell15+0x18f0>
1c003e24:	02800407 	addi.w	$r7,$r0,1(0x1)
1c003e28:	5800d627 	beq	$r17,$r7,212(0xd4) # 1c003efc <shell15+0x1d8c>
1c003e2c:	02800801 	addi.w	$r1,$r0,2(0x2)
1c003e30:	5800b221 	beq	$r17,$r1,176(0xb0) # 1c003ee0 <shell15+0x1d70>
1c003e34:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c003e38:	58008e30 	beq	$r17,$r16,140(0x8c) # 1c003ec4 <shell15+0x1d54>
1c003e3c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003e40:	58006a25 	beq	$r17,$r5,104(0x68) # 1c003ea8 <shell15+0x1d38>
1c003e44:	02801408 	addi.w	$r8,$r0,5(0x5)
1c003e48:	58004628 	beq	$r17,$r8,68(0x44) # 1c003e8c <shell15+0x1d1c>
1c003e4c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c003e50:	58002224 	beq	$r17,$r4,32(0x20) # 1c003e70 <shell15+0x1d00>
1c003e54:	00105991 	add.w	$r17,$r12,$r22
1c003e58:	0010362e 	add.w	$r14,$r17,$r13
1c003e5c:	280005d3 	ld.b	$r19,$r14,1(0x1)
1c003e60:	5bfc027b 	beq	$r19,$r27,-1024(0x3fc00) # 1c003a60 <shell15+0x18f0>
1c003e64:	28000594 	ld.b	$r20,$r12,1(0x1)
1c003e68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e6c:	5bfbf69b 	beq	$r20,$r27,-1036(0x3fbf4) # 1c003a60 <shell15+0x18f0>
1c003e70:	00105986 	add.w	$r6,$r12,$r22
1c003e74:	001034c7 	add.w	$r7,$r6,$r13
1c003e78:	280004e1 	ld.b	$r1,$r7,1(0x1)
1c003e7c:	5bfbe43b 	beq	$r1,$r27,-1052(0x3fbe4) # 1c003a60 <shell15+0x18f0>
1c003e80:	28000590 	ld.b	$r16,$r12,1(0x1)
1c003e84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e88:	5bfbda1b 	beq	$r16,$r27,-1064(0x3fbd8) # 1c003a60 <shell15+0x18f0>
1c003e8c:	00105985 	add.w	$r5,$r12,$r22
1c003e90:	001034a8 	add.w	$r8,$r5,$r13
1c003e94:	28000504 	ld.b	$r4,$r8,1(0x1)
1c003e98:	5bfbc89b 	beq	$r4,$r27,-1080(0x3fbc8) # 1c003a60 <shell15+0x18f0>
1c003e9c:	28000591 	ld.b	$r17,$r12,1(0x1)
1c003ea0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ea4:	5bfbbe3b 	beq	$r17,$r27,-1092(0x3fbbc) # 1c003a60 <shell15+0x18f0>
1c003ea8:	0010598e 	add.w	$r14,$r12,$r22
1c003eac:	001035d3 	add.w	$r19,$r14,$r13
1c003eb0:	28000674 	ld.b	$r20,$r19,1(0x1)
1c003eb4:	5bfbae9b 	beq	$r20,$r27,-1108(0x3fbac) # 1c003a60 <shell15+0x18f0>
1c003eb8:	28000586 	ld.b	$r6,$r12,1(0x1)
1c003ebc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ec0:	5bfba0db 	beq	$r6,$r27,-1120(0x3fba0) # 1c003a60 <shell15+0x18f0>
1c003ec4:	00105987 	add.w	$r7,$r12,$r22
1c003ec8:	001034e1 	add.w	$r1,$r7,$r13
1c003ecc:	28000430 	ld.b	$r16,$r1,1(0x1)
1c003ed0:	5bfb921b 	beq	$r16,$r27,-1136(0x3fb90) # 1c003a60 <shell15+0x18f0>
1c003ed4:	28000585 	ld.b	$r5,$r12,1(0x1)
1c003ed8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003edc:	5bfb84bb 	beq	$r5,$r27,-1148(0x3fb84) # 1c003a60 <shell15+0x18f0>
1c003ee0:	00105988 	add.w	$r8,$r12,$r22
1c003ee4:	00103504 	add.w	$r4,$r8,$r13
1c003ee8:	28000491 	ld.b	$r17,$r4,1(0x1)
1c003eec:	5bfb763b 	beq	$r17,$r27,-1164(0x3fb74) # 1c003a60 <shell15+0x18f0>
1c003ef0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ef4:	2800018e 	ld.b	$r14,$r12,0
1c003ef8:	5bfb69db 	beq	$r14,$r27,-1176(0x3fb68) # 1c003a60 <shell15+0x18f0>
1c003efc:	5805698f 	beq	$r12,$r15,1384(0x568) # 1c004464 <shell15+0x22f4>
1c003f00:	00105985 	add.w	$r5,$r12,$r22
1c003f04:	001034ae 	add.w	$r14,$r5,$r13
1c003f08:	280005d4 	ld.b	$r20,$r14,1(0x1)
1c003f0c:	5bfb569b 	beq	$r20,$r27,-1196(0x3fb54) # 1c003a60 <shell15+0x18f0>
1c003f10:	28000584 	ld.b	$r4,$r12,1(0x1)
1c003f14:	02800586 	addi.w	$r6,$r12,1(0x1)
1c003f18:	5bfb489b 	beq	$r4,$r27,-1208(0x3fb48) # 1c003a60 <shell15+0x18f0>
1c003f1c:	001058d3 	add.w	$r19,$r6,$r22
1c003f20:	00103667 	add.w	$r7,$r19,$r13
1c003f24:	280004e1 	ld.b	$r1,$r7,1(0x1)
1c003f28:	5bfb383b 	beq	$r1,$r27,-1224(0x3fb38) # 1c003a60 <shell15+0x18f0>
1c003f2c:	28000988 	ld.b	$r8,$r12,2(0x2)
1c003f30:	02800990 	addi.w	$r16,$r12,2(0x2)
1c003f34:	5bfb2d1b 	beq	$r8,$r27,-1236(0x3fb2c) # 1c003a60 <shell15+0x18f0>
1c003f38:	00105a11 	add.w	$r17,$r16,$r22
1c003f3c:	00103625 	add.w	$r5,$r17,$r13
1c003f40:	280004ae 	ld.b	$r14,$r5,1(0x1)
1c003f44:	5bfb1ddb 	beq	$r14,$r27,-1252(0x3fb1c) # 1c003a60 <shell15+0x18f0>
1c003f48:	28000d94 	ld.b	$r20,$r12,3(0x3)
1c003f4c:	02800d84 	addi.w	$r4,$r12,3(0x3)
1c003f50:	5bfb129b 	beq	$r20,$r27,-1264(0x3fb10) # 1c003a60 <shell15+0x18f0>
1c003f54:	00105893 	add.w	$r19,$r4,$r22
1c003f58:	00103667 	add.w	$r7,$r19,$r13
1c003f5c:	280004e1 	ld.b	$r1,$r7,1(0x1)
1c003f60:	5bfb003b 	beq	$r1,$r27,-1280(0x3fb00) # 1c003a60 <shell15+0x18f0>
1c003f64:	28001188 	ld.b	$r8,$r12,4(0x4)
1c003f68:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003f6c:	5bfaf51b 	beq	$r8,$r27,-1292(0x3faf4) # 1c003a60 <shell15+0x18f0>
1c003f70:	00105990 	add.w	$r16,$r12,$r22
1c003f74:	00103611 	add.w	$r17,$r16,$r13
1c003f78:	28000625 	ld.b	$r5,$r17,1(0x1)
1c003f7c:	5bfae4bb 	beq	$r5,$r27,-1308(0x3fae4) # 1c003a60 <shell15+0x18f0>
1c003f80:	280010ce 	ld.b	$r14,$r6,4(0x4)
1c003f84:	028010d4 	addi.w	$r20,$r6,4(0x4)
1c003f88:	5bfad9db 	beq	$r14,$r27,-1320(0x3fad8) # 1c003a60 <shell15+0x18f0>
1c003f8c:	00105a84 	add.w	$r4,$r20,$r22
1c003f90:	00103493 	add.w	$r19,$r4,$r13
1c003f94:	28000667 	ld.b	$r7,$r19,1(0x1)
1c003f98:	5bfac8fb 	beq	$r7,$r27,-1336(0x3fac8) # 1c003a60 <shell15+0x18f0>
1c003f9c:	280014c1 	ld.b	$r1,$r6,5(0x5)
1c003fa0:	028014c8 	addi.w	$r8,$r6,5(0x5)
1c003fa4:	5bfabc3b 	beq	$r1,$r27,-1348(0x3fabc) # 1c003a60 <shell15+0x18f0>
1c003fa8:	0010590c 	add.w	$r12,$r8,$r22
1c003fac:	00103590 	add.w	$r16,$r12,$r13
1c003fb0:	28000611 	ld.b	$r17,$r16,1(0x1)
1c003fb4:	5bfaae3b 	beq	$r17,$r27,-1364(0x3faac) # 1c003a60 <shell15+0x18f0>
1c003fb8:	280018c5 	ld.b	$r5,$r6,6(0x6)
1c003fbc:	028018ce 	addi.w	$r14,$r6,6(0x6)
1c003fc0:	5bfaa0bb 	beq	$r5,$r27,-1376(0x3faa0) # 1c003a60 <shell15+0x18f0>
1c003fc4:	001059d4 	add.w	$r20,$r14,$r22
1c003fc8:	00103684 	add.w	$r4,$r20,$r13
1c003fcc:	28000493 	ld.b	$r19,$r4,1(0x1)
1c003fd0:	5bfa927b 	beq	$r19,$r27,-1392(0x3fa90) # 1c003a60 <shell15+0x18f0>
1c003fd4:	28001cc7 	ld.b	$r7,$r6,7(0x7)
1c003fd8:	02801ccc 	addi.w	$r12,$r6,7(0x7)
1c003fdc:	5fff20fb 	bne	$r7,$r27,-224(0x3ff20) # 1c003efc <shell15+0x1d8c>
1c003fe0:	53fa83ff 	b	-1408(0xffffa80) # 1c003a60 <shell15+0x18f0>
1c003fe4:	00103d8e 	add.w	$r14,$r12,$r15
1c003fe8:	001051d6 	add.w	$r22,$r14,$r20
1c003fec:	280002ce 	ld.b	$r14,$r22,0
1c003ff0:	580079cd 	beq	$r14,$r13,120(0x78) # 1c004068 <shell15+0x1ef8>
1c003ff4:	00104196 	add.w	$r22,$r12,$r16
1c003ff8:	001016ce 	add.w	$r14,$r22,$r5
1c003ffc:	280001d6 	ld.b	$r22,$r14,0
1c004000:	58006acd 	beq	$r22,$r13,104(0x68) # 1c004068 <shell15+0x1ef8>
1c004004:	0010458e 	add.w	$r14,$r12,$r17
1c004008:	00101dd6 	add.w	$r22,$r14,$r7
1c00400c:	280002ce 	ld.b	$r14,$r22,0
1c004010:	580059cd 	beq	$r14,$r13,88(0x58) # 1c004068 <shell15+0x1ef8>
1c004014:	00104996 	add.w	$r22,$r12,$r18
1c004018:	001026ce 	add.w	$r14,$r22,$r9
1c00401c:	280001d6 	ld.b	$r22,$r14,0
1c004020:	58004acd 	beq	$r22,$r13,72(0x48) # 1c004068 <shell15+0x1ef8>
1c004024:	0010118e 	add.w	$r14,$r12,$r4
1c004028:	00102dd6 	add.w	$r22,$r14,$r11
1c00402c:	280002ce 	ld.b	$r14,$r22,0
1c004030:	580039cd 	beq	$r14,$r13,56(0x38) # 1c004068 <shell15+0x1ef8>
1c004034:	00101996 	add.w	$r22,$r12,$r6
1c004038:	001006ce 	add.w	$r14,$r22,$r1
1c00403c:	280001d6 	ld.b	$r22,$r14,0
1c004040:	58002acd 	beq	$r22,$r13,40(0x28) # 1c004068 <shell15+0x1ef8>
1c004044:	0010218e 	add.w	$r14,$r12,$r8
1c004048:	00105dd6 	add.w	$r22,$r14,$r23
1c00404c:	280002ce 	ld.b	$r14,$r22,0
1c004050:	580019cd 	beq	$r14,$r13,24(0x18) # 1c004068 <shell15+0x1ef8>
1c004054:	00102996 	add.w	$r22,$r12,$r10
1c004058:	00106ace 	add.w	$r14,$r22,$r26
1c00405c:	280001d6 	ld.b	$r22,$r14,0
1c004060:	58000acd 	beq	$r22,$r13,8(0x8) # 1c004068 <shell15+0x1ef8>
1c004064:	2900019b 	st.b	$r27,$r12,0
1c004068:	28000596 	ld.b	$r22,$r12,1(0x1)
1c00406c:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c004070:	58003acd 	beq	$r22,$r13,56(0x38) # 1c0040a8 <shell15+0x1f38>
1c004074:	28000996 	ld.b	$r22,$r12,2(0x2)
1c004078:	0280098e 	addi.w	$r14,$r12,2(0x2)
1c00407c:	5800becd 	beq	$r22,$r13,188(0xbc) # 1c004138 <shell15+0x1fc8>
1c004080:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c004084:	5bf92198 	beq	$r12,$r24,-1760(0x3f920) # 1c0039a4 <shell15+0x1834>
1c004088:	2800018e 	ld.b	$r14,$r12,0
1c00408c:	5802bdcd 	beq	$r14,$r13,700(0x2bc) # 1c004348 <shell15+0x21d8>
1c004090:	28000596 	ld.b	$r22,$r12,1(0x1)
1c004094:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004098:	5bff4ecd 	beq	$r22,$r13,-180(0x3ff4c) # 1c003fe4 <shell15+0x1e74>
1c00409c:	28000596 	ld.b	$r22,$r12,1(0x1)
1c0040a0:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c0040a4:	5fffd2cd 	bne	$r22,$r13,-48(0x3ffd0) # 1c004074 <shell15+0x1f04>
1c0040a8:	00103dd6 	add.w	$r22,$r14,$r15
1c0040ac:	001052d6 	add.w	$r22,$r22,$r20
1c0040b0:	280002d6 	ld.b	$r22,$r22,0
1c0040b4:	5bffc2cd 	beq	$r22,$r13,-64(0x3ffc0) # 1c004074 <shell15+0x1f04>
1c0040b8:	001041d6 	add.w	$r22,$r14,$r16
1c0040bc:	001016d6 	add.w	$r22,$r22,$r5
1c0040c0:	280002d6 	ld.b	$r22,$r22,0
1c0040c4:	5bffb2cd 	beq	$r22,$r13,-80(0x3ffb0) # 1c004074 <shell15+0x1f04>
1c0040c8:	001045d6 	add.w	$r22,$r14,$r17
1c0040cc:	00101ed6 	add.w	$r22,$r22,$r7
1c0040d0:	280002d6 	ld.b	$r22,$r22,0
1c0040d4:	5bffa2cd 	beq	$r22,$r13,-96(0x3ffa0) # 1c004074 <shell15+0x1f04>
1c0040d8:	001049d6 	add.w	$r22,$r14,$r18
1c0040dc:	001026d6 	add.w	$r22,$r22,$r9
1c0040e0:	280002d6 	ld.b	$r22,$r22,0
1c0040e4:	5bff92cd 	beq	$r22,$r13,-112(0x3ff90) # 1c004074 <shell15+0x1f04>
1c0040e8:	001011d6 	add.w	$r22,$r14,$r4
1c0040ec:	00102ed6 	add.w	$r22,$r22,$r11
1c0040f0:	280002d6 	ld.b	$r22,$r22,0
1c0040f4:	5bff82cd 	beq	$r22,$r13,-128(0x3ff80) # 1c004074 <shell15+0x1f04>
1c0040f8:	001019d6 	add.w	$r22,$r14,$r6
1c0040fc:	001006d6 	add.w	$r22,$r22,$r1
1c004100:	280002d6 	ld.b	$r22,$r22,0
1c004104:	5bff72cd 	beq	$r22,$r13,-144(0x3ff70) # 1c004074 <shell15+0x1f04>
1c004108:	001021d6 	add.w	$r22,$r14,$r8
1c00410c:	00105ed6 	add.w	$r22,$r22,$r23
1c004110:	280002d6 	ld.b	$r22,$r22,0
1c004114:	5bff62cd 	beq	$r22,$r13,-160(0x3ff60) # 1c004074 <shell15+0x1f04>
1c004118:	001029ce 	add.w	$r14,$r14,$r10
1c00411c:	001069d6 	add.w	$r22,$r14,$r26
1c004120:	280002ce 	ld.b	$r14,$r22,0
1c004124:	5bff51cd 	beq	$r14,$r13,-176(0x3ff50) # 1c004074 <shell15+0x1f04>
1c004128:	28000996 	ld.b	$r22,$r12,2(0x2)
1c00412c:	2900059b 	st.b	$r27,$r12,1(0x1)
1c004130:	0280098e 	addi.w	$r14,$r12,2(0x2)
1c004134:	5fff4ecd 	bne	$r22,$r13,-180(0x3ff4c) # 1c004080 <shell15+0x1f10>
1c004138:	00103dd6 	add.w	$r22,$r14,$r15
1c00413c:	001052d6 	add.w	$r22,$r22,$r20
1c004140:	280002d6 	ld.b	$r22,$r22,0
1c004144:	5bff3ecd 	beq	$r22,$r13,-196(0x3ff3c) # 1c004080 <shell15+0x1f10>
1c004148:	001041d6 	add.w	$r22,$r14,$r16
1c00414c:	001016d6 	add.w	$r22,$r22,$r5
1c004150:	280002d6 	ld.b	$r22,$r22,0
1c004154:	5bff2ecd 	beq	$r22,$r13,-212(0x3ff2c) # 1c004080 <shell15+0x1f10>
1c004158:	001045d6 	add.w	$r22,$r14,$r17
1c00415c:	00101ed6 	add.w	$r22,$r22,$r7
1c004160:	280002d6 	ld.b	$r22,$r22,0
1c004164:	5bff1ecd 	beq	$r22,$r13,-228(0x3ff1c) # 1c004080 <shell15+0x1f10>
1c004168:	001049d6 	add.w	$r22,$r14,$r18
1c00416c:	001026d6 	add.w	$r22,$r22,$r9
1c004170:	280002d6 	ld.b	$r22,$r22,0
1c004174:	5bff0ecd 	beq	$r22,$r13,-244(0x3ff0c) # 1c004080 <shell15+0x1f10>
1c004178:	001011d6 	add.w	$r22,$r14,$r4
1c00417c:	00102ed6 	add.w	$r22,$r22,$r11
1c004180:	280002d6 	ld.b	$r22,$r22,0
1c004184:	5bfefecd 	beq	$r22,$r13,-260(0x3fefc) # 1c004080 <shell15+0x1f10>
1c004188:	001019d6 	add.w	$r22,$r14,$r6
1c00418c:	001006d6 	add.w	$r22,$r22,$r1
1c004190:	280002d6 	ld.b	$r22,$r22,0
1c004194:	5bfeeecd 	beq	$r22,$r13,-276(0x3feec) # 1c004080 <shell15+0x1f10>
1c004198:	001021d6 	add.w	$r22,$r14,$r8
1c00419c:	00105ed6 	add.w	$r22,$r22,$r23
1c0041a0:	280002d6 	ld.b	$r22,$r22,0
1c0041a4:	5bfedecd 	beq	$r22,$r13,-292(0x3fedc) # 1c004080 <shell15+0x1f10>
1c0041a8:	001029ce 	add.w	$r14,$r14,$r10
1c0041ac:	001069d6 	add.w	$r22,$r14,$r26
1c0041b0:	280002ce 	ld.b	$r14,$r22,0
1c0041b4:	5bfecdcd 	beq	$r14,$r13,-308(0x3fecc) # 1c004080 <shell15+0x1f10>
1c0041b8:	2900099b 	st.b	$r27,$r12,2(0x2)
1c0041bc:	53fec7ff 	b	-316(0xffffec4) # 1c004080 <shell15+0x1f10>
1c0041c0:	00103d96 	add.w	$r22,$r12,$r15
1c0041c4:	001052ce 	add.w	$r14,$r22,$r20
1c0041c8:	280001d6 	ld.b	$r22,$r14,0
1c0041cc:	5bf7c6cd 	beq	$r22,$r13,-2108(0x3f7c4) # 1c003990 <shell15+0x1820>
1c0041d0:	0010418e 	add.w	$r14,$r12,$r16
1c0041d4:	001015d6 	add.w	$r22,$r14,$r5
1c0041d8:	280002ce 	ld.b	$r14,$r22,0
1c0041dc:	5bf7b5cd 	beq	$r14,$r13,-2124(0x3f7b4) # 1c003990 <shell15+0x1820>
1c0041e0:	00104596 	add.w	$r22,$r12,$r17
1c0041e4:	00101ece 	add.w	$r14,$r22,$r7
1c0041e8:	280001d6 	ld.b	$r22,$r14,0
1c0041ec:	5bf7a6cd 	beq	$r22,$r13,-2140(0x3f7a4) # 1c003990 <shell15+0x1820>
1c0041f0:	0010498e 	add.w	$r14,$r12,$r18
1c0041f4:	001025d6 	add.w	$r22,$r14,$r9
1c0041f8:	280002ce 	ld.b	$r14,$r22,0
1c0041fc:	5bf795cd 	beq	$r14,$r13,-2156(0x3f794) # 1c003990 <shell15+0x1820>
1c004200:	00101196 	add.w	$r22,$r12,$r4
1c004204:	00102ece 	add.w	$r14,$r22,$r11
1c004208:	280001d6 	ld.b	$r22,$r14,0
1c00420c:	5bf786cd 	beq	$r22,$r13,-2172(0x3f784) # 1c003990 <shell15+0x1820>
1c004210:	0010198e 	add.w	$r14,$r12,$r6
1c004214:	001005d6 	add.w	$r22,$r14,$r1
1c004218:	280002ce 	ld.b	$r14,$r22,0
1c00421c:	5bf775cd 	beq	$r14,$r13,-2188(0x3f774) # 1c003990 <shell15+0x1820>
1c004220:	00102196 	add.w	$r22,$r12,$r8
1c004224:	00105ece 	add.w	$r14,$r22,$r23
1c004228:	280001d6 	ld.b	$r22,$r14,0
1c00422c:	5bf766cd 	beq	$r22,$r13,-2204(0x3f764) # 1c003990 <shell15+0x1820>
1c004230:	0010298e 	add.w	$r14,$r12,$r10
1c004234:	001069d6 	add.w	$r22,$r14,$r26
1c004238:	280002ce 	ld.b	$r14,$r22,0
1c00423c:	5bf755cd 	beq	$r14,$r13,-2220(0x3f754) # 1c003990 <shell15+0x1820>
1c004240:	2900019b 	st.b	$r27,$r12,0
1c004244:	53f74fff 	b	-2228(0xffff74c) # 1c003990 <shell15+0x1820>
1c004248:	00103d96 	add.w	$r22,$r12,$r15
1c00424c:	001052d6 	add.w	$r22,$r22,$r20
1c004250:	280002d6 	ld.b	$r22,$r22,0
1c004254:	5bf732cd 	beq	$r22,$r13,-2256(0x3f730) # 1c003984 <shell15+0x1814>
1c004258:	00104196 	add.w	$r22,$r12,$r16
1c00425c:	001016d6 	add.w	$r22,$r22,$r5
1c004260:	280002d6 	ld.b	$r22,$r22,0
1c004264:	5bf722cd 	beq	$r22,$r13,-2272(0x3f720) # 1c003984 <shell15+0x1814>
1c004268:	00104596 	add.w	$r22,$r12,$r17
1c00426c:	00101ed6 	add.w	$r22,$r22,$r7
1c004270:	280002d6 	ld.b	$r22,$r22,0
1c004274:	5bf712cd 	beq	$r22,$r13,-2288(0x3f710) # 1c003984 <shell15+0x1814>
1c004278:	00104996 	add.w	$r22,$r12,$r18
1c00427c:	001026d6 	add.w	$r22,$r22,$r9
1c004280:	280002d6 	ld.b	$r22,$r22,0
1c004284:	5bf702cd 	beq	$r22,$r13,-2304(0x3f700) # 1c003984 <shell15+0x1814>
1c004288:	00101196 	add.w	$r22,$r12,$r4
1c00428c:	00102ed6 	add.w	$r22,$r22,$r11
1c004290:	280002d6 	ld.b	$r22,$r22,0
1c004294:	5bf6f2cd 	beq	$r22,$r13,-2320(0x3f6f0) # 1c003984 <shell15+0x1814>
1c004298:	00101996 	add.w	$r22,$r12,$r6
1c00429c:	001006d6 	add.w	$r22,$r22,$r1
1c0042a0:	280002d6 	ld.b	$r22,$r22,0
1c0042a4:	5bf6e2cd 	beq	$r22,$r13,-2336(0x3f6e0) # 1c003984 <shell15+0x1814>
1c0042a8:	00102196 	add.w	$r22,$r12,$r8
1c0042ac:	00105ed6 	add.w	$r22,$r22,$r23
1c0042b0:	280002d6 	ld.b	$r22,$r22,0
1c0042b4:	5bf6d2ce 	beq	$r22,$r14,-2352(0x3f6d0) # 1c003984 <shell15+0x1814>
1c0042b8:	00102996 	add.w	$r22,$r12,$r10
1c0042bc:	00106ad6 	add.w	$r22,$r22,$r26
1c0042c0:	280002d6 	ld.b	$r22,$r22,0
1c0042c4:	5bf6c2ce 	beq	$r22,$r14,-2368(0x3f6c0) # 1c003984 <shell15+0x1814>
1c0042c8:	2900019b 	st.b	$r27,$r12,0
1c0042cc:	53f6bbff 	b	-2376(0xffff6b8) # 1c003984 <shell15+0x1814>
1c0042d0:	2880906b 	ld.w	$r11,$r3,36(0x24)
1c0042d4:	028056d6 	addi.w	$r22,$r22,21(0x15)
1c0042d8:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0042dc:	0281335a 	addi.w	$r26,$r26,76(0x4c)
1c0042e0:	5ff71acb 	bne	$r22,$r11,-2280(0x3f718) # 1c0039f8 <shell15+0x1888>
1c0042e4:	2880c076 	ld.w	$r22,$r3,48(0x30)
1c0042e8:	02bffeda 	addi.w	$r26,$r22,-1(0xfff)
1c0042ec:	2980c07a 	st.w	$r26,$r3,48(0x30)
1c0042f0:	5ff5ab40 	bne	$r26,$r0,-2648(0x3f5a8) # 1c003898 <shell15+0x1728>
1c0042f4:	2881407c 	ld.w	$r28,$r3,80(0x50)
1c0042f8:	2881307e 	ld.w	$r30,$r3,76(0x4c)
1c0042fc:	2881207b 	ld.w	$r27,$r3,72(0x48)
1c004300:	00150386 	move	$r6,$r28
1c004304:	001503c5 	move	$r5,$r30
1c004308:	00150367 	move	$r7,$r27
1c00430c:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c004310:	02b3d084 	addi.w	$r4,$r4,-780(0xcf4)
1c004314:	001573d7 	or	$r23,$r30,$r28
1c004318:	540af800 	bl	2808(0xaf8) # 1c004e10 <printf>
1c00431c:	5ff49ae0 	bne	$r23,$r0,-2920(0x3f498) # 1c0037b4 <shell15+0x1644>
1c004320:	02800418 	addi.w	$r24,$r0,1(0x1)
1c004324:	5ff49378 	bne	$r27,$r24,-2928(0x3f490) # 1c0037b4 <shell15+0x1644>
1c004328:	54123800 	bl	4664(0x1238) # 1c005560 <get_count_my>
1c00432c:	00150099 	move	$r25,$r4
1c004330:	54120000 	bl	4608(0x1200) # 1c005530 <get_count>
1c004334:	28823072 	ld.w	$r18,$r3,140(0x8c)
1c004338:	28822069 	ld.w	$r9,$r3,136(0x88)
1c00433c:	00114b36 	sub.w	$r22,$r25,$r18
1c004340:	0011249a 	sub.w	$r26,$r4,$r9
1c004344:	53f063ff 	b	-4000(0xffff060) # 1c0033a4 <shell15+0x1234>
1c004348:	00103d96 	add.w	$r22,$r12,$r15
1c00434c:	001052ce 	add.w	$r14,$r22,$r20
1c004350:	280001d6 	ld.b	$r22,$r14,0
1c004354:	5bfd3ecd 	beq	$r22,$r13,-708(0x3fd3c) # 1c004090 <shell15+0x1f20>
1c004358:	0010418e 	add.w	$r14,$r12,$r16
1c00435c:	001015d6 	add.w	$r22,$r14,$r5
1c004360:	280002ce 	ld.b	$r14,$r22,0
1c004364:	5bfd2dcd 	beq	$r14,$r13,-724(0x3fd2c) # 1c004090 <shell15+0x1f20>
1c004368:	00104596 	add.w	$r22,$r12,$r17
1c00436c:	00101ece 	add.w	$r14,$r22,$r7
1c004370:	280001d6 	ld.b	$r22,$r14,0
1c004374:	5bfd1ecd 	beq	$r22,$r13,-740(0x3fd1c) # 1c004090 <shell15+0x1f20>
1c004378:	0010498e 	add.w	$r14,$r12,$r18
1c00437c:	001025d6 	add.w	$r22,$r14,$r9
1c004380:	280002ce 	ld.b	$r14,$r22,0
1c004384:	5bfd0dcd 	beq	$r14,$r13,-756(0x3fd0c) # 1c004090 <shell15+0x1f20>
1c004388:	00101196 	add.w	$r22,$r12,$r4
1c00438c:	00102ece 	add.w	$r14,$r22,$r11
1c004390:	280001d6 	ld.b	$r22,$r14,0
1c004394:	5bfcfecd 	beq	$r22,$r13,-772(0x3fcfc) # 1c004090 <shell15+0x1f20>
1c004398:	0010198e 	add.w	$r14,$r12,$r6
1c00439c:	001005d6 	add.w	$r22,$r14,$r1
1c0043a0:	280002ce 	ld.b	$r14,$r22,0
1c0043a4:	5bfcedcd 	beq	$r14,$r13,-788(0x3fcec) # 1c004090 <shell15+0x1f20>
1c0043a8:	00102196 	add.w	$r22,$r12,$r8
1c0043ac:	00105ece 	add.w	$r14,$r22,$r23
1c0043b0:	280001d6 	ld.b	$r22,$r14,0
1c0043b4:	5bfcdecd 	beq	$r22,$r13,-804(0x3fcdc) # 1c004090 <shell15+0x1f20>
1c0043b8:	0010298e 	add.w	$r14,$r12,$r10
1c0043bc:	001069d6 	add.w	$r22,$r14,$r26
1c0043c0:	280002ce 	ld.b	$r14,$r22,0
1c0043c4:	5bfccdcd 	beq	$r14,$r13,-820(0x3fccc) # 1c004090 <shell15+0x1f20>
1c0043c8:	2900019b 	st.b	$r27,$r12,0
1c0043cc:	53fcc7ff 	b	-828(0xffffcc4) # 1c004090 <shell15+0x1f20>
1c0043d0:	00103d8e 	add.w	$r14,$r12,$r15
1c0043d4:	001051d6 	add.w	$r22,$r14,$r20
1c0043d8:	280002ce 	ld.b	$r14,$r22,0
1c0043dc:	5bf5c1cd 	beq	$r14,$r13,-2624(0x3f5c0) # 1c00399c <shell15+0x182c>
1c0043e0:	00104196 	add.w	$r22,$r12,$r16
1c0043e4:	001016ce 	add.w	$r14,$r22,$r5
1c0043e8:	280001d6 	ld.b	$r22,$r14,0
1c0043ec:	5bf5b2cd 	beq	$r22,$r13,-2640(0x3f5b0) # 1c00399c <shell15+0x182c>
1c0043f0:	0010458e 	add.w	$r14,$r12,$r17
1c0043f4:	00101dd6 	add.w	$r22,$r14,$r7
1c0043f8:	280002ce 	ld.b	$r14,$r22,0
1c0043fc:	5bf5a1cd 	beq	$r14,$r13,-2656(0x3f5a0) # 1c00399c <shell15+0x182c>
1c004400:	00104996 	add.w	$r22,$r12,$r18
1c004404:	001026ce 	add.w	$r14,$r22,$r9
1c004408:	280001d6 	ld.b	$r22,$r14,0
1c00440c:	5bf592cd 	beq	$r22,$r13,-2672(0x3f590) # 1c00399c <shell15+0x182c>
1c004410:	0010118e 	add.w	$r14,$r12,$r4
1c004414:	00102dd6 	add.w	$r22,$r14,$r11
1c004418:	280002ce 	ld.b	$r14,$r22,0
1c00441c:	5bf581cd 	beq	$r14,$r13,-2688(0x3f580) # 1c00399c <shell15+0x182c>
1c004420:	00101996 	add.w	$r22,$r12,$r6
1c004424:	001006ce 	add.w	$r14,$r22,$r1
1c004428:	280001d6 	ld.b	$r22,$r14,0
1c00442c:	5bf572cd 	beq	$r22,$r13,-2704(0x3f570) # 1c00399c <shell15+0x182c>
1c004430:	0010218e 	add.w	$r14,$r12,$r8
1c004434:	00105dd6 	add.w	$r22,$r14,$r23
1c004438:	280002ce 	ld.b	$r14,$r22,0
1c00443c:	5bf561cd 	beq	$r14,$r13,-2720(0x3f560) # 1c00399c <shell15+0x182c>
1c004440:	00102996 	add.w	$r22,$r12,$r10
1c004444:	00106ace 	add.w	$r14,$r22,$r26
1c004448:	280001d6 	ld.b	$r22,$r14,0
1c00444c:	5bf552cd 	beq	$r22,$r13,-2736(0x3f550) # 1c00399c <shell15+0x182c>
1c004450:	2900019b 	st.b	$r27,$r12,0
1c004454:	53f54bff 	b	-2744(0xffff548) # 1c00399c <shell15+0x182c>
1c004458:	28804065 	ld.w	$r5,$r3,16(0x10)
1c00445c:	001015cf 	add.w	$r15,$r14,$r5
1c004460:	2981606f 	st.w	$r15,$r3,88(0x58)
1c004464:	2881606f 	ld.w	$r15,$r3,88(0x58)
1c004468:	2880406c 	ld.w	$r12,$r3,16(0x10)
1c00446c:	6402458f 	bge	$r12,$r15,580(0x244) # 1c0046b0 <shell15+0x2540>
1c004470:	2880b073 	ld.w	$r19,$r3,44(0x2c)
1c004474:	2880e06d 	ld.w	$r13,$r3,56(0x38)
1c004478:	00103674 	add.w	$r20,$r19,$r13
1c00447c:	28000286 	ld.b	$r6,$r20,0
1c004480:	5bf5e0db 	beq	$r6,$r27,-2592(0x3f5e0) # 1c003a60 <shell15+0x18f0>
1c004484:	001c79e7 	mul.w	$r7,$r15,$r30
1c004488:	28805061 	ld.w	$r1,$r3,20(0x14)
1c00448c:	00103785 	add.w	$r5,$r28,$r13
1c004490:	1479e788 	lu12i.w	$r8,249660(0x3cf3c)
1c004494:	001005b0 	add.w	$r16,$r13,$r1
1c004498:	0010438c 	add.w	$r12,$r28,$r16
1c00449c:	03bcf504 	ori	$r4,$r8,0xf3d
1c0044a0:	001014ee 	add.w	$r14,$r7,$r5
1c0044a4:	001131cf 	sub.w	$r15,$r14,$r12
1c0044a8:	001c11f3 	mul.w	$r19,$r15,$r4
1c0044ac:	03401e6d 	andi	$r13,$r19,0x7
1c0044b0:	580111a0 	beq	$r13,$r0,272(0x110) # 1c0045c0 <shell15+0x2450>
1c0044b4:	2880e074 	ld.w	$r20,$r3,56(0x38)
1c0044b8:	00115186 	sub.w	$r6,$r12,$r20
1c0044bc:	001028c7 	add.w	$r7,$r6,$r10
1c0044c0:	280000e1 	ld.b	$r1,$r7,0
1c0044c4:	5bf59c3b 	beq	$r1,$r27,-2660(0x3f59c) # 1c003a60 <shell15+0x18f0>
1c0044c8:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c0044cc:	283fad90 	ld.b	$r16,$r12,-21(0xfeb)
1c0044d0:	5bf5921b 	beq	$r16,$r27,-2672(0x3f590) # 1c003a60 <shell15+0x18f0>
1c0044d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0044d8:	5808f9a5 	beq	$r13,$r5,2296(0x8f8) # 1c004dd0 <shell15+0x2c60>
1c0044dc:	02800808 	addi.w	$r8,$r0,2(0x2)
1c0044e0:	5800c1a8 	beq	$r13,$r8,192(0xc0) # 1c0045a0 <shell15+0x2430>
1c0044e4:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0044e8:	580099a4 	beq	$r13,$r4,152(0x98) # 1c004580 <shell15+0x2410>
1c0044ec:	02801011 	addi.w	$r17,$r0,4(0x4)
1c0044f0:	580071b1 	beq	$r13,$r17,112(0x70) # 1c004560 <shell15+0x23f0>
1c0044f4:	0280140f 	addi.w	$r15,$r0,5(0x5)
1c0044f8:	580049af 	beq	$r13,$r15,72(0x48) # 1c004540 <shell15+0x23d0>
1c0044fc:	02801813 	addi.w	$r19,$r0,6(0x6)
1c004500:	580021b3 	beq	$r13,$r19,32(0x20) # 1c004520 <shell15+0x23b0>
1c004504:	0011518d 	sub.w	$r13,$r12,$r20
1c004508:	001029b4 	add.w	$r20,$r13,$r10
1c00450c:	28000286 	ld.b	$r6,$r20,0
1c004510:	5bf550db 	beq	$r6,$r27,-2736(0x3f550) # 1c003a60 <shell15+0x18f0>
1c004514:	28000187 	ld.b	$r7,$r12,0
1c004518:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c00451c:	5bf544fb 	beq	$r7,$r27,-2748(0x3f544) # 1c003a60 <shell15+0x18f0>
1c004520:	2880e061 	ld.w	$r1,$r3,56(0x38)
1c004524:	00110590 	sub.w	$r16,$r12,$r1
1c004528:	00102a05 	add.w	$r5,$r16,$r10
1c00452c:	280000a8 	ld.b	$r8,$r5,0
1c004530:	5bf5311b 	beq	$r8,$r27,-2768(0x3f530) # 1c003a60 <shell15+0x18f0>
1c004534:	28000184 	ld.b	$r4,$r12,0
1c004538:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c00453c:	5bf5249b 	beq	$r4,$r27,-2780(0x3f524) # 1c003a60 <shell15+0x18f0>
1c004540:	2880e071 	ld.w	$r17,$r3,56(0x38)
1c004544:	0011458f 	sub.w	$r15,$r12,$r17
1c004548:	001029f3 	add.w	$r19,$r15,$r10
1c00454c:	2800026d 	ld.b	$r13,$r19,0
1c004550:	5bf511bb 	beq	$r13,$r27,-2800(0x3f510) # 1c003a60 <shell15+0x18f0>
1c004554:	28000194 	ld.b	$r20,$r12,0
1c004558:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c00455c:	5bf5069b 	beq	$r20,$r27,-2812(0x3f504) # 1c003a60 <shell15+0x18f0>
1c004560:	2880e066 	ld.w	$r6,$r3,56(0x38)
1c004564:	00111987 	sub.w	$r7,$r12,$r6
1c004568:	001028e1 	add.w	$r1,$r7,$r10
1c00456c:	28000030 	ld.b	$r16,$r1,0
1c004570:	5bf4f21b 	beq	$r16,$r27,-2832(0x3f4f0) # 1c003a60 <shell15+0x18f0>
1c004574:	28000185 	ld.b	$r5,$r12,0
1c004578:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c00457c:	5bf4e4bb 	beq	$r5,$r27,-2844(0x3f4e4) # 1c003a60 <shell15+0x18f0>
1c004580:	2880e068 	ld.w	$r8,$r3,56(0x38)
1c004584:	00112184 	sub.w	$r4,$r12,$r8
1c004588:	00102891 	add.w	$r17,$r4,$r10
1c00458c:	2800022f 	ld.b	$r15,$r17,0
1c004590:	5bf4d1fb 	beq	$r15,$r27,-2864(0x3f4d0) # 1c003a60 <shell15+0x18f0>
1c004594:	28000193 	ld.b	$r19,$r12,0
1c004598:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c00459c:	5bf4c67b 	beq	$r19,$r27,-2876(0x3f4c4) # 1c003a60 <shell15+0x18f0>
1c0045a0:	2880e06d 	ld.w	$r13,$r3,56(0x38)
1c0045a4:	00113594 	sub.w	$r20,$r12,$r13
1c0045a8:	00102a86 	add.w	$r6,$r20,$r10
1c0045ac:	280000c7 	ld.b	$r7,$r6,0
1c0045b0:	5bf4b0fb 	beq	$r7,$r27,-2896(0x3f4b0) # 1c003a60 <shell15+0x18f0>
1c0045b4:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c0045b8:	283fad81 	ld.b	$r1,$r12,-21(0xfeb)
1c0045bc:	5bf4a43b 	beq	$r1,$r27,-2908(0x3f4a4) # 1c003a60 <shell15+0x18f0>
1c0045c0:	2880e065 	ld.w	$r5,$r3,56(0x38)
1c0045c4:	5800edcc 	beq	$r14,$r12,236(0xec) # 1c0046b0 <shell15+0x2540>
1c0045c8:	00111587 	sub.w	$r7,$r12,$r5
1c0045cc:	001028e1 	add.w	$r1,$r7,$r10
1c0045d0:	28000028 	ld.b	$r8,$r1,0
1c0045d4:	5bf48d1b 	beq	$r8,$r27,-2932(0x3f48c) # 1c003a60 <shell15+0x18f0>
1c0045d8:	0280558f 	addi.w	$r15,$r12,21(0x15)
1c0045dc:	283fadf0 	ld.b	$r16,$r15,-21(0xfeb)
1c0045e0:	5bf4821b 	beq	$r16,$r27,-2944(0x3f480) # 1c003a60 <shell15+0x18f0>
1c0045e4:	001115f1 	sub.w	$r17,$r15,$r5
1c0045e8:	00102a34 	add.w	$r20,$r17,$r10
1c0045ec:	28000284 	ld.b	$r4,$r20,0
1c0045f0:	5bf4709b 	beq	$r4,$r27,-2960(0x3f470) # 1c003a60 <shell15+0x18f0>
1c0045f4:	28005593 	ld.b	$r19,$r12,21(0x15)
1c0045f8:	0280a986 	addi.w	$r6,$r12,42(0x2a)
1c0045fc:	5bf4667b 	beq	$r19,$r27,-2972(0x3f464) # 1c003a60 <shell15+0x18f0>
1c004600:	001114cd 	sub.w	$r13,$r6,$r5
1c004604:	001029a7 	add.w	$r7,$r13,$r10
1c004608:	280000e1 	ld.b	$r1,$r7,0
1c00460c:	5bf4543b 	beq	$r1,$r27,-2988(0x3f454) # 1c003a60 <shell15+0x18f0>
1c004610:	2800a990 	ld.b	$r16,$r12,42(0x2a)
1c004614:	0280fd88 	addi.w	$r8,$r12,63(0x3f)
1c004618:	5bf44a1b 	beq	$r16,$r27,-3000(0x3f448) # 1c003a60 <shell15+0x18f0>
1c00461c:	00111511 	sub.w	$r17,$r8,$r5
1c004620:	00102a34 	add.w	$r20,$r17,$r10
1c004624:	28000284 	ld.b	$r4,$r20,0
1c004628:	5bf4389b 	beq	$r4,$r27,-3016(0x3f438) # 1c003a60 <shell15+0x18f0>
1c00462c:	2800fd86 	ld.b	$r6,$r12,63(0x3f)
1c004630:	0281518c 	addi.w	$r12,$r12,84(0x54)
1c004634:	5bf42cdb 	beq	$r6,$r27,-3028(0x3f42c) # 1c003a60 <shell15+0x18f0>
1c004638:	00111593 	sub.w	$r19,$r12,$r5
1c00463c:	00102a6d 	add.w	$r13,$r19,$r10
1c004640:	280001a7 	ld.b	$r7,$r13,0
1c004644:	5bf41cfb 	beq	$r7,$r27,-3044(0x3f41c) # 1c003a60 <shell15+0x18f0>
1c004648:	2800fde8 	ld.b	$r8,$r15,63(0x3f)
1c00464c:	028151e1 	addi.w	$r1,$r15,84(0x54)
1c004650:	5bf4111b 	beq	$r8,$r27,-3056(0x3f410) # 1c003a60 <shell15+0x18f0>
1c004654:	00111430 	sub.w	$r16,$r1,$r5
1c004658:	00102a11 	add.w	$r17,$r16,$r10
1c00465c:	28000234 	ld.b	$r20,$r17,0
1c004660:	5bf4029b 	beq	$r20,$r27,-3072(0x3f400) # 1c003a60 <shell15+0x18f0>
1c004664:	280151e6 	ld.b	$r6,$r15,84(0x54)
1c004668:	0281a5e4 	addi.w	$r4,$r15,105(0x69)
1c00466c:	5bf3f4db 	beq	$r6,$r27,-3084(0x3f3f4) # 1c003a60 <shell15+0x18f0>
1c004670:	0011148c 	sub.w	$r12,$r4,$r5
1c004674:	00102993 	add.w	$r19,$r12,$r10
1c004678:	2800026d 	ld.b	$r13,$r19,0
1c00467c:	5bf3e5bb 	beq	$r13,$r27,-3100(0x3f3e4) # 1c003a60 <shell15+0x18f0>
1c004680:	2801a5e1 	ld.b	$r1,$r15,105(0x69)
1c004684:	0281f9e7 	addi.w	$r7,$r15,126(0x7e)
1c004688:	5bf3d83b 	beq	$r1,$r27,-3112(0x3f3d8) # 1c003a60 <shell15+0x18f0>
1c00468c:	001114e8 	sub.w	$r8,$r7,$r5
1c004690:	00102910 	add.w	$r16,$r8,$r10
1c004694:	28000211 	ld.b	$r17,$r16,0
1c004698:	5bf3ca3b 	beq	$r17,$r27,-3128(0x3f3c8) # 1c003a60 <shell15+0x18f0>
1c00469c:	02824dec 	addi.w	$r12,$r15,147(0x93)
1c0046a0:	283fad8f 	ld.b	$r15,$r12,-21(0xfeb)
1c0046a4:	5fff21fb 	bne	$r15,$r27,-224(0x3ff20) # 1c0045c4 <shell15+0x2454>
1c0046a8:	53f3bbff 	b	-3144(0xffff3b8) # 1c003a60 <shell15+0x18f0>
1c0046ac:	03400000 	andi	$r0,$r0,0x0
1c0046b0:	2880b06e 	ld.w	$r14,$r3,44(0x2c)
1c0046b4:	00102a4c 	add.w	$r12,$r18,$r10
1c0046b8:	02800590 	addi.w	$r16,$r12,1(0x1)
1c0046bc:	001041c8 	add.w	$r8,$r14,$r16
1c0046c0:	28000104 	ld.b	$r4,$r8,0
1c0046c4:	29817064 	st.w	$r4,$r3,92(0x5c)
1c0046c8:	5ff3989b 	bne	$r4,$r27,-3176(0x3f398) # 1c003a60 <shell15+0x18f0>
1c0046cc:	2880a071 	ld.w	$r17,$r3,40(0x28)
1c0046d0:	2880406f 	ld.w	$r15,$r3,16(0x10)
1c0046d4:	00104645 	add.w	$r5,$r18,$r17
1c0046d8:	00103cb3 	add.w	$r19,$r5,$r15
1c0046dc:	001c7a6d 	mul.w	$r13,$r19,$r30
1c0046e0:	00103794 	add.w	$r20,$r28,$r13
1c0046e4:	00104286 	add.w	$r6,$r20,$r16
1c0046e8:	280000c7 	ld.b	$r7,$r6,0
1c0046ec:	58005cfb 	beq	$r7,$r27,92(0x5c) # 1c004748 <shell15+0x25d8>
1c0046f0:	0280b801 	addi.w	$r1,$r0,46(0x2e)
1c0046f4:	5ff36ce1 	bne	$r7,$r1,-3220(0x3f36c) # 1c003a60 <shell15+0x18f0>
1c0046f8:	2880406e 	ld.w	$r14,$r3,16(0x10)
1c0046fc:	004084ac 	slli.w	$r12,$r5,0x1
1c004700:	00103988 	add.w	$r8,$r12,$r14
1c004704:	001c7904 	mul.w	$r4,$r8,$r30
1c004708:	00101391 	add.w	$r17,$r28,$r4
1c00470c:	00104230 	add.w	$r16,$r17,$r16
1c004710:	2800020f 	ld.b	$r15,$r16,0
1c004714:	5ff34dfb 	bne	$r15,$r27,-3252(0x3f34c) # 1c003a60 <shell15+0x18f0>
1c004718:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c00471c:	02800811 	addi.w	$r17,$r0,2(0x2)
1c004720:	29819073 	st.w	$r19,$r3,100(0x64)
1c004724:	50005800 	b	88(0x58) # 1c00477c <shell15+0x260c>
1c004728:	2880c076 	ld.w	$r22,$r3,48(0x30)
1c00472c:	29812060 	st.w	$r0,$r3,72(0x48)
1c004730:	29814060 	st.w	$r0,$r3,80(0x50)
1c004734:	02bffeda 	addi.w	$r26,$r22,-1(0xfff)
1c004738:	29813060 	st.w	$r0,$r3,76(0x4c)
1c00473c:	2980c07a 	st.w	$r26,$r3,48(0x30)
1c004740:	5ff15b40 	bne	$r26,$r0,-3752(0x3f158) # 1c003898 <shell15+0x1728>
1c004744:	53fbb3ff 	b	-1104(0xffffbb0) # 1c0042f4 <shell15+0x2184>
1c004748:	2880406d 	ld.w	$r13,$r3,16(0x10)
1c00474c:	004084ac 	slli.w	$r12,$r5,0x1
1c004750:	00103594 	add.w	$r20,$r12,$r13
1c004754:	001c7a86 	mul.w	$r6,$r20,$r30
1c004758:	00101b87 	add.w	$r7,$r28,$r6
1c00475c:	001040e1 	add.w	$r1,$r7,$r16
1c004760:	2800002e 	ld.b	$r14,$r1,0
1c004764:	580695db 	beq	$r14,$r27,1684(0x694) # 1c004df8 <shell15+0x2c88>
1c004768:	0280b808 	addi.w	$r8,$r0,46(0x2e)
1c00476c:	5ff2f5c8 	bne	$r14,$r8,-3340(0x3f2f4) # 1c003a60 <shell15+0x18f0>
1c004770:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004774:	00150011 	move	$r17,$r0
1c004778:	29819064 	st.w	$r4,$r3,100(0x64)
1c00477c:	1c000f81 	pcaddu12i	$r1,124(0x7c)
1c004780:	289e7021 	ld.w	$r1,$r1,1948(0x79c)
1c004784:	1c000f8f 	pcaddu12i	$r15,124(0x7c)
1c004788:	289e41ef 	ld.w	$r15,$r15,1936(0x790)
1c00478c:	298011f2 	st.w	$r18,$r15,4(0x4)
1c004790:	298021e5 	st.w	$r5,$r15,8(0x8)
1c004794:	298041f2 	st.w	$r18,$r15,16(0x10)
1c004798:	298051e5 	st.w	$r5,$r15,20(0x14)
1c00479c:	298071f2 	st.w	$r18,$r15,28(0x1c)
1c0047a0:	298081e5 	st.w	$r5,$r15,32(0x20)
1c0047a4:	2980a1f2 	st.w	$r18,$r15,40(0x28)
1c0047a8:	2980b1e5 	st.w	$r5,$r15,44(0x2c)
1c0047ac:	2980d1f2 	st.w	$r18,$r15,52(0x34)
1c0047b0:	2980e1e5 	st.w	$r5,$r15,56(0x38)
1c0047b4:	29806025 	st.w	$r5,$r1,24(0x18)
1c0047b8:	29807025 	st.w	$r5,$r1,28(0x1c)
1c0047bc:	29808025 	st.w	$r5,$r1,32(0x20)
1c0047c0:	0280f005 	addi.w	$r5,$r0,60(0x3c)
1c0047c4:	001c1633 	mul.w	$r19,$r17,$r5
1c0047c8:	2880a06d 	ld.w	$r13,$r3,40(0x28)
1c0047cc:	2980c02c 	st.w	$r12,$r1,48(0x30)
1c0047d0:	2980d02c 	st.w	$r12,$r1,52(0x34)
1c0047d4:	2980e02c 	st.w	$r12,$r1,56(0x38)
1c0047d8:	0040864c 	slli.w	$r12,$r18,0x1
1c0047dc:	00103594 	add.w	$r20,$r12,$r13
1c0047e0:	298001e0 	st.w	$r0,$r15,0
1c0047e4:	298031e0 	st.w	$r0,$r15,12(0xc)
1c0047e8:	298061e0 	st.w	$r0,$r15,24(0x18)
1c0047ec:	298091e0 	st.w	$r0,$r15,36(0x24)
1c0047f0:	2980c1e0 	st.w	$r0,$r15,48(0x30)
1c0047f4:	29800020 	st.w	$r0,$r1,0
1c0047f8:	29803032 	st.w	$r18,$r1,12(0xc)
1c0047fc:	29801020 	st.w	$r0,$r1,4(0x4)
1c004800:	29802020 	st.w	$r0,$r1,8(0x8)
1c004804:	29804032 	st.w	$r18,$r1,16(0x10)
1c004808:	29805032 	st.w	$r18,$r1,20(0x14)
1c00480c:	29809034 	st.w	$r20,$r1,36(0x24)
1c004810:	2980a034 	st.w	$r20,$r1,40(0x28)
1c004814:	2980b034 	st.w	$r20,$r1,44(0x2c)
1c004818:	1c000f86 	pcaddu12i	$r6,124(0x7c)
1c00481c:	02a760c6 	addi.w	$r6,$r6,-1576(0x9d8)
1c004820:	29811069 	st.w	$r9,$r3,68(0x44)
1c004824:	1c000f87 	pcaddu12i	$r7,124(0x7c)
1c004828:	289bc0e7 	ld.w	$r7,$r7,1776(0x6f0)
1c00482c:	0015024d 	move	$r13,$r18
1c004830:	00104cc8 	add.w	$r8,$r6,$r19
1c004834:	2981806a 	st.w	$r10,$r3,96(0x60)
1c004838:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c00483c:	0020aba9 	mod.w	$r9,$r29,$r10
1c004840:	5c000940 	bne	$r10,$r0,8(0x8) # 1c004848 <shell15+0x26d8>
1c004844:	002a0007 	break	0x7
1c004848:	0340052e 	andi	$r14,$r9,0x1
1c00484c:	00150244 	move	$r4,$r18
1c004850:	580009c0 	beq	$r14,$r0,8(0x8) # 1c004858 <shell15+0x26e8>
1c004854:	2880a064 	ld.w	$r4,$r3,40(0x28)
1c004858:	28800111 	ld.w	$r17,$r8,0
1c00485c:	2881106f 	ld.w	$r15,$r3,68(0x44)
1c004860:	58000a20 	beq	$r17,$r0,8(0x8) # 1c004868 <shell15+0x26f8>
1c004864:	2881706f 	ld.w	$r15,$r3,92(0x5c)
1c004868:	28800030 	ld.w	$r16,$r1,0
1c00486c:	28804073 	ld.w	$r19,$r3,16(0x10)
1c004870:	0010426c 	add.w	$r12,$r19,$r16
1c004874:	00103585 	add.w	$r5,$r12,$r13
1c004878:	288000ed 	ld.w	$r13,$r7,0
1c00487c:	001037f1 	add.w	$r17,$r31,$r13
1c004880:	64020585 	bge	$r12,$r5,516(0x204) # 1c004a84 <shell15+0x2914>
1c004884:	02804c0a 	addi.w	$r10,$r0,19(0x13)
1c004888:	001c7990 	mul.w	$r16,$r12,$r30
1c00488c:	1c000f8e 	pcaddu12i	$r14,124(0x7c)
1c004890:	028f61ce 	addi.w	$r14,$r14,984(0x3d8)
1c004894:	00101234 	add.w	$r20,$r17,$r4
1c004898:	028005c4 	addi.w	$r4,$r14,1(0x1)
1c00489c:	02800633 	addi.w	$r19,$r17,1(0x1)
1c0048a0:	0010448d 	add.w	$r13,$r4,$r17
1c0048a4:	001c2989 	mul.w	$r9,$r12,$r10
1c0048a8:	0014440c 	nor	$r12,$r0,$r17
1c0048ac:	00105184 	add.w	$r4,$r12,$r20
1c0048b0:	001c78a6 	mul.w	$r6,$r5,$r30
1c0048b4:	00104529 	add.w	$r9,$r9,$r17
1c0048b8:	00104e05 	add.w	$r5,$r16,$r19
1c0048bc:	00408930 	slli.w	$r16,$r9,0x2
1c0048c0:	1c000f93 	pcaddu12i	$r19,124(0x7c)
1c0048c4:	02a89273 	addi.w	$r19,$r19,-1500(0xa24)
1c0048c8:	0010178c 	add.w	$r12,$r28,$r5
1c0048cc:	00104270 	add.w	$r16,$r19,$r16
1c0048d0:	001019a6 	add.w	$r6,$r13,$r6
1c0048d4:	2980f066 	st.w	$r6,$r3,60(0x3c)
1c0048d8:	64019e34 	bge	$r17,$r20,412(0x19c) # 1c004a74 <shell15+0x2904>
1c0048dc:	283ffd8e 	ld.b	$r14,$r12,-1(0xfff)
1c0048e0:	5ff181cf 	bne	$r14,$r15,-3712(0x3f180) # 1c003a60 <shell15+0x18f0>
1c0048e4:	2880020d 	ld.w	$r13,$r16,0
1c0048e8:	5ff179a0 	bne	$r13,$r0,-3720(0x3f178) # 1c003a60 <shell15+0x18f0>
1c0048ec:	03401c85 	andi	$r5,$r4,0x7
1c0048f0:	0015018d 	move	$r13,$r12
1c0048f4:	0015020e 	move	$r14,$r16
1c0048f8:	00103089 	add.w	$r9,$r4,$r12
1c0048fc:	5800dca0 	beq	$r5,$r0,220(0xdc) # 1c0049d8 <shell15+0x2868>
1c004900:	2800018a 	ld.b	$r10,$r12,0
1c004904:	5ff15d4f 	bne	$r10,$r15,-3748(0x3f15c) # 1c003a60 <shell15+0x18f0>
1c004908:	28801206 	ld.w	$r6,$r16,4(0x4)
1c00490c:	0280120e 	addi.w	$r14,$r16,4(0x4)
1c004910:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c004914:	5ff14cc0 	bne	$r6,$r0,-3764(0x3f14c) # 1c003a60 <shell15+0x18f0>
1c004918:	02800413 	addi.w	$r19,$r0,1(0x1)
1c00491c:	5800bcb3 	beq	$r5,$r19,188(0xbc) # 1c0049d8 <shell15+0x2868>
1c004920:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c004924:	58009caa 	beq	$r5,$r10,156(0x9c) # 1c0049c0 <shell15+0x2850>
1c004928:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c00492c:	58007ca6 	beq	$r5,$r6,124(0x7c) # 1c0049a8 <shell15+0x2838>
1c004930:	02801013 	addi.w	$r19,$r0,4(0x4)
1c004934:	58005cb3 	beq	$r5,$r19,92(0x5c) # 1c004990 <shell15+0x2820>
1c004938:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c00493c:	58003caa 	beq	$r5,$r10,60(0x3c) # 1c004978 <shell15+0x2808>
1c004940:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004944:	58001ca6 	beq	$r5,$r6,28(0x1c) # 1c004960 <shell15+0x27f0>
1c004948:	280001a5 	ld.b	$r5,$r13,0
1c00494c:	5ff114af 	bne	$r5,$r15,-3820(0x3f114) # 1c003a60 <shell15+0x18f0>
1c004950:	288011d3 	ld.w	$r19,$r14,4(0x4)
1c004954:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c004958:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c00495c:	5ff10660 	bne	$r19,$r0,-3836(0x3f104) # 1c003a60 <shell15+0x18f0>
1c004960:	280001aa 	ld.b	$r10,$r13,0
1c004964:	5ff0fd4f 	bne	$r10,$r15,-3844(0x3f0fc) # 1c003a60 <shell15+0x18f0>
1c004968:	288011c6 	ld.w	$r6,$r14,4(0x4)
1c00496c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c004970:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c004974:	5ff0ecc0 	bne	$r6,$r0,-3860(0x3f0ec) # 1c003a60 <shell15+0x18f0>
1c004978:	280001a5 	ld.b	$r5,$r13,0
1c00497c:	5ff0e4af 	bne	$r5,$r15,-3868(0x3f0e4) # 1c003a60 <shell15+0x18f0>
1c004980:	288011d3 	ld.w	$r19,$r14,4(0x4)
1c004984:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c004988:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c00498c:	5ff0d660 	bne	$r19,$r0,-3884(0x3f0d4) # 1c003a60 <shell15+0x18f0>
1c004990:	280001aa 	ld.b	$r10,$r13,0
1c004994:	5ff0cd4f 	bne	$r10,$r15,-3892(0x3f0cc) # 1c003a60 <shell15+0x18f0>
1c004998:	288011c6 	ld.w	$r6,$r14,4(0x4)
1c00499c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0049a0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0049a4:	5ff0bcc0 	bne	$r6,$r0,-3908(0x3f0bc) # 1c003a60 <shell15+0x18f0>
1c0049a8:	280001a5 	ld.b	$r5,$r13,0
1c0049ac:	5ff0b4af 	bne	$r5,$r15,-3916(0x3f0b4) # 1c003a60 <shell15+0x18f0>
1c0049b0:	288011d3 	ld.w	$r19,$r14,4(0x4)
1c0049b4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0049b8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0049bc:	5ff0a660 	bne	$r19,$r0,-3932(0x3f0a4) # 1c003a60 <shell15+0x18f0>
1c0049c0:	280001aa 	ld.b	$r10,$r13,0
1c0049c4:	5ff09d4f 	bne	$r10,$r15,-3940(0x3f09c) # 1c003a60 <shell15+0x18f0>
1c0049c8:	288011c6 	ld.w	$r6,$r14,4(0x4)
1c0049cc:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0049d0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0049d4:	5ff08cc0 	bne	$r6,$r0,-3956(0x3f08c) # 1c003a60 <shell15+0x18f0>
1c0049d8:	58009d2d 	beq	$r9,$r13,156(0x9c) # 1c004a74 <shell15+0x2904>
1c0049dc:	280001aa 	ld.b	$r10,$r13,0
1c0049e0:	5ff0814f 	bne	$r10,$r15,-3968(0x3f080) # 1c003a60 <shell15+0x18f0>
1c0049e4:	288011d3 	ld.w	$r19,$r14,4(0x4)
1c0049e8:	028011c5 	addi.w	$r5,$r14,4(0x4)
1c0049ec:	028005a6 	addi.w	$r6,$r13,1(0x1)
1c0049f0:	5ff07260 	bne	$r19,$r0,-3984(0x3f070) # 1c003a60 <shell15+0x18f0>
1c0049f4:	280005aa 	ld.b	$r10,$r13,1(0x1)
1c0049f8:	5ff0694f 	bne	$r10,$r15,-3992(0x3f068) # 1c003a60 <shell15+0x18f0>
1c0049fc:	288010b3 	ld.w	$r19,$r5,4(0x4)
1c004a00:	5ff06260 	bne	$r19,$r0,-4000(0x3f060) # 1c003a60 <shell15+0x18f0>
1c004a04:	280009aa 	ld.b	$r10,$r13,2(0x2)
1c004a08:	5ff0594f 	bne	$r10,$r15,-4008(0x3f058) # 1c003a60 <shell15+0x18f0>
1c004a0c:	288031d3 	ld.w	$r19,$r14,12(0xc)
1c004a10:	5ff05260 	bne	$r19,$r0,-4016(0x3f050) # 1c003a60 <shell15+0x18f0>
1c004a14:	28000daa 	ld.b	$r10,$r13,3(0x3)
1c004a18:	5ff0494f 	bne	$r10,$r15,-4024(0x3f048) # 1c003a60 <shell15+0x18f0>
1c004a1c:	288041d3 	ld.w	$r19,$r14,16(0x10)
1c004a20:	028041ce 	addi.w	$r14,$r14,16(0x10)
1c004a24:	5ff03e60 	bne	$r19,$r0,-4036(0x3f03c) # 1c003a60 <shell15+0x18f0>
1c004a28:	280011ad 	ld.b	$r13,$r13,4(0x4)
1c004a2c:	5ff035af 	bne	$r13,$r15,-4044(0x3f034) # 1c003a60 <shell15+0x18f0>
1c004a30:	288011ca 	ld.w	$r10,$r14,4(0x4)
1c004a34:	5ff02d40 	bne	$r10,$r0,-4052(0x3f02c) # 1c003a60 <shell15+0x18f0>
1c004a38:	280010d3 	ld.b	$r19,$r6,4(0x4)
1c004a3c:	5ff0266f 	bne	$r19,$r15,-4060(0x3f024) # 1c003a60 <shell15+0x18f0>
1c004a40:	288050ae 	ld.w	$r14,$r5,20(0x14)
1c004a44:	5ff01dc0 	bne	$r14,$r0,-4068(0x3f01c) # 1c003a60 <shell15+0x18f0>
1c004a48:	280014cd 	ld.b	$r13,$r6,5(0x5)
1c004a4c:	5ff015af 	bne	$r13,$r15,-4076(0x3f014) # 1c003a60 <shell15+0x18f0>
1c004a50:	288060aa 	ld.w	$r10,$r5,24(0x18)
1c004a54:	5ff00d40 	bne	$r10,$r0,-4084(0x3f00c) # 1c003a60 <shell15+0x18f0>
1c004a58:	280018d3 	ld.b	$r19,$r6,6(0x6)
1c004a5c:	5ff0066f 	bne	$r19,$r15,-4092(0x3f004) # 1c003a60 <shell15+0x18f0>
1c004a60:	288070aa 	ld.w	$r10,$r5,28(0x1c)
1c004a64:	028070ae 	addi.w	$r14,$r5,28(0x1c)
1c004a68:	02801ccd 	addi.w	$r13,$r6,7(0x7)
1c004a6c:	5feff540 	bne	$r10,$r0,-4108(0x3eff4) # 1c003a60 <shell15+0x18f0>
1c004a70:	5fff6d2d 	bne	$r9,$r13,-148(0x3ff6c) # 1c0049dc <shell15+0x286c>
1c004a74:	2880f06e 	ld.w	$r14,$r3,60(0x3c)
1c004a78:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c004a7c:	02813210 	addi.w	$r16,$r16,76(0x4c)
1c004a80:	5ffe59cc 	bne	$r14,$r12,-424(0x3fe58) # 1c0048d8 <shell15+0x2768>
1c004a84:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c004a88:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004a8c:	580037ad 	beq	$r29,$r13,52(0x34) # 1c004ac0 <shell15+0x2950>
1c004a90:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c004a94:	002017a6 	div.w	$r6,$r29,$r5
1c004a98:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1c004aa0 <shell15+0x2930>
1c004a9c:	002a0007 	break	0x7
1c004aa0:	034004c9 	andi	$r9,$r6,0x1
1c004aa4:	0015024d 	move	$r13,$r18
1c004aa8:	58000920 	beq	$r9,$r0,8(0x8) # 1c004ab0 <shell15+0x2940>
1c004aac:	2880a06d 	ld.w	$r13,$r3,40(0x28)
1c004ab0:	02801021 	addi.w	$r1,$r1,4(0x4)
1c004ab4:	028010e7 	addi.w	$r7,$r7,4(0x4)
1c004ab8:	02801108 	addi.w	$r8,$r8,4(0x4)
1c004abc:	53fd7fff 	b	-644(0xffffd7c) # 1c004838 <shell15+0x26c8>
1c004ac0:	2881806a 	ld.w	$r10,$r3,96(0x60)
1c004ac4:	2880e07d 	ld.w	$r29,$r3,56(0x38)
1c004ac8:	02bffb0e 	addi.w	$r14,$r24,-2(0xffe)
1c004acc:	6002dfaa 	blt	$r29,$r10,732(0x2dc) # 1c004da8 <shell15+0x2c38>
1c004ad0:	2881006d 	ld.w	$r13,$r3,64(0x40)
1c004ad4:	2980f079 	st.w	$r25,$r3,60(0x3c)
1c004ad8:	29810077 	st.w	$r23,$r3,64(0x40)
1c004adc:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c004ae0:	2980d078 	st.w	$r24,$r3,52(0x34)
1c004ae4:	28816078 	ld.w	$r24,$r3,88(0x58)
1c004ae8:	02803d48 	addi.w	$r8,$r10,15(0xf)
1c004aec:	0280414c 	addi.w	$r12,$r10,16(0x10)
1c004af0:	0280232f 	addi.w	$r15,$r25,8(0x8)
1c004af4:	02800d50 	addi.w	$r16,$r10,3(0x3)
1c004af8:	02801151 	addi.w	$r17,$r10,4(0x4)
1c004afc:	02801552 	addi.w	$r18,$r10,5(0x5)
1c004b00:	02801953 	addi.w	$r19,$r10,6(0x6)
1c004b04:	02801d54 	addi.w	$r20,$r10,7(0x7)
1c004b08:	02802144 	addi.w	$r4,$r10,8(0x8)
1c004b0c:	02802545 	addi.w	$r5,$r10,9(0x9)
1c004b10:	02802946 	addi.w	$r6,$r10,10(0xa)
1c004b14:	02802d47 	addi.w	$r7,$r10,11(0xb)
1c004b18:	02803149 	addi.w	$r9,$r10,12(0xc)
1c004b1c:	02803541 	addi.w	$r1,$r10,13(0xd)
1c004b20:	0280395d 	addi.w	$r29,$r10,14(0xe)
1c004b24:	2980a068 	st.w	$r8,$r3,40(0x28)
1c004b28:	2980e06c 	st.w	$r12,$r3,56(0x38)
1c004b2c:	03400000 	andi	$r0,$r0,0x0
1c004b30:	28bed1f9 	ld.w	$r25,$r15,-76(0xfb4)
1c004b34:	02800728 	addi.w	$r8,$r25,1(0x1)
1c004b38:	29bed1e8 	st.w	$r8,$r15,-76(0xfb4)
1c004b3c:	600255aa 	blt	$r13,$r10,596(0x254) # 1c004d90 <shell15+0x2c20>
1c004b40:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c004b44:	001c31cc 	mul.w	$r12,$r14,$r12
1c004b48:	00107d99 	add.w	$r25,$r12,$r31
1c004b4c:	00408b28 	slli.w	$r8,$r25,0x2
1c004b50:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004b54:	029e5339 	addi.w	$r25,$r25,1940(0x794)
1c004b58:	00102328 	add.w	$r8,$r25,$r8
1c004b5c:	28800119 	ld.w	$r25,$r8,0
1c004b60:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004b64:	29800119 	st.w	$r25,$r8,0
1c004b68:	600229bf 	blt	$r13,$r31,552(0x228) # 1c004d90 <shell15+0x2c20>
1c004b6c:	00105d88 	add.w	$r8,$r12,$r23
1c004b70:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004b74:	029dd339 	addi.w	$r25,$r25,1908(0x774)
1c004b78:	00408908 	slli.w	$r8,$r8,0x2
1c004b7c:	00102328 	add.w	$r8,$r25,$r8
1c004b80:	28800119 	ld.w	$r25,$r8,0
1c004b84:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004b88:	29800119 	st.w	$r25,$r8,0
1c004b8c:	600205b7 	blt	$r13,$r23,516(0x204) # 1c004d90 <shell15+0x2c20>
1c004b90:	00104188 	add.w	$r8,$r12,$r16
1c004b94:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004b98:	029d4339 	addi.w	$r25,$r25,1872(0x750)
1c004b9c:	00408908 	slli.w	$r8,$r8,0x2
1c004ba0:	00102328 	add.w	$r8,$r25,$r8
1c004ba4:	28800119 	ld.w	$r25,$r8,0
1c004ba8:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004bac:	29800119 	st.w	$r25,$r8,0
1c004bb0:	6001e1b0 	blt	$r13,$r16,480(0x1e0) # 1c004d90 <shell15+0x2c20>
1c004bb4:	00104588 	add.w	$r8,$r12,$r17
1c004bb8:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004bbc:	029cb339 	addi.w	$r25,$r25,1836(0x72c)
1c004bc0:	00408908 	slli.w	$r8,$r8,0x2
1c004bc4:	00102328 	add.w	$r8,$r25,$r8
1c004bc8:	28800119 	ld.w	$r25,$r8,0
1c004bcc:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004bd0:	29800119 	st.w	$r25,$r8,0
1c004bd4:	6001bdb1 	blt	$r13,$r17,444(0x1bc) # 1c004d90 <shell15+0x2c20>
1c004bd8:	00104988 	add.w	$r8,$r12,$r18
1c004bdc:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004be0:	029c2339 	addi.w	$r25,$r25,1800(0x708)
1c004be4:	00408908 	slli.w	$r8,$r8,0x2
1c004be8:	00102328 	add.w	$r8,$r25,$r8
1c004bec:	28800119 	ld.w	$r25,$r8,0
1c004bf0:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004bf4:	29800119 	st.w	$r25,$r8,0
1c004bf8:	600199b2 	blt	$r13,$r18,408(0x198) # 1c004d90 <shell15+0x2c20>
1c004bfc:	00104d88 	add.w	$r8,$r12,$r19
1c004c00:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004c04:	029b9339 	addi.w	$r25,$r25,1764(0x6e4)
1c004c08:	00408908 	slli.w	$r8,$r8,0x2
1c004c0c:	00102328 	add.w	$r8,$r25,$r8
1c004c10:	28800119 	ld.w	$r25,$r8,0
1c004c14:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004c18:	29800119 	st.w	$r25,$r8,0
1c004c1c:	600175b3 	blt	$r13,$r19,372(0x174) # 1c004d90 <shell15+0x2c20>
1c004c20:	00105188 	add.w	$r8,$r12,$r20
1c004c24:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004c28:	029b0339 	addi.w	$r25,$r25,1728(0x6c0)
1c004c2c:	00408908 	slli.w	$r8,$r8,0x2
1c004c30:	00102328 	add.w	$r8,$r25,$r8
1c004c34:	28800119 	ld.w	$r25,$r8,0
1c004c38:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004c3c:	29800119 	st.w	$r25,$r8,0
1c004c40:	600151b4 	blt	$r13,$r20,336(0x150) # 1c004d90 <shell15+0x2c20>
1c004c44:	00101188 	add.w	$r8,$r12,$r4
1c004c48:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004c4c:	029a7339 	addi.w	$r25,$r25,1692(0x69c)
1c004c50:	00408908 	slli.w	$r8,$r8,0x2
1c004c54:	00102328 	add.w	$r8,$r25,$r8
1c004c58:	28800119 	ld.w	$r25,$r8,0
1c004c5c:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004c60:	29800119 	st.w	$r25,$r8,0
1c004c64:	60012da4 	blt	$r13,$r4,300(0x12c) # 1c004d90 <shell15+0x2c20>
1c004c68:	0010158c 	add.w	$r12,$r12,$r5
1c004c6c:	00408988 	slli.w	$r8,$r12,0x2
1c004c70:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004c74:	0299d339 	addi.w	$r25,$r25,1652(0x674)
1c004c78:	0010232c 	add.w	$r12,$r25,$r8
1c004c7c:	28800188 	ld.w	$r8,$r12,0
1c004c80:	02800508 	addi.w	$r8,$r8,1(0x1)
1c004c84:	29800188 	st.w	$r8,$r12,0
1c004c88:	600109a5 	blt	$r13,$r5,264(0x108) # 1c004d90 <shell15+0x2c20>
1c004c8c:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c004c90:	001c31cc 	mul.w	$r12,$r14,$r12
1c004c94:	00101988 	add.w	$r8,$r12,$r6
1c004c98:	00408908 	slli.w	$r8,$r8,0x2
1c004c9c:	00102328 	add.w	$r8,$r25,$r8
1c004ca0:	28800119 	ld.w	$r25,$r8,0
1c004ca4:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004ca8:	29800119 	st.w	$r25,$r8,0
1c004cac:	6000e5a6 	blt	$r13,$r6,228(0xe4) # 1c004d90 <shell15+0x2c20>
1c004cb0:	00101d88 	add.w	$r8,$r12,$r7
1c004cb4:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004cb8:	0298c339 	addi.w	$r25,$r25,1584(0x630)
1c004cbc:	00408908 	slli.w	$r8,$r8,0x2
1c004cc0:	00102328 	add.w	$r8,$r25,$r8
1c004cc4:	28800119 	ld.w	$r25,$r8,0
1c004cc8:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004ccc:	29800119 	st.w	$r25,$r8,0
1c004cd0:	6000c1a7 	blt	$r13,$r7,192(0xc0) # 1c004d90 <shell15+0x2c20>
1c004cd4:	00102588 	add.w	$r8,$r12,$r9
1c004cd8:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004cdc:	02983339 	addi.w	$r25,$r25,1548(0x60c)
1c004ce0:	00408908 	slli.w	$r8,$r8,0x2
1c004ce4:	00102328 	add.w	$r8,$r25,$r8
1c004ce8:	28800119 	ld.w	$r25,$r8,0
1c004cec:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004cf0:	29800119 	st.w	$r25,$r8,0
1c004cf4:	60009da9 	blt	$r13,$r9,156(0x9c) # 1c004d90 <shell15+0x2c20>
1c004cf8:	00100588 	add.w	$r8,$r12,$r1
1c004cfc:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004d00:	0297a339 	addi.w	$r25,$r25,1512(0x5e8)
1c004d04:	00408908 	slli.w	$r8,$r8,0x2
1c004d08:	00102328 	add.w	$r8,$r25,$r8
1c004d0c:	28800119 	ld.w	$r25,$r8,0
1c004d10:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004d14:	29800119 	st.w	$r25,$r8,0
1c004d18:	600079a1 	blt	$r13,$r1,120(0x78) # 1c004d90 <shell15+0x2c20>
1c004d1c:	00107588 	add.w	$r8,$r12,$r29
1c004d20:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004d24:	02971339 	addi.w	$r25,$r25,1476(0x5c4)
1c004d28:	00408908 	slli.w	$r8,$r8,0x2
1c004d2c:	00102328 	add.w	$r8,$r25,$r8
1c004d30:	28800119 	ld.w	$r25,$r8,0
1c004d34:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004d38:	29800119 	st.w	$r25,$r8,0
1c004d3c:	600055bd 	blt	$r13,$r29,84(0x54) # 1c004d90 <shell15+0x2c20>
1c004d40:	2880a068 	ld.w	$r8,$r3,40(0x28)
1c004d44:	00102199 	add.w	$r25,$r12,$r8
1c004d48:	00408b28 	slli.w	$r8,$r25,0x2
1c004d4c:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004d50:	02966339 	addi.w	$r25,$r25,1432(0x598)
1c004d54:	00102328 	add.w	$r8,$r25,$r8
1c004d58:	28800119 	ld.w	$r25,$r8,0
1c004d5c:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004d60:	29800119 	st.w	$r25,$r8,0
1c004d64:	2880a068 	ld.w	$r8,$r3,40(0x28)
1c004d68:	600029a8 	blt	$r13,$r8,40(0x28) # 1c004d90 <shell15+0x2c20>
1c004d6c:	2880e079 	ld.w	$r25,$r3,56(0x38)
1c004d70:	1c000f68 	pcaddu12i	$r8,123(0x7b)
1c004d74:	0295d108 	addi.w	$r8,$r8,1396(0x574)
1c004d78:	0010658c 	add.w	$r12,$r12,$r25
1c004d7c:	00408999 	slli.w	$r25,$r12,0x2
1c004d80:	0010650c 	add.w	$r12,$r8,$r25
1c004d84:	28800199 	ld.w	$r25,$r12,0
1c004d88:	02800728 	addi.w	$r8,$r25,1(0x1)
1c004d8c:	29800188 	st.w	$r8,$r12,0
1c004d90:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c004d94:	028131ef 	addi.w	$r15,$r15,76(0x4c)
1c004d98:	67fd9b0e 	bge	$r24,$r14,-616(0x3fd98) # 1c004b30 <shell15+0x29c0>
1c004d9c:	2880f079 	ld.w	$r25,$r3,60(0x3c)
1c004da0:	28810077 	ld.w	$r23,$r3,64(0x40)
1c004da4:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c004da8:	2881906a 	ld.w	$r10,$r3,100(0x64)
1c004dac:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c004db0:	5800294e 	beq	$r10,$r14,40(0x28) # 1c004dd8 <shell15+0x2c68>
1c004db4:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c004db8:	5800314f 	beq	$r10,$r15,48(0x30) # 1c004de8 <shell15+0x2c78>
1c004dbc:	28812070 	ld.w	$r16,$r3,72(0x48)
1c004dc0:	02800611 	addi.w	$r17,$r16,1(0x1)
1c004dc4:	29812071 	st.w	$r17,$r3,72(0x48)
1c004dc8:	53ec9bff 	b	-4968(0xfffec98) # 1c003a60 <shell15+0x18f0>
1c004dcc:	03400000 	andi	$r0,$r0,0x0
1c004dd0:	00150285 	move	$r5,$r20
1c004dd4:	53f7f3ff 	b	-2064(0xffff7f0) # 1c0045c4 <shell15+0x2454>
1c004dd8:	28813074 	ld.w	$r20,$r3,76(0x4c)
1c004ddc:	02800684 	addi.w	$r4,$r20,1(0x1)
1c004de0:	29813064 	st.w	$r4,$r3,76(0x4c)
1c004de4:	53ec7fff 	b	-4996(0xfffec7c) # 1c003a60 <shell15+0x18f0>
1c004de8:	28814072 	ld.w	$r18,$r3,80(0x50)
1c004dec:	02800653 	addi.w	$r19,$r18,1(0x1)
1c004df0:	29814073 	st.w	$r19,$r3,80(0x50)
1c004df4:	53ec6fff 	b	-5012(0xfffec6c) # 1c003a60 <shell15+0x18f0>
1c004df8:	02800810 	addi.w	$r16,$r0,2(0x2)
1c004dfc:	02800411 	addi.w	$r17,$r0,1(0x1)
1c004e00:	29819070 	st.w	$r16,$r3,100(0x64)
1c004e04:	53f97bff 	b	-1672(0xffff978) # 1c00477c <shell15+0x260c>
1c004e08:	03400000 	andi	$r0,$r0,0x0
1c004e0c:	03400000 	andi	$r0,$r0,0x0

1c004e10 <printf>:
printf():
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
int printf(const char *fmt,...)
{
1c004e10:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c004e14:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c004e18:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004e1c:	2980e077 	st.w	$r23,$r3,56(0x38)
1c004e20:	2980d078 	st.w	$r24,$r3,52(0x34)
1c004e24:	2980c079 	st.w	$r25,$r3,48(0x30)
1c004e28:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c004e2c:	2980907c 	st.w	$r28,$r3,36(0x24)
1c004e30:	29811065 	st.w	$r5,$r3,68(0x44)
1c004e34:	29812066 	st.w	$r6,$r3,72(0x48)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c004e38:	28000097 	ld.b	$r23,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c004e3c:	0281107a 	addi.w	$r26,$r3,68(0x44)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
{
1c004e40:	29813067 	st.w	$r7,$r3,76(0x4c)
1c004e44:	29814068 	st.w	$r8,$r3,80(0x50)
1c004e48:	29815069 	st.w	$r9,$r3,84(0x54)
1c004e4c:	2981606a 	st.w	$r10,$r3,88(0x58)
1c004e50:	2981706b 	st.w	$r11,$r3,92(0x5c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c004e54:	2980707a 	st.w	$r26,$r3,28(0x1c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
for(i=0;fmt[i];i++)
1c004e58:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c004ee0 <printf+0xd0>
1c004e5c:	00150099 	move	$r25,$r4
1c004e60:	00150018 	move	$r24,$r0
1c004e64:	1c000f7c 	pcaddu12i	$r28,123(0x7b)
1c004e68:	0288f39c 	addi.w	$r28,$r28,572(0x23c)
1c004e6c:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c004e70:	50001c00 	b	28(0x1c) # 1c004e8c <printf+0x7c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c004e74:	001502e4 	move	$r4,$r23
1c004e78:	5401d800 	bl	472(0x1d8) # 1c005050 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c004e7c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c004e80:	0010632c 	add.w	$r12,$r25,$r24
1c004e84:	28000197 	ld.b	$r23,$r12,0
1c004e88:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c004ee0 <printf+0xd0>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:13
	if(c=='%')
1c004e8c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c004e90:	58001aec 	beq	$r23,$r12,24(0x18) # 1c004ea8 <printf+0x98>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c004e94:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004e98:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c004e74 <printf+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79 (discriminator 1)
1c004e9c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c004ea0:	5401b000 	bl	432(0x1b0) # 1c005050 <putchar>
1c004ea4:	53ffd3ff 	b	-48(0xfffffd0) # 1c004e74 <printf+0x64>
1c004ea8:	0010632c 	add.w	$r12,$r25,$r24
1c004eac:	2800058d 	ld.b	$r13,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:15
		w=1;
1c004eb0:	02800405 	addi.w	$r5,$r0,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c004eb4:	02814c10 	addi.w	$r16,$r0,83(0x53)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c004eb8:	0280280f 	addi.w	$r15,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c004ebc:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c004ec0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c004ec4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c004ec8:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c005040 <printf+0x230>
1c004ecc:	0040898c 	slli.w	$r12,$r12,0x2
1c004ed0:	0010338c 	add.w	$r12,$r28,$r12
1c004ed4:	2880018c 	ld.w	$r12,$r12,0
1c004ed8:	4c000180 	jirl	$r0,$r12,0
1c004edc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:84
	}
}
	return 0;
}
1c004ee0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c004ee4:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c004ee8:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c004eec:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c004ef0:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c004ef4:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c004ef8:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c004efc:	00150004 	move	$r4,$r0
1c004f00:	02818063 	addi.w	$r3,$r3,96(0x60)
1c004f04:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:65
				i++;
1c004f08:	0010632c 	add.w	$r12,$r25,$r24
1c004f0c:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c004f10:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c004f14:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c004f18:	2980306c 	st.w	$r12,$r3,12(0xc)
1c004f1c:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c004f20:	00150005 	move	$r5,$r0
1c004f24:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c004ebc <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c004f28:	001c3ca5 	mul.w	$r5,$r5,$r15
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c004f2c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c004f30:	0010632c 	add.w	$r12,$r25,$r24
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c004f34:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c004f38:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c004f3c:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c004f40:	2980306c 	st.w	$r12,$r3,12(0xc)
1c004f44:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c004f48:	001015c5 	add.w	$r5,$r14,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c004f4c:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c004f28 <printf+0x118>
1c004f50:	53ff6fff 	b	-148(0xfffff6c) # 1c004ebc <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c004f54:	28800344 	ld.w	$r4,$r26,0
1c004f58:	00150007 	move	$r7,$r0
1c004f5c:	02800806 	addi.w	$r6,$r0,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:51
				arg++;
1c004f60:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:52
				i++;
1c004f64:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c004f68:	5401f800 	bl	504(0x1f8) # 1c005160 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:53
				break;
1c004f6c:	53ff13ff 	b	-240(0xfffff10) # 1c004e7c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c004f70:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:27
				i++;
1c004f74:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:26
				arg++;
1c004f78:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c004f7c:	5400d400 	bl	212(0xd4) # 1c005050 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:28
				break;
1c004f80:	53feffff 	b	-260(0xffffefc) # 1c004e7c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c004f84:	28800344 	ld.w	$r4,$r26,0
1c004f88:	02800407 	addi.w	$r7,$r0,1(0x1)
1c004f8c:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:36
				arg++;
1c004f90:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:37
				i++;
1c004f94:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c004f98:	5401c800 	bl	456(0x1c8) # 1c005160 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:38
				break;
1c004f9c:	53fee3ff 	b	-288(0xffffee0) # 1c004e7c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c004fa0:	28800344 	ld.w	$r4,$r26,0
1c004fa4:	00150007 	move	$r7,$r0
1c004fa8:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:41
                arg++;
1c004fac:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:42
                i=i+2;
1c004fb0:	02800b18 	addi.w	$r24,$r24,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c004fb4:	5401ac00 	bl	428(0x1ac) # 1c005160 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:43
                break;
1c004fb8:	53fec7ff 	b	-316(0xffffec4) # 1c004e7c <printf+0x6c>
1c004fbc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c004fc0:	28800344 	ld.w	$r4,$r26,0
1c004fc4:	00150007 	move	$r7,$r0
1c004fc8:	02802006 	addi.w	$r6,$r0,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:46
				arg++;
1c004fcc:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:47
				i++;
1c004fd0:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c004fd4:	54018c00 	bl	396(0x18c) # 1c005160 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:48
				break;
1c004fd8:	53fea7ff 	b	-348(0xffffea4) # 1c004e7c <printf+0x6c>
1c004fdc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c004fe0:	28800344 	ld.w	$r4,$r26,0
1c004fe4:	00150007 	move	$r7,$r0
1c004fe8:	02804006 	addi.w	$r6,$r0,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:57
				arg++;
1c004fec:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:58
				i++;
1c004ff0:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c004ff4:	54016c00 	bl	364(0x16c) # 1c005160 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:59
				break;
1c004ff8:	53fe87ff 	b	-380(0xffffe84) # 1c004e7c <printf+0x6c>
1c004ffc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c005000:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:22
				i++;
1c005004:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:21
				arg++;
1c005008:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c00500c:	5400a400 	bl	164(0xa4) # 1c0050b0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:23
				break;
1c005010:	53fe6fff 	b	-404(0xffffe6c) # 1c004e7c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c005014:	28800344 	ld.w	$r4,$r26,0
1c005018:	00150007 	move	$r7,$r0
1c00501c:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:31
				arg++;
1c005020:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:32
				i++;
1c005024:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c005028:	54013800 	bl	312(0x138) # 1c005160 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:33
				break;
1c00502c:	53fe53ff 	b	-432(0xffffe50) # 1c004e7c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c005030:	02809404 	addi.w	$r4,$r0,37(0x25)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:62
				i++;
1c005034:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c005038:	54001800 	bl	24(0x18) # 1c005050 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:63
				break;
1c00503c:	53fe43ff 	b	-448(0xffffe40) # 1c004e7c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:73
				putchar('%');
1c005040:	02809404 	addi.w	$r4,$r0,37(0x25)
1c005044:	54000c00 	bl	12(0xc) # 1c005050 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:74
				break;
1c005048:	53fe37ff 	b	-460(0xffffe34) # 1c004e7c <printf+0x6c>
1c00504c:	03400000 	andi	$r0,$r0,0x0

1c005050 <putchar>:
putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:2
int putchar(int c)
{
1c005050:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005054:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c005058:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00505c:	03bc4339 	ori	$r25,$r25,0xf10
1c005060:	29000324 	st.b	$r4,$r25,0
1c005064:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:5
}
1c005068:	00150004 	move	$r4,$r0
1c00506c:	28803079 	ld.w	$r25,$r3,12(0xc)
1c005070:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005074:	4c000020 	jirl	$r0,$r1,0
1c005078:	03400000 	andi	$r0,$r0,0x0
1c00507c:	03400000 	andi	$r0,$r0,0x0

1c005080 <tgt_putchar>:
tgt_putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:8
{   //UART_ADDR
1c005080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005084:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
    asm(
1c005088:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00508c:	03bc4339 	ori	$r25,$r25,0xf10
1c005090:	29000324 	st.b	$r4,$r25,0
1c005094:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c005098:	28803079 	ld.w	$r25,$r3,12(0xc)
1c00509c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050a0:	4c000020 	jirl	$r0,$r1,0
1c0050a4:	03400000 	andi	$r0,$r0,0x0
1c0050a8:	03400000 	andi	$r0,$r0,0x0
1c0050ac:	03400000 	andi	$r0,$r0,0x0

1c0050b0 <putstring>:
putstring():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:2
int putstring(char *s)
{
1c0050b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0050b8:	29802077 	st.w	$r23,$r3,8(0x8)
1c0050bc:	29801078 	st.w	$r24,$r3,4(0x4)
1c0050c0:	29800079 	st.w	$r25,$r3,0
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
char c;
while((c=*s))
1c0050c4:	28000097 	ld.b	$r23,$r4,0
1c0050c8:	580042e0 	beq	$r23,$r0,64(0x40) # 1c005108 <putstring+0x58>
1c0050cc:	00150098 	move	$r24,$r4
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c0050d0:	02802819 	addi.w	$r25,$r0,10(0xa)
1c0050d4:	50001400 	b	20(0x14) # 1c0050e8 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7
 putchar(c);
1c0050d8:	001502e4 	move	$r4,$r23
1c0050dc:	57ff77ff 	bl	-140(0xfffff74) # 1c005050 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
while((c=*s))
1c0050e0:	28000317 	ld.b	$r23,$r24,0
1c0050e4:	580026e0 	beq	$r23,$r0,36(0x24) # 1c005108 <putstring+0x58>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:8
 s++;
1c0050e8:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c0050ec:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c0050d8 <putstring+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6 (discriminator 1)
1c0050f0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0050f4:	57ff5fff 	bl	-164(0xfffff5c) # 1c005050 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c0050f8:	001502e4 	move	$r4,$r23
1c0050fc:	57ff57ff 	bl	-172(0xfffff54) # 1c005050 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c005100:	28000317 	ld.b	$r23,$r24,0
1c005104:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c0050e8 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:11
}
return 0;
}
1c005108:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00510c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c005110:	28801078 	ld.w	$r24,$r3,4(0x4)
1c005114:	28800079 	ld.w	$r25,$r3,0
1c005118:	00150004 	move	$r4,$r0
1c00511c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005120:	4c000020 	jirl	$r0,$r1,0
1c005124:	03400000 	andi	$r0,$r0,0x0
1c005128:	03400000 	andi	$r0,$r0,0x0
1c00512c:	03400000 	andi	$r0,$r0,0x0

1c005130 <puts>:
puts():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:15


int puts(char *s)
{
1c005130:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005134:	29803061 	st.w	$r1,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:16
putstring(s);
1c005138:	57ff7bff 	bl	-136(0xfffff78) # 1c0050b0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:17
putchar('\r');
1c00513c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005140:	57ff13ff 	bl	-240(0xfffff10) # 1c005050 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:18
putchar('\n');
1c005144:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005148:	57ff0bff 	bl	-248(0xfffff08) # 1c005050 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:20
return 0;
}
1c00514c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005150:	00150004 	move	$r4,$r0
1c005154:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005158:	4c000020 	jirl	$r0,$r1,0
1c00515c:	03400000 	andi	$r0,$r0,0x0

1c005160 <printbase>:
printbase():
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c005160:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c005164:	29816077 	st.w	$r23,$r3,88(0x58)
1c005168:	29817061 	st.w	$r1,$r3,92(0x5c)
1c00516c:	29815078 	st.w	$r24,$r3,84(0x54)
1c005170:	29814079 	st.w	$r25,$r3,80(0x50)
1c005174:	00150097 	move	$r23,$r4
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c005178:	580008e0 	beq	$r7,$r0,8(0x8) # 1c005180 <printbase+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7 (discriminator 1)
1c00517c:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c005220 <printbase+0xc0>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c005180:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c005240 <printbase+0xe0>
1c005184:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c005188:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00518c:	001131ce 	sub.w	$r14,$r14,$r12
1c005190:	50000800 	b	8(0x8) # 1c005198 <printbase+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c005194:	001501b7 	move	$r23,$r13
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c005198:	00219aed 	mod.wu	$r13,$r23,$r6
1c00519c:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c0051a4 <printbase+0x44>
1c0051a0:	002a0007 	break	0x7
1c0051a4:	2900018d 	st.b	$r13,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c0051a8:	001031d8 	add.w	$r24,$r14,$r12
1c0051ac:	00211aed 	div.wu	$r13,$r23,$r6
1c0051b0:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c0051b8 <printbase+0x58>
1c0051b4:	002a0007 	break	0x7
1c0051b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c0051bc:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c005194 <printbase+0x34>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c0051c0:	600058b8 	blt	$r5,$r24,88(0x58) # 1c005218 <printbase+0xb8>
1c0051c4:	001500b7 	move	$r23,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c0051c8:	02802419 	addi.w	$r25,$r0,9(0x9)
1c0051cc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c0051d0:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c0051d4:	00105d8c 	add.w	$r12,$r12,$r23
1c0051d8:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c0051dc:	60001717 	blt	$r24,$r23,20(0x14) # 1c0051f0 <printbase+0x90>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24 (discriminator 1)
1c0051e0:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c0051e4:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c0051e8:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c0051f0 <printbase+0x90>
1c0051ec:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c0051f0:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 4)
1c0051f4:	57fe5fff 	bl	-420(0xffffe5c) # 1c005050 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c0051f8:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c0051d0 <printbase+0x70>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:28
	}
	return 0;
}
1c0051fc:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c005200:	28816077 	ld.w	$r23,$r3,88(0x58)
1c005204:	28815078 	ld.w	$r24,$r3,84(0x54)
1c005208:	28814079 	ld.w	$r25,$r3,80(0x50)
1c00520c:	00150004 	move	$r4,$r0
1c005210:	02818063 	addi.w	$r3,$r3,96(0x60)
1c005214:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c005218:	00150305 	move	$r5,$r24
1c00521c:	53ffabff 	b	-88(0xfffffa8) # 1c0051c4 <printbase+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c005220:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c005224:	29803066 	st.w	$r6,$r3,12(0xc)
1c005228:	29802065 	st.w	$r5,$r3,8(0x8)
1c00522c:	57fe27ff 	bl	-476(0xffffe24) # 1c005050 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:9
	value = -v;
1c005230:	00115c17 	sub.w	$r23,$r0,$r23
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c005234:	28802065 	ld.w	$r5,$r3,8(0x8)
1c005238:	28803066 	ld.w	$r6,$r3,12(0xc)
1c00523c:	53ff4bff 	b	-184(0xfffff48) # 1c005184 <printbase+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c005240:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c0051fc <printbase+0x9c>
1c005244:	00150018 	move	$r24,$r0
1c005248:	53ff7fff 	b	-132(0xfffff7c) # 1c0051c4 <printbase+0x64>
1c00524c:	03400000 	andi	$r0,$r0,0x0

1c005250 <strlen>:
strlen():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:14
 * The strlen() function returns the length of string @s.
 * */
size_t
strlen(const char *s) {
    size_t cnt = 0;
    while (*s ++ != '\0') {
1c005250:	2800008c 	ld.b	$r12,$r4,0
1c005254:	58002580 	beq	$r12,$r0,36(0x24) # 1c005278 <strlen+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:13
    size_t cnt = 0;
1c005258:	0015000c 	move	$r12,$r0
1c00525c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:15
        cnt ++;
1c005260:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:14
    while (*s ++ != '\0') {
1c005264:	0010308d 	add.w	$r13,$r4,$r12
1c005268:	280001ad 	ld.b	$r13,$r13,0
1c00526c:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c005260 <strlen+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:18
    }
    return cnt;
}
1c005270:	00150184 	move	$r4,$r12
1c005274:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:13
    size_t cnt = 0;
1c005278:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:18
}
1c00527c:	00150184 	move	$r4,$r12
1c005280:	4c000020 	jirl	$r0,$r1,0
1c005284:	03400000 	andi	$r0,$r0,0x0
1c005288:	03400000 	andi	$r0,$r0,0x0
1c00528c:	03400000 	andi	$r0,$r0,0x0

1c005290 <strnlen>:
strnlen():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:35
 * @len if there is no '\0' character among the first @len characters
 * pointed by @s.
 * */
size_t
strnlen(const char *s, size_t len) {
    size_t cnt = 0;
1c005290:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c005294:	580028a0 	beq	$r5,$r0,40(0x28) # 1c0052bc <strnlen+0x2c>
1c005298:	2800008d 	ld.b	$r13,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:35
    size_t cnt = 0;
1c00529c:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c0052a0:	5c0011a0 	bne	$r13,$r0,16(0x10) # 1c0052b0 <strnlen+0x20>
1c0052a4:	50001800 	b	24(0x18) # 1c0052bc <strnlen+0x2c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36 (discriminator 1)
1c0052a8:	280001ad 	ld.b	$r13,$r13,0
1c0052ac:	580011a0 	beq	$r13,$r0,16(0x10) # 1c0052bc <strnlen+0x2c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:37
        cnt ++;
1c0052b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c0052b4:	0010308d 	add.w	$r13,$r4,$r12
1c0052b8:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c0052a8 <strnlen+0x18>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:40
    }
    return cnt;
}
1c0052bc:	00150184 	move	$r4,$r12
1c0052c0:	4c000020 	jirl	$r0,$r1,0
1c0052c4:	03400000 	andi	$r0,$r0,0x0
1c0052c8:	03400000 	andi	$r0,$r0,0x0
1c0052cc:	03400000 	andi	$r0,$r0,0x0

1c0052d0 <strcpy>:
strcpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:59
char *
strcpy(char *dst, const char *src) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __strcpy(dst, src);
#else
    char *p = dst;
1c0052d0:	0015008c 	move	$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:60 (discriminator 1)
    while ((*p ++ = *src ++) != '\0')
1c0052d4:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0052d8:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c0052dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0052e0:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c0052e4:	5ffff1a0 	bne	$r13,$r0,-16(0x3fff0) # 1c0052d4 <strcpy+0x4>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:64
        /* nothing */;
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0052e8:	4c000020 	jirl	$r0,$r1,0
1c0052ec:	03400000 	andi	$r0,$r0,0x0

1c0052f0 <strncpy>:
strncpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:79
 * The return value is @dst
 * */
char *
strncpy(char *dst, const char *src, size_t len) {
    char *p = dst;
    while (len > 0) {
1c0052f0:	580028c0 	beq	$r6,$r0,40(0x28) # 1c005318 <strncpy+0x28>
1c0052f4:	00101886 	add.w	$r6,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:78
    char *p = dst;
1c0052f8:	0015008d 	move	$r13,$r4
1c0052fc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:80
        if ((*p = *src) != '\0') {
1c005300:	280000ac 	ld.b	$r12,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:83
            src ++;
        }
        p ++, len --;
1c005304:	028005ad 	addi.w	$r13,$r13,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:80
        if ((*p = *src) != '\0') {
1c005308:	293ffdac 	st.b	$r12,$r13,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:81
            src ++;
1c00530c:	0012b00c 	sltu	$r12,$r0,$r12
1c005310:	001030a5 	add.w	$r5,$r5,$r12
/home/132/git_rep/perf/soft/perf_func/lib/string.c:79
    while (len > 0) {
1c005314:	5fffeda6 	bne	$r13,$r6,-20(0x3ffec) # 1c005300 <strncpy+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:86
    }
    return dst;
}
1c005318:	4c000020 	jirl	$r0,$r1,0
1c00531c:	03400000 	andi	$r0,$r0,0x0

1c005320 <strncmp>:
strncmp():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101
 * the characters differ, until a terminating null-character is reached, or
 * until @n characters match in both strings, whichever happens first.
 * */
int
strncmp(const char *s1, const char *s2, size_t n) {
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c005320:	580040c0 	beq	$r6,$r0,64(0x40) # 1c005360 <strncmp+0x40>
1c005324:	2800008d 	ld.b	$r13,$r4,0
1c005328:	280000ae 	ld.b	$r14,$r5,0
1c00532c:	580041a0 	beq	$r13,$r0,64(0x40) # 1c00536c <strncmp+0x4c>
1c005330:	5c003dae 	bne	$r13,$r14,60(0x3c) # 1c00536c <strncmp+0x4c>
1c005334:	001018a6 	add.w	$r6,$r5,$r6
1c005338:	50001c00 	b	28(0x1c) # 1c005354 <strncmp+0x34>
1c00533c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101 (discriminator 1)
1c005340:	2800008d 	ld.b	$r13,$r4,0
1c005344:	580025a0 	beq	$r13,$r0,36(0x24) # 1c005368 <strncmp+0x48>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101 (discriminator 2)
1c005348:	2800018e 	ld.b	$r14,$r12,0
1c00534c:	00150185 	move	$r5,$r12
1c005350:	5c001dae 	bne	$r13,$r14,28(0x1c) # 1c00536c <strncmp+0x4c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:102
        n --, s1 ++, s2 ++;
1c005354:	028004ac 	addi.w	$r12,$r5,1(0x1)
1c005358:	02800484 	addi.w	$r4,$r4,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c00535c:	5fffe586 	bne	$r12,$r6,-28(0x3ffe4) # 1c005340 <strncmp+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    }
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c005360:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c005364:	4c000020 	jirl	$r0,$r1,0
1c005368:	280004ae 	ld.b	$r14,$r5,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:100
strncmp(const char *s1, const char *s2, size_t n) {
1c00536c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c005370:	2980306d 	st.w	$r13,$r3,12(0xc)
1c005374:	2a00306d 	ld.bu	$r13,$r3,12(0xc)
1c005378:	2980306e 	st.w	$r14,$r3,12(0xc)
1c00537c:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c005380:	02804063 	addi.w	$r3,$r3,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c005384:	001111a4 	sub.w	$r4,$r13,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c005388:	4c000020 	jirl	$r0,$r1,0
1c00538c:	03400000 	andi	$r0,$r0,0x0

1c005390 <strchr>:
strchr():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
 * The strchr() function returns a pointer to the first occurrence of
 * character in @s. If the value is not found, the function returns 'NULL'.
 * */
char *
strchr(const char *s, char c) {
    while (*s != '\0') {
1c005390:	2800008d 	ld.b	$r13,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:116
strchr(const char *s, char c) {
1c005394:	0015008c 	move	$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
    while (*s != '\0') {
1c005398:	58001da0 	beq	$r13,$r0,28(0x1c) # 1c0053b4 <strchr+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:118
        if (*s == c) {
1c00539c:	5c000da5 	bne	$r13,$r5,12(0xc) # 1c0053a8 <strchr+0x18>
1c0053a0:	50002800 	b	40(0x28) # 1c0053c8 <strchr+0x38>
1c0053a4:	58001da5 	beq	$r13,$r5,28(0x1c) # 1c0053c0 <strchr+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:121
            return (char *)s;
        }
        s ++;
1c0053a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
    while (*s != '\0') {
1c0053ac:	2800018d 	ld.b	$r13,$r12,0
1c0053b0:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c0053a4 <strchr+0x14>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:123
    }
    return NULL;
1c0053b4:	00150004 	move	$r4,$r0
1c0053b8:	4c000020 	jirl	$r0,$r1,0
1c0053bc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:121
        s ++;
1c0053c0:	00150184 	move	$r4,$r12
/home/132/git_rep/perf/soft/perf_func/lib/string.c:124
}
1c0053c4:	4c000020 	jirl	$r0,$r1,0
1c0053c8:	4c000020 	jirl	$r0,$r1,0
1c0053cc:	03400000 	andi	$r0,$r0,0x0

1c0053d0 <strfind>:
strfind():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:137
 * not found in @s, then it returns a pointer to the null byte at the
 * end of @s, rather than 'NULL'.
 * */
char *
strfind(const char *s, char c) {
    while (*s != '\0') {
1c0053d0:	2800008c 	ld.b	$r12,$r4,0
1c0053d4:	58001d80 	beq	$r12,$r0,28(0x1c) # 1c0053f0 <strfind+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:138
        if (*s == c) {
1c0053d8:	5c000cac 	bne	$r5,$r12,12(0xc) # 1c0053e4 <strfind+0x14>
1c0053dc:	50001800 	b	24(0x18) # 1c0053f4 <strfind+0x24>
1c0053e0:	58001185 	beq	$r12,$r5,16(0x10) # 1c0053f0 <strfind+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:141
            break;
        }
        s ++;
1c0053e4:	02800484 	addi.w	$r4,$r4,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:137
    while (*s != '\0') {
1c0053e8:	2800008c 	ld.b	$r12,$r4,0
1c0053ec:	5ffff580 	bne	$r12,$r0,-12(0x3fff4) # 1c0053e0 <strfind+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:144
    }
    return (char *)s;
}
1c0053f0:	4c000020 	jirl	$r0,$r1,0
1c0053f4:	4c000020 	jirl	$r0,$r1,0
1c0053f8:	03400000 	andi	$r0,$r0,0x0
1c0053fc:	03400000 	andi	$r0,$r0,0x0

1c005400 <memset>:
memset():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
memset(void *s, char c, size_t n) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memset(s, c, n);
#else
    char *p = s;
    while (n -- > 0) {
1c005400:	58001cc0 	beq	$r6,$r0,28(0x1c) # 1c00541c <memset+0x1c>
1c005404:	00101886 	add.w	$r6,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:250
    char *p = s;
1c005408:	0015008c 	move	$r12,$r4
1c00540c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:252
        *p ++ = c;
1c005410:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005414:	293ffd85 	st.b	$r5,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c005418:	5ffff986 	bne	$r12,$r6,-8(0x3fff8) # 1c005410 <memset+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:256
    }
    return s;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c00541c:	4c000020 	jirl	$r0,$r1,0

1c005420 <memcpy>:
memcpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:279
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memcpy(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    while (n -- > 0) {
1c005420:	580024c0 	beq	$r6,$r0,36(0x24) # 1c005444 <memcpy+0x24>
1c005424:	001018a6 	add.w	$r6,$r5,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:278
    char *d = dst;
1c005428:	0015008c 	move	$r12,$r4
1c00542c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:280
        *d ++ = *s ++;
1c005430:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c005434:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c005438:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00543c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:279
    while (n -- > 0) {
1c005440:	5ffff0a6 	bne	$r5,$r6,-16(0x3fff0) # 1c005430 <memcpy+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:284
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c005444:	4c000020 	jirl	$r0,$r1,0
1c005448:	03400000 	andi	$r0,$r0,0x0
1c00544c:	03400000 	andi	$r0,$r0,0x0

1c005450 <memmove>:
memmove():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:302
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memmove(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    if (s < d && s + n > d) {
1c005450:	6c0030a4 	bgeu	$r5,$r4,48(0x30) # 1c005480 <memmove+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:302 (discriminator 1)
1c005454:	001018ac 	add.w	$r12,$r5,$r6
1c005458:	6c00288c 	bgeu	$r4,$r12,40(0x28) # 1c005480 <memmove+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:303
        s += n, d += n;
1c00545c:	0010188d 	add.w	$r13,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:304
        while (n -- > 0) {
1c005460:	580044c0 	beq	$r6,$r0,68(0x44) # 1c0054a4 <memmove+0x54>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:305
            *-- d = *-- s;
1c005464:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005468:	2800018e 	ld.b	$r14,$r12,0
1c00546c:	02bffdad 	addi.w	$r13,$r13,-1(0xfff)
1c005470:	290001ae 	st.b	$r14,$r13,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:304
        while (n -- > 0) {
1c005474:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c005464 <memmove+0x14>
1c005478:	4c000020 	jirl	$r0,$r1,0
1c00547c:	03400000 	andi	$r0,$r0,0x0
1c005480:	001018ae 	add.w	$r14,$r5,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:308
        }
    } else {
        while (n -- > 0) {
1c005484:	0015008c 	move	$r12,$r4
1c005488:	580020c0 	beq	$r6,$r0,32(0x20) # 1c0054a8 <memmove+0x58>
1c00548c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:309
            *d ++ = *s ++;
1c005490:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c005494:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c005498:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00549c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:308
        while (n -- > 0) {
1c0054a0:	5ffff0ae 	bne	$r5,$r14,-16(0x3fff0) # 1c005490 <memmove+0x40>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:314
        }
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0054a4:	4c000020 	jirl	$r0,$r1,0
1c0054a8:	4c000020 	jirl	$r0,$r1,0
1c0054ac:	03400000 	andi	$r0,$r0,0x0

1c0054b0 <memcmp>:
memcmp():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:334
 * */
int
memcmp(const void *v1, const void *v2, size_t n) {
    const char *s1 = (const char *)v1;
    const char *s2 = (const char *)v2;
    while (n -- > 0) {
1c0054b0:	580030c0 	beq	$r6,$r0,48(0x30) # 1c0054e0 <memcmp+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:335
        if (*s1 != *s2) {
1c0054b4:	2800008c 	ld.b	$r12,$r4,0
1c0054b8:	280000ad 	ld.b	$r13,$r5,0
1c0054bc:	00101886 	add.w	$r6,$r4,$r6
1c0054c0:	580015ac 	beq	$r13,$r12,20(0x14) # 1c0054d4 <memcmp+0x24>
1c0054c4:	50002400 	b	36(0x24) # 1c0054e8 <memcmp+0x38>
1c0054c8:	2800008c 	ld.b	$r12,$r4,0
1c0054cc:	280000ad 	ld.b	$r13,$r5,0
1c0054d0:	5c00198d 	bne	$r12,$r13,24(0x18) # 1c0054e8 <memcmp+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:338
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
        }
        s1 ++, s2 ++;
1c0054d4:	02800484 	addi.w	$r4,$r4,1(0x1)
1c0054d8:	028004a5 	addi.w	$r5,$r5,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:334
    while (n -- > 0) {
1c0054dc:	5fffec86 	bne	$r4,$r6,-20(0x3ffec) # 1c0054c8 <memcmp+0x18>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:340
    }
    return 0;
1c0054e0:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c0054e4:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:331
memcmp(const void *v1, const void *v2, size_t n) {
1c0054e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0054ec:	2980306c 	st.w	$r12,$r3,12(0xc)
1c0054f0:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c0054f4:	2980306d 	st.w	$r13,$r3,12(0xc)
1c0054f8:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c0054fc:	02804063 	addi.w	$r3,$r3,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c005500:	00111184 	sub.w	$r4,$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c005504:	4c000020 	jirl	$r0,$r1,0
1c005508:	03400000 	andi	$r0,$r0,0x0
1c00550c:	03400000 	andi	$r0,$r0,0x0

1c005510 <bzero>:
memset():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c005510:	580014a0 	beq	$r5,$r0,20(0x14) # 1c005524 <bzero+0x14>
1c005514:	00101485 	add.w	$r5,$r4,$r5
/home/132/git_rep/perf/soft/perf_func/lib/string.c:252
        *p ++ = c;
1c005518:	02800484 	addi.w	$r4,$r4,1(0x1)
1c00551c:	293ffc80 	st.b	$r0,$r4,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c005520:	5ffff885 	bne	$r4,$r5,-8(0x3fff8) # 1c005518 <bzero+0x8>
bzero():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:345

void bzero(void *s, size_t n){
	memset(s, 0, n);
}
1c005524:	4c000020 	jirl	$r0,$r1,0
1c005528:	03400000 	andi	$r0,$r0,0x0
1c00552c:	03400000 	andi	$r0,$r0,0x0

1c005530 <get_count>:
get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c005530:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005534:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c005538:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00553c:	28800324 	ld.w	$r4,$r25,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
    return  _get_count();
}
1c005540:	28803079 	ld.w	$r25,$r3,12(0xc)
1c005544:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005548:	4c000020 	jirl	$r0,$r1,0
1c00554c:	03400000 	andi	$r0,$r0,0x0

1c005550 <_get_count>:
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
1c005550:	53ffe3ff 	b	-32(0xfffffe0) # 1c005530 <get_count>
1c005554:	03400000 	andi	$r0,$r0,0x0
1c005558:	03400000 	andi	$r0,$r0,0x0
1c00555c:	03400000 	andi	$r0,$r0,0x0

1c005560 <get_count_my>:
get_count_my():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c005560:	00006004 	rdtimel.w	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c005564:	4c000020 	jirl	$r0,$r1,0
1c005568:	03400000 	andi	$r0,$r0,0x0
1c00556c:	03400000 	andi	$r0,$r0,0x0

1c005570 <clock_gettime>:
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c005570:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005574:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c005578:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00557c:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c005580:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c005584:	001c35ed 	mul.w	$r13,$r15,$r13
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c005588:	02819011 	addi.w	$r17,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00558c:	1400030e 	lu12i.w	$r14,24(0x18)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c005590:	002145f0 	div.wu	$r16,$r15,$r17
1c005594:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c00559c <clock_gettime+0x2c>
1c005598:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00559c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0055a0:	039a81ce 	ori	$r14,$r14,0x6a0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0055a4:	0021b211 	mod.wu	$r17,$r16,$r12
1c0055a8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0055b0 <clock_gettime+0x40>
1c0055ac:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0055b0:	002139f0 	div.wu	$r16,$r15,$r14
1c0055b4:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c0055bc <clock_gettime+0x4c>
1c0055b8:	002a0007 	break	0x7
1c0055bc:	0021b20e 	mod.wu	$r14,$r16,$r12
1c0055c0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0055c8 <clock_gettime+0x58>
1c0055c4:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c0055c8:	298000a0 	st.w	$r0,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0055cc:	298030ae 	st.w	$r14,$r5,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0055d0:	298020b1 	st.w	$r17,$r5,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c0055d4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0055d8:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c0055dc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0055e0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0055e8 <clock_gettime+0x78>
1c0055e4:	002a0007 	break	0x7
1c0055e8:	298010ae 	st.w	$r14,$r5,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
}
1c0055ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0055f0:	4c000020 	jirl	$r0,$r1,0
1c0055f4:	03400000 	andi	$r0,$r0,0x0
1c0055f8:	03400000 	andi	$r0,$r0,0x0
1c0055fc:	03400000 	andi	$r0,$r0,0x0

1c005600 <get_clock>:
get_clock():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
1c005600:	53ff33ff 	b	-208(0xfffff30) # 1c005530 <get_count>
1c005604:	03400000 	andi	$r0,$r0,0x0
1c005608:	03400000 	andi	$r0,$r0,0x0
1c00560c:	03400000 	andi	$r0,$r0,0x0

1c005610 <get_ns>:
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c005610:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005614:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c005618:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00561c:	28800324 	ld.w	$r4,$r25,0
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c005620:	0280280c 	addi.w	$r12,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:57
    return n;
}
1c005624:	28803079 	ld.w	$r25,$r3,12(0xc)
1c005628:	001c3084 	mul.w	$r4,$r4,$r12
1c00562c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005630:	4c000020 	jirl	$r0,$r1,0
1c005634:	03400000 	andi	$r0,$r0,0x0
1c005638:	03400000 	andi	$r0,$r0,0x0
1c00563c:	03400000 	andi	$r0,$r0,0x0

1c005640 <get_us>:
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:61


unsigned long get_us(void)
{
1c005640:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005644:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c005648:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00564c:	28800324 	ld.w	$r4,$r25,0
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c005650:	0281900c 	addi.w	$r12,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:66
    return n;
}
1c005654:	28803079 	ld.w	$r25,$r3,12(0xc)
1c005658:	0021308d 	div.wu	$r13,$r4,$r12
1c00565c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005664 <get_us+0x24>
1c005660:	002a0007 	break	0x7
1c005664:	001501a4 	move	$r4,$r13
1c005668:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00566c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <abc-0x1f0>:
1c080000:	25206425 	stptr.w	$r5,$r1,8292(0x2064)
1c080004:	64252064 	bge	$r3,$r4,9504(0x2520) # 1c082524 <_end+0x1564>
1c080008:	0000000a 	0x0000000a
1c08000c:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c097274 <_end+0x162b4>
1c080010:	49206579 	bcnez	$fcc3,-1761180(0x652064) # 1bed2074 <__stack_size+0x1bec2074>
1c080014:	65742032 	bge	$r1,$r18,95264(0x17420) # 1c097434 <_end+0x16474>
1c080018:	62207473 	blt	$r3,$r19,-122764(0x22074) # 1c06208c <_data_lma+0x5ca1c>
1c08001c:	6e696765 	bgeu	$r27,$r5,-104092(0x26964) # 1c066980 <_data_lma+0x61310>
1c080020:	0000002e 	0x0000002e
1c080024:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c09728c <_end+0x162cc>
1c080028:	49206579 	bcnez	$fcc3,-1761180(0x652064) # 1bed208c <__stack_size+0x1bec208c>
1c08002c:	41502032 	beqz	$r1,-3583968(0x495020) # 1bd1504c <__stack_size+0x1bd0504c>
1c080030:	00215353 	div.wu	$r19,$r26,$r20
1c080034:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c09729c <_end+0x162dc>
1c080038:	49206579 	bcnez	$fcc3,-1761180(0x652064) # 1bed209c <__stack_size+0x1bec209c>
1c08003c:	52452032 	b	13255968(0xca4520) # 1cd2455c <_stack+0xc24560>
1c080040:	21454f52 	sc.w	$r18,$r26,17740(0x454c)
1c080044:	00002121 	clo.d	$r1,$r9
1c080048:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c0972b0 <_end+0x162f0>
1c08004c:	49206579 	bcnez	$fcc3,-1761180(0x652064) # 1bed20b0 <__stack_size+0x1bec20b0>
1c080050:	54203a32 	bl	-121102280(0x8c82038) # 14d02088 <__stack_size+0x14cf2088>
1c080054:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861c8 <_end+0x5208>
1c080058:	756f4320 	0x756f4320
1c08005c:	5328746e 	b	29042804(0x1bb2874) # 1dc328d0 <_stack+0x1b328d4>
1c080060:	6320436f 	blt	$r27,$r15,-57280(0x32040) # 1c0720a0 <_data_lma+0x6ca30>
1c080064:	746e756f 	0x746e756f
1c080068:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c08006c:	78257830 	0x78257830
1c080070:	0000000a 	0x0000000a
1c080074:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c0972dc <_end+0x1631c>
1c080078:	49206579 	bcnez	$fcc3,-1761180(0x652064) # 1bed20dc <__stack_size+0x1bec20dc>
1c08007c:	54203a32 	bl	-121102280(0x8c82038) # 14d020b4 <__stack_size+0x14cf20b4>
1c080080:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861f4 <_end+0x5234>
1c080084:	756f4320 	0x756f4320
1c080088:	4328746e 	beqz	$r3,3876980(0x3b2874) # 1c4328fc <_stack+0x332900>
1c08008c:	63205550 	blt	$r10,$r16,-57260(0x32054) # 1c0720e0 <_data_lma+0x6ca70>
1c080090:	746e756f 	0x746e756f
1c080094:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c080098:	78257830 	0x78257830
1c08009c:	0000000a 	0x0000000a
1c0800a0:	1c005030 	pcaddu12i	$r16,641(0x281)
1c0800a4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800a8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800ac:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800b0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800b4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800b8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800bc:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800c0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800c4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800c8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800cc:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0800d0:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800d4:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800d8:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800dc:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800e0:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800e4:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800e8:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800ec:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800f0:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800f4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800f8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800fc:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080100:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080104:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080108:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08010c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080110:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080114:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080118:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08011c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080120:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080124:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080128:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08012c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080130:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080134:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080138:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08013c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080140:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080144:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080148:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08014c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080150:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080154:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080158:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08015c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080160:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080164:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080168:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08016c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080170:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080174:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080178:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08017c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080180:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080184:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080188:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08018c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080190:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080194:	1c004f54 	pcaddu12i	$r20,634(0x27a)
1c080198:	1c004f70 	pcaddu12i	$r16,635(0x27b)
1c08019c:	1c004f84 	pcaddu12i	$r4,636(0x27c)
1c0801a0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801a4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801a8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801ac:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801b0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801b4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801b8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801bc:	1c004fa0 	pcaddu12i	$r0,637(0x27d)
1c0801c0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801c4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801c8:	1c004fc0 	pcaddu12i	$r0,638(0x27e)
1c0801cc:	1c004fe0 	pcaddu12i	$r0,639(0x27f)
1c0801d0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801d4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801d8:	1c005000 	pcaddu12i	$r0,640(0x280)
1c0801dc:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801e0:	1c005014 	pcaddu12i	$r20,640(0x280)
1c0801e4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801e8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801ec:	1c004fe0 	pcaddu12i	$r0,639(0x27f)

1c0801f0 <abc>:
rodata_end():
1c0801f0:	00000001 	0x00000001
1c0801f4:	00000001 	0x00000001
1c0801f8:	00000001 	0x00000001
1c0801fc:	00000001 	0x00000001
1c080200:	00000000 	0x00000000
1c080204:	00000001 	0x00000001
1c080208:	00000001 	0x00000001
1c08020c:	00000001 	0x00000001
1c080210:	00000001 	0x00000001
1c080214:	00000001 	0x00000001
1c080218:	00000000 	0x00000000
1c08021c:	00000001 	0x00000001
1c080220:	00000001 	0x00000001
1c080224:	00000000 	0x00000000
1c080228:	00000001 	0x00000001
1c08022c:	00000001 	0x00000001
1c080230:	00000001 	0x00000001
1c080234:	00000001 	0x00000001
1c080238:	00000001 	0x00000001
1c08023c:	00000000 	0x00000000
1c080240:	00000001 	0x00000001
1c080244:	00000001 	0x00000001
1c080248:	00000001 	0x00000001
1c08024c:	00000001 	0x00000001
1c080250:	00000001 	0x00000001
1c080254:	00000000 	0x00000000
1c080258:	00000001 	0x00000001
1c08025c:	00000001 	0x00000001
1c080260:	00000001 	0x00000001
1c080264:	00000001 	0x00000001
1c080268:	00000001 	0x00000001
1c08026c:	00000001 	0x00000001
1c080270:	00000001 	0x00000001
1c080274:	00000001 	0x00000001
	...
1c080280:	00000001 	0x00000001
	...
1c08028c:	00000001 	0x00000001
	...
1c080298:	00000001 	0x00000001
1c08029c:	00000001 	0x00000001
1c0802a0:	00000001 	0x00000001

1c0802a4 <dd>:
1c0802a4:	ffffffff 	0xffffffff
1c0802a8:	00000000 	0x00000000
1c0802ac:	ffffffff 	0xffffffff
1c0802b0:	ffffffff 	0xffffffff
1c0802b4:	ffffffff 	0xffffffff
1c0802b8:	00000001 	0x00000001
1c0802bc:	00000000 	0x00000000
1c0802c0:	00000001 	0x00000001
1c0802c4:	00000000 	0x00000000
1c0802c8:	ffffffff 	0xffffffff
1c0802cc:	00000001 	0x00000001
1c0802d0:	00000000 	0x00000000
1c0802d4:	00000001 	0x00000001
1c0802d8:	ffffffff 	0xffffffff
1c0802dc:	00000001 	0x00000001
1c0802e0:	00000001 	0x00000001

1c0802e4 <vis>:
1c0802e4:	00000001 	0x00000001
	...

1c080c64 <s>:
1c080c64:	23232320 	sc.d	$r0,$r25,8992(0x2320)
1c080c68:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c6c:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c70:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c74:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c78:	2e232000 	0x2e232000
1c080c7c:	2e2e2e2e 	0x2e2e2e2e
1c080c80:	2e2e2e2e 	0x2e2e2e2e
1c080c84:	2e2e2e2e 	0x2e2e2e2e
1c080c88:	2e2e2e2e 	0x2e2e2e2e
1c080c8c:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080c90:	2323232e 	sc.d	$r14,$r25,8992(0x2320)
1c080c94:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c98:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c9c:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ca0:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080ca4:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080ca8:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080cac:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080cb0:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080cb4:	00232e23 	div.du	$r3,$r17,$r11
1c080cb8:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080cbc:	2e2e2e23 	0x2e2e2e23
1c080cc0:	2e2e2e2e 	0x2e2e2e2e
1c080cc4:	2e2e2e2e 	0x2e2e2e2e
1c080cc8:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080ccc:	2e232000 	0x2e232000
1c080cd0:	2e2e2323 	0x2e2e2323
1c080cd4:	2e2e2e2e 	0x2e2e2e2e
1c080cd8:	2e2e2e2e 	0x2e2e2e2e
1c080cdc:	2e2e2e2e 	0x2e2e2e2e
1c080ce0:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080ce4:	2e23232e 	0x2e23232e
1c080ce8:	2e2e2e2e 	0x2e2e2e2e
1c080cec:	2e2e2e2e 	0x2e2e2e2e
1c080cf0:	2e2e2e2e 	0x2e2e2e2e
1c080cf4:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080cf8:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080cfc:	2e2e2e2e 	0x2e2e2e2e
1c080d00:	2e2e2e2e 	0x2e2e2e2e
1c080d04:	2e2e2e2e 	0x2e2e2e2e
1c080d08:	00232e2e 	div.du	$r14,$r17,$r11
1c080d0c:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080d10:	2e2e2e23 	0x2e2e2e23
1c080d14:	2e2e2e2e 	0x2e2e2e2e
1c080d18:	2e2e2e2e 	0x2e2e2e2e
1c080d1c:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080d20:	2e232000 	0x2e232000
1c080d24:	2e2e2323 	0x2e2e2323
1c080d28:	2e2e2e2e 	0x2e2e2e2e
1c080d2c:	2e2e2e2e 	0x2e2e2e2e
1c080d30:	2e2e2e2e 	0x2e2e2e2e
1c080d34:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080d38:	2e23232e 	0x2e23232e
1c080d3c:	2e2e2e2e 	0x2e2e2e2e
1c080d40:	2e2e2e2e 	0x2e2e2e2e
1c080d44:	2e2e2e2e 	0x2e2e2e2e
1c080d48:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080d4c:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080d50:	2e2e2e2e 	0x2e2e2e2e
1c080d54:	2e2e2e2e 	0x2e2e2e2e
1c080d58:	2e2e2e2e 	0x2e2e2e2e
1c080d5c:	00232e2e 	div.du	$r14,$r17,$r11
1c080d60:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080d64:	2e2e2e23 	0x2e2e2e23
1c080d68:	2e2e2e2e 	0x2e2e2e2e
1c080d6c:	2e2e2e2e 	0x2e2e2e2e
1c080d70:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080d74:	2e232000 	0x2e232000
1c080d78:	2e2e2323 	0x2e2e2323
1c080d7c:	2e2e2e2e 	0x2e2e2e2e
1c080d80:	2e2e2e2e 	0x2e2e2e2e
1c080d84:	2e2e2e2e 	0x2e2e2e2e
1c080d88:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080d8c:	2e23232e 	0x2e23232e
1c080d90:	2e2e2e2e 	0x2e2e2e2e
1c080d94:	2e2e2e2e 	0x2e2e2e2e
1c080d98:	2e2e2e2e 	0x2e2e2e2e
1c080d9c:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080da0:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080da4:	2e2e2e2e 	0x2e2e2e2e
1c080da8:	2e2e2e2e 	0x2e2e2e2e
1c080dac:	2e2e2e2e 	0x2e2e2e2e
1c080db0:	00232e2e 	div.du	$r14,$r17,$r11
1c080db4:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080db8:	2e2e2e23 	0x2e2e2e23
1c080dbc:	2e2e2e2e 	0x2e2e2e2e
1c080dc0:	2e2e2e2e 	0x2e2e2e2e
1c080dc4:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080dc8:	2e232000 	0x2e232000
1c080dcc:	2e2e2323 	0x2e2e2323
1c080dd0:	2e2e2e2e 	0x2e2e2e2e
1c080dd4:	2e2e2e2e 	0x2e2e2e2e
1c080dd8:	2e2e2e2e 	0x2e2e2e2e
1c080ddc:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080de0:	2e23232e 	0x2e23232e
1c080de4:	2e2e2e2e 	0x2e2e2e2e
1c080de8:	2e2e2e2e 	0x2e2e2e2e
1c080dec:	2e2e2e2e 	0x2e2e2e2e
1c080df0:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080df4:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080df8:	2e2e2e2e 	0x2e2e2e2e
1c080dfc:	2e2e2e2e 	0x2e2e2e2e
1c080e00:	2e2e2e2e 	0x2e2e2e2e
1c080e04:	00232e2e 	div.du	$r14,$r17,$r11
1c080e08:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080e0c:	2e2e2e23 	0x2e2e2e23
1c080e10:	2e2e2e2e 	0x2e2e2e2e
1c080e14:	2e2e2e2e 	0x2e2e2e2e
1c080e18:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080e1c:	2e232000 	0x2e232000
1c080e20:	2e2e2323 	0x2e2e2323
1c080e24:	2e2e2e2e 	0x2e2e2e2e
1c080e28:	2e2e2e2e 	0x2e2e2e2e
1c080e2c:	2e2e2e2e 	0x2e2e2e2e
1c080e30:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080e34:	2e23232e 	0x2e23232e
1c080e38:	2e2e2e2e 	0x2e2e2e2e
1c080e3c:	2e2e2e2e 	0x2e2e2e2e
1c080e40:	2e2e2e2e 	0x2e2e2e2e
1c080e44:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080e48:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080e4c:	2e2e2e2e 	0x2e2e2e2e
1c080e50:	2e2e2e2e 	0x2e2e2e2e
1c080e54:	2e2e2e2e 	0x2e2e2e2e
1c080e58:	00232e2e 	div.du	$r14,$r17,$r11
1c080e5c:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080e60:	2e2e2e23 	0x2e2e2e23
1c080e64:	2e2e2e2e 	0x2e2e2e2e
1c080e68:	2e2e2e2e 	0x2e2e2e2e
1c080e6c:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080e70:	2e232000 	0x2e232000
1c080e74:	2e2e2323 	0x2e2e2323
1c080e78:	2e2e2e2e 	0x2e2e2e2e
1c080e7c:	2e2e2e2e 	0x2e2e2e2e
1c080e80:	2e2e2e2e 	0x2e2e2e2e
1c080e84:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080e88:	2e23232e 	0x2e23232e
1c080e8c:	2e2e2e2e 	0x2e2e2e2e
1c080e90:	2e2e2e2e 	0x2e2e2e2e
1c080e94:	2e2e2e2e 	0x2e2e2e2e
1c080e98:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080e9c:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080ea0:	2e2e2e2e 	0x2e2e2e2e
1c080ea4:	2e2e2e2e 	0x2e2e2e2e
1c080ea8:	2e2e2e2e 	0x2e2e2e2e
1c080eac:	00232e2e 	div.du	$r14,$r17,$r11
1c080eb0:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080eb4:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080eb8:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ebc:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ec0:	232e2323 	sc.d	$r3,$r25,11808(0x2e20)
1c080ec4:	2e232000 	0x2e232000
1c080ec8:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ecc:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ed0:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ed4:	2e232323 	0x2e232323
1c080ed8:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080edc:	2e2e2e2e 	0x2e2e2e2e
1c080ee0:	2e2e2e2e 	0x2e2e2e2e
1c080ee4:	2e2e2e2e 	0x2e2e2e2e
1c080ee8:	2e2e2e2e 	0x2e2e2e2e
1c080eec:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080ef0:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ef4:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ef8:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080efc:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080f00:	00232323 	div.du	$r3,$r25,$r8
1c080f04:	00000000 	0x00000000

1c080f08 <I2_n>:
1c080f08:	00000020 	0x00000020

1c080f0c <I2_m>:
1c080f0c:	00000013 	0x00000013

Disassembly of section .got:

1c080f10 <_GLOBAL_OFFSET_TABLE_>:
1c080f10:	00000000 	0x00000000
1c080f14:	1c080f1c 	pcaddu12i	$r28,16504(0x4078)
1c080f18:	1c080f6c 	pcaddu12i	$r12,16507(0x407b)

Disassembly of section .bss:

1c080f1c <add1>:
	...

1c080f6c <add2>:
	...

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
  18:	004e1000 	0x004e1000
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e60400 	bstrpick.d	$r0,$r0,0x26,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	004e1000 	0x004e1000
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
  c4:	004ebc01 	0x004ebc01
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
 108:	004f6c0c 	0x004f6c0c
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	004f800e 	0x004f800e
 124:	0002531c 	0x0002531c
 128:	4f9c0c00 	jirl	$r0,$r0,-25588(0x39c0c)
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	4fb80c00 	jirl	$r0,$r0,-18420(0x3b80c)
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	4fd80c00 	jirl	$r0,$r0,-10228(0x3d80c)
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	f80c0030 	0xf80c0030
 174:	471c004f 	bnez	$r2,4135936(0x3f1c00) # 3f1d74 <__stack_size+0x3e1d74>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	100e0030 	addu16i.d	$r16,$r1,896(0x380)
 18c:	5f1c0050 	bne	$r2,$r16,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c00502c 	pcaddu12i	$r12,641(0x281)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c00503c 	pcaddu12i	$r28,641(0x281)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c005048 	pcaddu12i	$r8,642(0x282)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00f10b00 	bstrpick.d	$r0,$r24,0x31,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c004e9c 	pcaddu12i	$r28,628(0x274)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000f10b 	0x0000f10b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	a40f0006 	0xa40f0006
 208:	531c004e 	b	20651008(0x13b1c00) # 13b1e08 <__stack_size+0x13a1e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	7c0f0000 	0x7c0f0000
 218:	531c004e 	b	20651008(0x13b1c00) # 13b1e18 <__stack_size+0x13a1e18>
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
 284:	00505000 	0x00505000
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
 2c8:	50500000 	b	20480(0x5000) # 52c8 <__stack_size-0xad38>
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
 300:	00505000 	0x00505000
 304:	0030021c 	0x0030021c
 308:	03010000 	lu52i.d	$r0,$r0,64(0x40)
 30c:	00400b01 	0x00400b01
 310:	03ba0000 	ori	$r0,$r0,0xe80
 314:	03b80000 	ori	$r0,$r0,0xe00
 318:	00000000 	0x00000000
 31c:	0000330c 	revb.2h	$r12,$r24
 320:	00508000 	0x00508000
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
 34c:	0050b000 	0x0050b000
 350:	0000ac1c 	0x0000ac1c
 354:	00020900 	0x00020900
 358:	07040200 	0x07040200
 35c:	0000000b 	0x0000000b
 360:	06070402 	cacop	0x2,$r0,449(0x1c1)
 364:	03000000 	lu52i.d	$r0,$r0,0
 368:	0000010a 	0x0000010a
 36c:	a9050e01 	0xa9050e01
 370:	30000000 	0x30000000
 374:	2c1c0051 	vld	$vr17,$r2,1792(0x700)
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
 3a4:	513c0700 	b	-67027964(0xc013c04) # fc013fa8 <_stack+0xdff13fac>
 3a8:	00bd1c00 	bstrins.d	$r0,$r0,0x3d,0x7
 3ac:	00860000 	bstrins.d	$r0,$r0,0x6,0x0
 3b0:	01080000 	0x01080000
 3b4:	01f30354 	0x01f30354
 3b8:	44070054 	bnez	$r2,-3143936(0x500700) # ffd00ab8 <_stack+0xe3c00abc>
 3bc:	671c0051 	bge	$r2,$r17,-58368(0x31c00) # ffff1fbc <_stack+0xe3ef1fc0>
 3c0:	99000001 	0x99000001
 3c4:	08000000 	0x08000000
 3c8:	3d015401 	0x3d015401
 3cc:	514c0900 	b	67193864(0x4014c08) # 4014fd4 <__stack_size+0x4004fd4>
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
 3fc:	0050b000 	0x0050b000
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
 444:	f00e0006 	0xf00e0006
 448:	081c0050 	fmadd.s	$f16,$f2,$f0,$f24
 44c:	41000000 	beqz	$r0,65536(0x10000) # 1044c <__stack_size+0x44c>
 450:	05000001 	0x05000001
 454:	000000f1 	0x000000f1
 458:	a9100601 	0xa9100601
 45c:	31000000 	0x31000000
 460:	06000001 	cacop	0x1,$r0,0
 464:	50f80900 	b	67172360(0x400f808) # 400fc6c <__stack_size+0x3fffc6c>
 468:	01671c00 	0x01671c00
 46c:	01080000 	0x01080000
 470:	003d0154 	0x003d0154
 474:	50e00700 	b	-67051516(0xc00e004) # fc00e478 <_stack+0xdff0e47c>
 478:	01671c00 	0x01671c00
 47c:	01550000 	0x01550000
 480:	01080000 	0x01080000
 484:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
 488:	51000900 	b	67174408(0x4010008) # 4010490 <__stack_size+0x4000490>
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
 4c0:	00516000 	0x00516000
 4c4:	0000ec1c 	0x0000ec1c
 4c8:	0002a100 	0x0002a100
 4cc:	07040200 	0x07040200
 4d0:	0000000b 	0x0000000b
 4d4:	06070402 	cacop	0x2,$r0,449(0x1c1)
 4d8:	03000000 	lu52i.d	$r0,$r0,0
 4dc:	0000009f 	0x0000009f
 4e0:	49050101 	bcnez	$fcc0,328960(0x50500) # 509e0 <__stack_size+0x409e0>
 4e4:	60000001 	blt	$r0,$r1,0 # 4e4 <__stack_size-0xfb1c>
 4e8:	ec1c0051 	0xec1c0051
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
 59c:	1c005220 	pcaddu12i	$r0,657(0x291)
 5a0:	00000020 	0x00000020
 5a4:	00000123 	0x00000123
 5a8:	0000f10a 	0x0000f10a
 5ac:	020a0100 	slti	$r0,$r8,640(0x280)
 5b0:	00000149 	0x00000149
 5b4:	00000112 	0x00000112
 5b8:	300c000b 	0x300c000b
 5bc:	6e1c0052 	bgeu	$r2,$r18,-123904(0x21c00) # fffe21bc <_stack+0xe3ee21c0>
 5c0:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 5c4:	08025401 	0x08025401
 5c8:	0e00002d 	0x0e00002d
 5cc:	1c0051c8 	pcaddu12i	$r8,654(0x28e)
 5d0:	00000030 	0x00000030
 5d4:	0000f10a 	0x0000f10a
 5d8:	020a0100 	slti	$r0,$r8,640(0x280)
 5dc:	00000149 	0x00000149
 5e0:	0000013e 	0x0000013e
 5e4:	f80f000b 	0xf80f000b
 5e8:	6e1c0051 	bgeu	$r2,$r17,-123904(0x21c00) # fffe21e8 <_stack+0xe3ee21ec>
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
 620:	da00020a 	0xda00020a
 624:	04000004 	csrrd	$r4,0x0
 628:	0003e900 	0x0003e900
 62c:	18010400 	pcaddi	$r0,2080(0x820)
 630:	0c000000 	0x0c000000
 634:	0000013c 	0x0000013c
 638:	000000bc 	0x000000bc
 63c:	00000060 	0x00000060
 640:	00000000 	0x00000000
 644:	0000038d 	0x0000038d
 648:	04030402 	csrrd	$r2,0xc1
 64c:	00000b07 	0x00000b07
 650:	07040300 	0x07040300
 654:	00000006 	0x00000006
 658:	00014504 	0x00014504
 65c:	160f0200 	lu32i.d	$r0,30736(0x7810)
 660:	00000027 	0x00000027
 664:	00013605 	0x00013605
 668:	01570100 	0x01570100
 66c:	00551006 	0x00551006
 670:	0000181c 	cto.w	$r28,$r0
 674:	cd9c0100 	0xcd9c0100
 678:	06000000 	cacop	0x0,$r0,0
 67c:	57010073 	bl	30343424(0x1cf0100) # 1cf077c <__stack_size+0x1ce077c>
 680:	00251201 	crc.w.w.w	$r1,$r16,$r4
 684:	06da0000 	0x06da0000
 688:	06d60000 	0x06d60000
 68c:	6e060000 	bgeu	$r0,$r0,-129536(0x20600) # fffe0c8c <_stack+0xe3ee0c90>
 690:	01570100 	0x01570100
 694:	0000351c 	revb.4h	$r28,$r8
 698:	0006ff00 	alsl.wu	$r0,$r24,$r31,0x2
 69c:	0006fb00 	alsl.wu	$r0,$r24,$r30,0x2
 6a0:	02640700 	sltui	$r0,$r24,-1791(0x901)
 6a4:	55100000 	bl	69632(0x11000) # 116a4 <__stack_size+0x16a4>
 6a8:	10021c00 	addu16i.d	$r0,$r0,135(0x87)
 6ac:	141c0055 	lu12i.w	$r21,57346(0xe002)
 6b0:	01000000 	0x01000000
 6b4:	08020158 	0x08020158
 6b8:	00000289 	0x00000289
 6bc:	00000726 	0x00000726
 6c0:	00000720 	0x00000720
 6c4:	00027f09 	0x00027f09
 6c8:	75080000 	0x75080000
 6cc:	5a000002 	beq	$r0,$r2,-131072(0x20000) # fffe06cc <_stack+0xe3ee06d0>
 6d0:	56000007 	bl	1966080(0x1e0000) # 1e06d0 <__stack_size+0x1d06d0>
 6d4:	0a000007 	0x0a000007
 6d8:	1c005510 	pcaddu12i	$r16,680(0x2a8)
 6dc:	00000014 	0x00000014
 6e0:	0002930b 	0x0002930b
 6e4:	00077d00 	alsl.wu	$r0,$r8,$r31,0x3
 6e8:	00077b00 	alsl.wu	$r0,$r24,$r30,0x3
 6ec:	00000000 	0x00000000
 6f0:	00014c0c 	0x00014c0c
 6f4:	014b0100 	0x014b0100
 6f8:	00014c01 	0x00014c01
 6fc:	0054b000 	0x0054b000
 700:	0000581c 	ext.w.h	$r28,$r0
 704:	4c9c0100 	jirl	$r0,$r8,39936(0x9c00)
 708:	06000001 	cacop	0x1,$r0,0
 70c:	01003176 	0x01003176
 710:	5314014b 	b	86971392(0x52f1400) # 52f1b10 <__stack_size+0x52e1b10>
 714:	94000001 	0x94000001
 718:	90000007 	0x90000007
 71c:	06000007 	cacop	0x7,$r0,0
 720:	01003276 	0x01003276
 724:	5324014b 	b	86975488(0x52f2400) # 52f2b24 <__stack_size+0x52e2b24>
 728:	b9000001 	0xb9000001
 72c:	b5000007 	0xb5000007
 730:	06000007 	cacop	0x7,$r0,0
 734:	4b01006e 	bceqz	$fcc3,3866880(0x3b0100) # 3b0834 <__stack_size+0x3a0834>
 738:	00352f01 	0x00352f01
 73c:	07e20000 	0x07e20000
 740:	07da0000 	0x07da0000
 744:	730d0000 	vextl.qu.du	$vr0,$vr0
 748:	4c010031 	jirl	$r17,$r1,256(0x100)
 74c:	015a1101 	0x015a1101
 750:	08260000 	fmadd.d	$f0,$f0,$f0,$f12
 754:	08220000 	fmadd.d	$f0,$f0,$f0,$f4
 758:	730d0000 	vextl.qu.du	$vr0,$vr0
 75c:	4d010032 	jirl	$r18,$r1,65792(0x10100)
 760:	015a1101 	0x015a1101
 764:	08460000 	0x08460000
 768:	08440000 	0x08440000
 76c:	0e000000 	0x0e000000
 770:	6e690504 	bgeu	$r8,$r4,-104188(0x26904) # fffe7074 <_stack+0xe3ee7078>
 774:	040f0074 	csrxchg	$r20,$r3,0x3c0
 778:	00000159 	0x00000159
 77c:	67040f10 	bge	$r24,$r16,-64500(0x3040c) # ffff0b88 <_stack+0xe3ef0b8c>
 780:	03000001 	lu52i.d	$r1,$r0,0
 784:	00f40601 	bstrpick.d	$r1,$r16,0x34,0x1
 788:	60110000 	blt	$r0,$r0,4352(0x1100) # 1888 <__stack_size-0xe778>
 78c:	0c000001 	0x0c000001
 790:	00000178 	0x00000178
 794:	01012801 	fadd.d	$f1,$f0,$f10
 798:	00000025 	0x00000025
 79c:	1c005450 	pcaddu12i	$r16,674(0x2a2)
 7a0:	0000005c 	0x0000005c
 7a4:	01e59c01 	0x01e59c01
 7a8:	64120000 	bge	$r0,$r0,4608(0x1200) # 19a8 <__stack_size-0xe658>
 7ac:	01007473 	0x01007473
 7b0:	250f0128 	stptr.w	$r8,$r9,3840(0xf00)
 7b4:	01000000 	0x01000000
 7b8:	72730654 	0x72730654
 7bc:	28010063 	ld.b	$r3,$r3,64(0x40)
 7c0:	01532001 	0x01532001
 7c4:	085f0000 	fmsub.s	$f0,$f0,$f0,$f30
 7c8:	08590000 	fmsub.s	$f0,$f0,$f0,$f18
 7cc:	6e060000 	bgeu	$r0,$r0,-129536(0x20600) # fffe0dcc <_stack+0xe3ee0dd0>
 7d0:	01280100 	0x01280100
 7d4:	0000352c 	revb.4h	$r12,$r9
 7d8:	00089100 	bytepick.w	$r0,$r8,$r4,0x1
 7dc:	00088b00 	bytepick.w	$r0,$r24,$r2,0x1
 7e0:	00730d00 	bstrins.w	$r0,$r8,0x13,0x3
 7e4:	11012c01 	addu16i.d	$r1,$r0,16459(0x404b)
 7e8:	0000015a 	0x0000015a
 7ec:	000008c6 	0x000008c6
 7f0:	000008be 	0x000008be
 7f4:	0100640d 	0x0100640d
 7f8:	e50b012d 	0xe50b012d
 7fc:	04000001 	csrrd	$r1,0x0
 800:	fa000009 	0xfa000009
 804:	00000008 	0x00000008
 808:	0160040f 	0x0160040f
 80c:	6a0c0000 	bltu	$r0,$r0,-128000(0x20c00) # fffe140c <_stack+0xe3ee1410>
 810:	01000001 	0x01000001
 814:	25010111 	stptr.w	$r17,$r8,256(0x100)
 818:	20000000 	ll.w	$r0,$r0,0
 81c:	281c0054 	ld.b	$r20,$r2,1792(0x700)
 820:	01000000 	0x01000000
 824:	0002649c 	0x0002649c
 828:	73641200 	0x73641200
 82c:	11010074 	addu16i.d	$r20,$r3,16448(0x4040)
 830:	00250e01 	crc.w.w.w	$r1,$r16,$r3
 834:	54010000 	bl	256(0x100) # 934 <__stack_size-0xf6cc>
 838:	63727306 	blt	$r24,$r6,-36240(0x37270) # ffff7aa8 <_stack+0xe3ef7aac>
 83c:	01110100 	fscaleb.d	$f0,$f8,$f0
 840:	0001531f 	0x0001531f
 844:	00094700 	bytepick.w	$r0,$r24,$r17,0x2
 848:	00094300 	bytepick.w	$r0,$r24,$r16,0x2
 84c:	006e0600 	bstrins.w	$r0,$r16,0xe,0x1
 850:	2b011101 	fld.s	$f1,$r8,68(0x44)
 854:	00000035 	0x00000035
 858:	0000096e 	0x0000096e
 85c:	00000968 	0x00000968
 860:	0100730d 	0x0100730d
 864:	5a110115 	beq	$r8,$r21,-126720(0x21100) # fffe1964 <_stack+0xe3ee1968>
 868:	a0000001 	0xa0000001
 86c:	9e000009 	0x9e000009
 870:	0d000009 	fsel	$f9,$f0,$f0,$fcc0
 874:	16010064 	lu32i.d	$r4,2051(0x803)
 878:	01e50b01 	0x01e50b01
 87c:	09b70000 	0x09b70000
 880:	09b30000 	0x09b30000
 884:	13000000 	addu16i.d	$r0,$r0,-16384(0xc000)
 888:	00000190 	0x00000190
 88c:	2501f601 	stptr.w	$r1,$r16,500(0x1f4)
 890:	01000000 	0x01000000
 894:	0000029e 	0x0000029e
 898:	01007314 	0x01007314
 89c:	00250ef6 	crc.w.w.w	$r22,$r23,$r3
 8a0:	63140000 	blt	$r0,$r0,-60416(0x31400) # ffff1ca0 <_stack+0xe3ef1ca4>
 8a4:	16f60100 	lu32i.d	$r0,503816(0x7b008)
 8a8:	00000160 	0x00000160
 8ac:	01006e14 	0x01006e14
 8b0:	003520f6 	0x003520f6
 8b4:	70150000 	0x70150000
 8b8:	0bfa0100 	0x0bfa0100
 8bc:	000001e5 	0x000001e5
 8c0:	01881600 	0x01881600
 8c4:	88010000 	0x88010000
 8c8:	0001e501 	0x0001e501
 8cc:	0053d000 	0x0053d000
 8d0:	0000281c 	cto.d	$r28,$r0
 8d4:	d79c0100 	0xd79c0100
 8d8:	17000002 	lu32i.d	$r2,-524288(0x80000)
 8dc:	88010073 	0x88010073
 8e0:	00015a15 	0x00015a15
 8e4:	0009d900 	bytepick.w	$r0,$r8,$r22,0x3
 8e8:	0009d500 	bytepick.w	$r0,$r8,$r21,0x3
 8ec:	00631800 	bstrins.w	$r0,$r0,0x3,0x6
 8f0:	601d8801 	blt	$r0,$r1,7560(0x1d88) # 2678 <__stack_size-0xd988>
 8f4:	01000001 	0x01000001
 8f8:	63160055 	blt	$r2,$r21,-59904(0x31600) # ffff1ef8 <_stack+0xe3ef1efc>
 8fc:	01000001 	0x01000001
 900:	01e50174 	0x01e50174
 904:	53900000 	b	233472(0x39000) # 39904 <__stack_size+0x29904>
 908:	003c1c00 	0x003c1c00
 90c:	9c010000 	0x9c010000
 910:	00000310 	0x00000310
 914:	01007317 	0x01007317
 918:	015a1474 	0x015a1474
 91c:	09fd0000 	0x09fd0000
 920:	09f70000 	0x09f70000
 924:	63180000 	blt	$r0,$r0,-59392(0x31800) # ffff2124 <_stack+0xe3ef2128>
 928:	1c740100 	pcaddu12i	$r0,237576(0x3a008)
 92c:	00000160 	0x00000160
 930:	16005501 	lu32i.d	$r1,680(0x2a8)
 934:	00000180 	0x00000180
 938:	4c016401 	jirl	$r1,$r0,356(0x164)
 93c:	20000001 	ll.w	$r1,$r0,0
 940:	6c1c0053 	bgeu	$r2,$r19,7168(0x1c00) # 2540 <__stack_size-0xdac0>
 944:	01000000 	0x01000000
 948:	0003639c 	0x0003639c
 94c:	31731700 	0x31731700
 950:	15640100 	lu12i.w	$r0,-319480(0xb2008)
 954:	0000015a 	0x0000015a
 958:	00000a2c 	0x00000a2c
 95c:	00000a26 	0x00000a26
 960:	00327317 	0x00327317
 964:	5a256401 	beq	$r0,$r1,-121500(0x22564) # fffe2ec8 <_stack+0xe3ee2ecc>
 968:	5f000001 	bne	$r0,$r1,-65536(0x30000) # ffff0968 <_stack+0xe3ef096c>
 96c:	5500000a 	bl	2686976(0x290000) # 29096c <__stack_size+0x28096c>
 970:	1700000a 	lu32i.d	$r10,-524288(0x80000)
 974:	6401006e 	bge	$r3,$r14,256(0x100) # a74 <__stack_size-0xf58c>
 978:	00003530 	revb.4h	$r16,$r9
 97c:	000aaa00 	0x000aaa00
 980:	000a9e00 	0x000a9e00
 984:	53160000 	b	202240(0x31600) # 31f84 <__stack_size+0x21f84>
 988:	01000001 	0x01000001
 98c:	01e5014d 	0x01e5014d
 990:	52f00000 	b	192512(0x2f000) # 2f990 <__stack_size+0x1f990>
 994:	002c1c00 	alsl.d	$r0,$r0,$r7,0x1
 998:	9c010000 	0x9c010000
 99c:	000003c6 	0x000003c6
 9a0:	74736418 	xvmin.w	$xr24,$xr0,$xr25
 9a4:	0f4d0100 	0x0f4d0100
 9a8:	000001e5 	0x000001e5
 9ac:	73175401 	0x73175401
 9b0:	01006372 	0x01006372
 9b4:	015a204d 	0x015a204d
 9b8:	0b0d0000 	0x0b0d0000
 9bc:	0b090000 	0x0b090000
 9c0:	6c170000 	bgeu	$r0,$r0,5888(0x1700) # 20c0 <__stack_size-0xdf40>
 9c4:	01006e65 	0x01006e65
 9c8:	00352c4d 	0x00352c4d
 9cc:	0b350000 	0x0b350000
 9d0:	0b2b0000 	0x0b2b0000
 9d4:	70190000 	0x70190000
 9d8:	0b4e0100 	0x0b4e0100
 9dc:	000001e5 	0x000001e5
 9e0:	00000b9c 	0x00000b9c
 9e4:	00000b94 	0x00000b94
 9e8:	012f1600 	0x012f1600
 9ec:	37010000 	0x37010000
 9f0:	0001e501 	0x0001e501
 9f4:	0052d000 	0x0052d000
 9f8:	00001c1c 	ctz.w	$r28,$r0
 9fc:	159c0100 	lu12i.w	$r0,-204792(0xce008)
 a00:	18000004 	pcaddi	$r4,0
 a04:	00747364 	bstrins.w	$r4,$r27,0x14,0x1c
 a08:	e50e3701 	0xe50e3701
 a0c:	01000001 	0x01000001
 a10:	72731754 	0x72731754
 a14:	37010063 	0x37010063
 a18:	00015a1f 	0x00015a1f
 a1c:	000bd600 	0x000bd600
 a20:	000bd200 	0x000bd200
 a24:	00701900 	bstrins.w	$r0,$r8,0x10,0x6
 a28:	e50b3b01 	0xe50b3b01
 a2c:	f8000001 	0xf8000001
 a30:	f400000b 	0xf400000b
 a34:	0000000b 	0x0000000b
 a38:	00015b16 	0x00015b16
 a3c:	01220100 	0x01220100
 a40:	00000035 	0x00000035
 a44:	1c005290 	pcaddu12i	$r16,660(0x294)
 a48:	00000034 	0x00000034
 a4c:	04649c01 	csrrd	$r1,0x1927
 a50:	73170000 	0x73170000
 a54:	15220100 	lu12i.w	$r0,-454648(0x91008)
 a58:	0000015a 	0x0000015a
 a5c:	00000c1c 	0x00000c1c
 a60:	00000c16 	0x00000c16
 a64:	6e656c18 	bgeu	$r0,$r24,-105108(0x2656c) # fffe6fd0 <_stack+0xe3ee6fd4>
 a68:	1f220100 	pcaddu18i	$r0,-454648(0x91008)
 a6c:	00000035 	0x00000035
 a70:	63195501 	blt	$r8,$r1,-59052(0x31954) # ffff23c4 <_stack+0xe3ef23c8>
 a74:	0100746e 	0x0100746e
 a78:	00350c23 	0x00350c23
 a7c:	0c520000 	vfcmp.ceq.s	$vr0,$vr0,$vr0
 a80:	0c4e0000 	0x0c4e0000
 a84:	16000000 	lu32i.d	$r0,0
 a88:	00000171 	0x00000171
 a8c:	35010c01 	0x35010c01
 a90:	50000000 	b	0 # a90 <__stack_size-0xf570>
 a94:	341c0052 	0x341c0052
 a98:	01000000 	0x01000000
 a9c:	0004a59c 	alsl.w	$r28,$r12,$r9,0x2
 aa0:	00731700 	bstrins.w	$r0,$r24,0x13,0x5
 aa4:	5a140c01 	beq	$r0,$r1,-125940(0x2140c) # fffe1eb0 <_stack+0xe3ee1eb4>
 aa8:	7d000001 	0x7d000001
 aac:	7100000c 	0x7100000c
 ab0:	1900000c 	pcaddi	$r12,-524288(0x80000)
 ab4:	00746e63 	bstrins.w	$r3,$r19,0x14,0x1b
 ab8:	350c0d01 	0x350c0d01
 abc:	e5000000 	0xe5000000
 ac0:	df00000c 	0xdf00000c
 ac4:	0000000c 	0x0000000c
 ac8:	0002641a 	0x0002641a
 acc:	00540000 	0x00540000
 ad0:	0000201c 	clo.d	$r28,$r0
 ad4:	1b9c0100 	pcalau12i	$r0,-204792(0xce008)
 ad8:	00000275 	0x00000275
 adc:	7f1b5401 	0x7f1b5401
 ae0:	01000002 	0x01000002
 ae4:	02890855 	addi.w	$r21,$r2,578(0x242)
 ae8:	0d1c0000 	vbitsel.v	$vr0,$vr0,$vr0,$vr24
 aec:	0d100000 	vbitsel.v	$vr0,$vr0,$vr0,$vr0
 af0:	930b0000 	0x930b0000
 af4:	8e000002 	0x8e000002
 af8:	8a00000d 	0x8a00000d
 afc:	0000000d 	0x0000000d
 b00:	00024500 	0x00024500
 b04:	96000400 	0x96000400
 b08:	04000005 	csrrd	$r5,0x0
 b0c:	00001801 	cto.w	$r1,$r0
 b10:	01c90c00 	0x01c90c00
 b14:	00bc0000 	bstrins.d	$r0,$r0,0x3c,0x0
 b18:	55300000 	bl	77824(0x13000) # 13b18 <__stack_size+0x3b18>
 b1c:	01401c00 	0x01401c00
 b20:	06910000 	0x06910000
 b24:	04020000 	csrrd	$r0,0x80
 b28:	00000b07 	0x00000b07
 b2c:	07040200 	0x07040200
 b30:	00000006 	0x00000006
 b34:	0001b803 	0x0001b803
 b38:	17030200 	lu32i.d	$r0,-518128(0x81810)
 b3c:	0000002c 	0x0000002c
 b40:	69050404 	bltu	$r0,$r4,66820(0x10504) # 11044 <__stack_size+0x1044>
 b44:	0500746e 	0x0500746e
 b48:	000001af 	0x000001af
 b4c:	08200210 	fmadd.d	$f16,$f16,$f0,$f0
 b50:	00000088 	0x00000088
 b54:	0001f206 	0x0001f206
 b58:	0b210200 	0x0b210200
 b5c:	00000033 	0x00000033
 b60:	02000600 	slti	$r0,$r16,1(0x1)
 b64:	22020000 	ll.d	$r0,$r0,512(0x200)
 b68:	0000330b 	revb.2h	$r11,$r24
 b6c:	e1060400 	0xe1060400
 b70:	02000001 	slti	$r1,$r0,0
 b74:	00330b23 	0x00330b23
 b78:	06080000 	cacop	0x0,$r0,512(0x200)
 b7c:	000001c1 	0x000001c1
 b80:	330b2402 	0x330b2402
 b84:	0c000000 	0x0c000000
 b88:	01d00700 	0x01d00700
 b8c:	3c010000 	0x3c010000
 b90:	00002c0f 	ctz.d	$r15,$r0
 b94:	00564000 	0x00564000
 b98:	0000301c 	revb.2h	$r28,$r0
 b9c:	da9c0100 	0xda9c0100
 ba0:	08000000 	0x08000000
 ba4:	3e01006e 	0x3e01006e
 ba8:	00002c13 	ctz.d	$r19,$r0
 bac:	000db400 	bytepick.d	$r0,$r0,$r13,0x3
 bb0:	000dac00 	bytepick.d	$r0,$r0,$r11,0x3
 bb4:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 bb8:	56400000 	bl	147456(0x24000) # 24bb8 <__stack_size+0x14bb8>
 bbc:	b8031c00 	0xb8031c00
 bc0:	01000000 	0x01000000
 bc4:	b80a093f 	0xb80a093f
 bc8:	0b000000 	0x0b000000
 bcc:	0000023b 	0x0000023b
 bd0:	00000df6 	0x00000df6
 bd4:	00000df4 	0x00000df4
 bd8:	07000000 	0x07000000
 bdc:	000001f9 	0x000001f9
 be0:	2c0f3301 	vld	$vr1,$r24,972(0x3cc)
 be4:	10000000 	addu16i.d	$r0,$r0,0
 be8:	241c0056 	ldptr.w	$r22,$r2,7168(0x1c00)
 bec:	01000000 	0x01000000
 bf0:	00012c9c 	0x00012c9c
 bf4:	006e0800 	bstrins.w	$r0,$r0,0xe,0x2
 bf8:	2c133501 	vld	$vr1,$r8,1229(0x4cd)
 bfc:	11000000 	addu16i.d	$r0,$r0,16384(0x4000)
 c00:	0900000e 	0x0900000e
 c04:	0900000e 	0x0900000e
 c08:	0000022e 	0x0000022e
 c0c:	1c005610 	pcaddu12i	$r16,688(0x2b0)
 c10:	0000a003 	0x0000a003
 c14:	09360100 	0x09360100
 c18:	0000a00a 	0x0000a00a
 c1c:	023b0b00 	slti	$r0,$r24,-318(0xec2)
 c20:	0e4c0000 	0x0e4c0000
 c24:	0e4a0000 	0x0e4a0000
 c28:	00000000 	0x00000000
 c2c:	01d70c00 	0x01d70c00
 c30:	2c010000 	vld	$vr0,$r0,64(0x40)
 c34:	00002c0f 	ctz.d	$r15,$r0
 c38:	00014700 	asrtle.d	$r24,$r17
 c3c:	006e0d00 	bstrins.w	$r0,$r8,0xe,0x3
 c40:	2c132e01 	vld	$vr1,$r16,1227(0x4cb)
 c44:	00000000 	0x00000000
 c48:	00020807 	0x00020807
 c4c:	0f200100 	0x0f200100
 c50:	0000002c 	0x0000002c
 c54:	1c005570 	pcaddu12i	$r16,683(0x2ab)
 c58:	00000084 	0x00000084
 c5c:	01bb9c01 	0x01bb9c01
 c60:	730e0000 	0x730e0000
 c64:	01006c65 	0x01006c65
 c68:	003f2120 	0x003f2120
 c6c:	0e630000 	0x0e630000
 c70:	0e5f0000 	0x0e5f0000
 c74:	740f0000 	0x740f0000
 c78:	0100706d 	0x0100706d
 c7c:	01bb3620 	0x01bb3620
 c80:	55010000 	bl	65792(0x10100) # 10d80 <__stack_size+0xd80>
 c84:	01006e08 	0x01006e08
 c88:	002c1322 	alsl.d	$r2,$r25,$r4,0x1
 c8c:	0e880000 	0x0e880000
 c90:	0e840000 	0x0e840000
 c94:	2e090000 	0x2e090000
 c98:	70000002 	vseq.b	$vr2,$vr0,$vr0
 c9c:	031c0055 	lu52i.d	$r21,$r2,1792(0x700)
 ca0:	00000088 	0x00000088
 ca4:	0a092301 	0x0a092301
 ca8:	00000088 	0x00000088
 cac:	00023b0b 	0x00023b0b
 cb0:	000ea900 	bytepick.d	$r0,$r8,$r10,0x5
 cb4:	000ea700 	bytepick.d	$r0,$r24,$r9,0x5
 cb8:	00000000 	0x00000000
 cbc:	00460410 	0x00460410
 cc0:	97110000 	0x97110000
 cc4:	01000001 	0x01000001
 cc8:	002c0f16 	alsl.d	$r22,$r24,$r3,0x1
 ccc:	55600000 	bl	90112(0x16000) # 16ccc <__stack_size+0x6ccc>
 cd0:	00081c00 	bytepick.w	$r0,$r0,$r7,0x0
 cd4:	9c010000 	0x9c010000
 cd8:	000001ee 	0x000001ee
 cdc:	01006e08 	0x01006e08
 ce0:	002c1318 	alsl.d	$r24,$r24,$r4,0x1
 ce4:	0ebe0000 	0x0ebe0000
 ce8:	0ebc0000 	0x0ebc0000
 cec:	11000000 	addu16i.d	$r0,$r0,16384(0x4000)
 cf0:	000001a5 	0x000001a5
 cf4:	2c0f1101 	vld	$vr1,$r8,964(0x3c4)
 cf8:	30000000 	0x30000000
 cfc:	1c1c0055 	pcaddu12i	$r21,57346(0xe002)
 d00:	01000000 	0x01000000
 d04:	00022e9c 	0x00022e9c
 d08:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 d0c:	55300000 	bl	77824(0x13000) # 13d0c <__stack_size+0x3d0c>
 d10:	70021c00 	vsle.b	$vr0,$vr0,$vr7
 d14:	01000000 	0x01000000
 d18:	700a0d13 	vadd.b	$vr19,$vr8,$vr3
 d1c:	0b000000 	0x0b000000
 d20:	0000023b 	0x0000023b
 d24:	00000ed3 	0x00000ed3
 d28:	00000ed1 	0x00000ed1
 d2c:	12000000 	addu16i.d	$r0,$r0,-32768(0x8000)
 d30:	000001a4 	0x000001a4
 d34:	2c0f0401 	vld	$vr1,$r0,961(0x3c1)
 d38:	01000000 	0x01000000
 d3c:	0001e913 	0x0001e913
 d40:	13060100 	addu16i.d	$r0,$r8,-16000(0xc180)
 d44:	0000002c 	0x0000002c
	...

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
 3f4:	01111755 	fscaleb.d	$f21,$f26,$f5
 3f8:	00001710 	clz.w	$r16,$r24
 3fc:	0b000f02 	0x0b000f02
 400:	0300000b 	lu52i.d	$r11,$r0,0
 404:	0b0b0024 	0x0b0b0024
 408:	0e030b3e 	0x0e030b3e
 40c:	16040000 	lu32i.d	$r0,8192(0x2000)
 410:	3a0e0300 	0x3a0e0300
 414:	390b3b0b 	0x390b3b0b
 418:	0013490b 	maskeqz	$r11,$r8,$r18
 41c:	012e0500 	0x012e0500
 420:	0e03193f 	0x0e03193f
 424:	053b0b3a 	0x053b0b3a
 428:	19270b39 	pcaddi	$r25,-444327(0x93859)
 42c:	06120111 	cacop	0x11,$r8,1152(0x480)
 430:	42971840 	beqz	$r2,169752(0x29718) # 29b48 <__stack_size+0x19b48>
 434:	00130119 	maskeqz	$r25,$r8,$r0
 438:	00050600 	alsl.w	$r0,$r16,$r1,0x3
 43c:	0b3a0803 	0x0b3a0803
 440:	0b39053b 	0x0b39053b
 444:	17021349 	lu32i.d	$r9,-520038(0x8109a)
 448:	001742b7 	sll.w	$r23,$r21,$r16
 44c:	011d0700 	0x011d0700
 450:	01521331 	0x01521331
 454:	110b42b8 	addu16i.d	$r24,$r21,17104(0x42d0)
 458:	58061201 	beq	$r16,$r1,1552(0x610) # a68 <__stack_size-0xf598>
 45c:	5705590b 	bl	70190424(0x42f0558) # 42f09b4 <__stack_size+0x42e09b4>
 460:	0800000b 	0x0800000b
 464:	13310005 	addu16i.d	$r5,$r0,-13248(0xcc40)
 468:	42b71702 	beqz	$r24,702228(0xab714) # abb7c <__stack_size+0x9bb7c>
 46c:	09000017 	0x09000017
 470:	13310005 	addu16i.d	$r5,$r0,-13248(0xcc40)
 474:	00000b1c 	0x00000b1c
 478:	11010b0a 	addu16i.d	$r10,$r24,16450(0x4042)
 47c:	00061201 	alsl.wu	$r1,$r16,$r4,0x1
 480:	00340b00 	0x00340b00
 484:	17021331 	lu32i.d	$r17,-520039(0x81099)
 488:	001742b7 	sll.w	$r23,$r21,$r16
 48c:	012e0c00 	0x012e0c00
 490:	0e03193f 	0x0e03193f
 494:	053b0b3a 	0x053b0b3a
 498:	19270b39 	pcaddi	$r25,-444327(0x93859)
 49c:	01111349 	fscaleb.d	$f9,$f26,$f4
 4a0:	18400612 	pcaddi	$r18,131120(0x20030)
 4a4:	01194297 	0x01194297
 4a8:	0d000013 	fsel	$f19,$f0,$f0,$fcc0
 4ac:	08030034 	0x08030034
 4b0:	053b0b3a 	0x053b0b3a
 4b4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 4b8:	42b71702 	beqz	$r24,702228(0xab714) # abbcc <__stack_size+0x9bbcc>
 4bc:	0e000017 	0x0e000017
 4c0:	0b0b0024 	0x0b0b0024
 4c4:	08030b3e 	0x08030b3e
 4c8:	0f0f0000 	0x0f0f0000
 4cc:	490b0b00 	0x490b0b00
 4d0:	10000013 	addu16i.d	$r19,$r0,0
 4d4:	00000026 	0x00000026
 4d8:	49002611 	0x49002611
 4dc:	12000013 	addu16i.d	$r19,$r0,-32768(0x8000)
 4e0:	08030005 	0x08030005
 4e4:	053b0b3a 	0x053b0b3a
 4e8:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 4ec:	00001802 	cto.w	$r2,$r0
 4f0:	3f012e13 	0x3f012e13
 4f4:	3a0e0319 	0x3a0e0319
 4f8:	390b3b0b 	0x390b3b0b
 4fc:	4919270b 	0x4919270b
 500:	010b2013 	fmin.d	$f19,$f0,$f8
 504:	14000013 	lu12i.w	$r19,0
 508:	08030005 	0x08030005
 50c:	0b3b0b3a 	0x0b3b0b3a
 510:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 514:	34150000 	0x34150000
 518:	3a080300 	0x3a080300
 51c:	390b3b0b 	0x390b3b0b
 520:	0013490b 	maskeqz	$r11,$r8,$r18
 524:	012e1600 	0x012e1600
 528:	0e03193f 	0x0e03193f
 52c:	0b3b0b3a 	0x0b3b0b3a
 530:	19270b39 	pcaddi	$r25,-444327(0x93859)
 534:	01111349 	fscaleb.d	$f9,$f26,$f4
 538:	18400612 	pcaddi	$r18,131120(0x20030)
 53c:	01194297 	0x01194297
 540:	17000013 	lu32i.d	$r19,-524288(0x80000)
 544:	08030005 	0x08030005
 548:	0b3b0b3a 	0x0b3b0b3a
 54c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 550:	42b71702 	beqz	$r24,702228(0xab714) # abc64 <__stack_size+0x9bc64>
 554:	18000017 	pcaddi	$r23,0
 558:	08030005 	0x08030005
 55c:	0b3b0b3a 	0x0b3b0b3a
 560:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 564:	00001802 	cto.w	$r2,$r0
 568:	03003419 	lu52i.d	$r25,$r0,13(0xd)
 56c:	3b0b3a08 	0x3b0b3a08
 570:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d10a8 <__stack_size+0x2c10a8>
 574:	b7170213 	0xb7170213
 578:	00001742 	clz.w	$r2,$r26
 57c:	31012e1a 	0x31012e1a
 580:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
 584:	97184006 	0x97184006
 588:	00001942 	cto.w	$r2,$r10
 58c:	3100051b 	0x3100051b
 590:	00180213 	sra.w	$r19,$r16,$r0
 594:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
 598:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
 59c:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
 5a0:	1201110e 	addu16i.d	$r14,$r8,-32700(0x8044)
 5a4:	00171006 	sll.w	$r6,$r0,$r4
 5a8:	00240200 	crc.w.b.w	$r0,$r16,$r0
 5ac:	0b3e0b0b 	0x0b3e0b0b
 5b0:	00000e03 	0x00000e03
 5b4:	03001603 	lu52i.d	$r3,$r16,5(0x5)
 5b8:	3b0b3a0e 	0x3b0b3a0e
 5bc:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d10f4 <__stack_size+0x2c10f4>
 5c0:	04000013 	csrrd	$r19,0x0
 5c4:	0b0b0024 	0x0b0b0024
 5c8:	08030b3e 	0x08030b3e
 5cc:	13050000 	addu16i.d	$r0,$r0,-16064(0xc140)
 5d0:	0b0e0301 	0x0b0e0301
 5d4:	3b0b3a0b 	0x3b0b3a0b
 5d8:	010b390b 	fmin.d	$f11,$f8,$f14
 5dc:	06000013 	cacop	0x13,$r0,0
 5e0:	0e03000d 	0x0e03000d
 5e4:	0b3b0b3a 	0x0b3b0b3a
 5e8:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 5ec:	00000b38 	0x00000b38
 5f0:	3f012e07 	0x3f012e07
 5f4:	3a0e0319 	0x3a0e0319
 5f8:	390b3b0b 	0x390b3b0b
 5fc:	4919270b 	0x4919270b
 600:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
 604:	97184006 	0x97184006
 608:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
 60c:	34080000 	0x34080000
 610:	3a080300 	0x3a080300
 614:	390b3b0b 	0x390b3b0b
 618:	0213490b 	slti	$r11,$r8,1234(0x4d2)
 61c:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
 620:	1d090000 	pcaddu12i	$r0,-505856(0x84800)
 624:	52133101 	b	67506992(0x4061330) # 4061954 <__stack_size+0x4051954>
 628:	0b42b801 	0x0b42b801
 62c:	0b581755 	0x0b581755
 630:	0b570b59 	0x0b570b59
 634:	0b0a0000 	0x0b0a0000
 638:	00175501 	sll.w	$r1,$r8,$r21
 63c:	00340b00 	0x00340b00
 640:	17021331 	lu32i.d	$r17,-520039(0x81099)
 644:	001742b7 	sll.w	$r23,$r21,$r16
 648:	012e0c00 	0x012e0c00
 64c:	0e03193f 	0x0e03193f
 650:	0b3b0b3a 	0x0b3b0b3a
 654:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 658:	00001301 	clo.w	$r1,$r24
 65c:	0300340d 	lu52i.d	$r13,$r0,13(0xd)
 660:	3b0b3a08 	0x3b0b3a08
 664:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d119c <__stack_size+0x2c119c>
 668:	0e000013 	0x0e000013
 66c:	08030005 	0x08030005
 670:	0b3b0b3a 	0x0b3b0b3a
 674:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 678:	42b71702 	beqz	$r24,702228(0xab714) # abd8c <__stack_size+0x9bd8c>
 67c:	0f000017 	0x0f000017
 680:	08030005 	0x08030005
 684:	0b3b0b3a 	0x0b3b0b3a
 688:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 68c:	00001802 	cto.w	$r2,$r0
 690:	0b000f10 	0x0b000f10
 694:	0013490b 	maskeqz	$r11,$r8,$r18
 698:	012e1100 	0x012e1100
 69c:	0e03193f 	0x0e03193f
 6a0:	0b3b0b3a 	0x0b3b0b3a
 6a4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 6a8:	06120111 	cacop	0x11,$r8,1152(0x480)
 6ac:	42971840 	beqz	$r2,169752(0x29718) # 29dc4 <__stack_size+0x19dc4>
 6b0:	00130119 	maskeqz	$r25,$r8,$r0
 6b4:	012e1200 	0x012e1200
 6b8:	0e03193f 	0x0e03193f
 6bc:	0b3b0b3a 	0x0b3b0b3a
 6c0:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 6c4:	00000b20 	0x00000b20
 6c8:	03003413 	lu52i.d	$r19,$r0,13(0xd)
 6cc:	3b0b3a0e 	0x3b0b3a0e
 6d0:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1208 <__stack_size+0x2c1208>
 6d4:	00000013 	0x00000013

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
	...
 6d8:	55100000 	bl	69632(0x11000) # 116d8 <__stack_size+0x16d8>
 6dc:	55181c00 	bl	71708(0x1181c) # 11ef8 <__stack_size+0x1ef8>
 6e0:	00011c00 	asrtle.d	$r0,$r7
 6e4:	00551854 	0x00551854
 6e8:	0055281c 	0x0055281c
 6ec:	f300041c 	0xf300041c
 6f0:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
 6fc:	10000000 	addu16i.d	$r0,$r0,0
 700:	181c0055 	pcaddi	$r21,57346(0xe002)
 704:	011c0055 	0x011c0055
 708:	55185500 	bl	67180628(0x4011854) # 4011f5c <__stack_size+0x4001f5c>
 70c:	55281c00 	bl	75804(0x1281c) # 12f28 <__stack_size+0x2f28>
 710:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 714:	9f5501f3 	0x9f5501f3
	...
 720:	00050502 	alsl.w	$r2,$r8,$r1,0x3
 724:	55100000 	bl	69632(0x11000) # 11724 <__stack_size+0x1724>
 728:	55101c00 	bl	69660(0x1101c) # 11744 <__stack_size+0x1744>
 72c:	00011c00 	asrtle.d	$r0,$r7
 730:	00551055 	0x00551055
 734:	0055181c 	0x0055181c
 738:	7500031c 	0x7500031c
 73c:	55189f7f 	bl	-33744740(0xdfd189c) # fdfd1fd8 <_stack+0xe1ed1fdc>
 740:	55241c00 	bl	74780(0x1241c) # 12b5c <__stack_size+0x2b5c>
 744:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 748:	315501f3 	vstelm.h	$vr19,$r15,128(0x80),0x5
 74c:	00009f1c 	0x00009f1c
 750:	00000000 	0x00000000
 754:	00020000 	0x00020000
 758:	55100000 	bl	69632(0x11000) # 11758 <__stack_size+0x1758>
 75c:	55181c00 	bl	71708(0x1181c) # 11f78 <__stack_size+0x1f78>
 760:	00011c00 	asrtle.d	$r0,$r7
 764:	00551854 	0x00551854
 768:	0055281c 	0x0055281c
 76c:	f300041c 	0xf300041c
 770:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
 774:	00000000 	0x00000000
 778:	04000000 	csrrd	$r0,0x0
 77c:	00551000 	0x00551000
 780:	0055281c 	0x0055281c
 784:	5400011c 	bl	74448896(0x4700000) # 4700784 <__stack_size+0x46f0784>
	...
 794:	1c0054b0 	pcaddu12i	$r16,677(0x2a5)
 798:	1c0054c8 	pcaddu12i	$r8,678(0x2a6)
 79c:	c8540001 	0xc8540001
 7a0:	081c0054 	fmadd.s	$f20,$f2,$f0,$f24
 7a4:	041c0055 	csrxchg	$r21,$r2,0x700
 7a8:	5401f300 	bl	-67108368(0xc0001f0) # fc000998 <_stack+0xdff0099c>
 7ac:	0000009f 	0x0000009f
	...
 7b8:	0054b000 	0x0054b000
 7bc:	0054c81c 	0x0054c81c
 7c0:	5500011c 	bl	74514432(0x4710000) # 47107c0 <__stack_size+0x47007c0>
 7c4:	1c0054c8 	pcaddu12i	$r8,678(0x2a6)
 7c8:	1c005508 	pcaddu12i	$r8,680(0x2a8)
 7cc:	01f30004 	0x01f30004
 7d0:	00009f55 	0x00009f55
 7d4:	00000000 	0x00000000
 7d8:	04000000 	csrrd	$r0,0x0
 7dc:	00000004 	0x00000004
 7e0:	54b00001 	bl	307200(0x4b000) # 4b7e0 <__stack_size+0x3b7e0>
 7e4:	54b01c00 	bl	45084(0xb01c) # b800 <__stack_size-0x4800>
 7e8:	00011c00 	asrtle.d	$r0,$r7
 7ec:	0054b056 	0x0054b056
 7f0:	0054c01c 	0x0054c01c
 7f4:	7600031c 	0x7600031c
 7f8:	54c09f7f 	bl	-33767268(0xdfcc09c) # fdfcc894 <_stack+0xe1ecc898>
 7fc:	54d41c00 	bl	54300(0xd41c) # dc18 <__stack_size-0x23e8>
 800:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 804:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 808:	54d49f1c 	bl	-59714404(0xc70d49c) # fc70dca4 <_stack+0xe060dca8>
 80c:	54e01c00 	bl	57372(0xe01c) # e828 <__stack_size-0x17d8>
 810:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 814:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 818:	00009f1c 	0x00009f1c
 81c:	00000000 	0x00000000
 820:	00020000 	0x00020000
 824:	54b00000 	bl	45056(0xb000) # b824 <__stack_size-0x47dc>
 828:	54e41c00 	bl	58396(0xe41c) # ec44 <__stack_size-0x13bc>
 82c:	00011c00 	asrtle.d	$r0,$r7
 830:	0054e854 	0x0054e854
 834:	0054fc1c 	0x0054fc1c
 838:	5400011c 	bl	74448896(0x4700000) # 4700838 <__stack_size+0x46f0838>
	...
 844:	54b00003 	bl	831488(0xcb000) # cb844 <__stack_size+0xbb844>
 848:	55081c00 	bl	67612(0x1081c) # 11064 <__stack_size+0x1064>
 84c:	00011c00 	asrtle.d	$r0,$r7
 850:	00000055 	0x00000055
	...
 85c:	50000000 	b	0 # 85c <__stack_size-0xf7a4>
 860:	8c1c0054 	0x8c1c0054
 864:	011c0054 	0x011c0054
 868:	548c5500 	bl	67144788(0x4008c54) # 40094bc <__stack_size+0x3ff94bc>
 86c:	54a81c00 	bl	43036(0xa81c) # b088 <__stack_size-0x4f78>
 870:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 874:	9f5501f3 	0x9f5501f3
 878:	1c0054a8 	pcaddu12i	$r8,677(0x2a5)
 87c:	1c0054ac 	pcaddu12i	$r12,677(0x2a5)
 880:	00550001 	0x00550001
	...
 88c:	00000101 	0x00000101
 890:	00545000 	0x00545000
 894:	0054601c 	0x0054601c
 898:	5600011c 	bl	74579968(0x4720000) # 4720898 <__stack_size+0x4710898>
 89c:	1c005460 	pcaddu12i	$r0,675(0x2a3)
 8a0:	1c0054a4 	pcaddu12i	$r4,677(0x2a5)
 8a4:	7f760003 	0x7f760003
 8a8:	0054a89f 	0x0054a89f
 8ac:	0054ac1c 	0x0054ac1c
 8b0:	7600031c 	0x7600031c
 8b4:	00009f7f 	0x00009f7f
 8b8:	00000000 	0x00000000
 8bc:	01020000 	0x01020000
 8c0:	00000001 	0x00000001
 8c4:	54500000 	bl	20480(0x5000) # 58c4 <__stack_size-0xa73c>
 8c8:	545c1c00 	bl	23580(0x5c1c) # 64e4 <__stack_size-0x9b1c>
 8cc:	00011c00 	asrtle.d	$r0,$r7
 8d0:	00545c55 	0x00545c55
 8d4:	00547c1c 	0x00547c1c
 8d8:	5c00011c 	bne	$r8,$r28,0 # 8d8 <__stack_size-0xf728>
 8dc:	1c00547c 	pcaddu12i	$r28,675(0x2a3)
 8e0:	1c0054a4 	pcaddu12i	$r4,677(0x2a5)
 8e4:	a8550001 	0xa8550001
 8e8:	ac1c0054 	0xac1c0054
 8ec:	011c0054 	0x011c0054
 8f0:	00005500 	bitrev.d	$r0,$r8
 8f4:	00000000 	0x00000000
 8f8:	00030000 	0x00030000
	...
 904:	1c005450 	pcaddu12i	$r16,674(0x2a2)
 908:	1c005460 	pcaddu12i	$r0,675(0x2a3)
 90c:	60540001 	blt	$r0,$r1,21504(0x5400) # 5d0c <__stack_size-0xa2f4>
 910:	7c1c0054 	0x7c1c0054
 914:	011c0054 	0x011c0054
 918:	547c5d00 	bl	67140700(0x4007c5c) # 4008574 <__stack_size+0x3ff8574>
 91c:	548c1c00 	bl	35868(0x8c1c) # 9538 <__stack_size-0x6ac8>
 920:	00011c00 	asrtle.d	$r0,$r7
 924:	00548c54 	0x00548c54
 928:	0054a41c 	0x0054a41c
 92c:	5c00011c 	bne	$r8,$r28,0 # 92c <__stack_size-0xf6d4>
 930:	1c0054a8 	pcaddu12i	$r8,677(0x2a5)
 934:	1c0054ac 	pcaddu12i	$r12,677(0x2a5)
 938:	00540001 	0x00540001
	...
 944:	20000000 	ll.w	$r0,$r0,0
 948:	2c1c0054 	vld	$vr20,$r2,1792(0x700)
 94c:	011c0054 	0x011c0054
 950:	542c5500 	bl	67120212(0x4002c54) # 40035a4 <__stack_size+0x3ff35a4>
 954:	54481c00 	bl	18460(0x481c) # 5170 <__stack_size-0xae90>
 958:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 95c:	9f5501f3 	0x9f5501f3
	...
 968:	00040400 	alsl.w	$r0,$r0,$r1,0x1
 96c:	54200000 	bl	8192(0x2000) # 296c <__stack_size-0xd694>
 970:	54201c00 	bl	8220(0x201c) # 298c <__stack_size-0xd674>
 974:	00011c00 	asrtle.d	$r0,$r7
 978:	00542056 	0x00542056
 97c:	0054281c 	0x0054281c
 980:	7600031c 	0x7600031c
 984:	54289f7f 	bl	-33806180(0xdfc289c) # fdfc3220 <_stack+0xe1ec3224>
 988:	54441c00 	bl	17436(0x441c) # 4da4 <__stack_size-0xb25c>
 98c:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 990:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 994:	00009f1c 	0x00009f1c
 998:	00000000 	0x00000000
 99c:	00020000 	0x00020000
 9a0:	1c005420 	pcaddu12i	$r0,673(0x2a1)
 9a4:	1c005448 	pcaddu12i	$r8,674(0x2a2)
 9a8:	00550001 	0x00550001
 9ac:	00000000 	0x00000000
 9b0:	03000000 	lu52i.d	$r0,$r0,0
 9b4:	20000000 	ll.w	$r0,$r0,0
 9b8:	2c1c0054 	vld	$vr20,$r2,1792(0x700)
 9bc:	011c0054 	0x011c0054
 9c0:	542c5400 	bl	11348(0x2c54) # 3614 <__stack_size-0xc9ec>
 9c4:	54441c00 	bl	17436(0x441c) # 4de0 <__stack_size-0xb220>
 9c8:	00011c00 	asrtle.d	$r0,$r7
 9cc:	0000005c 	0x0000005c
	...
 9d8:	0053d000 	0x0053d000
 9dc:	0053e81c 	0x0053e81c
 9e0:	5400011c 	bl	74448896(0x4700000) # 47009e0 <__stack_size+0x46f09e0>
 9e4:	1c0053e8 	pcaddu12i	$r8,671(0x29f)
 9e8:	1c0053f8 	pcaddu12i	$r24,671(0x29f)
 9ec:	00540001 	0x00540001
	...
 9fc:	00539000 	0x00539000
 a00:	0053a41c 	0x0053a41c
 a04:	5400011c 	bl	74448896(0x4700000) # 4700a04 <__stack_size+0x46f0a04>
 a08:	1c0053a4 	pcaddu12i	$r4,669(0x29d)
 a0c:	1c0053c8 	pcaddu12i	$r8,670(0x29e)
 a10:	c85c0001 	0xc85c0001
 a14:	cc1c0053 	0xcc1c0053
 a18:	011c0053 	0x011c0053
 a1c:	00005400 	bitrev.d	$r0,$r0
	...
 a2c:	1c005320 	pcaddu12i	$r0,665(0x299)
 a30:	1c00535c 	pcaddu12i	$r28,666(0x29a)
 a34:	5c540001 	bne	$r0,$r1,21504(0x5400) # 5e34 <__stack_size-0xa1cc>
 a38:	641c0053 	bge	$r2,$r19,7168(0x1c00) # 2638 <__stack_size-0xd9c8>
 a3c:	011c0053 	0x011c0053
 a40:	53685400 	b	223316(0x36854) # 37294 <__stack_size+0x27294>
 a44:	53801c00 	b	229404(0x3801c) # 38a60 <__stack_size+0x28a60>
 a48:	00011c00 	asrtle.d	$r0,$r7
 a4c:	00000054 	0x00000054
	...
 a5c:	20000000 	ll.w	$r0,$r0,0
 a60:	3c1c0053 	0x3c1c0053
 a64:	011c0053 	0x011c0053
 a68:	533c5500 	b	67320916(0x4033c54) # 40346bc <__stack_size+0x40246bc>
 a6c:	53541c00 	b	218140(0x3541c) # 35e88 <__stack_size+0x25e88>
 a70:	00011c00 	asrtle.d	$r0,$r7
 a74:	0053545c 	0x0053545c
 a78:	00535c1c 	0x00535c1c
 a7c:	5500011c 	bl	74514432(0x4710000) # 4710a7c <__stack_size+0x4700a7c>
 a80:	1c00535c 	pcaddu12i	$r28,666(0x29a)
 a84:	1c005360 	pcaddu12i	$r0,667(0x29b)
 a88:	685c0001 	bltu	$r0,$r1,23552(0x5c00) # 6688 <__stack_size-0x9978>
 a8c:	6c1c0053 	bgeu	$r2,$r19,7168(0x1c00) # 268c <__stack_size-0xd974>
 a90:	011c0053 	0x011c0053
 a94:	00005c00 	ext.w.b	$r0,$r0
	...
 aa4:	00010100 	asrtle.d	$r8,$r0
 aa8:	53200000 	b	204800(0x32000) # 32aa8 <__stack_size+0x22aa8>
 aac:	53381c00 	b	210972(0x3381c) # 342c8 <__stack_size+0x242c8>
 ab0:	00011c00 	asrtle.d	$r0,$r7
 ab4:	00533856 	0x00533856
 ab8:	00533c1c 	0x00533c1c
 abc:	f300041c 	0xf300041c
 ac0:	3c9f5601 	0x3c9f5601
 ac4:	541c0053 	bl	21765120(0x14c1c00) # 14c26c4 <__stack_size+0x14b26c4>
 ac8:	061c0053 	cacop	0x13,$r2,1792(0x700)
 acc:	5601f300 	bl	-66977296(0xc0201f0) # fc020cbc <_stack+0xdff20cc0>
 ad0:	549f1c31 	bl	12885788(0xc49f1c) # c4a9ec <__stack_size+0xc3a9ec>
 ad4:	541c0053 	bl	21765120(0x14c1c00) # 14c26d4 <__stack_size+0x14b26d4>
 ad8:	041c0053 	csrxchg	$r19,$r2,0x700
 adc:	5601f300 	bl	-66977296(0xc0201f0) # fc020ccc <_stack+0xdff20cd0>
 ae0:	0053549f 	0x0053549f
 ae4:	0053601c 	0x0053601c
 ae8:	f300061c 	0xf300061c
 aec:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 af0:	0053689f 	0x0053689f
 af4:	00536c1c 	0x00536c1c
 af8:	f300061c 	0xf300061c
 afc:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 b00:	0000009f 	0x0000009f
	...
 b0c:	0052f000 	0x0052f000
 b10:	0053141c 	0x0053141c
 b14:	5500011c 	bl	74514432(0x4710000) # 4710b14 <__stack_size+0x4700b14>
 b18:	1c005314 	pcaddu12i	$r20,664(0x298)
 b1c:	1c00531c 	pcaddu12i	$r28,664(0x298)
 b20:	00550001 	0x00550001
	...
 b30:	01010000 	fadd.d	$f0,$f0,$f0
 b34:	0052f000 	0x0052f000
 b38:	0052f81c 	0x0052f81c
 b3c:	5600011c 	bl	74579968(0x4720000) # 4720b3c <__stack_size+0x4710b3c>
 b40:	1c0052f8 	pcaddu12i	$r24,663(0x297)
 b44:	1c0052fc 	pcaddu12i	$r28,663(0x297)
 b48:	01f30004 	0x01f30004
 b4c:	52fc9f56 	b	-44368740(0xd5afc9c) # fd5b07e8 <_stack+0xe14b07ec>
 b50:	53081c00 	b	198684(0x3081c) # 3136c <__stack_size+0x2136c>
 b54:	000a1c00 	0x000a1c00
 b58:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b5c:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d4c <_stack+0xe0620d50>
 b60:	53089f22 	b	-57997156(0xc8b089c) # fc8b13fc <_stack+0xe07b1400>
 b64:	53141c00 	b	201756(0x3141c) # 31f80 <__stack_size+0x21f80>
 b68:	000c1c00 	bytepick.d	$r0,$r0,$r7,0x0
 b6c:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b70:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d60 <_stack+0xe0620d64>
 b74:	9f012322 	0x9f012322
 b78:	1c005314 	pcaddu12i	$r20,664(0x298)
 b7c:	1c005318 	pcaddu12i	$r24,664(0x298)
 b80:	0074000a 	bstrins.w	$r10,$r0,0x14,0x0
 b84:	f31c007d 	0xf31c007d
 b88:	9f225601 	0x9f225601
	...
 b94:	00000002 	0x00000002
 b98:	00010100 	asrtle.d	$r8,$r0
 b9c:	1c0052f0 	pcaddu12i	$r16,663(0x297)
 ba0:	1c0052fc 	pcaddu12i	$r28,663(0x297)
 ba4:	fc540001 	0xfc540001
 ba8:	081c0052 	fmadd.s	$f18,$f2,$f0,$f24
 bac:	011c0053 	0x011c0053
 bb0:	53085d00 	b	67307612(0x403085c) # 403140c <__stack_size+0x402140c>
 bb4:	53141c00 	b	201756(0x3141c) # 31fd0 <__stack_size+0x21fd0>
 bb8:	00031c00 	0x00031c00
 bbc:	149f7f7d 	lu12i.w	$r29,326651(0x4fbfb)
 bc0:	181c0053 	pcaddi	$r19,57346(0xe002)
 bc4:	011c0053 	0x011c0053
 bc8:	00005d00 	ext.w.b	$r0,$r8
	...
 bd4:	52d00000 	b	184320(0x2d000) # 2dbd4 <__stack_size+0x1dbd4>
 bd8:	52d81c00 	b	186396(0x2d81c) # 2e3f4 <__stack_size+0x1e3f4>
 bdc:	00011c00 	asrtle.d	$r0,$r7
 be0:	0052d855 	0x0052d855
 be4:	0052ec1c 	0x0052ec1c
 be8:	5500011c 	bl	74514432(0x4710000) # 4710be8 <__stack_size+0x4700be8>
	...
 bf4:	00000002 	0x00000002
 bf8:	1c0052d0 	pcaddu12i	$r16,662(0x296)
 bfc:	1c0052d4 	pcaddu12i	$r20,662(0x296)
 c00:	d4540001 	0xd4540001
 c04:	ec1c0052 	0xec1c0052
 c08:	011c0052 	0x011c0052
 c0c:	00005c00 	ext.w.b	$r0,$r0
	...
 c1c:	1c005290 	pcaddu12i	$r16,660(0x294)
 c20:	1c005298 	pcaddu12i	$r24,660(0x294)
 c24:	98540001 	0x98540001
 c28:	a81c0052 	0xa81c0052
 c2c:	031c0052 	lu52i.d	$r18,$r2,1792(0x700)
 c30:	9f017400 	0x9f017400
 c34:	1c0052a8 	pcaddu12i	$r8,661(0x295)
 c38:	1c0052bc 	pcaddu12i	$r28,661(0x295)
 c3c:	00740008 	bstrins.w	$r8,$r0,0x14,0x0
 c40:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 c44:	00009f01 	0x00009f01
 c48:	00000000 	0x00000000
 c4c:	00020000 	0x00020000
 c50:	52900000 	b	167936(0x29000) # 29c50 <__stack_size+0x19c50>
 c54:	52a81c00 	b	174108(0x2a81c) # 2b470 <__stack_size+0x1b470>
 c58:	00021c00 	0x00021c00
 c5c:	52a89f30 	b	-54351716(0xcc2a89c) # fcc2b4f8 <_stack+0xe0b2b4fc>
 c60:	52bc1c00 	b	179228(0x2bc1c) # 2c87c <__stack_size+0x1c87c>
 c64:	00011c00 	asrtle.d	$r0,$r7
 c68:	0000005c 	0x0000005c
 c6c:	00000000 	0x00000000
 c70:	03030000 	lu52i.d	$r0,$r0,192(0xc0)
	...
 c7c:	00525000 	0x00525000
 c80:	0052501c 	0x0052501c
 c84:	5400011c 	bl	74448896(0x4700000) # 4700c84 <__stack_size+0x46f0c84>
 c88:	1c005250 	pcaddu12i	$r16,658(0x292)
 c8c:	1c00525c 	pcaddu12i	$r28,658(0x292)
 c90:	01740003 	0x01740003
 c94:	00525c9f 	0x00525c9f
 c98:	0052741c 	0x0052741c
 c9c:	7400081c 	xvseq.b	$xr28,$xr0,$xr2
 ca0:	22007c00 	ll.d	$r0,$r0,124(0x7c)
 ca4:	749f0123 	0x749f0123
 ca8:	781c0052 	0x781c0052
 cac:	091c0052 	vfmadd.s	$vr18,$vr2,$vr0,$vr24
 cb0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ea0 <_stack+0xdff00ea4>
 cb4:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 cb8:	52789f01 	b	-66684772(0xc06789c) # fc068554 <_stack+0xdff68558>
 cbc:	52801c00 	b	163868(0x2801c) # 28cd8 <__stack_size+0x18cd8>
 cc0:	00031c00 	0x00031c00
 cc4:	809f0174 	0x809f0174
 cc8:	841c0052 	0x841c0052
 ccc:	061c0052 	cacop	0x12,$r2,1792(0x700)
 cd0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ec0 <_stack+0xdff00ec4>
 cd4:	009f0123 	bstrins.d	$r3,$r9,0x1f,0x0
 cd8:	00000000 	0x00000000
 cdc:	02000000 	slti	$r0,$r0,0
 ce0:	00000000 	0x00000000
 ce4:	00525000 	0x00525000
 ce8:	00525c1c 	0x00525c1c
 cec:	3000021c 	0x3000021c
 cf0:	00525c9f 	0x00525c9f
 cf4:	0052781c 	0x0052781c
 cf8:	5c00011c 	bne	$r8,$r28,0 # cf8 <__stack_size-0xf308>
 cfc:	1c005278 	pcaddu12i	$r24,659(0x293)
 d00:	1c005284 	pcaddu12i	$r4,660(0x294)
 d04:	9f300002 	0x9f300002
	...
 d10:	00030300 	0x00030300
	...
 d1c:	1c005400 	pcaddu12i	$r0,672(0x2a0)
 d20:	1c005400 	pcaddu12i	$r0,672(0x2a0)
 d24:	00560001 	0x00560001
 d28:	081c0054 	fmadd.s	$f20,$f2,$f0,$f24
 d2c:	031c0054 	lu52i.d	$r20,$r2,1792(0x700)
 d30:	9f7f7600 	0x9f7f7600
 d34:	1c005408 	pcaddu12i	$r8,672(0x2a0)
 d38:	1c00540c 	pcaddu12i	$r12,672(0x2a0)
 d3c:	01f30006 	0x01f30006
 d40:	9f1c3156 	0x9f1c3156
 d44:	1c00540c 	pcaddu12i	$r12,672(0x2a0)
 d48:	1c005414 	pcaddu12i	$r20,672(0x2a0)
 d4c:	007c000b 	bstrins.w	$r11,$r0,0x1c,0x0
 d50:	5601f320 	bl	-58588688(0xc8201f0) # fc820f40 <_stack+0xe0720f44>
 d54:	22007422 	ll.d	$r2,$r1,116(0x74)
 d58:	0054149f 	0x0054149f
 d5c:	0054181c 	0x0054181c
 d60:	74000a1c 	xvseq.b	$xr28,$xr16,$xr2
 d64:	1c007c00 	pcaddu12i	$r0,992(0x3e0)
 d68:	225601f3 	ll.d	$r19,$r15,22016(0x5600)
 d6c:	0054189f 	0x0054189f
 d70:	00541c1c 	0x00541c1c
 d74:	7c000b1c 	0x7c000b1c
 d78:	01f32000 	0x01f32000
 d7c:	00742256 	bstrins.w	$r22,$r18,0x14,0x8
 d80:	00009f22 	0x00009f22
 d84:	00000000 	0x00000000
 d88:	00020000 	0x00020000
 d8c:	54000000 	bl	0 # d8c <__stack_size-0xf274>
 d90:	540c1c00 	bl	3100(0xc1c) # 19ac <__stack_size-0xe654>
 d94:	00011c00 	asrtle.d	$r0,$r7
 d98:	00540c54 	0x00540c54
 d9c:	00541c1c 	0x00541c1c
 da0:	5c00011c 	bne	$r8,$r28,0 # da0 <__stack_size-0xf260>
	...
 dac:	03010102 	lu52i.d	$r2,$r8,64(0x40)
 db0:	00000003 	0x00000003
 db4:	00000110 	0x00000110
 db8:	00000120 	0x00000120
 dbc:	9f300002 	0x9f300002
 dc0:	00000120 	0x00000120
 dc4:	00000120 	0x00000120
 dc8:	20540001 	ll.w	$r1,$r0,21504(0x5400)
 dcc:	34000001 	0x34000001
 dd0:	0c000001 	0x0c000001
 dd4:	f7007400 	0xf7007400
 dd8:	f7640825 	0xf7640825
 ddc:	00f71b25 	bstrpick.d	$r5,$r25,0x37,0x6
 de0:	0001349f 	0x0001349f
 de4:	00014000 	asrtle.d	$r0,$r16
 de8:	5d000100 	bne	$r8,$r0,65536(0x10000) # 10de8 <__stack_size+0xde8>
	...
 df4:	01200100 	0x01200100
 df8:	01200000 	0x01200000
 dfc:	00010000 	asrtle.d	$r0,$r0
 e00:	00000054 	0x00000054
 e04:	00000000 	0x00000000
 e08:	01010200 	fadd.d	$f0,$f16,$f0
 e0c:	00000303 	0x00000303
 e10:	0000e000 	0x0000e000
 e14:	0000f000 	0x0000f000
 e18:	30000200 	0x30000200
 e1c:	0000f09f 	0x0000f09f
 e20:	0000f000 	0x0000f000
 e24:	54000100 	bl	67108864(0x4000000) # 4000e24 <__stack_size+0x3ff0e24>
 e28:	000000f0 	0x000000f0
 e2c:	000000fc 	0x000000fc
 e30:	00740005 	bstrins.w	$r5,$r0,0x14,0x0
 e34:	fc9f1e3a 	0xfc9f1e3a
 e38:	04000000 	csrrd	$r0,0x0
 e3c:	01000001 	0x01000001
 e40:	00005400 	bitrev.d	$r0,$r0
 e44:	00000000 	0x00000000
 e48:	01000000 	0x01000000
 e4c:	000000f0 	0x000000f0
 e50:	000000f0 	0x000000f0
 e54:	00540001 	0x00540001
	...
 e60:	40000000 	beqz	$r0,0 # e60 <__stack_size-0xf1a0>
 e64:	ac000000 	0xac000000
 e68:	01000000 	0x01000000
 e6c:	00ac5400 	bstrins.d	$r0,$r0,0x2c,0x15
 e70:	00c40000 	bstrpick.d	$r0,$r0,0x4,0x0
 e74:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 e78:	9f5401f3 	0x9f5401f3
	...
 e84:	00010102 	0x00010102
 e88:	00000040 	0x00000040
 e8c:	00000050 	0x00000050
 e90:	9f300002 	0x9f300002
 e94:	00000050 	0x00000050
 e98:	000000c4 	0x000000c4
 e9c:	005f0001 	0x005f0001
	...
 ea8:	00005001 	bitrev.w	$r1,$r0
 eac:	00005000 	bitrev.w	$r0,$r0
 eb0:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff0eb0 <_stack+0xe3ef0eb4>
	...
 ebc:	00340000 	0x00340000
 ec0:	00380000 	0x00380000
 ec4:	00010000 	asrtle.d	$r0,$r0
 ec8:	00000054 	0x00000054
 ecc:	00000000 	0x00000000
 ed0:	10010000 	addu16i.d	$r0,$r0,64(0x40)
 ed4:	10000000 	addu16i.d	$r0,$r0,0
 ed8:	01000000 	0x01000000
 edc:	00005400 	bitrev.d	$r0,$r0
 ee0:	00000000 	0x00000000
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x0000001c
   4:	00000002 	0x00000002
   8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
   c:	00000000 	0x00000000
  10:	1c004e10 	pcaddu12i	$r16,624(0x270)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c005050 	pcaddu12i	$r16,642(0x282)
  34:	00000054 	0x00000054
	...
  40:	0000001c 	0x0000001c
  44:	03340002 	lu52i.d	$r2,$r0,-768(0xd00)
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c0050b0 	pcaddu12i	$r16,645(0x285)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04a80002 	csrrd	$r2,0x2a00
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c005160 	pcaddu12i	$r0,651(0x28b)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06230002 	cacop	0x2,$r0,-1856(0x8c0)
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c005250 	pcaddu12i	$r16,658(0x292)
  94:	000002d8 	0x000002d8
	...
  a0:	0000001c 	0x0000001c
  a4:	0b010002 	0x0b010002
  a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  ac:	00000000 	0x00000000
  b0:	1c005530 	pcaddu12i	$r16,681(0x2a9)
  b4:	00000140 	0x00000140
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
  60:	1c005250 	pcaddu12i	$r16,658(0x292)
  64:	1c005528 	pcaddu12i	$r8,681(0x2a9)
	...
  78:	00000008 	0x00000008
  7c:	00000010 	0x00000010
	...
  88:	00000040 	0x00000040
  8c:	00000040 	0x00000040
  90:	00000048 	0x00000048
  94:	00000050 	0x00000050
	...
  a0:	000000e0 	0x000000e0
  a4:	000000e0 	0x000000e0
  a8:	000000e8 	0x000000e8
  ac:	000000f0 	0x000000f0
	...
  b8:	00000110 	0x00000110
  bc:	00000110 	0x00000110
  c0:	00000118 	0x00000118
  c4:	00000120 	0x00000120
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
  2c:	4e100205 	jirl	$r5,$r16,-126976(0x21000)
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
 1d4:	50020500 	b	67109380(0x4000204) # 40003d8 <__stack_size+0x3ff03d8>
 1d8:	131c0050 	addu16i.d	$r16,$r2,-14592(0xc700)
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
 234:	0050b002 	0x0050b002
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
 2d0:	51600205 	b	-132816896(0x8156000) # f81562d0 <_stack+0xdc0562d4>
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
 38c:	00030001 	0x00030001
 390:	38000200 	ldx.b	$r0,$r16,$r0
 394:	01000000 	0x01000000
 398:	0d0efb01 	0x0d0efb01
 39c:	01010100 	fadd.d	$f0,$f8,$f0
 3a0:	00000001 	0x00000001
 3a4:	01000001 	0x01000001
 3a8:	2e2e2f2e 	0x2e2e2f2e
 3ac:	636e692f 	blt	$r9,$r15,-37272(0x36e68) # ffff7214 <_stack+0xe3ef7218>
 3b0:	6564756c 	bge	$r11,$r12,91252(0x16474) # 16824 <__stack_size+0x6824>
 3b4:	74730000 	xvmin.w	$xr0,$xr0,$xr0
 3b8:	676e6972 	bge	$r11,$r18,-37272(0x36e68) # ffff7220 <_stack+0xe3ef7224>
 3bc:	0000632e 	rdtimel.w	$r14,$r25
 3c0:	6f630000 	bgeu	$r0,$r0,-40192(0x36300) # ffff66c0 <_stack+0xe3ef66c4>
 3c4:	6e6f6d6d 	bgeu	$r11,$r13,-102548(0x26f6c) # fffe7330 <_stack+0xe3ee7334>
 3c8:	0100682e 	0x0100682e
 3cc:	05000000 	0x05000000
 3d0:	02050017 	slti	$r23,$r0,320(0x140)
 3d4:	1c005250 	pcaddu12i	$r16,658(0x292)
 3d8:	05010b03 	0x05010b03
 3dc:	05131305 	0x05131305
 3e0:	0501060b 	0x0501060b
 3e4:	0905810c 	0x0905810c
 3e8:	0d058406 	0x0d058406
 3ec:	0c050106 	0x0c050106
 3f0:	4a0b0549 	bcnez	$fcc2,2493188(0x260b04) # 260ef4 <__stack_size+0x250ef4>
 3f4:	4a860105 	bcnez	$fcc0,1476096(0x168600) # 1689f4 <__stack_size+0x1589f4>
 3f8:	05450c05 	0x05450c05
 3fc:	054e0605 	0x054e0605
 400:	4a130601 	0x4a130601
 404:	03062405 	lu52i.d	$r5,$r0,393(0x189)
 408:	0505f210 	0x0505f210
 40c:	0c051313 	0x0c051313
 410:	0b051106 	0x0b051106
 414:	4a16054b 	bcnez	$fcc2,3020292(0x2e1604) # 2e1a18 <__stack_size+0x2d1a18>
 418:	05490c05 	0x05490c05
 41c:	02004b16 	slti	$r22,$r24,18(0x12)
 420:	05820104 	0x05820104
 424:	05830609 	0x05830609
 428:	0501060d 	0x0501060d
 42c:	0b054919 	0x0b054919
 430:	4e01054a 	jirl	$r10,$r10,-130812(0x20104)
 434:	03062405 	lu52i.d	$r5,$r0,393(0x189)
 438:	053c080f 	0x053c080f
 43c:	05131605 	0x05131605
 440:	0511060b 	0x0511060b
 444:	04020016 	csrrd	$r22,0x80
 448:	054c0601 	0x054c0601
 44c:	0402001a 	csrrd	$r26,0x80
 450:	05110601 	0x05110601
 454:	04020015 	csrrd	$r21,0x80
 458:	10054a01 	addu16i.d	$r1,$r16,338(0x152)
 45c:	01040200 	0x01040200
 460:	0013054a 	maskeqz	$r10,$r10,$r1
 464:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0568 <__stack_size+0x90568>
 468:	02000b05 	slti	$r5,$r24,2(0x2)
 46c:	054a0104 	0x054a0104
 470:	31054e01 	0x31054e01
 474:	820d0306 	0x820d0306
 478:	13130505 	addu16i.d	$r5,$r8,-15167(0xc4c1)
 47c:	01060b05 	0x01060b05
 480:	06090581 	cacop	0x1,$r12,577(0x241)
 484:	06130584 	cacop	0x4,$r12,1217(0x4c1)
 488:	4d0b0501 	jirl	$r1,$r8,68356(0x10b04)
 48c:	4b471105 	bcnez	$fcc0,1525520(0x174710) # 174b9c <__stack_size+0x164b9c>
 490:	84060905 	0x84060905
 494:	0e060b05 	0x0e060b05
 498:	50060505 	b	68421124(0x4140604) # 4140a9c <__stack_size+0x4130a9c>
 49c:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
 4a0:	03063305 	lu52i.d	$r5,$r24,396(0x18c)
 4a4:	0505820e 	0x0505820e
 4a8:	060b0513 	cacop	0x13,$r8,705(0x2c1)
 4ac:	4a150501 	bcnez	$fcc0,398596(0x61504) # 619b0 <__stack_size+0x519b0>
 4b0:	05821205 	0x05821205
 4b4:	05824a21 	0x05824a21
 4b8:	04020015 	csrrd	$r21,0x80
 4bc:	12058201 	addu16i.d	$r1,$r16,-32416(0x8160)
 4c0:	01040200 	0x01040200
 4c4:	002b054a 	syscall	0x54a
 4c8:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a06cc <__stack_size+0x906cc>
 4cc:	02002105 	slti	$r5,$r8,8(0x8)
 4d0:	05820204 	0x05820204
 4d4:	054b0609 	0x054b0609
 4d8:	05010619 	0x05010619
 4dc:	0b054a12 	0x0b054a12
 4e0:	4d190549 	jirl	$r9,$r10,71940(0x11904)
 4e4:	4a4b0105 	bcnez	$fcc0,1460992(0x164b00) # 164fe4 <__stack_size+0x154fe4>
 4e8:	49060505 	bcnez	$fcc0,1377796(0x150604) # 150aec <__stack_size+0x140aec>
 4ec:	0e063305 	0x0e063305
 4f0:	054e2105 	0x054e2105
 4f4:	01058236 	0x01058236
 4f8:	49190583 	bcnez	$fcc4,858372(0xd1904) # d1dfc <__stack_size+0xc1dfc>
 4fc:	054b0105 	0x054b0105
 500:	0b03061f 	0x0b03061f
 504:	13050582 	addu16i.d	$r2,$r12,-16063(0xc141)
 508:	01060c05 	0x01060c05
 50c:	05491f05 	0x05491f05
 510:	09054b0b 	0x09054b0b
 514:	0c054b06 	0x0c054b06
 518:	05820106 	0x05820106
 51c:	154a0609 	lu12i.w	$r9,-372688(0xa5030)
 520:	01060b05 	0x01060b05
 524:	05460c05 	0x05460c05
 528:	0c054a0b 	0x0c054a0b
 52c:	b80b0550 	0xb80b0550
 530:	4a4d0105 	bcnez	$fcc0,1461504(0x164d00) # 165230 <__stack_size+0x155230>
 534:	03062005 	lu52i.d	$r5,$r0,392(0x188)
 538:	0505820c 	0x0505820c
 53c:	060c0513 	cacop	0x13,$r8,769(0x301)
 540:	4a0b0501 	bcnez	$fcc0,396036(0x60b04) # 61044 <__stack_size+0x51044>
 544:	4b060905 	bcnez	$fcc0,1508872(0x170608) # 170b4c <__stack_size+0x160b4c>
 548:	01060c05 	0x01060c05
 54c:	06090582 	cacop	0x2,$r12,577(0x241)
 550:	0b05154a 	0x0b05154a
 554:	0c050106 	0x0c050106
 558:	4a0b0546 	bcnez	$fcc2,1706756(0x1a0b04) # 1a105c <__stack_size+0x19105c>
 55c:	50060505 	b	68421124(0x4140604) # 4140b60 <__stack_size+0x4130b60>
 560:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
 564:	0623054a 	cacop	0xa,$r10,-1855(0x8c1)
 568:	ba00e603 	0xba00e603
 56c:	13160505 	addu16i.d	$r5,$r8,-14975(0xc581)
 570:	01060b05 	0x01060b05
 574:	06090581 	cacop	0x1,$r12,577(0x241)
 578:	060c0584 	cacop	0x4,$r12,769(0x301)
 57c:	4a0f0501 	bcnez	$fcc0,397060(0x60f04) # 61480 <__stack_size+0x51480>
 580:	05490b05 	0x05490b05
 584:	054d0605 	0x054d0605
 588:	05140601 	0x05140601
 58c:	1103062e 	addu16i.d	$r14,$r17,16577(0x40c1)
 590:	1605054a 	lu32i.d	$r10,10282(0x282a)
 594:	0b051313 	0x0b051313
 598:	05810106 	0x05810106
 59c:	05840609 	0x05840609
 5a0:	05010614 	0x05010614
 5a4:	0c054a11 	0x0c054a11
 5a8:	4a0f054a 	bcnez	$fcc2,2756356(0x2a0f04) # 2a14ac <__stack_size+0x2914ac>
 5ac:	05490b05 	0x05490b05
 5b0:	054d0605 	0x054d0605
 5b4:	05140601 	0x05140601
 5b8:	0c03062f 	0x0c03062f
 5bc:	160505ba 	lu32i.d	$r26,10285(0x282d)
 5c0:	08051313 	0x08051313
 5c4:	14050106 	lu12i.w	$r6,10248(0x2808)
 5c8:	01040200 	0x01040200
 5cc:	000f054a 	bytepick.d	$r10,$r10,$r1,0x6
 5d0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a06d4 <__stack_size+0x906d4>
 5d4:	4b060905 	bcnez	$fcc0,1508872(0x170608) # 170bdc <__stack_size+0x160bdc>
 5d8:	01061305 	0x01061305
 5dc:	4b060905 	bcnez	$fcc0,1508872(0x170608) # 170be4 <__stack_size+0x160be4>
 5e0:	01060f05 	0x01060f05
 5e4:	4b060d05 	bcnez	$fcc0,1508876(0x17060c) # 170bf0 <__stack_size+0x160bf0>
 5e8:	01061305 	0x01061305
 5ec:	054a1505 	0x054a1505
 5f0:	054a4a13 	0x054a4a13
 5f4:	4eba490f 	jirl	$r15,$r8,-83384(0x2ba48)
 5f8:	bb060d05 	0xbb060d05
 5fc:	01061805 	0x01061805
 600:	054a1505 	0x054a1505
 604:	13054a10 	addu16i.d	$r16,$r16,-16046(0xc152)
 608:	490f054a 	bcnez	$fcc2,2690820(0x290f04) # 29150c <__stack_size+0x28150c>
 60c:	4a500105 	bcnez	$fcc0,1462272(0x165000) # 16560c <__stack_size+0x15560c>
 610:	03063205 	lu52i.d	$r5,$r16,396(0x18c)
 614:	05058211 	0x05058211
 618:	05131313 	0x05131313
 61c:	0501060b 	0x0501060b
 620:	054b0609 	0x054b0609
 624:	0501060d 	0x0501060d
 628:	0c054a14 	0x0c054a14
 62c:	820d0582 	0x820d0582
 630:	054a1405 	0x054a1405
 634:	09054a0c 	0x09054a0c
 638:	05154a06 	0x05154a06
 63c:	0501060c 	0x0501060c
 640:	0b054a13 	0x0b054a13
 644:	500c0546 	b	85462020(0x5180c04) # 5181248 <__stack_size+0x5171248>
 648:	054b0105 	0x054b0105
 64c:	0545060d 	0x0545060d
 650:	050d0632 	0x050d0632
 654:	2f054f1a 	0x2f054f1a
 658:	87010582 	0x87010582
 65c:	05451405 	0x05451405
 660:	1e054f01 	pcaddu18i	$r1,10872(0x2a78)
 664:	0205bc06 	slti	$r6,$r0,367(0x16f)
 668:	03010513 	lu52i.d	$r19,$r8,65(0x41)
 66c:	05017f9e 	0x05017f9e
 670:	05131605 	0x05131605
 674:	0501060b 	0x0501060b
 678:	05830609 	0x05830609
 67c:	0501060c 	0x0501060c
 680:	0b054a0f 	0x0b054a0f
 684:	01054a49 	fmul.d	$f9,$f18,$f18
 688:	0100de03 	fadd.s	$f3,$f16,$f23
 68c:	01000402 	0x01000402
 690:	00012701 	0x00012701
 694:	32000200 	0x32000200
 698:	01000000 	0x01000000
 69c:	0d0efb01 	0x0d0efb01
 6a0:	01010100 	fadd.d	$f0,$f8,$f0
 6a4:	00000001 	0x00000001
 6a8:	01000001 	0x01000001
 6ac:	692f2e2e 	bltu	$r17,$r14,77612(0x12f2c) # 135d8 <__stack_size+0x35d8>
 6b0:	756c636e 	0x756c636e
 6b4:	00006564 	rdtimeh.w	$r4,$r11
 6b8:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 17420 <__stack_size+0x7420>
 6bc:	0000632e 	rdtimel.w	$r14,$r25
 6c0:	69740000 	bltu	$r0,$r0,95232(0x17400) # 17ac0 <__stack_size+0x7ac0>
 6c4:	682e656d 	bltu	$r11,$r13,11876(0x2e64) # 3528 <__stack_size-0xcad8>
 6c8:	00000100 	0x00000100
 6cc:	00010500 	asrtle.d	$r8,$r1
 6d0:	55300205 	bl	-132829184(0x8153000) # f81536d0 <_stack+0xdc0536d4>
 6d4:	11031c00 	addu16i.d	$r0,$r0,16583(0x40c7)
 6d8:	13050501 	addu16i.d	$r1,$r8,-16063(0xc141)
 6dc:	71030f05 	vssrarn.h.w	$vr5,$vr24,$vr3
 6e0:	14050501 	lu12i.w	$r1,10280(0x2828)
 6e4:	06010513 	cacop	0x13,$r8,65(0x41)
 6e8:	05010b03 	0x05010b03
 6ec:	82750305 	0x82750305
 6f0:	01068906 	fdiv.s	$f6,$f8,$f2
 6f4:	06180105 	cacop	0x5,$r8,1536(0x600)
 6f8:	0505e708 	0x0505e708
 6fc:	054e1313 	0x054e1313
 700:	06130601 	cacop	0x1,$r16,1217(0x4c1)
 704:	130505bd 	addu16i.d	$r29,$r13,-16063(0xc141)
 708:	030f0513 	lu52i.d	$r19,$r8,961(0x3c1)
 70c:	05050161 	0x05050161
 710:	01051314 	fmul.d	$f20,$f24,$f4
 714:	011a0306 	0x011a0306
 718:	66030505 	bge	$r8,$r5,-130300(0x20304) # fffe0a1c <_stack+0xe3ee0a20>
 71c:	06890682 	0x06890682
 720:	16030601 	lu32i.d	$r1,6192(0x1830)
 724:	06150501 	cacop	0x1,$r8,1345(0x541)
 728:	83160501 	0x83160501
 72c:	054b2705 	0x054b2705
 730:	36054916 	0x36054916
 734:	4c2705b9 	jirl	$r25,$r13,9988(0x2704)
 738:	05492805 	0x05492805
 73c:	3605bb27 	0x3605bb27
 740:	bb1205ba 	0xbb1205ba
 744:	01054949 	fmul.d	$f9,$f10,$f18
 748:	0336054f 	lu52i.d	$r15,$r10,-639(0xd81)
 74c:	1205827a 	addu16i.d	$r26,$r19,-32416(0x8160)
 750:	060505ba 	cacop	0x1a,$r13,321(0x141)
 754:	1413134b 	lu12i.w	$r11,39066(0x989a)
 758:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
 75c:	020a0306 	slti	$r6,$r24,640(0x280)
 760:	05050124 	0x05050124
 764:	0f051313 	0x0f051313
 768:	05014e03 	0x05014e03
 76c:	05131405 	0x05131405
 770:	2d030601 	0x2d030601
 774:	03050501 	lu52i.d	$r1,$r8,321(0x141)
 778:	89068253 	0x89068253
 77c:	03060106 	lu52i.d	$r6,$r8,384(0x180)
 780:	05130129 	0x05130129
 784:	05110606 	0x05110606
 788:	06824c01 	0x06824c01
 78c:	05054008 	0x05054008
 790:	0f051313 	0x0f051313
 794:	05014503 	0x05014503
 798:	05131405 	0x05131405
 79c:	36030601 	0x36030601
 7a0:	03050501 	lu52i.d	$r1,$r8,321(0x141)
 7a4:	8906824a 	0x8906824a
 7a8:	03060106 	lu52i.d	$r6,$r8,384(0x180)
 7ac:	05130132 	0x05130132
 7b0:	05110606 	0x05110606
 7b4:	02f24c01 	addi.d	$r1,$r0,-877(0xc93)
 7b8:	0101000c 	fadd.d	$f12,$f0,$f0

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
 12c:	7300746e 	0x7300746e
 130:	70637274 	vabsd.wu	$vr20,$vr19,$vr28
 134:	7a620079 	0x7a620079
 138:	006f7265 	bstrins.w	$r5,$r19,0xf,0x1c
 13c:	69727473 	bltu	$r3,$r19,94836(0x17274) # 173b0 <__stack_size+0x73b0>
 140:	632e676e 	blt	$r27,$r14,-53660(0x32e64) # ffff2fa4 <_stack+0xe3ef2fa8>
 144:	7a697300 	0x7a697300
 148:	00745f65 	bstrins.w	$r5,$r27,0x14,0x17
 14c:	636d656d 	blt	$r11,$r13,-37532(0x36d64) # ffff6eb0 <_stack+0xe3ef6eb4>
 150:	7300706d 	0x7300706d
 154:	636e7274 	blt	$r19,$r20,-37264(0x36e70) # ffff6fc4 <_stack+0xe3ef6fc8>
 158:	73007970 	0x73007970
 15c:	6c6e7274 	bgeu	$r19,$r20,28272(0x6e70) # 6fcc <__stack_size-0x9034>
 160:	73006e65 	0x73006e65
 164:	68637274 	bltu	$r19,$r20,25456(0x6370) # 64d4 <__stack_size-0x9b2c>
 168:	656d0072 	bge	$r3,$r18,93440(0x16d00) # 16e68 <__stack_size+0x6e68>
 16c:	7970636d 	0x7970636d
 170:	72747300 	0x72747300
 174:	006e656c 	bstrins.w	$r12,$r11,0xe,0x19
 178:	6d6d656d 	bgeu	$r11,$r13,93540(0x16d64) # 16edc <__stack_size+0x6edc>
 17c:	0065766f 	bstrins.w	$r15,$r19,0x5,0x1d
 180:	6e727473 	bgeu	$r3,$r19,-101772(0x27274) # fffe73f4 <_stack+0xe3ee73f8>
 184:	00706d63 	bstrins.w	$r3,$r11,0x10,0x1b
 188:	66727473 	bge	$r3,$r19,-101772(0x27274) # fffe73fc <_stack+0xe3ee7400>
 18c:	00646e69 	bstrins.w	$r9,$r19,0x4,0x1b
 190:	736d656d 	vssrarni.wu.d	$vr13,$vr11,0x19
 194:	67007465 	bge	$r3,$r5,-65420(0x30074) # ffff0208 <_stack+0xe3ef020c>
 198:	635f7465 	blt	$r3,$r5,-41100(0x35f74) # ffff610c <_stack+0xe3ef6110>
 19c:	746e756f 	0x746e756f
 1a0:	00796d5f 	bstrins.w	$r31,$r10,0x19,0x1b
 1a4:	7465675f 	xvavg.w	$xr31,$xr26,$xr25
 1a8:	756f635f 	0x756f635f
 1ac:	7400746e 	xvseq.b	$xr14,$xr3,$xr29
 1b0:	73656d69 	vssrani.wu.d	$vr9,$vr11,0x1b
 1b4:	00636570 	bstrins.w	$r16,$r11,0x3,0x19
 1b8:	6f6c635f 	bgeu	$r26,$r31,-37792(0x36c60) # ffff6e18 <_stack+0xe3ef6e1c>
 1bc:	745f6b63 	0x745f6b63
 1c0:	5f767400 	bne	$r0,$r0,-35212(0x37674) # ffff7834 <_stack+0xe3ef7838>
 1c4:	6365736d 	blt	$r27,$r13,-39568(0x36570) # ffff6734 <_stack+0xe3ef6738>
 1c8:	6d697400 	bgeu	$r0,$r0,92532(0x16974) # 16b3c <__stack_size+0x6b3c>
 1cc:	00632e65 	bstrins.w	$r5,$r19,0x3,0xb
 1d0:	5f746567 	bne	$r11,$r7,-35740(0x37464) # ffff7634 <_stack+0xe3ef7638>
 1d4:	67007375 	bge	$r27,$r21,-65424(0x30070) # ffff0244 <_stack+0xe3ef0248>
 1d8:	635f7465 	blt	$r3,$r5,-41100(0x35f74) # ffff614c <_stack+0xe3ef6150>
 1dc:	6b636f6c 	bltu	$r27,$r12,-40084(0x3636c) # ffff6548 <_stack+0xe3ef654c>
 1e0:	5f767400 	bne	$r0,$r0,-35212(0x37674) # ffff7854 <_stack+0xe3ef7858>
 1e4:	63657375 	blt	$r27,$r21,-39568(0x36570) # ffff6754 <_stack+0xe3ef6758>
 1e8:	6f635f00 	bgeu	$r24,$r0,-40100(0x3635c) # ffff6544 <_stack+0xe3ef6548>
 1ec:	6176746e 	blt	$r3,$r14,95860(0x17674) # 17860 <__stack_size+0x7860>
 1f0:	7674006c 	0x7674006c
 1f4:	6365735f 	blt	$r26,$r31,-39568(0x36570) # ffff6764 <_stack+0xe3ef6768>
 1f8:	74656700 	xvavg.w	$xr0,$xr24,$xr25
 1fc:	00736e5f 	bstrins.w	$r31,$r18,0x13,0x1b
 200:	6e5f7674 	bgeu	$r19,$r20,-106636(0x25f74) # fffe6174 <_stack+0xe3ee6178>
 204:	00636573 	bstrins.w	$r19,$r11,0x3,0x19
 208:	636f6c63 	blt	$r3,$r3,-37012(0x36f6c) # ffff7174 <_stack+0xe3ef7178>
 20c:	65675f6b 	bge	$r27,$r11,91996(0x1675c) # 16968 <__stack_size+0x6968>
 210:	6d697474 	bgeu	$r3,$r20,92532(0x16974) # 16b84 <__stack_size+0x6b84>
 214:	Address 0x0000000000000214 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	0x0000000c
   4:	ffffffff 	0xffffffff
   8:	7c010001 	0x7c010001
   c:	00030d01 	0x00030d01
  10:	00000034 	0x00000034
  14:	00000000 	0x00000000
  18:	1c004e10 	pcaddu12i	$r16,624(0x270)
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
  60:	1c005050 	pcaddu12i	$r16,642(0x282)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c005080 	pcaddu12i	$r0,644(0x284)
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
  a8:	1c0050b0 	pcaddu12i	$r16,645(0x285)
  ac:	00000074 	0x00000074
  b0:	50100e44 	b	-116387828(0x910100c) # f91010bc <_stack+0xdd0010c0>
  b4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  b8:	04990398 	csrxchg	$r24,$r28,0x2640
  bc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c204 <__stack_size+0x7c204>
  c0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd904 <_stack+0xe3ccd908>
  c4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  c8:	00000018 	0x00000018
  cc:	00000090 	0x00000090
  d0:	1c005130 	pcaddu12i	$r16,649(0x289)
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
  fc:	1c005160 	pcaddu12i	$r0,651(0x28b)
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
 130:	0000000c 	0x0000000c
 134:	00000120 	0x00000120
 138:	1c005250 	pcaddu12i	$r16,658(0x292)
 13c:	00000034 	0x00000034
 140:	0000000c 	0x0000000c
 144:	00000120 	0x00000120
 148:	1c005290 	pcaddu12i	$r16,660(0x294)
 14c:	00000034 	0x00000034
 150:	0000000c 	0x0000000c
 154:	00000120 	0x00000120
 158:	1c0052d0 	pcaddu12i	$r16,662(0x296)
 15c:	0000001c 	0x0000001c
 160:	0000000c 	0x0000000c
 164:	00000120 	0x00000120
 168:	1c0052f0 	pcaddu12i	$r16,663(0x297)
 16c:	0000002c 	0x0000002c
 170:	00000014 	0x00000014
 174:	00000120 	0x00000120
 178:	1c005320 	pcaddu12i	$r0,665(0x299)
 17c:	0000006c 	0x0000006c
 180:	100e5002 	addu16i.d	$r2,$r0,916(0x394)
 184:	00000e54 	0x00000e54
 188:	0000000c 	0x0000000c
 18c:	00000120 	0x00000120
 190:	1c005390 	pcaddu12i	$r16,668(0x29c)
 194:	0000003c 	0x0000003c
 198:	0000000c 	0x0000000c
 19c:	00000120 	0x00000120
 1a0:	1c0053d0 	pcaddu12i	$r16,670(0x29e)
 1a4:	00000028 	0x00000028
 1a8:	0000000c 	0x0000000c
 1ac:	00000120 	0x00000120
 1b0:	1c005400 	pcaddu12i	$r0,672(0x2a0)
 1b4:	00000020 	0x00000020
 1b8:	0000000c 	0x0000000c
 1bc:	00000120 	0x00000120
 1c0:	1c005420 	pcaddu12i	$r0,673(0x2a1)
 1c4:	00000028 	0x00000028
 1c8:	0000000c 	0x0000000c
 1cc:	00000120 	0x00000120
 1d0:	1c005450 	pcaddu12i	$r16,674(0x2a2)
 1d4:	0000005c 	0x0000005c
 1d8:	00000014 	0x00000014
 1dc:	00000120 	0x00000120
 1e0:	1c0054b0 	pcaddu12i	$r16,677(0x2a5)
 1e4:	00000058 	0x00000058
 1e8:	54100e7c 	bl	-101707764(0x9f0100c) # f9f011f4 <_stack+0xdde011f8>
 1ec:	0000000e 	0x0000000e
 1f0:	0000000c 	0x0000000c
 1f4:	00000120 	0x00000120
 1f8:	1c005510 	pcaddu12i	$r16,680(0x2a8)
 1fc:	00000018 	0x00000018
 200:	0000000c 	0x0000000c
 204:	ffffffff 	0xffffffff
 208:	7c010001 	0x7c010001
 20c:	00030d01 	0x00030d01
 210:	00000018 	0x00000018
 214:	00000200 	0x00000200
 218:	1c005530 	pcaddu12i	$r16,681(0x2a9)
 21c:	0000001c 	0x0000001c
 220:	44100e44 	bnez	$r18,1052684(0x10100c) # 10122c <__stack_size+0xf122c>
 224:	d94c0199 	0xd94c0199
 228:	00000e44 	0x00000e44
 22c:	0000000c 	0x0000000c
 230:	00000200 	0x00000200
 234:	1c005550 	pcaddu12i	$r16,682(0x2aa)
 238:	00000004 	0x00000004
 23c:	0000000c 	0x0000000c
 240:	00000200 	0x00000200
 244:	1c005560 	pcaddu12i	$r0,683(0x2ab)
 248:	00000008 	0x00000008
 24c:	00000018 	0x00000018
 250:	00000200 	0x00000200
 254:	1c005570 	pcaddu12i	$r16,683(0x2ab)
 258:	00000084 	0x00000084
 25c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101268 <__stack_size+0xf1268>
 260:	60020199 	blt	$r12,$r25,512(0x200) # 460 <__stack_size-0xfba0>
 264:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 268:	0000000c 	0x0000000c
 26c:	00000200 	0x00000200
 270:	1c005600 	pcaddu12i	$r0,688(0x2b0)
 274:	00000004 	0x00000004
 278:	00000018 	0x00000018
 27c:	00000200 	0x00000200
 280:	1c005610 	pcaddu12i	$r16,688(0x2b0)
 284:	00000024 	0x00000024
 288:	44100e44 	bnez	$r18,1052684(0x10100c) # 101294 <__stack_size+0xf1294>
 28c:	d9500199 	0xd9500199
 290:	00000e48 	0x00000e48
 294:	00000018 	0x00000018
 298:	00000200 	0x00000200
 29c:	1c005640 	pcaddu12i	$r0,690(0x2b2)
 2a0:	00000030 	0x00000030
 2a4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1012b0 <__stack_size+0xf12b0>
 2a8:	d9500199 	0xd9500199
 2ac:	00000e54 	0x00000e54
