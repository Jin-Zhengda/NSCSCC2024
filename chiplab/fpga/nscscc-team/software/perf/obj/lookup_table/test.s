
obj/lookup_table/main.elf:     file format elf32-loongarch
obj/lookup_table/main.elf


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
1c000050:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c000054:	0299818c 	addi.w	$r12,$r12,1632(0x660)
1c000058:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00005c:	02bea1ad 	addi.w	$r13,$r13,-88(0xfa8)
1c000060:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000064:	029071ce 	addi.w	$r14,$r14,1052(0x41c)
1c000068:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000080 <_start+0x80>
1c00006c:	2880018f 	ld.w	$r15,$r12,0
1c000070:	298001af 	st.w	$r15,$r13,0
1c000074:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000078:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00007c:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c00006c <_start+0x6c>
1c000080:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000084:	028ff18c 	addi.w	$r12,$r12,1020(0x3fc)
1c000088:	1c00104d 	pcaddu12i	$r13,130(0x82)
1c00008c:	02adc1ad 	addi.w	$r13,$r13,-1168(0xb70)
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
1c00038c:	54591400 	bl	22804(0x5914) # 1c005ca0 <shell17>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <fill_8>:
fill_8():
1c0003a0:	001500cd 	move	$r13,$r6
1c0003a4:	58001085 	beq	$r4,$r5,16(0x10) # 1c0003b4 <fill_8+0x14>
1c0003a8:	001110a6 	sub.w	$r6,$r5,$r4
1c0003ac:	001501a5 	move	$r5,$r13
1c0003b0:	50604000 	b	24640(0x6040) # 1c0063f0 <memset>
1c0003b4:	4c000020 	jirl	$r0,$r1,0
1c0003b8:	03400000 	andi	$r0,$r0,0x0
1c0003bc:	03400000 	andi	$r0,$r0,0x0

1c0003c0 <fill_16>:
fill_16():
1c0003c0:	58017085 	beq	$r4,$r5,368(0x170) # 1c000530 <fill_16+0x170>
1c0003c4:	02bff8ae 	addi.w	$r14,$r5,-2(0xffe)
1c0003c8:	14ffffed 	lu12i.w	$r13,524287(0x7ffff)
1c0003cc:	001111c7 	sub.w	$r7,$r14,$r4
1c0003d0:	03bfe1a8 	ori	$r8,$r13,0xff8
1c0003d4:	004484ea 	srli.w	$r10,$r7,0x1
1c0003d8:	0044848c 	srli.w	$r12,$r4,0x1
1c0003dc:	0014a14b 	and	$r11,$r10,$r8
1c0003e0:	03400589 	andi	$r9,$r12,0x1
1c0003e4:	5800f560 	beq	$r11,$r0,244(0xf4) # 1c0004d8 <fill_16+0x118>
1c0003e8:	00150091 	move	$r17,$r4
1c0003ec:	58000d20 	beq	$r9,$r0,12(0xc) # 1c0003f8 <fill_16+0x38>
1c0003f0:	02800891 	addi.w	$r17,$r4,2(0x2)
1c0003f4:	29400086 	st.h	$r6,$r4,0
1c0003f8:	02800410 	addi.w	$r16,$r0,1(0x1)
1c0003fc:	00112613 	sub.w	$r19,$r16,$r9
1c000400:	00102a6c 	add.w	$r12,$r19,$r10
1c000404:	0044858e 	srli.w	$r14,$r12,0x1
1c000408:	004089cd 	slli.w	$r13,$r14,0x2
1c00040c:	02bff1a7 	addi.w	$r7,$r13,-4(0xffc)
1c000410:	0040852f 	slli.w	$r15,$r9,0x1
1c000414:	004488e9 	srli.w	$r9,$r7,0x2
1c000418:	0280052a 	addi.w	$r10,$r9,1(0x1)
1c00041c:	0040c0d2 	slli.w	$r18,$r6,0x10
1c000420:	00103c84 	add.w	$r4,$r4,$r15
1c000424:	03401d4b 	andi	$r11,$r10,0x7
1c000428:	001548d4 	or	$r20,$r6,$r18
1c00042c:	001011a8 	add.w	$r8,$r13,$r4
1c000430:	58006d60 	beq	$r11,$r0,108(0x6c) # 1c00049c <fill_16+0xdc>
1c000434:	58005d70 	beq	$r11,$r16,92(0x5c) # 1c000490 <fill_16+0xd0>
1c000438:	02800810 	addi.w	$r16,$r0,2(0x2)
1c00043c:	58004d70 	beq	$r11,$r16,76(0x4c) # 1c000488 <fill_16+0xc8>
1c000440:	02800c0f 	addi.w	$r15,$r0,3(0x3)
1c000444:	58003d6f 	beq	$r11,$r15,60(0x3c) # 1c000480 <fill_16+0xc0>
1c000448:	02801012 	addi.w	$r18,$r0,4(0x4)
1c00044c:	58002d72 	beq	$r11,$r18,44(0x2c) # 1c000478 <fill_16+0xb8>
1c000450:	02801413 	addi.w	$r19,$r0,5(0x5)
1c000454:	58001d73 	beq	$r11,$r19,28(0x1c) # 1c000470 <fill_16+0xb0>
1c000458:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c00045c:	58000d6e 	beq	$r11,$r14,12(0xc) # 1c000468 <fill_16+0xa8>
1c000460:	29800094 	st.w	$r20,$r4,0
1c000464:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000468:	29800094 	st.w	$r20,$r4,0
1c00046c:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000470:	29800094 	st.w	$r20,$r4,0
1c000474:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000478:	29800094 	st.w	$r20,$r4,0
1c00047c:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000480:	29800094 	st.w	$r20,$r4,0
1c000484:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000488:	29800094 	st.w	$r20,$r4,0
1c00048c:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000490:	29800094 	st.w	$r20,$r4,0
1c000494:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000498:	58002c88 	beq	$r4,$r8,44(0x2c) # 1c0004c4 <fill_16+0x104>
1c00049c:	29800094 	st.w	$r20,$r4,0
1c0004a0:	29801094 	st.w	$r20,$r4,4(0x4)
1c0004a4:	29802094 	st.w	$r20,$r4,8(0x8)
1c0004a8:	29803094 	st.w	$r20,$r4,12(0xc)
1c0004ac:	29804094 	st.w	$r20,$r4,16(0x10)
1c0004b0:	29805094 	st.w	$r20,$r4,20(0x14)
1c0004b4:	29806094 	st.w	$r20,$r4,24(0x18)
1c0004b8:	29807094 	st.w	$r20,$r4,28(0x1c)
1c0004bc:	02808084 	addi.w	$r4,$r4,32(0x20)
1c0004c0:	5fffdc88 	bne	$r4,$r8,-36(0x3ffdc) # 1c00049c <fill_16+0xdc>
1c0004c4:	02bff814 	addi.w	$r20,$r0,-2(0xffe)
1c0004c8:	0014d18d 	and	$r13,$r12,$r20
1c0004cc:	004085a7 	slli.w	$r7,$r13,0x1
1c0004d0:	00101e24 	add.w	$r4,$r17,$r7
1c0004d4:	58005d8d 	beq	$r12,$r13,92(0x5c) # 1c000530 <fill_16+0x170>
1c0004d8:	29400086 	st.h	$r6,$r4,0
1c0004dc:	02800891 	addi.w	$r17,$r4,2(0x2)
1c0004e0:	580050b1 	beq	$r5,$r17,80(0x50) # 1c000530 <fill_16+0x170>
1c0004e4:	29400886 	st.h	$r6,$r4,2(0x2)
1c0004e8:	0280108c 	addi.w	$r12,$r4,4(0x4)
1c0004ec:	580044ac 	beq	$r5,$r12,68(0x44) # 1c000530 <fill_16+0x170>
1c0004f0:	29401086 	st.h	$r6,$r4,4(0x4)
1c0004f4:	02801888 	addi.w	$r8,$r4,6(0x6)
1c0004f8:	580038a8 	beq	$r5,$r8,56(0x38) # 1c000530 <fill_16+0x170>
1c0004fc:	29401886 	st.h	$r6,$r4,6(0x6)
1c000500:	02802089 	addi.w	$r9,$r4,8(0x8)
1c000504:	58002ca9 	beq	$r5,$r9,44(0x2c) # 1c000530 <fill_16+0x170>
1c000508:	29402086 	st.h	$r6,$r4,8(0x8)
1c00050c:	0280288a 	addi.w	$r10,$r4,10(0xa)
1c000510:	580020aa 	beq	$r5,$r10,32(0x20) # 1c000530 <fill_16+0x170>
1c000514:	29402886 	st.h	$r6,$r4,10(0xa)
1c000518:	0280308b 	addi.w	$r11,$r4,12(0xc)
1c00051c:	580014ab 	beq	$r5,$r11,20(0x14) # 1c000530 <fill_16+0x170>
1c000520:	29403086 	st.h	$r6,$r4,12(0xc)
1c000524:	02803890 	addi.w	$r16,$r4,14(0xe)
1c000528:	580008b0 	beq	$r5,$r16,8(0x8) # 1c000530 <fill_16+0x170>
1c00052c:	29403886 	st.h	$r6,$r4,14(0xe)
1c000530:	4c000020 	jirl	$r0,$r1,0
1c000534:	03400000 	andi	$r0,$r0,0x0
1c000538:	03400000 	andi	$r0,$r0,0x0
1c00053c:	03400000 	andi	$r0,$r0,0x0

1c000540 <fill_random_8>:
fill_random_8():
1c000540:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000544:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000548:	02bc318c 	addi.w	$r12,$r12,-244(0xf0c)
1c00054c:	29802077 	st.w	$r23,$r3,8(0x8)
1c000550:	00150097 	move	$r23,$r4
1c000554:	28800184 	ld.w	$r4,$r12,0
1c000558:	29801078 	st.w	$r24,$r3,4(0x4)
1c00055c:	001500b8 	move	$r24,$r5
1c000560:	0281ec84 	addi.w	$r4,$r4,123(0x7b)
1c000564:	29803061 	st.w	$r1,$r3,12(0xc)
1c000568:	54613800 	bl	24888(0x6138) # 1c0066a0 <srand>
1c00056c:	5800d6f8 	beq	$r23,$r24,212(0xd4) # 1c000640 <fill_random_8+0x100>
1c000570:	00115f01 	sub.w	$r1,$r24,$r23
1c000574:	03401c25 	andi	$r5,$r1,0x7
1c000578:	580080a0 	beq	$r5,$r0,128(0x80) # 1c0005f8 <fill_random_8+0xb8>
1c00057c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c000580:	580068ad 	beq	$r5,$r13,104(0x68) # 1c0005e8 <fill_random_8+0xa8>
1c000584:	02800806 	addi.w	$r6,$r0,2(0x2)
1c000588:	580054a6 	beq	$r5,$r6,84(0x54) # 1c0005dc <fill_random_8+0x9c>
1c00058c:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c000590:	580040a7 	beq	$r5,$r7,64(0x40) # 1c0005d0 <fill_random_8+0x90>
1c000594:	02801008 	addi.w	$r8,$r0,4(0x4)
1c000598:	58002ca8 	beq	$r5,$r8,44(0x2c) # 1c0005c4 <fill_random_8+0x84>
1c00059c:	02801409 	addi.w	$r9,$r0,5(0x5)
1c0005a0:	580018a9 	beq	$r5,$r9,24(0x18) # 1c0005b8 <fill_random_8+0x78>
1c0005a4:	0280180a 	addi.w	$r10,$r0,6(0x6)
1c0005a8:	5c00acaa 	bne	$r5,$r10,172(0xac) # 1c000654 <fill_random_8+0x114>
1c0005ac:	5460b400 	bl	24756(0x60b4) # 1c006660 <rand>
1c0005b0:	290002e4 	st.b	$r4,$r23,0
1c0005b4:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c0005b8:	5460a800 	bl	24744(0x60a8) # 1c006660 <rand>
1c0005bc:	290002e4 	st.b	$r4,$r23,0
1c0005c0:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c0005c4:	54609c00 	bl	24732(0x609c) # 1c006660 <rand>
1c0005c8:	290002e4 	st.b	$r4,$r23,0
1c0005cc:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c0005d0:	54609000 	bl	24720(0x6090) # 1c006660 <rand>
1c0005d4:	290002e4 	st.b	$r4,$r23,0
1c0005d8:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c0005dc:	54608400 	bl	24708(0x6084) # 1c006660 <rand>
1c0005e0:	290002e4 	st.b	$r4,$r23,0
1c0005e4:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c0005e8:	54607800 	bl	24696(0x6078) # 1c006660 <rand>
1c0005ec:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c0005f0:	293ffee4 	st.b	$r4,$r23,-1(0xfff)
1c0005f4:	58004f17 	beq	$r24,$r23,76(0x4c) # 1c000640 <fill_random_8+0x100>
1c0005f8:	028022f7 	addi.w	$r23,$r23,8(0x8)
1c0005fc:	54606400 	bl	24676(0x6064) # 1c006660 <rand>
1c000600:	293fe2e4 	st.b	$r4,$r23,-8(0xff8)
1c000604:	54605c00 	bl	24668(0x605c) # 1c006660 <rand>
1c000608:	293fe6e4 	st.b	$r4,$r23,-7(0xff9)
1c00060c:	54605400 	bl	24660(0x6054) # 1c006660 <rand>
1c000610:	293feae4 	st.b	$r4,$r23,-6(0xffa)
1c000614:	54604c00 	bl	24652(0x604c) # 1c006660 <rand>
1c000618:	293feee4 	st.b	$r4,$r23,-5(0xffb)
1c00061c:	54604400 	bl	24644(0x6044) # 1c006660 <rand>
1c000620:	293ff2e4 	st.b	$r4,$r23,-4(0xffc)
1c000624:	54603c00 	bl	24636(0x603c) # 1c006660 <rand>
1c000628:	293ff6e4 	st.b	$r4,$r23,-3(0xffd)
1c00062c:	54603400 	bl	24628(0x6034) # 1c006660 <rand>
1c000630:	293ffae4 	st.b	$r4,$r23,-2(0xffe)
1c000634:	54602c00 	bl	24620(0x602c) # 1c006660 <rand>
1c000638:	293ffee4 	st.b	$r4,$r23,-1(0xfff)
1c00063c:	5fffbf17 	bne	$r24,$r23,-68(0x3ffbc) # 1c0005f8 <fill_random_8+0xb8>
1c000640:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000644:	28802077 	ld.w	$r23,$r3,8(0x8)
1c000648:	28801078 	ld.w	$r24,$r3,4(0x4)
1c00064c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000650:	4c000020 	jirl	$r0,$r1,0
1c000654:	54600c00 	bl	24588(0x600c) # 1c006660 <rand>
1c000658:	290002e4 	st.b	$r4,$r23,0
1c00065c:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c000660:	53ff4fff 	b	-180(0xfffff4c) # 1c0005ac <fill_random_8+0x6c>
1c000664:	03400000 	andi	$r0,$r0,0x0
1c000668:	03400000 	andi	$r0,$r0,0x0
1c00066c:	03400000 	andi	$r0,$r0,0x0

1c000670 <fill_random_16>:
fill_random_16():
1c000670:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c000674:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000678:	02b7718c 	addi.w	$r12,$r12,-548(0xddc)
1c00067c:	29806077 	st.w	$r23,$r3,24(0x18)
1c000680:	00150097 	move	$r23,$r4
1c000684:	28800184 	ld.w	$r4,$r12,0
1c000688:	29805078 	st.w	$r24,$r3,20(0x14)
1c00068c:	001500b8 	move	$r24,$r5
1c000690:	0281ec84 	addi.w	$r4,$r4,123(0x7b)
1c000694:	29807061 	st.w	$r1,$r3,28(0x1c)
1c000698:	29804079 	st.w	$r25,$r3,16(0x10)
1c00069c:	54600400 	bl	24580(0x6004) # 1c0066a0 <srand>
1c0006a0:	580212f8 	beq	$r23,$r24,528(0x210) # 1c0008b0 <fill_random_16+0x240>
1c0006a4:	02bffb01 	addi.w	$r1,$r24,-2(0xffe)
1c0006a8:	00115c25 	sub.w	$r5,$r1,$r23
1c0006ac:	004484a6 	srli.w	$r6,$r5,0x1
1c0006b0:	028004c7 	addi.w	$r7,$r6,1(0x1)
1c0006b4:	004084e8 	slli.w	$r8,$r7,0x1
1c0006b8:	02bff90d 	addi.w	$r13,$r8,-2(0xffe)
1c0006bc:	004485a9 	srli.w	$r9,$r13,0x1
1c0006c0:	0280052a 	addi.w	$r10,$r9,1(0x1)
1c0006c4:	03401d4b 	andi	$r11,$r10,0x7
1c0006c8:	028fa019 	addi.w	$r25,$r0,1000(0x3e8)
1c0006cc:	001022f8 	add.w	$r24,$r23,$r8
1c0006d0:	5800f960 	beq	$r11,$r0,248(0xf8) # 1c0007c8 <fill_random_16+0x158>
1c0006d4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0006d8:	5800cd6e 	beq	$r11,$r14,204(0xcc) # 1c0007a4 <fill_random_16+0x134>
1c0006dc:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c0006e0:	5800a56f 	beq	$r11,$r15,164(0xa4) # 1c000784 <fill_random_16+0x114>
1c0006e4:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c0006e8:	58007d70 	beq	$r11,$r16,124(0x7c) # 1c000764 <fill_random_16+0xf4>
1c0006ec:	02801011 	addi.w	$r17,$r0,4(0x4)
1c0006f0:	58005571 	beq	$r11,$r17,84(0x54) # 1c000744 <fill_random_16+0xd4>
1c0006f4:	02801412 	addi.w	$r18,$r0,5(0x5)
1c0006f8:	58002d72 	beq	$r11,$r18,44(0x2c) # 1c000724 <fill_random_16+0xb4>
1c0006fc:	02801813 	addi.w	$r19,$r0,6(0x6)
1c000700:	5c01c973 	bne	$r11,$r19,456(0x1c8) # 1c0008c8 <fill_random_16+0x258>
1c000704:	545f5c00 	bl	24412(0x5f5c) # 1c006660 <rand>
1c000708:	29403864 	st.h	$r4,$r3,14(0xe)
1c00070c:	2a403864 	ld.hu	$r4,$r3,14(0xe)
1c000710:	02800af7 	addi.w	$r23,$r23,2(0x2)
1c000714:	0021e485 	mod.wu	$r5,$r4,$r25
1c000718:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c000720 <fill_random_16+0xb0>
1c00071c:	002a0007 	break	0x7
1c000720:	297ffae5 	st.h	$r5,$r23,-2(0xffe)
1c000724:	545f3c00 	bl	24380(0x5f3c) # 1c006660 <rand>
1c000728:	29403864 	st.h	$r4,$r3,14(0xe)
1c00072c:	2a403866 	ld.hu	$r6,$r3,14(0xe)
1c000730:	02800af7 	addi.w	$r23,$r23,2(0x2)
1c000734:	0021e4c7 	mod.wu	$r7,$r6,$r25
1c000738:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c000740 <fill_random_16+0xd0>
1c00073c:	002a0007 	break	0x7
1c000740:	297ffae7 	st.h	$r7,$r23,-2(0xffe)
1c000744:	545f1c00 	bl	24348(0x5f1c) # 1c006660 <rand>
1c000748:	29403864 	st.h	$r4,$r3,14(0xe)
1c00074c:	2a403868 	ld.hu	$r8,$r3,14(0xe)
1c000750:	02800af7 	addi.w	$r23,$r23,2(0x2)
1c000754:	0021e50d 	mod.wu	$r13,$r8,$r25
1c000758:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c000760 <fill_random_16+0xf0>
1c00075c:	002a0007 	break	0x7
1c000760:	297ffaed 	st.h	$r13,$r23,-2(0xffe)
1c000764:	545efc00 	bl	24316(0x5efc) # 1c006660 <rand>
1c000768:	29403864 	st.h	$r4,$r3,14(0xe)
1c00076c:	2a403869 	ld.hu	$r9,$r3,14(0xe)
1c000770:	02800af7 	addi.w	$r23,$r23,2(0x2)
1c000774:	0021e52a 	mod.wu	$r10,$r9,$r25
1c000778:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c000780 <fill_random_16+0x110>
1c00077c:	002a0007 	break	0x7
1c000780:	297ffaea 	st.h	$r10,$r23,-2(0xffe)
1c000784:	545edc00 	bl	24284(0x5edc) # 1c006660 <rand>
1c000788:	29403864 	st.h	$r4,$r3,14(0xe)
1c00078c:	2a40386b 	ld.hu	$r11,$r3,14(0xe)
1c000790:	02800af7 	addi.w	$r23,$r23,2(0x2)
1c000794:	0021e56e 	mod.wu	$r14,$r11,$r25
1c000798:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c0007a0 <fill_random_16+0x130>
1c00079c:	002a0007 	break	0x7
1c0007a0:	297ffaee 	st.h	$r14,$r23,-2(0xffe)
1c0007a4:	545ebc00 	bl	24252(0x5ebc) # 1c006660 <rand>
1c0007a8:	29403864 	st.h	$r4,$r3,14(0xe)
1c0007ac:	2a403861 	ld.hu	$r1,$r3,14(0xe)
1c0007b0:	02800af7 	addi.w	$r23,$r23,2(0x2)
1c0007b4:	0021e42f 	mod.wu	$r15,$r1,$r25
1c0007b8:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c0007c0 <fill_random_16+0x150>
1c0007bc:	002a0007 	break	0x7
1c0007c0:	297ffaef 	st.h	$r15,$r23,-2(0xffe)
1c0007c4:	5800eef8 	beq	$r23,$r24,236(0xec) # 1c0008b0 <fill_random_16+0x240>
1c0007c8:	545e9800 	bl	24216(0x5e98) # 1c006660 <rand>
1c0007cc:	29403864 	st.h	$r4,$r3,14(0xe)
1c0007d0:	2a403870 	ld.hu	$r16,$r3,14(0xe)
1c0007d4:	028042f7 	addi.w	$r23,$r23,16(0x10)
1c0007d8:	0021e611 	mod.wu	$r17,$r16,$r25
1c0007dc:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c0007e4 <fill_random_16+0x174>
1c0007e0:	002a0007 	break	0x7
1c0007e4:	297fc2f1 	st.h	$r17,$r23,-16(0xff0)
1c0007e8:	545e7800 	bl	24184(0x5e78) # 1c006660 <rand>
1c0007ec:	29403864 	st.h	$r4,$r3,14(0xe)
1c0007f0:	2a403872 	ld.hu	$r18,$r3,14(0xe)
1c0007f4:	0021e653 	mod.wu	$r19,$r18,$r25
1c0007f8:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c000800 <fill_random_16+0x190>
1c0007fc:	002a0007 	break	0x7
1c000800:	297fcaf3 	st.h	$r19,$r23,-14(0xff2)
1c000804:	545e5c00 	bl	24156(0x5e5c) # 1c006660 <rand>
1c000808:	29403864 	st.h	$r4,$r3,14(0xe)
1c00080c:	2a403874 	ld.hu	$r20,$r3,14(0xe)
1c000810:	0021e68c 	mod.wu	$r12,$r20,$r25
1c000814:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c00081c <fill_random_16+0x1ac>
1c000818:	002a0007 	break	0x7
1c00081c:	297fd2ec 	st.h	$r12,$r23,-12(0xff4)
1c000820:	545e4000 	bl	24128(0x5e40) # 1c006660 <rand>
1c000824:	29403864 	st.h	$r4,$r3,14(0xe)
1c000828:	2a403864 	ld.hu	$r4,$r3,14(0xe)
1c00082c:	0021e485 	mod.wu	$r5,$r4,$r25
1c000830:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c000838 <fill_random_16+0x1c8>
1c000834:	002a0007 	break	0x7
1c000838:	297fdae5 	st.h	$r5,$r23,-10(0xff6)
1c00083c:	545e2400 	bl	24100(0x5e24) # 1c006660 <rand>
1c000840:	29403864 	st.h	$r4,$r3,14(0xe)
1c000844:	2a403866 	ld.hu	$r6,$r3,14(0xe)
1c000848:	0021e4c7 	mod.wu	$r7,$r6,$r25
1c00084c:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c000854 <fill_random_16+0x1e4>
1c000850:	002a0007 	break	0x7
1c000854:	297fe2e7 	st.h	$r7,$r23,-8(0xff8)
1c000858:	545e0800 	bl	24072(0x5e08) # 1c006660 <rand>
1c00085c:	29403864 	st.h	$r4,$r3,14(0xe)
1c000860:	2a403868 	ld.hu	$r8,$r3,14(0xe)
1c000864:	0021e50d 	mod.wu	$r13,$r8,$r25
1c000868:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c000870 <fill_random_16+0x200>
1c00086c:	002a0007 	break	0x7
1c000870:	297feaed 	st.h	$r13,$r23,-6(0xffa)
1c000874:	545dec00 	bl	24044(0x5dec) # 1c006660 <rand>
1c000878:	29403864 	st.h	$r4,$r3,14(0xe)
1c00087c:	2a403869 	ld.hu	$r9,$r3,14(0xe)
1c000880:	0021e52a 	mod.wu	$r10,$r9,$r25
1c000884:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c00088c <fill_random_16+0x21c>
1c000888:	002a0007 	break	0x7
1c00088c:	297ff2ea 	st.h	$r10,$r23,-4(0xffc)
1c000890:	545dd000 	bl	24016(0x5dd0) # 1c006660 <rand>
1c000894:	29403864 	st.h	$r4,$r3,14(0xe)
1c000898:	2a403861 	ld.hu	$r1,$r3,14(0xe)
1c00089c:	0021e42f 	mod.wu	$r15,$r1,$r25
1c0008a0:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c0008a8 <fill_random_16+0x238>
1c0008a4:	002a0007 	break	0x7
1c0008a8:	297ffaef 	st.h	$r15,$r23,-2(0xffe)
1c0008ac:	5fff1ef8 	bne	$r23,$r24,-228(0x3ff1c) # 1c0007c8 <fill_random_16+0x158>
1c0008b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0008b4:	28806077 	ld.w	$r23,$r3,24(0x18)
1c0008b8:	28805078 	ld.w	$r24,$r3,20(0x14)
1c0008bc:	28804079 	ld.w	$r25,$r3,16(0x10)
1c0008c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0008c4:	4c000020 	jirl	$r0,$r1,0
1c0008c8:	545d9800 	bl	23960(0x5d98) # 1c006660 <rand>
1c0008cc:	29403864 	st.h	$r4,$r3,14(0xe)
1c0008d0:	2a403874 	ld.hu	$r20,$r3,14(0xe)
1c0008d4:	02800af7 	addi.w	$r23,$r23,2(0x2)
1c0008d8:	0021e68c 	mod.wu	$r12,$r20,$r25
1c0008dc:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c0008e4 <fill_random_16+0x274>
1c0008e0:	002a0007 	break	0x7
1c0008e4:	297ffaec 	st.h	$r12,$r23,-2(0xffe)
1c0008e8:	53fe1fff 	b	-484(0xffffe1c) # 1c000704 <fill_random_16+0x94>
1c0008ec:	03400000 	andi	$r0,$r0,0x0

1c0008f0 <max>:
max():
1c0008f0:	64000885 	bge	$r4,$r5,8(0x8) # 1c0008f8 <max+0x8>
1c0008f4:	001500a4 	move	$r4,$r5
1c0008f8:	4c000020 	jirl	$r0,$r1,0
1c0008fc:	03400000 	andi	$r0,$r0,0x0

1c000900 <test_lut1_u8>:
test_lut1_u8():
1c000900:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c000904:	2980a077 	st.w	$r23,$r3,40(0x28)
1c000908:	29809078 	st.w	$r24,$r3,36(0x24)
1c00090c:	29808079 	st.w	$r25,$r3,32(0x20)
1c000910:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c000914:	2980607b 	st.w	$r27,$r3,24(0x18)
1c000918:	2980507c 	st.w	$r28,$r3,20(0x14)
1c00091c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c000920:	00150099 	move	$r25,$r4
1c000924:	001500ba 	move	$r26,$r5
1c000928:	001500db 	move	$r27,$r6
1c00092c:	001500f7 	move	$r23,$r7
1c000930:	00150118 	move	$r24,$r8
1c000934:	545cbc00 	bl	23740(0x5cbc) # 1c0065f0 <get_clock>
1c000938:	1c001010 	pcaddu12i	$r16,128(0x80)
1c00093c:	02ac7210 	addi.w	$r16,$r16,-1252(0xb1c)
1c000940:	2880020c 	ld.w	$r12,$r16,0
1c000944:	1c00101c 	pcaddu12i	$r28,128(0x80)
1c000948:	28acb39c 	ld.w	$r28,$r28,-1236(0xb2c)
1c00094c:	29800384 	st.w	$r4,$r28,0
1c000950:	6403180c 	bge	$r0,$r12,792(0x318) # 1c000c68 <test_lut1_u8+0x368>
1c000954:	0015000f 	move	$r15,$r0
1c000958:	00106771 	add.w	$r17,$r27,$r25
1c00095c:	64032c1b 	bge	$r0,$r27,812(0x32c) # 1c000c88 <test_lut1_u8+0x388>
1c000960:	0011662e 	sub.w	$r14,$r17,$r25
1c000964:	03401dc1 	andi	$r1,$r14,0x7
1c000968:	0015032c 	move	$r12,$r25
1c00096c:	0015034d 	move	$r13,$r26
1c000970:	5800e020 	beq	$r1,$r0,224(0xe0) # 1c000a50 <test_lut1_u8+0x150>
1c000974:	02800412 	addi.w	$r18,$r0,1(0x1)
1c000978:	5800bc32 	beq	$r1,$r18,188(0xbc) # 1c000a34 <test_lut1_u8+0x134>
1c00097c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c000980:	58009c25 	beq	$r1,$r5,156(0x9c) # 1c000a1c <test_lut1_u8+0x11c>
1c000984:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c000988:	58007c26 	beq	$r1,$r6,124(0x7c) # 1c000a04 <test_lut1_u8+0x104>
1c00098c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c000990:	58005c27 	beq	$r1,$r7,92(0x5c) # 1c0009ec <test_lut1_u8+0xec>
1c000994:	02801408 	addi.w	$r8,$r0,5(0x5)
1c000998:	58003c28 	beq	$r1,$r8,60(0x3c) # 1c0009d4 <test_lut1_u8+0xd4>
1c00099c:	02801809 	addi.w	$r9,$r0,6(0x6)
1c0009a0:	58001c29 	beq	$r1,$r9,28(0x1c) # 1c0009bc <test_lut1_u8+0xbc>
1c0009a4:	2a00032a 	ld.bu	$r10,$r25,0
1c0009a8:	0280072c 	addi.w	$r12,$r25,1(0x1)
1c0009ac:	0280074d 	addi.w	$r13,$r26,1(0x1)
1c0009b0:	00102aeb 	add.w	$r11,$r23,$r10
1c0009b4:	2a000173 	ld.bu	$r19,$r11,0
1c0009b8:	29000353 	st.b	$r19,$r26,0
1c0009bc:	2a000194 	ld.bu	$r20,$r12,0
1c0009c0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0009c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0009c8:	001052e4 	add.w	$r4,$r23,$r20
1c0009cc:	2a00008e 	ld.bu	$r14,$r4,0
1c0009d0:	293ffdae 	st.b	$r14,$r13,-1(0xfff)
1c0009d4:	2a000181 	ld.bu	$r1,$r12,0
1c0009d8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0009dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0009e0:	001006f2 	add.w	$r18,$r23,$r1
1c0009e4:	2a000245 	ld.bu	$r5,$r18,0
1c0009e8:	293ffda5 	st.b	$r5,$r13,-1(0xfff)
1c0009ec:	2a000186 	ld.bu	$r6,$r12,0
1c0009f0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0009f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0009f8:	00101ae7 	add.w	$r7,$r23,$r6
1c0009fc:	2a0000e8 	ld.bu	$r8,$r7,0
1c000a00:	293ffda8 	st.b	$r8,$r13,-1(0xfff)
1c000a04:	2a000189 	ld.bu	$r9,$r12,0
1c000a08:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000a0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a10:	001026ea 	add.w	$r10,$r23,$r9
1c000a14:	2a00014b 	ld.bu	$r11,$r10,0
1c000a18:	293ffdab 	st.b	$r11,$r13,-1(0xfff)
1c000a1c:	2a000193 	ld.bu	$r19,$r12,0
1c000a20:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000a24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a28:	00104ef4 	add.w	$r20,$r23,$r19
1c000a2c:	2a000284 	ld.bu	$r4,$r20,0
1c000a30:	293ffda4 	st.b	$r4,$r13,-1(0xfff)
1c000a34:	2a00018e 	ld.bu	$r14,$r12,0
1c000a38:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000a3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a40:	00103ae1 	add.w	$r1,$r23,$r14
1c000a44:	2a000032 	ld.bu	$r18,$r1,0
1c000a48:	293ffdb2 	st.b	$r18,$r13,-1(0xfff)
1c000a4c:	5800922c 	beq	$r17,$r12,144(0x90) # 1c000adc <test_lut1_u8+0x1dc>
1c000a50:	2a000185 	ld.bu	$r5,$r12,0
1c000a54:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c000a58:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c000a5c:	001016e6 	add.w	$r6,$r23,$r5
1c000a60:	2a0000c7 	ld.bu	$r7,$r6,0
1c000a64:	293fe1a7 	st.b	$r7,$r13,-8(0xff8)
1c000a68:	2a3fe588 	ld.bu	$r8,$r12,-7(0xff9)
1c000a6c:	001022e9 	add.w	$r9,$r23,$r8
1c000a70:	2a00012a 	ld.bu	$r10,$r9,0
1c000a74:	293fe5aa 	st.b	$r10,$r13,-7(0xff9)
1c000a78:	2a3fe98b 	ld.bu	$r11,$r12,-6(0xffa)
1c000a7c:	00102ef3 	add.w	$r19,$r23,$r11
1c000a80:	2a000274 	ld.bu	$r20,$r19,0
1c000a84:	293fe9b4 	st.b	$r20,$r13,-6(0xffa)
1c000a88:	2a3fed84 	ld.bu	$r4,$r12,-5(0xffb)
1c000a8c:	001012ee 	add.w	$r14,$r23,$r4
1c000a90:	2a0001c1 	ld.bu	$r1,$r14,0
1c000a94:	293feda1 	st.b	$r1,$r13,-5(0xffb)
1c000a98:	2a3ff192 	ld.bu	$r18,$r12,-4(0xffc)
1c000a9c:	00104ae5 	add.w	$r5,$r23,$r18
1c000aa0:	2a0000a6 	ld.bu	$r6,$r5,0
1c000aa4:	293ff1a6 	st.b	$r6,$r13,-4(0xffc)
1c000aa8:	2a3ff587 	ld.bu	$r7,$r12,-3(0xffd)
1c000aac:	00101ee8 	add.w	$r8,$r23,$r7
1c000ab0:	2a000109 	ld.bu	$r9,$r8,0
1c000ab4:	293ff5a9 	st.b	$r9,$r13,-3(0xffd)
1c000ab8:	2a3ff98a 	ld.bu	$r10,$r12,-2(0xffe)
1c000abc:	00102aeb 	add.w	$r11,$r23,$r10
1c000ac0:	2a000173 	ld.bu	$r19,$r11,0
1c000ac4:	293ff9b3 	st.b	$r19,$r13,-2(0xffe)
1c000ac8:	2a3ffd94 	ld.bu	$r20,$r12,-1(0xfff)
1c000acc:	001052e4 	add.w	$r4,$r23,$r20
1c000ad0:	2a00008e 	ld.bu	$r14,$r4,0
1c000ad4:	293ffdae 	st.b	$r14,$r13,-1(0xfff)
1c000ad8:	5fff7a2c 	bne	$r17,$r12,-136(0x3ff78) # 1c000a50 <test_lut1_u8+0x150>
1c000adc:	2880020c 	ld.w	$r12,$r16,0
1c000ae0:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c000ae4:	63fe7dec 	blt	$r15,$r12,-388(0x3fe7c) # 1c000960 <test_lut1_u8+0x60>
1c000ae8:	545b0800 	bl	23304(0x5b08) # 1c0065f0 <get_clock>
1c000aec:	1c001017 	pcaddu12i	$r23,128(0x80)
1c000af0:	28a602f7 	ld.w	$r23,$r23,-1664(0x980)
1c000af4:	00150092 	move	$r18,$r4
1c000af8:	298002e4 	st.w	$r4,$r23,0
1c000afc:	1c001010 	pcaddu12i	$r16,128(0x80)
1c000b00:	02a55210 	addi.w	$r16,$r16,-1708(0x954)
1c000b04:	28800207 	ld.w	$r7,$r16,0
1c000b08:	2a00034d 	ld.bu	$r13,$r26,0
1c000b0c:	29803067 	st.w	$r7,$r3,12(0xc)
1c000b10:	2a003071 	ld.bu	$r17,$r3,12(0xc)
1c000b14:	5c0191b1 	bne	$r13,$r17,400(0x190) # 1c000ca4 <test_lut1_u8+0x3a4>
1c000b18:	02800754 	addi.w	$r20,$r26,1(0x1)
1c000b1c:	00106f59 	add.w	$r25,$r26,$r27
1c000b20:	00115321 	sub.w	$r1,$r25,$r20
1c000b24:	03401c25 	andi	$r5,$r1,0x7
1c000b28:	580088a0 	beq	$r5,$r0,136(0x88) # 1c000bb0 <test_lut1_u8+0x2b0>
1c000b2c:	02800b54 	addi.w	$r20,$r26,2(0x2)
1c000b30:	2a3ffe86 	ld.bu	$r6,$r20,-1(0xfff)
1c000b34:	5c00c4cd 	bne	$r6,$r13,196(0xc4) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000b38:	02800406 	addi.w	$r6,$r0,1(0x1)
1c000b3c:	580074a6 	beq	$r5,$r6,116(0x74) # 1c000bb0 <test_lut1_u8+0x2b0>
1c000b40:	02800808 	addi.w	$r8,$r0,2(0x2)
1c000b44:	580060a8 	beq	$r5,$r8,96(0x60) # 1c000ba4 <test_lut1_u8+0x2a4>
1c000b48:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c000b4c:	58004ca9 	beq	$r5,$r9,76(0x4c) # 1c000b98 <test_lut1_u8+0x298>
1c000b50:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c000b54:	580038aa 	beq	$r5,$r10,56(0x38) # 1c000b8c <test_lut1_u8+0x28c>
1c000b58:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c000b5c:	580024ab 	beq	$r5,$r11,36(0x24) # 1c000b80 <test_lut1_u8+0x280>
1c000b60:	02801813 	addi.w	$r19,$r0,6(0x6)
1c000b64:	580010b3 	beq	$r5,$r19,16(0x10) # 1c000b74 <test_lut1_u8+0x274>
1c000b68:	2a000b46 	ld.bu	$r6,$r26,2(0x2)
1c000b6c:	02800f54 	addi.w	$r20,$r26,3(0x3)
1c000b70:	5c0088cd 	bne	$r6,$r13,136(0x88) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000b74:	2a000286 	ld.bu	$r6,$r20,0
1c000b78:	02800694 	addi.w	$r20,$r20,1(0x1)
1c000b7c:	5c007ccd 	bne	$r6,$r13,124(0x7c) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000b80:	2a000286 	ld.bu	$r6,$r20,0
1c000b84:	02800694 	addi.w	$r20,$r20,1(0x1)
1c000b88:	5c0070cd 	bne	$r6,$r13,112(0x70) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000b8c:	2a000286 	ld.bu	$r6,$r20,0
1c000b90:	02800694 	addi.w	$r20,$r20,1(0x1)
1c000b94:	5c0064cd 	bne	$r6,$r13,100(0x64) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000b98:	2a000286 	ld.bu	$r6,$r20,0
1c000b9c:	02800694 	addi.w	$r20,$r20,1(0x1)
1c000ba0:	5c0058cd 	bne	$r6,$r13,88(0x58) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000ba4:	02800694 	addi.w	$r20,$r20,1(0x1)
1c000ba8:	2a3ffe86 	ld.bu	$r6,$r20,-1(0xfff)
1c000bac:	5c004ccd 	bne	$r6,$r13,76(0x4c) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000bb0:	5800d334 	beq	$r25,$r20,208(0xd0) # 1c000c80 <test_lut1_u8+0x380>
1c000bb4:	2a000286 	ld.bu	$r6,$r20,0
1c000bb8:	5c0040cd 	bne	$r6,$r13,64(0x40) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000bbc:	2a000686 	ld.bu	$r6,$r20,1(0x1)
1c000bc0:	5c0038cd 	bne	$r6,$r13,56(0x38) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000bc4:	2a000a86 	ld.bu	$r6,$r20,2(0x2)
1c000bc8:	5c0030cd 	bne	$r6,$r13,48(0x30) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000bcc:	2a000e86 	ld.bu	$r6,$r20,3(0x3)
1c000bd0:	5c0028cd 	bne	$r6,$r13,40(0x28) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000bd4:	2a001286 	ld.bu	$r6,$r20,4(0x4)
1c000bd8:	5c0020cd 	bne	$r6,$r13,32(0x20) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000bdc:	2a001686 	ld.bu	$r6,$r20,5(0x5)
1c000be0:	5c0018cd 	bne	$r6,$r13,24(0x18) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000be4:	02802294 	addi.w	$r20,$r20,8(0x8)
1c000be8:	2a3ffa86 	ld.bu	$r6,$r20,-2(0xffe)
1c000bec:	5c000ccd 	bne	$r6,$r13,12(0xc) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000bf0:	2a3ffe86 	ld.bu	$r6,$r20,-1(0xfff)
1c000bf4:	5bffbccd 	beq	$r6,$r13,-68(0x3ffbc) # 1c000bb0 <test_lut1_u8+0x2b0>
1c000bf8:	00150305 	move	$r5,$r24
1c000bfc:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000c00:	02901084 	addi.w	$r4,$r4,1028(0x404)
1c000c04:	5451fc00 	bl	20988(0x51fc) # 1c005e00 <printf>
1c000c08:	288002f2 	ld.w	$r18,$r23,0
1c000c0c:	02800419 	addi.w	$r25,$r0,1(0x1)
1c000c10:	2880039a 	ld.w	$r26,$r28,0
1c000c14:	14001e9c 	lu12i.w	$r28,244(0xf4)
1c000c18:	00150366 	move	$r6,$r27
1c000c1c:	00150305 	move	$r5,$r24
1c000c20:	00116a5b 	sub.w	$r27,$r18,$r26
1c000c24:	03890398 	ori	$r24,$r28,0x240
1c000c28:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000c2c:	02900084 	addi.w	$r4,$r4,1024(0x400)
1c000c30:	00216367 	div.wu	$r7,$r27,$r24
1c000c34:	5c000b00 	bne	$r24,$r0,8(0x8) # 1c000c3c <test_lut1_u8+0x33c>
1c000c38:	002a0007 	break	0x7
1c000c3c:	5451c400 	bl	20932(0x51c4) # 1c005e00 <printf>
1c000c40:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c000c44:	00150324 	move	$r4,$r25
1c000c48:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c000c4c:	28809078 	ld.w	$r24,$r3,36(0x24)
1c000c50:	28808079 	ld.w	$r25,$r3,32(0x20)
1c000c54:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c000c58:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c000c5c:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c000c60:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c000c64:	4c000020 	jirl	$r0,$r1,0
1c000c68:	54598800 	bl	22920(0x5988) # 1c0065f0 <get_clock>
1c000c6c:	1c001017 	pcaddu12i	$r23,128(0x80)
1c000c70:	28a002f7 	ld.w	$r23,$r23,-2048(0x800)
1c000c74:	298002e4 	st.w	$r4,$r23,0
1c000c78:	00150092 	move	$r18,$r4
1c000c7c:	63fe801b 	blt	$r0,$r27,-384(0x3fe80) # 1c000afc <test_lut1_u8+0x1fc>
1c000c80:	00150019 	move	$r25,$r0
1c000c84:	53ff8fff 	b	-116(0xfffff8c) # 1c000c10 <test_lut1_u8+0x310>
1c000c88:	54596800 	bl	22888(0x5968) # 1c0065f0 <get_clock>
1c000c8c:	00150092 	move	$r18,$r4
1c000c90:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000c94:	289f7084 	ld.w	$r4,$r4,2012(0x7dc)
1c000c98:	00150019 	move	$r25,$r0
1c000c9c:	29800092 	st.w	$r18,$r4,0
1c000ca0:	53ff73ff 	b	-144(0xfffff70) # 1c000c10 <test_lut1_u8+0x310>
1c000ca4:	001501a6 	move	$r6,$r13
1c000ca8:	53ff53ff 	b	-176(0xfffff50) # 1c000bf8 <test_lut1_u8+0x2f8>
1c000cac:	03400000 	andi	$r0,$r0,0x0

1c000cb0 <test_lut1_8>:
test_lut1_8():
1c000cb0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c000cb4:	2980a077 	st.w	$r23,$r3,40(0x28)
1c000cb8:	29809078 	st.w	$r24,$r3,36(0x24)
1c000cbc:	29808079 	st.w	$r25,$r3,32(0x20)
1c000cc0:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c000cc4:	2980607b 	st.w	$r27,$r3,24(0x18)
1c000cc8:	2980507c 	st.w	$r28,$r3,20(0x14)
1c000ccc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c000cd0:	00150099 	move	$r25,$r4
1c000cd4:	001500ba 	move	$r26,$r5
1c000cd8:	001500db 	move	$r27,$r6
1c000cdc:	001500f7 	move	$r23,$r7
1c000ce0:	00150118 	move	$r24,$r8
1c000ce4:	54590c00 	bl	22796(0x590c) # 1c0065f0 <get_clock>
1c000ce8:	1c000ff0 	pcaddu12i	$r16,127(0x7f)
1c000cec:	029db210 	addi.w	$r16,$r16,1900(0x76c)
1c000cf0:	2880020c 	ld.w	$r12,$r16,0
1c000cf4:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c000cf8:	289df39c 	ld.w	$r28,$r28,1916(0x77c)
1c000cfc:	29800384 	st.w	$r4,$r28,0
1c000d00:	6403180c 	bge	$r0,$r12,792(0x318) # 1c001018 <test_lut1_8+0x368>
1c000d04:	0015000f 	move	$r15,$r0
1c000d08:	00106771 	add.w	$r17,$r27,$r25
1c000d0c:	64032c1b 	bge	$r0,$r27,812(0x32c) # 1c001038 <test_lut1_8+0x388>
1c000d10:	0011662e 	sub.w	$r14,$r17,$r25
1c000d14:	03401dc1 	andi	$r1,$r14,0x7
1c000d18:	0015032c 	move	$r12,$r25
1c000d1c:	0015034d 	move	$r13,$r26
1c000d20:	5800e020 	beq	$r1,$r0,224(0xe0) # 1c000e00 <test_lut1_8+0x150>
1c000d24:	02800412 	addi.w	$r18,$r0,1(0x1)
1c000d28:	5800bc32 	beq	$r1,$r18,188(0xbc) # 1c000de4 <test_lut1_8+0x134>
1c000d2c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c000d30:	58009c25 	beq	$r1,$r5,156(0x9c) # 1c000dcc <test_lut1_8+0x11c>
1c000d34:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c000d38:	58007c26 	beq	$r1,$r6,124(0x7c) # 1c000db4 <test_lut1_8+0x104>
1c000d3c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c000d40:	58005c27 	beq	$r1,$r7,92(0x5c) # 1c000d9c <test_lut1_8+0xec>
1c000d44:	02801408 	addi.w	$r8,$r0,5(0x5)
1c000d48:	58003c28 	beq	$r1,$r8,60(0x3c) # 1c000d84 <test_lut1_8+0xd4>
1c000d4c:	02801809 	addi.w	$r9,$r0,6(0x6)
1c000d50:	58001c29 	beq	$r1,$r9,28(0x1c) # 1c000d6c <test_lut1_8+0xbc>
1c000d54:	2800032a 	ld.b	$r10,$r25,0
1c000d58:	0280072c 	addi.w	$r12,$r25,1(0x1)
1c000d5c:	0280074d 	addi.w	$r13,$r26,1(0x1)
1c000d60:	00102aeb 	add.w	$r11,$r23,$r10
1c000d64:	28000173 	ld.b	$r19,$r11,0
1c000d68:	29000353 	st.b	$r19,$r26,0
1c000d6c:	28000194 	ld.b	$r20,$r12,0
1c000d70:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000d74:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000d78:	001052e4 	add.w	$r4,$r23,$r20
1c000d7c:	2800008e 	ld.b	$r14,$r4,0
1c000d80:	293ffdae 	st.b	$r14,$r13,-1(0xfff)
1c000d84:	28000181 	ld.b	$r1,$r12,0
1c000d88:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000d8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000d90:	001006f2 	add.w	$r18,$r23,$r1
1c000d94:	28000245 	ld.b	$r5,$r18,0
1c000d98:	293ffda5 	st.b	$r5,$r13,-1(0xfff)
1c000d9c:	28000186 	ld.b	$r6,$r12,0
1c000da0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000da4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000da8:	00101ae7 	add.w	$r7,$r23,$r6
1c000dac:	280000e8 	ld.b	$r8,$r7,0
1c000db0:	293ffda8 	st.b	$r8,$r13,-1(0xfff)
1c000db4:	28000189 	ld.b	$r9,$r12,0
1c000db8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000dbc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000dc0:	001026ea 	add.w	$r10,$r23,$r9
1c000dc4:	2800014b 	ld.b	$r11,$r10,0
1c000dc8:	293ffdab 	st.b	$r11,$r13,-1(0xfff)
1c000dcc:	28000193 	ld.b	$r19,$r12,0
1c000dd0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000dd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000dd8:	00104ef4 	add.w	$r20,$r23,$r19
1c000ddc:	28000284 	ld.b	$r4,$r20,0
1c000de0:	293ffda4 	st.b	$r4,$r13,-1(0xfff)
1c000de4:	2800018e 	ld.b	$r14,$r12,0
1c000de8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000dec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000df0:	00103ae1 	add.w	$r1,$r23,$r14
1c000df4:	28000032 	ld.b	$r18,$r1,0
1c000df8:	293ffdb2 	st.b	$r18,$r13,-1(0xfff)
1c000dfc:	5800922c 	beq	$r17,$r12,144(0x90) # 1c000e8c <test_lut1_8+0x1dc>
1c000e00:	28000185 	ld.b	$r5,$r12,0
1c000e04:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c000e08:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c000e0c:	001016e6 	add.w	$r6,$r23,$r5
1c000e10:	280000c7 	ld.b	$r7,$r6,0
1c000e14:	293fe1a7 	st.b	$r7,$r13,-8(0xff8)
1c000e18:	283fe588 	ld.b	$r8,$r12,-7(0xff9)
1c000e1c:	001022e9 	add.w	$r9,$r23,$r8
1c000e20:	2800012a 	ld.b	$r10,$r9,0
1c000e24:	293fe5aa 	st.b	$r10,$r13,-7(0xff9)
1c000e28:	283fe98b 	ld.b	$r11,$r12,-6(0xffa)
1c000e2c:	00102ef3 	add.w	$r19,$r23,$r11
1c000e30:	28000274 	ld.b	$r20,$r19,0
1c000e34:	293fe9b4 	st.b	$r20,$r13,-6(0xffa)
1c000e38:	283fed84 	ld.b	$r4,$r12,-5(0xffb)
1c000e3c:	001012ee 	add.w	$r14,$r23,$r4
1c000e40:	280001c1 	ld.b	$r1,$r14,0
1c000e44:	293feda1 	st.b	$r1,$r13,-5(0xffb)
1c000e48:	283ff192 	ld.b	$r18,$r12,-4(0xffc)
1c000e4c:	00104ae5 	add.w	$r5,$r23,$r18
1c000e50:	280000a6 	ld.b	$r6,$r5,0
1c000e54:	293ff1a6 	st.b	$r6,$r13,-4(0xffc)
1c000e58:	283ff587 	ld.b	$r7,$r12,-3(0xffd)
1c000e5c:	00101ee8 	add.w	$r8,$r23,$r7
1c000e60:	28000109 	ld.b	$r9,$r8,0
1c000e64:	293ff5a9 	st.b	$r9,$r13,-3(0xffd)
1c000e68:	283ff98a 	ld.b	$r10,$r12,-2(0xffe)
1c000e6c:	00102aeb 	add.w	$r11,$r23,$r10
1c000e70:	28000173 	ld.b	$r19,$r11,0
1c000e74:	293ff9b3 	st.b	$r19,$r13,-2(0xffe)
1c000e78:	283ffd94 	ld.b	$r20,$r12,-1(0xfff)
1c000e7c:	001052e4 	add.w	$r4,$r23,$r20
1c000e80:	2800008e 	ld.b	$r14,$r4,0
1c000e84:	293ffdae 	st.b	$r14,$r13,-1(0xfff)
1c000e88:	5fff7a2c 	bne	$r17,$r12,-136(0x3ff78) # 1c000e00 <test_lut1_8+0x150>
1c000e8c:	2880020c 	ld.w	$r12,$r16,0
1c000e90:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c000e94:	63fe7dec 	blt	$r15,$r12,-388(0x3fe7c) # 1c000d10 <test_lut1_8+0x60>
1c000e98:	54575800 	bl	22360(0x5758) # 1c0065f0 <get_clock>
1c000e9c:	1c000ff7 	pcaddu12i	$r23,127(0x7f)
1c000ea0:	289742f7 	ld.w	$r23,$r23,1488(0x5d0)
1c000ea4:	00150092 	move	$r18,$r4
1c000ea8:	298002e4 	st.w	$r4,$r23,0
1c000eac:	1c000ff0 	pcaddu12i	$r16,127(0x7f)
1c000eb0:	02969210 	addi.w	$r16,$r16,1444(0x5a4)
1c000eb4:	28800207 	ld.w	$r7,$r16,0
1c000eb8:	2800034d 	ld.b	$r13,$r26,0
1c000ebc:	29803067 	st.w	$r7,$r3,12(0xc)
1c000ec0:	28003071 	ld.b	$r17,$r3,12(0xc)
1c000ec4:	5c0191b1 	bne	$r13,$r17,400(0x190) # 1c001054 <test_lut1_8+0x3a4>
1c000ec8:	02800754 	addi.w	$r20,$r26,1(0x1)
1c000ecc:	00106f59 	add.w	$r25,$r26,$r27
1c000ed0:	00115321 	sub.w	$r1,$r25,$r20
1c000ed4:	03401c25 	andi	$r5,$r1,0x7
1c000ed8:	580088a0 	beq	$r5,$r0,136(0x88) # 1c000f60 <test_lut1_8+0x2b0>
1c000edc:	02800b54 	addi.w	$r20,$r26,2(0x2)
1c000ee0:	283ffe86 	ld.b	$r6,$r20,-1(0xfff)
1c000ee4:	5c00c4cd 	bne	$r6,$r13,196(0xc4) # 1c000fa8 <test_lut1_8+0x2f8>
1c000ee8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c000eec:	580074a6 	beq	$r5,$r6,116(0x74) # 1c000f60 <test_lut1_8+0x2b0>
1c000ef0:	02800808 	addi.w	$r8,$r0,2(0x2)
1c000ef4:	580060a8 	beq	$r5,$r8,96(0x60) # 1c000f54 <test_lut1_8+0x2a4>
1c000ef8:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c000efc:	58004ca9 	beq	$r5,$r9,76(0x4c) # 1c000f48 <test_lut1_8+0x298>
1c000f00:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c000f04:	580038aa 	beq	$r5,$r10,56(0x38) # 1c000f3c <test_lut1_8+0x28c>
1c000f08:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c000f0c:	580024ab 	beq	$r5,$r11,36(0x24) # 1c000f30 <test_lut1_8+0x280>
1c000f10:	02801813 	addi.w	$r19,$r0,6(0x6)
1c000f14:	580010b3 	beq	$r5,$r19,16(0x10) # 1c000f24 <test_lut1_8+0x274>
1c000f18:	28000b46 	ld.b	$r6,$r26,2(0x2)
1c000f1c:	02800f54 	addi.w	$r20,$r26,3(0x3)
1c000f20:	5c0088cd 	bne	$r6,$r13,136(0x88) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f24:	28000286 	ld.b	$r6,$r20,0
1c000f28:	02800694 	addi.w	$r20,$r20,1(0x1)
1c000f2c:	5c007ccd 	bne	$r6,$r13,124(0x7c) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f30:	28000286 	ld.b	$r6,$r20,0
1c000f34:	02800694 	addi.w	$r20,$r20,1(0x1)
1c000f38:	5c0070cd 	bne	$r6,$r13,112(0x70) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f3c:	28000286 	ld.b	$r6,$r20,0
1c000f40:	02800694 	addi.w	$r20,$r20,1(0x1)
1c000f44:	5c0064cd 	bne	$r6,$r13,100(0x64) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f48:	28000286 	ld.b	$r6,$r20,0
1c000f4c:	02800694 	addi.w	$r20,$r20,1(0x1)
1c000f50:	5c0058cd 	bne	$r6,$r13,88(0x58) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f54:	02800694 	addi.w	$r20,$r20,1(0x1)
1c000f58:	283ffe86 	ld.b	$r6,$r20,-1(0xfff)
1c000f5c:	5c004ccd 	bne	$r6,$r13,76(0x4c) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f60:	5800d334 	beq	$r25,$r20,208(0xd0) # 1c001030 <test_lut1_8+0x380>
1c000f64:	28000286 	ld.b	$r6,$r20,0
1c000f68:	5c0040cd 	bne	$r6,$r13,64(0x40) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f6c:	28000686 	ld.b	$r6,$r20,1(0x1)
1c000f70:	5c0038cd 	bne	$r6,$r13,56(0x38) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f74:	28000a86 	ld.b	$r6,$r20,2(0x2)
1c000f78:	5c0030cd 	bne	$r6,$r13,48(0x30) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f7c:	28000e86 	ld.b	$r6,$r20,3(0x3)
1c000f80:	5c0028cd 	bne	$r6,$r13,40(0x28) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f84:	28001286 	ld.b	$r6,$r20,4(0x4)
1c000f88:	5c0020cd 	bne	$r6,$r13,32(0x20) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f8c:	28001686 	ld.b	$r6,$r20,5(0x5)
1c000f90:	5c0018cd 	bne	$r6,$r13,24(0x18) # 1c000fa8 <test_lut1_8+0x2f8>
1c000f94:	02802294 	addi.w	$r20,$r20,8(0x8)
1c000f98:	283ffa86 	ld.b	$r6,$r20,-2(0xffe)
1c000f9c:	5c000ccd 	bne	$r6,$r13,12(0xc) # 1c000fa8 <test_lut1_8+0x2f8>
1c000fa0:	283ffe86 	ld.b	$r6,$r20,-1(0xfff)
1c000fa4:	5bffbccd 	beq	$r6,$r13,-68(0x3ffbc) # 1c000f60 <test_lut1_8+0x2b0>
1c000fa8:	00150305 	move	$r5,$r24
1c000fac:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000fb0:	02815084 	addi.w	$r4,$r4,84(0x54)
1c000fb4:	544e4c00 	bl	20044(0x4e4c) # 1c005e00 <printf>
1c000fb8:	288002f2 	ld.w	$r18,$r23,0
1c000fbc:	02800419 	addi.w	$r25,$r0,1(0x1)
1c000fc0:	2880039a 	ld.w	$r26,$r28,0
1c000fc4:	14001e9c 	lu12i.w	$r28,244(0xf4)
1c000fc8:	00150366 	move	$r6,$r27
1c000fcc:	00150305 	move	$r5,$r24
1c000fd0:	00116a5b 	sub.w	$r27,$r18,$r26
1c000fd4:	03890398 	ori	$r24,$r28,0x240
1c000fd8:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000fdc:	02814084 	addi.w	$r4,$r4,80(0x50)
1c000fe0:	00216367 	div.wu	$r7,$r27,$r24
1c000fe4:	5c000b00 	bne	$r24,$r0,8(0x8) # 1c000fec <test_lut1_8+0x33c>
1c000fe8:	002a0007 	break	0x7
1c000fec:	544e1400 	bl	19988(0x4e14) # 1c005e00 <printf>
1c000ff0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c000ff4:	00150324 	move	$r4,$r25
1c000ff8:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c000ffc:	28809078 	ld.w	$r24,$r3,36(0x24)
1c001000:	28808079 	ld.w	$r25,$r3,32(0x20)
1c001004:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c001008:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c00100c:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c001010:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001014:	4c000020 	jirl	$r0,$r1,0
1c001018:	5455d800 	bl	21976(0x55d8) # 1c0065f0 <get_clock>
1c00101c:	1c000ff7 	pcaddu12i	$r23,127(0x7f)
1c001020:	289142f7 	ld.w	$r23,$r23,1104(0x450)
1c001024:	298002e4 	st.w	$r4,$r23,0
1c001028:	00150092 	move	$r18,$r4
1c00102c:	63fe801b 	blt	$r0,$r27,-384(0x3fe80) # 1c000eac <test_lut1_8+0x1fc>
1c001030:	00150019 	move	$r25,$r0
1c001034:	53ff8fff 	b	-116(0xfffff8c) # 1c000fc0 <test_lut1_8+0x310>
1c001038:	5455b800 	bl	21944(0x55b8) # 1c0065f0 <get_clock>
1c00103c:	00150092 	move	$r18,$r4
1c001040:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001044:	2890b084 	ld.w	$r4,$r4,1068(0x42c)
1c001048:	00150019 	move	$r25,$r0
1c00104c:	29800092 	st.w	$r18,$r4,0
1c001050:	53ff73ff 	b	-144(0xfffff70) # 1c000fc0 <test_lut1_8+0x310>
1c001054:	001501a6 	move	$r6,$r13
1c001058:	53ff53ff 	b	-176(0xfffff50) # 1c000fa8 <test_lut1_8+0x2f8>
1c00105c:	03400000 	andi	$r0,$r0,0x0

1c001060 <test_lut1_u16>:
test_lut1_u16():
1c001060:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001064:	2980a077 	st.w	$r23,$r3,40(0x28)
1c001068:	29809078 	st.w	$r24,$r3,36(0x24)
1c00106c:	29808079 	st.w	$r25,$r3,32(0x20)
1c001070:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c001074:	2980607b 	st.w	$r27,$r3,24(0x18)
1c001078:	2980507c 	st.w	$r28,$r3,20(0x14)
1c00107c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001080:	0015009a 	move	$r26,$r4
1c001084:	001500bb 	move	$r27,$r5
1c001088:	001500d7 	move	$r23,$r6
1c00108c:	001500f9 	move	$r25,$r7
1c001090:	00150118 	move	$r24,$r8
1c001094:	54555c00 	bl	21852(0x555c) # 1c0065f0 <get_clock>
1c001098:	1c000fec 	pcaddu12i	$r12,127(0x7f)
1c00109c:	028ef18c 	addi.w	$r12,$r12,956(0x3bc)
1c0010a0:	28800190 	ld.w	$r16,$r12,0
1c0010a4:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c0010a8:	288f339c 	ld.w	$r28,$r28,972(0x3cc)
1c0010ac:	29800384 	st.w	$r4,$r28,0
1c0010b0:	64036810 	bge	$r0,$r16,872(0x368) # 1c001418 <test_lut1_u16+0x3b8>
1c0010b4:	64038417 	bge	$r0,$r23,900(0x384) # 1c001438 <test_lut1_u16+0x3d8>
1c0010b8:	004086ef 	slli.w	$r15,$r23,0x1
1c0010bc:	00150011 	move	$r17,$r0
1c0010c0:	00103f4f 	add.w	$r15,$r26,$r15
1c0010c4:	001169ee 	sub.w	$r14,$r15,$r26
1c0010c8:	02bff9c1 	addi.w	$r1,$r14,-2(0xffe)
1c0010cc:	00448425 	srli.w	$r5,$r1,0x1
1c0010d0:	028004a6 	addi.w	$r6,$r5,1(0x1)
1c0010d4:	03401cc7 	andi	$r7,$r6,0x7
1c0010d8:	0015036d 	move	$r13,$r27
1c0010dc:	0015034c 	move	$r12,$r26
1c0010e0:	5800fce0 	beq	$r7,$r0,252(0xfc) # 1c0011dc <test_lut1_u16+0x17c>
1c0010e4:	02800412 	addi.w	$r18,$r0,1(0x1)
1c0010e8:	5800d4f2 	beq	$r7,$r18,212(0xd4) # 1c0011bc <test_lut1_u16+0x15c>
1c0010ec:	02800808 	addi.w	$r8,$r0,2(0x2)
1c0010f0:	5800b0e8 	beq	$r7,$r8,176(0xb0) # 1c0011a0 <test_lut1_u16+0x140>
1c0010f4:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c0010f8:	58008ce9 	beq	$r7,$r9,140(0x8c) # 1c001184 <test_lut1_u16+0x124>
1c0010fc:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c001100:	580068ea 	beq	$r7,$r10,104(0x68) # 1c001168 <test_lut1_u16+0x108>
1c001104:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c001108:	580044eb 	beq	$r7,$r11,68(0x44) # 1c00114c <test_lut1_u16+0xec>
1c00110c:	02801813 	addi.w	$r19,$r0,6(0x6)
1c001110:	580020f3 	beq	$r7,$r19,32(0x20) # 1c001130 <test_lut1_u16+0xd0>
1c001114:	2a400354 	ld.hu	$r20,$r26,0
1c001118:	02800b4c 	addi.w	$r12,$r26,2(0x2)
1c00111c:	02800b6d 	addi.w	$r13,$r27,2(0x2)
1c001120:	00408684 	slli.w	$r4,$r20,0x1
1c001124:	0010132e 	add.w	$r14,$r25,$r4
1c001128:	2a4001c1 	ld.hu	$r1,$r14,0
1c00112c:	29400361 	st.h	$r1,$r27,0
1c001130:	2a400185 	ld.hu	$r5,$r12,0
1c001134:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001138:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00113c:	004084a6 	slli.w	$r6,$r5,0x1
1c001140:	00101b27 	add.w	$r7,$r25,$r6
1c001144:	2a4000f2 	ld.hu	$r18,$r7,0
1c001148:	297ff9b2 	st.h	$r18,$r13,-2(0xffe)
1c00114c:	2a400188 	ld.hu	$r8,$r12,0
1c001150:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001154:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001158:	00408509 	slli.w	$r9,$r8,0x1
1c00115c:	0010272a 	add.w	$r10,$r25,$r9
1c001160:	2a40014b 	ld.hu	$r11,$r10,0
1c001164:	297ff9ab 	st.h	$r11,$r13,-2(0xffe)
1c001168:	2a400193 	ld.hu	$r19,$r12,0
1c00116c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001170:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001174:	00408674 	slli.w	$r20,$r19,0x1
1c001178:	00105324 	add.w	$r4,$r25,$r20
1c00117c:	2a40008e 	ld.hu	$r14,$r4,0
1c001180:	297ff9ae 	st.h	$r14,$r13,-2(0xffe)
1c001184:	2a400181 	ld.hu	$r1,$r12,0
1c001188:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c00118c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001190:	00408425 	slli.w	$r5,$r1,0x1
1c001194:	00101726 	add.w	$r6,$r25,$r5
1c001198:	2a4000c7 	ld.hu	$r7,$r6,0
1c00119c:	297ff9a7 	st.h	$r7,$r13,-2(0xffe)
1c0011a0:	2a400192 	ld.hu	$r18,$r12,0
1c0011a4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0011a8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0011ac:	00408648 	slli.w	$r8,$r18,0x1
1c0011b0:	00102329 	add.w	$r9,$r25,$r8
1c0011b4:	2a40012a 	ld.hu	$r10,$r9,0
1c0011b8:	297ff9aa 	st.h	$r10,$r13,-2(0xffe)
1c0011bc:	2a40018b 	ld.hu	$r11,$r12,0
1c0011c0:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0011c4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0011c8:	00408573 	slli.w	$r19,$r11,0x1
1c0011cc:	00104f34 	add.w	$r20,$r25,$r19
1c0011d0:	2a400284 	ld.hu	$r4,$r20,0
1c0011d4:	297ff9a4 	st.h	$r4,$r13,-2(0xffe)
1c0011d8:	5800b1ec 	beq	$r15,$r12,176(0xb0) # 1c001288 <test_lut1_u16+0x228>
1c0011dc:	2a400188 	ld.hu	$r8,$r12,0
1c0011e0:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c0011e4:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c0011e8:	0040850e 	slli.w	$r14,$r8,0x1
1c0011ec:	00103b21 	add.w	$r1,$r25,$r14
1c0011f0:	2a400025 	ld.hu	$r5,$r1,0
1c0011f4:	297fc1a5 	st.h	$r5,$r13,-16(0xff0)
1c0011f8:	2a7fc986 	ld.hu	$r6,$r12,-14(0xff2)
1c0011fc:	004084c9 	slli.w	$r9,$r6,0x1
1c001200:	00102732 	add.w	$r18,$r25,$r9
1c001204:	2a40024a 	ld.hu	$r10,$r18,0
1c001208:	297fc9aa 	st.h	$r10,$r13,-14(0xff2)
1c00120c:	2a7fd18b 	ld.hu	$r11,$r12,-12(0xff4)
1c001210:	00408573 	slli.w	$r19,$r11,0x1
1c001214:	00104f34 	add.w	$r20,$r25,$r19
1c001218:	2a400284 	ld.hu	$r4,$r20,0
1c00121c:	297fd1a4 	st.h	$r4,$r13,-12(0xff4)
1c001220:	2a7fd987 	ld.hu	$r7,$r12,-10(0xff6)
1c001224:	004084e8 	slli.w	$r8,$r7,0x1
1c001228:	0010232e 	add.w	$r14,$r25,$r8
1c00122c:	2a4001c1 	ld.hu	$r1,$r14,0
1c001230:	297fd9a1 	st.h	$r1,$r13,-10(0xff6)
1c001234:	2a7fe185 	ld.hu	$r5,$r12,-8(0xff8)
1c001238:	004084a6 	slli.w	$r6,$r5,0x1
1c00123c:	00101b29 	add.w	$r9,$r25,$r6
1c001240:	2a400132 	ld.hu	$r18,$r9,0
1c001244:	297fe1b2 	st.h	$r18,$r13,-8(0xff8)
1c001248:	2a7fe98a 	ld.hu	$r10,$r12,-6(0xffa)
1c00124c:	0040854b 	slli.w	$r11,$r10,0x1
1c001250:	00102f33 	add.w	$r19,$r25,$r11
1c001254:	2a400274 	ld.hu	$r20,$r19,0
1c001258:	297fe9b4 	st.h	$r20,$r13,-6(0xffa)
1c00125c:	2a7ff184 	ld.hu	$r4,$r12,-4(0xffc)
1c001260:	00408487 	slli.w	$r7,$r4,0x1
1c001264:	00101f28 	add.w	$r8,$r25,$r7
1c001268:	2a40010e 	ld.hu	$r14,$r8,0
1c00126c:	297ff1ae 	st.h	$r14,$r13,-4(0xffc)
1c001270:	2a7ff98b 	ld.hu	$r11,$r12,-2(0xffe)
1c001274:	00408573 	slli.w	$r19,$r11,0x1
1c001278:	00104f34 	add.w	$r20,$r25,$r19
1c00127c:	2a400284 	ld.hu	$r4,$r20,0
1c001280:	297ff9a4 	st.h	$r4,$r13,-2(0xffe)
1c001284:	5fff59ec 	bne	$r15,$r12,-168(0x3ff58) # 1c0011dc <test_lut1_u16+0x17c>
1c001288:	02800631 	addi.w	$r17,$r17,1(0x1)
1c00128c:	5ffe3a30 	bne	$r17,$r16,-456(0x3fe38) # 1c0010c4 <test_lut1_u16+0x64>
1c001290:	54536000 	bl	21344(0x5360) # 1c0065f0 <get_clock>
1c001294:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c001298:	28876339 	ld.w	$r25,$r25,472(0x1d8)
1c00129c:	00150088 	move	$r8,$r4
1c0012a0:	29800324 	st.w	$r4,$r25,0
1c0012a4:	1c000fee 	pcaddu12i	$r14,127(0x7f)
1c0012a8:	0286b1ce 	addi.w	$r14,$r14,428(0x1ac)
1c0012ac:	288001c7 	ld.w	$r7,$r14,0
1c0012b0:	2a400361 	ld.hu	$r1,$r27,0
1c0012b4:	29803067 	st.w	$r7,$r3,12(0xc)
1c0012b8:	2a403065 	ld.hu	$r5,$r3,12(0xc)
1c0012bc:	5c0198a1 	bne	$r5,$r1,408(0x198) # 1c001454 <test_lut1_u16+0x3f4>
1c0012c0:	004086e6 	slli.w	$r6,$r23,0x1
1c0012c4:	02800b6c 	addi.w	$r12,$r27,2(0x2)
1c0012c8:	00101b69 	add.w	$r9,$r27,$r6
1c0012cc:	00113132 	sub.w	$r18,$r9,$r12
1c0012d0:	0044864a 	srli.w	$r10,$r18,0x1
1c0012d4:	03401d4b 	andi	$r11,$r10,0x7
1c0012d8:	58008960 	beq	$r11,$r0,136(0x88) # 1c001360 <test_lut1_u16+0x300>
1c0012dc:	0280136c 	addi.w	$r12,$r27,4(0x4)
1c0012e0:	2a7ff986 	ld.hu	$r6,$r12,-2(0xffe)
1c0012e4:	5c00c4c1 	bne	$r6,$r1,196(0xc4) # 1c0013a8 <test_lut1_u16+0x348>
1c0012e8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0012ec:	5800756d 	beq	$r11,$r13,116(0x74) # 1c001360 <test_lut1_u16+0x300>
1c0012f0:	02800813 	addi.w	$r19,$r0,2(0x2)
1c0012f4:	58006173 	beq	$r11,$r19,96(0x60) # 1c001354 <test_lut1_u16+0x2f4>
1c0012f8:	02800c14 	addi.w	$r20,$r0,3(0x3)
1c0012fc:	58004d74 	beq	$r11,$r20,76(0x4c) # 1c001348 <test_lut1_u16+0x2e8>
1c001300:	02801004 	addi.w	$r4,$r0,4(0x4)
1c001304:	58003964 	beq	$r11,$r4,56(0x38) # 1c00133c <test_lut1_u16+0x2dc>
1c001308:	0280140f 	addi.w	$r15,$r0,5(0x5)
1c00130c:	5800256f 	beq	$r11,$r15,36(0x24) # 1c001330 <test_lut1_u16+0x2d0>
1c001310:	02801810 	addi.w	$r16,$r0,6(0x6)
1c001314:	58001170 	beq	$r11,$r16,16(0x10) # 1c001324 <test_lut1_u16+0x2c4>
1c001318:	2a401366 	ld.hu	$r6,$r27,4(0x4)
1c00131c:	02801b6c 	addi.w	$r12,$r27,6(0x6)
1c001320:	5c0088c5 	bne	$r6,$r5,136(0x88) # 1c0013a8 <test_lut1_u16+0x348>
1c001324:	2a400186 	ld.hu	$r6,$r12,0
1c001328:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00132c:	5c007cc1 	bne	$r6,$r1,124(0x7c) # 1c0013a8 <test_lut1_u16+0x348>
1c001330:	2a400186 	ld.hu	$r6,$r12,0
1c001334:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001338:	5c0070c1 	bne	$r6,$r1,112(0x70) # 1c0013a8 <test_lut1_u16+0x348>
1c00133c:	2a400186 	ld.hu	$r6,$r12,0
1c001340:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001344:	5c0064c1 	bne	$r6,$r1,100(0x64) # 1c0013a8 <test_lut1_u16+0x348>
1c001348:	2a400186 	ld.hu	$r6,$r12,0
1c00134c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001350:	5c0058c1 	bne	$r6,$r1,88(0x58) # 1c0013a8 <test_lut1_u16+0x348>
1c001354:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001358:	2a7ff986 	ld.hu	$r6,$r12,-2(0xffe)
1c00135c:	5c004cc1 	bne	$r6,$r1,76(0x4c) # 1c0013a8 <test_lut1_u16+0x348>
1c001360:	5800d12c 	beq	$r9,$r12,208(0xd0) # 1c001430 <test_lut1_u16+0x3d0>
1c001364:	2a400186 	ld.hu	$r6,$r12,0
1c001368:	5c0040c1 	bne	$r6,$r1,64(0x40) # 1c0013a8 <test_lut1_u16+0x348>
1c00136c:	2a400986 	ld.hu	$r6,$r12,2(0x2)
1c001370:	5c0038c1 	bne	$r6,$r1,56(0x38) # 1c0013a8 <test_lut1_u16+0x348>
1c001374:	2a401186 	ld.hu	$r6,$r12,4(0x4)
1c001378:	5c0030c1 	bne	$r6,$r1,48(0x30) # 1c0013a8 <test_lut1_u16+0x348>
1c00137c:	2a401986 	ld.hu	$r6,$r12,6(0x6)
1c001380:	5c0028c1 	bne	$r6,$r1,40(0x28) # 1c0013a8 <test_lut1_u16+0x348>
1c001384:	2a402186 	ld.hu	$r6,$r12,8(0x8)
1c001388:	5c0020c1 	bne	$r6,$r1,32(0x20) # 1c0013a8 <test_lut1_u16+0x348>
1c00138c:	2a402986 	ld.hu	$r6,$r12,10(0xa)
1c001390:	5c0018c1 	bne	$r6,$r1,24(0x18) # 1c0013a8 <test_lut1_u16+0x348>
1c001394:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c001398:	2a7ff186 	ld.hu	$r6,$r12,-4(0xffc)
1c00139c:	5c000cc1 	bne	$r6,$r1,12(0xc) # 1c0013a8 <test_lut1_u16+0x348>
1c0013a0:	2a7ff986 	ld.hu	$r6,$r12,-2(0xffe)
1c0013a4:	5bffbcc1 	beq	$r6,$r1,-68(0x3ffbc) # 1c001360 <test_lut1_u16+0x300>
1c0013a8:	00150305 	move	$r5,$r24
1c0013ac:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0013b0:	02b15084 	addi.w	$r4,$r4,-940(0xc54)
1c0013b4:	544a4c00 	bl	19020(0x4a4c) # 1c005e00 <printf>
1c0013b8:	28800328 	ld.w	$r8,$r25,0
1c0013bc:	0280041a 	addi.w	$r26,$r0,1(0x1)
1c0013c0:	28800387 	ld.w	$r7,$r28,0
1c0013c4:	14001e9b 	lu12i.w	$r27,244(0xf4)
1c0013c8:	001502e6 	move	$r6,$r23
1c0013cc:	00150305 	move	$r5,$r24
1c0013d0:	03890377 	ori	$r23,$r27,0x240
1c0013d4:	00111d18 	sub.w	$r24,$r8,$r7
1c0013d8:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0013dc:	02b14084 	addi.w	$r4,$r4,-944(0xc50)
1c0013e0:	00215f07 	div.wu	$r7,$r24,$r23
1c0013e4:	5c000ae0 	bne	$r23,$r0,8(0x8) # 1c0013ec <test_lut1_u16+0x38c>
1c0013e8:	002a0007 	break	0x7
1c0013ec:	544a1400 	bl	18964(0x4a14) # 1c005e00 <printf>
1c0013f0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0013f4:	00150344 	move	$r4,$r26
1c0013f8:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c0013fc:	28809078 	ld.w	$r24,$r3,36(0x24)
1c001400:	28808079 	ld.w	$r25,$r3,32(0x20)
1c001404:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c001408:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c00140c:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c001410:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001414:	4c000020 	jirl	$r0,$r1,0
1c001418:	5451d800 	bl	20952(0x51d8) # 1c0065f0 <get_clock>
1c00141c:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c001420:	28814339 	ld.w	$r25,$r25,80(0x50)
1c001424:	29800324 	st.w	$r4,$r25,0
1c001428:	00150088 	move	$r8,$r4
1c00142c:	63fe7817 	blt	$r0,$r23,-392(0x3fe78) # 1c0012a4 <test_lut1_u16+0x244>
1c001430:	0015001a 	move	$r26,$r0
1c001434:	53ff8fff 	b	-116(0xfffff8c) # 1c0013c0 <test_lut1_u16+0x360>
1c001438:	5451b800 	bl	20920(0x51b8) # 1c0065f0 <get_clock>
1c00143c:	00150088 	move	$r8,$r4
1c001440:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001444:	2880b084 	ld.w	$r4,$r4,44(0x2c)
1c001448:	0015001a 	move	$r26,$r0
1c00144c:	29800088 	st.w	$r8,$r4,0
1c001450:	53ff73ff 	b	-144(0xfffff70) # 1c0013c0 <test_lut1_u16+0x360>
1c001454:	00150026 	move	$r6,$r1
1c001458:	53ff53ff 	b	-176(0xfffff50) # 1c0013a8 <test_lut1_u16+0x348>
1c00145c:	03400000 	andi	$r0,$r0,0x0

1c001460 <test_lut1_16>:
test_lut1_16():
1c001460:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001464:	2980a077 	st.w	$r23,$r3,40(0x28)
1c001468:	29809078 	st.w	$r24,$r3,36(0x24)
1c00146c:	29808079 	st.w	$r25,$r3,32(0x20)
1c001470:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c001474:	2980607b 	st.w	$r27,$r3,24(0x18)
1c001478:	2980507c 	st.w	$r28,$r3,20(0x14)
1c00147c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001480:	0015009a 	move	$r26,$r4
1c001484:	001500bb 	move	$r27,$r5
1c001488:	001500d7 	move	$r23,$r6
1c00148c:	001500f9 	move	$r25,$r7
1c001490:	00150118 	move	$r24,$r8
1c001494:	54515c00 	bl	20828(0x515c) # 1c0065f0 <get_clock>
1c001498:	1c000fec 	pcaddu12i	$r12,127(0x7f)
1c00149c:	02bef18c 	addi.w	$r12,$r12,-68(0xfbc)
1c0014a0:	28800190 	ld.w	$r16,$r12,0
1c0014a4:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c0014a8:	28bf339c 	ld.w	$r28,$r28,-52(0xfcc)
1c0014ac:	29800384 	st.w	$r4,$r28,0
1c0014b0:	64036810 	bge	$r0,$r16,872(0x368) # 1c001818 <test_lut1_16+0x3b8>
1c0014b4:	64038417 	bge	$r0,$r23,900(0x384) # 1c001838 <test_lut1_16+0x3d8>
1c0014b8:	004086ef 	slli.w	$r15,$r23,0x1
1c0014bc:	00150011 	move	$r17,$r0
1c0014c0:	00103f4f 	add.w	$r15,$r26,$r15
1c0014c4:	001169ee 	sub.w	$r14,$r15,$r26
1c0014c8:	02bff9c1 	addi.w	$r1,$r14,-2(0xffe)
1c0014cc:	00448425 	srli.w	$r5,$r1,0x1
1c0014d0:	028004a6 	addi.w	$r6,$r5,1(0x1)
1c0014d4:	03401cc7 	andi	$r7,$r6,0x7
1c0014d8:	0015036d 	move	$r13,$r27
1c0014dc:	0015034c 	move	$r12,$r26
1c0014e0:	5800fce0 	beq	$r7,$r0,252(0xfc) # 1c0015dc <test_lut1_16+0x17c>
1c0014e4:	02800412 	addi.w	$r18,$r0,1(0x1)
1c0014e8:	5800d4f2 	beq	$r7,$r18,212(0xd4) # 1c0015bc <test_lut1_16+0x15c>
1c0014ec:	02800808 	addi.w	$r8,$r0,2(0x2)
1c0014f0:	5800b0e8 	beq	$r7,$r8,176(0xb0) # 1c0015a0 <test_lut1_16+0x140>
1c0014f4:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c0014f8:	58008ce9 	beq	$r7,$r9,140(0x8c) # 1c001584 <test_lut1_16+0x124>
1c0014fc:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c001500:	580068ea 	beq	$r7,$r10,104(0x68) # 1c001568 <test_lut1_16+0x108>
1c001504:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c001508:	580044eb 	beq	$r7,$r11,68(0x44) # 1c00154c <test_lut1_16+0xec>
1c00150c:	02801813 	addi.w	$r19,$r0,6(0x6)
1c001510:	580020f3 	beq	$r7,$r19,32(0x20) # 1c001530 <test_lut1_16+0xd0>
1c001514:	28400354 	ld.h	$r20,$r26,0
1c001518:	02800b4c 	addi.w	$r12,$r26,2(0x2)
1c00151c:	02800b6d 	addi.w	$r13,$r27,2(0x2)
1c001520:	00408684 	slli.w	$r4,$r20,0x1
1c001524:	0010132e 	add.w	$r14,$r25,$r4
1c001528:	284001c1 	ld.h	$r1,$r14,0
1c00152c:	29400361 	st.h	$r1,$r27,0
1c001530:	28400185 	ld.h	$r5,$r12,0
1c001534:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001538:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00153c:	004084a6 	slli.w	$r6,$r5,0x1
1c001540:	00101b27 	add.w	$r7,$r25,$r6
1c001544:	284000f2 	ld.h	$r18,$r7,0
1c001548:	297ff9b2 	st.h	$r18,$r13,-2(0xffe)
1c00154c:	28400188 	ld.h	$r8,$r12,0
1c001550:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001554:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001558:	00408509 	slli.w	$r9,$r8,0x1
1c00155c:	0010272a 	add.w	$r10,$r25,$r9
1c001560:	2840014b 	ld.h	$r11,$r10,0
1c001564:	297ff9ab 	st.h	$r11,$r13,-2(0xffe)
1c001568:	28400193 	ld.h	$r19,$r12,0
1c00156c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001570:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001574:	00408674 	slli.w	$r20,$r19,0x1
1c001578:	00105324 	add.w	$r4,$r25,$r20
1c00157c:	2840008e 	ld.h	$r14,$r4,0
1c001580:	297ff9ae 	st.h	$r14,$r13,-2(0xffe)
1c001584:	28400181 	ld.h	$r1,$r12,0
1c001588:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c00158c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001590:	00408425 	slli.w	$r5,$r1,0x1
1c001594:	00101726 	add.w	$r6,$r25,$r5
1c001598:	284000c7 	ld.h	$r7,$r6,0
1c00159c:	297ff9a7 	st.h	$r7,$r13,-2(0xffe)
1c0015a0:	28400192 	ld.h	$r18,$r12,0
1c0015a4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0015a8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0015ac:	00408648 	slli.w	$r8,$r18,0x1
1c0015b0:	00102329 	add.w	$r9,$r25,$r8
1c0015b4:	2840012a 	ld.h	$r10,$r9,0
1c0015b8:	297ff9aa 	st.h	$r10,$r13,-2(0xffe)
1c0015bc:	2840018b 	ld.h	$r11,$r12,0
1c0015c0:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0015c4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0015c8:	00408573 	slli.w	$r19,$r11,0x1
1c0015cc:	00104f34 	add.w	$r20,$r25,$r19
1c0015d0:	28400284 	ld.h	$r4,$r20,0
1c0015d4:	297ff9a4 	st.h	$r4,$r13,-2(0xffe)
1c0015d8:	5800b1ec 	beq	$r15,$r12,176(0xb0) # 1c001688 <test_lut1_16+0x228>
1c0015dc:	28400188 	ld.h	$r8,$r12,0
1c0015e0:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c0015e4:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c0015e8:	0040850e 	slli.w	$r14,$r8,0x1
1c0015ec:	00103b21 	add.w	$r1,$r25,$r14
1c0015f0:	28400025 	ld.h	$r5,$r1,0
1c0015f4:	297fc1a5 	st.h	$r5,$r13,-16(0xff0)
1c0015f8:	287fc986 	ld.h	$r6,$r12,-14(0xff2)
1c0015fc:	004084c9 	slli.w	$r9,$r6,0x1
1c001600:	00102732 	add.w	$r18,$r25,$r9
1c001604:	2840024a 	ld.h	$r10,$r18,0
1c001608:	297fc9aa 	st.h	$r10,$r13,-14(0xff2)
1c00160c:	287fd18b 	ld.h	$r11,$r12,-12(0xff4)
1c001610:	00408573 	slli.w	$r19,$r11,0x1
1c001614:	00104f34 	add.w	$r20,$r25,$r19
1c001618:	28400284 	ld.h	$r4,$r20,0
1c00161c:	297fd1a4 	st.h	$r4,$r13,-12(0xff4)
1c001620:	287fd987 	ld.h	$r7,$r12,-10(0xff6)
1c001624:	004084e8 	slli.w	$r8,$r7,0x1
1c001628:	0010232e 	add.w	$r14,$r25,$r8
1c00162c:	284001c1 	ld.h	$r1,$r14,0
1c001630:	297fd9a1 	st.h	$r1,$r13,-10(0xff6)
1c001634:	287fe185 	ld.h	$r5,$r12,-8(0xff8)
1c001638:	004084a6 	slli.w	$r6,$r5,0x1
1c00163c:	00101b29 	add.w	$r9,$r25,$r6
1c001640:	28400132 	ld.h	$r18,$r9,0
1c001644:	297fe1b2 	st.h	$r18,$r13,-8(0xff8)
1c001648:	287fe98a 	ld.h	$r10,$r12,-6(0xffa)
1c00164c:	0040854b 	slli.w	$r11,$r10,0x1
1c001650:	00102f33 	add.w	$r19,$r25,$r11
1c001654:	28400274 	ld.h	$r20,$r19,0
1c001658:	297fe9b4 	st.h	$r20,$r13,-6(0xffa)
1c00165c:	287ff184 	ld.h	$r4,$r12,-4(0xffc)
1c001660:	00408487 	slli.w	$r7,$r4,0x1
1c001664:	00101f28 	add.w	$r8,$r25,$r7
1c001668:	2840010e 	ld.h	$r14,$r8,0
1c00166c:	297ff1ae 	st.h	$r14,$r13,-4(0xffc)
1c001670:	287ff98b 	ld.h	$r11,$r12,-2(0xffe)
1c001674:	00408573 	slli.w	$r19,$r11,0x1
1c001678:	00104f34 	add.w	$r20,$r25,$r19
1c00167c:	28400284 	ld.h	$r4,$r20,0
1c001680:	297ff9a4 	st.h	$r4,$r13,-2(0xffe)
1c001684:	5fff59ec 	bne	$r15,$r12,-168(0x3ff58) # 1c0015dc <test_lut1_16+0x17c>
1c001688:	02800631 	addi.w	$r17,$r17,1(0x1)
1c00168c:	5ffe3a30 	bne	$r17,$r16,-456(0x3fe38) # 1c0014c4 <test_lut1_16+0x64>
1c001690:	544f6000 	bl	20320(0x4f60) # 1c0065f0 <get_clock>
1c001694:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c001698:	28b76339 	ld.w	$r25,$r25,-552(0xdd8)
1c00169c:	00150088 	move	$r8,$r4
1c0016a0:	29800324 	st.w	$r4,$r25,0
1c0016a4:	1c000fee 	pcaddu12i	$r14,127(0x7f)
1c0016a8:	02b6b1ce 	addi.w	$r14,$r14,-596(0xdac)
1c0016ac:	288001c7 	ld.w	$r7,$r14,0
1c0016b0:	28400361 	ld.h	$r1,$r27,0
1c0016b4:	29803067 	st.w	$r7,$r3,12(0xc)
1c0016b8:	28403065 	ld.h	$r5,$r3,12(0xc)
1c0016bc:	5c0198a1 	bne	$r5,$r1,408(0x198) # 1c001854 <test_lut1_16+0x3f4>
1c0016c0:	004086e6 	slli.w	$r6,$r23,0x1
1c0016c4:	02800b6c 	addi.w	$r12,$r27,2(0x2)
1c0016c8:	00101b69 	add.w	$r9,$r27,$r6
1c0016cc:	00113132 	sub.w	$r18,$r9,$r12
1c0016d0:	0044864a 	srli.w	$r10,$r18,0x1
1c0016d4:	03401d4b 	andi	$r11,$r10,0x7
1c0016d8:	58008960 	beq	$r11,$r0,136(0x88) # 1c001760 <test_lut1_16+0x300>
1c0016dc:	0280136c 	addi.w	$r12,$r27,4(0x4)
1c0016e0:	287ff986 	ld.h	$r6,$r12,-2(0xffe)
1c0016e4:	5c00c4c1 	bne	$r6,$r1,196(0xc4) # 1c0017a8 <test_lut1_16+0x348>
1c0016e8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0016ec:	5800756d 	beq	$r11,$r13,116(0x74) # 1c001760 <test_lut1_16+0x300>
1c0016f0:	02800813 	addi.w	$r19,$r0,2(0x2)
1c0016f4:	58006173 	beq	$r11,$r19,96(0x60) # 1c001754 <test_lut1_16+0x2f4>
1c0016f8:	02800c14 	addi.w	$r20,$r0,3(0x3)
1c0016fc:	58004d74 	beq	$r11,$r20,76(0x4c) # 1c001748 <test_lut1_16+0x2e8>
1c001700:	02801004 	addi.w	$r4,$r0,4(0x4)
1c001704:	58003964 	beq	$r11,$r4,56(0x38) # 1c00173c <test_lut1_16+0x2dc>
1c001708:	0280140f 	addi.w	$r15,$r0,5(0x5)
1c00170c:	5800256f 	beq	$r11,$r15,36(0x24) # 1c001730 <test_lut1_16+0x2d0>
1c001710:	02801810 	addi.w	$r16,$r0,6(0x6)
1c001714:	58001170 	beq	$r11,$r16,16(0x10) # 1c001724 <test_lut1_16+0x2c4>
1c001718:	28401366 	ld.h	$r6,$r27,4(0x4)
1c00171c:	02801b6c 	addi.w	$r12,$r27,6(0x6)
1c001720:	5c0088c5 	bne	$r6,$r5,136(0x88) # 1c0017a8 <test_lut1_16+0x348>
1c001724:	28400186 	ld.h	$r6,$r12,0
1c001728:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00172c:	5c007cc1 	bne	$r6,$r1,124(0x7c) # 1c0017a8 <test_lut1_16+0x348>
1c001730:	28400186 	ld.h	$r6,$r12,0
1c001734:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001738:	5c0070c1 	bne	$r6,$r1,112(0x70) # 1c0017a8 <test_lut1_16+0x348>
1c00173c:	28400186 	ld.h	$r6,$r12,0
1c001740:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001744:	5c0064c1 	bne	$r6,$r1,100(0x64) # 1c0017a8 <test_lut1_16+0x348>
1c001748:	28400186 	ld.h	$r6,$r12,0
1c00174c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001750:	5c0058c1 	bne	$r6,$r1,88(0x58) # 1c0017a8 <test_lut1_16+0x348>
1c001754:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001758:	287ff986 	ld.h	$r6,$r12,-2(0xffe)
1c00175c:	5c004cc1 	bne	$r6,$r1,76(0x4c) # 1c0017a8 <test_lut1_16+0x348>
1c001760:	5800d12c 	beq	$r9,$r12,208(0xd0) # 1c001830 <test_lut1_16+0x3d0>
1c001764:	28400186 	ld.h	$r6,$r12,0
1c001768:	5c0040c1 	bne	$r6,$r1,64(0x40) # 1c0017a8 <test_lut1_16+0x348>
1c00176c:	28400986 	ld.h	$r6,$r12,2(0x2)
1c001770:	5c0038c1 	bne	$r6,$r1,56(0x38) # 1c0017a8 <test_lut1_16+0x348>
1c001774:	28401186 	ld.h	$r6,$r12,4(0x4)
1c001778:	5c0030c1 	bne	$r6,$r1,48(0x30) # 1c0017a8 <test_lut1_16+0x348>
1c00177c:	28401986 	ld.h	$r6,$r12,6(0x6)
1c001780:	5c0028c1 	bne	$r6,$r1,40(0x28) # 1c0017a8 <test_lut1_16+0x348>
1c001784:	28402186 	ld.h	$r6,$r12,8(0x8)
1c001788:	5c0020c1 	bne	$r6,$r1,32(0x20) # 1c0017a8 <test_lut1_16+0x348>
1c00178c:	28402986 	ld.h	$r6,$r12,10(0xa)
1c001790:	5c0018c1 	bne	$r6,$r1,24(0x18) # 1c0017a8 <test_lut1_16+0x348>
1c001794:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c001798:	287ff186 	ld.h	$r6,$r12,-4(0xffc)
1c00179c:	5c000cc1 	bne	$r6,$r1,12(0xc) # 1c0017a8 <test_lut1_16+0x348>
1c0017a0:	287ff986 	ld.h	$r6,$r12,-2(0xffe)
1c0017a4:	5bffbcc1 	beq	$r6,$r1,-68(0x3ffbc) # 1c001760 <test_lut1_16+0x300>
1c0017a8:	00150305 	move	$r5,$r24
1c0017ac:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0017b0:	02a15084 	addi.w	$r4,$r4,-1964(0x854)
1c0017b4:	54464c00 	bl	17996(0x464c) # 1c005e00 <printf>
1c0017b8:	28800328 	ld.w	$r8,$r25,0
1c0017bc:	0280041a 	addi.w	$r26,$r0,1(0x1)
1c0017c0:	28800387 	ld.w	$r7,$r28,0
1c0017c4:	14001e9b 	lu12i.w	$r27,244(0xf4)
1c0017c8:	001502e6 	move	$r6,$r23
1c0017cc:	00150305 	move	$r5,$r24
1c0017d0:	03890377 	ori	$r23,$r27,0x240
1c0017d4:	00111d18 	sub.w	$r24,$r8,$r7
1c0017d8:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0017dc:	02a14084 	addi.w	$r4,$r4,-1968(0x850)
1c0017e0:	00215f07 	div.wu	$r7,$r24,$r23
1c0017e4:	5c000ae0 	bne	$r23,$r0,8(0x8) # 1c0017ec <test_lut1_16+0x38c>
1c0017e8:	002a0007 	break	0x7
1c0017ec:	54461400 	bl	17940(0x4614) # 1c005e00 <printf>
1c0017f0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0017f4:	00150344 	move	$r4,$r26
1c0017f8:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c0017fc:	28809078 	ld.w	$r24,$r3,36(0x24)
1c001800:	28808079 	ld.w	$r25,$r3,32(0x20)
1c001804:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c001808:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c00180c:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c001810:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001814:	4c000020 	jirl	$r0,$r1,0
1c001818:	544dd800 	bl	19928(0x4dd8) # 1c0065f0 <get_clock>
1c00181c:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c001820:	28b14339 	ld.w	$r25,$r25,-944(0xc50)
1c001824:	29800324 	st.w	$r4,$r25,0
1c001828:	00150088 	move	$r8,$r4
1c00182c:	63fe7817 	blt	$r0,$r23,-392(0x3fe78) # 1c0016a4 <test_lut1_16+0x244>
1c001830:	0015001a 	move	$r26,$r0
1c001834:	53ff8fff 	b	-116(0xfffff8c) # 1c0017c0 <test_lut1_16+0x360>
1c001838:	544db800 	bl	19896(0x4db8) # 1c0065f0 <get_clock>
1c00183c:	00150088 	move	$r8,$r4
1c001840:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001844:	28b0b084 	ld.w	$r4,$r4,-980(0xc2c)
1c001848:	0015001a 	move	$r26,$r0
1c00184c:	29800088 	st.w	$r8,$r4,0
1c001850:	53ff73ff 	b	-144(0xfffff70) # 1c0017c0 <test_lut1_16+0x360>
1c001854:	00150026 	move	$r6,$r1
1c001858:	53ff53ff 	b	-176(0xfffff50) # 1c0017a8 <test_lut1_16+0x348>
1c00185c:	03400000 	andi	$r0,$r0,0x0

1c001860 <shell17_main>:
shell17_main():
1c001860:	02bb0063 	addi.w	$r3,$r3,-320(0xec0)
1c001864:	2984a07a 	st.w	$r26,$r3,296(0x128)
1c001868:	1c000ffa 	pcaddu12i	$r26,127(0x7f)
1c00186c:	02afa35a 	addi.w	$r26,$r26,-1048(0xbe8)
1c001870:	2984d077 	st.w	$r23,$r3,308(0x134)
1c001874:	28800357 	ld.w	$r23,$r26,0
1c001878:	15ffff8d 	lu12i.w	$r13,-4(0xffffc)
1c00187c:	2984f061 	st.w	$r1,$r3,316(0x13c)
1c001880:	2984c078 	st.w	$r24,$r3,304(0x130)
1c001884:	2984e076 	st.w	$r22,$r3,312(0x138)
1c001888:	2984b079 	st.w	$r25,$r3,300(0x12c)
1c00188c:	2984907b 	st.w	$r27,$r3,292(0x124)
1c001890:	2984807c 	st.w	$r28,$r3,288(0x120)
1c001894:	2984707d 	st.w	$r29,$r3,284(0x11c)
1c001898:	2984607e 	st.w	$r30,$r3,280(0x118)
1c00189c:	2984507f 	st.w	$r31,$r3,276(0x114)
1c0018a0:	14000098 	lu12i.w	$r24,4(0x4)
1c0018a4:	00103463 	add.w	$r3,$r3,$r13
1c0018a8:	0384030c 	ori	$r12,$r24,0x100
1c0018ac:	02804065 	addi.w	$r5,$r3,16(0x10)
1c0018b0:	29802077 	st.w	$r23,$r3,8(0x8)
1c0018b4:	00101587 	add.w	$r7,$r12,$r5
1c0018b8:	15ffff64 	lu12i.w	$r4,-5(0xffffb)
1c0018bc:	2a002065 	ld.bu	$r5,$r3,8(0x8)
1c0018c0:	03bc0081 	ori	$r1,$r4,0xf00
1c0018c4:	02840006 	addi.w	$r6,$r0,256(0x100)
1c0018c8:	001004e4 	add.w	$r4,$r7,$r1
1c0018cc:	544b2400 	bl	19236(0x4b24) # 1c0063f0 <memset>
1c0018d0:	29802077 	st.w	$r23,$r3,8(0x8)
1c0018d4:	2a402066 	ld.hu	$r6,$r3,8(0x8)
1c0018d8:	0384030f 	ori	$r15,$r24,0x100
1c0018dc:	0280406e 	addi.w	$r14,$r3,16(0x10)
1c0018e0:	15ffff88 	lu12i.w	$r8,-4(0xffffc)
1c0018e4:	001039e9 	add.w	$r9,$r15,$r14
1c0018e8:	0040c0cb 	slli.w	$r11,$r6,0x10
1c0018ec:	00102131 	add.w	$r17,$r9,$r8
1c0018f0:	00152cd0 	or	$r16,$r6,$r11
1c0018f4:	29800230 	st.w	$r16,$r17,0
1c0018f8:	29801230 	st.w	$r16,$r17,4(0x4)
1c0018fc:	29802230 	st.w	$r16,$r17,8(0x8)
1c001900:	29803230 	st.w	$r16,$r17,12(0xc)
1c001904:	29804230 	st.w	$r16,$r17,16(0x10)
1c001908:	29805230 	st.w	$r16,$r17,20(0x14)
1c00190c:	29806230 	st.w	$r16,$r17,24(0x18)
1c001910:	29807230 	st.w	$r16,$r17,28(0x1c)
1c001914:	02808231 	addi.w	$r17,$r17,32(0x20)
1c001918:	5fffde29 	bne	$r17,$r9,-36(0x3ffdc) # 1c0018f4 <shell17_main+0x94>
1c00191c:	0281eee4 	addi.w	$r4,$r23,123(0x7b)
1c001920:	1c000ff6 	pcaddu12i	$r22,127(0x7f)
1c001924:	28ad52d6 	ld.w	$r22,$r22,-1196(0xb54)
1c001928:	544d7800 	bl	19832(0x4d78) # 1c0066a0 <srand>
1c00192c:	028fa2dd 	addi.w	$r29,$r22,1000(0x3e8)
1c001930:	028022d6 	addi.w	$r22,$r22,8(0x8)
1c001934:	544d2c00 	bl	19756(0x4d2c) # 1c006660 <rand>
1c001938:	293fe2c4 	st.b	$r4,$r22,-8(0xff8)
1c00193c:	544d2400 	bl	19748(0x4d24) # 1c006660 <rand>
1c001940:	293fe6c4 	st.b	$r4,$r22,-7(0xff9)
1c001944:	544d1c00 	bl	19740(0x4d1c) # 1c006660 <rand>
1c001948:	293feac4 	st.b	$r4,$r22,-6(0xffa)
1c00194c:	544d1400 	bl	19732(0x4d14) # 1c006660 <rand>
1c001950:	293feec4 	st.b	$r4,$r22,-5(0xffb)
1c001954:	544d0c00 	bl	19724(0x4d0c) # 1c006660 <rand>
1c001958:	293ff2c4 	st.b	$r4,$r22,-4(0xffc)
1c00195c:	544d0400 	bl	19716(0x4d04) # 1c006660 <rand>
1c001960:	293ff6c4 	st.b	$r4,$r22,-3(0xffd)
1c001964:	544cfc00 	bl	19708(0x4cfc) # 1c006660 <rand>
1c001968:	293ffac4 	st.b	$r4,$r22,-2(0xffe)
1c00196c:	544cf400 	bl	19700(0x4cf4) # 1c006660 <rand>
1c001970:	293ffec4 	st.b	$r4,$r22,-1(0xfff)
1c001974:	5fffbedd 	bne	$r22,$r29,-68(0x3ffbc) # 1c001930 <shell17_main+0xd0>
1c001978:	28800352 	ld.w	$r18,$r26,0
1c00197c:	1c000ffb 	pcaddu12i	$r27,127(0x7f)
1c001980:	28abf37b 	ld.w	$r27,$r27,-1284(0xafc)
1c001984:	028fa019 	addi.w	$r25,$r0,1000(0x3e8)
1c001988:	0281ee44 	addi.w	$r4,$r18,123(0x7b)
1c00198c:	029f4377 	addi.w	$r23,$r27,2000(0x7d0)
1c001990:	544d1000 	bl	19728(0x4d10) # 1c0066a0 <srand>
1c001994:	544ccc00 	bl	19660(0x4ccc) # 1c006660 <rand>
1c001998:	29402064 	st.h	$r4,$r3,8(0x8)
1c00199c:	2a402073 	ld.hu	$r19,$r3,8(0x8)
1c0019a0:	0280437b 	addi.w	$r27,$r27,16(0x10)
1c0019a4:	0021e674 	mod.wu	$r20,$r19,$r25
1c0019a8:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c0019b0 <shell17_main+0x150>
1c0019ac:	002a0007 	break	0x7
1c0019b0:	297fc374 	st.h	$r20,$r27,-16(0xff0)
1c0019b4:	544cac00 	bl	19628(0x4cac) # 1c006660 <rand>
1c0019b8:	29402064 	st.h	$r4,$r3,8(0x8)
1c0019bc:	2a40207c 	ld.hu	$r28,$r3,8(0x8)
1c0019c0:	0021e79e 	mod.wu	$r30,$r28,$r25
1c0019c4:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c0019cc <shell17_main+0x16c>
1c0019c8:	002a0007 	break	0x7
1c0019cc:	297fcb7e 	st.h	$r30,$r27,-14(0xff2)
1c0019d0:	544c9000 	bl	19600(0x4c90) # 1c006660 <rand>
1c0019d4:	29402064 	st.h	$r4,$r3,8(0x8)
1c0019d8:	2a40207f 	ld.hu	$r31,$r3,8(0x8)
1c0019dc:	0021e7ed 	mod.wu	$r13,$r31,$r25
1c0019e0:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c0019e8 <shell17_main+0x188>
1c0019e4:	002a0007 	break	0x7
1c0019e8:	297fd36d 	st.h	$r13,$r27,-12(0xff4)
1c0019ec:	544c7400 	bl	19572(0x4c74) # 1c006660 <rand>
1c0019f0:	29402064 	st.h	$r4,$r3,8(0x8)
1c0019f4:	2a402064 	ld.hu	$r4,$r3,8(0x8)
1c0019f8:	0021e498 	mod.wu	$r24,$r4,$r25
1c0019fc:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c001a04 <shell17_main+0x1a4>
1c001a00:	002a0007 	break	0x7
1c001a04:	297fdb78 	st.h	$r24,$r27,-10(0xff6)
1c001a08:	544c5800 	bl	19544(0x4c58) # 1c006660 <rand>
1c001a0c:	29402064 	st.h	$r4,$r3,8(0x8)
1c001a10:	2a402065 	ld.hu	$r5,$r3,8(0x8)
1c001a14:	0021e4ac 	mod.wu	$r12,$r5,$r25
1c001a18:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c001a20 <shell17_main+0x1c0>
1c001a1c:	002a0007 	break	0x7
1c001a20:	297fe36c 	st.h	$r12,$r27,-8(0xff8)
1c001a24:	544c3c00 	bl	19516(0x4c3c) # 1c006660 <rand>
1c001a28:	29402064 	st.h	$r4,$r3,8(0x8)
1c001a2c:	2a402067 	ld.hu	$r7,$r3,8(0x8)
1c001a30:	0021e4e6 	mod.wu	$r6,$r7,$r25
1c001a34:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c001a3c <shell17_main+0x1dc>
1c001a38:	002a0007 	break	0x7
1c001a3c:	297feb66 	st.h	$r6,$r27,-6(0xffa)
1c001a40:	544c2000 	bl	19488(0x4c20) # 1c006660 <rand>
1c001a44:	29402064 	st.h	$r4,$r3,8(0x8)
1c001a48:	2a402068 	ld.hu	$r8,$r3,8(0x8)
1c001a4c:	0021e50f 	mod.wu	$r15,$r8,$r25
1c001a50:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c001a58 <shell17_main+0x1f8>
1c001a54:	002a0007 	break	0x7
1c001a58:	297ff36f 	st.h	$r15,$r27,-4(0xffc)
1c001a5c:	544c0400 	bl	19460(0x4c04) # 1c006660 <rand>
1c001a60:	29402064 	st.h	$r4,$r3,8(0x8)
1c001a64:	2a40206e 	ld.hu	$r14,$r3,8(0x8)
1c001a68:	0021e5c9 	mod.wu	$r9,$r14,$r25
1c001a6c:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c001a74 <shell17_main+0x214>
1c001a70:	002a0007 	break	0x7
1c001a74:	297ffb69 	st.h	$r9,$r27,-2(0xffe)
1c001a78:	5fff1f77 	bne	$r27,$r23,-228(0x3ff1c) # 1c001994 <shell17_main+0x134>
1c001a7c:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c001a80:	02a7739c 	addi.w	$r28,$r28,-1572(0x9dc)
1c001a84:	28800381 	ld.w	$r1,$r28,0
1c001a88:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c001a8c:	02a73339 	addi.w	$r25,$r25,-1588(0x9cc)
1c001a90:	1c000ff8 	pcaddu12i	$r24,127(0x7f)
1c001a94:	28a78318 	ld.w	$r24,$r24,-1568(0x9e0)
1c001a98:	29800321 	st.w	$r1,$r25,0
1c001a9c:	544b5400 	bl	19284(0x4b54) # 1c0065f0 <get_clock>
1c001aa0:	2880032a 	ld.w	$r10,$r25,0
1c001aa4:	29800304 	st.w	$r4,$r24,0
1c001aa8:	6441c80a 	bge	$r0,$r10,16840(0x41c8) # 1c005c70 <shell17_main+0x4410>
1c001aac:	02800810 	addi.w	$r16,$r0,2(0x2)
1c001ab0:	02bffd5b 	addi.w	$r27,$r10,-1(0xfff)
1c001ab4:	1c000ff1 	pcaddu12i	$r17,127(0x7f)
1c001ab8:	28a70231 	ld.w	$r17,$r17,-1600(0x9c0)
1c001abc:	6441d20a 	bge	$r16,$r10,16848(0x41d0) # 1c005c8c <shell17_main+0x442c>
1c001ac0:	02800412 	addi.w	$r18,$r0,1(0x1)
1c001ac4:	15ffff93 	lu12i.w	$r19,-4(0xffffc)
1c001ac8:	02805236 	addi.w	$r22,$r17,20(0x14)
1c001acc:	1c000fec 	pcaddu12i	$r12,127(0x7f)
1c001ad0:	28a6a18c 	ld.w	$r12,$r12,-1624(0x9a8)
1c001ad4:	001132d4 	sub.w	$r20,$r22,$r12
1c001ad8:	03401e9e 	andi	$r30,$r20,0x7
1c001adc:	5801a3c0 	beq	$r30,$r0,416(0x1a0) # 1c001c7c <shell17_main+0x41c>
1c001ae0:	0280041f 	addi.w	$r31,$r0,1(0x1)
1c001ae4:	58015bdf 	beq	$r30,$r31,344(0x158) # 1c001c3c <shell17_main+0x3dc>
1c001ae8:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c001aec:	580117cd 	beq	$r30,$r13,276(0x114) # 1c001c00 <shell17_main+0x3a0>
1c001af0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c001af4:	5800d3c4 	beq	$r30,$r4,208(0xd0) # 1c001bc4 <shell17_main+0x364>
1c001af8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c001afc:	58008fc5 	beq	$r30,$r5,140(0x8c) # 1c001b88 <shell17_main+0x328>
1c001b00:	02801407 	addi.w	$r7,$r0,5(0x5)
1c001b04:	58004bc7 	beq	$r30,$r7,72(0x48) # 1c001b4c <shell17_main+0x2ec>
1c001b08:	02801806 	addi.w	$r6,$r0,6(0x6)
1c001b0c:	5c40d7c6 	bne	$r30,$r6,16596(0x40d4) # 1c005be0 <shell17_main+0x4380>
1c001b10:	2a000187 	ld.bu	$r7,$r12,0
1c001b14:	14000086 	lu12i.w	$r6,4(0x4)
1c001b18:	02804070 	addi.w	$r16,$r3,16(0x10)
1c001b1c:	038400c8 	ori	$r8,$r6,0x100
1c001b20:	00104109 	add.w	$r9,$r8,$r16
1c001b24:	00101d2f 	add.w	$r15,$r9,$r7
1c001b28:	00103e6e 	add.w	$r14,$r19,$r15
1c001b2c:	2a3c01c1 	ld.bu	$r1,$r14,-256(0xf00)
1c001b30:	038400cb 	ori	$r11,$r6,0x100
1c001b34:	00104174 	add.w	$r20,$r11,$r16
1c001b38:	0010069e 	add.w	$r30,$r20,$r1
1c001b3c:	00107a7f 	add.w	$r31,$r19,$r30
1c001b40:	2a3c03ed 	ld.bu	$r13,$r31,-256(0xf00)
1c001b44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b48:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c001b4c:	2a000184 	ld.bu	$r4,$r12,0
1c001b50:	14000085 	lu12i.w	$r5,4(0x4)
1c001b54:	02804070 	addi.w	$r16,$r3,16(0x10)
1c001b58:	038400a7 	ori	$r7,$r5,0x100
1c001b5c:	001040e6 	add.w	$r6,$r7,$r16
1c001b60:	001010c8 	add.w	$r8,$r6,$r4
1c001b64:	00102269 	add.w	$r9,$r19,$r8
1c001b68:	2a3c012e 	ld.bu	$r14,$r9,-256(0xf00)
1c001b6c:	038400af 	ori	$r15,$r5,0x100
1c001b70:	001041eb 	add.w	$r11,$r15,$r16
1c001b74:	00103971 	add.w	$r17,$r11,$r14
1c001b78:	00104674 	add.w	$r20,$r19,$r17
1c001b7c:	2a3c029e 	ld.bu	$r30,$r20,-256(0xf00)
1c001b80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b84:	293ffd9e 	st.b	$r30,$r12,-1(0xfff)
1c001b88:	2a00019f 	ld.bu	$r31,$r12,0
1c001b8c:	1400008d 	lu12i.w	$r13,4(0x4)
1c001b90:	02804070 	addi.w	$r16,$r3,16(0x10)
1c001b94:	038401a4 	ori	$r4,$r13,0x100
1c001b98:	00104085 	add.w	$r5,$r4,$r16
1c001b9c:	00107ca7 	add.w	$r7,$r5,$r31
1c001ba0:	00101e66 	add.w	$r6,$r19,$r7
1c001ba4:	2a3c00c8 	ld.bu	$r8,$r6,-256(0xf00)
1c001ba8:	038401a9 	ori	$r9,$r13,0x100
1c001bac:	0010412f 	add.w	$r15,$r9,$r16
1c001bb0:	001021e1 	add.w	$r1,$r15,$r8
1c001bb4:	0010066b 	add.w	$r11,$r19,$r1
1c001bb8:	2a3c0171 	ld.bu	$r17,$r11,-256(0xf00)
1c001bbc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001bc0:	293ffd91 	st.b	$r17,$r12,-1(0xfff)
1c001bc4:	2a000194 	ld.bu	$r20,$r12,0
1c001bc8:	1400009e 	lu12i.w	$r30,4(0x4)
1c001bcc:	02804070 	addi.w	$r16,$r3,16(0x10)
1c001bd0:	038403df 	ori	$r31,$r30,0x100
1c001bd4:	001043ed 	add.w	$r13,$r31,$r16
1c001bd8:	001051a4 	add.w	$r4,$r13,$r20
1c001bdc:	00101265 	add.w	$r5,$r19,$r4
1c001be0:	2a3c00a7 	ld.bu	$r7,$r5,-256(0xf00)
1c001be4:	038403c6 	ori	$r6,$r30,0x100
1c001be8:	001040c9 	add.w	$r9,$r6,$r16
1c001bec:	00101d2e 	add.w	$r14,$r9,$r7
1c001bf0:	00103a6f 	add.w	$r15,$r19,$r14
1c001bf4:	2a3c01e1 	ld.bu	$r1,$r15,-256(0xf00)
1c001bf8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001bfc:	293ffd81 	st.b	$r1,$r12,-1(0xfff)
1c001c00:	2a00018b 	ld.bu	$r11,$r12,0
1c001c04:	14000094 	lu12i.w	$r20,4(0x4)
1c001c08:	02804070 	addi.w	$r16,$r3,16(0x10)
1c001c0c:	0384029e 	ori	$r30,$r20,0x100
1c001c10:	001043d1 	add.w	$r17,$r30,$r16
1c001c14:	00102e3f 	add.w	$r31,$r17,$r11
1c001c18:	00107e6d 	add.w	$r13,$r19,$r31
1c001c1c:	2a3c01a4 	ld.bu	$r4,$r13,-256(0xf00)
1c001c20:	03840285 	ori	$r5,$r20,0x100
1c001c24:	001040a6 	add.w	$r6,$r5,$r16
1c001c28:	001010c8 	add.w	$r8,$r6,$r4
1c001c2c:	00102269 	add.w	$r9,$r19,$r8
1c001c30:	2a3c012e 	ld.bu	$r14,$r9,-256(0xf00)
1c001c34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c38:	293ffd8e 	st.b	$r14,$r12,-1(0xfff)
1c001c3c:	2a000181 	ld.bu	$r1,$r12,0
1c001c40:	1400008b 	lu12i.w	$r11,4(0x4)
1c001c44:	02804070 	addi.w	$r16,$r3,16(0x10)
1c001c48:	0384016f 	ori	$r15,$r11,0x100
1c001c4c:	001041f4 	add.w	$r20,$r15,$r16
1c001c50:	0010069e 	add.w	$r30,$r20,$r1
1c001c54:	00107a71 	add.w	$r17,$r19,$r30
1c001c58:	2a3c023f 	ld.bu	$r31,$r17,-256(0xf00)
1c001c5c:	0384016d 	ori	$r13,$r11,0x100
1c001c60:	001041a5 	add.w	$r5,$r13,$r16
1c001c64:	00107ca7 	add.w	$r7,$r5,$r31
1c001c68:	00101e66 	add.w	$r6,$r19,$r7
1c001c6c:	2a3c00c8 	ld.bu	$r8,$r6,-256(0xf00)
1c001c70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c74:	293ffd88 	st.b	$r8,$r12,-1(0xfff)
1c001c78:	58019596 	beq	$r12,$r22,404(0x194) # 1c001e0c <shell17_main+0x5ac>
1c001c7c:	14000094 	lu12i.w	$r20,4(0x4)
1c001c80:	2a000189 	ld.bu	$r9,$r12,0
1c001c84:	0280407e 	addi.w	$r30,$r3,16(0x10)
1c001c88:	2a000581 	ld.bu	$r1,$r12,1(0x1)
1c001c8c:	2a00098b 	ld.bu	$r11,$r12,2(0x2)
1c001c90:	2a000d8e 	ld.bu	$r14,$r12,3(0x3)
1c001c94:	0384028f 	ori	$r15,$r20,0x100
1c001c98:	001079f0 	add.w	$r16,$r15,$r30
1c001c9c:	0384029f 	ori	$r31,$r20,0x100
1c001ca0:	03840285 	ori	$r5,$r20,0x100
1c001ca4:	03840288 	ori	$r8,$r20,0x100
1c001ca8:	00102611 	add.w	$r17,$r16,$r9
1c001cac:	00107bed 	add.w	$r13,$r31,$r30
1c001cb0:	001078a7 	add.w	$r7,$r5,$r30
1c001cb4:	00107909 	add.w	$r9,$r8,$r30
1c001cb8:	001005a4 	add.w	$r4,$r13,$r1
1c001cbc:	00102ce6 	add.w	$r6,$r7,$r11
1c001cc0:	00103921 	add.w	$r1,$r9,$r14
1c001cc4:	0010466b 	add.w	$r11,$r19,$r17
1c001cc8:	00101270 	add.w	$r16,$r19,$r4
1c001ccc:	0010066e 	add.w	$r14,$r19,$r1
1c001cd0:	2a3c0171 	ld.bu	$r17,$r11,-256(0xf00)
1c001cd4:	00101a6f 	add.w	$r15,$r19,$r6
1c001cd8:	2a3c021f 	ld.bu	$r31,$r16,-256(0xf00)
1c001cdc:	2a3c01c4 	ld.bu	$r4,$r14,-256(0xf00)
1c001ce0:	03840285 	ori	$r5,$r20,0x100
1c001ce4:	001078a7 	add.w	$r7,$r5,$r30
1c001ce8:	03840288 	ori	$r8,$r20,0x100
1c001cec:	0384028e 	ori	$r14,$r20,0x100
1c001cf0:	2a3c01ed 	ld.bu	$r13,$r15,-256(0xf00)
1c001cf4:	001044e6 	add.w	$r6,$r7,$r17
1c001cf8:	00107909 	add.w	$r9,$r8,$r30
1c001cfc:	0384028b 	ori	$r11,$r20,0x100
1c001d00:	001079d1 	add.w	$r17,$r14,$r30
1c001d04:	00107d21 	add.w	$r1,$r9,$r31
1c001d08:	00107970 	add.w	$r16,$r11,$r30
1c001d0c:	0010123f 	add.w	$r31,$r17,$r4
1c001d10:	0010360f 	add.w	$r15,$r16,$r13
1c001d14:	00107e67 	add.w	$r7,$r19,$r31
1c001d18:	00101a6d 	add.w	$r13,$r19,$r6
1c001d1c:	00100664 	add.w	$r4,$r19,$r1
1c001d20:	2a3c01a6 	ld.bu	$r6,$r13,-256(0xf00)
1c001d24:	2a3c00e1 	ld.bu	$r1,$r7,-256(0xf00)
1c001d28:	2a00118b 	ld.bu	$r11,$r12,4(0x4)
1c001d2c:	2a001590 	ld.bu	$r16,$r12,5(0x5)
1c001d30:	00103e65 	add.w	$r5,$r19,$r15
1c001d34:	2a3c0088 	ld.bu	$r8,$r4,-256(0xf00)
1c001d38:	2a00198f 	ld.bu	$r15,$r12,6(0x6)
1c001d3c:	2a001d8e 	ld.bu	$r14,$r12,7(0x7)
1c001d40:	2a3c00a9 	ld.bu	$r9,$r5,-256(0xf00)
1c001d44:	03840291 	ori	$r17,$r20,0x100
1c001d48:	03840284 	ori	$r4,$r20,0x100
1c001d4c:	29000186 	st.b	$r6,$r12,0
1c001d50:	29000d81 	st.b	$r1,$r12,3(0x3)
1c001d54:	00107a3f 	add.w	$r31,$r17,$r30
1c001d58:	00107885 	add.w	$r5,$r4,$r30
1c001d5c:	03840286 	ori	$r6,$r20,0x100
1c001d60:	03840281 	ori	$r1,$r20,0x100
1c001d64:	29000588 	st.b	$r8,$r12,1(0x1)
1c001d68:	00102fed 	add.w	$r13,$r31,$r11
1c001d6c:	001040a7 	add.w	$r7,$r5,$r16
1c001d70:	001078c8 	add.w	$r8,$r6,$r30
1c001d74:	0010782b 	add.w	$r11,$r1,$r30
1c001d78:	29000989 	st.b	$r9,$r12,2(0x2)
1c001d7c:	0010396e 	add.w	$r14,$r11,$r14
1c001d80:	00103d09 	add.w	$r9,$r8,$r15
1c001d84:	00101e70 	add.w	$r16,$r19,$r7
1c001d88:	00103671 	add.w	$r17,$r19,$r13
1c001d8c:	0010266f 	add.w	$r15,$r19,$r9
1c001d90:	00103a7f 	add.w	$r31,$r19,$r14
1c001d94:	2a3c022d 	ld.bu	$r13,$r17,-256(0xf00)
1c001d98:	2a3c0204 	ld.bu	$r4,$r16,-256(0xf00)
1c001d9c:	2a3c03e6 	ld.bu	$r6,$r31,-256(0xf00)
1c001da0:	03840285 	ori	$r5,$r20,0x100
1c001da4:	03840281 	ori	$r1,$r20,0x100
1c001da8:	2a3c01e7 	ld.bu	$r7,$r15,-256(0xf00)
1c001dac:	001078a8 	add.w	$r8,$r5,$r30
1c001db0:	0010782b 	add.w	$r11,$r1,$r30
1c001db4:	0384028e 	ori	$r14,$r20,0x100
1c001db8:	03840294 	ori	$r20,$r20,0x100
1c001dbc:	00103509 	add.w	$r9,$r8,$r13
1c001dc0:	00101170 	add.w	$r16,$r11,$r4
1c001dc4:	001079d1 	add.w	$r17,$r14,$r30
1c001dc8:	00107a9f 	add.w	$r31,$r20,$r30
1c001dcc:	00101e2f 	add.w	$r15,$r17,$r7
1c001dd0:	00101bed 	add.w	$r13,$r31,$r6
1c001dd4:	00102664 	add.w	$r4,$r19,$r9
1c001dd8:	00104267 	add.w	$r7,$r19,$r16
1c001ddc:	00103e66 	add.w	$r6,$r19,$r15
1c001de0:	00103665 	add.w	$r5,$r19,$r13
1c001de4:	2a3c0088 	ld.bu	$r8,$r4,-256(0xf00)
1c001de8:	2a3c00e9 	ld.bu	$r9,$r7,-256(0xf00)
1c001dec:	2a3c00c1 	ld.bu	$r1,$r6,-256(0xf00)
1c001df0:	2a3c00ab 	ld.bu	$r11,$r5,-256(0xf00)
1c001df4:	29001188 	st.b	$r8,$r12,4(0x4)
1c001df8:	29001589 	st.b	$r9,$r12,5(0x5)
1c001dfc:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c001e00:	293ff981 	st.b	$r1,$r12,-2(0xffe)
1c001e04:	293ffd8b 	st.b	$r11,$r12,-1(0xfff)
1c001e08:	5ffe7596 	bne	$r12,$r22,-396(0x3fe74) # 1c001c7c <shell17_main+0x41c>
1c001e0c:	02800654 	addi.w	$r20,$r18,1(0x1)
1c001e10:	02800a52 	addi.w	$r18,$r18,2(0x2)
1c001e14:	63fcba5b 	blt	$r18,$r27,-840(0x3fcb8) # 1c001acc <shell17_main+0x26c>
1c001e18:	15ffff9b 	lu12i.w	$r27,-4(0xffffc)
1c001e1c:	03400000 	andi	$r0,$r0,0x0
1c001e20:	1c000fcc 	pcaddu12i	$r12,126(0x7e)
1c001e24:	2899518c 	ld.w	$r12,$r12,1620(0x654)
1c001e28:	001132d3 	sub.w	$r19,$r22,$r12
1c001e2c:	03401e70 	andi	$r16,$r19,0x7
1c001e30:	58015200 	beq	$r16,$r0,336(0x150) # 1c001f80 <shell17_main+0x720>
1c001e34:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001e38:	58011e0e 	beq	$r16,$r14,284(0x11c) # 1c001f54 <shell17_main+0x6f4>
1c001e3c:	02800811 	addi.w	$r17,$r0,2(0x2)
1c001e40:	5800ee11 	beq	$r16,$r17,236(0xec) # 1c001f2c <shell17_main+0x6cc>
1c001e44:	02800c0f 	addi.w	$r15,$r0,3(0x3)
1c001e48:	5800be0f 	beq	$r16,$r15,188(0xbc) # 1c001f04 <shell17_main+0x6a4>
1c001e4c:	0280101e 	addi.w	$r30,$r0,4(0x4)
1c001e50:	58008e1e 	beq	$r16,$r30,140(0x8c) # 1c001edc <shell17_main+0x67c>
1c001e54:	0280141f 	addi.w	$r31,$r0,5(0x5)
1c001e58:	58005e1f 	beq	$r16,$r31,92(0x5c) # 1c001eb4 <shell17_main+0x654>
1c001e5c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c001e60:	58002e0d 	beq	$r16,$r13,44(0x2c) # 1c001e8c <shell17_main+0x62c>
1c001e64:	2a000184 	ld.bu	$r4,$r12,0
1c001e68:	14000087 	lu12i.w	$r7,4(0x4)
1c001e6c:	038400e6 	ori	$r6,$r7,0x100
1c001e70:	02804065 	addi.w	$r5,$r3,16(0x10)
1c001e74:	001014c8 	add.w	$r8,$r6,$r5
1c001e78:	00101109 	add.w	$r9,$r8,$r4
1c001e7c:	00102761 	add.w	$r1,$r27,$r9
1c001e80:	2a3c002b 	ld.bu	$r11,$r1,-256(0xf00)
1c001e84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e88:	293ffd8b 	st.b	$r11,$r12,-1(0xfff)
1c001e8c:	2a000192 	ld.bu	$r18,$r12,0
1c001e90:	14000093 	lu12i.w	$r19,4(0x4)
1c001e94:	0384026e 	ori	$r14,$r19,0x100
1c001e98:	02804070 	addi.w	$r16,$r3,16(0x10)
1c001e9c:	001041d1 	add.w	$r17,$r14,$r16
1c001ea0:	00104a2f 	add.w	$r15,$r17,$r18
1c001ea4:	00103f7e 	add.w	$r30,$r27,$r15
1c001ea8:	2a3c03df 	ld.bu	$r31,$r30,-256(0xf00)
1c001eac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001eb0:	293ffd9f 	st.b	$r31,$r12,-1(0xfff)
1c001eb4:	2a00018d 	ld.bu	$r13,$r12,0
1c001eb8:	14000084 	lu12i.w	$r4,4(0x4)
1c001ebc:	03840087 	ori	$r7,$r4,0x100
1c001ec0:	02804066 	addi.w	$r6,$r3,16(0x10)
1c001ec4:	001018e5 	add.w	$r5,$r7,$r6
1c001ec8:	001034a8 	add.w	$r8,$r5,$r13
1c001ecc:	00102369 	add.w	$r9,$r27,$r8
1c001ed0:	2a3c0121 	ld.bu	$r1,$r9,-256(0xf00)
1c001ed4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ed8:	293ffd81 	st.b	$r1,$r12,-1(0xfff)
1c001edc:	2a00018b 	ld.bu	$r11,$r12,0
1c001ee0:	14000092 	lu12i.w	$r18,4(0x4)
1c001ee4:	03840253 	ori	$r19,$r18,0x100
1c001ee8:	0280406e 	addi.w	$r14,$r3,16(0x10)
1c001eec:	00103a70 	add.w	$r16,$r19,$r14
1c001ef0:	00102e11 	add.w	$r17,$r16,$r11
1c001ef4:	0010476f 	add.w	$r15,$r27,$r17
1c001ef8:	2a3c01fe 	ld.bu	$r30,$r15,-256(0xf00)
1c001efc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f00:	293ffd9e 	st.b	$r30,$r12,-1(0xfff)
1c001f04:	2a00019f 	ld.bu	$r31,$r12,0
1c001f08:	1400008d 	lu12i.w	$r13,4(0x4)
1c001f0c:	038401a4 	ori	$r4,$r13,0x100
1c001f10:	02804067 	addi.w	$r7,$r3,16(0x10)
1c001f14:	00101c86 	add.w	$r6,$r4,$r7
1c001f18:	00107cc5 	add.w	$r5,$r6,$r31
1c001f1c:	00101768 	add.w	$r8,$r27,$r5
1c001f20:	2a3c0109 	ld.bu	$r9,$r8,-256(0xf00)
1c001f24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f28:	293ffd89 	st.b	$r9,$r12,-1(0xfff)
1c001f2c:	2a000181 	ld.bu	$r1,$r12,0
1c001f30:	1400008b 	lu12i.w	$r11,4(0x4)
1c001f34:	03840172 	ori	$r18,$r11,0x100
1c001f38:	02804073 	addi.w	$r19,$r3,16(0x10)
1c001f3c:	00104e4e 	add.w	$r14,$r18,$r19
1c001f40:	001005d0 	add.w	$r16,$r14,$r1
1c001f44:	00104371 	add.w	$r17,$r27,$r16
1c001f48:	2a3c022f 	ld.bu	$r15,$r17,-256(0xf00)
1c001f4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f50:	293ffd8f 	st.b	$r15,$r12,-1(0xfff)
1c001f54:	2a00019e 	ld.bu	$r30,$r12,0
1c001f58:	1400009f 	lu12i.w	$r31,4(0x4)
1c001f5c:	038403ed 	ori	$r13,$r31,0x100
1c001f60:	02804064 	addi.w	$r4,$r3,16(0x10)
1c001f64:	001011a7 	add.w	$r7,$r13,$r4
1c001f68:	001078e6 	add.w	$r6,$r7,$r30
1c001f6c:	00101b65 	add.w	$r5,$r27,$r6
1c001f70:	2a3c00a8 	ld.bu	$r8,$r5,-256(0xf00)
1c001f74:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f78:	293ffd88 	st.b	$r8,$r12,-1(0xfff)
1c001f7c:	5800f596 	beq	$r12,$r22,244(0xf4) # 1c002070 <shell17_main+0x810>
1c001f80:	2a000181 	ld.bu	$r1,$r12,0
1c001f84:	1400009e 	lu12i.w	$r30,4(0x4)
1c001f88:	2a00058b 	ld.bu	$r11,$r12,1(0x1)
1c001f8c:	2a000993 	ld.bu	$r19,$r12,2(0x2)
1c001f90:	02804069 	addi.w	$r9,$r3,16(0x10)
1c001f94:	038403df 	ori	$r31,$r30,0x100
1c001f98:	001027ed 	add.w	$r13,$r31,$r9
1c001f9c:	038403c4 	ori	$r4,$r30,0x100
1c001fa0:	038403c8 	ori	$r8,$r30,0x100
1c001fa4:	2a000d92 	ld.bu	$r18,$r12,3(0x3)
1c001fa8:	00102487 	add.w	$r7,$r4,$r9
1c001fac:	001005a6 	add.w	$r6,$r13,$r1
1c001fb0:	00102501 	add.w	$r1,$r8,$r9
1c001fb4:	2a001191 	ld.bu	$r17,$r12,4(0x4)
1c001fb8:	2a001590 	ld.bu	$r16,$r12,5(0x5)
1c001fbc:	2a00198f 	ld.bu	$r15,$r12,6(0x6)
1c001fc0:	2a001d8e 	ld.bu	$r14,$r12,7(0x7)
1c001fc4:	00102ce5 	add.w	$r5,$r7,$r11
1c001fc8:	00104c2b 	add.w	$r11,$r1,$r19
1c001fcc:	038403d3 	ori	$r19,$r30,0x100
1c001fd0:	0010267f 	add.w	$r31,$r19,$r9
1c001fd4:	038403cd 	ori	$r13,$r30,0x100
1c001fd8:	038403c7 	ori	$r7,$r30,0x100
1c001fdc:	038403c1 	ori	$r1,$r30,0x100
1c001fe0:	038403de 	ori	$r30,$r30,0x100
1c001fe4:	001025a4 	add.w	$r4,$r13,$r9
1c001fe8:	001024e8 	add.w	$r8,$r7,$r9
1c001fec:	00102433 	add.w	$r19,$r1,$r9
1c001ff0:	00104bf2 	add.w	$r18,$r31,$r18
1c001ff4:	001027df 	add.w	$r31,$r30,$r9
1c001ff8:	00104491 	add.w	$r17,$r4,$r17
1c001ffc:	00104110 	add.w	$r16,$r8,$r16
1c002000:	00103e6f 	add.w	$r15,$r19,$r15
1c002004:	00103bee 	add.w	$r14,$r31,$r14
1c002008:	00101b66 	add.w	$r6,$r27,$r6
1c00200c:	00101765 	add.w	$r5,$r27,$r5
1c002010:	00102f6b 	add.w	$r11,$r27,$r11
1c002014:	00104b72 	add.w	$r18,$r27,$r18
1c002018:	0010476d 	add.w	$r13,$r27,$r17
1c00201c:	00104367 	add.w	$r7,$r27,$r16
1c002020:	00103f68 	add.w	$r8,$r27,$r15
1c002024:	00103b61 	add.w	$r1,$r27,$r14
1c002028:	2a3c00d3 	ld.bu	$r19,$r6,-256(0xf00)
1c00202c:	2a3c00be 	ld.bu	$r30,$r5,-256(0xf00)
1c002030:	2a3c0164 	ld.bu	$r4,$r11,-256(0xf00)
1c002034:	2a3c0249 	ld.bu	$r9,$r18,-256(0xf00)
1c002038:	2a3c01b1 	ld.bu	$r17,$r13,-256(0xf00)
1c00203c:	2a3c00f0 	ld.bu	$r16,$r7,-256(0xf00)
1c002040:	2a3c010f 	ld.bu	$r15,$r8,-256(0xf00)
1c002044:	2a3c003f 	ld.bu	$r31,$r1,-256(0xf00)
1c002048:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00204c:	293fe193 	st.b	$r19,$r12,-8(0xff8)
1c002050:	293fe59e 	st.b	$r30,$r12,-7(0xff9)
1c002054:	293fe984 	st.b	$r4,$r12,-6(0xffa)
1c002058:	293fed89 	st.b	$r9,$r12,-5(0xffb)
1c00205c:	293ff191 	st.b	$r17,$r12,-4(0xffc)
1c002060:	293ff590 	st.b	$r16,$r12,-3(0xffd)
1c002064:	293ff98f 	st.b	$r15,$r12,-2(0xffe)
1c002068:	293ffd9f 	st.b	$r31,$r12,-1(0xfff)
1c00206c:	5fff1596 	bne	$r12,$r22,-236(0x3ff14) # 1c001f80 <shell17_main+0x720>
1c002070:	02800694 	addi.w	$r20,$r20,1(0x1)
1c002074:	63fdae8a 	blt	$r20,$r10,-596(0x3fdac) # 1c001e20 <shell17_main+0x5c0>
1c002078:	54457800 	bl	17784(0x4578) # 1c0065f0 <get_clock>
1c00207c:	28800347 	ld.w	$r7,$r26,0
1c002080:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c002084:	288fd3ff 	ld.w	$r31,$r31,1012(0x3f4)
1c002088:	1c000fdb 	pcaddu12i	$r27,126(0x7e)
1c00208c:	288f937b 	ld.w	$r27,$r27,996(0x3e4)
1c002090:	00117ece 	sub.w	$r14,$r22,$r31
1c002094:	29802067 	st.w	$r7,$r3,8(0x8)
1c002098:	29800364 	st.w	$r4,$r27,0
1c00209c:	03401dc6 	andi	$r6,$r14,0x7
1c0020a0:	0015008a 	move	$r10,$r4
1c0020a4:	001503ec 	move	$r12,$r31
1c0020a8:	2a002065 	ld.bu	$r5,$r3,8(0x8)
1c0020ac:	580080c0 	beq	$r6,$r0,128(0x80) # 1c00212c <shell17_main+0x8cc>
1c0020b0:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c0020b4:	580068cb 	beq	$r6,$r11,104(0x68) # 1c00211c <shell17_main+0x8bc>
1c0020b8:	02800812 	addi.w	$r18,$r0,2(0x2)
1c0020bc:	580054d2 	beq	$r6,$r18,84(0x54) # 1c002110 <shell17_main+0x8b0>
1c0020c0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0020c4:	580040cd 	beq	$r6,$r13,64(0x40) # 1c002104 <shell17_main+0x8a4>
1c0020c8:	02801008 	addi.w	$r8,$r0,4(0x4)
1c0020cc:	58002cc8 	beq	$r6,$r8,44(0x2c) # 1c0020f8 <shell17_main+0x898>
1c0020d0:	02801401 	addi.w	$r1,$r0,5(0x5)
1c0020d4:	580018c1 	beq	$r6,$r1,24(0x18) # 1c0020ec <shell17_main+0x88c>
1c0020d8:	02801813 	addi.w	$r19,$r0,6(0x6)
1c0020dc:	5c3ad4d3 	bne	$r6,$r19,15060(0x3ad4) # 1c005bb0 <shell17_main+0x4350>
1c0020e0:	2a000186 	ld.bu	$r6,$r12,0
1c0020e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020e8:	5c3ad8c5 	bne	$r6,$r5,15064(0x3ad8) # 1c005bc0 <shell17_main+0x4360>
1c0020ec:	2a000186 	ld.bu	$r6,$r12,0
1c0020f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020f4:	5c3accc5 	bne	$r6,$r5,15052(0x3acc) # 1c005bc0 <shell17_main+0x4360>
1c0020f8:	2a000186 	ld.bu	$r6,$r12,0
1c0020fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002100:	5c3ac0c5 	bne	$r6,$r5,15040(0x3ac0) # 1c005bc0 <shell17_main+0x4360>
1c002104:	2a000186 	ld.bu	$r6,$r12,0
1c002108:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00210c:	5c3ab4c5 	bne	$r6,$r5,15028(0x3ab4) # 1c005bc0 <shell17_main+0x4360>
1c002110:	2a000186 	ld.bu	$r6,$r12,0
1c002114:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002118:	5c3aa8c5 	bne	$r6,$r5,15016(0x3aa8) # 1c005bc0 <shell17_main+0x4360>
1c00211c:	2a000186 	ld.bu	$r6,$r12,0
1c002120:	5c3aa0c5 	bne	$r6,$r5,15008(0x3aa0) # 1c005bc0 <shell17_main+0x4360>
1c002124:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002128:	58004d96 	beq	$r12,$r22,76(0x4c) # 1c002174 <shell17_main+0x914>
1c00212c:	2a000186 	ld.bu	$r6,$r12,0
1c002130:	5c3a90c5 	bne	$r6,$r5,14992(0x3a90) # 1c005bc0 <shell17_main+0x4360>
1c002134:	2a000586 	ld.bu	$r6,$r12,1(0x1)
1c002138:	5c3a88c5 	bne	$r6,$r5,14984(0x3a88) # 1c005bc0 <shell17_main+0x4360>
1c00213c:	2a000986 	ld.bu	$r6,$r12,2(0x2)
1c002140:	5c3a80c5 	bne	$r6,$r5,14976(0x3a80) # 1c005bc0 <shell17_main+0x4360>
1c002144:	2a000d86 	ld.bu	$r6,$r12,3(0x3)
1c002148:	5c3a78c5 	bne	$r6,$r5,14968(0x3a78) # 1c005bc0 <shell17_main+0x4360>
1c00214c:	2a001186 	ld.bu	$r6,$r12,4(0x4)
1c002150:	5c3a70c5 	bne	$r6,$r5,14960(0x3a70) # 1c005bc0 <shell17_main+0x4360>
1c002154:	2a001586 	ld.bu	$r6,$r12,5(0x5)
1c002158:	5c3a68c5 	bne	$r6,$r5,14952(0x3a68) # 1c005bc0 <shell17_main+0x4360>
1c00215c:	2a001986 	ld.bu	$r6,$r12,6(0x6)
1c002160:	5c3a60c5 	bne	$r6,$r5,14944(0x3a60) # 1c005bc0 <shell17_main+0x4360>
1c002164:	2a001d86 	ld.bu	$r6,$r12,7(0x7)
1c002168:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00216c:	5c3a54c5 	bne	$r6,$r5,14932(0x3a54) # 1c005bc0 <shell17_main+0x4360>
1c002170:	5fffbd96 	bne	$r12,$r22,-68(0x3ffbc) # 1c00212c <shell17_main+0x8cc>
1c002174:	28800307 	ld.w	$r7,$r24,0
1c002178:	14001e9e 	lu12i.w	$r30,244(0xf4)
1c00217c:	038903c9 	ori	$r9,$r30,0x240
1c002180:	00111d51 	sub.w	$r17,$r10,$r7
1c002184:	02805006 	addi.w	$r6,$r0,20(0x14)
1c002188:	00212627 	div.wu	$r7,$r17,$r9
1c00218c:	5c000920 	bne	$r9,$r0,8(0x8) # 1c002194 <shell17_main+0x934>
1c002190:	002a0007 	break	0x7
1c002194:	1c000fc5 	pcaddu12i	$r5,126(0x7e)
1c002198:	02bab0a5 	addi.w	$r5,$r5,-340(0xeac)
1c00219c:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c0021a0:	02ba3084 	addi.w	$r4,$r4,-372(0xe8c)
1c0021a4:	543c5c00 	bl	15452(0x3c5c) # 1c005e00 <printf>
1c0021a8:	54444800 	bl	17480(0x4448) # 1c0065f0 <get_clock>
1c0021ac:	28800334 	ld.w	$r20,$r25,0
1c0021b0:	29800304 	st.w	$r4,$r24,0
1c0021b4:	00150013 	move	$r19,$r0
1c0021b8:	15ffff8f 	lu12i.w	$r15,-4(0xffffc)
1c0021bc:	64028014 	bge	$r0,$r20,640(0x280) # 1c00243c <shell17_main+0xbdc>
1c0021c0:	00117ec4 	sub.w	$r4,$r22,$r31
1c0021c4:	03401c90 	andi	$r16,$r4,0x7
1c0021c8:	1c000fcd 	pcaddu12i	$r13,126(0x7e)
1c0021cc:	288a71ad 	ld.w	$r13,$r13,668(0x29c)
1c0021d0:	001503ec 	move	$r12,$r31
1c0021d4:	58016e00 	beq	$r16,$r0,364(0x16c) # 1c002340 <shell17_main+0xae0>
1c0021d8:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c0021dc:	5801360a 	beq	$r16,$r10,308(0x134) # 1c002310 <shell17_main+0xab0>
1c0021e0:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c0021e4:	5801020e 	beq	$r16,$r14,256(0x100) # 1c0022e4 <shell17_main+0xa84>
1c0021e8:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c0021ec:	5800ce06 	beq	$r16,$r6,204(0xcc) # 1c0022b8 <shell17_main+0xa58>
1c0021f0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0021f4:	58009a05 	beq	$r16,$r5,152(0x98) # 1c00228c <shell17_main+0xa2c>
1c0021f8:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c0021fc:	5800660b 	beq	$r16,$r11,100(0x64) # 1c002260 <shell17_main+0xa00>
1c002200:	02801812 	addi.w	$r18,$r0,6(0x6)
1c002204:	58003212 	beq	$r16,$r18,48(0x30) # 1c002234 <shell17_main+0x9d4>
1c002208:	2a0003e8 	ld.bu	$r8,$r31,0
1c00220c:	14000081 	lu12i.w	$r1,4(0x4)
1c002210:	0384003e 	ori	$r30,$r1,0x100
1c002214:	02804069 	addi.w	$r9,$r3,16(0x10)
1c002218:	001027d1 	add.w	$r17,$r30,$r9
1c00221c:	00102227 	add.w	$r7,$r17,$r8
1c002220:	00101de4 	add.w	$r4,$r15,$r7
1c002224:	2a3c0090 	ld.bu	$r16,$r4,-256(0xf00)
1c002228:	028007ec 	addi.w	$r12,$r31,1(0x1)
1c00222c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002230:	293ffdb0 	st.b	$r16,$r13,-1(0xfff)
1c002234:	2a00018a 	ld.bu	$r10,$r12,0
1c002238:	1400008e 	lu12i.w	$r14,4(0x4)
1c00223c:	038401c6 	ori	$r6,$r14,0x100
1c002240:	02804065 	addi.w	$r5,$r3,16(0x10)
1c002244:	001014cb 	add.w	$r11,$r6,$r5
1c002248:	00102972 	add.w	$r18,$r11,$r10
1c00224c:	001049e8 	add.w	$r8,$r15,$r18
1c002250:	2a3c0101 	ld.bu	$r1,$r8,-256(0xf00)
1c002254:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002258:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00225c:	293ffda1 	st.b	$r1,$r13,-1(0xfff)
1c002260:	2a00019e 	ld.bu	$r30,$r12,0
1c002264:	14000089 	lu12i.w	$r9,4(0x4)
1c002268:	03840127 	ori	$r7,$r9,0x100
1c00226c:	02804071 	addi.w	$r17,$r3,16(0x10)
1c002270:	001044e4 	add.w	$r4,$r7,$r17
1c002274:	00107890 	add.w	$r16,$r4,$r30
1c002278:	001041ea 	add.w	$r10,$r15,$r16
1c00227c:	2a3c014e 	ld.bu	$r14,$r10,-256(0xf00)
1c002280:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002284:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002288:	293ffdae 	st.b	$r14,$r13,-1(0xfff)
1c00228c:	2a000186 	ld.bu	$r6,$r12,0
1c002290:	14000085 	lu12i.w	$r5,4(0x4)
1c002294:	038400ab 	ori	$r11,$r5,0x100
1c002298:	02804072 	addi.w	$r18,$r3,16(0x10)
1c00229c:	00104968 	add.w	$r8,$r11,$r18
1c0022a0:	00101901 	add.w	$r1,$r8,$r6
1c0022a4:	001005fe 	add.w	$r30,$r15,$r1
1c0022a8:	2a3c03c9 	ld.bu	$r9,$r30,-256(0xf00)
1c0022ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022b0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0022b4:	293ffda9 	st.b	$r9,$r13,-1(0xfff)
1c0022b8:	2a000187 	ld.bu	$r7,$r12,0
1c0022bc:	14000091 	lu12i.w	$r17,4(0x4)
1c0022c0:	03840224 	ori	$r4,$r17,0x100
1c0022c4:	02804070 	addi.w	$r16,$r3,16(0x10)
1c0022c8:	0010408a 	add.w	$r10,$r4,$r16
1c0022cc:	00101d4e 	add.w	$r14,$r10,$r7
1c0022d0:	001039e6 	add.w	$r6,$r15,$r14
1c0022d4:	2a3c00c5 	ld.bu	$r5,$r6,-256(0xf00)
1c0022d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022dc:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0022e0:	293ffda5 	st.b	$r5,$r13,-1(0xfff)
1c0022e4:	2a00018b 	ld.bu	$r11,$r12,0
1c0022e8:	14000092 	lu12i.w	$r18,4(0x4)
1c0022ec:	03840248 	ori	$r8,$r18,0x100
1c0022f0:	02804061 	addi.w	$r1,$r3,16(0x10)
1c0022f4:	0010051e 	add.w	$r30,$r8,$r1
1c0022f8:	00102fc9 	add.w	$r9,$r30,$r11
1c0022fc:	001025e7 	add.w	$r7,$r15,$r9
1c002300:	2a3c00f1 	ld.bu	$r17,$r7,-256(0xf00)
1c002304:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002308:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00230c:	293ffdb1 	st.b	$r17,$r13,-1(0xfff)
1c002310:	2a000184 	ld.bu	$r4,$r12,0
1c002314:	14000090 	lu12i.w	$r16,4(0x4)
1c002318:	0384020a 	ori	$r10,$r16,0x100
1c00231c:	0280406e 	addi.w	$r14,$r3,16(0x10)
1c002320:	00103946 	add.w	$r6,$r10,$r14
1c002324:	001010c5 	add.w	$r5,$r6,$r4
1c002328:	001015eb 	add.w	$r11,$r15,$r5
1c00232c:	2a3c0172 	ld.bu	$r18,$r11,-256(0xf00)
1c002330:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002334:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002338:	293ffdb2 	st.b	$r18,$r13,-1(0xfff)
1c00233c:	5800f996 	beq	$r12,$r22,248(0xf8) # 1c002434 <shell17_main+0xbd4>
1c002340:	1400008e 	lu12i.w	$r14,4(0x4)
1c002344:	2a000188 	ld.bu	$r8,$r12,0
1c002348:	0280406a 	addi.w	$r10,$r3,16(0x10)
1c00234c:	038401c9 	ori	$r9,$r14,0x100
1c002350:	2a000581 	ld.bu	$r1,$r12,1(0x1)
1c002354:	2a00099e 	ld.bu	$r30,$r12,2(0x2)
1c002358:	00102927 	add.w	$r7,$r9,$r10
1c00235c:	038401c6 	ori	$r6,$r14,0x100
1c002360:	038401c9 	ori	$r9,$r14,0x100
1c002364:	2a000d85 	ld.bu	$r5,$r12,3(0x3)
1c002368:	2a001184 	ld.bu	$r4,$r12,4(0x4)
1c00236c:	001028d2 	add.w	$r18,$r6,$r10
1c002370:	2a00158b 	ld.bu	$r11,$r12,5(0x5)
1c002374:	038401c6 	ori	$r6,$r14,0x100
1c002378:	2a001991 	ld.bu	$r17,$r12,6(0x6)
1c00237c:	2a001d90 	ld.bu	$r16,$r12,7(0x7)
1c002380:	001020e8 	add.w	$r8,$r7,$r8
1c002384:	00102927 	add.w	$r7,$r9,$r10
1c002388:	038401c9 	ori	$r9,$r14,0x100
1c00238c:	00100641 	add.w	$r1,$r18,$r1
1c002390:	001078fe 	add.w	$r30,$r7,$r30
1c002394:	001028d2 	add.w	$r18,$r6,$r10
1c002398:	00102927 	add.w	$r7,$r9,$r10
1c00239c:	038401c6 	ori	$r6,$r14,0x100
1c0023a0:	038401c9 	ori	$r9,$r14,0x100
1c0023a4:	038401ce 	ori	$r14,$r14,0x100
1c0023a8:	00101645 	add.w	$r5,$r18,$r5
1c0023ac:	001010e4 	add.w	$r4,$r7,$r4
1c0023b0:	001028d2 	add.w	$r18,$r6,$r10
1c0023b4:	00102927 	add.w	$r7,$r9,$r10
1c0023b8:	001029c6 	add.w	$r6,$r14,$r10
1c0023bc:	001044f1 	add.w	$r17,$r7,$r17
1c0023c0:	001040d0 	add.w	$r16,$r6,$r16
1c0023c4:	00102e4b 	add.w	$r11,$r18,$r11
1c0023c8:	001021e8 	add.w	$r8,$r15,$r8
1c0023cc:	001005e1 	add.w	$r1,$r15,$r1
1c0023d0:	00102df2 	add.w	$r18,$r15,$r11
1c0023d4:	001079fe 	add.w	$r30,$r15,$r30
1c0023d8:	001015e5 	add.w	$r5,$r15,$r5
1c0023dc:	001011e4 	add.w	$r4,$r15,$r4
1c0023e0:	001045eb 	add.w	$r11,$r15,$r17
1c0023e4:	001041e9 	add.w	$r9,$r15,$r16
1c0023e8:	2a3c010e 	ld.bu	$r14,$r8,-256(0xf00)
1c0023ec:	2a3c0027 	ld.bu	$r7,$r1,-256(0xf00)
1c0023f0:	2a3c03ca 	ld.bu	$r10,$r30,-256(0xf00)
1c0023f4:	2a3c00a6 	ld.bu	$r6,$r5,-256(0xf00)
1c0023f8:	2a3c0088 	ld.bu	$r8,$r4,-256(0xf00)
1c0023fc:	2a3c0241 	ld.bu	$r1,$r18,-256(0xf00)
1c002400:	2a3c0171 	ld.bu	$r17,$r11,-256(0xf00)
1c002404:	2a3c0130 	ld.bu	$r16,$r9,-256(0xf00)
1c002408:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c00240c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c002410:	293fe1ae 	st.b	$r14,$r13,-8(0xff8)
1c002414:	293fe5a7 	st.b	$r7,$r13,-7(0xff9)
1c002418:	293fe9aa 	st.b	$r10,$r13,-6(0xffa)
1c00241c:	293feda6 	st.b	$r6,$r13,-5(0xffb)
1c002420:	293ff1a8 	st.b	$r8,$r13,-4(0xffc)
1c002424:	293ff5a1 	st.b	$r1,$r13,-3(0xffd)
1c002428:	293ff9b1 	st.b	$r17,$r13,-2(0xffe)
1c00242c:	293ffdb0 	st.b	$r16,$r13,-1(0xfff)
1c002430:	5fff1196 	bne	$r12,$r22,-240(0x3ff10) # 1c002340 <shell17_main+0xae0>
1c002434:	02800673 	addi.w	$r19,$r19,1(0x1)
1c002438:	5ffd8a74 	bne	$r19,$r20,-632(0x3fd88) # 1c0021c0 <shell17_main+0x960>
1c00243c:	5441b400 	bl	16820(0x41b4) # 1c0065f0 <get_clock>
1c002440:	28800347 	ld.w	$r7,$r26,0
1c002444:	1c000fde 	pcaddu12i	$r30,126(0x7e)
1c002448:	288083de 	ld.w	$r30,$r30,32(0x20)
1c00244c:	028053cf 	addi.w	$r15,$r30,20(0x14)
1c002450:	29803067 	st.w	$r7,$r3,12(0xc)
1c002454:	2a00306d 	ld.bu	$r13,$r3,12(0xc)
1c002458:	29800364 	st.w	$r4,$r27,0
1c00245c:	2980206f 	st.w	$r15,$r3,8(0x8)
1c002460:	001503cc 	move	$r12,$r30
1c002464:	2a000186 	ld.bu	$r6,$r12,0
1c002468:	5c3728cd 	bne	$r6,$r13,14120(0x3728) # 1c005b90 <shell17_main+0x4330>
1c00246c:	2a000586 	ld.bu	$r6,$r12,1(0x1)
1c002470:	02800585 	addi.w	$r5,$r12,1(0x1)
1c002474:	5c371ccd 	bne	$r6,$r13,14108(0x371c) # 1c005b90 <shell17_main+0x4330>
1c002478:	2a000986 	ld.bu	$r6,$r12,2(0x2)
1c00247c:	5c3714cd 	bne	$r6,$r13,14100(0x3714) # 1c005b90 <shell17_main+0x4330>
1c002480:	2a000d86 	ld.bu	$r6,$r12,3(0x3)
1c002484:	5c370ccd 	bne	$r6,$r13,14092(0x370c) # 1c005b90 <shell17_main+0x4330>
1c002488:	2a001186 	ld.bu	$r6,$r12,4(0x4)
1c00248c:	5c3704cd 	bne	$r6,$r13,14084(0x3704) # 1c005b90 <shell17_main+0x4330>
1c002490:	2a001586 	ld.bu	$r6,$r12,5(0x5)
1c002494:	5c36fccd 	bne	$r6,$r13,14076(0x36fc) # 1c005b90 <shell17_main+0x4330>
1c002498:	2a001986 	ld.bu	$r6,$r12,6(0x6)
1c00249c:	5c36f4cd 	bne	$r6,$r13,14068(0x36f4) # 1c005b90 <shell17_main+0x4330>
1c0024a0:	2a001d86 	ld.bu	$r6,$r12,7(0x7)
1c0024a4:	5c36eccd 	bne	$r6,$r13,14060(0x36ec) # 1c005b90 <shell17_main+0x4330>
1c0024a8:	2a002186 	ld.bu	$r6,$r12,8(0x8)
1c0024ac:	5c36e4cd 	bne	$r6,$r13,14052(0x36e4) # 1c005b90 <shell17_main+0x4330>
1c0024b0:	2a002586 	ld.bu	$r6,$r12,9(0x9)
1c0024b4:	5c36dccd 	bne	$r6,$r13,14044(0x36dc) # 1c005b90 <shell17_main+0x4330>
1c0024b8:	28802072 	ld.w	$r18,$r3,8(0x8)
1c0024bc:	028024ac 	addi.w	$r12,$r5,9(0x9)
1c0024c0:	5fffa592 	bne	$r12,$r18,-92(0x3ffa4) # 1c002464 <shell17_main+0xc04>
1c0024c4:	2880030b 	ld.w	$r11,$r24,0
1c0024c8:	14001e89 	lu12i.w	$r9,244(0xf4)
1c0024cc:	0389012e 	ori	$r14,$r9,0x240
1c0024d0:	00112c84 	sub.w	$r4,$r4,$r11
1c0024d4:	00213887 	div.wu	$r7,$r4,$r14
1c0024d8:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c0024e0 <shell17_main+0xc80>
1c0024dc:	002a0007 	break	0x7
1c0024e0:	02805006 	addi.w	$r6,$r0,20(0x14)
1c0024e4:	1c000fc5 	pcaddu12i	$r5,126(0x7e)
1c0024e8:	02ae00a5 	addi.w	$r5,$r5,-1152(0xb80)
1c0024ec:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c0024f0:	02acf084 	addi.w	$r4,$r4,-1220(0xb3c)
1c0024f4:	54390c00 	bl	14604(0x390c) # 1c005e00 <printf>
1c0024f8:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c0024fc:	2980032a 	st.w	$r10,$r25,0
1c002500:	5440f000 	bl	16624(0x40f0) # 1c0065f0 <get_clock>
1c002504:	2880032b 	ld.w	$r11,$r25,0
1c002508:	29800304 	st.w	$r4,$r24,0
1c00250c:	6402c00b 	bge	$r0,$r11,704(0x2c0) # 1c0027cc <shell17_main+0xf6c>
1c002510:	02800806 	addi.w	$r6,$r0,2(0x2)
1c002514:	02bffd61 	addi.w	$r1,$r11,-1(0xfff)
1c002518:	00150008 	move	$r8,$r0
1c00251c:	6401accb 	bge	$r6,$r11,428(0x1ac) # 1c0026c8 <shell17_main+0xe68>
1c002520:	02800411 	addi.w	$r17,$r0,1(0x1)
1c002524:	15ffff94 	lu12i.w	$r20,-4(0xffffc)
1c002528:	001503ec 	move	$r12,$r31
1c00252c:	1400008d 	lu12i.w	$r13,4(0x4)
1c002530:	2a000188 	ld.bu	$r8,$r12,0
1c002534:	02804073 	addi.w	$r19,$r3,16(0x10)
1c002538:	038401b0 	ori	$r16,$r13,0x100
1c00253c:	00104e0f 	add.w	$r15,$r16,$r19
1c002540:	001021e5 	add.w	$r5,$r15,$r8
1c002544:	2a000588 	ld.bu	$r8,$r12,1(0x1)
1c002548:	00101692 	add.w	$r18,$r20,$r5
1c00254c:	038401b0 	ori	$r16,$r13,0x100
1c002550:	2a3c0249 	ld.bu	$r9,$r18,-256(0xf00)
1c002554:	00104e0f 	add.w	$r15,$r16,$r19
1c002558:	001021e5 	add.w	$r5,$r15,$r8
1c00255c:	038401ae 	ori	$r14,$r13,0x100
1c002560:	2a000988 	ld.bu	$r8,$r12,2(0x2)
1c002564:	00104dc4 	add.w	$r4,$r14,$r19
1c002568:	00101692 	add.w	$r18,$r20,$r5
1c00256c:	038401b0 	ori	$r16,$r13,0x100
1c002570:	00102487 	add.w	$r7,$r4,$r9
1c002574:	00104e0f 	add.w	$r15,$r16,$r19
1c002578:	2a3c0249 	ld.bu	$r9,$r18,-256(0xf00)
1c00257c:	001021e5 	add.w	$r5,$r15,$r8
1c002580:	038401ae 	ori	$r14,$r13,0x100
1c002584:	2a000d88 	ld.bu	$r8,$r12,3(0x3)
1c002588:	00104dc4 	add.w	$r4,$r14,$r19
1c00258c:	00101692 	add.w	$r18,$r20,$r5
1c002590:	038401b0 	ori	$r16,$r13,0x100
1c002594:	00101e8a 	add.w	$r10,$r20,$r7
1c002598:	00104e0f 	add.w	$r15,$r16,$r19
1c00259c:	00102487 	add.w	$r7,$r4,$r9
1c0025a0:	2a3c0249 	ld.bu	$r9,$r18,-256(0xf00)
1c0025a4:	001021e5 	add.w	$r5,$r15,$r8
1c0025a8:	038401ae 	ori	$r14,$r13,0x100
1c0025ac:	2a001188 	ld.bu	$r8,$r12,4(0x4)
1c0025b0:	2a3c0146 	ld.bu	$r6,$r10,-256(0xf00)
1c0025b4:	00104dc4 	add.w	$r4,$r14,$r19
1c0025b8:	00101692 	add.w	$r18,$r20,$r5
1c0025bc:	038401b0 	ori	$r16,$r13,0x100
1c0025c0:	00101e8a 	add.w	$r10,$r20,$r7
1c0025c4:	00104e0f 	add.w	$r15,$r16,$r19
1c0025c8:	00102487 	add.w	$r7,$r4,$r9
1c0025cc:	2a3c0249 	ld.bu	$r9,$r18,-256(0xf00)
1c0025d0:	001021e5 	add.w	$r5,$r15,$r8
1c0025d4:	038401ae 	ori	$r14,$r13,0x100
1c0025d8:	2a001588 	ld.bu	$r8,$r12,5(0x5)
1c0025dc:	00104dc4 	add.w	$r4,$r14,$r19
1c0025e0:	00101692 	add.w	$r18,$r20,$r5
1c0025e4:	038401b0 	ori	$r16,$r13,0x100
1c0025e8:	29000186 	st.b	$r6,$r12,0
1c0025ec:	2a3c0146 	ld.bu	$r6,$r10,-256(0xf00)
1c0025f0:	00104e0f 	add.w	$r15,$r16,$r19
1c0025f4:	00101e8a 	add.w	$r10,$r20,$r7
1c0025f8:	00102487 	add.w	$r7,$r4,$r9
1c0025fc:	2a3c0249 	ld.bu	$r9,$r18,-256(0xf00)
1c002600:	001021e5 	add.w	$r5,$r15,$r8
1c002604:	038401ae 	ori	$r14,$r13,0x100
1c002608:	2a001988 	ld.bu	$r8,$r12,6(0x6)
1c00260c:	00104dc4 	add.w	$r4,$r14,$r19
1c002610:	00101692 	add.w	$r18,$r20,$r5
1c002614:	038401b0 	ori	$r16,$r13,0x100
1c002618:	29000586 	st.b	$r6,$r12,1(0x1)
1c00261c:	2a3c0146 	ld.bu	$r6,$r10,-256(0xf00)
1c002620:	00104e0f 	add.w	$r15,$r16,$r19
1c002624:	00101e8a 	add.w	$r10,$r20,$r7
1c002628:	00102487 	add.w	$r7,$r4,$r9
1c00262c:	2a3c0249 	ld.bu	$r9,$r18,-256(0xf00)
1c002630:	001021e5 	add.w	$r5,$r15,$r8
1c002634:	038401ae 	ori	$r14,$r13,0x100
1c002638:	2a001d88 	ld.bu	$r8,$r12,7(0x7)
1c00263c:	00104dc4 	add.w	$r4,$r14,$r19
1c002640:	00101692 	add.w	$r18,$r20,$r5
1c002644:	29000986 	st.b	$r6,$r12,2(0x2)
1c002648:	038401b0 	ori	$r16,$r13,0x100
1c00264c:	2a3c0146 	ld.bu	$r6,$r10,-256(0xf00)
1c002650:	00104e0f 	add.w	$r15,$r16,$r19
1c002654:	00101e8a 	add.w	$r10,$r20,$r7
1c002658:	00102487 	add.w	$r7,$r4,$r9
1c00265c:	2a3c0249 	ld.bu	$r9,$r18,-256(0xf00)
1c002660:	038401ae 	ori	$r14,$r13,0x100
1c002664:	001021e5 	add.w	$r5,$r15,$r8
1c002668:	00104dc4 	add.w	$r4,$r14,$r19
1c00266c:	29000d86 	st.b	$r6,$r12,3(0x3)
1c002670:	00101692 	add.w	$r18,$r20,$r5
1c002674:	2a3c0146 	ld.bu	$r6,$r10,-256(0xf00)
1c002678:	00101e8a 	add.w	$r10,$r20,$r7
1c00267c:	00102487 	add.w	$r7,$r4,$r9
1c002680:	2a3c0249 	ld.bu	$r9,$r18,-256(0xf00)
1c002684:	038401ad 	ori	$r13,$r13,0x100
1c002688:	29001186 	st.b	$r6,$r12,4(0x4)
1c00268c:	00104dae 	add.w	$r14,$r13,$r19
1c002690:	2a3c0146 	ld.bu	$r6,$r10,-256(0xf00)
1c002694:	001025c4 	add.w	$r4,$r14,$r9
1c002698:	00101e8a 	add.w	$r10,$r20,$r7
1c00269c:	00101287 	add.w	$r7,$r20,$r4
1c0026a0:	29001586 	st.b	$r6,$r12,5(0x5)
1c0026a4:	2a3c0146 	ld.bu	$r6,$r10,-256(0xf00)
1c0026a8:	2a3c00ea 	ld.bu	$r10,$r7,-256(0xf00)
1c0026ac:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0026b0:	293ff986 	st.b	$r6,$r12,-2(0xffe)
1c0026b4:	293ffd8a 	st.b	$r10,$r12,-1(0xfff)
1c0026b8:	5ffe77ac 	bne	$r29,$r12,-396(0x3fe74) # 1c00252c <shell17_main+0xccc>
1c0026bc:	02800628 	addi.w	$r8,$r17,1(0x1)
1c0026c0:	02800a31 	addi.w	$r17,$r17,2(0x2)
1c0026c4:	63fe6621 	blt	$r17,$r1,-412(0x3fe64) # 1c002528 <shell17_main+0xcc8>
1c0026c8:	15ffff81 	lu12i.w	$r1,-4(0xffffc)
1c0026cc:	03400000 	andi	$r0,$r0,0x0
1c0026d0:	001503ea 	move	$r10,$r31
1c0026d4:	2a000146 	ld.bu	$r6,$r10,0
1c0026d8:	1400008e 	lu12i.w	$r14,4(0x4)
1c0026dc:	2a000545 	ld.bu	$r5,$r10,1(0x1)
1c0026e0:	2a00094d 	ld.bu	$r13,$r10,2(0x2)
1c0026e4:	02804069 	addi.w	$r9,$r3,16(0x10)
1c0026e8:	038401d0 	ori	$r16,$r14,0x100
1c0026ec:	2a000d54 	ld.bu	$r20,$r10,3(0x3)
1c0026f0:	2a001153 	ld.bu	$r19,$r10,4(0x4)
1c0026f4:	00102604 	add.w	$r4,$r16,$r9
1c0026f8:	038401d1 	ori	$r17,$r14,0x100
1c0026fc:	038401d0 	ori	$r16,$r14,0x100
1c002700:	2a001552 	ld.bu	$r18,$r10,5(0x5)
1c002704:	2a001947 	ld.bu	$r7,$r10,6(0x6)
1c002708:	2a001d4f 	ld.bu	$r15,$r10,7(0x7)
1c00270c:	0010188c 	add.w	$r12,$r4,$r6
1c002710:	00102626 	add.w	$r6,$r17,$r9
1c002714:	00102604 	add.w	$r4,$r16,$r9
1c002718:	038401d1 	ori	$r17,$r14,0x100
1c00271c:	038401d0 	ori	$r16,$r14,0x100
1c002720:	001014c5 	add.w	$r5,$r6,$r5
1c002724:	0010348d 	add.w	$r13,$r4,$r13
1c002728:	00102626 	add.w	$r6,$r17,$r9
1c00272c:	00102604 	add.w	$r4,$r16,$r9
1c002730:	038401d1 	ori	$r17,$r14,0x100
1c002734:	038401d0 	ori	$r16,$r14,0x100
1c002738:	038401ce 	ori	$r14,$r14,0x100
1c00273c:	001050d4 	add.w	$r20,$r6,$r20
1c002740:	00104c93 	add.w	$r19,$r4,$r19
1c002744:	00102626 	add.w	$r6,$r17,$r9
1c002748:	00102604 	add.w	$r4,$r16,$r9
1c00274c:	001025d1 	add.w	$r17,$r14,$r9
1c002750:	00101c87 	add.w	$r7,$r4,$r7
1c002754:	00103e2f 	add.w	$r15,$r17,$r15
1c002758:	001048d2 	add.w	$r18,$r6,$r18
1c00275c:	0010302c 	add.w	$r12,$r1,$r12
1c002760:	00101425 	add.w	$r5,$r1,$r5
1c002764:	00101c30 	add.w	$r16,$r1,$r7
1c002768:	0010342d 	add.w	$r13,$r1,$r13
1c00276c:	00105034 	add.w	$r20,$r1,$r20
1c002770:	00104c33 	add.w	$r19,$r1,$r19
1c002774:	00104832 	add.w	$r18,$r1,$r18
1c002778:	00103c27 	add.w	$r7,$r1,$r15
1c00277c:	2a3c0186 	ld.bu	$r6,$r12,-256(0xf00)
1c002780:	2a3c00ae 	ld.bu	$r14,$r5,-256(0xf00)
1c002784:	2a3c01a4 	ld.bu	$r4,$r13,-256(0xf00)
1c002788:	2a3c0289 	ld.bu	$r9,$r20,-256(0xf00)
1c00278c:	2a3c026c 	ld.bu	$r12,$r19,-256(0xf00)
1c002790:	2a3c0245 	ld.bu	$r5,$r18,-256(0xf00)
1c002794:	2a3c0211 	ld.bu	$r17,$r16,-256(0xf00)
1c002798:	2a3c00ef 	ld.bu	$r15,$r7,-256(0xf00)
1c00279c:	0280214a 	addi.w	$r10,$r10,8(0x8)
1c0027a0:	293fe146 	st.b	$r6,$r10,-8(0xff8)
1c0027a4:	293fe54e 	st.b	$r14,$r10,-7(0xff9)
1c0027a8:	293fe944 	st.b	$r4,$r10,-6(0xffa)
1c0027ac:	293fed49 	st.b	$r9,$r10,-5(0xffb)
1c0027b0:	293ff14c 	st.b	$r12,$r10,-4(0xffc)
1c0027b4:	293ff545 	st.b	$r5,$r10,-3(0xffd)
1c0027b8:	293ff951 	st.b	$r17,$r10,-2(0xffe)
1c0027bc:	293ffd4f 	st.b	$r15,$r10,-1(0xfff)
1c0027c0:	5fff17aa 	bne	$r29,$r10,-236(0x3ff14) # 1c0026d4 <shell17_main+0xe74>
1c0027c4:	02800508 	addi.w	$r8,$r8,1(0x1)
1c0027c8:	63ff090b 	blt	$r8,$r11,-248(0x3ff08) # 1c0026d0 <shell17_main+0xe70>
1c0027cc:	543e2400 	bl	15908(0x3e24) # 1c0065f0 <get_clock>
1c0027d0:	28800347 	ld.w	$r7,$r26,0
1c0027d4:	1c000fca 	pcaddu12i	$r10,126(0x7e)
1c0027d8:	28b2814a 	ld.w	$r10,$r10,-864(0xca0)
1c0027dc:	29800364 	st.w	$r4,$r27,0
1c0027e0:	29803067 	st.w	$r7,$r3,12(0xc)
1c0027e4:	2a00306b 	ld.bu	$r11,$r3,12(0xc)
1c0027e8:	2a000146 	ld.bu	$r6,$r10,0
1c0027ec:	5c3384cb 	bne	$r6,$r11,13188(0x3384) # 1c005b70 <shell17_main+0x4310>
1c0027f0:	2a000546 	ld.bu	$r6,$r10,1(0x1)
1c0027f4:	5c337ccb 	bne	$r6,$r11,13180(0x337c) # 1c005b70 <shell17_main+0x4310>
1c0027f8:	2a000946 	ld.bu	$r6,$r10,2(0x2)
1c0027fc:	5c3374cb 	bne	$r6,$r11,13172(0x3374) # 1c005b70 <shell17_main+0x4310>
1c002800:	2a000d46 	ld.bu	$r6,$r10,3(0x3)
1c002804:	5c336ccb 	bne	$r6,$r11,13164(0x336c) # 1c005b70 <shell17_main+0x4310>
1c002808:	2a001146 	ld.bu	$r6,$r10,4(0x4)
1c00280c:	5c3364cb 	bne	$r6,$r11,13156(0x3364) # 1c005b70 <shell17_main+0x4310>
1c002810:	2a001546 	ld.bu	$r6,$r10,5(0x5)
1c002814:	5c335ccb 	bne	$r6,$r11,13148(0x335c) # 1c005b70 <shell17_main+0x4310>
1c002818:	2a001946 	ld.bu	$r6,$r10,6(0x6)
1c00281c:	5c3354cb 	bne	$r6,$r11,13140(0x3354) # 1c005b70 <shell17_main+0x4310>
1c002820:	2a001d46 	ld.bu	$r6,$r10,7(0x7)
1c002824:	0280214a 	addi.w	$r10,$r10,8(0x8)
1c002828:	5c3348cb 	bne	$r6,$r11,13128(0x3348) # 1c005b70 <shell17_main+0x4310>
1c00282c:	5fffbfaa 	bne	$r29,$r10,-68(0x3ffbc) # 1c0027e8 <shell17_main+0xf88>
1c002830:	28800301 	ld.w	$r1,$r24,0
1c002834:	14001e8d 	lu12i.w	$r13,244(0xf4)
1c002838:	038901b4 	ori	$r20,$r13,0x240
1c00283c:	00110493 	sub.w	$r19,$r4,$r1
1c002840:	028fa006 	addi.w	$r6,$r0,1000(0x3e8)
1c002844:	00215267 	div.wu	$r7,$r19,$r20
1c002848:	5c000a80 	bne	$r20,$r0,8(0x8) # 1c002850 <shell17_main+0xff0>
1c00284c:	002a0007 	break	0x7
1c002850:	1c000fc5 	pcaddu12i	$r5,126(0x7e)
1c002854:	02a0c0a5 	addi.w	$r5,$r5,-2000(0x830)
1c002858:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c00285c:	029f4084 	addi.w	$r4,$r4,2000(0x7d0)
1c002860:	5435a000 	bl	13728(0x35a0) # 1c005e00 <printf>
1c002864:	543d8c00 	bl	15756(0x3d8c) # 1c0065f0 <get_clock>
1c002868:	28800328 	ld.w	$r8,$r25,0
1c00286c:	29800304 	st.w	$r4,$r24,0
1c002870:	00150007 	move	$r7,$r0
1c002874:	15ffff8f 	lu12i.w	$r15,-4(0xffffc)
1c002878:	64010c08 	bge	$r0,$r8,268(0x10c) # 1c002984 <shell17_main+0x1124>
1c00287c:	03400000 	andi	$r0,$r0,0x0
1c002880:	001503cd 	move	$r13,$r30
1c002884:	001503ec 	move	$r12,$r31
1c002888:	1400008e 	lu12i.w	$r14,4(0x4)
1c00288c:	2a000189 	ld.bu	$r9,$r12,0
1c002890:	0280406a 	addi.w	$r10,$r3,16(0x10)
1c002894:	038401d0 	ori	$r16,$r14,0x100
1c002898:	2a000586 	ld.bu	$r6,$r12,1(0x1)
1c00289c:	00102a14 	add.w	$r20,$r16,$r10
1c0028a0:	038401d3 	ori	$r19,$r14,0x100
1c0028a4:	2a000985 	ld.bu	$r5,$r12,2(0x2)
1c0028a8:	00102a70 	add.w	$r16,$r19,$r10
1c0028ac:	2a000d84 	ld.bu	$r4,$r12,3(0x3)
1c0028b0:	00102689 	add.w	$r9,$r20,$r9
1c0028b4:	038401d4 	ori	$r20,$r14,0x100
1c0028b8:	00102a93 	add.w	$r19,$r20,$r10
1c0028bc:	2a00118b 	ld.bu	$r11,$r12,4(0x4)
1c0028c0:	00101a06 	add.w	$r6,$r16,$r6
1c0028c4:	038401d0 	ori	$r16,$r14,0x100
1c0028c8:	00102a14 	add.w	$r20,$r16,$r10
1c0028cc:	2a001581 	ld.bu	$r1,$r12,5(0x5)
1c0028d0:	00101665 	add.w	$r5,$r19,$r5
1c0028d4:	038401d3 	ori	$r19,$r14,0x100
1c0028d8:	00102a70 	add.w	$r16,$r19,$r10
1c0028dc:	2a001992 	ld.bu	$r18,$r12,6(0x6)
1c0028e0:	2a001d91 	ld.bu	$r17,$r12,7(0x7)
1c0028e4:	00101284 	add.w	$r4,$r20,$r4
1c0028e8:	038401d4 	ori	$r20,$r14,0x100
1c0028ec:	00102a93 	add.w	$r19,$r20,$r10
1c0028f0:	00102e0b 	add.w	$r11,$r16,$r11
1c0028f4:	038401d0 	ori	$r16,$r14,0x100
1c0028f8:	038401ce 	ori	$r14,$r14,0x100
1c0028fc:	00102a14 	add.w	$r20,$r16,$r10
1c002900:	00100661 	add.w	$r1,$r19,$r1
1c002904:	001029d3 	add.w	$r19,$r14,$r10
1c002908:	00104a92 	add.w	$r18,$r20,$r18
1c00290c:	00104671 	add.w	$r17,$r19,$r17
1c002910:	001025e9 	add.w	$r9,$r15,$r9
1c002914:	001019e6 	add.w	$r6,$r15,$r6
1c002918:	001015e5 	add.w	$r5,$r15,$r5
1c00291c:	001011e4 	add.w	$r4,$r15,$r4
1c002920:	00102deb 	add.w	$r11,$r15,$r11
1c002924:	001005e1 	add.w	$r1,$r15,$r1
1c002928:	001049f0 	add.w	$r16,$r15,$r18
1c00292c:	001045ee 	add.w	$r14,$r15,$r17
1c002930:	2a3c012a 	ld.bu	$r10,$r9,-256(0xf00)
1c002934:	2a3c0174 	ld.bu	$r20,$r11,-256(0xf00)
1c002938:	2a3c00c9 	ld.bu	$r9,$r6,-256(0xf00)
1c00293c:	2a3c0033 	ld.bu	$r19,$r1,-256(0xf00)
1c002940:	2a3c00a6 	ld.bu	$r6,$r5,-256(0xf00)
1c002944:	2a3c0212 	ld.bu	$r18,$r16,-256(0xf00)
1c002948:	2a3c0085 	ld.bu	$r5,$r4,-256(0xf00)
1c00294c:	2a3c01d1 	ld.bu	$r17,$r14,-256(0xf00)
1c002950:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c002954:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c002958:	293fe1aa 	st.b	$r10,$r13,-8(0xff8)
1c00295c:	293fe5a9 	st.b	$r9,$r13,-7(0xff9)
1c002960:	293fe9a6 	st.b	$r6,$r13,-6(0xffa)
1c002964:	293feda5 	st.b	$r5,$r13,-5(0xffb)
1c002968:	293ff1b4 	st.b	$r20,$r13,-4(0xffc)
1c00296c:	293ff5b3 	st.b	$r19,$r13,-3(0xffd)
1c002970:	293ff9b2 	st.b	$r18,$r13,-2(0xffe)
1c002974:	293ffdb1 	st.b	$r17,$r13,-1(0xfff)
1c002978:	5fff13ac 	bne	$r29,$r12,-240(0x3ff10) # 1c002888 <shell17_main+0x1028>
1c00297c:	028004e7 	addi.w	$r7,$r7,1(0x1)
1c002980:	5fff00e8 	bne	$r7,$r8,-256(0x3ff00) # 1c002880 <shell17_main+0x1020>
1c002984:	543c6c00 	bl	15468(0x3c6c) # 1c0065f0 <get_clock>
1c002988:	28800347 	ld.w	$r7,$r26,0
1c00298c:	29800364 	st.w	$r4,$r27,0
1c002990:	1c000fcf 	pcaddu12i	$r15,126(0x7e)
1c002994:	28ab51ef 	ld.w	$r15,$r15,-1324(0xad4)
1c002998:	29803067 	st.w	$r7,$r3,12(0xc)
1c00299c:	2a003068 	ld.bu	$r8,$r3,12(0xc)
1c0029a0:	2a0001e6 	ld.bu	$r6,$r15,0
1c0029a4:	5c31acc8 	bne	$r6,$r8,12716(0x31ac) # 1c005b50 <shell17_main+0x42f0>
1c0029a8:	2a0005e6 	ld.bu	$r6,$r15,1(0x1)
1c0029ac:	5c31a4c8 	bne	$r6,$r8,12708(0x31a4) # 1c005b50 <shell17_main+0x42f0>
1c0029b0:	2a0009e6 	ld.bu	$r6,$r15,2(0x2)
1c0029b4:	5c319cc8 	bne	$r6,$r8,12700(0x319c) # 1c005b50 <shell17_main+0x42f0>
1c0029b8:	2a000de6 	ld.bu	$r6,$r15,3(0x3)
1c0029bc:	5c3194c8 	bne	$r6,$r8,12692(0x3194) # 1c005b50 <shell17_main+0x42f0>
1c0029c0:	2a0011e6 	ld.bu	$r6,$r15,4(0x4)
1c0029c4:	5c318cc8 	bne	$r6,$r8,12684(0x318c) # 1c005b50 <shell17_main+0x42f0>
1c0029c8:	2a0015e6 	ld.bu	$r6,$r15,5(0x5)
1c0029cc:	5c3184c8 	bne	$r6,$r8,12676(0x3184) # 1c005b50 <shell17_main+0x42f0>
1c0029d0:	2a0019e6 	ld.bu	$r6,$r15,6(0x6)
1c0029d4:	5c317cc8 	bne	$r6,$r8,12668(0x317c) # 1c005b50 <shell17_main+0x42f0>
1c0029d8:	2a001de6 	ld.bu	$r6,$r15,7(0x7)
1c0029dc:	028021ef 	addi.w	$r15,$r15,8(0x8)
1c0029e0:	5c3170c8 	bne	$r6,$r8,12656(0x3170) # 1c005b50 <shell17_main+0x42f0>
1c0029e4:	1c000fcc 	pcaddu12i	$r12,126(0x7e)
1c0029e8:	28aa018c 	ld.w	$r12,$r12,-1408(0xa80)
1c0029ec:	028fa18d 	addi.w	$r13,$r12,1000(0x3e8)
1c0029f0:	5fffb1ed 	bne	$r15,$r13,-80(0x3ffb0) # 1c0029a0 <shell17_main+0x1140>
1c0029f4:	2880030b 	ld.w	$r11,$r24,0
1c0029f8:	14001e81 	lu12i.w	$r1,244(0xf4)
1c0029fc:	03890030 	ori	$r16,$r1,0x240
1c002a00:	00112c84 	sub.w	$r4,$r4,$r11
1c002a04:	00214087 	div.wu	$r7,$r4,$r16
1c002a08:	5c000a00 	bne	$r16,$r0,8(0x8) # 1c002a10 <shell17_main+0x11b0>
1c002a0c:	002a0007 	break	0x7
1c002a10:	028fa006 	addi.w	$r6,$r0,1000(0x3e8)
1c002a14:	1c000fa5 	pcaddu12i	$r5,125(0x7d)
1c002a18:	029a40a5 	addi.w	$r5,$r5,1680(0x690)
1c002a1c:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c002a20:	02983084 	addi.w	$r4,$r4,1548(0x60c)
1c002a24:	5433dc00 	bl	13276(0x33dc) # 1c005e00 <printf>
1c002a28:	2880038e 	ld.w	$r14,$r28,0
1c002a2c:	2980032e 	st.w	$r14,$r25,0
1c002a30:	543bc000 	bl	15296(0x3bc0) # 1c0065f0 <get_clock>
1c002a34:	2880032a 	ld.w	$r10,$r25,0
1c002a38:	29800304 	st.w	$r4,$r24,0
1c002a3c:	6405bc0a 	bge	$r0,$r10,1468(0x5bc) # 1c002ff8 <shell17_main+0x1798>
1c002a40:	02800809 	addi.w	$r9,$r0,2(0x2)
1c002a44:	02bffd46 	addi.w	$r6,$r10,-1(0xfff)
1c002a48:	00150004 	move	$r4,$r0
1c002a4c:	6403552a 	bge	$r9,$r10,852(0x354) # 1c002da0 <shell17_main+0x1540>
1c002a50:	02800411 	addi.w	$r17,$r0,1(0x1)
1c002a54:	15ffff85 	lu12i.w	$r5,-4(0xffffc)
1c002a58:	00117ed4 	sub.w	$r20,$r22,$r31
1c002a5c:	03401e92 	andi	$r18,$r20,0x7
1c002a60:	001503ec 	move	$r12,$r31
1c002a64:	5801a240 	beq	$r18,$r0,416(0x1a0) # 1c002c04 <shell17_main+0x13a4>
1c002a68:	02800413 	addi.w	$r19,$r0,1(0x1)
1c002a6c:	58015a53 	beq	$r18,$r19,344(0x158) # 1c002bc4 <shell17_main+0x1364>
1c002a70:	02800808 	addi.w	$r8,$r0,2(0x2)
1c002a74:	58011648 	beq	$r18,$r8,276(0x114) # 1c002b88 <shell17_main+0x1328>
1c002a78:	02800c0f 	addi.w	$r15,$r0,3(0x3)
1c002a7c:	5800d24f 	beq	$r18,$r15,208(0xd0) # 1c002b4c <shell17_main+0x12ec>
1c002a80:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002a84:	58008e4d 	beq	$r18,$r13,140(0x8c) # 1c002b10 <shell17_main+0x12b0>
1c002a88:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c002a8c:	58004a4b 	beq	$r18,$r11,72(0x48) # 1c002ad4 <shell17_main+0x1274>
1c002a90:	02801801 	addi.w	$r1,$r0,6(0x6)
1c002a94:	5c318e41 	bne	$r18,$r1,12684(0x318c) # 1c005c20 <shell17_main+0x43c0>
1c002a98:	28000184 	ld.b	$r4,$r12,0
1c002a9c:	14000087 	lu12i.w	$r7,4(0x4)
1c002aa0:	02804070 	addi.w	$r16,$r3,16(0x10)
1c002aa4:	038400ef 	ori	$r15,$r7,0x100
1c002aa8:	001041ee 	add.w	$r14,$r15,$r16
1c002aac:	001011c9 	add.w	$r9,$r14,$r4
1c002ab0:	001024b4 	add.w	$r20,$r5,$r9
1c002ab4:	283e0292 	ld.b	$r18,$r20,-128(0xf80)
1c002ab8:	038400f3 	ori	$r19,$r7,0x100
1c002abc:	0010426d 	add.w	$r13,$r19,$r16
1c002ac0:	001049ab 	add.w	$r11,$r13,$r18
1c002ac4:	00102ca1 	add.w	$r1,$r5,$r11
1c002ac8:	2a3e0024 	ld.bu	$r4,$r1,-128(0xf80)
1c002acc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002ad0:	293ffd84 	st.b	$r4,$r12,-1(0xfff)
1c002ad4:	28000187 	ld.b	$r7,$r12,0
1c002ad8:	14000090 	lu12i.w	$r16,4(0x4)
1c002adc:	02804069 	addi.w	$r9,$r3,16(0x10)
1c002ae0:	0384020f 	ori	$r15,$r16,0x100
1c002ae4:	001025ee 	add.w	$r14,$r15,$r9
1c002ae8:	00101dd4 	add.w	$r20,$r14,$r7
1c002aec:	001050b2 	add.w	$r18,$r5,$r20
1c002af0:	283e0253 	ld.b	$r19,$r18,-128(0xf80)
1c002af4:	03840208 	ori	$r8,$r16,0x100
1c002af8:	0010250b 	add.w	$r11,$r8,$r9
1c002afc:	00104d61 	add.w	$r1,$r11,$r19
1c002b00:	001004a4 	add.w	$r4,$r5,$r1
1c002b04:	2a3e0087 	ld.bu	$r7,$r4,-128(0xf80)
1c002b08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002b0c:	293ffd87 	st.b	$r7,$r12,-1(0xfff)
1c002b10:	2800018f 	ld.b	$r15,$r12,0
1c002b14:	14000090 	lu12i.w	$r16,4(0x4)
1c002b18:	02804074 	addi.w	$r20,$r3,16(0x10)
1c002b1c:	03840209 	ori	$r9,$r16,0x100
1c002b20:	0010512e 	add.w	$r14,$r9,$r20
1c002b24:	00103dd2 	add.w	$r18,$r14,$r15
1c002b28:	001048b3 	add.w	$r19,$r5,$r18
1c002b2c:	283e0268 	ld.b	$r8,$r19,-128(0xf80)
1c002b30:	0384020d 	ori	$r13,$r16,0x100
1c002b34:	001051a1 	add.w	$r1,$r13,$r20
1c002b38:	00102024 	add.w	$r4,$r1,$r8
1c002b3c:	001010a7 	add.w	$r7,$r5,$r4
1c002b40:	2a3e00ef 	ld.bu	$r15,$r7,-128(0xf80)
1c002b44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002b48:	293ffd8f 	st.b	$r15,$r12,-1(0xfff)
1c002b4c:	28000189 	ld.b	$r9,$r12,0
1c002b50:	14000090 	lu12i.w	$r16,4(0x4)
1c002b54:	02804072 	addi.w	$r18,$r3,16(0x10)
1c002b58:	03840214 	ori	$r20,$r16,0x100
1c002b5c:	00104a8e 	add.w	$r14,$r20,$r18
1c002b60:	001025d3 	add.w	$r19,$r14,$r9
1c002b64:	00104ca8 	add.w	$r8,$r5,$r19
1c002b68:	283e010d 	ld.b	$r13,$r8,-128(0xf80)
1c002b6c:	0384020b 	ori	$r11,$r16,0x100
1c002b70:	00104964 	add.w	$r4,$r11,$r18
1c002b74:	00103487 	add.w	$r7,$r4,$r13
1c002b78:	00101caf 	add.w	$r15,$r5,$r7
1c002b7c:	2a3e01e9 	ld.bu	$r9,$r15,-128(0xf80)
1c002b80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002b84:	293ffd89 	st.b	$r9,$r12,-1(0xfff)
1c002b88:	28000194 	ld.b	$r20,$r12,0
1c002b8c:	14000090 	lu12i.w	$r16,4(0x4)
1c002b90:	02804073 	addi.w	$r19,$r3,16(0x10)
1c002b94:	03840212 	ori	$r18,$r16,0x100
1c002b98:	00104e4e 	add.w	$r14,$r18,$r19
1c002b9c:	001051c8 	add.w	$r8,$r14,$r20
1c002ba0:	001020ad 	add.w	$r13,$r5,$r8
1c002ba4:	283e01ab 	ld.b	$r11,$r13,-128(0xf80)
1c002ba8:	03840201 	ori	$r1,$r16,0x100
1c002bac:	00104c24 	add.w	$r4,$r1,$r19
1c002bb0:	00102c87 	add.w	$r7,$r4,$r11
1c002bb4:	00101caf 	add.w	$r15,$r5,$r7
1c002bb8:	2a3e01e9 	ld.bu	$r9,$r15,-128(0xf80)
1c002bbc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002bc0:	293ffd89 	st.b	$r9,$r12,-1(0xfff)
1c002bc4:	28000194 	ld.b	$r20,$r12,0
1c002bc8:	14000090 	lu12i.w	$r16,4(0x4)
1c002bcc:	02804068 	addi.w	$r8,$r3,16(0x10)
1c002bd0:	03840212 	ori	$r18,$r16,0x100
1c002bd4:	0010224e 	add.w	$r14,$r18,$r8
1c002bd8:	001051cd 	add.w	$r13,$r14,$r20
1c002bdc:	001034ab 	add.w	$r11,$r5,$r13
1c002be0:	283e0161 	ld.b	$r1,$r11,-128(0xf80)
1c002be4:	03840213 	ori	$r19,$r16,0x100
1c002be8:	00102267 	add.w	$r7,$r19,$r8
1c002bec:	001004ef 	add.w	$r15,$r7,$r1
1c002bf0:	00103ca9 	add.w	$r9,$r5,$r15
1c002bf4:	2a3e0134 	ld.bu	$r20,$r9,-128(0xf80)
1c002bf8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002bfc:	293ffd94 	st.b	$r20,$r12,-1(0xfff)
1c002c00:	58019596 	beq	$r12,$r22,404(0x194) # 1c002d94 <shell17_main+0x1534>
1c002c04:	14000088 	lu12i.w	$r8,4(0x4)
1c002c08:	28000192 	ld.b	$r18,$r12,0
1c002c0c:	0280406d 	addi.w	$r13,$r3,16(0x10)
1c002c10:	03840110 	ori	$r16,$r8,0x100
1c002c14:	0010360e 	add.w	$r14,$r16,$r13
1c002c18:	001049cb 	add.w	$r11,$r14,$r18
1c002c1c:	28000592 	ld.b	$r18,$r12,1(0x1)
1c002c20:	00102ca1 	add.w	$r1,$r5,$r11
1c002c24:	03840110 	ori	$r16,$r8,0x100
1c002c28:	283e0033 	ld.b	$r19,$r1,-128(0xf80)
1c002c2c:	0010360e 	add.w	$r14,$r16,$r13
1c002c30:	001049cb 	add.w	$r11,$r14,$r18
1c002c34:	03840104 	ori	$r4,$r8,0x100
1c002c38:	28000992 	ld.b	$r18,$r12,2(0x2)
1c002c3c:	00103487 	add.w	$r7,$r4,$r13
1c002c40:	00102ca1 	add.w	$r1,$r5,$r11
1c002c44:	03840110 	ori	$r16,$r8,0x100
1c002c48:	00104cef 	add.w	$r15,$r7,$r19
1c002c4c:	0010360e 	add.w	$r14,$r16,$r13
1c002c50:	283e0033 	ld.b	$r19,$r1,-128(0xf80)
1c002c54:	001049cb 	add.w	$r11,$r14,$r18
1c002c58:	03840104 	ori	$r4,$r8,0x100
1c002c5c:	28000d92 	ld.b	$r18,$r12,3(0x3)
1c002c60:	00103487 	add.w	$r7,$r4,$r13
1c002c64:	00102ca1 	add.w	$r1,$r5,$r11
1c002c68:	03840110 	ori	$r16,$r8,0x100
1c002c6c:	00103ca9 	add.w	$r9,$r5,$r15
1c002c70:	0010360e 	add.w	$r14,$r16,$r13
1c002c74:	00104cef 	add.w	$r15,$r7,$r19
1c002c78:	283e0033 	ld.b	$r19,$r1,-128(0xf80)
1c002c7c:	001049cb 	add.w	$r11,$r14,$r18
1c002c80:	03840104 	ori	$r4,$r8,0x100
1c002c84:	28001192 	ld.b	$r18,$r12,4(0x4)
1c002c88:	2a3e0134 	ld.bu	$r20,$r9,-128(0xf80)
1c002c8c:	00103487 	add.w	$r7,$r4,$r13
1c002c90:	00102ca1 	add.w	$r1,$r5,$r11
1c002c94:	03840110 	ori	$r16,$r8,0x100
1c002c98:	00103ca9 	add.w	$r9,$r5,$r15
1c002c9c:	0010360e 	add.w	$r14,$r16,$r13
1c002ca0:	00104cef 	add.w	$r15,$r7,$r19
1c002ca4:	283e0033 	ld.b	$r19,$r1,-128(0xf80)
1c002ca8:	001049cb 	add.w	$r11,$r14,$r18
1c002cac:	03840104 	ori	$r4,$r8,0x100
1c002cb0:	28001592 	ld.b	$r18,$r12,5(0x5)
1c002cb4:	00103487 	add.w	$r7,$r4,$r13
1c002cb8:	00102ca1 	add.w	$r1,$r5,$r11
1c002cbc:	03840110 	ori	$r16,$r8,0x100
1c002cc0:	29000194 	st.b	$r20,$r12,0
1c002cc4:	2a3e0134 	ld.bu	$r20,$r9,-128(0xf80)
1c002cc8:	0010360e 	add.w	$r14,$r16,$r13
1c002ccc:	00103ca9 	add.w	$r9,$r5,$r15
1c002cd0:	00104cef 	add.w	$r15,$r7,$r19
1c002cd4:	283e0033 	ld.b	$r19,$r1,-128(0xf80)
1c002cd8:	001049cb 	add.w	$r11,$r14,$r18
1c002cdc:	03840104 	ori	$r4,$r8,0x100
1c002ce0:	28001992 	ld.b	$r18,$r12,6(0x6)
1c002ce4:	00103487 	add.w	$r7,$r4,$r13
1c002ce8:	00102ca1 	add.w	$r1,$r5,$r11
1c002cec:	03840110 	ori	$r16,$r8,0x100
1c002cf0:	29000594 	st.b	$r20,$r12,1(0x1)
1c002cf4:	2a3e0134 	ld.bu	$r20,$r9,-128(0xf80)
1c002cf8:	0010360e 	add.w	$r14,$r16,$r13
1c002cfc:	00103ca9 	add.w	$r9,$r5,$r15
1c002d00:	00104cef 	add.w	$r15,$r7,$r19
1c002d04:	283e0033 	ld.b	$r19,$r1,-128(0xf80)
1c002d08:	001049cb 	add.w	$r11,$r14,$r18
1c002d0c:	03840104 	ori	$r4,$r8,0x100
1c002d10:	28001d92 	ld.b	$r18,$r12,7(0x7)
1c002d14:	00103487 	add.w	$r7,$r4,$r13
1c002d18:	00102ca1 	add.w	$r1,$r5,$r11
1c002d1c:	29000994 	st.b	$r20,$r12,2(0x2)
1c002d20:	03840110 	ori	$r16,$r8,0x100
1c002d24:	2a3e0134 	ld.bu	$r20,$r9,-128(0xf80)
1c002d28:	0010360e 	add.w	$r14,$r16,$r13
1c002d2c:	00103ca9 	add.w	$r9,$r5,$r15
1c002d30:	00104cef 	add.w	$r15,$r7,$r19
1c002d34:	283e0033 	ld.b	$r19,$r1,-128(0xf80)
1c002d38:	03840104 	ori	$r4,$r8,0x100
1c002d3c:	001049cb 	add.w	$r11,$r14,$r18
1c002d40:	00103487 	add.w	$r7,$r4,$r13
1c002d44:	29000d94 	st.b	$r20,$r12,3(0x3)
1c002d48:	00102ca1 	add.w	$r1,$r5,$r11
1c002d4c:	2a3e0134 	ld.bu	$r20,$r9,-128(0xf80)
1c002d50:	00103ca9 	add.w	$r9,$r5,$r15
1c002d54:	00104cef 	add.w	$r15,$r7,$r19
1c002d58:	283e0033 	ld.b	$r19,$r1,-128(0xf80)
1c002d5c:	03840108 	ori	$r8,$r8,0x100
1c002d60:	29001194 	st.b	$r20,$r12,4(0x4)
1c002d64:	00103504 	add.w	$r4,$r8,$r13
1c002d68:	2a3e0134 	ld.bu	$r20,$r9,-128(0xf80)
1c002d6c:	00104c87 	add.w	$r7,$r4,$r19
1c002d70:	00103ca9 	add.w	$r9,$r5,$r15
1c002d74:	00101caf 	add.w	$r15,$r5,$r7
1c002d78:	29001594 	st.b	$r20,$r12,5(0x5)
1c002d7c:	2a3e0134 	ld.bu	$r20,$r9,-128(0xf80)
1c002d80:	2a3e01e9 	ld.bu	$r9,$r15,-128(0xf80)
1c002d84:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c002d88:	293ff994 	st.b	$r20,$r12,-2(0xffe)
1c002d8c:	293ffd89 	st.b	$r9,$r12,-1(0xfff)
1c002d90:	5ffe7596 	bne	$r12,$r22,-396(0x3fe74) # 1c002c04 <shell17_main+0x13a4>
1c002d94:	02800624 	addi.w	$r4,$r17,1(0x1)
1c002d98:	02800a31 	addi.w	$r17,$r17,2(0x2)
1c002d9c:	63fcbe26 	blt	$r17,$r6,-836(0x3fcbc) # 1c002a58 <shell17_main+0x11f8>
1c002da0:	15ffff94 	lu12i.w	$r20,-4(0xffffc)
1c002da4:	00117ec6 	sub.w	$r6,$r22,$r31
1c002da8:	03401cc5 	andi	$r5,$r6,0x7
1c002dac:	001503ec 	move	$r12,$r31
1c002db0:	580150a0 	beq	$r5,$r0,336(0x150) # 1c002f00 <shell17_main+0x16a0>
1c002db4:	02800412 	addi.w	$r18,$r0,1(0x1)
1c002db8:	58011cb2 	beq	$r5,$r18,284(0x11c) # 1c002ed4 <shell17_main+0x1674>
1c002dbc:	02800810 	addi.w	$r16,$r0,2(0x2)
1c002dc0:	5800ecb0 	beq	$r5,$r16,236(0xec) # 1c002eac <shell17_main+0x164c>
1c002dc4:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c002dc8:	5800bcae 	beq	$r5,$r14,188(0xbc) # 1c002e84 <shell17_main+0x1624>
1c002dcc:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c002dd0:	58008cab 	beq	$r5,$r11,140(0x8c) # 1c002e5c <shell17_main+0x15fc>
1c002dd4:	02801401 	addi.w	$r1,$r0,5(0x5)
1c002dd8:	58005ca1 	beq	$r5,$r1,92(0x5c) # 1c002e34 <shell17_main+0x15d4>
1c002ddc:	02801813 	addi.w	$r19,$r0,6(0x6)
1c002de0:	58002cb3 	beq	$r5,$r19,44(0x2c) # 1c002e0c <shell17_main+0x15ac>
1c002de4:	280003e8 	ld.b	$r8,$r31,0
1c002de8:	1400008d 	lu12i.w	$r13,4(0x4)
1c002dec:	038401a7 	ori	$r7,$r13,0x100
1c002df0:	0280406f 	addi.w	$r15,$r3,16(0x10)
1c002df4:	00103ce9 	add.w	$r9,$r7,$r15
1c002df8:	00102131 	add.w	$r17,$r9,$r8
1c002dfc:	00104686 	add.w	$r6,$r20,$r17
1c002e00:	2a3e00c5 	ld.bu	$r5,$r6,-128(0xf80)
1c002e04:	028007ec 	addi.w	$r12,$r31,1(0x1)
1c002e08:	290003e5 	st.b	$r5,$r31,0
1c002e0c:	28000192 	ld.b	$r18,$r12,0
1c002e10:	14000090 	lu12i.w	$r16,4(0x4)
1c002e14:	0384020e 	ori	$r14,$r16,0x100
1c002e18:	0280406b 	addi.w	$r11,$r3,16(0x10)
1c002e1c:	00102dc1 	add.w	$r1,$r14,$r11
1c002e20:	00104833 	add.w	$r19,$r1,$r18
1c002e24:	00104e88 	add.w	$r8,$r20,$r19
1c002e28:	2a3e010d 	ld.bu	$r13,$r8,-128(0xf80)
1c002e2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002e30:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c002e34:	28000187 	ld.b	$r7,$r12,0
1c002e38:	1400008f 	lu12i.w	$r15,4(0x4)
1c002e3c:	038401e9 	ori	$r9,$r15,0x100
1c002e40:	02804071 	addi.w	$r17,$r3,16(0x10)
1c002e44:	00104526 	add.w	$r6,$r9,$r17
1c002e48:	00101cc5 	add.w	$r5,$r6,$r7
1c002e4c:	00101692 	add.w	$r18,$r20,$r5
1c002e50:	2a3e0250 	ld.bu	$r16,$r18,-128(0xf80)
1c002e54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002e58:	293ffd90 	st.b	$r16,$r12,-1(0xfff)
1c002e5c:	2800018b 	ld.b	$r11,$r12,0
1c002e60:	1400008e 	lu12i.w	$r14,4(0x4)
1c002e64:	038401c1 	ori	$r1,$r14,0x100
1c002e68:	02804073 	addi.w	$r19,$r3,16(0x10)
1c002e6c:	00104c28 	add.w	$r8,$r1,$r19
1c002e70:	00102d0d 	add.w	$r13,$r8,$r11
1c002e74:	00103687 	add.w	$r7,$r20,$r13
1c002e78:	2a3e00ef 	ld.bu	$r15,$r7,-128(0xf80)
1c002e7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002e80:	293ffd8f 	st.b	$r15,$r12,-1(0xfff)
1c002e84:	28000189 	ld.b	$r9,$r12,0
1c002e88:	14000091 	lu12i.w	$r17,4(0x4)
1c002e8c:	03840226 	ori	$r6,$r17,0x100
1c002e90:	02804065 	addi.w	$r5,$r3,16(0x10)
1c002e94:	001014d2 	add.w	$r18,$r6,$r5
1c002e98:	00102650 	add.w	$r16,$r18,$r9
1c002e9c:	0010428b 	add.w	$r11,$r20,$r16
1c002ea0:	2a3e016e 	ld.bu	$r14,$r11,-128(0xf80)
1c002ea4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002ea8:	293ffd8e 	st.b	$r14,$r12,-1(0xfff)
1c002eac:	28000181 	ld.b	$r1,$r12,0
1c002eb0:	14000093 	lu12i.w	$r19,4(0x4)
1c002eb4:	03840268 	ori	$r8,$r19,0x100
1c002eb8:	0280406d 	addi.w	$r13,$r3,16(0x10)
1c002ebc:	00103507 	add.w	$r7,$r8,$r13
1c002ec0:	001004ef 	add.w	$r15,$r7,$r1
1c002ec4:	00103e89 	add.w	$r9,$r20,$r15
1c002ec8:	2a3e0131 	ld.bu	$r17,$r9,-128(0xf80)
1c002ecc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002ed0:	293ffd91 	st.b	$r17,$r12,-1(0xfff)
1c002ed4:	28000186 	ld.b	$r6,$r12,0
1c002ed8:	14000085 	lu12i.w	$r5,4(0x4)
1c002edc:	038400b2 	ori	$r18,$r5,0x100
1c002ee0:	02804070 	addi.w	$r16,$r3,16(0x10)
1c002ee4:	0010424b 	add.w	$r11,$r18,$r16
1c002ee8:	0010196e 	add.w	$r14,$r11,$r6
1c002eec:	00103a81 	add.w	$r1,$r20,$r14
1c002ef0:	2a3e0033 	ld.bu	$r19,$r1,-128(0xf80)
1c002ef4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002ef8:	293ffd93 	st.b	$r19,$r12,-1(0xfff)
1c002efc:	5800f596 	beq	$r12,$r22,244(0xf4) # 1c002ff0 <shell17_main+0x1790>
1c002f00:	28000188 	ld.b	$r8,$r12,0
1c002f04:	1400008e 	lu12i.w	$r14,4(0x4)
1c002f08:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c002f0c:	28000986 	ld.b	$r6,$r12,2(0x2)
1c002f10:	02804069 	addi.w	$r9,$r3,16(0x10)
1c002f14:	038401c7 	ori	$r7,$r14,0x100
1c002f18:	28000d85 	ld.b	$r5,$r12,3(0x3)
1c002f1c:	2800118b 	ld.b	$r11,$r12,4(0x4)
1c002f20:	001024f0 	add.w	$r16,$r7,$r9
1c002f24:	038401d3 	ori	$r19,$r14,0x100
1c002f28:	038401c7 	ori	$r7,$r14,0x100
1c002f2c:	28001592 	ld.b	$r18,$r12,5(0x5)
1c002f30:	28001991 	ld.b	$r17,$r12,6(0x6)
1c002f34:	28001d8f 	ld.b	$r15,$r12,7(0x7)
1c002f38:	00102201 	add.w	$r1,$r16,$r8
1c002f3c:	00102668 	add.w	$r8,$r19,$r9
1c002f40:	001024f0 	add.w	$r16,$r7,$r9
1c002f44:	038401d3 	ori	$r19,$r14,0x100
1c002f48:	038401c7 	ori	$r7,$r14,0x100
1c002f4c:	0010350d 	add.w	$r13,$r8,$r13
1c002f50:	00101a06 	add.w	$r6,$r16,$r6
1c002f54:	00102668 	add.w	$r8,$r19,$r9
1c002f58:	001024f0 	add.w	$r16,$r7,$r9
1c002f5c:	038401d3 	ori	$r19,$r14,0x100
1c002f60:	038401c7 	ori	$r7,$r14,0x100
1c002f64:	038401ce 	ori	$r14,$r14,0x100
1c002f68:	00101505 	add.w	$r5,$r8,$r5
1c002f6c:	00102e0b 	add.w	$r11,$r16,$r11
1c002f70:	00102668 	add.w	$r8,$r19,$r9
1c002f74:	001024f0 	add.w	$r16,$r7,$r9
1c002f78:	001025d3 	add.w	$r19,$r14,$r9
1c002f7c:	00103e6f 	add.w	$r15,$r19,$r15
1c002f80:	00104912 	add.w	$r18,$r8,$r18
1c002f84:	00104611 	add.w	$r17,$r16,$r17
1c002f88:	00100681 	add.w	$r1,$r20,$r1
1c002f8c:	0010368d 	add.w	$r13,$r20,$r13
1c002f90:	00101a86 	add.w	$r6,$r20,$r6
1c002f94:	00101685 	add.w	$r5,$r20,$r5
1c002f98:	00102e8b 	add.w	$r11,$r20,$r11
1c002f9c:	00104a92 	add.w	$r18,$r20,$r18
1c002fa0:	00104690 	add.w	$r16,$r20,$r17
1c002fa4:	00103e8e 	add.w	$r14,$r20,$r15
1c002fa8:	2a3e0028 	ld.bu	$r8,$r1,-128(0xf80)
1c002fac:	2a3e01a7 	ld.bu	$r7,$r13,-128(0xf80)
1c002fb0:	2a3e00c9 	ld.bu	$r9,$r6,-128(0xf80)
1c002fb4:	2a3e00a1 	ld.bu	$r1,$r5,-128(0xf80)
1c002fb8:	2a3e0173 	ld.bu	$r19,$r11,-128(0xf80)
1c002fbc:	2a3e024d 	ld.bu	$r13,$r18,-128(0xf80)
1c002fc0:	2a3e0211 	ld.bu	$r17,$r16,-128(0xf80)
1c002fc4:	2a3e01cf 	ld.bu	$r15,$r14,-128(0xf80)
1c002fc8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c002fcc:	293fe188 	st.b	$r8,$r12,-8(0xff8)
1c002fd0:	293fe587 	st.b	$r7,$r12,-7(0xff9)
1c002fd4:	293fe989 	st.b	$r9,$r12,-6(0xffa)
1c002fd8:	293fed81 	st.b	$r1,$r12,-5(0xffb)
1c002fdc:	293ff193 	st.b	$r19,$r12,-4(0xffc)
1c002fe0:	293ff58d 	st.b	$r13,$r12,-3(0xffd)
1c002fe4:	293ff991 	st.b	$r17,$r12,-2(0xffe)
1c002fe8:	293ffd8f 	st.b	$r15,$r12,-1(0xfff)
1c002fec:	5fff1596 	bne	$r12,$r22,-236(0x3ff14) # 1c002f00 <shell17_main+0x16a0>
1c002ff0:	02800484 	addi.w	$r4,$r4,1(0x1)
1c002ff4:	63fdb08a 	blt	$r4,$r10,-592(0x3fdb0) # 1c002da4 <shell17_main+0x1544>
1c002ff8:	5435f800 	bl	13816(0x35f8) # 1c0065f0 <get_clock>
1c002ffc:	28800347 	ld.w	$r7,$r26,0
1c003000:	1c000fac 	pcaddu12i	$r12,125(0x7d)
1c003004:	2891d18c 	ld.w	$r12,$r12,1140(0x474)
1c003008:	001132ca 	sub.w	$r10,$r22,$r12
1c00300c:	29803067 	st.w	$r7,$r3,12(0xc)
1c003010:	29800364 	st.w	$r4,$r27,0
1c003014:	03401d54 	andi	$r20,$r10,0x7
1c003018:	28003065 	ld.b	$r5,$r3,12(0xc)
1c00301c:	58008280 	beq	$r20,$r0,128(0x80) # 1c00309c <shell17_main+0x183c>
1c003020:	02800406 	addi.w	$r6,$r0,1(0x1)
1c003024:	58006a86 	beq	$r20,$r6,104(0x68) # 1c00308c <shell17_main+0x182c>
1c003028:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c00302c:	5800568b 	beq	$r20,$r11,84(0x54) # 1c003080 <shell17_main+0x1820>
1c003030:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c003034:	58004292 	beq	$r20,$r18,64(0x40) # 1c003074 <shell17_main+0x1814>
1c003038:	02801010 	addi.w	$r16,$r0,4(0x4)
1c00303c:	58002e90 	beq	$r20,$r16,44(0x2c) # 1c003068 <shell17_main+0x1808>
1c003040:	0280140e 	addi.w	$r14,$r0,5(0x5)
1c003044:	58001a8e 	beq	$r20,$r14,24(0x18) # 1c00305c <shell17_main+0x17fc>
1c003048:	02801808 	addi.w	$r8,$r0,6(0x6)
1c00304c:	5c2ad688 	bne	$r20,$r8,10964(0x2ad4) # 1c005b20 <shell17_main+0x42c0>
1c003050:	28000186 	ld.b	$r6,$r12,0
1c003054:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003058:	5c2ad8c5 	bne	$r6,$r5,10968(0x2ad8) # 1c005b30 <shell17_main+0x42d0>
1c00305c:	28000186 	ld.b	$r6,$r12,0
1c003060:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003064:	5c2accc5 	bne	$r6,$r5,10956(0x2acc) # 1c005b30 <shell17_main+0x42d0>
1c003068:	28000186 	ld.b	$r6,$r12,0
1c00306c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003070:	5c2ac0c5 	bne	$r6,$r5,10944(0x2ac0) # 1c005b30 <shell17_main+0x42d0>
1c003074:	28000186 	ld.b	$r6,$r12,0
1c003078:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00307c:	5c2ab4c5 	bne	$r6,$r5,10932(0x2ab4) # 1c005b30 <shell17_main+0x42d0>
1c003080:	28000186 	ld.b	$r6,$r12,0
1c003084:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003088:	5c2aa8c5 	bne	$r6,$r5,10920(0x2aa8) # 1c005b30 <shell17_main+0x42d0>
1c00308c:	28000186 	ld.b	$r6,$r12,0
1c003090:	5c2aa0c5 	bne	$r6,$r5,10912(0x2aa0) # 1c005b30 <shell17_main+0x42d0>
1c003094:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003098:	58004d96 	beq	$r12,$r22,76(0x4c) # 1c0030e4 <shell17_main+0x1884>
1c00309c:	28000186 	ld.b	$r6,$r12,0
1c0030a0:	5c2a90c5 	bne	$r6,$r5,10896(0x2a90) # 1c005b30 <shell17_main+0x42d0>
1c0030a4:	28000586 	ld.b	$r6,$r12,1(0x1)
1c0030a8:	5c2a88c5 	bne	$r6,$r5,10888(0x2a88) # 1c005b30 <shell17_main+0x42d0>
1c0030ac:	28000986 	ld.b	$r6,$r12,2(0x2)
1c0030b0:	5c2a80c5 	bne	$r6,$r5,10880(0x2a80) # 1c005b30 <shell17_main+0x42d0>
1c0030b4:	28000d86 	ld.b	$r6,$r12,3(0x3)
1c0030b8:	5c2a78c5 	bne	$r6,$r5,10872(0x2a78) # 1c005b30 <shell17_main+0x42d0>
1c0030bc:	28001186 	ld.b	$r6,$r12,4(0x4)
1c0030c0:	5c2a70c5 	bne	$r6,$r5,10864(0x2a70) # 1c005b30 <shell17_main+0x42d0>
1c0030c4:	28001586 	ld.b	$r6,$r12,5(0x5)
1c0030c8:	5c2a68c5 	bne	$r6,$r5,10856(0x2a68) # 1c005b30 <shell17_main+0x42d0>
1c0030cc:	28001986 	ld.b	$r6,$r12,6(0x6)
1c0030d0:	5c2a60c5 	bne	$r6,$r5,10848(0x2a60) # 1c005b30 <shell17_main+0x42d0>
1c0030d4:	28001d86 	ld.b	$r6,$r12,7(0x7)
1c0030d8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0030dc:	5c2a54c5 	bne	$r6,$r5,10836(0x2a54) # 1c005b30 <shell17_main+0x42d0>
1c0030e0:	5fffbd96 	bne	$r12,$r22,-68(0x3ffbc) # 1c00309c <shell17_main+0x183c>
1c0030e4:	28800307 	ld.w	$r7,$r24,0
1c0030e8:	14001e89 	lu12i.w	$r9,244(0xf4)
1c0030ec:	02805006 	addi.w	$r6,$r0,20(0x14)
1c0030f0:	00111c93 	sub.w	$r19,$r4,$r7
1c0030f4:	03890121 	ori	$r1,$r9,0x240
1c0030f8:	1c000fa5 	pcaddu12i	$r5,125(0x7d)
1c0030fc:	02bf20a5 	addi.w	$r5,$r5,-56(0xfc8)
1c003100:	00210667 	div.wu	$r7,$r19,$r1
1c003104:	5c000820 	bne	$r1,$r0,8(0x8) # 1c00310c <shell17_main+0x18ac>
1c003108:	002a0007 	break	0x7
1c00310c:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c003110:	02bc7084 	addi.w	$r4,$r4,-228(0xf1c)
1c003114:	542cec00 	bl	11500(0x2cec) # 1c005e00 <printf>
1c003118:	5434d800 	bl	13528(0x34d8) # 1c0065f0 <get_clock>
1c00311c:	28800326 	ld.w	$r6,$r25,0
1c003120:	29800304 	st.w	$r4,$r24,0
1c003124:	00150005 	move	$r5,$r0
1c003128:	15ffff8f 	lu12i.w	$r15,-4(0xffffc)
1c00312c:	64027c06 	bge	$r0,$r6,636(0x27c) # 1c0033a8 <shell17_main+0x1b48>
1c003130:	00117ed1 	sub.w	$r17,$r22,$r31
1c003134:	03401e24 	andi	$r4,$r17,0x7
1c003138:	001503cd 	move	$r13,$r30
1c00313c:	001503ec 	move	$r12,$r31
1c003140:	58016c80 	beq	$r4,$r0,364(0x16c) # 1c0032ac <shell17_main+0x1a4c>
1c003144:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c003148:	5801348a 	beq	$r4,$r10,308(0x134) # 1c00327c <shell17_main+0x1a1c>
1c00314c:	02800814 	addi.w	$r20,$r0,2(0x2)
1c003150:	58010094 	beq	$r4,$r20,256(0x100) # 1c003250 <shell17_main+0x19f0>
1c003154:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c003158:	5800cc8b 	beq	$r4,$r11,204(0xcc) # 1c003224 <shell17_main+0x19c4>
1c00315c:	02801012 	addi.w	$r18,$r0,4(0x4)
1c003160:	58009892 	beq	$r4,$r18,152(0x98) # 1c0031f8 <shell17_main+0x1998>
1c003164:	02801410 	addi.w	$r16,$r0,5(0x5)
1c003168:	58006490 	beq	$r4,$r16,100(0x64) # 1c0031cc <shell17_main+0x196c>
1c00316c:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c003170:	5800308e 	beq	$r4,$r14,48(0x30) # 1c0031a0 <shell17_main+0x1940>
1c003174:	280003ed 	ld.b	$r13,$r31,0
1c003178:	14000088 	lu12i.w	$r8,4(0x4)
1c00317c:	03840109 	ori	$r9,$r8,0x100
1c003180:	02804061 	addi.w	$r1,$r3,16(0x10)
1c003184:	00100533 	add.w	$r19,$r9,$r1
1c003188:	00103667 	add.w	$r7,$r19,$r13
1c00318c:	00101df1 	add.w	$r17,$r15,$r7
1c003190:	2a3e0224 	ld.bu	$r4,$r17,-128(0xf80)
1c003194:	028007ec 	addi.w	$r12,$r31,1(0x1)
1c003198:	028007cd 	addi.w	$r13,$r30,1(0x1)
1c00319c:	290003c4 	st.b	$r4,$r30,0
1c0031a0:	2800018a 	ld.b	$r10,$r12,0
1c0031a4:	14000094 	lu12i.w	$r20,4(0x4)
1c0031a8:	0384028b 	ori	$r11,$r20,0x100
1c0031ac:	02804072 	addi.w	$r18,$r3,16(0x10)
1c0031b0:	00104970 	add.w	$r16,$r11,$r18
1c0031b4:	00102a0e 	add.w	$r14,$r16,$r10
1c0031b8:	001039e8 	add.w	$r8,$r15,$r14
1c0031bc:	2a3e0109 	ld.bu	$r9,$r8,-128(0xf80)
1c0031c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0031c4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0031c8:	293ffda9 	st.b	$r9,$r13,-1(0xfff)
1c0031cc:	28000181 	ld.b	$r1,$r12,0
1c0031d0:	14000093 	lu12i.w	$r19,4(0x4)
1c0031d4:	03840267 	ori	$r7,$r19,0x100
1c0031d8:	02804071 	addi.w	$r17,$r3,16(0x10)
1c0031dc:	001044e4 	add.w	$r4,$r7,$r17
1c0031e0:	0010048a 	add.w	$r10,$r4,$r1
1c0031e4:	001029f4 	add.w	$r20,$r15,$r10
1c0031e8:	2a3e028b 	ld.bu	$r11,$r20,-128(0xf80)
1c0031ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0031f0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0031f4:	293ffdab 	st.b	$r11,$r13,-1(0xfff)
1c0031f8:	28000192 	ld.b	$r18,$r12,0
1c0031fc:	14000090 	lu12i.w	$r16,4(0x4)
1c003200:	0384020e 	ori	$r14,$r16,0x100
1c003204:	02804068 	addi.w	$r8,$r3,16(0x10)
1c003208:	001021c9 	add.w	$r9,$r14,$r8
1c00320c:	00104921 	add.w	$r1,$r9,$r18
1c003210:	001005f3 	add.w	$r19,$r15,$r1
1c003214:	2a3e0267 	ld.bu	$r7,$r19,-128(0xf80)
1c003218:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00321c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c003220:	293ffda7 	st.b	$r7,$r13,-1(0xfff)
1c003224:	28000191 	ld.b	$r17,$r12,0
1c003228:	14000084 	lu12i.w	$r4,4(0x4)
1c00322c:	0384008a 	ori	$r10,$r4,0x100
1c003230:	02804074 	addi.w	$r20,$r3,16(0x10)
1c003234:	0010514b 	add.w	$r11,$r10,$r20
1c003238:	00104572 	add.w	$r18,$r11,$r17
1c00323c:	001049f0 	add.w	$r16,$r15,$r18
1c003240:	2a3e020e 	ld.bu	$r14,$r16,-128(0xf80)
1c003244:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003248:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00324c:	293ffdae 	st.b	$r14,$r13,-1(0xfff)
1c003250:	28000188 	ld.b	$r8,$r12,0
1c003254:	14000089 	lu12i.w	$r9,4(0x4)
1c003258:	03840121 	ori	$r1,$r9,0x100
1c00325c:	02804073 	addi.w	$r19,$r3,16(0x10)
1c003260:	00104c27 	add.w	$r7,$r1,$r19
1c003264:	001020f1 	add.w	$r17,$r7,$r8
1c003268:	001045e4 	add.w	$r4,$r15,$r17
1c00326c:	2a3e008a 	ld.bu	$r10,$r4,-128(0xf80)
1c003270:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003274:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c003278:	293ffdaa 	st.b	$r10,$r13,-1(0xfff)
1c00327c:	28000194 	ld.b	$r20,$r12,0
1c003280:	1400008b 	lu12i.w	$r11,4(0x4)
1c003284:	03840172 	ori	$r18,$r11,0x100
1c003288:	02804070 	addi.w	$r16,$r3,16(0x10)
1c00328c:	0010424e 	add.w	$r14,$r18,$r16
1c003290:	001051c8 	add.w	$r8,$r14,$r20
1c003294:	001021e9 	add.w	$r9,$r15,$r8
1c003298:	2a3e0121 	ld.bu	$r1,$r9,-128(0xf80)
1c00329c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0032a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0032a4:	293ffda1 	st.b	$r1,$r13,-1(0xfff)
1c0032a8:	5800f996 	beq	$r12,$r22,248(0xf8) # 1c0033a0 <shell17_main+0x1b40>
1c0032ac:	1400008e 	lu12i.w	$r14,4(0x4)
1c0032b0:	2800018b 	ld.b	$r11,$r12,0
1c0032b4:	0280406a 	addi.w	$r10,$r3,16(0x10)
1c0032b8:	038401d0 	ori	$r16,$r14,0x100
1c0032bc:	00102a09 	add.w	$r9,$r16,$r10
1c0032c0:	28000588 	ld.b	$r8,$r12,1(0x1)
1c0032c4:	00102d21 	add.w	$r1,$r9,$r11
1c0032c8:	28000987 	ld.b	$r7,$r12,2(0x2)
1c0032cc:	038401cb 	ori	$r11,$r14,0x100
1c0032d0:	00102970 	add.w	$r16,$r11,$r10
1c0032d4:	038401c9 	ori	$r9,$r14,0x100
1c0032d8:	28000d84 	ld.b	$r4,$r12,3(0x3)
1c0032dc:	0010292b 	add.w	$r11,$r9,$r10
1c0032e0:	28001194 	ld.b	$r20,$r12,4(0x4)
1c0032e4:	00102208 	add.w	$r8,$r16,$r8
1c0032e8:	038401d0 	ori	$r16,$r14,0x100
1c0032ec:	00102a09 	add.w	$r9,$r16,$r10
1c0032f0:	28001593 	ld.b	$r19,$r12,5(0x5)
1c0032f4:	00101d67 	add.w	$r7,$r11,$r7
1c0032f8:	038401cb 	ori	$r11,$r14,0x100
1c0032fc:	00102970 	add.w	$r16,$r11,$r10
1c003300:	28001992 	ld.b	$r18,$r12,6(0x6)
1c003304:	28001d91 	ld.b	$r17,$r12,7(0x7)
1c003308:	00101124 	add.w	$r4,$r9,$r4
1c00330c:	038401c9 	ori	$r9,$r14,0x100
1c003310:	0010292b 	add.w	$r11,$r9,$r10
1c003314:	00105214 	add.w	$r20,$r16,$r20
1c003318:	038401d0 	ori	$r16,$r14,0x100
1c00331c:	038401ce 	ori	$r14,$r14,0x100
1c003320:	00102a09 	add.w	$r9,$r16,$r10
1c003324:	00104d73 	add.w	$r19,$r11,$r19
1c003328:	001029cb 	add.w	$r11,$r14,$r10
1c00332c:	00104932 	add.w	$r18,$r9,$r18
1c003330:	00104571 	add.w	$r17,$r11,$r17
1c003334:	001005e1 	add.w	$r1,$r15,$r1
1c003338:	001021e8 	add.w	$r8,$r15,$r8
1c00333c:	00101de7 	add.w	$r7,$r15,$r7
1c003340:	001011e4 	add.w	$r4,$r15,$r4
1c003344:	001051f4 	add.w	$r20,$r15,$r20
1c003348:	00104df3 	add.w	$r19,$r15,$r19
1c00334c:	001049f0 	add.w	$r16,$r15,$r18
1c003350:	001045ee 	add.w	$r14,$r15,$r17
1c003354:	2a3e0029 	ld.bu	$r9,$r1,-128(0xf80)
1c003358:	2a3e010a 	ld.bu	$r10,$r8,-128(0xf80)
1c00335c:	2a3e00eb 	ld.bu	$r11,$r7,-128(0xf80)
1c003360:	2a3e0081 	ld.bu	$r1,$r4,-128(0xf80)
1c003364:	2a3e0288 	ld.bu	$r8,$r20,-128(0xf80)
1c003368:	2a3e0267 	ld.bu	$r7,$r19,-128(0xf80)
1c00336c:	2a3e0212 	ld.bu	$r18,$r16,-128(0xf80)
1c003370:	2a3e01d1 	ld.bu	$r17,$r14,-128(0xf80)
1c003374:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c003378:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00337c:	293fe1a9 	st.b	$r9,$r13,-8(0xff8)
1c003380:	293fe5aa 	st.b	$r10,$r13,-7(0xff9)
1c003384:	293fe9ab 	st.b	$r11,$r13,-6(0xffa)
1c003388:	293feda1 	st.b	$r1,$r13,-5(0xffb)
1c00338c:	293ff1a8 	st.b	$r8,$r13,-4(0xffc)
1c003390:	293ff5a7 	st.b	$r7,$r13,-3(0xffd)
1c003394:	293ff9b2 	st.b	$r18,$r13,-2(0xffe)
1c003398:	293ffdb1 	st.b	$r17,$r13,-1(0xfff)
1c00339c:	5fff1196 	bne	$r12,$r22,-240(0x3ff10) # 1c0032ac <shell17_main+0x1a4c>
1c0033a0:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0033a4:	5ffd8ca6 	bne	$r5,$r6,-628(0x3fd8c) # 1c003130 <shell17_main+0x18d0>
1c0033a8:	54324800 	bl	12872(0x3248) # 1c0065f0 <get_clock>
1c0033ac:	28800347 	ld.w	$r7,$r26,0
1c0033b0:	00150096 	move	$r22,$r4
1c0033b4:	1c000fac 	pcaddu12i	$r12,125(0x7d)
1c0033b8:	2882c18c 	ld.w	$r12,$r12,176(0xb0)
1c0033bc:	29803067 	st.w	$r7,$r3,12(0xc)
1c0033c0:	2800306f 	ld.b	$r15,$r3,12(0xc)
1c0033c4:	29800364 	st.w	$r4,$r27,0
1c0033c8:	28000186 	ld.b	$r6,$r12,0
1c0033cc:	5c2734cf 	bne	$r6,$r15,10036(0x2734) # 1c005b00 <shell17_main+0x42a0>
1c0033d0:	28000586 	ld.b	$r6,$r12,1(0x1)
1c0033d4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0033d8:	5c2728cf 	bne	$r6,$r15,10024(0x2728) # 1c005b00 <shell17_main+0x42a0>
1c0033dc:	28000986 	ld.b	$r6,$r12,2(0x2)
1c0033e0:	5c2720cf 	bne	$r6,$r15,10016(0x2720) # 1c005b00 <shell17_main+0x42a0>
1c0033e4:	28000d86 	ld.b	$r6,$r12,3(0x3)
1c0033e8:	5c2718cf 	bne	$r6,$r15,10008(0x2718) # 1c005b00 <shell17_main+0x42a0>
1c0033ec:	28001186 	ld.b	$r6,$r12,4(0x4)
1c0033f0:	5c2710cf 	bne	$r6,$r15,10000(0x2710) # 1c005b00 <shell17_main+0x42a0>
1c0033f4:	28001586 	ld.b	$r6,$r12,5(0x5)
1c0033f8:	5c2708cf 	bne	$r6,$r15,9992(0x2708) # 1c005b00 <shell17_main+0x42a0>
1c0033fc:	28001986 	ld.b	$r6,$r12,6(0x6)
1c003400:	5c2700cf 	bne	$r6,$r15,9984(0x2700) # 1c005b00 <shell17_main+0x42a0>
1c003404:	28001d86 	ld.b	$r6,$r12,7(0x7)
1c003408:	5c26f8cf 	bne	$r6,$r15,9976(0x26f8) # 1c005b00 <shell17_main+0x42a0>
1c00340c:	28002186 	ld.b	$r6,$r12,8(0x8)
1c003410:	5c26f0cf 	bne	$r6,$r15,9968(0x26f0) # 1c005b00 <shell17_main+0x42a0>
1c003414:	28002586 	ld.b	$r6,$r12,9(0x9)
1c003418:	5c26e8cf 	bne	$r6,$r15,9960(0x26e8) # 1c005b00 <shell17_main+0x42a0>
1c00341c:	28802066 	ld.w	$r6,$r3,8(0x8)
1c003420:	028025ac 	addi.w	$r12,$r13,9(0x9)
1c003424:	5fffa586 	bne	$r12,$r6,-92(0x3ffa4) # 1c0033c8 <shell17_main+0x1b68>
1c003428:	28800314 	ld.w	$r20,$r24,0
1c00342c:	14001e84 	lu12i.w	$r4,244(0xf4)
1c003430:	03890093 	ori	$r19,$r4,0x240
1c003434:	001152d0 	sub.w	$r16,$r22,$r20
1c003438:	02805006 	addi.w	$r6,$r0,20(0x14)
1c00343c:	00214e07 	div.wu	$r7,$r16,$r19
1c003440:	5c000a60 	bne	$r19,$r0,8(0x8) # 1c003448 <shell17_main+0x1be8>
1c003444:	002a0007 	break	0x7
1c003448:	1c000fa5 	pcaddu12i	$r5,125(0x7d)
1c00344c:	02b270a5 	addi.w	$r5,$r5,-868(0xc9c)
1c003450:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c003454:	02af6084 	addi.w	$r4,$r4,-1064(0xbd8)
1c003458:	5429a800 	bl	10664(0x29a8) # 1c005e00 <printf>
1c00345c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003460:	2980032e 	st.w	$r14,$r25,0
1c003464:	54318c00 	bl	12684(0x318c) # 1c0065f0 <get_clock>
1c003468:	2880032a 	ld.w	$r10,$r25,0
1c00346c:	29800304 	st.w	$r4,$r24,0
1c003470:	6402bc0a 	bge	$r0,$r10,700(0x2bc) # 1c00372c <shell17_main+0x1ecc>
1c003474:	02800809 	addi.w	$r9,$r0,2(0x2)
1c003478:	02bffd4b 	addi.w	$r11,$r10,-1(0xfff)
1c00347c:	00150008 	move	$r8,$r0
1c003480:	6401ad2a 	bge	$r9,$r10,428(0x1ac) # 1c00362c <shell17_main+0x1dcc>
1c003484:	02800411 	addi.w	$r17,$r0,1(0x1)
1c003488:	15ffff81 	lu12i.w	$r1,-4(0xffffc)
1c00348c:	001503ec 	move	$r12,$r31
1c003490:	14000092 	lu12i.w	$r18,4(0x4)
1c003494:	28000188 	ld.b	$r8,$r12,0
1c003498:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00349c:	03840245 	ori	$r5,$r18,0x100
1c0034a0:	28000589 	ld.b	$r9,$r12,1(0x1)
1c0034a4:	001058af 	add.w	$r15,$r5,$r22
1c0034a8:	001021ed 	add.w	$r13,$r15,$r8
1c0034ac:	03840248 	ori	$r8,$r18,0x100
1c0034b0:	00103426 	add.w	$r6,$r1,$r13
1c0034b4:	00105905 	add.w	$r5,$r8,$r22
1c0034b8:	001024af 	add.w	$r15,$r5,$r9
1c0034bc:	283e00d4 	ld.b	$r20,$r6,-128(0xf80)
1c0034c0:	03840244 	ori	$r4,$r18,0x100
1c0034c4:	00103c2d 	add.w	$r13,$r1,$r15
1c0034c8:	00105893 	add.w	$r19,$r4,$r22
1c0034cc:	283e01a6 	ld.b	$r6,$r13,-128(0xf80)
1c0034d0:	00105270 	add.w	$r16,$r19,$r20
1c0034d4:	03840254 	ori	$r20,$r18,0x100
1c0034d8:	00104027 	add.w	$r7,$r1,$r16
1c0034dc:	00105a84 	add.w	$r4,$r20,$r22
1c0034e0:	00101893 	add.w	$r19,$r4,$r6
1c0034e4:	2a3e00ee 	ld.bu	$r14,$r7,-128(0xf80)
1c0034e8:	00104c30 	add.w	$r16,$r1,$r19
1c0034ec:	2a3e0207 	ld.bu	$r7,$r16,-128(0xf80)
1c0034f0:	2900018e 	st.b	$r14,$r12,0
1c0034f4:	2800098e 	ld.b	$r14,$r12,2(0x2)
1c0034f8:	03840249 	ori	$r9,$r18,0x100
1c0034fc:	00105928 	add.w	$r8,$r9,$r22
1c003500:	29000587 	st.b	$r7,$r12,1(0x1)
1c003504:	28000d87 	ld.b	$r7,$r12,3(0x3)
1c003508:	00103905 	add.w	$r5,$r8,$r14
1c00350c:	0384024e 	ori	$r14,$r18,0x100
1c003510:	0010142f 	add.w	$r15,$r1,$r5
1c003514:	001059c9 	add.w	$r9,$r14,$r22
1c003518:	00101d28 	add.w	$r8,$r9,$r7
1c00351c:	283e01ed 	ld.b	$r13,$r15,-128(0xf80)
1c003520:	03840246 	ori	$r6,$r18,0x100
1c003524:	00102025 	add.w	$r5,$r1,$r8
1c003528:	001058d4 	add.w	$r20,$r6,$r22
1c00352c:	283e00af 	ld.b	$r15,$r5,-128(0xf80)
1c003530:	00103684 	add.w	$r4,$r20,$r13
1c003534:	0384024d 	ori	$r13,$r18,0x100
1c003538:	00101033 	add.w	$r19,$r1,$r4
1c00353c:	001059a6 	add.w	$r6,$r13,$r22
1c003540:	00103cd4 	add.w	$r20,$r6,$r15
1c003544:	2a3e0270 	ld.bu	$r16,$r19,-128(0xf80)
1c003548:	00105024 	add.w	$r4,$r1,$r20
1c00354c:	28001187 	ld.b	$r7,$r12,4(0x4)
1c003550:	2a3e0093 	ld.bu	$r19,$r4,-128(0xf80)
1c003554:	29000990 	st.b	$r16,$r12,2(0x2)
1c003558:	03840250 	ori	$r16,$r18,0x100
1c00355c:	00105a0e 	add.w	$r14,$r16,$r22
1c003560:	00101dc9 	add.w	$r9,$r14,$r7
1c003564:	29000d93 	st.b	$r19,$r12,3(0x3)
1c003568:	28001593 	ld.b	$r19,$r12,5(0x5)
1c00356c:	00102428 	add.w	$r8,$r1,$r9
1c003570:	03840247 	ori	$r7,$r18,0x100
1c003574:	283e0105 	ld.b	$r5,$r8,-128(0xf80)
1c003578:	001058f0 	add.w	$r16,$r7,$r22
1c00357c:	00104e0e 	add.w	$r14,$r16,$r19
1c003580:	0384024f 	ori	$r15,$r18,0x100
1c003584:	001059ed 	add.w	$r13,$r15,$r22
1c003588:	00103829 	add.w	$r9,$r1,$r14
1c00358c:	001015a6 	add.w	$r6,$r13,$r5
1c003590:	283e0128 	ld.b	$r8,$r9,-128(0xf80)
1c003594:	00101834 	add.w	$r20,$r1,$r6
1c003598:	03840245 	ori	$r5,$r18,0x100
1c00359c:	2a3e0284 	ld.bu	$r4,$r20,-128(0xf80)
1c0035a0:	001058af 	add.w	$r15,$r5,$r22
1c0035a4:	001021ed 	add.w	$r13,$r15,$r8
1c0035a8:	00103426 	add.w	$r6,$r1,$r13
1c0035ac:	2a3e00d4 	ld.bu	$r20,$r6,-128(0xf80)
1c0035b0:	29001184 	st.b	$r4,$r12,4(0x4)
1c0035b4:	28001984 	ld.b	$r4,$r12,6(0x6)
1c0035b8:	03840253 	ori	$r19,$r18,0x100
1c0035bc:	00105a67 	add.w	$r7,$r19,$r22
1c0035c0:	001010f0 	add.w	$r16,$r7,$r4
1c0035c4:	29001594 	st.b	$r20,$r12,5(0x5)
1c0035c8:	28001d94 	ld.b	$r20,$r12,7(0x7)
1c0035cc:	0010402e 	add.w	$r14,$r1,$r16
1c0035d0:	03840244 	ori	$r4,$r18,0x100
1c0035d4:	283e01c9 	ld.b	$r9,$r14,-128(0xf80)
1c0035d8:	00105893 	add.w	$r19,$r4,$r22
1c0035dc:	03840248 	ori	$r8,$r18,0x100
1c0035e0:	00105267 	add.w	$r7,$r19,$r20
1c0035e4:	00105905 	add.w	$r5,$r8,$r22
1c0035e8:	00101c30 	add.w	$r16,$r1,$r7
1c0035ec:	001024af 	add.w	$r15,$r5,$r9
1c0035f0:	283e0209 	ld.b	$r9,$r16,-128(0xf80)
1c0035f4:	03840252 	ori	$r18,$r18,0x100
1c0035f8:	00105a4e 	add.w	$r14,$r18,$r22
1c0035fc:	001025c8 	add.w	$r8,$r14,$r9
1c003600:	00103c2d 	add.w	$r13,$r1,$r15
1c003604:	00102025 	add.w	$r5,$r1,$r8
1c003608:	2a3e01a6 	ld.bu	$r6,$r13,-128(0xf80)
1c00360c:	2a3e00af 	ld.bu	$r15,$r5,-128(0xf80)
1c003610:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c003614:	293ff986 	st.b	$r6,$r12,-2(0xffe)
1c003618:	293ffd8f 	st.b	$r15,$r12,-1(0xfff)
1c00361c:	5ffe77ac 	bne	$r29,$r12,-396(0x3fe74) # 1c003490 <shell17_main+0x1c30>
1c003620:	02800628 	addi.w	$r8,$r17,1(0x1)
1c003624:	02800a31 	addi.w	$r17,$r17,2(0x2)
1c003628:	63fe662b 	blt	$r17,$r11,-412(0x3fe64) # 1c00348c <shell17_main+0x1c2c>
1c00362c:	15ffff8b 	lu12i.w	$r11,-4(0xffffc)
1c003630:	001503ec 	move	$r12,$r31
1c003634:	28000181 	ld.b	$r1,$r12,0
1c003638:	1400008e 	lu12i.w	$r14,4(0x4)
1c00363c:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c003640:	02804069 	addi.w	$r9,$r3,16(0x10)
1c003644:	038401c6 	ori	$r6,$r14,0x100
1c003648:	28000984 	ld.b	$r4,$r12,2(0x2)
1c00364c:	28000d94 	ld.b	$r20,$r12,3(0x3)
1c003650:	001024d0 	add.w	$r16,$r6,$r9
1c003654:	038401d2 	ori	$r18,$r14,0x100
1c003658:	28001193 	ld.b	$r19,$r12,4(0x4)
1c00365c:	00102645 	add.w	$r5,$r18,$r9
1c003660:	038401d1 	ori	$r17,$r14,0x100
1c003664:	00100601 	add.w	$r1,$r16,$r1
1c003668:	038401d0 	ori	$r16,$r14,0x100
1c00366c:	28001587 	ld.b	$r7,$r12,5(0x5)
1c003670:	28001996 	ld.b	$r22,$r12,6(0x6)
1c003674:	28001d8f 	ld.b	$r15,$r12,7(0x7)
1c003678:	00102626 	add.w	$r6,$r17,$r9
1c00367c:	00102612 	add.w	$r18,$r16,$r9
1c003680:	001034ad 	add.w	$r13,$r5,$r13
1c003684:	038401c5 	ori	$r5,$r14,0x100
1c003688:	001024b1 	add.w	$r17,$r5,$r9
1c00368c:	001010c4 	add.w	$r4,$r6,$r4
1c003690:	00105254 	add.w	$r20,$r18,$r20
1c003694:	038401c6 	ori	$r6,$r14,0x100
1c003698:	038401d2 	ori	$r18,$r14,0x100
1c00369c:	038401ce 	ori	$r14,$r14,0x100
1c0036a0:	001024d0 	add.w	$r16,$r6,$r9
1c0036a4:	00102645 	add.w	$r5,$r18,$r9
1c0036a8:	00104e33 	add.w	$r19,$r17,$r19
1c0036ac:	001025d1 	add.w	$r17,$r14,$r9
1c0036b0:	001058b6 	add.w	$r22,$r5,$r22
1c0036b4:	00103e2f 	add.w	$r15,$r17,$r15
1c0036b8:	00101e07 	add.w	$r7,$r16,$r7
1c0036bc:	00100561 	add.w	$r1,$r11,$r1
1c0036c0:	00101d70 	add.w	$r16,$r11,$r7
1c0036c4:	0010356d 	add.w	$r13,$r11,$r13
1c0036c8:	00105967 	add.w	$r7,$r11,$r22
1c0036cc:	00101164 	add.w	$r4,$r11,$r4
1c0036d0:	00105174 	add.w	$r20,$r11,$r20
1c0036d4:	00104d73 	add.w	$r19,$r11,$r19
1c0036d8:	00103d76 	add.w	$r22,$r11,$r15
1c0036dc:	2a3e0026 	ld.bu	$r6,$r1,-128(0xf80)
1c0036e0:	2a3e01a5 	ld.bu	$r5,$r13,-128(0xf80)
1c0036e4:	2a3e008e 	ld.bu	$r14,$r4,-128(0xf80)
1c0036e8:	2a3e0289 	ld.bu	$r9,$r20,-128(0xf80)
1c0036ec:	2a3e0261 	ld.bu	$r1,$r19,-128(0xf80)
1c0036f0:	2a3e0212 	ld.bu	$r18,$r16,-128(0xf80)
1c0036f4:	2a3e00f1 	ld.bu	$r17,$r7,-128(0xf80)
1c0036f8:	2a3e02cf 	ld.bu	$r15,$r22,-128(0xf80)
1c0036fc:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c003700:	293fe186 	st.b	$r6,$r12,-8(0xff8)
1c003704:	293fe585 	st.b	$r5,$r12,-7(0xff9)
1c003708:	293fe98e 	st.b	$r14,$r12,-6(0xffa)
1c00370c:	293fed89 	st.b	$r9,$r12,-5(0xffb)
1c003710:	293ff181 	st.b	$r1,$r12,-4(0xffc)
1c003714:	293ff592 	st.b	$r18,$r12,-3(0xffd)
1c003718:	293ff991 	st.b	$r17,$r12,-2(0xffe)
1c00371c:	293ffd8f 	st.b	$r15,$r12,-1(0xfff)
1c003720:	5fff17ac 	bne	$r29,$r12,-236(0x3ff14) # 1c003634 <shell17_main+0x1dd4>
1c003724:	02800508 	addi.w	$r8,$r8,1(0x1)
1c003728:	63ff090a 	blt	$r8,$r10,-248(0x3ff08) # 1c003630 <shell17_main+0x1dd0>
1c00372c:	542ec400 	bl	11972(0x2ec4) # 1c0065f0 <get_clock>
1c003730:	28800347 	ld.w	$r7,$r26,0
1c003734:	0015008a 	move	$r10,$r4
1c003738:	1c000fac 	pcaddu12i	$r12,125(0x7d)
1c00373c:	28b4f18c 	ld.w	$r12,$r12,-708(0xd3c)
1c003740:	29802067 	st.w	$r7,$r3,8(0x8)
1c003744:	2800206b 	ld.b	$r11,$r3,8(0x8)
1c003748:	29800364 	st.w	$r4,$r27,0
1c00374c:	28000186 	ld.b	$r6,$r12,0
1c003750:	5c2360cb 	bne	$r6,$r11,9056(0x2360) # 1c005ab0 <shell17_main+0x4250>
1c003754:	28000586 	ld.b	$r6,$r12,1(0x1)
1c003758:	5c2358cb 	bne	$r6,$r11,9048(0x2358) # 1c005ab0 <shell17_main+0x4250>
1c00375c:	28000986 	ld.b	$r6,$r12,2(0x2)
1c003760:	5c2350cb 	bne	$r6,$r11,9040(0x2350) # 1c005ab0 <shell17_main+0x4250>
1c003764:	28000d86 	ld.b	$r6,$r12,3(0x3)
1c003768:	5c2348cb 	bne	$r6,$r11,9032(0x2348) # 1c005ab0 <shell17_main+0x4250>
1c00376c:	28001186 	ld.b	$r6,$r12,4(0x4)
1c003770:	5c2340cb 	bne	$r6,$r11,9024(0x2340) # 1c005ab0 <shell17_main+0x4250>
1c003774:	28001586 	ld.b	$r6,$r12,5(0x5)
1c003778:	5c2338cb 	bne	$r6,$r11,9016(0x2338) # 1c005ab0 <shell17_main+0x4250>
1c00377c:	28001986 	ld.b	$r6,$r12,6(0x6)
1c003780:	5c2330cb 	bne	$r6,$r11,9008(0x2330) # 1c005ab0 <shell17_main+0x4250>
1c003784:	28001d86 	ld.b	$r6,$r12,7(0x7)
1c003788:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00378c:	5c2324cb 	bne	$r6,$r11,8996(0x2324) # 1c005ab0 <shell17_main+0x4250>
1c003790:	5fffbfac 	bne	$r29,$r12,-68(0x3ffbc) # 1c00374c <shell17_main+0x1eec>
1c003794:	2880030d 	ld.w	$r13,$r24,0
1c003798:	14001e84 	lu12i.w	$r4,244(0xf4)
1c00379c:	03890094 	ori	$r20,$r4,0x240
1c0037a0:	00113553 	sub.w	$r19,$r10,$r13
1c0037a4:	028fa006 	addi.w	$r6,$r0,1000(0x3e8)
1c0037a8:	00215267 	div.wu	$r7,$r19,$r20
1c0037ac:	5c000a80 	bne	$r20,$r0,8(0x8) # 1c0037b4 <shell17_main+0x1f54>
1c0037b0:	002a0007 	break	0x7
1c0037b4:	1c000fa5 	pcaddu12i	$r5,125(0x7d)
1c0037b8:	02a530a5 	addi.w	$r5,$r5,-1716(0x94c)
1c0037bc:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c0037c0:	02a1b084 	addi.w	$r4,$r4,-1940(0x86c)
1c0037c4:	54263c00 	bl	9788(0x263c) # 1c005e00 <printf>
1c0037c8:	542e2800 	bl	11816(0x2e28) # 1c0065f0 <get_clock>
1c0037cc:	28800336 	ld.w	$r22,$r25,0
1c0037d0:	29800304 	st.w	$r4,$r24,0
1c0037d4:	00150007 	move	$r7,$r0
1c0037d8:	15ffff8f 	lu12i.w	$r15,-4(0xffffc)
1c0037dc:	64010816 	bge	$r0,$r22,264(0x108) # 1c0038e4 <shell17_main+0x2084>
1c0037e0:	001503cd 	move	$r13,$r30
1c0037e4:	001503ec 	move	$r12,$r31
1c0037e8:	1400008e 	lu12i.w	$r14,4(0x4)
1c0037ec:	28000189 	ld.b	$r9,$r12,0
1c0037f0:	0280406a 	addi.w	$r10,$r3,16(0x10)
1c0037f4:	038401d0 	ori	$r16,$r14,0x100
1c0037f8:	28000586 	ld.b	$r6,$r12,1(0x1)
1c0037fc:	28000985 	ld.b	$r5,$r12,2(0x2)
1c003800:	00102a04 	add.w	$r4,$r16,$r10
1c003804:	038401d4 	ori	$r20,$r14,0x100
1c003808:	038401d0 	ori	$r16,$r14,0x100
1c00380c:	28000d81 	ld.b	$r1,$r12,3(0x3)
1c003810:	28001188 	ld.b	$r8,$r12,4(0x4)
1c003814:	00102a93 	add.w	$r19,$r20,$r10
1c003818:	2800158b 	ld.b	$r11,$r12,5(0x5)
1c00381c:	038401d4 	ori	$r20,$r14,0x100
1c003820:	28001992 	ld.b	$r18,$r12,6(0x6)
1c003824:	28001d91 	ld.b	$r17,$r12,7(0x7)
1c003828:	00102489 	add.w	$r9,$r4,$r9
1c00382c:	00102a04 	add.w	$r4,$r16,$r10
1c003830:	038401d0 	ori	$r16,$r14,0x100
1c003834:	00101a66 	add.w	$r6,$r19,$r6
1c003838:	00101485 	add.w	$r5,$r4,$r5
1c00383c:	00102a93 	add.w	$r19,$r20,$r10
1c003840:	00102a04 	add.w	$r4,$r16,$r10
1c003844:	038401d4 	ori	$r20,$r14,0x100
1c003848:	038401d0 	ori	$r16,$r14,0x100
1c00384c:	038401ce 	ori	$r14,$r14,0x100
1c003850:	00100661 	add.w	$r1,$r19,$r1
1c003854:	00102088 	add.w	$r8,$r4,$r8
1c003858:	00102a93 	add.w	$r19,$r20,$r10
1c00385c:	00102a04 	add.w	$r4,$r16,$r10
1c003860:	001029d4 	add.w	$r20,$r14,$r10
1c003864:	00104892 	add.w	$r18,$r4,$r18
1c003868:	00104691 	add.w	$r17,$r20,$r17
1c00386c:	00102e6b 	add.w	$r11,$r19,$r11
1c003870:	001025e9 	add.w	$r9,$r15,$r9
1c003874:	001019e6 	add.w	$r6,$r15,$r6
1c003878:	00102df3 	add.w	$r19,$r15,$r11
1c00387c:	001015e5 	add.w	$r5,$r15,$r5
1c003880:	001005e1 	add.w	$r1,$r15,$r1
1c003884:	001021e8 	add.w	$r8,$r15,$r8
1c003888:	001049eb 	add.w	$r11,$r15,$r18
1c00388c:	001045f0 	add.w	$r16,$r15,$r17
1c003890:	2a3e012e 	ld.bu	$r14,$r9,-128(0xf80)
1c003894:	2a3e00ca 	ld.bu	$r10,$r6,-128(0xf80)
1c003898:	2a3e00a9 	ld.bu	$r9,$r5,-128(0xf80)
1c00389c:	2a3e0024 	ld.bu	$r4,$r1,-128(0xf80)
1c0038a0:	2a3e0114 	ld.bu	$r20,$r8,-128(0xf80)
1c0038a4:	2a3e0266 	ld.bu	$r6,$r19,-128(0xf80)
1c0038a8:	2a3e0172 	ld.bu	$r18,$r11,-128(0xf80)
1c0038ac:	2a3e0211 	ld.bu	$r17,$r16,-128(0xf80)
1c0038b0:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c0038b4:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0038b8:	293fe1ae 	st.b	$r14,$r13,-8(0xff8)
1c0038bc:	293fe5aa 	st.b	$r10,$r13,-7(0xff9)
1c0038c0:	293fe9a9 	st.b	$r9,$r13,-6(0xffa)
1c0038c4:	293feda4 	st.b	$r4,$r13,-5(0xffb)
1c0038c8:	293ff1b4 	st.b	$r20,$r13,-4(0xffc)
1c0038cc:	293ff5a6 	st.b	$r6,$r13,-3(0xffd)
1c0038d0:	293ff9b2 	st.b	$r18,$r13,-2(0xffe)
1c0038d4:	293ffdb1 	st.b	$r17,$r13,-1(0xfff)
1c0038d8:	5fff13ac 	bne	$r29,$r12,-240(0x3ff10) # 1c0037e8 <shell17_main+0x1f88>
1c0038dc:	028004e7 	addi.w	$r7,$r7,1(0x1)
1c0038e0:	5fff00f6 	bne	$r7,$r22,-256(0x3ff00) # 1c0037e0 <shell17_main+0x1f80>
1c0038e4:	542d0c00 	bl	11532(0x2d0c) # 1c0065f0 <get_clock>
1c0038e8:	28800347 	ld.w	$r7,$r26,0
1c0038ec:	1c000fbf 	pcaddu12i	$r31,125(0x7d)
1c0038f0:	28ade3ff 	ld.w	$r31,$r31,-1160(0xb78)
1c0038f4:	028fa3f6 	addi.w	$r22,$r31,1000(0x3e8)
1c0038f8:	00117acf 	sub.w	$r15,$r22,$r30
1c0038fc:	29802067 	st.w	$r7,$r3,8(0x8)
1c003900:	29800364 	st.w	$r4,$r27,0
1c003904:	03401ded 	andi	$r13,$r15,0x7
1c003908:	0015009d 	move	$r29,$r4
1c00390c:	2800206c 	ld.b	$r12,$r3,8(0x8)
1c003910:	58008da0 	beq	$r13,$r0,140(0x8c) # 1c00399c <shell17_main+0x213c>
1c003914:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003918:	580069a5 	beq	$r13,$r5,104(0x68) # 1c003980 <shell17_main+0x2120>
1c00391c:	02800801 	addi.w	$r1,$r0,2(0x2)
1c003920:	580055a1 	beq	$r13,$r1,84(0x54) # 1c003974 <shell17_main+0x2114>
1c003924:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c003928:	580041a8 	beq	$r13,$r8,64(0x40) # 1c003968 <shell17_main+0x2108>
1c00392c:	02801013 	addi.w	$r19,$r0,4(0x4)
1c003930:	58002db3 	beq	$r13,$r19,44(0x2c) # 1c00395c <shell17_main+0x20fc>
1c003934:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c003938:	580019ab 	beq	$r13,$r11,24(0x18) # 1c003950 <shell17_main+0x20f0>
1c00393c:	02801810 	addi.w	$r16,$r0,6(0x6)
1c003940:	5c2191b0 	bne	$r13,$r16,8592(0x2190) # 1c005ad0 <shell17_main+0x4270>
1c003944:	280003c6 	ld.b	$r6,$r30,0
1c003948:	028007de 	addi.w	$r30,$r30,1(0x1)
1c00394c:	5c2194cc 	bne	$r6,$r12,8596(0x2194) # 1c005ae0 <shell17_main+0x4280>
1c003950:	280003c6 	ld.b	$r6,$r30,0
1c003954:	028007de 	addi.w	$r30,$r30,1(0x1)
1c003958:	5c2188cc 	bne	$r6,$r12,8584(0x2188) # 1c005ae0 <shell17_main+0x4280>
1c00395c:	280003c6 	ld.b	$r6,$r30,0
1c003960:	028007de 	addi.w	$r30,$r30,1(0x1)
1c003964:	5c217ccc 	bne	$r6,$r12,8572(0x217c) # 1c005ae0 <shell17_main+0x4280>
1c003968:	280003c6 	ld.b	$r6,$r30,0
1c00396c:	028007de 	addi.w	$r30,$r30,1(0x1)
1c003970:	5c2170cc 	bne	$r6,$r12,8560(0x2170) # 1c005ae0 <shell17_main+0x4280>
1c003974:	280003c6 	ld.b	$r6,$r30,0
1c003978:	028007de 	addi.w	$r30,$r30,1(0x1)
1c00397c:	5c2164cc 	bne	$r6,$r12,8548(0x2164) # 1c005ae0 <shell17_main+0x4280>
1c003980:	280003c6 	ld.b	$r6,$r30,0
1c003984:	5c215ccc 	bne	$r6,$r12,8540(0x215c) # 1c005ae0 <shell17_main+0x4280>
1c003988:	1c000fae 	pcaddu12i	$r14,125(0x7d)
1c00398c:	28ab71ce 	ld.w	$r14,$r14,-1316(0xadc)
1c003990:	028007de 	addi.w	$r30,$r30,1(0x1)
1c003994:	028fa1ca 	addi.w	$r10,$r14,1000(0x3e8)
1c003998:	58005bca 	beq	$r30,$r10,88(0x58) # 1c0039f0 <shell17_main+0x2190>
1c00399c:	280003c6 	ld.b	$r6,$r30,0
1c0039a0:	5c2140cc 	bne	$r6,$r12,8512(0x2140) # 1c005ae0 <shell17_main+0x4280>
1c0039a4:	280007c6 	ld.b	$r6,$r30,1(0x1)
1c0039a8:	5c2138cc 	bne	$r6,$r12,8504(0x2138) # 1c005ae0 <shell17_main+0x4280>
1c0039ac:	28000bc6 	ld.b	$r6,$r30,2(0x2)
1c0039b0:	5c2130cc 	bne	$r6,$r12,8496(0x2130) # 1c005ae0 <shell17_main+0x4280>
1c0039b4:	28000fc6 	ld.b	$r6,$r30,3(0x3)
1c0039b8:	5c2128cc 	bne	$r6,$r12,8488(0x2128) # 1c005ae0 <shell17_main+0x4280>
1c0039bc:	280013c6 	ld.b	$r6,$r30,4(0x4)
1c0039c0:	5c2120cc 	bne	$r6,$r12,8480(0x2120) # 1c005ae0 <shell17_main+0x4280>
1c0039c4:	280017c6 	ld.b	$r6,$r30,5(0x5)
1c0039c8:	5c2118cc 	bne	$r6,$r12,8472(0x2118) # 1c005ae0 <shell17_main+0x4280>
1c0039cc:	28001bc6 	ld.b	$r6,$r30,6(0x6)
1c0039d0:	5c2110cc 	bne	$r6,$r12,8464(0x2110) # 1c005ae0 <shell17_main+0x4280>
1c0039d4:	28001fc6 	ld.b	$r6,$r30,7(0x7)
1c0039d8:	028023de 	addi.w	$r30,$r30,8(0x8)
1c0039dc:	5c2104cc 	bne	$r6,$r12,8452(0x2104) # 1c005ae0 <shell17_main+0x4280>
1c0039e0:	1c000fa9 	pcaddu12i	$r9,125(0x7d)
1c0039e4:	28aa1129 	ld.w	$r9,$r9,-1404(0xa84)
1c0039e8:	028fa124 	addi.w	$r4,$r9,1000(0x3e8)
1c0039ec:	5fffb3c4 	bne	$r30,$r4,-80(0x3ffb0) # 1c00399c <shell17_main+0x213c>
1c0039f0:	28800314 	ld.w	$r20,$r24,0
1c0039f4:	14001e92 	lu12i.w	$r18,244(0xf4)
1c0039f8:	03890251 	ori	$r17,$r18,0x240
1c0039fc:	001153a7 	sub.w	$r7,$r29,$r20
1c003a00:	002144fd 	div.wu	$r29,$r7,$r17
1c003a04:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c003a0c <shell17_main+0x21ac>
1c003a08:	002a0007 	break	0x7
1c003a0c:	028fa006 	addi.w	$r6,$r0,1000(0x3e8)
1c003a10:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c003a14:	029c50a5 	addi.w	$r5,$r5,1812(0x714)
1c003a18:	001503a7 	move	$r7,$r29
1c003a1c:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c003a20:	02983084 	addi.w	$r4,$r4,1548(0x60c)
1c003a24:	5423dc00 	bl	9180(0x23dc) # 1c005e00 <printf>
1c003a28:	28800386 	ld.w	$r6,$r28,0
1c003a2c:	29800326 	st.w	$r6,$r25,0
1c003a30:	542bc000 	bl	11200(0x2bc0) # 1c0065f0 <get_clock>
1c003a34:	28800336 	ld.w	$r22,$r25,0
1c003a38:	29800304 	st.w	$r4,$r24,0
1c003a3c:	64222416 	bge	$r0,$r22,8740(0x2224) # 1c005c60 <shell17_main+0x4400>
1c003a40:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c003a44:	02bffec1 	addi.w	$r1,$r22,-1(0xfff)
1c003a48:	1c000fac 	pcaddu12i	$r12,125(0x7d)
1c003a4c:	28a8c18c 	ld.w	$r12,$r12,-1488(0xa30)
1c003a50:	642231f6 	bge	$r15,$r22,8752(0x2230) # 1c005c80 <shell17_main+0x4420>
1c003a54:	02800413 	addi.w	$r19,$r0,1(0x1)
1c003a58:	15ffff8d 	lu12i.w	$r13,-4(0xffffc)
1c003a5c:	0280a19f 	addi.w	$r31,$r12,40(0x28)
1c003a60:	1c000fac 	pcaddu12i	$r12,125(0x7d)
1c003a64:	28a8618c 	ld.w	$r12,$r12,-1512(0xa18)
1c003a68:	001133e5 	sub.w	$r5,$r31,$r12
1c003a6c:	02bff8a8 	addi.w	$r8,$r5,-2(0xffe)
1c003a70:	0044850b 	srli.w	$r11,$r8,0x1
1c003a74:	02800570 	addi.w	$r16,$r11,1(0x1)
1c003a78:	03400e0e 	andi	$r14,$r16,0x3
1c003a7c:	5800e5c0 	beq	$r14,$r0,228(0xe4) # 1c003b60 <shell17_main+0x2300>
1c003a80:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c003a84:	580095ca 	beq	$r14,$r10,148(0x94) # 1c003b18 <shell17_main+0x22b8>
1c003a88:	0280081e 	addi.w	$r30,$r0,2(0x2)
1c003a8c:	580049de 	beq	$r14,$r30,72(0x48) # 1c003ad4 <shell17_main+0x2274>
1c003a90:	2a400189 	ld.hu	$r9,$r12,0
1c003a94:	14000094 	lu12i.w	$r20,4(0x4)
1c003a98:	02804070 	addi.w	$r16,$r3,16(0x10)
1c003a9c:	03840291 	ori	$r17,$r20,0x100
1c003aa0:	00408524 	slli.w	$r4,$r9,0x1
1c003aa4:	00104232 	add.w	$r18,$r17,$r16
1c003aa8:	00101247 	add.w	$r7,$r18,$r4
1c003aac:	00101dbd 	add.w	$r29,$r13,$r7
1c003ab0:	2a4003a6 	ld.hu	$r6,$r29,0
1c003ab4:	0384028f 	ori	$r15,$r20,0x100
1c003ab8:	001041eb 	add.w	$r11,$r15,$r16
1c003abc:	004084c5 	slli.w	$r5,$r6,0x1
1c003ac0:	0010156e 	add.w	$r14,$r11,$r5
1c003ac4:	001039aa 	add.w	$r10,$r13,$r14
1c003ac8:	2a40015e 	ld.hu	$r30,$r10,0
1c003acc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003ad0:	297ff99e 	st.h	$r30,$r12,-2(0xffe)
1c003ad4:	2a400189 	ld.hu	$r9,$r12,0
1c003ad8:	14000094 	lu12i.w	$r20,4(0x4)
1c003adc:	02804070 	addi.w	$r16,$r3,16(0x10)
1c003ae0:	03840291 	ori	$r17,$r20,0x100
1c003ae4:	00408524 	slli.w	$r4,$r9,0x1
1c003ae8:	00104232 	add.w	$r18,$r17,$r16
1c003aec:	00101247 	add.w	$r7,$r18,$r4
1c003af0:	00101dbd 	add.w	$r29,$r13,$r7
1c003af4:	2a4003a6 	ld.hu	$r6,$r29,0
1c003af8:	0384028f 	ori	$r15,$r20,0x100
1c003afc:	001041eb 	add.w	$r11,$r15,$r16
1c003b00:	004084c5 	slli.w	$r5,$r6,0x1
1c003b04:	0010156e 	add.w	$r14,$r11,$r5
1c003b08:	001039aa 	add.w	$r10,$r13,$r14
1c003b0c:	2a40015e 	ld.hu	$r30,$r10,0
1c003b10:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003b14:	297ff99e 	st.h	$r30,$r12,-2(0xffe)
1c003b18:	2a400189 	ld.hu	$r9,$r12,0
1c003b1c:	14000094 	lu12i.w	$r20,4(0x4)
1c003b20:	02804070 	addi.w	$r16,$r3,16(0x10)
1c003b24:	03840291 	ori	$r17,$r20,0x100
1c003b28:	00408524 	slli.w	$r4,$r9,0x1
1c003b2c:	00104232 	add.w	$r18,$r17,$r16
1c003b30:	00101247 	add.w	$r7,$r18,$r4
1c003b34:	00101dbd 	add.w	$r29,$r13,$r7
1c003b38:	2a4003a6 	ld.hu	$r6,$r29,0
1c003b3c:	0384028f 	ori	$r15,$r20,0x100
1c003b40:	001041eb 	add.w	$r11,$r15,$r16
1c003b44:	004084c5 	slli.w	$r5,$r6,0x1
1c003b48:	0010156e 	add.w	$r14,$r11,$r5
1c003b4c:	001039aa 	add.w	$r10,$r13,$r14
1c003b50:	2a40015e 	ld.hu	$r30,$r10,0
1c003b54:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003b58:	297ff99e 	st.h	$r30,$r12,-2(0xffe)
1c003b5c:	5800f7ec 	beq	$r31,$r12,244(0xf4) # 1c003c50 <shell17_main+0x23f0>
1c003b60:	2a400189 	ld.hu	$r9,$r12,0
1c003b64:	2a400984 	ld.hu	$r4,$r12,2(0x2)
1c003b68:	2a401194 	ld.hu	$r20,$r12,4(0x4)
1c003b6c:	2a401991 	ld.hu	$r17,$r12,6(0x6)
1c003b70:	14000088 	lu12i.w	$r8,4(0x4)
1c003b74:	02804066 	addi.w	$r6,$r3,16(0x10)
1c003b78:	03840105 	ori	$r5,$r8,0x100
1c003b7c:	00408532 	slli.w	$r18,$r9,0x1
1c003b80:	0040863d 	slli.w	$r29,$r17,0x1
1c003b84:	001018af 	add.w	$r15,$r5,$r6
1c003b88:	0384010e 	ori	$r14,$r8,0x100
1c003b8c:	03840109 	ori	$r9,$r8,0x100
1c003b90:	03840111 	ori	$r17,$r8,0x100
1c003b94:	001049eb 	add.w	$r11,$r15,$r18
1c003b98:	00408490 	slli.w	$r16,$r4,0x1
1c003b9c:	001019ca 	add.w	$r10,$r14,$r6
1c003ba0:	00101924 	add.w	$r4,$r9,$r6
1c003ba4:	00101a32 	add.w	$r18,$r17,$r6
1c003ba8:	00408687 	slli.w	$r7,$r20,0x1
1c003bac:	00101c94 	add.w	$r20,$r4,$r7
1c003bb0:	0010415e 	add.w	$r30,$r10,$r16
1c003bb4:	00107647 	add.w	$r7,$r18,$r29
1c003bb8:	00102dbd 	add.w	$r29,$r13,$r11
1c003bbc:	001051a5 	add.w	$r5,$r13,$r20
1c003bc0:	00101dab 	add.w	$r11,$r13,$r7
1c003bc4:	2a4003aa 	ld.hu	$r10,$r29,0
1c003bc8:	001079b0 	add.w	$r16,$r13,$r30
1c003bcc:	2a40021e 	ld.hu	$r30,$r16,0
1c003bd0:	2a4000af 	ld.hu	$r15,$r5,0
1c003bd4:	2a40016e 	ld.hu	$r14,$r11,0
1c003bd8:	00408549 	slli.w	$r9,$r10,0x1
1c003bdc:	03840112 	ori	$r18,$r8,0x100
1c003be0:	03840110 	ori	$r16,$r8,0x100
1c003be4:	0384010a 	ori	$r10,$r8,0x100
1c003be8:	03840108 	ori	$r8,$r8,0x100
1c003bec:	004087c4 	slli.w	$r4,$r30,0x1
1c003bf0:	004085d1 	slli.w	$r17,$r14,0x1
1c003bf4:	00101a47 	add.w	$r7,$r18,$r6
1c003bf8:	00101a05 	add.w	$r5,$r16,$r6
1c003bfc:	004085f4 	slli.w	$r20,$r15,0x1
1c003c00:	0010195e 	add.w	$r30,$r10,$r6
1c003c04:	0010190e 	add.w	$r14,$r8,$r6
1c003c08:	001024fd 	add.w	$r29,$r7,$r9
1c003c0c:	001010ab 	add.w	$r11,$r5,$r4
1c003c10:	001053cf 	add.w	$r15,$r30,$r20
1c003c14:	001045c9 	add.w	$r9,$r14,$r17
1c003c18:	001075a4 	add.w	$r4,$r13,$r29
1c003c1c:	00102db4 	add.w	$r20,$r13,$r11
1c003c20:	00103db1 	add.w	$r17,$r13,$r15
1c003c24:	001025a7 	add.w	$r7,$r13,$r9
1c003c28:	2a400092 	ld.hu	$r18,$r4,0
1c003c2c:	2a40029d 	ld.hu	$r29,$r20,0
1c003c30:	2a400230 	ld.hu	$r16,$r17,0
1c003c34:	2a4000e5 	ld.hu	$r5,$r7,0
1c003c38:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c003c3c:	297fe192 	st.h	$r18,$r12,-8(0xff8)
1c003c40:	297fe99d 	st.h	$r29,$r12,-6(0xffa)
1c003c44:	297ff190 	st.h	$r16,$r12,-4(0xffc)
1c003c48:	297ff985 	st.h	$r5,$r12,-2(0xffe)
1c003c4c:	5fff17ec 	bne	$r31,$r12,-236(0x3ff14) # 1c003b60 <shell17_main+0x2300>
1c003c50:	02800672 	addi.w	$r18,$r19,1(0x1)
1c003c54:	02800a73 	addi.w	$r19,$r19,2(0x2)
1c003c58:	63fe0a61 	blt	$r19,$r1,-504(0x3fe08) # 1c003a60 <shell17_main+0x2200>
1c003c5c:	15ffff81 	lu12i.w	$r1,-4(0xffffc)
1c003c60:	1c000fac 	pcaddu12i	$r12,125(0x7d)
1c003c64:	28a0618c 	ld.w	$r12,$r12,-2024(0x818)
1c003c68:	001133ed 	sub.w	$r13,$r31,$r12
1c003c6c:	02bff9ab 	addi.w	$r11,$r13,-2(0xffe)
1c003c70:	0044856a 	srli.w	$r10,$r11,0x1
1c003c74:	0280055e 	addi.w	$r30,$r10,1(0x1)
1c003c78:	03401fc8 	andi	$r8,$r30,0x7
1c003c7c:	58016d00 	beq	$r8,$r0,364(0x16c) # 1c003de8 <shell17_main+0x2588>
1c003c80:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c003c84:	5801350f 	beq	$r8,$r15,308(0x134) # 1c003db8 <shell17_main+0x2558>
1c003c88:	02800806 	addi.w	$r6,$r0,2(0x2)
1c003c8c:	58010106 	beq	$r8,$r6,256(0x100) # 1c003d8c <shell17_main+0x252c>
1c003c90:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c003c94:	5800cd0e 	beq	$r8,$r14,204(0xcc) # 1c003d60 <shell17_main+0x2500>
1c003c98:	02801009 	addi.w	$r9,$r0,4(0x4)
1c003c9c:	58009909 	beq	$r8,$r9,152(0x98) # 1c003d34 <shell17_main+0x24d4>
1c003ca0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c003ca4:	58006504 	beq	$r8,$r4,100(0x64) # 1c003d08 <shell17_main+0x24a8>
1c003ca8:	02801814 	addi.w	$r20,$r0,6(0x6)
1c003cac:	58003114 	beq	$r8,$r20,48(0x30) # 1c003cdc <shell17_main+0x247c>
1c003cb0:	2a400191 	ld.hu	$r17,$r12,0
1c003cb4:	1400009d 	lu12i.w	$r29,4(0x4)
1c003cb8:	038403a5 	ori	$r5,$r29,0x100
1c003cbc:	02804070 	addi.w	$r16,$r3,16(0x10)
1c003cc0:	00408627 	slli.w	$r7,$r17,0x1
1c003cc4:	001040b3 	add.w	$r19,$r5,$r16
1c003cc8:	00101e6d 	add.w	$r13,$r19,$r7
1c003ccc:	0010342b 	add.w	$r11,$r1,$r13
1c003cd0:	2a40016a 	ld.hu	$r10,$r11,0
1c003cd4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003cd8:	297ff98a 	st.h	$r10,$r12,-2(0xffe)
1c003cdc:	2a40019e 	ld.hu	$r30,$r12,0
1c003ce0:	1400008f 	lu12i.w	$r15,4(0x4)
1c003ce4:	038401e6 	ori	$r6,$r15,0x100
1c003ce8:	0280406e 	addi.w	$r14,$r3,16(0x10)
1c003cec:	004087c8 	slli.w	$r8,$r30,0x1
1c003cf0:	001038c9 	add.w	$r9,$r6,$r14
1c003cf4:	00102124 	add.w	$r4,$r9,$r8
1c003cf8:	00101034 	add.w	$r20,$r1,$r4
1c003cfc:	2a400291 	ld.hu	$r17,$r20,0
1c003d00:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003d04:	297ff991 	st.h	$r17,$r12,-2(0xffe)
1c003d08:	2a400187 	ld.hu	$r7,$r12,0
1c003d0c:	14000085 	lu12i.w	$r5,4(0x4)
1c003d10:	038400b3 	ori	$r19,$r5,0x100
1c003d14:	02804070 	addi.w	$r16,$r3,16(0x10)
1c003d18:	004084fd 	slli.w	$r29,$r7,0x1
1c003d1c:	0010426d 	add.w	$r13,$r19,$r16
1c003d20:	001075ab 	add.w	$r11,$r13,$r29
1c003d24:	00102c2a 	add.w	$r10,$r1,$r11
1c003d28:	2a40015e 	ld.hu	$r30,$r10,0
1c003d2c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003d30:	297ff99e 	st.h	$r30,$r12,-2(0xffe)
1c003d34:	2a400188 	ld.hu	$r8,$r12,0
1c003d38:	1400008f 	lu12i.w	$r15,4(0x4)
1c003d3c:	038401ee 	ori	$r14,$r15,0x100
1c003d40:	02804069 	addi.w	$r9,$r3,16(0x10)
1c003d44:	00408506 	slli.w	$r6,$r8,0x1
1c003d48:	001025c4 	add.w	$r4,$r14,$r9
1c003d4c:	00101894 	add.w	$r20,$r4,$r6
1c003d50:	00105031 	add.w	$r17,$r1,$r20
1c003d54:	2a400227 	ld.hu	$r7,$r17,0
1c003d58:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003d5c:	297ff987 	st.h	$r7,$r12,-2(0xffe)
1c003d60:	2a40019d 	ld.hu	$r29,$r12,0
1c003d64:	14000093 	lu12i.w	$r19,4(0x4)
1c003d68:	0384026d 	ori	$r13,$r19,0x100
1c003d6c:	02804070 	addi.w	$r16,$r3,16(0x10)
1c003d70:	004087a5 	slli.w	$r5,$r29,0x1
1c003d74:	001041ab 	add.w	$r11,$r13,$r16
1c003d78:	0010156a 	add.w	$r10,$r11,$r5
1c003d7c:	0010283e 	add.w	$r30,$r1,$r10
1c003d80:	2a4003c8 	ld.hu	$r8,$r30,0
1c003d84:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003d88:	297ff988 	st.h	$r8,$r12,-2(0xffe)
1c003d8c:	2a400186 	ld.hu	$r6,$r12,0
1c003d90:	1400008f 	lu12i.w	$r15,4(0x4)
1c003d94:	038401e9 	ori	$r9,$r15,0x100
1c003d98:	02804064 	addi.w	$r4,$r3,16(0x10)
1c003d9c:	004084ce 	slli.w	$r14,$r6,0x1
1c003da0:	00101134 	add.w	$r20,$r9,$r4
1c003da4:	00103a91 	add.w	$r17,$r20,$r14
1c003da8:	00104427 	add.w	$r7,$r1,$r17
1c003dac:	2a4000fd 	ld.hu	$r29,$r7,0
1c003db0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003db4:	297ff99d 	st.h	$r29,$r12,-2(0xffe)
1c003db8:	2a400185 	ld.hu	$r5,$r12,0
1c003dbc:	1400008d 	lu12i.w	$r13,4(0x4)
1c003dc0:	038401ab 	ori	$r11,$r13,0x100
1c003dc4:	02804070 	addi.w	$r16,$r3,16(0x10)
1c003dc8:	004084b3 	slli.w	$r19,$r5,0x1
1c003dcc:	0010416a 	add.w	$r10,$r11,$r16
1c003dd0:	00104d5e 	add.w	$r30,$r10,$r19
1c003dd4:	00107828 	add.w	$r8,$r1,$r30
1c003dd8:	2a400106 	ld.hu	$r6,$r8,0
1c003ddc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003de0:	297ff986 	st.h	$r6,$r12,-2(0xffe)
1c003de4:	580117ec 	beq	$r31,$r12,276(0x114) # 1c003ef8 <shell17_main+0x2698>
1c003de8:	2a402191 	ld.hu	$r17,$r12,8(0x8)
1c003dec:	2a402987 	ld.hu	$r7,$r12,10(0xa)
1c003df0:	2a40018e 	ld.hu	$r14,$r12,0
1c003df4:	2a400989 	ld.hu	$r9,$r12,2(0x2)
1c003df8:	2a401184 	ld.hu	$r4,$r12,4(0x4)
1c003dfc:	2a401994 	ld.hu	$r20,$r12,6(0x6)
1c003e00:	2a40318f 	ld.hu	$r15,$r12,12(0xc)
1c003e04:	2a40399d 	ld.hu	$r29,$r12,14(0xe)
1c003e08:	00408633 	slli.w	$r19,$r17,0x1
1c003e0c:	14000091 	lu12i.w	$r17,4(0x4)
1c003e10:	00408525 	slli.w	$r5,$r9,0x1
1c003e14:	03840228 	ori	$r8,$r17,0x100
1c003e18:	02804069 	addi.w	$r9,$r3,16(0x10)
1c003e1c:	0040848a 	slli.w	$r10,$r4,0x1
1c003e20:	03840224 	ori	$r4,$r17,0x100
1c003e24:	00102506 	add.w	$r6,$r8,$r9
1c003e28:	004085cb 	slli.w	$r11,$r14,0x1
1c003e2c:	0040869e 	slli.w	$r30,$r20,0x1
1c003e30:	004084f0 	slli.w	$r16,$r7,0x1
1c003e34:	00102494 	add.w	$r20,$r4,$r9
1c003e38:	03840227 	ori	$r7,$r17,0x100
1c003e3c:	004085ee 	slli.w	$r14,$r15,0x1
1c003e40:	004087ad 	slli.w	$r13,$r29,0x1
1c003e44:	001024ef 	add.w	$r15,$r7,$r9
1c003e48:	00102cdd 	add.w	$r29,$r6,$r11
1c003e4c:	0010168b 	add.w	$r11,$r20,$r5
1c003e50:	03840225 	ori	$r5,$r17,0x100
1c003e54:	001024a8 	add.w	$r8,$r5,$r9
1c003e58:	03840226 	ori	$r6,$r17,0x100
1c003e5c:	03840234 	ori	$r20,$r17,0x100
1c003e60:	001029ea 	add.w	$r10,$r15,$r10
1c003e64:	0384022f 	ori	$r15,$r17,0x100
1c003e68:	03840231 	ori	$r17,$r17,0x100
1c003e6c:	001024c4 	add.w	$r4,$r6,$r9
1c003e70:	00102687 	add.w	$r7,$r20,$r9
1c003e74:	001025e5 	add.w	$r5,$r15,$r9
1c003e78:	0010791e 	add.w	$r30,$r8,$r30
1c003e7c:	00102628 	add.w	$r8,$r17,$r9
1c003e80:	001038ae 	add.w	$r14,$r5,$r14
1c003e84:	00104c93 	add.w	$r19,$r4,$r19
1c003e88:	001040f0 	add.w	$r16,$r7,$r16
1c003e8c:	0010350d 	add.w	$r13,$r8,$r13
1c003e90:	0010382f 	add.w	$r15,$r1,$r14
1c003e94:	0010743d 	add.w	$r29,$r1,$r29
1c003e98:	00102c2b 	add.w	$r11,$r1,$r11
1c003e9c:	0010282a 	add.w	$r10,$r1,$r10
1c003ea0:	0010783e 	add.w	$r30,$r1,$r30
1c003ea4:	00104c33 	add.w	$r19,$r1,$r19
1c003ea8:	00104027 	add.w	$r7,$r1,$r16
1c003eac:	0010342e 	add.w	$r14,$r1,$r13
1c003eb0:	2a4003a6 	ld.hu	$r6,$r29,0
1c003eb4:	2a400165 	ld.hu	$r5,$r11,0
1c003eb8:	2a400144 	ld.hu	$r4,$r10,0
1c003ebc:	2a4003d4 	ld.hu	$r20,$r30,0
1c003ec0:	2a400271 	ld.hu	$r17,$r19,0
1c003ec4:	2a4000f0 	ld.hu	$r16,$r7,0
1c003ec8:	2a4001e9 	ld.hu	$r9,$r15,0
1c003ecc:	2a4001c8 	ld.hu	$r8,$r14,0
1c003ed0:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c003ed4:	297fc186 	st.h	$r6,$r12,-16(0xff0)
1c003ed8:	297fc985 	st.h	$r5,$r12,-14(0xff2)
1c003edc:	297fd184 	st.h	$r4,$r12,-12(0xff4)
1c003ee0:	297fd994 	st.h	$r20,$r12,-10(0xff6)
1c003ee4:	297fe191 	st.h	$r17,$r12,-8(0xff8)
1c003ee8:	297fe990 	st.h	$r16,$r12,-6(0xffa)
1c003eec:	297ff189 	st.h	$r9,$r12,-4(0xffc)
1c003ef0:	297ff988 	st.h	$r8,$r12,-2(0xffe)
1c003ef4:	5ffef7ec 	bne	$r31,$r12,-268(0x3fef4) # 1c003de8 <shell17_main+0x2588>
1c003ef8:	02800652 	addi.w	$r18,$r18,1(0x1)
1c003efc:	63fd6656 	blt	$r18,$r22,-668(0x3fd64) # 1c003c60 <shell17_main+0x2400>
1c003f00:	5426f000 	bl	9968(0x26f0) # 1c0065f0 <get_clock>
1c003f04:	1c000f96 	pcaddu12i	$r22,124(0x7c)
1c003f08:	2895d2d6 	ld.w	$r22,$r22,1396(0x574)
1c003f0c:	00115bed 	sub.w	$r13,$r31,$r22
1c003f10:	2880034c 	ld.w	$r12,$r26,0
1c003f14:	02bff9ab 	addi.w	$r11,$r13,-2(0xffe)
1c003f18:	0044856a 	srli.w	$r10,$r11,0x1
1c003f1c:	02800553 	addi.w	$r19,$r10,1(0x1)
1c003f20:	2980206c 	st.w	$r12,$r3,8(0x8)
1c003f24:	29800364 	st.w	$r4,$r27,0
1c003f28:	03401e67 	andi	$r7,$r19,0x7
1c003f2c:	0015009d 	move	$r29,$r4
1c003f30:	001502d4 	move	$r20,$r22
1c003f34:	2a40207e 	ld.hu	$r30,$r3,8(0x8)
1c003f38:	580080e0 	beq	$r7,$r0,128(0x80) # 1c003fb8 <shell17_main+0x2758>
1c003f3c:	02800401 	addi.w	$r1,$r0,1(0x1)
1c003f40:	580068e1 	beq	$r7,$r1,104(0x68) # 1c003fa8 <shell17_main+0x2748>
1c003f44:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c003f48:	580054ef 	beq	$r7,$r15,84(0x54) # 1c003f9c <shell17_main+0x273c>
1c003f4c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c003f50:	580040ee 	beq	$r7,$r14,64(0x40) # 1c003f90 <shell17_main+0x2730>
1c003f54:	02801006 	addi.w	$r6,$r0,4(0x4)
1c003f58:	58002ce6 	beq	$r7,$r6,44(0x2c) # 1c003f84 <shell17_main+0x2724>
1c003f5c:	02801405 	addi.w	$r5,$r0,5(0x5)
1c003f60:	580018e5 	beq	$r7,$r5,24(0x18) # 1c003f78 <shell17_main+0x2718>
1c003f64:	02801804 	addi.w	$r4,$r0,6(0x6)
1c003f68:	5c1b18e4 	bne	$r7,$r4,6936(0x1b18) # 1c005a80 <shell17_main+0x4220>
1c003f6c:	2a400286 	ld.hu	$r6,$r20,0
1c003f70:	02800a94 	addi.w	$r20,$r20,2(0x2)
1c003f74:	5c1b1cde 	bne	$r6,$r30,6940(0x1b1c) # 1c005a90 <shell17_main+0x4230>
1c003f78:	2a400286 	ld.hu	$r6,$r20,0
1c003f7c:	02800a94 	addi.w	$r20,$r20,2(0x2)
1c003f80:	5c1b10de 	bne	$r6,$r30,6928(0x1b10) # 1c005a90 <shell17_main+0x4230>
1c003f84:	2a400286 	ld.hu	$r6,$r20,0
1c003f88:	02800a94 	addi.w	$r20,$r20,2(0x2)
1c003f8c:	5c1b04de 	bne	$r6,$r30,6916(0x1b04) # 1c005a90 <shell17_main+0x4230>
1c003f90:	2a400286 	ld.hu	$r6,$r20,0
1c003f94:	02800a94 	addi.w	$r20,$r20,2(0x2)
1c003f98:	5c1af8de 	bne	$r6,$r30,6904(0x1af8) # 1c005a90 <shell17_main+0x4230>
1c003f9c:	2a400286 	ld.hu	$r6,$r20,0
1c003fa0:	02800a94 	addi.w	$r20,$r20,2(0x2)
1c003fa4:	5c1aecde 	bne	$r6,$r30,6892(0x1aec) # 1c005a90 <shell17_main+0x4230>
1c003fa8:	2a400286 	ld.hu	$r6,$r20,0
1c003fac:	5c1ae4de 	bne	$r6,$r30,6884(0x1ae4) # 1c005a90 <shell17_main+0x4230>
1c003fb0:	02800a94 	addi.w	$r20,$r20,2(0x2)
1c003fb4:	58004ff4 	beq	$r31,$r20,76(0x4c) # 1c004000 <shell17_main+0x27a0>
1c003fb8:	2a400286 	ld.hu	$r6,$r20,0
1c003fbc:	5c1ad4de 	bne	$r6,$r30,6868(0x1ad4) # 1c005a90 <shell17_main+0x4230>
1c003fc0:	2a400a86 	ld.hu	$r6,$r20,2(0x2)
1c003fc4:	5c1accde 	bne	$r6,$r30,6860(0x1acc) # 1c005a90 <shell17_main+0x4230>
1c003fc8:	2a401286 	ld.hu	$r6,$r20,4(0x4)
1c003fcc:	5c1ac4de 	bne	$r6,$r30,6852(0x1ac4) # 1c005a90 <shell17_main+0x4230>
1c003fd0:	2a401a86 	ld.hu	$r6,$r20,6(0x6)
1c003fd4:	5c1abcde 	bne	$r6,$r30,6844(0x1abc) # 1c005a90 <shell17_main+0x4230>
1c003fd8:	2a402286 	ld.hu	$r6,$r20,8(0x8)
1c003fdc:	5c1ab4de 	bne	$r6,$r30,6836(0x1ab4) # 1c005a90 <shell17_main+0x4230>
1c003fe0:	2a402a86 	ld.hu	$r6,$r20,10(0xa)
1c003fe4:	5c1aacde 	bne	$r6,$r30,6828(0x1aac) # 1c005a90 <shell17_main+0x4230>
1c003fe8:	2a403286 	ld.hu	$r6,$r20,12(0xc)
1c003fec:	5c1aa4de 	bne	$r6,$r30,6820(0x1aa4) # 1c005a90 <shell17_main+0x4230>
1c003ff0:	2a403a86 	ld.hu	$r6,$r20,14(0xe)
1c003ff4:	02804294 	addi.w	$r20,$r20,16(0x10)
1c003ff8:	5c1a98de 	bne	$r6,$r30,6808(0x1a98) # 1c005a90 <shell17_main+0x4230>
1c003ffc:	5fffbff4 	bne	$r31,$r20,-68(0x3ffbc) # 1c003fb8 <shell17_main+0x2758>
1c004000:	28800311 	ld.w	$r17,$r24,0
1c004004:	14001e90 	lu12i.w	$r16,244(0xf4)
1c004008:	03890209 	ori	$r9,$r16,0x240
1c00400c:	001147a8 	sub.w	$r8,$r29,$r17
1c004010:	02805006 	addi.w	$r6,$r0,20(0x14)
1c004014:	00212507 	div.wu	$r7,$r8,$r9
1c004018:	5c000920 	bne	$r9,$r0,8(0x8) # 1c004020 <shell17_main+0x27c0>
1c00401c:	002a0007 	break	0x7
1c004020:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c004024:	028480a5 	addi.w	$r5,$r5,288(0x120)
1c004028:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c00402c:	02800084 	addi.w	$r4,$r4,0
1c004030:	541dd000 	bl	7632(0x1dd0) # 1c005e00 <printf>
1c004034:	5425bc00 	bl	9660(0x25bc) # 1c0065f0 <get_clock>
1c004038:	2880033d 	ld.w	$r29,$r25,0
1c00403c:	29800304 	st.w	$r4,$r24,0
1c004040:	1c000f9e 	pcaddu12i	$r30,124(0x7c)
1c004044:	2890a3de 	ld.w	$r30,$r30,1064(0x428)
1c004048:	00150010 	move	$r16,$r0
1c00404c:	15ffff8b 	lu12i.w	$r11,-4(0xffffc)
1c004050:	6402c81d 	bge	$r0,$r29,712(0x2c8) # 1c004318 <shell17_main+0x2ab8>
1c004054:	00115bf2 	sub.w	$r18,$r31,$r22
1c004058:	02bffa4a 	addi.w	$r10,$r18,-2(0xffe)
1c00405c:	00448553 	srli.w	$r19,$r10,0x1
1c004060:	02800661 	addi.w	$r1,$r19,1(0x1)
1c004064:	03401c2f 	andi	$r15,$r1,0x7
1c004068:	1c000f8d 	pcaddu12i	$r13,124(0x7c)
1c00406c:	289001ad 	ld.w	$r13,$r13,1024(0x400)
1c004070:	001502cc 	move	$r12,$r22
1c004074:	580189e0 	beq	$r15,$r0,392(0x188) # 1c0041fc <shell17_main+0x299c>
1c004078:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00407c:	58014dee 	beq	$r15,$r14,332(0x14c) # 1c0041c8 <shell17_main+0x2968>
1c004080:	02800806 	addi.w	$r6,$r0,2(0x2)
1c004084:	580115e6 	beq	$r15,$r6,276(0x114) # 1c004198 <shell17_main+0x2938>
1c004088:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00408c:	5800dde5 	beq	$r15,$r5,220(0xdc) # 1c004168 <shell17_main+0x2908>
1c004090:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004094:	5800a5e4 	beq	$r15,$r4,164(0xa4) # 1c004138 <shell17_main+0x28d8>
1c004098:	02801414 	addi.w	$r20,$r0,5(0x5)
1c00409c:	58006df4 	beq	$r15,$r20,108(0x6c) # 1c004108 <shell17_main+0x28a8>
1c0040a0:	02801811 	addi.w	$r17,$r0,6(0x6)
1c0040a4:	580035f1 	beq	$r15,$r17,52(0x34) # 1c0040d8 <shell17_main+0x2878>
1c0040a8:	2a4002c9 	ld.hu	$r9,$r22,0
1c0040ac:	14000087 	lu12i.w	$r7,4(0x4)
1c0040b0:	038400f2 	ori	$r18,$r7,0x100
1c0040b4:	0280406a 	addi.w	$r10,$r3,16(0x10)
1c0040b8:	00408528 	slli.w	$r8,$r9,0x1
1c0040bc:	00102a53 	add.w	$r19,$r18,$r10
1c0040c0:	00102261 	add.w	$r1,$r19,$r8
1c0040c4:	0010056f 	add.w	$r15,$r11,$r1
1c0040c8:	2a4001ee 	ld.hu	$r14,$r15,0
1c0040cc:	02800acc 	addi.w	$r12,$r22,2(0x2)
1c0040d0:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0040d4:	297ff9ae 	st.h	$r14,$r13,-2(0xffe)
1c0040d8:	2a400186 	ld.hu	$r6,$r12,0
1c0040dc:	14000084 	lu12i.w	$r4,4(0x4)
1c0040e0:	03840094 	ori	$r20,$r4,0x100
1c0040e4:	02804071 	addi.w	$r17,$r3,16(0x10)
1c0040e8:	004084c5 	slli.w	$r5,$r6,0x1
1c0040ec:	00104689 	add.w	$r9,$r20,$r17
1c0040f0:	00101528 	add.w	$r8,$r9,$r5
1c0040f4:	00102167 	add.w	$r7,$r11,$r8
1c0040f8:	2a4000f2 	ld.hu	$r18,$r7,0
1c0040fc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004100:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c004104:	297ff9b2 	st.h	$r18,$r13,-2(0xffe)
1c004108:	2a40018a 	ld.hu	$r10,$r12,0
1c00410c:	14000093 	lu12i.w	$r19,4(0x4)
1c004110:	0384026f 	ori	$r15,$r19,0x100
1c004114:	0280406e 	addi.w	$r14,$r3,16(0x10)
1c004118:	00408541 	slli.w	$r1,$r10,0x1
1c00411c:	001039e6 	add.w	$r6,$r15,$r14
1c004120:	001004c5 	add.w	$r5,$r6,$r1
1c004124:	00101564 	add.w	$r4,$r11,$r5
1c004128:	2a400094 	ld.hu	$r20,$r4,0
1c00412c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004130:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c004134:	297ff9b4 	st.h	$r20,$r13,-2(0xffe)
1c004138:	2a400191 	ld.hu	$r17,$r12,0
1c00413c:	14000088 	lu12i.w	$r8,4(0x4)
1c004140:	03840107 	ori	$r7,$r8,0x100
1c004144:	02804072 	addi.w	$r18,$r3,16(0x10)
1c004148:	00408629 	slli.w	$r9,$r17,0x1
1c00414c:	001048ea 	add.w	$r10,$r7,$r18
1c004150:	00102541 	add.w	$r1,$r10,$r9
1c004154:	00100573 	add.w	$r19,$r11,$r1
1c004158:	2a40026f 	ld.hu	$r15,$r19,0
1c00415c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004160:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c004164:	297ff9af 	st.h	$r15,$r13,-2(0xffe)
1c004168:	2a40018e 	ld.hu	$r14,$r12,0
1c00416c:	14000085 	lu12i.w	$r5,4(0x4)
1c004170:	038400a4 	ori	$r4,$r5,0x100
1c004174:	02804074 	addi.w	$r20,$r3,16(0x10)
1c004178:	004085c6 	slli.w	$r6,$r14,0x1
1c00417c:	00105091 	add.w	$r17,$r4,$r20
1c004180:	00101a29 	add.w	$r9,$r17,$r6
1c004184:	00102568 	add.w	$r8,$r11,$r9
1c004188:	2a400107 	ld.hu	$r7,$r8,0
1c00418c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004190:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c004194:	297ff9a7 	st.h	$r7,$r13,-2(0xffe)
1c004198:	2a400192 	ld.hu	$r18,$r12,0
1c00419c:	14000081 	lu12i.w	$r1,4(0x4)
1c0041a0:	0384002f 	ori	$r15,$r1,0x100
1c0041a4:	02804073 	addi.w	$r19,$r3,16(0x10)
1c0041a8:	0040864a 	slli.w	$r10,$r18,0x1
1c0041ac:	00104dee 	add.w	$r14,$r15,$r19
1c0041b0:	001029c6 	add.w	$r6,$r14,$r10
1c0041b4:	00101965 	add.w	$r5,$r11,$r6
1c0041b8:	2a4000a4 	ld.hu	$r4,$r5,0
1c0041bc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0041c0:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0041c4:	297ff9a4 	st.h	$r4,$r13,-2(0xffe)
1c0041c8:	2a400194 	ld.hu	$r20,$r12,0
1c0041cc:	14000089 	lu12i.w	$r9,4(0x4)
1c0041d0:	03840128 	ori	$r8,$r9,0x100
1c0041d4:	02804067 	addi.w	$r7,$r3,16(0x10)
1c0041d8:	00408691 	slli.w	$r17,$r20,0x1
1c0041dc:	00101d12 	add.w	$r18,$r8,$r7
1c0041e0:	0010464a 	add.w	$r10,$r18,$r17
1c0041e4:	00102961 	add.w	$r1,$r11,$r10
1c0041e8:	2a40002f 	ld.hu	$r15,$r1,0
1c0041ec:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0041f0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0041f4:	297ff9af 	st.h	$r15,$r13,-2(0xffe)
1c0041f8:	58011bec 	beq	$r31,$r12,280(0x118) # 1c004310 <shell17_main+0x2ab0>
1c0041fc:	2a400186 	ld.hu	$r6,$r12,0
1c004200:	2a400985 	ld.hu	$r5,$r12,2(0x2)
1c004204:	2a40318e 	ld.hu	$r14,$r12,12(0xc)
1c004208:	2a403989 	ld.hu	$r9,$r12,14(0xe)
1c00420c:	2a402193 	ld.hu	$r19,$r12,8(0x8)
1c004210:	2a402991 	ld.hu	$r17,$r12,10(0xa)
1c004214:	14000088 	lu12i.w	$r8,4(0x4)
1c004218:	2a401184 	ld.hu	$r4,$r12,4(0x4)
1c00421c:	2a401994 	ld.hu	$r20,$r12,6(0x6)
1c004220:	0280406a 	addi.w	$r10,$r3,16(0x10)
1c004224:	004084c1 	slli.w	$r1,$r6,0x1
1c004228:	03840106 	ori	$r6,$r8,0x100
1c00422c:	004084af 	slli.w	$r15,$r5,0x1
1c004230:	00408632 	slli.w	$r18,$r17,0x1
1c004234:	001028c5 	add.w	$r5,$r6,$r10
1c004238:	004085d1 	slli.w	$r17,$r14,0x1
1c00423c:	03840106 	ori	$r6,$r8,0x100
1c004240:	0384010e 	ori	$r14,$r8,0x100
1c004244:	00408527 	slli.w	$r7,$r9,0x1
1c004248:	001004a1 	add.w	$r1,$r5,$r1
1c00424c:	001029c9 	add.w	$r9,$r14,$r10
1c004250:	001028c5 	add.w	$r5,$r6,$r10
1c004254:	0384010e 	ori	$r14,$r8,0x100
1c004258:	03840106 	ori	$r6,$r8,0x100
1c00425c:	00408484 	slli.w	$r4,$r4,0x1
1c004260:	00103d2f 	add.w	$r15,$r9,$r15
1c004264:	001010a4 	add.w	$r4,$r5,$r4
1c004268:	001029c9 	add.w	$r9,$r14,$r10
1c00426c:	001028c5 	add.w	$r5,$r6,$r10
1c004270:	0384010e 	ori	$r14,$r8,0x100
1c004274:	03840106 	ori	$r6,$r8,0x100
1c004278:	00408694 	slli.w	$r20,$r20,0x1
1c00427c:	03840108 	ori	$r8,$r8,0x100
1c004280:	00408673 	slli.w	$r19,$r19,0x1
1c004284:	00105134 	add.w	$r20,$r9,$r20
1c004288:	00104cb3 	add.w	$r19,$r5,$r19
1c00428c:	001029c9 	add.w	$r9,$r14,$r10
1c004290:	001028c5 	add.w	$r5,$r6,$r10
1c004294:	0010290e 	add.w	$r14,$r8,$r10
1c004298:	001044b1 	add.w	$r17,$r5,$r17
1c00429c:	00101dc7 	add.w	$r7,$r14,$r7
1c0042a0:	00104932 	add.w	$r18,$r9,$r18
1c0042a4:	00100561 	add.w	$r1,$r11,$r1
1c0042a8:	00103d6f 	add.w	$r15,$r11,$r15
1c0042ac:	00104969 	add.w	$r9,$r11,$r18
1c0042b0:	00101164 	add.w	$r4,$r11,$r4
1c0042b4:	00104572 	add.w	$r18,$r11,$r17
1c0042b8:	00105174 	add.w	$r20,$r11,$r20
1c0042bc:	00101d71 	add.w	$r17,$r11,$r7
1c0042c0:	00104d73 	add.w	$r19,$r11,$r19
1c0042c4:	2a400026 	ld.hu	$r6,$r1,0
1c0042c8:	2a4001e8 	ld.hu	$r8,$r15,0
1c0042cc:	2a400085 	ld.hu	$r5,$r4,0
1c0042d0:	2a40028a 	ld.hu	$r10,$r20,0
1c0042d4:	2a400267 	ld.hu	$r7,$r19,0
1c0042d8:	2a400121 	ld.hu	$r1,$r9,0
1c0042dc:	2a40024f 	ld.hu	$r15,$r18,0
1c0042e0:	2a40022e 	ld.hu	$r14,$r17,0
1c0042e4:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c0042e8:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c0042ec:	297fc1a6 	st.h	$r6,$r13,-16(0xff0)
1c0042f0:	297fc9a8 	st.h	$r8,$r13,-14(0xff2)
1c0042f4:	297fd1a5 	st.h	$r5,$r13,-12(0xff4)
1c0042f8:	297fd9aa 	st.h	$r10,$r13,-10(0xff6)
1c0042fc:	297fe1a7 	st.h	$r7,$r13,-8(0xff8)
1c004300:	297fe9a1 	st.h	$r1,$r13,-6(0xffa)
1c004304:	297ff1af 	st.h	$r15,$r13,-4(0xffc)
1c004308:	297ff9ae 	st.h	$r14,$r13,-2(0xffe)
1c00430c:	5ffef3ec 	bne	$r31,$r12,-272(0x3fef0) # 1c0041fc <shell17_main+0x299c>
1c004310:	02800610 	addi.w	$r16,$r16,1(0x1)
1c004314:	5ffd421d 	bne	$r16,$r29,-704(0x3fd40) # 1c004054 <shell17_main+0x27f4>
1c004318:	5422d800 	bl	8920(0x22d8) # 1c0065f0 <get_clock>
1c00431c:	28800347 	ld.w	$r7,$r26,0
1c004320:	1c000f9d 	pcaddu12i	$r29,124(0x7c)
1c004324:	288523bd 	ld.w	$r29,$r29,328(0x148)
1c004328:	0280a3de 	addi.w	$r30,$r30,40(0x28)
1c00432c:	29803067 	st.w	$r7,$r3,12(0xc)
1c004330:	2a40306d 	ld.hu	$r13,$r3,12(0xc)
1c004334:	0015008b 	move	$r11,$r4
1c004338:	29800364 	st.w	$r4,$r27,0
1c00433c:	2980207e 	st.w	$r30,$r3,8(0x8)
1c004340:	001503ac 	move	$r12,$r29
1c004344:	2a400186 	ld.hu	$r6,$r12,0
1c004348:	5c1718cd 	bne	$r6,$r13,5912(0x1718) # 1c005a60 <shell17_main+0x4200>
1c00434c:	2a400986 	ld.hu	$r6,$r12,2(0x2)
1c004350:	02800984 	addi.w	$r4,$r12,2(0x2)
1c004354:	5c170ccd 	bne	$r6,$r13,5900(0x170c) # 1c005a60 <shell17_main+0x4200>
1c004358:	2a401186 	ld.hu	$r6,$r12,4(0x4)
1c00435c:	5c1704cd 	bne	$r6,$r13,5892(0x1704) # 1c005a60 <shell17_main+0x4200>
1c004360:	2a401986 	ld.hu	$r6,$r12,6(0x6)
1c004364:	5c16fccd 	bne	$r6,$r13,5884(0x16fc) # 1c005a60 <shell17_main+0x4200>
1c004368:	2a402186 	ld.hu	$r6,$r12,8(0x8)
1c00436c:	5c16f4cd 	bne	$r6,$r13,5876(0x16f4) # 1c005a60 <shell17_main+0x4200>
1c004370:	2a402986 	ld.hu	$r6,$r12,10(0xa)
1c004374:	5c16eccd 	bne	$r6,$r13,5868(0x16ec) # 1c005a60 <shell17_main+0x4200>
1c004378:	2a403186 	ld.hu	$r6,$r12,12(0xc)
1c00437c:	5c16e4cd 	bne	$r6,$r13,5860(0x16e4) # 1c005a60 <shell17_main+0x4200>
1c004380:	2a403986 	ld.hu	$r6,$r12,14(0xe)
1c004384:	5c16dccd 	bne	$r6,$r13,5852(0x16dc) # 1c005a60 <shell17_main+0x4200>
1c004388:	2a404186 	ld.hu	$r6,$r12,16(0x10)
1c00438c:	5c16d4cd 	bne	$r6,$r13,5844(0x16d4) # 1c005a60 <shell17_main+0x4200>
1c004390:	2a404986 	ld.hu	$r6,$r12,18(0x12)
1c004394:	5c16cccd 	bne	$r6,$r13,5836(0x16cc) # 1c005a60 <shell17_main+0x4200>
1c004398:	28802074 	ld.w	$r20,$r3,8(0x8)
1c00439c:	0280488c 	addi.w	$r12,$r4,18(0x12)
1c0043a0:	5fffa68c 	bne	$r20,$r12,-92(0x3ffa4) # 1c004344 <shell17_main+0x2ae4>
1c0043a4:	28800313 	ld.w	$r19,$r24,0
1c0043a8:	14001e89 	lu12i.w	$r9,244(0xf4)
1c0043ac:	03890132 	ori	$r18,$r9,0x240
1c0043b0:	00114d71 	sub.w	$r17,$r11,$r19
1c0043b4:	02805006 	addi.w	$r6,$r0,20(0x14)
1c0043b8:	00214a27 	div.wu	$r7,$r17,$r18
1c0043bc:	5c000a40 	bne	$r18,$r0,8(0x8) # 1c0043c4 <shell17_main+0x2b64>
1c0043c0:	002a0007 	break	0x7
1c0043c4:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c0043c8:	02b690a5 	addi.w	$r5,$r5,-604(0xda4)
1c0043cc:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c0043d0:	02b17084 	addi.w	$r4,$r4,-932(0xc5c)
1c0043d4:	541a2c00 	bl	6700(0x1a2c) # 1c005e00 <printf>
1c0043d8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0043dc:	29800326 	st.w	$r6,$r25,0
1c0043e0:	54221000 	bl	8720(0x2210) # 1c0065f0 <get_clock>
1c0043e4:	2880032a 	ld.w	$r10,$r25,0
1c0043e8:	29800304 	st.w	$r4,$r24,0
1c0043ec:	6403200a 	bge	$r0,$r10,800(0x320) # 1c00470c <shell17_main+0x2eac>
1c0043f0:	02800808 	addi.w	$r8,$r0,2(0x2)
1c0043f4:	02bffd41 	addi.w	$r1,$r10,-1(0xfff)
1c0043f8:	00150005 	move	$r5,$r0
1c0043fc:	6401ed0a 	bge	$r8,$r10,492(0x1ec) # 1c0045e8 <shell17_main+0x2d88>
1c004400:	02800410 	addi.w	$r16,$r0,1(0x1)
1c004404:	15ffff8b 	lu12i.w	$r11,-4(0xffffc)
1c004408:	001502cc 	move	$r12,$r22
1c00440c:	2a400185 	ld.hu	$r5,$r12,0
1c004410:	1400008f 	lu12i.w	$r15,4(0x4)
1c004414:	0280406d 	addi.w	$r13,$r3,16(0x10)
1c004418:	038401fe 	ori	$r30,$r15,0x100
1c00441c:	004084ae 	slli.w	$r14,$r5,0x1
1c004420:	001037c4 	add.w	$r4,$r30,$r13
1c004424:	00103894 	add.w	$r20,$r4,$r14
1c004428:	2a40098e 	ld.hu	$r14,$r12,2(0x2)
1c00442c:	00105173 	add.w	$r19,$r11,$r20
1c004430:	2a400269 	ld.hu	$r9,$r19,0
1c004434:	038401e4 	ori	$r4,$r15,0x100
1c004438:	004085de 	slli.w	$r30,$r14,0x1
1c00443c:	00103494 	add.w	$r20,$r4,$r13
1c004440:	00107a93 	add.w	$r19,$r20,$r30
1c004444:	038401f2 	ori	$r18,$r15,0x100
1c004448:	2a40119e 	ld.hu	$r30,$r12,4(0x4)
1c00444c:	00408531 	slli.w	$r17,$r9,0x1
1c004450:	00103647 	add.w	$r7,$r18,$r13
1c004454:	00104d69 	add.w	$r9,$r11,$r19
1c004458:	001044e6 	add.w	$r6,$r7,$r17
1c00445c:	038401f4 	ori	$r20,$r15,0x100
1c004460:	2a400131 	ld.hu	$r17,$r9,0
1c004464:	004087c4 	slli.w	$r4,$r30,0x1
1c004468:	00103693 	add.w	$r19,$r20,$r13
1c00446c:	00101269 	add.w	$r9,$r19,$r4
1c004470:	00101968 	add.w	$r8,$r11,$r6
1c004474:	2a401984 	ld.hu	$r4,$r12,6(0x6)
1c004478:	038401f2 	ori	$r18,$r15,0x100
1c00447c:	2a400105 	ld.hu	$r5,$r8,0
1c004480:	00408627 	slli.w	$r7,$r17,0x1
1c004484:	00103646 	add.w	$r6,$r18,$r13
1c004488:	00102571 	add.w	$r17,$r11,$r9
1c00448c:	00101cc8 	add.w	$r8,$r6,$r7
1c004490:	038401f3 	ori	$r19,$r15,0x100
1c004494:	2a400227 	ld.hu	$r7,$r17,0
1c004498:	00408494 	slli.w	$r20,$r4,0x1
1c00449c:	00103669 	add.w	$r9,$r19,$r13
1c0044a0:	00105131 	add.w	$r17,$r9,$r20
1c0044a4:	038401f2 	ori	$r18,$r15,0x100
1c0044a8:	2a402194 	ld.hu	$r20,$r12,8(0x8)
1c0044ac:	29400185 	st.h	$r5,$r12,0
1c0044b0:	00102165 	add.w	$r5,$r11,$r8
1c0044b4:	2a4000ae 	ld.hu	$r14,$r5,0
1c0044b8:	004084e6 	slli.w	$r6,$r7,0x1
1c0044bc:	00103648 	add.w	$r8,$r18,$r13
1c0044c0:	00104567 	add.w	$r7,$r11,$r17
1c0044c4:	00101905 	add.w	$r5,$r8,$r6
1c0044c8:	038401e9 	ori	$r9,$r15,0x100
1c0044cc:	2a4000e6 	ld.hu	$r6,$r7,0
1c0044d0:	00408693 	slli.w	$r19,$r20,0x1
1c0044d4:	00103531 	add.w	$r17,$r9,$r13
1c0044d8:	00104e27 	add.w	$r7,$r17,$r19
1c0044dc:	038401f2 	ori	$r18,$r15,0x100
1c0044e0:	2a402993 	ld.hu	$r19,$r12,10(0xa)
1c0044e4:	2940098e 	st.h	$r14,$r12,2(0x2)
1c0044e8:	0010156e 	add.w	$r14,$r11,$r5
1c0044ec:	2a4001de 	ld.hu	$r30,$r14,0
1c0044f0:	004084c8 	slli.w	$r8,$r6,0x1
1c0044f4:	00103645 	add.w	$r5,$r18,$r13
1c0044f8:	00101d66 	add.w	$r6,$r11,$r7
1c0044fc:	001020ae 	add.w	$r14,$r5,$r8
1c004500:	038401f1 	ori	$r17,$r15,0x100
1c004504:	2a4000c8 	ld.hu	$r8,$r6,0
1c004508:	00408669 	slli.w	$r9,$r19,0x1
1c00450c:	00103627 	add.w	$r7,$r17,$r13
1c004510:	001024e6 	add.w	$r6,$r7,$r9
1c004514:	038401f2 	ori	$r18,$r15,0x100
1c004518:	2a403189 	ld.hu	$r9,$r12,12(0xc)
1c00451c:	2940119e 	st.h	$r30,$r12,4(0x4)
1c004520:	0010397e 	add.w	$r30,$r11,$r14
1c004524:	2a4003c4 	ld.hu	$r4,$r30,0
1c004528:	00408505 	slli.w	$r5,$r8,0x1
1c00452c:	0010364e 	add.w	$r14,$r18,$r13
1c004530:	00101968 	add.w	$r8,$r11,$r6
1c004534:	001015de 	add.w	$r30,$r14,$r5
1c004538:	038401e7 	ori	$r7,$r15,0x100
1c00453c:	2a400105 	ld.hu	$r5,$r8,0
1c004540:	00408531 	slli.w	$r17,$r9,0x1
1c004544:	001034e6 	add.w	$r6,$r7,$r13
1c004548:	001044c8 	add.w	$r8,$r6,$r17
1c00454c:	038401f2 	ori	$r18,$r15,0x100
1c004550:	2a403991 	ld.hu	$r17,$r12,14(0xe)
1c004554:	29401984 	st.h	$r4,$r12,6(0x6)
1c004558:	00107964 	add.w	$r4,$r11,$r30
1c00455c:	2a400094 	ld.hu	$r20,$r4,0
1c004560:	004084ae 	slli.w	$r14,$r5,0x1
1c004564:	0010365e 	add.w	$r30,$r18,$r13
1c004568:	00102165 	add.w	$r5,$r11,$r8
1c00456c:	00103bc4 	add.w	$r4,$r30,$r14
1c004570:	038401e6 	ori	$r6,$r15,0x100
1c004574:	2a4000ae 	ld.hu	$r14,$r5,0
1c004578:	00408627 	slli.w	$r7,$r17,0x1
1c00457c:	001034c8 	add.w	$r8,$r6,$r13
1c004580:	038401f2 	ori	$r18,$r15,0x100
1c004584:	29402194 	st.h	$r20,$r12,8(0x8)
1c004588:	00101d05 	add.w	$r5,$r8,$r7
1c00458c:	00101174 	add.w	$r20,$r11,$r4
1c004590:	2a400293 	ld.hu	$r19,$r20,0
1c004594:	004085de 	slli.w	$r30,$r14,0x1
1c004598:	00103644 	add.w	$r4,$r18,$r13
1c00459c:	0010156e 	add.w	$r14,$r11,$r5
1c0045a0:	00107894 	add.w	$r20,$r4,$r30
1c0045a4:	2a4001de 	ld.hu	$r30,$r14,0
1c0045a8:	29402993 	st.h	$r19,$r12,10(0xa)
1c0045ac:	038401ef 	ori	$r15,$r15,0x100
1c0045b0:	00105173 	add.w	$r19,$r11,$r20
1c0045b4:	2a400269 	ld.hu	$r9,$r19,0
1c0045b8:	004087c4 	slli.w	$r4,$r30,0x1
1c0045bc:	001035f2 	add.w	$r18,$r15,$r13
1c0045c0:	00101254 	add.w	$r20,$r18,$r4
1c0045c4:	00105173 	add.w	$r19,$r11,$r20
1c0045c8:	29403189 	st.h	$r9,$r12,12(0xc)
1c0045cc:	2a400269 	ld.hu	$r9,$r19,0
1c0045d0:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c0045d4:	297ff989 	st.h	$r9,$r12,-2(0xffe)
1c0045d8:	5ffe36ec 	bne	$r23,$r12,-460(0x3fe34) # 1c00440c <shell17_main+0x2bac>
1c0045dc:	02800605 	addi.w	$r5,$r16,1(0x1)
1c0045e0:	02800a10 	addi.w	$r16,$r16,2(0x2)
1c0045e4:	63fe2601 	blt	$r16,$r1,-476(0x3fe24) # 1c004408 <shell17_main+0x2ba8>
1c0045e8:	15ffff81 	lu12i.w	$r1,-4(0xffffc)
1c0045ec:	03400000 	andi	$r0,$r0,0x0
1c0045f0:	001502cd 	move	$r13,$r22
1c0045f4:	2a4011a8 	ld.hu	$r8,$r13,4(0x4)
1c0045f8:	2a4019be 	ld.hu	$r30,$r13,6(0x6)
1c0045fc:	2a4001ab 	ld.hu	$r11,$r13,0
1c004600:	2a4009a6 	ld.hu	$r6,$r13,2(0x2)
1c004604:	2a4021b1 	ld.hu	$r17,$r13,8(0x8)
1c004608:	2a4029af 	ld.hu	$r15,$r13,10(0xa)
1c00460c:	2a4031ae 	ld.hu	$r14,$r13,12(0xc)
1c004610:	2a4039a7 	ld.hu	$r7,$r13,14(0xe)
1c004614:	004087d2 	slli.w	$r18,$r30,0x1
1c004618:	1400009e 	lu12i.w	$r30,4(0x4)
1c00461c:	02804069 	addi.w	$r9,$r3,16(0x10)
1c004620:	00408513 	slli.w	$r19,$r8,0x1
1c004624:	038403c8 	ori	$r8,$r30,0x100
1c004628:	00408564 	slli.w	$r4,$r11,0x1
1c00462c:	0040862c 	slli.w	$r12,$r17,0x1
1c004630:	004085f0 	slli.w	$r16,$r15,0x1
1c004634:	00102511 	add.w	$r17,$r8,$r9
1c004638:	038403cf 	ori	$r15,$r30,0x100
1c00463c:	004084d4 	slli.w	$r20,$r6,0x1
1c004640:	004085cb 	slli.w	$r11,$r14,0x1
1c004644:	004084e6 	slli.w	$r6,$r7,0x1
1c004648:	001025ee 	add.w	$r14,$r15,$r9
1c00464c:	038403c7 	ori	$r7,$r30,0x100
1c004650:	00101224 	add.w	$r4,$r17,$r4
1c004654:	038403d1 	ori	$r17,$r30,0x100
1c004658:	001024e8 	add.w	$r8,$r7,$r9
1c00465c:	0010262f 	add.w	$r15,$r17,$r9
1c004660:	001051d4 	add.w	$r20,$r14,$r20
1c004664:	038403ce 	ori	$r14,$r30,0x100
1c004668:	001025c7 	add.w	$r7,$r14,$r9
1c00466c:	00104d13 	add.w	$r19,$r8,$r19
1c004670:	001049f2 	add.w	$r18,$r15,$r18
1c004674:	038403c8 	ori	$r8,$r30,0x100
1c004678:	038403cf 	ori	$r15,$r30,0x100
1c00467c:	038403de 	ori	$r30,$r30,0x100
1c004680:	00102511 	add.w	$r17,$r8,$r9
1c004684:	001025ee 	add.w	$r14,$r15,$r9
1c004688:	001030ec 	add.w	$r12,$r7,$r12
1c00468c:	001027c7 	add.w	$r7,$r30,$r9
1c004690:	00102dcb 	add.w	$r11,$r14,$r11
1c004694:	001018e6 	add.w	$r6,$r7,$r6
1c004698:	00104230 	add.w	$r16,$r17,$r16
1c00469c:	00101024 	add.w	$r4,$r1,$r4
1c0046a0:	00104031 	add.w	$r17,$r1,$r16
1c0046a4:	0010182f 	add.w	$r15,$r1,$r6
1c0046a8:	00102c30 	add.w	$r16,$r1,$r11
1c0046ac:	00105034 	add.w	$r20,$r1,$r20
1c0046b0:	00104c33 	add.w	$r19,$r1,$r19
1c0046b4:	00104832 	add.w	$r18,$r1,$r18
1c0046b8:	0010302c 	add.w	$r12,$r1,$r12
1c0046bc:	2a40008b 	ld.hu	$r11,$r4,0
1c0046c0:	2a400288 	ld.hu	$r8,$r20,0
1c0046c4:	2a40027e 	ld.hu	$r30,$r19,0
1c0046c8:	2a400249 	ld.hu	$r9,$r18,0
1c0046cc:	2a400187 	ld.hu	$r7,$r12,0
1c0046d0:	2a400226 	ld.hu	$r6,$r17,0
1c0046d4:	2a400204 	ld.hu	$r4,$r16,0
1c0046d8:	2a4001ee 	ld.hu	$r14,$r15,0
1c0046dc:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c0046e0:	297fc1ab 	st.h	$r11,$r13,-16(0xff0)
1c0046e4:	297fc9a8 	st.h	$r8,$r13,-14(0xff2)
1c0046e8:	297fd1be 	st.h	$r30,$r13,-12(0xff4)
1c0046ec:	297fd9a9 	st.h	$r9,$r13,-10(0xff6)
1c0046f0:	297fe1a7 	st.h	$r7,$r13,-8(0xff8)
1c0046f4:	297fe9a6 	st.h	$r6,$r13,-6(0xffa)
1c0046f8:	297ff1a4 	st.h	$r4,$r13,-4(0xffc)
1c0046fc:	297ff9ae 	st.h	$r14,$r13,-2(0xffe)
1c004700:	5ffef6ed 	bne	$r23,$r13,-268(0x3fef4) # 1c0045f4 <shell17_main+0x2d94>
1c004704:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c004708:	63fee8aa 	blt	$r5,$r10,-280(0x3fee8) # 1c0045f0 <shell17_main+0x2d90>
1c00470c:	541ee400 	bl	7908(0x1ee4) # 1c0065f0 <get_clock>
1c004710:	28800347 	ld.w	$r7,$r26,0
1c004714:	0015008a 	move	$r10,$r4
1c004718:	1c000f94 	pcaddu12i	$r20,124(0x7c)
1c00471c:	28b58294 	ld.w	$r20,$r20,-672(0xd60)
1c004720:	29803067 	st.w	$r7,$r3,12(0xc)
1c004724:	2a40306d 	ld.hu	$r13,$r3,12(0xc)
1c004728:	29800364 	st.w	$r4,$r27,0
1c00472c:	2a400286 	ld.hu	$r6,$r20,0
1c004730:	5c1310cd 	bne	$r6,$r13,4880(0x1310) # 1c005a40 <shell17_main+0x41e0>
1c004734:	2a400a86 	ld.hu	$r6,$r20,2(0x2)
1c004738:	5c1308cd 	bne	$r6,$r13,4872(0x1308) # 1c005a40 <shell17_main+0x41e0>
1c00473c:	2a401286 	ld.hu	$r6,$r20,4(0x4)
1c004740:	5c1300cd 	bne	$r6,$r13,4864(0x1300) # 1c005a40 <shell17_main+0x41e0>
1c004744:	2a401a86 	ld.hu	$r6,$r20,6(0x6)
1c004748:	5c12f8cd 	bne	$r6,$r13,4856(0x12f8) # 1c005a40 <shell17_main+0x41e0>
1c00474c:	2a402286 	ld.hu	$r6,$r20,8(0x8)
1c004750:	5c12f0cd 	bne	$r6,$r13,4848(0x12f0) # 1c005a40 <shell17_main+0x41e0>
1c004754:	2a402a86 	ld.hu	$r6,$r20,10(0xa)
1c004758:	5c12e8cd 	bne	$r6,$r13,4840(0x12e8) # 1c005a40 <shell17_main+0x41e0>
1c00475c:	2a403286 	ld.hu	$r6,$r20,12(0xc)
1c004760:	5c12e0cd 	bne	$r6,$r13,4832(0x12e0) # 1c005a40 <shell17_main+0x41e0>
1c004764:	2a403a86 	ld.hu	$r6,$r20,14(0xe)
1c004768:	02804294 	addi.w	$r20,$r20,16(0x10)
1c00476c:	5c12d4cd 	bne	$r6,$r13,4820(0x12d4) # 1c005a40 <shell17_main+0x41e0>
1c004770:	5fffbef4 	bne	$r23,$r20,-68(0x3ffbc) # 1c00472c <shell17_main+0x2ecc>
1c004774:	28800301 	ld.w	$r1,$r24,0
1c004778:	14001e93 	lu12i.w	$r19,244(0xf4)
1c00477c:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c004780:	02a830a5 	addi.w	$r5,$r5,-1524(0xa0c)
1c004784:	03890272 	ori	$r18,$r19,0x240
1c004788:	00110551 	sub.w	$r17,$r10,$r1
1c00478c:	028fa006 	addi.w	$r6,$r0,1000(0x3e8)
1c004790:	00214a27 	div.wu	$r7,$r17,$r18
1c004794:	5c000a40 	bne	$r18,$r0,8(0x8) # 1c00479c <shell17_main+0x2f3c>
1c004798:	002a0007 	break	0x7
1c00479c:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c0047a0:	02a23084 	addi.w	$r4,$r4,-1908(0x88c)
1c0047a4:	54165c00 	bl	5724(0x165c) # 1c005e00 <printf>
1c0047a8:	541e4800 	bl	7752(0x1e48) # 1c0065f0 <get_clock>
1c0047ac:	2880032b 	ld.w	$r11,$r25,0
1c0047b0:	29800304 	st.w	$r4,$r24,0
1c0047b4:	00150005 	move	$r5,$r0
1c0047b8:	15ffff9e 	lu12i.w	$r30,-4(0xffffc)
1c0047bc:	6401280b 	bge	$r0,$r11,296(0x128) # 1c0048e4 <shell17_main+0x3084>
1c0047c0:	001503ad 	move	$r13,$r29
1c0047c4:	001502cc 	move	$r12,$r22
1c0047c8:	2a40018f 	ld.hu	$r15,$r12,0
1c0047cc:	2a400989 	ld.hu	$r9,$r12,2(0x2)
1c0047d0:	2a40218a 	ld.hu	$r10,$r12,8(0x8)
1c0047d4:	2a402990 	ld.hu	$r16,$r12,10(0xa)
1c0047d8:	2a401186 	ld.hu	$r6,$r12,4(0x4)
1c0047dc:	2a40198e 	ld.hu	$r14,$r12,6(0x6)
1c0047e0:	2a403188 	ld.hu	$r8,$r12,12(0xc)
1c0047e4:	2a403981 	ld.hu	$r1,$r12,14(0xe)
1c0047e8:	004085e4 	slli.w	$r4,$r15,0x1
1c0047ec:	1400008f 	lu12i.w	$r15,4(0x4)
1c0047f0:	00408534 	slli.w	$r20,$r9,0x1
1c0047f4:	00408551 	slli.w	$r17,$r10,0x1
1c0047f8:	038401e9 	ori	$r9,$r15,0x100
1c0047fc:	0280406a 	addi.w	$r10,$r3,16(0x10)
1c004800:	004084d3 	slli.w	$r19,$r6,0x1
1c004804:	004085d2 	slli.w	$r18,$r14,0x1
1c004808:	00408606 	slli.w	$r6,$r16,0x1
1c00480c:	0040850e 	slli.w	$r14,$r8,0x1
1c004810:	00102930 	add.w	$r16,$r9,$r10
1c004814:	038401e8 	ori	$r8,$r15,0x100
1c004818:	038401e9 	ori	$r9,$r15,0x100
1c00481c:	00408427 	slli.w	$r7,$r1,0x1
1c004820:	00101201 	add.w	$r1,$r16,$r4
1c004824:	00102904 	add.w	$r4,$r8,$r10
1c004828:	00102930 	add.w	$r16,$r9,$r10
1c00482c:	038401e8 	ori	$r8,$r15,0x100
1c004830:	038401e9 	ori	$r9,$r15,0x100
1c004834:	00105094 	add.w	$r20,$r4,$r20
1c004838:	00104e13 	add.w	$r19,$r16,$r19
1c00483c:	00102904 	add.w	$r4,$r8,$r10
1c004840:	00102930 	add.w	$r16,$r9,$r10
1c004844:	038401e8 	ori	$r8,$r15,0x100
1c004848:	038401e9 	ori	$r9,$r15,0x100
1c00484c:	038401ef 	ori	$r15,$r15,0x100
1c004850:	00104892 	add.w	$r18,$r4,$r18
1c004854:	00104611 	add.w	$r17,$r16,$r17
1c004858:	00102904 	add.w	$r4,$r8,$r10
1c00485c:	00102930 	add.w	$r16,$r9,$r10
1c004860:	001029e8 	add.w	$r8,$r15,$r10
1c004864:	00101d07 	add.w	$r7,$r8,$r7
1c004868:	00101886 	add.w	$r6,$r4,$r6
1c00486c:	00103a0e 	add.w	$r14,$r16,$r14
1c004870:	001007c1 	add.w	$r1,$r30,$r1
1c004874:	001053d4 	add.w	$r20,$r30,$r20
1c004878:	00103bd0 	add.w	$r16,$r30,$r14
1c00487c:	00104fd3 	add.w	$r19,$r30,$r19
1c004880:	00101fce 	add.w	$r14,$r30,$r7
1c004884:	00104bd2 	add.w	$r18,$r30,$r18
1c004888:	001047d1 	add.w	$r17,$r30,$r17
1c00488c:	00101bc6 	add.w	$r6,$r30,$r6
1c004890:	2a400024 	ld.hu	$r4,$r1,0
1c004894:	2a400289 	ld.hu	$r9,$r20,0
1c004898:	2a40026f 	ld.hu	$r15,$r19,0
1c00489c:	2a40024a 	ld.hu	$r10,$r18,0
1c0048a0:	2a400228 	ld.hu	$r8,$r17,0
1c0048a4:	2a4000c7 	ld.hu	$r7,$r6,0
1c0048a8:	2a400201 	ld.hu	$r1,$r16,0
1c0048ac:	2a4001d4 	ld.hu	$r20,$r14,0
1c0048b0:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c0048b4:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c0048b8:	297fc1a4 	st.h	$r4,$r13,-16(0xff0)
1c0048bc:	297fc9a9 	st.h	$r9,$r13,-14(0xff2)
1c0048c0:	297fd1af 	st.h	$r15,$r13,-12(0xff4)
1c0048c4:	297fd9aa 	st.h	$r10,$r13,-10(0xff6)
1c0048c8:	297fe1a8 	st.h	$r8,$r13,-8(0xff8)
1c0048cc:	297fe9a7 	st.h	$r7,$r13,-6(0xffa)
1c0048d0:	297ff1a1 	st.h	$r1,$r13,-4(0xffc)
1c0048d4:	297ff9b4 	st.h	$r20,$r13,-2(0xffe)
1c0048d8:	5ffef2ec 	bne	$r23,$r12,-272(0x3fef0) # 1c0047c8 <shell17_main+0x2f68>
1c0048dc:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0048e0:	5ffee0ab 	bne	$r5,$r11,-288(0x3fee0) # 1c0047c0 <shell17_main+0x2f60>
1c0048e4:	541d0c00 	bl	7436(0x1d0c) # 1c0065f0 <get_clock>
1c0048e8:	28800347 	ld.w	$r7,$r26,0
1c0048ec:	029f43be 	addi.w	$r30,$r29,2000(0x7d0)
1c0048f0:	29800364 	st.w	$r4,$r27,0
1c0048f4:	29803067 	st.w	$r7,$r3,12(0xc)
1c0048f8:	2a40306b 	ld.hu	$r11,$r3,12(0xc)
1c0048fc:	1c000f8c 	pcaddu12i	$r12,124(0x7c)
1c004900:	28adb18c 	ld.w	$r12,$r12,-1172(0xb6c)
1c004904:	2a400186 	ld.hu	$r6,$r12,0
1c004908:	5c1118cb 	bne	$r6,$r11,4376(0x1118) # 1c005a20 <shell17_main+0x41c0>
1c00490c:	2a400986 	ld.hu	$r6,$r12,2(0x2)
1c004910:	5c1110cb 	bne	$r6,$r11,4368(0x1110) # 1c005a20 <shell17_main+0x41c0>
1c004914:	2a401186 	ld.hu	$r6,$r12,4(0x4)
1c004918:	5c1108cb 	bne	$r6,$r11,4360(0x1108) # 1c005a20 <shell17_main+0x41c0>
1c00491c:	2a401986 	ld.hu	$r6,$r12,6(0x6)
1c004920:	5c1100cb 	bne	$r6,$r11,4352(0x1100) # 1c005a20 <shell17_main+0x41c0>
1c004924:	2a402186 	ld.hu	$r6,$r12,8(0x8)
1c004928:	5c10f8cb 	bne	$r6,$r11,4344(0x10f8) # 1c005a20 <shell17_main+0x41c0>
1c00492c:	2a402986 	ld.hu	$r6,$r12,10(0xa)
1c004930:	5c10f0cb 	bne	$r6,$r11,4336(0x10f0) # 1c005a20 <shell17_main+0x41c0>
1c004934:	2a403186 	ld.hu	$r6,$r12,12(0xc)
1c004938:	5c10e8cb 	bne	$r6,$r11,4328(0x10e8) # 1c005a20 <shell17_main+0x41c0>
1c00493c:	2a403986 	ld.hu	$r6,$r12,14(0xe)
1c004940:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c004944:	5c10dccb 	bne	$r6,$r11,4316(0x10dc) # 1c005a20 <shell17_main+0x41c0>
1c004948:	5fffbfcc 	bne	$r30,$r12,-68(0x3ffbc) # 1c004904 <shell17_main+0x30a4>
1c00494c:	03400000 	andi	$r0,$r0,0x0
1c004950:	2880030d 	ld.w	$r13,$r24,0
1c004954:	14001e93 	lu12i.w	$r19,244(0xf4)
1c004958:	03890272 	ori	$r18,$r19,0x240
1c00495c:	00113491 	sub.w	$r17,$r4,$r13
1c004960:	028fa006 	addi.w	$r6,$r0,1000(0x3e8)
1c004964:	00214a27 	div.wu	$r7,$r17,$r18
1c004968:	5c000a40 	bne	$r18,$r0,8(0x8) # 1c004970 <shell17_main+0x3110>
1c00496c:	002a0007 	break	0x7
1c004970:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c004974:	02a100a5 	addi.w	$r5,$r5,-1984(0x840)
1c004978:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c00497c:	029ac084 	addi.w	$r4,$r4,1712(0x6b0)
1c004980:	54148000 	bl	5248(0x1480) # 1c005e00 <printf>
1c004984:	2880039c 	ld.w	$r28,$r28,0
1c004988:	2980033c 	st.w	$r28,$r25,0
1c00498c:	541c6400 	bl	7268(0x1c64) # 1c0065f0 <get_clock>
1c004990:	28800330 	ld.w	$r16,$r25,0
1c004994:	29800304 	st.w	$r4,$r24,0
1c004998:	6404b410 	bge	$r0,$r16,1204(0x4b4) # 1c004e4c <shell17_main+0x35ec>
1c00499c:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0049a0:	02bffe09 	addi.w	$r9,$r16,-1(0xfff)
1c0049a4:	00150011 	move	$r17,$r0
1c0049a8:	640204d0 	bge	$r6,$r16,516(0x204) # 1c004bac <shell17_main+0x334c>
1c0049ac:	02800413 	addi.w	$r19,$r0,1(0x1)
1c0049b0:	15ffffca 	lu12i.w	$r10,-2(0xffffe)
1c0049b4:	00115bee 	sub.w	$r14,$r31,$r22
1c0049b8:	02bff9c4 	addi.w	$r4,$r14,-2(0xffe)
1c0049bc:	0044848f 	srli.w	$r15,$r4,0x1
1c0049c0:	028005e8 	addi.w	$r8,$r15,1(0x1)
1c0049c4:	03400d01 	andi	$r1,$r8,0x3
1c0049c8:	001502cc 	move	$r12,$r22
1c0049cc:	5800e420 	beq	$r1,$r0,228(0xe4) # 1c004ab0 <shell17_main+0x3250>
1c0049d0:	02800414 	addi.w	$r20,$r0,1(0x1)
1c0049d4:	58009434 	beq	$r1,$r20,148(0x94) # 1c004a68 <shell17_main+0x3208>
1c0049d8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0049dc:	58004825 	beq	$r1,$r5,72(0x48) # 1c004a24 <shell17_main+0x31c4>
1c0049e0:	284002cb 	ld.h	$r11,$r22,0
1c0049e4:	14000091 	lu12i.w	$r17,4(0x4)
1c0049e8:	02804072 	addi.w	$r18,$r3,16(0x10)
1c0049ec:	03840227 	ori	$r7,$r17,0x100
1c0049f0:	0040856d 	slli.w	$r13,$r11,0x1
1c0049f4:	001048fc 	add.w	$r28,$r7,$r18
1c0049f8:	00103786 	add.w	$r6,$r28,$r13
1c0049fc:	0010194e 	add.w	$r14,$r10,$r6
1c004a00:	284001c4 	ld.h	$r4,$r14,0
1c004a04:	0384022f 	ori	$r15,$r17,0x100
1c004a08:	001049e1 	add.w	$r1,$r15,$r18
1c004a0c:	00408488 	slli.w	$r8,$r4,0x1
1c004a10:	00102034 	add.w	$r20,$r1,$r8
1c004a14:	00105145 	add.w	$r5,$r10,$r20
1c004a18:	2a4000ab 	ld.hu	$r11,$r5,0
1c004a1c:	02800acc 	addi.w	$r12,$r22,2(0x2)
1c004a20:	294002cb 	st.h	$r11,$r22,0
1c004a24:	2840018d 	ld.h	$r13,$r12,0
1c004a28:	14000091 	lu12i.w	$r17,4(0x4)
1c004a2c:	02804066 	addi.w	$r6,$r3,16(0x10)
1c004a30:	0384023c 	ori	$r28,$r17,0x100
1c004a34:	004085a7 	slli.w	$r7,$r13,0x1
1c004a38:	00101b8e 	add.w	$r14,$r28,$r6
1c004a3c:	00101dc4 	add.w	$r4,$r14,$r7
1c004a40:	00101148 	add.w	$r8,$r10,$r4
1c004a44:	2840010f 	ld.h	$r15,$r8,0
1c004a48:	03840221 	ori	$r1,$r17,0x100
1c004a4c:	00101825 	add.w	$r5,$r1,$r6
1c004a50:	004085f2 	slli.w	$r18,$r15,0x1
1c004a54:	001048ab 	add.w	$r11,$r5,$r18
1c004a58:	00102d4d 	add.w	$r13,$r10,$r11
1c004a5c:	2a4001a7 	ld.hu	$r7,$r13,0
1c004a60:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004a64:	297ff987 	st.h	$r7,$r12,-2(0xffe)
1c004a68:	28400191 	ld.h	$r17,$r12,0
1c004a6c:	14000086 	lu12i.w	$r6,4(0x4)
1c004a70:	038400ce 	ori	$r14,$r6,0x100
1c004a74:	0040863c 	slli.w	$r28,$r17,0x1
1c004a78:	02804071 	addi.w	$r17,$r3,16(0x10)
1c004a7c:	001045c4 	add.w	$r4,$r14,$r17
1c004a80:	00107088 	add.w	$r8,$r4,$r28
1c004a84:	0010214f 	add.w	$r15,$r10,$r8
1c004a88:	284001f2 	ld.h	$r18,$r15,0
1c004a8c:	038400d4 	ori	$r20,$r6,0x100
1c004a90:	0010468b 	add.w	$r11,$r20,$r17
1c004a94:	00408641 	slli.w	$r1,$r18,0x1
1c004a98:	0010056d 	add.w	$r13,$r11,$r1
1c004a9c:	00103547 	add.w	$r7,$r10,$r13
1c004aa0:	2a4000fc 	ld.hu	$r28,$r7,0
1c004aa4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004aa8:	297ff99c 	st.h	$r28,$r12,-2(0xffe)
1c004aac:	5800f59f 	beq	$r12,$r31,244(0xf4) # 1c004ba0 <shell17_main+0x3340>
1c004ab0:	28400186 	ld.h	$r6,$r12,0
1c004ab4:	28400988 	ld.h	$r8,$r12,2(0x2)
1c004ab8:	28401191 	ld.h	$r17,$r12,4(0x4)
1c004abc:	2840198e 	ld.h	$r14,$r12,6(0x6)
1c004ac0:	1400008f 	lu12i.w	$r15,4(0x4)
1c004ac4:	0280406b 	addi.w	$r11,$r3,16(0x10)
1c004ac8:	038401e5 	ori	$r5,$r15,0x100
1c004acc:	004084c4 	slli.w	$r4,$r6,0x1
1c004ad0:	00102cad 	add.w	$r13,$r5,$r11
1c004ad4:	038401fc 	ori	$r28,$r15,0x100
1c004ad8:	00408621 	slli.w	$r1,$r17,0x1
1c004adc:	038401f1 	ori	$r17,$r15,0x100
1c004ae0:	001011a7 	add.w	$r7,$r13,$r4
1c004ae4:	00102f86 	add.w	$r6,$r28,$r11
1c004ae8:	038401e4 	ori	$r4,$r15,0x100
1c004aec:	00408512 	slli.w	$r18,$r8,0x1
1c004af0:	004085d4 	slli.w	$r20,$r14,0x1
1c004af4:	00102e2e 	add.w	$r14,$r17,$r11
1c004af8:	001048c8 	add.w	$r8,$r6,$r18
1c004afc:	001005c1 	add.w	$r1,$r14,$r1
1c004b00:	00102c92 	add.w	$r18,$r4,$r11
1c004b04:	00105254 	add.w	$r20,$r18,$r20
1c004b08:	00101d45 	add.w	$r5,$r10,$r7
1c004b0c:	0010214d 	add.w	$r13,$r10,$r8
1c004b10:	00100547 	add.w	$r7,$r10,$r1
1c004b14:	0010515c 	add.w	$r28,$r10,$r20
1c004b18:	284000a6 	ld.h	$r6,$r5,0
1c004b1c:	284001a8 	ld.h	$r8,$r13,0
1c004b20:	284000f1 	ld.h	$r17,$r7,0
1c004b24:	2840038e 	ld.h	$r14,$r28,0
1c004b28:	038401fc 	ori	$r28,$r15,0x100
1c004b2c:	004084c1 	slli.w	$r1,$r6,0x1
1c004b30:	00408634 	slli.w	$r20,$r17,0x1
1c004b34:	038401e4 	ori	$r4,$r15,0x100
1c004b38:	00102f86 	add.w	$r6,$r28,$r11
1c004b3c:	038401f1 	ori	$r17,$r15,0x100
1c004b40:	00408512 	slli.w	$r18,$r8,0x1
1c004b44:	038401ef 	ori	$r15,$r15,0x100
1c004b48:	001048c8 	add.w	$r8,$r6,$r18
1c004b4c:	004085cd 	slli.w	$r13,$r14,0x1
1c004b50:	00102c85 	add.w	$r5,$r4,$r11
1c004b54:	00102e2e 	add.w	$r14,$r17,$r11
1c004b58:	00102df2 	add.w	$r18,$r15,$r11
1c004b5c:	001004a7 	add.w	$r7,$r5,$r1
1c004b60:	001051c1 	add.w	$r1,$r14,$r20
1c004b64:	00103654 	add.w	$r20,$r18,$r13
1c004b68:	00102145 	add.w	$r5,$r10,$r8
1c004b6c:	00101d4d 	add.w	$r13,$r10,$r7
1c004b70:	0010515c 	add.w	$r28,$r10,$r20
1c004b74:	00100547 	add.w	$r7,$r10,$r1
1c004b78:	2a4001a4 	ld.hu	$r4,$r13,0
1c004b7c:	2a4000a6 	ld.hu	$r6,$r5,0
1c004b80:	2a4000e8 	ld.hu	$r8,$r7,0
1c004b84:	2a400391 	ld.hu	$r17,$r28,0
1c004b88:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004b8c:	297fe184 	st.h	$r4,$r12,-8(0xff8)
1c004b90:	297fe986 	st.h	$r6,$r12,-6(0xffa)
1c004b94:	297ff188 	st.h	$r8,$r12,-4(0xffc)
1c004b98:	297ff991 	st.h	$r17,$r12,-2(0xffe)
1c004b9c:	5fff159f 	bne	$r12,$r31,-236(0x3ff14) # 1c004ab0 <shell17_main+0x3250>
1c004ba0:	02800671 	addi.w	$r17,$r19,1(0x1)
1c004ba4:	02800a73 	addi.w	$r19,$r19,2(0x2)
1c004ba8:	63fe0e69 	blt	$r19,$r9,-500(0x3fe0c) # 1c0049b4 <shell17_main+0x3154>
1c004bac:	15ffffca 	lu12i.w	$r10,-2(0xffffe)
1c004bb0:	00115be9 	sub.w	$r9,$r31,$r22
1c004bb4:	02bff92e 	addi.w	$r14,$r9,-2(0xffe)
1c004bb8:	004485c1 	srli.w	$r1,$r14,0x1
1c004bbc:	0280042f 	addi.w	$r15,$r1,1(0x1)
1c004bc0:	03401deb 	andi	$r11,$r15,0x7
1c004bc4:	001502cc 	move	$r12,$r22
1c004bc8:	58016d60 	beq	$r11,$r0,364(0x16c) # 1c004d34 <shell17_main+0x34d4>
1c004bcc:	02800412 	addi.w	$r18,$r0,1(0x1)
1c004bd0:	58013572 	beq	$r11,$r18,308(0x134) # 1c004d04 <shell17_main+0x34a4>
1c004bd4:	02800814 	addi.w	$r20,$r0,2(0x2)
1c004bd8:	58010174 	beq	$r11,$r20,256(0x100) # 1c004cd8 <shell17_main+0x3478>
1c004bdc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c004be0:	5800cd6d 	beq	$r11,$r13,204(0xcc) # 1c004cac <shell17_main+0x344c>
1c004be4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004be8:	58009965 	beq	$r11,$r5,152(0x98) # 1c004c80 <shell17_main+0x3420>
1c004bec:	02801407 	addi.w	$r7,$r0,5(0x5)
1c004bf0:	58006567 	beq	$r11,$r7,100(0x64) # 1c004c54 <shell17_main+0x33f4>
1c004bf4:	0280181c 	addi.w	$r28,$r0,6(0x6)
1c004bf8:	5800317c 	beq	$r11,$r28,48(0x30) # 1c004c28 <shell17_main+0x33c8>
1c004bfc:	284002c4 	ld.h	$r4,$r22,0
1c004c00:	14000088 	lu12i.w	$r8,4(0x4)
1c004c04:	03840113 	ori	$r19,$r8,0x100
1c004c08:	02804069 	addi.w	$r9,$r3,16(0x10)
1c004c0c:	00408486 	slli.w	$r6,$r4,0x1
1c004c10:	0010266e 	add.w	$r14,$r19,$r9
1c004c14:	001019c1 	add.w	$r1,$r14,$r6
1c004c18:	0010054f 	add.w	$r15,$r10,$r1
1c004c1c:	2a4001eb 	ld.hu	$r11,$r15,0
1c004c20:	02800acc 	addi.w	$r12,$r22,2(0x2)
1c004c24:	294002cb 	st.h	$r11,$r22,0
1c004c28:	28400192 	ld.h	$r18,$r12,0
1c004c2c:	1400008d 	lu12i.w	$r13,4(0x4)
1c004c30:	038401a5 	ori	$r5,$r13,0x100
1c004c34:	02804067 	addi.w	$r7,$r3,16(0x10)
1c004c38:	00408654 	slli.w	$r20,$r18,0x1
1c004c3c:	00101cbc 	add.w	$r28,$r5,$r7
1c004c40:	00105384 	add.w	$r4,$r28,$r20
1c004c44:	00101146 	add.w	$r6,$r10,$r4
1c004c48:	2a4000c8 	ld.hu	$r8,$r6,0
1c004c4c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004c50:	297ff988 	st.h	$r8,$r12,-2(0xffe)
1c004c54:	28400193 	ld.h	$r19,$r12,0
1c004c58:	1400008e 	lu12i.w	$r14,4(0x4)
1c004c5c:	038401c1 	ori	$r1,$r14,0x100
1c004c60:	0280406f 	addi.w	$r15,$r3,16(0x10)
1c004c64:	00408669 	slli.w	$r9,$r19,0x1
1c004c68:	00103c2b 	add.w	$r11,$r1,$r15
1c004c6c:	00102572 	add.w	$r18,$r11,$r9
1c004c70:	00104954 	add.w	$r20,$r10,$r18
1c004c74:	2a40028d 	ld.hu	$r13,$r20,0
1c004c78:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004c7c:	297ff98d 	st.h	$r13,$r12,-2(0xffe)
1c004c80:	28400185 	ld.h	$r5,$r12,0
1c004c84:	1400009c 	lu12i.w	$r28,4(0x4)
1c004c88:	03840384 	ori	$r4,$r28,0x100
1c004c8c:	02804066 	addi.w	$r6,$r3,16(0x10)
1c004c90:	004084a7 	slli.w	$r7,$r5,0x1
1c004c94:	00101888 	add.w	$r8,$r4,$r6
1c004c98:	00101d13 	add.w	$r19,$r8,$r7
1c004c9c:	00104d49 	add.w	$r9,$r10,$r19
1c004ca0:	2a40012e 	ld.hu	$r14,$r9,0
1c004ca4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004ca8:	297ff98e 	st.h	$r14,$r12,-2(0xffe)
1c004cac:	28400181 	ld.h	$r1,$r12,0
1c004cb0:	1400008f 	lu12i.w	$r15,4(0x4)
1c004cb4:	038401f4 	ori	$r20,$r15,0x100
1c004cb8:	02804072 	addi.w	$r18,$r3,16(0x10)
1c004cbc:	0040842b 	slli.w	$r11,$r1,0x1
1c004cc0:	00104a8d 	add.w	$r13,$r20,$r18
1c004cc4:	00102da5 	add.w	$r5,$r13,$r11
1c004cc8:	00101547 	add.w	$r7,$r10,$r5
1c004ccc:	2a4000fc 	ld.hu	$r28,$r7,0
1c004cd0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004cd4:	297ff99c 	st.h	$r28,$r12,-2(0xffe)
1c004cd8:	28400184 	ld.h	$r4,$r12,0
1c004cdc:	14000088 	lu12i.w	$r8,4(0x4)
1c004ce0:	03840113 	ori	$r19,$r8,0x100
1c004ce4:	02804069 	addi.w	$r9,$r3,16(0x10)
1c004ce8:	00408486 	slli.w	$r6,$r4,0x1
1c004cec:	0010266e 	add.w	$r14,$r19,$r9
1c004cf0:	001019c1 	add.w	$r1,$r14,$r6
1c004cf4:	0010054b 	add.w	$r11,$r10,$r1
1c004cf8:	2a40016f 	ld.hu	$r15,$r11,0
1c004cfc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004d00:	297ff98f 	st.h	$r15,$r12,-2(0xffe)
1c004d04:	28400194 	ld.h	$r20,$r12,0
1c004d08:	14000092 	lu12i.w	$r18,4(0x4)
1c004d0c:	03840245 	ori	$r5,$r18,0x100
1c004d10:	02804067 	addi.w	$r7,$r3,16(0x10)
1c004d14:	0040868d 	slli.w	$r13,$r20,0x1
1c004d18:	00101cbc 	add.w	$r28,$r5,$r7
1c004d1c:	00103784 	add.w	$r4,$r28,$r13
1c004d20:	00101146 	add.w	$r6,$r10,$r4
1c004d24:	2a4000c8 	ld.hu	$r8,$r6,0
1c004d28:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004d2c:	297ff988 	st.h	$r8,$r12,-2(0xffe)
1c004d30:	5801159f 	beq	$r12,$r31,276(0x114) # 1c004e44 <shell17_main+0x35e4>
1c004d34:	28402193 	ld.h	$r19,$r12,8(0x8)
1c004d38:	2840298f 	ld.h	$r15,$r12,10(0xa)
1c004d3c:	28400189 	ld.h	$r9,$r12,0
1c004d40:	2840098e 	ld.h	$r14,$r12,2(0x2)
1c004d44:	28401181 	ld.h	$r1,$r12,4(0x4)
1c004d48:	2840198b 	ld.h	$r11,$r12,6(0x6)
1c004d4c:	2840318d 	ld.h	$r13,$r12,12(0xc)
1c004d50:	28403987 	ld.h	$r7,$r12,14(0xe)
1c004d54:	004085f2 	slli.w	$r18,$r15,0x1
1c004d58:	1400008f 	lu12i.w	$r15,4(0x4)
1c004d5c:	038401e6 	ori	$r6,$r15,0x100
1c004d60:	0040853c 	slli.w	$r28,$r9,0x1
1c004d64:	02804069 	addi.w	$r9,$r3,16(0x10)
1c004d68:	001024c8 	add.w	$r8,$r6,$r9
1c004d6c:	004085c5 	slli.w	$r5,$r14,0x1
1c004d70:	0040866e 	slli.w	$r14,$r19,0x1
1c004d74:	038401f3 	ori	$r19,$r15,0x100
1c004d78:	00408424 	slli.w	$r4,$r1,0x1
1c004d7c:	00408574 	slli.w	$r20,$r11,0x1
1c004d80:	004085a1 	slli.w	$r1,$r13,0x1
1c004d84:	004084eb 	slli.w	$r11,$r7,0x1
1c004d88:	0010266d 	add.w	$r13,$r19,$r9
1c004d8c:	038401e7 	ori	$r7,$r15,0x100
1c004d90:	0010711c 	add.w	$r28,$r8,$r28
1c004d94:	038401e8 	ori	$r8,$r15,0x100
1c004d98:	001024e6 	add.w	$r6,$r7,$r9
1c004d9c:	00102513 	add.w	$r19,$r8,$r9
1c004da0:	001015a5 	add.w	$r5,$r13,$r5
1c004da4:	038401ed 	ori	$r13,$r15,0x100
1c004da8:	001025a7 	add.w	$r7,$r13,$r9
1c004dac:	001010c4 	add.w	$r4,$r6,$r4
1c004db0:	00105274 	add.w	$r20,$r19,$r20
1c004db4:	038401e6 	ori	$r6,$r15,0x100
1c004db8:	038401f3 	ori	$r19,$r15,0x100
1c004dbc:	038401ef 	ori	$r15,$r15,0x100
1c004dc0:	001024c8 	add.w	$r8,$r6,$r9
1c004dc4:	0010266d 	add.w	$r13,$r19,$r9
1c004dc8:	001038ee 	add.w	$r14,$r7,$r14
1c004dcc:	001025e7 	add.w	$r7,$r15,$r9
1c004dd0:	00102ceb 	add.w	$r11,$r7,$r11
1c004dd4:	00104912 	add.w	$r18,$r8,$r18
1c004dd8:	001005a1 	add.w	$r1,$r13,$r1
1c004ddc:	0010715c 	add.w	$r28,$r10,$r28
1c004de0:	0010054d 	add.w	$r13,$r10,$r1
1c004de4:	00101545 	add.w	$r5,$r10,$r5
1c004de8:	00102d41 	add.w	$r1,$r10,$r11
1c004dec:	00101144 	add.w	$r4,$r10,$r4
1c004df0:	00105154 	add.w	$r20,$r10,$r20
1c004df4:	0010394e 	add.w	$r14,$r10,$r14
1c004df8:	00104952 	add.w	$r18,$r10,$r18
1c004dfc:	2a400386 	ld.hu	$r6,$r28,0
1c004e00:	2a4000a8 	ld.hu	$r8,$r5,0
1c004e04:	2a40008f 	ld.hu	$r15,$r4,0
1c004e08:	2a400289 	ld.hu	$r9,$r20,0
1c004e0c:	2a4001c7 	ld.hu	$r7,$r14,0
1c004e10:	2a400253 	ld.hu	$r19,$r18,0
1c004e14:	2a4001ab 	ld.hu	$r11,$r13,0
1c004e18:	2a40003c 	ld.hu	$r28,$r1,0
1c004e1c:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c004e20:	297fc186 	st.h	$r6,$r12,-16(0xff0)
1c004e24:	297fc988 	st.h	$r8,$r12,-14(0xff2)
1c004e28:	297fd18f 	st.h	$r15,$r12,-12(0xff4)
1c004e2c:	297fd989 	st.h	$r9,$r12,-10(0xff6)
1c004e30:	297fe187 	st.h	$r7,$r12,-8(0xff8)
1c004e34:	297fe993 	st.h	$r19,$r12,-6(0xffa)
1c004e38:	297ff18b 	st.h	$r11,$r12,-4(0xffc)
1c004e3c:	297ff99c 	st.h	$r28,$r12,-2(0xffe)
1c004e40:	5ffef59f 	bne	$r12,$r31,-268(0x3fef4) # 1c004d34 <shell17_main+0x34d4>
1c004e44:	02800631 	addi.w	$r17,$r17,1(0x1)
1c004e48:	63fd6a30 	blt	$r17,$r16,-664(0x3fd68) # 1c004bb0 <shell17_main+0x3350>
1c004e4c:	5417a400 	bl	6052(0x17a4) # 1c0065f0 <get_clock>
1c004e50:	1c000f6c 	pcaddu12i	$r12,123(0x7b)
1c004e54:	2898a18c 	ld.w	$r12,$r12,1576(0x628)
1c004e58:	001133ea 	sub.w	$r10,$r31,$r12
1c004e5c:	28800347 	ld.w	$r7,$r26,0
1c004e60:	02bff945 	addi.w	$r5,$r10,-2(0xffe)
1c004e64:	00150090 	move	$r16,$r4
1c004e68:	29800364 	st.w	$r4,$r27,0
1c004e6c:	004484a4 	srli.w	$r4,$r5,0x1
1c004e70:	0280048e 	addi.w	$r14,$r4,1(0x1)
1c004e74:	29803067 	st.w	$r7,$r3,12(0xc)
1c004e78:	03401dd2 	andi	$r18,$r14,0x7
1c004e7c:	28403074 	ld.h	$r20,$r3,12(0xc)
1c004e80:	58008240 	beq	$r18,$r0,128(0x80) # 1c004f00 <shell17_main+0x36a0>
1c004e84:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004e88:	58006a4d 	beq	$r18,$r13,104(0x68) # 1c004ef0 <shell17_main+0x3690>
1c004e8c:	02800801 	addi.w	$r1,$r0,2(0x2)
1c004e90:	58005641 	beq	$r18,$r1,84(0x54) # 1c004ee4 <shell17_main+0x3684>
1c004e94:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c004e98:	58004246 	beq	$r18,$r6,64(0x40) # 1c004ed8 <shell17_main+0x3678>
1c004e9c:	02801008 	addi.w	$r8,$r0,4(0x4)
1c004ea0:	58002e48 	beq	$r18,$r8,44(0x2c) # 1c004ecc <shell17_main+0x366c>
1c004ea4:	0280140f 	addi.w	$r15,$r0,5(0x5)
1c004ea8:	58001a4f 	beq	$r18,$r15,24(0x18) # 1c004ec0 <shell17_main+0x3660>
1c004eac:	02801809 	addi.w	$r9,$r0,6(0x6)
1c004eb0:	5c0b4249 	bne	$r18,$r9,2880(0xb40) # 1c0059f0 <shell17_main+0x4190>
1c004eb4:	28400186 	ld.h	$r6,$r12,0
1c004eb8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004ebc:	5c0b44d4 	bne	$r6,$r20,2884(0xb44) # 1c005a00 <shell17_main+0x41a0>
1c004ec0:	28400186 	ld.h	$r6,$r12,0
1c004ec4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004ec8:	5c0b38d4 	bne	$r6,$r20,2872(0xb38) # 1c005a00 <shell17_main+0x41a0>
1c004ecc:	28400186 	ld.h	$r6,$r12,0
1c004ed0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004ed4:	5c0b2cd4 	bne	$r6,$r20,2860(0xb2c) # 1c005a00 <shell17_main+0x41a0>
1c004ed8:	28400186 	ld.h	$r6,$r12,0
1c004edc:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004ee0:	5c0b20d4 	bne	$r6,$r20,2848(0xb20) # 1c005a00 <shell17_main+0x41a0>
1c004ee4:	28400186 	ld.h	$r6,$r12,0
1c004ee8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004eec:	5c0b14d4 	bne	$r6,$r20,2836(0xb14) # 1c005a00 <shell17_main+0x41a0>
1c004ef0:	28400186 	ld.h	$r6,$r12,0
1c004ef4:	5c0b0cd4 	bne	$r6,$r20,2828(0xb0c) # 1c005a00 <shell17_main+0x41a0>
1c004ef8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004efc:	58004d9f 	beq	$r12,$r31,76(0x4c) # 1c004f48 <shell17_main+0x36e8>
1c004f00:	28400186 	ld.h	$r6,$r12,0
1c004f04:	5c0afcd4 	bne	$r6,$r20,2812(0xafc) # 1c005a00 <shell17_main+0x41a0>
1c004f08:	28400986 	ld.h	$r6,$r12,2(0x2)
1c004f0c:	5c0af4d4 	bne	$r6,$r20,2804(0xaf4) # 1c005a00 <shell17_main+0x41a0>
1c004f10:	28401186 	ld.h	$r6,$r12,4(0x4)
1c004f14:	5c0aecd4 	bne	$r6,$r20,2796(0xaec) # 1c005a00 <shell17_main+0x41a0>
1c004f18:	28401986 	ld.h	$r6,$r12,6(0x6)
1c004f1c:	5c0ae4d4 	bne	$r6,$r20,2788(0xae4) # 1c005a00 <shell17_main+0x41a0>
1c004f20:	28402186 	ld.h	$r6,$r12,8(0x8)
1c004f24:	5c0adcd4 	bne	$r6,$r20,2780(0xadc) # 1c005a00 <shell17_main+0x41a0>
1c004f28:	28402986 	ld.h	$r6,$r12,10(0xa)
1c004f2c:	5c0ad4d4 	bne	$r6,$r20,2772(0xad4) # 1c005a00 <shell17_main+0x41a0>
1c004f30:	28403186 	ld.h	$r6,$r12,12(0xc)
1c004f34:	5c0accd4 	bne	$r6,$r20,2764(0xacc) # 1c005a00 <shell17_main+0x41a0>
1c004f38:	28403986 	ld.h	$r6,$r12,14(0xe)
1c004f3c:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c004f40:	5c0ac0d4 	bne	$r6,$r20,2752(0xac0) # 1c005a00 <shell17_main+0x41a0>
1c004f44:	5fffbd9f 	bne	$r12,$r31,-68(0x3ffbc) # 1c004f00 <shell17_main+0x36a0>
1c004f48:	28800307 	ld.w	$r7,$r24,0
1c004f4c:	14001e93 	lu12i.w	$r19,244(0xf4)
1c004f50:	0389026b 	ori	$r11,$r19,0x240
1c004f54:	00111e1c 	sub.w	$r28,$r16,$r7
1c004f58:	02805006 	addi.w	$r6,$r0,20(0x14)
1c004f5c:	00212f87 	div.wu	$r7,$r28,$r11
1c004f60:	5c000960 	bne	$r11,$r0,8(0x8) # 1c004f68 <shell17_main+0x3708>
1c004f64:	002a0007 	break	0x7
1c004f68:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c004f6c:	0289a0a5 	addi.w	$r5,$r5,616(0x268)
1c004f70:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004f74:	0282e084 	addi.w	$r4,$r4,184(0xb8)
1c004f78:	540e8800 	bl	3720(0xe88) # 1c005e00 <printf>
1c004f7c:	54167400 	bl	5748(0x1674) # 1c0065f0 <get_clock>
1c004f80:	28800332 	ld.w	$r18,$r25,0
1c004f84:	29800304 	st.w	$r4,$r24,0
1c004f88:	00150011 	move	$r17,$r0
1c004f8c:	15ffffd0 	lu12i.w	$r16,-2(0xffffe)
1c004f90:	6402c412 	bge	$r0,$r18,708(0x2c4) # 1c005254 <shell17_main+0x39f4>
1c004f94:	00115bea 	sub.w	$r10,$r31,$r22
1c004f98:	02bff945 	addi.w	$r5,$r10,-2(0xffe)
1c004f9c:	004484a4 	srli.w	$r4,$r5,0x1
1c004fa0:	02800494 	addi.w	$r20,$r4,1(0x1)
1c004fa4:	03401e8e 	andi	$r14,$r20,0x7
1c004fa8:	001503ad 	move	$r13,$r29
1c004fac:	001502cc 	move	$r12,$r22
1c004fb0:	580189c0 	beq	$r14,$r0,392(0x188) # 1c005138 <shell17_main+0x38d8>
1c004fb4:	02800401 	addi.w	$r1,$r0,1(0x1)
1c004fb8:	58014dc1 	beq	$r14,$r1,332(0x14c) # 1c005104 <shell17_main+0x38a4>
1c004fbc:	02800806 	addi.w	$r6,$r0,2(0x2)
1c004fc0:	580115c6 	beq	$r14,$r6,276(0x114) # 1c0050d4 <shell17_main+0x3874>
1c004fc4:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c004fc8:	5800ddc8 	beq	$r14,$r8,220(0xdc) # 1c0050a4 <shell17_main+0x3844>
1c004fcc:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c004fd0:	5800a5cf 	beq	$r14,$r15,164(0xa4) # 1c005074 <shell17_main+0x3814>
1c004fd4:	02801409 	addi.w	$r9,$r0,5(0x5)
1c004fd8:	58006dc9 	beq	$r14,$r9,108(0x6c) # 1c005044 <shell17_main+0x37e4>
1c004fdc:	02801813 	addi.w	$r19,$r0,6(0x6)
1c004fe0:	580035d3 	beq	$r14,$r19,52(0x34) # 1c005014 <shell17_main+0x37b4>
1c004fe4:	284002cb 	ld.h	$r11,$r22,0
1c004fe8:	14000087 	lu12i.w	$r7,4(0x4)
1c004fec:	038400ea 	ori	$r10,$r7,0x100
1c004ff0:	02804065 	addi.w	$r5,$r3,16(0x10)
1c004ff4:	0040857c 	slli.w	$r28,$r11,0x1
1c004ff8:	00101544 	add.w	$r4,$r10,$r5
1c004ffc:	00107094 	add.w	$r20,$r4,$r28
1c005000:	0010520e 	add.w	$r14,$r16,$r20
1c005004:	2a4001c1 	ld.hu	$r1,$r14,0
1c005008:	02800acc 	addi.w	$r12,$r22,2(0x2)
1c00500c:	02800bad 	addi.w	$r13,$r29,2(0x2)
1c005010:	294003a1 	st.h	$r1,$r29,0
1c005014:	28400186 	ld.h	$r6,$r12,0
1c005018:	1400008f 	lu12i.w	$r15,4(0x4)
1c00501c:	038401e9 	ori	$r9,$r15,0x100
1c005020:	02804073 	addi.w	$r19,$r3,16(0x10)
1c005024:	004084c8 	slli.w	$r8,$r6,0x1
1c005028:	00104d2b 	add.w	$r11,$r9,$r19
1c00502c:	0010217c 	add.w	$r28,$r11,$r8
1c005030:	00107207 	add.w	$r7,$r16,$r28
1c005034:	2a4000ea 	ld.hu	$r10,$r7,0
1c005038:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00503c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c005040:	297ff9aa 	st.h	$r10,$r13,-2(0xffe)
1c005044:	28400185 	ld.h	$r5,$r12,0
1c005048:	14000094 	lu12i.w	$r20,4(0x4)
1c00504c:	0384028e 	ori	$r14,$r20,0x100
1c005050:	02804061 	addi.w	$r1,$r3,16(0x10)
1c005054:	004084a4 	slli.w	$r4,$r5,0x1
1c005058:	001005c6 	add.w	$r6,$r14,$r1
1c00505c:	001010c8 	add.w	$r8,$r6,$r4
1c005060:	0010220f 	add.w	$r15,$r16,$r8
1c005064:	2a4001e9 	ld.hu	$r9,$r15,0
1c005068:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00506c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c005070:	297ff9a9 	st.h	$r9,$r13,-2(0xffe)
1c005074:	28400193 	ld.h	$r19,$r12,0
1c005078:	1400009c 	lu12i.w	$r28,4(0x4)
1c00507c:	03840387 	ori	$r7,$r28,0x100
1c005080:	0280406a 	addi.w	$r10,$r3,16(0x10)
1c005084:	0040866b 	slli.w	$r11,$r19,0x1
1c005088:	001028e5 	add.w	$r5,$r7,$r10
1c00508c:	00102ca4 	add.w	$r4,$r5,$r11
1c005090:	00101214 	add.w	$r20,$r16,$r4
1c005094:	2a40028e 	ld.hu	$r14,$r20,0
1c005098:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00509c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0050a0:	297ff9ae 	st.h	$r14,$r13,-2(0xffe)
1c0050a4:	28400181 	ld.h	$r1,$r12,0
1c0050a8:	14000088 	lu12i.w	$r8,4(0x4)
1c0050ac:	0384010f 	ori	$r15,$r8,0x100
1c0050b0:	02804069 	addi.w	$r9,$r3,16(0x10)
1c0050b4:	00408426 	slli.w	$r6,$r1,0x1
1c0050b8:	001025f3 	add.w	$r19,$r15,$r9
1c0050bc:	00101a6b 	add.w	$r11,$r19,$r6
1c0050c0:	00102e1c 	add.w	$r28,$r16,$r11
1c0050c4:	2a400387 	ld.hu	$r7,$r28,0
1c0050c8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0050cc:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0050d0:	297ff9a7 	st.h	$r7,$r13,-2(0xffe)
1c0050d4:	2840018a 	ld.h	$r10,$r12,0
1c0050d8:	14000084 	lu12i.w	$r4,4(0x4)
1c0050dc:	03840094 	ori	$r20,$r4,0x100
1c0050e0:	0280406e 	addi.w	$r14,$r3,16(0x10)
1c0050e4:	00408545 	slli.w	$r5,$r10,0x1
1c0050e8:	00103a81 	add.w	$r1,$r20,$r14
1c0050ec:	00101426 	add.w	$r6,$r1,$r5
1c0050f0:	00101a08 	add.w	$r8,$r16,$r6
1c0050f4:	2a40010f 	ld.hu	$r15,$r8,0
1c0050f8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0050fc:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c005100:	297ff9af 	st.h	$r15,$r13,-2(0xffe)
1c005104:	28400189 	ld.h	$r9,$r12,0
1c005108:	14000093 	lu12i.w	$r19,4(0x4)
1c00510c:	0384027c 	ori	$r28,$r19,0x100
1c005110:	02804067 	addi.w	$r7,$r3,16(0x10)
1c005114:	0040852b 	slli.w	$r11,$r9,0x1
1c005118:	00101f8a 	add.w	$r10,$r28,$r7
1c00511c:	00102d45 	add.w	$r5,$r10,$r11
1c005120:	00101604 	add.w	$r4,$r16,$r5
1c005124:	2a400094 	ld.hu	$r20,$r4,0
1c005128:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c00512c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005130:	297ff9b4 	st.h	$r20,$r13,-2(0xffe)
1c005134:	5801199f 	beq	$r12,$r31,280(0x118) # 1c00524c <shell17_main+0x39ec>
1c005138:	28400181 	ld.h	$r1,$r12,0
1c00513c:	2840098f 	ld.h	$r15,$r12,2(0x2)
1c005140:	28401189 	ld.h	$r9,$r12,4(0x4)
1c005144:	2840198b 	ld.h	$r11,$r12,6(0x6)
1c005148:	28402193 	ld.h	$r19,$r12,8(0x8)
1c00514c:	2840298e 	ld.h	$r14,$r12,10(0xa)
1c005150:	28403188 	ld.h	$r8,$r12,12(0xc)
1c005154:	2840399c 	ld.h	$r28,$r12,14(0xe)
1c005158:	004085e5 	slli.w	$r5,$r15,0x1
1c00515c:	1400008f 	lu12i.w	$r15,4(0x4)
1c005160:	0280406a 	addi.w	$r10,$r3,16(0x10)
1c005164:	00408524 	slli.w	$r4,$r9,0x1
1c005168:	038401e9 	ori	$r9,$r15,0x100
1c00516c:	00408426 	slli.w	$r6,$r1,0x1
1c005170:	00408574 	slli.w	$r20,$r11,0x1
1c005174:	00408661 	slli.w	$r1,$r19,0x1
1c005178:	004085cb 	slli.w	$r11,$r14,0x1
1c00517c:	00102933 	add.w	$r19,$r9,$r10
1c005180:	038401ee 	ori	$r14,$r15,0x100
1c005184:	038401e9 	ori	$r9,$r15,0x100
1c005188:	00408787 	slli.w	$r7,$r28,0x1
1c00518c:	00101a7c 	add.w	$r28,$r19,$r6
1c005190:	001029c6 	add.w	$r6,$r14,$r10
1c005194:	00102933 	add.w	$r19,$r9,$r10
1c005198:	038401ee 	ori	$r14,$r15,0x100
1c00519c:	038401e9 	ori	$r9,$r15,0x100
1c0051a0:	001014c5 	add.w	$r5,$r6,$r5
1c0051a4:	00101264 	add.w	$r4,$r19,$r4
1c0051a8:	001029c6 	add.w	$r6,$r14,$r10
1c0051ac:	00102933 	add.w	$r19,$r9,$r10
1c0051b0:	038401ee 	ori	$r14,$r15,0x100
1c0051b4:	038401e9 	ori	$r9,$r15,0x100
1c0051b8:	038401ef 	ori	$r15,$r15,0x100
1c0051bc:	001050d4 	add.w	$r20,$r6,$r20
1c0051c0:	00100661 	add.w	$r1,$r19,$r1
1c0051c4:	001029c6 	add.w	$r6,$r14,$r10
1c0051c8:	00102933 	add.w	$r19,$r9,$r10
1c0051cc:	001029ee 	add.w	$r14,$r15,$r10
1c0051d0:	00408508 	slli.w	$r8,$r8,0x1
1c0051d4:	00101dc7 	add.w	$r7,$r14,$r7
1c0051d8:	00102ccb 	add.w	$r11,$r6,$r11
1c0051dc:	00102268 	add.w	$r8,$r19,$r8
1c0051e0:	0010721c 	add.w	$r28,$r16,$r28
1c0051e4:	00101605 	add.w	$r5,$r16,$r5
1c0051e8:	00102213 	add.w	$r19,$r16,$r8
1c0051ec:	00101204 	add.w	$r4,$r16,$r4
1c0051f0:	00101e08 	add.w	$r8,$r16,$r7
1c0051f4:	00105214 	add.w	$r20,$r16,$r20
1c0051f8:	00100601 	add.w	$r1,$r16,$r1
1c0051fc:	00102e0b 	add.w	$r11,$r16,$r11
1c005200:	2a400386 	ld.hu	$r6,$r28,0
1c005204:	2a4000a9 	ld.hu	$r9,$r5,0
1c005208:	2a40008f 	ld.hu	$r15,$r4,0
1c00520c:	2a40028a 	ld.hu	$r10,$r20,0
1c005210:	2a400027 	ld.hu	$r7,$r1,0
1c005214:	2a40017c 	ld.hu	$r28,$r11,0
1c005218:	2a400265 	ld.hu	$r5,$r19,0
1c00521c:	2a40010e 	ld.hu	$r14,$r8,0
1c005220:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c005224:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c005228:	297fc1a6 	st.h	$r6,$r13,-16(0xff0)
1c00522c:	297fc9a9 	st.h	$r9,$r13,-14(0xff2)
1c005230:	297fd1af 	st.h	$r15,$r13,-12(0xff4)
1c005234:	297fd9aa 	st.h	$r10,$r13,-10(0xff6)
1c005238:	297fe1a7 	st.h	$r7,$r13,-8(0xff8)
1c00523c:	297fe9bc 	st.h	$r28,$r13,-6(0xffa)
1c005240:	297ff1a5 	st.h	$r5,$r13,-4(0xffc)
1c005244:	297ff9ae 	st.h	$r14,$r13,-2(0xffe)
1c005248:	5ffef19f 	bne	$r12,$r31,-272(0x3fef0) # 1c005138 <shell17_main+0x38d8>
1c00524c:	02800631 	addi.w	$r17,$r17,1(0x1)
1c005250:	5ffd4632 	bne	$r17,$r18,-700(0x3fd44) # 1c004f94 <shell17_main+0x3734>
1c005254:	54139c00 	bl	5020(0x139c) # 1c0065f0 <get_clock>
1c005258:	28800347 	ld.w	$r7,$r26,0
1c00525c:	0015009f 	move	$r31,$r4
1c005260:	1c000f6c 	pcaddu12i	$r12,123(0x7b)
1c005264:	2888218c 	ld.w	$r12,$r12,520(0x208)
1c005268:	29803067 	st.w	$r7,$r3,12(0xc)
1c00526c:	28403072 	ld.h	$r18,$r3,12(0xc)
1c005270:	29800364 	st.w	$r4,$r27,0
1c005274:	28400186 	ld.h	$r6,$r12,0
1c005278:	5c0758d2 	bne	$r6,$r18,1880(0x758) # 1c0059d0 <shell17_main+0x4170>
1c00527c:	28400986 	ld.h	$r6,$r12,2(0x2)
1c005280:	02800990 	addi.w	$r16,$r12,2(0x2)
1c005284:	5c074cd2 	bne	$r6,$r18,1868(0x74c) # 1c0059d0 <shell17_main+0x4170>
1c005288:	28401186 	ld.h	$r6,$r12,4(0x4)
1c00528c:	5c0744d2 	bne	$r6,$r18,1860(0x744) # 1c0059d0 <shell17_main+0x4170>
1c005290:	28401986 	ld.h	$r6,$r12,6(0x6)
1c005294:	5c073cd2 	bne	$r6,$r18,1852(0x73c) # 1c0059d0 <shell17_main+0x4170>
1c005298:	28402186 	ld.h	$r6,$r12,8(0x8)
1c00529c:	5c0734d2 	bne	$r6,$r18,1844(0x734) # 1c0059d0 <shell17_main+0x4170>
1c0052a0:	28402986 	ld.h	$r6,$r12,10(0xa)
1c0052a4:	5c072cd2 	bne	$r6,$r18,1836(0x72c) # 1c0059d0 <shell17_main+0x4170>
1c0052a8:	28403186 	ld.h	$r6,$r12,12(0xc)
1c0052ac:	5c0724d2 	bne	$r6,$r18,1828(0x724) # 1c0059d0 <shell17_main+0x4170>
1c0052b0:	28403986 	ld.h	$r6,$r12,14(0xe)
1c0052b4:	5c071cd2 	bne	$r6,$r18,1820(0x71c) # 1c0059d0 <shell17_main+0x4170>
1c0052b8:	28404186 	ld.h	$r6,$r12,16(0x10)
1c0052bc:	5c0714d2 	bne	$r6,$r18,1812(0x714) # 1c0059d0 <shell17_main+0x4170>
1c0052c0:	28404986 	ld.h	$r6,$r12,18(0x12)
1c0052c4:	5c070cd2 	bne	$r6,$r18,1804(0x70c) # 1c0059d0 <shell17_main+0x4170>
1c0052c8:	2880206d 	ld.w	$r13,$r3,8(0x8)
1c0052cc:	02804a0c 	addi.w	$r12,$r16,18(0x12)
1c0052d0:	5fffa58d 	bne	$r12,$r13,-92(0x3ffa4) # 1c005274 <shell17_main+0x3a14>
1c0052d4:	28800314 	ld.w	$r20,$r24,0
1c0052d8:	14001e84 	lu12i.w	$r4,244(0xf4)
1c0052dc:	03890081 	ori	$r1,$r4,0x240
1c0052e0:	001153eb 	sub.w	$r11,$r31,$r20
1c0052e4:	02805006 	addi.w	$r6,$r0,20(0x14)
1c0052e8:	00210567 	div.wu	$r7,$r11,$r1
1c0052ec:	5c000820 	bne	$r1,$r0,8(0x8) # 1c0052f4 <shell17_main+0x3a94>
1c0052f0:	002a0007 	break	0x7
1c0052f4:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c0052f8:	02bc00a5 	addi.w	$r5,$r5,-256(0xf00)
1c0052fc:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c005300:	02b4b084 	addi.w	$r4,$r4,-724(0xd2c)
1c005304:	540afc00 	bl	2812(0xafc) # 1c005e00 <printf>
1c005308:	02800413 	addi.w	$r19,$r0,1(0x1)
1c00530c:	29800333 	st.w	$r19,$r25,0
1c005310:	5412e000 	bl	4832(0x12e0) # 1c0065f0 <get_clock>
1c005314:	2880032a 	ld.w	$r10,$r25,0
1c005318:	29800304 	st.w	$r4,$r24,0
1c00531c:	6403200a 	bge	$r0,$r10,800(0x320) # 1c00563c <shell17_main+0x3ddc>
1c005320:	02800808 	addi.w	$r8,$r0,2(0x2)
1c005324:	02bffd46 	addi.w	$r6,$r10,-1(0xfff)
1c005328:	00150014 	move	$r20,$r0
1c00532c:	6401ed0a 	bge	$r8,$r10,492(0x1ec) # 1c005518 <shell17_main+0x3cb8>
1c005330:	02800411 	addi.w	$r17,$r0,1(0x1)
1c005334:	15ffffc9 	lu12i.w	$r9,-2(0xffffe)
1c005338:	001502cc 	move	$r12,$r22
1c00533c:	2840018f 	ld.h	$r15,$r12,0
1c005340:	2840099c 	ld.h	$r28,$r12,2(0x2)
1c005344:	1400008d 	lu12i.w	$r13,4(0x4)
1c005348:	02804061 	addi.w	$r1,$r3,16(0x10)
1c00534c:	28401185 	ld.h	$r5,$r12,4(0x4)
1c005350:	038401b0 	ori	$r16,$r13,0x100
1c005354:	004085ff 	slli.w	$r31,$r15,0x1
1c005358:	00100614 	add.w	$r20,$r16,$r1
1c00535c:	038401a4 	ori	$r4,$r13,0x100
1c005360:	00107e8b 	add.w	$r11,$r20,$r31
1c005364:	00408792 	slli.w	$r18,$r28,0x1
1c005368:	00100487 	add.w	$r7,$r4,$r1
1c00536c:	038401a8 	ori	$r8,$r13,0x100
1c005370:	001048f3 	add.w	$r19,$r7,$r18
1c005374:	004084ae 	slli.w	$r14,$r5,0x1
1c005378:	0010050f 	add.w	$r15,$r8,$r1
1c00537c:	00102d25 	add.w	$r5,$r9,$r11
1c005380:	001039fc 	add.w	$r28,$r15,$r14
1c005384:	00104d3f 	add.w	$r31,$r9,$r19
1c005388:	284000b4 	ld.h	$r20,$r5,0
1c00538c:	00107132 	add.w	$r18,$r9,$r28
1c005390:	284003f0 	ld.h	$r16,$r31,0
1c005394:	2840024e 	ld.h	$r14,$r18,0
1c005398:	038401a4 	ori	$r4,$r13,0x100
1c00539c:	0040868b 	slli.w	$r11,$r20,0x1
1c0053a0:	00100488 	add.w	$r8,$r4,$r1
1c0053a4:	038401bc 	ori	$r28,$r13,0x100
1c0053a8:	00408607 	slli.w	$r7,$r16,0x1
1c0053ac:	00102d0f 	add.w	$r15,$r8,$r11
1c0053b0:	00100785 	add.w	$r5,$r28,$r1
1c0053b4:	038401b2 	ori	$r18,$r13,0x100
1c0053b8:	00101cbf 	add.w	$r31,$r5,$r7
1c0053bc:	00100654 	add.w	$r20,$r18,$r1
1c0053c0:	00103d2b 	add.w	$r11,$r9,$r15
1c0053c4:	004085d3 	slli.w	$r19,$r14,0x1
1c0053c8:	2840198f 	ld.h	$r15,$r12,6(0x6)
1c0053cc:	2840219c 	ld.h	$r28,$r12,8(0x8)
1c0053d0:	00104e8e 	add.w	$r14,$r20,$r19
1c0053d4:	00107d30 	add.w	$r16,$r9,$r31
1c0053d8:	00103927 	add.w	$r7,$r9,$r14
1c0053dc:	2a400173 	ld.hu	$r19,$r11,0
1c0053e0:	2a400204 	ld.hu	$r4,$r16,0
1c0053e4:	038401b2 	ori	$r18,$r13,0x100
1c0053e8:	2a4000e8 	ld.hu	$r8,$r7,0
1c0053ec:	004085e5 	slli.w	$r5,$r15,0x1
1c0053f0:	00100654 	add.w	$r20,$r18,$r1
1c0053f4:	038401ae 	ori	$r14,$r13,0x100
1c0053f8:	0010168b 	add.w	$r11,$r20,$r5
1c0053fc:	0040879f 	slli.w	$r31,$r28,0x1
1c005400:	001005d0 	add.w	$r16,$r14,$r1
1c005404:	29400193 	st.h	$r19,$r12,0
1c005408:	29400984 	st.h	$r4,$r12,2(0x2)
1c00540c:	00107e07 	add.w	$r7,$r16,$r31
1c005410:	00102d33 	add.w	$r19,$r9,$r11
1c005414:	29401188 	st.h	$r8,$r12,4(0x4)
1c005418:	00101d24 	add.w	$r4,$r9,$r7
1c00541c:	28400268 	ld.h	$r8,$r19,0
1c005420:	2840008f 	ld.h	$r15,$r4,0
1c005424:	038401bf 	ori	$r31,$r13,0x100
1c005428:	0040851c 	slli.w	$r28,$r8,0x1
1c00542c:	001007f2 	add.w	$r18,$r31,$r1
1c005430:	0010724b 	add.w	$r11,$r18,$r28
1c005434:	004085e5 	slli.w	$r5,$r15,0x1
1c005438:	038401b4 	ori	$r20,$r13,0x100
1c00543c:	2840298f 	ld.h	$r15,$r12,10(0xa)
1c005440:	2840319c 	ld.h	$r28,$r12,12(0xc)
1c005444:	0010068e 	add.w	$r14,$r20,$r1
1c005448:	00102d30 	add.w	$r16,$r9,$r11
1c00544c:	001015c7 	add.w	$r7,$r14,$r5
1c005450:	2a400204 	ld.hu	$r4,$r16,0
1c005454:	038401b4 	ori	$r20,$r13,0x100
1c005458:	00101d33 	add.w	$r19,$r9,$r7
1c00545c:	0040879f 	slli.w	$r31,$r28,0x1
1c005460:	0010068e 	add.w	$r14,$r20,$r1
1c005464:	2a400268 	ld.hu	$r8,$r19,0
1c005468:	038401b2 	ori	$r18,$r13,0x100
1c00546c:	00107dd3 	add.w	$r19,$r14,$r31
1c005470:	29401984 	st.h	$r4,$r12,6(0x6)
1c005474:	004085e5 	slli.w	$r5,$r15,0x1
1c005478:	0010064b 	add.w	$r11,$r18,$r1
1c00547c:	00104d24 	add.w	$r4,$r9,$r19
1c005480:	00101567 	add.w	$r7,$r11,$r5
1c005484:	2840008f 	ld.h	$r15,$r4,0
1c005488:	00101d30 	add.w	$r16,$r9,$r7
1c00548c:	29402188 	st.h	$r8,$r12,8(0x8)
1c005490:	28400208 	ld.h	$r8,$r16,0
1c005494:	004085e5 	slli.w	$r5,$r15,0x1
1c005498:	038401a7 	ori	$r7,$r13,0x100
1c00549c:	2840398f 	ld.h	$r15,$r12,14(0xe)
1c0054a0:	038401bf 	ori	$r31,$r13,0x100
1c0054a4:	001004f4 	add.w	$r20,$r7,$r1
1c0054a8:	0040851c 	slli.w	$r28,$r8,0x1
1c0054ac:	001007f2 	add.w	$r18,$r31,$r1
1c0054b0:	0010168e 	add.w	$r14,$r20,$r5
1c0054b4:	038401a5 	ori	$r5,$r13,0x100
1c0054b8:	0010724b 	add.w	$r11,$r18,$r28
1c0054bc:	001004bf 	add.w	$r31,$r5,$r1
1c0054c0:	004085fc 	slli.w	$r28,$r15,0x1
1c0054c4:	001073f2 	add.w	$r18,$r31,$r28
1c0054c8:	00102d33 	add.w	$r19,$r9,$r11
1c0054cc:	0010492b 	add.w	$r11,$r9,$r18
1c0054d0:	28400167 	ld.h	$r7,$r11,0
1c0054d4:	2a400264 	ld.hu	$r4,$r19,0
1c0054d8:	00103930 	add.w	$r16,$r9,$r14
1c0054dc:	038401ad 	ori	$r13,$r13,0x100
1c0054e0:	2a400208 	ld.hu	$r8,$r16,0
1c0054e4:	004084f4 	slli.w	$r20,$r7,0x1
1c0054e8:	001005b3 	add.w	$r19,$r13,$r1
1c0054ec:	00105270 	add.w	$r16,$r19,$r20
1c0054f0:	29402984 	st.h	$r4,$r12,10(0xa)
1c0054f4:	00104124 	add.w	$r4,$r9,$r16
1c0054f8:	29403188 	st.h	$r8,$r12,12(0xc)
1c0054fc:	2a400088 	ld.hu	$r8,$r4,0
1c005500:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c005504:	297ff988 	st.h	$r8,$r12,-2(0xffe)
1c005508:	5ffe36ec 	bne	$r23,$r12,-460(0x3fe34) # 1c00533c <shell17_main+0x3adc>
1c00550c:	02800634 	addi.w	$r20,$r17,1(0x1)
1c005510:	02800a31 	addi.w	$r17,$r17,2(0x2)
1c005514:	63fe2626 	blt	$r17,$r6,-476(0x3fe24) # 1c005338 <shell17_main+0x3ad8>
1c005518:	15ffffdc 	lu12i.w	$r28,-2(0xffffe)
1c00551c:	03400000 	andi	$r0,$r0,0x0
1c005520:	001502cc 	move	$r12,$r22
1c005524:	2840118f 	ld.h	$r15,$r12,4(0x4)
1c005528:	28401981 	ld.h	$r1,$r12,6(0x6)
1c00552c:	28400189 	ld.h	$r9,$r12,0
1c005530:	28400986 	ld.h	$r6,$r12,2(0x2)
1c005534:	2840219f 	ld.h	$r31,$r12,8(0x8)
1c005538:	2840298b 	ld.h	$r11,$r12,10(0xa)
1c00553c:	2840318d 	ld.h	$r13,$r12,12(0xc)
1c005540:	2840398e 	ld.h	$r14,$r12,14(0xe)
1c005544:	004085e5 	slli.w	$r5,$r15,0x1
1c005548:	1400008f 	lu12i.w	$r15,4(0x4)
1c00554c:	00408527 	slli.w	$r7,$r9,0x1
1c005550:	038401e8 	ori	$r8,$r15,0x100
1c005554:	02804069 	addi.w	$r9,$r3,16(0x10)
1c005558:	004084d3 	slli.w	$r19,$r6,0x1
1c00555c:	00408424 	slli.w	$r4,$r1,0x1
1c005560:	00102506 	add.w	$r6,$r8,$r9
1c005564:	00408571 	slli.w	$r17,$r11,0x1
1c005568:	038401e8 	ori	$r8,$r15,0x100
1c00556c:	038401eb 	ori	$r11,$r15,0x100
1c005570:	004085c1 	slli.w	$r1,$r14,0x1
1c005574:	038401ee 	ori	$r14,$r15,0x100
1c005578:	004087f2 	slli.w	$r18,$r31,0x1
1c00557c:	004085b0 	slli.w	$r16,$r13,0x1
1c005580:	00101cdf 	add.w	$r31,$r6,$r7
1c005584:	0010256d 	add.w	$r13,$r11,$r9
1c005588:	001025c7 	add.w	$r7,$r14,$r9
1c00558c:	00102506 	add.w	$r6,$r8,$r9
1c005590:	038401eb 	ori	$r11,$r15,0x100
1c005594:	038401ee 	ori	$r14,$r15,0x100
1c005598:	038401e8 	ori	$r8,$r15,0x100
1c00559c:	038401ef 	ori	$r15,$r15,0x100
1c0055a0:	00104db3 	add.w	$r19,$r13,$r19
1c0055a4:	001014e5 	add.w	$r5,$r7,$r5
1c0055a8:	0010256d 	add.w	$r13,$r11,$r9
1c0055ac:	001025c7 	add.w	$r7,$r14,$r9
1c0055b0:	001025eb 	add.w	$r11,$r15,$r9
1c0055b4:	001010c4 	add.w	$r4,$r6,$r4
1c0055b8:	00102506 	add.w	$r6,$r8,$r9
1c0055bc:	001040d0 	add.w	$r16,$r6,$r16
1c0055c0:	00100561 	add.w	$r1,$r11,$r1
1c0055c4:	001049b2 	add.w	$r18,$r13,$r18
1c0055c8:	001044f1 	add.w	$r17,$r7,$r17
1c0055cc:	00107f9f 	add.w	$r31,$r28,$r31
1c0055d0:	00104f93 	add.w	$r19,$r28,$r19
1c0055d4:	00101785 	add.w	$r5,$r28,$r5
1c0055d8:	00101384 	add.w	$r4,$r28,$r4
1c0055dc:	00104b8d 	add.w	$r13,$r28,$r18
1c0055e0:	00104791 	add.w	$r17,$r28,$r17
1c0055e4:	00104388 	add.w	$r8,$r28,$r16
1c0055e8:	0010078e 	add.w	$r14,$r28,$r1
1c0055ec:	2a4003e7 	ld.hu	$r7,$r31,0
1c0055f0:	2a400266 	ld.hu	$r6,$r19,0
1c0055f4:	2a4000af 	ld.hu	$r15,$r5,0
1c0055f8:	2a400089 	ld.hu	$r9,$r4,0
1c0055fc:	2a4001b2 	ld.hu	$r18,$r13,0
1c005600:	2a40022b 	ld.hu	$r11,$r17,0
1c005604:	2a400110 	ld.hu	$r16,$r8,0
1c005608:	2a4001c1 	ld.hu	$r1,$r14,0
1c00560c:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c005610:	297fc187 	st.h	$r7,$r12,-16(0xff0)
1c005614:	297fc986 	st.h	$r6,$r12,-14(0xff2)
1c005618:	297fd18f 	st.h	$r15,$r12,-12(0xff4)
1c00561c:	297fd989 	st.h	$r9,$r12,-10(0xff6)
1c005620:	297fe192 	st.h	$r18,$r12,-8(0xff8)
1c005624:	297fe98b 	st.h	$r11,$r12,-6(0xffa)
1c005628:	297ff190 	st.h	$r16,$r12,-4(0xffc)
1c00562c:	297ff981 	st.h	$r1,$r12,-2(0xffe)
1c005630:	5ffef6ec 	bne	$r23,$r12,-268(0x3fef4) # 1c005524 <shell17_main+0x3cc4>
1c005634:	02800694 	addi.w	$r20,$r20,1(0x1)
1c005638:	63feea8a 	blt	$r20,$r10,-280(0x3fee8) # 1c005520 <shell17_main+0x3cc0>
1c00563c:	540fb400 	bl	4020(0xfb4) # 1c0065f0 <get_clock>
1c005640:	28800347 	ld.w	$r7,$r26,0
1c005644:	0015008a 	move	$r10,$r4
1c005648:	1c000f6c 	pcaddu12i	$r12,123(0x7b)
1c00564c:	28b8c18c 	ld.w	$r12,$r12,-464(0xe30)
1c005650:	29802067 	st.w	$r7,$r3,8(0x8)
1c005654:	2840207c 	ld.h	$r28,$r3,8(0x8)
1c005658:	29800364 	st.w	$r4,$r27,0
1c00565c:	28400186 	ld.h	$r6,$r12,0
1c005660:	5c0320dc 	bne	$r6,$r28,800(0x320) # 1c005980 <shell17_main+0x4120>
1c005664:	28400986 	ld.h	$r6,$r12,2(0x2)
1c005668:	5c0318dc 	bne	$r6,$r28,792(0x318) # 1c005980 <shell17_main+0x4120>
1c00566c:	28401186 	ld.h	$r6,$r12,4(0x4)
1c005670:	5c0310dc 	bne	$r6,$r28,784(0x310) # 1c005980 <shell17_main+0x4120>
1c005674:	28401986 	ld.h	$r6,$r12,6(0x6)
1c005678:	5c0308dc 	bne	$r6,$r28,776(0x308) # 1c005980 <shell17_main+0x4120>
1c00567c:	28402186 	ld.h	$r6,$r12,8(0x8)
1c005680:	5c0300dc 	bne	$r6,$r28,768(0x300) # 1c005980 <shell17_main+0x4120>
1c005684:	28402986 	ld.h	$r6,$r12,10(0xa)
1c005688:	5c02f8dc 	bne	$r6,$r28,760(0x2f8) # 1c005980 <shell17_main+0x4120>
1c00568c:	28403186 	ld.h	$r6,$r12,12(0xc)
1c005690:	5c02f0dc 	bne	$r6,$r28,752(0x2f0) # 1c005980 <shell17_main+0x4120>
1c005694:	28403986 	ld.h	$r6,$r12,14(0xe)
1c005698:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c00569c:	5c02e4dc 	bne	$r6,$r28,740(0x2e4) # 1c005980 <shell17_main+0x4120>
1c0056a0:	5fffbeec 	bne	$r23,$r12,-68(0x3ffbc) # 1c00565c <shell17_main+0x3dfc>
1c0056a4:	2880031f 	ld.w	$r31,$r24,0
1c0056a8:	14001e93 	lu12i.w	$r19,244(0xf4)
1c0056ac:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c0056b0:	02ad90a5 	addi.w	$r5,$r5,-1180(0xb64)
1c0056b4:	0389026d 	ori	$r13,$r19,0x240
1c0056b8:	00117d51 	sub.w	$r17,$r10,$r31
1c0056bc:	028fa006 	addi.w	$r6,$r0,1000(0x3e8)
1c0056c0:	00213627 	div.wu	$r7,$r17,$r13
1c0056c4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0056cc <shell17_main+0x3e6c>
1c0056c8:	002a0007 	break	0x7
1c0056cc:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c0056d0:	02a57084 	addi.w	$r4,$r4,-1700(0x95c)
1c0056d4:	54072c00 	bl	1836(0x72c) # 1c005e00 <printf>
1c0056d8:	540f1800 	bl	3864(0xf18) # 1c0065f0 <get_clock>
1c0056dc:	28800339 	ld.w	$r25,$r25,0
1c0056e0:	29800304 	st.w	$r4,$r24,0
1c0056e4:	00150014 	move	$r20,$r0
1c0056e8:	15ffffc5 	lu12i.w	$r5,-2(0xffffe)
1c0056ec:	64012819 	bge	$r0,$r25,296(0x128) # 1c005814 <shell17_main+0x3fb4>
1c0056f0:	001503bc 	move	$r28,$r29
1c0056f4:	001502c1 	move	$r1,$r22
1c0056f8:	2840202f 	ld.h	$r15,$r1,8(0x8)
1c0056fc:	28402829 	ld.h	$r9,$r1,10(0xa)
1c005700:	28400028 	ld.h	$r8,$r1,0
1c005704:	2840082e 	ld.h	$r14,$r1,2(0x2)
1c005708:	28401026 	ld.h	$r6,$r1,4(0x4)
1c00570c:	28401824 	ld.h	$r4,$r1,6(0x6)
1c005710:	2840302b 	ld.h	$r11,$r1,12(0xc)
1c005714:	28403830 	ld.h	$r16,$r1,14(0xe)
1c005718:	004085f3 	slli.w	$r19,$r15,0x1
1c00571c:	1400008f 	lu12i.w	$r15,4(0x4)
1c005720:	0280406a 	addi.w	$r10,$r3,16(0x10)
1c005724:	038401e7 	ori	$r7,$r15,0x100
1c005728:	0040850c 	slli.w	$r12,$r8,0x1
1c00572c:	004084cd 	slli.w	$r13,$r6,0x1
1c005730:	001028e8 	add.w	$r8,$r7,$r10
1c005734:	038401e6 	ori	$r6,$r15,0x100
1c005738:	038401e7 	ori	$r7,$r15,0x100
1c00573c:	00408532 	slli.w	$r18,$r9,0x1
1c005740:	038401e9 	ori	$r9,$r15,0x100
1c005744:	004085df 	slli.w	$r31,$r14,0x1
1c005748:	00408571 	slli.w	$r17,$r11,0x1
1c00574c:	0040848e 	slli.w	$r14,$r4,0x1
1c005750:	0040860b 	slli.w	$r11,$r16,0x1
1c005754:	001028c4 	add.w	$r4,$r6,$r10
1c005758:	00102930 	add.w	$r16,$r9,$r10
1c00575c:	038401e6 	ori	$r6,$r15,0x100
1c005760:	038401e9 	ori	$r9,$r15,0x100
1c005764:	0010310c 	add.w	$r12,$r8,$r12
1c005768:	001028e8 	add.w	$r8,$r7,$r10
1c00576c:	038401e7 	ori	$r7,$r15,0x100
1c005770:	038401ef 	ori	$r15,$r15,0x100
1c005774:	00107c9f 	add.w	$r31,$r4,$r31
1c005778:	0010360d 	add.w	$r13,$r16,$r13
1c00577c:	001028c4 	add.w	$r4,$r6,$r10
1c005780:	00102930 	add.w	$r16,$r9,$r10
1c005784:	001029e6 	add.w	$r6,$r15,$r10
1c005788:	0010390e 	add.w	$r14,$r8,$r14
1c00578c:	001028e8 	add.w	$r8,$r7,$r10
1c005790:	00104a12 	add.w	$r18,$r16,$r18
1c005794:	00102ccb 	add.w	$r11,$r6,$r11
1c005798:	00104c93 	add.w	$r19,$r4,$r19
1c00579c:	00104511 	add.w	$r17,$r8,$r17
1c0057a0:	001030ac 	add.w	$r12,$r5,$r12
1c0057a4:	00107cbf 	add.w	$r31,$r5,$r31
1c0057a8:	001034ad 	add.w	$r13,$r5,$r13
1c0057ac:	001038ae 	add.w	$r14,$r5,$r14
1c0057b0:	00104cb3 	add.w	$r19,$r5,$r19
1c0057b4:	001048a9 	add.w	$r9,$r5,$r18
1c0057b8:	001044b1 	add.w	$r17,$r5,$r17
1c0057bc:	00102cb0 	add.w	$r16,$r5,$r11
1c0057c0:	2a400188 	ld.hu	$r8,$r12,0
1c0057c4:	2a4003e7 	ld.hu	$r7,$r31,0
1c0057c8:	2a4001af 	ld.hu	$r15,$r13,0
1c0057cc:	2a4001c4 	ld.hu	$r4,$r14,0
1c0057d0:	2a40026a 	ld.hu	$r10,$r19,0
1c0057d4:	2a400132 	ld.hu	$r18,$r9,0
1c0057d8:	2a400226 	ld.hu	$r6,$r17,0
1c0057dc:	2a40020b 	ld.hu	$r11,$r16,0
1c0057e0:	0280439c 	addi.w	$r28,$r28,16(0x10)
1c0057e4:	02804021 	addi.w	$r1,$r1,16(0x10)
1c0057e8:	297fc388 	st.h	$r8,$r28,-16(0xff0)
1c0057ec:	297fcb87 	st.h	$r7,$r28,-14(0xff2)
1c0057f0:	297fd38f 	st.h	$r15,$r28,-12(0xff4)
1c0057f4:	297fdb84 	st.h	$r4,$r28,-10(0xff6)
1c0057f8:	297fe38a 	st.h	$r10,$r28,-8(0xff8)
1c0057fc:	297feb92 	st.h	$r18,$r28,-6(0xffa)
1c005800:	297ff386 	st.h	$r6,$r28,-4(0xffc)
1c005804:	297ffb8b 	st.h	$r11,$r28,-2(0xffe)
1c005808:	5ffef2e1 	bne	$r23,$r1,-272(0x3fef0) # 1c0056f8 <shell17_main+0x3e98>
1c00580c:	02800694 	addi.w	$r20,$r20,1(0x1)
1c005810:	5ffee299 	bne	$r20,$r25,-288(0x3fee0) # 1c0056f0 <shell17_main+0x3e90>
1c005814:	540ddc00 	bl	3548(0xddc) # 1c0065f0 <get_clock>
1c005818:	001177d9 	sub.w	$r25,$r30,$r29
1c00581c:	28800347 	ld.w	$r7,$r26,0
1c005820:	02bffb3a 	addi.w	$r26,$r25,-2(0xffe)
1c005824:	00448745 	srli.w	$r5,$r26,0x1
1c005828:	028004bc 	addi.w	$r28,$r5,1(0x1)
1c00582c:	29802067 	st.w	$r7,$r3,8(0x8)
1c005830:	29800364 	st.w	$r4,$r27,0
1c005834:	03401f8c 	andi	$r12,$r28,0x7
1c005838:	00150097 	move	$r23,$r4
1c00583c:	2840207f 	ld.h	$r31,$r3,8(0x8)
1c005840:	58008180 	beq	$r12,$r0,128(0x80) # 1c0058c0 <shell17_main+0x4060>
1c005844:	02800401 	addi.w	$r1,$r0,1(0x1)
1c005848:	58006981 	beq	$r12,$r1,104(0x68) # 1c0058b0 <shell17_main+0x4050>
1c00584c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005850:	5800558d 	beq	$r12,$r13,84(0x54) # 1c0058a4 <shell17_main+0x4044>
1c005854:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c005858:	5800418e 	beq	$r12,$r14,64(0x40) # 1c005898 <shell17_main+0x4038>
1c00585c:	02801013 	addi.w	$r19,$r0,4(0x4)
1c005860:	58002d93 	beq	$r12,$r19,44(0x2c) # 1c00588c <shell17_main+0x402c>
1c005864:	02801409 	addi.w	$r9,$r0,5(0x5)
1c005868:	58001989 	beq	$r12,$r9,24(0x18) # 1c005880 <shell17_main+0x4020>
1c00586c:	02801811 	addi.w	$r17,$r0,6(0x6)
1c005870:	5c013191 	bne	$r12,$r17,304(0x130) # 1c0059a0 <shell17_main+0x4140>
1c005874:	284003a6 	ld.h	$r6,$r29,0
1c005878:	02800bbd 	addi.w	$r29,$r29,2(0x2)
1c00587c:	5c0134df 	bne	$r6,$r31,308(0x134) # 1c0059b0 <shell17_main+0x4150>
1c005880:	284003a6 	ld.h	$r6,$r29,0
1c005884:	02800bbd 	addi.w	$r29,$r29,2(0x2)
1c005888:	5c0128df 	bne	$r6,$r31,296(0x128) # 1c0059b0 <shell17_main+0x4150>
1c00588c:	284003a6 	ld.h	$r6,$r29,0
1c005890:	02800bbd 	addi.w	$r29,$r29,2(0x2)
1c005894:	5c011cdf 	bne	$r6,$r31,284(0x11c) # 1c0059b0 <shell17_main+0x4150>
1c005898:	284003a6 	ld.h	$r6,$r29,0
1c00589c:	02800bbd 	addi.w	$r29,$r29,2(0x2)
1c0058a0:	5c0110df 	bne	$r6,$r31,272(0x110) # 1c0059b0 <shell17_main+0x4150>
1c0058a4:	284003a6 	ld.h	$r6,$r29,0
1c0058a8:	02800bbd 	addi.w	$r29,$r29,2(0x2)
1c0058ac:	5c0104df 	bne	$r6,$r31,260(0x104) # 1c0059b0 <shell17_main+0x4150>
1c0058b0:	284003a6 	ld.h	$r6,$r29,0
1c0058b4:	5c00fcdf 	bne	$r6,$r31,252(0xfc) # 1c0059b0 <shell17_main+0x4150>
1c0058b8:	02800bbd 	addi.w	$r29,$r29,2(0x2)
1c0058bc:	58004fdd 	beq	$r30,$r29,76(0x4c) # 1c005908 <shell17_main+0x40a8>
1c0058c0:	284003a6 	ld.h	$r6,$r29,0
1c0058c4:	5c00ecdf 	bne	$r6,$r31,236(0xec) # 1c0059b0 <shell17_main+0x4150>
1c0058c8:	28400ba6 	ld.h	$r6,$r29,2(0x2)
1c0058cc:	5c00e4df 	bne	$r6,$r31,228(0xe4) # 1c0059b0 <shell17_main+0x4150>
1c0058d0:	284013a6 	ld.h	$r6,$r29,4(0x4)
1c0058d4:	5c00dcdf 	bne	$r6,$r31,220(0xdc) # 1c0059b0 <shell17_main+0x4150>
1c0058d8:	28401ba6 	ld.h	$r6,$r29,6(0x6)
1c0058dc:	5c00d4df 	bne	$r6,$r31,212(0xd4) # 1c0059b0 <shell17_main+0x4150>
1c0058e0:	284023a6 	ld.h	$r6,$r29,8(0x8)
1c0058e4:	5c00ccdf 	bne	$r6,$r31,204(0xcc) # 1c0059b0 <shell17_main+0x4150>
1c0058e8:	28402ba6 	ld.h	$r6,$r29,10(0xa)
1c0058ec:	5c00c4df 	bne	$r6,$r31,196(0xc4) # 1c0059b0 <shell17_main+0x4150>
1c0058f0:	284033a6 	ld.h	$r6,$r29,12(0xc)
1c0058f4:	5c00bcdf 	bne	$r6,$r31,188(0xbc) # 1c0059b0 <shell17_main+0x4150>
1c0058f8:	28403ba6 	ld.h	$r6,$r29,14(0xe)
1c0058fc:	028043bd 	addi.w	$r29,$r29,16(0x10)
1c005900:	5c00b0df 	bne	$r6,$r31,176(0xb0) # 1c0059b0 <shell17_main+0x4150>
1c005904:	5fffbfdd 	bne	$r30,$r29,-68(0x3ffbc) # 1c0058c0 <shell17_main+0x4060>
1c005908:	28800318 	ld.w	$r24,$r24,0
1c00590c:	14001e9b 	lu12i.w	$r27,244(0xf4)
1c005910:	0389037e 	ori	$r30,$r27,0x240
1c005914:	001162f0 	sub.w	$r16,$r23,$r24
1c005918:	028fa006 	addi.w	$r6,$r0,1000(0x3e8)
1c00591c:	00217a07 	div.wu	$r7,$r16,$r30
1c005920:	5c000bc0 	bne	$r30,$r0,8(0x8) # 1c005928 <shell17_main+0x40c8>
1c005924:	002a0007 	break	0x7
1c005928:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c00592c:	02a430a5 	addi.w	$r5,$r5,-1780(0x90c)
1c005930:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005934:	029be084 	addi.w	$r4,$r4,1784(0x6f8)
1c005938:	5404c800 	bl	1224(0x4c8) # 1c005e00 <printf>
1c00593c:	14000096 	lu12i.w	$r22,4(0x4)
1c005940:	00105863 	add.w	$r3,$r3,$r22
1c005944:	2884f061 	ld.w	$r1,$r3,316(0x13c)
1c005948:	00150004 	move	$r4,$r0
1c00594c:	2884e076 	ld.w	$r22,$r3,312(0x138)
1c005950:	2884d077 	ld.w	$r23,$r3,308(0x134)
1c005954:	2884c078 	ld.w	$r24,$r3,304(0x130)
1c005958:	2884b079 	ld.w	$r25,$r3,300(0x12c)
1c00595c:	2884a07a 	ld.w	$r26,$r3,296(0x128)
1c005960:	2884907b 	ld.w	$r27,$r3,292(0x124)
1c005964:	2884807c 	ld.w	$r28,$r3,288(0x120)
1c005968:	2884707d 	ld.w	$r29,$r3,284(0x11c)
1c00596c:	2884607e 	ld.w	$r30,$r3,280(0x118)
1c005970:	2884507f 	ld.w	$r31,$r3,276(0x114)
1c005974:	02850063 	addi.w	$r3,$r3,320(0x140)
1c005978:	4c000020 	jirl	$r0,$r1,0
1c00597c:	03400000 	andi	$r0,$r0,0x0
1c005980:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c005984:	02a240a5 	addi.w	$r5,$r5,-1904(0x890)
1c005988:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c00598c:	0299e084 	addi.w	$r4,$r4,1656(0x678)
1c005990:	54047000 	bl	1136(0x470) # 1c005e00 <printf>
1c005994:	2880036a 	ld.w	$r10,$r27,0
1c005998:	53fd0fff 	b	-756(0xffffd0c) # 1c0056a4 <shell17_main+0x3e44>
1c00599c:	03400000 	andi	$r0,$r0,0x0
1c0059a0:	284003a6 	ld.h	$r6,$r29,0
1c0059a4:	02800bbd 	addi.w	$r29,$r29,2(0x2)
1c0059a8:	5bfeccdf 	beq	$r6,$r31,-308(0x3fecc) # 1c005874 <shell17_main+0x4014>
1c0059ac:	03400000 	andi	$r0,$r0,0x0
1c0059b0:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c0059b4:	02a210a5 	addi.w	$r5,$r5,-1916(0x884)
1c0059b8:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c0059bc:	02992084 	addi.w	$r4,$r4,1608(0x648)
1c0059c0:	54044000 	bl	1088(0x440) # 1c005e00 <printf>
1c0059c4:	28800377 	ld.w	$r23,$r27,0
1c0059c8:	53ff43ff 	b	-192(0xfffff40) # 1c005908 <shell17_main+0x40a8>
1c0059cc:	03400000 	andi	$r0,$r0,0x0
1c0059d0:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c0059d4:	02a090a5 	addi.w	$r5,$r5,-2012(0x824)
1c0059d8:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c0059dc:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c0059e0:	54042000 	bl	1056(0x420) # 1c005e00 <printf>
1c0059e4:	2880037f 	ld.w	$r31,$r27,0
1c0059e8:	53f8efff 	b	-1812(0xffff8ec) # 1c0052d4 <shell17_main+0x3a74>
1c0059ec:	03400000 	andi	$r0,$r0,0x0
1c0059f0:	28400186 	ld.h	$r6,$r12,0
1c0059f4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0059f8:	5bf4bcd4 	beq	$r6,$r20,-2884(0x3f4bc) # 1c004eb4 <shell17_main+0x3654>
1c0059fc:	03400000 	andi	$r0,$r0,0x0
1c005a00:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005a04:	029f40a5 	addi.w	$r5,$r5,2000(0x7d0)
1c005a08:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005a0c:	0297e084 	addi.w	$r4,$r4,1528(0x5f8)
1c005a10:	5403f000 	bl	1008(0x3f0) # 1c005e00 <printf>
1c005a14:	28800370 	ld.w	$r16,$r27,0
1c005a18:	53f533ff 	b	-2768(0xffff530) # 1c004f48 <shell17_main+0x36e8>
1c005a1c:	03400000 	andi	$r0,$r0,0x0
1c005a20:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005a24:	029e40a5 	addi.w	$r5,$r5,1936(0x790)
1c005a28:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005a2c:	02976084 	addi.w	$r4,$r4,1496(0x5d8)
1c005a30:	5403d000 	bl	976(0x3d0) # 1c005e00 <printf>
1c005a34:	28800364 	ld.w	$r4,$r27,0
1c005a38:	53ef1bff 	b	-4328(0xfffef18) # 1c004950 <shell17_main+0x30f0>
1c005a3c:	03400000 	andi	$r0,$r0,0x0
1c005a40:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005a44:	029d20a5 	addi.w	$r5,$r5,1864(0x748)
1c005a48:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005a4c:	0296e084 	addi.w	$r4,$r4,1464(0x5b8)
1c005a50:	5403b000 	bl	944(0x3b0) # 1c005e00 <printf>
1c005a54:	2880036a 	ld.w	$r10,$r27,0
1c005a58:	53ed1fff 	b	-4836(0xfffed1c) # 1c004774 <shell17_main+0x2f14>
1c005a5c:	03400000 	andi	$r0,$r0,0x0
1c005a60:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005a64:	029c20a5 	addi.w	$r5,$r5,1800(0x708)
1c005a68:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005a6c:	02966084 	addi.w	$r4,$r4,1432(0x598)
1c005a70:	54039000 	bl	912(0x390) # 1c005e00 <printf>
1c005a74:	2880036b 	ld.w	$r11,$r27,0
1c005a78:	53e92fff 	b	-5844(0xfffe92c) # 1c0043a4 <shell17_main+0x2b44>
1c005a7c:	03400000 	andi	$r0,$r0,0x0
1c005a80:	2a4002c6 	ld.hu	$r6,$r22,0
1c005a84:	02800ad4 	addi.w	$r20,$r22,2(0x2)
1c005a88:	5be4e4de 	beq	$r6,$r30,-6940(0x3e4e4) # 1c003f6c <shell17_main+0x270c>
1c005a8c:	03400000 	andi	$r0,$r0,0x0
1c005a90:	28802067 	ld.w	$r7,$r3,8(0x8)
1c005a94:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005a98:	029ab0a5 	addi.w	$r5,$r5,1708(0x6ac)
1c005a9c:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005aa0:	02959084 	addi.w	$r4,$r4,1380(0x564)
1c005aa4:	54035c00 	bl	860(0x35c) # 1c005e00 <printf>
1c005aa8:	2880037d 	ld.w	$r29,$r27,0
1c005aac:	53e557ff 	b	-6828(0xfffe554) # 1c004000 <shell17_main+0x27a0>
1c005ab0:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005ab4:	029940a5 	addi.w	$r5,$r5,1616(0x650)
1c005ab8:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005abc:	02952084 	addi.w	$r4,$r4,1352(0x548)
1c005ac0:	54034000 	bl	832(0x340) # 1c005e00 <printf>
1c005ac4:	2880036a 	ld.w	$r10,$r27,0
1c005ac8:	53dccfff 	b	-9012(0xfffdccc) # 1c003794 <shell17_main+0x1f34>
1c005acc:	03400000 	andi	$r0,$r0,0x0
1c005ad0:	280003c6 	ld.b	$r6,$r30,0
1c005ad4:	028007de 	addi.w	$r30,$r30,1(0x1)
1c005ad8:	5bde6ccc 	beq	$r6,$r12,-8596(0x3de6c) # 1c003944 <shell17_main+0x20e4>
1c005adc:	03400000 	andi	$r0,$r0,0x0
1c005ae0:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005ae4:	029910a5 	addi.w	$r5,$r5,1604(0x644)
1c005ae8:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005aec:	02946084 	addi.w	$r4,$r4,1304(0x518)
1c005af0:	54031000 	bl	784(0x310) # 1c005e00 <printf>
1c005af4:	2880037d 	ld.w	$r29,$r27,0
1c005af8:	53defbff 	b	-8456(0xfffdef8) # 1c0039f0 <shell17_main+0x2190>
1c005afc:	03400000 	andi	$r0,$r0,0x0
1c005b00:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005b04:	029790a5 	addi.w	$r5,$r5,1508(0x5e4)
1c005b08:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005b0c:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c005b10:	5402f000 	bl	752(0x2f0) # 1c005e00 <printf>
1c005b14:	28800376 	ld.w	$r22,$r27,0
1c005b18:	53d913ff 	b	-9968(0xfffd910) # 1c003428 <shell17_main+0x1bc8>
1c005b1c:	03400000 	andi	$r0,$r0,0x0
1c005b20:	28000186 	ld.b	$r6,$r12,0
1c005b24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b28:	5bd528c5 	beq	$r6,$r5,-10968(0x3d528) # 1c003050 <shell17_main+0x17f0>
1c005b2c:	03400000 	andi	$r0,$r0,0x0
1c005b30:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005b34:	029640a5 	addi.w	$r5,$r5,1424(0x590)
1c005b38:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005b3c:	02932084 	addi.w	$r4,$r4,1224(0x4c8)
1c005b40:	5402c000 	bl	704(0x2c0) # 1c005e00 <printf>
1c005b44:	28800364 	ld.w	$r4,$r27,0
1c005b48:	53d59fff 	b	-10852(0xfffd59c) # 1c0030e4 <shell17_main+0x1884>
1c005b4c:	03400000 	andi	$r0,$r0,0x0
1c005b50:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005b54:	029550a5 	addi.w	$r5,$r5,1364(0x554)
1c005b58:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005b5c:	0292a084 	addi.w	$r4,$r4,1192(0x4a8)
1c005b60:	5402a000 	bl	672(0x2a0) # 1c005e00 <printf>
1c005b64:	28800364 	ld.w	$r4,$r27,0
1c005b68:	53ce8fff 	b	-12660(0xfffce8c) # 1c0029f4 <shell17_main+0x1194>
1c005b6c:	03400000 	andi	$r0,$r0,0x0
1c005b70:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005b74:	029440a5 	addi.w	$r5,$r5,1296(0x510)
1c005b78:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005b7c:	02922084 	addi.w	$r4,$r4,1160(0x488)
1c005b80:	54028000 	bl	640(0x280) # 1c005e00 <printf>
1c005b84:	28800364 	ld.w	$r4,$r27,0
1c005b88:	53ccabff 	b	-13144(0xfffcca8) # 1c002830 <shell17_main+0xfd0>
1c005b8c:	03400000 	andi	$r0,$r0,0x0
1c005b90:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005b94:	029350a5 	addi.w	$r5,$r5,1236(0x4d4)
1c005b98:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005b9c:	0291a084 	addi.w	$r4,$r4,1128(0x468)
1c005ba0:	54026000 	bl	608(0x260) # 1c005e00 <printf>
1c005ba4:	28800364 	ld.w	$r4,$r27,0
1c005ba8:	53c91fff 	b	-14052(0xfffc91c) # 1c0024c4 <shell17_main+0xc64>
1c005bac:	03400000 	andi	$r0,$r0,0x0
1c005bb0:	2a0003e6 	ld.bu	$r6,$r31,0
1c005bb4:	028007ec 	addi.w	$r12,$r31,1(0x1)
1c005bb8:	5bc528c5 	beq	$r6,$r5,-15064(0x3c528) # 1c0020e0 <shell17_main+0x880>
1c005bbc:	03400000 	andi	$r0,$r0,0x0
1c005bc0:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005bc4:	029200a5 	addi.w	$r5,$r5,1152(0x480)
1c005bc8:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005bcc:	0290e084 	addi.w	$r4,$r4,1080(0x438)
1c005bd0:	54023000 	bl	560(0x230) # 1c005e00 <printf>
1c005bd4:	2880036a 	ld.w	$r10,$r27,0
1c005bd8:	53c59fff 	b	-14948(0xfffc59c) # 1c002174 <shell17_main+0x914>
1c005bdc:	03400000 	andi	$r0,$r0,0x0
1c005be0:	2a000188 	ld.bu	$r8,$r12,0
1c005be4:	14000089 	lu12i.w	$r9,4(0x4)
1c005be8:	02804070 	addi.w	$r16,$r3,16(0x10)
1c005bec:	0384012f 	ori	$r15,$r9,0x100
1c005bf0:	001041ee 	add.w	$r14,$r15,$r16
1c005bf4:	001021c1 	add.w	$r1,$r14,$r8
1c005bf8:	0010066b 	add.w	$r11,$r19,$r1
1c005bfc:	2a3c0171 	ld.bu	$r17,$r11,-256(0xf00)
1c005c00:	03840134 	ori	$r20,$r9,0x100
1c005c04:	0010429f 	add.w	$r31,$r20,$r16
1c005c08:	001047ed 	add.w	$r13,$r31,$r17
1c005c0c:	00103664 	add.w	$r4,$r19,$r13
1c005c10:	2a3c0085 	ld.bu	$r5,$r4,-256(0xf00)
1c005c14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c18:	293ffd85 	st.b	$r5,$r12,-1(0xfff)
1c005c1c:	53bef7ff 	b	-16652(0xfffbef4) # 1c001b10 <shell17_main+0x2b0>
1c005c20:	280003ec 	ld.b	$r12,$r31,0
1c005c24:	14000084 	lu12i.w	$r4,4(0x4)
1c005c28:	0280406f 	addi.w	$r15,$r3,16(0x10)
1c005c2c:	03840087 	ori	$r7,$r4,0x100
1c005c30:	00103cf0 	add.w	$r16,$r7,$r15
1c005c34:	0010320e 	add.w	$r14,$r16,$r12
1c005c38:	001038a9 	add.w	$r9,$r5,$r14
1c005c3c:	283e0134 	ld.b	$r20,$r9,-128(0xf80)
1c005c40:	03840092 	ori	$r18,$r4,0x100
1c005c44:	00103e48 	add.w	$r8,$r18,$r15
1c005c48:	0010510d 	add.w	$r13,$r8,$r20
1c005c4c:	001034ab 	add.w	$r11,$r5,$r13
1c005c50:	2a3e0161 	ld.bu	$r1,$r11,-128(0xf80)
1c005c54:	028007ec 	addi.w	$r12,$r31,1(0x1)
1c005c58:	290003e1 	st.b	$r1,$r31,0
1c005c5c:	53ce3fff 	b	-12740(0xfffce3c) # 1c002a98 <shell17_main+0x1238>
1c005c60:	1c000f7f 	pcaddu12i	$r31,123(0x7b)
1c005c64:	28a063ff 	ld.w	$r31,$r31,-2024(0x818)
1c005c68:	0280a3ff 	addi.w	$r31,$r31,40(0x28)
1c005c6c:	53e297ff 	b	-7532(0xfffe294) # 1c003f00 <shell17_main+0x26a0>
1c005c70:	1c000f6b 	pcaddu12i	$r11,123(0x7b)
1c005c74:	28a0116b 	ld.w	$r11,$r11,-2044(0x804)
1c005c78:	02805176 	addi.w	$r22,$r11,20(0x14)
1c005c7c:	53c3ffff 	b	-15364(0xfffc3fc) # 1c002078 <shell17_main+0x818>
1c005c80:	00150012 	move	$r18,$r0
1c005c84:	0280a19f 	addi.w	$r31,$r12,40(0x28)
1c005c88:	53dfd7ff 	b	-8236(0xfffdfd4) # 1c003c5c <shell17_main+0x23fc>
1c005c8c:	00150014 	move	$r20,$r0
1c005c90:	02805236 	addi.w	$r22,$r17,20(0x14)
1c005c94:	53c187ff 	b	-15996(0xfffc184) # 1c001e18 <shell17_main+0x5b8>
1c005c98:	03400000 	andi	$r0,$r0,0x0
1c005c9c:	03400000 	andi	$r0,$r0,0x0

1c005ca0 <shell17>:
shell17():
1c005ca0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005ca4:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005ca8:	0296b084 	addi.w	$r4,$r4,1452(0x5ac)
1c005cac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005cb0:	29806077 	st.w	$r23,$r3,24(0x18)
1c005cb4:	29805078 	st.w	$r24,$r3,20(0x14)
1c005cb8:	29804079 	st.w	$r25,$r3,16(0x10)
1c005cbc:	2980307a 	st.w	$r26,$r3,12(0xc)
1c005cc0:	54046000 	bl	1120(0x460) # 1c006120 <puts>
1c005cc4:	54085c00 	bl	2140(0x85c) # 1c006520 <get_count>
1c005cc8:	00150099 	move	$r25,$r4
1c005ccc:	54088400 	bl	2180(0x884) # 1c006550 <get_count_my>
1c005cd0:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c005cd4:	0015009a 	move	$r26,$r4
1c005cd8:	03bc8184 	ori	$r4,$r12,0xf20
1c005cdc:	28800085 	ld.w	$r5,$r4,0
1c005ce0:	02802817 	addi.w	$r23,$r0,10(0xa)
1c005ce4:	00150018 	move	$r24,$r0
1c005ce8:	5c00f0a0 	bne	$r5,$r0,240(0xf0) # 1c005dd8 <shell17+0x138>
1c005cec:	03400000 	andi	$r0,$r0,0x0
1c005cf0:	57bb73ff 	bl	-17552(0xfffbb70) # 1c001860 <shell17_main>
1c005cf4:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c005cf8:	00101318 	add.w	$r24,$r24,$r4
1c005cfc:	5ffff6e0 	bne	$r23,$r0,-12(0x3fff4) # 1c005cf0 <shell17+0x50>
1c005d00:	54085000 	bl	2128(0x850) # 1c006550 <get_count_my>
1c005d04:	00150097 	move	$r23,$r4
1c005d08:	54081800 	bl	2072(0x818) # 1c006520 <get_count>
1c005d0c:	00116afa 	sub.w	$r26,$r23,$r26
1c005d10:	00116499 	sub.w	$r25,$r4,$r25
1c005d14:	58008f00 	beq	$r24,$r0,140(0x8c) # 1c005da0 <shell17+0x100>
1c005d18:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005d1c:	0295a084 	addi.w	$r4,$r4,1384(0x568)
1c005d20:	54040000 	bl	1024(0x400) # 1c006120 <puts>
1c005d24:	157f5fe6 	lu12i.w	$r6,-263425(0xbfaff)
1c005d28:	02800410 	addi.w	$r16,$r0,1(0x1)
1c005d2c:	038100cf 	ori	$r15,$r6,0x40
1c005d30:	298001f0 	st.w	$r16,$r15,0
1c005d34:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c005d38:	0380c0cd 	ori	$r13,$r6,0x30
1c005d3c:	038080c7 	ori	$r7,$r6,0x20
1c005d40:	298001ae 	st.w	$r14,$r13,0
1c005d44:	298000e0 	st.w	$r0,$r7,0
1c005d48:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c005d4c:	0381402c 	ori	$r12,$r1,0x50
1c005d50:	2980019a 	st.w	$r26,$r12,0
1c005d54:	157f5f14 	lu12i.w	$r20,-263432(0xbfaf8)
1c005d58:	03804298 	ori	$r24,$r20,0x10
1c005d5c:	2980029a 	st.w	$r26,$r20,0
1c005d60:	00150325 	move	$r5,$r25
1c005d64:	29800319 	st.w	$r25,$r24,0
1c005d68:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005d6c:	0294c084 	addi.w	$r4,$r4,1328(0x530)
1c005d70:	54009000 	bl	144(0x90) # 1c005e00 <printf>
1c005d74:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005d78:	28806077 	ld.w	$r23,$r3,24(0x18)
1c005d7c:	28805078 	ld.w	$r24,$r3,20(0x14)
1c005d80:	28804079 	ld.w	$r25,$r3,16(0x10)
1c005d84:	00150345 	move	$r5,$r26
1c005d88:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c005d8c:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005d90:	0294f084 	addi.w	$r4,$r4,1340(0x53c)
1c005d94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005d98:	50006800 	b	104(0x68) # 1c005e00 <printf>
1c005d9c:	03400000 	andi	$r0,$r0,0x0
1c005da0:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005da4:	02933084 	addi.w	$r4,$r4,1228(0x4cc)
1c005da8:	54037800 	bl	888(0x378) # 1c006120 <puts>
1c005dac:	157f5fe8 	lu12i.w	$r8,-263425(0xbfaff)
1c005db0:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c005db4:	0381010b 	ori	$r11,$r8,0x40
1c005db8:	2980016a 	st.w	$r10,$r11,0
1c005dbc:	140001e9 	lu12i.w	$r9,15(0xf)
1c005dc0:	0380c111 	ori	$r17,$r8,0x30
1c005dc4:	03808112 	ori	$r18,$r8,0x20
1c005dc8:	03bffd33 	ori	$r19,$r9,0xfff
1c005dcc:	2980022a 	st.w	$r10,$r17,0
1c005dd0:	29800253 	st.w	$r19,$r18,0
1c005dd4:	53ff77ff 	b	-140(0xfffff74) # 1c005d48 <shell17+0xa8>
1c005dd8:	57ba8bff 	bl	-17784(0xfffba88) # 1c001860 <shell17_main>
1c005ddc:	00150098 	move	$r24,$r4
1c005de0:	54077000 	bl	1904(0x770) # 1c006550 <get_count_my>
1c005de4:	00150097 	move	$r23,$r4
1c005de8:	54073800 	bl	1848(0x738) # 1c006520 <get_count>
1c005dec:	00116afa 	sub.w	$r26,$r23,$r26
1c005df0:	00116499 	sub.w	$r25,$r4,$r25
1c005df4:	5fff2700 	bne	$r24,$r0,-220(0x3ff24) # 1c005d18 <shell17+0x78>
1c005df8:	53ffabff 	b	-88(0xfffffa8) # 1c005da0 <shell17+0x100>
1c005dfc:	03400000 	andi	$r0,$r0,0x0

1c005e00 <printf>:
printf():
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
int printf(const char *fmt,...)
{
1c005e00:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c005e04:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c005e08:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005e0c:	2980e077 	st.w	$r23,$r3,56(0x38)
1c005e10:	2980d078 	st.w	$r24,$r3,52(0x34)
1c005e14:	2980c079 	st.w	$r25,$r3,48(0x30)
1c005e18:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c005e1c:	2980907c 	st.w	$r28,$r3,36(0x24)
1c005e20:	29811065 	st.w	$r5,$r3,68(0x44)
1c005e24:	29812066 	st.w	$r6,$r3,72(0x48)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c005e28:	28000097 	ld.b	$r23,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c005e2c:	0281107a 	addi.w	$r26,$r3,68(0x44)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
{
1c005e30:	29813067 	st.w	$r7,$r3,76(0x4c)
1c005e34:	29814068 	st.w	$r8,$r3,80(0x50)
1c005e38:	29815069 	st.w	$r9,$r3,84(0x54)
1c005e3c:	2981606a 	st.w	$r10,$r3,88(0x58)
1c005e40:	2981706b 	st.w	$r11,$r3,92(0x5c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c005e44:	2980707a 	st.w	$r26,$r3,28(0x1c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
for(i=0;fmt[i];i++)
1c005e48:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c005ed0 <printf+0xd0>
1c005e4c:	00150099 	move	$r25,$r4
1c005e50:	00150018 	move	$r24,$r0
1c005e54:	1c000f5c 	pcaddu12i	$r28,122(0x7a)
1c005e58:	0292939c 	addi.w	$r28,$r28,1188(0x4a4)
1c005e5c:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c005e60:	50001c00 	b	28(0x1c) # 1c005e7c <printf+0x7c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c005e64:	001502e4 	move	$r4,$r23
1c005e68:	5401d800 	bl	472(0x1d8) # 1c006040 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c005e6c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c005e70:	0010632c 	add.w	$r12,$r25,$r24
1c005e74:	28000197 	ld.b	$r23,$r12,0
1c005e78:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c005ed0 <printf+0xd0>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:13
	if(c=='%')
1c005e7c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c005e80:	58001aec 	beq	$r23,$r12,24(0x18) # 1c005e98 <printf+0x98>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c005e84:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005e88:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c005e64 <printf+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79 (discriminator 1)
1c005e8c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005e90:	5401b000 	bl	432(0x1b0) # 1c006040 <putchar>
1c005e94:	53ffd3ff 	b	-48(0xfffffd0) # 1c005e64 <printf+0x64>
1c005e98:	0010632c 	add.w	$r12,$r25,$r24
1c005e9c:	2800058d 	ld.b	$r13,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:15
		w=1;
1c005ea0:	02800405 	addi.w	$r5,$r0,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c005ea4:	02814c10 	addi.w	$r16,$r0,83(0x53)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c005ea8:	0280280f 	addi.w	$r15,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c005eac:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c005eb0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c005eb4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c005eb8:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c006030 <printf+0x230>
1c005ebc:	0040898c 	slli.w	$r12,$r12,0x2
1c005ec0:	0010338c 	add.w	$r12,$r28,$r12
1c005ec4:	2880018c 	ld.w	$r12,$r12,0
1c005ec8:	4c000180 	jirl	$r0,$r12,0
1c005ecc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:84
	}
}
	return 0;
}
1c005ed0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005ed4:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c005ed8:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c005edc:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c005ee0:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c005ee4:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c005ee8:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c005eec:	00150004 	move	$r4,$r0
1c005ef0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c005ef4:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:65
				i++;
1c005ef8:	0010632c 	add.w	$r12,$r25,$r24
1c005efc:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c005f00:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c005f04:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c005f08:	2980306c 	st.w	$r12,$r3,12(0xc)
1c005f0c:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c005f10:	00150005 	move	$r5,$r0
1c005f14:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c005eac <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c005f18:	001c3ca5 	mul.w	$r5,$r5,$r15
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c005f1c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c005f20:	0010632c 	add.w	$r12,$r25,$r24
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c005f24:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c005f28:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c005f2c:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c005f30:	2980306c 	st.w	$r12,$r3,12(0xc)
1c005f34:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c005f38:	001015c5 	add.w	$r5,$r14,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c005f3c:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c005f18 <printf+0x118>
1c005f40:	53ff6fff 	b	-148(0xfffff6c) # 1c005eac <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c005f44:	28800344 	ld.w	$r4,$r26,0
1c005f48:	00150007 	move	$r7,$r0
1c005f4c:	02800806 	addi.w	$r6,$r0,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:51
				arg++;
1c005f50:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:52
				i++;
1c005f54:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c005f58:	5401f800 	bl	504(0x1f8) # 1c006150 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:53
				break;
1c005f5c:	53ff13ff 	b	-240(0xfffff10) # 1c005e6c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c005f60:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:27
				i++;
1c005f64:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:26
				arg++;
1c005f68:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c005f6c:	5400d400 	bl	212(0xd4) # 1c006040 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:28
				break;
1c005f70:	53feffff 	b	-260(0xffffefc) # 1c005e6c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c005f74:	28800344 	ld.w	$r4,$r26,0
1c005f78:	02800407 	addi.w	$r7,$r0,1(0x1)
1c005f7c:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:36
				arg++;
1c005f80:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:37
				i++;
1c005f84:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c005f88:	5401c800 	bl	456(0x1c8) # 1c006150 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:38
				break;
1c005f8c:	53fee3ff 	b	-288(0xffffee0) # 1c005e6c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c005f90:	28800344 	ld.w	$r4,$r26,0
1c005f94:	00150007 	move	$r7,$r0
1c005f98:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:41
                arg++;
1c005f9c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:42
                i=i+2;
1c005fa0:	02800b18 	addi.w	$r24,$r24,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c005fa4:	5401ac00 	bl	428(0x1ac) # 1c006150 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:43
                break;
1c005fa8:	53fec7ff 	b	-316(0xffffec4) # 1c005e6c <printf+0x6c>
1c005fac:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c005fb0:	28800344 	ld.w	$r4,$r26,0
1c005fb4:	00150007 	move	$r7,$r0
1c005fb8:	02802006 	addi.w	$r6,$r0,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:46
				arg++;
1c005fbc:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:47
				i++;
1c005fc0:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c005fc4:	54018c00 	bl	396(0x18c) # 1c006150 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:48
				break;
1c005fc8:	53fea7ff 	b	-348(0xffffea4) # 1c005e6c <printf+0x6c>
1c005fcc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c005fd0:	28800344 	ld.w	$r4,$r26,0
1c005fd4:	00150007 	move	$r7,$r0
1c005fd8:	02804006 	addi.w	$r6,$r0,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:57
				arg++;
1c005fdc:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:58
				i++;
1c005fe0:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c005fe4:	54016c00 	bl	364(0x16c) # 1c006150 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:59
				break;
1c005fe8:	53fe87ff 	b	-380(0xffffe84) # 1c005e6c <printf+0x6c>
1c005fec:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c005ff0:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:22
				i++;
1c005ff4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:21
				arg++;
1c005ff8:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c005ffc:	5400a400 	bl	164(0xa4) # 1c0060a0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:23
				break;
1c006000:	53fe6fff 	b	-404(0xffffe6c) # 1c005e6c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c006004:	28800344 	ld.w	$r4,$r26,0
1c006008:	00150007 	move	$r7,$r0
1c00600c:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:31
				arg++;
1c006010:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:32
				i++;
1c006014:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c006018:	54013800 	bl	312(0x138) # 1c006150 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:33
				break;
1c00601c:	53fe53ff 	b	-432(0xffffe50) # 1c005e6c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c006020:	02809404 	addi.w	$r4,$r0,37(0x25)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:62
				i++;
1c006024:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c006028:	54001800 	bl	24(0x18) # 1c006040 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:63
				break;
1c00602c:	53fe43ff 	b	-448(0xffffe40) # 1c005e6c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:73
				putchar('%');
1c006030:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006034:	54000c00 	bl	12(0xc) # 1c006040 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:74
				break;
1c006038:	53fe37ff 	b	-460(0xffffe34) # 1c005e6c <printf+0x6c>
1c00603c:	03400000 	andi	$r0,$r0,0x0

1c006040 <putchar>:
putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:2
int putchar(int c)
{
1c006040:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006044:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c006048:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00604c:	03bc4339 	ori	$r25,$r25,0xf10
1c006050:	29000324 	st.b	$r4,$r25,0
1c006054:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:5
}
1c006058:	00150004 	move	$r4,$r0
1c00605c:	28803079 	ld.w	$r25,$r3,12(0xc)
1c006060:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006064:	4c000020 	jirl	$r0,$r1,0
1c006068:	03400000 	andi	$r0,$r0,0x0
1c00606c:	03400000 	andi	$r0,$r0,0x0

1c006070 <tgt_putchar>:
tgt_putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:8
{   //UART_ADDR
1c006070:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006074:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
    asm(
1c006078:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00607c:	03bc4339 	ori	$r25,$r25,0xf10
1c006080:	29000324 	st.b	$r4,$r25,0
1c006084:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c006088:	28803079 	ld.w	$r25,$r3,12(0xc)
1c00608c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006090:	4c000020 	jirl	$r0,$r1,0
1c006094:	03400000 	andi	$r0,$r0,0x0
1c006098:	03400000 	andi	$r0,$r0,0x0
1c00609c:	03400000 	andi	$r0,$r0,0x0

1c0060a0 <putstring>:
putstring():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:2
int putstring(char *s)
{
1c0060a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0060a8:	29802077 	st.w	$r23,$r3,8(0x8)
1c0060ac:	29801078 	st.w	$r24,$r3,4(0x4)
1c0060b0:	29800079 	st.w	$r25,$r3,0
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
char c;
while((c=*s))
1c0060b4:	28000097 	ld.b	$r23,$r4,0
1c0060b8:	580042e0 	beq	$r23,$r0,64(0x40) # 1c0060f8 <putstring+0x58>
1c0060bc:	00150098 	move	$r24,$r4
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c0060c0:	02802819 	addi.w	$r25,$r0,10(0xa)
1c0060c4:	50001400 	b	20(0x14) # 1c0060d8 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7
 putchar(c);
1c0060c8:	001502e4 	move	$r4,$r23
1c0060cc:	57ff77ff 	bl	-140(0xfffff74) # 1c006040 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
while((c=*s))
1c0060d0:	28000317 	ld.b	$r23,$r24,0
1c0060d4:	580026e0 	beq	$r23,$r0,36(0x24) # 1c0060f8 <putstring+0x58>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:8
 s++;
1c0060d8:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c0060dc:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c0060c8 <putstring+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6 (discriminator 1)
1c0060e0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0060e4:	57ff5fff 	bl	-164(0xfffff5c) # 1c006040 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c0060e8:	001502e4 	move	$r4,$r23
1c0060ec:	57ff57ff 	bl	-172(0xfffff54) # 1c006040 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c0060f0:	28000317 	ld.b	$r23,$r24,0
1c0060f4:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c0060d8 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:11
}
return 0;
}
1c0060f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060fc:	28802077 	ld.w	$r23,$r3,8(0x8)
1c006100:	28801078 	ld.w	$r24,$r3,4(0x4)
1c006104:	28800079 	ld.w	$r25,$r3,0
1c006108:	00150004 	move	$r4,$r0
1c00610c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006110:	4c000020 	jirl	$r0,$r1,0
1c006114:	03400000 	andi	$r0,$r0,0x0
1c006118:	03400000 	andi	$r0,$r0,0x0
1c00611c:	03400000 	andi	$r0,$r0,0x0

1c006120 <puts>:
puts():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:15


int puts(char *s)
{
1c006120:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006124:	29803061 	st.w	$r1,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:16
putstring(s);
1c006128:	57ff7bff 	bl	-136(0xfffff78) # 1c0060a0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:17
putchar('\r');
1c00612c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c006130:	57ff13ff 	bl	-240(0xfffff10) # 1c006040 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:18
putchar('\n');
1c006134:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006138:	57ff0bff 	bl	-248(0xfffff08) # 1c006040 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:20
return 0;
}
1c00613c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006140:	00150004 	move	$r4,$r0
1c006144:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006148:	4c000020 	jirl	$r0,$r1,0
1c00614c:	03400000 	andi	$r0,$r0,0x0

1c006150 <printbase>:
printbase():
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c006150:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c006154:	29816077 	st.w	$r23,$r3,88(0x58)
1c006158:	29817061 	st.w	$r1,$r3,92(0x5c)
1c00615c:	29815078 	st.w	$r24,$r3,84(0x54)
1c006160:	29814079 	st.w	$r25,$r3,80(0x50)
1c006164:	00150097 	move	$r23,$r4
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c006168:	580008e0 	beq	$r7,$r0,8(0x8) # 1c006170 <printbase+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7 (discriminator 1)
1c00616c:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c006210 <printbase+0xc0>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c006170:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c006230 <printbase+0xe0>
1c006174:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c006178:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00617c:	001131ce 	sub.w	$r14,$r14,$r12
1c006180:	50000800 	b	8(0x8) # 1c006188 <printbase+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c006184:	001501b7 	move	$r23,$r13
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c006188:	00219aed 	mod.wu	$r13,$r23,$r6
1c00618c:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c006194 <printbase+0x44>
1c006190:	002a0007 	break	0x7
1c006194:	2900018d 	st.b	$r13,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c006198:	001031d8 	add.w	$r24,$r14,$r12
1c00619c:	00211aed 	div.wu	$r13,$r23,$r6
1c0061a0:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c0061a8 <printbase+0x58>
1c0061a4:	002a0007 	break	0x7
1c0061a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c0061ac:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c006184 <printbase+0x34>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c0061b0:	600058b8 	blt	$r5,$r24,88(0x58) # 1c006208 <printbase+0xb8>
1c0061b4:	001500b7 	move	$r23,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c0061b8:	02802419 	addi.w	$r25,$r0,9(0x9)
1c0061bc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c0061c0:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c0061c4:	00105d8c 	add.w	$r12,$r12,$r23
1c0061c8:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c0061cc:	60001717 	blt	$r24,$r23,20(0x14) # 1c0061e0 <printbase+0x90>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24 (discriminator 1)
1c0061d0:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c0061d4:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c0061d8:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c0061e0 <printbase+0x90>
1c0061dc:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c0061e0:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 4)
1c0061e4:	57fe5fff 	bl	-420(0xffffe5c) # 1c006040 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c0061e8:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c0061c0 <printbase+0x70>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:28
	}
	return 0;
}
1c0061ec:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c0061f0:	28816077 	ld.w	$r23,$r3,88(0x58)
1c0061f4:	28815078 	ld.w	$r24,$r3,84(0x54)
1c0061f8:	28814079 	ld.w	$r25,$r3,80(0x50)
1c0061fc:	00150004 	move	$r4,$r0
1c006200:	02818063 	addi.w	$r3,$r3,96(0x60)
1c006204:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c006208:	00150305 	move	$r5,$r24
1c00620c:	53ffabff 	b	-88(0xfffffa8) # 1c0061b4 <printbase+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c006210:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c006214:	29803066 	st.w	$r6,$r3,12(0xc)
1c006218:	29802065 	st.w	$r5,$r3,8(0x8)
1c00621c:	57fe27ff 	bl	-476(0xffffe24) # 1c006040 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:9
	value = -v;
1c006220:	00115c17 	sub.w	$r23,$r0,$r23
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c006224:	28802065 	ld.w	$r5,$r3,8(0x8)
1c006228:	28803066 	ld.w	$r6,$r3,12(0xc)
1c00622c:	53ff4bff 	b	-184(0xfffff48) # 1c006174 <printbase+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c006230:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c0061ec <printbase+0x9c>
1c006234:	00150018 	move	$r24,$r0
1c006238:	53ff7fff 	b	-132(0xfffff7c) # 1c0061b4 <printbase+0x64>
1c00623c:	03400000 	andi	$r0,$r0,0x0

1c006240 <strlen>:
strlen():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:14
 * The strlen() function returns the length of string @s.
 * */
size_t
strlen(const char *s) {
    size_t cnt = 0;
    while (*s ++ != '\0') {
1c006240:	2800008c 	ld.b	$r12,$r4,0
1c006244:	58002580 	beq	$r12,$r0,36(0x24) # 1c006268 <strlen+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:13
    size_t cnt = 0;
1c006248:	0015000c 	move	$r12,$r0
1c00624c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:15
        cnt ++;
1c006250:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:14
    while (*s ++ != '\0') {
1c006254:	0010308d 	add.w	$r13,$r4,$r12
1c006258:	280001ad 	ld.b	$r13,$r13,0
1c00625c:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c006250 <strlen+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:18
    }
    return cnt;
}
1c006260:	00150184 	move	$r4,$r12
1c006264:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:13
    size_t cnt = 0;
1c006268:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:18
}
1c00626c:	00150184 	move	$r4,$r12
1c006270:	4c000020 	jirl	$r0,$r1,0
1c006274:	03400000 	andi	$r0,$r0,0x0
1c006278:	03400000 	andi	$r0,$r0,0x0
1c00627c:	03400000 	andi	$r0,$r0,0x0

1c006280 <strnlen>:
strnlen():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:35
 * @len if there is no '\0' character among the first @len characters
 * pointed by @s.
 * */
size_t
strnlen(const char *s, size_t len) {
    size_t cnt = 0;
1c006280:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c006284:	580028a0 	beq	$r5,$r0,40(0x28) # 1c0062ac <strnlen+0x2c>
1c006288:	2800008d 	ld.b	$r13,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:35
    size_t cnt = 0;
1c00628c:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c006290:	5c0011a0 	bne	$r13,$r0,16(0x10) # 1c0062a0 <strnlen+0x20>
1c006294:	50001800 	b	24(0x18) # 1c0062ac <strnlen+0x2c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36 (discriminator 1)
1c006298:	280001ad 	ld.b	$r13,$r13,0
1c00629c:	580011a0 	beq	$r13,$r0,16(0x10) # 1c0062ac <strnlen+0x2c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:37
        cnt ++;
1c0062a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c0062a4:	0010308d 	add.w	$r13,$r4,$r12
1c0062a8:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c006298 <strnlen+0x18>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:40
    }
    return cnt;
}
1c0062ac:	00150184 	move	$r4,$r12
1c0062b0:	4c000020 	jirl	$r0,$r1,0
1c0062b4:	03400000 	andi	$r0,$r0,0x0
1c0062b8:	03400000 	andi	$r0,$r0,0x0
1c0062bc:	03400000 	andi	$r0,$r0,0x0

1c0062c0 <strcpy>:
strcpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:59
char *
strcpy(char *dst, const char *src) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __strcpy(dst, src);
#else
    char *p = dst;
1c0062c0:	0015008c 	move	$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:60 (discriminator 1)
    while ((*p ++ = *src ++) != '\0')
1c0062c4:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0062c8:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c0062cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0062d0:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c0062d4:	5ffff1a0 	bne	$r13,$r0,-16(0x3fff0) # 1c0062c4 <strcpy+0x4>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:64
        /* nothing */;
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0062d8:	4c000020 	jirl	$r0,$r1,0
1c0062dc:	03400000 	andi	$r0,$r0,0x0

1c0062e0 <strncpy>:
strncpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:79
 * The return value is @dst
 * */
char *
strncpy(char *dst, const char *src, size_t len) {
    char *p = dst;
    while (len > 0) {
1c0062e0:	580028c0 	beq	$r6,$r0,40(0x28) # 1c006308 <strncpy+0x28>
1c0062e4:	00101886 	add.w	$r6,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:78
    char *p = dst;
1c0062e8:	0015008d 	move	$r13,$r4
1c0062ec:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:80
        if ((*p = *src) != '\0') {
1c0062f0:	280000ac 	ld.b	$r12,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:83
            src ++;
        }
        p ++, len --;
1c0062f4:	028005ad 	addi.w	$r13,$r13,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:80
        if ((*p = *src) != '\0') {
1c0062f8:	293ffdac 	st.b	$r12,$r13,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:81
            src ++;
1c0062fc:	0012b00c 	sltu	$r12,$r0,$r12
1c006300:	001030a5 	add.w	$r5,$r5,$r12
/home/132/git_rep/perf/soft/perf_func/lib/string.c:79
    while (len > 0) {
1c006304:	5fffeda6 	bne	$r13,$r6,-20(0x3ffec) # 1c0062f0 <strncpy+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:86
    }
    return dst;
}
1c006308:	4c000020 	jirl	$r0,$r1,0
1c00630c:	03400000 	andi	$r0,$r0,0x0

1c006310 <strncmp>:
strncmp():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101
 * the characters differ, until a terminating null-character is reached, or
 * until @n characters match in both strings, whichever happens first.
 * */
int
strncmp(const char *s1, const char *s2, size_t n) {
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c006310:	580040c0 	beq	$r6,$r0,64(0x40) # 1c006350 <strncmp+0x40>
1c006314:	2800008d 	ld.b	$r13,$r4,0
1c006318:	280000ae 	ld.b	$r14,$r5,0
1c00631c:	580041a0 	beq	$r13,$r0,64(0x40) # 1c00635c <strncmp+0x4c>
1c006320:	5c003dae 	bne	$r13,$r14,60(0x3c) # 1c00635c <strncmp+0x4c>
1c006324:	001018a6 	add.w	$r6,$r5,$r6
1c006328:	50001c00 	b	28(0x1c) # 1c006344 <strncmp+0x34>
1c00632c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101 (discriminator 1)
1c006330:	2800008d 	ld.b	$r13,$r4,0
1c006334:	580025a0 	beq	$r13,$r0,36(0x24) # 1c006358 <strncmp+0x48>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101 (discriminator 2)
1c006338:	2800018e 	ld.b	$r14,$r12,0
1c00633c:	00150185 	move	$r5,$r12
1c006340:	5c001dae 	bne	$r13,$r14,28(0x1c) # 1c00635c <strncmp+0x4c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:102
        n --, s1 ++, s2 ++;
1c006344:	028004ac 	addi.w	$r12,$r5,1(0x1)
1c006348:	02800484 	addi.w	$r4,$r4,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c00634c:	5fffe586 	bne	$r12,$r6,-28(0x3ffe4) # 1c006330 <strncmp+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    }
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c006350:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c006354:	4c000020 	jirl	$r0,$r1,0
1c006358:	280004ae 	ld.b	$r14,$r5,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:100
strncmp(const char *s1, const char *s2, size_t n) {
1c00635c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c006360:	2980306d 	st.w	$r13,$r3,12(0xc)
1c006364:	2a00306d 	ld.bu	$r13,$r3,12(0xc)
1c006368:	2980306e 	st.w	$r14,$r3,12(0xc)
1c00636c:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c006370:	02804063 	addi.w	$r3,$r3,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c006374:	001111a4 	sub.w	$r4,$r13,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c006378:	4c000020 	jirl	$r0,$r1,0
1c00637c:	03400000 	andi	$r0,$r0,0x0

1c006380 <strchr>:
strchr():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
 * The strchr() function returns a pointer to the first occurrence of
 * character in @s. If the value is not found, the function returns 'NULL'.
 * */
char *
strchr(const char *s, char c) {
    while (*s != '\0') {
1c006380:	2800008d 	ld.b	$r13,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:116
strchr(const char *s, char c) {
1c006384:	0015008c 	move	$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
    while (*s != '\0') {
1c006388:	58001da0 	beq	$r13,$r0,28(0x1c) # 1c0063a4 <strchr+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:118
        if (*s == c) {
1c00638c:	5c000da5 	bne	$r13,$r5,12(0xc) # 1c006398 <strchr+0x18>
1c006390:	50002800 	b	40(0x28) # 1c0063b8 <strchr+0x38>
1c006394:	58001da5 	beq	$r13,$r5,28(0x1c) # 1c0063b0 <strchr+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:121
            return (char *)s;
        }
        s ++;
1c006398:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
    while (*s != '\0') {
1c00639c:	2800018d 	ld.b	$r13,$r12,0
1c0063a0:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c006394 <strchr+0x14>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:123
    }
    return NULL;
1c0063a4:	00150004 	move	$r4,$r0
1c0063a8:	4c000020 	jirl	$r0,$r1,0
1c0063ac:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:121
        s ++;
1c0063b0:	00150184 	move	$r4,$r12
/home/132/git_rep/perf/soft/perf_func/lib/string.c:124
}
1c0063b4:	4c000020 	jirl	$r0,$r1,0
1c0063b8:	4c000020 	jirl	$r0,$r1,0
1c0063bc:	03400000 	andi	$r0,$r0,0x0

1c0063c0 <strfind>:
strfind():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:137
 * not found in @s, then it returns a pointer to the null byte at the
 * end of @s, rather than 'NULL'.
 * */
char *
strfind(const char *s, char c) {
    while (*s != '\0') {
1c0063c0:	2800008c 	ld.b	$r12,$r4,0
1c0063c4:	58001d80 	beq	$r12,$r0,28(0x1c) # 1c0063e0 <strfind+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:138
        if (*s == c) {
1c0063c8:	5c000cac 	bne	$r5,$r12,12(0xc) # 1c0063d4 <strfind+0x14>
1c0063cc:	50001800 	b	24(0x18) # 1c0063e4 <strfind+0x24>
1c0063d0:	58001185 	beq	$r12,$r5,16(0x10) # 1c0063e0 <strfind+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:141
            break;
        }
        s ++;
1c0063d4:	02800484 	addi.w	$r4,$r4,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:137
    while (*s != '\0') {
1c0063d8:	2800008c 	ld.b	$r12,$r4,0
1c0063dc:	5ffff580 	bne	$r12,$r0,-12(0x3fff4) # 1c0063d0 <strfind+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:144
    }
    return (char *)s;
}
1c0063e0:	4c000020 	jirl	$r0,$r1,0
1c0063e4:	4c000020 	jirl	$r0,$r1,0
1c0063e8:	03400000 	andi	$r0,$r0,0x0
1c0063ec:	03400000 	andi	$r0,$r0,0x0

1c0063f0 <memset>:
memset():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
memset(void *s, char c, size_t n) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memset(s, c, n);
#else
    char *p = s;
    while (n -- > 0) {
1c0063f0:	58001cc0 	beq	$r6,$r0,28(0x1c) # 1c00640c <memset+0x1c>
1c0063f4:	00101886 	add.w	$r6,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:250
    char *p = s;
1c0063f8:	0015008c 	move	$r12,$r4
1c0063fc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:252
        *p ++ = c;
1c006400:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006404:	293ffd85 	st.b	$r5,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c006408:	5ffff986 	bne	$r12,$r6,-8(0x3fff8) # 1c006400 <memset+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:256
    }
    return s;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c00640c:	4c000020 	jirl	$r0,$r1,0

1c006410 <memcpy>:
memcpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:279
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memcpy(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    while (n -- > 0) {
1c006410:	580024c0 	beq	$r6,$r0,36(0x24) # 1c006434 <memcpy+0x24>
1c006414:	001018a6 	add.w	$r6,$r5,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:278
    char *d = dst;
1c006418:	0015008c 	move	$r12,$r4
1c00641c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:280
        *d ++ = *s ++;
1c006420:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c006424:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c006428:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00642c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:279
    while (n -- > 0) {
1c006430:	5ffff0a6 	bne	$r5,$r6,-16(0x3fff0) # 1c006420 <memcpy+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:284
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c006434:	4c000020 	jirl	$r0,$r1,0
1c006438:	03400000 	andi	$r0,$r0,0x0
1c00643c:	03400000 	andi	$r0,$r0,0x0

1c006440 <memmove>:
memmove():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:302
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memmove(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    if (s < d && s + n > d) {
1c006440:	6c0030a4 	bgeu	$r5,$r4,48(0x30) # 1c006470 <memmove+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:302 (discriminator 1)
1c006444:	001018ac 	add.w	$r12,$r5,$r6
1c006448:	6c00288c 	bgeu	$r4,$r12,40(0x28) # 1c006470 <memmove+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:303
        s += n, d += n;
1c00644c:	0010188d 	add.w	$r13,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:304
        while (n -- > 0) {
1c006450:	580044c0 	beq	$r6,$r0,68(0x44) # 1c006494 <memmove+0x54>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:305
            *-- d = *-- s;
1c006454:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006458:	2800018e 	ld.b	$r14,$r12,0
1c00645c:	02bffdad 	addi.w	$r13,$r13,-1(0xfff)
1c006460:	290001ae 	st.b	$r14,$r13,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:304
        while (n -- > 0) {
1c006464:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c006454 <memmove+0x14>
1c006468:	4c000020 	jirl	$r0,$r1,0
1c00646c:	03400000 	andi	$r0,$r0,0x0
1c006470:	001018ae 	add.w	$r14,$r5,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:308
        }
    } else {
        while (n -- > 0) {
1c006474:	0015008c 	move	$r12,$r4
1c006478:	580020c0 	beq	$r6,$r0,32(0x20) # 1c006498 <memmove+0x58>
1c00647c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:309
            *d ++ = *s ++;
1c006480:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c006484:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c006488:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00648c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:308
        while (n -- > 0) {
1c006490:	5ffff0ae 	bne	$r5,$r14,-16(0x3fff0) # 1c006480 <memmove+0x40>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:314
        }
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c006494:	4c000020 	jirl	$r0,$r1,0
1c006498:	4c000020 	jirl	$r0,$r1,0
1c00649c:	03400000 	andi	$r0,$r0,0x0

1c0064a0 <memcmp>:
memcmp():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:334
 * */
int
memcmp(const void *v1, const void *v2, size_t n) {
    const char *s1 = (const char *)v1;
    const char *s2 = (const char *)v2;
    while (n -- > 0) {
1c0064a0:	580030c0 	beq	$r6,$r0,48(0x30) # 1c0064d0 <memcmp+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:335
        if (*s1 != *s2) {
1c0064a4:	2800008c 	ld.b	$r12,$r4,0
1c0064a8:	280000ad 	ld.b	$r13,$r5,0
1c0064ac:	00101886 	add.w	$r6,$r4,$r6
1c0064b0:	580015ac 	beq	$r13,$r12,20(0x14) # 1c0064c4 <memcmp+0x24>
1c0064b4:	50002400 	b	36(0x24) # 1c0064d8 <memcmp+0x38>
1c0064b8:	2800008c 	ld.b	$r12,$r4,0
1c0064bc:	280000ad 	ld.b	$r13,$r5,0
1c0064c0:	5c00198d 	bne	$r12,$r13,24(0x18) # 1c0064d8 <memcmp+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:338
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
        }
        s1 ++, s2 ++;
1c0064c4:	02800484 	addi.w	$r4,$r4,1(0x1)
1c0064c8:	028004a5 	addi.w	$r5,$r5,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:334
    while (n -- > 0) {
1c0064cc:	5fffec86 	bne	$r4,$r6,-20(0x3ffec) # 1c0064b8 <memcmp+0x18>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:340
    }
    return 0;
1c0064d0:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c0064d4:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:331
memcmp(const void *v1, const void *v2, size_t n) {
1c0064d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0064dc:	2980306c 	st.w	$r12,$r3,12(0xc)
1c0064e0:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c0064e4:	2980306d 	st.w	$r13,$r3,12(0xc)
1c0064e8:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c0064ec:	02804063 	addi.w	$r3,$r3,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0064f0:	00111184 	sub.w	$r4,$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c0064f4:	4c000020 	jirl	$r0,$r1,0
1c0064f8:	03400000 	andi	$r0,$r0,0x0
1c0064fc:	03400000 	andi	$r0,$r0,0x0

1c006500 <bzero>:
memset():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c006500:	580014a0 	beq	$r5,$r0,20(0x14) # 1c006514 <bzero+0x14>
1c006504:	00101485 	add.w	$r5,$r4,$r5
/home/132/git_rep/perf/soft/perf_func/lib/string.c:252
        *p ++ = c;
1c006508:	02800484 	addi.w	$r4,$r4,1(0x1)
1c00650c:	293ffc80 	st.b	$r0,$r4,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c006510:	5ffff885 	bne	$r4,$r5,-8(0x3fff8) # 1c006508 <bzero+0x8>
bzero():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:345

void bzero(void *s, size_t n){
	memset(s, 0, n);
}
1c006514:	4c000020 	jirl	$r0,$r1,0
1c006518:	03400000 	andi	$r0,$r0,0x0
1c00651c:	03400000 	andi	$r0,$r0,0x0

1c006520 <get_count>:
get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c006520:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006524:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c006528:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00652c:	28800324 	ld.w	$r4,$r25,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
    return  _get_count();
}
1c006530:	28803079 	ld.w	$r25,$r3,12(0xc)
1c006534:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006538:	4c000020 	jirl	$r0,$r1,0
1c00653c:	03400000 	andi	$r0,$r0,0x0

1c006540 <_get_count>:
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
1c006540:	53ffe3ff 	b	-32(0xfffffe0) # 1c006520 <get_count>
1c006544:	03400000 	andi	$r0,$r0,0x0
1c006548:	03400000 	andi	$r0,$r0,0x0
1c00654c:	03400000 	andi	$r0,$r0,0x0

1c006550 <get_count_my>:
get_count_my():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c006550:	00006004 	rdtimel.w	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c006554:	4c000020 	jirl	$r0,$r1,0
1c006558:	03400000 	andi	$r0,$r0,0x0
1c00655c:	03400000 	andi	$r0,$r0,0x0

1c006560 <clock_gettime>:
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c006560:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006564:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c006568:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00656c:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c006570:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c006574:	001c35ed 	mul.w	$r13,$r15,$r13
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c006578:	02819011 	addi.w	$r17,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00657c:	1400030e 	lu12i.w	$r14,24(0x18)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c006580:	002145f0 	div.wu	$r16,$r15,$r17
1c006584:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c00658c <clock_gettime+0x2c>
1c006588:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00658c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c006590:	039a81ce 	ori	$r14,$r14,0x6a0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c006594:	0021b211 	mod.wu	$r17,$r16,$r12
1c006598:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0065a0 <clock_gettime+0x40>
1c00659c:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0065a0:	002139f0 	div.wu	$r16,$r15,$r14
1c0065a4:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c0065ac <clock_gettime+0x4c>
1c0065a8:	002a0007 	break	0x7
1c0065ac:	0021b20e 	mod.wu	$r14,$r16,$r12
1c0065b0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0065b8 <clock_gettime+0x58>
1c0065b4:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c0065b8:	298000a0 	st.w	$r0,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0065bc:	298030ae 	st.w	$r14,$r5,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0065c0:	298020b1 	st.w	$r17,$r5,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c0065c4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0065c8:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c0065cc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0065d0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0065d8 <clock_gettime+0x78>
1c0065d4:	002a0007 	break	0x7
1c0065d8:	298010ae 	st.w	$r14,$r5,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
}
1c0065dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0065e0:	4c000020 	jirl	$r0,$r1,0
1c0065e4:	03400000 	andi	$r0,$r0,0x0
1c0065e8:	03400000 	andi	$r0,$r0,0x0
1c0065ec:	03400000 	andi	$r0,$r0,0x0

1c0065f0 <get_clock>:
get_clock():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
1c0065f0:	53ff33ff 	b	-208(0xfffff30) # 1c006520 <get_count>
1c0065f4:	03400000 	andi	$r0,$r0,0x0
1c0065f8:	03400000 	andi	$r0,$r0,0x0
1c0065fc:	03400000 	andi	$r0,$r0,0x0

1c006600 <get_ns>:
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c006600:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006604:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c006608:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00660c:	28800324 	ld.w	$r4,$r25,0
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c006610:	0280280c 	addi.w	$r12,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:57
    return n;
}
1c006614:	28803079 	ld.w	$r25,$r3,12(0xc)
1c006618:	001c3084 	mul.w	$r4,$r4,$r12
1c00661c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006620:	4c000020 	jirl	$r0,$r1,0
1c006624:	03400000 	andi	$r0,$r0,0x0
1c006628:	03400000 	andi	$r0,$r0,0x0
1c00662c:	03400000 	andi	$r0,$r0,0x0

1c006630 <get_us>:
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:61


unsigned long get_us(void)
{
1c006630:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006634:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c006638:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00663c:	28800324 	ld.w	$r4,$r25,0
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c006640:	0281900c 	addi.w	$r12,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:66
    return n;
}
1c006644:	28803079 	ld.w	$r25,$r3,12(0xc)
1c006648:	0021308d 	div.wu	$r13,$r4,$r12
1c00664c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006654 <get_us+0x24>
1c006650:	002a0007 	break	0x7
1c006654:	001501a4 	move	$r4,$r13
1c006658:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00665c:	4c000020 	jirl	$r0,$r1,0

1c006660 <rand>:
rand():
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:4
static unsigned long next = 0xDEEDBEEF;

int rand(void) {
    next = next * 1103515245 + 12345;
1c006660:	1c000f4f 	pcaddu12i	$r15,122(0x7a)
1c006664:	02b7a1ef 	addi.w	$r15,$r15,-536(0xde8)
1c006668:	288001ec 	ld.w	$r12,$r15,0
1c00666c:	14838c8e 	lu12i.w	$r14,269412(0x41c64)
1c006670:	03b9b5ce 	ori	$r14,$r14,0xe6d
1c006674:	001c398c 	mul.w	$r12,$r12,$r14
1c006678:	1400006d 	lu12i.w	$r13,3(0x3)
1c00667c:	0380e5ad 	ori	$r13,$r13,0x39
1c006680:	0010358c 	add.w	$r12,$r12,$r13
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:5
    return (unsigned int)(next/65536) % 32768;
1c006684:	00408584 	slli.w	$r4,$r12,0x1
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:4
    next = next * 1103515245 + 12345;
1c006688:	298001ec 	st.w	$r12,$r15,0
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:6
}
1c00668c:	0044c484 	srli.w	$r4,$r4,0x11
1c006690:	4c000020 	jirl	$r0,$r1,0
1c006694:	03400000 	andi	$r0,$r0,0x0
1c006698:	03400000 	andi	$r0,$r0,0x0
1c00669c:	03400000 	andi	$r0,$r0,0x0

1c0066a0 <srand>:
srand():
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:8
void srand(unsigned int seed) {
    next = seed;
1c0066a0:	1c000f4c 	pcaddu12i	$r12,122(0x7a)
1c0066a4:	02b6a18c 	addi.w	$r12,$r12,-600(0xda8)
1c0066a8:	29800184 	st.w	$r4,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:9
}
1c0066ac:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <rodata_end-0x448>:
1c080000:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c080004:	20732520 	ll.w	$r0,$r9,29476(0x7324)
1c080008:	6c696166 	bgeu	$r11,$r6,26976(0x6960) # 1c086968 <_end+0x4d70>
1c08000c:	28206465 	ld.b	$r5,$r3,-2023(0x819)
1c080010:	20746f67 	ll.w	$r7,$r27,29804(0x746c)
1c080014:	202c7525 	ll.w	$r5,$r9,11380(0x2c74)
1c080018:	65707865 	bge	$r3,$r5,94328(0x17078) # 1c097090 <_end+0x15498>
1c08001c:	64657463 	bge	$r3,$r3,25972(0x6574) # 1c086590 <_end+0x4998>
1c080020:	29752520 	st.h	$r0,$r9,-695(0xd49)
1c080024:	0000000a 	0x0000000a
1c080028:	2c732522 	vst	$vr2,$r9,-823(0xcc9)
1c08002c:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c080030:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c096d98 <_end+0x151a0>
1c080034:	20202273 	ll.w	$r19,$r19,8224(0x2020)
1c080038:	73206425 	0x73206425
1c08003c:	000a6365 	0x000a6365
1c080040:	746e6975 	0x746e6975
1c080044:	20745f38 	ll.w	$r24,$r25,29788(0x745c)
1c080048:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c076fb4 <_data_lma+0x70904>
1c08004c:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c080050:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096cb0 <_end+0x150b8>
1c080054:	6d732031 	bgeu	$r1,$r17,95008(0x17320) # 1c097374 <_end+0x1577c>
1c080058:	206c6c61 	ll.w	$r1,$r3,27756(0x6c6c)
1c08005c:	6c706e69 	bgeu	$r19,$r9,28780(0x706c) # 1c0870c8 <_end+0x54d0>
1c080060:	00656361 	bstrins.w	$r1,$r27,0x5,0x18
1c080064:	746e6975 	0x746e6975
1c080068:	20745f38 	ll.w	$r24,$r25,29788(0x745c)
1c08006c:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c076fd8 <_data_lma+0x70928>
1c080070:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c080074:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096cd4 <_end+0x150dc>
1c080078:	6d732031 	bgeu	$r1,$r17,95008(0x17320) # 1c097398 <_end+0x157a0>
1c08007c:	006c6c61 	bstrins.w	$r1,$r3,0xc,0x1b
1c080080:	746e6975 	0x746e6975
1c080084:	20745f38 	ll.w	$r24,$r25,29788(0x745c)
1c080088:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c076ff4 <_data_lma+0x70944>
1c08008c:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c080090:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096cf0 <_end+0x150f8>
1c080094:	616c2031 	blt	$r1,$r17,93216(0x16c20) # 1c096cb4 <_end+0x150bc>
1c080098:	20656772 	ll.w	$r18,$r27,25956(0x6564)
1c08009c:	6c706e69 	bgeu	$r19,$r9,28780(0x706c) # 1c087108 <_end+0x5510>
1c0800a0:	00656361 	bstrins.w	$r1,$r27,0x5,0x18
1c0800a4:	746e6975 	0x746e6975
1c0800a8:	20745f38 	ll.w	$r24,$r25,29788(0x745c)
1c0800ac:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c077018 <_data_lma+0x70968>
1c0800b0:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c0800b4:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096d14 <_end+0x1511c>
1c0800b8:	616c2031 	blt	$r1,$r17,93216(0x16c20) # 1c096cd8 <_end+0x150e0>
1c0800bc:	00656772 	bstrins.w	$r18,$r27,0x5,0x19
1c0800c0:	38746e69 	fldgt.s	$f9,$r19,$r27
1c0800c4:	6c20745f 	bgeu	$r2,$r31,8308(0x2074) # 1c082138 <_end+0x540>
1c0800c8:	756b6f6f 	0x756b6f6f
1c0800cc:	61742070 	blt	$r3,$r16,95264(0x17420) # 1c0974ec <_end+0x158f4>
1c0800d0:	31656c62 	0x31656c62
1c0800d4:	616d7320 	blt	$r25,$r0,93552(0x16d70) # 1c096e44 <_end+0x1524c>
1c0800d8:	69206c6c 	bltu	$r3,$r12,73836(0x1206c) # 1c092144 <_end+0x1054c>
1c0800dc:	616c706e 	blt	$r3,$r14,93296(0x16c70) # 1c096d4c <_end+0x15154>
1c0800e0:	00006563 	rdtimeh.w	$r3,$r11
1c0800e4:	38746e69 	fldgt.s	$f9,$r19,$r27
1c0800e8:	6c20745f 	bgeu	$r2,$r31,8308(0x2074) # 1c08215c <_end+0x564>
1c0800ec:	756b6f6f 	0x756b6f6f
1c0800f0:	61742070 	blt	$r3,$r16,95264(0x17420) # 1c097510 <_end+0x15918>
1c0800f4:	31656c62 	0x31656c62
1c0800f8:	616d7320 	blt	$r25,$r0,93552(0x16d70) # 1c096e68 <_end+0x15270>
1c0800fc:	00006c6c 	cpucfg	$r12,$r3
1c080100:	38746e69 	fldgt.s	$f9,$r19,$r27
1c080104:	6c20745f 	bgeu	$r2,$r31,8308(0x2074) # 1c082178 <_end+0x580>
1c080108:	756b6f6f 	0x756b6f6f
1c08010c:	61742070 	blt	$r3,$r16,95264(0x17420) # 1c09752c <_end+0x15934>
1c080110:	31656c62 	0x31656c62
1c080114:	72616c20 	0x72616c20
1c080118:	69206567 	bltu	$r11,$r7,73828(0x12064) # 1c09217c <_end+0x10584>
1c08011c:	616c706e 	blt	$r3,$r14,93296(0x16c70) # 1c096d8c <_end+0x15194>
1c080120:	00006563 	rdtimeh.w	$r3,$r11
1c080124:	38746e69 	fldgt.s	$f9,$r19,$r27
1c080128:	6c20745f 	bgeu	$r2,$r31,8308(0x2074) # 1c08219c <_end+0x5a4>
1c08012c:	756b6f6f 	0x756b6f6f
1c080130:	61742070 	blt	$r3,$r16,95264(0x17420) # 1c097550 <_end+0x15958>
1c080134:	31656c62 	0x31656c62
1c080138:	72616c20 	0x72616c20
1c08013c:	00006567 	rdtimeh.w	$r7,$r11
1c080140:	746e6975 	0x746e6975
1c080144:	745f3631 	0x745f3631
1c080148:	6f6f6c20 	bgeu	$r1,$r0,-37012(0x36f6c) # 1c0770b4 <_data_lma+0x70a04>
1c08014c:	2070756b 	ll.w	$r11,$r11,28788(0x7074)
1c080150:	6c626174 	bgeu	$r11,$r20,25184(0x6260) # 1c0863b0 <_end+0x47b8>
1c080154:	73203165 	0x73203165
1c080158:	6c6c616d 	bgeu	$r11,$r13,27744(0x6c60) # 1c086db8 <_end+0x51c0>
1c08015c:	706e6920 	0x706e6920
1c080160:	6563616c 	bge	$r11,$r12,90976(0x16360) # 1c0964c0 <_end+0x148c8>
1c080164:	00000000 	0x00000000
1c080168:	746e6975 	0x746e6975
1c08016c:	745f3631 	0x745f3631
1c080170:	6f6f6c20 	bgeu	$r1,$r0,-37012(0x36f6c) # 1c0770dc <_data_lma+0x70a2c>
1c080174:	2070756b 	ll.w	$r11,$r11,28788(0x7074)
1c080178:	6c626174 	bgeu	$r11,$r20,25184(0x6260) # 1c0863d8 <_end+0x47e0>
1c08017c:	73203165 	0x73203165
1c080180:	6c6c616d 	bgeu	$r11,$r13,27744(0x6c60) # 1c086de0 <_end+0x51e8>
1c080184:	00000000 	0x00000000
1c080188:	746e6975 	0x746e6975
1c08018c:	745f3631 	0x745f3631
1c080190:	6f6f6c20 	bgeu	$r1,$r0,-37012(0x36f6c) # 1c0770fc <_data_lma+0x70a4c>
1c080194:	2070756b 	ll.w	$r11,$r11,28788(0x7074)
1c080198:	6c626174 	bgeu	$r11,$r20,25184(0x6260) # 1c0863f8 <_end+0x4800>
1c08019c:	6c203165 	bgeu	$r11,$r5,8240(0x2030) # 1c0821cc <_end+0x5d4>
1c0801a0:	65677261 	bge	$r19,$r1,92016(0x16770) # 1c096910 <_end+0x14d18>
1c0801a4:	706e6920 	0x706e6920
1c0801a8:	6563616c 	bge	$r11,$r12,90976(0x16360) # 1c096508 <_end+0x14910>
1c0801ac:	00000000 	0x00000000
1c0801b0:	746e6975 	0x746e6975
1c0801b4:	745f3631 	0x745f3631
1c0801b8:	6f6f6c20 	bgeu	$r1,$r0,-37012(0x36f6c) # 1c077124 <_data_lma+0x70a74>
1c0801bc:	2070756b 	ll.w	$r11,$r11,28788(0x7074)
1c0801c0:	6c626174 	bgeu	$r11,$r20,25184(0x6260) # 1c086420 <_end+0x4828>
1c0801c4:	6c203165 	bgeu	$r11,$r5,8240(0x2030) # 1c0821f4 <_end+0x5fc>
1c0801c8:	65677261 	bge	$r19,$r1,92016(0x16770) # 1c096938 <_end+0x14d40>
1c0801cc:	00000000 	0x00000000
1c0801d0:	31746e69 	0x31746e69
1c0801d4:	20745f36 	ll.w	$r22,$r25,29788(0x745c)
1c0801d8:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c077144 <_data_lma+0x70a94>
1c0801dc:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c0801e0:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096e40 <_end+0x15248>
1c0801e4:	6d732031 	bgeu	$r1,$r17,95008(0x17320) # 1c097504 <_end+0x1590c>
1c0801e8:	206c6c61 	ll.w	$r1,$r3,27756(0x6c6c)
1c0801ec:	6c706e69 	bgeu	$r19,$r9,28780(0x706c) # 1c087258 <_end+0x5660>
1c0801f0:	00656361 	bstrins.w	$r1,$r27,0x5,0x18
1c0801f4:	31746e69 	0x31746e69
1c0801f8:	20745f36 	ll.w	$r22,$r25,29788(0x745c)
1c0801fc:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c077168 <_data_lma+0x70ab8>
1c080200:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c080204:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096e64 <_end+0x1526c>
1c080208:	6d732031 	bgeu	$r1,$r17,95008(0x17320) # 1c097528 <_end+0x15930>
1c08020c:	006c6c61 	bstrins.w	$r1,$r3,0xc,0x1b
1c080210:	31746e69 	0x31746e69
1c080214:	20745f36 	ll.w	$r22,$r25,29788(0x745c)
1c080218:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c077184 <_data_lma+0x70ad4>
1c08021c:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c080220:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096e80 <_end+0x15288>
1c080224:	616c2031 	blt	$r1,$r17,93216(0x16c20) # 1c096e44 <_end+0x1524c>
1c080228:	20656772 	ll.w	$r18,$r27,25956(0x6564)
1c08022c:	6c706e69 	bgeu	$r19,$r9,28780(0x706c) # 1c087298 <_end+0x56a0>
1c080230:	00656361 	bstrins.w	$r1,$r27,0x5,0x18
1c080234:	31746e69 	0x31746e69
1c080238:	20745f36 	ll.w	$r22,$r25,29788(0x745c)
1c08023c:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c0771a8 <_data_lma+0x70af8>
1c080240:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c080244:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096ea4 <_end+0x152ac>
1c080248:	616c2031 	blt	$r1,$r17,93216(0x16c20) # 1c096e68 <_end+0x15270>
1c08024c:	00656772 	bstrins.w	$r18,$r27,0x5,0x19
1c080250:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c0771bc <_data_lma+0x70b0c>
1c080254:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c080258:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096eb8 <_end+0x152c0>
1c08025c:	73657420 	vssrani.wu.d	$vr0,$vr1,0x1d
1c080260:	65622074 	bge	$r3,$r20,90656(0x16220) # 1c096480 <_end+0x14888>
1c080264:	2e6e6967 	0x2e6e6967
1c080268:	00000000 	0x00000000
1c08026c:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c0771d8 <_data_lma+0x70b28>
1c080270:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c080274:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096ed4 <_end+0x152dc>
1c080278:	53415020 	b	8601936(0x834150) # 1c8b43c8 <_stack+0x7b43cc>
1c08027c:	00002153 	clo.d	$r19,$r10
1c080280:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c0771ec <_data_lma+0x70b3c>
1c080284:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c080288:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096ee8 <_end+0x152f0>
1c08028c:	52524520 	b	75649604(0x4825244) # 208a54d0 <_stack+0x47a54d4>
1c080290:	2121454f 	sc.w	$r15,$r10,8516(0x2144)
1c080294:	00000021 	0x00000021
1c080298:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c077204 <_data_lma+0x70b54>
1c08029c:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c0802a0:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096f00 <_end+0x15308>
1c0802a4:	6f54203a 	bgeu	$r1,$r26,-44000(0x35420) # 1c0756c4 <_data_lma+0x6f014>
1c0802a8:	206c6174 	ll.w	$r20,$r11,27744(0x6c60)
1c0802ac:	6e756f43 	bgeu	$r26,$r3,-101012(0x2756c) # 1c067818 <_data_lma+0x61168>
1c0802b0:	6f532874 	bgeu	$r3,$r20,-44248(0x35328) # 1c0755d8 <_data_lma+0x6ef28>
1c0802b4:	6f632043 	bgeu	$r2,$r3,-40160(0x36320) # 1c0765d4 <_data_lma+0x6ff24>
1c0802b8:	29746e75 	st.h	$r21,$r19,-741(0xd1b)
1c0802bc:	30203d20 	vldrepl.w	$vr0,$r9,60(0x3c)
1c0802c0:	0a782578 	0x0a782578
1c0802c4:	00000000 	0x00000000
1c0802c8:	6b6f6f6c 	bltu	$r27,$r12,-37012(0x36f6c) # 1c077234 <_data_lma+0x70b84>
1c0802cc:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c0802d0:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 1c096f30 <_end+0x15338>
1c0802d4:	6f54203a 	bgeu	$r1,$r26,-44000(0x35420) # 1c0756f4 <_data_lma+0x6f044>
1c0802d8:	206c6174 	ll.w	$r20,$r11,27744(0x6c60)
1c0802dc:	6e756f43 	bgeu	$r26,$r3,-101012(0x2756c) # 1c067848 <_data_lma+0x61198>
1c0802e0:	50432874 	b	30425896(0x1d04328) # 1dd84608 <_stack+0x1c8460c>
1c0802e4:	6f632055 	bgeu	$r2,$r21,-40160(0x36320) # 1c076604 <_data_lma+0x6ff54>
1c0802e8:	29746e75 	st.h	$r21,$r19,-741(0xd1b)
1c0802ec:	30203d20 	vldrepl.w	$vr0,$r9,60(0x3c)
1c0802f0:	0a782578 	0x0a782578
1c0802f4:	00000000 	0x00000000
1c0802f8:	1c006020 	pcaddu12i	$r0,769(0x301)
1c0802fc:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080300:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080304:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080308:	1c006030 	pcaddu12i	$r16,769(0x301)
1c08030c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080310:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080314:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080318:	1c006030 	pcaddu12i	$r16,769(0x301)
1c08031c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080320:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080324:	1c005ef8 	pcaddu12i	$r24,759(0x2f7)
1c080328:	1c005f04 	pcaddu12i	$r4,760(0x2f8)
1c08032c:	1c005f04 	pcaddu12i	$r4,760(0x2f8)
1c080330:	1c005f04 	pcaddu12i	$r4,760(0x2f8)
1c080334:	1c005f04 	pcaddu12i	$r4,760(0x2f8)
1c080338:	1c005f04 	pcaddu12i	$r4,760(0x2f8)
1c08033c:	1c005f04 	pcaddu12i	$r4,760(0x2f8)
1c080340:	1c005f04 	pcaddu12i	$r4,760(0x2f8)
1c080344:	1c005f04 	pcaddu12i	$r4,760(0x2f8)
1c080348:	1c005f04 	pcaddu12i	$r4,760(0x2f8)
1c08034c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080350:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080354:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080358:	1c006030 	pcaddu12i	$r16,769(0x301)
1c08035c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080360:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080364:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080368:	1c006030 	pcaddu12i	$r16,769(0x301)
1c08036c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080370:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080374:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080378:	1c006030 	pcaddu12i	$r16,769(0x301)
1c08037c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080380:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080384:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080388:	1c006030 	pcaddu12i	$r16,769(0x301)
1c08038c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080390:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080394:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080398:	1c006030 	pcaddu12i	$r16,769(0x301)
1c08039c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803a0:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803a4:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803a8:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803ac:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803b0:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803b4:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803b8:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803bc:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803c0:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803c4:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803c8:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803cc:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803d0:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803d4:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803d8:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803dc:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803e0:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803e4:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803e8:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803ec:	1c005f44 	pcaddu12i	$r4,762(0x2fa)
1c0803f0:	1c005f60 	pcaddu12i	$r0,763(0x2fb)
1c0803f4:	1c005f74 	pcaddu12i	$r20,763(0x2fb)
1c0803f8:	1c006030 	pcaddu12i	$r16,769(0x301)
1c0803fc:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080400:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080404:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080408:	1c006030 	pcaddu12i	$r16,769(0x301)
1c08040c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080410:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080414:	1c005f90 	pcaddu12i	$r16,764(0x2fc)
1c080418:	1c006030 	pcaddu12i	$r16,769(0x301)
1c08041c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080420:	1c005fb0 	pcaddu12i	$r16,765(0x2fd)
1c080424:	1c005fd0 	pcaddu12i	$r16,766(0x2fe)
1c080428:	1c006030 	pcaddu12i	$r16,769(0x301)
1c08042c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080430:	1c005ff0 	pcaddu12i	$r16,767(0x2ff)
1c080434:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080438:	1c006004 	pcaddu12i	$r4,768(0x300)
1c08043c:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080440:	1c006030 	pcaddu12i	$r16,769(0x301)
1c080444:	1c005fd0 	pcaddu12i	$r16,766(0x2fe)

1c080448 <rodata_end>:
rodata_end():
1c080448:	deedbeef 	0xdeedbeef
1c08044c:	00000000 	0x00000000

1c080450 <lookup_table_init_value>:
1c080450:	00000003 	0x00000003

1c080454 <lookup_table_iter>:
1c080454:	00000001 	0x00000001

1c080458 <base_iterations>:
1c080458:	00000001 	0x00000001
1c08045c:	00000000 	0x00000000

Disassembly of section .got:

1c080460 <_GLOBAL_OFFSET_TABLE_>:
1c080460:	00000000 	0x00000000
1c080464:	1c08047c 	pcaddu12i	$r28,16419(0x4023)
1c080468:	1c080864 	pcaddu12i	$r4,16451(0x4043)
1c08046c:	1c081034 	pcaddu12i	$r20,16513(0x4081)
1c080470:	1c081038 	pcaddu12i	$r24,16513(0x4081)
1c080474:	1c08103c 	pcaddu12i	$r28,16513(0x4081)
1c080478:	1c081424 	pcaddu12i	$r4,16545(0x40a1)

Disassembly of section .bss:

1c08047c <resultData8>:
	...

1c080864 <resultData16>:
	...

1c081034 <end_time>:
__bss_start():
1c081034:	00000000 	0x00000000

1c081038 <start_time>:
1c081038:	00000000 	0x00000000

1c08103c <inputData8>:
	...

1c081424 <inputData16>:
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
  18:	005e0000 	0x005e0000
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e60400 	bstrpick.d	$r0,$r0,0x26,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	005e0000 	0x005e0000
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
  c4:	005eac01 	0x005eac01
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
 108:	005f5c0c 	0x005f5c0c
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	005f700e 	0x005f700e
 124:	0002531c 	0x0002531c
 128:	5f8c0c00 	bne	$r0,$r0,-29684(0x38c0c) # ffff8d34 <_stack+0xe3ef8d38>
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	5fa80c00 	bne	$r0,$r0,-22516(0x3a80c) # ffffa94c <_stack+0xe3efa950>
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	5fc80c00 	bne	$r0,$r0,-14324(0x3c80c) # ffffc964 <_stack+0xe3efc968>
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	e80c0030 	0xe80c0030
 174:	471c005f 	bnez	$r2,-58368(0x7f1c00) # ffff1d74 <_stack+0xe3ef1d78>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	000e0030 	bytepick.d	$r16,$r1,$r0,0x4
 18c:	5f1c0060 	bne	$r3,$r0,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c00601c 	pcaddu12i	$r28,768(0x300)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c00602c 	pcaddu12i	$r12,769(0x301)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c006038 	pcaddu12i	$r24,769(0x301)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00f10b00 	bstrpick.d	$r0,$r24,0x31,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c005e8c 	pcaddu12i	$r12,756(0x2f4)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000f10b 	0x0000f10b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	940f0006 	0x940f0006
 208:	531c005e 	b	24845312(0x17b1c00) # 17b1e08 <__stack_size+0x17a1e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	6c0f0000 	bgeu	$r0,$r0,3840(0xf00) # 1114 <__stack_size-0xeeec>
 218:	531c005e 	b	24845312(0x17b1c00) # 17b1e18 <__stack_size+0x17a1e18>
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
 284:	00604000 	bstrins.w	$r0,$r0,0x0,0x10
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
 2c8:	60400000 	blt	$r0,$r0,16384(0x4000) # 42c8 <__stack_size-0xbd38>
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
 300:	00604000 	bstrins.w	$r0,$r0,0x0,0x10
 304:	0030021c 	0x0030021c
 308:	03010000 	lu52i.d	$r0,$r0,64(0x40)
 30c:	00400b01 	0x00400b01
 310:	03ba0000 	ori	$r0,$r0,0xe80
 314:	03b80000 	ori	$r0,$r0,0xe00
 318:	00000000 	0x00000000
 31c:	0000330c 	revb.2h	$r12,$r24
 320:	00607000 	bstrins.w	$r0,$r0,0x0,0x1c
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
 34c:	0060a000 	bstrpick.w	$r0,$r0,0x0,0x8
 350:	0000ac1c 	0x0000ac1c
 354:	00020900 	0x00020900
 358:	07040200 	0x07040200
 35c:	0000000b 	0x0000000b
 360:	06070402 	cacop	0x2,$r0,449(0x1c1)
 364:	03000000 	lu52i.d	$r0,$r0,0
 368:	0000010a 	0x0000010a
 36c:	a9050e01 	0xa9050e01
 370:	20000000 	ll.w	$r0,$r0,0
 374:	2c1c0061 	vld	$vr1,$r3,1792(0x700)
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
 3a4:	612c0700 	blt	$r24,$r0,76804(0x12c04) # 12fa8 <__stack_size+0x2fa8>
 3a8:	00bd1c00 	bstrins.d	$r0,$r0,0x3d,0x7
 3ac:	00860000 	bstrins.d	$r0,$r0,0x6,0x0
 3b0:	01080000 	0x01080000
 3b4:	01f30354 	0x01f30354
 3b8:	34070054 	0x34070054
 3bc:	671c0061 	bge	$r3,$r1,-58368(0x31c00) # ffff1fbc <_stack+0xe3ef1fc0>
 3c0:	99000001 	0x99000001
 3c4:	08000000 	0x08000000
 3c8:	3d015401 	0x3d015401
 3cc:	613c0900 	blt	$r8,$r0,80904(0x13c08) # 13fd4 <__stack_size+0x3fd4>
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
 3fc:	0060a000 	bstrpick.w	$r0,$r0,0x0,0x8
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
 444:	e00e0006 	0xe00e0006
 448:	081c0060 	fmadd.s	$f0,$f3,$f0,$f24
 44c:	41000000 	beqz	$r0,65536(0x10000) # 1044c <__stack_size+0x44c>
 450:	05000001 	0x05000001
 454:	000000f1 	0x000000f1
 458:	a9100601 	0xa9100601
 45c:	31000000 	0x31000000
 460:	06000001 	cacop	0x1,$r0,0
 464:	60e80900 	blt	$r8,$r0,59400(0xe808) # ec6c <__stack_size-0x1394>
 468:	01671c00 	0x01671c00
 46c:	01080000 	0x01080000
 470:	003d0154 	0x003d0154
 474:	60d00700 	blt	$r24,$r0,53252(0xd004) # d478 <__stack_size-0x2b88>
 478:	01671c00 	0x01671c00
 47c:	01550000 	0x01550000
 480:	01080000 	0x01080000
 484:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
 488:	60f00900 	blt	$r8,$r0,61448(0xf008) # f490 <__stack_size-0xb70>
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
 4c0:	00615000 	bstrins.w	$r0,$r0,0x1,0x14
 4c4:	0000ec1c 	0x0000ec1c
 4c8:	0002a100 	0x0002a100
 4cc:	07040200 	0x07040200
 4d0:	0000000b 	0x0000000b
 4d4:	06070402 	cacop	0x2,$r0,449(0x1c1)
 4d8:	03000000 	lu52i.d	$r0,$r0,0
 4dc:	0000009f 	0x0000009f
 4e0:	49050101 	bcnez	$fcc0,328960(0x50500) # 509e0 <__stack_size+0x409e0>
 4e4:	50000001 	b	262144(0x40000) # 404e4 <__stack_size+0x304e4>
 4e8:	ec1c0061 	0xec1c0061
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
 59c:	1c006210 	pcaddu12i	$r16,784(0x310)
 5a0:	00000020 	0x00000020
 5a4:	00000123 	0x00000123
 5a8:	0000f10a 	0x0000f10a
 5ac:	020a0100 	slti	$r0,$r8,640(0x280)
 5b0:	00000149 	0x00000149
 5b4:	00000112 	0x00000112
 5b8:	200c000b 	ll.w	$r11,$r0,3072(0xc00)
 5bc:	6e1c0062 	bgeu	$r3,$r2,-123904(0x21c00) # fffe21bc <_stack+0xe3ee21c0>
 5c0:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 5c4:	08025401 	0x08025401
 5c8:	0e00002d 	0x0e00002d
 5cc:	1c0061b8 	pcaddu12i	$r24,781(0x30d)
 5d0:	00000030 	0x00000030
 5d4:	0000f10a 	0x0000f10a
 5d8:	020a0100 	slti	$r0,$r8,640(0x280)
 5dc:	00000149 	0x00000149
 5e0:	0000013e 	0x0000013e
 5e4:	e80f000b 	0xe80f000b
 5e8:	6e1c0061 	bgeu	$r3,$r1,-123904(0x21c00) # fffe21e8 <_stack+0xe3ee21ec>
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
 66c:	00650006 	bstrins.w	$r6,$r0,0x5,0x0
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
 6a4:	65000000 	bge	$r0,$r0,65536(0x10000) # 106a4 <__stack_size+0x6a4>
 6a8:	00021c00 	0x00021c00
 6ac:	141c0065 	lu12i.w	$r5,57347(0xe003)
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
 6d8:	1c006500 	pcaddu12i	$r0,808(0x328)
 6dc:	00000014 	0x00000014
 6e0:	0002930b 	0x0002930b
 6e4:	00077d00 	alsl.wu	$r0,$r8,$r31,0x3
 6e8:	00077b00 	alsl.wu	$r0,$r24,$r30,0x3
 6ec:	00000000 	0x00000000
 6f0:	00014c0c 	0x00014c0c
 6f4:	014b0100 	0x014b0100
 6f8:	00014c01 	0x00014c01
 6fc:	0064a000 	bstrpick.w	$r0,$r0,0x4,0x8
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
 79c:	1c006440 	pcaddu12i	$r0,802(0x322)
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
 818:	10000000 	addu16i.d	$r0,$r0,0
 81c:	281c0064 	ld.b	$r4,$r3,1792(0x700)
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
 8cc:	0063c000 	bstrpick.w	$r0,$r0,0x3,0x10
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
 904:	63800000 	blt	$r0,$r0,-32768(0x38000) # ffff8904 <_stack+0xe3ef8908>
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
 93c:	10000001 	addu16i.d	$r1,$r0,0
 940:	6c1c0063 	bgeu	$r3,$r3,7168(0x1c00) # 2540 <__stack_size-0xdac0>
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
 990:	62e00000 	blt	$r0,$r0,-73728(0x2e000) # fffee990 <_stack+0xe3eee994>
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
 9f4:	0062c000 	bstrpick.w	$r0,$r0,0x2,0x10
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
 a44:	1c006280 	pcaddu12i	$r0,788(0x314)
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
 a90:	40000000 	beqz	$r0,0 # a90 <__stack_size-0xf570>
 a94:	341c0062 	0x341c0062
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
 acc:	0063f000 	bstrpick.w	$r0,$r0,0x3,0x1c
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
 b18:	65200000 	bge	$r0,$r0,73728(0x12000) # 12b18 <__stack_size+0x2b18>
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
 b94:	00663000 	bstrins.w	$r0,$r0,0x6,0xc
 b98:	0000301c 	revb.2h	$r28,$r0
 b9c:	da9c0100 	0xda9c0100
 ba0:	08000000 	0x08000000
 ba4:	3e01006e 	0x3e01006e
 ba8:	00002c13 	ctz.d	$r19,$r0
 bac:	000db400 	bytepick.d	$r0,$r0,$r13,0x3
 bb0:	000dac00 	bytepick.d	$r0,$r0,$r11,0x3
 bb4:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 bb8:	66300000 	bge	$r0,$r0,-118784(0x23000) # fffe3bb8 <_stack+0xe3ee3bbc>
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
 be4:	00000000 	0x00000000
 be8:	241c0066 	ldptr.w	$r6,$r3,7168(0x1c00)
 bec:	01000000 	0x01000000
 bf0:	00012c9c 	0x00012c9c
 bf4:	006e0800 	bstrins.w	$r0,$r0,0xe,0x2
 bf8:	2c133501 	vld	$vr1,$r8,1229(0x4cd)
 bfc:	11000000 	addu16i.d	$r0,$r0,16384(0x4000)
 c00:	0900000e 	0x0900000e
 c04:	0900000e 	0x0900000e
 c08:	0000022e 	0x0000022e
 c0c:	1c006600 	pcaddu12i	$r0,816(0x330)
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
 c54:	1c006560 	pcaddu12i	$r0,811(0x32b)
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
 c98:	60000002 	blt	$r0,$r2,0 # c98 <__stack_size-0xf368>
 c9c:	031c0065 	lu52i.d	$r5,$r3,1792(0x700)
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
 ccc:	65500000 	bge	$r0,$r0,86016(0x15000) # 15ccc <__stack_size+0x5ccc>
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
 cf8:	20000000 	ll.w	$r0,$r0,0
 cfc:	1c1c0065 	pcaddu12i	$r5,57347(0xe003)
 d00:	01000000 	0x01000000
 d04:	00022e9c 	0x00022e9c
 d08:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 d0c:	65200000 	bge	$r0,$r0,73728(0x12000) # 12d0c <__stack_size+0x2d0c>
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
 d48:	00840000 	bstrins.d	$r0,$r0,0x4,0x0
 d4c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 d50:	000006d8 	0x000006d8
 d54:	00180104 	sra.w	$r4,$r8,$r0
 d58:	160c0000 	lu32i.d	$r0,24576(0x6000)
 d5c:	bc000002 	0xbc000002
 d60:	60000000 	blt	$r0,$r0,0 # d60 <__stack_size-0xf2a0>
 d64:	501c0066 	b	26745856(0x1981c00) # 1982964 <__stack_size+0x1972964>
 d68:	bc000000 	0xbc000000
 d6c:	02000007 	slti	$r7,$r0,0
 d70:	000b0704 	0x000b0704
 d74:	04020000 	csrrd	$r0,0x80
 d78:	00000607 	0x00000607
 d7c:	02230300 	slti	$r0,$r24,-1856(0x8c0)
 d80:	01010000 	fadd.d	$f0,$f0,$f0
 d84:	00002c16 	ctz.d	$r22,$r0
 d88:	48030500 	bcnez	$fcc0,772(0x304) # 108c <__stack_size-0xef74>
 d8c:	041c0804 	csrrd	$r4,0x702
 d90:	0000021d 	0x0000021d
 d94:	a0060701 	0xa0060701
 d98:	101c0066 	addu16i.d	$r6,$r3,1792(0x700)
 d9c:	01000000 	0x01000000
 da0:	00006a9c 	rdtime.d	$r28,$r20
 da4:	02280500 	slti	$r0,$r8,-1535(0xa01)
 da8:	07010000 	0x07010000
 dac:	00002519 	clz.d	$r25,$r8
 db0:	00540100 	0x00540100
 db4:	00021e06 	0x00021e06
 db8:	05030100 	0x05030100
 dbc:	00000080 	0x00000080
 dc0:	1c006660 	pcaddu12i	$r0,819(0x333)
 dc4:	00000034 	0x00000034
 dc8:	04079c01 	csrrd	$r1,0x1e7
 dcc:	746e6905 	0x746e6905
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
 6d8:	25011101 	stptr.w	$r1,$r8,272(0x110)
 6dc:	030b130e 	lu52i.d	$r14,$r24,708(0x2c4)
 6e0:	110e1b0e 	addu16i.d	$r14,$r24,17286(0x4386)
 6e4:	10061201 	addu16i.d	$r1,$r16,388(0x184)
 6e8:	02000017 	slti	$r23,$r0,0
 6ec:	0b0b0024 	0x0b0b0024
 6f0:	0e030b3e 	0x0e030b3e
 6f4:	34030000 	0x34030000
 6f8:	3a0e0300 	0x3a0e0300
 6fc:	390b3b0b 	0x390b3b0b
 700:	0213490b 	slti	$r11,$r8,1234(0x4d2)
 704:	04000018 	csrrd	$r24,0x0
 708:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 70c:	0b3a0e03 	0x0b3a0e03
 710:	0b390b3b 	0x0b390b3b
 714:	01111927 	fscaleb.d	$f7,$f9,$f6
 718:	18400612 	pcaddi	$r18,131120(0x20030)
 71c:	01194297 	0x01194297
 720:	05000013 	0x05000013
 724:	0e030005 	0x0e030005
 728:	0b3b0b3a 	0x0b3b0b3a
 72c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 730:	00001802 	cto.w	$r2,$r0
 734:	3f002e06 	0x3f002e06
 738:	3a0e0319 	0x3a0e0319
 73c:	390b3b0b 	0x390b3b0b
 740:	4919270b 	0x4919270b
 744:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
 748:	97184006 	0x97184006
 74c:	00001942 	cto.w	$r2,$r10
 750:	0b002407 	0x0b002407
 754:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
 758:	00000008 	0x00000008

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
 6d8:	65000000 	bge	$r0,$r0,65536(0x10000) # 106d8 <__stack_size+0x6d8>
 6dc:	65081c00 	bge	$r0,$r0,67612(0x1081c) # 10ef8 <__stack_size+0xef8>
 6e0:	00011c00 	asrtle.d	$r0,$r7
 6e4:	00650854 	bstrins.w	$r20,$r2,0x5,0x2
 6e8:	0065181c 	bstrins.w	$r28,$r0,0x5,0x6
 6ec:	f300041c 	0xf300041c
 6f0:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
 700:	081c0065 	fmadd.s	$f5,$f3,$f0,$f24
 704:	011c0065 	0x011c0065
 708:	65085500 	bge	$r8,$r0,67668(0x10854) # 10f5c <__stack_size+0xf5c>
 70c:	65181c00 	bge	$r0,$r0,71708(0x1181c) # 11f28 <__stack_size+0x1f28>
 710:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 714:	9f5501f3 	0x9f5501f3
	...
 720:	00050502 	alsl.w	$r2,$r8,$r1,0x3
 724:	65000000 	bge	$r0,$r0,65536(0x10000) # 10724 <__stack_size+0x724>
 728:	65001c00 	bge	$r0,$r0,65564(0x1001c) # 10744 <__stack_size+0x744>
 72c:	00011c00 	asrtle.d	$r0,$r7
 730:	00650055 	bstrins.w	$r21,$r2,0x5,0x0
 734:	0065081c 	bstrins.w	$r28,$r0,0x5,0x2
 738:	7500031c 	0x7500031c
 73c:	65089f7f 	bge	$r27,$r31,67740(0x1089c) # 10fd8 <__stack_size+0xfd8>
 740:	65141c00 	bge	$r0,$r0,70684(0x1141c) # 11b5c <__stack_size+0x1b5c>
 744:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 748:	315501f3 	vstelm.h	$vr19,$r15,128(0x80),0x5
 74c:	00009f1c 	0x00009f1c
 750:	00000000 	0x00000000
 754:	00020000 	0x00020000
 758:	65000000 	bge	$r0,$r0,65536(0x10000) # 10758 <__stack_size+0x758>
 75c:	65081c00 	bge	$r0,$r0,67612(0x1081c) # 10f78 <__stack_size+0xf78>
 760:	00011c00 	asrtle.d	$r0,$r7
 764:	00650854 	bstrins.w	$r20,$r2,0x5,0x2
 768:	0065181c 	bstrins.w	$r28,$r0,0x5,0x6
 76c:	f300041c 	0xf300041c
 770:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
 774:	00000000 	0x00000000
 778:	04000000 	csrrd	$r0,0x0
 77c:	00650000 	bstrins.w	$r0,$r0,0x5,0x0
 780:	0065181c 	bstrins.w	$r28,$r0,0x5,0x6
 784:	5400011c 	bl	74448896(0x4700000) # 4700784 <__stack_size+0x46f0784>
	...
 794:	1c0064a0 	pcaddu12i	$r0,805(0x325)
 798:	1c0064b8 	pcaddu12i	$r24,805(0x325)
 79c:	b8540001 	0xb8540001
 7a0:	f81c0064 	0xf81c0064
 7a4:	041c0064 	csrxchg	$r4,$r3,0x700
 7a8:	5401f300 	bl	-67108368(0xc0001f0) # fc000998 <_stack+0xdff0099c>
 7ac:	0000009f 	0x0000009f
	...
 7b8:	0064a000 	bstrpick.w	$r0,$r0,0x4,0x8
 7bc:	0064b81c 	bstrpick.w	$r28,$r0,0x4,0xe
 7c0:	5500011c 	bl	74514432(0x4710000) # 47107c0 <__stack_size+0x47007c0>
 7c4:	1c0064b8 	pcaddu12i	$r24,805(0x325)
 7c8:	1c0064f8 	pcaddu12i	$r24,807(0x327)
 7cc:	01f30004 	0x01f30004
 7d0:	00009f55 	0x00009f55
 7d4:	00000000 	0x00000000
 7d8:	04000000 	csrrd	$r0,0x0
 7dc:	00000004 	0x00000004
 7e0:	64a00001 	bge	$r0,$r1,40960(0xa000) # a7e0 <__stack_size-0x5820>
 7e4:	64a01c00 	bge	$r0,$r0,40988(0xa01c) # a800 <__stack_size-0x5800>
 7e8:	00011c00 	asrtle.d	$r0,$r7
 7ec:	0064a056 	bstrpick.w	$r22,$r2,0x4,0x8
 7f0:	0064b01c 	bstrpick.w	$r28,$r0,0x4,0xc
 7f4:	7600031c 	0x7600031c
 7f8:	64b09f7f 	bge	$r27,$r31,45212(0xb09c) # b894 <__stack_size-0x476c>
 7fc:	64c41c00 	bge	$r0,$r0,50204(0xc41c) # cc18 <__stack_size-0x33e8>
 800:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 804:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 808:	64c49f1c 	bge	$r24,$r28,50332(0xc49c) # cca4 <__stack_size-0x335c>
 80c:	64d01c00 	bge	$r0,$r0,53276(0xd01c) # d828 <__stack_size-0x27d8>
 810:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 814:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 818:	00009f1c 	0x00009f1c
 81c:	00000000 	0x00000000
 820:	00020000 	0x00020000
 824:	64a00000 	bge	$r0,$r0,40960(0xa000) # a824 <__stack_size-0x57dc>
 828:	64d41c00 	bge	$r0,$r0,54300(0xd41c) # dc44 <__stack_size-0x23bc>
 82c:	00011c00 	asrtle.d	$r0,$r7
 830:	0064d854 	bstrpick.w	$r20,$r2,0x4,0x16
 834:	0064ec1c 	bstrpick.w	$r28,$r0,0x4,0x1b
 838:	5400011c 	bl	74448896(0x4700000) # 4700838 <__stack_size+0x46f0838>
	...
 844:	64a00003 	bge	$r0,$r3,40960(0xa000) # a844 <__stack_size-0x57bc>
 848:	64f81c00 	bge	$r0,$r0,63516(0xf81c) # 10064 <__stack_size+0x64>
 84c:	00011c00 	asrtle.d	$r0,$r7
 850:	00000055 	0x00000055
	...
 85c:	40000000 	beqz	$r0,0 # 85c <__stack_size-0xf7a4>
 860:	7c1c0064 	0x7c1c0064
 864:	011c0064 	0x011c0064
 868:	647c5500 	bge	$r8,$r0,31828(0x7c54) # 84bc <__stack_size-0x7b44>
 86c:	64981c00 	bge	$r0,$r0,38940(0x981c) # a088 <__stack_size-0x5f78>
 870:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 874:	9f5501f3 	0x9f5501f3
 878:	1c006498 	pcaddu12i	$r24,804(0x324)
 87c:	1c00649c 	pcaddu12i	$r28,804(0x324)
 880:	00550001 	0x00550001
	...
 88c:	00000101 	0x00000101
 890:	00644000 	bstrins.w	$r0,$r0,0x4,0x10
 894:	0064501c 	bstrins.w	$r28,$r0,0x4,0x14
 898:	5600011c 	bl	74579968(0x4720000) # 4720898 <__stack_size+0x4710898>
 89c:	1c006450 	pcaddu12i	$r16,802(0x322)
 8a0:	1c006494 	pcaddu12i	$r20,804(0x324)
 8a4:	7f760003 	0x7f760003
 8a8:	0064989f 	bstrpick.w	$r31,$r4,0x4,0x6
 8ac:	00649c1c 	bstrpick.w	$r28,$r0,0x4,0x7
 8b0:	7600031c 	0x7600031c
 8b4:	00009f7f 	0x00009f7f
 8b8:	00000000 	0x00000000
 8bc:	01020000 	0x01020000
 8c0:	00000001 	0x00000001
 8c4:	64400000 	bge	$r0,$r0,16384(0x4000) # 48c4 <__stack_size-0xb73c>
 8c8:	644c1c00 	bge	$r0,$r0,19484(0x4c1c) # 54e4 <__stack_size-0xab1c>
 8cc:	00011c00 	asrtle.d	$r0,$r7
 8d0:	00644c55 	bstrins.w	$r21,$r2,0x4,0x13
 8d4:	00646c1c 	bstrins.w	$r28,$r0,0x4,0x1b
 8d8:	5c00011c 	bne	$r8,$r28,0 # 8d8 <__stack_size-0xf728>
 8dc:	1c00646c 	pcaddu12i	$r12,803(0x323)
 8e0:	1c006494 	pcaddu12i	$r20,804(0x324)
 8e4:	98550001 	0x98550001
 8e8:	9c1c0064 	0x9c1c0064
 8ec:	011c0064 	0x011c0064
 8f0:	00005500 	bitrev.d	$r0,$r8
 8f4:	00000000 	0x00000000
 8f8:	00030000 	0x00030000
	...
 904:	1c006440 	pcaddu12i	$r0,802(0x322)
 908:	1c006450 	pcaddu12i	$r16,802(0x322)
 90c:	50540001 	b	283648(0x45400) # 45d0c <__stack_size+0x35d0c>
 910:	6c1c0064 	bgeu	$r3,$r4,7168(0x1c00) # 2510 <__stack_size-0xdaf0>
 914:	011c0064 	0x011c0064
 918:	646c5d00 	bge	$r8,$r0,27740(0x6c5c) # 7574 <__stack_size-0x8a8c>
 91c:	647c1c00 	bge	$r0,$r0,31772(0x7c1c) # 8538 <__stack_size-0x7ac8>
 920:	00011c00 	asrtle.d	$r0,$r7
 924:	00647c54 	bstrins.w	$r20,$r2,0x4,0x1f
 928:	0064941c 	bstrpick.w	$r28,$r0,0x4,0x5
 92c:	5c00011c 	bne	$r8,$r28,0 # 92c <__stack_size-0xf6d4>
 930:	1c006498 	pcaddu12i	$r24,804(0x324)
 934:	1c00649c 	pcaddu12i	$r28,804(0x324)
 938:	00540001 	0x00540001
	...
 944:	10000000 	addu16i.d	$r0,$r0,0
 948:	1c1c0064 	pcaddu12i	$r4,57347(0xe003)
 94c:	011c0064 	0x011c0064
 950:	641c5500 	bge	$r8,$r0,7252(0x1c54) # 25a4 <__stack_size-0xda5c>
 954:	64381c00 	bge	$r0,$r0,14364(0x381c) # 4170 <__stack_size-0xbe90>
 958:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 95c:	9f5501f3 	0x9f5501f3
	...
 968:	00040400 	alsl.w	$r0,$r0,$r1,0x1
 96c:	64100000 	bge	$r0,$r0,4096(0x1000) # 196c <__stack_size-0xe694>
 970:	64101c00 	bge	$r0,$r0,4124(0x101c) # 198c <__stack_size-0xe674>
 974:	00011c00 	asrtle.d	$r0,$r7
 978:	00641056 	bstrins.w	$r22,$r2,0x4,0x4
 97c:	0064181c 	bstrins.w	$r28,$r0,0x4,0x6
 980:	7600031c 	0x7600031c
 984:	64189f7f 	bge	$r27,$r31,6300(0x189c) # 2220 <__stack_size-0xdde0>
 988:	64341c00 	bge	$r0,$r0,13340(0x341c) # 3da4 <__stack_size-0xc25c>
 98c:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 990:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 994:	00009f1c 	0x00009f1c
 998:	00000000 	0x00000000
 99c:	00020000 	0x00020000
 9a0:	1c006410 	pcaddu12i	$r16,800(0x320)
 9a4:	1c006438 	pcaddu12i	$r24,801(0x321)
 9a8:	00550001 	0x00550001
 9ac:	00000000 	0x00000000
 9b0:	03000000 	lu52i.d	$r0,$r0,0
 9b4:	10000000 	addu16i.d	$r0,$r0,0
 9b8:	1c1c0064 	pcaddu12i	$r4,57347(0xe003)
 9bc:	011c0064 	0x011c0064
 9c0:	641c5400 	bge	$r0,$r0,7252(0x1c54) # 2614 <__stack_size-0xd9ec>
 9c4:	64341c00 	bge	$r0,$r0,13340(0x341c) # 3de0 <__stack_size-0xc220>
 9c8:	00011c00 	asrtle.d	$r0,$r7
 9cc:	0000005c 	0x0000005c
	...
 9d8:	0063c000 	bstrpick.w	$r0,$r0,0x3,0x10
 9dc:	0063d81c 	bstrpick.w	$r28,$r0,0x3,0x16
 9e0:	5400011c 	bl	74448896(0x4700000) # 47009e0 <__stack_size+0x46f09e0>
 9e4:	1c0063d8 	pcaddu12i	$r24,798(0x31e)
 9e8:	1c0063e8 	pcaddu12i	$r8,799(0x31f)
 9ec:	00540001 	0x00540001
	...
 9fc:	00638000 	bstrpick.w	$r0,$r0,0x3,0x0
 a00:	0063941c 	bstrpick.w	$r28,$r0,0x3,0x5
 a04:	5400011c 	bl	74448896(0x4700000) # 4700a04 <__stack_size+0x46f0a04>
 a08:	1c006394 	pcaddu12i	$r20,796(0x31c)
 a0c:	1c0063b8 	pcaddu12i	$r24,797(0x31d)
 a10:	b85c0001 	0xb85c0001
 a14:	bc1c0063 	0xbc1c0063
 a18:	011c0063 	0x011c0063
 a1c:	00005400 	bitrev.d	$r0,$r0
	...
 a2c:	1c006310 	pcaddu12i	$r16,792(0x318)
 a30:	1c00634c 	pcaddu12i	$r12,794(0x31a)
 a34:	4c540001 	jirl	$r1,$r0,21504(0x5400)
 a38:	541c0063 	bl	25959424(0x18c1c00) # 18c2638 <__stack_size+0x18b2638>
 a3c:	011c0063 	0x011c0063
 a40:	63585400 	blt	$r0,$r0,-42924(0x35854) # ffff6294 <_stack+0xe3ef6298>
 a44:	63701c00 	blt	$r0,$r0,-36836(0x3701c) # ffff7a60 <_stack+0xe3ef7a64>
 a48:	00011c00 	asrtle.d	$r0,$r7
 a4c:	00000054 	0x00000054
	...
 a5c:	10000000 	addu16i.d	$r0,$r0,0
 a60:	2c1c0063 	vld	$vr3,$r3,1792(0x700)
 a64:	011c0063 	0x011c0063
 a68:	632c5500 	blt	$r8,$r0,-54188(0x32c54) # ffff36bc <_stack+0xe3ef36c0>
 a6c:	63441c00 	blt	$r0,$r0,-48100(0x3441c) # ffff4e88 <_stack+0xe3ef4e8c>
 a70:	00011c00 	asrtle.d	$r0,$r7
 a74:	0063445c 	bstrins.w	$r28,$r2,0x3,0x11
 a78:	00634c1c 	bstrins.w	$r28,$r0,0x3,0x13
 a7c:	5500011c 	bl	74514432(0x4710000) # 4710a7c <__stack_size+0x4700a7c>
 a80:	1c00634c 	pcaddu12i	$r12,794(0x31a)
 a84:	1c006350 	pcaddu12i	$r16,794(0x31a)
 a88:	585c0001 	beq	$r0,$r1,23552(0x5c00) # 6688 <__stack_size-0x9978>
 a8c:	5c1c0063 	bne	$r3,$r3,7168(0x1c00) # 268c <__stack_size-0xd974>
 a90:	011c0063 	0x011c0063
 a94:	00005c00 	ext.w.b	$r0,$r0
	...
 aa4:	00010100 	asrtle.d	$r8,$r0
 aa8:	63100000 	blt	$r0,$r0,-61440(0x31000) # ffff1aa8 <_stack+0xe3ef1aac>
 aac:	63281c00 	blt	$r0,$r0,-55268(0x3281c) # ffff32c8 <_stack+0xe3ef32cc>
 ab0:	00011c00 	asrtle.d	$r0,$r7
 ab4:	00632856 	bstrins.w	$r22,$r2,0x3,0xa
 ab8:	00632c1c 	bstrins.w	$r28,$r0,0x3,0xb
 abc:	f300041c 	0xf300041c
 ac0:	2c9f5601 	xvld	$xr1,$r16,2005(0x7d5)
 ac4:	441c0063 	bnez	$r3,793600(0xc1c00) # c26c4 <__stack_size+0xb26c4>
 ac8:	061c0063 	cacop	0x3,$r3,1792(0x700)
 acc:	5601f300 	bl	-66977296(0xc0201f0) # fc020cbc <_stack+0xdff20cc0>
 ad0:	449f1c31 	bnez	$r1,-3891428(0x449f1c) # ffc4a9ec <_stack+0xe3b4a9f0>
 ad4:	441c0063 	bnez	$r3,793600(0xc1c00) # c26d4 <__stack_size+0xb26d4>
 ad8:	041c0063 	csrxchg	$r3,$r3,0x700
 adc:	5601f300 	bl	-66977296(0xc0201f0) # fc020ccc <_stack+0xdff20cd0>
 ae0:	0063449f 	bstrins.w	$r31,$r4,0x3,0x11
 ae4:	0063501c 	bstrins.w	$r28,$r0,0x3,0x14
 ae8:	f300061c 	0xf300061c
 aec:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 af0:	0063589f 	bstrins.w	$r31,$r4,0x3,0x16
 af4:	00635c1c 	bstrins.w	$r28,$r0,0x3,0x17
 af8:	f300061c 	0xf300061c
 afc:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 b00:	0000009f 	0x0000009f
	...
 b0c:	0062e000 	bstrpick.w	$r0,$r0,0x2,0x18
 b10:	0063041c 	bstrins.w	$r28,$r0,0x3,0x1
 b14:	5500011c 	bl	74514432(0x4710000) # 4710b14 <__stack_size+0x4700b14>
 b18:	1c006304 	pcaddu12i	$r4,792(0x318)
 b1c:	1c00630c 	pcaddu12i	$r12,792(0x318)
 b20:	00550001 	0x00550001
	...
 b30:	01010000 	fadd.d	$f0,$f0,$f0
 b34:	0062e000 	bstrpick.w	$r0,$r0,0x2,0x18
 b38:	0062e81c 	bstrpick.w	$r28,$r0,0x2,0x1a
 b3c:	5600011c 	bl	74579968(0x4720000) # 4720b3c <__stack_size+0x4710b3c>
 b40:	1c0062e8 	pcaddu12i	$r8,791(0x317)
 b44:	1c0062ec 	pcaddu12i	$r12,791(0x317)
 b48:	01f30004 	0x01f30004
 b4c:	62ec9f56 	blt	$r26,$r22,-70500(0x2ec9c) # fffef7e8 <_stack+0xe3eef7ec>
 b50:	62f81c00 	blt	$r0,$r0,-67556(0x2f81c) # ffff036c <_stack+0xe3ef0370>
 b54:	000a1c00 	0x000a1c00
 b58:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b5c:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d4c <_stack+0xe0620d50>
 b60:	62f89f22 	blt	$r25,$r2,-67428(0x2f89c) # ffff03fc <_stack+0xe3ef0400>
 b64:	63041c00 	blt	$r0,$r0,-64484(0x3041c) # ffff0f80 <_stack+0xe3ef0f84>
 b68:	000c1c00 	bytepick.d	$r0,$r0,$r7,0x0
 b6c:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b70:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d60 <_stack+0xe0620d64>
 b74:	9f012322 	0x9f012322
 b78:	1c006304 	pcaddu12i	$r4,792(0x318)
 b7c:	1c006308 	pcaddu12i	$r8,792(0x318)
 b80:	0074000a 	bstrins.w	$r10,$r0,0x14,0x0
 b84:	f31c007d 	0xf31c007d
 b88:	9f225601 	0x9f225601
	...
 b94:	00000002 	0x00000002
 b98:	00010100 	asrtle.d	$r8,$r0
 b9c:	1c0062e0 	pcaddu12i	$r0,791(0x317)
 ba0:	1c0062ec 	pcaddu12i	$r12,791(0x317)
 ba4:	ec540001 	0xec540001
 ba8:	f81c0062 	0xf81c0062
 bac:	011c0062 	0x011c0062
 bb0:	62f85d00 	blt	$r8,$r0,-67492(0x2f85c) # ffff040c <_stack+0xe3ef0410>
 bb4:	63041c00 	blt	$r0,$r0,-64484(0x3041c) # ffff0fd0 <_stack+0xe3ef0fd4>
 bb8:	00031c00 	0x00031c00
 bbc:	049f7f7d 	csrxchg	$r29,$r27,0x27df
 bc0:	081c0063 	fmadd.s	$f3,$f3,$f0,$f24
 bc4:	011c0063 	0x011c0063
 bc8:	00005d00 	ext.w.b	$r0,$r8
	...
 bd4:	62c00000 	blt	$r0,$r0,-81920(0x2c000) # fffecbd4 <_stack+0xe3eecbd8>
 bd8:	62c81c00 	blt	$r0,$r0,-79844(0x2c81c) # fffed3f4 <_stack+0xe3eed3f8>
 bdc:	00011c00 	asrtle.d	$r0,$r7
 be0:	0062c855 	bstrpick.w	$r21,$r2,0x2,0x12
 be4:	0062dc1c 	bstrpick.w	$r28,$r0,0x2,0x17
 be8:	5500011c 	bl	74514432(0x4710000) # 4710be8 <__stack_size+0x4700be8>
	...
 bf4:	00000002 	0x00000002
 bf8:	1c0062c0 	pcaddu12i	$r0,790(0x316)
 bfc:	1c0062c4 	pcaddu12i	$r4,790(0x316)
 c00:	c4540001 	0xc4540001
 c04:	dc1c0062 	0xdc1c0062
 c08:	011c0062 	0x011c0062
 c0c:	00005c00 	ext.w.b	$r0,$r0
	...
 c1c:	1c006280 	pcaddu12i	$r0,788(0x314)
 c20:	1c006288 	pcaddu12i	$r8,788(0x314)
 c24:	88540001 	0x88540001
 c28:	981c0062 	0x981c0062
 c2c:	031c0062 	lu52i.d	$r2,$r3,1792(0x700)
 c30:	9f017400 	0x9f017400
 c34:	1c006298 	pcaddu12i	$r24,788(0x314)
 c38:	1c0062ac 	pcaddu12i	$r12,789(0x315)
 c3c:	00740008 	bstrins.w	$r8,$r0,0x14,0x0
 c40:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 c44:	00009f01 	0x00009f01
 c48:	00000000 	0x00000000
 c4c:	00020000 	0x00020000
 c50:	62800000 	blt	$r0,$r0,-98304(0x28000) # fffe8c50 <_stack+0xe3ee8c54>
 c54:	62981c00 	blt	$r0,$r0,-92132(0x2981c) # fffea470 <_stack+0xe3eea474>
 c58:	00021c00 	0x00021c00
 c5c:	62989f30 	blt	$r25,$r16,-92004(0x2989c) # fffea4f8 <_stack+0xe3eea4fc>
 c60:	62ac1c00 	blt	$r0,$r0,-87012(0x2ac1c) # fffeb87c <_stack+0xe3eeb880>
 c64:	00011c00 	asrtle.d	$r0,$r7
 c68:	0000005c 	0x0000005c
 c6c:	00000000 	0x00000000
 c70:	03030000 	lu52i.d	$r0,$r0,192(0xc0)
	...
 c7c:	00624000 	bstrins.w	$r0,$r0,0x2,0x10
 c80:	0062401c 	bstrins.w	$r28,$r0,0x2,0x10
 c84:	5400011c 	bl	74448896(0x4700000) # 4700c84 <__stack_size+0x46f0c84>
 c88:	1c006240 	pcaddu12i	$r0,786(0x312)
 c8c:	1c00624c 	pcaddu12i	$r12,786(0x312)
 c90:	01740003 	0x01740003
 c94:	00624c9f 	bstrins.w	$r31,$r4,0x2,0x13
 c98:	0062641c 	bstrins.w	$r28,$r0,0x2,0x19
 c9c:	7400081c 	xvseq.b	$xr28,$xr0,$xr2
 ca0:	22007c00 	ll.d	$r0,$r0,124(0x7c)
 ca4:	649f0123 	bge	$r9,$r3,40704(0x9f00) # aba4 <__stack_size-0x545c>
 ca8:	681c0062 	bltu	$r3,$r2,7168(0x1c00) # 28a8 <__stack_size-0xd758>
 cac:	091c0062 	vfmadd.s	$vr2,$vr3,$vr0,$vr24
 cb0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ea0 <_stack+0xdff00ea4>
 cb4:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 cb8:	62689f01 	blt	$r24,$r1,-104292(0x2689c) # fffe7554 <_stack+0xe3ee7558>
 cbc:	62701c00 	blt	$r0,$r0,-102372(0x2701c) # fffe7cd8 <_stack+0xe3ee7cdc>
 cc0:	00031c00 	0x00031c00
 cc4:	709f0174 	0x709f0174
 cc8:	741c0062 	0x741c0062
 ccc:	061c0062 	cacop	0x2,$r3,1792(0x700)
 cd0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ec0 <_stack+0xdff00ec4>
 cd4:	009f0123 	bstrins.d	$r3,$r9,0x1f,0x0
 cd8:	00000000 	0x00000000
 cdc:	02000000 	slti	$r0,$r0,0
 ce0:	00000000 	0x00000000
 ce4:	00624000 	bstrins.w	$r0,$r0,0x2,0x10
 ce8:	00624c1c 	bstrins.w	$r28,$r0,0x2,0x13
 cec:	3000021c 	0x3000021c
 cf0:	00624c9f 	bstrins.w	$r31,$r4,0x2,0x13
 cf4:	0062681c 	bstrins.w	$r28,$r0,0x2,0x1a
 cf8:	5c00011c 	bne	$r8,$r28,0 # cf8 <__stack_size-0xf308>
 cfc:	1c006268 	pcaddu12i	$r8,787(0x313)
 d00:	1c006274 	pcaddu12i	$r20,787(0x313)
 d04:	9f300002 	0x9f300002
	...
 d10:	00030300 	0x00030300
	...
 d1c:	1c0063f0 	pcaddu12i	$r16,799(0x31f)
 d20:	1c0063f0 	pcaddu12i	$r16,799(0x31f)
 d24:	f0560001 	0xf0560001
 d28:	f81c0063 	0xf81c0063
 d2c:	031c0063 	lu52i.d	$r3,$r3,1792(0x700)
 d30:	9f7f7600 	0x9f7f7600
 d34:	1c0063f8 	pcaddu12i	$r24,799(0x31f)
 d38:	1c0063fc 	pcaddu12i	$r28,799(0x31f)
 d3c:	01f30006 	0x01f30006
 d40:	9f1c3156 	0x9f1c3156
 d44:	1c0063fc 	pcaddu12i	$r28,799(0x31f)
 d48:	1c006404 	pcaddu12i	$r4,800(0x320)
 d4c:	007c000b 	bstrins.w	$r11,$r0,0x1c,0x0
 d50:	5601f320 	bl	-58588688(0xc8201f0) # fc820f40 <_stack+0xe0720f44>
 d54:	22007422 	ll.d	$r2,$r1,116(0x74)
 d58:	0064049f 	bstrins.w	$r31,$r4,0x4,0x1
 d5c:	0064081c 	bstrins.w	$r28,$r0,0x4,0x2
 d60:	74000a1c 	xvseq.b	$xr28,$xr16,$xr2
 d64:	1c007c00 	pcaddu12i	$r0,992(0x3e0)
 d68:	225601f3 	ll.d	$r19,$r15,22016(0x5600)
 d6c:	0064089f 	bstrins.w	$r31,$r4,0x4,0x2
 d70:	00640c1c 	bstrins.w	$r28,$r0,0x4,0x3
 d74:	7c000b1c 	0x7c000b1c
 d78:	01f32000 	0x01f32000
 d7c:	00742256 	bstrins.w	$r22,$r18,0x14,0x8
 d80:	00009f22 	0x00009f22
 d84:	00000000 	0x00000000
 d88:	00020000 	0x00020000
 d8c:	63f00000 	blt	$r0,$r0,-4096(0x3f000) # fffffd8c <_stack+0xe3effd90>
 d90:	63fc1c00 	blt	$r0,$r0,-996(0x3fc1c) # 9ac <__stack_size-0xf654>
 d94:	00011c00 	asrtle.d	$r0,$r7
 d98:	0063fc54 	bstrpick.w	$r20,$r2,0x3,0x1f
 d9c:	00640c1c 	bstrins.w	$r28,$r0,0x4,0x3
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
  10:	1c005e00 	pcaddu12i	$r0,752(0x2f0)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c006040 	pcaddu12i	$r0,770(0x302)
  34:	00000054 	0x00000054
	...
  40:	0000001c 	0x0000001c
  44:	03340002 	lu52i.d	$r2,$r0,-768(0xd00)
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c0060a0 	pcaddu12i	$r0,773(0x305)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04a80002 	csrrd	$r2,0x2a00
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c006150 	pcaddu12i	$r16,778(0x30a)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06230002 	cacop	0x2,$r0,-1856(0x8c0)
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c006240 	pcaddu12i	$r0,786(0x312)
  94:	000002d8 	0x000002d8
	...
  a0:	0000001c 	0x0000001c
  a4:	0b010002 	0x0b010002
  a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  ac:	00000000 	0x00000000
  b0:	1c006520 	pcaddu12i	$r0,809(0x329)
  b4:	00000140 	0x00000140
	...
  c0:	0000001c 	0x0000001c
  c4:	0d4a0002 	0x0d4a0002
  c8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  cc:	00000000 	0x00000000
  d0:	1c006660 	pcaddu12i	$r0,819(0x333)
  d4:	00000050 	0x00000050
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
  60:	1c006240 	pcaddu12i	$r0,786(0x312)
  64:	1c006518 	pcaddu12i	$r24,808(0x328)
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
  2c:	5e000205 	bne	$r16,$r5,-131072(0x20000) # fffe002c <_stack+0xe3ee0030>
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
 1d4:	40020500 	beqz	$r8,516(0x204) # 3d8 <__stack_size-0xfc28>
 1d8:	131c0060 	addu16i.d	$r0,$r3,-14592(0xc700)
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
 234:	0060a002 	bstrpick.w	$r2,$r0,0x0,0x8
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
 2d0:	61500205 	blt	$r16,$r5,86016(0x15000) # 152d0 <__stack_size+0x52d0>
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
 3d4:	1c006240 	pcaddu12i	$r0,786(0x312)
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
 6d0:	65200205 	bge	$r16,$r5,73728(0x12000) # 126d0 <__stack_size+0x26d0>
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
 7bc:	0000005a 	0x0000005a
 7c0:	001d0002 	mulh.wu	$r2,$r0,$r0
 7c4:	01010000 	fadd.d	$f0,$f0,$f0
 7c8:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
 7cc:	01010101 	fadd.d	$f1,$f8,$f0
 7d0:	01000000 	0x01000000
 7d4:	00010000 	asrtle.d	$r0,$r0
 7d8:	646e6172 	bge	$r11,$r18,28256(0x6e60) # 7638 <__stack_size-0x89c8>
 7dc:	0000632e 	rdtimel.w	$r14,$r25
 7e0:	05000000 	0x05000000
 7e4:	02050010 	slti	$r16,$r0,320(0x140)
 7e8:	1c006660 	pcaddu12i	$r0,819(0x333)
 7ec:	13050514 	addu16i.d	$r20,$r8,-16063(0xc141)
 7f0:	01061105 	0x01061105
 7f4:	74081e05 	xvslt.bu	$xr5,$xr16,$xr7
 7f8:	05bb2705 	0x05bb2705
 7fc:	0505490a 	0x0505490a
 800:	01054b06 	fmul.d	$f6,$f24,$f18
 804:	1f051306 	pcaddu18i	$r6,-513896(0x82898)
 808:	053d0806 	0x053d0806
 80c:	0a051305 	0x0a051305
 810:	01050106 	fmul.d	$f6,$f8,$f0
 814:	000402bb 	alsl.w	$r27,$r21,$r0,0x1
 818:	Address 0x0000000000000818 is out of bounds.


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
 214:	61720065 	blt	$r3,$r5,94720(0x17200) # 17414 <__stack_size+0x7414>
 218:	632e646e 	blt	$r3,$r14,-53660(0x32e64) # ffff307c <_stack+0xe3ef3080>
 21c:	61727300 	blt	$r24,$r0,94832(0x17270) # 1748c <__stack_size+0x748c>
 220:	6e00646e 	bgeu	$r3,$r14,-130972(0x20064) # fffe0284 <_stack+0xe3ee0288>
 224:	00747865 	bstrins.w	$r5,$r3,0x14,0x1e
 228:	64656573 	bge	$r11,$r19,25956(0x6564) # 678c <__stack_size-0x9874>
	...

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	0x0000000c
   4:	ffffffff 	0xffffffff
   8:	7c010001 	0x7c010001
   c:	00030d01 	0x00030d01
  10:	00000034 	0x00000034
  14:	00000000 	0x00000000
  18:	1c005e00 	pcaddu12i	$r0,752(0x2f0)
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
  60:	1c006040 	pcaddu12i	$r0,770(0x302)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c006070 	pcaddu12i	$r16,771(0x303)
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
  a8:	1c0060a0 	pcaddu12i	$r0,773(0x305)
  ac:	00000074 	0x00000074
  b0:	50100e44 	b	-116387828(0x910100c) # f91010bc <_stack+0xdd0010c0>
  b4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  b8:	04990398 	csrxchg	$r24,$r28,0x2640
  bc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c204 <__stack_size+0x7c204>
  c0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd904 <_stack+0xe3ccd908>
  c4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  c8:	00000018 	0x00000018
  cc:	00000090 	0x00000090
  d0:	1c006120 	pcaddu12i	$r0,777(0x309)
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
  fc:	1c006150 	pcaddu12i	$r16,778(0x30a)
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
 138:	1c006240 	pcaddu12i	$r0,786(0x312)
 13c:	00000034 	0x00000034
 140:	0000000c 	0x0000000c
 144:	00000120 	0x00000120
 148:	1c006280 	pcaddu12i	$r0,788(0x314)
 14c:	00000034 	0x00000034
 150:	0000000c 	0x0000000c
 154:	00000120 	0x00000120
 158:	1c0062c0 	pcaddu12i	$r0,790(0x316)
 15c:	0000001c 	0x0000001c
 160:	0000000c 	0x0000000c
 164:	00000120 	0x00000120
 168:	1c0062e0 	pcaddu12i	$r0,791(0x317)
 16c:	0000002c 	0x0000002c
 170:	00000014 	0x00000014
 174:	00000120 	0x00000120
 178:	1c006310 	pcaddu12i	$r16,792(0x318)
 17c:	0000006c 	0x0000006c
 180:	100e5002 	addu16i.d	$r2,$r0,916(0x394)
 184:	00000e54 	0x00000e54
 188:	0000000c 	0x0000000c
 18c:	00000120 	0x00000120
 190:	1c006380 	pcaddu12i	$r0,796(0x31c)
 194:	0000003c 	0x0000003c
 198:	0000000c 	0x0000000c
 19c:	00000120 	0x00000120
 1a0:	1c0063c0 	pcaddu12i	$r0,798(0x31e)
 1a4:	00000028 	0x00000028
 1a8:	0000000c 	0x0000000c
 1ac:	00000120 	0x00000120
 1b0:	1c0063f0 	pcaddu12i	$r16,799(0x31f)
 1b4:	00000020 	0x00000020
 1b8:	0000000c 	0x0000000c
 1bc:	00000120 	0x00000120
 1c0:	1c006410 	pcaddu12i	$r16,800(0x320)
 1c4:	00000028 	0x00000028
 1c8:	0000000c 	0x0000000c
 1cc:	00000120 	0x00000120
 1d0:	1c006440 	pcaddu12i	$r0,802(0x322)
 1d4:	0000005c 	0x0000005c
 1d8:	00000014 	0x00000014
 1dc:	00000120 	0x00000120
 1e0:	1c0064a0 	pcaddu12i	$r0,805(0x325)
 1e4:	00000058 	0x00000058
 1e8:	54100e7c 	bl	-101707764(0x9f0100c) # f9f011f4 <_stack+0xdde011f8>
 1ec:	0000000e 	0x0000000e
 1f0:	0000000c 	0x0000000c
 1f4:	00000120 	0x00000120
 1f8:	1c006500 	pcaddu12i	$r0,808(0x328)
 1fc:	00000018 	0x00000018
 200:	0000000c 	0x0000000c
 204:	ffffffff 	0xffffffff
 208:	7c010001 	0x7c010001
 20c:	00030d01 	0x00030d01
 210:	00000018 	0x00000018
 214:	00000200 	0x00000200
 218:	1c006520 	pcaddu12i	$r0,809(0x329)
 21c:	0000001c 	0x0000001c
 220:	44100e44 	bnez	$r18,1052684(0x10100c) # 10122c <__stack_size+0xf122c>
 224:	d94c0199 	0xd94c0199
 228:	00000e44 	0x00000e44
 22c:	0000000c 	0x0000000c
 230:	00000200 	0x00000200
 234:	1c006540 	pcaddu12i	$r0,810(0x32a)
 238:	00000004 	0x00000004
 23c:	0000000c 	0x0000000c
 240:	00000200 	0x00000200
 244:	1c006550 	pcaddu12i	$r16,810(0x32a)
 248:	00000008 	0x00000008
 24c:	00000018 	0x00000018
 250:	00000200 	0x00000200
 254:	1c006560 	pcaddu12i	$r0,811(0x32b)
 258:	00000084 	0x00000084
 25c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101268 <__stack_size+0xf1268>
 260:	60020199 	blt	$r12,$r25,512(0x200) # 460 <__stack_size-0xfba0>
 264:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 268:	0000000c 	0x0000000c
 26c:	00000200 	0x00000200
 270:	1c0065f0 	pcaddu12i	$r16,815(0x32f)
 274:	00000004 	0x00000004
 278:	00000018 	0x00000018
 27c:	00000200 	0x00000200
 280:	1c006600 	pcaddu12i	$r0,816(0x330)
 284:	00000024 	0x00000024
 288:	44100e44 	bnez	$r18,1052684(0x10100c) # 101294 <__stack_size+0xf1294>
 28c:	d9500199 	0xd9500199
 290:	00000e48 	0x00000e48
 294:	00000018 	0x00000018
 298:	00000200 	0x00000200
 29c:	1c006630 	pcaddu12i	$r16,817(0x331)
 2a0:	00000030 	0x00000030
 2a4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1012b0 <__stack_size+0xf12b0>
 2a8:	d9500199 	0xd9500199
 2ac:	00000e54 	0x00000e54
 2b0:	0000000c 	0x0000000c
 2b4:	ffffffff 	0xffffffff
 2b8:	7c010001 	0x7c010001
 2bc:	00030d01 	0x00030d01
 2c0:	0000000c 	0x0000000c
 2c4:	000002b0 	0x000002b0
 2c8:	1c006660 	pcaddu12i	$r0,819(0x333)
 2cc:	00000034 	0x00000034
 2d0:	0000000c 	0x0000000c
 2d4:	000002b0 	0x000002b0
 2d8:	1c0066a0 	pcaddu12i	$r0,821(0x335)
 2dc:	00000010 	0x00000010
