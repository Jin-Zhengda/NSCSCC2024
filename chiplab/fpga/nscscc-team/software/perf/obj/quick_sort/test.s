
obj/quick_sort/main.elf:     file format elf32-loongarch
obj/quick_sort/main.elf


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
1c000054:	029a818c 	addi.w	$r12,$r12,1696(0x6a0)
1c000058:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00005c:	02bea1ad 	addi.w	$r13,$r13,-88(0xfa8)
1c000060:	1c00104e 	pcaddu12i	$r14,130(0x82)
1c000064:	028401ce 	addi.w	$r14,$r14,256(0x100)
1c000068:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000080 <_start+0x80>
1c00006c:	2880018f 	ld.w	$r15,$r12,0
1c000070:	298001af 	st.w	$r15,$r13,0
1c000074:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000078:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00007c:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c00006c <_start+0x6c>
1c000080:	1c00104c 	pcaddu12i	$r12,130(0x82)
1c000084:	0283818c 	addi.w	$r12,$r12,224(0xe0)
1c000088:	1c00106d 	pcaddu12i	$r13,131(0x83)
1c00008c:	0281e1ad 	addi.w	$r13,$r13,120(0x78)
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
1c00038c:	54001400 	bl	20(0x14) # 1c0003a0 <shell6>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <shell6>:
shell6():
1c0003a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0003a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0003a8:	157f5fcc 	lu12i.w	$r12,-263426(0xbfafe)
1c0003ac:	2980a077 	st.w	$r23,$r3,40(0x28)
1c0003b0:	29809078 	st.w	$r24,$r3,36(0x24)
1c0003b4:	29808079 	st.w	$r25,$r3,32(0x20)
1c0003b8:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0003bc:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0003c0:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0003c4:	2980407d 	st.w	$r29,$r3,16(0x10)
1c0003c8:	2980307e 	st.w	$r30,$r3,12(0xc)
1c0003cc:	29800180 	st.w	$r0,$r12,0
1c0003d0:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0003d4:	02b0c084 	addi.w	$r4,$r4,-976(0xc30)
1c0003d8:	5410b800 	bl	4280(0x10b8) # 1c001490 <puts>
1c0003dc:	5411d400 	bl	4564(0x11d4) # 1c0015b0 <get_count>
1c0003e0:	0015009c 	move	$r28,$r4
1c0003e4:	5411fc00 	bl	4604(0x11fc) # 1c0015e0 <get_count_my>
1c0003e8:	0015009d 	move	$r29,$r4
1c0003ec:	157f5fe4 	lu12i.w	$r4,-263425(0xbfaff)
1c0003f0:	03bc8085 	ori	$r5,$r4,0xf20
1c0003f4:	288000a6 	ld.w	$r6,$r5,0
1c0003f8:	1c001017 	pcaddu12i	$r23,128(0x80)
1c0003fc:	02b342f7 	addi.w	$r23,$r23,-816(0xcd0)
1c000400:	1c00103b 	pcaddu12i	$r27,129(0x81)
1c000404:	02b1a37b 	addi.w	$r27,$r27,-920(0xc68)
1c000408:	0280281e 	addi.w	$r30,$r0,10(0xa)
1c00040c:	00150019 	move	$r25,$r0
1c000410:	03be801a 	ori	$r26,$r0,0xfa0
1c000414:	001502f8 	move	$r24,$r23
1c000418:	5c01c4c0 	bne	$r6,$r0,452(0x1c4) # 1c0005dc <shell6+0x23c>
1c00041c:	03400000 	andi	$r0,$r0,0x0
1c000420:	028fa005 	addi.w	$r5,$r0,1000(0x3e8)
1c000424:	00150364 	move	$r4,$r27
1c000428:	5408d800 	bl	2264(0x8d8) # 1c000d00 <quick_sort>
1c00042c:	00106ae7 	add.w	$r7,$r23,$r26
1c000430:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000434:	02b2618c 	addi.w	$r12,$r12,-872(0xc98)
1c000438:	00150317 	move	$r23,$r24
1c00043c:	00116088 	sub.w	$r8,$r4,$r24
1c000440:	0010310d 	add.w	$r13,$r8,$r12
1c000444:	2880018e 	ld.w	$r14,$r12,0
1c000448:	288001a9 	ld.w	$r9,$r13,0
1c00044c:	001501af 	move	$r15,$r13
1c000450:	001501b0 	move	$r16,$r13
1c000454:	001501f2 	move	$r18,$r15
1c000458:	001501f4 	move	$r20,$r15
1c00045c:	001501e1 	move	$r1,$r15
1c000460:	5c01192e 	bne	$r9,$r14,280(0x118) # 1c000578 <shell6+0x1d8>
1c000464:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c000468:	288011ab 	ld.w	$r11,$r13,4(0x4)
1c00046c:	5c010d6a 	bne	$r11,$r10,268(0x10c) # 1c000578 <shell6+0x1d8>
1c000470:	28802184 	ld.w	$r4,$r12,8(0x8)
1c000474:	288021a5 	ld.w	$r5,$r13,8(0x8)
1c000478:	5c0100a4 	bne	$r5,$r4,256(0x100) # 1c000578 <shell6+0x1d8>
1c00047c:	28803186 	ld.w	$r6,$r12,12(0xc)
1c000480:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c000484:	5c00f5a6 	bne	$r13,$r6,244(0xf4) # 1c000578 <shell6+0x1d8>
1c000488:	2880418f 	ld.w	$r15,$r12,16(0x10)
1c00048c:	28804210 	ld.w	$r16,$r16,16(0x10)
1c000490:	5c00ea0f 	bne	$r16,$r15,232(0xe8) # 1c000578 <shell6+0x1d8>
1c000494:	28805191 	ld.w	$r17,$r12,20(0x14)
1c000498:	28805252 	ld.w	$r18,$r18,20(0x14)
1c00049c:	5c00de51 	bne	$r18,$r17,220(0xdc) # 1c000578 <shell6+0x1d8>
1c0004a0:	28806193 	ld.w	$r19,$r12,24(0x18)
1c0004a4:	28806294 	ld.w	$r20,$r20,24(0x18)
1c0004a8:	5c00d293 	bne	$r20,$r19,208(0xd0) # 1c000578 <shell6+0x1d8>
1c0004ac:	28807189 	ld.w	$r9,$r12,28(0x1c)
1c0004b0:	28807021 	ld.w	$r1,$r1,28(0x1c)
1c0004b4:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c0004b8:	5c00c029 	bne	$r1,$r9,192(0xc0) # 1c000578 <shell6+0x1d8>
1c0004bc:	5fff8587 	bne	$r12,$r7,-124(0x3ff84) # 1c000440 <shell6+0xa0>
1c0004c0:	02bfffde 	addi.w	$r30,$r30,-1(0xfff)
1c0004c4:	5fff5fc0 	bne	$r30,$r0,-164(0x3ff5c) # 1c000420 <shell6+0x80>
1c0004c8:	54111800 	bl	4376(0x1118) # 1c0015e0 <get_count_my>
1c0004cc:	00150097 	move	$r23,$r4
1c0004d0:	5410e000 	bl	4320(0x10e0) # 1c0015b0 <get_count>
1c0004d4:	001176fd 	sub.w	$r29,$r23,$r29
1c0004d8:	0011709c 	sub.w	$r28,$r4,$r28
1c0004dc:	5c00cf20 	bne	$r25,$r0,204(0xcc) # 1c0005a8 <shell6+0x208>
1c0004e0:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0004e4:	02ada084 	addi.w	$r4,$r4,-1176(0xb68)
1c0004e8:	540fa800 	bl	4008(0xfa8) # 1c001490 <puts>
1c0004ec:	157f5fe7 	lu12i.w	$r7,-263425(0xbfaff)
1c0004f0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0004f4:	038100f1 	ori	$r17,$r7,0x40
1c0004f8:	29800226 	st.w	$r6,$r17,0
1c0004fc:	140001e5 	lu12i.w	$r5,15(0xf)
1c000500:	0380c0f2 	ori	$r18,$r7,0x30
1c000504:	038080f3 	ori	$r19,$r7,0x20
1c000508:	03bffcb4 	ori	$r20,$r5,0xfff
1c00050c:	29800246 	st.w	$r6,$r18,0
1c000510:	29800274 	st.w	$r20,$r19,0
1c000514:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c000518:	0381402b 	ori	$r11,$r1,0x50
1c00051c:	2980017d 	st.w	$r29,$r11,0
1c000520:	157f5f0a 	lu12i.w	$r10,-263432(0xbfaf8)
1c000524:	2980015d 	st.w	$r29,$r10,0
1c000528:	0380414e 	ori	$r14,$r10,0x10
1c00052c:	00150385 	move	$r5,$r28
1c000530:	298001dc 	st.w	$r28,$r14,0
1c000534:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000538:	02acf084 	addi.w	$r4,$r4,-1220(0xb3c)
1c00053c:	540c3400 	bl	3124(0xc34) # 1c001170 <printf>
1c000540:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c000544:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c000548:	28809078 	ld.w	$r24,$r3,36(0x24)
1c00054c:	28808079 	ld.w	$r25,$r3,32(0x20)
1c000550:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c000554:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c000558:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c00055c:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c000560:	001503a5 	move	$r5,$r29
1c000564:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c000568:	1c001004 	pcaddu12i	$r4,128(0x80)
1c00056c:	02acd084 	addi.w	$r4,$r4,-1228(0xb34)
1c000570:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c000574:	500bfc00 	b	3068(0xbfc) # 1c001170 <printf>
1c000578:	02bfffde 	addi.w	$r30,$r30,-1(0xfff)
1c00057c:	02800739 	addi.w	$r25,$r25,1(0x1)
1c000580:	5ffea3c0 	bne	$r30,$r0,-352(0x3fea0) # 1c000420 <shell6+0x80>
1c000584:	53ff47ff 	b	-188(0xfffff44) # 1c0004c8 <shell6+0x128>
1c000588:	1c001004 	pcaddu12i	$r4,128(0x80)
1c00058c:	02aa4084 	addi.w	$r4,$r4,-1392(0xa90)
1c000590:	540be000 	bl	3040(0xbe0) # 1c001170 <printf>
1c000594:	54104c00 	bl	4172(0x104c) # 1c0015e0 <get_count_my>
1c000598:	0015009e 	move	$r30,$r4
1c00059c:	54101400 	bl	4116(0x1014) # 1c0015b0 <get_count>
1c0005a0:	001177dd 	sub.w	$r29,$r30,$r29
1c0005a4:	0011709c 	sub.w	$r28,$r4,$r28
1c0005a8:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0005ac:	02aad084 	addi.w	$r4,$r4,-1356(0xab4)
1c0005b0:	540ee000 	bl	3808(0xee0) # 1c001490 <puts>
1c0005b4:	157f5fe9 	lu12i.w	$r9,-263425(0xbfaff)
1c0005b8:	0280041b 	addi.w	$r27,$r0,1(0x1)
1c0005bc:	03810138 	ori	$r24,$r9,0x40
1c0005c0:	2980031b 	st.w	$r27,$r24,0
1c0005c4:	0280081a 	addi.w	$r26,$r0,2(0x2)
1c0005c8:	0380c128 	ori	$r8,$r9,0x30
1c0005cc:	0380812c 	ori	$r12,$r9,0x20
1c0005d0:	2980011a 	st.w	$r26,$r8,0
1c0005d4:	29800180 	st.w	$r0,$r12,0
1c0005d8:	53ff3fff 	b	-196(0xfffff3c) # 1c000514 <shell6+0x174>
1c0005dc:	028fa005 	addi.w	$r5,$r0,1000(0x3e8)
1c0005e0:	00150364 	move	$r4,$r27
1c0005e4:	54071c00 	bl	1820(0x71c) # 1c000d00 <quick_sort>
1c0005e8:	00150005 	move	$r5,$r0
1c0005ec:	028fa01b 	addi.w	$r27,$r0,1000(0x3e8)
1c0005f0:	00115c9a 	sub.w	$r26,$r4,$r23
1c0005f4:	00105f58 	add.w	$r24,$r26,$r23
1c0005f8:	288002e7 	ld.w	$r7,$r23,0
1c0005fc:	28800306 	ld.w	$r6,$r24,0
1c000600:	5fff88c7 	bne	$r6,$r7,-120(0x3ff88) # 1c000588 <shell6+0x1e8>
1c000604:	288012e7 	ld.w	$r7,$r23,4(0x4)
1c000608:	28801306 	ld.w	$r6,$r24,4(0x4)
1c00060c:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c000610:	001500b0 	move	$r16,$r5
1c000614:	5fff74c7 	bne	$r6,$r7,-140(0x3ff74) # 1c000588 <shell6+0x1e8>
1c000618:	288022e7 	ld.w	$r7,$r23,8(0x8)
1c00061c:	28802306 	ld.w	$r6,$r24,8(0x8)
1c000620:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c000624:	5fff64c7 	bne	$r6,$r7,-156(0x3ff64) # 1c000588 <shell6+0x1e8>
1c000628:	288032e7 	ld.w	$r7,$r23,12(0xc)
1c00062c:	28803306 	ld.w	$r6,$r24,12(0xc)
1c000630:	02800a05 	addi.w	$r5,$r16,2(0x2)
1c000634:	5fff54c7 	bne	$r6,$r7,-172(0x3ff54) # 1c000588 <shell6+0x1e8>
1c000638:	288042e7 	ld.w	$r7,$r23,16(0x10)
1c00063c:	28804306 	ld.w	$r6,$r24,16(0x10)
1c000640:	02800e05 	addi.w	$r5,$r16,3(0x3)
1c000644:	5fff44c7 	bne	$r6,$r7,-188(0x3ff44) # 1c000588 <shell6+0x1e8>
1c000648:	288052e7 	ld.w	$r7,$r23,20(0x14)
1c00064c:	28805306 	ld.w	$r6,$r24,20(0x14)
1c000650:	02801205 	addi.w	$r5,$r16,4(0x4)
1c000654:	5fff34c7 	bne	$r6,$r7,-204(0x3ff34) # 1c000588 <shell6+0x1e8>
1c000658:	288062e7 	ld.w	$r7,$r23,24(0x18)
1c00065c:	28806306 	ld.w	$r6,$r24,24(0x18)
1c000660:	02801605 	addi.w	$r5,$r16,5(0x5)
1c000664:	5fff24c7 	bne	$r6,$r7,-220(0x3ff24) # 1c000588 <shell6+0x1e8>
1c000668:	288072e7 	ld.w	$r7,$r23,28(0x1c)
1c00066c:	28807306 	ld.w	$r6,$r24,28(0x1c)
1c000670:	02801a05 	addi.w	$r5,$r16,6(0x6)
1c000674:	028082f7 	addi.w	$r23,$r23,32(0x20)
1c000678:	5fff10c7 	bne	$r6,$r7,-240(0x3ff10) # 1c000588 <shell6+0x1e8>
1c00067c:	02801e05 	addi.w	$r5,$r16,7(0x7)
1c000680:	5fff74bb 	bne	$r5,$r27,-140(0x3ff74) # 1c0005f4 <shell6+0x254>
1c000684:	540f5c00 	bl	3932(0xf5c) # 1c0015e0 <get_count_my>
1c000688:	00150099 	move	$r25,$r4
1c00068c:	540f2400 	bl	3876(0xf24) # 1c0015b0 <get_count>
1c000690:	0011773d 	sub.w	$r29,$r25,$r29
1c000694:	0011709c 	sub.w	$r28,$r4,$r28
1c000698:	53fe4bff 	b	-440(0xffffe48) # 1c0004e0 <shell6+0x140>
1c00069c:	03400000 	andi	$r0,$r0,0x0

1c0006a0 <partition>:
partition():
1c0006a0:	004088ae 	slli.w	$r14,$r5,0x2
1c0006a4:	00103888 	add.w	$r8,$r4,$r14
1c0006a8:	28800111 	ld.w	$r17,$r8,0
1c0006ac:	640310a6 	bge	$r5,$r6,784(0x310) # 1c0009bc <partition+0x31c>
1c0006b0:	004088cd 	slli.w	$r13,$r6,0x2
1c0006b4:	0010348d 	add.w	$r13,$r4,$r13
1c0006b8:	288001ac 	ld.w	$r12,$r13,0
1c0006bc:	0014140f 	nor	$r15,$r0,$r5
1c0006c0:	001019e7 	add.w	$r7,$r15,$r6
1c0006c4:	03401ce8 	andi	$r8,$r7,0x7
1c0006c8:	001501a7 	move	$r7,$r13
1c0006cc:	6401aa2c 	bge	$r17,$r12,424(0x1a8) # 1c000874 <partition+0x1d4>
1c0006d0:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c0006d4:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c0006d8:	640174a6 	bge	$r5,$r6,372(0x174) # 1c00084c <partition+0x1ac>
1c0006dc:	5800c500 	beq	$r8,$r0,196(0xc4) # 1c0007a0 <partition+0x100>
1c0006e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0006e4:	5800a50c 	beq	$r8,$r12,164(0xa4) # 1c000788 <partition+0xe8>
1c0006e8:	02800809 	addi.w	$r9,$r0,2(0x2)
1c0006ec:	58008909 	beq	$r8,$r9,136(0x88) # 1c000774 <partition+0xd4>
1c0006f0:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c0006f4:	58006d0a 	beq	$r8,$r10,108(0x6c) # 1c000760 <partition+0xc0>
1c0006f8:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c0006fc:	5800510b 	beq	$r8,$r11,80(0x50) # 1c00074c <partition+0xac>
1c000700:	02801410 	addi.w	$r16,$r0,5(0x5)
1c000704:	58003510 	beq	$r8,$r16,52(0x34) # 1c000738 <partition+0x98>
1c000708:	02801812 	addi.w	$r18,$r0,6(0x6)
1c00070c:	58001912 	beq	$r8,$r18,24(0x18) # 1c000724 <partition+0x84>
1c000710:	288001ac 	ld.w	$r12,$r13,0
1c000714:	001501a7 	move	$r7,$r13
1c000718:	64015e2c 	bge	$r17,$r12,348(0x15c) # 1c000874 <partition+0x1d4>
1c00071c:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c000720:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000724:	288001ac 	ld.w	$r12,$r13,0
1c000728:	001501a7 	move	$r7,$r13
1c00072c:	64014a2c 	bge	$r17,$r12,328(0x148) # 1c000874 <partition+0x1d4>
1c000730:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c000734:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000738:	288001ac 	ld.w	$r12,$r13,0
1c00073c:	001501a7 	move	$r7,$r13
1c000740:	6401362c 	bge	$r17,$r12,308(0x134) # 1c000874 <partition+0x1d4>
1c000744:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c000748:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c00074c:	288001ac 	ld.w	$r12,$r13,0
1c000750:	001501a7 	move	$r7,$r13
1c000754:	6401222c 	bge	$r17,$r12,288(0x120) # 1c000874 <partition+0x1d4>
1c000758:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c00075c:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000760:	288001ac 	ld.w	$r12,$r13,0
1c000764:	001501a7 	move	$r7,$r13
1c000768:	64010e2c 	bge	$r17,$r12,268(0x10c) # 1c000874 <partition+0x1d4>
1c00076c:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c000770:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000774:	288001ac 	ld.w	$r12,$r13,0
1c000778:	001501a7 	move	$r7,$r13
1c00077c:	6400fa2c 	bge	$r17,$r12,248(0xf8) # 1c000874 <partition+0x1d4>
1c000780:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c000784:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000788:	288001ac 	ld.w	$r12,$r13,0
1c00078c:	001501a7 	move	$r7,$r13
1c000790:	6400e62c 	bge	$r17,$r12,228(0xe4) # 1c000874 <partition+0x1d4>
1c000794:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c000798:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c00079c:	6400b0a6 	bge	$r5,$r6,176(0xb0) # 1c00084c <partition+0x1ac>
1c0007a0:	288001ac 	ld.w	$r12,$r13,0
1c0007a4:	001501a7 	move	$r7,$r13
1c0007a8:	6400ce2c 	bge	$r17,$r12,204(0xcc) # 1c000874 <partition+0x1d4>
1c0007ac:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c0007b0:	288001ac 	ld.w	$r12,$r13,0
1c0007b4:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c0007b8:	001501b3 	move	$r19,$r13
1c0007bc:	001500d4 	move	$r20,$r6
1c0007c0:	001501a7 	move	$r7,$r13
1c0007c4:	6400b22c 	bge	$r17,$r12,176(0xb0) # 1c000874 <partition+0x1d4>
1c0007c8:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c0007cc:	288001ac 	ld.w	$r12,$r13,0
1c0007d0:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c0007d4:	001501a7 	move	$r7,$r13
1c0007d8:	64009e2c 	bge	$r17,$r12,156(0x9c) # 1c000874 <partition+0x1d4>
1c0007dc:	28bfe26c 	ld.w	$r12,$r19,-8(0xff8)
1c0007e0:	02bfe26d 	addi.w	$r13,$r19,-8(0xff8)
1c0007e4:	02bffa86 	addi.w	$r6,$r20,-2(0xffe)
1c0007e8:	001501a7 	move	$r7,$r13
1c0007ec:	64008a2c 	bge	$r17,$r12,136(0x88) # 1c000874 <partition+0x1d4>
1c0007f0:	28bfd26c 	ld.w	$r12,$r19,-12(0xff4)
1c0007f4:	02bfd26d 	addi.w	$r13,$r19,-12(0xff4)
1c0007f8:	02bff686 	addi.w	$r6,$r20,-3(0xffd)
1c0007fc:	001501a7 	move	$r7,$r13
1c000800:	6400762c 	bge	$r17,$r12,116(0x74) # 1c000874 <partition+0x1d4>
1c000804:	28bfc26c 	ld.w	$r12,$r19,-16(0xff0)
1c000808:	02bfc26d 	addi.w	$r13,$r19,-16(0xff0)
1c00080c:	02bff286 	addi.w	$r6,$r20,-4(0xffc)
1c000810:	001501a7 	move	$r7,$r13
1c000814:	6400622c 	bge	$r17,$r12,96(0x60) # 1c000874 <partition+0x1d4>
1c000818:	28bfb26c 	ld.w	$r12,$r19,-20(0xfec)
1c00081c:	02bfb26d 	addi.w	$r13,$r19,-20(0xfec)
1c000820:	02bfee86 	addi.w	$r6,$r20,-5(0xffb)
1c000824:	001501a7 	move	$r7,$r13
1c000828:	64004e2c 	bge	$r17,$r12,76(0x4c) # 1c000874 <partition+0x1d4>
1c00082c:	28bfa26c 	ld.w	$r12,$r19,-24(0xfe8)
1c000830:	02bfa26d 	addi.w	$r13,$r19,-24(0xfe8)
1c000834:	02bfea86 	addi.w	$r6,$r20,-6(0xffa)
1c000838:	001501a7 	move	$r7,$r13
1c00083c:	64003a2c 	bge	$r17,$r12,56(0x38) # 1c000874 <partition+0x1d4>
1c000840:	02bfe686 	addi.w	$r6,$r20,-7(0xff9)
1c000844:	02bf926d 	addi.w	$r13,$r19,-28(0xfe4)
1c000848:	63ff58a6 	blt	$r5,$r6,-168(0x3ff58) # 1c0007a0 <partition+0x100>
1c00084c:	004088c7 	slli.w	$r7,$r6,0x2
1c000850:	00101c87 	add.w	$r7,$r4,$r7
1c000854:	288000ec 	ld.w	$r12,$r7,0
1c000858:	00103888 	add.w	$r8,$r4,$r14
1c00085c:	001500a6 	move	$r6,$r5
1c000860:	2980010c 	st.w	$r12,$r8,0
1c000864:	298000ec 	st.w	$r12,$r7,0
1c000868:	001500c4 	move	$r4,$r6
1c00086c:	29800111 	st.w	$r17,$r8,0
1c000870:	4c000020 	jirl	$r0,$r1,0
1c000874:	00103888 	add.w	$r8,$r4,$r14
1c000878:	2980010c 	st.w	$r12,$r8,0
1c00087c:	640138a6 	bge	$r5,$r6,312(0x138) # 1c0009b4 <partition+0x314>
1c000880:	0014140f 	nor	$r15,$r0,$r5
1c000884:	001019e9 	add.w	$r9,$r15,$r6
1c000888:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c00088c:	03401d2a 	andi	$r10,$r9,0x7
1c000890:	0010388e 	add.w	$r14,$r4,$r14
1c000894:	5800a540 	beq	$r10,$r0,164(0xa4) # 1c000938 <partition+0x298>
1c000898:	288001cc 	ld.w	$r12,$r14,0
1c00089c:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0008a0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0008a4:	6001062c 	blt	$r17,$r12,260(0x104) # 1c0009a8 <partition+0x308>
1c0008a8:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c0008ac:	58008d4b 	beq	$r10,$r11,140(0x8c) # 1c000938 <partition+0x298>
1c0008b0:	02800810 	addi.w	$r16,$r0,2(0x2)
1c0008b4:	58007550 	beq	$r10,$r16,116(0x74) # 1c000928 <partition+0x288>
1c0008b8:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c0008bc:	58005d52 	beq	$r10,$r18,92(0x5c) # 1c000918 <partition+0x278>
1c0008c0:	02801013 	addi.w	$r19,$r0,4(0x4)
1c0008c4:	58004553 	beq	$r10,$r19,68(0x44) # 1c000908 <partition+0x268>
1c0008c8:	02801414 	addi.w	$r20,$r0,5(0x5)
1c0008cc:	58002d54 	beq	$r10,$r20,44(0x2c) # 1c0008f8 <partition+0x258>
1c0008d0:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c0008d4:	5800154c 	beq	$r10,$r12,20(0x14) # 1c0008e8 <partition+0x248>
1c0008d8:	288001cc 	ld.w	$r12,$r14,0
1c0008dc:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0008e0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0008e4:	6000c62c 	blt	$r17,$r12,196(0xc4) # 1c0009a8 <partition+0x308>
1c0008e8:	288001cc 	ld.w	$r12,$r14,0
1c0008ec:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0008f0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0008f4:	6000b62c 	blt	$r17,$r12,180(0xb4) # 1c0009a8 <partition+0x308>
1c0008f8:	288001cc 	ld.w	$r12,$r14,0
1c0008fc:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c000900:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c000904:	6000a62c 	blt	$r17,$r12,164(0xa4) # 1c0009a8 <partition+0x308>
1c000908:	288001cc 	ld.w	$r12,$r14,0
1c00090c:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c000910:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c000914:	6000962c 	blt	$r17,$r12,148(0x94) # 1c0009a8 <partition+0x308>
1c000918:	288001cc 	ld.w	$r12,$r14,0
1c00091c:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c000920:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c000924:	6000862c 	blt	$r17,$r12,132(0x84) # 1c0009a8 <partition+0x308>
1c000928:	288001cc 	ld.w	$r12,$r14,0
1c00092c:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c000930:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c000934:	6000762c 	blt	$r17,$r12,116(0x74) # 1c0009a8 <partition+0x308>
1c000938:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c00093c:	288001cc 	ld.w	$r12,$r14,0
1c000940:	001501c8 	move	$r8,$r14
1c000944:	001500af 	move	$r15,$r5
1c000948:	5bff1ca6 	beq	$r5,$r6,-228(0x3ff1c) # 1c000864 <partition+0x1c4>
1c00094c:	60005e2c 	blt	$r17,$r12,92(0x5c) # 1c0009a8 <partition+0x308>
1c000950:	288011cc 	ld.w	$r12,$r14,4(0x4)
1c000954:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c000958:	6000522c 	blt	$r17,$r12,80(0x50) # 1c0009a8 <partition+0x308>
1c00095c:	288021cc 	ld.w	$r12,$r14,8(0x8)
1c000960:	028009e5 	addi.w	$r5,$r15,2(0x2)
1c000964:	6000462c 	blt	$r17,$r12,68(0x44) # 1c0009a8 <partition+0x308>
1c000968:	288031cc 	ld.w	$r12,$r14,12(0xc)
1c00096c:	02800de5 	addi.w	$r5,$r15,3(0x3)
1c000970:	60003a2c 	blt	$r17,$r12,56(0x38) # 1c0009a8 <partition+0x308>
1c000974:	288041cc 	ld.w	$r12,$r14,16(0x10)
1c000978:	028011e5 	addi.w	$r5,$r15,4(0x4)
1c00097c:	60002e2c 	blt	$r17,$r12,44(0x2c) # 1c0009a8 <partition+0x308>
1c000980:	288051cc 	ld.w	$r12,$r14,20(0x14)
1c000984:	028015e5 	addi.w	$r5,$r15,5(0x5)
1c000988:	6000222c 	blt	$r17,$r12,32(0x20) # 1c0009a8 <partition+0x308>
1c00098c:	288061cc 	ld.w	$r12,$r14,24(0x18)
1c000990:	028019e5 	addi.w	$r5,$r15,6(0x6)
1c000994:	6000162c 	blt	$r17,$r12,20(0x14) # 1c0009a8 <partition+0x308>
1c000998:	288071cc 	ld.w	$r12,$r14,28(0x1c)
1c00099c:	02801de5 	addi.w	$r5,$r15,7(0x7)
1c0009a0:	028081ce 	addi.w	$r14,$r14,32(0x20)
1c0009a4:	67ff962c 	bge	$r17,$r12,-108(0x3ff94) # 1c000938 <partition+0x298>
1c0009a8:	298001ac 	st.w	$r12,$r13,0
1c0009ac:	004088ae 	slli.w	$r14,$r5,0x2
1c0009b0:	53fd03ff 	b	-768(0xffffd00) # 1c0006b0 <partition+0x10>
1c0009b4:	001500a6 	move	$r6,$r5
1c0009b8:	53feafff 	b	-340(0xffffeac) # 1c000864 <partition+0x1c4>
1c0009bc:	001500a4 	move	$r4,$r5
1c0009c0:	29800111 	st.w	$r17,$r8,0
1c0009c4:	4c000020 	jirl	$r0,$r1,0
1c0009c8:	03400000 	andi	$r0,$r0,0x0
1c0009cc:	03400000 	andi	$r0,$r0,0x0

1c0009d0 <_quick_sort>:
_quick_sort():
1c0009d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0009d4:	29805078 	st.w	$r24,$r3,20(0x14)
1c0009d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0009dc:	004088d8 	slli.w	$r24,$r6,0x2
1c0009e0:	29806077 	st.w	$r23,$r3,24(0x18)
1c0009e4:	29804079 	st.w	$r25,$r3,16(0x10)
1c0009e8:	2980307a 	st.w	$r26,$r3,12(0xc)
1c0009ec:	00106098 	add.w	$r24,$r4,$r24
1c0009f0:	640198a6 	bge	$r5,$r6,408(0x198) # 1c000b88 <_quick_sort+0x1b8>
1c0009f4:	001500da 	move	$r26,$r6
1c0009f8:	00150099 	move	$r25,$r4
1c0009fc:	004088ad 	slli.w	$r13,$r5,0x2
1c000a00:	00103721 	add.w	$r1,$r25,$r13
1c000a04:	2880030c 	ld.w	$r12,$r24,0
1c000a08:	2880002e 	ld.w	$r14,$r1,0
1c000a0c:	00150357 	move	$r23,$r26
1c000a10:	001500a6 	move	$r6,$r5
1c000a14:	640191cc 	bge	$r14,$r12,400(0x190) # 1c000ba4 <_quick_sort+0x1d4>
1c000a18:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000a1c:	00408ae4 	slli.w	$r4,$r23,0x2
1c000a20:	00101334 	add.w	$r20,$r25,$r4
1c000a24:	2880028c 	ld.w	$r12,$r20,0
1c000a28:	640134d7 	bge	$r6,$r23,308(0x134) # 1c000b5c <_quick_sort+0x18c>
1c000a2c:	00111aef 	sub.w	$r15,$r23,$r6
1c000a30:	02bff087 	addi.w	$r7,$r4,-4(0xffc)
1c000a34:	03401de8 	andi	$r8,$r15,0x7
1c000a38:	00101f2d 	add.w	$r13,$r25,$r7
1c000a3c:	5800ad00 	beq	$r8,$r0,172(0xac) # 1c000ae8 <_quick_sort+0x118>
1c000a40:	02800410 	addi.w	$r16,$r0,1(0x1)
1c000a44:	58008d10 	beq	$r8,$r16,140(0x8c) # 1c000ad0 <_quick_sort+0x100>
1c000a48:	02800809 	addi.w	$r9,$r0,2(0x2)
1c000a4c:	58007509 	beq	$r8,$r9,116(0x74) # 1c000ac0 <_quick_sort+0xf0>
1c000a50:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c000a54:	58005d0a 	beq	$r8,$r10,92(0x5c) # 1c000ab0 <_quick_sort+0xe0>
1c000a58:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c000a5c:	5800450b 	beq	$r8,$r11,68(0x44) # 1c000aa0 <_quick_sort+0xd0>
1c000a60:	02801411 	addi.w	$r17,$r0,5(0x5)
1c000a64:	58002d11 	beq	$r8,$r17,44(0x2c) # 1c000a90 <_quick_sort+0xc0>
1c000a68:	02801812 	addi.w	$r18,$r0,6(0x6)
1c000a6c:	58001512 	beq	$r8,$r18,20(0x14) # 1c000a80 <_quick_sort+0xb0>
1c000a70:	640135cc 	bge	$r14,$r12,308(0x134) # 1c000ba4 <_quick_sort+0x1d4>
1c000a74:	288001ac 	ld.w	$r12,$r13,0
1c000a78:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000a7c:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000a80:	640125cc 	bge	$r14,$r12,292(0x124) # 1c000ba4 <_quick_sort+0x1d4>
1c000a84:	288001ac 	ld.w	$r12,$r13,0
1c000a88:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000a8c:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000a90:	640115cc 	bge	$r14,$r12,276(0x114) # 1c000ba4 <_quick_sort+0x1d4>
1c000a94:	288001ac 	ld.w	$r12,$r13,0
1c000a98:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000a9c:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000aa0:	640105cc 	bge	$r14,$r12,260(0x104) # 1c000ba4 <_quick_sort+0x1d4>
1c000aa4:	288001ac 	ld.w	$r12,$r13,0
1c000aa8:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000aac:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000ab0:	6400f5cc 	bge	$r14,$r12,244(0xf4) # 1c000ba4 <_quick_sort+0x1d4>
1c000ab4:	288001ac 	ld.w	$r12,$r13,0
1c000ab8:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000abc:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000ac0:	6400e5cc 	bge	$r14,$r12,228(0xe4) # 1c000ba4 <_quick_sort+0x1d4>
1c000ac4:	288001ac 	ld.w	$r12,$r13,0
1c000ac8:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000acc:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000ad0:	6400d5cc 	bge	$r14,$r12,212(0xd4) # 1c000ba4 <_quick_sort+0x1d4>
1c000ad4:	001501b4 	move	$r20,$r13
1c000ad8:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000adc:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000ae0:	288011ac 	ld.w	$r12,$r13,4(0x4)
1c000ae4:	58007ae6 	beq	$r23,$r6,120(0x78) # 1c000b5c <_quick_sort+0x18c>
1c000ae8:	02bf91b3 	addi.w	$r19,$r13,-28(0xfe4)
1c000aec:	6400b9cc 	bge	$r14,$r12,184(0xb8) # 1c000ba4 <_quick_sort+0x1d4>
1c000af0:	288001ac 	ld.w	$r12,$r13,0
1c000af4:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000af8:	00150274 	move	$r20,$r19
1c000afc:	001502e1 	move	$r1,$r23
1c000b00:	6400a5cc 	bge	$r14,$r12,164(0xa4) # 1c000ba4 <_quick_sort+0x1d4>
1c000b04:	28bff1ac 	ld.w	$r12,$r13,-4(0xffc)
1c000b08:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000b0c:	640099cc 	bge	$r14,$r12,152(0x98) # 1c000ba4 <_quick_sort+0x1d4>
1c000b10:	28bfe1ac 	ld.w	$r12,$r13,-8(0xff8)
1c000b14:	02bff837 	addi.w	$r23,$r1,-2(0xffe)
1c000b18:	64008dcc 	bge	$r14,$r12,140(0x8c) # 1c000ba4 <_quick_sort+0x1d4>
1c000b1c:	28bfd1ac 	ld.w	$r12,$r13,-12(0xff4)
1c000b20:	02bff437 	addi.w	$r23,$r1,-3(0xffd)
1c000b24:	640081cc 	bge	$r14,$r12,128(0x80) # 1c000ba4 <_quick_sort+0x1d4>
1c000b28:	28bfc1ac 	ld.w	$r12,$r13,-16(0xff0)
1c000b2c:	02bff037 	addi.w	$r23,$r1,-4(0xffc)
1c000b30:	640075cc 	bge	$r14,$r12,116(0x74) # 1c000ba4 <_quick_sort+0x1d4>
1c000b34:	28bfb1ac 	ld.w	$r12,$r13,-20(0xfec)
1c000b38:	02bfec37 	addi.w	$r23,$r1,-5(0xffb)
1c000b3c:	02bf81ad 	addi.w	$r13,$r13,-32(0xfe0)
1c000b40:	640065cc 	bge	$r14,$r12,100(0x64) # 1c000ba4 <_quick_sort+0x1d4>
1c000b44:	2880126c 	ld.w	$r12,$r19,4(0x4)
1c000b48:	02bfe837 	addi.w	$r23,$r1,-6(0xffa)
1c000b4c:	640059cc 	bge	$r14,$r12,88(0x58) # 1c000ba4 <_quick_sort+0x1d4>
1c000b50:	02bfe437 	addi.w	$r23,$r1,-7(0xff9)
1c000b54:	288011ac 	ld.w	$r12,$r13,4(0x4)
1c000b58:	5fff92e6 	bne	$r23,$r6,-112(0x3ff90) # 1c000ae8 <_quick_sort+0x118>
1c000b5c:	004088cf 	slli.w	$r15,$r6,0x2
1c000b60:	00103f27 	add.w	$r7,$r25,$r15
1c000b64:	001500d7 	move	$r23,$r6
1c000b68:	298000ec 	st.w	$r12,$r7,0
1c000b6c:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c000b70:	2980028c 	st.w	$r12,$r20,0
1c000b74:	00150324 	move	$r4,$r25
1c000b78:	298000ee 	st.w	$r14,$r7,0
1c000b7c:	57fe57ff 	bl	-428(0xffffe54) # 1c0009d0 <_quick_sort>
1c000b80:	028006e5 	addi.w	$r5,$r23,1(0x1)
1c000b84:	63fe78ba 	blt	$r5,$r26,-392(0x3fe78) # 1c0009fc <_quick_sort+0x2c>
1c000b88:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c000b8c:	28806077 	ld.w	$r23,$r3,24(0x18)
1c000b90:	28805078 	ld.w	$r24,$r3,20(0x14)
1c000b94:	28804079 	ld.w	$r25,$r3,16(0x10)
1c000b98:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c000b9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c000ba0:	4c000020 	jirl	$r0,$r1,0
1c000ba4:	004088c4 	slli.w	$r4,$r6,0x2
1c000ba8:	00101327 	add.w	$r7,$r25,$r4
1c000bac:	00408aef 	slli.w	$r15,$r23,0x2
1c000bb0:	298000ec 	st.w	$r12,$r7,0
1c000bb4:	00103f34 	add.w	$r20,$r25,$r15
1c000bb8:	640134d7 	bge	$r6,$r23,308(0x134) # 1c000cec <_quick_sort+0x31c>
1c000bbc:	0014180c 	nor	$r12,$r0,$r6
1c000bc0:	00105d90 	add.w	$r16,$r12,$r23
1c000bc4:	02801088 	addi.w	$r8,$r4,4(0x4)
1c000bc8:	03401e09 	andi	$r9,$r16,0x7
1c000bcc:	0010232d 	add.w	$r13,$r25,$r8
1c000bd0:	5800a520 	beq	$r9,$r0,164(0xa4) # 1c000c74 <_quick_sort+0x2a4>
1c000bd4:	288001ac 	ld.w	$r12,$r13,0
1c000bd8:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c000bdc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000be0:	600105cc 	blt	$r14,$r12,260(0x104) # 1c000ce4 <_quick_sort+0x314>
1c000be4:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c000be8:	58008d2a 	beq	$r9,$r10,140(0x8c) # 1c000c74 <_quick_sort+0x2a4>
1c000bec:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c000bf0:	5800752b 	beq	$r9,$r11,116(0x74) # 1c000c64 <_quick_sort+0x294>
1c000bf4:	02800c11 	addi.w	$r17,$r0,3(0x3)
1c000bf8:	58005d31 	beq	$r9,$r17,92(0x5c) # 1c000c54 <_quick_sort+0x284>
1c000bfc:	02801012 	addi.w	$r18,$r0,4(0x4)
1c000c00:	58004532 	beq	$r9,$r18,68(0x44) # 1c000c44 <_quick_sort+0x274>
1c000c04:	02801413 	addi.w	$r19,$r0,5(0x5)
1c000c08:	58002d33 	beq	$r9,$r19,44(0x2c) # 1c000c34 <_quick_sort+0x264>
1c000c0c:	02801801 	addi.w	$r1,$r0,6(0x6)
1c000c10:	58001521 	beq	$r9,$r1,20(0x14) # 1c000c24 <_quick_sort+0x254>
1c000c14:	288001ac 	ld.w	$r12,$r13,0
1c000c18:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c000c1c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000c20:	6000c5cc 	blt	$r14,$r12,196(0xc4) # 1c000ce4 <_quick_sort+0x314>
1c000c24:	288001ac 	ld.w	$r12,$r13,0
1c000c28:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c000c2c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000c30:	6000b5cc 	blt	$r14,$r12,180(0xb4) # 1c000ce4 <_quick_sort+0x314>
1c000c34:	288001ac 	ld.w	$r12,$r13,0
1c000c38:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c000c3c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000c40:	6000a5cc 	blt	$r14,$r12,164(0xa4) # 1c000ce4 <_quick_sort+0x314>
1c000c44:	288001ac 	ld.w	$r12,$r13,0
1c000c48:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c000c4c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000c50:	600095cc 	blt	$r14,$r12,148(0x94) # 1c000ce4 <_quick_sort+0x314>
1c000c54:	288001ac 	ld.w	$r12,$r13,0
1c000c58:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c000c5c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000c60:	600085cc 	blt	$r14,$r12,132(0x84) # 1c000ce4 <_quick_sort+0x314>
1c000c64:	288001ac 	ld.w	$r12,$r13,0
1c000c68:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c000c6c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000c70:	600075cc 	blt	$r14,$r12,116(0x74) # 1c000ce4 <_quick_sort+0x314>
1c000c74:	028004c4 	addi.w	$r4,$r6,1(0x1)
1c000c78:	288001ac 	ld.w	$r12,$r13,0
1c000c7c:	001501a7 	move	$r7,$r13
1c000c80:	5bfef097 	beq	$r4,$r23,-272(0x3fef0) # 1c000b70 <_quick_sort+0x1a0>
1c000c84:	00150086 	move	$r6,$r4
1c000c88:	60005dcc 	blt	$r14,$r12,92(0x5c) # 1c000ce4 <_quick_sort+0x314>
1c000c8c:	288011ac 	ld.w	$r12,$r13,4(0x4)
1c000c90:	02800486 	addi.w	$r6,$r4,1(0x1)
1c000c94:	600051cc 	blt	$r14,$r12,80(0x50) # 1c000ce4 <_quick_sort+0x314>
1c000c98:	288021ac 	ld.w	$r12,$r13,8(0x8)
1c000c9c:	02800886 	addi.w	$r6,$r4,2(0x2)
1c000ca0:	600045cc 	blt	$r14,$r12,68(0x44) # 1c000ce4 <_quick_sort+0x314>
1c000ca4:	288031ac 	ld.w	$r12,$r13,12(0xc)
1c000ca8:	02800c86 	addi.w	$r6,$r4,3(0x3)
1c000cac:	600039cc 	blt	$r14,$r12,56(0x38) # 1c000ce4 <_quick_sort+0x314>
1c000cb0:	288041ac 	ld.w	$r12,$r13,16(0x10)
1c000cb4:	02801086 	addi.w	$r6,$r4,4(0x4)
1c000cb8:	60002dcc 	blt	$r14,$r12,44(0x2c) # 1c000ce4 <_quick_sort+0x314>
1c000cbc:	288051ac 	ld.w	$r12,$r13,20(0x14)
1c000cc0:	02801486 	addi.w	$r6,$r4,5(0x5)
1c000cc4:	600021cc 	blt	$r14,$r12,32(0x20) # 1c000ce4 <_quick_sort+0x314>
1c000cc8:	288061ac 	ld.w	$r12,$r13,24(0x18)
1c000ccc:	02801886 	addi.w	$r6,$r4,6(0x6)
1c000cd0:	600015cc 	blt	$r14,$r12,20(0x14) # 1c000ce4 <_quick_sort+0x314>
1c000cd4:	288071ac 	ld.w	$r12,$r13,28(0x1c)
1c000cd8:	02801c86 	addi.w	$r6,$r4,7(0x7)
1c000cdc:	028081ad 	addi.w	$r13,$r13,32(0x20)
1c000ce0:	67ff95cc 	bge	$r14,$r12,-108(0x3ff94) # 1c000c74 <_quick_sort+0x2a4>
1c000ce4:	2980028c 	st.w	$r12,$r20,0
1c000ce8:	53fd2fff 	b	-724(0xffffd2c) # 1c000a14 <_quick_sort+0x44>
1c000cec:	001500d7 	move	$r23,$r6
1c000cf0:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c000cf4:	53fe7fff 	b	-388(0xffffe7c) # 1c000b70 <_quick_sort+0x1a0>
1c000cf8:	03400000 	andi	$r0,$r0,0x0
1c000cfc:	03400000 	andi	$r0,$r0,0x0

1c000d00 <quick_sort>:
quick_sort():
1c000d00:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c000d04:	29807061 	st.w	$r1,$r3,28(0x1c)
1c000d08:	2980307a 	st.w	$r26,$r3,12(0xc)
1c000d0c:	004088ae 	slli.w	$r14,$r5,0x2
1c000d10:	1c00103a 	pcaddu12i	$r26,129(0x81)
1c000d14:	2891335a 	ld.w	$r26,$r26,1100(0x44c)
1c000d18:	29806077 	st.w	$r23,$r3,24(0x18)
1c000d1c:	29805078 	st.w	$r24,$r3,20(0x14)
1c000d20:	29804079 	st.w	$r25,$r3,16(0x10)
1c000d24:	2980207b 	st.w	$r27,$r3,8(0x8)
1c000d28:	00103b41 	add.w	$r1,$r26,$r14
1c000d2c:	64010005 	bge	$r0,$r5,256(0x100) # 1c000e2c <quick_sort+0x12c>
1c000d30:	0011682d 	sub.w	$r13,$r1,$r26
1c000d34:	02bff1a6 	addi.w	$r6,$r13,-4(0xffc)
1c000d38:	004488c7 	srli.w	$r7,$r6,0x2
1c000d3c:	028004e8 	addi.w	$r8,$r7,1(0x1)
1c000d40:	03401d09 	andi	$r9,$r8,0x7
1c000d44:	0015034c 	move	$r12,$r26
1c000d48:	58009920 	beq	$r9,$r0,152(0x98) # 1c000de0 <quick_sort+0xe0>
1c000d4c:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c000d50:	58007d2f 	beq	$r9,$r15,124(0x7c) # 1c000dcc <quick_sort+0xcc>
1c000d54:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c000d58:	5800652a 	beq	$r9,$r10,100(0x64) # 1c000dbc <quick_sort+0xbc>
1c000d5c:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c000d60:	58004d2b 	beq	$r9,$r11,76(0x4c) # 1c000dac <quick_sort+0xac>
1c000d64:	02801010 	addi.w	$r16,$r0,4(0x4)
1c000d68:	58003530 	beq	$r9,$r16,52(0x34) # 1c000d9c <quick_sort+0x9c>
1c000d6c:	02801411 	addi.w	$r17,$r0,5(0x5)
1c000d70:	58001d31 	beq	$r9,$r17,28(0x1c) # 1c000d8c <quick_sort+0x8c>
1c000d74:	02801812 	addi.w	$r18,$r0,6(0x6)
1c000d78:	5c03d132 	bne	$r9,$r18,976(0x3d0) # 1c001148 <quick_sort+0x448>
1c000d7c:	28800094 	ld.w	$r20,$r4,0
1c000d80:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000d84:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000d88:	29bff194 	st.w	$r20,$r12,-4(0xffc)
1c000d8c:	28800097 	ld.w	$r23,$r4,0
1c000d90:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000d94:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000d98:	29bff197 	st.w	$r23,$r12,-4(0xffc)
1c000d9c:	28800098 	ld.w	$r24,$r4,0
1c000da0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000da4:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000da8:	29bff198 	st.w	$r24,$r12,-4(0xffc)
1c000dac:	28800099 	ld.w	$r25,$r4,0
1c000db0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000db4:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000db8:	29bff199 	st.w	$r25,$r12,-4(0xffc)
1c000dbc:	2880009b 	ld.w	$r27,$r4,0
1c000dc0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000dc4:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000dc8:	29bff19b 	st.w	$r27,$r12,-4(0xffc)
1c000dcc:	2880008e 	ld.w	$r14,$r4,0
1c000dd0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000dd4:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000dd8:	29bff18e 	st.w	$r14,$r12,-4(0xffc)
1c000ddc:	5800502c 	beq	$r1,$r12,80(0x50) # 1c000e2c <quick_sort+0x12c>
1c000de0:	2880008d 	ld.w	$r13,$r4,0
1c000de4:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c000de8:	02808084 	addi.w	$r4,$r4,32(0x20)
1c000dec:	29bf818d 	st.w	$r13,$r12,-32(0xfe0)
1c000df0:	28bf9086 	ld.w	$r6,$r4,-28(0xfe4)
1c000df4:	29bf9186 	st.w	$r6,$r12,-28(0xfe4)
1c000df8:	28bfa087 	ld.w	$r7,$r4,-24(0xfe8)
1c000dfc:	29bfa187 	st.w	$r7,$r12,-24(0xfe8)
1c000e00:	28bfb088 	ld.w	$r8,$r4,-20(0xfec)
1c000e04:	29bfb188 	st.w	$r8,$r12,-20(0xfec)
1c000e08:	28bfc089 	ld.w	$r9,$r4,-16(0xff0)
1c000e0c:	29bfc189 	st.w	$r9,$r12,-16(0xff0)
1c000e10:	28bfd08f 	ld.w	$r15,$r4,-12(0xff4)
1c000e14:	29bfd18f 	st.w	$r15,$r12,-12(0xff4)
1c000e18:	28bfe08a 	ld.w	$r10,$r4,-8(0xff8)
1c000e1c:	29bfe18a 	st.w	$r10,$r12,-8(0xff8)
1c000e20:	28bff08b 	ld.w	$r11,$r4,-4(0xffc)
1c000e24:	29bff18b 	st.w	$r11,$r12,-4(0xffc)
1c000e28:	5fffb82c 	bne	$r1,$r12,-72(0x3ffb8) # 1c000de0 <quick_sort+0xe0>
1c000e2c:	02bffcbb 	addi.w	$r27,$r5,-1(0xfff)
1c000e30:	00408b64 	slli.w	$r4,$r27,0x2
1c000e34:	00150005 	move	$r5,$r0
1c000e38:	1c001039 	pcaddu12i	$r25,129(0x81)
1c000e3c:	288c9339 	ld.w	$r25,$r25,804(0x324)
1c000e40:	00101358 	add.w	$r24,$r26,$r4
1c000e44:	6401901b 	bge	$r0,$r27,400(0x190) # 1c000fd4 <quick_sort+0x2d4>
1c000e48:	004088a1 	slli.w	$r1,$r5,0x2
1c000e4c:	00100750 	add.w	$r16,$r26,$r1
1c000e50:	2880030c 	ld.w	$r12,$r24,0
1c000e54:	2880020e 	ld.w	$r14,$r16,0
1c000e58:	00150377 	move	$r23,$r27
1c000e5c:	001500a6 	move	$r6,$r5
1c000e60:	6401a1cc 	bge	$r14,$r12,416(0x1a0) # 1c001000 <quick_sort+0x300>
1c000e64:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000e68:	00408af1 	slli.w	$r17,$r23,0x2
1c000e6c:	00104741 	add.w	$r1,$r26,$r17
1c000e70:	2880002c 	ld.w	$r12,$r1,0
1c000e74:	640134d7 	bge	$r6,$r23,308(0x134) # 1c000fa8 <quick_sort+0x2a8>
1c000e78:	00111af2 	sub.w	$r18,$r23,$r6
1c000e7c:	02bff233 	addi.w	$r19,$r17,-4(0xffc)
1c000e80:	03401e54 	andi	$r20,$r18,0x7
1c000e84:	00104f4d 	add.w	$r13,$r26,$r19
1c000e88:	5800ae80 	beq	$r20,$r0,172(0xac) # 1c000f34 <quick_sort+0x234>
1c000e8c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c000e90:	58008e87 	beq	$r20,$r7,140(0x8c) # 1c000f1c <quick_sort+0x21c>
1c000e94:	02800808 	addi.w	$r8,$r0,2(0x2)
1c000e98:	58007688 	beq	$r20,$r8,116(0x74) # 1c000f0c <quick_sort+0x20c>
1c000e9c:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c000ea0:	58005e89 	beq	$r20,$r9,92(0x5c) # 1c000efc <quick_sort+0x1fc>
1c000ea4:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c000ea8:	5800468f 	beq	$r20,$r15,68(0x44) # 1c000eec <quick_sort+0x1ec>
1c000eac:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c000eb0:	58002e8a 	beq	$r20,$r10,44(0x2c) # 1c000edc <quick_sort+0x1dc>
1c000eb4:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c000eb8:	5800168b 	beq	$r20,$r11,20(0x14) # 1c000ecc <quick_sort+0x1cc>
1c000ebc:	640145cc 	bge	$r14,$r12,324(0x144) # 1c001000 <quick_sort+0x300>
1c000ec0:	288001ac 	ld.w	$r12,$r13,0
1c000ec4:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000ec8:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000ecc:	640135cc 	bge	$r14,$r12,308(0x134) # 1c001000 <quick_sort+0x300>
1c000ed0:	288001ac 	ld.w	$r12,$r13,0
1c000ed4:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000ed8:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000edc:	640125cc 	bge	$r14,$r12,292(0x124) # 1c001000 <quick_sort+0x300>
1c000ee0:	288001ac 	ld.w	$r12,$r13,0
1c000ee4:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000ee8:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000eec:	640115cc 	bge	$r14,$r12,276(0x114) # 1c001000 <quick_sort+0x300>
1c000ef0:	288001ac 	ld.w	$r12,$r13,0
1c000ef4:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000ef8:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000efc:	640105cc 	bge	$r14,$r12,260(0x104) # 1c001000 <quick_sort+0x300>
1c000f00:	288001ac 	ld.w	$r12,$r13,0
1c000f04:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000f08:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000f0c:	6400f5cc 	bge	$r14,$r12,244(0xf4) # 1c001000 <quick_sort+0x300>
1c000f10:	288001ac 	ld.w	$r12,$r13,0
1c000f14:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000f18:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000f1c:	6400e5cc 	bge	$r14,$r12,228(0xe4) # 1c001000 <quick_sort+0x300>
1c000f20:	001501a1 	move	$r1,$r13
1c000f24:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000f28:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c000f2c:	288011ac 	ld.w	$r12,$r13,4(0x4)
1c000f30:	58007ae6 	beq	$r23,$r6,120(0x78) # 1c000fa8 <quick_sort+0x2a8>
1c000f34:	02bf91a4 	addi.w	$r4,$r13,-28(0xfe4)
1c000f38:	6400c9cc 	bge	$r14,$r12,200(0xc8) # 1c001000 <quick_sort+0x300>
1c000f3c:	288001ac 	ld.w	$r12,$r13,0
1c000f40:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000f44:	00150081 	move	$r1,$r4
1c000f48:	001502f0 	move	$r16,$r23
1c000f4c:	6400b5cc 	bge	$r14,$r12,180(0xb4) # 1c001000 <quick_sort+0x300>
1c000f50:	28bff1ac 	ld.w	$r12,$r13,-4(0xffc)
1c000f54:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000f58:	6400a9cc 	bge	$r14,$r12,168(0xa8) # 1c001000 <quick_sort+0x300>
1c000f5c:	28bfe1ac 	ld.w	$r12,$r13,-8(0xff8)
1c000f60:	02bffa17 	addi.w	$r23,$r16,-2(0xffe)
1c000f64:	64009dcc 	bge	$r14,$r12,156(0x9c) # 1c001000 <quick_sort+0x300>
1c000f68:	28bfd1ac 	ld.w	$r12,$r13,-12(0xff4)
1c000f6c:	02bff617 	addi.w	$r23,$r16,-3(0xffd)
1c000f70:	640091cc 	bge	$r14,$r12,144(0x90) # 1c001000 <quick_sort+0x300>
1c000f74:	28bfc1ac 	ld.w	$r12,$r13,-16(0xff0)
1c000f78:	02bff217 	addi.w	$r23,$r16,-4(0xffc)
1c000f7c:	640085cc 	bge	$r14,$r12,132(0x84) # 1c001000 <quick_sort+0x300>
1c000f80:	28bfb1ac 	ld.w	$r12,$r13,-20(0xfec)
1c000f84:	02bfee17 	addi.w	$r23,$r16,-5(0xffb)
1c000f88:	02bf81ad 	addi.w	$r13,$r13,-32(0xfe0)
1c000f8c:	640075cc 	bge	$r14,$r12,116(0x74) # 1c001000 <quick_sort+0x300>
1c000f90:	2880108c 	ld.w	$r12,$r4,4(0x4)
1c000f94:	02bfea17 	addi.w	$r23,$r16,-6(0xffa)
1c000f98:	640069cc 	bge	$r14,$r12,104(0x68) # 1c001000 <quick_sort+0x300>
1c000f9c:	02bfe617 	addi.w	$r23,$r16,-7(0xff9)
1c000fa0:	288011ac 	ld.w	$r12,$r13,4(0x4)
1c000fa4:	5fff92e6 	bne	$r23,$r6,-112(0x3ff90) # 1c000f34 <quick_sort+0x234>
1c000fa8:	004088d3 	slli.w	$r19,$r6,0x2
1c000fac:	00104f51 	add.w	$r17,$r26,$r19
1c000fb0:	001500d7 	move	$r23,$r6
1c000fb4:	2980022c 	st.w	$r12,$r17,0
1c000fb8:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c000fbc:	2980002c 	st.w	$r12,$r1,0
1c000fc0:	00150324 	move	$r4,$r25
1c000fc4:	2980022e 	st.w	$r14,$r17,0
1c000fc8:	57fa0bff 	bl	-1528(0xffffa08) # 1c0009d0 <_quick_sort>
1c000fcc:	028006e5 	addi.w	$r5,$r23,1(0x1)
1c000fd0:	63fe78bb 	blt	$r5,$r27,-392(0x3fe78) # 1c000e48 <quick_sort+0x148>
1c000fd4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c000fd8:	28806077 	ld.w	$r23,$r3,24(0x18)
1c000fdc:	28805078 	ld.w	$r24,$r3,20(0x14)
1c000fe0:	28804079 	ld.w	$r25,$r3,16(0x10)
1c000fe4:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c000fe8:	2880207b 	ld.w	$r27,$r3,8(0x8)
1c000fec:	1c001024 	pcaddu12i	$r4,129(0x81)
1c000ff0:	2885c084 	ld.w	$r4,$r4,368(0x170)
1c000ff4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c000ff8:	4c000020 	jirl	$r0,$r1,0
1c000ffc:	03400000 	andi	$r0,$r0,0x0
1c001000:	004088d2 	slli.w	$r18,$r6,0x2
1c001004:	00104b51 	add.w	$r17,$r26,$r18
1c001008:	00408af3 	slli.w	$r19,$r23,0x2
1c00100c:	2980022c 	st.w	$r12,$r17,0
1c001010:	00104f41 	add.w	$r1,$r26,$r19
1c001014:	640148d7 	bge	$r6,$r23,328(0x148) # 1c00115c <quick_sort+0x45c>
1c001018:	0014180c 	nor	$r12,$r0,$r6
1c00101c:	00105d87 	add.w	$r7,$r12,$r23
1c001020:	02801254 	addi.w	$r20,$r18,4(0x4)
1c001024:	03401ce8 	andi	$r8,$r7,0x7
1c001028:	0010534d 	add.w	$r13,$r26,$r20
1c00102c:	5800a500 	beq	$r8,$r0,164(0xa4) # 1c0010d0 <quick_sort+0x3d0>
1c001030:	288001ac 	ld.w	$r12,$r13,0
1c001034:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c001038:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00103c:	600105cc 	blt	$r14,$r12,260(0x104) # 1c001140 <quick_sort+0x440>
1c001040:	02800409 	addi.w	$r9,$r0,1(0x1)
1c001044:	58008d09 	beq	$r8,$r9,140(0x8c) # 1c0010d0 <quick_sort+0x3d0>
1c001048:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c00104c:	5800750f 	beq	$r8,$r15,116(0x74) # 1c0010c0 <quick_sort+0x3c0>
1c001050:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c001054:	58005d0a 	beq	$r8,$r10,92(0x5c) # 1c0010b0 <quick_sort+0x3b0>
1c001058:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c00105c:	5800450b 	beq	$r8,$r11,68(0x44) # 1c0010a0 <quick_sort+0x3a0>
1c001060:	02801404 	addi.w	$r4,$r0,5(0x5)
1c001064:	58002d04 	beq	$r8,$r4,44(0x2c) # 1c001090 <quick_sort+0x390>
1c001068:	02801810 	addi.w	$r16,$r0,6(0x6)
1c00106c:	58001510 	beq	$r8,$r16,20(0x14) # 1c001080 <quick_sort+0x380>
1c001070:	288001ac 	ld.w	$r12,$r13,0
1c001074:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c001078:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00107c:	6000c5cc 	blt	$r14,$r12,196(0xc4) # 1c001140 <quick_sort+0x440>
1c001080:	288001ac 	ld.w	$r12,$r13,0
1c001084:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c001088:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00108c:	6000b5cc 	blt	$r14,$r12,180(0xb4) # 1c001140 <quick_sort+0x440>
1c001090:	288001ac 	ld.w	$r12,$r13,0
1c001094:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c001098:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00109c:	6000a5cc 	blt	$r14,$r12,164(0xa4) # 1c001140 <quick_sort+0x440>
1c0010a0:	288001ac 	ld.w	$r12,$r13,0
1c0010a4:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c0010a8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0010ac:	600095cc 	blt	$r14,$r12,148(0x94) # 1c001140 <quick_sort+0x440>
1c0010b0:	288001ac 	ld.w	$r12,$r13,0
1c0010b4:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c0010b8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0010bc:	600085cc 	blt	$r14,$r12,132(0x84) # 1c001140 <quick_sort+0x440>
1c0010c0:	288001ac 	ld.w	$r12,$r13,0
1c0010c4:	028004c6 	addi.w	$r6,$r6,1(0x1)
1c0010c8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0010cc:	600075cc 	blt	$r14,$r12,116(0x74) # 1c001140 <quick_sort+0x440>
1c0010d0:	028004d2 	addi.w	$r18,$r6,1(0x1)
1c0010d4:	288001ac 	ld.w	$r12,$r13,0
1c0010d8:	001501b1 	move	$r17,$r13
1c0010dc:	5bfee257 	beq	$r18,$r23,-288(0x3fee0) # 1c000fbc <quick_sort+0x2bc>
1c0010e0:	00150246 	move	$r6,$r18
1c0010e4:	60005dcc 	blt	$r14,$r12,92(0x5c) # 1c001140 <quick_sort+0x440>
1c0010e8:	288011ac 	ld.w	$r12,$r13,4(0x4)
1c0010ec:	02800646 	addi.w	$r6,$r18,1(0x1)
1c0010f0:	600051cc 	blt	$r14,$r12,80(0x50) # 1c001140 <quick_sort+0x440>
1c0010f4:	288021ac 	ld.w	$r12,$r13,8(0x8)
1c0010f8:	02800a46 	addi.w	$r6,$r18,2(0x2)
1c0010fc:	600045cc 	blt	$r14,$r12,68(0x44) # 1c001140 <quick_sort+0x440>
1c001100:	288031ac 	ld.w	$r12,$r13,12(0xc)
1c001104:	02800e46 	addi.w	$r6,$r18,3(0x3)
1c001108:	600039cc 	blt	$r14,$r12,56(0x38) # 1c001140 <quick_sort+0x440>
1c00110c:	288041ac 	ld.w	$r12,$r13,16(0x10)
1c001110:	02801246 	addi.w	$r6,$r18,4(0x4)
1c001114:	60002dcc 	blt	$r14,$r12,44(0x2c) # 1c001140 <quick_sort+0x440>
1c001118:	288051ac 	ld.w	$r12,$r13,20(0x14)
1c00111c:	02801646 	addi.w	$r6,$r18,5(0x5)
1c001120:	600021cc 	blt	$r14,$r12,32(0x20) # 1c001140 <quick_sort+0x440>
1c001124:	288061ac 	ld.w	$r12,$r13,24(0x18)
1c001128:	02801a46 	addi.w	$r6,$r18,6(0x6)
1c00112c:	600015cc 	blt	$r14,$r12,20(0x14) # 1c001140 <quick_sort+0x440>
1c001130:	288071ac 	ld.w	$r12,$r13,28(0x1c)
1c001134:	02801e46 	addi.w	$r6,$r18,7(0x7)
1c001138:	028081ad 	addi.w	$r13,$r13,32(0x20)
1c00113c:	67ff95cc 	bge	$r14,$r12,-108(0x3ff94) # 1c0010d0 <quick_sort+0x3d0>
1c001140:	2980002c 	st.w	$r12,$r1,0
1c001144:	53fd1fff 	b	-740(0xffffd1c) # 1c000e60 <quick_sort+0x160>
1c001148:	28800093 	ld.w	$r19,$r4,0
1c00114c:	0280134c 	addi.w	$r12,$r26,4(0x4)
1c001150:	02801084 	addi.w	$r4,$r4,4(0x4)
1c001154:	29800353 	st.w	$r19,$r26,0
1c001158:	53fc27ff 	b	-988(0xffffc24) # 1c000d7c <quick_sort+0x7c>
1c00115c:	001500d7 	move	$r23,$r6
1c001160:	02bffcc6 	addi.w	$r6,$r6,-1(0xfff)
1c001164:	53fe5bff 	b	-424(0xffffe58) # 1c000fbc <quick_sort+0x2bc>
1c001168:	03400000 	andi	$r0,$r0,0x0
1c00116c:	03400000 	andi	$r0,$r0,0x0

1c001170 <printf>:
printf():
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
int printf(const char *fmt,...)
{
1c001170:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001174:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c001178:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00117c:	2980e077 	st.w	$r23,$r3,56(0x38)
1c001180:	2980d078 	st.w	$r24,$r3,52(0x34)
1c001184:	2980c079 	st.w	$r25,$r3,48(0x30)
1c001188:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c00118c:	2980907c 	st.w	$r28,$r3,36(0x24)
1c001190:	29811065 	st.w	$r5,$r3,68(0x44)
1c001194:	29812066 	st.w	$r6,$r3,72(0x48)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c001198:	28000097 	ld.b	$r23,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c00119c:	0281107a 	addi.w	$r26,$r3,68(0x44)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
{
1c0011a0:	29813067 	st.w	$r7,$r3,76(0x4c)
1c0011a4:	29814068 	st.w	$r8,$r3,80(0x50)
1c0011a8:	29815069 	st.w	$r9,$r3,84(0x54)
1c0011ac:	2981606a 	st.w	$r10,$r3,88(0x58)
1c0011b0:	2981706b 	st.w	$r11,$r3,92(0x5c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c0011b4:	2980707a 	st.w	$r26,$r3,28(0x1c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
for(i=0;fmt[i];i++)
1c0011b8:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c001240 <printf+0xd0>
1c0011bc:	00150099 	move	$r25,$r4
1c0011c0:	00150018 	move	$r24,$r0
1c0011c4:	1c00103c 	pcaddu12i	$r28,129(0x81)
1c0011c8:	02b9139c 	addi.w	$r28,$r28,-444(0xe44)
1c0011cc:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c0011d0:	50001c00 	b	28(0x1c) # 1c0011ec <printf+0x7c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c0011d4:	001502e4 	move	$r4,$r23
1c0011d8:	5401d800 	bl	472(0x1d8) # 1c0013b0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c0011dc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0011e0:	0010632c 	add.w	$r12,$r25,$r24
1c0011e4:	28000197 	ld.b	$r23,$r12,0
1c0011e8:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c001240 <printf+0xd0>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:13
	if(c=='%')
1c0011ec:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0011f0:	58001aec 	beq	$r23,$r12,24(0x18) # 1c001208 <printf+0x98>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c0011f4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0011f8:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c0011d4 <printf+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79 (discriminator 1)
1c0011fc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001200:	5401b000 	bl	432(0x1b0) # 1c0013b0 <putchar>
1c001204:	53ffd3ff 	b	-48(0xfffffd0) # 1c0011d4 <printf+0x64>
1c001208:	0010632c 	add.w	$r12,$r25,$r24
1c00120c:	2800058d 	ld.b	$r13,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:15
		w=1;
1c001210:	02800405 	addi.w	$r5,$r0,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c001214:	02814c10 	addi.w	$r16,$r0,83(0x53)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c001218:	0280280f 	addi.w	$r15,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c00121c:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c001220:	2980306c 	st.w	$r12,$r3,12(0xc)
1c001224:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c001228:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c0013a0 <printf+0x230>
1c00122c:	0040898c 	slli.w	$r12,$r12,0x2
1c001230:	0010338c 	add.w	$r12,$r28,$r12
1c001234:	2880018c 	ld.w	$r12,$r12,0
1c001238:	4c000180 	jirl	$r0,$r12,0
1c00123c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:84
	}
}
	return 0;
}
1c001240:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001244:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c001248:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c00124c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001250:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c001254:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c001258:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c00125c:	00150004 	move	$r4,$r0
1c001260:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001264:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:65
				i++;
1c001268:	0010632c 	add.w	$r12,$r25,$r24
1c00126c:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c001270:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c001274:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c001278:	2980306c 	st.w	$r12,$r3,12(0xc)
1c00127c:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c001280:	00150005 	move	$r5,$r0
1c001284:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c00121c <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c001288:	001c3ca5 	mul.w	$r5,$r5,$r15
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c00128c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c001290:	0010632c 	add.w	$r12,$r25,$r24
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c001294:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c001298:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c00129c:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c0012a0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c0012a4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c0012a8:	001015c5 	add.w	$r5,$r14,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c0012ac:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c001288 <printf+0x118>
1c0012b0:	53ff6fff 	b	-148(0xfffff6c) # 1c00121c <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c0012b4:	28800344 	ld.w	$r4,$r26,0
1c0012b8:	00150007 	move	$r7,$r0
1c0012bc:	02800806 	addi.w	$r6,$r0,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:51
				arg++;
1c0012c0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:52
				i++;
1c0012c4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c0012c8:	5401f800 	bl	504(0x1f8) # 1c0014c0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:53
				break;
1c0012cc:	53ff13ff 	b	-240(0xfffff10) # 1c0011dc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c0012d0:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:27
				i++;
1c0012d4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:26
				arg++;
1c0012d8:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c0012dc:	5400d400 	bl	212(0xd4) # 1c0013b0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:28
				break;
1c0012e0:	53feffff 	b	-260(0xffffefc) # 1c0011dc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c0012e4:	28800344 	ld.w	$r4,$r26,0
1c0012e8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0012ec:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:36
				arg++;
1c0012f0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:37
				i++;
1c0012f4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c0012f8:	5401c800 	bl	456(0x1c8) # 1c0014c0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:38
				break;
1c0012fc:	53fee3ff 	b	-288(0xffffee0) # 1c0011dc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c001300:	28800344 	ld.w	$r4,$r26,0
1c001304:	00150007 	move	$r7,$r0
1c001308:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:41
                arg++;
1c00130c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:42
                i=i+2;
1c001310:	02800b18 	addi.w	$r24,$r24,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c001314:	5401ac00 	bl	428(0x1ac) # 1c0014c0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:43
                break;
1c001318:	53fec7ff 	b	-316(0xffffec4) # 1c0011dc <printf+0x6c>
1c00131c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c001320:	28800344 	ld.w	$r4,$r26,0
1c001324:	00150007 	move	$r7,$r0
1c001328:	02802006 	addi.w	$r6,$r0,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:46
				arg++;
1c00132c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:47
				i++;
1c001330:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c001334:	54018c00 	bl	396(0x18c) # 1c0014c0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:48
				break;
1c001338:	53fea7ff 	b	-348(0xffffea4) # 1c0011dc <printf+0x6c>
1c00133c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c001340:	28800344 	ld.w	$r4,$r26,0
1c001344:	00150007 	move	$r7,$r0
1c001348:	02804006 	addi.w	$r6,$r0,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:57
				arg++;
1c00134c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:58
				i++;
1c001350:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c001354:	54016c00 	bl	364(0x16c) # 1c0014c0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:59
				break;
1c001358:	53fe87ff 	b	-380(0xffffe84) # 1c0011dc <printf+0x6c>
1c00135c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c001360:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:22
				i++;
1c001364:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:21
				arg++;
1c001368:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c00136c:	5400a400 	bl	164(0xa4) # 1c001410 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:23
				break;
1c001370:	53fe6fff 	b	-404(0xffffe6c) # 1c0011dc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c001374:	28800344 	ld.w	$r4,$r26,0
1c001378:	00150007 	move	$r7,$r0
1c00137c:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:31
				arg++;
1c001380:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:32
				i++;
1c001384:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c001388:	54013800 	bl	312(0x138) # 1c0014c0 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:33
				break;
1c00138c:	53fe53ff 	b	-432(0xffffe50) # 1c0011dc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c001390:	02809404 	addi.w	$r4,$r0,37(0x25)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:62
				i++;
1c001394:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c001398:	54001800 	bl	24(0x18) # 1c0013b0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:63
				break;
1c00139c:	53fe43ff 	b	-448(0xffffe40) # 1c0011dc <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:73
				putchar('%');
1c0013a0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0013a4:	54000c00 	bl	12(0xc) # 1c0013b0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:74
				break;
1c0013a8:	53fe37ff 	b	-460(0xffffe34) # 1c0011dc <printf+0x6c>
1c0013ac:	03400000 	andi	$r0,$r0,0x0

1c0013b0 <putchar>:
putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:2
int putchar(int c)
{
1c0013b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0013b4:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c0013b8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c0013bc:	03bc4339 	ori	$r25,$r25,0xf10
1c0013c0:	29000324 	st.b	$r4,$r25,0
1c0013c4:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:5
}
1c0013c8:	00150004 	move	$r4,$r0
1c0013cc:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0013d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013d4:	4c000020 	jirl	$r0,$r1,0
1c0013d8:	03400000 	andi	$r0,$r0,0x0
1c0013dc:	03400000 	andi	$r0,$r0,0x0

1c0013e0 <tgt_putchar>:
tgt_putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:8
{   //UART_ADDR
1c0013e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0013e4:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
    asm(
1c0013e8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c0013ec:	03bc4339 	ori	$r25,$r25,0xf10
1c0013f0:	29000324 	st.b	$r4,$r25,0
1c0013f4:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c0013f8:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0013fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001400:	4c000020 	jirl	$r0,$r1,0
1c001404:	03400000 	andi	$r0,$r0,0x0
1c001408:	03400000 	andi	$r0,$r0,0x0
1c00140c:	03400000 	andi	$r0,$r0,0x0

1c001410 <putstring>:
putstring():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:2
int putstring(char *s)
{
1c001410:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001414:	29803061 	st.w	$r1,$r3,12(0xc)
1c001418:	29802077 	st.w	$r23,$r3,8(0x8)
1c00141c:	29801078 	st.w	$r24,$r3,4(0x4)
1c001420:	29800079 	st.w	$r25,$r3,0
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
char c;
while((c=*s))
1c001424:	28000097 	ld.b	$r23,$r4,0
1c001428:	580042e0 	beq	$r23,$r0,64(0x40) # 1c001468 <putstring+0x58>
1c00142c:	00150098 	move	$r24,$r4
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c001430:	02802819 	addi.w	$r25,$r0,10(0xa)
1c001434:	50001400 	b	20(0x14) # 1c001448 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7
 putchar(c);
1c001438:	001502e4 	move	$r4,$r23
1c00143c:	57ff77ff 	bl	-140(0xfffff74) # 1c0013b0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
while((c=*s))
1c001440:	28000317 	ld.b	$r23,$r24,0
1c001444:	580026e0 	beq	$r23,$r0,36(0x24) # 1c001468 <putstring+0x58>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:8
 s++;
1c001448:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c00144c:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c001438 <putstring+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6 (discriminator 1)
1c001450:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001454:	57ff5fff 	bl	-164(0xfffff5c) # 1c0013b0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c001458:	001502e4 	move	$r4,$r23
1c00145c:	57ff57ff 	bl	-172(0xfffff54) # 1c0013b0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c001460:	28000317 	ld.b	$r23,$r24,0
1c001464:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c001448 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:11
}
return 0;
}
1c001468:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00146c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001470:	28801078 	ld.w	$r24,$r3,4(0x4)
1c001474:	28800079 	ld.w	$r25,$r3,0
1c001478:	00150004 	move	$r4,$r0
1c00147c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001480:	4c000020 	jirl	$r0,$r1,0
1c001484:	03400000 	andi	$r0,$r0,0x0
1c001488:	03400000 	andi	$r0,$r0,0x0
1c00148c:	03400000 	andi	$r0,$r0,0x0

1c001490 <puts>:
puts():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:15


int puts(char *s)
{
1c001490:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001494:	29803061 	st.w	$r1,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:16
putstring(s);
1c001498:	57ff7bff 	bl	-136(0xfffff78) # 1c001410 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:17
putchar('\r');
1c00149c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0014a0:	57ff13ff 	bl	-240(0xfffff10) # 1c0013b0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:18
putchar('\n');
1c0014a4:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0014a8:	57ff0bff 	bl	-248(0xfffff08) # 1c0013b0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:20
return 0;
}
1c0014ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0014b0:	00150004 	move	$r4,$r0
1c0014b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0014b8:	4c000020 	jirl	$r0,$r1,0
1c0014bc:	03400000 	andi	$r0,$r0,0x0

1c0014c0 <printbase>:
printbase():
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c0014c0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c0014c4:	29816077 	st.w	$r23,$r3,88(0x58)
1c0014c8:	29817061 	st.w	$r1,$r3,92(0x5c)
1c0014cc:	29815078 	st.w	$r24,$r3,84(0x54)
1c0014d0:	29814079 	st.w	$r25,$r3,80(0x50)
1c0014d4:	00150097 	move	$r23,$r4
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c0014d8:	580008e0 	beq	$r7,$r0,8(0x8) # 1c0014e0 <printbase+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7 (discriminator 1)
1c0014dc:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c001580 <printbase+0xc0>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c0014e0:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c0015a0 <printbase+0xe0>
1c0014e4:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c0014e8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0014ec:	001131ce 	sub.w	$r14,$r14,$r12
1c0014f0:	50000800 	b	8(0x8) # 1c0014f8 <printbase+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c0014f4:	001501b7 	move	$r23,$r13
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c0014f8:	00219aed 	mod.wu	$r13,$r23,$r6
1c0014fc:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001504 <printbase+0x44>
1c001500:	002a0007 	break	0x7
1c001504:	2900018d 	st.b	$r13,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c001508:	001031d8 	add.w	$r24,$r14,$r12
1c00150c:	00211aed 	div.wu	$r13,$r23,$r6
1c001510:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001518 <printbase+0x58>
1c001514:	002a0007 	break	0x7
1c001518:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c00151c:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c0014f4 <printbase+0x34>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c001520:	600058b8 	blt	$r5,$r24,88(0x58) # 1c001578 <printbase+0xb8>
1c001524:	001500b7 	move	$r23,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001528:	02802419 	addi.w	$r25,$r0,9(0x9)
1c00152c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c001530:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001534:	00105d8c 	add.w	$r12,$r12,$r23
1c001538:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00153c:	60001717 	blt	$r24,$r23,20(0x14) # 1c001550 <printbase+0x90>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24 (discriminator 1)
1c001540:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001544:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c001548:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c001550 <printbase+0x90>
1c00154c:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c001550:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 4)
1c001554:	57fe5fff 	bl	-420(0xffffe5c) # 1c0013b0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c001558:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c001530 <printbase+0x70>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:28
	}
	return 0;
}
1c00155c:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c001560:	28816077 	ld.w	$r23,$r3,88(0x58)
1c001564:	28815078 	ld.w	$r24,$r3,84(0x54)
1c001568:	28814079 	ld.w	$r25,$r3,80(0x50)
1c00156c:	00150004 	move	$r4,$r0
1c001570:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001574:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c001578:	00150305 	move	$r5,$r24
1c00157c:	53ffabff 	b	-88(0xfffffa8) # 1c001524 <printbase+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c001580:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001584:	29803066 	st.w	$r6,$r3,12(0xc)
1c001588:	29802065 	st.w	$r5,$r3,8(0x8)
1c00158c:	57fe27ff 	bl	-476(0xffffe24) # 1c0013b0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:9
	value = -v;
1c001590:	00115c17 	sub.w	$r23,$r0,$r23
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c001594:	28802065 	ld.w	$r5,$r3,8(0x8)
1c001598:	28803066 	ld.w	$r6,$r3,12(0xc)
1c00159c:	53ff4bff 	b	-184(0xfffff48) # 1c0014e4 <printbase+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c0015a0:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c00155c <printbase+0x9c>
1c0015a4:	00150018 	move	$r24,$r0
1c0015a8:	53ff7fff 	b	-132(0xfffff7c) # 1c001524 <printbase+0x64>
1c0015ac:	03400000 	andi	$r0,$r0,0x0

1c0015b0 <get_count>:
get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c0015b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0015b4:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c0015b8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0015bc:	28800324 	ld.w	$r4,$r25,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
    return  _get_count();
}
1c0015c0:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0015c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0015c8:	4c000020 	jirl	$r0,$r1,0
1c0015cc:	03400000 	andi	$r0,$r0,0x0

1c0015d0 <_get_count>:
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
1c0015d0:	53ffe3ff 	b	-32(0xfffffe0) # 1c0015b0 <get_count>
1c0015d4:	03400000 	andi	$r0,$r0,0x0
1c0015d8:	03400000 	andi	$r0,$r0,0x0
1c0015dc:	03400000 	andi	$r0,$r0,0x0

1c0015e0 <get_count_my>:
get_count_my():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c0015e0:	00006004 	rdtimel.w	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c0015e4:	4c000020 	jirl	$r0,$r1,0
1c0015e8:	03400000 	andi	$r0,$r0,0x0
1c0015ec:	03400000 	andi	$r0,$r0,0x0

1c0015f0 <clock_gettime>:
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c0015f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0015f4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c0015f8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0015fc:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001600:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c001604:	001c35ed 	mul.w	$r13,$r15,$r13
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001608:	02819011 	addi.w	$r17,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00160c:	1400030e 	lu12i.w	$r14,24(0x18)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001610:	002145f0 	div.wu	$r16,$r15,$r17
1c001614:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c00161c <clock_gettime+0x2c>
1c001618:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00161c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001620:	039a81ce 	ori	$r14,$r14,0x6a0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001624:	0021b211 	mod.wu	$r17,$r16,$r12
1c001628:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001630 <clock_gettime+0x40>
1c00162c:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001630:	002139f0 	div.wu	$r16,$r15,$r14
1c001634:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c00163c <clock_gettime+0x4c>
1c001638:	002a0007 	break	0x7
1c00163c:	0021b20e 	mod.wu	$r14,$r16,$r12
1c001640:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001648 <clock_gettime+0x58>
1c001644:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c001648:	298000a0 	st.w	$r0,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00164c:	298030ae 	st.w	$r14,$r5,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001650:	298020b1 	st.w	$r17,$r5,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c001654:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001658:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00165c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001660:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001668 <clock_gettime+0x78>
1c001664:	002a0007 	break	0x7
1c001668:	298010ae 	st.w	$r14,$r5,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
}
1c00166c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001670:	4c000020 	jirl	$r0,$r1,0
1c001674:	03400000 	andi	$r0,$r0,0x0
1c001678:	03400000 	andi	$r0,$r0,0x0
1c00167c:	03400000 	andi	$r0,$r0,0x0

1c001680 <get_clock>:
get_clock():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
1c001680:	53ff33ff 	b	-208(0xfffff30) # 1c0015b0 <get_count>
1c001684:	03400000 	andi	$r0,$r0,0x0
1c001688:	03400000 	andi	$r0,$r0,0x0
1c00168c:	03400000 	andi	$r0,$r0,0x0

1c001690 <get_ns>:
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c001690:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001694:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001698:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00169c:	28800324 	ld.w	$r4,$r25,0
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c0016a0:	0280280c 	addi.w	$r12,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:57
    return n;
}
1c0016a4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0016a8:	001c3084 	mul.w	$r4,$r4,$r12
1c0016ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0016b0:	4c000020 	jirl	$r0,$r1,0
1c0016b4:	03400000 	andi	$r0,$r0,0x0
1c0016b8:	03400000 	andi	$r0,$r0,0x0
1c0016bc:	03400000 	andi	$r0,$r0,0x0

1c0016c0 <get_us>:
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:61


unsigned long get_us(void)
{
1c0016c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0016c4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c0016c8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0016cc:	28800324 	ld.w	$r4,$r25,0
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c0016d0:	0281900c 	addi.w	$r12,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:66
    return n;
}
1c0016d4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0016d8:	0021308d 	div.wu	$r13,$r4,$r12
1c0016dc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0016e4 <get_us+0x24>
1c0016e0:	002a0007 	break	0x7
1c0016e4:	001501a4 	move	$r4,$r13
1c0016e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0016ec:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <a_ref-0xc8>:
1c080000:	63697571 	blt	$r11,$r17,-38540(0x36974) # 1c076974 <_data_lma+0x75284>
1c080004:	6f73206b 	bgeu	$r3,$r11,-36064(0x37320) # 1c077324 <_data_lma+0x75c34>
1c080008:	74207472 	xvsubwev.h.b	$xr18,$xr3,$xr29
1c08000c:	20747365 	ll.w	$r5,$r27,29808(0x7470)
1c080010:	69676562 	bltu	$r11,$r2,92004(0x16764) # 1c096774 <_end+0x13674>
1c080014:	00002e6e 	ctz.d	$r14,$r19
1c080018:	75736572 	0x75736572
1c08001c:	255b746c 	stptr.w	$r12,$r3,23412(0x5b74)
1c080020:	72655d64 	0x72655d64
1c080024:	0a726f72 	0x0a726f72
1c080028:	7365722c 	vssrani.wu.d	$vr12,$vr17,0x1c
1c08002c:	5b746c75 	beq	$r3,$r21,-35732(0x3746c) # 1c077498 <_data_lma+0x75da8>
1c080030:	3d205d6a 	0x3d205d6a
1c080034:	2c642520 	vst	$vr0,$r9,-1783(0x909)
1c080038:	725f6120 	0x725f6120
1c08003c:	6a5b6665 	bltu	$r19,$r5,-107676(0x25b64) # 1c065ba0 <_data_lma+0x644b0>
1c080040:	203d205d 	ll.w	$r29,$r2,15648(0x3d20)
1c080044:	00006425 	rdtimeh.w	$r5,$r1
1c080048:	63697571 	blt	$r11,$r17,-38540(0x36974) # 1c0769bc <_data_lma+0x752cc>
1c08004c:	6f73206b 	bgeu	$r3,$r11,-36064(0x37320) # 1c07736c <_data_lma+0x75c7c>
1c080050:	50207472 	b	29892724(0x1c82074) # 1dd020c4 <_stack+0x1c020c8>
1c080054:	21535341 	sc.w	$r1,$r26,21328(0x5350)
1c080058:	00000000 	0x00000000
1c08005c:	63697571 	blt	$r11,$r17,-38540(0x36974) # 1c0769d0 <_data_lma+0x752e0>
1c080060:	6f73206b 	bgeu	$r3,$r11,-36064(0x37320) # 1c077380 <_data_lma+0x75c90>
1c080064:	45207472 	bnez	$r3,-3596172(0x492074) # 1bd120d8 <__stack_size+0x1bd020d8>
1c080068:	524f5252 	b	-112570544(0x94a4f50) # 15524fb8 <__stack_size+0x15514fb8>
1c08006c:	00212121 	div.wu	$r1,$r9,$r8
1c080070:	63697571 	blt	$r11,$r17,-38540(0x36974) # 1c0769e4 <_data_lma+0x752f4>
1c080074:	6f73206b 	bgeu	$r3,$r11,-36064(0x37320) # 1c077394 <_data_lma+0x75ca4>
1c080078:	203a7472 	ll.w	$r18,$r3,14964(0x3a74)
1c08007c:	61746f54 	blt	$r26,$r20,95340(0x1746c) # 1c0974e8 <_end+0x143e8>
1c080080:	6f43206c 	bgeu	$r3,$r12,-48352(0x34320) # 1c0743a0 <_data_lma+0x72cb0>
1c080084:	28746e75 	ld.h	$r21,$r19,-741(0xd1b)
1c080088:	20436f53 	ll.w	$r19,$r26,17260(0x436c)
1c08008c:	6e756f63 	bgeu	$r27,$r3,-101012(0x2756c) # 1c0675f8 <_data_lma+0x65f08>
1c080090:	3d202974 	0x3d202974
1c080094:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c080098:	00000a78 	0x00000a78
1c08009c:	63697571 	blt	$r11,$r17,-38540(0x36974) # 1c076a10 <_data_lma+0x75320>
1c0800a0:	6f73206b 	bgeu	$r3,$r11,-36064(0x37320) # 1c0773c0 <_data_lma+0x75cd0>
1c0800a4:	203a7472 	ll.w	$r18,$r3,14964(0x3a74)
1c0800a8:	61746f54 	blt	$r26,$r20,95340(0x1746c) # 1c097514 <_end+0x14414>
1c0800ac:	6f43206c 	bgeu	$r3,$r12,-48352(0x34320) # 1c0743cc <_data_lma+0x72cdc>
1c0800b0:	28746e75 	ld.h	$r21,$r19,-741(0xd1b)
1c0800b4:	20555043 	ll.w	$r3,$r2,21840(0x5550)
1c0800b8:	6e756f63 	bgeu	$r27,$r3,-101012(0x2756c) # 1c067624 <_data_lma+0x65f34>
1c0800bc:	3d202974 	0x3d202974
1c0800c0:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c0800c4:	00000a78 	0x00000a78

1c0800c8 <a_ref>:
1c0800c8:	00000008 	0x00000008
1c0800cc:	00000014 	0x00000014
1c0800d0:	0000001c 	0x0000001c
1c0800d4:	0000002a 	0x0000002a
1c0800d8:	00000048 	0x00000048
1c0800dc:	0000008c 	0x0000008c
1c0800e0:	000000ab 	0x000000ab
1c0800e4:	000000e3 	0x000000e3
1c0800e8:	00000128 	0x00000128
1c0800ec:	0000014b 	0x0000014b
1c0800f0:	0000014f 	0x0000014f
1c0800f4:	0000015b 	0x0000015b
1c0800f8:	00000164 	0x00000164
1c0800fc:	00000183 	0x00000183
1c080100:	000001c9 	0x000001c9
1c080104:	000001cb 	0x000001cb
1c080108:	0000021f 	0x0000021f
1c08010c:	00000255 	0x00000255
1c080110:	00000257 	0x00000257
1c080114:	0000026b 	0x0000026b
1c080118:	000002e5 	0x000002e5
1c08011c:	000002f8 	0x000002f8
1c080120:	00000317 	0x00000317
1c080124:	0000031d 	0x0000031d
1c080128:	0000036d 	0x0000036d
1c08012c:	00000381 	0x00000381
1c080130:	000003a9 	0x000003a9
1c080134:	0000041f 	0x0000041f
1c080138:	00000431 	0x00000431
1c08013c:	0000045e 	0x0000045e
1c080140:	000004ae 	0x000004ae
1c080144:	0000055c 	0x0000055c
1c080148:	000005c8 	0x000005c8
1c08014c:	000005da 	0x000005da
1c080150:	000005f0 	0x000005f0
1c080154:	000005f4 	0x000005f4
1c080158:	0000060b 	0x0000060b
1c08015c:	0000062f 	0x0000062f
1c080160:	00000639 	0x00000639
1c080164:	00000652 	0x00000652
1c080168:	0000067a 	0x0000067a
1c08016c:	00000736 	0x00000736
1c080170:	00000772 	0x00000772
1c080174:	00000781 	0x00000781
1c080178:	00000783 	0x00000783
1c08017c:	0000079e 	0x0000079e
1c080180:	000007a0 	0x000007a0
1c080184:	000007b8 	0x000007b8
1c080188:	000007b9 	0x000007b9
1c08018c:	000007c0 	0x000007c0
1c080190:	00000801 	0x00000801
1c080194:	00000810 	0x00000810
1c080198:	0000081f 	0x0000081f
1c08019c:	00000826 	0x00000826
1c0801a0:	00000841 	0x00000841
1c0801a4:	00000859 	0x00000859
1c0801a8:	00000867 	0x00000867
1c0801ac:	0000089a 	0x0000089a
1c0801b0:	000008a4 	0x000008a4
1c0801b4:	000008a5 	0x000008a5
1c0801b8:	000008af 	0x000008af
1c0801bc:	000008c9 	0x000008c9
1c0801c0:	0000090b 	0x0000090b
1c0801c4:	0000090e 	0x0000090e
1c0801c8:	00000940 	0x00000940
1c0801cc:	0000096c 	0x0000096c
1c0801d0:	000009ef 	0x000009ef
1c0801d4:	000009f0 	0x000009f0
1c0801d8:	00000a16 	0x00000a16
1c0801dc:	00000a2b 	0x00000a2b
1c0801e0:	00000ab0 	0x00000ab0
1c0801e4:	00000abb 	0x00000abb
1c0801e8:	00000abd 	0x00000abd
1c0801ec:	00000ac8 	0x00000ac8
1c0801f0:	00000afb 	0x00000afb
1c0801f4:	00000afd 	0x00000afd
1c0801f8:	00000b1a 	0x00000b1a
1c0801fc:	00000b21 	0x00000b21
1c080200:	00000b30 	0x00000b30
1c080204:	00000b33 	0x00000b33
1c080208:	00000b65 	0x00000b65
1c08020c:	00000b77 	0x00000b77
1c080210:	00000ba4 	0x00000ba4
1c080214:	00000bf8 	0x00000bf8
1c080218:	00000c07 	0x00000c07
1c08021c:	00000c49 	0x00000c49
1c080220:	00000c71 	0x00000c71
1c080224:	00000c77 	0x00000c77
1c080228:	00000ca2 	0x00000ca2
1c08022c:	00000ca5 	0x00000ca5
1c080230:	00000cc0 	0x00000cc0
1c080234:	00000cc6 	0x00000cc6
1c080238:	00000ce5 	0x00000ce5
1c08023c:	00000ce9 	0x00000ce9
1c080240:	00000ce9 	0x00000ce9
1c080244:	00000d0c 	0x00000d0c
1c080248:	00000d42 	0x00000d42
1c08024c:	00000d44 	0x00000d44
1c080250:	00000d62 	0x00000d62
1c080254:	00000dab 	0x00000dab
1c080258:	00000df7 	0x00000df7
1c08025c:	00000e1f 	0x00000e1f
1c080260:	00000e61 	0x00000e61
1c080264:	00000e61 	0x00000e61
1c080268:	00000e75 	0x00000e75
1c08026c:	00000e80 	0x00000e80
1c080270:	00000eae 	0x00000eae
1c080274:	00000ed0 	0x00000ed0
1c080278:	00000ed9 	0x00000ed9
1c08027c:	00000f3e 	0x00000f3e
1c080280:	00000f43 	0x00000f43
1c080284:	00000f71 	0x00000f71
1c080288:	00000f72 	0x00000f72
1c08028c:	00000faf 	0x00000faf
1c080290:	00000faf 	0x00000faf
1c080294:	00000fd0 	0x00000fd0
1c080298:	00001019 	clo.w	$r25,$r0
1c08029c:	00001039 	clo.w	$r25,$r1
1c0802a0:	00001040 	clo.w	$r0,$r2
1c0802a4:	00001045 	clo.w	$r5,$r2
1c0802a8:	0000104e 	clo.w	$r14,$r2
1c0802ac:	0000106a 	clo.w	$r10,$r3
1c0802b0:	00001079 	clo.w	$r25,$r3
1c0802b4:	0000107a 	clo.w	$r26,$r3
1c0802b8:	0000107d 	clo.w	$r29,$r3
1c0802bc:	000010a4 	clo.w	$r4,$r5
1c0802c0:	000010b2 	clo.w	$r18,$r5
1c0802c4:	000010bc 	clo.w	$r28,$r5
1c0802c8:	000010ca 	clo.w	$r10,$r6
1c0802cc:	000010cc 	clo.w	$r12,$r6
1c0802d0:	000010cd 	clo.w	$r13,$r6
1c0802d4:	000010d0 	clo.w	$r16,$r6
1c0802d8:	000010f1 	clo.w	$r17,$r7
1c0802dc:	000010f8 	clo.w	$r24,$r7
1c0802e0:	0000111a 	clo.w	$r26,$r8
1c0802e4:	00001156 	clo.w	$r22,$r10
1c0802e8:	00001170 	clo.w	$r16,$r11
1c0802ec:	0000117b 	clo.w	$r27,$r11
1c0802f0:	00001227 	clo.w	$r7,$r17
1c0802f4:	00001254 	clo.w	$r20,$r18
1c0802f8:	00001261 	clo.w	$r1,$r19
1c0802fc:	00001269 	clo.w	$r9,$r19
1c080300:	00001274 	clo.w	$r20,$r19
1c080304:	000012a0 	clo.w	$r0,$r21
1c080308:	000012ff 	clo.w	$r31,$r23
1c08030c:	00001338 	clo.w	$r24,$r25
1c080310:	00001351 	clo.w	$r17,$r26
1c080314:	0000135f 	clo.w	$r31,$r26
1c080318:	00001375 	clo.w	$r21,$r27
1c08031c:	0000139e 	clo.w	$r30,$r28
1c080320:	000013bb 	clo.w	$r27,$r29
1c080324:	000013ea 	clo.w	$r10,$r31
1c080328:	000013ed 	clo.w	$r13,$r31
1c08032c:	0000140a 	clz.w	$r10,$r0
1c080330:	00001460 	clz.w	$r0,$r3
1c080334:	00001473 	clz.w	$r19,$r3
1c080338:	0000147a 	clz.w	$r26,$r3
1c08033c:	0000149a 	clz.w	$r26,$r4
1c080340:	000014b5 	clz.w	$r21,$r5
1c080344:	000014d3 	clz.w	$r19,$r6
1c080348:	000014f3 	clz.w	$r19,$r7
1c08034c:	000014fd 	clz.w	$r29,$r7
1c080350:	00001514 	clz.w	$r20,$r8
1c080354:	0000154c 	clz.w	$r12,$r10
1c080358:	00001557 	clz.w	$r23,$r10
1c08035c:	0000155c 	clz.w	$r28,$r10
1c080360:	00001575 	clz.w	$r21,$r11
1c080364:	00001587 	clz.w	$r7,$r12
1c080368:	000015e2 	clz.w	$r2,$r15
1c08036c:	000015f1 	clz.w	$r17,$r15
1c080370:	000015f4 	clz.w	$r20,$r15
1c080374:	000015f8 	clz.w	$r24,$r15
1c080378:	000015fb 	clz.w	$r27,$r15
1c08037c:	00001628 	clz.w	$r8,$r17
1c080380:	00001642 	clz.w	$r2,$r18
1c080384:	00001646 	clz.w	$r6,$r18
1c080388:	000016de 	clz.w	$r30,$r22
1c08038c:	00001702 	clz.w	$r2,$r24
1c080390:	0000170b 	clz.w	$r11,$r24
1c080394:	00001749 	clz.w	$r9,$r26
1c080398:	0000174b 	clz.w	$r11,$r26
1c08039c:	0000177c 	clz.w	$r28,$r27
1c0803a0:	000017a6 	clz.w	$r6,$r29
1c0803a4:	000017b7 	clz.w	$r23,$r29
1c0803a8:	000017be 	clz.w	$r30,$r29
1c0803ac:	000017c4 	clz.w	$r4,$r30
1c0803b0:	000017da 	clz.w	$r26,$r30
1c0803b4:	000017df 	clz.w	$r31,$r30
1c0803b8:	000017df 	clz.w	$r31,$r30
1c0803bc:	000017f3 	clz.w	$r19,$r31
1c0803c0:	00001815 	cto.w	$r21,$r0
1c0803c4:	00001824 	cto.w	$r4,$r1
1c0803c8:	00001828 	cto.w	$r8,$r1
1c0803cc:	00001846 	cto.w	$r6,$r2
1c0803d0:	00001863 	cto.w	$r3,$r3
1c0803d4:	00001878 	cto.w	$r24,$r3
1c0803d8:	000018f0 	cto.w	$r16,$r7
1c0803dc:	00001903 	cto.w	$r3,$r8
1c0803e0:	0000191a 	cto.w	$r26,$r8
1c0803e4:	0000195c 	cto.w	$r28,$r10
1c0803e8:	00001962 	cto.w	$r2,$r11
1c0803ec:	000019cd 	cto.w	$r13,$r14
1c0803f0:	000019d5 	cto.w	$r21,$r14
1c0803f4:	000019f9 	cto.w	$r25,$r15
1c0803f8:	00001a22 	cto.w	$r2,$r17
1c0803fc:	00001a75 	cto.w	$r21,$r19
1c080400:	00001a7e 	cto.w	$r30,$r19
1c080404:	00001a98 	cto.w	$r24,$r20
1c080408:	00001a9d 	cto.w	$r29,$r20
1c08040c:	00001ab4 	cto.w	$r20,$r21
1c080410:	00001ac0 	cto.w	$r0,$r22
1c080414:	00001afe 	cto.w	$r30,$r23
1c080418:	00001b60 	cto.w	$r0,$r27
1c08041c:	00001b6b 	cto.w	$r11,$r27
1c080420:	00001b8c 	cto.w	$r12,$r28
1c080424:	00001bb2 	cto.w	$r18,$r29
1c080428:	00001bd8 	cto.w	$r24,$r30
1c08042c:	00001c09 	ctz.w	$r9,$r0
1c080430:	00001c0b 	ctz.w	$r11,$r0
1c080434:	00001c32 	ctz.w	$r18,$r1
1c080438:	00001c32 	ctz.w	$r18,$r1
1c08043c:	00001c75 	ctz.w	$r21,$r3
1c080440:	00001c89 	ctz.w	$r9,$r4
1c080444:	00001ccc 	ctz.w	$r12,$r6
1c080448:	00001cd7 	ctz.w	$r23,$r6
1c08044c:	00001d05 	ctz.w	$r5,$r8
1c080450:	00001d14 	ctz.w	$r20,$r8
1c080454:	00001d46 	ctz.w	$r6,$r10
1c080458:	00001d84 	ctz.w	$r4,$r12
1c08045c:	00001d8d 	ctz.w	$r13,$r12
1c080460:	00001d8d 	ctz.w	$r13,$r12
1c080464:	00001d92 	ctz.w	$r18,$r12
1c080468:	00001daf 	ctz.w	$r15,$r13
1c08046c:	00001dca 	ctz.w	$r10,$r14
1c080470:	00001dcd 	ctz.w	$r13,$r14
1c080474:	00001dcf 	ctz.w	$r15,$r14
1c080478:	00001e1e 	ctz.w	$r30,$r16
1c08047c:	00001e4f 	ctz.w	$r15,$r18
1c080480:	00001e5a 	ctz.w	$r26,$r18
1c080484:	00001ec3 	ctz.w	$r3,$r22
1c080488:	00001ecc 	ctz.w	$r12,$r22
1c08048c:	00001ed8 	ctz.w	$r24,$r22
1c080490:	00001eed 	ctz.w	$r13,$r23
1c080494:	00001fc5 	ctz.w	$r5,$r30
1c080498:	00002054 	clo.d	$r20,$r2
1c08049c:	0000206f 	clo.d	$r15,$r3
1c0804a0:	000020ad 	clo.d	$r13,$r5
1c0804a4:	000020d5 	clo.d	$r21,$r6
1c0804a8:	000020fe 	clo.d	$r30,$r7
1c0804ac:	00002156 	clo.d	$r22,$r10
1c0804b0:	00002165 	clo.d	$r5,$r11
1c0804b4:	0000216d 	clo.d	$r13,$r11
1c0804b8:	00002179 	clo.d	$r25,$r11
1c0804bc:	000021d3 	clo.d	$r19,$r14
1c0804c0:	0000221e 	clo.d	$r30,$r16
1c0804c4:	00002224 	clo.d	$r4,$r17
1c0804c8:	00002236 	clo.d	$r22,$r17
1c0804cc:	00002237 	clo.d	$r23,$r17
1c0804d0:	00002258 	clo.d	$r24,$r18
1c0804d4:	0000226c 	clo.d	$r12,$r19
1c0804d8:	0000226d 	clo.d	$r13,$r19
1c0804dc:	00002275 	clo.d	$r21,$r19
1c0804e0:	000022b1 	clo.d	$r17,$r21
1c0804e4:	000022f6 	clo.d	$r22,$r23
1c0804e8:	00002314 	clo.d	$r20,$r24
1c0804ec:	00002345 	clo.d	$r5,$r26
1c0804f0:	000023a9 	clo.d	$r9,$r29
1c0804f4:	000023d2 	clo.d	$r18,$r30
1c0804f8:	000023d5 	clo.d	$r21,$r30
1c0804fc:	0000243f 	clz.d	$r31,$r1
1c080500:	00002442 	clz.d	$r2,$r2
1c080504:	00002444 	clz.d	$r4,$r2
1c080508:	00002457 	clz.d	$r23,$r2
1c08050c:	00002468 	clz.d	$r8,$r3
1c080510:	000024ac 	clz.d	$r12,$r5
1c080514:	000024be 	clz.d	$r30,$r5
1c080518:	000024ca 	clz.d	$r10,$r6
1c08051c:	000024ca 	clz.d	$r10,$r6
1c080520:	000024ec 	clz.d	$r12,$r7
1c080524:	00002503 	clz.d	$r3,$r8
1c080528:	00002504 	clz.d	$r4,$r8
1c08052c:	0000250e 	clz.d	$r14,$r8
1c080530:	00002510 	clz.d	$r16,$r8
1c080534:	0000253a 	clz.d	$r26,$r9
1c080538:	00002550 	clz.d	$r16,$r10
1c08053c:	0000255b 	clz.d	$r27,$r10
1c080540:	00002560 	clz.d	$r0,$r11
1c080544:	00002563 	clz.d	$r3,$r11
1c080548:	0000259c 	clz.d	$r28,$r12
1c08054c:	000025a3 	clz.d	$r3,$r13
1c080550:	000025ed 	clz.d	$r13,$r15
1c080554:	00002610 	clz.d	$r16,$r16
1c080558:	0000263a 	clz.d	$r26,$r17
1c08055c:	0000263e 	clz.d	$r30,$r17
1c080560:	00002644 	clz.d	$r4,$r18
1c080564:	0000265d 	clz.d	$r29,$r18
1c080568:	000026a7 	clz.d	$r7,$r21
1c08056c:	000026ab 	clz.d	$r11,$r21
1c080570:	000026cd 	clz.d	$r13,$r22
1c080574:	00002704 	clz.d	$r4,$r24
1c080578:	00002726 	clz.d	$r6,$r25
1c08057c:	0000273a 	clz.d	$r26,$r25
1c080580:	0000273f 	clz.d	$r31,$r25
1c080584:	0000274c 	clz.d	$r12,$r26
1c080588:	000027b9 	clz.d	$r25,$r29
1c08058c:	000027bc 	clz.d	$r28,$r29
1c080590:	00002823 	cto.d	$r3,$r1
1c080594:	0000282b 	cto.d	$r11,$r1
1c080598:	0000283a 	cto.d	$r26,$r1
1c08059c:	0000285b 	cto.d	$r27,$r2
1c0805a0:	000028bc 	cto.d	$r28,$r5
1c0805a4:	000028ea 	cto.d	$r10,$r7
1c0805a8:	0000290a 	cto.d	$r10,$r8
1c0805ac:	0000295c 	cto.d	$r28,$r10
1c0805b0:	00002979 	cto.d	$r25,$r11
1c0805b4:	00002985 	cto.d	$r5,$r12
1c0805b8:	00002986 	cto.d	$r6,$r12
1c0805bc:	0000299f 	cto.d	$r31,$r12
1c0805c0:	000029b7 	cto.d	$r23,$r13
1c0805c4:	000029e4 	cto.d	$r4,$r15
1c0805c8:	00002a0d 	cto.d	$r13,$r16
1c0805cc:	00002a2d 	cto.d	$r13,$r17
1c0805d0:	00002a32 	cto.d	$r18,$r17
1c0805d4:	00002a34 	cto.d	$r20,$r17
1c0805d8:	00002a3c 	cto.d	$r28,$r17
1c0805dc:	00002a5b 	cto.d	$r27,$r18
1c0805e0:	00002b00 	cto.d	$r0,$r24
1c0805e4:	00002b5d 	cto.d	$r29,$r26
1c0805e8:	00002b7e 	cto.d	$r30,$r27
1c0805ec:	00002b87 	cto.d	$r7,$r28
1c0805f0:	00002b89 	cto.d	$r9,$r28
1c0805f4:	00002bcd 	cto.d	$r13,$r30
1c0805f8:	00002bf5 	cto.d	$r21,$r31
1c0805fc:	00002c3d 	ctz.d	$r29,$r1
1c080600:	00002c44 	ctz.d	$r4,$r2
1c080604:	00002c47 	ctz.d	$r7,$r2
1c080608:	00002c57 	ctz.d	$r23,$r2
1c08060c:	00002c82 	ctz.d	$r2,$r4
1c080610:	00002c8e 	ctz.d	$r14,$r4
1c080614:	00002c93 	ctz.d	$r19,$r4
1c080618:	00002cdd 	ctz.d	$r29,$r6
1c08061c:	00002cf5 	ctz.d	$r21,$r7
1c080620:	00002d18 	ctz.d	$r24,$r8
1c080624:	00002d25 	ctz.d	$r5,$r9
1c080628:	00002d36 	ctz.d	$r22,$r9
1c08062c:	00002d65 	ctz.d	$r5,$r11
1c080630:	00002d7b 	ctz.d	$r27,$r11
1c080634:	00002d99 	ctz.d	$r25,$r12
1c080638:	00002dda 	ctz.d	$r26,$r14
1c08063c:	00002e0f 	ctz.d	$r15,$r16
1c080640:	00002e14 	ctz.d	$r20,$r16
1c080644:	00002e2b 	ctz.d	$r11,$r17
1c080648:	00002e9f 	ctz.d	$r31,$r20
1c08064c:	00002efd 	ctz.d	$r29,$r23
1c080650:	00002f18 	ctz.d	$r24,$r24
1c080654:	00002f1c 	ctz.d	$r28,$r24
1c080658:	00002f2a 	ctz.d	$r10,$r25
1c08065c:	00002f34 	ctz.d	$r20,$r25
1c080660:	00002f52 	ctz.d	$r18,$r26
1c080664:	00002f60 	ctz.d	$r0,$r27
1c080668:	00002f69 	ctz.d	$r9,$r27
1c08066c:	00002f79 	ctz.d	$r25,$r27
1c080670:	00002f79 	ctz.d	$r25,$r27
1c080674:	00002f95 	ctz.d	$r21,$r28
1c080678:	00002fb8 	ctz.d	$r24,$r29
1c08067c:	00002fea 	ctz.d	$r10,$r31
1c080680:	00003016 	revb.2h	$r22,$r0
1c080684:	0000303f 	revb.2h	$r31,$r1
1c080688:	000030af 	revb.2h	$r15,$r5
1c08068c:	000030e4 	revb.2h	$r4,$r7
1c080690:	0000314b 	revb.2h	$r11,$r10
1c080694:	00003164 	revb.2h	$r4,$r11
1c080698:	0000316d 	revb.2h	$r13,$r11
1c08069c:	0000316d 	revb.2h	$r13,$r11
1c0806a0:	00003193 	revb.2h	$r19,$r12
1c0806a4:	00003197 	revb.2h	$r23,$r12
1c0806a8:	000031f6 	revb.2h	$r22,$r15
1c0806ac:	000031fa 	revb.2h	$r26,$r15
1c0806b0:	0000321b 	revb.2h	$r27,$r16
1c0806b4:	00003231 	revb.2h	$r17,$r17
1c0806b8:	0000323f 	revb.2h	$r31,$r17
1c0806bc:	0000326d 	revb.2h	$r13,$r19
1c0806c0:	00003277 	revb.2h	$r23,$r19
1c0806c4:	00003280 	revb.2h	$r0,$r20
1c0806c8:	000032bc 	revb.2h	$r28,$r21
1c0806cc:	000032ec 	revb.2h	$r12,$r23
1c0806d0:	000032ee 	revb.2h	$r14,$r23
1c0806d4:	000032fc 	revb.2h	$r28,$r23
1c0806d8:	00003316 	revb.2h	$r22,$r24
1c0806dc:	00003374 	revb.2h	$r20,$r27
1c0806e0:	0000339a 	revb.2h	$r26,$r28
1c0806e4:	00003440 	revb.4h	$r0,$r2
1c0806e8:	0000347b 	revb.4h	$r27,$r3
1c0806ec:	00003516 	revb.4h	$r22,$r8
1c0806f0:	00003548 	revb.4h	$r8,$r10
1c0806f4:	0000354f 	revb.4h	$r15,$r10
1c0806f8:	00003581 	revb.4h	$r1,$r12
1c0806fc:	000035a9 	revb.4h	$r9,$r13
1c080700:	000035b9 	revb.4h	$r25,$r13
1c080704:	000035bf 	revb.4h	$r31,$r13
1c080708:	000035d6 	revb.4h	$r22,$r14
1c08070c:	000035d9 	revb.4h	$r25,$r14
1c080710:	000036ad 	revb.4h	$r13,$r21
1c080714:	000036d4 	revb.4h	$r20,$r22
1c080718:	000036e1 	revb.4h	$r1,$r23
1c08071c:	00003709 	revb.4h	$r9,$r24
1c080720:	00003727 	revb.4h	$r7,$r25
1c080724:	00003730 	revb.4h	$r16,$r25
1c080728:	00003734 	revb.4h	$r20,$r25
1c08072c:	0000377e 	revb.4h	$r30,$r27
1c080730:	00003792 	revb.4h	$r18,$r28
1c080734:	000037c5 	revb.4h	$r5,$r30
1c080738:	000037c5 	revb.4h	$r5,$r30
1c08073c:	000037d5 	revb.4h	$r21,$r30
1c080740:	000037ed 	revb.4h	$r13,$r31
1c080744:	00003825 	revb.2w	$r5,$r1
1c080748:	00003863 	revb.2w	$r3,$r3
1c08074c:	0000389c 	revb.2w	$r28,$r4
1c080750:	000038a4 	revb.2w	$r4,$r5
1c080754:	000038bc 	revb.2w	$r28,$r5
1c080758:	000038be 	revb.2w	$r30,$r5
1c08075c:	000038cc 	revb.2w	$r12,$r6
1c080760:	000038d8 	revb.2w	$r24,$r6
1c080764:	000038ed 	revb.2w	$r13,$r7
1c080768:	000038f4 	revb.2w	$r20,$r7
1c08076c:	00003912 	revb.2w	$r18,$r8
1c080770:	00003951 	revb.2w	$r17,$r10
1c080774:	0000399c 	revb.2w	$r28,$r12
1c080778:	000039e1 	revb.2w	$r1,$r15
1c08077c:	000039eb 	revb.2w	$r11,$r15
1c080780:	000039eb 	revb.2w	$r11,$r15
1c080784:	000039ec 	revb.2w	$r12,$r15
1c080788:	00003a01 	revb.2w	$r1,$r16
1c08078c:	00003a22 	revb.2w	$r2,$r17
1c080790:	00003a2d 	revb.2w	$r13,$r17
1c080794:	00003a3d 	revb.2w	$r29,$r17
1c080798:	00003a68 	revb.2w	$r8,$r19
1c08079c:	00003a70 	revb.2w	$r16,$r19
1c0807a0:	00003a9a 	revb.2w	$r26,$r20
1c0807a4:	00003ac9 	revb.2w	$r9,$r22
1c0807a8:	00003afe 	revb.2w	$r30,$r23
1c0807ac:	00003b03 	revb.2w	$r3,$r24
1c0807b0:	00003b73 	revb.2w	$r19,$r27
1c0807b4:	00003b77 	revb.2w	$r23,$r27
1c0807b8:	00003bb5 	revb.2w	$r21,$r29
1c0807bc:	00003bd5 	revb.2w	$r21,$r30
1c0807c0:	00003bf9 	revb.2w	$r25,$r31
1c0807c4:	00003c03 	revb.d	$r3,$r0
1c0807c8:	00003c4f 	revb.d	$r15,$r2
1c0807cc:	00003c5f 	revb.d	$r31,$r2
1c0807d0:	00003cb1 	revb.d	$r17,$r5
1c0807d4:	00003cd3 	revb.d	$r19,$r6
1c0807d8:	00003cdf 	revb.d	$r31,$r6
1c0807dc:	00003cee 	revb.d	$r14,$r7
1c0807e0:	00003d22 	revb.d	$r2,$r9
1c0807e4:	00003d3c 	revb.d	$r28,$r9
1c0807e8:	00003d5e 	revb.d	$r30,$r10
1c0807ec:	00003d65 	revb.d	$r5,$r11
1c0807f0:	00003d80 	revb.d	$r0,$r12
1c0807f4:	00003db9 	revb.d	$r25,$r13
1c0807f8:	00003dbb 	revb.d	$r27,$r13
1c0807fc:	00003dd7 	revb.d	$r23,$r14
1c080800:	00003e10 	revb.d	$r16,$r16
1c080804:	00003e33 	revb.d	$r19,$r17
1c080808:	00003e44 	revb.d	$r4,$r18
1c08080c:	00003e4e 	revb.d	$r14,$r18
1c080810:	00003e6b 	revb.d	$r11,$r19
1c080814:	00003e78 	revb.d	$r24,$r19
1c080818:	00003e8a 	revb.d	$r10,$r20
1c08081c:	00003e8f 	revb.d	$r15,$r20
1c080820:	00003eae 	revb.d	$r14,$r21
1c080824:	00003ec5 	revb.d	$r5,$r22
1c080828:	00003ec9 	revb.d	$r9,$r22
1c08082c:	00003ed8 	revb.d	$r24,$r22
1c080830:	00003efe 	revb.d	$r30,$r23
1c080834:	00003f32 	revb.d	$r18,$r25
1c080838:	00003f40 	revb.d	$r0,$r26
1c08083c:	00003fb6 	revb.d	$r22,$r29
1c080840:	00003fb7 	revb.d	$r23,$r29
1c080844:	00003fea 	revb.d	$r10,$r31
1c080848:	00003ffa 	revb.d	$r26,$r31
1c08084c:	00004020 	revh.2w	$r0,$r1
1c080850:	0000403e 	revh.2w	$r30,$r1
1c080854:	00004059 	revh.2w	$r25,$r2
1c080858:	00004061 	revh.2w	$r1,$r3
1c08085c:	000040e4 	revh.2w	$r4,$r7
1c080860:	000040f0 	revh.2w	$r16,$r7
1c080864:	00004107 	revh.2w	$r7,$r8
1c080868:	00004138 	revh.2w	$r24,$r9
1c08086c:	0000416e 	revh.2w	$r14,$r11
1c080870:	0000418d 	revh.2w	$r13,$r12
1c080874:	00004190 	revh.2w	$r16,$r12
1c080878:	000041ac 	revh.2w	$r12,$r13
1c08087c:	000041b2 	revh.2w	$r18,$r13
1c080880:	000041c0 	revh.2w	$r0,$r14
1c080884:	00004220 	revh.2w	$r0,$r17
1c080888:	0000428a 	revh.2w	$r10,$r20
1c08088c:	0000429a 	revh.2w	$r26,$r20
1c080890:	000042b6 	revh.2w	$r22,$r21
1c080894:	000042df 	revh.2w	$r31,$r22
1c080898:	000042ff 	revh.2w	$r31,$r23
1c08089c:	00004367 	revh.2w	$r7,$r27
1c0808a0:	000043a7 	revh.2w	$r7,$r29
1c0808a4:	000043c8 	revh.2w	$r8,$r30
1c0808a8:	000043f0 	revh.2w	$r16,$r31
1c0808ac:	0000441a 	revh.d	$r26,$r0
1c0808b0:	0000443e 	revh.d	$r30,$r1
1c0808b4:	0000445a 	revh.d	$r26,$r2
1c0808b8:	0000447a 	revh.d	$r26,$r3
1c0808bc:	0000447f 	revh.d	$r31,$r3
1c0808c0:	00004487 	revh.d	$r7,$r4
1c0808c4:	0000448e 	revh.d	$r14,$r4
1c0808c8:	0000449f 	revh.d	$r31,$r4
1c0808cc:	000044ad 	revh.d	$r13,$r5
1c0808d0:	000044b6 	revh.d	$r22,$r5
1c0808d4:	000044b7 	revh.d	$r23,$r5
1c0808d8:	000044e3 	revh.d	$r3,$r7
1c0808dc:	000044f8 	revh.d	$r24,$r7
1c0808e0:	00004501 	revh.d	$r1,$r8
1c0808e4:	00004515 	revh.d	$r21,$r8
1c0808e8:	0000455c 	revh.d	$r28,$r10
1c0808ec:	0000459c 	revh.d	$r28,$r12
1c0808f0:	000045cc 	revh.d	$r12,$r14
1c0808f4:	000045f3 	revh.d	$r19,$r15
1c0808f8:	00004611 	revh.d	$r17,$r16
1c0808fc:	0000463c 	revh.d	$r28,$r17
1c080900:	00004665 	revh.d	$r5,$r19
1c080904:	00004680 	revh.d	$r0,$r20
1c080908:	0000469d 	revh.d	$r29,$r20
1c08090c:	000046c6 	revh.d	$r6,$r22
1c080910:	000046f1 	revh.d	$r17,$r23
1c080914:	000046fe 	revh.d	$r30,$r23
1c080918:	00004706 	revh.d	$r6,$r24
1c08091c:	00004723 	revh.d	$r3,$r25
1c080920:	0000472e 	revh.d	$r14,$r25
1c080924:	0000475a 	revh.d	$r26,$r26
1c080928:	0000476d 	revh.d	$r13,$r27
1c08092c:	00004772 	revh.d	$r18,$r27
1c080930:	0000477e 	revh.d	$r30,$r27
1c080934:	0000479b 	revh.d	$r27,$r28
1c080938:	000047b9 	revh.d	$r25,$r29
1c08093c:	000047d5 	revh.d	$r21,$r30
1c080940:	000047e1 	revh.d	$r1,$r31
1c080944:	00004821 	bitrev.4b	$r1,$r1
1c080948:	00004856 	bitrev.4b	$r22,$r2
1c08094c:	0000485b 	bitrev.4b	$r27,$r2
1c080950:	0000487f 	bitrev.4b	$r31,$r3
1c080954:	00004882 	bitrev.4b	$r2,$r4
1c080958:	000048b8 	bitrev.4b	$r24,$r5
1c08095c:	000048bc 	bitrev.4b	$r28,$r5
1c080960:	000048cd 	bitrev.4b	$r13,$r6
1c080964:	000048cf 	bitrev.4b	$r15,$r6
1c080968:	00004902 	bitrev.4b	$r2,$r8
1c08096c:	0000491b 	bitrev.4b	$r27,$r8
1c080970:	0000495d 	bitrev.4b	$r29,$r10
1c080974:	0000495e 	bitrev.4b	$r30,$r10
1c080978:	0000498a 	bitrev.4b	$r10,$r12
1c08097c:	00004990 	bitrev.4b	$r16,$r12
1c080980:	00004998 	bitrev.4b	$r24,$r12
1c080984:	000049c7 	bitrev.4b	$r7,$r14
1c080988:	00004a13 	bitrev.4b	$r19,$r16
1c08098c:	00004a74 	bitrev.4b	$r20,$r19
1c080990:	00004a83 	bitrev.4b	$r3,$r20
1c080994:	00004a84 	bitrev.4b	$r4,$r20
1c080998:	00004a8e 	bitrev.4b	$r14,$r20
1c08099c:	00004a8f 	bitrev.4b	$r15,$r20
1c0809a0:	00004a9c 	bitrev.4b	$r28,$r20
1c0809a4:	00004abc 	bitrev.4b	$r28,$r21
1c0809a8:	00004acf 	bitrev.4b	$r15,$r22
1c0809ac:	00004add 	bitrev.4b	$r29,$r22
1c0809b0:	00004ae4 	bitrev.4b	$r4,$r23
1c0809b4:	00004af6 	bitrev.4b	$r22,$r23
1c0809b8:	00004b11 	bitrev.4b	$r17,$r24
1c0809bc:	00004b21 	bitrev.4b	$r1,$r25
1c0809c0:	00004b31 	bitrev.4b	$r17,$r25
1c0809c4:	00004b7e 	bitrev.4b	$r30,$r27
1c0809c8:	00004b89 	bitrev.4b	$r9,$r28
1c0809cc:	00004bb4 	bitrev.4b	$r20,$r29
1c0809d0:	00004bca 	bitrev.4b	$r10,$r30
1c0809d4:	00004bcc 	bitrev.4b	$r12,$r30
1c0809d8:	00004c07 	bitrev.8b	$r7,$r0
1c0809dc:	00004c21 	bitrev.8b	$r1,$r1
1c0809e0:	00004c2b 	bitrev.8b	$r11,$r1
1c0809e4:	00004c4f 	bitrev.8b	$r15,$r2
1c0809e8:	00004c6f 	bitrev.8b	$r15,$r3
1c0809ec:	00004c89 	bitrev.8b	$r9,$r4
1c0809f0:	00004c8f 	bitrev.8b	$r15,$r4
1c0809f4:	00004cae 	bitrev.8b	$r14,$r5
1c0809f8:	00004caf 	bitrev.8b	$r15,$r5
1c0809fc:	00004cde 	bitrev.8b	$r30,$r6
1c080a00:	00004d02 	bitrev.8b	$r2,$r8
1c080a04:	00004d3d 	bitrev.8b	$r29,$r9
1c080a08:	00004d80 	bitrev.8b	$r0,$r12
1c080a0c:	00004d99 	bitrev.8b	$r25,$r12
1c080a10:	00004dbc 	bitrev.8b	$r28,$r13
1c080a14:	00004df9 	bitrev.8b	$r25,$r15
1c080a18:	00004e0c 	bitrev.8b	$r12,$r16
1c080a1c:	00004e68 	bitrev.8b	$r8,$r19
1c080a20:	00004ea7 	bitrev.8b	$r7,$r21
1c080a24:	00004f1e 	bitrev.8b	$r30,$r24
1c080a28:	00004f26 	bitrev.8b	$r6,$r25
1c080a2c:	00004f5a 	bitrev.8b	$r26,$r26
1c080a30:	00004f5b 	bitrev.8b	$r27,$r26
1c080a34:	00004f93 	bitrev.8b	$r19,$r28
1c080a38:	00004fa2 	bitrev.8b	$r2,$r29
1c080a3c:	00004fa6 	bitrev.8b	$r6,$r29
1c080a40:	00004fb2 	bitrev.8b	$r18,$r29
1c080a44:	00004fe1 	bitrev.8b	$r1,$r31
1c080a48:	00005012 	bitrev.w	$r18,$r0
1c080a4c:	00005046 	bitrev.w	$r6,$r2
1c080a50:	0000504b 	bitrev.w	$r11,$r2
1c080a54:	00005075 	bitrev.w	$r21,$r3
1c080a58:	0000507e 	bitrev.w	$r30,$r3
1c080a5c:	00005083 	bitrev.w	$r3,$r4
1c080a60:	0000508d 	bitrev.w	$r13,$r4
1c080a64:	000050a2 	bitrev.w	$r2,$r5
1c080a68:	000050b6 	bitrev.w	$r22,$r5
1c080a6c:	000050bb 	bitrev.w	$r27,$r5
1c080a70:	000050ee 	bitrev.w	$r14,$r7
1c080a74:	000050ff 	bitrev.w	$r31,$r7
1c080a78:	0000511a 	bitrev.w	$r26,$r8
1c080a7c:	00005124 	bitrev.w	$r4,$r9
1c080a80:	00005130 	bitrev.w	$r16,$r9
1c080a84:	00005135 	bitrev.w	$r21,$r9
1c080a88:	00005198 	bitrev.w	$r24,$r12
1c080a8c:	000051a4 	bitrev.w	$r4,$r13
1c080a90:	000051ba 	bitrev.w	$r26,$r13
1c080a94:	000051d5 	bitrev.w	$r21,$r14
1c080a98:	000051fd 	bitrev.w	$r29,$r15
1c080a9c:	00005201 	bitrev.w	$r1,$r16
1c080aa0:	00005222 	bitrev.w	$r2,$r17
1c080aa4:	0000524a 	bitrev.w	$r10,$r18
1c080aa8:	0000526e 	bitrev.w	$r14,$r19
1c080aac:	000052a0 	bitrev.w	$r0,$r21
1c080ab0:	000052a6 	bitrev.w	$r6,$r21
1c080ab4:	000052ae 	bitrev.w	$r14,$r21
1c080ab8:	000052af 	bitrev.w	$r15,$r21
1c080abc:	000052c0 	bitrev.w	$r0,$r22
1c080ac0:	0000532f 	bitrev.w	$r15,$r25
1c080ac4:	0000533b 	bitrev.w	$r27,$r25
1c080ac8:	00005341 	bitrev.w	$r1,$r26
1c080acc:	0000534c 	bitrev.w	$r12,$r26
1c080ad0:	00005354 	bitrev.w	$r20,$r26
1c080ad4:	0000536f 	bitrev.w	$r15,$r27
1c080ad8:	000053d8 	bitrev.w	$r24,$r30
1c080adc:	00005431 	bitrev.d	$r17,$r1
1c080ae0:	00005444 	bitrev.d	$r4,$r2
1c080ae4:	00005445 	bitrev.d	$r5,$r2
1c080ae8:	00005447 	bitrev.d	$r7,$r2
1c080aec:	00005490 	bitrev.d	$r16,$r4
1c080af0:	00005493 	bitrev.d	$r19,$r4
1c080af4:	000054b6 	bitrev.d	$r22,$r5
1c080af8:	000054c4 	bitrev.d	$r4,$r6
1c080afc:	00005539 	bitrev.d	$r25,$r9
1c080b00:	00005553 	bitrev.d	$r19,$r10
1c080b04:	00005580 	bitrev.d	$r0,$r12
1c080b08:	000055a9 	bitrev.d	$r9,$r13
1c080b0c:	000055b7 	bitrev.d	$r23,$r13
1c080b10:	000055c0 	bitrev.d	$r0,$r14
1c080b14:	000055cd 	bitrev.d	$r13,$r14
1c080b18:	000055f0 	bitrev.d	$r16,$r15
1c080b1c:	0000560b 	bitrev.d	$r11,$r16
1c080b20:	00005629 	bitrev.d	$r9,$r17
1c080b24:	000056fc 	bitrev.d	$r28,$r23
1c080b28:	00005703 	bitrev.d	$r3,$r24
1c080b2c:	0000573b 	bitrev.d	$r27,$r25
1c080b30:	0000576a 	bitrev.d	$r10,$r27
1c080b34:	00005773 	bitrev.d	$r19,$r27
1c080b38:	00005792 	bitrev.d	$r18,$r28
1c080b3c:	000057c7 	bitrev.d	$r7,$r30
1c080b40:	000057c8 	bitrev.d	$r8,$r30
1c080b44:	000057da 	bitrev.d	$r26,$r30
1c080b48:	000057ff 	bitrev.d	$r31,$r31
1c080b4c:	00005802 	ext.w.h	$r2,$r0
1c080b50:	0000581a 	ext.w.h	$r26,$r0
1c080b54:	0000583b 	ext.w.h	$r27,$r1
1c080b58:	00005858 	ext.w.h	$r24,$r2
1c080b5c:	0000585a 	ext.w.h	$r26,$r2
1c080b60:	00005873 	ext.w.h	$r19,$r3
1c080b64:	00005899 	ext.w.h	$r25,$r4
1c080b68:	000058b2 	ext.w.h	$r18,$r5
1c080b6c:	000058c7 	ext.w.h	$r7,$r6
1c080b70:	000058eb 	ext.w.h	$r11,$r7
1c080b74:	00005950 	ext.w.h	$r16,$r10
1c080b78:	0000597e 	ext.w.h	$r30,$r11
1c080b7c:	00005989 	ext.w.h	$r9,$r12
1c080b80:	000059dd 	ext.w.h	$r29,$r14
1c080b84:	000059ea 	ext.w.h	$r10,$r15
1c080b88:	00005a27 	ext.w.h	$r7,$r17
1c080b8c:	00005ad8 	ext.w.h	$r24,$r22
1c080b90:	00005ae1 	ext.w.h	$r1,$r23
1c080b94:	00005b06 	ext.w.h	$r6,$r24
1c080b98:	00005b12 	ext.w.h	$r18,$r24
1c080b9c:	00005b14 	ext.w.h	$r20,$r24
1c080ba0:	00005b21 	ext.w.h	$r1,$r25
1c080ba4:	00005b3b 	ext.w.h	$r27,$r25
1c080ba8:	00005b3d 	ext.w.h	$r29,$r25
1c080bac:	00005b4a 	ext.w.h	$r10,$r26
1c080bb0:	00005b53 	ext.w.h	$r19,$r26
1c080bb4:	00005b76 	ext.w.h	$r22,$r27
1c080bb8:	00005b83 	ext.w.h	$r3,$r28
1c080bbc:	00005b9a 	ext.w.h	$r26,$r28
1c080bc0:	00005ba5 	ext.w.h	$r5,$r29
1c080bc4:	00005bae 	ext.w.h	$r14,$r29
1c080bc8:	00005be1 	ext.w.h	$r1,$r31
1c080bcc:	00005c0b 	ext.w.b	$r11,$r0
1c080bd0:	00005c47 	ext.w.b	$r7,$r2
1c080bd4:	00005c7f 	ext.w.b	$r31,$r3
1c080bd8:	00005cb2 	ext.w.b	$r18,$r5
1c080bdc:	00005cb7 	ext.w.b	$r23,$r5
1c080be0:	00005cb9 	ext.w.b	$r25,$r5
1c080be4:	00005cda 	ext.w.b	$r26,$r6
1c080be8:	00005cdc 	ext.w.b	$r28,$r6
1c080bec:	00005cdc 	ext.w.b	$r28,$r6
1c080bf0:	00005ce1 	ext.w.b	$r1,$r7
1c080bf4:	00005ce6 	ext.w.b	$r6,$r7
1c080bf8:	00005cf0 	ext.w.b	$r16,$r7
1c080bfc:	00005d0c 	ext.w.b	$r12,$r8
1c080c00:	00005d1d 	ext.w.b	$r29,$r8
1c080c04:	00005d23 	ext.w.b	$r3,$r9
1c080c08:	00005d80 	ext.w.b	$r0,$r12
1c080c0c:	00005dbb 	ext.w.b	$r27,$r13
1c080c10:	00005dc6 	ext.w.b	$r6,$r14
1c080c14:	00005de5 	ext.w.b	$r5,$r15
1c080c18:	00005e0c 	ext.w.b	$r12,$r16
1c080c1c:	00005e2e 	ext.w.b	$r14,$r17
1c080c20:	00005e2f 	ext.w.b	$r15,$r17
1c080c24:	00005e40 	ext.w.b	$r0,$r18
1c080c28:	00005e57 	ext.w.b	$r23,$r18
1c080c2c:	00005e67 	ext.w.b	$r7,$r19
1c080c30:	00005e84 	ext.w.b	$r4,$r20
1c080c34:	00005e9f 	ext.w.b	$r31,$r20
1c080c38:	00005eac 	ext.w.b	$r12,$r21
1c080c3c:	00005ec1 	ext.w.b	$r1,$r22
1c080c40:	00005ef0 	ext.w.b	$r16,$r23
1c080c44:	00005f16 	ext.w.b	$r22,$r24
1c080c48:	00005f20 	ext.w.b	$r0,$r25
1c080c4c:	00005f25 	ext.w.b	$r5,$r25
1c080c50:	00005f33 	ext.w.b	$r19,$r25
1c080c54:	00005f36 	ext.w.b	$r22,$r25
1c080c58:	00005f4f 	ext.w.b	$r15,$r26
1c080c5c:	00005f75 	ext.w.b	$r21,$r27
1c080c60:	00005f90 	ext.w.b	$r16,$r28
1c080c64:	00005fbc 	ext.w.b	$r28,$r29
1c080c68:	00005fd7 	ext.w.b	$r23,$r30
1c080c6c:	00006032 	rdtimel.w	$r18,$r1
1c080c70:	00006096 	rdtimel.w	$r22,$r4
1c080c74:	000060ae 	rdtimel.w	$r14,$r5
1c080c78:	000060f0 	rdtimel.w	$r16,$r7
1c080c7c:	0000610c 	rdtimel.w	$r12,$r8
1c080c80:	0000610e 	rdtimel.w	$r14,$r8
1c080c84:	00006121 	rdtimel.w	$r1,$r9
1c080c88:	00006140 	rdtimel.w	$r0,$r10
1c080c8c:	00006154 	rdtimel.w	$r20,$r10
1c080c90:	0000618b 	rdtimel.w	$r11,$r12
1c080c94:	000061f1 	rdtimel.w	$r17,$r15
1c080c98:	00006249 	rdtimel.w	$r9,$r18
1c080c9c:	0000628d 	rdtimel.w	$r13,$r20
1c080ca0:	000062a3 	rdtimel.w	$r3,$r21
1c080ca4:	000062ba 	rdtimel.w	$r26,$r21
1c080ca8:	000062d8 	rdtimel.w	$r24,$r22
1c080cac:	000062f3 	rdtimel.w	$r19,$r23
1c080cb0:	000062fe 	rdtimel.w	$r30,$r23
1c080cb4:	00006302 	rdtimel.w	$r2,$r24
1c080cb8:	00006335 	rdtimel.w	$r21,$r25
1c080cbc:	00006346 	rdtimel.w	$r6,$r26
1c080cc0:	00006358 	rdtimel.w	$r24,$r26
1c080cc4:	0000636f 	rdtimel.w	$r15,$r27
1c080cc8:	00006372 	rdtimel.w	$r18,$r27
1c080ccc:	0000640d 	rdtimeh.w	$r13,$r0
1c080cd0:	0000643d 	rdtimeh.w	$r29,$r1
1c080cd4:	00006457 	rdtimeh.w	$r23,$r2
1c080cd8:	00006496 	rdtimeh.w	$r22,$r4
1c080cdc:	000064a6 	rdtimeh.w	$r6,$r5
1c080ce0:	000064ad 	rdtimeh.w	$r13,$r5
1c080ce4:	000064b4 	rdtimeh.w	$r20,$r5
1c080ce8:	000064b8 	rdtimeh.w	$r24,$r5
1c080cec:	000064de 	rdtimeh.w	$r30,$r6
1c080cf0:	000064f8 	rdtimeh.w	$r24,$r7
1c080cf4:	00006503 	rdtimeh.w	$r3,$r8
1c080cf8:	00006529 	rdtimeh.w	$r9,$r9
1c080cfc:	00006537 	rdtimeh.w	$r23,$r9
1c080d00:	00006556 	rdtimeh.w	$r22,$r10
1c080d04:	00006594 	rdtimeh.w	$r20,$r12
1c080d08:	0000659e 	rdtimeh.w	$r30,$r12
1c080d0c:	0000659e 	rdtimeh.w	$r30,$r12
1c080d10:	000065b0 	rdtimeh.w	$r16,$r13
1c080d14:	000065c3 	rdtimeh.w	$r3,$r14
1c080d18:	000065d7 	rdtimeh.w	$r23,$r14
1c080d1c:	000065f6 	rdtimeh.w	$r22,$r15
1c080d20:	000065f8 	rdtimeh.w	$r24,$r15
1c080d24:	00006614 	rdtimeh.w	$r20,$r16
1c080d28:	0000664b 	rdtimeh.w	$r11,$r18
1c080d2c:	0000667c 	rdtimeh.w	$r28,$r19
1c080d30:	00006692 	rdtimeh.w	$r18,$r20
1c080d34:	00006697 	rdtimeh.w	$r23,$r20
1c080d38:	000066ad 	rdtimeh.w	$r13,$r21
1c080d3c:	000066c8 	rdtimeh.w	$r8,$r22
1c080d40:	0000670c 	rdtimeh.w	$r12,$r24
1c080d44:	00006730 	rdtimeh.w	$r16,$r25
1c080d48:	00006734 	rdtimeh.w	$r20,$r25
1c080d4c:	00006747 	rdtimeh.w	$r7,$r26
1c080d50:	0000676a 	rdtimeh.w	$r10,$r27
1c080d54:	00006790 	rdtimeh.w	$r16,$r28
1c080d58:	000067ba 	rdtimeh.w	$r26,$r29
1c080d5c:	000067bb 	rdtimeh.w	$r27,$r29
1c080d60:	000067dc 	rdtimeh.w	$r28,$r30
1c080d64:	000067de 	rdtimeh.w	$r30,$r30
1c080d68:	000067e5 	rdtimeh.w	$r5,$r31
1c080d6c:	000067e7 	rdtimeh.w	$r7,$r31
1c080d70:	000067fa 	rdtimeh.w	$r26,$r31
1c080d74:	00006815 	rdtime.d	$r21,$r0
1c080d78:	0000685a 	rdtime.d	$r26,$r2
1c080d7c:	000068ef 	rdtime.d	$r15,$r7
1c080d80:	0000690f 	rdtime.d	$r15,$r8
1c080d84:	00006935 	rdtime.d	$r21,$r9
1c080d88:	00006944 	rdtime.d	$r4,$r10
1c080d8c:	0000695e 	rdtime.d	$r30,$r10
1c080d90:	000069ab 	rdtime.d	$r11,$r13
1c080d94:	000069bc 	rdtime.d	$r28,$r13
1c080d98:	00006a06 	rdtime.d	$r6,$r16
1c080d9c:	00006a52 	rdtime.d	$r18,$r18
1c080da0:	00006a54 	rdtime.d	$r20,$r18
1c080da4:	00006a72 	rdtime.d	$r18,$r19
1c080da8:	00006a89 	rdtime.d	$r9,$r20
1c080dac:	00006a9a 	rdtime.d	$r26,$r20
1c080db0:	00006aad 	rdtime.d	$r13,$r21
1c080db4:	00006ab2 	rdtime.d	$r18,$r21
1c080db8:	00006abb 	rdtime.d	$r27,$r21
1c080dbc:	00006acf 	rdtime.d	$r15,$r22
1c080dc0:	00006ad0 	rdtime.d	$r16,$r22
1c080dc4:	00006ad8 	rdtime.d	$r24,$r22
1c080dc8:	00006ae7 	rdtime.d	$r7,$r23
1c080dcc:	00006ae8 	rdtime.d	$r8,$r23
1c080dd0:	00006b00 	rdtime.d	$r0,$r24
1c080dd4:	00006b07 	rdtime.d	$r7,$r24
1c080dd8:	00006b36 	rdtime.d	$r22,$r25
1c080ddc:	00006b4b 	rdtime.d	$r11,$r26
1c080de0:	00006b4d 	rdtime.d	$r13,$r26
1c080de4:	00006b6a 	rdtime.d	$r10,$r27
1c080de8:	00006b8c 	rdtime.d	$r12,$r28
1c080dec:	00006b9d 	rdtime.d	$r29,$r28
1c080df0:	00006b9d 	rdtime.d	$r29,$r28
1c080df4:	00006bb2 	rdtime.d	$r18,$r29
1c080df8:	00006bd7 	rdtime.d	$r23,$r30
1c080dfc:	00006bff 	rdtime.d	$r31,$r31
1c080e00:	00006c0c 	cpucfg	$r12,$r0
1c080e04:	00006c27 	cpucfg	$r7,$r1
1c080e08:	00006c45 	cpucfg	$r5,$r2
1c080e0c:	00006c7e 	cpucfg	$r30,$r3
1c080e10:	00006c91 	cpucfg	$r17,$r4
1c080e14:	00006caf 	cpucfg	$r15,$r5
1c080e18:	00006cb6 	cpucfg	$r22,$r5
1c080e1c:	00006cbb 	cpucfg	$r27,$r5
1c080e20:	00006cc8 	cpucfg	$r8,$r6
1c080e24:	00006cf0 	cpucfg	$r16,$r7
1c080e28:	00006d04 	cpucfg	$r4,$r8
1c080e2c:	00006d1e 	cpucfg	$r30,$r8
1c080e30:	00006d30 	cpucfg	$r16,$r9
1c080e34:	00006d49 	cpucfg	$r9,$r10
1c080e38:	00006d62 	cpucfg	$r2,$r11
1c080e3c:	00006d69 	cpucfg	$r9,$r11
1c080e40:	00006d79 	cpucfg	$r25,$r11
1c080e44:	00006d87 	cpucfg	$r7,$r12
1c080e48:	00006d9f 	cpucfg	$r31,$r12
1c080e4c:	00006dff 	cpucfg	$r31,$r15
1c080e50:	00006e01 	cpucfg	$r1,$r16
1c080e54:	00006e21 	cpucfg	$r1,$r17
1c080e58:	00006e6c 	cpucfg	$r12,$r19
1c080e5c:	00006e96 	cpucfg	$r22,$r20
1c080e60:	00006ea0 	cpucfg	$r0,$r21
1c080e64:	00006ead 	cpucfg	$r13,$r21
1c080e68:	00006ec4 	cpucfg	$r4,$r22
1c080e6c:	00006ee0 	cpucfg	$r0,$r23
1c080e70:	00006ee3 	cpucfg	$r3,$r23
1c080e74:	00006f0e 	cpucfg	$r14,$r24
1c080e78:	00006f1f 	cpucfg	$r31,$r24
1c080e7c:	00006f30 	cpucfg	$r16,$r25
1c080e80:	00006f32 	cpucfg	$r18,$r25
1c080e84:	00006f55 	cpucfg	$r21,$r26
1c080e88:	00006f66 	cpucfg	$r6,$r27
1c080e8c:	00006f69 	cpucfg	$r9,$r27
1c080e90:	00006f6a 	cpucfg	$r10,$r27
1c080e94:	00006f95 	cpucfg	$r21,$r28
1c080e98:	00006fab 	cpucfg	$r11,$r29
1c080e9c:	00006fb6 	cpucfg	$r22,$r29
1c080ea0:	00007018 	0x00007018
1c080ea4:	0000701d 	0x0000701d
1c080ea8:	0000701f 	0x0000701f
1c080eac:	00007029 	0x00007029
1c080eb0:	00007048 	0x00007048
1c080eb4:	00007065 	0x00007065
1c080eb8:	00007066 	0x00007066
1c080ebc:	00007072 	0x00007072
1c080ec0:	00007080 	0x00007080
1c080ec4:	000070c1 	0x000070c1
1c080ec8:	00007134 	0x00007134
1c080ecc:	00007162 	0x00007162
1c080ed0:	00007173 	0x00007173
1c080ed4:	0000717c 	0x0000717c
1c080ed8:	0000717e 	0x0000717e
1c080edc:	00007197 	0x00007197
1c080ee0:	000071a1 	0x000071a1
1c080ee4:	000071bb 	0x000071bb
1c080ee8:	000071e6 	0x000071e6
1c080eec:	0000722f 	0x0000722f
1c080ef0:	00007235 	0x00007235
1c080ef4:	0000724b 	0x0000724b
1c080ef8:	0000724d 	0x0000724d
1c080efc:	0000725c 	0x0000725c
1c080f00:	0000726d 	0x0000726d
1c080f04:	00007301 	0x00007301
1c080f08:	0000732c 	0x0000732c
1c080f0c:	0000732d 	0x0000732d
1c080f10:	00007366 	0x00007366
1c080f14:	0000736b 	0x0000736b
1c080f18:	00007376 	0x00007376
1c080f1c:	0000739e 	0x0000739e
1c080f20:	00007452 	0x00007452
1c080f24:	000074c3 	0x000074c3
1c080f28:	000074d3 	0x000074d3
1c080f2c:	000074d9 	0x000074d9
1c080f30:	000074e7 	0x000074e7
1c080f34:	000074f5 	0x000074f5
1c080f38:	00007532 	0x00007532
1c080f3c:	0000753a 	0x0000753a
1c080f40:	0000755d 	0x0000755d
1c080f44:	00007574 	0x00007574
1c080f48:	00007595 	0x00007595
1c080f4c:	000075fa 	0x000075fa
1c080f50:	00007620 	0x00007620
1c080f54:	00007647 	0x00007647
1c080f58:	0000764a 	0x0000764a
1c080f5c:	0000768b 	0x0000768b
1c080f60:	000076b4 	0x000076b4
1c080f64:	00007729 	0x00007729
1c080f68:	0000772b 	0x0000772b
1c080f6c:	00007746 	0x00007746
1c080f70:	00007765 	0x00007765
1c080f74:	00007773 	0x00007773
1c080f78:	000077cd 	0x000077cd
1c080f7c:	0000783c 	0x0000783c
1c080f80:	00007862 	0x00007862
1c080f84:	0000787a 	0x0000787a
1c080f88:	000078bb 	0x000078bb
1c080f8c:	000078c2 	0x000078c2
1c080f90:	000078d6 	0x000078d6
1c080f94:	00007925 	0x00007925
1c080f98:	00007935 	0x00007935
1c080f9c:	00007969 	0x00007969
1c080fa0:	0000797c 	0x0000797c
1c080fa4:	00007996 	0x00007996
1c080fa8:	000079e1 	0x000079e1
1c080fac:	000079f6 	0x000079f6
1c080fb0:	00007a18 	0x00007a18
1c080fb4:	00007a46 	0x00007a46
1c080fb8:	00007a61 	0x00007a61
1c080fbc:	00007a8e 	0x00007a8e
1c080fc0:	00007a91 	0x00007a91
1c080fc4:	00007a96 	0x00007a96
1c080fc8:	00007ac8 	0x00007ac8
1c080fcc:	00007ae7 	0x00007ae7
1c080fd0:	00007af5 	0x00007af5
1c080fd4:	00007b05 	0x00007b05
1c080fd8:	00007b31 	0x00007b31
1c080fdc:	00007b3f 	0x00007b3f
1c080fe0:	00007b5d 	0x00007b5d
1c080fe4:	00007b78 	0x00007b78
1c080fe8:	00007b86 	0x00007b86
1c080fec:	00007b88 	0x00007b88
1c080ff0:	00007b90 	0x00007b90
1c080ff4:	00007ba5 	0x00007ba5
1c080ff8:	00007bde 	0x00007bde
1c080ffc:	00007c8e 	0x00007c8e
1c081000:	00007c9f 	0x00007c9f
1c081004:	00007cae 	0x00007cae
1c081008:	00007cc0 	0x00007cc0
1c08100c:	00007cca 	0x00007cca
1c081010:	00007d53 	0x00007d53
1c081014:	00007d65 	0x00007d65
1c081018:	00007da2 	0x00007da2
1c08101c:	00007dd1 	0x00007dd1
1c081020:	00007dd3 	0x00007dd3
1c081024:	00007e1b 	0x00007e1b
1c081028:	00007e27 	0x00007e27
1c08102c:	00007e90 	0x00007e90
1c081030:	00007ea0 	0x00007ea0
1c081034:	00007eb6 	0x00007eb6
1c081038:	00007ec6 	0x00007ec6
1c08103c:	00007ec9 	0x00007ec9
1c081040:	00007edf 	0x00007edf
1c081044:	00007f27 	0x00007f27
1c081048:	00007f68 	0x00007f68
1c08104c:	00007f69 	0x00007f69
1c081050:	00007f93 	0x00007f93
1c081054:	00007f97 	0x00007f97
1c081058:	00007f98 	0x00007f98
1c08105c:	00007f9e 	0x00007f9e
1c081060:	00007fd6 	0x00007fd6
1c081064:	00007ff2 	0x00007ff2

1c081068 <a>:
1c081068:	000047b9 	revh.d	$r25,$r29
1c08106c:	000064b8 	rdtimeh.w	$r24,$r5
1c081070:	000019cd 	cto.w	$r13,$r14
1c081074:	000067de 	rdtimeh.w	$r30,$r30
1c081078:	0000585a 	ext.w.h	$r26,$r2
1c08107c:	00003bb5 	revb.2w	$r21,$r29
1c081080:	00006bff 	rdtime.d	$r31,$r31
1c081084:	00005d23 	ext.w.b	$r3,$r9
1c081088:	00003fea 	revb.d	$r10,$r31
1c08108c:	0000273f 	clz.d	$r31,$r25
1c081090:	0000416e 	revh.2w	$r14,$r11
1c081094:	0000295c 	cto.d	$r28,$r10
1c081098:	00006c91 	cpucfg	$r17,$r4
1c08109c:	00005198 	bitrev.w	$r24,$r12
1c0810a0:	00006ad8 	rdtime.d	$r24,$r22
1c0810a4:	000019d5 	cto.w	$r21,$r14
1c0810a8:	0000191a 	cto.w	$r26,$r8
1c0810ac:	00002503 	clz.d	$r3,$r8
1c0810b0:	000004ae 	0x000004ae
1c0810b4:	0000447a 	revh.d	$r26,$r3
1c0810b8:	00005b21 	ext.w.h	$r1,$r25
1c0810bc:	00007cca 	0x00007cca
1c0810c0:	00004487 	revh.d	$r7,$r4
1c0810c4:	0000002a 	0x0000002a
1c0810c8:	000054c4 	bitrev.d	$r4,$r6
1c0810cc:	00002179 	clo.d	$r25,$r11
1c0810d0:	00003a9a 	revb.2w	$r26,$r20
1c0810d4:	00001261 	clo.w	$r1,$r19
1c0810d8:	000032bc 	revb.2h	$r28,$r21
1c0810dc:	00006b9d 	rdtime.d	$r29,$r28
1c0810e0:	00004a83 	bitrev.4b	$r3,$r20
1c0810e4:	00005f20 	ext.w.b	$r0,$r25
1c0810e8:	00004c21 	bitrev.8b	$r1,$r1
1c0810ec:	0000449f 	revh.d	$r31,$r4
1c0810f0:	00003016 	revb.2h	$r22,$r0
1c0810f4:	000014f3 	clz.w	$r19,$r7
1c0810f8:	0000768b 	0x0000768b
1c0810fc:	0000428a 	revh.2w	$r10,$r20
1c081100:	00007935 	0x00007935
1c081104:	00002275 	clo.d	$r21,$r19
1c081108:	00006b07 	rdtime.d	$r7,$r24
1c08110c:	00003951 	revb.2w	$r17,$r10
1c081110:	00001460 	clz.w	$r0,$r3
1c081114:	00003e6b 	revb.d	$r11,$r19
1c081118:	00006747 	rdtimeh.w	$r7,$r26
1c08111c:	000074c3 	0x000074c3
1c081120:	00006249 	rdtimel.w	$r9,$r18
1c081124:	000038bc 	revb.2w	$r28,$r5
1c081128:	0000487f 	bitrev.4b	$r31,$r3
1c08112c:	000032ec 	revb.2h	$r12,$r23
1c081130:	0000263e 	clz.d	$r30,$r17
1c081134:	000047e1 	revh.d	$r1,$r31
1c081138:	000008af 	0x000008af
1c08113c:	00003ec5 	revb.d	$r5,$r22
1c081140:	00001eed 	ctz.w	$r13,$r23
1c081144:	000010bc 	clo.w	$r28,$r5
1c081148:	00002726 	clz.d	$r6,$r25
1c08114c:	000065f8 	rdtimeh.w	$r24,$r15
1c081150:	000039eb 	revb.2w	$r11,$r15
1c081154:	00000b33 	0x00000b33
1c081158:	0000476d 	revh.d	$r13,$r27
1c08115c:	00000431 	0x00000431
1c081160:	0000667c 	rdtimeh.w	$r28,$r19
1c081164:	00005e2e 	ext.w.b	$r14,$r17
1c081168:	0000290a 	cto.d	$r10,$r8
1c08116c:	000060f0 	rdtimel.w	$r16,$r7
1c081170:	0000610e 	rdtimel.w	$r14,$r8
1c081174:	00001a9d 	cto.w	$r29,$r20
1c081178:	00005222 	bitrev.w	$r2,$r17
1c08117c:	00006b6a 	rdtime.d	$r10,$r27
1c081180:	00000652 	0x00000652
1c081184:	000023d5 	clo.d	$r21,$r30
1c081188:	00000cc0 	0x00000cc0
1c08118c:	00004f26 	bitrev.8b	$r6,$r25
1c081190:	00006f6a 	cpucfg	$r10,$r27
1c081194:	00002644 	clz.d	$r4,$r18
1c081198:	000056fc 	bitrev.d	$r28,$r23
1c08119c:	00005c7f 	ext.w.b	$r31,$r3
1c0811a0:	0000534c 	bitrev.w	$r12,$r26
1c0811a4:	00003a22 	revb.2w	$r2,$r17
1c0811a8:	00004c8f 	bitrev.8b	$r15,$r4
1c0811ac:	000052a6 	bitrev.w	$r6,$r21
1c0811b0:	00002f95 	ctz.d	$r21,$r28
1c0811b4:	000013ed 	clo.w	$r13,$r31
1c0811b8:	00006346 	rdtimel.w	$r6,$r26
1c0811bc:	00001a98 	cto.w	$r24,$r20
1c0811c0:	00002156 	clo.d	$r22,$r10
1c0811c4:	00002442 	clz.d	$r2,$r2
1c0811c8:	00002a32 	cto.d	$r18,$r17
1c0811cc:	00006cbb 	cpucfg	$r27,$r5
1c0811d0:	00006fb6 	cpucfg	$r22,$r29
1c0811d4:	0000285b 	cto.d	$r27,$r2
1c0811d8:	00000faf 	0x00000faf
1c0811dc:	00004cae 	bitrev.8b	$r14,$r5
1c0811e0:	00005135 	bitrev.w	$r21,$r9
1c0811e4:	00007f98 	0x00007f98
1c0811e8:	00005899 	ext.w.h	$r25,$r4
1c0811ec:	00002c93 	ctz.d	$r19,$r4
1c0811f0:	000074d9 	0x000074d9
1c0811f4:	0000628d 	rdtimel.w	$r13,$r20
1c0811f8:	00001815 	cto.w	$r21,$r0
1c0811fc:	00000d62 	0x00000d62
1c081200:	0000447f 	revh.d	$r31,$r3
1c081204:	00007b90 	0x00007b90
1c081208:	00004c89 	bitrev.8b	$r9,$r4
1c08120c:	00007729 	0x00007729
1c081210:	00003b77 	revb.2w	$r23,$r27
1c081214:	0000090e 	0x0000090e
1c081218:	000036d4 	revb.4h	$r20,$r22
1c08121c:	000051a4 	bitrev.w	$r4,$r13
1c081220:	00001d84 	ctz.w	$r4,$r12
1c081224:	00006358 	rdtimel.w	$r24,$r26
1c081228:	00003e8f 	revb.d	$r15,$r20
1c08122c:	00002236 	clo.d	$r22,$r17
1c081230:	00001269 	clo.w	$r9,$r19
1c081234:	0000664b 	rdtimeh.w	$r11,$r18
1c081238:	00004dbc 	bitrev.8b	$r28,$r13
1c08123c:	0000140a 	clz.w	$r10,$r0
1c081240:	00004059 	revh.2w	$r25,$r2
1c081244:	00004caf 	bitrev.8b	$r15,$r5
1c081248:	00007f9e 	0x00007f9e
1c08124c:	00005fbc 	ext.w.b	$r28,$r29
1c081250:	00004f5a 	bitrev.8b	$r26,$r26
1c081254:	00001dcf 	ctz.w	$r15,$r14
1c081258:	000035d9 	revb.4h	$r25,$r14
1c08125c:	00003efe 	revb.d	$r30,$r23
1c081260:	00004fe1 	bitrev.8b	$r1,$r31
1c081264:	00006f66 	cpucfg	$r6,$r27
1c081268:	0000265d 	clz.d	$r29,$r18
1c08126c:	00003dd7 	revb.d	$r23,$r14
1c081270:	00000ca2 	0x00000ca2
1c081274:	00007773 	0x00007773
1c081278:	00004c4f 	bitrev.8b	$r15,$r2
1c08127c:	000058b2 	ext.w.h	$r18,$r5
1c081280:	000012a0 	clo.w	$r0,$r21
1c081284:	00000783 	0x00000783
1c081288:	000048b8 	bitrev.4b	$r24,$r5
1c08128c:	0000347b 	revb.4h	$r27,$r3
1c081290:	00007e27 	0x00007e27
1c081294:	00006f0e 	cpucfg	$r14,$r24
1c081298:	0000021f 	0x0000021f
1c08129c:	00007595 	0x00007595
1c0812a0:	0000106a 	clo.w	$r10,$r3
1c0812a4:	00003e78 	revb.d	$r24,$r19
1c0812a8:	00007029 	0x00007029
1c0812ac:	00005075 	bitrev.w	$r21,$r3
1c0812b0:	00003a2d 	revb.2w	$r13,$r17
1c0812b4:	00006d04 	cpucfg	$r4,$r8
1c0812b8:	00004fa2 	bitrev.8b	$r2,$r29
1c0812bc:	00002510 	clz.d	$r16,$r8
1c0812c0:	00006d49 	cpucfg	$r9,$r10
1c0812c4:	00006b9d 	rdtime.d	$r29,$r28
1c0812c8:	00002457 	clz.d	$r23,$r2
1c0812cc:	00006121 	rdtimel.w	$r1,$r9
1c0812d0:	000061f1 	rdtimel.w	$r17,$r15
1c0812d4:	00004b89 	bitrev.4b	$r9,$r28
1c0812d8:	00002c3d 	ctz.d	$r29,$r1
1c0812dc:	000014b5 	clz.w	$r21,$r5
1c0812e0:	0000314b 	revb.2h	$r11,$r10
1c0812e4:	00005e67 	ext.w.b	$r7,$r19
1c0812e8:	00005ba5 	ext.w.h	$r5,$r29
1c0812ec:	00005539 	bitrev.d	$r25,$r9
1c0812f0:	000020d5 	clo.d	$r21,$r6
1c0812f4:	00001019 	clo.w	$r25,$r0
1c0812f8:	0000717c 	0x0000717c
1c0812fc:	000017df 	clz.w	$r31,$r30
1c081300:	0000610c 	rdtimel.w	$r12,$r8
1c081304:	00005f75 	ext.w.b	$r21,$r27
1c081308:	00007b3f 	0x00007b3f
1c08130c:	00000f43 	0x00000f43
1c081310:	000023d2 	clo.d	$r18,$r30
1c081314:	00004107 	revh.2w	$r7,$r8
1c081318:	00006a54 	rdtime.d	$r20,$r18
1c08131c:	00003afe 	revb.2w	$r30,$r23
1c081320:	0000253a 	clz.d	$r26,$r9
1c081324:	000008c9 	0x000008c9
1c081328:	00005f4f 	ext.w.b	$r15,$r26
1c08132c:	00004821 	bitrev.4b	$r1,$r1
1c081330:	00001575 	clz.w	$r21,$r11
1c081334:	000042df 	revh.2w	$r31,$r22
1c081338:	00005083 	bitrev.w	$r3,$r4
1c08133c:	00004fa6 	bitrev.8b	$r6,$r29
1c081340:	00004d3d 	bitrev.8b	$r29,$r9
1c081344:	0000001c 	0x0000001c
1c081348:	000046f1 	revh.d	$r17,$r23
1c08134c:	00001903 	cto.w	$r3,$r8
1c081350:	0000323f 	revb.2h	$r31,$r17
1c081354:	00000639 	0x00000639
1c081358:	00002a5b 	cto.d	$r27,$r18
1c08135c:	0000597e 	ext.w.h	$r30,$r11
1c081360:	00001274 	clo.w	$r20,$r19
1c081364:	00002b7e 	cto.d	$r30,$r27
1c081368:	00001039 	clo.w	$r25,$r1
1c08136c:	0000154c 	clz.w	$r12,$r10
1c081370:	00004902 	bitrev.4b	$r2,$r8
1c081374:	00004020 	revh.2w	$r0,$r1
1c081378:	00000772 	0x00000772
1c08137c:	00005fd7 	ext.w.b	$r23,$r30
1c081380:	0000403e 	revh.2w	$r30,$r1
1c081384:	00005d0c 	ext.w.b	$r12,$r8
1c081388:	00004a9c 	bitrev.4b	$r28,$r20
1c08138c:	00006f69 	cpucfg	$r9,$r27
1c081390:	00006c7e 	cpucfg	$r30,$r3
1c081394:	000050ee 	bitrev.w	$r14,$r7
1c081398:	000039eb 	revb.2w	$r11,$r15
1c08139c:	000030af 	revb.2h	$r15,$r5
1c0813a0:	000059dd 	ext.w.h	$r29,$r14
1c0813a4:	00006457 	rdtimeh.w	$r23,$r2
1c0813a8:	00003e8a 	revb.d	$r10,$r20
1c0813ac:	00007162 	0x00007162
1c0813b0:	000062fe 	rdtimel.w	$r30,$r23
1c0813b4:	0000155c 	clz.w	$r28,$r10
1c0813b8:	0000701f 	0x0000701f
1c0813bc:	00003d5e 	revb.d	$r30,$r10
1c0813c0:	00006cc8 	cpucfg	$r8,$r6
1c0813c4:	00007e1b 	0x00007e1b
1c0813c8:	00006734 	rdtimeh.w	$r20,$r25
1c0813cc:	00003bd5 	revb.2w	$r21,$r30
1c0813d0:	000048cf 	bitrev.4b	$r15,$r6
1c0813d4:	000055b7 	bitrev.d	$r23,$r13
1c0813d8:	00004d80 	bitrev.8b	$r0,$r12
1c0813dc:	00004367 	revh.2w	$r7,$r27
1c0813e0:	00007018 	0x00007018
1c0813e4:	00005f25 	ext.w.b	$r5,$r25
1c0813e8:	0000507e 	bitrev.w	$r30,$r3
1c0813ec:	0000250e 	clz.d	$r14,$r8
1c0813f0:	000003a9 	0x000003a9
1c0813f4:	00001040 	clo.w	$r0,$r2
1c0813f8:	00001375 	clo.w	$r21,$r27
1c0813fc:	00001b6b 	cto.w	$r11,$r27
1c081400:	000055f0 	bitrev.d	$r16,$r15
1c081404:	00004501 	revh.d	$r1,$r8
1c081408:	00007925 	0x00007925
1c08140c:	000010a4 	clo.w	$r4,$r5
1c081410:	00002979 	cto.d	$r25,$r11
1c081414:	00007862 	0x00007862
1c081418:	00004706 	revh.d	$r6,$r24
1c08141c:	00001d8d 	ctz.w	$r13,$r12
1c081420:	000041c0 	revh.2w	$r0,$r14
1c081424:	00005012 	bitrev.w	$r18,$r0
1c081428:	00001c09 	ctz.w	$r9,$r0
1c08142c:	000037d5 	revb.4h	$r21,$r30
1c081430:	00004df9 	bitrev.8b	$r25,$r15
1c081434:	00005e9f 	ext.w.b	$r31,$r20
1c081438:	00004856 	bitrev.4b	$r22,$r2
1c08143c:	000064de 	rdtimeh.w	$r30,$r6
1c081440:	000057c7 	bitrev.d	$r7,$r30
1c081444:	00000008 	0x00000008
1c081448:	00004bb4 	bitrev.4b	$r20,$r29
1c08144c:	00005c47 	ext.w.b	$r7,$r2
1c081450:	0000089a 	0x0000089a
1c081454:	000055cd 	bitrev.d	$r13,$r14
1c081458:	0000526e 	bitrev.w	$r14,$r19
1c08145c:	0000690f 	rdtime.d	$r15,$r8
1c081460:	00001d05 	ctz.w	$r5,$r8
1c081464:	00007574 	0x00007574
1c081468:	00005490 	bitrev.d	$r16,$r4
1c08146c:	00000ba4 	0x00000ba4
1c081470:	0000014f 	0x0000014f
1c081474:	000013ea 	clo.w	$r10,$r31
1c081478:	00001a22 	cto.w	$r2,$r17
1c08147c:	0000722f 	0x0000722f
1c081480:	0000177c 	clz.w	$r28,$r27
1c081484:	0000243f 	clz.d	$r31,$r1
1c081488:	00000164 	0x00000164
1c08148c:	0000753a 	0x0000753a
1c081490:	00007a91 	0x00007a91
1c081494:	00001fc5 	ctz.w	$r5,$r30
1c081498:	00006ee3 	cpucfg	$r3,$r23
1c08149c:	0000495e 	bitrev.4b	$r30,$r10
1c0814a0:	00000ac8 	0x00000ac8
1c0814a4:	000024ec 	clz.d	$r12,$r7
1c0814a8:	00005d1d 	ext.w.b	$r29,$r8
1c0814ac:	0000448e 	revh.d	$r14,$r4
1c0814b0:	00007235 	0x00007235
1c0814b4:	00001ccc 	ctz.w	$r12,$r6
1c0814b8:	000050a2 	bitrev.w	$r2,$r5
1c0814bc:	00000dab 	0x00000dab
1c0814c0:	00007e90 	0x00007e90
1c0814c4:	00003f40 	revb.d	$r0,$r26
1c0814c8:	0000316d 	revb.2h	$r13,$r11
1c0814cc:	00003231 	revb.2h	$r17,$r17
1c0814d0:	00005444 	bitrev.d	$r4,$r2
1c0814d4:	00007765 	0x00007765
1c0814d8:	000049c7 	bitrev.4b	$r7,$r14
1c0814dc:	0000581a 	ext.w.h	$r26,$r0
1c0814e0:	000052a0 	bitrev.w	$r0,$r21
1c0814e4:	00003cee 	revb.d	$r14,$r7
1c0814e8:	00005629 	bitrev.d	$r9,$r17
1c0814ec:	000078d6 	0x000078d6
1c0814f0:	00005ce1 	ext.w.b	$r1,$r7
1c0814f4:	00005de5 	ext.w.b	$r5,$r15
1c0814f8:	000015e2 	clz.w	$r2,$r15
1c0814fc:	00006140 	rdtimel.w	$r0,$r10
1c081500:	0000583b 	ext.w.h	$r27,$r1
1c081504:	00003cd3 	revb.d	$r19,$r6
1c081508:	00001d92 	ctz.w	$r18,$r12
1c08150c:	00002258 	clo.d	$r24,$r18
1c081510:	00006cb6 	cpucfg	$r22,$r5
1c081514:	00006f30 	cpucfg	$r16,$r25
1c081518:	00000841 	0x00000841
1c08151c:	0000149a 	clz.w	$r26,$r4
1c081520:	00004ae4 	bitrev.4b	$r4,$r23
1c081524:	000067e5 	rdtimeh.w	$r5,$r31
1c081528:	00000fd0 	0x00000fd0
1c08152c:	00007b31 	0x00007b31
1c081530:	0000764a 	0x0000764a
1c081534:	00003792 	revb.4h	$r18,$r28
1c081538:	0000174b 	clz.w	$r11,$r26
1c08153c:	00000df7 	0x00000df7
1c081540:	00007da2 	0x00007da2
1c081544:	00003db9 	revb.d	$r25,$r13
1c081548:	00006f1f 	cpucfg	$r31,$r24
1c08154c:	0000008c 	0x0000008c
1c081550:	00003863 	revb.2w	$r3,$r3
1c081554:	00000abb 	0x00000abb
1c081558:	00003e44 	revb.d	$r4,$r18
1c08155c:	000010ca 	clo.w	$r10,$r6
1c081560:	00006e21 	cpucfg	$r1,$r17
1c081564:	00005cb2 	ext.w.b	$r18,$r5
1c081568:	000058eb 	ext.w.h	$r11,$r7
1c08156c:	00005950 	ext.w.h	$r16,$r10
1c081570:	00007066 	0x00007066
1c081574:	00006697 	rdtimeh.w	$r23,$r20
1c081578:	00000f3e 	0x00000f3e
1c08157c:	00006ae8 	rdtime.d	$r8,$r23
1c081580:	00004cde 	bitrev.8b	$r30,$r6
1c081584:	00004a13 	bitrev.4b	$r19,$r16
1c081588:	000053d8 	bitrev.w	$r24,$r30
1c08158c:	00003374 	revb.2h	$r20,$r27
1c081590:	000029b7 	cto.d	$r23,$r13
1c081594:	00005dbb 	ext.w.b	$r27,$r13
1c081598:	0000676a 	rdtimeh.w	$r10,$r27
1c08159c:	00000736 	0x00000736
1c0815a0:	00002237 	clo.d	$r23,$r17
1c0815a4:	000008a4 	0x000008a4
1c0815a8:	00007f27 	0x00007f27
1c0815ac:	00000257 	0x00000257
1c0815b0:	00005e2f 	ext.w.b	$r15,$r17
1c0815b4:	000038ed 	revb.2w	$r13,$r7
1c0815b8:	00002560 	clz.d	$r0,$r11
1c0815bc:	00007ff2 	0x00007ff2
1c0815c0:	00000e1f 	0x00000e1f
1c0815c4:	0000354f 	revb.4h	$r15,$r10
1c0815c8:	000015f8 	clz.w	$r24,$r15
1c0815cc:	00000cc6 	0x00000cc6
1c0815d0:	0000618b 	rdtimel.w	$r11,$r12
1c0815d4:	0000096c 	0x0000096c
1c0815d8:	00005b9a 	ext.w.h	$r26,$r28
1c0815dc:	00007a46 	0x00007a46
1c0815e0:	000035a9 	revb.4h	$r9,$r13
1c0815e4:	0000273a 	clz.d	$r26,$r25
1c0815e8:	000010f8 	clo.w	$r24,$r7
1c0815ec:	00005cf0 	ext.w.b	$r16,$r7
1c0815f0:	00005493 	bitrev.d	$r19,$r4
1c0815f4:	00002610 	clz.d	$r16,$r16
1c0815f8:	0000045e 	0x0000045e
1c0815fc:	000058c7 	ext.w.h	$r7,$r6
1c081600:	000024ca 	clz.d	$r10,$r6
1c081604:	00006a52 	rdtime.d	$r18,$r18
1c081608:	00006ee0 	cpucfg	$r0,$r23
1c08160c:	000002e5 	0x000002e5
1c081610:	00002550 	clz.d	$r16,$r10
1c081614:	00005eac 	ext.w.b	$r12,$r21
1c081618:	00001079 	clo.w	$r25,$r3
1c08161c:	0000479b 	revh.d	$r27,$r28
1c081620:	00006944 	rdtime.d	$r4,$r10
1c081624:	0000475a 	revh.d	$r26,$r26
1c081628:	00001e4f 	ctz.w	$r15,$r18
1c08162c:	000017c4 	clz.w	$r4,$r30
1c081630:	0000725c 	0x0000725c
1c081634:	000043a7 	revh.2w	$r7,$r29
1c081638:	000044b7 	revh.d	$r23,$r5
1c08163c:	00001b60 	cto.w	$r0,$r27
1c081640:	00000bf8 	0x00000bf8
1c081644:	0000732c 	0x0000732c
1c081648:	000020ad 	clo.d	$r13,$r5
1c08164c:	000071a1 	0x000071a1
1c081650:	0000399c 	revb.2w	$r28,$r12
1c081654:	0000511a 	bitrev.w	$r26,$r8
1c081658:	00004f93 	bitrev.8b	$r19,$r28
1c08165c:	000079f6 	0x000079f6
1c081660:	000048cd 	bitrev.4b	$r13,$r6
1c081664:	0000299f 	cto.d	$r31,$r12
1c081668:	00002f79 	ctz.d	$r25,$r27
1c08166c:	00006537 	rdtimeh.w	$r23,$r9
1c081670:	000039e1 	revb.2w	$r1,$r15
1c081674:	000002f8 	0x000002f8
1c081678:	00001863 	cto.w	$r3,$r3
1c08167c:	000067e7 	rdtimeh.w	$r7,$r31
1c081680:	000014fd 	clz.w	$r29,$r7
1c081684:	00003b73 	revb.2w	$r19,$r27
1c081688:	00002b87 	cto.d	$r7,$r28
1c08168c:	00007647 	0x00007647
1c081690:	00005ce6 	ext.w.b	$r6,$r7
1c081694:	00002985 	cto.d	$r5,$r12
1c081698:	000005da 	0x000005da
1c08169c:	00000a16 	0x00000a16
1c0816a0:	00006d30 	cpucfg	$r16,$r9
1c0816a4:	00001254 	clo.w	$r20,$r18
1c0816a8:	0000695e 	rdtime.d	$r30,$r10
1c0816ac:	00006372 	rdtimel.w	$r18,$r27
1c0816b0:	00001824 	cto.w	$r4,$r1
1c0816b4:	00000e75 	0x00000e75
1c0816b8:	00007f93 	0x00007f93
1c0816bc:	000044e3 	revh.d	$r3,$r7
1c0816c0:	00004fb2 	bitrev.8b	$r18,$r29
1c0816c4:	00000b21 	0x00000b21
1c0816c8:	000062ba 	rdtimel.w	$r26,$r21
1c0816cc:	00005ef0 	ext.w.b	$r16,$r23
1c0816d0:	000024be 	clz.d	$r30,$r5
1c0816d4:	00005b3d 	ext.w.h	$r29,$r25
1c0816d8:	00004882 	bitrev.4b	$r2,$r4
1c0816dc:	0000701d 	0x0000701d
1c0816e0:	00001e1e 	ctz.w	$r30,$r16
1c0816e4:	000064b4 	rdtimeh.w	$r20,$r5
1c0816e8:	000005f4 	0x000005f4
1c0816ec:	00000859 	0x00000859
1c0816f0:	00002c57 	ctz.d	$r23,$r2
1c0816f4:	000050ff 	bitrev.w	$r31,$r7
1c0816f8:	00003440 	revb.4h	$r0,$r2
1c0816fc:	000074d3 	0x000074d3
1c081700:	00001daf 	ctz.w	$r15,$r13
1c081704:	0000739e 	0x0000739e
1c081708:	00005cdc 	ext.w.b	$r28,$r6
1c08170c:	0000498a 	bitrev.4b	$r10,$r12
1c081710:	000050b6 	bitrev.w	$r22,$r5
1c081714:	00003a01 	revb.2w	$r1,$r16
1c081718:	0000508d 	bitrev.w	$r13,$r4
1c08171c:	00001646 	clz.w	$r6,$r18
1c081720:	00002314 	clo.d	$r20,$r24
1c081724:	00002d18 	ctz.d	$r24,$r8
1c081728:	000041ac 	revh.2w	$r12,$r13
1c08172c:	000038f4 	revb.2w	$r20,$r7
1c081730:	000078c2 	0x000078c2
1c081734:	00005f36 	ext.w.b	$r22,$r25
1c081738:	0000274c 	clz.d	$r12,$r26
1c08173c:	00003197 	revb.2h	$r23,$r12
1c081740:	00007620 	0x00007620
1c081744:	00006935 	rdtime.d	$r21,$r9
1c081748:	00005ae1 	ext.w.h	$r1,$r23
1c08174c:	00003d80 	revb.d	$r0,$r12
1c081750:	000043c8 	revh.2w	$r8,$r30
1c081754:	0000445a 	revh.d	$r26,$r2
1c081758:	00004ea7 	bitrev.8b	$r7,$r21
1c08175c:	000010d0 	clo.w	$r16,$r6
1c081760:	00000014 	0x00000014
1c081764:	0000469d 	revh.d	$r29,$r20
1c081768:	000040f0 	revh.2w	$r16,$r7
1c08176c:	00000ce5 	0x00000ce5
1c081770:	00006730 	rdtimeh.w	$r16,$r25
1c081774:	00002a0d 	cto.d	$r13,$r16
1c081778:	00001473 	clz.w	$r19,$r3
1c08177c:	00003d22 	revb.d	$r2,$r9
1c081780:	000039ec 	revb.2w	$r12,$r15
1c081784:	000079e1 	0x000079e1
1c081788:	00007065 	0x00007065
1c08178c:	00003c03 	revb.d	$r3,$r0
1c081790:	00002f2a 	ctz.d	$r10,$r25
1c081794:	00002bcd 	cto.d	$r13,$r30
1c081798:	00004c07 	bitrev.8b	$r7,$r0
1c08179c:	00002fb8 	ctz.d	$r24,$r29
1c0817a0:	00001dca 	ctz.w	$r10,$r14
1c0817a4:	00006ead 	cpucfg	$r13,$r21
1c0817a8:	000044f8 	revh.d	$r24,$r7
1c0817ac:	00004c6f 	bitrev.8b	$r15,$r3
1c0817b0:	00004723 	revh.d	$r3,$r25
1c0817b4:	000008a5 	0x000008a5
1c0817b8:	000041b2 	revh.2w	$r18,$r13
1c0817bc:	00004611 	revh.d	$r17,$r16
1c0817c0:	00004998 	bitrev.4b	$r24,$r12
1c0817c4:	00005e84 	ext.w.b	$r4,$r20
1c0817c8:	000071bb 	0x000071bb
1c0817cc:	00004a8e 	bitrev.4b	$r14,$r20
1c0817d0:	00000c49 	0x00000c49
1c0817d4:	00005792 	bitrev.d	$r18,$r28
1c0817d8:	00000eae 	0x00000eae
1c0817dc:	0000014b 	0x0000014b
1c0817e0:	000022b1 	clo.d	$r17,$r21
1c0817e4:	000069ab 	rdtime.d	$r11,$r13
1c0817e8:	000035b9 	revb.4h	$r25,$r13
1c0817ec:	0000389c 	revb.2w	$r28,$r4
1c0817f0:	000054b6 	bitrev.d	$r22,$r5
1c0817f4:	000015f4 	clz.w	$r20,$r15
1c0817f8:	00007366 	0x00007366
1c0817fc:	00000afb 	0x00000afb
1c081800:	000036e1 	revb.4h	$r1,$r23
1c081804:	00002e0f 	ctz.d	$r15,$r16
1c081808:	00007a8e 	0x00007a8e
1c08180c:	000020fe 	clo.d	$r30,$r7
1c081810:	0000532f 	bitrev.w	$r15,$r25
1c081814:	000000ab 	0x000000ab
1c081818:	00002c8e 	ctz.d	$r14,$r4
1c08181c:	00006594 	rdtimeh.w	$r20,$r12
1c081820:	0000135f 	clo.w	$r31,$r26
1c081824:	00007af5 	0x00007af5
1c081828:	000026a7 	clz.d	$r7,$r21
1c08182c:	00006c45 	cpucfg	$r5,$r2
1c081830:	0000659e 	rdtimeh.w	$r30,$r12
1c081834:	00002986 	cto.d	$r6,$r12
1c081838:	0000783c 	0x0000783c
1c08183c:	0000081f 	0x0000081f
1c081840:	00006f32 	cpucfg	$r18,$r25
1c081844:	0000685a 	rdtime.d	$r26,$r2
1c081848:	000017da 	clz.w	$r26,$r30
1c08184c:	000044b6 	revh.d	$r22,$r5
1c081850:	00005f16 	ext.w.b	$r22,$r24
1c081854:	00007173 	0x00007173
1c081858:	000007b8 	0x000007b8
1c08185c:	000062f3 	rdtimel.w	$r19,$r23
1c081860:	000071e6 	0x000071e6
1c081864:	0000062f 	0x0000062f
1c081868:	00003280 	revb.2h	$r0,$r20
1c08186c:	000017b7 	clz.w	$r23,$r29
1c081870:	000044ad 	revh.d	$r13,$r5
1c081874:	000070c1 	0x000070c1
1c081878:	0000339a 	revb.2h	$r26,$r28
1c08187c:	00006d69 	cpucfg	$r9,$r11
1c081880:	00005130 	bitrev.w	$r16,$r9
1c081884:	00006aad 	rdtime.d	$r13,$r21
1c081888:	00004c2b 	bitrev.8b	$r11,$r1
1c08188c:	00006302 	rdtimel.w	$r2,$r24
1c081890:	00005989 	ext.w.h	$r9,$r12
1c081894:	00006f95 	cpucfg	$r21,$r28
1c081898:	00005f33 	ext.w.b	$r19,$r25
1c08189c:	000051fd 	bitrev.w	$r29,$r15
1c0818a0:	0000643d 	rdtimeh.w	$r29,$r1
1c0818a4:	00002f69 	ctz.d	$r9,$r27
1c0818a8:	0000441a 	revh.d	$r26,$r0
1c0818ac:	00004220 	revh.2w	$r0,$r17
1c0818b0:	00000810 	0x00000810
1c0818b4:	00001cd7 	ctz.w	$r23,$r6
1c0818b8:	0000418d 	revh.2w	$r13,$r12
1c0818bc:	0000560b 	bitrev.d	$r11,$r16
1c0818c0:	00000d44 	0x00000d44
1c0818c4:	00001170 	clo.w	$r16,$r11
1c0818c8:	000017a6 	clz.w	$r6,$r29
1c0818cc:	00003277 	revb.2h	$r23,$r19
1c0818d0:	00004bca 	bitrev.4b	$r10,$r30
1c0818d4:	00000e80 	0x00000e80
1c0818d8:	00001a7e 	cto.w	$r30,$r19
1c0818dc:	00007d53 	0x00007d53
1c0818e0:	000024ca 	clz.d	$r10,$r6
1c0818e4:	00007edf 	0x00007edf
1c0818e8:	00000ce9 	0x00000ce9
1c0818ec:	00006096 	rdtimel.w	$r22,$r4
1c0818f0:	00004a74 	bitrev.4b	$r20,$r19
1c0818f4:	0000326d 	revb.2h	$r13,$r19
1c0818f8:	000051ba 	bitrev.w	$r26,$r13
1c0818fc:	00004af6 	bitrev.4b	$r22,$r23
1c081900:	00002fea 	ctz.d	$r10,$r31
1c081904:	00007b78 	0x00007b78
1c081908:	00004bcc 	bitrev.4b	$r12,$r30
1c08190c:	00007b5d 	0x00007b5d
1c081910:	0000573b 	bitrev.d	$r27,$r25
1c081914:	00000f72 	0x00000f72
1c081918:	00005b76 	ext.w.h	$r22,$r27
1c08191c:	00006fab 	cpucfg	$r11,$r29
1c081920:	00006ab2 	rdtime.d	$r18,$r21
1c081924:	000017f3 	clz.w	$r19,$r31
1c081928:	00001587 	clz.w	$r7,$r12
1c08192c:	0000724d 	0x0000724d
1c081930:	00004add 	bitrev.4b	$r29,$r22
1c081934:	000042ff 	revh.2w	$r31,$r23
1c081938:	000031f6 	revb.2h	$r22,$r15
1c08193c:	000050bb 	bitrev.w	$r27,$r5
1c081940:	00004e68 	bitrev.8b	$r8,$r19
1c081944:	00005f90 	ext.w.b	$r16,$r28
1c081948:	00002165 	clo.d	$r5,$r11
1c08194c:	0000221e 	clo.d	$r30,$r16
1c081950:	0000255b 	clz.d	$r27,$r10
1c081954:	00003581 	revb.4h	$r1,$r12
1c081958:	00005b4a 	ext.w.h	$r10,$r26
1c08195c:	00001c89 	ctz.w	$r9,$r4
1c081960:	000010f1 	clo.w	$r17,$r7
1c081964:	000014d3 	clz.w	$r19,$r6
1c081968:	00007d65 	0x00007d65
1c08196c:	000015fb 	clz.w	$r27,$r15
1c081970:	000065b0 	rdtimeh.w	$r16,$r13
1c081974:	000051d5 	bitrev.w	$r21,$r14
1c081978:	000025a3 	clz.d	$r3,$r13
1c08197c:	00001d46 	ctz.w	$r6,$r10
1c081980:	000005c8 	0x000005c8
1c081984:	0000536f 	bitrev.w	$r15,$r27
1c081988:	00007048 	0x00007048
1c08198c:	00005ad8 	ext.w.h	$r24,$r22
1c081990:	0000636f 	rdtimel.w	$r15,$r27
1c081994:	00005b53 	ext.w.h	$r19,$r26
1c081998:	00000048 	0x00000048
1c08199c:	0000216d 	clo.d	$r13,$r11
1c0819a0:	00004f5b 	bitrev.8b	$r27,$r26
1c0819a4:	000017df 	clz.w	$r31,$r30
1c0819a8:	00007072 	0x00007072
1c0819ac:	00006caf 	cpucfg	$r15,$r5
1c0819b0:	00007fd6 	0x00007fd6
1c0819b4:	00001702 	clz.w	$r2,$r24
1c0819b8:	00005d80 	ext.w.b	$r0,$r12
1c0819bc:	00003d3c 	revb.d	$r28,$r9
1c0819c0:	00006614 	rdtimeh.w	$r20,$r16
1c0819c4:	00005be1 	ext.w.h	$r1,$r31
1c0819c8:	000055c0 	bitrev.d	$r0,$r14
1c0819cc:	00005354 	bitrev.w	$r20,$r26
1c0819d0:	000059ea 	ext.w.h	$r10,$r15
1c0819d4:	0000640d 	rdtimeh.w	$r13,$r0
1c0819d8:	000057da 	bitrev.d	$r26,$r30
1c0819dc:	00004e0c 	bitrev.8b	$r12,$r16
1c0819e0:	000046fe 	revh.d	$r30,$r23
1c0819e4:	0000724b 	0x0000724b
1c0819e8:	000055a9 	bitrev.d	$r9,$r13
1c0819ec:	00007f97 	0x00007f97
1c0819f0:	00006acf 	rdtime.d	$r15,$r22
1c0819f4:	0000787a 	0x0000787a
1c0819f8:	000038d8 	revb.2w	$r24,$r6
1c0819fc:	000016de 	clz.w	$r30,$r22
1c081a00:	00001749 	clz.w	$r9,$r26
1c081a04:	000010cd 	clo.w	$r13,$r6
1c081a08:	0000533b 	bitrev.w	$r27,$r25
1c081a0c:	0000139e 	clo.w	$r30,$r28
1c081a10:	00000f71 	0x00000f71
1c081a14:	00000867 	0x00000867
1c081a18:	00005703 	bitrev.d	$r3,$r24
1c081a1c:	00002a2d 	cto.d	$r13,$r17
1c081a20:	0000107a 	clo.w	$r26,$r3
1c081a24:	00006b4b 	rdtime.d	$r11,$r26
1c081a28:	00002a3c 	cto.d	$r28,$r17
1c081a2c:	00007cc0 	0x00007cc0
1c081a30:	00006815 	rdtime.d	$r21,$r0
1c081a34:	00007197 	0x00007197
1c081a38:	00003825 	revb.2w	$r5,$r1
1c081a3c:	00002704 	clz.d	$r4,$r24
1c081a40:	0000303f 	revb.2h	$r31,$r1
1c081a44:	00003730 	revb.4h	$r16,$r25
1c081a48:	00006503 	rdtimeh.w	$r3,$r8
1c081a4c:	0000504b 	bitrev.w	$r11,$r2
1c081a50:	00003164 	revb.2h	$r4,$r11
1c081a54:	00005a27 	ext.w.h	$r7,$r17
1c081a58:	000078bb 	0x000078bb
1c081a5c:	00007ec9 	0x00007ec9
1c081a60:	00000940 	0x00000940
1c081a64:	00007b86 	0x00007b86
1c081a68:	00006496 	rdtimeh.w	$r22,$r4
1c081a6c:	00007cae 	0x00007cae
1c081a70:	00002dda 	ctz.d	$r26,$r14
1c081a74:	00000781 	0x00000781
1c081a78:	00007dd1 	0x00007dd1
1c081a7c:	00007ae7 	0x00007ae7
1c081a80:	0000226c 	clo.d	$r12,$r19
1c081a84:	00000faf 	0x00000faf
1c081a88:	0000726d 	0x0000726d
1c081a8c:	00002c44 	ctz.d	$r4,$r2
1c081a90:	00004b31 	bitrev.4b	$r17,$r25
1c081a94:	00001e5a 	ctz.w	$r26,$r18
1c081a98:	00006b00 	rdtime.d	$r0,$r24
1c081a9c:	00006e6c 	cpucfg	$r12,$r19
1c081aa0:	000026ab 	clz.d	$r11,$r21
1c081aa4:	0000755d 	0x0000755d
1c081aa8:	00004b11 	bitrev.4b	$r17,$r24
1c081aac:	00000ed9 	0x00000ed9
1c081ab0:	00006d62 	cpucfg	$r2,$r11
1c081ab4:	00007f68 	0x00007f68
1c081ab8:	000024ac 	clz.d	$r12,$r5
1c081abc:	00006d87 	cpucfg	$r7,$r12
1c081ac0:	00005cdc 	ext.w.b	$r28,$r6
1c081ac4:	000027b9 	clz.d	$r25,$r29
1c081ac8:	000005f0 	0x000005f0
1c081acc:	00007c8e 	0x00007c8e
1c081ad0:	0000079e 	0x0000079e
1c081ad4:	00003e10 	revb.d	$r16,$r16
1c081ad8:	00003727 	revb.4h	$r7,$r25
1c081adc:	00001628 	clz.w	$r8,$r17
1c081ae0:	00005c0b 	ext.w.b	$r11,$r0
1c081ae4:	000009ef 	0x000009ef
1c081ae8:	000052af 	bitrev.w	$r15,$r21
1c081aec:	00000c71 	0x00000c71
1c081af0:	00002a34 	cto.d	$r20,$r17
1c081af4:	00006a06 	rdtime.d	$r6,$r16
1c081af8:	000066c8 	rdtimeh.w	$r8,$r22
1c081afc:	0000015b 	0x0000015b
1c081b00:	000047d5 	revh.d	$r21,$r30
1c081b04:	000012ff 	clo.w	$r31,$r23
1c081b08:	000052c0 	bitrev.w	$r0,$r22
1c081b0c:	0000670c 	rdtimeh.w	$r12,$r24
1c081b10:	00000b30 	0x00000b30
1c081b14:	00001c75 	ctz.w	$r21,$r3
1c081b18:	00001ecc 	ctz.w	$r12,$r22
1c081b1c:	00002504 	clz.d	$r4,$r8
1c081b20:	0000736b 	0x0000736b
1c081b24:	00002d25 	ctz.d	$r5,$r9
1c081b28:	00001bd8 	cto.w	$r24,$r30
1c081b2c:	000057c8 	bitrev.d	$r8,$r30
1c081b30:	00004138 	revh.2w	$r24,$r9
1c081b34:	000060ae 	rdtimel.w	$r14,$r5
1c081b38:	00007ac8 	0x00007ac8
1c081b3c:	00003734 	revb.4h	$r20,$r25
1c081b40:	00006ad0 	rdtime.d	$r16,$r22
1c081b44:	000028bc 	cto.d	$r28,$r5
1c081b48:	000001c9 	0x000001c9
1c081b4c:	00007a18 	0x00007a18
1c081b50:	00005e0c 	ext.w.b	$r12,$r16
1c081b54:	0000104e 	clo.w	$r14,$r2
1c081b58:	0000491b 	bitrev.4b	$r27,$r8
1c081b5c:	0000377e 	revb.4h	$r30,$r27
1c081b60:	0000090b 	0x0000090b
1c081b64:	000067dc 	rdtimeh.w	$r28,$r30
1c081b68:	00005201 	bitrev.w	$r1,$r16
1c081b6c:	00006335 	rdtimel.w	$r21,$r25
1c081b70:	00007c9f 	0x00007c9f
1c081b74:	00007746 	0x00007746
1c081b78:	000062d8 	rdtimel.w	$r24,$r22
1c081b7c:	000030e4 	revb.2h	$r4,$r7
1c081b80:	000007c0 	0x000007c0
1c081b84:	00001557 	clz.w	$r23,$r10
1c081b88:	00002444 	clz.d	$r4,$r2
1c081b8c:	00004b21 	bitrev.4b	$r1,$r25
1c081b90:	00002f1c 	ctz.d	$r28,$r24
1c081b94:	00007dd3 	0x00007dd3
1c081b98:	00005873 	ext.w.h	$r19,$r3
1c081b9c:	00003316 	revb.2h	$r22,$r24
1c081ba0:	000026cd 	clz.d	$r13,$r22
1c081ba4:	00000d0c 	0x00000d0c
1c081ba8:	00005773 	bitrev.d	$r19,$r27
1c081bac:	00001b8c 	cto.w	$r12,$r28
1c081bb0:	000027bc 	clz.d	$r28,$r29
1c081bb4:	00007376 	0x00007376
1c081bb8:	00001ec3 	ctz.w	$r3,$r22
1c081bbc:	00006e01 	cpucfg	$r1,$r16
1c081bc0:	00005cb9 	ext.w.b	$r25,$r5
1c081bc4:	00001a75 	cto.w	$r21,$r19
1c081bc8:	00003ed8 	revb.d	$r24,$r22
1c081bcc:	00001dcd 	ctz.w	$r13,$r14
1c081bd0:	000025ed 	clz.d	$r13,$r15
1c081bd4:	00001c32 	ctz.w	$r18,$r1
1c081bd8:	00003a68 	revb.2w	$r8,$r19
1c081bdc:	00004b7e 	bitrev.4b	$r30,$r27
1c081be0:	0000060b 	0x0000060b
1c081be4:	00006bb2 	rdtime.d	$r18,$r29
1c081be8:	00001d8d 	ctz.w	$r13,$r12
1c081bec:	00004a84 	bitrev.4b	$r4,$r20
1c081bf0:	00005b3b 	ext.w.h	$r27,$r25
1c081bf4:	000042b6 	revh.2w	$r22,$r21
1c081bf8:	00000ab0 	0x00000ab0
1c081bfc:	00006d79 	cpucfg	$r25,$r11
1c081c00:	00006cf0 	cpucfg	$r16,$r7
1c081c04:	00002054 	clo.d	$r20,$r2
1c081c08:	0000443e 	revh.d	$r30,$r1
1c081c0c:	00001ab4 	cto.w	$r20,$r21
1c081c10:	00003fb7 	revb.d	$r23,$r29
1c081c14:	00004f1e 	bitrev.8b	$r30,$r24
1c081c18:	0000111a 	clo.w	$r26,$r8
1c081c1c:	00006c27 	cpucfg	$r7,$r1
1c081c20:	00001afe 	cto.w	$r30,$r23
1c081c24:	00003e4e 	revb.d	$r14,$r18
1c081c28:	00001d14 	ctz.w	$r20,$r8
1c081c2c:	00003a3d 	revb.2w	$r29,$r17
1c081c30:	00002468 	clz.d	$r8,$r3
1c081c34:	0000772b 	0x0000772b
1c081c38:	00000381 	0x00000381
1c081c3c:	00003709 	revb.4h	$r9,$r24
1c081c40:	00000d42 	0x00000d42
1c081c44:	00002b5d 	cto.d	$r29,$r26
1c081c48:	00001227 	clo.w	$r7,$r17
1c081c4c:	00007eb6 	0x00007eb6
1c081c50:	000037ed 	revb.4h	$r13,$r31
1c081c54:	000065d7 	rdtimeh.w	$r23,$r14
1c081c58:	00002e2b 	ctz.d	$r11,$r17
1c081c5c:	00002f18 	ctz.d	$r24,$r24
1c081c60:	00002efd 	ctz.d	$r29,$r23
1c081c64:	00000abd 	0x00000abd
1c081c68:	000048bc 	bitrev.4b	$r28,$r5
1c081c6c:	000067bb 	rdtimeh.w	$r27,$r29
1c081c70:	00005341 	bitrev.w	$r1,$r26
1c081c74:	0000170b 	clz.w	$r11,$r24
1c081c78:	000074e7 	0x000074e7
1c081c7c:	00000e61 	0x00000e61
1c081c80:	0000495d 	bitrev.4b	$r29,$r10
1c081c84:	0000195c 	cto.w	$r28,$r10
1c081c88:	000017be 	clz.w	$r30,$r29
1c081c8c:	000069bc 	rdtime.d	$r28,$r13
1c081c90:	00006556 	rdtimeh.w	$r22,$r10
1c081c94:	00003193 	revb.2h	$r19,$r12
1c081c98:	00000128 	0x00000128
1c081c9c:	00000c77 	0x00000c77
1c081ca0:	000000e3 	0x000000e3
1c081ca4:	00000183 	0x00000183
1c081ca8:	00006154 	rdtimel.w	$r20,$r10
1c081cac:	000010b2 	clo.w	$r18,$r5
1c081cb0:	00004190 	revh.2w	$r16,$r12
1c081cb4:	0000226d 	clo.d	$r13,$r19
1c081cb8:	00004990 	bitrev.4b	$r16,$r12
1c081cbc:	00003eae 	revb.d	$r14,$r21
1c081cc0:	000038be 	revb.2w	$r30,$r5
1c081cc4:	00000ca5 	0x00000ca5
1c081cc8:	00006ea0 	cpucfg	$r0,$r21
1c081ccc:	000019f9 	cto.w	$r25,$r15
1c081cd0:	00006ec4 	cpucfg	$r4,$r22
1c081cd4:	00005b06 	ext.w.h	$r6,$r24
1c081cd8:	00002224 	clo.d	$r4,$r17
1c081cdc:	00003bf9 	revb.2w	$r25,$r31
1c081ce0:	00007969 	0x00007969
1c081ce4:	00001156 	clo.w	$r22,$r10
1c081ce8:	00000255 	0x00000255
1c081cec:	00005858 	ext.w.h	$r24,$r2
1c081cf0:	00004d02 	bitrev.8b	$r2,$r8
1c081cf4:	000013bb 	clo.w	$r27,$r29
1c081cf8:	00007ba5 	0x00007ba5
1c081cfc:	00006790 	rdtimeh.w	$r16,$r28
1c081d00:	000067fa 	rdtimeh.w	$r26,$r31
1c081d04:	00006f55 	cpucfg	$r21,$r26
1c081d08:	00005e57 	ext.w.b	$r23,$r18
1c081d0c:	00005cb7 	ext.w.b	$r23,$r5
1c081d10:	0000263a 	clz.d	$r26,$r17
1c081d14:	00005802 	ext.w.h	$r2,$r0
1c081d18:	00002f52 	ctz.d	$r18,$r26
1c081d1c:	00007a61 	0x00007a61
1c081d20:	00002f34 	ctz.d	$r20,$r25
1c081d24:	00003fb6 	revb.d	$r22,$r29
1c081d28:	00001878 	cto.w	$r24,$r3
1c081d2c:	00000b77 	0x00000b77
1c081d30:	000065f6 	rdtimeh.w	$r22,$r15
1c081d34:	000046c6 	revh.d	$r6,$r22
1c081d38:	00002f60 	ctz.d	$r0,$r27
1c081d3c:	00007452 	0x00007452
1c081d40:	000077cd 	0x000077cd
1c081d44:	000068ef 	rdtime.d	$r15,$r7
1c081d48:	00007532 	0x00007532
1c081d4c:	00006d9f 	cpucfg	$r31,$r12
1c081d50:	00003cb1 	revb.d	$r17,$r5
1c081d54:	00002bf5 	cto.d	$r21,$r31
1c081d58:	0000031d 	0x0000031d
1c081d5c:	000007b9 	0x000007b9
1c081d60:	000031fa 	revb.2h	$r26,$r15
1c081d64:	0000524a 	bitrev.w	$r10,$r18
1c081d68:	00001ed8 	ctz.w	$r24,$r22
1c081d6c:	0000316d 	revb.2h	$r13,$r11
1c081d70:	00001045 	clo.w	$r5,$r2
1c081d74:	000064f8 	rdtimeh.w	$r24,$r7
1c081d78:	0000117b 	clo.w	$r27,$r11
1c081d7c:	0000576a 	bitrev.d	$r10,$r27
1c081d80:	00001846 	cto.w	$r6,$r2
1c081d84:	000057ff 	bitrev.d	$r31,$r31
1c081d88:	000045cc 	revh.d	$r12,$r14
1c081d8c:	0000282b 	cto.d	$r11,$r1
1c081d90:	00007bde 	0x00007bde
1c081d94:	00000317 	0x00000317
1c081d98:	00002d36 	ctz.d	$r22,$r9
1c081d9c:	00005dc6 	ext.w.b	$r6,$r14
1c081da0:	000022f6 	clo.d	$r22,$r23
1c081da4:	000009f0 	0x000009f0
1c081da8:	000021d3 	clo.d	$r19,$r14
1c081dac:	00004a8f 	bitrev.4b	$r15,$r20
1c081db0:	00001338 	clo.w	$r24,$r25
1c081db4:	00001828 	cto.w	$r8,$r1
1c081db8:	00003516 	revb.4h	$r22,$r8
1c081dbc:	000064a6 	rdtimeh.w	$r6,$r5
1c081dc0:	00000afd 	0x00000afd
1c081dc4:	00003b03 	revb.2w	$r3,$r24
1c081dc8:	00000801 	0x00000801
1c081dcc:	0000459c 	revh.d	$r28,$r12
1c081dd0:	00006032 	rdtimel.w	$r18,$r1
1c081dd4:	00000ed0 	0x00000ed0
1c081dd8:	00004061 	revh.2w	$r1,$r3
1c081ddc:	00003e33 	revb.d	$r19,$r17
1c081de0:	00002f79 	ctz.d	$r25,$r27
1c081de4:	00005580 	bitrev.d	$r0,$r12
1c081de8:	0000026b 	0x0000026b
1c081dec:	00006bd7 	rdtime.d	$r23,$r30
1c081df0:	00002c47 	ctz.d	$r7,$r2
1c081df4:	00002563 	clz.d	$r3,$r11
1c081df8:	00002cf5 	ctz.d	$r21,$r7
1c081dfc:	00003cdf 	revb.d	$r31,$r6
1c081e00:	00007ea0 	0x00007ea0
1c081e04:	00006692 	rdtimeh.w	$r18,$r20
1c081e08:	00001962 	cto.w	$r2,$r11
1c081e0c:	000029e4 	cto.d	$r4,$r15
1c081e10:	00007b05 	0x00007b05
1c081e14:	00005cda 	ext.w.b	$r26,$r6
1c081e18:	0000429a 	revh.2w	$r26,$r20
1c081e1c:	00003ec9 	revb.d	$r9,$r22
1c081e20:	00003548 	revb.4h	$r8,$r10
1c081e24:	00003a70 	revb.2w	$r16,$r19
1c081e28:	000036ad 	revb.4h	$r13,$r21
1c081e2c:	00003c5f 	revb.d	$r31,$r2
1c081e30:	000038a4 	revb.2w	$r4,$r5
1c081e34:	000037c5 	revb.4h	$r5,$r30
1c081e38:	00001c0b 	ctz.w	$r11,$r0
1c081e3c:	000067ba 	rdtimeh.w	$r26,$r29
1c081e40:	000001cb 	0x000001cb
1c081e44:	000075fa 	0x000075fa
1c081e48:	00002d7b 	ctz.d	$r27,$r11
1c081e4c:	000007a0 	0x000007a0
1c081e50:	00004515 	revh.d	$r21,$r8
1c081e54:	00000c07 	0x00000c07
1c081e58:	00005447 	bitrev.d	$r7,$r2
1c081e5c:	00004abc 	bitrev.4b	$r28,$r21
1c081e60:	00003912 	revb.2w	$r18,$r8
1c081e64:	00007b88 	0x00007b88
1c081e68:	000062a3 	rdtimel.w	$r3,$r21
1c081e6c:	00005bae 	ext.w.h	$r14,$r29
1c081e70:	000032ee 	revb.2h	$r14,$r23
1c081e74:	00005b12 	ext.w.h	$r18,$r24
1c081e78:	000035d6 	revb.4h	$r22,$r14
1c081e7c:	00003ffa 	revb.d	$r26,$r31
1c081e80:	00005431 	bitrev.d	$r17,$r1
1c081e84:	00002345 	clo.d	$r5,$r26
1c081e88:	00002e9f 	ctz.d	$r31,$r20
1c081e8c:	00000a2b 	0x00000a2b
1c081e90:	00005e40 	ext.w.b	$r0,$r18
1c081e94:	000066ad 	rdtimeh.w	$r13,$r21
1c081e98:	0000067a 	0x0000067a
1c081e9c:	00007301 	0x00007301
1c081ea0:	00000e61 	0x00000e61
1c081ea4:	000038cc 	revb.2w	$r12,$r6
1c081ea8:	00007a96 	0x00007a96
1c081eac:	00005ec1 	ext.w.b	$r1,$r22
1c081eb0:	0000107d 	clo.w	$r29,$r3
1c081eb4:	000035bf 	revb.4h	$r31,$r13
1c081eb8:	00003ac9 	revb.2w	$r9,$r22
1c081ebc:	0000041f 	0x0000041f
1c081ec0:	00005b14 	ext.w.h	$r20,$r24
1c081ec4:	00003dbb 	revb.d	$r27,$r13
1c081ec8:	00007f69 	0x00007f69
1c081ecc:	000064ad 	rdtimeh.w	$r13,$r5
1c081ed0:	0000455c 	revh.d	$r28,$r10
1c081ed4:	00006b4d 	rdtime.d	$r13,$r26
1c081ed8:	00004665 	revh.d	$r5,$r19
1c081edc:	00003d65 	revb.d	$r5,$r11
1c081ee0:	00006b36 	rdtime.d	$r22,$r25
1c081ee4:	000052ae 	bitrev.w	$r14,$r21
1c081ee8:	0000659e 	rdtimeh.w	$r30,$r12
1c081eec:	000028ea 	cto.d	$r10,$r7
1c081ef0:	00006a9a 	rdtime.d	$r26,$r20
1c081ef4:	0000732d 	0x0000732d
1c081ef8:	00004680 	revh.d	$r0,$r20
1c081efc:	00002e14 	ctz.d	$r20,$r16
1c081f00:	00006b8c 	rdtime.d	$r12,$r28
1c081f04:	0000717e 	0x0000717e
1c081f08:	0000283a 	cto.d	$r26,$r1
1c081f0c:	000018f0 	cto.w	$r16,$r7
1c081f10:	00006a89 	rdtime.d	$r9,$r20
1c081f14:	00001c32 	ctz.w	$r18,$r1
1c081f18:	0000485b 	bitrev.4b	$r27,$r2
1c081f1c:	00007ec6 	0x00007ec6
1c081f20:	00002b89 	cto.d	$r9,$r28
1c081f24:	00005046 	bitrev.w	$r6,$r2
1c081f28:	0000797c 	0x0000797c
1c081f2c:	00001351 	clo.w	$r17,$r26
1c081f30:	00005b83 	ext.w.h	$r3,$r28
1c081f34:	00002d65 	ctz.d	$r5,$r11
1c081f38:	000076b4 	0x000076b4
1c081f3c:	00004acf 	bitrev.4b	$r15,$r22
1c081f40:	00002cdd 	ctz.d	$r29,$r6
1c081f44:	00000b1a 	0x00000b1a
1c081f48:	00000826 	0x00000826
1c081f4c:	0000472e 	revh.d	$r14,$r25
1c081f50:	00006c0c 	cpucfg	$r12,$r0
1c081f54:	00005124 	bitrev.w	$r4,$r9
1c081f58:	000045f3 	revh.d	$r19,$r15
1c081f5c:	0000036d 	0x0000036d
1c081f60:	000040e4 	revh.2w	$r4,$r7
1c081f64:	000010cc 	clo.w	$r12,$r6
1c081f68:	00007134 	0x00007134
1c081f6c:	0000321b 	revb.2h	$r27,$r16
1c081f70:	00004d99 	bitrev.8b	$r25,$r12
1c081f74:	000032fc 	revb.2h	$r28,$r23
1c081f78:	00001ac0 	cto.w	$r0,$r22
1c081f7c:	00006dff 	cpucfg	$r31,$r15
1c081f80:	000043f0 	revh.2w	$r16,$r31
1c081f84:	00006d1e 	cpucfg	$r30,$r8
1c081f88:	00000ce9 	0x00000ce9
1c081f8c:	00005553 	bitrev.d	$r19,$r10
1c081f90:	00006abb 	rdtime.d	$r27,$r21
1c081f94:	00007080 	0x00007080
1c081f98:	00003f32 	revb.d	$r18,$r25
1c081f9c:	00001bb2 	cto.w	$r18,$r29
1c081fa0:	00006ae7 	rdtime.d	$r7,$r23
1c081fa4:	00000b65 	0x00000b65
1c081fa8:	000065c3 	rdtimeh.w	$r3,$r14
1c081fac:	00002823 	cto.d	$r3,$r1
1c081fb0:	00006e96 	cpucfg	$r22,$r20
1c081fb4:	00006529 	rdtimeh.w	$r9,$r9
1c081fb8:	000037c5 	revb.4h	$r5,$r30
1c081fbc:	0000147a 	clz.w	$r26,$r3
1c081fc0:	00001642 	clz.w	$r2,$r18
1c081fc4:	000015f1 	clz.w	$r17,$r15
1c081fc8:	000023a9 	clo.d	$r9,$r29
1c081fcc:	00006a72 	rdtime.d	$r18,$r19
1c081fd0:	0000055c 	0x0000055c
1c081fd4:	00001514 	clz.w	$r20,$r8
1c081fd8:	00007996 	0x00007996
1c081fdc:	0000206f 	clo.d	$r15,$r3
1c081fe0:	000074f5 	0x000074f5
1c081fe4:	00003c4f 	revb.d	$r15,$r2
1c081fe8:	0000259c 	clz.d	$r28,$r12
1c081fec:	00005445 	bitrev.d	$r5,$r2
1c081ff0:	0000477e 	revh.d	$r30,$r27
1c081ff4:	0000463c 	revh.d	$r28,$r17
1c081ff8:	00002d99 	ctz.d	$r25,$r12
1c081ffc:	00004772 	revh.d	$r18,$r27
1c082000:	00002c82 	ctz.d	$r2,$r4
1c082004:	00002b00 	cto.d	$r0,$r24
1c082008:	1c001390 	pcaddu12i	$r16,156(0x9c)
1c08200c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082010:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082014:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082018:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c08201c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082020:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082024:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082028:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c08202c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082030:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082034:	1c001268 	pcaddu12i	$r8,147(0x93)
1c082038:	1c001274 	pcaddu12i	$r20,147(0x93)
1c08203c:	1c001274 	pcaddu12i	$r20,147(0x93)
1c082040:	1c001274 	pcaddu12i	$r20,147(0x93)
1c082044:	1c001274 	pcaddu12i	$r20,147(0x93)
1c082048:	1c001274 	pcaddu12i	$r20,147(0x93)
1c08204c:	1c001274 	pcaddu12i	$r20,147(0x93)
1c082050:	1c001274 	pcaddu12i	$r20,147(0x93)
1c082054:	1c001274 	pcaddu12i	$r20,147(0x93)
1c082058:	1c001274 	pcaddu12i	$r20,147(0x93)
1c08205c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082060:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082064:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082068:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c08206c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082070:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082074:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082078:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c08207c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082080:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082084:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082088:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c08208c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082090:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082094:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082098:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c08209c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820a0:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820a4:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820a8:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820ac:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820b0:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820b4:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820b8:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820bc:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820c0:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820c4:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820c8:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820cc:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820d0:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820d4:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820d8:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820dc:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820e0:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820e4:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820e8:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820ec:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820f0:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820f4:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820f8:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0820fc:	1c0012b4 	pcaddu12i	$r20,149(0x95)
1c082100:	1c0012d0 	pcaddu12i	$r16,150(0x96)
1c082104:	1c0012e4 	pcaddu12i	$r4,151(0x97)
1c082108:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c08210c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082110:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082114:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082118:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c08211c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082120:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082124:	1c001300 	pcaddu12i	$r0,152(0x98)
1c082128:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c08212c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082130:	1c001320 	pcaddu12i	$r0,153(0x99)
1c082134:	1c001340 	pcaddu12i	$r0,154(0x9a)
1c082138:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c08213c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082140:	1c001360 	pcaddu12i	$r0,155(0x9b)
1c082144:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082148:	1c001374 	pcaddu12i	$r20,155(0x9b)
1c08214c:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082150:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c082154:	1c001340 	pcaddu12i	$r0,154(0x9a)

Disassembly of section .got:

1c082158 <_GLOBAL_OFFSET_TABLE_>:
1c082158:	00000000 	0x00000000
1c08215c:	1c082160 	pcaddu12i	$r0,16651(0x410b)

Disassembly of section .bss:

1c082160 <result>:
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
  18:	00117000 	sub.w	$r0,$r0,$r28
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e60400 	bstrpick.d	$r0,$r0,0x26,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	00117000 	sub.w	$r0,$r0,$r28
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
  c4:	00121c01 	slt	$r1,$r0,$r7
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
 108:	0012cc0c 	sltu	$r12,$r0,$r19
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	0012e00e 	sltu	$r14,$r0,$r24
 124:	0002531c 	0x0002531c
 128:	12fc0c00 	addu16i.d	$r0,$r0,-16637(0xbf03)
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	13180c00 	addu16i.d	$r0,$r0,-14845(0xc603)
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	13380c00 	addu16i.d	$r0,$r0,-12797(0xce03)
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	580c0030 	beq	$r1,$r16,3072(0xc00) # d70 <__stack_size-0xf290>
 174:	471c0013 	bnez	$r0,-3204096(0x4f1c00) # ffcf1d74 <_stack+0xe3bf1d78>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	700e0030 	0x700e0030
 18c:	5f1c0013 	bne	$r0,$r19,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c00138c 	pcaddu12i	$r12,156(0x9c)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c00139c 	pcaddu12i	$r28,156(0x9c)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c0013a8 	pcaddu12i	$r8,157(0x9d)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00f10b00 	bstrpick.d	$r0,$r24,0x31,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c0011fc 	pcaddu12i	$r28,143(0x8f)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000f10b 	0x0000f10b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	040f0006 	csrrd	$r6,0x3c0
 208:	531c0012 	b	4922368(0x4b1c00) # 4b1e08 <__stack_size+0x4a1e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	dc0f0000 	0xdc0f0000
 218:	531c0011 	b	4660224(0x471c00) # 471e18 <__stack_size+0x461e18>
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
 284:	0013b000 	masknez	$r0,$r0,$r12
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
 2c8:	13b00000 	addu16i.d	$r0,$r0,-5120(0xec00)
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
 300:	0013b000 	masknez	$r0,$r0,$r12
 304:	0030021c 	0x0030021c
 308:	03010000 	lu52i.d	$r0,$r0,64(0x40)
 30c:	00400b01 	0x00400b01
 310:	03ba0000 	ori	$r0,$r0,0xe80
 314:	03b80000 	ori	$r0,$r0,0xe00
 318:	00000000 	0x00000000
 31c:	0000330c 	revb.2h	$r12,$r24
 320:	0013e000 	masknez	$r0,$r0,$r24
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
 34c:	00141000 	nor	$r0,$r0,$r4
 350:	0000ac1c 	0x0000ac1c
 354:	00020900 	0x00020900
 358:	07040200 	0x07040200
 35c:	0000000b 	0x0000000b
 360:	06070402 	cacop	0x2,$r0,449(0x1c1)
 364:	03000000 	lu52i.d	$r0,$r0,0
 368:	0000010a 	0x0000010a
 36c:	a9050e01 	0xa9050e01
 370:	90000000 	0x90000000
 374:	2c1c0014 	vld	$vr20,$r0,1792(0x700)
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
 3a4:	149c0700 	lu12i.w	$r0,319544(0x4e038)
 3a8:	00bd1c00 	bstrins.d	$r0,$r0,0x3d,0x7
 3ac:	00860000 	bstrins.d	$r0,$r0,0x6,0x0
 3b0:	01080000 	0x01080000
 3b4:	01f30354 	0x01f30354
 3b8:	a4070054 	0xa4070054
 3bc:	671c0014 	bge	$r0,$r20,-58368(0x31c00) # ffff1fbc <_stack+0xe3ef1fc0>
 3c0:	99000001 	0x99000001
 3c4:	08000000 	0x08000000
 3c8:	3d015401 	0x3d015401
 3cc:	14ac0900 	lu12i.w	$r0,352328(0x56048)
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
 3fc:	00141000 	nor	$r0,$r0,$r4
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
 444:	500e0006 	b	1576448(0x180e00) # 181244 <__stack_size+0x171244>
 448:	081c0014 	fmadd.s	$f20,$f0,$f0,$f24
 44c:	41000000 	beqz	$r0,65536(0x10000) # 1044c <__stack_size+0x44c>
 450:	05000001 	0x05000001
 454:	000000f1 	0x000000f1
 458:	a9100601 	0xa9100601
 45c:	31000000 	0x31000000
 460:	06000001 	cacop	0x1,$r0,0
 464:	14580900 	lu12i.w	$r0,180296(0x2c048)
 468:	01671c00 	0x01671c00
 46c:	01080000 	0x01080000
 470:	003d0154 	0x003d0154
 474:	14400700 	lu12i.w	$r0,131128(0x20038)
 478:	01671c00 	0x01671c00
 47c:	01550000 	0x01550000
 480:	01080000 	0x01080000
 484:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
 488:	14600900 	lu12i.w	$r0,196680(0x30048)
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
 4c0:	0014c000 	and	$r0,$r0,$r16
 4c4:	0000ec1c 	0x0000ec1c
 4c8:	0002a100 	0x0002a100
 4cc:	07040200 	0x07040200
 4d0:	0000000b 	0x0000000b
 4d4:	06070402 	cacop	0x2,$r0,449(0x1c1)
 4d8:	03000000 	lu52i.d	$r0,$r0,0
 4dc:	0000009f 	0x0000009f
 4e0:	49050101 	bcnez	$fcc0,328960(0x50500) # 509e0 <__stack_size+0x409e0>
 4e4:	c0000001 	0xc0000001
 4e8:	ec1c0014 	0xec1c0014
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
 59c:	1c001580 	pcaddu12i	$r0,172(0xac)
 5a0:	00000020 	0x00000020
 5a4:	00000123 	0x00000123
 5a8:	0000f10a 	0x0000f10a
 5ac:	020a0100 	slti	$r0,$r8,640(0x280)
 5b0:	00000149 	0x00000149
 5b4:	00000112 	0x00000112
 5b8:	900c000b 	0x900c000b
 5bc:	6e1c0015 	bgeu	$r0,$r21,-123904(0x21c00) # fffe21bc <_stack+0xe3ee21c0>
 5c0:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 5c4:	08025401 	0x08025401
 5c8:	0e00002d 	0x0e00002d
 5cc:	1c001528 	pcaddu12i	$r8,169(0xa9)
 5d0:	00000030 	0x00000030
 5d4:	0000f10a 	0x0000f10a
 5d8:	020a0100 	slti	$r0,$r8,640(0x280)
 5dc:	00000149 	0x00000149
 5e0:	0000013e 	0x0000013e
 5e4:	580f000b 	beq	$r0,$r11,3840(0xf00) # 14e4 <__stack_size-0xeb1c>
 5e8:	6e1c0015 	bgeu	$r0,$r21,-123904(0x21c00) # fffe21e8 <_stack+0xe3ee21ec>
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
 63c:	1c0015b0 	pcaddu12i	$r16,173(0xad)
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
 6b4:	c0000000 	0xc0000000
 6b8:	301c0016 	0x301c0016
 6bc:	01000000 	0x01000000
 6c0:	0000da9c 	0x0000da9c
 6c4:	006e0800 	bstrins.w	$r0,$r0,0xe,0x2
 6c8:	2c133e01 	vld	$vr1,$r16,1231(0x4cf)
 6cc:	de000000 	0xde000000
 6d0:	d6000006 	0xd6000006
 6d4:	09000006 	0x09000006
 6d8:	0000022e 	0x0000022e
 6dc:	1c0016c0 	pcaddu12i	$r0,182(0xb6)
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
 708:	00169000 	andn	$r0,$r0,$r4
 70c:	0000241c 	clz.d	$r28,$r0
 710:	2c9c0100 	xvld	$xr0,$r8,1792(0x700)
 714:	08000001 	0x08000001
 718:	3501006e 	0x3501006e
 71c:	00002c13 	ctz.d	$r19,$r0
 720:	00073b00 	alsl.wu	$r0,$r24,$r14,0x3
 724:	00073300 	alsl.wu	$r0,$r24,$r12,0x3
 728:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 72c:	16900000 	lu32i.d	$r0,294912(0x48000)
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
 774:	15f00000 	lu12i.w	$r0,-32768(0xf8000)
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
 7bc:	0015f000 	xor	$r0,$r0,$r28
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
 7f0:	1c0015e0 	pcaddu12i	$r0,175(0xaf)
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
 81c:	0015b000 	xor	$r0,$r0,$r12
 820:	00001c1c 	ctz.w	$r28,$r0
 824:	2e9c0100 	0x2e9c0100
 828:	09000002 	0x09000002
 82c:	0000022e 	0x0000022e
 830:	1c0015b0 	pcaddu12i	$r16,173(0xad)
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
  10:	1c001170 	pcaddu12i	$r16,139(0x8b)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c0013b0 	pcaddu12i	$r16,157(0x9d)
  34:	00000054 	0x00000054
	...
  40:	0000001c 	0x0000001c
  44:	03340002 	lu52i.d	$r2,$r0,-768(0xd00)
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c001410 	pcaddu12i	$r16,160(0xa0)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04a80002 	csrrd	$r2,0x2a00
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c0014c0 	pcaddu12i	$r0,166(0xa6)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06230002 	cacop	0x2,$r0,-1856(0x8c0)
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c0015b0 	pcaddu12i	$r16,173(0xad)
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
  2c:	11700205 	addu16i.d	$r5,$r16,23552(0x5c00)
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
 1d4:	b0020500 	0xb0020500
 1d8:	131c0013 	addu16i.d	$r19,$r0,-14592(0xc700)
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
 234:	00141002 	nor	$r2,$r0,$r4
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
 2d0:	14c00205 	lu12i.w	$r5,393232(0x60010)
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
 3cc:	15b00205 	lu12i.w	$r5,-163824(0xd8010)
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
  18:	1c001170 	pcaddu12i	$r16,139(0x8b)
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
  60:	1c0013b0 	pcaddu12i	$r16,157(0x9d)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c0013e0 	pcaddu12i	$r0,159(0x9f)
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
  a8:	1c001410 	pcaddu12i	$r16,160(0xa0)
  ac:	00000074 	0x00000074
  b0:	50100e44 	b	-116387828(0x910100c) # f91010bc <_stack+0xdd0010c0>
  b4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  b8:	04990398 	csrxchg	$r24,$r28,0x2640
  bc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c204 <__stack_size+0x7c204>
  c0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd904 <_stack+0xe3ccd908>
  c4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  c8:	00000018 	0x00000018
  cc:	00000090 	0x00000090
  d0:	1c001490 	pcaddu12i	$r16,164(0xa4)
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
  fc:	1c0014c0 	pcaddu12i	$r0,166(0xa6)
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
 138:	1c0015b0 	pcaddu12i	$r16,173(0xad)
 13c:	0000001c 	0x0000001c
 140:	44100e44 	bnez	$r18,1052684(0x10100c) # 10114c <__stack_size+0xf114c>
 144:	d94c0199 	0xd94c0199
 148:	00000e44 	0x00000e44
 14c:	0000000c 	0x0000000c
 150:	00000120 	0x00000120
 154:	1c0015d0 	pcaddu12i	$r16,174(0xae)
 158:	00000004 	0x00000004
 15c:	0000000c 	0x0000000c
 160:	00000120 	0x00000120
 164:	1c0015e0 	pcaddu12i	$r0,175(0xaf)
 168:	00000008 	0x00000008
 16c:	00000018 	0x00000018
 170:	00000120 	0x00000120
 174:	1c0015f0 	pcaddu12i	$r16,175(0xaf)
 178:	00000084 	0x00000084
 17c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101188 <__stack_size+0xf1188>
 180:	60020199 	blt	$r12,$r25,512(0x200) # 380 <__stack_size-0xfc80>
 184:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 188:	0000000c 	0x0000000c
 18c:	00000120 	0x00000120
 190:	1c001680 	pcaddu12i	$r0,180(0xb4)
 194:	00000004 	0x00000004
 198:	00000018 	0x00000018
 19c:	00000120 	0x00000120
 1a0:	1c001690 	pcaddu12i	$r16,180(0xb4)
 1a4:	00000024 	0x00000024
 1a8:	44100e44 	bnez	$r18,1052684(0x10100c) # 1011b4 <__stack_size+0xf11b4>
 1ac:	d9500199 	0xd9500199
 1b0:	00000e48 	0x00000e48
 1b4:	00000018 	0x00000018
 1b8:	00000120 	0x00000120
 1bc:	1c0016c0 	pcaddu12i	$r0,182(0xb6)
 1c0:	00000030 	0x00000030
 1c4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1011d0 <__stack_size+0xf11d0>
 1c8:	d9500199 	0xd9500199
 1cc:	00000e54 	0x00000e54
