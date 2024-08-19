
obj/bitcount/main.elf:     file format elf32-loongarch
obj/bitcount/main.elf


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
1c000050:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c000054:	0286018c 	addi.w	$r12,$r12,384(0x180)
1c000058:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00005c:	02bea1ad 	addi.w	$r13,$r13,-88(0xfa8)
1c000060:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000064:	028f41ce 	addi.w	$r14,$r14,976(0x3d0)
1c000068:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000080 <_start+0x80>
1c00006c:	2880018f 	ld.w	$r15,$r12,0
1c000070:	298001af 	st.w	$r15,$r13,0
1c000074:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000078:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00007c:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c00006c <_start+0x6c>
1c000080:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000084:	028ec18c 	addi.w	$r12,$r12,944(0x3b0)
1c000088:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00008c:	028ea1ad 	addi.w	$r13,$r13,936(0x3a8)
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
1c00038c:	54001400 	bl	20(0x14) # 1c0003a0 <shell1>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <shell1>:
shell1():
1c0003a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0003a4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0003a8:	157f5fcc 	lu12i.w	$r12,-263426(0xbfafe)
1c0003ac:	29806077 	st.w	$r23,$r3,24(0x18)
1c0003b0:	29805078 	st.w	$r24,$r3,20(0x14)
1c0003b4:	2980307a 	st.w	$r26,$r3,12(0xc)
1c0003b8:	2980207b 	st.w	$r27,$r3,8(0x8)
1c0003bc:	29804079 	st.w	$r25,$r3,16(0x10)
1c0003c0:	29800180 	st.w	$r0,$r12,0
1c0003c4:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0003c8:	02b0f084 	addi.w	$r4,$r4,-964(0xc3c)
1c0003cc:	540ba400 	bl	2980(0xba4) # 1c000f70 <puts>
1c0003d0:	540cc000 	bl	3264(0xcc0) # 1c001090 <get_count>
1c0003d4:	0015009a 	move	$r26,$r4
1c0003d8:	540ce800 	bl	3304(0xce8) # 1c0010c0 <get_count_my>
1c0003dc:	0015009b 	move	$r27,$r4
1c0003e0:	157f5fe4 	lu12i.w	$r4,-263425(0xbfaff)
1c0003e4:	03bc8085 	ori	$r5,$r4,0xf20
1c0003e8:	288000a6 	ld.w	$r6,$r5,0
1c0003ec:	02802817 	addi.w	$r23,$r0,10(0xa)
1c0003f0:	00150018 	move	$r24,$r0
1c0003f4:	5c0114c0 	bne	$r6,$r0,276(0x114) # 1c000508 <shell1+0x168>
1c0003f8:	02819005 	addi.w	$r5,$r0,100(0x64)
1c0003fc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000400:	54021000 	bl	528(0x210) # 1c000610 <bitcnts>
1c000404:	03ccac87 	xori	$r7,$r4,0x32b
1c000408:	00129c08 	sltu	$r8,$r0,$r7
1c00040c:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000410:	00150099 	move	$r25,$r4
1c000414:	00102318 	add.w	$r24,$r24,$r8
1c000418:	5fffe2e0 	bne	$r23,$r0,-32(0x3ffe0) # 1c0003f8 <shell1+0x58>
1c00041c:	540ca400 	bl	3236(0xca4) # 1c0010c0 <get_count_my>
1c000420:	00150097 	move	$r23,$r4
1c000424:	540c6c00 	bl	3180(0xc6c) # 1c001090 <get_count>
1c000428:	00116efb 	sub.w	$r27,$r23,$r27
1c00042c:	0011689a 	sub.w	$r26,$r4,$r26
1c000430:	5800a300 	beq	$r24,$r0,160(0xa0) # 1c0004d0 <shell1+0x130>
1c000434:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000438:	02afd084 	addi.w	$r4,$r4,-1036(0xbf4)
1c00043c:	54081400 	bl	2068(0x814) # 1c000c50 <printf>
1c000440:	157f5fea 	lu12i.w	$r10,-263425(0xbfaff)
1c000444:	02800410 	addi.w	$r16,$r0,1(0x1)
1c000448:	0381014f 	ori	$r15,$r10,0x40
1c00044c:	298001f0 	st.w	$r16,$r15,0
1c000450:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c000454:	0380c14d 	ori	$r13,$r10,0x30
1c000458:	0380814b 	ori	$r11,$r10,0x20
1c00045c:	298001ae 	st.w	$r14,$r13,0
1c000460:	29800160 	st.w	$r0,$r11,0
1c000464:	00150325 	move	$r5,$r25
1c000468:	1c001004 	pcaddu12i	$r4,128(0x80)
1c00046c:	02af5084 	addi.w	$r4,$r4,-1068(0xbd4)
1c000470:	5407e000 	bl	2016(0x7e0) # 1c000c50 <printf>
1c000474:	157f5fe6 	lu12i.w	$r6,-263425(0xbfaff)
1c000478:	038140c7 	ori	$r7,$r6,0x50
1c00047c:	298000fb 	st.w	$r27,$r7,0
1c000480:	157f5f19 	lu12i.w	$r25,-263432(0xbfaf8)
1c000484:	2980033b 	st.w	$r27,$r25,0
1c000488:	03804328 	ori	$r8,$r25,0x10
1c00048c:	00150345 	move	$r5,$r26
1c000490:	2980011a 	st.w	$r26,$r8,0
1c000494:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000498:	02aed084 	addi.w	$r4,$r4,-1100(0xbb4)
1c00049c:	5407b400 	bl	1972(0x7b4) # 1c000c50 <printf>
1c0004a0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0004a4:	28806077 	ld.w	$r23,$r3,24(0x18)
1c0004a8:	28805078 	ld.w	$r24,$r3,20(0x14)
1c0004ac:	28804079 	ld.w	$r25,$r3,16(0x10)
1c0004b0:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c0004b4:	00150365 	move	$r5,$r27
1c0004b8:	2880207b 	ld.w	$r27,$r3,8(0x8)
1c0004bc:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0004c0:	02aee084 	addi.w	$r4,$r4,-1096(0xbb8)
1c0004c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0004c8:	50078800 	b	1928(0x788) # 1c000c50 <printf>
1c0004cc:	03400000 	andi	$r0,$r0,0x0
1c0004d0:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0004d4:	02ad2084 	addi.w	$r4,$r4,-1208(0xb48)
1c0004d8:	54077800 	bl	1912(0x778) # 1c000c50 <printf>
1c0004dc:	157f5ff1 	lu12i.w	$r17,-263425(0xbfaff)
1c0004e0:	02800413 	addi.w	$r19,$r0,1(0x1)
1c0004e4:	03810234 	ori	$r20,$r17,0x40
1c0004e8:	29800293 	st.w	$r19,$r20,0
1c0004ec:	140001f2 	lu12i.w	$r18,15(0xf)
1c0004f0:	0380c224 	ori	$r4,$r17,0x30
1c0004f4:	0380822c 	ori	$r12,$r17,0x20
1c0004f8:	03bffe45 	ori	$r5,$r18,0xfff
1c0004fc:	29800093 	st.w	$r19,$r4,0
1c000500:	29800185 	st.w	$r5,$r12,0
1c000504:	53ff63ff 	b	-160(0xfffff60) # 1c000464 <shell1+0xc4>
1c000508:	02819005 	addi.w	$r5,$r0,100(0x64)
1c00050c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000510:	54010000 	bl	256(0x100) # 1c000610 <bitcnts>
1c000514:	03ccac89 	xori	$r9,$r4,0x32b
1c000518:	0012a418 	sltu	$r24,$r0,$r9
1c00051c:	00150099 	move	$r25,$r4
1c000520:	540ba000 	bl	2976(0xba0) # 1c0010c0 <get_count_my>
1c000524:	00150097 	move	$r23,$r4
1c000528:	540b6800 	bl	2920(0xb68) # 1c001090 <get_count>
1c00052c:	00116efb 	sub.w	$r27,$r23,$r27
1c000530:	0011689a 	sub.w	$r26,$r4,$r26
1c000534:	5fff0300 	bne	$r24,$r0,-256(0x3ff00) # 1c000434 <shell1+0x94>
1c000538:	53ff9bff 	b	-104(0xfffff98) # 1c0004d0 <shell1+0x130>
1c00053c:	03400000 	andi	$r0,$r0,0x0

1c000540 <bit_shifter>:
bit_shifter():
1c000540:	5800ac80 	beq	$r4,$r0,172(0xac) # 1c0005ec <bit_shifter+0xac>
1c000544:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000548:	29803077 	st.w	$r23,$r3,12(0xc)
1c00054c:	0280800e 	addi.w	$r14,$r0,32(0x20)
1c000550:	0015000c 	move	$r12,$r0
1c000554:	0340048d 	andi	$r13,$r4,0x1
1c000558:	0048848f 	srai.w	$r15,$r4,0x1
1c00055c:	00488890 	srai.w	$r16,$r4,0x2
1c000560:	00488c91 	srai.w	$r17,$r4,0x3
1c000564:	00489092 	srai.w	$r18,$r4,0x4
1c000568:	00489493 	srai.w	$r19,$r4,0x5
1c00056c:	00489894 	srai.w	$r20,$r4,0x6
1c000570:	00489c85 	srai.w	$r5,$r4,0x7
1c000574:	034005e6 	andi	$r6,$r15,0x1
1c000578:	03400607 	andi	$r7,$r16,0x1
1c00057c:	03400628 	andi	$r8,$r17,0x1
1c000580:	03400649 	andi	$r9,$r18,0x1
1c000584:	0340066a 	andi	$r10,$r19,0x1
1c000588:	0340068b 	andi	$r11,$r20,0x1
1c00058c:	034004b7 	andi	$r23,$r5,0x1
1c000590:	02bfe1ce 	addi.w	$r14,$r14,-8(0xff8)
1c000594:	0010358c 	add.w	$r12,$r12,$r13
1c000598:	0048a084 	srai.w	$r4,$r4,0x8
1c00059c:	580041e0 	beq	$r15,$r0,64(0x40) # 1c0005dc <bit_shifter+0x9c>
1c0005a0:	0010198c 	add.w	$r12,$r12,$r6
1c0005a4:	58003a00 	beq	$r16,$r0,56(0x38) # 1c0005dc <bit_shifter+0x9c>
1c0005a8:	00101d8c 	add.w	$r12,$r12,$r7
1c0005ac:	58003220 	beq	$r17,$r0,48(0x30) # 1c0005dc <bit_shifter+0x9c>
1c0005b0:	0010218c 	add.w	$r12,$r12,$r8
1c0005b4:	58002a40 	beq	$r18,$r0,40(0x28) # 1c0005dc <bit_shifter+0x9c>
1c0005b8:	0010258c 	add.w	$r12,$r12,$r9
1c0005bc:	58002260 	beq	$r19,$r0,32(0x20) # 1c0005dc <bit_shifter+0x9c>
1c0005c0:	0010298c 	add.w	$r12,$r12,$r10
1c0005c4:	58001a80 	beq	$r20,$r0,24(0x18) # 1c0005dc <bit_shifter+0x9c>
1c0005c8:	00102d8c 	add.w	$r12,$r12,$r11
1c0005cc:	580010a0 	beq	$r5,$r0,16(0x10) # 1c0005dc <bit_shifter+0x9c>
1c0005d0:	00105d8c 	add.w	$r12,$r12,$r23
1c0005d4:	58000880 	beq	$r4,$r0,8(0x8) # 1c0005dc <bit_shifter+0x9c>
1c0005d8:	5fff7dc0 	bne	$r14,$r0,-132(0x3ff7c) # 1c000554 <bit_shifter+0x14>
1c0005dc:	28803077 	ld.w	$r23,$r3,12(0xc)
1c0005e0:	00150184 	move	$r4,$r12
1c0005e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0005e8:	4c000020 	jirl	$r0,$r1,0
1c0005ec:	00150004 	move	$r4,$r0
1c0005f0:	4c000020 	jirl	$r0,$r1,0
1c0005f4:	03400000 	andi	$r0,$r0,0x0
1c0005f8:	03400000 	andi	$r0,$r0,0x0
1c0005fc:	03400000 	andi	$r0,$r0,0x0

1c000600 <myrand>:
myrand():
1c000600:	140000a4 	lu12i.w	$r4,5(0x5)
1c000604:	0399c084 	ori	$r4,$r4,0x670
1c000608:	4c000020 	jirl	$r0,$r1,0
1c00060c:	03400000 	andi	$r0,$r0,0x0

1c000610 <bitcnts>:
bitcnts():
1c000610:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c000614:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000618:	02aa3084 	addi.w	$r4,$r4,-1396(0xa8c)
1c00061c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c000620:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c000624:	2980607b 	st.w	$r27,$r3,24(0x18)
1c000628:	2980507c 	st.w	$r28,$r3,20(0x14)
1c00062c:	2980407d 	st.w	$r29,$r3,16(0x10)
1c000630:	001500bc 	move	$r28,$r5
1c000634:	2980307e 	st.w	$r30,$r3,12(0xc)
1c000638:	2980a077 	st.w	$r23,$r3,40(0x28)
1c00063c:	29809078 	st.w	$r24,$r3,36(0x24)
1c000640:	29808079 	st.w	$r25,$r3,32(0x20)
1c000644:	54092c00 	bl	2348(0x92c) # 1c000f70 <puts>
1c000648:	540b2800 	bl	2856(0xb28) # 1c001170 <get_ns>
1c00064c:	0280341b 	addi.w	$r27,$r0,13(0xd)
1c000650:	001c6f84 	mul.w	$r4,$r28,$r27
1c000654:	140000ac 	lu12i.w	$r12,5(0x5)
1c000658:	1c00101a 	pcaddu12i	$r26,128(0x80)
1c00065c:	02a9b35a 	addi.w	$r26,$r26,-1428(0xa6c)
1c000660:	0399c185 	ori	$r5,$r12,0x670
1c000664:	140000be 	lu12i.w	$r30,5(0x5)
1c000668:	0280735d 	addi.w	$r29,$r26,28(0x1c)
1c00066c:	0010149b 	add.w	$r27,$r4,$r5
1c000670:	00150018 	move	$r24,$r0
1c000674:	64013c1c 	bge	$r0,$r28,316(0x13c) # 1c0007b0 <bitcnts+0x1a0>
1c000678:	0399c3d7 	ori	$r23,$r30,0x670
1c00067c:	1589d88d 	lu12i.w	$r13,-241980(0xc4ec4)
1c000680:	00115f61 	sub.w	$r1,$r27,$r23
1c000684:	03bb15a6 	ori	$r6,$r13,0xec5
1c000688:	02bfcc27 	addi.w	$r7,$r1,-13(0xff3)
1c00068c:	001c18e8 	mul.w	$r8,$r7,$r6
1c000690:	28800359 	ld.w	$r25,$r26,0
1c000694:	00150018 	move	$r24,$r0
1c000698:	02800509 	addi.w	$r9,$r8,1(0x1)
1c00069c:	03401d2a 	andi	$r10,$r9,0x7
1c0006a0:	5800a940 	beq	$r10,$r0,168(0xa8) # 1c000748 <bitcnts+0x138>
1c0006a4:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c0006a8:	58008d4b 	beq	$r10,$r11,140(0x8c) # 1c000734 <bitcnts+0x124>
1c0006ac:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c0006b0:	5800754e 	beq	$r10,$r14,116(0x74) # 1c000724 <bitcnts+0x114>
1c0006b4:	02800c0f 	addi.w	$r15,$r0,3(0x3)
1c0006b8:	58005d4f 	beq	$r10,$r15,92(0x5c) # 1c000714 <bitcnts+0x104>
1c0006bc:	02801010 	addi.w	$r16,$r0,4(0x4)
1c0006c0:	58004550 	beq	$r10,$r16,68(0x44) # 1c000704 <bitcnts+0xf4>
1c0006c4:	02801411 	addi.w	$r17,$r0,5(0x5)
1c0006c8:	58002d51 	beq	$r10,$r17,44(0x2c) # 1c0006f4 <bitcnts+0xe4>
1c0006cc:	02801812 	addi.w	$r18,$r0,6(0x6)
1c0006d0:	58001552 	beq	$r10,$r18,20(0x14) # 1c0006e4 <bitcnts+0xd4>
1c0006d4:	001502e4 	move	$r4,$r23
1c0006d8:	4c000321 	jirl	$r1,$r25,0
1c0006dc:	028036f7 	addi.w	$r23,$r23,13(0xd)
1c0006e0:	00150098 	move	$r24,$r4
1c0006e4:	001502e4 	move	$r4,$r23
1c0006e8:	4c000321 	jirl	$r1,$r25,0
1c0006ec:	028036f7 	addi.w	$r23,$r23,13(0xd)
1c0006f0:	00101318 	add.w	$r24,$r24,$r4
1c0006f4:	001502e4 	move	$r4,$r23
1c0006f8:	4c000321 	jirl	$r1,$r25,0
1c0006fc:	028036f7 	addi.w	$r23,$r23,13(0xd)
1c000700:	00101318 	add.w	$r24,$r24,$r4
1c000704:	001502e4 	move	$r4,$r23
1c000708:	4c000321 	jirl	$r1,$r25,0
1c00070c:	028036f7 	addi.w	$r23,$r23,13(0xd)
1c000710:	00101318 	add.w	$r24,$r24,$r4
1c000714:	001502e4 	move	$r4,$r23
1c000718:	4c000321 	jirl	$r1,$r25,0
1c00071c:	028036f7 	addi.w	$r23,$r23,13(0xd)
1c000720:	00101318 	add.w	$r24,$r24,$r4
1c000724:	001502e4 	move	$r4,$r23
1c000728:	4c000321 	jirl	$r1,$r25,0
1c00072c:	028036f7 	addi.w	$r23,$r23,13(0xd)
1c000730:	00101318 	add.w	$r24,$r24,$r4
1c000734:	001502e4 	move	$r4,$r23
1c000738:	4c000321 	jirl	$r1,$r25,0
1c00073c:	028036f7 	addi.w	$r23,$r23,13(0xd)
1c000740:	00101318 	add.w	$r24,$r24,$r4
1c000744:	58006f77 	beq	$r27,$r23,108(0x6c) # 1c0007b0 <bitcnts+0x1a0>
1c000748:	001502e4 	move	$r4,$r23
1c00074c:	4c000321 	jirl	$r1,$r25,0
1c000750:	00101318 	add.w	$r24,$r24,$r4
1c000754:	028036e4 	addi.w	$r4,$r23,13(0xd)
1c000758:	4c000321 	jirl	$r1,$r25,0
1c00075c:	00101318 	add.w	$r24,$r24,$r4
1c000760:	02806ae4 	addi.w	$r4,$r23,26(0x1a)
1c000764:	4c000321 	jirl	$r1,$r25,0
1c000768:	00101318 	add.w	$r24,$r24,$r4
1c00076c:	02809ee4 	addi.w	$r4,$r23,39(0x27)
1c000770:	4c000321 	jirl	$r1,$r25,0
1c000774:	00101318 	add.w	$r24,$r24,$r4
1c000778:	0280d2e4 	addi.w	$r4,$r23,52(0x34)
1c00077c:	4c000321 	jirl	$r1,$r25,0
1c000780:	00101318 	add.w	$r24,$r24,$r4
1c000784:	028106e4 	addi.w	$r4,$r23,65(0x41)
1c000788:	4c000321 	jirl	$r1,$r25,0
1c00078c:	00101318 	add.w	$r24,$r24,$r4
1c000790:	02813ae4 	addi.w	$r4,$r23,78(0x4e)
1c000794:	4c000321 	jirl	$r1,$r25,0
1c000798:	00101318 	add.w	$r24,$r24,$r4
1c00079c:	02816ee4 	addi.w	$r4,$r23,91(0x5b)
1c0007a0:	4c000321 	jirl	$r1,$r25,0
1c0007a4:	0281a2f7 	addi.w	$r23,$r23,104(0x68)
1c0007a8:	00101318 	add.w	$r24,$r24,$r4
1c0007ac:	5fff9f77 	bne	$r27,$r23,-100(0x3ff9c) # 1c000748 <bitcnts+0x138>
1c0007b0:	0280135a 	addi.w	$r26,$r26,4(0x4)
1c0007b4:	5ffebf5d 	bne	$r26,$r29,-324(0x3febc) # 1c000670 <bitcnts+0x60>
1c0007b8:	5409b800 	bl	2488(0x9b8) # 1c001170 <get_ns>
1c0007bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0007c0:	00150304 	move	$r4,$r24
1c0007c4:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c0007c8:	28809078 	ld.w	$r24,$r3,36(0x24)
1c0007cc:	28808079 	ld.w	$r25,$r3,32(0x20)
1c0007d0:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c0007d4:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c0007d8:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c0007dc:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c0007e0:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c0007e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0007e8:	4c000020 	jirl	$r0,$r1,0
1c0007ec:	03400000 	andi	$r0,$r0,0x0

1c0007f0 <bit_count>:
bit_count():
1c0007f0:	58009480 	beq	$r4,$r0,148(0x94) # 1c000884 <bit_count+0x94>
1c0007f4:	0015008c 	move	$r12,$r4
1c0007f8:	00150004 	move	$r4,$r0
1c0007fc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c000800:	02800484 	addi.w	$r4,$r4,1(0x1)
1c000804:	0014b58c 	and	$r12,$r12,$r13
1c000808:	00150085 	move	$r5,$r4
1c00080c:	02bffd8e 	addi.w	$r14,$r12,-1(0xfff)
1c000810:	58007580 	beq	$r12,$r0,116(0x74) # 1c000884 <bit_count+0x94>
1c000814:	0014b986 	and	$r6,$r12,$r14
1c000818:	02800484 	addi.w	$r4,$r4,1(0x1)
1c00081c:	02bffcc7 	addi.w	$r7,$r6,-1(0xfff)
1c000820:	580064c0 	beq	$r6,$r0,100(0x64) # 1c000884 <bit_count+0x94>
1c000824:	00149cc8 	and	$r8,$r6,$r7
1c000828:	028008a4 	addi.w	$r4,$r5,2(0x2)
1c00082c:	02bffd09 	addi.w	$r9,$r8,-1(0xfff)
1c000830:	58005500 	beq	$r8,$r0,84(0x54) # 1c000884 <bit_count+0x94>
1c000834:	0014a50a 	and	$r10,$r8,$r9
1c000838:	02800ca4 	addi.w	$r4,$r5,3(0x3)
1c00083c:	02bffd4b 	addi.w	$r11,$r10,-1(0xfff)
1c000840:	58004540 	beq	$r10,$r0,68(0x44) # 1c000884 <bit_count+0x94>
1c000844:	0014ad4f 	and	$r15,$r10,$r11
1c000848:	028010a4 	addi.w	$r4,$r5,4(0x4)
1c00084c:	02bffdf0 	addi.w	$r16,$r15,-1(0xfff)
1c000850:	580035e0 	beq	$r15,$r0,52(0x34) # 1c000884 <bit_count+0x94>
1c000854:	0014c1f1 	and	$r17,$r15,$r16
1c000858:	028014a4 	addi.w	$r4,$r5,5(0x5)
1c00085c:	02bffe32 	addi.w	$r18,$r17,-1(0xfff)
1c000860:	58002620 	beq	$r17,$r0,36(0x24) # 1c000884 <bit_count+0x94>
1c000864:	0014ca33 	and	$r19,$r17,$r18
1c000868:	028018a4 	addi.w	$r4,$r5,6(0x6)
1c00086c:	02bffe74 	addi.w	$r20,$r19,-1(0xfff)
1c000870:	58001660 	beq	$r19,$r0,20(0x14) # 1c000884 <bit_count+0x94>
1c000874:	0014d26c 	and	$r12,$r19,$r20
1c000878:	02801ca4 	addi.w	$r4,$r5,7(0x7)
1c00087c:	5fff8180 	bne	$r12,$r0,-128(0x3ff80) # 1c0007fc <bit_count+0xc>
1c000880:	4c000020 	jirl	$r0,$r1,0
1c000884:	4c000020 	jirl	$r0,$r1,0
1c000888:	03400000 	andi	$r0,$r0,0x0
1c00088c:	03400000 	andi	$r0,$r0,0x0

1c000890 <bitcount>:
bitcount():
1c000890:	14aaaaac 	lu12i.w	$r12,349525(0x55555)
1c000894:	03955585 	ori	$r5,$r12,0x555
1c000898:	0044848e 	srli.w	$r14,$r4,0x1
1c00089c:	001495c7 	and	$r7,$r14,$r5
1c0008a0:	00149484 	and	$r4,$r4,$r5
1c0008a4:	001010e9 	add.w	$r9,$r7,$r4
1c0008a8:	1466666d 	lu12i.w	$r13,209715(0x33333)
1c0008ac:	038ccdb1 	ori	$r17,$r13,0x333
1c0008b0:	0044892a 	srli.w	$r10,$r9,0x2
1c0008b4:	0014c52b 	and	$r11,$r9,$r17
1c0008b8:	0014c552 	and	$r18,$r10,$r17
1c0008bc:	141e1e10 	lu12i.w	$r16,61680(0xf0f0)
1c0008c0:	00102e53 	add.w	$r19,$r18,$r11
1c0008c4:	03bc3e06 	ori	$r6,$r16,0xf0f
1c0008c8:	00449274 	srli.w	$r20,$r19,0x4
1c0008cc:	00149a6c 	and	$r12,$r19,$r6
1c0008d0:	00149a8d 	and	$r13,$r20,$r6
1c0008d4:	001031b0 	add.w	$r16,$r13,$r12
1c0008d8:	1401fe08 	lu12i.w	$r8,4080(0xff0)
1c0008dc:	0383fd0f 	ori	$r15,$r8,0xff
1c0008e0:	0044a205 	srli.w	$r5,$r16,0x8
1c0008e4:	0014be0e 	and	$r14,$r16,$r15
1c0008e8:	0014bcb1 	and	$r17,$r5,$r15
1c0008ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0008f0:	00103a26 	add.w	$r6,$r17,$r14
1c0008f4:	29803066 	st.w	$r6,$r3,12(0xc)
1c0008f8:	2a403067 	ld.hu	$r7,$r3,12(0xc)
1c0008fc:	0044c0c4 	srli.w	$r4,$r6,0x10
1c000900:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000904:	00101c84 	add.w	$r4,$r4,$r7
1c000908:	4c000020 	jirl	$r0,$r1,0
1c00090c:	03400000 	andi	$r0,$r0,0x0

1c000910 <ntbl_bitcount>:
ntbl_bitcount():
1c000910:	00449091 	srli.w	$r17,$r4,0x4
1c000914:	1c000fed 	pcaddu12i	$r13,127(0x7f)
1c000918:	029f31ad 	addi.w	$r13,$r13,1996(0x7cc)
1c00091c:	03403c8c 	andi	$r12,$r4,0xf
1c000920:	0044a08f 	srli.w	$r15,$r4,0x8
1c000924:	03403e25 	andi	$r5,$r17,0xf
1c000928:	001031a6 	add.w	$r6,$r13,$r12
1c00092c:	001015a9 	add.w	$r9,$r13,$r5
1c000930:	0044b08e 	srli.w	$r14,$r4,0xc
1c000934:	03403de7 	andi	$r7,$r15,0xf
1c000938:	280000d3 	ld.b	$r19,$r6,0
1c00093c:	00101daa 	add.w	$r10,$r13,$r7
1c000940:	03403dc8 	andi	$r8,$r14,0xf
1c000944:	0044c090 	srli.w	$r16,$r4,0x10
1c000948:	2800012b 	ld.b	$r11,$r9,0
1c00094c:	28000152 	ld.b	$r18,$r10,0
1c000950:	001021b4 	add.w	$r20,$r13,$r8
1c000954:	03403e0c 	andi	$r12,$r16,0xf
1c000958:	0044d08f 	srli.w	$r15,$r4,0x14
1c00095c:	28000291 	ld.b	$r17,$r20,0
1c000960:	001031a5 	add.w	$r5,$r13,$r12
1c000964:	0044e08e 	srli.w	$r14,$r4,0x18
1c000968:	03403de6 	andi	$r6,$r15,0xf
1c00096c:	00104d69 	add.w	$r9,$r11,$r19
1c000970:	280000a7 	ld.b	$r7,$r5,0
1c000974:	001019b3 	add.w	$r19,$r13,$r6
1c000978:	03403dc8 	andi	$r8,$r14,0xf
1c00097c:	001021aa 	add.w	$r10,$r13,$r8
1c000980:	00104930 	add.w	$r16,$r9,$r18
1c000984:	0044f084 	srli.w	$r4,$r4,0x1c
1c000988:	2800026b 	ld.b	$r11,$r19,0
1c00098c:	001011ad 	add.w	$r13,$r13,$r4
1c000990:	0010460c 	add.w	$r12,$r16,$r17
1c000994:	28000152 	ld.b	$r18,$r10,0
1c000998:	280001b4 	ld.b	$r20,$r13,0
1c00099c:	00101d8f 	add.w	$r15,$r12,$r7
1c0009a0:	00102df1 	add.w	$r17,$r15,$r11
1c0009a4:	00104a25 	add.w	$r5,$r17,$r18
1c0009a8:	001050a4 	add.w	$r4,$r5,$r20
1c0009ac:	4c000020 	jirl	$r0,$r1,0

1c0009b0 <BW_btbl_bitcount>:
BW_btbl_bitcount():
1c0009b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0009b4:	0044a08d 	srli.w	$r13,$r4,0x8
1c0009b8:	2980306d 	st.w	$r13,$r3,12(0xc)
1c0009bc:	2a00306e 	ld.bu	$r14,$r3,12(0xc)
1c0009c0:	0044c08f 	srli.w	$r15,$r4,0x10
1c0009c4:	2980306f 	st.w	$r15,$r3,12(0xc)
1c0009c8:	1c000fec 	pcaddu12i	$r12,127(0x7f)
1c0009cc:	029c618c 	addi.w	$r12,$r12,1816(0x718)
1c0009d0:	2a003065 	ld.bu	$r5,$r3,12(0xc)
1c0009d4:	0343fc90 	andi	$r16,$r4,0xff
1c0009d8:	00104186 	add.w	$r6,$r12,$r16
1c0009dc:	0044e084 	srli.w	$r4,$r4,0x18
1c0009e0:	0010398a 	add.w	$r10,$r12,$r14
1c0009e4:	00101187 	add.w	$r7,$r12,$r4
1c0009e8:	280000c8 	ld.b	$r8,$r6,0
1c0009ec:	28000151 	ld.b	$r17,$r10,0
1c0009f0:	280000e9 	ld.b	$r9,$r7,0
1c0009f4:	0010158b 	add.w	$r11,$r12,$r5
1c0009f8:	28000172 	ld.b	$r18,$r11,0
1c0009fc:	00104513 	add.w	$r19,$r8,$r17
1c000a00:	00102674 	add.w	$r20,$r19,$r9
1c000a04:	00104a84 	add.w	$r4,$r20,$r18
1c000a08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000a0c:	4c000020 	jirl	$r0,$r1,0

1c000a10 <AR_btbl_bitcount>:
AR_btbl_bitcount():
1c000a10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000a14:	0044a08d 	srli.w	$r13,$r4,0x8
1c000a18:	2980306d 	st.w	$r13,$r3,12(0xc)
1c000a1c:	0044c08e 	srli.w	$r14,$r4,0x10
1c000a20:	2a003065 	ld.bu	$r5,$r3,12(0xc)
1c000a24:	2980306e 	st.w	$r14,$r3,12(0xc)
1c000a28:	2a003066 	ld.bu	$r6,$r3,12(0xc)
1c000a2c:	1c000fec 	pcaddu12i	$r12,127(0x7f)
1c000a30:	029ad18c 	addi.w	$r12,$r12,1716(0x6b4)
1c000a34:	0343fc8f 	andi	$r15,$r4,0xff
1c000a38:	00103d87 	add.w	$r7,$r12,$r15
1c000a3c:	0010158b 	add.w	$r11,$r12,$r5
1c000a40:	0044e084 	srli.w	$r4,$r4,0x18
1c000a44:	280000e9 	ld.b	$r9,$r7,0
1c000a48:	28000171 	ld.b	$r17,$r11,0
1c000a4c:	00101990 	add.w	$r16,$r12,$r6
1c000a50:	00101188 	add.w	$r8,$r12,$r4
1c000a54:	28000212 	ld.b	$r18,$r16,0
1c000a58:	2800010a 	ld.b	$r10,$r8,0
1c000a5c:	00102633 	add.w	$r19,$r17,$r9
1c000a60:	00104e54 	add.w	$r20,$r18,$r19
1c000a64:	00105144 	add.w	$r4,$r10,$r20
1c000a68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000a6c:	4c000020 	jirl	$r0,$r1,0

1c000a70 <ntbl_bitcnt>:
ntbl_bitcnt():
1c000a70:	1c000fee 	pcaddu12i	$r14,127(0x7f)
1c000a74:	029dc1ce 	addi.w	$r14,$r14,1904(0x770)
1c000a78:	03403c8d 	andi	$r13,$r4,0xf
1c000a7c:	0048908c 	srai.w	$r12,$r4,0x4
1c000a80:	001035c4 	add.w	$r4,$r14,$r13
1c000a84:	28000084 	ld.b	$r4,$r4,0
1c000a88:	5800e980 	beq	$r12,$r0,232(0xe8) # 1c000b70 <ntbl_bitcnt+0x100>
1c000a8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000a90:	29803077 	st.w	$r23,$r3,12(0xc)
1c000a94:	29802078 	st.w	$r24,$r3,8(0x8)
1c000a98:	0015000d 	move	$r13,$r0
1c000a9c:	03403d8f 	andi	$r15,$r12,0xf
1c000aa0:	00489187 	srai.w	$r7,$r12,0x4
1c000aa4:	0048a188 	srai.w	$r8,$r12,0x8
1c000aa8:	0048b189 	srai.w	$r9,$r12,0xc
1c000aac:	0048c18a 	srai.w	$r10,$r12,0x10
1c000ab0:	0048d18b 	srai.w	$r11,$r12,0x14
1c000ab4:	0048e197 	srai.w	$r23,$r12,0x18
1c000ab8:	0048f198 	srai.w	$r24,$r12,0x1c
1c000abc:	03403cf0 	andi	$r16,$r7,0xf
1c000ac0:	03403d11 	andi	$r17,$r8,0xf
1c000ac4:	03403d32 	andi	$r18,$r9,0xf
1c000ac8:	00103dcf 	add.w	$r15,$r14,$r15
1c000acc:	03403d53 	andi	$r19,$r10,0xf
1c000ad0:	03403d74 	andi	$r20,$r11,0xf
1c000ad4:	03403ee5 	andi	$r5,$r23,0xf
1c000ad8:	03403f06 	andi	$r6,$r24,0xf
1c000adc:	001011ad 	add.w	$r13,$r13,$r4
1c000ae0:	001041d0 	add.w	$r16,$r14,$r16
1c000ae4:	001045d1 	add.w	$r17,$r14,$r17
1c000ae8:	001049d2 	add.w	$r18,$r14,$r18
1c000aec:	00104dd3 	add.w	$r19,$r14,$r19
1c000af0:	001051d4 	add.w	$r20,$r14,$r20
1c000af4:	001015c5 	add.w	$r5,$r14,$r5
1c000af8:	001019c6 	add.w	$r6,$r14,$r6
1c000afc:	0048fd8c 	srai.w	$r12,$r12,0x1f
1c000b00:	280001e4 	ld.b	$r4,$r15,0
1c000b04:	580058e0 	beq	$r7,$r0,88(0x58) # 1c000b5c <ntbl_bitcnt+0xec>
1c000b08:	001011ad 	add.w	$r13,$r13,$r4
1c000b0c:	28000204 	ld.b	$r4,$r16,0
1c000b10:	58004d00 	beq	$r8,$r0,76(0x4c) # 1c000b5c <ntbl_bitcnt+0xec>
1c000b14:	001011ad 	add.w	$r13,$r13,$r4
1c000b18:	28000224 	ld.b	$r4,$r17,0
1c000b1c:	58004120 	beq	$r9,$r0,64(0x40) # 1c000b5c <ntbl_bitcnt+0xec>
1c000b20:	001011ad 	add.w	$r13,$r13,$r4
1c000b24:	28000244 	ld.b	$r4,$r18,0
1c000b28:	58003540 	beq	$r10,$r0,52(0x34) # 1c000b5c <ntbl_bitcnt+0xec>
1c000b2c:	001011ad 	add.w	$r13,$r13,$r4
1c000b30:	28000264 	ld.b	$r4,$r19,0
1c000b34:	58002960 	beq	$r11,$r0,40(0x28) # 1c000b5c <ntbl_bitcnt+0xec>
1c000b38:	001011ad 	add.w	$r13,$r13,$r4
1c000b3c:	28000284 	ld.b	$r4,$r20,0
1c000b40:	58001ee0 	beq	$r23,$r0,28(0x1c) # 1c000b5c <ntbl_bitcnt+0xec>
1c000b44:	001011ad 	add.w	$r13,$r13,$r4
1c000b48:	280000a4 	ld.b	$r4,$r5,0
1c000b4c:	58001300 	beq	$r24,$r0,16(0x10) # 1c000b5c <ntbl_bitcnt+0xec>
1c000b50:	001011ad 	add.w	$r13,$r13,$r4
1c000b54:	280000c4 	ld.b	$r4,$r6,0
1c000b58:	5fff4580 	bne	$r12,$r0,-188(0x3ff44) # 1c000a9c <ntbl_bitcnt+0x2c>
1c000b5c:	28803077 	ld.w	$r23,$r3,12(0xc)
1c000b60:	28802078 	ld.w	$r24,$r3,8(0x8)
1c000b64:	00103484 	add.w	$r4,$r4,$r13
1c000b68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000b6c:	4c000020 	jirl	$r0,$r1,0
1c000b70:	4c000020 	jirl	$r0,$r1,0
1c000b74:	03400000 	andi	$r0,$r0,0x0
1c000b78:	03400000 	andi	$r0,$r0,0x0
1c000b7c:	03400000 	andi	$r0,$r0,0x0

1c000b80 <btbl_bitcnt>:
btbl_bitcnt():
1c000b80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000b84:	29803064 	st.w	$r4,$r3,12(0xc)
1c000b88:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c000b8c:	1c000fee 	pcaddu12i	$r14,127(0x7f)
1c000b90:	029951ce 	addi.w	$r14,$r14,1620(0x654)
1c000b94:	0048a08d 	srai.w	$r13,$r4,0x8
1c000b98:	001031c4 	add.w	$r4,$r14,$r12
1c000b9c:	28000084 	ld.b	$r4,$r4,0
1c000ba0:	5800a5a0 	beq	$r13,$r0,164(0xa4) # 1c000c44 <btbl_bitcnt+0xc4>
1c000ba4:	00150008 	move	$r8,$r0
1c000ba8:	2980306d 	st.w	$r13,$r3,12(0xc)
1c000bac:	0048a1b4 	srai.w	$r20,$r13,0x8
1c000bb0:	2a00306f 	ld.bu	$r15,$r3,12(0xc)
1c000bb4:	0048c1a5 	srai.w	$r5,$r13,0x10
1c000bb8:	29803074 	st.w	$r20,$r3,12(0xc)
1c000bbc:	2a003070 	ld.bu	$r16,$r3,12(0xc)
1c000bc0:	0048e1a6 	srai.w	$r6,$r13,0x18
1c000bc4:	29803065 	st.w	$r5,$r3,12(0xc)
1c000bc8:	2a003071 	ld.bu	$r17,$r3,12(0xc)
1c000bcc:	0048fda7 	srai.w	$r7,$r13,0x1f
1c000bd0:	29803066 	st.w	$r6,$r3,12(0xc)
1c000bd4:	2a003072 	ld.bu	$r18,$r3,12(0xc)
1c000bd8:	29803067 	st.w	$r7,$r3,12(0xc)
1c000bdc:	2a003073 	ld.bu	$r19,$r3,12(0xc)
1c000be0:	0010110c 	add.w	$r12,$r8,$r4
1c000be4:	00103dc8 	add.w	$r8,$r14,$r15
1c000be8:	001500ed 	move	$r13,$r7
1c000bec:	001041c9 	add.w	$r9,$r14,$r16
1c000bf0:	001045ca 	add.w	$r10,$r14,$r17
1c000bf4:	001049cb 	add.w	$r11,$r14,$r18
1c000bf8:	28000104 	ld.b	$r4,$r8,0
1c000bfc:	00104dcf 	add.w	$r15,$r14,$r19
1c000c00:	58004280 	beq	$r20,$r0,64(0x40) # 1c000c40 <btbl_bitcnt+0xc0>
1c000c04:	0010118c 	add.w	$r12,$r12,$r4
1c000c08:	28000124 	ld.b	$r4,$r9,0
1c000c0c:	580034a0 	beq	$r5,$r0,52(0x34) # 1c000c40 <btbl_bitcnt+0xc0>
1c000c10:	0010118c 	add.w	$r12,$r12,$r4
1c000c14:	28000144 	ld.b	$r4,$r10,0
1c000c18:	580028c0 	beq	$r6,$r0,40(0x28) # 1c000c40 <btbl_bitcnt+0xc0>
1c000c1c:	0010118c 	add.w	$r12,$r12,$r4
1c000c20:	28000164 	ld.b	$r4,$r11,0
1c000c24:	58001ce0 	beq	$r7,$r0,28(0x1c) # 1c000c40 <btbl_bitcnt+0xc0>
1c000c28:	00101194 	add.w	$r20,$r12,$r4
1c000c2c:	280001e4 	ld.b	$r4,$r15,0
1c000c30:	00101285 	add.w	$r5,$r20,$r4
1c000c34:	001010a6 	add.w	$r6,$r5,$r4
1c000c38:	001010c8 	add.w	$r8,$r6,$r4
1c000c3c:	53ff6fff 	b	-148(0xfffff6c) # 1c000ba8 <btbl_bitcnt+0x28>
1c000c40:	00103084 	add.w	$r4,$r4,$r12
1c000c44:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000c48:	4c000020 	jirl	$r0,$r1,0
1c000c4c:	03400000 	andi	$r0,$r0,0x0

1c000c50 <printf>:
printf():
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
int printf(const char *fmt,...)
{
1c000c50:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c000c54:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c000c58:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000c5c:	2980e077 	st.w	$r23,$r3,56(0x38)
1c000c60:	2980d078 	st.w	$r24,$r3,52(0x34)
1c000c64:	2980c079 	st.w	$r25,$r3,48(0x30)
1c000c68:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c000c6c:	2980907c 	st.w	$r28,$r3,36(0x24)
1c000c70:	29811065 	st.w	$r5,$r3,68(0x44)
1c000c74:	29812066 	st.w	$r6,$r3,72(0x48)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c000c78:	28000097 	ld.b	$r23,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c000c7c:	0281107a 	addi.w	$r26,$r3,68(0x44)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
{
1c000c80:	29813067 	st.w	$r7,$r3,76(0x4c)
1c000c84:	29814068 	st.w	$r8,$r3,80(0x50)
1c000c88:	29815069 	st.w	$r9,$r3,84(0x54)
1c000c8c:	2981606a 	st.w	$r10,$r3,88(0x58)
1c000c90:	2981706b 	st.w	$r11,$r3,92(0x5c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c000c94:	2980707a 	st.w	$r26,$r3,28(0x1c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
for(i=0;fmt[i];i++)
1c000c98:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c000d20 <printf+0xd0>
1c000c9c:	00150099 	move	$r25,$r4
1c000ca0:	00150018 	move	$r24,$r0
1c000ca4:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c000ca8:	0298f39c 	addi.w	$r28,$r28,1596(0x63c)
1c000cac:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c000cb0:	50001c00 	b	28(0x1c) # 1c000ccc <printf+0x7c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c000cb4:	001502e4 	move	$r4,$r23
1c000cb8:	5401d800 	bl	472(0x1d8) # 1c000e90 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c000cbc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000cc0:	0010632c 	add.w	$r12,$r25,$r24
1c000cc4:	28000197 	ld.b	$r23,$r12,0
1c000cc8:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c000d20 <printf+0xd0>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:13
	if(c=='%')
1c000ccc:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c000cd0:	58001aec 	beq	$r23,$r12,24(0x18) # 1c000ce8 <printf+0x98>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c000cd4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c000cd8:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c000cb4 <printf+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79 (discriminator 1)
1c000cdc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000ce0:	5401b000 	bl	432(0x1b0) # 1c000e90 <putchar>
1c000ce4:	53ffd3ff 	b	-48(0xfffffd0) # 1c000cb4 <printf+0x64>
1c000ce8:	0010632c 	add.w	$r12,$r25,$r24
1c000cec:	2800058d 	ld.b	$r13,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:15
		w=1;
1c000cf0:	02800405 	addi.w	$r5,$r0,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c000cf4:	02814c10 	addi.w	$r16,$r0,83(0x53)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c000cf8:	0280280f 	addi.w	$r15,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c000cfc:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c000d00:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000d04:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c000d08:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c000e80 <printf+0x230>
1c000d0c:	0040898c 	slli.w	$r12,$r12,0x2
1c000d10:	0010338c 	add.w	$r12,$r28,$r12
1c000d14:	2880018c 	ld.w	$r12,$r12,0
1c000d18:	4c000180 	jirl	$r0,$r12,0
1c000d1c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:84
	}
}
	return 0;
}
1c000d20:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c000d24:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c000d28:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c000d2c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c000d30:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c000d34:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c000d38:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c000d3c:	00150004 	move	$r4,$r0
1c000d40:	02818063 	addi.w	$r3,$r3,96(0x60)
1c000d44:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:65
				i++;
1c000d48:	0010632c 	add.w	$r12,$r25,$r24
1c000d4c:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c000d50:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000d54:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c000d58:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000d5c:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c000d60:	00150005 	move	$r5,$r0
1c000d64:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c000cfc <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000d68:	001c3ca5 	mul.w	$r5,$r5,$r15
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000d6c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000d70:	0010632c 	add.w	$r12,$r25,$r24
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000d74:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000d78:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c000d7c:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c000d80:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000d84:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000d88:	001015c5 	add.w	$r5,$r14,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000d8c:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c000d68 <printf+0x118>
1c000d90:	53ff6fff 	b	-148(0xfffff6c) # 1c000cfc <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c000d94:	28800344 	ld.w	$r4,$r26,0
1c000d98:	00150007 	move	$r7,$r0
1c000d9c:	02800806 	addi.w	$r6,$r0,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:51
				arg++;
1c000da0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:52
				i++;
1c000da4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c000da8:	5401f800 	bl	504(0x1f8) # 1c000fa0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:53
				break;
1c000dac:	53ff13ff 	b	-240(0xfffff10) # 1c000cbc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c000db0:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:27
				i++;
1c000db4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:26
				arg++;
1c000db8:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c000dbc:	5400d400 	bl	212(0xd4) # 1c000e90 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:28
				break;
1c000dc0:	53feffff 	b	-260(0xffffefc) # 1c000cbc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c000dc4:	28800344 	ld.w	$r4,$r26,0
1c000dc8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c000dcc:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:36
				arg++;
1c000dd0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:37
				i++;
1c000dd4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c000dd8:	5401c800 	bl	456(0x1c8) # 1c000fa0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:38
				break;
1c000ddc:	53fee3ff 	b	-288(0xffffee0) # 1c000cbc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c000de0:	28800344 	ld.w	$r4,$r26,0
1c000de4:	00150007 	move	$r7,$r0
1c000de8:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:41
                arg++;
1c000dec:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:42
                i=i+2;
1c000df0:	02800b18 	addi.w	$r24,$r24,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c000df4:	5401ac00 	bl	428(0x1ac) # 1c000fa0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:43
                break;
1c000df8:	53fec7ff 	b	-316(0xffffec4) # 1c000cbc <printf+0x6c>
1c000dfc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c000e00:	28800344 	ld.w	$r4,$r26,0
1c000e04:	00150007 	move	$r7,$r0
1c000e08:	02802006 	addi.w	$r6,$r0,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:46
				arg++;
1c000e0c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:47
				i++;
1c000e10:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c000e14:	54018c00 	bl	396(0x18c) # 1c000fa0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:48
				break;
1c000e18:	53fea7ff 	b	-348(0xffffea4) # 1c000cbc <printf+0x6c>
1c000e1c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c000e20:	28800344 	ld.w	$r4,$r26,0
1c000e24:	00150007 	move	$r7,$r0
1c000e28:	02804006 	addi.w	$r6,$r0,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:57
				arg++;
1c000e2c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:58
				i++;
1c000e30:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c000e34:	54016c00 	bl	364(0x16c) # 1c000fa0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:59
				break;
1c000e38:	53fe87ff 	b	-380(0xffffe84) # 1c000cbc <printf+0x6c>
1c000e3c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c000e40:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:22
				i++;
1c000e44:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:21
				arg++;
1c000e48:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c000e4c:	5400a400 	bl	164(0xa4) # 1c000ef0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:23
				break;
1c000e50:	53fe6fff 	b	-404(0xffffe6c) # 1c000cbc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c000e54:	28800344 	ld.w	$r4,$r26,0
1c000e58:	00150007 	move	$r7,$r0
1c000e5c:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:31
				arg++;
1c000e60:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:32
				i++;
1c000e64:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c000e68:	54013800 	bl	312(0x138) # 1c000fa0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:33
				break;
1c000e6c:	53fe53ff 	b	-432(0xffffe50) # 1c000cbc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c000e70:	02809404 	addi.w	$r4,$r0,37(0x25)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:62
				i++;
1c000e74:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c000e78:	54001800 	bl	24(0x18) # 1c000e90 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:63
				break;
1c000e7c:	53fe43ff 	b	-448(0xffffe40) # 1c000cbc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:73
				putchar('%');
1c000e80:	02809404 	addi.w	$r4,$r0,37(0x25)
1c000e84:	54000c00 	bl	12(0xc) # 1c000e90 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:74
				break;
1c000e88:	53fe37ff 	b	-460(0xffffe34) # 1c000cbc <printf+0x6c>
1c000e8c:	03400000 	andi	$r0,$r0,0x0

1c000e90 <putchar>:
putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:2
int putchar(int c)
{
1c000e90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000e94:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c000e98:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c000e9c:	03bc4339 	ori	$r25,$r25,0xf10
1c000ea0:	29000324 	st.b	$r4,$r25,0
1c000ea4:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:5
}
1c000ea8:	00150004 	move	$r4,$r0
1c000eac:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000eb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000eb4:	4c000020 	jirl	$r0,$r1,0
1c000eb8:	03400000 	andi	$r0,$r0,0x0
1c000ebc:	03400000 	andi	$r0,$r0,0x0

1c000ec0 <tgt_putchar>:
tgt_putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:8
{   //UART_ADDR
1c000ec0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000ec4:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
    asm(
1c000ec8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c000ecc:	03bc4339 	ori	$r25,$r25,0xf10
1c000ed0:	29000324 	st.b	$r4,$r25,0
1c000ed4:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c000ed8:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000edc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000ee0:	4c000020 	jirl	$r0,$r1,0
1c000ee4:	03400000 	andi	$r0,$r0,0x0
1c000ee8:	03400000 	andi	$r0,$r0,0x0
1c000eec:	03400000 	andi	$r0,$r0,0x0

1c000ef0 <putstring>:
putstring():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:2
int putstring(char *s)
{
1c000ef0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000ef4:	29803061 	st.w	$r1,$r3,12(0xc)
1c000ef8:	29802077 	st.w	$r23,$r3,8(0x8)
1c000efc:	29801078 	st.w	$r24,$r3,4(0x4)
1c000f00:	29800079 	st.w	$r25,$r3,0
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
char c;
while((c=*s))
1c000f04:	28000097 	ld.b	$r23,$r4,0
1c000f08:	580042e0 	beq	$r23,$r0,64(0x40) # 1c000f48 <putstring+0x58>
1c000f0c:	00150098 	move	$r24,$r4
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c000f10:	02802819 	addi.w	$r25,$r0,10(0xa)
1c000f14:	50001400 	b	20(0x14) # 1c000f28 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7
 putchar(c);
1c000f18:	001502e4 	move	$r4,$r23
1c000f1c:	57ff77ff 	bl	-140(0xfffff74) # 1c000e90 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
while((c=*s))
1c000f20:	28000317 	ld.b	$r23,$r24,0
1c000f24:	580026e0 	beq	$r23,$r0,36(0x24) # 1c000f48 <putstring+0x58>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:8
 s++;
1c000f28:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c000f2c:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c000f18 <putstring+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6 (discriminator 1)
1c000f30:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000f34:	57ff5fff 	bl	-164(0xfffff5c) # 1c000e90 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c000f38:	001502e4 	move	$r4,$r23
1c000f3c:	57ff57ff 	bl	-172(0xfffff54) # 1c000e90 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c000f40:	28000317 	ld.b	$r23,$r24,0
1c000f44:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c000f28 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:11
}
return 0;
}
1c000f48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000f4c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c000f50:	28801078 	ld.w	$r24,$r3,4(0x4)
1c000f54:	28800079 	ld.w	$r25,$r3,0
1c000f58:	00150004 	move	$r4,$r0
1c000f5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000f60:	4c000020 	jirl	$r0,$r1,0
1c000f64:	03400000 	andi	$r0,$r0,0x0
1c000f68:	03400000 	andi	$r0,$r0,0x0
1c000f6c:	03400000 	andi	$r0,$r0,0x0

1c000f70 <puts>:
puts():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:15


int puts(char *s)
{
1c000f70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000f74:	29803061 	st.w	$r1,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:16
putstring(s);
1c000f78:	57ff7bff 	bl	-136(0xfffff78) # 1c000ef0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:17
putchar('\r');
1c000f7c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000f80:	57ff13ff 	bl	-240(0xfffff10) # 1c000e90 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:18
putchar('\n');
1c000f84:	02802804 	addi.w	$r4,$r0,10(0xa)
1c000f88:	57ff0bff 	bl	-248(0xfffff08) # 1c000e90 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:20
return 0;
}
1c000f8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000f90:	00150004 	move	$r4,$r0
1c000f94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000f98:	4c000020 	jirl	$r0,$r1,0
1c000f9c:	03400000 	andi	$r0,$r0,0x0

1c000fa0 <printbase>:
printbase():
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c000fa0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c000fa4:	29816077 	st.w	$r23,$r3,88(0x58)
1c000fa8:	29817061 	st.w	$r1,$r3,92(0x5c)
1c000fac:	29815078 	st.w	$r24,$r3,84(0x54)
1c000fb0:	29814079 	st.w	$r25,$r3,80(0x50)
1c000fb4:	00150097 	move	$r23,$r4
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c000fb8:	580008e0 	beq	$r7,$r0,8(0x8) # 1c000fc0 <printbase+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7 (discriminator 1)
1c000fbc:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c001060 <printbase+0xc0>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c000fc0:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c001080 <printbase+0xe0>
1c000fc4:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c000fc8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000fcc:	001131ce 	sub.w	$r14,$r14,$r12
1c000fd0:	50000800 	b	8(0x8) # 1c000fd8 <printbase+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c000fd4:	001501b7 	move	$r23,$r13
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c000fd8:	00219aed 	mod.wu	$r13,$r23,$r6
1c000fdc:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c000fe4 <printbase+0x44>
1c000fe0:	002a0007 	break	0x7
1c000fe4:	2900018d 	st.b	$r13,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c000fe8:	001031d8 	add.w	$r24,$r14,$r12
1c000fec:	00211aed 	div.wu	$r13,$r23,$r6
1c000ff0:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c000ff8 <printbase+0x58>
1c000ff4:	002a0007 	break	0x7
1c000ff8:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c000ffc:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c000fd4 <printbase+0x34>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c001000:	600058b8 	blt	$r5,$r24,88(0x58) # 1c001058 <printbase+0xb8>
1c001004:	001500b7 	move	$r23,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001008:	02802419 	addi.w	$r25,$r0,9(0x9)
1c00100c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c001010:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001014:	00105d8c 	add.w	$r12,$r12,$r23
1c001018:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00101c:	60001717 	blt	$r24,$r23,20(0x14) # 1c001030 <printbase+0x90>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24 (discriminator 1)
1c001020:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001024:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c001028:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c001030 <printbase+0x90>
1c00102c:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c001030:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 4)
1c001034:	57fe5fff 	bl	-420(0xffffe5c) # 1c000e90 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c001038:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c001010 <printbase+0x70>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:28
	}
	return 0;
}
1c00103c:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c001040:	28816077 	ld.w	$r23,$r3,88(0x58)
1c001044:	28815078 	ld.w	$r24,$r3,84(0x54)
1c001048:	28814079 	ld.w	$r25,$r3,80(0x50)
1c00104c:	00150004 	move	$r4,$r0
1c001050:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001054:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c001058:	00150305 	move	$r5,$r24
1c00105c:	53ffabff 	b	-88(0xfffffa8) # 1c001004 <printbase+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c001060:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001064:	29803066 	st.w	$r6,$r3,12(0xc)
1c001068:	29802065 	st.w	$r5,$r3,8(0x8)
1c00106c:	57fe27ff 	bl	-476(0xffffe24) # 1c000e90 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:9
	value = -v;
1c001070:	00115c17 	sub.w	$r23,$r0,$r23
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c001074:	28802065 	ld.w	$r5,$r3,8(0x8)
1c001078:	28803066 	ld.w	$r6,$r3,12(0xc)
1c00107c:	53ff4bff 	b	-184(0xfffff48) # 1c000fc4 <printbase+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c001080:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c00103c <printbase+0x9c>
1c001084:	00150018 	move	$r24,$r0
1c001088:	53ff7fff 	b	-132(0xfffff7c) # 1c001004 <printbase+0x64>
1c00108c:	03400000 	andi	$r0,$r0,0x0

1c001090 <get_count>:
get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c001090:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001094:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001098:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00109c:	28800324 	ld.w	$r4,$r25,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
    return  _get_count();
}
1c0010a0:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0010a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0010a8:	4c000020 	jirl	$r0,$r1,0
1c0010ac:	03400000 	andi	$r0,$r0,0x0

1c0010b0 <_get_count>:
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
1c0010b0:	53ffe3ff 	b	-32(0xfffffe0) # 1c001090 <get_count>
1c0010b4:	03400000 	andi	$r0,$r0,0x0
1c0010b8:	03400000 	andi	$r0,$r0,0x0
1c0010bc:	03400000 	andi	$r0,$r0,0x0

1c0010c0 <get_count_my>:
get_count_my():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c0010c0:	00006004 	rdtimel.w	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c0010c4:	4c000020 	jirl	$r0,$r1,0
1c0010c8:	03400000 	andi	$r0,$r0,0x0
1c0010cc:	03400000 	andi	$r0,$r0,0x0

1c0010d0 <clock_gettime>:
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c0010d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0010d4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c0010d8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0010dc:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c0010e0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0010e4:	001c35ed 	mul.w	$r13,$r15,$r13
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0010e8:	02819011 	addi.w	$r17,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0010ec:	1400030e 	lu12i.w	$r14,24(0x18)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0010f0:	002145f0 	div.wu	$r16,$r15,$r17
1c0010f4:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c0010fc <clock_gettime+0x2c>
1c0010f8:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c0010fc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001100:	039a81ce 	ori	$r14,$r14,0x6a0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001104:	0021b211 	mod.wu	$r17,$r16,$r12
1c001108:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001110 <clock_gettime+0x40>
1c00110c:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001110:	002139f0 	div.wu	$r16,$r15,$r14
1c001114:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c00111c <clock_gettime+0x4c>
1c001118:	002a0007 	break	0x7
1c00111c:	0021b20e 	mod.wu	$r14,$r16,$r12
1c001120:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001128 <clock_gettime+0x58>
1c001124:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c001128:	298000a0 	st.w	$r0,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00112c:	298030ae 	st.w	$r14,$r5,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001130:	298020b1 	st.w	$r17,$r5,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c001134:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001138:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00113c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001140:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001148 <clock_gettime+0x78>
1c001144:	002a0007 	break	0x7
1c001148:	298010ae 	st.w	$r14,$r5,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
}
1c00114c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001150:	4c000020 	jirl	$r0,$r1,0
1c001154:	03400000 	andi	$r0,$r0,0x0
1c001158:	03400000 	andi	$r0,$r0,0x0
1c00115c:	03400000 	andi	$r0,$r0,0x0

1c001160 <get_clock>:
get_clock():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
1c001160:	53ff33ff 	b	-208(0xfffff30) # 1c001090 <get_count>
1c001164:	03400000 	andi	$r0,$r0,0x0
1c001168:	03400000 	andi	$r0,$r0,0x0
1c00116c:	03400000 	andi	$r0,$r0,0x0

1c001170 <get_ns>:
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c001170:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001174:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001178:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00117c:	28800324 	ld.w	$r4,$r25,0
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c001180:	0280280c 	addi.w	$r12,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:57
    return n;
}
1c001184:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001188:	001c3084 	mul.w	$r4,$r4,$r12
1c00118c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001190:	4c000020 	jirl	$r0,$r1,0
1c001194:	03400000 	andi	$r0,$r0,0x0
1c001198:	03400000 	andi	$r0,$r0,0x0
1c00119c:	03400000 	andi	$r0,$r0,0x0

1c0011a0 <get_us>:
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:61


unsigned long get_us(void)
{
1c0011a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0011a4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c0011a8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0011ac:	28800324 	ld.w	$r4,$r25,0
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c0011b0:	0281900c 	addi.w	$r12,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:66
    return n;
}
1c0011b4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0011b8:	0021308d 	div.wu	$r13,$r4,$r12
1c0011bc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0011c4 <get_us+0x24>
1c0011c0:	002a0007 	break	0x7
1c0011c4:	001501a4 	move	$r4,$r13
1c0011c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0011cc:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <pBitCntFunc.1682-0xc4>:
1c080000:	63746962 	blt	$r11,$r2,-35736(0x37468) # 1c077468 <_data_lma+0x76298>
1c080004:	746e756f 	0x746e756f
1c080008:	73657420 	vssrani.wu.d	$vr0,$vr1,0x1d
1c08000c:	65622074 	bge	$r3,$r20,90656(0x16220) # 1c09622c <rodata_end+0x15dfc>
1c080010:	2e6e6967 	0x2e6e6967
1c080014:	00000000 	0x00000000
1c080018:	63746962 	blt	$r11,$r2,-35736(0x37468) # 1c077480 <_data_lma+0x762b0>
1c08001c:	746e756f 	0x746e756f
1c080020:	53415020 	b	8601936(0x834150) # 1c8b4170 <_stack+0x7b4174>
1c080024:	00002153 	clo.d	$r19,$r10
1c080028:	63746962 	blt	$r11,$r2,-35736(0x37468) # 1c077490 <_data_lma+0x762c0>
1c08002c:	746e756f 	0x746e756f
1c080030:	52524520 	b	75649604(0x4825244) # 208a5274 <_stack+0x47a5278>
1c080034:	2121524f 	sc.w	$r15,$r18,8528(0x2150)
1c080038:	00000021 	0x00000021
1c08003c:	73746942 	0x73746942
1c080040:	6c25203a 	bgeu	$r1,$r26,9504(0x2520) # 1c082560 <rodata_end+0x2130>
1c080044:	00000a64 	0x00000a64
1c080048:	63746962 	blt	$r11,$r2,-35736(0x37468) # 1c0774b0 <_data_lma+0x762e0>
1c08004c:	746e756f 	0x746e756f
1c080050:	6f54203a 	bgeu	$r1,$r26,-44000(0x35420) # 1c075470 <_data_lma+0x742a0>
1c080054:	206c6174 	ll.w	$r20,$r11,27744(0x6c60)
1c080058:	6e756f43 	bgeu	$r26,$r3,-101012(0x2756c) # 1c0675c4 <_data_lma+0x663f4>
1c08005c:	6f532874 	bgeu	$r3,$r20,-44248(0x35328) # 1c075384 <_data_lma+0x741b4>
1c080060:	6f632043 	bgeu	$r2,$r3,-40160(0x36320) # 1c076380 <_data_lma+0x751b0>
1c080064:	29746e75 	st.h	$r21,$r19,-741(0xd1b)
1c080068:	30203d20 	vldrepl.w	$vr0,$r9,60(0x3c)
1c08006c:	0a782578 	0x0a782578
1c080070:	00000000 	0x00000000
1c080074:	63746962 	blt	$r11,$r2,-35736(0x37468) # 1c0774dc <_data_lma+0x7630c>
1c080078:	746e756f 	0x746e756f
1c08007c:	6f54203a 	bgeu	$r1,$r26,-44000(0x35420) # 1c07549c <_data_lma+0x742cc>
1c080080:	206c6174 	ll.w	$r20,$r11,27744(0x6c60)
1c080084:	6e756f43 	bgeu	$r26,$r3,-101012(0x2756c) # 1c0675f0 <_data_lma+0x66420>
1c080088:	50432874 	b	30425896(0x1d04328) # 1dd843b0 <_stack+0x1c843b4>
1c08008c:	6f632055 	bgeu	$r2,$r21,-40160(0x36320) # 1c0763ac <_data_lma+0x751dc>
1c080090:	29746e75 	st.h	$r21,$r19,-741(0xd1b)
1c080094:	30203d20 	vldrepl.w	$vr0,$r9,60(0x3c)
1c080098:	0a782578 	0x0a782578
1c08009c:	00000000 	0x00000000
1c0800a0:	20746942 	ll.w	$r2,$r10,29800(0x7468)
1c0800a4:	6e756f63 	bgeu	$r27,$r3,-101012(0x2756c) # 1c067610 <_data_lma+0x66440>
1c0800a8:	20726574 	ll.w	$r20,$r11,29284(0x7264)
1c0800ac:	6f676c61 	bgeu	$r3,$r1,-39060(0x3676c) # 1c076818 <_data_lma+0x75648>
1c0800b0:	68746972 	bltu	$r11,$r18,29800(0x7468) # 1c087518 <rodata_end+0x70e8>
1c0800b4:	6562206d 	bge	$r3,$r13,90656(0x16220) # 1c0962d4 <rodata_end+0x15ea4>
1c0800b8:	6d68636e 	bgeu	$r27,$r14,92256(0x16860) # 1c096918 <rodata_end+0x164e8>
1c0800bc:	0a6b7261 	xvfmsub.d	$xr1,$xr19,$xr28,$xr22
1c0800c0:	00000000 	0x00000000

1c0800c4 <pBitCntFunc.1682>:
1c0800c4:	1c0007f0 	pcaddu12i	$r16,63(0x3f)
1c0800c8:	1c000890 	pcaddu12i	$r16,68(0x44)
1c0800cc:	1c000a70 	pcaddu12i	$r16,83(0x53)
1c0800d0:	1c000910 	pcaddu12i	$r16,72(0x48)
1c0800d4:	1c0009b0 	pcaddu12i	$r16,77(0x4d)
1c0800d8:	1c000a10 	pcaddu12i	$r16,80(0x50)
1c0800dc:	1c000540 	pcaddu12i	$r0,42(0x2a)

1c0800e0 <bits>:
1c0800e0:	02010100 	slti	$r0,$r8,64(0x40)
1c0800e4:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c0800e8:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c0800ec:	04030302 	csrxchg	$r2,$r24,0xc0
1c0800f0:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c0800f4:	04030302 	csrxchg	$r2,$r24,0xc0
1c0800f8:	04030302 	csrxchg	$r2,$r24,0xc0
1c0800fc:	05040403 	0x05040403
1c080100:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c080104:	04030302 	csrxchg	$r2,$r24,0xc0
1c080108:	04030302 	csrxchg	$r2,$r24,0xc0
1c08010c:	05040403 	0x05040403
1c080110:	04030302 	csrxchg	$r2,$r24,0xc0
1c080114:	05040403 	0x05040403
1c080118:	05040403 	0x05040403
1c08011c:	06050504 	cacop	0x4,$r8,321(0x141)
1c080120:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c080124:	04030302 	csrxchg	$r2,$r24,0xc0
1c080128:	04030302 	csrxchg	$r2,$r24,0xc0
1c08012c:	05040403 	0x05040403
1c080130:	04030302 	csrxchg	$r2,$r24,0xc0
1c080134:	05040403 	0x05040403
1c080138:	05040403 	0x05040403
1c08013c:	06050504 	cacop	0x4,$r8,321(0x141)
1c080140:	04030302 	csrxchg	$r2,$r24,0xc0
1c080144:	05040403 	0x05040403
1c080148:	05040403 	0x05040403
1c08014c:	06050504 	cacop	0x4,$r8,321(0x141)
1c080150:	05040403 	0x05040403
1c080154:	06050504 	cacop	0x4,$r8,321(0x141)
1c080158:	06050504 	cacop	0x4,$r8,321(0x141)
1c08015c:	07060605 	0x07060605
1c080160:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c080164:	04030302 	csrxchg	$r2,$r24,0xc0
1c080168:	04030302 	csrxchg	$r2,$r24,0xc0
1c08016c:	05040403 	0x05040403
1c080170:	04030302 	csrxchg	$r2,$r24,0xc0
1c080174:	05040403 	0x05040403
1c080178:	05040403 	0x05040403
1c08017c:	06050504 	cacop	0x4,$r8,321(0x141)
1c080180:	04030302 	csrxchg	$r2,$r24,0xc0
1c080184:	05040403 	0x05040403
1c080188:	05040403 	0x05040403
1c08018c:	06050504 	cacop	0x4,$r8,321(0x141)
1c080190:	05040403 	0x05040403
1c080194:	06050504 	cacop	0x4,$r8,321(0x141)
1c080198:	06050504 	cacop	0x4,$r8,321(0x141)
1c08019c:	07060605 	0x07060605
1c0801a0:	04030302 	csrxchg	$r2,$r24,0xc0
1c0801a4:	05040403 	0x05040403
1c0801a8:	05040403 	0x05040403
1c0801ac:	06050504 	cacop	0x4,$r8,321(0x141)
1c0801b0:	05040403 	0x05040403
1c0801b4:	06050504 	cacop	0x4,$r8,321(0x141)
1c0801b8:	06050504 	cacop	0x4,$r8,321(0x141)
1c0801bc:	07060605 	0x07060605
1c0801c0:	05040403 	0x05040403
1c0801c4:	06050504 	cacop	0x4,$r8,321(0x141)
1c0801c8:	06050504 	cacop	0x4,$r8,321(0x141)
1c0801cc:	07060605 	0x07060605
1c0801d0:	06050504 	cacop	0x4,$r8,321(0x141)
1c0801d4:	07060605 	0x07060605
1c0801d8:	07060605 	0x07060605
1c0801dc:	08070706 	0x08070706

1c0801e0 <bits>:
1c0801e0:	02010100 	slti	$r0,$r8,64(0x40)
1c0801e4:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c0801e8:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c0801ec:	04030302 	csrxchg	$r2,$r24,0xc0
1c0801f0:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c0801f4:	04030302 	csrxchg	$r2,$r24,0xc0
1c0801f8:	04030302 	csrxchg	$r2,$r24,0xc0
1c0801fc:	05040403 	0x05040403
1c080200:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c080204:	04030302 	csrxchg	$r2,$r24,0xc0
1c080208:	04030302 	csrxchg	$r2,$r24,0xc0
1c08020c:	05040403 	0x05040403
1c080210:	04030302 	csrxchg	$r2,$r24,0xc0
1c080214:	05040403 	0x05040403
1c080218:	05040403 	0x05040403
1c08021c:	06050504 	cacop	0x4,$r8,321(0x141)
1c080220:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c080224:	04030302 	csrxchg	$r2,$r24,0xc0
1c080228:	04030302 	csrxchg	$r2,$r24,0xc0
1c08022c:	05040403 	0x05040403
1c080230:	04030302 	csrxchg	$r2,$r24,0xc0
1c080234:	05040403 	0x05040403
1c080238:	05040403 	0x05040403
1c08023c:	06050504 	cacop	0x4,$r8,321(0x141)
1c080240:	04030302 	csrxchg	$r2,$r24,0xc0
1c080244:	05040403 	0x05040403
1c080248:	05040403 	0x05040403
1c08024c:	06050504 	cacop	0x4,$r8,321(0x141)
1c080250:	05040403 	0x05040403
1c080254:	06050504 	cacop	0x4,$r8,321(0x141)
1c080258:	06050504 	cacop	0x4,$r8,321(0x141)
1c08025c:	07060605 	0x07060605
1c080260:	03020201 	lu52i.d	$r1,$r16,128(0x80)
1c080264:	04030302 	csrxchg	$r2,$r24,0xc0
1c080268:	04030302 	csrxchg	$r2,$r24,0xc0
1c08026c:	05040403 	0x05040403
1c080270:	04030302 	csrxchg	$r2,$r24,0xc0
1c080274:	05040403 	0x05040403
1c080278:	05040403 	0x05040403
1c08027c:	06050504 	cacop	0x4,$r8,321(0x141)
1c080280:	04030302 	csrxchg	$r2,$r24,0xc0
1c080284:	05040403 	0x05040403
1c080288:	05040403 	0x05040403
1c08028c:	06050504 	cacop	0x4,$r8,321(0x141)
1c080290:	05040403 	0x05040403
1c080294:	06050504 	cacop	0x4,$r8,321(0x141)
1c080298:	06050504 	cacop	0x4,$r8,321(0x141)
1c08029c:	07060605 	0x07060605
1c0802a0:	04030302 	csrxchg	$r2,$r24,0xc0
1c0802a4:	05040403 	0x05040403
1c0802a8:	05040403 	0x05040403
1c0802ac:	06050504 	cacop	0x4,$r8,321(0x141)
1c0802b0:	05040403 	0x05040403
1c0802b4:	06050504 	cacop	0x4,$r8,321(0x141)
1c0802b8:	06050504 	cacop	0x4,$r8,321(0x141)
1c0802bc:	07060605 	0x07060605
1c0802c0:	05040403 	0x05040403
1c0802c4:	06050504 	cacop	0x4,$r8,321(0x141)
1c0802c8:	06050504 	cacop	0x4,$r8,321(0x141)
1c0802cc:	07060605 	0x07060605
1c0802d0:	06050504 	cacop	0x4,$r8,321(0x141)
1c0802d4:	07060605 	0x07060605
1c0802d8:	07060605 	0x07060605
1c0802dc:	08070706 	0x08070706
1c0802e0:	1c000e70 	pcaddu12i	$r16,115(0x73)
1c0802e4:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0802e8:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0802ec:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0802f0:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0802f4:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0802f8:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0802fc:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080300:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080304:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080308:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c08030c:	1c000d48 	pcaddu12i	$r8,106(0x6a)
1c080310:	1c000d54 	pcaddu12i	$r20,106(0x6a)
1c080314:	1c000d54 	pcaddu12i	$r20,106(0x6a)
1c080318:	1c000d54 	pcaddu12i	$r20,106(0x6a)
1c08031c:	1c000d54 	pcaddu12i	$r20,106(0x6a)
1c080320:	1c000d54 	pcaddu12i	$r20,106(0x6a)
1c080324:	1c000d54 	pcaddu12i	$r20,106(0x6a)
1c080328:	1c000d54 	pcaddu12i	$r20,106(0x6a)
1c08032c:	1c000d54 	pcaddu12i	$r20,106(0x6a)
1c080330:	1c000d54 	pcaddu12i	$r20,106(0x6a)
1c080334:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080338:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c08033c:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080340:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080344:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080348:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c08034c:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080350:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080354:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080358:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c08035c:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080360:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080364:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080368:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c08036c:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080370:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080374:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080378:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c08037c:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080380:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080384:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080388:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c08038c:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080390:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080394:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080398:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c08039c:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803a0:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803a4:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803a8:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803ac:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803b0:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803b4:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803b8:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803bc:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803c0:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803c4:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803c8:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803cc:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803d0:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803d4:	1c000d94 	pcaddu12i	$r20,108(0x6c)
1c0803d8:	1c000db0 	pcaddu12i	$r16,109(0x6d)
1c0803dc:	1c000dc4 	pcaddu12i	$r4,110(0x6e)
1c0803e0:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803e4:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803e8:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803ec:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803f0:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803f4:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803f8:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c0803fc:	1c000de0 	pcaddu12i	$r0,111(0x6f)
1c080400:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080404:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080408:	1c000e00 	pcaddu12i	$r0,112(0x70)
1c08040c:	1c000e20 	pcaddu12i	$r0,113(0x71)
1c080410:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080414:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080418:	1c000e40 	pcaddu12i	$r0,114(0x72)
1c08041c:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080420:	1c000e54 	pcaddu12i	$r20,114(0x72)
1c080424:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080428:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c08042c:	1c000e20 	pcaddu12i	$r0,113(0x71)

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
  18:	000c5000 	bytepick.d	$r0,$r0,$r20,0x0
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e60400 	bstrpick.d	$r0,$r0,0x26,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	000c5000 	bytepick.d	$r0,$r0,$r20,0x0
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
  c4:	000cfc01 	bytepick.d	$r1,$r0,$r31,0x1
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
 108:	000dac0c 	bytepick.d	$r12,$r0,$r11,0x3
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	000dc00e 	bytepick.d	$r14,$r0,$r16,0x3
 124:	0002531c 	0x0002531c
 128:	0ddc0c00 	0x0ddc0c00
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	0df80c00 	0x0df80c00
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	0e180c00 	0x0e180c00
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	380c0030 	ldx.d	$r16,$r1,$r0
 174:	471c000e 	bnez	$r0,3873792(0x3b1c00) # 3b1d74 <__stack_size+0x3a1d74>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	500e0030 	b	12586496(0xc00e00) # c00f88 <__stack_size+0xbf0f88>
 18c:	5f1c000e 	bne	$r0,$r14,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c000e6c 	pcaddu12i	$r12,115(0x73)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c000e7c 	pcaddu12i	$r28,115(0x73)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c000e88 	pcaddu12i	$r8,116(0x74)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00f10b00 	bstrpick.d	$r0,$r24,0x31,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c000cdc 	pcaddu12i	$r28,102(0x66)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000f10b 	0x0000f10b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	e40f0006 	0xe40f0006
 208:	531c000c 	b	3349504(0x331c00) # 331e08 <__stack_size+0x321e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	bc0f0000 	0xbc0f0000
 218:	531c000c 	b	3349504(0x331c00) # 331e18 <__stack_size+0x321e18>
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
 284:	000e9000 	bytepick.d	$r0,$r0,$r4,0x5
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
 2c8:	0e900000 	0x0e900000
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
 300:	000e9000 	bytepick.d	$r0,$r0,$r4,0x5
 304:	0030021c 	0x0030021c
 308:	03010000 	lu52i.d	$r0,$r0,64(0x40)
 30c:	00400b01 	0x00400b01
 310:	03ba0000 	ori	$r0,$r0,0xe80
 314:	03b80000 	ori	$r0,$r0,0xe00
 318:	00000000 	0x00000000
 31c:	0000330c 	revb.2h	$r12,$r24
 320:	000ec000 	bytepick.d	$r0,$r0,$r16,0x5
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
 34c:	000ef000 	bytepick.d	$r0,$r0,$r28,0x5
 350:	0000ac1c 	0x0000ac1c
 354:	00020900 	0x00020900
 358:	07040200 	0x07040200
 35c:	0000000b 	0x0000000b
 360:	06070402 	cacop	0x2,$r0,449(0x1c1)
 364:	03000000 	lu52i.d	$r0,$r0,0
 368:	0000010a 	0x0000010a
 36c:	a9050e01 	0xa9050e01
 370:	70000000 	vseq.b	$vr0,$vr0,$vr0
 374:	2c1c000f 	vld	$vr15,$r0,1792(0x700)
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
 3a4:	0f7c0700 	0x0f7c0700
 3a8:	00bd1c00 	bstrins.d	$r0,$r0,0x3d,0x7
 3ac:	00860000 	bstrins.d	$r0,$r0,0x6,0x0
 3b0:	01080000 	0x01080000
 3b4:	01f30354 	0x01f30354
 3b8:	84070054 	0x84070054
 3bc:	671c000f 	bge	$r0,$r15,-58368(0x31c00) # ffff1fbc <_stack+0xe3ef1fc0>
 3c0:	99000001 	0x99000001
 3c4:	08000000 	0x08000000
 3c8:	3d015401 	0x3d015401
 3cc:	0f8c0900 	0x0f8c0900
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
 3fc:	000ef000 	bytepick.d	$r0,$r0,$r28,0x5
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
 444:	300e0006 	0x300e0006
 448:	081c000f 	fmadd.s	$f15,$f0,$f0,$f24
 44c:	41000000 	beqz	$r0,65536(0x10000) # 1044c <__stack_size+0x44c>
 450:	05000001 	0x05000001
 454:	000000f1 	0x000000f1
 458:	a9100601 	0xa9100601
 45c:	31000000 	0x31000000
 460:	06000001 	cacop	0x1,$r0,0
 464:	0f380900 	0x0f380900
 468:	01671c00 	0x01671c00
 46c:	01080000 	0x01080000
 470:	003d0154 	0x003d0154
 474:	0f200700 	0x0f200700
 478:	01671c00 	0x01671c00
 47c:	01550000 	0x01550000
 480:	01080000 	0x01080000
 484:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
 488:	0f400900 	0x0f400900
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
 4c0:	000fa000 	bytepick.d	$r0,$r0,$r8,0x7
 4c4:	0000ec1c 	0x0000ec1c
 4c8:	0002a100 	0x0002a100
 4cc:	07040200 	0x07040200
 4d0:	0000000b 	0x0000000b
 4d4:	06070402 	cacop	0x2,$r0,449(0x1c1)
 4d8:	03000000 	lu52i.d	$r0,$r0,0
 4dc:	0000009f 	0x0000009f
 4e0:	49050101 	bcnez	$fcc0,328960(0x50500) # 509e0 <__stack_size+0x409e0>
 4e4:	a0000001 	0xa0000001
 4e8:	ec1c000f 	0xec1c000f
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
 59c:	1c001060 	pcaddu12i	$r0,131(0x83)
 5a0:	00000020 	0x00000020
 5a4:	00000123 	0x00000123
 5a8:	0000f10a 	0x0000f10a
 5ac:	020a0100 	slti	$r0,$r8,640(0x280)
 5b0:	00000149 	0x00000149
 5b4:	00000112 	0x00000112
 5b8:	700c000b 	vsub.b	$vr11,$vr0,$vr0
 5bc:	6e1c0010 	bgeu	$r0,$r16,-123904(0x21c00) # fffe21bc <_stack+0xe3ee21c0>
 5c0:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 5c4:	08025401 	0x08025401
 5c8:	0e00002d 	0x0e00002d
 5cc:	1c001008 	pcaddu12i	$r8,128(0x80)
 5d0:	00000030 	0x00000030
 5d4:	0000f10a 	0x0000f10a
 5d8:	020a0100 	slti	$r0,$r8,640(0x280)
 5dc:	00000149 	0x00000149
 5e0:	0000013e 	0x0000013e
 5e4:	380f000b 	0x380f000b
 5e8:	6e1c0010 	bgeu	$r0,$r16,-123904(0x21c00) # fffe21e8 <_stack+0xe3ee21ec>
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
 63c:	1c001090 	pcaddu12i	$r16,132(0x84)
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
 6b4:	a0000000 	0xa0000000
 6b8:	301c0011 	0x301c0011
 6bc:	01000000 	0x01000000
 6c0:	0000da9c 	0x0000da9c
 6c4:	006e0800 	bstrins.w	$r0,$r0,0xe,0x2
 6c8:	2c133e01 	vld	$vr1,$r16,1231(0x4cf)
 6cc:	de000000 	0xde000000
 6d0:	d6000006 	0xd6000006
 6d4:	09000006 	0x09000006
 6d8:	0000022e 	0x0000022e
 6dc:	1c0011a0 	pcaddu12i	$r0,141(0x8d)
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
 708:	00117000 	sub.w	$r0,$r0,$r28
 70c:	0000241c 	clz.d	$r28,$r0
 710:	2c9c0100 	xvld	$xr0,$r8,1792(0x700)
 714:	08000001 	0x08000001
 718:	3501006e 	0x3501006e
 71c:	00002c13 	ctz.d	$r19,$r0
 720:	00073b00 	alsl.wu	$r0,$r24,$r14,0x3
 724:	00073300 	alsl.wu	$r0,$r24,$r12,0x3
 728:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 72c:	11700000 	addu16i.d	$r0,$r0,23552(0x5c00)
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
 774:	10d00000 	addu16i.d	$r0,$r0,13312(0x3400)
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
 7bc:	0010d000 	add.d	$r0,$r0,$r20
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
 7f0:	1c0010c0 	pcaddu12i	$r0,134(0x86)
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
 81c:	00109000 	add.d	$r0,$r0,$r4
 820:	00001c1c 	ctz.w	$r28,$r0
 824:	2e9c0100 	0x2e9c0100
 828:	09000002 	0x09000002
 82c:	0000022e 	0x0000022e
 830:	1c001090 	pcaddu12i	$r16,132(0x84)
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
 528:	Address 0x0000000000000528 is out of bounds.


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
  10:	1c000c50 	pcaddu12i	$r16,98(0x62)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c000e90 	pcaddu12i	$r16,116(0x74)
  34:	00000054 	0x00000054
	...
  40:	0000001c 	0x0000001c
  44:	03340002 	lu52i.d	$r2,$r0,-768(0xd00)
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c000ef0 	pcaddu12i	$r16,119(0x77)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04a80002 	csrrd	$r2,0x2a00
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c000fa0 	pcaddu12i	$r0,125(0x7d)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06230002 	cacop	0x2,$r0,-1856(0x8c0)
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c001090 	pcaddu12i	$r16,132(0x84)
  94:	00000140 	0x00000140
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
  2c:	0c500205 	vfcmp.caf.s	$vr5,$vr16,$vr0
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
 1d4:	90020500 	0x90020500
 1d8:	131c000e 	addu16i.d	$r14,$r0,-14592(0xc700)
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
 234:	000ef002 	bytepick.d	$r2,$r0,$r28,0x5
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
 2d0:	0fa00205 	0x0fa00205
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
 3cc:	10900205 	addu16i.d	$r5,$r16,9216(0x2400)
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
 1ac:	Address 0x00000000000001ac is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	0x0000000c
   4:	ffffffff 	0xffffffff
   8:	7c010001 	0x7c010001
   c:	00030d01 	0x00030d01
  10:	00000034 	0x00000034
  14:	00000000 	0x00000000
  18:	1c000c50 	pcaddu12i	$r16,98(0x62)
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
  60:	1c000e90 	pcaddu12i	$r16,116(0x74)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c000ec0 	pcaddu12i	$r0,118(0x76)
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
  a8:	1c000ef0 	pcaddu12i	$r16,119(0x77)
  ac:	00000074 	0x00000074
  b0:	50100e44 	b	-116387828(0x910100c) # f91010bc <_stack+0xdd0010c0>
  b4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  b8:	04990398 	csrxchg	$r24,$r28,0x2640
  bc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c204 <__stack_size+0x7c204>
  c0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd904 <_stack+0xe3ccd908>
  c4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  c8:	00000018 	0x00000018
  cc:	00000090 	0x00000090
  d0:	1c000f70 	pcaddu12i	$r16,123(0x7b)
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
  fc:	1c000fa0 	pcaddu12i	$r0,125(0x7d)
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
 138:	1c001090 	pcaddu12i	$r16,132(0x84)
 13c:	0000001c 	0x0000001c
 140:	44100e44 	bnez	$r18,1052684(0x10100c) # 10114c <__stack_size+0xf114c>
 144:	d94c0199 	0xd94c0199
 148:	00000e44 	0x00000e44
 14c:	0000000c 	0x0000000c
 150:	00000120 	0x00000120
 154:	1c0010b0 	pcaddu12i	$r16,133(0x85)
 158:	00000004 	0x00000004
 15c:	0000000c 	0x0000000c
 160:	00000120 	0x00000120
 164:	1c0010c0 	pcaddu12i	$r0,134(0x86)
 168:	00000008 	0x00000008
 16c:	00000018 	0x00000018
 170:	00000120 	0x00000120
 174:	1c0010d0 	pcaddu12i	$r16,134(0x86)
 178:	00000084 	0x00000084
 17c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101188 <__stack_size+0xf1188>
 180:	60020199 	blt	$r12,$r25,512(0x200) # 380 <__stack_size-0xfc80>
 184:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 188:	0000000c 	0x0000000c
 18c:	00000120 	0x00000120
 190:	1c001160 	pcaddu12i	$r0,139(0x8b)
 194:	00000004 	0x00000004
 198:	00000018 	0x00000018
 19c:	00000120 	0x00000120
 1a0:	1c001170 	pcaddu12i	$r16,139(0x8b)
 1a4:	00000024 	0x00000024
 1a8:	44100e44 	bnez	$r18,1052684(0x10100c) # 1011b4 <__stack_size+0xf11b4>
 1ac:	d9500199 	0xd9500199
 1b0:	00000e48 	0x00000e48
 1b4:	00000018 	0x00000018
 1b8:	00000120 	0x00000120
 1bc:	1c0011a0 	pcaddu12i	$r0,141(0x8d)
 1c0:	00000030 	0x00000030
 1c4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1011d0 <__stack_size+0xf11d0>
 1c8:	d9500199 	0xd9500199
 1cc:	00000e54 	0x00000e54
