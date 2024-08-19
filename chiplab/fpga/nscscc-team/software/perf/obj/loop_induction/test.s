
obj/loop_induction/main.elf:     file format elf32-loongarch
obj/loop_induction/main.elf


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
1c000050:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c000054:	02b4018c 	addi.w	$r12,$r12,-768(0xd00)
1c000058:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00005c:	02bea1ad 	addi.w	$r13,$r13,-88(0xfa8)
1c000060:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000064:	028811ce 	addi.w	$r14,$r14,516(0x204)
1c000068:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000080 <_start+0x80>
1c00006c:	2880018f 	ld.w	$r15,$r12,0
1c000070:	298001af 	st.w	$r15,$r13,0
1c000074:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000078:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00007c:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c00006c <_start+0x6c>
1c000080:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000084:	0287918c 	addi.w	$r12,$r12,484(0x1e4)
1c000088:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00008c:	0287a1ad 	addi.w	$r13,$r13,488(0x1e8)
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
1c00038c:	54087400 	bl	2164(0x874) # 1c000c00 <shell18>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <fill_random>:
fill_random():
1c0003a0:	58017485 	beq	$r4,$r5,372(0x174) # 1c000514 <fill_random+0x174>
1c0003a4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0003a8:	02bff0ac 	addi.w	$r12,$r5,-4(0xffc)
1c0003ac:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0003b0:	00111181 	sub.w	$r1,$r12,$r4
1c0003b4:	2980a077 	st.w	$r23,$r3,40(0x28)
1c0003b8:	00150097 	move	$r23,$r4
1c0003bc:	00448824 	srli.w	$r4,$r1,0x2
1c0003c0:	02800485 	addi.w	$r5,$r4,1(0x1)
1c0003c4:	004088a6 	slli.w	$r6,$r5,0x2
1c0003c8:	02bff0cd 	addi.w	$r13,$r6,-4(0xffc)
1c0003cc:	004489a7 	srli.w	$r7,$r13,0x2
1c0003d0:	028004e8 	addi.w	$r8,$r7,1(0x1)
1c0003d4:	29809078 	st.w	$r24,$r3,36(0x24)
1c0003d8:	29808079 	st.w	$r25,$r3,32(0x20)
1c0003dc:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0003e0:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0003e4:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0003e8:	2980407d 	st.w	$r29,$r3,16(0x10)
1c0003ec:	2980307e 	st.w	$r30,$r3,12(0xc)
1c0003f0:	03401d09 	andi	$r9,$r8,0x7
1c0003f4:	00101af8 	add.w	$r24,$r23,$r6
1c0003f8:	58008120 	beq	$r9,$r0,128(0x80) # 1c000478 <fill_random+0xd8>
1c0003fc:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c000400:	5800692a 	beq	$r9,$r10,104(0x68) # 1c000468 <fill_random+0xc8>
1c000404:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c000408:	5800552b 	beq	$r9,$r11,84(0x54) # 1c00045c <fill_random+0xbc>
1c00040c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c000410:	5800412e 	beq	$r9,$r14,64(0x40) # 1c000450 <fill_random+0xb0>
1c000414:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c000418:	58002d2f 	beq	$r9,$r15,44(0x2c) # 1c000444 <fill_random+0xa4>
1c00041c:	02801410 	addi.w	$r16,$r0,5(0x5)
1c000420:	58001930 	beq	$r9,$r16,24(0x18) # 1c000438 <fill_random+0x98>
1c000424:	02801811 	addi.w	$r17,$r0,6(0x6)
1c000428:	5c00dd31 	bne	$r9,$r17,220(0xdc) # 1c000504 <fill_random+0x164>
1c00042c:	5418d400 	bl	6356(0x18d4) # 1c001d00 <rand>
1c000430:	298002e4 	st.w	$r4,$r23,0
1c000434:	028012f7 	addi.w	$r23,$r23,4(0x4)
1c000438:	5418c800 	bl	6344(0x18c8) # 1c001d00 <rand>
1c00043c:	298002e4 	st.w	$r4,$r23,0
1c000440:	028012f7 	addi.w	$r23,$r23,4(0x4)
1c000444:	5418bc00 	bl	6332(0x18bc) # 1c001d00 <rand>
1c000448:	298002e4 	st.w	$r4,$r23,0
1c00044c:	028012f7 	addi.w	$r23,$r23,4(0x4)
1c000450:	5418b000 	bl	6320(0x18b0) # 1c001d00 <rand>
1c000454:	298002e4 	st.w	$r4,$r23,0
1c000458:	028012f7 	addi.w	$r23,$r23,4(0x4)
1c00045c:	5418a400 	bl	6308(0x18a4) # 1c001d00 <rand>
1c000460:	298002e4 	st.w	$r4,$r23,0
1c000464:	028012f7 	addi.w	$r23,$r23,4(0x4)
1c000468:	028012f7 	addi.w	$r23,$r23,4(0x4)
1c00046c:	54189400 	bl	6292(0x1894) # 1c001d00 <rand>
1c000470:	29bff2e4 	st.w	$r4,$r23,-4(0xffc)
1c000474:	580066f8 	beq	$r23,$r24,100(0x64) # 1c0004d8 <fill_random+0x138>
1c000478:	54188800 	bl	6280(0x1888) # 1c001d00 <rand>
1c00047c:	298002e4 	st.w	$r4,$r23,0
1c000480:	028022fe 	addi.w	$r30,$r23,8(0x8)
1c000484:	54187c00 	bl	6268(0x187c) # 1c001d00 <rand>
1c000488:	29bff3c4 	st.w	$r4,$r30,-4(0xffc)
1c00048c:	028032fd 	addi.w	$r29,$r23,12(0xc)
1c000490:	54187000 	bl	6256(0x1870) # 1c001d00 <rand>
1c000494:	29bff3a4 	st.w	$r4,$r29,-4(0xffc)
1c000498:	028042fc 	addi.w	$r28,$r23,16(0x10)
1c00049c:	54186400 	bl	6244(0x1864) # 1c001d00 <rand>
1c0004a0:	29bff384 	st.w	$r4,$r28,-4(0xffc)
1c0004a4:	028052fb 	addi.w	$r27,$r23,20(0x14)
1c0004a8:	54185800 	bl	6232(0x1858) # 1c001d00 <rand>
1c0004ac:	29bff364 	st.w	$r4,$r27,-4(0xffc)
1c0004b0:	028062fa 	addi.w	$r26,$r23,24(0x18)
1c0004b4:	54184c00 	bl	6220(0x184c) # 1c001d00 <rand>
1c0004b8:	29bff344 	st.w	$r4,$r26,-4(0xffc)
1c0004bc:	028072f9 	addi.w	$r25,$r23,28(0x1c)
1c0004c0:	54184000 	bl	6208(0x1840) # 1c001d00 <rand>
1c0004c4:	29bff324 	st.w	$r4,$r25,-4(0xffc)
1c0004c8:	028082f7 	addi.w	$r23,$r23,32(0x20)
1c0004cc:	54183400 	bl	6196(0x1834) # 1c001d00 <rand>
1c0004d0:	29bff2e4 	st.w	$r4,$r23,-4(0xffc)
1c0004d4:	5fffa6f8 	bne	$r23,$r24,-92(0x3ffa4) # 1c000478 <fill_random+0xd8>
1c0004d8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0004dc:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c0004e0:	28809078 	ld.w	$r24,$r3,36(0x24)
1c0004e4:	28808079 	ld.w	$r25,$r3,32(0x20)
1c0004e8:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c0004ec:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c0004f0:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c0004f4:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c0004f8:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c0004fc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c000500:	4c000020 	jirl	$r0,$r1,0
1c000504:	5417fc00 	bl	6140(0x17fc) # 1c001d00 <rand>
1c000508:	298002e4 	st.w	$r4,$r23,0
1c00050c:	028012f7 	addi.w	$r23,$r23,4(0x4)
1c000510:	53ff1fff 	b	-228(0xfffff1c) # 1c00042c <fill_random+0x8c>
1c000514:	4c000020 	jirl	$r0,$r1,0
1c000518:	03400000 	andi	$r0,$r0,0x0
1c00051c:	03400000 	andi	$r0,$r0,0x0

1c000520 <test_copy>:
test_copy():
1c000520:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c000524:	2980c078 	st.w	$r24,$r3,48(0x30)
1c000528:	004088d8 	slli.w	$r24,$r6,0x2
1c00052c:	2980d077 	st.w	$r23,$r3,52(0x34)
1c000530:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c000534:	2980907b 	st.w	$r27,$r3,36(0x24)
1c000538:	2980807c 	st.w	$r28,$r3,32(0x20)
1c00053c:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c000540:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000544:	2980e076 	st.w	$r22,$r3,56(0x38)
1c000548:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c00054c:	2980607e 	st.w	$r30,$r3,24(0x18)
1c000550:	2980507f 	st.w	$r31,$r3,20(0x14)
1c000554:	001060bd 	add.w	$r29,$r5,$r24
1c000558:	001500d7 	move	$r23,$r6
1c00055c:	001500bc 	move	$r28,$r5
1c000560:	0015009b 	move	$r27,$r4
1c000564:	001500f9 	move	$r25,$r7
1c000568:	580117a5 	beq	$r29,$r5,276(0x114) # 1c00067c <test_copy+0x15c>
1c00056c:	001117ac 	sub.w	$r12,$r29,$r5
1c000570:	02bff181 	addi.w	$r1,$r12,-4(0xffc)
1c000574:	00448824 	srli.w	$r4,$r1,0x2
1c000578:	001500ba 	move	$r26,$r5
1c00057c:	02800485 	addi.w	$r5,$r4,1(0x1)
1c000580:	03401ca6 	andi	$r6,$r5,0x7
1c000584:	580080c0 	beq	$r6,$r0,128(0x80) # 1c000604 <test_copy+0xe4>
1c000588:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00058c:	580068cd 	beq	$r6,$r13,104(0x68) # 1c0005f4 <test_copy+0xd4>
1c000590:	02800807 	addi.w	$r7,$r0,2(0x2)
1c000594:	580054c7 	beq	$r6,$r7,84(0x54) # 1c0005e8 <test_copy+0xc8>
1c000598:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c00059c:	580040c8 	beq	$r6,$r8,64(0x40) # 1c0005dc <test_copy+0xbc>
1c0005a0:	02801009 	addi.w	$r9,$r0,4(0x4)
1c0005a4:	58002cc9 	beq	$r6,$r9,44(0x2c) # 1c0005d0 <test_copy+0xb0>
1c0005a8:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c0005ac:	580018ca 	beq	$r6,$r10,24(0x18) # 1c0005c4 <test_copy+0xa4>
1c0005b0:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c0005b4:	5c02c0cb 	bne	$r6,$r11,704(0x2c0) # 1c000874 <test_copy+0x354>
1c0005b8:	54174800 	bl	5960(0x1748) # 1c001d00 <rand>
1c0005bc:	29800344 	st.w	$r4,$r26,0
1c0005c0:	0280135a 	addi.w	$r26,$r26,4(0x4)
1c0005c4:	54173c00 	bl	5948(0x173c) # 1c001d00 <rand>
1c0005c8:	29800344 	st.w	$r4,$r26,0
1c0005cc:	0280135a 	addi.w	$r26,$r26,4(0x4)
1c0005d0:	54173000 	bl	5936(0x1730) # 1c001d00 <rand>
1c0005d4:	29800344 	st.w	$r4,$r26,0
1c0005d8:	0280135a 	addi.w	$r26,$r26,4(0x4)
1c0005dc:	54172400 	bl	5924(0x1724) # 1c001d00 <rand>
1c0005e0:	29800344 	st.w	$r4,$r26,0
1c0005e4:	0280135a 	addi.w	$r26,$r26,4(0x4)
1c0005e8:	54171800 	bl	5912(0x1718) # 1c001d00 <rand>
1c0005ec:	29800344 	st.w	$r4,$r26,0
1c0005f0:	0280135a 	addi.w	$r26,$r26,4(0x4)
1c0005f4:	0280135a 	addi.w	$r26,$r26,4(0x4)
1c0005f8:	54170800 	bl	5896(0x1708) # 1c001d00 <rand>
1c0005fc:	29bff344 	st.w	$r4,$r26,-4(0xffc)
1c000600:	58007fba 	beq	$r29,$r26,124(0x7c) # 1c00067c <test_copy+0x15c>
1c000604:	5416fc00 	bl	5884(0x16fc) # 1c001d00 <rand>
1c000608:	0280234e 	addi.w	$r14,$r26,8(0x8)
1c00060c:	0280334f 	addi.w	$r15,$r26,12(0xc)
1c000610:	02804350 	addi.w	$r16,$r26,16(0x10)
1c000614:	29800344 	st.w	$r4,$r26,0
1c000618:	2980306e 	st.w	$r14,$r3,12(0xc)
1c00061c:	2980206f 	st.w	$r15,$r3,8(0x8)
1c000620:	29801070 	st.w	$r16,$r3,4(0x4)
1c000624:	5416dc00 	bl	5852(0x16dc) # 1c001d00 <rand>
1c000628:	28803071 	ld.w	$r17,$r3,12(0xc)
1c00062c:	02805356 	addi.w	$r22,$r26,20(0x14)
1c000630:	0280635f 	addi.w	$r31,$r26,24(0x18)
1c000634:	29bff224 	st.w	$r4,$r17,-4(0xffc)
1c000638:	5416c800 	bl	5832(0x16c8) # 1c001d00 <rand>
1c00063c:	28802072 	ld.w	$r18,$r3,8(0x8)
1c000640:	0280735e 	addi.w	$r30,$r26,28(0x1c)
1c000644:	0280835a 	addi.w	$r26,$r26,32(0x20)
1c000648:	29bff244 	st.w	$r4,$r18,-4(0xffc)
1c00064c:	5416b400 	bl	5812(0x16b4) # 1c001d00 <rand>
1c000650:	28801073 	ld.w	$r19,$r3,4(0x4)
1c000654:	29bff264 	st.w	$r4,$r19,-4(0xffc)
1c000658:	5416a800 	bl	5800(0x16a8) # 1c001d00 <rand>
1c00065c:	29bff2c4 	st.w	$r4,$r22,-4(0xffc)
1c000660:	5416a000 	bl	5792(0x16a0) # 1c001d00 <rand>
1c000664:	29bff3e4 	st.w	$r4,$r31,-4(0xffc)
1c000668:	54169800 	bl	5784(0x1698) # 1c001d00 <rand>
1c00066c:	29bff3c4 	st.w	$r4,$r30,-4(0xffc)
1c000670:	54169000 	bl	5776(0x1690) # 1c001d00 <rand>
1c000674:	29bff344 	st.w	$r4,$r26,-4(0xffc)
1c000678:	5fff8fba 	bne	$r29,$r26,-116(0x3ff8c) # 1c000604 <test_copy+0xe4>
1c00067c:	54161400 	bl	5652(0x1614) # 1c001c90 <get_clock>
1c000680:	1c001011 	pcaddu12i	$r17,128(0x80)
1c000684:	02af4231 	addi.w	$r17,$r17,-1072(0xbd0)
1c000688:	28800234 	ld.w	$r20,$r17,0
1c00068c:	1c00101a 	pcaddu12i	$r26,128(0x80)
1c000690:	28af535a 	ld.w	$r26,$r26,-1068(0xbd4)
1c000694:	29800344 	st.w	$r4,$r26,0
1c000698:	64012c14 	bge	$r0,$r20,300(0x12c) # 1c0007c4 <test_copy+0x2a4>
1c00069c:	64012817 	bge	$r0,$r23,296(0x128) # 1c0007c4 <test_copy+0x2a4>
1c0006a0:	00106f10 	add.w	$r16,$r24,$r27
1c0006a4:	0015000f 	move	$r15,$r0
1c0006a8:	00116e1d 	sub.w	$r29,$r16,$r27
1c0006ac:	02bff3a1 	addi.w	$r1,$r29,-4(0xffc)
1c0006b0:	00448824 	srli.w	$r4,$r1,0x2
1c0006b4:	02800485 	addi.w	$r5,$r4,1(0x1)
1c0006b8:	03401ca6 	andi	$r6,$r5,0x7
1c0006bc:	0015038d 	move	$r13,$r28
1c0006c0:	0015036c 	move	$r12,$r27
1c0006c4:	5800a8c0 	beq	$r6,$r0,168(0xa8) # 1c00076c <test_copy+0x24c>
1c0006c8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0006cc:	58008cc7 	beq	$r6,$r7,140(0x8c) # 1c000758 <test_copy+0x238>
1c0006d0:	02800808 	addi.w	$r8,$r0,2(0x2)
1c0006d4:	580074c8 	beq	$r6,$r8,116(0x74) # 1c000748 <test_copy+0x228>
1c0006d8:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c0006dc:	58005cc9 	beq	$r6,$r9,92(0x5c) # 1c000738 <test_copy+0x218>
1c0006e0:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c0006e4:	580044ca 	beq	$r6,$r10,68(0x44) # 1c000728 <test_copy+0x208>
1c0006e8:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c0006ec:	58002ccb 	beq	$r6,$r11,44(0x2c) # 1c000718 <test_copy+0x1f8>
1c0006f0:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c0006f4:	580014ce 	beq	$r6,$r14,20(0x14) # 1c000708 <test_copy+0x1e8>
1c0006f8:	28800376 	ld.w	$r22,$r27,0
1c0006fc:	0280136c 	addi.w	$r12,$r27,4(0x4)
1c000700:	0280138d 	addi.w	$r13,$r28,4(0x4)
1c000704:	29800396 	st.w	$r22,$r28,0
1c000708:	2880019f 	ld.w	$r31,$r12,0
1c00070c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000710:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000714:	29bff1bf 	st.w	$r31,$r13,-4(0xffc)
1c000718:	2880019e 	ld.w	$r30,$r12,0
1c00071c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000720:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000724:	29bff1be 	st.w	$r30,$r13,-4(0xffc)
1c000728:	28800192 	ld.w	$r18,$r12,0
1c00072c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000730:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000734:	29bff1b2 	st.w	$r18,$r13,-4(0xffc)
1c000738:	28800193 	ld.w	$r19,$r12,0
1c00073c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000740:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000744:	29bff1b3 	st.w	$r19,$r13,-4(0xffc)
1c000748:	28800194 	ld.w	$r20,$r12,0
1c00074c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000750:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000754:	29bff1b4 	st.w	$r20,$r13,-4(0xffc)
1c000758:	2880019d 	ld.w	$r29,$r12,0
1c00075c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000760:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000764:	29bff1bd 	st.w	$r29,$r13,-4(0xffc)
1c000768:	5800520c 	beq	$r16,$r12,80(0x50) # 1c0007b8 <test_copy+0x298>
1c00076c:	28800181 	ld.w	$r1,$r12,0
1c000770:	028081ad 	addi.w	$r13,$r13,32(0x20)
1c000774:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c000778:	29bf81a1 	st.w	$r1,$r13,-32(0xfe0)
1c00077c:	28bf9184 	ld.w	$r4,$r12,-28(0xfe4)
1c000780:	29bf91a4 	st.w	$r4,$r13,-28(0xfe4)
1c000784:	28bfa185 	ld.w	$r5,$r12,-24(0xfe8)
1c000788:	29bfa1a5 	st.w	$r5,$r13,-24(0xfe8)
1c00078c:	28bfb186 	ld.w	$r6,$r12,-20(0xfec)
1c000790:	29bfb1a6 	st.w	$r6,$r13,-20(0xfec)
1c000794:	28bfc187 	ld.w	$r7,$r12,-16(0xff0)
1c000798:	29bfc1a7 	st.w	$r7,$r13,-16(0xff0)
1c00079c:	28bfd188 	ld.w	$r8,$r12,-12(0xff4)
1c0007a0:	29bfd1a8 	st.w	$r8,$r13,-12(0xff4)
1c0007a4:	28bfe189 	ld.w	$r9,$r12,-8(0xff8)
1c0007a8:	29bfe1a9 	st.w	$r9,$r13,-8(0xff8)
1c0007ac:	28bff18a 	ld.w	$r10,$r12,-4(0xffc)
1c0007b0:	29bff1aa 	st.w	$r10,$r13,-4(0xffc)
1c0007b4:	5fffba0c 	bne	$r16,$r12,-72(0x3ffb8) # 1c00076c <test_copy+0x24c>
1c0007b8:	2880022b 	ld.w	$r11,$r17,0
1c0007bc:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c0007c0:	63fee9eb 	blt	$r15,$r11,-280(0x3fee8) # 1c0006a8 <test_copy+0x188>
1c0007c4:	5414cc00 	bl	5324(0x14cc) # 1c001c90 <get_clock>
1c0007c8:	0015009e 	move	$r30,$r4
1c0007cc:	1c001016 	pcaddu12i	$r22,128(0x80)
1c0007d0:	28aa42d6 	ld.w	$r22,$r22,-1392(0xa90)
1c0007d4:	00150306 	move	$r6,$r24
1c0007d8:	00150365 	move	$r5,$r27
1c0007dc:	00150384 	move	$r4,$r28
1c0007e0:	298002de 	st.w	$r30,$r22,0
1c0007e4:	54135c00 	bl	4956(0x135c) # 1c001b40 <memcmp>
1c0007e8:	0015009f 	move	$r31,$r4
1c0007ec:	5c006c80 	bne	$r4,$r0,108(0x6c) # 1c000858 <test_copy+0x338>
1c0007f0:	2880034e 	ld.w	$r14,$r26,0
1c0007f4:	14001e92 	lu12i.w	$r18,244(0xf4)
1c0007f8:	001502e6 	move	$r6,$r23
1c0007fc:	00113bd4 	sub.w	$r20,$r30,$r14
1c000800:	00150325 	move	$r5,$r25
1c000804:	03890253 	ori	$r19,$r18,0x240
1c000808:	1c001004 	pcaddu12i	$r4,128(0x80)
1c00080c:	02a02084 	addi.w	$r4,$r4,-2040(0x808)
1c000810:	00214e87 	div.wu	$r7,$r20,$r19
1c000814:	5c000a60 	bne	$r19,$r0,8(0x8) # 1c00081c <test_copy+0x2fc>
1c000818:	002a0007 	break	0x7
1c00081c:	540c8400 	bl	3204(0xc84) # 1c0014a0 <printf>
1c000820:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c000824:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c000828:	001503e4 	move	$r4,$r31
1c00082c:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c000830:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c000834:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c000838:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c00083c:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c000840:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c000844:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c000848:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c00084c:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c000850:	02810063 	addi.w	$r3,$r3,64(0x40)
1c000854:	4c000020 	jirl	$r0,$r1,0
1c000858:	00150325 	move	$r5,$r25
1c00085c:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000860:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c000864:	540c3c00 	bl	3132(0xc3c) # 1c0014a0 <printf>
1c000868:	0280041f 	addi.w	$r31,$r0,1(0x1)
1c00086c:	288002de 	ld.w	$r30,$r22,0
1c000870:	53ff83ff 	b	-128(0xfffff80) # 1c0007f0 <test_copy+0x2d0>
1c000874:	54148c00 	bl	5260(0x148c) # 1c001d00 <rand>
1c000878:	0280139a 	addi.w	$r26,$r28,4(0x4)
1c00087c:	29800384 	st.w	$r4,$r28,0
1c000880:	53fd3bff 	b	-712(0xffffd38) # 1c0005b8 <test_copy+0x98>
1c000884:	03400000 	andi	$r0,$r0,0x0
1c000888:	03400000 	andi	$r0,$r0,0x0
1c00088c:	03400000 	andi	$r0,$r0,0x0

1c000890 <shell18_main>:
shell18_main():
1c000890:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c000894:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c000898:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00089c:	29809077 	st.w	$r23,$r3,36(0x24)
1c0008a0:	29808078 	st.w	$r24,$r3,32(0x20)
1c0008a4:	29807079 	st.w	$r25,$r3,28(0x1c)
1c0008a8:	2980607a 	st.w	$r26,$r3,24(0x18)
1c0008ac:	2980507b 	st.w	$r27,$r3,20(0x14)
1c0008b0:	2980407c 	st.w	$r28,$r3,16(0x10)
1c0008b4:	2980307d 	st.w	$r29,$r3,12(0xc)
1c0008b8:	2980207e 	st.w	$r30,$r3,8(0x8)
1c0008bc:	2980107f 	st.w	$r31,$r3,4(0x4)
1c0008c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0008c4:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c0008c8:	02a611ad 	addi.w	$r13,$r13,-1660(0x984)
1c0008cc:	15ffff8c 	lu12i.w	$r12,-4(0xffffc)
1c0008d0:	288001a4 	ld.w	$r4,$r13,0
1c0008d4:	03b80181 	ori	$r1,$r12,0xe00
1c0008d8:	00100463 	add.w	$r3,$r3,$r1
1c0008dc:	00150077 	move	$r23,$r3
1c0008e0:	0281ec84 	addi.w	$r4,$r4,123(0x7b)
1c0008e4:	00100463 	add.w	$r3,$r3,$r1
1c0008e8:	1400007a 	lu12i.w	$r26,3(0x3)
1c0008ec:	54145400 	bl	5204(0x1454) # 1c001d40 <srand>
1c0008f0:	03880345 	ori	$r5,$r26,0x200
1c0008f4:	00150078 	move	$r24,$r3
1c0008f8:	001502f9 	move	$r25,$r23
1c0008fc:	001016fa 	add.w	$r26,$r23,$r5
1c000900:	54140000 	bl	5120(0x1400) # 1c001d00 <rand>
1c000904:	29800324 	st.w	$r4,$r25,0
1c000908:	5413f800 	bl	5112(0x13f8) # 1c001d00 <rand>
1c00090c:	29801324 	st.w	$r4,$r25,4(0x4)
1c000910:	5413f000 	bl	5104(0x13f0) # 1c001d00 <rand>
1c000914:	29802324 	st.w	$r4,$r25,8(0x8)
1c000918:	0280433e 	addi.w	$r30,$r25,16(0x10)
1c00091c:	5413e400 	bl	5092(0x13e4) # 1c001d00 <rand>
1c000920:	29bff3c4 	st.w	$r4,$r30,-4(0xffc)
1c000924:	0280533d 	addi.w	$r29,$r25,20(0x14)
1c000928:	5413d800 	bl	5080(0x13d8) # 1c001d00 <rand>
1c00092c:	29bff3a4 	st.w	$r4,$r29,-4(0xffc)
1c000930:	0280633c 	addi.w	$r28,$r25,24(0x18)
1c000934:	5413cc00 	bl	5068(0x13cc) # 1c001d00 <rand>
1c000938:	29bff384 	st.w	$r4,$r28,-4(0xffc)
1c00093c:	0280733b 	addi.w	$r27,$r25,28(0x1c)
1c000940:	5413c000 	bl	5056(0x13c0) # 1c001d00 <rand>
1c000944:	29bff364 	st.w	$r4,$r27,-4(0xffc)
1c000948:	02808339 	addi.w	$r25,$r25,32(0x20)
1c00094c:	5413b400 	bl	5044(0x13b4) # 1c001d00 <rand>
1c000950:	29bff324 	st.w	$r4,$r25,-4(0xffc)
1c000954:	5fffaf3a 	bne	$r25,$r26,-84(0x3ffac) # 1c000900 <shell18_main+0x70>
1c000958:	14000066 	lu12i.w	$r6,3(0x3)
1c00095c:	038800c7 	ori	$r7,$r6,0x200
1c000960:	00150319 	move	$r25,$r24
1c000964:	00101f1a 	add.w	$r26,$r24,$r7
1c000968:	54139800 	bl	5016(0x1398) # 1c001d00 <rand>
1c00096c:	29800324 	st.w	$r4,$r25,0
1c000970:	54139000 	bl	5008(0x1390) # 1c001d00 <rand>
1c000974:	29801324 	st.w	$r4,$r25,4(0x4)
1c000978:	54138800 	bl	5000(0x1388) # 1c001d00 <rand>
1c00097c:	29802324 	st.w	$r4,$r25,8(0x8)
1c000980:	0280433f 	addi.w	$r31,$r25,16(0x10)
1c000984:	54137c00 	bl	4988(0x137c) # 1c001d00 <rand>
1c000988:	29bff3e4 	st.w	$r4,$r31,-4(0xffc)
1c00098c:	0280533e 	addi.w	$r30,$r25,20(0x14)
1c000990:	54137000 	bl	4976(0x1370) # 1c001d00 <rand>
1c000994:	29bff3c4 	st.w	$r4,$r30,-4(0xffc)
1c000998:	0280633d 	addi.w	$r29,$r25,24(0x18)
1c00099c:	54136400 	bl	4964(0x1364) # 1c001d00 <rand>
1c0009a0:	29bff3a4 	st.w	$r4,$r29,-4(0xffc)
1c0009a4:	0280733c 	addi.w	$r28,$r25,28(0x1c)
1c0009a8:	54135800 	bl	4952(0x1358) # 1c001d00 <rand>
1c0009ac:	29bff384 	st.w	$r4,$r28,-4(0xffc)
1c0009b0:	02808339 	addi.w	$r25,$r25,32(0x20)
1c0009b4:	54134c00 	bl	4940(0x134c) # 1c001d00 <rand>
1c0009b8:	29bff324 	st.w	$r4,$r25,-4(0xffc)
1c0009bc:	5fffaf59 	bne	$r26,$r25,-84(0x3ffac) # 1c000968 <shell18_main+0xd8>
1c0009c0:	5412d000 	bl	4816(0x12d0) # 1c001c90 <get_clock>
1c0009c4:	1c001008 	pcaddu12i	$r8,128(0x80)
1c0009c8:	02a23108 	addi.w	$r8,$r8,-1908(0x88c)
1c0009cc:	2880011f 	ld.w	$r31,$r8,0
1c0009d0:	1c00101b 	pcaddu12i	$r27,128(0x80)
1c0009d4:	28a2437b 	ld.w	$r27,$r27,-1904(0x890)
1c0009d8:	29800364 	st.w	$r4,$r27,0
1c0009dc:	0015001a 	move	$r26,$r0
1c0009e0:	6401481f 	bge	$r0,$r31,328(0x148) # 1c000b28 <shell18_main+0x298>
1c0009e4:	14000069 	lu12i.w	$r9,3(0x3)
1c0009e8:	03401fea 	andi	$r10,$r31,0x7
1c0009ec:	0388013e 	ori	$r30,$r9,0x200
1c0009f0:	5800b140 	beq	$r10,$r0,176(0xb0) # 1c000aa0 <shell18_main+0x210>
1c0009f4:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c0009f8:	5800914b 	beq	$r10,$r11,144(0x90) # 1c000a88 <shell18_main+0x1f8>
1c0009fc:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c000a00:	5800754e 	beq	$r10,$r14,116(0x74) # 1c000a74 <shell18_main+0x1e4>
1c000a04:	02800c0f 	addi.w	$r15,$r0,3(0x3)
1c000a08:	5800594f 	beq	$r10,$r15,88(0x58) # 1c000a60 <shell18_main+0x1d0>
1c000a0c:	02801010 	addi.w	$r16,$r0,4(0x4)
1c000a10:	58003d50 	beq	$r10,$r16,60(0x3c) # 1c000a4c <shell18_main+0x1bc>
1c000a14:	02801411 	addi.w	$r17,$r0,5(0x5)
1c000a18:	58002151 	beq	$r10,$r17,32(0x20) # 1c000a38 <shell18_main+0x1a8>
1c000a1c:	02801812 	addi.w	$r18,$r0,6(0x6)
1c000a20:	5c01c952 	bne	$r10,$r18,456(0x1c8) # 1c000be8 <shell18_main+0x358>
1c000a24:	001503c6 	move	$r6,$r30
1c000a28:	001502e5 	move	$r5,$r23
1c000a2c:	00150304 	move	$r4,$r24
1c000a30:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c000a34:	54107c00 	bl	4220(0x107c) # 1c001ab0 <memcpy>
1c000a38:	001503c6 	move	$r6,$r30
1c000a3c:	001502e5 	move	$r5,$r23
1c000a40:	00150304 	move	$r4,$r24
1c000a44:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c000a48:	54106800 	bl	4200(0x1068) # 1c001ab0 <memcpy>
1c000a4c:	001503c6 	move	$r6,$r30
1c000a50:	001502e5 	move	$r5,$r23
1c000a54:	00150304 	move	$r4,$r24
1c000a58:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c000a5c:	54105400 	bl	4180(0x1054) # 1c001ab0 <memcpy>
1c000a60:	001503c6 	move	$r6,$r30
1c000a64:	001502e5 	move	$r5,$r23
1c000a68:	00150304 	move	$r4,$r24
1c000a6c:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c000a70:	54104000 	bl	4160(0x1040) # 1c001ab0 <memcpy>
1c000a74:	001503c6 	move	$r6,$r30
1c000a78:	001502e5 	move	$r5,$r23
1c000a7c:	00150304 	move	$r4,$r24
1c000a80:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c000a84:	54102c00 	bl	4140(0x102c) # 1c001ab0 <memcpy>
1c000a88:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c000a8c:	001503c6 	move	$r6,$r30
1c000a90:	001502e5 	move	$r5,$r23
1c000a94:	00150304 	move	$r4,$r24
1c000a98:	54101800 	bl	4120(0x1018) # 1c001ab0 <memcpy>
1c000a9c:	58008f5f 	beq	$r26,$r31,140(0x8c) # 1c000b28 <shell18_main+0x298>
1c000aa0:	001503c6 	move	$r6,$r30
1c000aa4:	001502e5 	move	$r5,$r23
1c000aa8:	00150304 	move	$r4,$r24
1c000aac:	54100400 	bl	4100(0x1004) # 1c001ab0 <memcpy>
1c000ab0:	001503c6 	move	$r6,$r30
1c000ab4:	001502e5 	move	$r5,$r23
1c000ab8:	00150304 	move	$r4,$r24
1c000abc:	540ff400 	bl	4084(0xff4) # 1c001ab0 <memcpy>
1c000ac0:	001503c6 	move	$r6,$r30
1c000ac4:	001502e5 	move	$r5,$r23
1c000ac8:	00150304 	move	$r4,$r24
1c000acc:	540fe400 	bl	4068(0xfe4) # 1c001ab0 <memcpy>
1c000ad0:	001503c6 	move	$r6,$r30
1c000ad4:	001502e5 	move	$r5,$r23
1c000ad8:	00150304 	move	$r4,$r24
1c000adc:	540fd400 	bl	4052(0xfd4) # 1c001ab0 <memcpy>
1c000ae0:	001503c6 	move	$r6,$r30
1c000ae4:	001502e5 	move	$r5,$r23
1c000ae8:	00150304 	move	$r4,$r24
1c000aec:	540fc400 	bl	4036(0xfc4) # 1c001ab0 <memcpy>
1c000af0:	001503c6 	move	$r6,$r30
1c000af4:	001502e5 	move	$r5,$r23
1c000af8:	00150304 	move	$r4,$r24
1c000afc:	540fb400 	bl	4020(0xfb4) # 1c001ab0 <memcpy>
1c000b00:	001503c6 	move	$r6,$r30
1c000b04:	001502e5 	move	$r5,$r23
1c000b08:	00150304 	move	$r4,$r24
1c000b0c:	540fa400 	bl	4004(0xfa4) # 1c001ab0 <memcpy>
1c000b10:	0280235a 	addi.w	$r26,$r26,8(0x8)
1c000b14:	001503c6 	move	$r6,$r30
1c000b18:	001502e5 	move	$r5,$r23
1c000b1c:	00150304 	move	$r4,$r24
1c000b20:	540f9000 	bl	3984(0xf90) # 1c001ab0 <memcpy>
1c000b24:	5fff7f5f 	bne	$r26,$r31,-132(0x3ff7c) # 1c000aa0 <shell18_main+0x210>
1c000b28:	54116800 	bl	4456(0x1168) # 1c001c90 <get_clock>
1c000b2c:	14000073 	lu12i.w	$r19,3(0x3)
1c000b30:	0015009c 	move	$r28,$r4
1c000b34:	001502e5 	move	$r5,$r23
1c000b38:	1c000ffd 	pcaddu12i	$r29,127(0x7f)
1c000b3c:	289c93bd 	ld.w	$r29,$r29,1828(0x724)
1c000b40:	03880266 	ori	$r6,$r19,0x200
1c000b44:	00150304 	move	$r4,$r24
1c000b48:	298003bc 	st.w	$r28,$r29,0
1c000b4c:	540ff400 	bl	4084(0xff4) # 1c001b40 <memcmp>
1c000b50:	00150097 	move	$r23,$r4
1c000b54:	5c007480 	bne	$r4,$r0,116(0x74) # 1c000bc8 <shell18_main+0x338>
1c000b58:	28800374 	ld.w	$r20,$r27,0
1c000b5c:	14001e8d 	lu12i.w	$r13,244(0xf4)
1c000b60:	038901a1 	ori	$r1,$r13,0x240
1c000b64:	00115398 	sub.w	$r24,$r28,$r20
1c000b68:	03b20006 	ori	$r6,$r0,0xc80
1c000b6c:	00210707 	div.wu	$r7,$r24,$r1
1c000b70:	5c000820 	bne	$r1,$r0,8(0x8) # 1c000b78 <shell18_main+0x2e8>
1c000b74:	002a0007 	break	0x7
1c000b78:	1c000fe5 	pcaddu12i	$r5,127(0x7f)
1c000b7c:	0292c0a5 	addi.w	$r5,$r5,1200(0x4b0)
1c000b80:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000b84:	02924084 	addi.w	$r4,$r4,1168(0x490)
1c000b88:	54091800 	bl	2328(0x918) # 1c0014a0 <printf>
1c000b8c:	02bf42c3 	addi.w	$r3,$r22,-48(0xfd0)
1c000b90:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c000b94:	001502e4 	move	$r4,$r23
1c000b98:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c000b9c:	28809077 	ld.w	$r23,$r3,36(0x24)
1c000ba0:	28808078 	ld.w	$r24,$r3,32(0x20)
1c000ba4:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c000ba8:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c000bac:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c000bb0:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c000bb4:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c000bb8:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c000bbc:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c000bc0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c000bc4:	4c000020 	jirl	$r0,$r1,0
1c000bc8:	1c000fe5 	pcaddu12i	$r5,127(0x7f)
1c000bcc:	029180a5 	addi.w	$r5,$r5,1120(0x460)
1c000bd0:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000bd4:	0290c084 	addi.w	$r4,$r4,1072(0x430)
1c000bd8:	5408c800 	bl	2248(0x8c8) # 1c0014a0 <printf>
1c000bdc:	02800417 	addi.w	$r23,$r0,1(0x1)
1c000be0:	288003bc 	ld.w	$r28,$r29,0
1c000be4:	53ff77ff 	b	-140(0xfffff74) # 1c000b58 <shell18_main+0x2c8>
1c000be8:	001503c6 	move	$r6,$r30
1c000bec:	001502e5 	move	$r5,$r23
1c000bf0:	00150304 	move	$r4,$r24
1c000bf4:	0280041a 	addi.w	$r26,$r0,1(0x1)
1c000bf8:	540eb800 	bl	3768(0xeb8) # 1c001ab0 <memcpy>
1c000bfc:	53fe2bff 	b	-472(0xffffe28) # 1c000a24 <shell18_main+0x194>

1c000c00 <shell18>:
shell18():
1c000c00:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c000c04:	29817061 	st.w	$r1,$r3,92(0x5c)
1c000c08:	29816076 	st.w	$r22,$r3,88(0x58)
1c000c0c:	29815077 	st.w	$r23,$r3,84(0x54)
1c000c10:	02818076 	addi.w	$r22,$r3,96(0x60)
1c000c14:	29814078 	st.w	$r24,$r3,80(0x50)
1c000c18:	29813079 	st.w	$r25,$r3,76(0x4c)
1c000c1c:	2981207a 	st.w	$r26,$r3,72(0x48)
1c000c20:	2981107b 	st.w	$r27,$r3,68(0x44)
1c000c24:	2981007c 	st.w	$r28,$r3,64(0x40)
1c000c28:	2980f07d 	st.w	$r29,$r3,60(0x3c)
1c000c2c:	2980e07e 	st.w	$r30,$r3,56(0x38)
1c000c30:	2980d07f 	st.w	$r31,$r3,52(0x34)
1c000c34:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000c38:	02904084 	addi.w	$r4,$r4,1040(0x410)
1c000c3c:	540b8400 	bl	2948(0xb84) # 1c0017c0 <puts>
1c000c40:	540f8000 	bl	3968(0xf80) # 1c001bc0 <get_count>
1c000c44:	29bea2c4 	st.w	$r4,$r22,-88(0xfa8)
1c000c48:	540fa800 	bl	4008(0xfa8) # 1c001bf0 <get_count_my>
1c000c4c:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c000c50:	29be92c4 	st.w	$r4,$r22,-92(0xfa4)
1c000c54:	03bc8184 	ori	$r4,$r12,0xf20
1c000c58:	28800085 	ld.w	$r5,$r4,0
1c000c5c:	5c04e4a0 	bne	$r5,$r0,1252(0x4e4) # 1c001140 <shell18+0x540>
1c000c60:	14001e81 	lu12i.w	$r1,244(0xf4)
1c000c64:	15ffff9c 	lu12i.w	$r28,-4(0xffffc)
1c000c68:	14000079 	lu12i.w	$r25,3(0x3)
1c000c6c:	03890026 	ori	$r6,$r1,0x240
1c000c70:	0280281b 	addi.w	$r27,$r0,10(0xa)
1c000c74:	29beb2c0 	st.w	$r0,$r22,-84(0xfac)
1c000c78:	1c000fff 	pcaddu12i	$r31,127(0x7f)
1c000c7c:	029743ff 	addi.w	$r31,$r31,1488(0x5d0)
1c000c80:	1c000ffe 	pcaddu12i	$r30,127(0x7f)
1c000c84:	289783de 	ld.w	$r30,$r30,1504(0x5e0)
1c000c88:	03b8039c 	ori	$r28,$r28,0xe00
1c000c8c:	03880339 	ori	$r25,$r25,0x200
1c000c90:	29bec2c6 	st.w	$r6,$r22,-80(0xfb0)
1c000c94:	288003e7 	ld.w	$r7,$r31,0
1c000c98:	29bed2c3 	st.w	$r3,$r22,-76(0xfb4)
1c000c9c:	00107063 	add.w	$r3,$r3,$r28
1c000ca0:	00150077 	move	$r23,$r3
1c000ca4:	001066e8 	add.w	$r8,$r23,$r25
1c000ca8:	00107063 	add.w	$r3,$r3,$r28
1c000cac:	0281ece4 	addi.w	$r4,$r7,123(0x7b)
1c000cb0:	00150078 	move	$r24,$r3
1c000cb4:	29bee2c8 	st.w	$r8,$r22,-72(0xfb8)
1c000cb8:	001502fd 	move	$r29,$r23
1c000cbc:	54108400 	bl	4228(0x1084) # 1c001d40 <srand>
1c000cc0:	54104000 	bl	4160(0x1040) # 1c001d00 <rand>
1c000cc4:	028023b2 	addi.w	$r18,$r29,8(0x8)
1c000cc8:	028033b1 	addi.w	$r17,$r29,12(0xc)
1c000ccc:	028043b0 	addi.w	$r16,$r29,16(0x10)
1c000cd0:	028053af 	addi.w	$r15,$r29,20(0x14)
1c000cd4:	028063ae 	addi.w	$r14,$r29,24(0x18)
1c000cd8:	298003a4 	st.w	$r4,$r29,0
1c000cdc:	29bef2d2 	st.w	$r18,$r22,-68(0xfbc)
1c000ce0:	29bf02d1 	st.w	$r17,$r22,-64(0xfc0)
1c000ce4:	29bf12d0 	st.w	$r16,$r22,-60(0xfc4)
1c000ce8:	29bf22cf 	st.w	$r15,$r22,-56(0xfc8)
1c000cec:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c000cf0:	54101000 	bl	4112(0x1010) # 1c001d00 <rand>
1c000cf4:	28bef2c9 	ld.w	$r9,$r22,-68(0xfbc)
1c000cf8:	028073ba 	addi.w	$r26,$r29,28(0x1c)
1c000cfc:	028083bd 	addi.w	$r29,$r29,32(0x20)
1c000d00:	29bff124 	st.w	$r4,$r9,-4(0xffc)
1c000d04:	540ffc00 	bl	4092(0xffc) # 1c001d00 <rand>
1c000d08:	28bf02ca 	ld.w	$r10,$r22,-64(0xfc0)
1c000d0c:	29bff144 	st.w	$r4,$r10,-4(0xffc)
1c000d10:	540ff000 	bl	4080(0xff0) # 1c001d00 <rand>
1c000d14:	28bf12cb 	ld.w	$r11,$r22,-60(0xfc4)
1c000d18:	29bff164 	st.w	$r4,$r11,-4(0xffc)
1c000d1c:	540fe400 	bl	4068(0xfe4) # 1c001d00 <rand>
1c000d20:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c000d24:	29bff1a4 	st.w	$r4,$r13,-4(0xffc)
1c000d28:	540fd800 	bl	4056(0xfd8) # 1c001d00 <rand>
1c000d2c:	28bf32d3 	ld.w	$r19,$r22,-52(0xfcc)
1c000d30:	29bff264 	st.w	$r4,$r19,-4(0xffc)
1c000d34:	540fcc00 	bl	4044(0xfcc) # 1c001d00 <rand>
1c000d38:	29bff344 	st.w	$r4,$r26,-4(0xffc)
1c000d3c:	540fc400 	bl	4036(0xfc4) # 1c001d00 <rand>
1c000d40:	28bee2d4 	ld.w	$r20,$r22,-72(0xfb8)
1c000d44:	29bff3a4 	st.w	$r4,$r29,-4(0xffc)
1c000d48:	5fff7a9d 	bne	$r20,$r29,-136(0x3ff78) # 1c000cc0 <shell18+0xc0>
1c000d4c:	0010670c 	add.w	$r12,$r24,$r25
1c000d50:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c000d54:	0015031d 	move	$r29,$r24
1c000d58:	540fa800 	bl	4008(0xfa8) # 1c001d00 <rand>
1c000d5c:	028023a5 	addi.w	$r5,$r29,8(0x8)
1c000d60:	028033a6 	addi.w	$r6,$r29,12(0xc)
1c000d64:	028053a7 	addi.w	$r7,$r29,20(0x14)
1c000d68:	028063a8 	addi.w	$r8,$r29,24(0x18)
1c000d6c:	298003a4 	st.w	$r4,$r29,0
1c000d70:	028043a4 	addi.w	$r4,$r29,16(0x10)
1c000d74:	29bef2c5 	st.w	$r5,$r22,-68(0xfbc)
1c000d78:	29bf02c6 	st.w	$r6,$r22,-64(0xfc0)
1c000d7c:	29bf22c7 	st.w	$r7,$r22,-56(0xfc8)
1c000d80:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c000d84:	29bf12c4 	st.w	$r4,$r22,-60(0xfc4)
1c000d88:	540f7800 	bl	3960(0xf78) # 1c001d00 <rand>
1c000d8c:	28bef2d2 	ld.w	$r18,$r22,-68(0xfbc)
1c000d90:	028073ba 	addi.w	$r26,$r29,28(0x1c)
1c000d94:	028083bd 	addi.w	$r29,$r29,32(0x20)
1c000d98:	29bff244 	st.w	$r4,$r18,-4(0xffc)
1c000d9c:	540f6400 	bl	3940(0xf64) # 1c001d00 <rand>
1c000da0:	28bf02d1 	ld.w	$r17,$r22,-64(0xfc0)
1c000da4:	29bff224 	st.w	$r4,$r17,-4(0xffc)
1c000da8:	540f5800 	bl	3928(0xf58) # 1c001d00 <rand>
1c000dac:	28bf12d0 	ld.w	$r16,$r22,-60(0xfc4)
1c000db0:	29bff204 	st.w	$r4,$r16,-4(0xffc)
1c000db4:	540f4c00 	bl	3916(0xf4c) # 1c001d00 <rand>
1c000db8:	28bf22cf 	ld.w	$r15,$r22,-56(0xfc8)
1c000dbc:	29bff1e4 	st.w	$r4,$r15,-4(0xffc)
1c000dc0:	540f4000 	bl	3904(0xf40) # 1c001d00 <rand>
1c000dc4:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c000dc8:	29bff1c4 	st.w	$r4,$r14,-4(0xffc)
1c000dcc:	540f3400 	bl	3892(0xf34) # 1c001d00 <rand>
1c000dd0:	29bff344 	st.w	$r4,$r26,-4(0xffc)
1c000dd4:	540f2c00 	bl	3884(0xf2c) # 1c001d00 <rand>
1c000dd8:	28bee2c9 	ld.w	$r9,$r22,-72(0xfb8)
1c000ddc:	29bff3a4 	st.w	$r4,$r29,-4(0xffc)
1c000de0:	5fff793d 	bne	$r9,$r29,-136(0x3ff78) # 1c000d58 <shell18+0x158>
1c000de4:	540eac00 	bl	3756(0xeac) # 1c001c90 <get_clock>
1c000de8:	1c000fea 	pcaddu12i	$r10,127(0x7f)
1c000dec:	0291a14a 	addi.w	$r10,$r10,1128(0x468)
1c000df0:	2880015a 	ld.w	$r26,$r10,0
1c000df4:	298003c4 	st.w	$r4,$r30,0
1c000df8:	0015001d 	move	$r29,$r0
1c000dfc:	6401541a 	bge	$r0,$r26,340(0x154) # 1c000f50 <shell18+0x350>
1c000e00:	03401f41 	andi	$r1,$r26,0x7
1c000e04:	5800c420 	beq	$r1,$r0,196(0xc4) # 1c000ec8 <shell18+0x2c8>
1c000e08:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c000e0c:	5800a42b 	beq	$r1,$r11,164(0xa4) # 1c000eb0 <shell18+0x2b0>
1c000e10:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c000e14:	5800882d 	beq	$r1,$r13,136(0x88) # 1c000e9c <shell18+0x29c>
1c000e18:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c000e1c:	58006c33 	beq	$r1,$r19,108(0x6c) # 1c000e88 <shell18+0x288>
1c000e20:	02801014 	addi.w	$r20,$r0,4(0x4)
1c000e24:	58005034 	beq	$r1,$r20,80(0x50) # 1c000e74 <shell18+0x274>
1c000e28:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c000e2c:	5800342c 	beq	$r1,$r12,52(0x34) # 1c000e60 <shell18+0x260>
1c000e30:	02801805 	addi.w	$r5,$r0,6(0x6)
1c000e34:	58001825 	beq	$r1,$r5,24(0x18) # 1c000e4c <shell18+0x24c>
1c000e38:	00150326 	move	$r6,$r25
1c000e3c:	001502e5 	move	$r5,$r23
1c000e40:	00150304 	move	$r4,$r24
1c000e44:	540c6c00 	bl	3180(0xc6c) # 1c001ab0 <memcpy>
1c000e48:	0280041d 	addi.w	$r29,$r0,1(0x1)
1c000e4c:	00150326 	move	$r6,$r25
1c000e50:	001502e5 	move	$r5,$r23
1c000e54:	00150304 	move	$r4,$r24
1c000e58:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c000e5c:	540c5400 	bl	3156(0xc54) # 1c001ab0 <memcpy>
1c000e60:	00150326 	move	$r6,$r25
1c000e64:	001502e5 	move	$r5,$r23
1c000e68:	00150304 	move	$r4,$r24
1c000e6c:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c000e70:	540c4000 	bl	3136(0xc40) # 1c001ab0 <memcpy>
1c000e74:	00150326 	move	$r6,$r25
1c000e78:	001502e5 	move	$r5,$r23
1c000e7c:	00150304 	move	$r4,$r24
1c000e80:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c000e84:	540c2c00 	bl	3116(0xc2c) # 1c001ab0 <memcpy>
1c000e88:	00150326 	move	$r6,$r25
1c000e8c:	001502e5 	move	$r5,$r23
1c000e90:	00150304 	move	$r4,$r24
1c000e94:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c000e98:	540c1800 	bl	3096(0xc18) # 1c001ab0 <memcpy>
1c000e9c:	00150326 	move	$r6,$r25
1c000ea0:	001502e5 	move	$r5,$r23
1c000ea4:	00150304 	move	$r4,$r24
1c000ea8:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c000eac:	540c0400 	bl	3076(0xc04) # 1c001ab0 <memcpy>
1c000eb0:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c000eb4:	00150326 	move	$r6,$r25
1c000eb8:	001502e5 	move	$r5,$r23
1c000ebc:	00150304 	move	$r4,$r24
1c000ec0:	540bf000 	bl	3056(0xbf0) # 1c001ab0 <memcpy>
1c000ec4:	58008fba 	beq	$r29,$r26,140(0x8c) # 1c000f50 <shell18+0x350>
1c000ec8:	00150326 	move	$r6,$r25
1c000ecc:	001502e5 	move	$r5,$r23
1c000ed0:	00150304 	move	$r4,$r24
1c000ed4:	540bdc00 	bl	3036(0xbdc) # 1c001ab0 <memcpy>
1c000ed8:	00150326 	move	$r6,$r25
1c000edc:	001502e5 	move	$r5,$r23
1c000ee0:	00150304 	move	$r4,$r24
1c000ee4:	540bcc00 	bl	3020(0xbcc) # 1c001ab0 <memcpy>
1c000ee8:	00150326 	move	$r6,$r25
1c000eec:	001502e5 	move	$r5,$r23
1c000ef0:	00150304 	move	$r4,$r24
1c000ef4:	540bbc00 	bl	3004(0xbbc) # 1c001ab0 <memcpy>
1c000ef8:	00150326 	move	$r6,$r25
1c000efc:	001502e5 	move	$r5,$r23
1c000f00:	00150304 	move	$r4,$r24
1c000f04:	540bac00 	bl	2988(0xbac) # 1c001ab0 <memcpy>
1c000f08:	00150326 	move	$r6,$r25
1c000f0c:	001502e5 	move	$r5,$r23
1c000f10:	00150304 	move	$r4,$r24
1c000f14:	540b9c00 	bl	2972(0xb9c) # 1c001ab0 <memcpy>
1c000f18:	00150326 	move	$r6,$r25
1c000f1c:	001502e5 	move	$r5,$r23
1c000f20:	00150304 	move	$r4,$r24
1c000f24:	540b8c00 	bl	2956(0xb8c) # 1c001ab0 <memcpy>
1c000f28:	00150326 	move	$r6,$r25
1c000f2c:	001502e5 	move	$r5,$r23
1c000f30:	00150304 	move	$r4,$r24
1c000f34:	540b7c00 	bl	2940(0xb7c) # 1c001ab0 <memcpy>
1c000f38:	028023bd 	addi.w	$r29,$r29,8(0x8)
1c000f3c:	00150326 	move	$r6,$r25
1c000f40:	001502e5 	move	$r5,$r23
1c000f44:	00150304 	move	$r4,$r24
1c000f48:	540b6800 	bl	2920(0xb68) # 1c001ab0 <memcpy>
1c000f4c:	5fff7fba 	bne	$r29,$r26,-132(0x3ff7c) # 1c000ec8 <shell18+0x2c8>
1c000f50:	540d4000 	bl	3392(0xd40) # 1c001c90 <get_clock>
1c000f54:	0015009a 	move	$r26,$r4
1c000f58:	001502e5 	move	$r5,$r23
1c000f5c:	00150326 	move	$r6,$r25
1c000f60:	1c000ff7 	pcaddu12i	$r23,127(0x7f)
1c000f64:	288bf2f7 	ld.w	$r23,$r23,764(0x2fc)
1c000f68:	00150304 	move	$r4,$r24
1c000f6c:	298002fa 	st.w	$r26,$r23,0
1c000f70:	540bd000 	bl	3024(0xbd0) # 1c001b40 <memcmp>
1c000f74:	5c011080 	bne	$r4,$r0,272(0x110) # 1c001084 <shell18+0x484>
1c000f78:	288003d8 	ld.w	$r24,$r30,0
1c000f7c:	28bec2c8 	ld.w	$r8,$r22,-80(0xfb0)
1c000f80:	03b20006 	ori	$r6,$r0,0xc80
1c000f84:	00116347 	sub.w	$r7,$r26,$r24
1c000f88:	002120f2 	div.wu	$r18,$r7,$r8
1c000f8c:	5c000900 	bne	$r8,$r0,8(0x8) # 1c000f94 <shell18+0x394>
1c000f90:	002a0007 	break	0x7
1c000f94:	1c000fe5 	pcaddu12i	$r5,127(0x7f)
1c000f98:	028250a5 	addi.w	$r5,$r5,148(0x94)
1c000f9c:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000fa0:	0281d084 	addi.w	$r4,$r4,116(0x74)
1c000fa4:	00150247 	move	$r7,$r18
1c000fa8:	02bfff7b 	addi.w	$r27,$r27,-1(0xfff)
1c000fac:	5404f400 	bl	1268(0x4f4) # 1c0014a0 <printf>
1c000fb0:	28bed2c3 	ld.w	$r3,$r22,-76(0xfb4)
1c000fb4:	5ffce360 	bne	$r27,$r0,-800(0x3fce0) # 1c000c94 <shell18+0x94>
1c000fb8:	540c3800 	bl	3128(0xc38) # 1c001bf0 <get_count_my>
1c000fbc:	00150099 	move	$r25,$r4
1c000fc0:	540c0000 	bl	3072(0xc00) # 1c001bc0 <get_count>
1c000fc4:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c000fc8:	28bea2c5 	ld.w	$r5,$r22,-88(0xfa8)
1c000fcc:	28beb2c6 	ld.w	$r6,$r22,-84(0xfac)
1c000fd0:	0011333c 	sub.w	$r28,$r25,$r12
1c000fd4:	0011149d 	sub.w	$r29,$r4,$r5
1c000fd8:	5c0130c0 	bne	$r6,$r0,304(0x130) # 1c001108 <shell18+0x508>
1c000fdc:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000fe0:	02821084 	addi.w	$r4,$r4,132(0x84)
1c000fe4:	5407dc00 	bl	2012(0x7dc) # 1c0017c0 <puts>
1c000fe8:	157f5ffe 	lu12i.w	$r30,-263425(0xbfaff)
1c000fec:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000ff0:	038103ca 	ori	$r10,$r30,0x40
1c000ff4:	2980014e 	st.w	$r14,$r10,0
1c000ff8:	140001e9 	lu12i.w	$r9,15(0xf)
1c000ffc:	0380c3cb 	ori	$r11,$r30,0x30
1c001000:	038083db 	ori	$r27,$r30,0x20
1c001004:	03bffd2d 	ori	$r13,$r9,0xfff
1c001008:	2980016e 	st.w	$r14,$r11,0
1c00100c:	2980036d 	st.w	$r13,$r27,0
1c001010:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c001014:	03814038 	ori	$r24,$r1,0x50
1c001018:	2980031c 	st.w	$r28,$r24,0
1c00101c:	157f5f17 	lu12i.w	$r23,-263432(0xbfaf8)
1c001020:	038042f3 	ori	$r19,$r23,0x10
1c001024:	298002fc 	st.w	$r28,$r23,0
1c001028:	001503a5 	move	$r5,$r29
1c00102c:	2980027d 	st.w	$r29,$r19,0
1c001030:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001034:	02818084 	addi.w	$r4,$r4,96(0x60)
1c001038:	54046800 	bl	1128(0x468) # 1c0014a0 <printf>
1c00103c:	00150385 	move	$r5,$r28
1c001040:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001044:	02820084 	addi.w	$r4,$r4,128(0x80)
1c001048:	54045800 	bl	1112(0x458) # 1c0014a0 <printf>
1c00104c:	02be82c3 	addi.w	$r3,$r22,-96(0xfa0)
1c001050:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c001054:	28816076 	ld.w	$r22,$r3,88(0x58)
1c001058:	28815077 	ld.w	$r23,$r3,84(0x54)
1c00105c:	28814078 	ld.w	$r24,$r3,80(0x50)
1c001060:	28813079 	ld.w	$r25,$r3,76(0x4c)
1c001064:	2881207a 	ld.w	$r26,$r3,72(0x48)
1c001068:	2881107b 	ld.w	$r27,$r3,68(0x44)
1c00106c:	2881007c 	ld.w	$r28,$r3,64(0x40)
1c001070:	2880f07d 	ld.w	$r29,$r3,60(0x3c)
1c001074:	2880e07e 	ld.w	$r30,$r3,56(0x38)
1c001078:	2880d07f 	ld.w	$r31,$r3,52(0x34)
1c00107c:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001080:	4c000020 	jirl	$r0,$r1,0
1c001084:	28beb2c6 	ld.w	$r6,$r22,-84(0xfac)
1c001088:	1c000fe5 	pcaddu12i	$r5,127(0x7f)
1c00108c:	02be80a5 	addi.w	$r5,$r5,-96(0xfa0)
1c001090:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001094:	02bdc084 	addi.w	$r4,$r4,-144(0xf70)
1c001098:	028004d1 	addi.w	$r17,$r6,1(0x1)
1c00109c:	29beb2d1 	st.w	$r17,$r22,-84(0xfac)
1c0010a0:	54040000 	bl	1024(0x400) # 1c0014a0 <printf>
1c0010a4:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0010a8:	2886e084 	ld.w	$r4,$r4,440(0x1b8)
1c0010ac:	28800090 	ld.w	$r16,$r4,0
1c0010b0:	288003cf 	ld.w	$r15,$r30,0
1c0010b4:	28bec2c9 	ld.w	$r9,$r22,-80(0xfb0)
1c0010b8:	03b20006 	ori	$r6,$r0,0xc80
1c0010bc:	00113e0e 	sub.w	$r14,$r16,$r15
1c0010c0:	1c000fe5 	pcaddu12i	$r5,127(0x7f)
1c0010c4:	02bda0a5 	addi.w	$r5,$r5,-152(0xf68)
1c0010c8:	002125c7 	div.wu	$r7,$r14,$r9
1c0010cc:	5c000920 	bne	$r9,$r0,8(0x8) # 1c0010d4 <shell18+0x4d4>
1c0010d0:	002a0007 	break	0x7
1c0010d4:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0010d8:	02bcf084 	addi.w	$r4,$r4,-196(0xf3c)
1c0010dc:	02bfff7b 	addi.w	$r27,$r27,-1(0xfff)
1c0010e0:	5403c000 	bl	960(0x3c0) # 1c0014a0 <printf>
1c0010e4:	28bed2c3 	ld.w	$r3,$r22,-76(0xfb4)
1c0010e8:	5ffbaf60 	bne	$r27,$r0,-1108(0x3fbac) # 1c000c94 <shell18+0x94>
1c0010ec:	540b0400 	bl	2820(0xb04) # 1c001bf0 <get_count_my>
1c0010f0:	0015009f 	move	$r31,$r4
1c0010f4:	540acc00 	bl	2764(0xacc) # 1c001bc0 <get_count>
1c0010f8:	28be92de 	ld.w	$r30,$r22,-92(0xfa4)
1c0010fc:	28bea2d9 	ld.w	$r25,$r22,-88(0xfa8)
1c001100:	00117bfc 	sub.w	$r28,$r31,$r30
1c001104:	0011649d 	sub.w	$r29,$r4,$r25
1c001108:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c00110c:	02bdc084 	addi.w	$r4,$r4,-144(0xf70)
1c001110:	5406b000 	bl	1712(0x6b0) # 1c0017c0 <puts>
1c001114:	157f5ff1 	lu12i.w	$r17,-263425(0xbfaff)
1c001118:	02800410 	addi.w	$r16,$r0,1(0x1)
1c00111c:	0381023f 	ori	$r31,$r17,0x40
1c001120:	298003f0 	st.w	$r16,$r31,0
1c001124:	0280081a 	addi.w	$r26,$r0,2(0x2)
1c001128:	0380c224 	ori	$r4,$r17,0x30
1c00112c:	0380822f 	ori	$r15,$r17,0x20
1c001130:	2980009a 	st.w	$r26,$r4,0
1c001134:	298001e0 	st.w	$r0,$r15,0
1c001138:	53fedbff 	b	-296(0xffffed8) # 1c001010 <shell18+0x410>
1c00113c:	03400000 	andi	$r0,$r0,0x0
1c001140:	1c000fea 	pcaddu12i	$r10,127(0x7f)
1c001144:	0284214a 	addi.w	$r10,$r10,264(0x108)
1c001148:	15ffff81 	lu12i.w	$r1,-4(0xffffc)
1c00114c:	2880014b 	ld.w	$r11,$r10,0
1c001150:	03b8002d 	ori	$r13,$r1,0xe00
1c001154:	29bf22c3 	st.w	$r3,$r22,-56(0xfc8)
1c001158:	00103463 	add.w	$r3,$r3,$r13
1c00115c:	00150077 	move	$r23,$r3
1c001160:	0281ed64 	addi.w	$r4,$r11,123(0x7b)
1c001164:	00103463 	add.w	$r3,$r3,$r13
1c001168:	540bd800 	bl	3032(0xbd8) # 1c001d40 <srand>
1c00116c:	14000073 	lu12i.w	$r19,3(0x3)
1c001170:	03880274 	ori	$r20,$r19,0x200
1c001174:	00150078 	move	$r24,$r3
1c001178:	001502f9 	move	$r25,$r23
1c00117c:	001052fb 	add.w	$r27,$r23,$r20
1c001180:	540b8000 	bl	2944(0xb80) # 1c001d00 <rand>
1c001184:	0280232c 	addi.w	$r12,$r25,8(0x8)
1c001188:	29800324 	st.w	$r4,$r25,0
1c00118c:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c001190:	540b7000 	bl	2928(0xb70) # 1c001d00 <rand>
1c001194:	28bf32c5 	ld.w	$r5,$r22,-52(0xfcc)
1c001198:	0280333a 	addi.w	$r26,$r25,12(0xc)
1c00119c:	0280433f 	addi.w	$r31,$r25,16(0x10)
1c0011a0:	29bff0a4 	st.w	$r4,$r5,-4(0xffc)
1c0011a4:	540b5c00 	bl	2908(0xb5c) # 1c001d00 <rand>
1c0011a8:	29bff344 	st.w	$r4,$r26,-4(0xffc)
1c0011ac:	540b5400 	bl	2900(0xb54) # 1c001d00 <rand>
1c0011b0:	29bff3e4 	st.w	$r4,$r31,-4(0xffc)
1c0011b4:	0280533e 	addi.w	$r30,$r25,20(0x14)
1c0011b8:	540b4800 	bl	2888(0xb48) # 1c001d00 <rand>
1c0011bc:	29bff3c4 	st.w	$r4,$r30,-4(0xffc)
1c0011c0:	0280633d 	addi.w	$r29,$r25,24(0x18)
1c0011c4:	540b3c00 	bl	2876(0xb3c) # 1c001d00 <rand>
1c0011c8:	29bff3a4 	st.w	$r4,$r29,-4(0xffc)
1c0011cc:	0280733c 	addi.w	$r28,$r25,28(0x1c)
1c0011d0:	540b3000 	bl	2864(0xb30) # 1c001d00 <rand>
1c0011d4:	29bff384 	st.w	$r4,$r28,-4(0xffc)
1c0011d8:	02808339 	addi.w	$r25,$r25,32(0x20)
1c0011dc:	540b2400 	bl	2852(0xb24) # 1c001d00 <rand>
1c0011e0:	29bff324 	st.w	$r4,$r25,-4(0xffc)
1c0011e4:	5fff9f79 	bne	$r27,$r25,-100(0x3ff9c) # 1c001180 <shell18+0x580>
1c0011e8:	14000068 	lu12i.w	$r8,3(0x3)
1c0011ec:	03880112 	ori	$r18,$r8,0x200
1c0011f0:	00104b06 	add.w	$r6,$r24,$r18
1c0011f4:	00150319 	move	$r25,$r24
1c0011f8:	29bf32c6 	st.w	$r6,$r22,-52(0xfcc)
1c0011fc:	540b0400 	bl	2820(0xb04) # 1c001d00 <rand>
1c001200:	29800324 	st.w	$r4,$r25,0
1c001204:	0280233a 	addi.w	$r26,$r25,8(0x8)
1c001208:	540af800 	bl	2808(0xaf8) # 1c001d00 <rand>
1c00120c:	29bff344 	st.w	$r4,$r26,-4(0xffc)
1c001210:	0280333b 	addi.w	$r27,$r25,12(0xc)
1c001214:	540aec00 	bl	2796(0xaec) # 1c001d00 <rand>
1c001218:	29bff364 	st.w	$r4,$r27,-4(0xffc)
1c00121c:	0280433f 	addi.w	$r31,$r25,16(0x10)
1c001220:	540ae000 	bl	2784(0xae0) # 1c001d00 <rand>
1c001224:	29bff3e4 	st.w	$r4,$r31,-4(0xffc)
1c001228:	0280533e 	addi.w	$r30,$r25,20(0x14)
1c00122c:	540ad400 	bl	2772(0xad4) # 1c001d00 <rand>
1c001230:	29bff3c4 	st.w	$r4,$r30,-4(0xffc)
1c001234:	0280633d 	addi.w	$r29,$r25,24(0x18)
1c001238:	540ac800 	bl	2760(0xac8) # 1c001d00 <rand>
1c00123c:	29bff3a4 	st.w	$r4,$r29,-4(0xffc)
1c001240:	0280733c 	addi.w	$r28,$r25,28(0x1c)
1c001244:	540abc00 	bl	2748(0xabc) # 1c001d00 <rand>
1c001248:	29bff384 	st.w	$r4,$r28,-4(0xffc)
1c00124c:	540ab400 	bl	2740(0xab4) # 1c001d00 <rand>
1c001250:	28bf32d1 	ld.w	$r17,$r22,-52(0xfcc)
1c001254:	02808339 	addi.w	$r25,$r25,32(0x20)
1c001258:	29bff324 	st.w	$r4,$r25,-4(0xffc)
1c00125c:	5fffa331 	bne	$r25,$r17,-96(0x3ffa0) # 1c0011fc <shell18+0x5fc>
1c001260:	540a3000 	bl	2608(0xa30) # 1c001c90 <get_clock>
1c001264:	1c000ff0 	pcaddu12i	$r16,127(0x7f)
1c001268:	02bfb210 	addi.w	$r16,$r16,-20(0xfec)
1c00126c:	2880021f 	ld.w	$r31,$r16,0
1c001270:	1c000ffa 	pcaddu12i	$r26,127(0x7f)
1c001274:	28bfc35a 	ld.w	$r26,$r26,-16(0xff0)
1c001278:	29800344 	st.w	$r4,$r26,0
1c00127c:	0015001b 	move	$r27,$r0
1c001280:	6401481f 	bge	$r0,$r31,328(0x148) # 1c0013c8 <shell18+0x7c8>
1c001284:	14000064 	lu12i.w	$r4,3(0x3)
1c001288:	03401fef 	andi	$r15,$r31,0x7
1c00128c:	0388009e 	ori	$r30,$r4,0x200
1c001290:	5800b1e0 	beq	$r15,$r0,176(0xb0) # 1c001340 <shell18+0x740>
1c001294:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001298:	580091ee 	beq	$r15,$r14,144(0x90) # 1c001328 <shell18+0x728>
1c00129c:	02800809 	addi.w	$r9,$r0,2(0x2)
1c0012a0:	580075e9 	beq	$r15,$r9,116(0x74) # 1c001314 <shell18+0x714>
1c0012a4:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0012a8:	580059e7 	beq	$r15,$r7,88(0x58) # 1c001300 <shell18+0x700>
1c0012ac:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c0012b0:	58003dea 	beq	$r15,$r10,60(0x3c) # 1c0012ec <shell18+0x6ec>
1c0012b4:	02801401 	addi.w	$r1,$r0,5(0x5)
1c0012b8:	580021e1 	beq	$r15,$r1,32(0x20) # 1c0012d8 <shell18+0x6d8>
1c0012bc:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c0012c0:	5c01bdeb 	bne	$r15,$r11,444(0x1bc) # 1c00147c <shell18+0x87c>
1c0012c4:	001503c6 	move	$r6,$r30
1c0012c8:	001502e5 	move	$r5,$r23
1c0012cc:	00150304 	move	$r4,$r24
1c0012d0:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c0012d4:	5407dc00 	bl	2012(0x7dc) # 1c001ab0 <memcpy>
1c0012d8:	001503c6 	move	$r6,$r30
1c0012dc:	001502e5 	move	$r5,$r23
1c0012e0:	00150304 	move	$r4,$r24
1c0012e4:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c0012e8:	5407c800 	bl	1992(0x7c8) # 1c001ab0 <memcpy>
1c0012ec:	001503c6 	move	$r6,$r30
1c0012f0:	001502e5 	move	$r5,$r23
1c0012f4:	00150304 	move	$r4,$r24
1c0012f8:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c0012fc:	5407b400 	bl	1972(0x7b4) # 1c001ab0 <memcpy>
1c001300:	001503c6 	move	$r6,$r30
1c001304:	001502e5 	move	$r5,$r23
1c001308:	00150304 	move	$r4,$r24
1c00130c:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c001310:	5407a000 	bl	1952(0x7a0) # 1c001ab0 <memcpy>
1c001314:	001503c6 	move	$r6,$r30
1c001318:	001502e5 	move	$r5,$r23
1c00131c:	00150304 	move	$r4,$r24
1c001320:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c001324:	54078c00 	bl	1932(0x78c) # 1c001ab0 <memcpy>
1c001328:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c00132c:	001503c6 	move	$r6,$r30
1c001330:	001502e5 	move	$r5,$r23
1c001334:	00150304 	move	$r4,$r24
1c001338:	54077800 	bl	1912(0x778) # 1c001ab0 <memcpy>
1c00133c:	58008ffb 	beq	$r31,$r27,140(0x8c) # 1c0013c8 <shell18+0x7c8>
1c001340:	001503c6 	move	$r6,$r30
1c001344:	001502e5 	move	$r5,$r23
1c001348:	00150304 	move	$r4,$r24
1c00134c:	54076400 	bl	1892(0x764) # 1c001ab0 <memcpy>
1c001350:	001503c6 	move	$r6,$r30
1c001354:	001502e5 	move	$r5,$r23
1c001358:	00150304 	move	$r4,$r24
1c00135c:	54075400 	bl	1876(0x754) # 1c001ab0 <memcpy>
1c001360:	001503c6 	move	$r6,$r30
1c001364:	001502e5 	move	$r5,$r23
1c001368:	00150304 	move	$r4,$r24
1c00136c:	54074400 	bl	1860(0x744) # 1c001ab0 <memcpy>
1c001370:	001503c6 	move	$r6,$r30
1c001374:	001502e5 	move	$r5,$r23
1c001378:	00150304 	move	$r4,$r24
1c00137c:	54073400 	bl	1844(0x734) # 1c001ab0 <memcpy>
1c001380:	001503c6 	move	$r6,$r30
1c001384:	001502e5 	move	$r5,$r23
1c001388:	00150304 	move	$r4,$r24
1c00138c:	54072400 	bl	1828(0x724) # 1c001ab0 <memcpy>
1c001390:	001503c6 	move	$r6,$r30
1c001394:	001502e5 	move	$r5,$r23
1c001398:	00150304 	move	$r4,$r24
1c00139c:	54071400 	bl	1812(0x714) # 1c001ab0 <memcpy>
1c0013a0:	001503c6 	move	$r6,$r30
1c0013a4:	001502e5 	move	$r5,$r23
1c0013a8:	00150304 	move	$r4,$r24
1c0013ac:	54070400 	bl	1796(0x704) # 1c001ab0 <memcpy>
1c0013b0:	0280237b 	addi.w	$r27,$r27,8(0x8)
1c0013b4:	001503c6 	move	$r6,$r30
1c0013b8:	001502e5 	move	$r5,$r23
1c0013bc:	00150304 	move	$r4,$r24
1c0013c0:	5406f000 	bl	1776(0x6f0) # 1c001ab0 <memcpy>
1c0013c4:	5fff7ffb 	bne	$r31,$r27,-132(0x3ff7c) # 1c001340 <shell18+0x740>
1c0013c8:	5408c800 	bl	2248(0x8c8) # 1c001c90 <get_clock>
1c0013cc:	1400006d 	lu12i.w	$r13,3(0x3)
1c0013d0:	0015009c 	move	$r28,$r4
1c0013d4:	1c000ffd 	pcaddu12i	$r29,127(0x7f)
1c0013d8:	28ba23bd 	ld.w	$r29,$r29,-376(0xe88)
1c0013dc:	038801a6 	ori	$r6,$r13,0x200
1c0013e0:	001502e5 	move	$r5,$r23
1c0013e4:	00150304 	move	$r4,$r24
1c0013e8:	298003bc 	st.w	$r28,$r29,0
1c0013ec:	54075400 	bl	1876(0x754) # 1c001b40 <memcmp>
1c0013f0:	29beb2c4 	st.w	$r4,$r22,-84(0xfac)
1c0013f4:	5c006480 	bne	$r4,$r0,100(0x64) # 1c001458 <shell18+0x858>
1c0013f8:	28800353 	ld.w	$r19,$r26,0
1c0013fc:	14001e94 	lu12i.w	$r20,244(0xf4)
1c001400:	03b20006 	ori	$r6,$r0,0xc80
1c001404:	00114f92 	sub.w	$r18,$r28,$r19
1c001408:	1c000fe5 	pcaddu12i	$r5,127(0x7f)
1c00140c:	02b080a5 	addi.w	$r5,$r5,-992(0xc20)
1c001410:	03890288 	ori	$r8,$r20,0x240
1c001414:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001418:	02aff084 	addi.w	$r4,$r4,-1028(0xbfc)
1c00141c:	00212247 	div.wu	$r7,$r18,$r8
1c001420:	5c000900 	bne	$r8,$r0,8(0x8) # 1c001428 <shell18+0x828>
1c001424:	002a0007 	break	0x7
1c001428:	54007800 	bl	120(0x78) # 1c0014a0 <printf>
1c00142c:	28bf22c3 	ld.w	$r3,$r22,-56(0xfc8)
1c001430:	5407c000 	bl	1984(0x7c0) # 1c001bf0 <get_count_my>
1c001434:	00150099 	move	$r25,$r4
1c001438:	54078800 	bl	1928(0x788) # 1c001bc0 <get_count>
1c00143c:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c001440:	28bea2c5 	ld.w	$r5,$r22,-88(0xfa8)
1c001444:	28beb2c6 	ld.w	$r6,$r22,-84(0xfac)
1c001448:	0011333c 	sub.w	$r28,$r25,$r12
1c00144c:	0011149d 	sub.w	$r29,$r4,$r5
1c001450:	5bfb8cc0 	beq	$r6,$r0,-1140(0x3fb8c) # 1c000fdc <shell18+0x3dc>
1c001454:	53fcb7ff 	b	-844(0xffffcb4) # 1c001108 <shell18+0x508>
1c001458:	1c000fe5 	pcaddu12i	$r5,127(0x7f)
1c00145c:	02af40a5 	addi.w	$r5,$r5,-1072(0xbd0)
1c001460:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001464:	02ae8084 	addi.w	$r4,$r4,-1120(0xba0)
1c001468:	02800418 	addi.w	$r24,$r0,1(0x1)
1c00146c:	29beb2d8 	st.w	$r24,$r22,-84(0xfac)
1c001470:	54003000 	bl	48(0x30) # 1c0014a0 <printf>
1c001474:	288003bc 	ld.w	$r28,$r29,0
1c001478:	53ff83ff 	b	-128(0xfffff80) # 1c0013f8 <shell18+0x7f8>
1c00147c:	001503c6 	move	$r6,$r30
1c001480:	001502e5 	move	$r5,$r23
1c001484:	00150304 	move	$r4,$r24
1c001488:	0280041b 	addi.w	$r27,$r0,1(0x1)
1c00148c:	54062400 	bl	1572(0x624) # 1c001ab0 <memcpy>
1c001490:	53fe37ff 	b	-460(0xffffe34) # 1c0012c4 <shell18+0x6c4>
1c001494:	03400000 	andi	$r0,$r0,0x0
1c001498:	03400000 	andi	$r0,$r0,0x0
1c00149c:	03400000 	andi	$r0,$r0,0x0

1c0014a0 <printf>:
printf():
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
int printf(const char *fmt,...)
{
1c0014a0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c0014a4:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c0014a8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0014ac:	2980e077 	st.w	$r23,$r3,56(0x38)
1c0014b0:	2980d078 	st.w	$r24,$r3,52(0x34)
1c0014b4:	2980c079 	st.w	$r25,$r3,48(0x30)
1c0014b8:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c0014bc:	2980907c 	st.w	$r28,$r3,36(0x24)
1c0014c0:	29811065 	st.w	$r5,$r3,68(0x44)
1c0014c4:	29812066 	st.w	$r6,$r3,72(0x48)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c0014c8:	28000097 	ld.b	$r23,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c0014cc:	0281107a 	addi.w	$r26,$r3,68(0x44)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
{
1c0014d0:	29813067 	st.w	$r7,$r3,76(0x4c)
1c0014d4:	29814068 	st.w	$r8,$r3,80(0x50)
1c0014d8:	29815069 	st.w	$r9,$r3,84(0x54)
1c0014dc:	2981606a 	st.w	$r10,$r3,88(0x58)
1c0014e0:	2981706b 	st.w	$r11,$r3,92(0x5c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c0014e4:	2980707a 	st.w	$r26,$r3,28(0x1c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
for(i=0;fmt[i];i++)
1c0014e8:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c001570 <printf+0xd0>
1c0014ec:	00150099 	move	$r25,$r4
1c0014f0:	00150018 	move	$r24,$r0
1c0014f4:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c0014f8:	02aff39c 	addi.w	$r28,$r28,-1028(0xbfc)
1c0014fc:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c001500:	50001c00 	b	28(0x1c) # 1c00151c <printf+0x7c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c001504:	001502e4 	move	$r4,$r23
1c001508:	5401d800 	bl	472(0x1d8) # 1c0016e0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c00150c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c001510:	0010632c 	add.w	$r12,$r25,$r24
1c001514:	28000197 	ld.b	$r23,$r12,0
1c001518:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c001570 <printf+0xd0>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:13
	if(c=='%')
1c00151c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001520:	58001aec 	beq	$r23,$r12,24(0x18) # 1c001538 <printf+0x98>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c001524:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001528:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c001504 <printf+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79 (discriminator 1)
1c00152c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001530:	5401b000 	bl	432(0x1b0) # 1c0016e0 <putchar>
1c001534:	53ffd3ff 	b	-48(0xfffffd0) # 1c001504 <printf+0x64>
1c001538:	0010632c 	add.w	$r12,$r25,$r24
1c00153c:	2800058d 	ld.b	$r13,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:15
		w=1;
1c001540:	02800405 	addi.w	$r5,$r0,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c001544:	02814c10 	addi.w	$r16,$r0,83(0x53)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c001548:	0280280f 	addi.w	$r15,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c00154c:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c001550:	2980306c 	st.w	$r12,$r3,12(0xc)
1c001554:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c001558:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c0016d0 <printf+0x230>
1c00155c:	0040898c 	slli.w	$r12,$r12,0x2
1c001560:	0010338c 	add.w	$r12,$r28,$r12
1c001564:	2880018c 	ld.w	$r12,$r12,0
1c001568:	4c000180 	jirl	$r0,$r12,0
1c00156c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:84
	}
}
	return 0;
}
1c001570:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001574:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c001578:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c00157c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001580:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c001584:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c001588:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c00158c:	00150004 	move	$r4,$r0
1c001590:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001594:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:65
				i++;
1c001598:	0010632c 	add.w	$r12,$r25,$r24
1c00159c:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c0015a0:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c0015a4:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c0015a8:	2980306c 	st.w	$r12,$r3,12(0xc)
1c0015ac:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c0015b0:	00150005 	move	$r5,$r0
1c0015b4:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c00154c <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c0015b8:	001c3ca5 	mul.w	$r5,$r5,$r15
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c0015bc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0015c0:	0010632c 	add.w	$r12,$r25,$r24
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c0015c4:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c0015c8:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c0015cc:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c0015d0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c0015d4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c0015d8:	001015c5 	add.w	$r5,$r14,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c0015dc:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c0015b8 <printf+0x118>
1c0015e0:	53ff6fff 	b	-148(0xfffff6c) # 1c00154c <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c0015e4:	28800344 	ld.w	$r4,$r26,0
1c0015e8:	00150007 	move	$r7,$r0
1c0015ec:	02800806 	addi.w	$r6,$r0,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:51
				arg++;
1c0015f0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:52
				i++;
1c0015f4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c0015f8:	5401f800 	bl	504(0x1f8) # 1c0017f0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:53
				break;
1c0015fc:	53ff13ff 	b	-240(0xfffff10) # 1c00150c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c001600:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:27
				i++;
1c001604:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:26
				arg++;
1c001608:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c00160c:	5400d400 	bl	212(0xd4) # 1c0016e0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:28
				break;
1c001610:	53feffff 	b	-260(0xffffefc) # 1c00150c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c001614:	28800344 	ld.w	$r4,$r26,0
1c001618:	02800407 	addi.w	$r7,$r0,1(0x1)
1c00161c:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:36
				arg++;
1c001620:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:37
				i++;
1c001624:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c001628:	5401c800 	bl	456(0x1c8) # 1c0017f0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:38
				break;
1c00162c:	53fee3ff 	b	-288(0xffffee0) # 1c00150c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c001630:	28800344 	ld.w	$r4,$r26,0
1c001634:	00150007 	move	$r7,$r0
1c001638:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:41
                arg++;
1c00163c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:42
                i=i+2;
1c001640:	02800b18 	addi.w	$r24,$r24,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c001644:	5401ac00 	bl	428(0x1ac) # 1c0017f0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:43
                break;
1c001648:	53fec7ff 	b	-316(0xffffec4) # 1c00150c <printf+0x6c>
1c00164c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c001650:	28800344 	ld.w	$r4,$r26,0
1c001654:	00150007 	move	$r7,$r0
1c001658:	02802006 	addi.w	$r6,$r0,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:46
				arg++;
1c00165c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:47
				i++;
1c001660:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c001664:	54018c00 	bl	396(0x18c) # 1c0017f0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:48
				break;
1c001668:	53fea7ff 	b	-348(0xffffea4) # 1c00150c <printf+0x6c>
1c00166c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c001670:	28800344 	ld.w	$r4,$r26,0
1c001674:	00150007 	move	$r7,$r0
1c001678:	02804006 	addi.w	$r6,$r0,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:57
				arg++;
1c00167c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:58
				i++;
1c001680:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c001684:	54016c00 	bl	364(0x16c) # 1c0017f0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:59
				break;
1c001688:	53fe87ff 	b	-380(0xffffe84) # 1c00150c <printf+0x6c>
1c00168c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c001690:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:22
				i++;
1c001694:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:21
				arg++;
1c001698:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c00169c:	5400a400 	bl	164(0xa4) # 1c001740 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:23
				break;
1c0016a0:	53fe6fff 	b	-404(0xffffe6c) # 1c00150c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c0016a4:	28800344 	ld.w	$r4,$r26,0
1c0016a8:	00150007 	move	$r7,$r0
1c0016ac:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:31
				arg++;
1c0016b0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:32
				i++;
1c0016b4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c0016b8:	54013800 	bl	312(0x138) # 1c0017f0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:33
				break;
1c0016bc:	53fe53ff 	b	-432(0xffffe50) # 1c00150c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c0016c0:	02809404 	addi.w	$r4,$r0,37(0x25)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:62
				i++;
1c0016c4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c0016c8:	54001800 	bl	24(0x18) # 1c0016e0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:63
				break;
1c0016cc:	53fe43ff 	b	-448(0xffffe40) # 1c00150c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:73
				putchar('%');
1c0016d0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0016d4:	54000c00 	bl	12(0xc) # 1c0016e0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:74
				break;
1c0016d8:	53fe37ff 	b	-460(0xffffe34) # 1c00150c <printf+0x6c>
1c0016dc:	03400000 	andi	$r0,$r0,0x0

1c0016e0 <putchar>:
putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:2
int putchar(int c)
{
1c0016e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0016e4:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c0016e8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c0016ec:	03bc4339 	ori	$r25,$r25,0xf10
1c0016f0:	29000324 	st.b	$r4,$r25,0
1c0016f4:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:5
}
1c0016f8:	00150004 	move	$r4,$r0
1c0016fc:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001700:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001704:	4c000020 	jirl	$r0,$r1,0
1c001708:	03400000 	andi	$r0,$r0,0x0
1c00170c:	03400000 	andi	$r0,$r0,0x0

1c001710 <tgt_putchar>:
tgt_putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:8
{   //UART_ADDR
1c001710:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001714:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
    asm(
1c001718:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00171c:	03bc4339 	ori	$r25,$r25,0xf10
1c001720:	29000324 	st.b	$r4,$r25,0
1c001724:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c001728:	28803079 	ld.w	$r25,$r3,12(0xc)
1c00172c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001730:	4c000020 	jirl	$r0,$r1,0
1c001734:	03400000 	andi	$r0,$r0,0x0
1c001738:	03400000 	andi	$r0,$r0,0x0
1c00173c:	03400000 	andi	$r0,$r0,0x0

1c001740 <putstring>:
putstring():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:2
int putstring(char *s)
{
1c001740:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001744:	29803061 	st.w	$r1,$r3,12(0xc)
1c001748:	29802077 	st.w	$r23,$r3,8(0x8)
1c00174c:	29801078 	st.w	$r24,$r3,4(0x4)
1c001750:	29800079 	st.w	$r25,$r3,0
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
char c;
while((c=*s))
1c001754:	28000097 	ld.b	$r23,$r4,0
1c001758:	580042e0 	beq	$r23,$r0,64(0x40) # 1c001798 <putstring+0x58>
1c00175c:	00150098 	move	$r24,$r4
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c001760:	02802819 	addi.w	$r25,$r0,10(0xa)
1c001764:	50001400 	b	20(0x14) # 1c001778 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7
 putchar(c);
1c001768:	001502e4 	move	$r4,$r23
1c00176c:	57ff77ff 	bl	-140(0xfffff74) # 1c0016e0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
while((c=*s))
1c001770:	28000317 	ld.b	$r23,$r24,0
1c001774:	580026e0 	beq	$r23,$r0,36(0x24) # 1c001798 <putstring+0x58>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:8
 s++;
1c001778:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c00177c:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c001768 <putstring+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6 (discriminator 1)
1c001780:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001784:	57ff5fff 	bl	-164(0xfffff5c) # 1c0016e0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c001788:	001502e4 	move	$r4,$r23
1c00178c:	57ff57ff 	bl	-172(0xfffff54) # 1c0016e0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c001790:	28000317 	ld.b	$r23,$r24,0
1c001794:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c001778 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:11
}
return 0;
}
1c001798:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00179c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c0017a0:	28801078 	ld.w	$r24,$r3,4(0x4)
1c0017a4:	28800079 	ld.w	$r25,$r3,0
1c0017a8:	00150004 	move	$r4,$r0
1c0017ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0017b0:	4c000020 	jirl	$r0,$r1,0
1c0017b4:	03400000 	andi	$r0,$r0,0x0
1c0017b8:	03400000 	andi	$r0,$r0,0x0
1c0017bc:	03400000 	andi	$r0,$r0,0x0

1c0017c0 <puts>:
puts():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:15


int puts(char *s)
{
1c0017c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0017c4:	29803061 	st.w	$r1,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:16
putstring(s);
1c0017c8:	57ff7bff 	bl	-136(0xfffff78) # 1c001740 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:17
putchar('\r');
1c0017cc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0017d0:	57ff13ff 	bl	-240(0xfffff10) # 1c0016e0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:18
putchar('\n');
1c0017d4:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0017d8:	57ff0bff 	bl	-248(0xfffff08) # 1c0016e0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:20
return 0;
}
1c0017dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0017e0:	00150004 	move	$r4,$r0
1c0017e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0017e8:	4c000020 	jirl	$r0,$r1,0
1c0017ec:	03400000 	andi	$r0,$r0,0x0

1c0017f0 <printbase>:
printbase():
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c0017f0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c0017f4:	29816077 	st.w	$r23,$r3,88(0x58)
1c0017f8:	29817061 	st.w	$r1,$r3,92(0x5c)
1c0017fc:	29815078 	st.w	$r24,$r3,84(0x54)
1c001800:	29814079 	st.w	$r25,$r3,80(0x50)
1c001804:	00150097 	move	$r23,$r4
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c001808:	580008e0 	beq	$r7,$r0,8(0x8) # 1c001810 <printbase+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7 (discriminator 1)
1c00180c:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c0018b0 <printbase+0xc0>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c001810:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c0018d0 <printbase+0xe0>
1c001814:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001818:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00181c:	001131ce 	sub.w	$r14,$r14,$r12
1c001820:	50000800 	b	8(0x8) # 1c001828 <printbase+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c001824:	001501b7 	move	$r23,$r13
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c001828:	00219aed 	mod.wu	$r13,$r23,$r6
1c00182c:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001834 <printbase+0x44>
1c001830:	002a0007 	break	0x7
1c001834:	2900018d 	st.b	$r13,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c001838:	001031d8 	add.w	$r24,$r14,$r12
1c00183c:	00211aed 	div.wu	$r13,$r23,$r6
1c001840:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001848 <printbase+0x58>
1c001844:	002a0007 	break	0x7
1c001848:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c00184c:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c001824 <printbase+0x34>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c001850:	600058b8 	blt	$r5,$r24,88(0x58) # 1c0018a8 <printbase+0xb8>
1c001854:	001500b7 	move	$r23,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001858:	02802419 	addi.w	$r25,$r0,9(0x9)
1c00185c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c001860:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001864:	00105d8c 	add.w	$r12,$r12,$r23
1c001868:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00186c:	60001717 	blt	$r24,$r23,20(0x14) # 1c001880 <printbase+0x90>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24 (discriminator 1)
1c001870:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001874:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c001878:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c001880 <printbase+0x90>
1c00187c:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c001880:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 4)
1c001884:	57fe5fff 	bl	-420(0xffffe5c) # 1c0016e0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c001888:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c001860 <printbase+0x70>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:28
	}
	return 0;
}
1c00188c:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c001890:	28816077 	ld.w	$r23,$r3,88(0x58)
1c001894:	28815078 	ld.w	$r24,$r3,84(0x54)
1c001898:	28814079 	ld.w	$r25,$r3,80(0x50)
1c00189c:	00150004 	move	$r4,$r0
1c0018a0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c0018a4:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c0018a8:	00150305 	move	$r5,$r24
1c0018ac:	53ffabff 	b	-88(0xfffffa8) # 1c001854 <printbase+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c0018b0:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0018b4:	29803066 	st.w	$r6,$r3,12(0xc)
1c0018b8:	29802065 	st.w	$r5,$r3,8(0x8)
1c0018bc:	57fe27ff 	bl	-476(0xffffe24) # 1c0016e0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:9
	value = -v;
1c0018c0:	00115c17 	sub.w	$r23,$r0,$r23
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c0018c4:	28802065 	ld.w	$r5,$r3,8(0x8)
1c0018c8:	28803066 	ld.w	$r6,$r3,12(0xc)
1c0018cc:	53ff4bff 	b	-184(0xfffff48) # 1c001814 <printbase+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c0018d0:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c00188c <printbase+0x9c>
1c0018d4:	00150018 	move	$r24,$r0
1c0018d8:	53ff7fff 	b	-132(0xfffff7c) # 1c001854 <printbase+0x64>
1c0018dc:	03400000 	andi	$r0,$r0,0x0

1c0018e0 <strlen>:
strlen():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:14
 * The strlen() function returns the length of string @s.
 * */
size_t
strlen(const char *s) {
    size_t cnt = 0;
    while (*s ++ != '\0') {
1c0018e0:	2800008c 	ld.b	$r12,$r4,0
1c0018e4:	58002580 	beq	$r12,$r0,36(0x24) # 1c001908 <strlen+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:13
    size_t cnt = 0;
1c0018e8:	0015000c 	move	$r12,$r0
1c0018ec:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:15
        cnt ++;
1c0018f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:14
    while (*s ++ != '\0') {
1c0018f4:	0010308d 	add.w	$r13,$r4,$r12
1c0018f8:	280001ad 	ld.b	$r13,$r13,0
1c0018fc:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c0018f0 <strlen+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:18
    }
    return cnt;
}
1c001900:	00150184 	move	$r4,$r12
1c001904:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:13
    size_t cnt = 0;
1c001908:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:18
}
1c00190c:	00150184 	move	$r4,$r12
1c001910:	4c000020 	jirl	$r0,$r1,0
1c001914:	03400000 	andi	$r0,$r0,0x0
1c001918:	03400000 	andi	$r0,$r0,0x0
1c00191c:	03400000 	andi	$r0,$r0,0x0

1c001920 <strnlen>:
strnlen():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:35
 * @len if there is no '\0' character among the first @len characters
 * pointed by @s.
 * */
size_t
strnlen(const char *s, size_t len) {
    size_t cnt = 0;
1c001920:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001924:	580028a0 	beq	$r5,$r0,40(0x28) # 1c00194c <strnlen+0x2c>
1c001928:	2800008d 	ld.b	$r13,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:35
    size_t cnt = 0;
1c00192c:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001930:	5c0011a0 	bne	$r13,$r0,16(0x10) # 1c001940 <strnlen+0x20>
1c001934:	50001800 	b	24(0x18) # 1c00194c <strnlen+0x2c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36 (discriminator 1)
1c001938:	280001ad 	ld.b	$r13,$r13,0
1c00193c:	580011a0 	beq	$r13,$r0,16(0x10) # 1c00194c <strnlen+0x2c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:37
        cnt ++;
1c001940:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001944:	0010308d 	add.w	$r13,$r4,$r12
1c001948:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c001938 <strnlen+0x18>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:40
    }
    return cnt;
}
1c00194c:	00150184 	move	$r4,$r12
1c001950:	4c000020 	jirl	$r0,$r1,0
1c001954:	03400000 	andi	$r0,$r0,0x0
1c001958:	03400000 	andi	$r0,$r0,0x0
1c00195c:	03400000 	andi	$r0,$r0,0x0

1c001960 <strcpy>:
strcpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:59
char *
strcpy(char *dst, const char *src) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __strcpy(dst, src);
#else
    char *p = dst;
1c001960:	0015008c 	move	$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:60 (discriminator 1)
    while ((*p ++ = *src ++) != '\0')
1c001964:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c001968:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c00196c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001970:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c001974:	5ffff1a0 	bne	$r13,$r0,-16(0x3fff0) # 1c001964 <strcpy+0x4>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:64
        /* nothing */;
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001978:	4c000020 	jirl	$r0,$r1,0
1c00197c:	03400000 	andi	$r0,$r0,0x0

1c001980 <strncpy>:
strncpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:79
 * The return value is @dst
 * */
char *
strncpy(char *dst, const char *src, size_t len) {
    char *p = dst;
    while (len > 0) {
1c001980:	580028c0 	beq	$r6,$r0,40(0x28) # 1c0019a8 <strncpy+0x28>
1c001984:	00101886 	add.w	$r6,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:78
    char *p = dst;
1c001988:	0015008d 	move	$r13,$r4
1c00198c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:80
        if ((*p = *src) != '\0') {
1c001990:	280000ac 	ld.b	$r12,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:83
            src ++;
        }
        p ++, len --;
1c001994:	028005ad 	addi.w	$r13,$r13,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:80
        if ((*p = *src) != '\0') {
1c001998:	293ffdac 	st.b	$r12,$r13,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:81
            src ++;
1c00199c:	0012b00c 	sltu	$r12,$r0,$r12
1c0019a0:	001030a5 	add.w	$r5,$r5,$r12
/home/132/git_rep/perf/soft/perf_func/lib/string.c:79
    while (len > 0) {
1c0019a4:	5fffeda6 	bne	$r13,$r6,-20(0x3ffec) # 1c001990 <strncpy+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:86
    }
    return dst;
}
1c0019a8:	4c000020 	jirl	$r0,$r1,0
1c0019ac:	03400000 	andi	$r0,$r0,0x0

1c0019b0 <strncmp>:
strncmp():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101
 * the characters differ, until a terminating null-character is reached, or
 * until @n characters match in both strings, whichever happens first.
 * */
int
strncmp(const char *s1, const char *s2, size_t n) {
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c0019b0:	580040c0 	beq	$r6,$r0,64(0x40) # 1c0019f0 <strncmp+0x40>
1c0019b4:	2800008d 	ld.b	$r13,$r4,0
1c0019b8:	280000ae 	ld.b	$r14,$r5,0
1c0019bc:	580041a0 	beq	$r13,$r0,64(0x40) # 1c0019fc <strncmp+0x4c>
1c0019c0:	5c003dae 	bne	$r13,$r14,60(0x3c) # 1c0019fc <strncmp+0x4c>
1c0019c4:	001018a6 	add.w	$r6,$r5,$r6
1c0019c8:	50001c00 	b	28(0x1c) # 1c0019e4 <strncmp+0x34>
1c0019cc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101 (discriminator 1)
1c0019d0:	2800008d 	ld.b	$r13,$r4,0
1c0019d4:	580025a0 	beq	$r13,$r0,36(0x24) # 1c0019f8 <strncmp+0x48>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101 (discriminator 2)
1c0019d8:	2800018e 	ld.b	$r14,$r12,0
1c0019dc:	00150185 	move	$r5,$r12
1c0019e0:	5c001dae 	bne	$r13,$r14,28(0x1c) # 1c0019fc <strncmp+0x4c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:102
        n --, s1 ++, s2 ++;
1c0019e4:	028004ac 	addi.w	$r12,$r5,1(0x1)
1c0019e8:	02800484 	addi.w	$r4,$r4,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c0019ec:	5fffe586 	bne	$r12,$r6,-28(0x3ffe4) # 1c0019d0 <strncmp+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    }
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0019f0:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c0019f4:	4c000020 	jirl	$r0,$r1,0
1c0019f8:	280004ae 	ld.b	$r14,$r5,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:100
strncmp(const char *s1, const char *s2, size_t n) {
1c0019fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001a00:	2980306d 	st.w	$r13,$r3,12(0xc)
1c001a04:	2a00306d 	ld.bu	$r13,$r3,12(0xc)
1c001a08:	2980306e 	st.w	$r14,$r3,12(0xc)
1c001a0c:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c001a10:	02804063 	addi.w	$r3,$r3,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001a14:	001111a4 	sub.w	$r4,$r13,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c001a18:	4c000020 	jirl	$r0,$r1,0
1c001a1c:	03400000 	andi	$r0,$r0,0x0

1c001a20 <strchr>:
strchr():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
 * The strchr() function returns a pointer to the first occurrence of
 * character in @s. If the value is not found, the function returns 'NULL'.
 * */
char *
strchr(const char *s, char c) {
    while (*s != '\0') {
1c001a20:	2800008d 	ld.b	$r13,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:116
strchr(const char *s, char c) {
1c001a24:	0015008c 	move	$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
    while (*s != '\0') {
1c001a28:	58001da0 	beq	$r13,$r0,28(0x1c) # 1c001a44 <strchr+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:118
        if (*s == c) {
1c001a2c:	5c000da5 	bne	$r13,$r5,12(0xc) # 1c001a38 <strchr+0x18>
1c001a30:	50002800 	b	40(0x28) # 1c001a58 <strchr+0x38>
1c001a34:	58001da5 	beq	$r13,$r5,28(0x1c) # 1c001a50 <strchr+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:121
            return (char *)s;
        }
        s ++;
1c001a38:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
    while (*s != '\0') {
1c001a3c:	2800018d 	ld.b	$r13,$r12,0
1c001a40:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c001a34 <strchr+0x14>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:123
    }
    return NULL;
1c001a44:	00150004 	move	$r4,$r0
1c001a48:	4c000020 	jirl	$r0,$r1,0
1c001a4c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:121
        s ++;
1c001a50:	00150184 	move	$r4,$r12
/home/132/git_rep/perf/soft/perf_func/lib/string.c:124
}
1c001a54:	4c000020 	jirl	$r0,$r1,0
1c001a58:	4c000020 	jirl	$r0,$r1,0
1c001a5c:	03400000 	andi	$r0,$r0,0x0

1c001a60 <strfind>:
strfind():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:137
 * not found in @s, then it returns a pointer to the null byte at the
 * end of @s, rather than 'NULL'.
 * */
char *
strfind(const char *s, char c) {
    while (*s != '\0') {
1c001a60:	2800008c 	ld.b	$r12,$r4,0
1c001a64:	58001d80 	beq	$r12,$r0,28(0x1c) # 1c001a80 <strfind+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:138
        if (*s == c) {
1c001a68:	5c000cac 	bne	$r5,$r12,12(0xc) # 1c001a74 <strfind+0x14>
1c001a6c:	50001800 	b	24(0x18) # 1c001a84 <strfind+0x24>
1c001a70:	58001185 	beq	$r12,$r5,16(0x10) # 1c001a80 <strfind+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:141
            break;
        }
        s ++;
1c001a74:	02800484 	addi.w	$r4,$r4,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:137
    while (*s != '\0') {
1c001a78:	2800008c 	ld.b	$r12,$r4,0
1c001a7c:	5ffff580 	bne	$r12,$r0,-12(0x3fff4) # 1c001a70 <strfind+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:144
    }
    return (char *)s;
}
1c001a80:	4c000020 	jirl	$r0,$r1,0
1c001a84:	4c000020 	jirl	$r0,$r1,0
1c001a88:	03400000 	andi	$r0,$r0,0x0
1c001a8c:	03400000 	andi	$r0,$r0,0x0

1c001a90 <memset>:
memset():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
memset(void *s, char c, size_t n) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memset(s, c, n);
#else
    char *p = s;
    while (n -- > 0) {
1c001a90:	58001cc0 	beq	$r6,$r0,28(0x1c) # 1c001aac <memset+0x1c>
1c001a94:	00101886 	add.w	$r6,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:250
    char *p = s;
1c001a98:	0015008c 	move	$r12,$r4
1c001a9c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:252
        *p ++ = c;
1c001aa0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001aa4:	293ffd85 	st.b	$r5,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c001aa8:	5ffff986 	bne	$r12,$r6,-8(0x3fff8) # 1c001aa0 <memset+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:256
    }
    return s;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001aac:	4c000020 	jirl	$r0,$r1,0

1c001ab0 <memcpy>:
memcpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:279
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memcpy(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    while (n -- > 0) {
1c001ab0:	580024c0 	beq	$r6,$r0,36(0x24) # 1c001ad4 <memcpy+0x24>
1c001ab4:	001018a6 	add.w	$r6,$r5,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:278
    char *d = dst;
1c001ab8:	0015008c 	move	$r12,$r4
1c001abc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:280
        *d ++ = *s ++;
1c001ac0:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c001ac4:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c001ac8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001acc:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:279
    while (n -- > 0) {
1c001ad0:	5ffff0a6 	bne	$r5,$r6,-16(0x3fff0) # 1c001ac0 <memcpy+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:284
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001ad4:	4c000020 	jirl	$r0,$r1,0
1c001ad8:	03400000 	andi	$r0,$r0,0x0
1c001adc:	03400000 	andi	$r0,$r0,0x0

1c001ae0 <memmove>:
memmove():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:302
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memmove(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    if (s < d && s + n > d) {
1c001ae0:	6c0030a4 	bgeu	$r5,$r4,48(0x30) # 1c001b10 <memmove+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:302 (discriminator 1)
1c001ae4:	001018ac 	add.w	$r12,$r5,$r6
1c001ae8:	6c00288c 	bgeu	$r4,$r12,40(0x28) # 1c001b10 <memmove+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:303
        s += n, d += n;
1c001aec:	0010188d 	add.w	$r13,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:304
        while (n -- > 0) {
1c001af0:	580044c0 	beq	$r6,$r0,68(0x44) # 1c001b34 <memmove+0x54>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:305
            *-- d = *-- s;
1c001af4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001af8:	2800018e 	ld.b	$r14,$r12,0
1c001afc:	02bffdad 	addi.w	$r13,$r13,-1(0xfff)
1c001b00:	290001ae 	st.b	$r14,$r13,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:304
        while (n -- > 0) {
1c001b04:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c001af4 <memmove+0x14>
1c001b08:	4c000020 	jirl	$r0,$r1,0
1c001b0c:	03400000 	andi	$r0,$r0,0x0
1c001b10:	001018ae 	add.w	$r14,$r5,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:308
        }
    } else {
        while (n -- > 0) {
1c001b14:	0015008c 	move	$r12,$r4
1c001b18:	580020c0 	beq	$r6,$r0,32(0x20) # 1c001b38 <memmove+0x58>
1c001b1c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:309
            *d ++ = *s ++;
1c001b20:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c001b24:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c001b28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b2c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:308
        while (n -- > 0) {
1c001b30:	5ffff0ae 	bne	$r5,$r14,-16(0x3fff0) # 1c001b20 <memmove+0x40>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:314
        }
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001b34:	4c000020 	jirl	$r0,$r1,0
1c001b38:	4c000020 	jirl	$r0,$r1,0
1c001b3c:	03400000 	andi	$r0,$r0,0x0

1c001b40 <memcmp>:
memcmp():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:334
 * */
int
memcmp(const void *v1, const void *v2, size_t n) {
    const char *s1 = (const char *)v1;
    const char *s2 = (const char *)v2;
    while (n -- > 0) {
1c001b40:	580030c0 	beq	$r6,$r0,48(0x30) # 1c001b70 <memcmp+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:335
        if (*s1 != *s2) {
1c001b44:	2800008c 	ld.b	$r12,$r4,0
1c001b48:	280000ad 	ld.b	$r13,$r5,0
1c001b4c:	00101886 	add.w	$r6,$r4,$r6
1c001b50:	580015ac 	beq	$r13,$r12,20(0x14) # 1c001b64 <memcmp+0x24>
1c001b54:	50002400 	b	36(0x24) # 1c001b78 <memcmp+0x38>
1c001b58:	2800008c 	ld.b	$r12,$r4,0
1c001b5c:	280000ad 	ld.b	$r13,$r5,0
1c001b60:	5c00198d 	bne	$r12,$r13,24(0x18) # 1c001b78 <memcmp+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:338
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
        }
        s1 ++, s2 ++;
1c001b64:	02800484 	addi.w	$r4,$r4,1(0x1)
1c001b68:	028004a5 	addi.w	$r5,$r5,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:334
    while (n -- > 0) {
1c001b6c:	5fffec86 	bne	$r4,$r6,-20(0x3ffec) # 1c001b58 <memcmp+0x18>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:340
    }
    return 0;
1c001b70:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c001b74:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:331
memcmp(const void *v1, const void *v2, size_t n) {
1c001b78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001b7c:	2980306c 	st.w	$r12,$r3,12(0xc)
1c001b80:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c001b84:	2980306d 	st.w	$r13,$r3,12(0xc)
1c001b88:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c001b8c:	02804063 	addi.w	$r3,$r3,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001b90:	00111184 	sub.w	$r4,$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c001b94:	4c000020 	jirl	$r0,$r1,0
1c001b98:	03400000 	andi	$r0,$r0,0x0
1c001b9c:	03400000 	andi	$r0,$r0,0x0

1c001ba0 <bzero>:
memset():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c001ba0:	580014a0 	beq	$r5,$r0,20(0x14) # 1c001bb4 <bzero+0x14>
1c001ba4:	00101485 	add.w	$r5,$r4,$r5
/home/132/git_rep/perf/soft/perf_func/lib/string.c:252
        *p ++ = c;
1c001ba8:	02800484 	addi.w	$r4,$r4,1(0x1)
1c001bac:	293ffc80 	st.b	$r0,$r4,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c001bb0:	5ffff885 	bne	$r4,$r5,-8(0x3fff8) # 1c001ba8 <bzero+0x8>
bzero():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:345

void bzero(void *s, size_t n){
	memset(s, 0, n);
}
1c001bb4:	4c000020 	jirl	$r0,$r1,0
1c001bb8:	03400000 	andi	$r0,$r0,0x0
1c001bbc:	03400000 	andi	$r0,$r0,0x0

1c001bc0 <get_count>:
get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c001bc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001bc4:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001bc8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001bcc:	28800324 	ld.w	$r4,$r25,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
    return  _get_count();
}
1c001bd0:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001bd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bd8:	4c000020 	jirl	$r0,$r1,0
1c001bdc:	03400000 	andi	$r0,$r0,0x0

1c001be0 <_get_count>:
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
1c001be0:	53ffe3ff 	b	-32(0xfffffe0) # 1c001bc0 <get_count>
1c001be4:	03400000 	andi	$r0,$r0,0x0
1c001be8:	03400000 	andi	$r0,$r0,0x0
1c001bec:	03400000 	andi	$r0,$r0,0x0

1c001bf0 <get_count_my>:
get_count_my():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c001bf0:	00006004 	rdtimel.w	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c001bf4:	4c000020 	jirl	$r0,$r1,0
1c001bf8:	03400000 	andi	$r0,$r0,0x0
1c001bfc:	03400000 	andi	$r0,$r0,0x0

1c001c00 <clock_gettime>:
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c001c00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c04:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001c08:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001c0c:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001c10:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c001c14:	001c35ed 	mul.w	$r13,$r15,$r13
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001c18:	02819011 	addi.w	$r17,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001c1c:	1400030e 	lu12i.w	$r14,24(0x18)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001c20:	002145f0 	div.wu	$r16,$r15,$r17
1c001c24:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c001c2c <clock_gettime+0x2c>
1c001c28:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001c2c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001c30:	039a81ce 	ori	$r14,$r14,0x6a0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001c34:	0021b211 	mod.wu	$r17,$r16,$r12
1c001c38:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001c40 <clock_gettime+0x40>
1c001c3c:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001c40:	002139f0 	div.wu	$r16,$r15,$r14
1c001c44:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c001c4c <clock_gettime+0x4c>
1c001c48:	002a0007 	break	0x7
1c001c4c:	0021b20e 	mod.wu	$r14,$r16,$r12
1c001c50:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001c58 <clock_gettime+0x58>
1c001c54:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c001c58:	298000a0 	st.w	$r0,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001c5c:	298030ae 	st.w	$r14,$r5,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001c60:	298020b1 	st.w	$r17,$r5,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c001c64:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001c68:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001c6c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001c70:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001c78 <clock_gettime+0x78>
1c001c74:	002a0007 	break	0x7
1c001c78:	298010ae 	st.w	$r14,$r5,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
}
1c001c7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c80:	4c000020 	jirl	$r0,$r1,0
1c001c84:	03400000 	andi	$r0,$r0,0x0
1c001c88:	03400000 	andi	$r0,$r0,0x0
1c001c8c:	03400000 	andi	$r0,$r0,0x0

1c001c90 <get_clock>:
get_clock():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
1c001c90:	53ff33ff 	b	-208(0xfffff30) # 1c001bc0 <get_count>
1c001c94:	03400000 	andi	$r0,$r0,0x0
1c001c98:	03400000 	andi	$r0,$r0,0x0
1c001c9c:	03400000 	andi	$r0,$r0,0x0

1c001ca0 <get_ns>:
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c001ca0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ca4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001ca8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001cac:	28800324 	ld.w	$r4,$r25,0
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c001cb0:	0280280c 	addi.w	$r12,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:57
    return n;
}
1c001cb4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001cb8:	001c3084 	mul.w	$r4,$r4,$r12
1c001cbc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001cc0:	4c000020 	jirl	$r0,$r1,0
1c001cc4:	03400000 	andi	$r0,$r0,0x0
1c001cc8:	03400000 	andi	$r0,$r0,0x0
1c001ccc:	03400000 	andi	$r0,$r0,0x0

1c001cd0 <get_us>:
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:61


unsigned long get_us(void)
{
1c001cd0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001cd4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001cd8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001cdc:	28800324 	ld.w	$r4,$r25,0
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c001ce0:	0281900c 	addi.w	$r12,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:66
    return n;
}
1c001ce4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001ce8:	0021308d 	div.wu	$r13,$r4,$r12
1c001cec:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001cf4 <get_us+0x24>
1c001cf0:	002a0007 	break	0x7
1c001cf4:	001501a4 	move	$r4,$r13
1c001cf8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001cfc:	4c000020 	jirl	$r0,$r1,0

1c001d00 <rand>:
rand():
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:4
static unsigned long next = 0xDEEDBEEF;

int rand(void) {
    next = next * 1103515245 + 12345;
1c001d00:	1c000fcf 	pcaddu12i	$r15,126(0x7e)
1c001d04:	029501ef 	addi.w	$r15,$r15,1344(0x540)
1c001d08:	288001ec 	ld.w	$r12,$r15,0
1c001d0c:	14838c8e 	lu12i.w	$r14,269412(0x41c64)
1c001d10:	03b9b5ce 	ori	$r14,$r14,0xe6d
1c001d14:	001c398c 	mul.w	$r12,$r12,$r14
1c001d18:	1400006d 	lu12i.w	$r13,3(0x3)
1c001d1c:	0380e5ad 	ori	$r13,$r13,0x39
1c001d20:	0010358c 	add.w	$r12,$r12,$r13
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:5
    return (unsigned int)(next/65536) % 32768;
1c001d24:	00408584 	slli.w	$r4,$r12,0x1
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:4
    next = next * 1103515245 + 12345;
1c001d28:	298001ec 	st.w	$r12,$r15,0
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:6
}
1c001d2c:	0044c484 	srli.w	$r4,$r4,0x11
1c001d30:	4c000020 	jirl	$r0,$r1,0
1c001d34:	03400000 	andi	$r0,$r0,0x0
1c001d38:	03400000 	andi	$r0,$r0,0x0
1c001d3c:	03400000 	andi	$r0,$r0,0x0

1c001d40 <srand>:
srand():
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:8
void srand(unsigned int seed) {
    next = seed;
1c001d40:	1c000fcc 	pcaddu12i	$r12,126(0x7e)
1c001d44:	0294018c 	addi.w	$r12,$r12,1280(0x500)
1c001d48:	29800184 	st.w	$r4,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/rand.c:9
}
1c001d4c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <rodata_end-0x240>:
1c080000:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c080004:	20732520 	ll.w	$r0,$r9,29476(0x7324)
1c080008:	6c696166 	bgeu	$r11,$r6,26976(0x6960) # 1c086968 <_end+0x66f8>
1c08000c:	000a6465 	0x000a6465
1c080010:	2c732522 	vst	$vr2,$r9,-823(0xcc9)
1c080014:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c080018:	6d657469 	bgeu	$r3,$r9,91508(0x16574) # 1c09658c <_end+0x1631c>
1c08001c:	20202273 	ll.w	$r19,$r19,8224(0x2020)
1c080020:	73206425 	0x73206425
1c080024:	000a6365 	0x000a6365
1c080028:	33746e69 	xvstelm.h	$xr9,$r19,54(0x36),0xd
1c08002c:	20745f32 	ll.w	$r18,$r25,29788(0x745c)
1c080030:	20726f66 	ll.w	$r6,$r27,29292(0x726c)
1c080034:	75646e69 	0x75646e69
1c080038:	6f697463 	bgeu	$r3,$r3,-38540(0x36974) # 1c0769ac <_data_lma+0x74c5c>
1c08003c:	6f63206e 	bgeu	$r3,$r14,-40160(0x36320) # 1c07635c <_data_lma+0x7460c>
1c080040:	00007970 	0x00007970
1c080044:	706f6f6c 	0x706f6f6c
1c080048:	646e6920 	bge	$r9,$r0,28264(0x6e68) # 1c086eb0 <_end+0x6c40>
1c08004c:	69746375 	bltu	$r27,$r21,95328(0x17460) # 1c0974ac <_end+0x1723c>
1c080050:	74206e6f 	xvsubwev.h.b	$xr15,$xr19,$xr27
1c080054:	20747365 	ll.w	$r5,$r27,29808(0x7470)
1c080058:	69676562 	bltu	$r11,$r2,92004(0x16764) # 1c0967bc <_end+0x1654c>
1c08005c:	00002e6e 	ctz.d	$r14,$r19
1c080060:	706f6f6c 	0x706f6f6c
1c080064:	646e6920 	bge	$r9,$r0,28264(0x6e68) # 1c086ecc <_end+0x6c5c>
1c080068:	69746375 	bltu	$r27,$r21,95328(0x17460) # 1c0974c8 <_end+0x17258>
1c08006c:	50206e6f 	b	-105111444(0x9bc206c) # 15c420d8 <__stack_size+0x15c320d8>
1c080070:	21535341 	sc.w	$r1,$r26,21328(0x5350)
1c080074:	00000000 	0x00000000
1c080078:	706f6f6c 	0x706f6f6c
1c08007c:	646e6920 	bge	$r9,$r0,28264(0x6e68) # 1c086ee4 <_end+0x6c74>
1c080080:	69746375 	bltu	$r27,$r21,95328(0x17460) # 1c0974e0 <_end+0x17270>
1c080084:	45206e6f 	bnez	$r19,4005996(0x3d206c) # 1c4520f0 <_stack+0x3520f4>
1c080088:	454f5252 	bnez	$r18,-3584176(0x494f50) # 1bd14fd8 <__stack_size+0x1bd04fd8>
1c08008c:	00212121 	div.wu	$r1,$r9,$r8
1c080090:	706f6f6c 	0x706f6f6c
1c080094:	646e6920 	bge	$r9,$r0,28264(0x6e68) # 1c086efc <_end+0x6c8c>
1c080098:	69746375 	bltu	$r27,$r21,95328(0x17460) # 1c0974f8 <_end+0x17288>
1c08009c:	203a6e6f 	ll.w	$r15,$r19,14956(0x3a6c)
1c0800a0:	61746f54 	blt	$r26,$r20,95340(0x1746c) # 1c09750c <_end+0x1729c>
1c0800a4:	6f43206c 	bgeu	$r3,$r12,-48352(0x34320) # 1c0743c4 <_data_lma+0x72674>
1c0800a8:	28746e75 	ld.h	$r21,$r19,-741(0xd1b)
1c0800ac:	20436f53 	ll.w	$r19,$r26,17260(0x436c)
1c0800b0:	6e756f63 	bgeu	$r27,$r3,-101012(0x2756c) # 1c06761c <_data_lma+0x658cc>
1c0800b4:	3d202974 	0x3d202974
1c0800b8:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c0800bc:	00000a78 	0x00000a78
1c0800c0:	706f6f6c 	0x706f6f6c
1c0800c4:	646e6920 	bge	$r9,$r0,28264(0x6e68) # 1c086f2c <_end+0x6cbc>
1c0800c8:	69746375 	bltu	$r27,$r21,95328(0x17460) # 1c097528 <_end+0x172b8>
1c0800cc:	203a6e6f 	ll.w	$r15,$r19,14956(0x3a6c)
1c0800d0:	61746f54 	blt	$r26,$r20,95340(0x1746c) # 1c09753c <_end+0x172cc>
1c0800d4:	6f43206c 	bgeu	$r3,$r12,-48352(0x34320) # 1c0743f4 <_data_lma+0x726a4>
1c0800d8:	28746e75 	ld.h	$r21,$r19,-741(0xd1b)
1c0800dc:	20555043 	ll.w	$r3,$r2,21840(0x5550)
1c0800e0:	6e756f63 	bgeu	$r27,$r3,-101012(0x2756c) # 1c06764c <_data_lma+0x658fc>
1c0800e4:	3d202974 	0x3d202974
1c0800e8:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c0800ec:	00000a78 	0x00000a78
1c0800f0:	1c0016c0 	pcaddu12i	$r0,182(0xb6)
1c0800f4:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0800f8:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0800fc:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080100:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080104:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080108:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c08010c:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080110:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080114:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080118:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c08011c:	1c001598 	pcaddu12i	$r24,172(0xac)
1c080120:	1c0015a4 	pcaddu12i	$r4,173(0xad)
1c080124:	1c0015a4 	pcaddu12i	$r4,173(0xad)
1c080128:	1c0015a4 	pcaddu12i	$r4,173(0xad)
1c08012c:	1c0015a4 	pcaddu12i	$r4,173(0xad)
1c080130:	1c0015a4 	pcaddu12i	$r4,173(0xad)
1c080134:	1c0015a4 	pcaddu12i	$r4,173(0xad)
1c080138:	1c0015a4 	pcaddu12i	$r4,173(0xad)
1c08013c:	1c0015a4 	pcaddu12i	$r4,173(0xad)
1c080140:	1c0015a4 	pcaddu12i	$r4,173(0xad)
1c080144:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080148:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c08014c:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080150:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080154:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080158:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c08015c:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080160:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080164:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080168:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c08016c:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080170:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080174:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080178:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c08017c:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080180:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080184:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080188:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c08018c:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080190:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080194:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080198:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c08019c:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801a0:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801a4:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801a8:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801ac:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801b0:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801b4:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801b8:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801bc:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801c0:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801c4:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801c8:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801cc:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801d0:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801d4:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801d8:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801dc:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801e0:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801e4:	1c0015e4 	pcaddu12i	$r4,175(0xaf)
1c0801e8:	1c001600 	pcaddu12i	$r0,176(0xb0)
1c0801ec:	1c001614 	pcaddu12i	$r20,176(0xb0)
1c0801f0:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801f4:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801f8:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c0801fc:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080200:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080204:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080208:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c08020c:	1c001630 	pcaddu12i	$r16,177(0xb1)
1c080210:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080214:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080218:	1c001650 	pcaddu12i	$r16,178(0xb2)
1c08021c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c080220:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080224:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080228:	1c001690 	pcaddu12i	$r16,180(0xb4)
1c08022c:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080230:	1c0016a4 	pcaddu12i	$r4,181(0xb5)
1c080234:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c080238:	1c0016d0 	pcaddu12i	$r16,182(0xb6)
1c08023c:	1c001670 	pcaddu12i	$r16,179(0xb3)

1c080240 <rodata_end>:
rodata_end():
1c080240:	deedbeef 	0xdeedbeef
1c080244:	00000000 	0x00000000

1c080248 <loop_induction_init_value>:
1c080248:	00000003 	0x00000003

1c08024c <loop_induction_SIZE>:
1c08024c:	00000c80 	0x00000c80

1c080250 <loop_induction_iter>:
1c080250:	00000003 	0x00000003
1c080254:	00000000 	0x00000000

Disassembly of section .got:

1c080258 <_GLOBAL_OFFSET_TABLE_>:
1c080258:	00000000 	0x00000000
1c08025c:	1c080264 	pcaddu12i	$r4,16403(0x4013)
1c080260:	1c080268 	pcaddu12i	$r8,16403(0x4013)

Disassembly of section .bss:

1c080264 <end_time>:
__bss_start():
1c080264:	00000000 	0x00000000

1c080268 <start_time>:
1c080268:	00000000 	0x00000000

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
  18:	0014a000 	and	$r0,$r0,$r8
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e60400 	bstrpick.d	$r0,$r0,0x26,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	0014a000 	and	$r0,$r0,$r8
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
  c4:	00154c01 	or	$r1,$r0,$r19
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
 108:	0015fc0c 	xor	$r12,$r0,$r31
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	0016100e 	orn	$r14,$r0,$r4
 124:	0002531c 	0x0002531c
 128:	162c0c00 	lu32i.d	$r0,90208(0x16060)
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	16480c00 	lu32i.d	$r0,147552(0x24060)
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	16680c00 	lu32i.d	$r0,213088(0x34060)
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	880c0030 	0x880c0030
 174:	471c0016 	bnez	$r0,-2417664(0x5b1c00) # ffdb1d74 <_stack+0xe3cb1d78>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	a00e0030 	0xa00e0030
 18c:	5f1c0016 	bne	$r0,$r22,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c0016bc 	pcaddu12i	$r28,181(0xb5)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c0016cc 	pcaddu12i	$r12,182(0xb6)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c0016d8 	pcaddu12i	$r24,182(0xb6)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00f10b00 	bstrpick.d	$r0,$r24,0x31,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c00152c 	pcaddu12i	$r12,169(0xa9)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000f10b 	0x0000f10b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	340f0006 	0x340f0006
 208:	531c0015 	b	5708800(0x571c00) # 571e08 <__stack_size+0x561e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	0c0f0000 	0x0c0f0000
 218:	531c0015 	b	5708800(0x571c00) # 571e18 <__stack_size+0x561e18>
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
 284:	0016e000 	andn	$r0,$r0,$r24
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
 2c8:	16e00000 	lu32i.d	$r0,458752(0x70000)
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
 300:	0016e000 	andn	$r0,$r0,$r24
 304:	0030021c 	0x0030021c
 308:	03010000 	lu52i.d	$r0,$r0,64(0x40)
 30c:	00400b01 	0x00400b01
 310:	03ba0000 	ori	$r0,$r0,0xe80
 314:	03b80000 	ori	$r0,$r0,0xe00
 318:	00000000 	0x00000000
 31c:	0000330c 	revb.2h	$r12,$r24
 320:	00171000 	sll.w	$r0,$r0,$r4
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
 34c:	00174000 	sll.w	$r0,$r0,$r16
 350:	0000ac1c 	0x0000ac1c
 354:	00020900 	0x00020900
 358:	07040200 	0x07040200
 35c:	0000000b 	0x0000000b
 360:	06070402 	cacop	0x2,$r0,449(0x1c1)
 364:	03000000 	lu52i.d	$r0,$r0,0
 368:	0000010a 	0x0000010a
 36c:	a9050e01 	0xa9050e01
 370:	c0000000 	0xc0000000
 374:	2c1c0017 	vld	$vr23,$r0,1792(0x700)
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
 3a4:	17cc0700 	lu32i.d	$r0,-106440(0xe6038)
 3a8:	00bd1c00 	bstrins.d	$r0,$r0,0x3d,0x7
 3ac:	00860000 	bstrins.d	$r0,$r0,0x6,0x0
 3b0:	01080000 	0x01080000
 3b4:	01f30354 	0x01f30354
 3b8:	d4070054 	0xd4070054
 3bc:	671c0017 	bge	$r0,$r23,-58368(0x31c00) # ffff1fbc <_stack+0xe3ef1fc0>
 3c0:	99000001 	0x99000001
 3c4:	08000000 	0x08000000
 3c8:	3d015401 	0x3d015401
 3cc:	17dc0900 	lu32i.d	$r0,-73656(0xee048)
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
 3fc:	00174000 	sll.w	$r0,$r0,$r16
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
 444:	800e0006 	0x800e0006
 448:	081c0017 	fmadd.s	$f23,$f0,$f0,$f24
 44c:	41000000 	beqz	$r0,65536(0x10000) # 1044c <__stack_size+0x44c>
 450:	05000001 	0x05000001
 454:	000000f1 	0x000000f1
 458:	a9100601 	0xa9100601
 45c:	31000000 	0x31000000
 460:	06000001 	cacop	0x1,$r0,0
 464:	17880900 	lu32i.d	$r0,-245688(0xc4048)
 468:	01671c00 	0x01671c00
 46c:	01080000 	0x01080000
 470:	003d0154 	0x003d0154
 474:	17700700 	lu32i.d	$r0,-294856(0xb8038)
 478:	01671c00 	0x01671c00
 47c:	01550000 	0x01550000
 480:	01080000 	0x01080000
 484:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
 488:	17900900 	lu32i.d	$r0,-229304(0xc8048)
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
 4c0:	0017f000 	srl.w	$r0,$r0,$r28
 4c4:	0000ec1c 	0x0000ec1c
 4c8:	0002a100 	0x0002a100
 4cc:	07040200 	0x07040200
 4d0:	0000000b 	0x0000000b
 4d4:	06070402 	cacop	0x2,$r0,449(0x1c1)
 4d8:	03000000 	lu52i.d	$r0,$r0,0
 4dc:	0000009f 	0x0000009f
 4e0:	49050101 	bcnez	$fcc0,328960(0x50500) # 509e0 <__stack_size+0x409e0>
 4e4:	f0000001 	0xf0000001
 4e8:	ec1c0017 	0xec1c0017
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
 59c:	1c0018b0 	pcaddu12i	$r16,197(0xc5)
 5a0:	00000020 	0x00000020
 5a4:	00000123 	0x00000123
 5a8:	0000f10a 	0x0000f10a
 5ac:	020a0100 	slti	$r0,$r8,640(0x280)
 5b0:	00000149 	0x00000149
 5b4:	00000112 	0x00000112
 5b8:	c00c000b 	0xc00c000b
 5bc:	6e1c0018 	bgeu	$r0,$r24,-123904(0x21c00) # fffe21bc <_stack+0xe3ee21c0>
 5c0:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 5c4:	08025401 	0x08025401
 5c8:	0e00002d 	0x0e00002d
 5cc:	1c001858 	pcaddu12i	$r24,194(0xc2)
 5d0:	00000030 	0x00000030
 5d4:	0000f10a 	0x0000f10a
 5d8:	020a0100 	slti	$r0,$r8,640(0x280)
 5dc:	00000149 	0x00000149
 5e0:	0000013e 	0x0000013e
 5e4:	880f000b 	0x880f000b
 5e8:	6e1c0018 	bgeu	$r0,$r24,-123904(0x21c00) # fffe21e8 <_stack+0xe3ee21ec>
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
 66c:	001ba006 	rotr.d	$r6,$r0,$r8
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
 6a4:	1ba00000 	pcalau12i	$r0,-196608(0xd0000)
 6a8:	a0021c00 	0xa0021c00
 6ac:	141c001b 	lu12i.w	$r27,57344(0xe000)
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
 6d8:	1c001ba0 	pcaddu12i	$r0,221(0xdd)
 6dc:	00000014 	0x00000014
 6e0:	0002930b 	0x0002930b
 6e4:	00077d00 	alsl.wu	$r0,$r8,$r31,0x3
 6e8:	00077b00 	alsl.wu	$r0,$r24,$r30,0x3
 6ec:	00000000 	0x00000000
 6f0:	00014c0c 	0x00014c0c
 6f4:	014b0100 	0x014b0100
 6f8:	00014c01 	0x00014c01
 6fc:	001b4000 	rotr.w	$r0,$r0,$r16
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
 79c:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
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
 818:	b0000000 	0xb0000000
 81c:	281c001a 	ld.b	$r26,$r0,1792(0x700)
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
 8cc:	001a6000 	0x001a6000
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
 904:	1a200000 	pcalau12i	$r0,65536(0x10000)
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
 93c:	b0000001 	0xb0000001
 940:	6c1c0019 	bgeu	$r0,$r25,7168(0x1c00) # 2540 <__stack_size-0xdac0>
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
 990:	19800000 	pcaddi	$r0,-262144(0xc0000)
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
 9f4:	00196000 	srl.d	$r0,$r0,$r24
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
 a44:	1c001920 	pcaddu12i	$r0,201(0xc9)
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
 a90:	e0000000 	0xe0000000
 a94:	341c0018 	0x341c0018
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
 acc:	001a9000 	0x001a9000
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
 b18:	1bc00000 	pcalau12i	$r0,-131072(0xe0000)
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
 b94:	001cd000 	mulh.w	$r0,$r0,$r20
 b98:	0000301c 	revb.2h	$r28,$r0
 b9c:	da9c0100 	0xda9c0100
 ba0:	08000000 	0x08000000
 ba4:	3e01006e 	0x3e01006e
 ba8:	00002c13 	ctz.d	$r19,$r0
 bac:	000db400 	bytepick.d	$r0,$r0,$r13,0x3
 bb0:	000dac00 	bytepick.d	$r0,$r0,$r11,0x3
 bb4:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 bb8:	1cd00000 	pcaddu12i	$r0,425984(0x68000)
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
 be4:	a0000000 	0xa0000000
 be8:	241c001c 	ldptr.w	$r28,$r0,7168(0x1c00)
 bec:	01000000 	0x01000000
 bf0:	00012c9c 	0x00012c9c
 bf4:	006e0800 	bstrins.w	$r0,$r0,0xe,0x2
 bf8:	2c133501 	vld	$vr1,$r8,1229(0x4cd)
 bfc:	11000000 	addu16i.d	$r0,$r0,16384(0x4000)
 c00:	0900000e 	0x0900000e
 c04:	0900000e 	0x0900000e
 c08:	0000022e 	0x0000022e
 c0c:	1c001ca0 	pcaddu12i	$r0,229(0xe5)
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
 c54:	1c001c00 	pcaddu12i	$r0,224(0xe0)
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
 c98:	00000002 	0x00000002
 c9c:	031c001c 	lu52i.d	$r28,$r0,1792(0x700)
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
 ccc:	1bf00000 	pcalau12i	$r0,-32768(0xf8000)
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
 cf8:	c0000000 	0xc0000000
 cfc:	1c1c001b 	pcaddu12i	$r27,57344(0xe000)
 d00:	01000000 	0x01000000
 d04:	00022e9c 	0x00022e9c
 d08:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 d0c:	1bc00000 	pcalau12i	$r0,-131072(0xe0000)
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
 d60:	00000000 	0x00000000
 d64:	501c001d 	b	7609344(0x741c00) # 742964 <__stack_size+0x732964>
 d68:	bc000000 	0xbc000000
 d6c:	02000007 	slti	$r7,$r0,0
 d70:	000b0704 	0x000b0704
 d74:	04020000 	csrrd	$r0,0x80
 d78:	00000607 	0x00000607
 d7c:	02230300 	slti	$r0,$r24,-1856(0x8c0)
 d80:	01010000 	fadd.d	$f0,$f0,$f0
 d84:	00002c16 	ctz.d	$r22,$r0
 d88:	40030500 	beqz	$r8,772(0x304) # 108c <__stack_size-0xef74>
 d8c:	041c0802 	csrrd	$r2,0x702
 d90:	0000021d 	0x0000021d
 d94:	40060701 	beqz	$r24,263684(0x40604) # 41398 <__stack_size+0x31398>
 d98:	101c001d 	addu16i.d	$r29,$r0,1792(0x700)
 d9c:	01000000 	0x01000000
 da0:	00006a9c 	rdtime.d	$r28,$r20
 da4:	02280500 	slti	$r0,$r8,-1535(0xa01)
 da8:	07010000 	0x07010000
 dac:	00002519 	clz.d	$r25,$r8
 db0:	00540100 	0x00540100
 db4:	00021e06 	0x00021e06
 db8:	05030100 	0x05030100
 dbc:	00000080 	0x00000080
 dc0:	1c001d00 	pcaddu12i	$r0,232(0xe8)
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
 6d8:	1ba00000 	pcalau12i	$r0,-196608(0xd0000)
 6dc:	1ba81c00 	pcalau12i	$r0,-180000(0xd40e0)
 6e0:	00011c00 	asrtle.d	$r0,$r7
 6e4:	001ba854 	rotr.d	$r20,$r2,$r10
 6e8:	001bb81c 	rotr.d	$r28,$r0,$r14
 6ec:	f300041c 	0xf300041c
 6f0:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
 6fc:	a0000000 	0xa0000000
 700:	a81c001b 	0xa81c001b
 704:	011c001b 	0x011c001b
 708:	1ba85500 	pcalau12i	$r0,-179544(0xd42a8)
 70c:	1bb81c00 	pcalau12i	$r0,-147232(0xdc0e0)
 710:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 714:	9f5501f3 	0x9f5501f3
	...
 720:	00050502 	alsl.w	$r2,$r8,$r1,0x3
 724:	1ba00000 	pcalau12i	$r0,-196608(0xd0000)
 728:	1ba01c00 	pcalau12i	$r0,-196384(0xd00e0)
 72c:	00011c00 	asrtle.d	$r0,$r7
 730:	001ba055 	rotr.d	$r21,$r2,$r8
 734:	001ba81c 	rotr.d	$r28,$r0,$r10
 738:	7500031c 	0x7500031c
 73c:	1ba89f7f 	pcalau12i	$r31,-178949(0xd44fb)
 740:	1bb41c00 	pcalau12i	$r0,-155424(0xda0e0)
 744:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 748:	315501f3 	vstelm.h	$vr19,$r15,128(0x80),0x5
 74c:	00009f1c 	0x00009f1c
 750:	00000000 	0x00000000
 754:	00020000 	0x00020000
 758:	1ba00000 	pcalau12i	$r0,-196608(0xd0000)
 75c:	1ba81c00 	pcalau12i	$r0,-180000(0xd40e0)
 760:	00011c00 	asrtle.d	$r0,$r7
 764:	001ba854 	rotr.d	$r20,$r2,$r10
 768:	001bb81c 	rotr.d	$r28,$r0,$r14
 76c:	f300041c 	0xf300041c
 770:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
 774:	00000000 	0x00000000
 778:	04000000 	csrrd	$r0,0x0
 77c:	001ba000 	rotr.d	$r0,$r0,$r8
 780:	001bb81c 	rotr.d	$r28,$r0,$r14
 784:	5400011c 	bl	74448896(0x4700000) # 4700784 <__stack_size+0x46f0784>
	...
 794:	1c001b40 	pcaddu12i	$r0,218(0xda)
 798:	1c001b58 	pcaddu12i	$r24,218(0xda)
 79c:	58540001 	beq	$r0,$r1,21504(0x5400) # 5b9c <__stack_size-0xa464>
 7a0:	981c001b 	0x981c001b
 7a4:	041c001b 	csrrd	$r27,0x700
 7a8:	5401f300 	bl	-67108368(0xc0001f0) # fc000998 <_stack+0xdff0099c>
 7ac:	0000009f 	0x0000009f
	...
 7b8:	001b4000 	rotr.w	$r0,$r0,$r16
 7bc:	001b581c 	rotr.w	$r28,$r0,$r22
 7c0:	5500011c 	bl	74514432(0x4710000) # 47107c0 <__stack_size+0x47007c0>
 7c4:	1c001b58 	pcaddu12i	$r24,218(0xda)
 7c8:	1c001b98 	pcaddu12i	$r24,220(0xdc)
 7cc:	01f30004 	0x01f30004
 7d0:	00009f55 	0x00009f55
 7d4:	00000000 	0x00000000
 7d8:	04000000 	csrrd	$r0,0x0
 7dc:	00000004 	0x00000004
 7e0:	1b400001 	pcalau12i	$r1,-393216(0xa0000)
 7e4:	1b401c00 	pcalau12i	$r0,-392992(0xa00e0)
 7e8:	00011c00 	asrtle.d	$r0,$r7
 7ec:	001b4056 	rotr.w	$r22,$r2,$r16
 7f0:	001b501c 	rotr.w	$r28,$r0,$r20
 7f4:	7600031c 	0x7600031c
 7f8:	1b509f7f 	pcalau12i	$r31,-359173(0xa84fb)
 7fc:	1b641c00 	pcalau12i	$r0,-319264(0xb20e0)
 800:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 804:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 808:	1b649f1c 	pcalau12i	$r28,-318216(0xb24f8)
 80c:	1b701c00 	pcalau12i	$r0,-294688(0xb80e0)
 810:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 814:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 818:	00009f1c 	0x00009f1c
 81c:	00000000 	0x00000000
 820:	00020000 	0x00020000
 824:	1b400000 	pcalau12i	$r0,-393216(0xa0000)
 828:	1b741c00 	pcalau12i	$r0,-286496(0xba0e0)
 82c:	00011c00 	asrtle.d	$r0,$r7
 830:	001b7854 	rotr.w	$r20,$r2,$r30
 834:	001b8c1c 	rotr.d	$r28,$r0,$r3
 838:	5400011c 	bl	74448896(0x4700000) # 4700838 <__stack_size+0x46f0838>
	...
 844:	1b400003 	pcalau12i	$r3,-393216(0xa0000)
 848:	1b981c00 	pcalau12i	$r0,-212768(0xcc0e0)
 84c:	00011c00 	asrtle.d	$r0,$r7
 850:	00000055 	0x00000055
	...
 85c:	e0000000 	0xe0000000
 860:	1c1c001a 	pcaddu12i	$r26,57344(0xe000)
 864:	011c001b 	0x011c001b
 868:	1b1c5500 	pcalau12i	$r0,-466264(0x8e2a8)
 86c:	1b381c00 	pcalau12i	$r0,-409376(0x9c0e0)
 870:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 874:	9f5501f3 	0x9f5501f3
 878:	1c001b38 	pcaddu12i	$r24,217(0xd9)
 87c:	1c001b3c 	pcaddu12i	$r28,217(0xd9)
 880:	00550001 	0x00550001
	...
 88c:	00000101 	0x00000101
 890:	001ae000 	0x001ae000
 894:	001af01c 	0x001af01c
 898:	5600011c 	bl	74579968(0x4720000) # 4720898 <__stack_size+0x4710898>
 89c:	1c001af0 	pcaddu12i	$r16,215(0xd7)
 8a0:	1c001b34 	pcaddu12i	$r20,217(0xd9)
 8a4:	7f760003 	0x7f760003
 8a8:	001b389f 	rotr.w	$r31,$r4,$r14
 8ac:	001b3c1c 	rotr.w	$r28,$r0,$r15
 8b0:	7600031c 	0x7600031c
 8b4:	00009f7f 	0x00009f7f
 8b8:	00000000 	0x00000000
 8bc:	01020000 	0x01020000
 8c0:	00000001 	0x00000001
 8c4:	1ae00000 	pcalau12i	$r0,458752(0x70000)
 8c8:	1aec1c00 	pcalau12i	$r0,483552(0x760e0)
 8cc:	00011c00 	asrtle.d	$r0,$r7
 8d0:	001aec55 	0x001aec55
 8d4:	001b0c1c 	rotr.w	$r28,$r0,$r3
 8d8:	5c00011c 	bne	$r8,$r28,0 # 8d8 <__stack_size-0xf728>
 8dc:	1c001b0c 	pcaddu12i	$r12,216(0xd8)
 8e0:	1c001b34 	pcaddu12i	$r20,217(0xd9)
 8e4:	38550001 	0x38550001
 8e8:	3c1c001b 	0x3c1c001b
 8ec:	011c001b 	0x011c001b
 8f0:	00005500 	bitrev.d	$r0,$r8
 8f4:	00000000 	0x00000000
 8f8:	00030000 	0x00030000
	...
 904:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
 908:	1c001af0 	pcaddu12i	$r16,215(0xd7)
 90c:	f0540001 	0xf0540001
 910:	0c1c001a 	0x0c1c001a
 914:	011c001b 	0x011c001b
 918:	1b0c5d00 	pcalau12i	$r0,-498968(0x862e8)
 91c:	1b1c1c00 	pcalau12i	$r0,-466720(0x8e0e0)
 920:	00011c00 	asrtle.d	$r0,$r7
 924:	001b1c54 	rotr.w	$r20,$r2,$r7
 928:	001b341c 	rotr.w	$r28,$r0,$r13
 92c:	5c00011c 	bne	$r8,$r28,0 # 92c <__stack_size-0xf6d4>
 930:	1c001b38 	pcaddu12i	$r24,217(0xd9)
 934:	1c001b3c 	pcaddu12i	$r28,217(0xd9)
 938:	00540001 	0x00540001
	...
 944:	b0000000 	0xb0000000
 948:	bc1c001a 	0xbc1c001a
 94c:	011c001a 	0x011c001a
 950:	1abc5500 	pcalau12i	$r0,385704(0x5e2a8)
 954:	1ad81c00 	pcalau12i	$r0,442592(0x6c0e0)
 958:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 95c:	9f5501f3 	0x9f5501f3
	...
 968:	00040400 	alsl.w	$r0,$r0,$r1,0x1
 96c:	1ab00000 	pcalau12i	$r0,360448(0x58000)
 970:	1ab01c00 	pcalau12i	$r0,360672(0x580e0)
 974:	00011c00 	asrtle.d	$r0,$r7
 978:	001ab056 	0x001ab056
 97c:	001ab81c 	0x001ab81c
 980:	7600031c 	0x7600031c
 984:	1ab89f7f 	pcalau12i	$r31,378107(0x5c4fb)
 988:	1ad41c00 	pcalau12i	$r0,434400(0x6a0e0)
 98c:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 990:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 994:	00009f1c 	0x00009f1c
 998:	00000000 	0x00000000
 99c:	00020000 	0x00020000
 9a0:	1c001ab0 	pcaddu12i	$r16,213(0xd5)
 9a4:	1c001ad8 	pcaddu12i	$r24,214(0xd6)
 9a8:	00550001 	0x00550001
 9ac:	00000000 	0x00000000
 9b0:	03000000 	lu52i.d	$r0,$r0,0
 9b4:	b0000000 	0xb0000000
 9b8:	bc1c001a 	0xbc1c001a
 9bc:	011c001a 	0x011c001a
 9c0:	1abc5400 	pcalau12i	$r0,385696(0x5e2a0)
 9c4:	1ad41c00 	pcalau12i	$r0,434400(0x6a0e0)
 9c8:	00011c00 	asrtle.d	$r0,$r7
 9cc:	0000005c 	0x0000005c
	...
 9d8:	001a6000 	0x001a6000
 9dc:	001a781c 	0x001a781c
 9e0:	5400011c 	bl	74448896(0x4700000) # 47009e0 <__stack_size+0x46f09e0>
 9e4:	1c001a78 	pcaddu12i	$r24,211(0xd3)
 9e8:	1c001a88 	pcaddu12i	$r8,212(0xd4)
 9ec:	00540001 	0x00540001
	...
 9fc:	001a2000 	0x001a2000
 a00:	001a341c 	0x001a341c
 a04:	5400011c 	bl	74448896(0x4700000) # 4700a04 <__stack_size+0x46f0a04>
 a08:	1c001a34 	pcaddu12i	$r20,209(0xd1)
 a0c:	1c001a58 	pcaddu12i	$r24,210(0xd2)
 a10:	585c0001 	beq	$r0,$r1,23552(0x5c00) # 6610 <__stack_size-0x99f0>
 a14:	5c1c001a 	bne	$r0,$r26,7168(0x1c00) # 2614 <__stack_size-0xd9ec>
 a18:	011c001a 	0x011c001a
 a1c:	00005400 	bitrev.d	$r0,$r0
	...
 a2c:	1c0019b0 	pcaddu12i	$r16,205(0xcd)
 a30:	1c0019ec 	pcaddu12i	$r12,207(0xcf)
 a34:	ec540001 	0xec540001
 a38:	f41c0019 	0xf41c0019
 a3c:	011c0019 	0x011c0019
 a40:	19f85400 	pcaddi	$r0,-15712(0xfc2a0)
 a44:	1a101c00 	pcalau12i	$r0,32992(0x80e0)
 a48:	00011c00 	asrtle.d	$r0,$r7
 a4c:	00000054 	0x00000054
	...
 a5c:	b0000000 	0xb0000000
 a60:	cc1c0019 	0xcc1c0019
 a64:	011c0019 	0x011c0019
 a68:	19cc5500 	pcaddi	$r0,-105816(0xe62a8)
 a6c:	19e41c00 	pcaddi	$r0,-57120(0xf20e0)
 a70:	00011c00 	asrtle.d	$r0,$r7
 a74:	0019e45c 	sra.d	$r28,$r2,$r25
 a78:	0019ec1c 	sra.d	$r28,$r0,$r27
 a7c:	5500011c 	bl	74514432(0x4710000) # 4710a7c <__stack_size+0x4700a7c>
 a80:	1c0019ec 	pcaddu12i	$r12,207(0xcf)
 a84:	1c0019f0 	pcaddu12i	$r16,207(0xcf)
 a88:	f85c0001 	0xf85c0001
 a8c:	fc1c0019 	0xfc1c0019
 a90:	011c0019 	0x011c0019
 a94:	00005c00 	ext.w.b	$r0,$r0
	...
 aa4:	00010100 	asrtle.d	$r8,$r0
 aa8:	19b00000 	pcaddi	$r0,-163840(0xd8000)
 aac:	19c81c00 	pcaddi	$r0,-114464(0xe40e0)
 ab0:	00011c00 	asrtle.d	$r0,$r7
 ab4:	0019c856 	sra.d	$r22,$r2,$r18
 ab8:	0019cc1c 	sra.d	$r28,$r0,$r19
 abc:	f300041c 	0xf300041c
 ac0:	cc9f5601 	0xcc9f5601
 ac4:	e41c0019 	0xe41c0019
 ac8:	061c0019 	cacop	0x19,$r0,1792(0x700)
 acc:	5601f300 	bl	-66977296(0xc0201f0) # fc020cbc <_stack+0xdff20cc0>
 ad0:	e49f1c31 	0xe49f1c31
 ad4:	e41c0019 	0xe41c0019
 ad8:	041c0019 	csrrd	$r25,0x700
 adc:	5601f300 	bl	-66977296(0xc0201f0) # fc020ccc <_stack+0xdff20cd0>
 ae0:	0019e49f 	sra.d	$r31,$r4,$r25
 ae4:	0019f01c 	sra.d	$r28,$r0,$r28
 ae8:	f300061c 	0xf300061c
 aec:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 af0:	0019f89f 	sra.d	$r31,$r4,$r30
 af4:	0019fc1c 	sra.d	$r28,$r0,$r31
 af8:	f300061c 	0xf300061c
 afc:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 b00:	0000009f 	0x0000009f
	...
 b0c:	00198000 	sra.d	$r0,$r0,$r0
 b10:	0019a41c 	sra.d	$r28,$r0,$r9
 b14:	5500011c 	bl	74514432(0x4710000) # 4710b14 <__stack_size+0x4700b14>
 b18:	1c0019a4 	pcaddu12i	$r4,205(0xcd)
 b1c:	1c0019ac 	pcaddu12i	$r12,205(0xcd)
 b20:	00550001 	0x00550001
	...
 b30:	01010000 	fadd.d	$f0,$f0,$f0
 b34:	00198000 	sra.d	$r0,$r0,$r0
 b38:	0019881c 	sra.d	$r28,$r0,$r2
 b3c:	5600011c 	bl	74579968(0x4720000) # 4720b3c <__stack_size+0x4710b3c>
 b40:	1c001988 	pcaddu12i	$r8,204(0xcc)
 b44:	1c00198c 	pcaddu12i	$r12,204(0xcc)
 b48:	01f30004 	0x01f30004
 b4c:	198c9f56 	pcaddi	$r22,-236294(0xc64fa)
 b50:	19981c00 	pcaddi	$r0,-212768(0xcc0e0)
 b54:	000a1c00 	0x000a1c00
 b58:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b5c:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d4c <_stack+0xe0620d50>
 b60:	19989f22 	pcaddi	$r2,-211719(0xcc4f9)
 b64:	19a41c00 	pcaddi	$r0,-188192(0xd20e0)
 b68:	000c1c00 	bytepick.d	$r0,$r0,$r7,0x0
 b6c:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b70:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d60 <_stack+0xe0620d64>
 b74:	9f012322 	0x9f012322
 b78:	1c0019a4 	pcaddu12i	$r4,205(0xcd)
 b7c:	1c0019a8 	pcaddu12i	$r8,205(0xcd)
 b80:	0074000a 	bstrins.w	$r10,$r0,0x14,0x0
 b84:	f31c007d 	0xf31c007d
 b88:	9f225601 	0x9f225601
	...
 b94:	00000002 	0x00000002
 b98:	00010100 	asrtle.d	$r8,$r0
 b9c:	1c001980 	pcaddu12i	$r0,204(0xcc)
 ba0:	1c00198c 	pcaddu12i	$r12,204(0xcc)
 ba4:	8c540001 	0x8c540001
 ba8:	981c0019 	0x981c0019
 bac:	011c0019 	0x011c0019
 bb0:	19985d00 	pcaddi	$r0,-212248(0xcc2e8)
 bb4:	19a41c00 	pcaddi	$r0,-188192(0xd20e0)
 bb8:	00031c00 	0x00031c00
 bbc:	a49f7f7d 	0xa49f7f7d
 bc0:	a81c0019 	0xa81c0019
 bc4:	011c0019 	0x011c0019
 bc8:	00005d00 	ext.w.b	$r0,$r8
	...
 bd4:	19600000 	pcaddi	$r0,-327680(0xb0000)
 bd8:	19681c00 	pcaddi	$r0,-311072(0xb40e0)
 bdc:	00011c00 	asrtle.d	$r0,$r7
 be0:	00196855 	srl.d	$r21,$r2,$r26
 be4:	00197c1c 	srl.d	$r28,$r0,$r31
 be8:	5500011c 	bl	74514432(0x4710000) # 4710be8 <__stack_size+0x4700be8>
	...
 bf4:	00000002 	0x00000002
 bf8:	1c001960 	pcaddu12i	$r0,203(0xcb)
 bfc:	1c001964 	pcaddu12i	$r4,203(0xcb)
 c00:	64540001 	bge	$r0,$r1,21504(0x5400) # 6000 <__stack_size-0xa000>
 c04:	7c1c0019 	0x7c1c0019
 c08:	011c0019 	0x011c0019
 c0c:	00005c00 	ext.w.b	$r0,$r0
	...
 c1c:	1c001920 	pcaddu12i	$r0,201(0xc9)
 c20:	1c001928 	pcaddu12i	$r8,201(0xc9)
 c24:	28540001 	ld.h	$r1,$r0,1280(0x500)
 c28:	381c0019 	stx.d	$r25,$r0,$r0
 c2c:	031c0019 	lu52i.d	$r25,$r0,1792(0x700)
 c30:	9f017400 	0x9f017400
 c34:	1c001938 	pcaddu12i	$r24,201(0xc9)
 c38:	1c00194c 	pcaddu12i	$r12,202(0xca)
 c3c:	00740008 	bstrins.w	$r8,$r0,0x14,0x0
 c40:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 c44:	00009f01 	0x00009f01
 c48:	00000000 	0x00000000
 c4c:	00020000 	0x00020000
 c50:	19200000 	pcaddi	$r0,-458752(0x90000)
 c54:	19381c00 	pcaddi	$r0,-409376(0x9c0e0)
 c58:	00021c00 	0x00021c00
 c5c:	19389f30 	pcaddi	$r16,-408327(0x9c4f9)
 c60:	194c1c00 	pcaddi	$r0,-368416(0xa60e0)
 c64:	00011c00 	asrtle.d	$r0,$r7
 c68:	0000005c 	0x0000005c
 c6c:	00000000 	0x00000000
 c70:	03030000 	lu52i.d	$r0,$r0,192(0xc0)
	...
 c7c:	0018e000 	sll.d	$r0,$r0,$r24
 c80:	0018e01c 	sll.d	$r28,$r0,$r24
 c84:	5400011c 	bl	74448896(0x4700000) # 4700c84 <__stack_size+0x46f0c84>
 c88:	1c0018e0 	pcaddu12i	$r0,199(0xc7)
 c8c:	1c0018ec 	pcaddu12i	$r12,199(0xc7)
 c90:	01740003 	0x01740003
 c94:	0018ec9f 	sll.d	$r31,$r4,$r27
 c98:	0019041c 	srl.d	$r28,$r0,$r1
 c9c:	7400081c 	xvseq.b	$xr28,$xr0,$xr2
 ca0:	22007c00 	ll.d	$r0,$r0,124(0x7c)
 ca4:	049f0123 	csrxchg	$r3,$r9,0x27c0
 ca8:	081c0019 	fmadd.s	$f25,$f0,$f0,$f24
 cac:	091c0019 	vfmadd.s	$vr25,$vr0,$vr0,$vr24
 cb0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ea0 <_stack+0xdff00ea4>
 cb4:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 cb8:	19089f01 	pcaddi	$r1,-506632(0x844f8)
 cbc:	19101c00 	pcaddi	$r0,-491296(0x880e0)
 cc0:	00031c00 	0x00031c00
 cc4:	109f0174 	addu16i.d	$r20,$r11,10176(0x27c0)
 cc8:	141c0019 	lu12i.w	$r25,57344(0xe000)
 ccc:	061c0019 	cacop	0x19,$r0,1792(0x700)
 cd0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ec0 <_stack+0xdff00ec4>
 cd4:	009f0123 	bstrins.d	$r3,$r9,0x1f,0x0
 cd8:	00000000 	0x00000000
 cdc:	02000000 	slti	$r0,$r0,0
 ce0:	00000000 	0x00000000
 ce4:	0018e000 	sll.d	$r0,$r0,$r24
 ce8:	0018ec1c 	sll.d	$r28,$r0,$r27
 cec:	3000021c 	0x3000021c
 cf0:	0018ec9f 	sll.d	$r31,$r4,$r27
 cf4:	0019081c 	srl.d	$r28,$r0,$r2
 cf8:	5c00011c 	bne	$r8,$r28,0 # cf8 <__stack_size-0xf308>
 cfc:	1c001908 	pcaddu12i	$r8,200(0xc8)
 d00:	1c001914 	pcaddu12i	$r20,200(0xc8)
 d04:	9f300002 	0x9f300002
	...
 d10:	00030300 	0x00030300
	...
 d1c:	1c001a90 	pcaddu12i	$r16,212(0xd4)
 d20:	1c001a90 	pcaddu12i	$r16,212(0xd4)
 d24:	90560001 	0x90560001
 d28:	981c001a 	0x981c001a
 d2c:	031c001a 	lu52i.d	$r26,$r0,1792(0x700)
 d30:	9f7f7600 	0x9f7f7600
 d34:	1c001a98 	pcaddu12i	$r24,212(0xd4)
 d38:	1c001a9c 	pcaddu12i	$r28,212(0xd4)
 d3c:	01f30006 	0x01f30006
 d40:	9f1c3156 	0x9f1c3156
 d44:	1c001a9c 	pcaddu12i	$r28,212(0xd4)
 d48:	1c001aa4 	pcaddu12i	$r4,213(0xd5)
 d4c:	007c000b 	bstrins.w	$r11,$r0,0x1c,0x0
 d50:	5601f320 	bl	-58588688(0xc8201f0) # fc820f40 <_stack+0xe0720f44>
 d54:	22007422 	ll.d	$r2,$r1,116(0x74)
 d58:	001aa49f 	0x001aa49f
 d5c:	001aa81c 	0x001aa81c
 d60:	74000a1c 	xvseq.b	$xr28,$xr16,$xr2
 d64:	1c007c00 	pcaddu12i	$r0,992(0x3e0)
 d68:	225601f3 	ll.d	$r19,$r15,22016(0x5600)
 d6c:	001aa89f 	0x001aa89f
 d70:	001aac1c 	0x001aac1c
 d74:	7c000b1c 	0x7c000b1c
 d78:	01f32000 	0x01f32000
 d7c:	00742256 	bstrins.w	$r22,$r18,0x14,0x8
 d80:	00009f22 	0x00009f22
 d84:	00000000 	0x00000000
 d88:	00020000 	0x00020000
 d8c:	1a900000 	pcalau12i	$r0,294912(0x48000)
 d90:	1a9c1c00 	pcalau12i	$r0,319712(0x4e0e0)
 d94:	00011c00 	asrtle.d	$r0,$r7
 d98:	001a9c54 	0x001a9c54
 d9c:	001aac1c 	0x001aac1c
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
  10:	1c0014a0 	pcaddu12i	$r0,165(0xa5)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c0016e0 	pcaddu12i	$r0,183(0xb7)
  34:	00000054 	0x00000054
	...
  40:	0000001c 	0x0000001c
  44:	03340002 	lu52i.d	$r2,$r0,-768(0xd00)
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c001740 	pcaddu12i	$r0,186(0xba)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04a80002 	csrrd	$r2,0x2a00
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c0017f0 	pcaddu12i	$r16,191(0xbf)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06230002 	cacop	0x2,$r0,-1856(0x8c0)
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c0018e0 	pcaddu12i	$r0,199(0xc7)
  94:	000002d8 	0x000002d8
	...
  a0:	0000001c 	0x0000001c
  a4:	0b010002 	0x0b010002
  a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  ac:	00000000 	0x00000000
  b0:	1c001bc0 	pcaddu12i	$r0,222(0xde)
  b4:	00000140 	0x00000140
	...
  c0:	0000001c 	0x0000001c
  c4:	0d4a0002 	0x0d4a0002
  c8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  cc:	00000000 	0x00000000
  d0:	1c001d00 	pcaddu12i	$r0,232(0xe8)
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
  60:	1c0018e0 	pcaddu12i	$r0,199(0xc7)
  64:	1c001bb8 	pcaddu12i	$r24,221(0xdd)
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
  2c:	14a00205 	lu12i.w	$r5,327696(0x50010)
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
 1d4:	e0020500 	0xe0020500
 1d8:	131c0016 	addu16i.d	$r22,$r0,-14592(0xc700)
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
 234:	00174002 	sll.w	$r2,$r0,$r16
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
 2d0:	17f00205 	lu32i.d	$r5,-32752(0xf8010)
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
 3d4:	1c0018e0 	pcaddu12i	$r0,199(0xc7)
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
 6d0:	1bc00205 	pcalau12i	$r5,-131056(0xe0010)
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
 7e8:	1c001d00 	pcaddu12i	$r0,232(0xe8)
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
  18:	1c0014a0 	pcaddu12i	$r0,165(0xa5)
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
  60:	1c0016e0 	pcaddu12i	$r0,183(0xb7)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c001710 	pcaddu12i	$r16,184(0xb8)
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
  a8:	1c001740 	pcaddu12i	$r0,186(0xba)
  ac:	00000074 	0x00000074
  b0:	50100e44 	b	-116387828(0x910100c) # f91010bc <_stack+0xdd0010c0>
  b4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  b8:	04990398 	csrxchg	$r24,$r28,0x2640
  bc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c204 <__stack_size+0x7c204>
  c0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd904 <_stack+0xe3ccd908>
  c4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  c8:	00000018 	0x00000018
  cc:	00000090 	0x00000090
  d0:	1c0017c0 	pcaddu12i	$r0,190(0xbe)
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
  fc:	1c0017f0 	pcaddu12i	$r16,191(0xbf)
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
 138:	1c0018e0 	pcaddu12i	$r0,199(0xc7)
 13c:	00000034 	0x00000034
 140:	0000000c 	0x0000000c
 144:	00000120 	0x00000120
 148:	1c001920 	pcaddu12i	$r0,201(0xc9)
 14c:	00000034 	0x00000034
 150:	0000000c 	0x0000000c
 154:	00000120 	0x00000120
 158:	1c001960 	pcaddu12i	$r0,203(0xcb)
 15c:	0000001c 	0x0000001c
 160:	0000000c 	0x0000000c
 164:	00000120 	0x00000120
 168:	1c001980 	pcaddu12i	$r0,204(0xcc)
 16c:	0000002c 	0x0000002c
 170:	00000014 	0x00000014
 174:	00000120 	0x00000120
 178:	1c0019b0 	pcaddu12i	$r16,205(0xcd)
 17c:	0000006c 	0x0000006c
 180:	100e5002 	addu16i.d	$r2,$r0,916(0x394)
 184:	00000e54 	0x00000e54
 188:	0000000c 	0x0000000c
 18c:	00000120 	0x00000120
 190:	1c001a20 	pcaddu12i	$r0,209(0xd1)
 194:	0000003c 	0x0000003c
 198:	0000000c 	0x0000000c
 19c:	00000120 	0x00000120
 1a0:	1c001a60 	pcaddu12i	$r0,211(0xd3)
 1a4:	00000028 	0x00000028
 1a8:	0000000c 	0x0000000c
 1ac:	00000120 	0x00000120
 1b0:	1c001a90 	pcaddu12i	$r16,212(0xd4)
 1b4:	00000020 	0x00000020
 1b8:	0000000c 	0x0000000c
 1bc:	00000120 	0x00000120
 1c0:	1c001ab0 	pcaddu12i	$r16,213(0xd5)
 1c4:	00000028 	0x00000028
 1c8:	0000000c 	0x0000000c
 1cc:	00000120 	0x00000120
 1d0:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
 1d4:	0000005c 	0x0000005c
 1d8:	00000014 	0x00000014
 1dc:	00000120 	0x00000120
 1e0:	1c001b40 	pcaddu12i	$r0,218(0xda)
 1e4:	00000058 	0x00000058
 1e8:	54100e7c 	bl	-101707764(0x9f0100c) # f9f011f4 <_stack+0xdde011f8>
 1ec:	0000000e 	0x0000000e
 1f0:	0000000c 	0x0000000c
 1f4:	00000120 	0x00000120
 1f8:	1c001ba0 	pcaddu12i	$r0,221(0xdd)
 1fc:	00000018 	0x00000018
 200:	0000000c 	0x0000000c
 204:	ffffffff 	0xffffffff
 208:	7c010001 	0x7c010001
 20c:	00030d01 	0x00030d01
 210:	00000018 	0x00000018
 214:	00000200 	0x00000200
 218:	1c001bc0 	pcaddu12i	$r0,222(0xde)
 21c:	0000001c 	0x0000001c
 220:	44100e44 	bnez	$r18,1052684(0x10100c) # 10122c <__stack_size+0xf122c>
 224:	d94c0199 	0xd94c0199
 228:	00000e44 	0x00000e44
 22c:	0000000c 	0x0000000c
 230:	00000200 	0x00000200
 234:	1c001be0 	pcaddu12i	$r0,223(0xdf)
 238:	00000004 	0x00000004
 23c:	0000000c 	0x0000000c
 240:	00000200 	0x00000200
 244:	1c001bf0 	pcaddu12i	$r16,223(0xdf)
 248:	00000008 	0x00000008
 24c:	00000018 	0x00000018
 250:	00000200 	0x00000200
 254:	1c001c00 	pcaddu12i	$r0,224(0xe0)
 258:	00000084 	0x00000084
 25c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101268 <__stack_size+0xf1268>
 260:	60020199 	blt	$r12,$r25,512(0x200) # 460 <__stack_size-0xfba0>
 264:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 268:	0000000c 	0x0000000c
 26c:	00000200 	0x00000200
 270:	1c001c90 	pcaddu12i	$r16,228(0xe4)
 274:	00000004 	0x00000004
 278:	00000018 	0x00000018
 27c:	00000200 	0x00000200
 280:	1c001ca0 	pcaddu12i	$r0,229(0xe5)
 284:	00000024 	0x00000024
 288:	44100e44 	bnez	$r18,1052684(0x10100c) # 101294 <__stack_size+0xf1294>
 28c:	d9500199 	0xd9500199
 290:	00000e48 	0x00000e48
 294:	00000018 	0x00000018
 298:	00000200 	0x00000200
 29c:	1c001cd0 	pcaddu12i	$r16,230(0xe6)
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
 2c8:	1c001d00 	pcaddu12i	$r0,232(0xe8)
 2cc:	00000034 	0x00000034
 2d0:	0000000c 	0x0000000c
 2d4:	000002b0 	0x000002b0
 2d8:	1c001d40 	pcaddu12i	$r0,234(0xea)
 2dc:	00000010 	0x00000010
