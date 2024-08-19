
obj/crc32/main.elf:     file format elf32-loongarch
obj/crc32/main.elf


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
1c000054:	0299418c 	addi.w	$r12,$r12,1616(0x650)
1c000058:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00005c:	02bea1ad 	addi.w	$r13,$r13,-88(0xfa8)
1c000060:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000064:	0299c1ce 	addi.w	$r14,$r14,1648(0x670)
1c000068:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000080 <_start+0x80>
1c00006c:	2880018f 	ld.w	$r15,$r12,0
1c000070:	298001af 	st.w	$r15,$r13,0
1c000074:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000078:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00007c:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c00006c <_start+0x6c>
1c000080:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000084:	0299418c 	addi.w	$r12,$r12,1616(0x650)
1c000088:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00008c:	029a61ad 	addi.w	$r13,$r13,1688(0x698)
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
1c00038c:	54001400 	bl	20(0x14) # 1c0003a0 <shell4>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <shell4>:
shell4():
1c0003a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0003a4:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0003a8:	02b17084 	addi.w	$r4,$r4,-932(0xc5c)
1c0003ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0003b0:	29806077 	st.w	$r23,$r3,24(0x18)
1c0003b4:	29805078 	st.w	$r24,$r3,20(0x14)
1c0003b8:	29804079 	st.w	$r25,$r3,16(0x10)
1c0003bc:	2980307a 	st.w	$r26,$r3,12(0xc)
1c0003c0:	2980207b 	st.w	$r27,$r3,8(0x8)
1c0003c4:	540d9c00 	bl	3484(0xd9c) # 1c001160 <puts>
1c0003c8:	54119800 	bl	4504(0x1198) # 1c001560 <get_count>
1c0003cc:	0015009a 	move	$r26,$r4
1c0003d0:	5411c000 	bl	4544(0x11c0) # 1c001590 <get_count_my>
1c0003d4:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c0003d8:	0015009b 	move	$r27,$r4
1c0003dc:	03bc8184 	ori	$r4,$r12,0xf20
1c0003e0:	28800085 	ld.w	$r5,$r4,0
1c0003e4:	1c001019 	pcaddu12i	$r25,128(0x80)
1c0003e8:	02b0c339 	addi.w	$r25,$r25,-976(0xc30)
1c0003ec:	02802817 	addi.w	$r23,$r0,10(0xa)
1c0003f0:	00150018 	move	$r24,$r0
1c0003f4:	5c00f4a0 	bne	$r5,$r0,244(0xf4) # 1c0004e8 <shell4+0x148>
1c0003f8:	00150324 	move	$r4,$r25
1c0003fc:	5405c400 	bl	1476(0x5c4) # 1c0009c0 <crc32>
1c000400:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c000404:	00101318 	add.w	$r24,$r24,$r4
1c000408:	5ffff2e0 	bne	$r23,$r0,-16(0x3fff0) # 1c0003f8 <shell4+0x58>
1c00040c:	54118400 	bl	4484(0x1184) # 1c001590 <get_count_my>
1c000410:	00150099 	move	$r25,$r4
1c000414:	54114c00 	bl	4428(0x114c) # 1c001560 <get_count>
1c000418:	00116f3b 	sub.w	$r27,$r25,$r27
1c00041c:	0011689a 	sub.w	$r26,$r4,$r26
1c000420:	58009300 	beq	$r24,$r0,144(0x90) # 1c0004b0 <shell4+0x110>
1c000424:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000428:	02b32084 	addi.w	$r4,$r4,-824(0xcc8)
1c00042c:	540d3400 	bl	3380(0xd34) # 1c001160 <puts>
1c000430:	157f5fe6 	lu12i.w	$r6,-263425(0xbfaff)
1c000434:	02800410 	addi.w	$r16,$r0,1(0x1)
1c000438:	038100cf 	ori	$r15,$r6,0x40
1c00043c:	298001f0 	st.w	$r16,$r15,0
1c000440:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c000444:	0380c0cd 	ori	$r13,$r6,0x30
1c000448:	038080c7 	ori	$r7,$r6,0x20
1c00044c:	298001ae 	st.w	$r14,$r13,0
1c000450:	298000e0 	st.w	$r0,$r7,0
1c000454:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c000458:	0381402c 	ori	$r12,$r1,0x50
1c00045c:	2980019b 	st.w	$r27,$r12,0
1c000460:	157f5f14 	lu12i.w	$r20,-263432(0xbfaf8)
1c000464:	03804297 	ori	$r23,$r20,0x10
1c000468:	2980029b 	st.w	$r27,$r20,0
1c00046c:	00150345 	move	$r5,$r26
1c000470:	298002fa 	st.w	$r26,$r23,0
1c000474:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000478:	02b22084 	addi.w	$r4,$r4,-888(0xc88)
1c00047c:	5409c400 	bl	2500(0x9c4) # 1c000e40 <printf>
1c000480:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c000484:	28806077 	ld.w	$r23,$r3,24(0x18)
1c000488:	28805078 	ld.w	$r24,$r3,20(0x14)
1c00048c:	28804079 	ld.w	$r25,$r3,16(0x10)
1c000490:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c000494:	00150365 	move	$r5,$r27
1c000498:	2880207b 	ld.w	$r27,$r3,8(0x8)
1c00049c:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0004a0:	02b22084 	addi.w	$r4,$r4,-888(0xc88)
1c0004a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0004a8:	50099800 	b	2456(0x998) # 1c000e40 <printf>
1c0004ac:	03400000 	andi	$r0,$r0,0x0
1c0004b0:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0004b4:	02b0c084 	addi.w	$r4,$r4,-976(0xc30)
1c0004b8:	540ca800 	bl	3240(0xca8) # 1c001160 <puts>
1c0004bc:	157f5fe8 	lu12i.w	$r8,-263425(0xbfaff)
1c0004c0:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c0004c4:	0381010b 	ori	$r11,$r8,0x40
1c0004c8:	2980016a 	st.w	$r10,$r11,0
1c0004cc:	140001e9 	lu12i.w	$r9,15(0xf)
1c0004d0:	0380c111 	ori	$r17,$r8,0x30
1c0004d4:	03808112 	ori	$r18,$r8,0x20
1c0004d8:	03bffd33 	ori	$r19,$r9,0xfff
1c0004dc:	2980022a 	st.w	$r10,$r17,0
1c0004e0:	29800253 	st.w	$r19,$r18,0
1c0004e4:	53ff73ff 	b	-144(0xfffff70) # 1c000454 <shell4+0xb4>
1c0004e8:	00150324 	move	$r4,$r25
1c0004ec:	5404d400 	bl	1236(0x4d4) # 1c0009c0 <crc32>
1c0004f0:	00150098 	move	$r24,$r4
1c0004f4:	54109c00 	bl	4252(0x109c) # 1c001590 <get_count_my>
1c0004f8:	00150099 	move	$r25,$r4
1c0004fc:	54106400 	bl	4196(0x1064) # 1c001560 <get_count>
1c000500:	00116f3b 	sub.w	$r27,$r25,$r27
1c000504:	0011689a 	sub.w	$r26,$r4,$r26
1c000508:	5fff1f00 	bne	$r24,$r0,-228(0x3ff1c) # 1c000424 <shell4+0x84>
1c00050c:	53ffa7ff 	b	-92(0xfffffa4) # 1c0004b0 <shell4+0x110>

1c000510 <updateCRC32>:
updateCRC32():
1c000510:	0015948c 	xor	$r12,$r4,$r5
1c000514:	0343fd84 	andi	$r4,$r12,0xff
1c000518:	00408886 	slli.w	$r6,$r4,0x2
1c00051c:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c000520:	02b191ad 	addi.w	$r13,$r13,-924(0xc64)
1c000524:	001019a7 	add.w	$r7,$r13,$r6
1c000528:	288000e8 	ld.w	$r8,$r7,0
1c00052c:	0044a0a5 	srli.w	$r5,$r5,0x8
1c000530:	0015a0a4 	xor	$r4,$r5,$r8
1c000534:	4c000020 	jirl	$r0,$r1,0
1c000538:	03400000 	andi	$r0,$r0,0x0
1c00053c:	03400000 	andi	$r0,$r0,0x0

1c000540 <crc32file>:
crc32file():
1c000540:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c000544:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000548:	2980e077 	st.w	$r23,$r3,56(0x38)
1c00054c:	2980d078 	st.w	$r24,$r3,52(0x34)
1c000550:	2980c079 	st.w	$r25,$r3,48(0x30)
1c000554:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c000558:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c00055c:	2980907c 	st.w	$r28,$r3,36(0x24)
1c000560:	2980807d 	st.w	$r29,$r3,32(0x20)
1c000564:	2980707e 	st.w	$r30,$r3,28(0x1c)
1c000568:	298000c0 	st.w	$r0,$r6,0
1c00056c:	001500de 	move	$r30,$r6
1c000570:	001500bc 	move	$r28,$r5
1c000574:	54064c00 	bl	1612(0x64c) # 1c000bc0 <fopen>
1c000578:	00150099 	move	$r25,$r4
1c00057c:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000580:	02af4084 	addi.w	$r4,$r4,-1072(0xbd0)
1c000584:	540bdc00 	bl	3036(0xbdc) # 1c001160 <puts>
1c000588:	28800324 	ld.w	$r4,$r25,0
1c00058c:	1c00101a 	pcaddu12i	$r26,128(0x80)
1c000590:	02af535a 	addi.w	$r26,$r26,-1068(0xbd4)
1c000594:	02bffc1b 	addi.w	$r27,$r0,-1(0xfff)
1c000598:	540ce800 	bl	3304(0xce8) # 1c001280 <strlen>
1c00059c:	00150085 	move	$r5,$r4
1c0005a0:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0005a4:	02aed084 	addi.w	$r4,$r4,-1100(0xbb4)
1c0005a8:	54089800 	bl	2200(0x898) # 1c000e40 <printf>
1c0005ac:	00150324 	move	$r4,$r25
1c0005b0:	54083000 	bl	2096(0x830) # 1c000de0 <getc>
1c0005b4:	00150098 	move	$r24,$r4
1c0005b8:	02bffc17 	addi.w	$r23,$r0,-1(0xfff)
1c0005bc:	1c00101d 	pcaddu12i	$r29,128(0x80)
1c0005c0:	02af13bd 	addi.w	$r29,$r29,-1084(0xbc4)
1c0005c4:	00150344 	move	$r4,$r26
1c0005c8:	5801231b 	beq	$r24,$r27,288(0x120) # 1c0006e8 <crc32file+0x1a8>
1c0005cc:	288003cc 	ld.w	$r12,$r30,0
1c0005d0:	02800581 	addi.w	$r1,$r12,1(0x1)
1c0005d4:	00150025 	move	$r5,$r1
1c0005d8:	298003c1 	st.w	$r1,$r30,0
1c0005dc:	54086400 	bl	2148(0x864) # 1c000e40 <printf>
1c0005e0:	0015e2e4 	xor	$r4,$r23,$r24
1c0005e4:	29803064 	st.w	$r4,$r3,12(0xc)
1c0005e8:	2a003065 	ld.bu	$r5,$r3,12(0xc)
1c0005ec:	0044a2f7 	srli.w	$r23,$r23,0x8
1c0005f0:	00150324 	move	$r4,$r25
1c0005f4:	004088a6 	slli.w	$r6,$r5,0x2
1c0005f8:	00101ba7 	add.w	$r7,$r29,$r6
1c0005fc:	288000e8 	ld.w	$r8,$r7,0
1c000600:	0015dd17 	xor	$r23,$r8,$r23
1c000604:	5407dc00 	bl	2012(0x7dc) # 1c000de0 <getc>
1c000608:	00150098 	move	$r24,$r4
1c00060c:	00150344 	move	$r4,$r26
1c000610:	5800db1b 	beq	$r24,$r27,216(0xd8) # 1c0006e8 <crc32file+0x1a8>
1c000614:	288003c9 	ld.w	$r9,$r30,0
1c000618:	0280052a 	addi.w	$r10,$r9,1(0x1)
1c00061c:	00150145 	move	$r5,$r10
1c000620:	298003ca 	st.w	$r10,$r30,0
1c000624:	54081c00 	bl	2076(0x81c) # 1c000e40 <printf>
1c000628:	0015e2eb 	xor	$r11,$r23,$r24
1c00062c:	2980306b 	st.w	$r11,$r3,12(0xc)
1c000630:	2a00306e 	ld.bu	$r14,$r3,12(0xc)
1c000634:	0044a2ed 	srli.w	$r13,$r23,0x8
1c000638:	00150324 	move	$r4,$r25
1c00063c:	004089cf 	slli.w	$r15,$r14,0x2
1c000640:	00103fb0 	add.w	$r16,$r29,$r15
1c000644:	28800211 	ld.w	$r17,$r16,0
1c000648:	0015b637 	xor	$r23,$r17,$r13
1c00064c:	54079400 	bl	1940(0x794) # 1c000de0 <getc>
1c000650:	00150098 	move	$r24,$r4
1c000654:	00150344 	move	$r4,$r26
1c000658:	5800931b 	beq	$r24,$r27,144(0x90) # 1c0006e8 <crc32file+0x1a8>
1c00065c:	288003d2 	ld.w	$r18,$r30,0
1c000660:	02800653 	addi.w	$r19,$r18,1(0x1)
1c000664:	00150265 	move	$r5,$r19
1c000668:	298003d3 	st.w	$r19,$r30,0
1c00066c:	5407d400 	bl	2004(0x7d4) # 1c000e40 <printf>
1c000670:	0015e2f4 	xor	$r20,$r23,$r24
1c000674:	29803074 	st.w	$r20,$r3,12(0xc)
1c000678:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c00067c:	0044a2f7 	srli.w	$r23,$r23,0x8
1c000680:	00150324 	move	$r4,$r25
1c000684:	00408985 	slli.w	$r5,$r12,0x2
1c000688:	001017a6 	add.w	$r6,$r29,$r5
1c00068c:	288000c7 	ld.w	$r7,$r6,0
1c000690:	0015dcf7 	xor	$r23,$r7,$r23
1c000694:	54074c00 	bl	1868(0x74c) # 1c000de0 <getc>
1c000698:	00150098 	move	$r24,$r4
1c00069c:	00150344 	move	$r4,$r26
1c0006a0:	58004b1b 	beq	$r24,$r27,72(0x48) # 1c0006e8 <crc32file+0x1a8>
1c0006a4:	288003c1 	ld.w	$r1,$r30,0
1c0006a8:	02800425 	addi.w	$r5,$r1,1(0x1)
1c0006ac:	298003c5 	st.w	$r5,$r30,0
1c0006b0:	54079000 	bl	1936(0x790) # 1c000e40 <printf>
1c0006b4:	0015e2e4 	xor	$r4,$r23,$r24
1c0006b8:	29803064 	st.w	$r4,$r3,12(0xc)
1c0006bc:	2a003069 	ld.bu	$r9,$r3,12(0xc)
1c0006c0:	0044a2e8 	srli.w	$r8,$r23,0x8
1c0006c4:	00150324 	move	$r4,$r25
1c0006c8:	0040892a 	slli.w	$r10,$r9,0x2
1c0006cc:	00102bab 	add.w	$r11,$r29,$r10
1c0006d0:	2880016d 	ld.w	$r13,$r11,0
1c0006d4:	0015a1b7 	xor	$r23,$r13,$r8
1c0006d8:	54070800 	bl	1800(0x708) # 1c000de0 <getc>
1c0006dc:	00150098 	move	$r24,$r4
1c0006e0:	00150344 	move	$r4,$r26
1c0006e4:	5ffeeb1b 	bne	$r24,$r27,-280(0x3fee8) # 1c0005cc <crc32file+0x8c>
1c0006e8:	02bffc05 	addi.w	$r5,$r0,-1(0xfff)
1c0006ec:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0006f0:	02a9f084 	addi.w	$r4,$r4,-1412(0xa7c)
1c0006f4:	54074c00 	bl	1868(0x74c) # 1c000e40 <printf>
1c0006f8:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0006fc:	02a9d084 	addi.w	$r4,$r4,-1420(0xa74)
1c000700:	540a6000 	bl	2656(0xa60) # 1c001160 <puts>
1c000704:	00150324 	move	$r4,$r25
1c000708:	5405f800 	bl	1528(0x5f8) # 1c000d00 <fclose>
1c00070c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c000710:	00145c1e 	nor	$r30,$r0,$r23
1c000714:	2980039e 	st.w	$r30,$r28,0
1c000718:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c00071c:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c000720:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c000724:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c000728:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c00072c:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c000730:	2880807d 	ld.w	$r29,$r3,32(0x20)
1c000734:	2880707e 	ld.w	$r30,$r3,28(0x1c)
1c000738:	00150004 	move	$r4,$r0
1c00073c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c000740:	4c000020 	jirl	$r0,$r1,0
1c000744:	03400000 	andi	$r0,$r0,0x0
1c000748:	03400000 	andi	$r0,$r0,0x0
1c00074c:	03400000 	andi	$r0,$r0,0x0

1c000750 <crc32buf>:
crc32buf():
1c000750:	580260a0 	beq	$r5,$r0,608(0x260) # 1c0009b0 <crc32buf+0x260>
1c000754:	03401cae 	andi	$r14,$r5,0x7
1c000758:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00075c:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c000760:	02a891ad 	addi.w	$r13,$r13,-1500(0xa24)
1c000764:	00101485 	add.w	$r5,$r4,$r5
1c000768:	580111c0 	beq	$r14,$r0,272(0x110) # 1c000878 <crc32buf+0x128>
1c00076c:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c000770:	5800e1cf 	beq	$r14,$r15,224(0xe0) # 1c000850 <crc32buf+0x100>
1c000774:	02800806 	addi.w	$r6,$r0,2(0x2)
1c000778:	5800b5c6 	beq	$r14,$r6,180(0xb4) # 1c00082c <crc32buf+0xdc>
1c00077c:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c000780:	580089c7 	beq	$r14,$r7,136(0x88) # 1c000808 <crc32buf+0xb8>
1c000784:	02801008 	addi.w	$r8,$r0,4(0x4)
1c000788:	58005dc8 	beq	$r14,$r8,92(0x5c) # 1c0007e4 <crc32buf+0x94>
1c00078c:	02801409 	addi.w	$r9,$r0,5(0x5)
1c000790:	580031c9 	beq	$r14,$r9,48(0x30) # 1c0007c0 <crc32buf+0x70>
1c000794:	0280180a 	addi.w	$r10,$r0,6(0x6)
1c000798:	5c01f1ca 	bne	$r14,$r10,496(0x1f0) # 1c000988 <crc32buf+0x238>
1c00079c:	2a000094 	ld.bu	$r20,$r4,0
1c0007a0:	0044a18e 	srli.w	$r14,$r12,0x8
1c0007a4:	02800484 	addi.w	$r4,$r4,1(0x1)
1c0007a8:	0015b28f 	xor	$r15,$r20,$r12
1c0007ac:	0343fde6 	andi	$r6,$r15,0xff
1c0007b0:	004088c7 	slli.w	$r7,$r6,0x2
1c0007b4:	00101da8 	add.w	$r8,$r13,$r7
1c0007b8:	28800109 	ld.w	$r9,$r8,0
1c0007bc:	0015b92c 	xor	$r12,$r9,$r14
1c0007c0:	2a00008a 	ld.bu	$r10,$r4,0
1c0007c4:	0044a18b 	srli.w	$r11,$r12,0x8
1c0007c8:	02800484 	addi.w	$r4,$r4,1(0x1)
1c0007cc:	0015b14c 	xor	$r12,$r10,$r12
1c0007d0:	0343fd90 	andi	$r16,$r12,0xff
1c0007d4:	00408a11 	slli.w	$r17,$r16,0x2
1c0007d8:	001045b2 	add.w	$r18,$r13,$r17
1c0007dc:	28800253 	ld.w	$r19,$r18,0
1c0007e0:	0015ae6c 	xor	$r12,$r19,$r11
1c0007e4:	2a000094 	ld.bu	$r20,$r4,0
1c0007e8:	0044a18e 	srli.w	$r14,$r12,0x8
1c0007ec:	02800484 	addi.w	$r4,$r4,1(0x1)
1c0007f0:	0015b28f 	xor	$r15,$r20,$r12
1c0007f4:	0343fde6 	andi	$r6,$r15,0xff
1c0007f8:	004088c7 	slli.w	$r7,$r6,0x2
1c0007fc:	00101da8 	add.w	$r8,$r13,$r7
1c000800:	28800109 	ld.w	$r9,$r8,0
1c000804:	0015b92c 	xor	$r12,$r9,$r14
1c000808:	2a00008a 	ld.bu	$r10,$r4,0
1c00080c:	0044a18b 	srli.w	$r11,$r12,0x8
1c000810:	02800484 	addi.w	$r4,$r4,1(0x1)
1c000814:	0015b14c 	xor	$r12,$r10,$r12
1c000818:	0343fd90 	andi	$r16,$r12,0xff
1c00081c:	00408a11 	slli.w	$r17,$r16,0x2
1c000820:	001045b2 	add.w	$r18,$r13,$r17
1c000824:	28800253 	ld.w	$r19,$r18,0
1c000828:	0015ae6c 	xor	$r12,$r19,$r11
1c00082c:	2a000094 	ld.bu	$r20,$r4,0
1c000830:	0044a18e 	srli.w	$r14,$r12,0x8
1c000834:	02800484 	addi.w	$r4,$r4,1(0x1)
1c000838:	0015b28f 	xor	$r15,$r20,$r12
1c00083c:	0343fde6 	andi	$r6,$r15,0xff
1c000840:	004088c7 	slli.w	$r7,$r6,0x2
1c000844:	00101da8 	add.w	$r8,$r13,$r7
1c000848:	28800109 	ld.w	$r9,$r8,0
1c00084c:	0015b92c 	xor	$r12,$r9,$r14
1c000850:	2a00008a 	ld.bu	$r10,$r4,0
1c000854:	0044a18b 	srli.w	$r11,$r12,0x8
1c000858:	02800484 	addi.w	$r4,$r4,1(0x1)
1c00085c:	0015b14c 	xor	$r12,$r10,$r12
1c000860:	0343fd90 	andi	$r16,$r12,0xff
1c000864:	00408a11 	slli.w	$r17,$r16,0x2
1c000868:	001045b2 	add.w	$r18,$r13,$r17
1c00086c:	28800253 	ld.w	$r19,$r18,0
1c000870:	0015ae6c 	xor	$r12,$r19,$r11
1c000874:	58010c85 	beq	$r4,$r5,268(0x10c) # 1c000980 <crc32buf+0x230>
1c000878:	2a000086 	ld.bu	$r6,$r4,0
1c00087c:	0044a187 	srli.w	$r7,$r12,0x8
1c000880:	2a000494 	ld.bu	$r20,$r4,1(0x1)
1c000884:	0015b0d0 	xor	$r16,$r6,$r12
1c000888:	0343fe11 	andi	$r17,$r16,0xff
1c00088c:	00408a32 	slli.w	$r18,$r17,0x2
1c000890:	001049b3 	add.w	$r19,$r13,$r18
1c000894:	2880026c 	ld.w	$r12,$r19,0
1c000898:	2a000888 	ld.bu	$r8,$r4,2(0x2)
1c00089c:	2a000c89 	ld.bu	$r9,$r4,3(0x3)
1c0008a0:	00159d86 	xor	$r6,$r12,$r7
1c0008a4:	00159a94 	xor	$r20,$r20,$r6
1c0008a8:	0343fe90 	andi	$r16,$r20,0xff
1c0008ac:	00408a11 	slli.w	$r17,$r16,0x2
1c0008b0:	001045b2 	add.w	$r18,$r13,$r17
1c0008b4:	28800253 	ld.w	$r19,$r18,0
1c0008b8:	0044a0c7 	srli.w	$r7,$r6,0x8
1c0008bc:	2a00108a 	ld.bu	$r10,$r4,4(0x4)
1c0008c0:	00159e66 	xor	$r6,$r19,$r7
1c0008c4:	00159908 	xor	$r8,$r8,$r6
1c0008c8:	0343fd0c 	andi	$r12,$r8,0xff
1c0008cc:	00408987 	slli.w	$r7,$r12,0x2
1c0008d0:	00101db0 	add.w	$r16,$r13,$r7
1c0008d4:	28800211 	ld.w	$r17,$r16,0
1c0008d8:	0044a0d4 	srli.w	$r20,$r6,0x8
1c0008dc:	2a00148b 	ld.bu	$r11,$r4,5(0x5)
1c0008e0:	0015d232 	xor	$r18,$r17,$r20
1c0008e4:	0015c929 	xor	$r9,$r9,$r18
1c0008e8:	0343fd26 	andi	$r6,$r9,0xff
1c0008ec:	004088c8 	slli.w	$r8,$r6,0x2
1c0008f0:	001021b4 	add.w	$r20,$r13,$r8
1c0008f4:	2880028c 	ld.w	$r12,$r20,0
1c0008f8:	0044a253 	srli.w	$r19,$r18,0x8
1c0008fc:	2a00188f 	ld.bu	$r15,$r4,6(0x6)
1c000900:	0015cd87 	xor	$r7,$r12,$r19
1c000904:	00159d4a 	xor	$r10,$r10,$r7
1c000908:	0343fd51 	andi	$r17,$r10,0xff
1c00090c:	00408a32 	slli.w	$r18,$r17,0x2
1c000910:	001049a9 	add.w	$r9,$r13,$r18
1c000914:	28800133 	ld.w	$r19,$r9,0
1c000918:	0044a0f0 	srli.w	$r16,$r7,0x8
1c00091c:	2a001c8e 	ld.bu	$r14,$r4,7(0x7)
1c000920:	0015c266 	xor	$r6,$r19,$r16
1c000924:	0015996b 	xor	$r11,$r11,$r6
1c000928:	0343fd74 	andi	$r20,$r11,0xff
1c00092c:	00408a8c 	slli.w	$r12,$r20,0x2
1c000930:	001031a7 	add.w	$r7,$r13,$r12
1c000934:	288000ea 	ld.w	$r10,$r7,0
1c000938:	0044a0c8 	srli.w	$r8,$r6,0x8
1c00093c:	02802084 	addi.w	$r4,$r4,8(0x8)
1c000940:	0015a150 	xor	$r16,$r10,$r8
1c000944:	0015c1ef 	xor	$r15,$r15,$r16
1c000948:	0343fdf2 	andi	$r18,$r15,0xff
1c00094c:	00408a49 	slli.w	$r9,$r18,0x2
1c000950:	001025b3 	add.w	$r19,$r13,$r9
1c000954:	28800266 	ld.w	$r6,$r19,0
1c000958:	0044a211 	srli.w	$r17,$r16,0x8
1c00095c:	0015c4cb 	xor	$r11,$r6,$r17
1c000960:	0015adce 	xor	$r14,$r14,$r11
1c000964:	0343fdd4 	andi	$r20,$r14,0xff
1c000968:	00408a8c 	slli.w	$r12,$r20,0x2
1c00096c:	001031a7 	add.w	$r7,$r13,$r12
1c000970:	288000ea 	ld.w	$r10,$r7,0
1c000974:	0044a168 	srli.w	$r8,$r11,0x8
1c000978:	0015a14c 	xor	$r12,$r10,$r8
1c00097c:	5ffefc85 	bne	$r4,$r5,-260(0x3fefc) # 1c000878 <crc32buf+0x128>
1c000980:	00143004 	nor	$r4,$r0,$r12
1c000984:	4c000020 	jirl	$r0,$r1,0
1c000988:	2a00008b 	ld.bu	$r11,$r4,0
1c00098c:	0044a18c 	srli.w	$r12,$r12,0x8
1c000990:	02800484 	addi.w	$r4,$r4,1(0x1)
1c000994:	00408970 	slli.w	$r16,$r11,0x2
1c000998:	03cff211 	xori	$r17,$r16,0x3fc
1c00099c:	001045b2 	add.w	$r18,$r13,$r17
1c0009a0:	28800253 	ld.w	$r19,$r18,0
1c0009a4:	0015b26c 	xor	$r12,$r19,$r12
1c0009a8:	53fdf7ff 	b	-524(0xffffdf4) # 1c00079c <crc32buf+0x4c>
1c0009ac:	03400000 	andi	$r0,$r0,0x0
1c0009b0:	00150004 	move	$r4,$r0
1c0009b4:	4c000020 	jirl	$r0,$r1,0
1c0009b8:	03400000 	andi	$r0,$r0,0x0
1c0009bc:	03400000 	andi	$r0,$r0,0x0

1c0009c0 <crc32>:
crc32():
1c0009c0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0009c4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0009c8:	2980e077 	st.w	$r23,$r3,56(0x38)
1c0009cc:	2980d078 	st.w	$r24,$r3,52(0x34)
1c0009d0:	2980c079 	st.w	$r25,$r3,48(0x30)
1c0009d4:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c0009d8:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c0009dc:	2980907c 	st.w	$r28,$r3,36(0x24)
1c0009e0:	2980807d 	st.w	$r29,$r3,32(0x20)
1c0009e4:	2980707e 	st.w	$r30,$r3,28(0x1c)
1c0009e8:	5401d800 	bl	472(0x1d8) # 1c000bc0 <fopen>
1c0009ec:	0015009a 	move	$r26,$r4
1c0009f0:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0009f4:	029d7084 	addi.w	$r4,$r4,1884(0x75c)
1c0009f8:	54076800 	bl	1896(0x768) # 1c001160 <puts>
1c0009fc:	28800344 	ld.w	$r4,$r26,0
1c000a00:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c000a04:	029d839c 	addi.w	$r28,$r28,1888(0x760)
1c000a08:	02bffc1d 	addi.w	$r29,$r0,-1(0xfff)
1c000a0c:	54087400 	bl	2164(0x874) # 1c001280 <strlen>
1c000a10:	00150085 	move	$r5,$r4
1c000a14:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000a18:	029d0084 	addi.w	$r4,$r4,1856(0x740)
1c000a1c:	54042400 	bl	1060(0x424) # 1c000e40 <printf>
1c000a20:	00150344 	move	$r4,$r26
1c000a24:	5403bc00 	bl	956(0x3bc) # 1c000de0 <getc>
1c000a28:	00150099 	move	$r25,$r4
1c000a2c:	00150018 	move	$r24,$r0
1c000a30:	02bffc17 	addi.w	$r23,$r0,-1(0xfff)
1c000a34:	1c000ffb 	pcaddu12i	$r27,127(0x7f)
1c000a38:	029d337b 	addi.w	$r27,$r27,1868(0x74c)
1c000a3c:	00150384 	move	$r4,$r28
1c000a40:	58010b3d 	beq	$r25,$r29,264(0x108) # 1c000b48 <crc32+0x188>
1c000a44:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000a48:	00150305 	move	$r5,$r24
1c000a4c:	5403f400 	bl	1012(0x3f4) # 1c000e40 <printf>
1c000a50:	0015e6e4 	xor	$r4,$r23,$r25
1c000a54:	29803064 	st.w	$r4,$r3,12(0xc)
1c000a58:	2a003065 	ld.bu	$r5,$r3,12(0xc)
1c000a5c:	0044a2f7 	srli.w	$r23,$r23,0x8
1c000a60:	00150344 	move	$r4,$r26
1c000a64:	004088a6 	slli.w	$r6,$r5,0x2
1c000a68:	00101b67 	add.w	$r7,$r27,$r6
1c000a6c:	288000ec 	ld.w	$r12,$r7,0
1c000a70:	0015031e 	move	$r30,$r24
1c000a74:	0015dd97 	xor	$r23,$r12,$r23
1c000a78:	54036800 	bl	872(0x368) # 1c000de0 <getc>
1c000a7c:	00150099 	move	$r25,$r4
1c000a80:	00150384 	move	$r4,$r28
1c000a84:	5800c73d 	beq	$r25,$r29,196(0xc4) # 1c000b48 <crc32+0x188>
1c000a88:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000a8c:	00150305 	move	$r5,$r24
1c000a90:	5403b000 	bl	944(0x3b0) # 1c000e40 <printf>
1c000a94:	0015e6e8 	xor	$r8,$r23,$r25
1c000a98:	29803068 	st.w	$r8,$r3,12(0xc)
1c000a9c:	2a00306a 	ld.bu	$r10,$r3,12(0xc)
1c000aa0:	0044a2e9 	srli.w	$r9,$r23,0x8
1c000aa4:	00150344 	move	$r4,$r26
1c000aa8:	0040894b 	slli.w	$r11,$r10,0x2
1c000aac:	00102f6d 	add.w	$r13,$r27,$r11
1c000ab0:	288001ae 	ld.w	$r14,$r13,0
1c000ab4:	0015a5d7 	xor	$r23,$r14,$r9
1c000ab8:	54032800 	bl	808(0x328) # 1c000de0 <getc>
1c000abc:	00150099 	move	$r25,$r4
1c000ac0:	00150384 	move	$r4,$r28
1c000ac4:	5800873d 	beq	$r25,$r29,132(0x84) # 1c000b48 <crc32+0x188>
1c000ac8:	02800bd8 	addi.w	$r24,$r30,2(0x2)
1c000acc:	00150305 	move	$r5,$r24
1c000ad0:	54037000 	bl	880(0x370) # 1c000e40 <printf>
1c000ad4:	0015e6ef 	xor	$r15,$r23,$r25
1c000ad8:	2980306f 	st.w	$r15,$r3,12(0xc)
1c000adc:	2a003071 	ld.bu	$r17,$r3,12(0xc)
1c000ae0:	0044a2f0 	srli.w	$r16,$r23,0x8
1c000ae4:	00150344 	move	$r4,$r26
1c000ae8:	00408a32 	slli.w	$r18,$r17,0x2
1c000aec:	00104b73 	add.w	$r19,$r27,$r18
1c000af0:	28800274 	ld.w	$r20,$r19,0
1c000af4:	0015c297 	xor	$r23,$r20,$r16
1c000af8:	5402e800 	bl	744(0x2e8) # 1c000de0 <getc>
1c000afc:	00150099 	move	$r25,$r4
1c000b00:	00150384 	move	$r4,$r28
1c000b04:	5800473d 	beq	$r25,$r29,68(0x44) # 1c000b48 <crc32+0x188>
1c000b08:	02800fd8 	addi.w	$r24,$r30,3(0x3)
1c000b0c:	00150305 	move	$r5,$r24
1c000b10:	0015e6fe 	xor	$r30,$r23,$r25
1c000b14:	54032c00 	bl	812(0x32c) # 1c000e40 <printf>
1c000b18:	2980307e 	st.w	$r30,$r3,12(0xc)
1c000b1c:	2a003064 	ld.bu	$r4,$r3,12(0xc)
1c000b20:	0044a2f7 	srli.w	$r23,$r23,0x8
1c000b24:	00408885 	slli.w	$r5,$r4,0x2
1c000b28:	00101766 	add.w	$r6,$r27,$r5
1c000b2c:	288000c7 	ld.w	$r7,$r6,0
1c000b30:	00150344 	move	$r4,$r26
1c000b34:	0015dcf7 	xor	$r23,$r7,$r23
1c000b38:	5402a800 	bl	680(0x2a8) # 1c000de0 <getc>
1c000b3c:	00150099 	move	$r25,$r4
1c000b40:	00150384 	move	$r4,$r28
1c000b44:	5fff033d 	bne	$r25,$r29,-256(0x3ff00) # 1c000a44 <crc32+0x84>
1c000b48:	02bffc05 	addi.w	$r5,$r0,-1(0xfff)
1c000b4c:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000b50:	02987084 	addi.w	$r4,$r4,1564(0x61c)
1c000b54:	5402ec00 	bl	748(0x2ec) # 1c000e40 <printf>
1c000b58:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000b5c:	02985084 	addi.w	$r4,$r4,1556(0x614)
1c000b60:	54060000 	bl	1536(0x600) # 1c001160 <puts>
1c000b64:	00150344 	move	$r4,$r26
1c000b68:	54019800 	bl	408(0x198) # 1c000d00 <fclose>
1c000b6c:	00145c1d 	nor	$r29,$r0,$r23
1c000b70:	00150306 	move	$r6,$r24
1c000b74:	001503a5 	move	$r5,$r29
1c000b78:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000b7c:	0297e084 	addi.w	$r4,$r4,1528(0x5f8)
1c000b80:	5402c000 	bl	704(0x2c0) # 1c000e40 <printf>
1c000b84:	154111b8 	lu12i.w	$r24,-391027(0xa088d)
1c000b88:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c000b8c:	0395971a 	ori	$r26,$r24,0x565
1c000b90:	00106bbc 	add.w	$r28,$r29,$r26
1c000b94:	0012f004 	sltu	$r4,$r0,$r28
1c000b98:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c000b9c:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c000ba0:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c000ba4:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c000ba8:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c000bac:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c000bb0:	2880807d 	ld.w	$r29,$r3,32(0x20)
1c000bb4:	2880707e 	ld.w	$r30,$r3,28(0x1c)
1c000bb8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c000bbc:	4c000020 	jirl	$r0,$r1,0

1c000bc0 <fopen>:
fopen():
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:22
	return file->next;
}
*/
FILE* fopen(char* str){
	int i;
	for(i=0;i<SIZE;i++){
1c000bc0:	1c001010 	pcaddu12i	$r16,128(0x80)
1c000bc4:	02ac4210 	addi.w	$r16,$r16,-1264(0xb10)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:20
FILE* fopen(char* str){
1c000bc8:	00150091 	move	$r17,$r4
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:22
	for(i=0;i<SIZE;i++){
1c000bcc:	0015000c 	move	$r12,$r0
1c000bd0:	0280280f 	addi.w	$r15,$r0,10(0xa)
1c000bd4:	0015020d 	move	$r13,$r16
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:23
		if(files[i].str == NULL){
1c000bd8:	288001ae 	ld.w	$r14,$r13,0
1c000bdc:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c000be0:	580029c0 	beq	$r14,$r0,40(0x28) # 1c000c08 <fopen+0x48>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:22 (discriminator 2)
	for(i=0;i<SIZE;i++){
1c000be4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000be8:	5ffff18f 	bne	$r12,$r15,-16(0x3fff0) # 1c000bd8 <fopen+0x18>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:27
			break;
		}
	}
	files[i].str = str;
1c000bec:	00408d8c 	slli.w	$r12,$r12,0x3
1c000bf0:	0010320c 	add.w	$r12,$r16,$r12
1c000bf4:	02814004 	addi.w	$r4,$r0,80(0x50)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:30
	files[i].pos = 0;
	return &files[i];
}
1c000bf8:	00101204 	add.w	$r4,$r16,$r4
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:27
	files[i].str = str;
1c000bfc:	29800191 	st.w	$r17,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:28
	files[i].pos = 0;
1c000c00:	29801180 	st.w	$r0,$r12,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:30
}
1c000c04:	4c000020 	jirl	$r0,$r1,0
1c000c08:	00408d8c 	slli.w	$r12,$r12,0x3
1c000c0c:	00150184 	move	$r4,$r12
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:27
	files[i].str = str;
1c000c10:	0010320c 	add.w	$r12,$r16,$r12
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:30
}
1c000c14:	00101204 	add.w	$r4,$r16,$r4
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:27
	files[i].str = str;
1c000c18:	29800191 	st.w	$r17,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:28
	files[i].pos = 0;
1c000c1c:	29801180 	st.w	$r0,$r12,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:30
}
1c000c20:	4c000020 	jirl	$r0,$r1,0
1c000c24:	03400000 	andi	$r0,$r0,0x0
1c000c28:	03400000 	andi	$r0,$r0,0x0
1c000c2c:	03400000 	andi	$r0,$r0,0x0

1c000c30 <fread>:
fread():
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:32

size_t fread(void* ptr, size_t size, size_t nmemb, FILE* stream){
1c000c30:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c000c34:	29804079 	st.w	$r25,$r3,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:34
	char* out = (char*)ptr;
	char* str = stream->str;
1c000c38:	288000f9 	ld.w	$r25,$r7,0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:32
size_t fread(void* ptr, size_t size, size_t nmemb, FILE* stream){
1c000c3c:	2980307a 	st.w	$r26,$r3,12(0xc)
1c000c40:	0015009a 	move	$r26,$r4
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:35
	size_t total = strlen(str);
1c000c44:	00150324 	move	$r4,$r25
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:32
size_t fread(void* ptr, size_t size, size_t nmemb, FILE* stream){
1c000c48:	29806077 	st.w	$r23,$r3,24(0x18)
1c000c4c:	29805078 	st.w	$r24,$r3,20(0x14)
1c000c50:	2980207b 	st.w	$r27,$r3,8(0x8)
1c000c54:	001500f7 	move	$r23,$r7
1c000c58:	001500b8 	move	$r24,$r5
1c000c5c:	001500db 	move	$r27,$r6
1c000c60:	29807061 	st.w	$r1,$r3,28(0x1c)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:35
	size_t total = strlen(str);
1c000c64:	54061c00 	bl	1564(0x61c) # 1c001280 <strlen>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:36
	if(stream->pos == total){
1c000c68:	288012ec 	ld.w	$r12,$r23,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:40
		return 0;
	}
	size_t c = 0;
	for(c=0;c<size*nmemb; ){
1c000c6c:	001c6f05 	mul.w	$r5,$r24,$r27
1c000c70:	0015000d 	move	$r13,$r0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:36
	if(stream->pos == total){
1c000c74:	5c002984 	bne	$r12,$r4,40(0x28) # 1c000c9c <fread+0x6c>
1c000c78:	50005800 	b	88(0x58) # 1c000cd0 <fread+0xa0>
1c000c7c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:41
		out[c++] = str[stream->pos++];
1c000c80:	298012ee 	st.w	$r14,$r23,4(0x4)
1c000c84:	2800018e 	ld.b	$r14,$r12,0
1c000c88:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000c8c:	0010374c 	add.w	$r12,$r26,$r13
1c000c90:	293ffd8e 	st.b	$r14,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:42
		if(stream->pos == total){
1c000c94:	288012ec 	ld.w	$r12,$r23,4(0x4)
1c000c98:	58001184 	beq	$r12,$r4,16(0x10) # 1c000ca8 <fread+0x78>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:41 (discriminator 1)
		out[c++] = str[stream->pos++];
1c000c9c:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c000ca0:	0010332c 	add.w	$r12,$r25,$r12
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:40 (discriminator 1)
	for(c=0;c<size*nmemb; ){
1c000ca4:	5fffdcad 	bne	$r5,$r13,-36(0x3ffdc) # 1c000c80 <fread+0x50>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:47
			break;
		}
	}
	return c;
}
1c000ca8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c000cac:	28806077 	ld.w	$r23,$r3,24(0x18)
1c000cb0:	28805078 	ld.w	$r24,$r3,20(0x14)
1c000cb4:	28804079 	ld.w	$r25,$r3,16(0x10)
1c000cb8:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c000cbc:	2880207b 	ld.w	$r27,$r3,8(0x8)
1c000cc0:	001501a4 	move	$r4,$r13
1c000cc4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c000cc8:	4c000020 	jirl	$r0,$r1,0
1c000ccc:	03400000 	andi	$r0,$r0,0x0
1c000cd0:	28807061 	ld.w	$r1,$r3,28(0x1c)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:37
		return 0;
1c000cd4:	0015000d 	move	$r13,$r0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:47
}
1c000cd8:	28806077 	ld.w	$r23,$r3,24(0x18)
1c000cdc:	28805078 	ld.w	$r24,$r3,20(0x14)
1c000ce0:	28804079 	ld.w	$r25,$r3,16(0x10)
1c000ce4:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c000ce8:	2880207b 	ld.w	$r27,$r3,8(0x8)
1c000cec:	001501a4 	move	$r4,$r13
1c000cf0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c000cf4:	4c000020 	jirl	$r0,$r1,0
1c000cf8:	03400000 	andi	$r0,$r0,0x0
1c000cfc:	03400000 	andi	$r0,$r0,0x0

1c000d00 <fclose>:
fclose():
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:68
	for(i=0;i<SIZE;i++){
		if(&files[i] == stream){
			break;
		}
	}
	stream->str = NULL;
1c000d00:	29800080 	st.w	$r0,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:69
	stream->pos = 0;
1c000d04:	29801080 	st.w	$r0,$r4,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:70
}
1c000d08:	4c000020 	jirl	$r0,$r1,0
1c000d0c:	03400000 	andi	$r0,$r0,0x0

1c000d10 <fgets>:
fgets():
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:72

char *fgets(char *s, int size, FILE *stream){
1c000d10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000d14:	29801078 	st.w	$r24,$r3,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:73
	char* str = stream->str;
1c000d18:	288000d8 	ld.w	$r24,$r6,0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:72
char *fgets(char *s, int size, FILE *stream){
1c000d1c:	29800079 	st.w	$r25,$r3,0
1c000d20:	00150099 	move	$r25,$r4
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:74
	size_t total = strlen(str);
1c000d24:	00150304 	move	$r4,$r24
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:72
char *fgets(char *s, int size, FILE *stream){
1c000d28:	29802077 	st.w	$r23,$r3,8(0x8)
1c000d2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c000d30:	001500d7 	move	$r23,$r6
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:74
	size_t total = strlen(str);
1c000d34:	54054c00 	bl	1356(0x54c) # 1c001280 <strlen>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:77
	size_t c = 0;
	char* r = NULL;
	while(stream->pos != total){
1c000d38:	288012ec 	ld.w	$r12,$r23,4(0x4)
1c000d3c:	58005184 	beq	$r12,$r4,80(0x50) # 1c000d8c <fgets+0x7c>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:78
		if(str[stream->pos] == '\n'){
1c000d40:	0010330d 	add.w	$r13,$r24,$r12
1c000d44:	280001af 	ld.b	$r15,$r13,0
1c000d48:	0280280e 	addi.w	$r14,$r0,10(0xa)
1c000d4c:	58005dee 	beq	$r15,$r14,92(0x5c) # 1c000da8 <fgets+0x98>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:75
	size_t c = 0;
1c000d50:	0015000e 	move	$r14,$r0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:78
		if(str[stream->pos] == '\n'){
1c000d54:	02802811 	addi.w	$r17,$r0,10(0xa)
1c000d58:	50001000 	b	16(0x10) # 1c000d68 <fgets+0x58>
1c000d5c:	03400000 	andi	$r0,$r0,0x0
1c000d60:	280001b0 	ld.b	$r16,$r13,0
1c000d64:	58004a11 	beq	$r16,$r17,72(0x48) # 1c000dac <fgets+0x9c>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:82
			s[c++] = str[stream->pos++];
			break;
		}else{
			s[c++] = str[stream->pos++];
1c000d68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000d6c:	298012ec 	st.w	$r12,$r23,4(0x4)
1c000d70:	280001ac 	ld.b	$r12,$r13,0
1c000d74:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000d78:	00103b2f 	add.w	$r15,$r25,$r14
1c000d7c:	293ffdec 	st.b	$r12,$r15,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:77
	while(stream->pos != total){
1c000d80:	288012ec 	ld.w	$r12,$r23,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:78
		if(str[stream->pos] == '\n'){
1c000d84:	0010330d 	add.w	$r13,$r24,$r12
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:77
	while(stream->pos != total){
1c000d88:	5fffd984 	bne	$r12,$r4,-40(0x3ffd8) # 1c000d60 <fgets+0x50>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:86
		}
	}
	return r;
}
1c000d8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000d90:	28802077 	ld.w	$r23,$r3,8(0x8)
1c000d94:	28801078 	ld.w	$r24,$r3,4(0x4)
1c000d98:	28800079 	ld.w	$r25,$r3,0
1c000d9c:	00150004 	move	$r4,$r0
1c000da0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000da4:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:78
		if(str[stream->pos] == '\n'){
1c000da8:	0015032f 	move	$r15,$r25
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:79
			s[c++] = str[stream->pos++];
1c000dac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000db0:	298012ec 	st.w	$r12,$r23,4(0x4)
1c000db4:	280001ac 	ld.b	$r12,$r13,0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:86
}
1c000db8:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:79
			s[c++] = str[stream->pos++];
1c000dbc:	290001ec 	st.b	$r12,$r15,0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:86
}
1c000dc0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000dc4:	28802077 	ld.w	$r23,$r3,8(0x8)
1c000dc8:	28801078 	ld.w	$r24,$r3,4(0x4)
1c000dcc:	28800079 	ld.w	$r25,$r3,0
1c000dd0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000dd4:	4c000020 	jirl	$r0,$r1,0
1c000dd8:	03400000 	andi	$r0,$r0,0x0
1c000ddc:	03400000 	andi	$r0,$r0,0x0

1c000de0 <getc>:
getc():
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:88

int getc(FILE* stream){
1c000de0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000de4:	29802077 	st.w	$r23,$r3,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:89
	char* str = stream->str;
1c000de8:	28800097 	ld.w	$r23,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:88
int getc(FILE* stream){
1c000dec:	29801078 	st.w	$r24,$r3,4(0x4)
1c000df0:	00150098 	move	$r24,$r4
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:90
	size_t total = strlen(str);
1c000df4:	001502e4 	move	$r4,$r23
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:88
int getc(FILE* stream){
1c000df8:	29803061 	st.w	$r1,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:90
	size_t total = strlen(str);
1c000dfc:	54048400 	bl	1156(0x484) # 1c001280 <strlen>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:91
	if(stream->pos == total){
1c000e00:	2880130c 	ld.w	$r12,$r24,4(0x4)
1c000e04:	58002d84 	beq	$r12,$r4,44(0x2c) # 1c000e30 <getc+0x50>
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:94
		return EOF;
	}else{
		return (unsigned char)str[stream->pos++];
1c000e08:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c000e0c:	001032f7 	add.w	$r23,$r23,$r12
1c000e10:	2980130d 	st.w	$r13,$r24,4(0x4)
1c000e14:	2a0002e4 	ld.bu	$r4,$r23,0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:97
	}
	
}
1c000e18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000e1c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c000e20:	28801078 	ld.w	$r24,$r3,4(0x4)
1c000e24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000e28:	4c000020 	jirl	$r0,$r1,0
1c000e2c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/stdio.c:92
		return EOF;
1c000e30:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
1c000e34:	53ffe7ff 	b	-28(0xfffffe4) # 1c000e18 <getc+0x38>
1c000e38:	03400000 	andi	$r0,$r0,0x0
1c000e3c:	03400000 	andi	$r0,$r0,0x0

1c000e40 <printf>:
printf():
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
int printf(const char *fmt,...)
{
1c000e40:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c000e44:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c000e48:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000e4c:	2980e077 	st.w	$r23,$r3,56(0x38)
1c000e50:	2980d078 	st.w	$r24,$r3,52(0x34)
1c000e54:	2980c079 	st.w	$r25,$r3,48(0x30)
1c000e58:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c000e5c:	2980907c 	st.w	$r28,$r3,36(0x24)
1c000e60:	29811065 	st.w	$r5,$r3,68(0x44)
1c000e64:	29812066 	st.w	$r6,$r3,72(0x48)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c000e68:	28000097 	ld.b	$r23,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c000e6c:	0281107a 	addi.w	$r26,$r3,68(0x44)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
{
1c000e70:	29813067 	st.w	$r7,$r3,76(0x4c)
1c000e74:	29814068 	st.w	$r8,$r3,80(0x50)
1c000e78:	29815069 	st.w	$r9,$r3,84(0x54)
1c000e7c:	2981606a 	st.w	$r10,$r3,88(0x58)
1c000e80:	2981706b 	st.w	$r11,$r3,92(0x5c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c000e84:	2980707a 	st.w	$r26,$r3,28(0x1c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
for(i=0;fmt[i];i++)
1c000e88:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c000f10 <printf+0xd0>
1c000e8c:	00150099 	move	$r25,$r4
1c000e90:	00150018 	move	$r24,$r0
1c000e94:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c000e98:	029bb39c 	addi.w	$r28,$r28,1772(0x6ec)
1c000e9c:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c000ea0:	50001c00 	b	28(0x1c) # 1c000ebc <printf+0x7c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c000ea4:	001502e4 	move	$r4,$r23
1c000ea8:	5401d800 	bl	472(0x1d8) # 1c001080 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c000eac:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000eb0:	0010632c 	add.w	$r12,$r25,$r24
1c000eb4:	28000197 	ld.b	$r23,$r12,0
1c000eb8:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c000f10 <printf+0xd0>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:13
	if(c=='%')
1c000ebc:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c000ec0:	58001aec 	beq	$r23,$r12,24(0x18) # 1c000ed8 <printf+0x98>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c000ec4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c000ec8:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c000ea4 <printf+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79 (discriminator 1)
1c000ecc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000ed0:	5401b000 	bl	432(0x1b0) # 1c001080 <putchar>
1c000ed4:	53ffd3ff 	b	-48(0xfffffd0) # 1c000ea4 <printf+0x64>
1c000ed8:	0010632c 	add.w	$r12,$r25,$r24
1c000edc:	2800058d 	ld.b	$r13,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:15
		w=1;
1c000ee0:	02800405 	addi.w	$r5,$r0,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c000ee4:	02814c10 	addi.w	$r16,$r0,83(0x53)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c000ee8:	0280280f 	addi.w	$r15,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c000eec:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c000ef0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000ef4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c000ef8:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c001070 <printf+0x230>
1c000efc:	0040898c 	slli.w	$r12,$r12,0x2
1c000f00:	0010338c 	add.w	$r12,$r28,$r12
1c000f04:	2880018c 	ld.w	$r12,$r12,0
1c000f08:	4c000180 	jirl	$r0,$r12,0
1c000f0c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:84
	}
}
	return 0;
}
1c000f10:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c000f14:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c000f18:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c000f1c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c000f20:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c000f24:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c000f28:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c000f2c:	00150004 	move	$r4,$r0
1c000f30:	02818063 	addi.w	$r3,$r3,96(0x60)
1c000f34:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:65
				i++;
1c000f38:	0010632c 	add.w	$r12,$r25,$r24
1c000f3c:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c000f40:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000f44:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c000f48:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000f4c:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c000f50:	00150005 	move	$r5,$r0
1c000f54:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c000eec <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000f58:	001c3ca5 	mul.w	$r5,$r5,$r15
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000f5c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000f60:	0010632c 	add.w	$r12,$r25,$r24
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000f64:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000f68:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c000f6c:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c000f70:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000f74:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000f78:	001015c5 	add.w	$r5,$r14,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000f7c:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c000f58 <printf+0x118>
1c000f80:	53ff6fff 	b	-148(0xfffff6c) # 1c000eec <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c000f84:	28800344 	ld.w	$r4,$r26,0
1c000f88:	00150007 	move	$r7,$r0
1c000f8c:	02800806 	addi.w	$r6,$r0,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:51
				arg++;
1c000f90:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:52
				i++;
1c000f94:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c000f98:	5401f800 	bl	504(0x1f8) # 1c001190 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:53
				break;
1c000f9c:	53ff13ff 	b	-240(0xfffff10) # 1c000eac <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c000fa0:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:27
				i++;
1c000fa4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:26
				arg++;
1c000fa8:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c000fac:	5400d400 	bl	212(0xd4) # 1c001080 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:28
				break;
1c000fb0:	53feffff 	b	-260(0xffffefc) # 1c000eac <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c000fb4:	28800344 	ld.w	$r4,$r26,0
1c000fb8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c000fbc:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:36
				arg++;
1c000fc0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:37
				i++;
1c000fc4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c000fc8:	5401c800 	bl	456(0x1c8) # 1c001190 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:38
				break;
1c000fcc:	53fee3ff 	b	-288(0xffffee0) # 1c000eac <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c000fd0:	28800344 	ld.w	$r4,$r26,0
1c000fd4:	00150007 	move	$r7,$r0
1c000fd8:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:41
                arg++;
1c000fdc:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:42
                i=i+2;
1c000fe0:	02800b18 	addi.w	$r24,$r24,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c000fe4:	5401ac00 	bl	428(0x1ac) # 1c001190 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:43
                break;
1c000fe8:	53fec7ff 	b	-316(0xffffec4) # 1c000eac <printf+0x6c>
1c000fec:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c000ff0:	28800344 	ld.w	$r4,$r26,0
1c000ff4:	00150007 	move	$r7,$r0
1c000ff8:	02802006 	addi.w	$r6,$r0,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:46
				arg++;
1c000ffc:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:47
				i++;
1c001000:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c001004:	54018c00 	bl	396(0x18c) # 1c001190 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:48
				break;
1c001008:	53fea7ff 	b	-348(0xffffea4) # 1c000eac <printf+0x6c>
1c00100c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c001010:	28800344 	ld.w	$r4,$r26,0
1c001014:	00150007 	move	$r7,$r0
1c001018:	02804006 	addi.w	$r6,$r0,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:57
				arg++;
1c00101c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:58
				i++;
1c001020:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c001024:	54016c00 	bl	364(0x16c) # 1c001190 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:59
				break;
1c001028:	53fe87ff 	b	-380(0xffffe84) # 1c000eac <printf+0x6c>
1c00102c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c001030:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:22
				i++;
1c001034:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:21
				arg++;
1c001038:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c00103c:	5400a400 	bl	164(0xa4) # 1c0010e0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:23
				break;
1c001040:	53fe6fff 	b	-404(0xffffe6c) # 1c000eac <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c001044:	28800344 	ld.w	$r4,$r26,0
1c001048:	00150007 	move	$r7,$r0
1c00104c:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:31
				arg++;
1c001050:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:32
				i++;
1c001054:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c001058:	54013800 	bl	312(0x138) # 1c001190 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:33
				break;
1c00105c:	53fe53ff 	b	-432(0xffffe50) # 1c000eac <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c001060:	02809404 	addi.w	$r4,$r0,37(0x25)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:62
				i++;
1c001064:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c001068:	54001800 	bl	24(0x18) # 1c001080 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:63
				break;
1c00106c:	53fe43ff 	b	-448(0xffffe40) # 1c000eac <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:73
				putchar('%');
1c001070:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001074:	54000c00 	bl	12(0xc) # 1c001080 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:74
				break;
1c001078:	53fe37ff 	b	-460(0xffffe34) # 1c000eac <printf+0x6c>
1c00107c:	03400000 	andi	$r0,$r0,0x0

1c001080 <putchar>:
putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:2
int putchar(int c)
{
1c001080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001084:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c001088:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00108c:	03bc4339 	ori	$r25,$r25,0xf10
1c001090:	29000324 	st.b	$r4,$r25,0
1c001094:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:5
}
1c001098:	00150004 	move	$r4,$r0
1c00109c:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0010a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0010a4:	4c000020 	jirl	$r0,$r1,0
1c0010a8:	03400000 	andi	$r0,$r0,0x0
1c0010ac:	03400000 	andi	$r0,$r0,0x0

1c0010b0 <tgt_putchar>:
tgt_putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:8
{   //UART_ADDR
1c0010b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0010b4:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
    asm(
1c0010b8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c0010bc:	03bc4339 	ori	$r25,$r25,0xf10
1c0010c0:	29000324 	st.b	$r4,$r25,0
1c0010c4:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c0010c8:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0010cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0010d0:	4c000020 	jirl	$r0,$r1,0
1c0010d4:	03400000 	andi	$r0,$r0,0x0
1c0010d8:	03400000 	andi	$r0,$r0,0x0
1c0010dc:	03400000 	andi	$r0,$r0,0x0

1c0010e0 <putstring>:
putstring():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:2
int putstring(char *s)
{
1c0010e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0010e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0010e8:	29802077 	st.w	$r23,$r3,8(0x8)
1c0010ec:	29801078 	st.w	$r24,$r3,4(0x4)
1c0010f0:	29800079 	st.w	$r25,$r3,0
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
char c;
while((c=*s))
1c0010f4:	28000097 	ld.b	$r23,$r4,0
1c0010f8:	580042e0 	beq	$r23,$r0,64(0x40) # 1c001138 <putstring+0x58>
1c0010fc:	00150098 	move	$r24,$r4
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c001100:	02802819 	addi.w	$r25,$r0,10(0xa)
1c001104:	50001400 	b	20(0x14) # 1c001118 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7
 putchar(c);
1c001108:	001502e4 	move	$r4,$r23
1c00110c:	57ff77ff 	bl	-140(0xfffff74) # 1c001080 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
while((c=*s))
1c001110:	28000317 	ld.b	$r23,$r24,0
1c001114:	580026e0 	beq	$r23,$r0,36(0x24) # 1c001138 <putstring+0x58>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:8
 s++;
1c001118:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c00111c:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c001108 <putstring+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6 (discriminator 1)
1c001120:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001124:	57ff5fff 	bl	-164(0xfffff5c) # 1c001080 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c001128:	001502e4 	move	$r4,$r23
1c00112c:	57ff57ff 	bl	-172(0xfffff54) # 1c001080 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c001130:	28000317 	ld.b	$r23,$r24,0
1c001134:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c001118 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:11
}
return 0;
}
1c001138:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00113c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001140:	28801078 	ld.w	$r24,$r3,4(0x4)
1c001144:	28800079 	ld.w	$r25,$r3,0
1c001148:	00150004 	move	$r4,$r0
1c00114c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001150:	4c000020 	jirl	$r0,$r1,0
1c001154:	03400000 	andi	$r0,$r0,0x0
1c001158:	03400000 	andi	$r0,$r0,0x0
1c00115c:	03400000 	andi	$r0,$r0,0x0

1c001160 <puts>:
puts():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:15


int puts(char *s)
{
1c001160:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001164:	29803061 	st.w	$r1,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:16
putstring(s);
1c001168:	57ff7bff 	bl	-136(0xfffff78) # 1c0010e0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:17
putchar('\r');
1c00116c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001170:	57ff13ff 	bl	-240(0xfffff10) # 1c001080 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:18
putchar('\n');
1c001174:	02802804 	addi.w	$r4,$r0,10(0xa)
1c001178:	57ff0bff 	bl	-248(0xfffff08) # 1c001080 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:20
return 0;
}
1c00117c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001180:	00150004 	move	$r4,$r0
1c001184:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001188:	4c000020 	jirl	$r0,$r1,0
1c00118c:	03400000 	andi	$r0,$r0,0x0

1c001190 <printbase>:
printbase():
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c001190:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001194:	29816077 	st.w	$r23,$r3,88(0x58)
1c001198:	29817061 	st.w	$r1,$r3,92(0x5c)
1c00119c:	29815078 	st.w	$r24,$r3,84(0x54)
1c0011a0:	29814079 	st.w	$r25,$r3,80(0x50)
1c0011a4:	00150097 	move	$r23,$r4
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c0011a8:	580008e0 	beq	$r7,$r0,8(0x8) # 1c0011b0 <printbase+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7 (discriminator 1)
1c0011ac:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c001250 <printbase+0xc0>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c0011b0:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c001270 <printbase+0xe0>
1c0011b4:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c0011b8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0011bc:	001131ce 	sub.w	$r14,$r14,$r12
1c0011c0:	50000800 	b	8(0x8) # 1c0011c8 <printbase+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c0011c4:	001501b7 	move	$r23,$r13
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c0011c8:	00219aed 	mod.wu	$r13,$r23,$r6
1c0011cc:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c0011d4 <printbase+0x44>
1c0011d0:	002a0007 	break	0x7
1c0011d4:	2900018d 	st.b	$r13,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c0011d8:	001031d8 	add.w	$r24,$r14,$r12
1c0011dc:	00211aed 	div.wu	$r13,$r23,$r6
1c0011e0:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c0011e8 <printbase+0x58>
1c0011e4:	002a0007 	break	0x7
1c0011e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c0011ec:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c0011c4 <printbase+0x34>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c0011f0:	600058b8 	blt	$r5,$r24,88(0x58) # 1c001248 <printbase+0xb8>
1c0011f4:	001500b7 	move	$r23,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c0011f8:	02802419 	addi.w	$r25,$r0,9(0x9)
1c0011fc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c001200:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001204:	00105d8c 	add.w	$r12,$r12,$r23
1c001208:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00120c:	60001717 	blt	$r24,$r23,20(0x14) # 1c001220 <printbase+0x90>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24 (discriminator 1)
1c001210:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001214:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c001218:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c001220 <printbase+0x90>
1c00121c:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c001220:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 4)
1c001224:	57fe5fff 	bl	-420(0xffffe5c) # 1c001080 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c001228:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c001200 <printbase+0x70>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:28
	}
	return 0;
}
1c00122c:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c001230:	28816077 	ld.w	$r23,$r3,88(0x58)
1c001234:	28815078 	ld.w	$r24,$r3,84(0x54)
1c001238:	28814079 	ld.w	$r25,$r3,80(0x50)
1c00123c:	00150004 	move	$r4,$r0
1c001240:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001244:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c001248:	00150305 	move	$r5,$r24
1c00124c:	53ffabff 	b	-88(0xfffffa8) # 1c0011f4 <printbase+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c001250:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001254:	29803066 	st.w	$r6,$r3,12(0xc)
1c001258:	29802065 	st.w	$r5,$r3,8(0x8)
1c00125c:	57fe27ff 	bl	-476(0xffffe24) # 1c001080 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:9
	value = -v;
1c001260:	00115c17 	sub.w	$r23,$r0,$r23
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c001264:	28802065 	ld.w	$r5,$r3,8(0x8)
1c001268:	28803066 	ld.w	$r6,$r3,12(0xc)
1c00126c:	53ff4bff 	b	-184(0xfffff48) # 1c0011b4 <printbase+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c001270:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c00122c <printbase+0x9c>
1c001274:	00150018 	move	$r24,$r0
1c001278:	53ff7fff 	b	-132(0xfffff7c) # 1c0011f4 <printbase+0x64>
1c00127c:	03400000 	andi	$r0,$r0,0x0

1c001280 <strlen>:
strlen():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:14
 * The strlen() function returns the length of string @s.
 * */
size_t
strlen(const char *s) {
    size_t cnt = 0;
    while (*s ++ != '\0') {
1c001280:	2800008c 	ld.b	$r12,$r4,0
1c001284:	58002580 	beq	$r12,$r0,36(0x24) # 1c0012a8 <strlen+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:13
    size_t cnt = 0;
1c001288:	0015000c 	move	$r12,$r0
1c00128c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:15
        cnt ++;
1c001290:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:14
    while (*s ++ != '\0') {
1c001294:	0010308d 	add.w	$r13,$r4,$r12
1c001298:	280001ad 	ld.b	$r13,$r13,0
1c00129c:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c001290 <strlen+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:18
    }
    return cnt;
}
1c0012a0:	00150184 	move	$r4,$r12
1c0012a4:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:13
    size_t cnt = 0;
1c0012a8:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:18
}
1c0012ac:	00150184 	move	$r4,$r12
1c0012b0:	4c000020 	jirl	$r0,$r1,0
1c0012b4:	03400000 	andi	$r0,$r0,0x0
1c0012b8:	03400000 	andi	$r0,$r0,0x0
1c0012bc:	03400000 	andi	$r0,$r0,0x0

1c0012c0 <strnlen>:
strnlen():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:35
 * @len if there is no '\0' character among the first @len characters
 * pointed by @s.
 * */
size_t
strnlen(const char *s, size_t len) {
    size_t cnt = 0;
1c0012c0:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c0012c4:	580028a0 	beq	$r5,$r0,40(0x28) # 1c0012ec <strnlen+0x2c>
1c0012c8:	2800008d 	ld.b	$r13,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:35
    size_t cnt = 0;
1c0012cc:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c0012d0:	5c0011a0 	bne	$r13,$r0,16(0x10) # 1c0012e0 <strnlen+0x20>
1c0012d4:	50001800 	b	24(0x18) # 1c0012ec <strnlen+0x2c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36 (discriminator 1)
1c0012d8:	280001ad 	ld.b	$r13,$r13,0
1c0012dc:	580011a0 	beq	$r13,$r0,16(0x10) # 1c0012ec <strnlen+0x2c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:37
        cnt ++;
1c0012e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c0012e4:	0010308d 	add.w	$r13,$r4,$r12
1c0012e8:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c0012d8 <strnlen+0x18>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:40
    }
    return cnt;
}
1c0012ec:	00150184 	move	$r4,$r12
1c0012f0:	4c000020 	jirl	$r0,$r1,0
1c0012f4:	03400000 	andi	$r0,$r0,0x0
1c0012f8:	03400000 	andi	$r0,$r0,0x0
1c0012fc:	03400000 	andi	$r0,$r0,0x0

1c001300 <strcpy>:
strcpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:59
char *
strcpy(char *dst, const char *src) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __strcpy(dst, src);
#else
    char *p = dst;
1c001300:	0015008c 	move	$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:60 (discriminator 1)
    while ((*p ++ = *src ++) != '\0')
1c001304:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c001308:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c00130c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001310:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c001314:	5ffff1a0 	bne	$r13,$r0,-16(0x3fff0) # 1c001304 <strcpy+0x4>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:64
        /* nothing */;
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001318:	4c000020 	jirl	$r0,$r1,0
1c00131c:	03400000 	andi	$r0,$r0,0x0

1c001320 <strncpy>:
strncpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:79
 * The return value is @dst
 * */
char *
strncpy(char *dst, const char *src, size_t len) {
    char *p = dst;
    while (len > 0) {
1c001320:	580028c0 	beq	$r6,$r0,40(0x28) # 1c001348 <strncpy+0x28>
1c001324:	00101886 	add.w	$r6,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:78
    char *p = dst;
1c001328:	0015008d 	move	$r13,$r4
1c00132c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:80
        if ((*p = *src) != '\0') {
1c001330:	280000ac 	ld.b	$r12,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:83
            src ++;
        }
        p ++, len --;
1c001334:	028005ad 	addi.w	$r13,$r13,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:80
        if ((*p = *src) != '\0') {
1c001338:	293ffdac 	st.b	$r12,$r13,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:81
            src ++;
1c00133c:	0012b00c 	sltu	$r12,$r0,$r12
1c001340:	001030a5 	add.w	$r5,$r5,$r12
/home/132/git_rep/perf/soft/perf_func/lib/string.c:79
    while (len > 0) {
1c001344:	5fffeda6 	bne	$r13,$r6,-20(0x3ffec) # 1c001330 <strncpy+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:86
    }
    return dst;
}
1c001348:	4c000020 	jirl	$r0,$r1,0
1c00134c:	03400000 	andi	$r0,$r0,0x0

1c001350 <strncmp>:
strncmp():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101
 * the characters differ, until a terminating null-character is reached, or
 * until @n characters match in both strings, whichever happens first.
 * */
int
strncmp(const char *s1, const char *s2, size_t n) {
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c001350:	580040c0 	beq	$r6,$r0,64(0x40) # 1c001390 <strncmp+0x40>
1c001354:	2800008d 	ld.b	$r13,$r4,0
1c001358:	280000ae 	ld.b	$r14,$r5,0
1c00135c:	580041a0 	beq	$r13,$r0,64(0x40) # 1c00139c <strncmp+0x4c>
1c001360:	5c003dae 	bne	$r13,$r14,60(0x3c) # 1c00139c <strncmp+0x4c>
1c001364:	001018a6 	add.w	$r6,$r5,$r6
1c001368:	50001c00 	b	28(0x1c) # 1c001384 <strncmp+0x34>
1c00136c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101 (discriminator 1)
1c001370:	2800008d 	ld.b	$r13,$r4,0
1c001374:	580025a0 	beq	$r13,$r0,36(0x24) # 1c001398 <strncmp+0x48>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101 (discriminator 2)
1c001378:	2800018e 	ld.b	$r14,$r12,0
1c00137c:	00150185 	move	$r5,$r12
1c001380:	5c001dae 	bne	$r13,$r14,28(0x1c) # 1c00139c <strncmp+0x4c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:102
        n --, s1 ++, s2 ++;
1c001384:	028004ac 	addi.w	$r12,$r5,1(0x1)
1c001388:	02800484 	addi.w	$r4,$r4,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c00138c:	5fffe586 	bne	$r12,$r6,-28(0x3ffe4) # 1c001370 <strncmp+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    }
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001390:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c001394:	4c000020 	jirl	$r0,$r1,0
1c001398:	280004ae 	ld.b	$r14,$r5,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:100
strncmp(const char *s1, const char *s2, size_t n) {
1c00139c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0013a0:	2980306d 	st.w	$r13,$r3,12(0xc)
1c0013a4:	2a00306d 	ld.bu	$r13,$r3,12(0xc)
1c0013a8:	2980306e 	st.w	$r14,$r3,12(0xc)
1c0013ac:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c0013b0:	02804063 	addi.w	$r3,$r3,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0013b4:	001111a4 	sub.w	$r4,$r13,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c0013b8:	4c000020 	jirl	$r0,$r1,0
1c0013bc:	03400000 	andi	$r0,$r0,0x0

1c0013c0 <strchr>:
strchr():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
 * The strchr() function returns a pointer to the first occurrence of
 * character in @s. If the value is not found, the function returns 'NULL'.
 * */
char *
strchr(const char *s, char c) {
    while (*s != '\0') {
1c0013c0:	2800008d 	ld.b	$r13,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:116
strchr(const char *s, char c) {
1c0013c4:	0015008c 	move	$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
    while (*s != '\0') {
1c0013c8:	58001da0 	beq	$r13,$r0,28(0x1c) # 1c0013e4 <strchr+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:118
        if (*s == c) {
1c0013cc:	5c000da5 	bne	$r13,$r5,12(0xc) # 1c0013d8 <strchr+0x18>
1c0013d0:	50002800 	b	40(0x28) # 1c0013f8 <strchr+0x38>
1c0013d4:	58001da5 	beq	$r13,$r5,28(0x1c) # 1c0013f0 <strchr+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:121
            return (char *)s;
        }
        s ++;
1c0013d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
    while (*s != '\0') {
1c0013dc:	2800018d 	ld.b	$r13,$r12,0
1c0013e0:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c0013d4 <strchr+0x14>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:123
    }
    return NULL;
1c0013e4:	00150004 	move	$r4,$r0
1c0013e8:	4c000020 	jirl	$r0,$r1,0
1c0013ec:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:121
        s ++;
1c0013f0:	00150184 	move	$r4,$r12
/home/132/git_rep/perf/soft/perf_func/lib/string.c:124
}
1c0013f4:	4c000020 	jirl	$r0,$r1,0
1c0013f8:	4c000020 	jirl	$r0,$r1,0
1c0013fc:	03400000 	andi	$r0,$r0,0x0

1c001400 <strfind>:
strfind():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:137
 * not found in @s, then it returns a pointer to the null byte at the
 * end of @s, rather than 'NULL'.
 * */
char *
strfind(const char *s, char c) {
    while (*s != '\0') {
1c001400:	2800008c 	ld.b	$r12,$r4,0
1c001404:	58001d80 	beq	$r12,$r0,28(0x1c) # 1c001420 <strfind+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:138
        if (*s == c) {
1c001408:	5c000cac 	bne	$r5,$r12,12(0xc) # 1c001414 <strfind+0x14>
1c00140c:	50001800 	b	24(0x18) # 1c001424 <strfind+0x24>
1c001410:	58001185 	beq	$r12,$r5,16(0x10) # 1c001420 <strfind+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:141
            break;
        }
        s ++;
1c001414:	02800484 	addi.w	$r4,$r4,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:137
    while (*s != '\0') {
1c001418:	2800008c 	ld.b	$r12,$r4,0
1c00141c:	5ffff580 	bne	$r12,$r0,-12(0x3fff4) # 1c001410 <strfind+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:144
    }
    return (char *)s;
}
1c001420:	4c000020 	jirl	$r0,$r1,0
1c001424:	4c000020 	jirl	$r0,$r1,0
1c001428:	03400000 	andi	$r0,$r0,0x0
1c00142c:	03400000 	andi	$r0,$r0,0x0

1c001430 <memset>:
memset():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
memset(void *s, char c, size_t n) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memset(s, c, n);
#else
    char *p = s;
    while (n -- > 0) {
1c001430:	58001cc0 	beq	$r6,$r0,28(0x1c) # 1c00144c <memset+0x1c>
1c001434:	00101886 	add.w	$r6,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:250
    char *p = s;
1c001438:	0015008c 	move	$r12,$r4
1c00143c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:252
        *p ++ = c;
1c001440:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001444:	293ffd85 	st.b	$r5,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c001448:	5ffff986 	bne	$r12,$r6,-8(0x3fff8) # 1c001440 <memset+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:256
    }
    return s;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c00144c:	4c000020 	jirl	$r0,$r1,0

1c001450 <memcpy>:
memcpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:279
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memcpy(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    while (n -- > 0) {
1c001450:	580024c0 	beq	$r6,$r0,36(0x24) # 1c001474 <memcpy+0x24>
1c001454:	001018a6 	add.w	$r6,$r5,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:278
    char *d = dst;
1c001458:	0015008c 	move	$r12,$r4
1c00145c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:280
        *d ++ = *s ++;
1c001460:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c001464:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c001468:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00146c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:279
    while (n -- > 0) {
1c001470:	5ffff0a6 	bne	$r5,$r6,-16(0x3fff0) # 1c001460 <memcpy+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:284
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001474:	4c000020 	jirl	$r0,$r1,0
1c001478:	03400000 	andi	$r0,$r0,0x0
1c00147c:	03400000 	andi	$r0,$r0,0x0

1c001480 <memmove>:
memmove():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:302
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memmove(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    if (s < d && s + n > d) {
1c001480:	6c0030a4 	bgeu	$r5,$r4,48(0x30) # 1c0014b0 <memmove+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:302 (discriminator 1)
1c001484:	001018ac 	add.w	$r12,$r5,$r6
1c001488:	6c00288c 	bgeu	$r4,$r12,40(0x28) # 1c0014b0 <memmove+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:303
        s += n, d += n;
1c00148c:	0010188d 	add.w	$r13,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:304
        while (n -- > 0) {
1c001490:	580044c0 	beq	$r6,$r0,68(0x44) # 1c0014d4 <memmove+0x54>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:305
            *-- d = *-- s;
1c001494:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001498:	2800018e 	ld.b	$r14,$r12,0
1c00149c:	02bffdad 	addi.w	$r13,$r13,-1(0xfff)
1c0014a0:	290001ae 	st.b	$r14,$r13,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:304
        while (n -- > 0) {
1c0014a4:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c001494 <memmove+0x14>
1c0014a8:	4c000020 	jirl	$r0,$r1,0
1c0014ac:	03400000 	andi	$r0,$r0,0x0
1c0014b0:	001018ae 	add.w	$r14,$r5,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:308
        }
    } else {
        while (n -- > 0) {
1c0014b4:	0015008c 	move	$r12,$r4
1c0014b8:	580020c0 	beq	$r6,$r0,32(0x20) # 1c0014d8 <memmove+0x58>
1c0014bc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:309
            *d ++ = *s ++;
1c0014c0:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0014c4:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c0014c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0014cc:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:308
        while (n -- > 0) {
1c0014d0:	5ffff0ae 	bne	$r5,$r14,-16(0x3fff0) # 1c0014c0 <memmove+0x40>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:314
        }
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0014d4:	4c000020 	jirl	$r0,$r1,0
1c0014d8:	4c000020 	jirl	$r0,$r1,0
1c0014dc:	03400000 	andi	$r0,$r0,0x0

1c0014e0 <memcmp>:
memcmp():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:334
 * */
int
memcmp(const void *v1, const void *v2, size_t n) {
    const char *s1 = (const char *)v1;
    const char *s2 = (const char *)v2;
    while (n -- > 0) {
1c0014e0:	580030c0 	beq	$r6,$r0,48(0x30) # 1c001510 <memcmp+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:335
        if (*s1 != *s2) {
1c0014e4:	2800008c 	ld.b	$r12,$r4,0
1c0014e8:	280000ad 	ld.b	$r13,$r5,0
1c0014ec:	00101886 	add.w	$r6,$r4,$r6
1c0014f0:	580015ac 	beq	$r13,$r12,20(0x14) # 1c001504 <memcmp+0x24>
1c0014f4:	50002400 	b	36(0x24) # 1c001518 <memcmp+0x38>
1c0014f8:	2800008c 	ld.b	$r12,$r4,0
1c0014fc:	280000ad 	ld.b	$r13,$r5,0
1c001500:	5c00198d 	bne	$r12,$r13,24(0x18) # 1c001518 <memcmp+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:338
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
        }
        s1 ++, s2 ++;
1c001504:	02800484 	addi.w	$r4,$r4,1(0x1)
1c001508:	028004a5 	addi.w	$r5,$r5,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:334
    while (n -- > 0) {
1c00150c:	5fffec86 	bne	$r4,$r6,-20(0x3ffec) # 1c0014f8 <memcmp+0x18>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:340
    }
    return 0;
1c001510:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c001514:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:331
memcmp(const void *v1, const void *v2, size_t n) {
1c001518:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c00151c:	2980306c 	st.w	$r12,$r3,12(0xc)
1c001520:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c001524:	2980306d 	st.w	$r13,$r3,12(0xc)
1c001528:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c00152c:	02804063 	addi.w	$r3,$r3,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001530:	00111184 	sub.w	$r4,$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c001534:	4c000020 	jirl	$r0,$r1,0
1c001538:	03400000 	andi	$r0,$r0,0x0
1c00153c:	03400000 	andi	$r0,$r0,0x0

1c001540 <bzero>:
memset():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c001540:	580014a0 	beq	$r5,$r0,20(0x14) # 1c001554 <bzero+0x14>
1c001544:	00101485 	add.w	$r5,$r4,$r5
/home/132/git_rep/perf/soft/perf_func/lib/string.c:252
        *p ++ = c;
1c001548:	02800484 	addi.w	$r4,$r4,1(0x1)
1c00154c:	293ffc80 	st.b	$r0,$r4,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c001550:	5ffff885 	bne	$r4,$r5,-8(0x3fff8) # 1c001548 <bzero+0x8>
bzero():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:345

void bzero(void *s, size_t n){
	memset(s, 0, n);
}
1c001554:	4c000020 	jirl	$r0,$r1,0
1c001558:	03400000 	andi	$r0,$r0,0x0
1c00155c:	03400000 	andi	$r0,$r0,0x0

1c001560 <get_count>:
get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c001560:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001564:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001568:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00156c:	28800324 	ld.w	$r4,$r25,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
    return  _get_count();
}
1c001570:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001574:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001578:	4c000020 	jirl	$r0,$r1,0
1c00157c:	03400000 	andi	$r0,$r0,0x0

1c001580 <_get_count>:
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
1c001580:	53ffe3ff 	b	-32(0xfffffe0) # 1c001560 <get_count>
1c001584:	03400000 	andi	$r0,$r0,0x0
1c001588:	03400000 	andi	$r0,$r0,0x0
1c00158c:	03400000 	andi	$r0,$r0,0x0

1c001590 <get_count_my>:
get_count_my():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c001590:	00006004 	rdtimel.w	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c001594:	4c000020 	jirl	$r0,$r1,0
1c001598:	03400000 	andi	$r0,$r0,0x0
1c00159c:	03400000 	andi	$r0,$r0,0x0

1c0015a0 <clock_gettime>:
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c0015a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0015a4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c0015a8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0015ac:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c0015b0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0015b4:	001c35ed 	mul.w	$r13,$r15,$r13
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0015b8:	02819011 	addi.w	$r17,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0015bc:	1400030e 	lu12i.w	$r14,24(0x18)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0015c0:	002145f0 	div.wu	$r16,$r15,$r17
1c0015c4:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c0015cc <clock_gettime+0x2c>
1c0015c8:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c0015cc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0015d0:	039a81ce 	ori	$r14,$r14,0x6a0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0015d4:	0021b211 	mod.wu	$r17,$r16,$r12
1c0015d8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0015e0 <clock_gettime+0x40>
1c0015dc:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0015e0:	002139f0 	div.wu	$r16,$r15,$r14
1c0015e4:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c0015ec <clock_gettime+0x4c>
1c0015e8:	002a0007 	break	0x7
1c0015ec:	0021b20e 	mod.wu	$r14,$r16,$r12
1c0015f0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0015f8 <clock_gettime+0x58>
1c0015f4:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c0015f8:	298000a0 	st.w	$r0,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0015fc:	298030ae 	st.w	$r14,$r5,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001600:	298020b1 	st.w	$r17,$r5,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c001604:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001608:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00160c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001610:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001618 <clock_gettime+0x78>
1c001614:	002a0007 	break	0x7
1c001618:	298010ae 	st.w	$r14,$r5,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
}
1c00161c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001620:	4c000020 	jirl	$r0,$r1,0
1c001624:	03400000 	andi	$r0,$r0,0x0
1c001628:	03400000 	andi	$r0,$r0,0x0
1c00162c:	03400000 	andi	$r0,$r0,0x0

1c001630 <get_clock>:
get_clock():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
1c001630:	53ff33ff 	b	-208(0xfffff30) # 1c001560 <get_count>
1c001634:	03400000 	andi	$r0,$r0,0x0
1c001638:	03400000 	andi	$r0,$r0,0x0
1c00163c:	03400000 	andi	$r0,$r0,0x0

1c001640 <get_ns>:
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c001640:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001644:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001648:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00164c:	28800324 	ld.w	$r4,$r25,0
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c001650:	0280280c 	addi.w	$r12,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:57
    return n;
}
1c001654:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001658:	001c3084 	mul.w	$r4,$r4,$r12
1c00165c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001660:	4c000020 	jirl	$r0,$r1,0
1c001664:	03400000 	andi	$r0,$r0,0x0
1c001668:	03400000 	andi	$r0,$r0,0x0
1c00166c:	03400000 	andi	$r0,$r0,0x0

1c001670 <get_us>:
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:61


unsigned long get_us(void)
{
1c001670:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001674:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001678:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00167c:	28800324 	ld.w	$r4,$r25,0
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c001680:	0281900c 	addi.w	$r12,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:66
    return n;
}
1c001684:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001688:	0021308d 	div.wu	$r13,$r4,$r12
1c00168c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001694 <get_us+0x24>
1c001690:	002a0007 	break	0x7
1c001694:	001501a4 	move	$r4,$r13
1c001698:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00169c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <crc_32_tab-0x180>:
1c080000:	33637263 	xvstelm.h	$xr3,$r19,-72(0x1b8),0x8
1c080004:	65742032 	bge	$r1,$r18,95264(0x17420) # 1c097424 <_end+0x16d04>
1c080008:	62207473 	blt	$r3,$r19,-122764(0x22074) # 1c06207c <_data_lma+0x609dc>
1c08000c:	6e696765 	bgeu	$r27,$r5,-104092(0x26964) # 1c066970 <_data_lma+0x652d0>
1c080010:	0000002e 	0x0000002e
1c080014:	ff1b0225 	0xff1b0225
1c080018:	ff55028f 	0xff55028f
1c08001c:	ffd402e5 	0xffd402e5
1c080020:	ffc30315 	0xffc30315
1c080024:	0116035e 	0x0116035e
1c080028:	01240398 	0x01240398
1c08002c:	012a03b0 	0x012a03b0
1c080030:	fffe03f4 	0xfffe03f4
1c080034:	fffd044f 	0xfffd044f
1c080038:	ffc10494 	0xffc10494
1c08003c:	ff9d04fb 	0xff9d04fb
1c080040:	ff690593 	0xff690593
1c080044:	ff3f062b 	0xff3f062b
1c080048:	ff0406c1 	0xff0406c1
1c08004c:	fefa0791 	0xfefa0791
1c080050:	feb7088b 	0xfeb7088b
1c080054:	fe8d0956 	0xfe8d0956
1c080058:	fe480a05 	0xfe480a05
1c08005c:	fe270adf 	0xfe270adf
1c080060:	fe040b9c 	0xfe040b9c
1c080064:	fde30c0f 	0xfde30c0f
1c080068:	fde40c84 	0xfde40c84
1c08006c:	fe120cf0 	0xfe120cf0
1c080070:	fe260d2e 	0xfe260d2e
1c080074:	fe980d69 	0xfe980d69
1c080078:	febb0d9a 	0xfebb0d9a
1c08007c:	ff450d9e 	0xff450d9e
1c080080:	ff880d81 	0xff880d81
1c080084:	fff60d45 	0xfff60d45
1c080088:	016b0ce9 	0x016b0ce9
1c08008c:	01ee0c6d 	0x01ee0c6d
1c080090:	017a0bcb 	0x017a0bcb
1c080094:	02180b35 	slti	$r21,$r25,1538(0x602)
1c080098:	028a0ab7 	addi.w	$r23,$r21,642(0x282)
1c08009c:	033e0a3c 	lu52i.d	$r28,$r17,-126(0xf82)
1c0800a0:	039c09de 	ori	$r30,$r14,0x702
1c0800a4:	0448098c 	csrxchg	$r12,$r12,0x1202
1c0800a8:	04b1092f 	csrxchg	$r15,$r9,0x2c42
1c0800ac:	05260902 	0x05260902
1c0800b0:	058708f9 	0x058708f9
1c0800b4:	05e008e4 	0x05e008e4
1c0800b8:	05db0905 	0x05db0905
1c0800bc:	066b096c 	0x066b096c
1c0800c0:	062009ef 	cacop	0xf,$r15,-2046(0x802)
1c0800c4:	06760a9a 	0x06760a9a
1c0800c8:	06710b47 	0x06710b47
1c0800cc:	06680bdb 	0x06680bdb
1c0800d0:	062e0c89 	cacop	0x9,$r4,-1149(0xb83)
1c0800d4:	06250d32 	cacop	0x12,$r9,-1725(0x943)
1c0800d8:	05f00da1 	0x05f00da1
1c0800dc:	00000000 	0x00000000
1c0800e0:	33637263 	xvstelm.h	$xr3,$r19,-72(0x1b8),0x8
1c0800e4:	41502032 	beqz	$r1,-3583968(0x495020) # 1bd15104 <__stack_size+0x1bd05104>
1c0800e8:	00215353 	div.wu	$r19,$r26,$r20
1c0800ec:	33637263 	xvstelm.h	$xr3,$r19,-72(0x1b8),0x8
1c0800f0:	52452032 	b	13255968(0xca4520) # 1cd24610 <_stack+0xc24614>
1c0800f4:	21454f52 	sc.w	$r18,$r26,17740(0x454c)
1c0800f8:	00002121 	clo.d	$r1,$r9
1c0800fc:	33637263 	xvstelm.h	$xr3,$r19,-72(0x1b8),0x8
1c080100:	54203a32 	bl	-121102280(0x8c82038) # 14d02138 <__stack_size+0x14cf2138>
1c080104:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c086278 <_end+0x5b58>
1c080108:	756f4320 	0x756f4320
1c08010c:	5328746e 	b	29042804(0x1bb2874) # 1dc32980 <_stack+0x1b32984>
1c080110:	6320436f 	blt	$r27,$r15,-57280(0x32040) # 1c072150 <_data_lma+0x70ab0>
1c080114:	746e756f 	0x746e756f
1c080118:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c08011c:	78257830 	0x78257830
1c080120:	0000000a 	0x0000000a
1c080124:	33637263 	xvstelm.h	$xr3,$r19,-72(0x1b8),0x8
1c080128:	54203a32 	bl	-121102280(0x8c82038) # 14d02160 <__stack_size+0x14cf2160>
1c08012c:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0862a0 <_end+0x5b80>
1c080130:	756f4320 	0x756f4320
1c080134:	4328746e 	beqz	$r3,3876980(0x3b2874) # 1c4329a8 <_stack+0x3329ac>
1c080138:	63205550 	blt	$r10,$r16,-57260(0x32054) # 1c07218c <_data_lma+0x70aec>
1c08013c:	746e756f 	0x746e756f
1c080140:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c080144:	78257830 	0x78257830
1c080148:	0000000a 	0x0000000a
1c08014c:	72617473 	0x72617473
1c080150:	00000074 	0x00000074
1c080154:	3a6e656c 	0x3a6e656c
1c080158:	0a752520 	0x0a752520
1c08015c:	00000000 	0x00000000
1c080160:	0a646c25 	xvfmsub.d	$xr5,$xr1,$xr27,$xr8
1c080164:	00000000 	0x00000000
1c080168:	000a7825 	0x000a7825
1c08016c:	00646e65 	bstrins.w	$r5,$r19,0x4,0x1b
1c080170:	6c383025 	bgeu	$r1,$r5,14384(0x3830) # 1c0839a0 <_end+0x3280>
1c080174:	25202c58 	stptr.w	$r24,$r2,8236(0x202c)
1c080178:	646c3830 	bge	$r1,$r16,27704(0x6c38) # 1c086db0 <_end+0x6690>
1c08017c:	0000000a 	0x0000000a

1c080180 <crc_32_tab>:
1c080180:	00000000 	0x00000000
1c080184:	77073096 	0x77073096
1c080188:	ee0e612c 	0xee0e612c
1c08018c:	990951ba 	0x990951ba
1c080190:	076dc419 	0x076dc419
1c080194:	706af48f 	vavgr.hu	$vr15,$vr4,$vr29
1c080198:	e963a535 	0xe963a535
1c08019c:	9e6495a3 	0x9e6495a3
1c0801a0:	0edb8832 	0x0edb8832
1c0801a4:	79dcb8a4 	0x79dcb8a4
1c0801a8:	e0d5e91e 	0xe0d5e91e
1c0801ac:	97d2d988 	0x97d2d988
1c0801b0:	09b64c2b 	0x09b64c2b
1c0801b4:	7eb17cbd 	0x7eb17cbd
1c0801b8:	e7b82d07 	0xe7b82d07
1c0801bc:	90bf1d91 	0x90bf1d91
1c0801c0:	1db71064 	pcaddu12i	$r4,-149373(0xdb883)
1c0801c4:	6ab020f2 	bltu	$r7,$r18,-85984(0x2b020) # 1c06b1e4 <_data_lma+0x69b44>
1c0801c8:	f3b97148 	0xf3b97148
1c0801cc:	84be41de 	0x84be41de
1c0801d0:	1adad47d 	pcalau12i	$r29,448163(0x6d6a3)
1c0801d4:	6ddde4eb 	bgeu	$r7,$r11,122340(0x1dde4) # 1c09dfb8 <_end+0x1d898>
1c0801d8:	f4d4b551 	0xf4d4b551
1c0801dc:	83d385c7 	0x83d385c7
1c0801e0:	136c9856 	addu16i.d	$r22,$r2,-9434(0xdb26)
1c0801e4:	646ba8c0 	bge	$r6,$r0,27560(0x6ba8) # 1c086d8c <_end+0x666c>
1c0801e8:	fd62f97a 	0xfd62f97a
1c0801ec:	8a65c9ec 	0x8a65c9ec
1c0801f0:	14015c4f 	lu12i.w	$r15,2786(0xae2)
1c0801f4:	63066cd9 	blt	$r6,$r25,-63892(0x3066c) # 1c070860 <_data_lma+0x6f1c0>
1c0801f8:	fa0f3d63 	0xfa0f3d63
1c0801fc:	8d080df5 	0x8d080df5
1c080200:	3b6e20c8 	0x3b6e20c8
1c080204:	4c69105e 	jirl	$r30,$r2,26896(0x6910)
1c080208:	d56041e4 	0xd56041e4
1c08020c:	a2677172 	0xa2677172
1c080210:	3c03e4d1 	0x3c03e4d1
1c080214:	4b04d447 	bceqz	$fcc2,2032852(0x1f04d4) # 1c2706e8 <_stack+0x1706ec>
1c080218:	d20d85fd 	0xd20d85fd
1c08021c:	a50ab56b 	0xa50ab56b
1c080220:	35b5a8fa 	0x35b5a8fa
1c080224:	42b2986c 	beqz	$r3,3322520(0x32b298) # 1c3ab4bc <_stack+0x2ab4c0>
1c080228:	dbbbc9d6 	0xdbbbc9d6
1c08022c:	acbcf940 	0xacbcf940
1c080230:	32d86ce3 	0x32d86ce3
1c080234:	45df5c75 	bnez	$r3,-2760868(0x55df5c) # 1bdde190 <__stack_size+0x1bdce190>
1c080238:	dcd60dcf 	0xdcd60dcf
1c08023c:	abd13d59 	0xabd13d59
1c080240:	26d930ac 	ldptr.d	$r12,$r5,-9936(0xd930)
1c080244:	51de003a 	b	15326720(0xe9de00) # 1cf1e044 <_stack+0xe1e048>
1c080248:	c8d75180 	0xc8d75180
1c08024c:	bfd06116 	0xbfd06116
1c080250:	21b4f4b5 	sc.w	$r21,$r5,-19212(0xb4f4)
1c080254:	56b3c423 	bl	9352132(0x8eb3c4) # 1c96b618 <_stack+0x86b61c>
1c080258:	cfba9599 	0xcfba9599
1c08025c:	b8bda50f 	0xb8bda50f
1c080260:	2802b89e 	ld.b	$r30,$r4,174(0xae)
1c080264:	5f058808 	bne	$r0,$r8,-64120(0x30588) # 1c0707ec <_data_lma+0x6f14c>
1c080268:	c60cd9b2 	0xc60cd9b2
1c08026c:	b10be924 	0xb10be924
1c080270:	2f6f7c87 	0x2f6f7c87
1c080274:	58684c11 	beq	$r0,$r17,26700(0x684c) # 1c086ac0 <_end+0x63a0>
1c080278:	c1611dab 	0xc1611dab
1c08027c:	b6662d3d 	0xb6662d3d
1c080280:	76dc4190 	0x76dc4190
1c080284:	01db7106 	0x01db7106
1c080288:	98d220bc 	0x98d220bc
1c08028c:	efd5102a 	0xefd5102a
1c080290:	71b18589 	0x71b18589
1c080294:	06b6b51f 	0x06b6b51f
1c080298:	9fbfe4a5 	0x9fbfe4a5
1c08029c:	e8b8d433 	0xe8b8d433
1c0802a0:	7807c9a2 	0x7807c9a2
1c0802a4:	0f00f934 	0x0f00f934
1c0802a8:	9609a88e 	0x9609a88e
1c0802ac:	e10e9818 	0xe10e9818
1c0802b0:	7f6a0dbb 	0x7f6a0dbb
1c0802b4:	086d3d2d 	fmsub.d	$f13,$f9,$f15,$f26
1c0802b8:	91646c97 	0x91646c97
1c0802bc:	e6635c01 	0xe6635c01
1c0802c0:	6b6b51f4 	bltu	$r15,$r20,-38064(0x36b50) # 1c076e10 <_data_lma+0x75770>
1c0802c4:	1c6c6162 	pcaddu12i	$r2,221963(0x3630b)
1c0802c8:	856530d8 	0x856530d8
1c0802cc:	f262004e 	0xf262004e
1c0802d0:	6c0695ed 	bgeu	$r15,$r13,1684(0x694) # 1c080964 <_end+0x244>
1c0802d4:	1b01a57b 	pcalau12i	$r27,-520917(0x80d2b)
1c0802d8:	8208f4c1 	0x8208f4c1
1c0802dc:	f50fc457 	0xf50fc457
1c0802e0:	65b0d9c6 	bge	$r14,$r6,110808(0x1b0d8) # 1c09b3b8 <_end+0x1ac98>
1c0802e4:	12b7e950 	addu16i.d	$r16,$r10,-20998(0xadfa)
1c0802e8:	8bbeb8ea 	0x8bbeb8ea
1c0802ec:	fcb9887c 	0xfcb9887c
1c0802f0:	62dd1ddf 	blt	$r14,$r31,-74468(0x2dd1c) # 1c06e00c <_data_lma+0x6c96c>
1c0802f4:	15da2d49 	lu12i.w	$r9,-77462(0xed16a)
1c0802f8:	8cd37cf3 	0x8cd37cf3
1c0802fc:	fbd44c65 	0xfbd44c65
1c080300:	4db26158 	jirl	$r24,$r10,111200(0x1b260)
1c080304:	3ab551ce 	0x3ab551ce
1c080308:	a3bc0074 	0xa3bc0074
1c08030c:	d4bb30e2 	0xd4bb30e2
1c080310:	4adfa541 	bcnez	$fcc2,450468(0x6dfa4) # 1c0ee2b4 <_end+0x6db94>
1c080314:	3dd895d7 	0x3dd895d7
1c080318:	a4d1c46d 	0xa4d1c46d
1c08031c:	d3d6f4fb 	0xd3d6f4fb
1c080320:	4369e96a 	beqz	$r11,2845160(0x2b69e8) # 1c336d08 <_stack+0x236d0c>
1c080324:	346ed9fc 	0x346ed9fc
1c080328:	ad678846 	0xad678846
1c08032c:	da60b8d0 	0xda60b8d0
1c080330:	44042d73 	bnez	$r11,-3406804(0x4c042c) # 1bd4075c <__stack_size+0x1bd3075c>
1c080334:	33031de5 	0x33031de5
1c080338:	aa0a4c5f 	0xaa0a4c5f
1c08033c:	dd0d7cc9 	0xdd0d7cc9
1c080340:	5005713c 	b	82838896(0x4f00570) # 20f808b0 <_stack+0x4e808b4>
1c080344:	270241aa 	stptr.d	$r10,$r13,576(0x240)
1c080348:	be0b1010 	0xbe0b1010
1c08034c:	c90c2086 	0xc90c2086
1c080350:	5768b525 	bl	77031604(0x49768b4) # 209f6c04 <_stack+0x48f6c08>
1c080354:	206f85b3 	ll.w	$r19,$r13,28548(0x6f84)
1c080358:	b966d409 	0xb966d409
1c08035c:	ce61e49f 	0xce61e49f
1c080360:	5edef90e 	bne	$r8,$r14,-73992(0x2def8) # 1c06e258 <_data_lma+0x6cbb8>
1c080364:	29d9c998 	st.d	$r24,$r12,1650(0x672)
1c080368:	b0d09822 	0xb0d09822
1c08036c:	c7d7a8b4 	0xc7d7a8b4
1c080370:	59b33d17 	beq	$r8,$r23,111420(0x1b33c) # 1c09b6ac <_end+0x1af8c>
1c080374:	2eb40d81 	0x2eb40d81
1c080378:	b7bd5c3b 	0xb7bd5c3b
1c08037c:	c0ba6cad 	0xc0ba6cad
1c080380:	edb88320 	0xedb88320
1c080384:	9abfb3b6 	0x9abfb3b6
1c080388:	03b6e20c 	ori	$r12,$r16,0xdb8
1c08038c:	74b1d29a 	0x74b1d29a
1c080390:	ead54739 	0xead54739
1c080394:	9dd277af 	0x9dd277af
1c080398:	04db2615 	csrxchg	$r21,$r16,0x36c9
1c08039c:	73dc1683 	vnori.b	$vr3,$vr20,0x5
1c0803a0:	e3630b12 	0xe3630b12
1c0803a4:	94643b84 	0x94643b84
1c0803a8:	0d6d6a3e 	xvshuf.b	$xr30,$xr17,$xr26,$xr26
1c0803ac:	7a6a5aa8 	0x7a6a5aa8
1c0803b0:	e40ecf0b 	0xe40ecf0b
1c0803b4:	9309ff9d 	0x9309ff9d
1c0803b8:	0a00ae27 	0x0a00ae27
1c0803bc:	7d079eb1 	0x7d079eb1
1c0803c0:	f00f9344 	0xf00f9344
1c0803c4:	8708a3d2 	0x8708a3d2
1c0803c8:	1e01f268 	pcaddu18i	$r8,3987(0xf93)
1c0803cc:	6906c2fe 	bltu	$r23,$r30,67264(0x106c0) # 1c090a8c <_end+0x1036c>
1c0803d0:	f762575d 	0xf762575d
1c0803d4:	806567cb 	0x806567cb
1c0803d8:	196c3671 	pcaddi	$r17,-302669(0xb61b3)
1c0803dc:	6e6b06e7 	bgeu	$r23,$r7,-103676(0x26b04) # 1c066ee0 <_data_lma+0x65840>
1c0803e0:	fed41b76 	0xfed41b76
1c0803e4:	89d32be0 	0x89d32be0
1c0803e8:	10da7a5a 	addu16i.d	$r26,$r18,13982(0x369e)
1c0803ec:	67dd4acc 	bge	$r22,$r12,-8888(0x3dd48) # 1c07e134 <_data_lma+0x7ca94>
1c0803f0:	f9b9df6f 	0xf9b9df6f
1c0803f4:	8ebeeff9 	0x8ebeeff9
1c0803f8:	17b7be43 	lu32i.d	$r3,-147982(0xdbdf2)
1c0803fc:	60b08ed5 	blt	$r22,$r21,45196(0xb08c) # 1c08b488 <_end+0xad68>
1c080400:	d6d6a3e8 	0xd6d6a3e8
1c080404:	a1d1937e 	0xa1d1937e
1c080408:	38d8c2c4 	0x38d8c2c4
1c08040c:	4fdff252 	jirl	$r18,$r18,-8208(0x3dff0)
1c080410:	d1bb67f1 	0xd1bb67f1
1c080414:	a6bc5767 	0xa6bc5767
1c080418:	3fb506dd 	0x3fb506dd
1c08041c:	48b2364b 	0x48b2364b
1c080420:	d80d2bda 	0xd80d2bda
1c080424:	af0a1b4c 	0xaf0a1b4c
1c080428:	36034af6 	0x36034af6
1c08042c:	41047a60 	beqz	$r19,66680(0x10478) # 1c0908a4 <_end+0x10184>
1c080430:	df60efc3 	0xdf60efc3
1c080434:	a867df55 	0xa867df55
1c080438:	316e8eef 	0x316e8eef
1c08043c:	4669be79 	bnez	$r19,-1676868(0x6669bc) # 1bee6df8 <__stack_size+0x1bed6df8>
1c080440:	cb61b38c 	0xcb61b38c
1c080444:	bc66831a 	0xbc66831a
1c080448:	256fd2a0 	stptr.w	$r0,$r21,28624(0x6fd0)
1c08044c:	5268e236 	b	-119904032(0x8da68e0) # 14e26d2c <__stack_size+0x14e16d2c>
1c080450:	cc0c7795 	0xcc0c7795
1c080454:	bb0b4703 	0xbb0b4703
1c080458:	220216b9 	ll.d	$r25,$r21,532(0x214)
1c08045c:	5505262f 	bl	-121830108(0x8bd0524) # 14c50980 <__stack_size+0x14c40980>
1c080460:	c5ba3bbe 	0xc5ba3bbe
1c080464:	b2bd0b28 	0xb2bd0b28
1c080468:	2bb45a92 	fld.d	$f18,$r20,-746(0xd16)
1c08046c:	5cb36a04 	bne	$r16,$r4,45928(0xb368) # 1c08b7d4 <_end+0xb0b4>
1c080470:	c2d7ffa7 	0xc2d7ffa7
1c080474:	b5d0cf31 	0xb5d0cf31
1c080478:	2cd99e8b 	xvst	$xr11,$r20,1639(0x667)
1c08047c:	5bdeae1d 	beq	$r16,$r29,-8532(0x3deac) # 1c07e328 <_data_lma+0x7cc88>
1c080480:	9b64c2b0 	0x9b64c2b0
1c080484:	ec63f226 	0xec63f226
1c080488:	756aa39c 	0x756aa39c
1c08048c:	026d930a 	sltui	$r10,$r24,-1180(0xb64)
1c080490:	9c0906a9 	0x9c0906a9
1c080494:	eb0e363f 	0xeb0e363f
1c080498:	72076785 	0x72076785
1c08049c:	05005713 	0x05005713
1c0804a0:	95bf4a82 	0x95bf4a82
1c0804a4:	e2b87a14 	0xe2b87a14
1c0804a8:	7bb12bae 	0x7bb12bae
1c0804ac:	0cb61b38 	0x0cb61b38
1c0804b0:	92d28e9b 	0x92d28e9b
1c0804b4:	e5d5be0d 	0xe5d5be0d
1c0804b8:	7cdcefb7 	0x7cdcefb7
1c0804bc:	0bdbdf21 	0x0bdbdf21
1c0804c0:	86d3d2d4 	0x86d3d2d4
1c0804c4:	f1d4e242 	0xf1d4e242
1c0804c8:	68ddb3f8 	bltu	$r31,$r24,56752(0xddb0) # 1c08e278 <_end+0xdb58>
1c0804cc:	1fda836e 	pcaddu18i	$r14,-76773(0xed41b)
1c0804d0:	81be16cd 	0x81be16cd
1c0804d4:	f6b9265b 	0xf6b9265b
1c0804d8:	6fb077e1 	bgeu	$r31,$r1,-20364(0x3b074) # 1c07b54c <_data_lma+0x79eac>
1c0804dc:	18b74777 	pcaddi	$r23,375355(0x5ba3b)
1c0804e0:	88085ae6 	0x88085ae6
1c0804e4:	ff0f6a70 	0xff0f6a70
1c0804e8:	66063bca 	bge	$r30,$r10,-129480(0x20638) # 1c060b20 <_data_lma+0x5f480>
1c0804ec:	11010b5c 	addu16i.d	$r28,$r26,16450(0x4042)
1c0804f0:	8f659eff 	0x8f659eff
1c0804f4:	f862ae69 	0xf862ae69
1c0804f8:	616bffd3 	blt	$r30,$r19,93180(0x16bfc) # 1c0970f4 <_end+0x169d4>
1c0804fc:	166ccf45 	lu32i.d	$r5,222842(0x3667a)
1c080500:	a00ae278 	0xa00ae278
1c080504:	d70dd2ee 	0xd70dd2ee
1c080508:	4e048354 	jirl	$r20,$r26,-129920(0x20480)
1c08050c:	3903b3c2 	0x3903b3c2
1c080510:	a7672661 	0xa7672661
1c080514:	d06016f7 	0xd06016f7
1c080518:	4969474d 	0x4969474d
1c08051c:	3e6e77db 	0x3e6e77db
1c080520:	aed16a4a 	0xaed16a4a
1c080524:	d9d65adc 	0xd9d65adc
1c080528:	40df0b66 	beqz	$r27,1629960(0x18df08) # 1c20e430 <_stack+0x10e434>
1c08052c:	37d83bf0 	0x37d83bf0
1c080530:	a9bcae53 	0xa9bcae53
1c080534:	debb9ec5 	0xdebb9ec5
1c080538:	47b2cf7f 	bnez	$r27,-19764(0x7fb2cc) # 1c07b804 <_data_lma+0x7a164>
1c08053c:	30b5ffe9 	vldrepl.b	$vr9,$r31,-641(0xd7f)
1c080540:	bdbdf21c 	0xbdbdf21c
1c080544:	cabac28a 	0xcabac28a
1c080548:	53b39330 	b	-54283376(0xcc3b390) # 18cbb8d8 <__stack_size+0x18cab8d8>
1c08054c:	24b4a3a6 	ldptr.w	$r6,$r29,-19296(0xb4a0)
1c080550:	bad03605 	0xbad03605
1c080554:	cdd70693 	0xcdd70693
1c080558:	54de5729 	bl	-56304044(0xca4de54) # 18ace3ac <__stack_size+0x18abe3ac>
1c08055c:	23d967bf 	sc.d	$r31,$r29,-9884(0xd964)
1c080560:	b3667a2e 	0xb3667a2e
1c080564:	c4614ab8 	0xc4614ab8
1c080568:	5d681b02 	bne	$r24,$r2,92184(0x16818) # 1c096d80 <_end+0x16660>
1c08056c:	2a6f2b94 	ld.hu	$r20,$r28,-1078(0xbca)
1c080570:	b40bbe37 	0xb40bbe37
1c080574:	c30c8ea1 	0xc30c8ea1
1c080578:	5a05df1b 	beq	$r24,$r27,-129572(0x205dc) # 1c060b54 <_data_lma+0x5f4b4>
1c08057c:	2d02ef8d 	0x2d02ef8d
1c080580:	1c001060 	pcaddu12i	$r0,131(0x83)
1c080584:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080588:	1c001070 	pcaddu12i	$r16,131(0x83)
1c08058c:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080590:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080594:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080598:	1c001070 	pcaddu12i	$r16,131(0x83)
1c08059c:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805a0:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805a4:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805a8:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805ac:	1c000f38 	pcaddu12i	$r24,121(0x79)
1c0805b0:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c0805b4:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c0805b8:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c0805bc:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c0805c0:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c0805c4:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c0805c8:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c0805cc:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c0805d0:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c0805d4:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805d8:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805dc:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805e0:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805e4:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805e8:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805ec:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805f0:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805f4:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805f8:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0805fc:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080600:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080604:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080608:	1c001070 	pcaddu12i	$r16,131(0x83)
1c08060c:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080610:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080614:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080618:	1c001070 	pcaddu12i	$r16,131(0x83)
1c08061c:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080620:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080624:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080628:	1c001070 	pcaddu12i	$r16,131(0x83)
1c08062c:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080630:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080634:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080638:	1c001070 	pcaddu12i	$r16,131(0x83)
1c08063c:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080640:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080644:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080648:	1c001070 	pcaddu12i	$r16,131(0x83)
1c08064c:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080650:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080654:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080658:	1c001070 	pcaddu12i	$r16,131(0x83)
1c08065c:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080660:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080664:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080668:	1c001070 	pcaddu12i	$r16,131(0x83)
1c08066c:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080670:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080674:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c080678:	1c000fa0 	pcaddu12i	$r0,125(0x7d)
1c08067c:	1c000fb4 	pcaddu12i	$r20,125(0x7d)
1c080680:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080684:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080688:	1c001070 	pcaddu12i	$r16,131(0x83)
1c08068c:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080690:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080694:	1c001070 	pcaddu12i	$r16,131(0x83)
1c080698:	1c001070 	pcaddu12i	$r16,131(0x83)
1c08069c:	1c000fd0 	pcaddu12i	$r16,126(0x7e)
1c0806a0:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0806a4:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0806a8:	1c000ff0 	pcaddu12i	$r16,127(0x7f)
1c0806ac:	1c001010 	pcaddu12i	$r16,128(0x80)
1c0806b0:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0806b4:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0806b8:	1c001030 	pcaddu12i	$r16,129(0x81)
1c0806bc:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0806c0:	1c001044 	pcaddu12i	$r4,130(0x82)
1c0806c4:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0806c8:	1c001070 	pcaddu12i	$r16,131(0x83)
1c0806cc:	1c001010 	pcaddu12i	$r16,128(0x80)

Disassembly of section .bss:

1c0806d0 <files>:
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
       0:	0000033b 	0x0000033b
       4:	00000004 	0x00000004
       8:	01040000 	0x01040000
       c:	00000000 	0x00000000
      10:	0000d60c 	0x0000d60c
      14:	00008700 	0x00008700
      18:	000bc000 	0x000bc000
      1c:	0002781c 	0x0002781c
      20:	00000000 	0x00000000
      24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
      28:	00bd0704 	bstrins.d	$r4,$r24,0x3d,0x1
      2c:	04030000 	csrrd	$r0,0xc0
      30:	0000b807 	0x0000b807
      34:	00b10400 	bstrins.d	$r0,$r0,0x31,0x1
      38:	0f030000 	0x0f030000
      3c:	00002716 	clz.d	$r22,$r24
      40:	00f00500 	bstrpick.d	$r0,$r8,0x30,0x1
      44:	02080000 	slti	$r0,$r0,512(0x200)
      48:	00690809 	bstrins.w	$r9,$r0,0x9,0x2
      4c:	73060000 	0x73060000
      50:	02007274 	slti	$r20,$r19,28(0x1c)
      54:	0069080a 	bstrins.w	$r10,$r0,0x9,0x2
      58:	06000000 	cacop	0x0,$r0,0
      5c:	00736f70 	bstrins.w	$r16,$r27,0x13,0x1b
      60:	35090b02 	0x35090b02
      64:	04000000 	csrrd	$r0,0x0
      68:	6f040700 	bgeu	$r24,$r0,-64508(0x30404) # ffff046c <_stack+0xe3ef0470>
      6c:	03000000 	lu52i.d	$r0,$r0,0
      70:	014b0601 	0x014b0601
      74:	f0040000 	0xf0040000
      78:	02000000 	slti	$r0,$r0,0
      7c:	0041150e 	slli.d	$r14,$r8,0x5
      80:	76080000 	0x76080000
      84:	92000000 	0x92000000
      88:	09000000 	0x09000000
      8c:	00000027 	0x00000027
      90:	000a0009 	0x000a0009
      94:	01000001 	0x01000001
      98:	00820605 	bstrins.d	$r5,$r16,0x2,0x1
      9c:	03050000 	lu52i.d	$r0,$r0,320(0x140)
      a0:	1c0806d0 	pcaddu12i	$r16,16438(0x4036)
      a4:	0000de0b 	0x0000de0b
      a8:	05580100 	0x05580100
      ac:	0000011d 	0x0000011d
      b0:	1c000de0 	pcaddu12i	$r0,111(0x6f)
      b4:	00000058 	0x00000058
      b8:	011d9c01 	0x011d9c01
      bc:	130c0000 	addu16i.d	$r0,$r0,-15616(0xc300)
      c0:	01000001 	0x01000001
      c4:	01241058 	0x01241058
      c8:	00080000 	bytepick.w	$r0,$r0,$r0,0x0
      cc:	00000000 	0x00000000
      d0:	730d0000 	vextl.qu.du	$vr0,$vr0
      d4:	01007274 	0x01007274
      d8:	00690859 	bstrins.w	$r25,$r2,0x9,0x2
      dc:	00430000 	0x00430000
      e0:	003f0000 	0x003f0000
      e4:	fa0e0000 	0xfa0e0000
      e8:	01000000 	0x01000000
      ec:	0035095a 	0x0035095a
      f0:	00650000 	bstrins.w	$r0,$r0,0x5,0x0
      f4:	00610000 	bstrins.w	$r0,$r0,0x1,0x0
      f8:	e90f0000 	0xe90f0000
      fc:	01000000 	0x01000000
     100:	011d1123 	ffint.s.w	$f3,$f9
     104:	010c0000 	0x010c0000
     108:	00100000 	add.w	$r0,$r0,$r0
     10c:	000e0011 	bytepick.d	$r17,$r0,$r0,0x4
     110:	0003321c 	0x0003321c
     114:	54011200 	bl	-134217456(0x8000110) # f8000224 <_stack+0xdbf00228>
     118:	00008702 	0x00008702
     11c:	05041300 	0x05041300
     120:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
     124:	00760407 	bstrins.w	$r7,$r0,0x16,0x1
     128:	060b0000 	cacop	0x0,$r0,704(0x2c0)
     12c:	01000001 	0x01000001
     130:	00690748 	bstrins.w	$r8,$r26,0x9,0x1
     134:	0d100000 	vbitsel.v	$vr0,$vr0,$vr0,$vr0
     138:	00c81c00 	bstrpick.d	$r0,$r0,0x8,0x7
     13c:	9c010000 	0x9c010000
     140:	000001e6 	0x000001e6
     144:	01007314 	0x01007314
     148:	00691348 	bstrins.w	$r8,$r26,0x9,0x4
     14c:	008d0000 	bstrins.d	$r0,$r0,0xd,0x0
     150:	00830000 	bstrins.d	$r0,$r0,0x3,0x0
     154:	f50c0000 	0xf50c0000
     158:	01000000 	0x01000000
     15c:	011d1a48 	ffint.s.l	$f8,$f18
     160:	00d60000 	bstrpick.d	$r0,$r0,0x16,0x0
     164:	00d20000 	bstrpick.d	$r0,$r0,0x12,0x0
     168:	130c0000 	addu16i.d	$r0,$r0,-15616(0xc300)
     16c:	01000001 	0x01000001
     170:	01242648 	0x01242648
     174:	01010000 	fadd.d	$f0,$f0,$f0
     178:	00f70000 	bstrpick.d	$r0,$r0,0x37,0x0
     17c:	730d0000 	vextl.qu.du	$vr0,$vr0
     180:	01007274 	0x01007274
     184:	00690849 	bstrins.w	$r9,$r2,0x9,0x2
     188:	014a0000 	0x014a0000
     18c:	01460000 	0x01460000
     190:	fa0e0000 	0xfa0e0000
     194:	01000000 	0x01000000
     198:	0035094a 	0x0035094a
     19c:	016c0000 	0x016c0000
     1a0:	01680000 	0x01680000
     1a4:	e90f0000 	0xe90f0000
     1a8:	01000000 	0x01000000
     1ac:	011d1123 	ffint.s.w	$f3,$f9
     1b0:	01b80000 	0x01b80000
     1b4:	00100000 	add.w	$r0,$r0,$r0
     1b8:	0100630d 	0x0100630d
     1bc:	0035094b 	0x0035094b
     1c0:	01920000 	0x01920000
     1c4:	018a0000 	0x018a0000
     1c8:	72150000 	0x72150000
     1cc:	084c0100 	0x084c0100
     1d0:	00000069 	0x00000069
     1d4:	0d381100 	0x0d381100
     1d8:	03321c00 	lu52i.d	$r0,$r0,-889(0xc87)
     1dc:	01120000 	0x01120000
     1e0:	00880254 	bstrins.d	$r20,$r18,0x8,0x0
     1e4:	0c160000 	fcmp.cueq.s	$fcc0,$f0,$f0
     1e8:	01000001 	0x01000001
     1ec:	0d00063d 	fsel	$f29,$f17,$f1,$fcc0
     1f0:	000c1c00 	bytepick.d	$r0,$r0,$r7,0x0
     1f4:	9c010000 	0x9c010000
     1f8:	00000216 	0x00000216
     1fc:	00011317 	0x00011317
     200:	133d0100 	addu16i.d	$r0,$r8,-12480(0xcf40)
     204:	00000124 	0x00000124
     208:	69155401 	bltu	$r0,$r1,70996(0x11554) # 1175c <__stack_size+0x175c>
     20c:	063e0100 	cacop	0x0,$r8,-128(0xf80)
     210:	0000011d 	0x0000011d
     214:	d00b0000 	0xd00b0000
     218:	01000000 	0x01000000
     21c:	00350820 	0x00350820
     220:	0c300000 	0x0c300000
     224:	00c81c00 	bstrpick.d	$r0,$r0,0x8,0x7
     228:	9c010000 	0x9c010000
     22c:	000002f1 	0x000002f1
     230:	72747014 	0x72747014
     234:	14200100 	lu12i.w	$r0,65544(0x10008)
     238:	00000025 	0x00000025
     23c:	000001d2 	0x000001d2
     240:	000001c8 	0x000001c8
     244:	0000f50c 	0x0000f50c
     248:	20200100 	ll.w	$r0,$r8,8192(0x2000)
     24c:	00000035 	0x00000035
     250:	00000221 	0x00000221
     254:	00000217 	0x00000217
     258:	0000ca0c 	0x0000ca0c
     25c:	2d200100 	0x2d200100
     260:	00000035 	0x00000035
     264:	00000270 	0x00000270
     268:	00000266 	0x00000266
     26c:	0001130c 	0x0001130c
     270:	3a200100 	0x3a200100
     274:	00000124 	0x00000124
     278:	000002bf 	0x000002bf
     27c:	000002b5 	0x000002b5
     280:	74756f0d 	xvmax.wu	$xr13,$xr24,$xr27
     284:	08210100 	fmadd.d	$f0,$f8,$f0,$f2
     288:	00000069 	0x00000069
     28c:	0000030e 	0x0000030e
     290:	00000304 	0x00000304
     294:	7274730d 	0x7274730d
     298:	08220100 	fmadd.d	$f0,$f8,$f0,$f4
     29c:	00000069 	0x00000069
     2a0:	00000357 	0x00000357
     2a4:	00000353 	0x00000353
     2a8:	0000fa0e 	0x0000fa0e
     2ac:	09230100 	vfmadd.d	$vr0,$vr8,$vr0,$vr6
     2b0:	00000035 	0x00000035
     2b4:	00000379 	0x00000379
     2b8:	00000375 	0x00000375
     2bc:	0000e90f 	0x0000e90f
     2c0:	11230100 	addu16i.d	$r0,$r8,18624(0x48c0)
     2c4:	0000011d 	0x0000011d
     2c8:	000002ce 	0x000002ce
     2cc:	630d0010 	blt	$r0,$r16,-62208(0x30d00) # ffff0fcc <_stack+0xe3ef0fd0>
     2d0:	09270100 	vfmadd.d	$vr0,$vr8,$vr0,$vr14
     2d4:	00000035 	0x00000035
     2d8:	0000039b 	0x0000039b
     2dc:	00000397 	0x00000397
     2e0:	000c6811 	bytepick.d	$r17,$r0,$r26,0x0
     2e4:	0003321c 	0x0003321c
     2e8:	54011200 	bl	-134217456(0x8000110) # f80003f8 <_stack+0xdbf003fc>
     2ec:	00008902 	0x00008902
     2f0:	00e30b00 	bstrpick.d	$r0,$r24,0x23,0x2
     2f4:	14010000 	lu12i.w	$r0,2048(0x800)
     2f8:	00012407 	0x00012407
     2fc:	000bc000 	0x000bc000
     300:	0000641c 	rdtimeh.w	$r28,$r0
     304:	329c0100 	xvldrepl.b	$xr0,$r8,1792(0x700)
     308:	14000003 	lu12i.w	$r3,0
     30c:	00727473 	bstrins.w	$r19,$r3,0x12,0x1d
     310:	69131401 	bltu	$r0,$r1,70420(0x11314) # 11624 <__stack_size+0x1624>
     314:	c1000000 	0xc1000000
     318:	b9000003 	0xb9000003
     31c:	0d000003 	fsel	$f3,$f0,$f0,$fcc0
     320:	15010069 	lu12i.w	$r9,-522237(0x80803)
     324:	00011d06 	0x00011d06
     328:	0003fb00 	0x0003fb00
     32c:	0003f500 	0x0003f500
     330:	e9180000 	0xe9180000
     334:	e9000000 	0xe9000000
     338:	01000000 	0x01000000
     33c:	68001123 	bltu	$r9,$r3,16(0x10) # 34c <__stack_size-0xfcb4>
     340:	04000002 	csrrd	$r2,0x0
     344:	00018000 	asrtgt.d	$r0,$r0
     348:	00010400 	asrtle.d	$r0,$r1
     34c:	0c000000 	0x0c000000
     350:	00000134 	0x00000134
     354:	00000087 	0x00000087
     358:	1c000e40 	pcaddu12i	$r0,114(0x72)
     35c:	0000023c 	0x0000023c
     360:	00000233 	0x00000233
     364:	04030402 	csrrd	$r2,0xc1
     368:	0000bd07 	0x0000bd07
     36c:	07040300 	0x07040300
     370:	000000b8 	0x000000b8
     374:	00013d04 	0x00013d04
     378:	05010100 	0x05010100
     37c:	00000228 	0x00000228
     380:	1c000e40 	pcaddu12i	$r0,114(0x72)
     384:	0000023c 	0x0000023c
     388:	02289c01 	slti	$r1,$r0,-1497(0xa27)
     38c:	66050000 	bge	$r0,$r0,-129792(0x20500) # fffe088c <_stack+0xe3ee0890>
     390:	0100746d 	0x0100746d
     394:	022f1801 	slti	$r1,$r0,-1082(0xbc6)
     398:	042d0000 	csrrd	$r0,0xb40
     39c:	04250000 	csrrd	$r0,0x940
     3a0:	07060000 	0x07060000
     3a4:	03010069 	lu52i.d	$r9,$r3,64(0x40)
     3a8:	00022805 	0x00022805
     3ac:	00049600 	alsl.w	$r0,$r16,$r5,0x2
     3b0:	00046400 	alsl.w	$r0,$r0,$r25,0x1
     3b4:	00630700 	bstrins.w	$r0,$r24,0x3,0x1
     3b8:	35060401 	0x35060401
     3bc:	ce000002 	0xce000002
     3c0:	c8000005 	0xc8000005
     3c4:	07000005 	0x07000005
     3c8:	00677261 	bstrins.w	$r1,$r19,0x7,0x1c
     3cc:	41080501 	beqz	$r8,329732(0x50804) # 50bd0 <__stack_size+0x40bd0>
     3d0:	1b000002 	pcalau12i	$r2,-524288(0x80000)
     3d4:	f7000006 	0xf7000006
     3d8:	08000005 	0x08000005
     3dc:	01007061 	0x01007061
     3e0:	00250706 	crc.w.w.w	$r6,$r24,$r1
     3e4:	91030000 	0x91030000
     3e8:	77077fbc 	0x77077fbc
     3ec:	05070100 	0x05070100
     3f0:	00000228 	0x00000228
     3f4:	00000715 	0x00000715
     3f8:	000006f9 	0x000006f9
     3fc:	00011a09 	0x00011a09
     400:	01100100 	0x01100100
     404:	1c000eec 	pcaddu12i	$r12,119(0x77)
     408:	0000180a 	cto.w	$r10,$r0
     40c:	0001d000 	asrtgt.d	$r0,$r20
     410:	012a0b00 	0x012a0b00
     414:	14010000 	lu12i.w	$r0,2048(0x800)
     418:	00022805 	0x00022805
     41c:	0000e400 	0x0000e400
     420:	0b000600 	0x0b000600
     424:	00000148 	0x00000148
     428:	28051901 	ld.b	$r1,$r8,326(0x146)
     42c:	f6000002 	0xf6000002
     430:	06000000 	cacop	0x0,$r0,0
     434:	01200b00 	0x01200b00
     438:	1e010000 	pcaddu18i	$r0,2048(0x800)
     43c:	00022805 	0x00022805
     440:	00010800 	asrtle.d	$r0,$r2
     444:	0c000600 	0x0c000600
     448:	1c000f9c 	pcaddu12i	$r28,124(0x7c)
     44c:	00000247 	0x00000247
     450:	00000120 	0x00000120
     454:	0156010d 	0x0156010d
     458:	57010d32 	bl	80412940(0x4cb010c) # 4cb0564 <__stack_size+0x4ca0564>
     45c:	0e003001 	0x0e003001
     460:	1c000fb0 	pcaddu12i	$r16,125(0x7d)
     464:	00000253 	0x00000253
     468:	000fcc0c 	bytepick.d	$r12,$r0,$r19,0x7
     46c:	0002471c 	0x0002471c
     470:	00014100 	asrtle.d	$r8,$r16
     474:	56010d00 	bl	67240204(0x402010c) # 4020580 <__stack_size+0x4010580>
     478:	010d3a01 	fmaxa.d	$f1,$f16,$f14
     47c:	00310157 	0x00310157
     480:	000fe80c 	bytepick.d	$r12,$r0,$r26,0x7
     484:	0002471c 	0x0002471c
     488:	00015900 	asrtle.d	$r8,$r22
     48c:	56010d00 	bl	67240204(0x402010c) # 4020598 <__stack_size+0x4010598>
     490:	010d3a01 	fmaxa.d	$f1,$f16,$f14
     494:	00300157 	0x00300157
     498:	0010080c 	add.w	$r12,$r0,$r2
     49c:	0002471c 	0x0002471c
     4a0:	00017200 	asrtle.d	$r16,$r28
     4a4:	56010d00 	bl	67240204(0x402010c) # 40205b0 <__stack_size+0x40105b0>
     4a8:	0d008b02 	fsel	$f2,$f24,$f2,$fcc1
     4ac:	30015701 	0x30015701
     4b0:	10280c00 	addu16i.d	$r0,$r0,2563(0xa03)
     4b4:	02471c00 	sltui	$r0,$r0,455(0x1c7)
     4b8:	018a0000 	0x018a0000
     4bc:	010d0000 	fmaxa.d	$f0,$f0,$f0
     4c0:	0d400156 	0x0d400156
     4c4:	30015701 	0x30015701
     4c8:	10400e00 	addu16i.d	$r0,$r16,4099(0x1003)
     4cc:	025f1c00 	sltui	$r0,$r0,1991(0x7c7)
     4d0:	5c0c0000 	bne	$r0,$r0,3072(0xc00) # 10d0 <__stack_size-0xef30>
     4d4:	471c0010 	bnez	$r0,-3990528(0x431c00) # ffc320d4 <_stack+0xe3b320d8>
     4d8:	ab000002 	0xab000002
     4dc:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
     4e0:	3a015601 	0x3a015601
     4e4:	0157010d 	0x0157010d
     4e8:	6c0c0030 	bgeu	$r1,$r16,3072(0xc00) # 10e8 <__stack_size-0xef18>
     4ec:	531c0010 	b	4398080(0x431c00) # 4320ec <__stack_size+0x4220ec>
     4f0:	bf000002 	0xbf000002
     4f4:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
     4f8:	08025401 	0x08025401
     4fc:	780f0025 	0x780f0025
     500:	531c0010 	b	4398080(0x431c00) # 432100 <__stack_size+0x422100>
     504:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
     508:	08025401 	0x08025401
     50c:	10000025 	addu16i.d	$r5,$r1,0
     510:	00000000 	0x00000000
     514:	0001480b 	0x0001480b
     518:	05190100 	0x05190100
     51c:	00000228 	0x00000228
     520:	000001e7 	0x000001e7
     524:	cc110006 	0xcc110006
     528:	141c000e 	lu12i.w	$r14,57344(0xe000)
     52c:	16000000 	lu32i.d	$r0,0
     530:	0b000002 	0x0b000002
     534:	00000148 	0x00000148
     538:	28051901 	ld.b	$r1,$r8,326(0x146)
     53c:	06000002 	cacop	0x2,$r0,0
     540:	06000002 	cacop	0x2,$r0,0
     544:	0ed40f00 	0x0ed40f00
     548:	02531c00 	sltui	$r0,$r0,1223(0x4c7)
     54c:	010d0000 	fmaxa.d	$f0,$f0,$f0
     550:	003d0154 	0x003d0154
     554:	0eac0f00 	0x0eac0f00
     558:	02531c00 	sltui	$r0,$r0,1223(0x4c7)
     55c:	010d0000 	fmaxa.d	$f0,$f0,$f0
     560:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
     564:	12000000 	addu16i.d	$r0,$r0,-32768(0x8000)
     568:	6e690504 	bgeu	$r8,$r4,-104188(0x26904) # fffe6e6c <_stack+0xe3ee6e70>
     56c:	04130074 	csrxchg	$r20,$r3,0x4c0
     570:	0000023c 	0x0000023c
     574:	4b060103 	bcnez	$fcc0,984576(0xf0600) # f0b74 <__stack_size+0xe0b74>
     578:	14000001 	lu12i.w	$r1,0
     57c:	00000235 	0x00000235
     580:	00250413 	crc.w.w.w	$r19,$r0,$r1
     584:	20150000 	ll.w	$r0,$r0,5376(0x1500)
     588:	20000001 	ll.w	$r1,$r0,0
     58c:	01000001 	0x01000001
     590:	4815051e 	bcnez	$fcc0,-518908(0x781504) # fff81a94 <_stack+0xe3e81a98>
     594:	48000001 	bceqz	$fcc0,262144(0x40000) # 40594 <__stack_size+0x30594>
     598:	01000001 	0x01000001
     59c:	2a150519 	ld.bu	$r25,$r8,1345(0x541)
     5a0:	2a000001 	ld.bu	$r1,$r0,0
     5a4:	01000001 	0x01000001
     5a8:	c4000514 	0xc4000514
     5ac:	04000000 	csrrd	$r0,0x0
     5b0:	00029e00 	0x00029e00
     5b4:	00010400 	asrtle.d	$r0,$r1
     5b8:	0c000000 	0x0c000000
     5bc:	00000150 	0x00000150
     5c0:	00000087 	0x00000087
     5c4:	1c001080 	pcaddu12i	$r0,132(0x84)
     5c8:	00000054 	0x00000054
     5cc:	000003db 	0x000003db
     5d0:	bd070402 	0xbd070402
     5d4:	02000000 	slti	$r0,$r0,0
     5d8:	00b80704 	bstrins.d	$r4,$r24,0x38,0x1
     5dc:	44030000 	bnez	$r0,768(0x300) # 8dc <__stack_size-0xf724>
     5e0:	01000001 	0x01000001
     5e4:	4b010607 	0x4b010607
     5e8:	04000000 	csrrd	$r0,0x0
     5ec:	07010063 	0x07010063
     5f0:	00004b06 	bitrev.4b	$r6,$r24
     5f4:	04050000 	csrrd	$r0,0x140
     5f8:	746e6905 	0x746e6905
     5fc:	01480600 	0x01480600
     600:	01010000 	fadd.d	$f0,$f0,$f0
     604:	00004b05 	bitrev.4b	$r5,$r24
     608:	00108000 	add.d	$r0,$r0,$r0
     60c:	0000281c 	cto.d	$r28,$r0
     610:	b09c0100 	0xb09c0100
     614:	07000000 	0x07000000
     618:	01010063 	fadd.d	$f3,$f3,$f0
     61c:	00004b11 	bitrev.4b	$r17,$r24
     620:	0007bc00 	alsl.wu	$r0,$r0,$r15,0x4
     624:	0007b800 	alsl.wu	$r0,$r0,$r14,0x4
     628:	01440800 	0x01440800
     62c:	03010000 	lu52i.d	$r0,$r0,64(0x40)
     630:	00004b01 	bitrev.4b	$r1,$r24
     634:	00009000 	0x00009000
     638:	0a000900 	0x0a000900
     63c:	00000033 	0x00000033
     640:	1c001080 	pcaddu12i	$r0,132(0x84)
     644:	00003002 	revb.2h	$r2,$r0
     648:	01030100 	fsub.d	$f0,$f8,$f0
     64c:	0000400b 	revh.2w	$r11,$r0
     650:	0007df00 	alsl.wu	$r0,$r24,$r23,0x4
     654:	0007dd00 	alsl.wu	$r0,$r8,$r23,0x4
     658:	0c000000 	0x0c000000
     65c:	00000033 	0x00000033
     660:	1c0010b0 	pcaddu12i	$r16,133(0x85)
     664:	00000024 	0x00000024
     668:	400d9c01 	beqz	$r0,265628(0x40d9c) # 41404 <__stack_size+0x31404>
     66c:	01000000 	0x01000000
     670:	70000054 	vseq.b	$vr20,$vr2,$vr0
     674:	04000001 	csrrd	$r1,0x0
     678:	00036f00 	0x00036f00
     67c:	00010400 	asrtle.d	$r0,$r1
     680:	0c000000 	0x0c000000
     684:	0000015a 	0x0000015a
     688:	00000087 	0x00000087
     68c:	1c0010e0 	pcaddu12i	$r0,135(0x87)
     690:	000000ac 	0x000000ac
     694:	0000043c 	0x0000043c
     698:	bd070402 	0xbd070402
     69c:	02000000 	slti	$r0,$r0,0
     6a0:	00b80704 	bstrins.d	$r4,$r24,0x38,0x1
     6a4:	61030000 	blt	$r0,$r0,66304(0x10300) # 109a4 <__stack_size+0x9a4>
     6a8:	01000001 	0x01000001
     6ac:	00a9050e 	bstrins.d	$r14,$r8,0x29,0x1
     6b0:	11600000 	addu16i.d	$r0,$r0,22528(0x5800)
     6b4:	002c1c00 	alsl.d	$r0,$r0,$r7,0x1
     6b8:	9c010000 	0x9c010000
     6bc:	000000a9 	0x000000a9
     6c0:	01007304 	0x01007304
     6c4:	00b0100e 	bstrins.d	$r14,$r0,0x30,0x4
     6c8:	07f60000 	0x07f60000
     6cc:	07f20000 	0x07f20000
     6d0:	48050000 	bceqz	$fcc0,1280(0x500) # bd0 <__stack_size-0xf430>
     6d4:	01000001 	0x01000001
     6d8:	00a91006 	bstrins.d	$r6,$r0,0x29,0x4
     6dc:	00710000 	bstrins.w	$r0,$r0,0x11,0x0
     6e0:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
     6e4:	00116c07 	sub.w	$r7,$r0,$r27
     6e8:	0000bd1c 	0x0000bd1c
     6ec:	00008600 	0x00008600
     6f0:	54010800 	bl	264(0x108) # 7f8 <__stack_size-0xf808>
     6f4:	5401f303 	bl	-66321936(0xc0c01f0) # fc0c08e4 <_stack+0xdffc08e8>
     6f8:	11740700 	addu16i.d	$r0,$r24,23809(0x5d01)
     6fc:	01671c00 	0x01671c00
     700:	00990000 	bstrins.d	$r0,$r0,0x19,0x0
     704:	01080000 	0x01080000
     708:	003d0154 	0x003d0154
     70c:	00117c09 	sub.w	$r9,$r0,$r31
     710:	0001671c 	0x0001671c
     714:	54010800 	bl	264(0x108) # 81c <__stack_size-0xf7e4>
     718:	00003a01 	revb.2w	$r1,$r16
     71c:	6905040a 	bltu	$r0,$r10,66820(0x10504) # 10c20 <__stack_size+0xc20>
     720:	0b00746e 	0x0b00746e
     724:	0000b604 	0x0000b604
     728:	06010200 	cacop	0x0,$r16,64(0x40)
     72c:	0000014b 	0x0000014b
     730:	00012a03 	0x00012a03
     734:	05010100 	0x05010100
     738:	000000a9 	0x000000a9
     73c:	1c0010e0 	pcaddu12i	$r0,135(0x87)
     740:	00000074 	0x00000074
     744:	01679c01 	0x01679c01
     748:	73040000 	0x73040000
     74c:	15010100 	lu12i.w	$r0,-522232(0x80808)
     750:	000000b0 	0x000000b0
     754:	00000821 	0x00000821
     758:	00000817 	0x00000817
     75c:	0100630c 	0x0100630c
     760:	00b60603 	bstrins.d	$r3,$r16,0x36,0x1
     764:	08660000 	fmsub.d	$f0,$f0,$f0,$f12
     768:	08640000 	fmsub.d	$f0,$f0,$f0,$f8
     76c:	480d0000 	bceqz	$fcc0,3328(0xd00) # 146c <__stack_size-0xeb94>
     770:	05000000 	0x05000000
     774:	00000148 	0x00000148
     778:	a9100601 	0xa9100601
     77c:	12000000 	addu16i.d	$r0,$r0,-32768(0x8000)
     780:	06000001 	cacop	0x1,$r0,0
     784:	11200e00 	addu16i.d	$r0,$r16,18435(0x4803)
     788:	00081c00 	bytepick.w	$r0,$r0,$r7,0x0
     78c:	01410000 	0x01410000
     790:	48050000 	bceqz	$fcc0,1280(0x500) # c90 <__stack_size-0xf370>
     794:	01000001 	0x01000001
     798:	00a91006 	bstrins.d	$r6,$r0,0x29,0x4
     79c:	01310000 	0x01310000
     7a0:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
     7a4:	00112809 	sub.w	$r9,$r0,$r10
     7a8:	0001671c 	0x0001671c
     7ac:	54010800 	bl	264(0x108) # 8b4 <__stack_size-0xf74c>
     7b0:	00003d01 	revb.d	$r1,$r8
     7b4:	00111007 	sub.w	$r7,$r0,$r4
     7b8:	0001671c 	0x0001671c
     7bc:	00015500 	asrtle.d	$r8,$r21
     7c0:	54010800 	bl	264(0x108) # 8c8 <__stack_size-0xf738>
     7c4:	00008702 	0x00008702
     7c8:	00113009 	sub.w	$r9,$r0,$r12
     7cc:	0001671c 	0x0001671c
     7d0:	54010800 	bl	264(0x108) # 8d8 <__stack_size-0xf728>
     7d4:	00008702 	0x00008702
     7d8:	480f0000 	bceqz	$fcc0,3840(0xf00) # 16d8 <__stack_size-0xe928>
     7dc:	48000001 	bceqz	$fcc0,262144(0x40000) # 407dc <__stack_size+0x307dc>
     7e0:	01000001 	0x01000001
     7e4:	77001006 	0x77001006
     7e8:	04000001 	csrrd	$r1,0x0
     7ec:	00044b00 	alsl.w	$r0,$r24,$r18,0x1
     7f0:	00010400 	asrtle.d	$r0,$r1
     7f4:	0c000000 	0x0c000000
     7f8:	00000166 	0x00000166
     7fc:	00000087 	0x00000087
     800:	1c001190 	pcaddu12i	$r16,140(0x8c)
     804:	000000ec 	0x000000ec
     808:	000004d4 	0x000004d4
     80c:	bd070402 	0xbd070402
     810:	02000000 	slti	$r0,$r0,0
     814:	00b80704 	bstrins.d	$r4,$r24,0x38,0x1
     818:	20030000 	ll.w	$r0,$r0,768(0x300)
     81c:	01000001 	0x01000001
     820:	01490501 	0x01490501
     824:	11900000 	addu16i.d	$r0,$r0,25600(0x6400)
     828:	00ec1c00 	bstrpick.d	$r0,$r0,0x2c,0x7
     82c:	9c010000 	0x9c010000
     830:	00000149 	0x00000149
     834:	01007604 	0x01007604
     838:	01501401 	0x01501401
     83c:	08850000 	0x08850000
     840:	08790000 	0x08790000
     844:	77040000 	0x77040000
     848:	1a010100 	pcalau12i	$r0,2056(0x808)
     84c:	00000149 	0x00000149
     850:	000008df 	0x000008df
     854:	000008d5 	0x000008d5
     858:	00012505 	0x00012505
     85c:	20010100 	ll.w	$r0,$r8,256(0x100)
     860:	00000149 	0x00000149
     864:	0000092d 	0x0000092d
     868:	00000923 	0x00000923
     86c:	00017805 	0x00017805
     870:	29010100 	st.b	$r0,$r8,64(0x40)
     874:	00000149 	0x00000149
     878:	0000097b 	0x0000097b
     87c:	00000971 	0x00000971
     880:	01006906 	0x01006906
     884:	01490603 	0x01490603
     888:	09cc0000 	0x09cc0000
     88c:	09c00000 	0x09c00000
     890:	6a060000 	bltu	$r0,$r0,-129536(0x20600) # fffe0e90 <_stack+0xe3ee0e94>
     894:	08030100 	0x08030100
     898:	00000149 	0x00000149
     89c:	00000a29 	0x00000a29
     8a0:	00000a1f 	0x00000a1f
     8a4:	01006306 	0x01006306
     8a8:	01490604 	0x01490604
     8ac:	0a780000 	0x0a780000
     8b0:	0a760000 	0x0a760000
     8b4:	62070000 	blt	$r0,$r0,-129280(0x20700) # fffe0fb4 <_stack+0xe3ee0fb8>
     8b8:	01006675 	0x01006675
     8bc:	01570705 	0x01570705
     8c0:	91030000 	0x91030000
     8c4:	72087fb0 	0x72087fb0
     8c8:	01000001 	0x01000001
     8cc:	002c1006 	alsl.d	$r6,$r0,$r4,0x1
     8d0:	0a9b0000 	xvfnmadd.s	$xr0,$xr0,$xr0,$xr22
     8d4:	0a8b0000 	0x0a8b0000
     8d8:	50090000 	b	2304(0x900) # 11d8 <__stack_size-0xee28>
     8dc:	201c0012 	ll.w	$r18,$r0,7168(0x1c00)
     8e0:	23000000 	sc.d	$r0,$r0,0
     8e4:	0a000001 	0x0a000001
     8e8:	00000148 	0x00000148
     8ec:	49020a01 	0x49020a01
     8f0:	12000001 	addu16i.d	$r1,$r0,-32768(0x8000)
     8f4:	0b000001 	0x0b000001
     8f8:	12600c00 	addu16i.d	$r0,$r0,-26621(0x9803)
     8fc:	016e1c00 	0x016e1c00
     900:	010d0000 	fmaxa.d	$f0,$f0,$f0
     904:	2d080254 	0x2d080254
     908:	f80e0000 	0xf80e0000
     90c:	301c0011 	0x301c0011
     910:	0a000000 	0x0a000000
     914:	00000148 	0x00000148
     918:	49020a01 	0x49020a01
     91c:	3e000001 	0x3e000001
     920:	0b000001 	0x0b000001
     924:	12280f00 	addu16i.d	$r0,$r24,-30205(0x8a03)
     928:	016e1c00 	0x016e1c00
     92c:	00000000 	0x00000000
     930:	69050410 	bltu	$r0,$r16,66820(0x10504) # 10e34 <__stack_size+0xe34>
     934:	0200746e 	slti	$r14,$r3,29(0x1d)
     938:	017d0504 	0x017d0504
     93c:	67110000 	bge	$r0,$r0,-61184(0x31100) # ffff1a3c <_stack+0xe3ef1a40>
     940:	67000001 	bge	$r0,$r1,-65536(0x30000) # ffff0940 <_stack+0xe3ef0944>
     944:	12000001 	addu16i.d	$r1,$r0,-32768(0x8000)
     948:	00000025 	0x00000025
     94c:	0102003f 	0x0102003f
     950:	00014b06 	0x00014b06
     954:	01481300 	0x01481300
     958:	01480000 	0x01480000
     95c:	0a010000 	0x0a010000
     960:	04da0002 	csrrd	$r2,0x3680
     964:	00040000 	alsl.w	$r0,$r0,$r0,0x1
     968:	00000569 	0x00000569
     96c:	00000104 	0x00000104
     970:	930c0000 	0x930c0000
     974:	87000001 	0x87000001
     978:	60000000 	blt	$r0,$r0,0 # 978 <__stack_size-0xf688>
     97c:	00000000 	0x00000000
     980:	c0000000 	0xc0000000
     984:	02000005 	slti	$r5,$r0,0
     988:	07040304 	0x07040304
     98c:	000000bd 	0x000000bd
     990:	b8070403 	0xb8070403
     994:	04000000 	csrrd	$r0,0x0
     998:	000000b1 	0x000000b1
     99c:	27160f02 	stptr.d	$r2,$r24,5644(0x160c)
     9a0:	05000000 	0x05000000
     9a4:	0000018d 	0x0000018d
     9a8:	06015701 	cacop	0x1,$r24,85(0x55)
     9ac:	1c001540 	pcaddu12i	$r0,170(0xaa)
     9b0:	00000018 	0x00000018
     9b4:	00cd9c01 	bstrpick.d	$r1,$r0,0xd,0x27
     9b8:	73060000 	0x73060000
     9bc:	01570100 	0x01570100
     9c0:	00002512 	clz.d	$r18,$r8
     9c4:	000aff00 	0x000aff00
     9c8:	000afb00 	0x000afb00
     9cc:	006e0600 	bstrins.w	$r0,$r16,0xe,0x1
     9d0:	1c015701 	pcaddu12i	$r1,2744(0xab8)
     9d4:	00000035 	0x00000035
     9d8:	00000b24 	0x00000b24
     9dc:	00000b20 	0x00000b20
     9e0:	00026407 	0x00026407
     9e4:	00154000 	or	$r0,$r0,$r16
     9e8:	1540021c 	lu12i.w	$r28,-393200(0xa0010)
     9ec:	00141c00 	nor	$r0,$r0,$r7
     9f0:	58010000 	beq	$r0,$r0,256(0x100) # af0 <__stack_size-0xf510>
     9f4:	89080201 	0x89080201
     9f8:	4b000002 	bceqz	$fcc0,720896(0xb0000) # b09f8 <__stack_size+0xa09f8>
     9fc:	4500000b 	bnez	$r0,2949120(0x2d0000) # 2d09fc <__stack_size+0x2c09fc>
     a00:	0900000b 	0x0900000b
     a04:	0000027f 	0x0000027f
     a08:	02750800 	sltui	$r0,$r0,-702(0xd42)
     a0c:	0b7f0000 	0x0b7f0000
     a10:	0b7b0000 	0x0b7b0000
     a14:	400a0000 	beqz	$r0,2560(0xa00) # 1414 <__stack_size-0xebec>
     a18:	141c0015 	lu12i.w	$r21,57344(0xe000)
     a1c:	0b000000 	0x0b000000
     a20:	00000293 	0x00000293
     a24:	00000ba2 	0x00000ba2
     a28:	00000ba0 	0x00000ba0
     a2c:	0c000000 	0x0c000000
     a30:	0000019c 	0x0000019c
     a34:	01014b01 	fadd.d	$f1,$f24,$f18
     a38:	0000014c 	0x0000014c
     a3c:	1c0014e0 	pcaddu12i	$r0,167(0xa7)
     a40:	00000058 	0x00000058
     a44:	014c9c01 	0x014c9c01
     a48:	76060000 	0x76060000
     a4c:	4b010031 	bceqz	$fcc1,-3735296(0x470100) # ffc70b4c <_stack+0xe3b70b50>
     a50:	01531401 	0x01531401
     a54:	0bb90000 	0x0bb90000
     a58:	0bb50000 	0x0bb50000
     a5c:	76060000 	0x76060000
     a60:	4b010032 	bceqz	$fcc1,-3473152(0x4b0100) # ffcb0b60 <_stack+0xe3bb0b64>
     a64:	01532401 	0x01532401
     a68:	0bde0000 	0x0bde0000
     a6c:	0bda0000 	0x0bda0000
     a70:	6e060000 	bgeu	$r0,$r0,-129536(0x20600) # fffe1070 <_stack+0xe3ee1074>
     a74:	014b0100 	0x014b0100
     a78:	0000352f 	revb.4h	$r15,$r9
     a7c:	000c0700 	bytepick.d	$r0,$r24,$r1,0x0
     a80:	000bff00 	0x000bff00
     a84:	31730d00 	0x31730d00
     a88:	014c0100 	0x014c0100
     a8c:	00015a11 	0x00015a11
     a90:	000c4b00 	bytepick.d	$r0,$r24,$r18,0x0
     a94:	000c4700 	bytepick.d	$r0,$r24,$r17,0x0
     a98:	32730d00 	0x32730d00
     a9c:	014d0100 	0x014d0100
     aa0:	00015a11 	0x00015a11
     aa4:	000c6b00 	bytepick.d	$r0,$r24,$r26,0x0
     aa8:	000c6900 	bytepick.d	$r0,$r8,$r26,0x0
     aac:	040e0000 	csrrd	$r0,0x380
     ab0:	746e6905 	0x746e6905
     ab4:	59040f00 	beq	$r24,$r0,66572(0x1040c) # 10ec0 <__stack_size+0xec0>
     ab8:	10000001 	addu16i.d	$r1,$r0,0
     abc:	0167040f 	0x0167040f
     ac0:	01030000 	fsub.d	$f0,$f0,$f0
     ac4:	00014b06 	0x00014b06
     ac8:	01601100 	0x01601100
     acc:	c10c0000 	0xc10c0000
     ad0:	01000001 	0x01000001
     ad4:	25010128 	stptr.w	$r8,$r9,256(0x100)
     ad8:	80000000 	0x80000000
     adc:	5c1c0014 	bne	$r0,$r20,7168(0x1c00) # 26dc <__stack_size-0xd924>
     ae0:	01000000 	0x01000000
     ae4:	0001e59c 	0x0001e59c
     ae8:	73641200 	0x73641200
     aec:	28010074 	ld.b	$r20,$r3,64(0x40)
     af0:	00250f01 	crc.w.w.w	$r1,$r24,$r3
     af4:	54010000 	bl	256(0x100) # bf4 <__stack_size-0xf40c>
     af8:	63727306 	blt	$r24,$r6,-36240(0x37270) # ffff7d68 <_stack+0xe3ef7d6c>
     afc:	01280100 	0x01280100
     b00:	00015320 	asrtle.d	$r25,$r20
     b04:	000c8400 	bytepick.d	$r0,$r0,$r1,0x1
     b08:	000c7e00 	bytepick.d	$r0,$r16,$r31,0x0
     b0c:	006e0600 	bstrins.w	$r0,$r16,0xe,0x1
     b10:	2c012801 	vld	$vr1,$r0,74(0x4a)
     b14:	00000035 	0x00000035
     b18:	00000cb6 	0x00000cb6
     b1c:	00000cb0 	0x00000cb0
     b20:	0100730d 	0x0100730d
     b24:	5a11012c 	beq	$r9,$r12,-126720(0x21100) # fffe1c24 <_stack+0xe3ee1c28>
     b28:	eb000001 	0xeb000001
     b2c:	e300000c 	0xe300000c
     b30:	0d00000c 	fsel	$f12,$f0,$f0,$fcc0
     b34:	2d010064 	0x2d010064
     b38:	01e50b01 	0x01e50b01
     b3c:	0d290000 	xvbitsel.v	$xr0,$xr0,$xr0,$xr18
     b40:	0d1f0000 	vbitsel.v	$vr0,$vr0,$vr0,$vr30
     b44:	0f000000 	0x0f000000
     b48:	00016004 	0x00016004
     b4c:	01ba0c00 	0x01ba0c00
     b50:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
     b54:	00250101 	crc.w.w.w	$r1,$r8,$r0
     b58:	14500000 	lu12i.w	$r0,163840(0x28000)
     b5c:	00281c00 	0x00281c00
     b60:	9c010000 	0x9c010000
     b64:	00000264 	0x00000264
     b68:	74736412 	xvmin.w	$xr18,$xr0,$xr25
     b6c:	01110100 	fscaleb.d	$f0,$f8,$f0
     b70:	0000250e 	clz.d	$r14,$r8
     b74:	06540100 	0x06540100
     b78:	00637273 	bstrins.w	$r19,$r19,0x3,0x1c
     b7c:	1f011101 	pcaddu18i	$r1,-522104(0x80888)
     b80:	00000153 	0x00000153
     b84:	00000d6c 	0x00000d6c
     b88:	00000d68 	0x00000d68
     b8c:	01006e06 	0x01006e06
     b90:	352b0111 	0x352b0111
     b94:	93000000 	0x93000000
     b98:	8d00000d 	0x8d00000d
     b9c:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
     ba0:	15010073 	lu12i.w	$r19,-522237(0x80803)
     ba4:	015a1101 	0x015a1101
     ba8:	0dc50000 	0x0dc50000
     bac:	0dc30000 	0x0dc30000
     bb0:	640d0000 	bge	$r0,$r0,3328(0xd00) # 18b0 <__stack_size-0xe750>
     bb4:	01160100 	0x01160100
     bb8:	0001e50b 	0x0001e50b
     bbc:	000ddc00 	bytepick.d	$r0,$r0,$r23,0x3
     bc0:	000dd800 	bytepick.d	$r0,$r0,$r22,0x3
     bc4:	d9130000 	0xd9130000
     bc8:	01000001 	0x01000001
     bcc:	002501f6 	crc.w.w.w	$r22,$r15,$r0
     bd0:	9e010000 	0x9e010000
     bd4:	14000002 	lu12i.w	$r2,0
     bd8:	f6010073 	0xf6010073
     bdc:	0000250e 	clz.d	$r14,$r8
     be0:	00631400 	bstrins.w	$r0,$r0,0x3,0x5
     be4:	6016f601 	blt	$r16,$r1,5876(0x16f4) # 22d8 <__stack_size-0xdd28>
     be8:	14000001 	lu12i.w	$r1,0
     bec:	f601006e 	0xf601006e
     bf0:	00003520 	revb.4h	$r0,$r9
     bf4:	00701500 	bstrins.w	$r0,$r8,0x10,0x5
     bf8:	e50bfa01 	0xe50bfa01
     bfc:	00000001 	0x00000001
     c00:	0001d116 	0x0001d116
     c04:	01880100 	0x01880100
     c08:	000001e5 	0x000001e5
     c0c:	1c001400 	pcaddu12i	$r0,160(0xa0)
     c10:	00000028 	0x00000028
     c14:	02d79c01 	addi.d	$r1,$r0,1511(0x5e7)
     c18:	73170000 	0x73170000
     c1c:	15880100 	lu12i.w	$r0,-245752(0xc4008)
     c20:	0000015a 	0x0000015a
     c24:	00000dfe 	0x00000dfe
     c28:	00000dfa 	0x00000dfa
     c2c:	01006318 	0x01006318
     c30:	01601d88 	0x01601d88
     c34:	55010000 	bl	65792(0x10100) # 10d34 <__stack_size+0xd34>
     c38:	01b31600 	0x01b31600
     c3c:	74010000 	xvseq.w	$xr0,$xr0,$xr0
     c40:	0001e501 	0x0001e501
     c44:	0013c000 	masknez	$r0,$r0,$r16
     c48:	00003c1c 	revb.d	$r28,$r0
     c4c:	109c0100 	addu16i.d	$r0,$r8,9984(0x2700)
     c50:	17000003 	lu32i.d	$r3,-524288(0x80000)
     c54:	74010073 	xvseq.w	$xr19,$xr3,$xr0
     c58:	00015a14 	0x00015a14
     c5c:	000e2200 	bytepick.d	$r0,$r16,$r8,0x4
     c60:	000e1c00 	bytepick.d	$r0,$r0,$r7,0x4
     c64:	00631800 	bstrins.w	$r0,$r0,0x3,0x6
     c68:	601c7401 	blt	$r0,$r1,7284(0x1c74) # 28dc <__stack_size-0xd724>
     c6c:	01000001 	0x01000001
     c70:	c9160055 	0xc9160055
     c74:	01000001 	0x01000001
     c78:	014c0164 	0x014c0164
     c7c:	13500000 	addu16i.d	$r0,$r0,-11264(0xd400)
     c80:	006c1c00 	bstrins.w	$r0,$r0,0xc,0x7
     c84:	9c010000 	0x9c010000
     c88:	00000363 	0x00000363
     c8c:	00317317 	0x00317317
     c90:	5a156401 	beq	$r0,$r1,-125596(0x21564) # fffe21f4 <_stack+0xe3ee21f8>
     c94:	51000001 	b	327680(0x50000) # 50c94 <__stack_size+0x40c94>
     c98:	4b00000e 	bceqz	$fcc0,3866624(0x3b0000) # 3b0c98 <__stack_size+0x3a0c98>
     c9c:	1700000e 	lu32i.d	$r14,-524288(0x80000)
     ca0:	01003273 	0x01003273
     ca4:	015a2564 	0x015a2564
     ca8:	0e840000 	0x0e840000
     cac:	0e7a0000 	0x0e7a0000
     cb0:	6e170000 	bgeu	$r0,$r0,-125184(0x21700) # fffe23b0 <_stack+0xe3ee23b4>
     cb4:	30640100 	0x30640100
     cb8:	00000035 	0x00000035
     cbc:	00000ecf 	0x00000ecf
     cc0:	00000ec3 	0x00000ec3
     cc4:	01a31600 	0x01a31600
     cc8:	4d010000 	jirl	$r0,$r0,65792(0x10100)
     ccc:	0001e501 	0x0001e501
     cd0:	00132000 	maskeqz	$r0,$r0,$r8
     cd4:	00002c1c 	ctz.d	$r28,$r0
     cd8:	c69c0100 	0xc69c0100
     cdc:	18000003 	pcaddi	$r3,0
     ce0:	00747364 	bstrins.w	$r4,$r27,0x14,0x1c
     ce4:	e50f4d01 	0xe50f4d01
     ce8:	01000001 	0x01000001
     cec:	72731754 	0x72731754
     cf0:	4d010063 	jirl	$r3,$r3,65792(0x10100)
     cf4:	00015a20 	asrtle.d	$r17,$r22
     cf8:	000f3200 	bytepick.d	$r0,$r16,$r12,0x6
     cfc:	000f2e00 	bytepick.d	$r0,$r16,$r11,0x6
     d00:	656c1700 	bge	$r24,$r0,93204(0x16c14) # 17914 <__stack_size+0x7914>
     d04:	4d01006e 	jirl	$r14,$r3,65792(0x10100)
     d08:	0000352c 	revb.4h	$r12,$r9
     d0c:	000f5a00 	bytepick.d	$r0,$r16,$r22,0x6
     d10:	000f5000 	bytepick.d	$r0,$r0,$r20,0x6
     d14:	00701900 	bstrins.w	$r0,$r8,0x10,0x6
     d18:	e50b4e01 	0xe50b4e01
     d1c:	c1000001 	0xc1000001
     d20:	b900000f 	0xb900000f
     d24:	0000000f 	0x0000000f
     d28:	00018616 	0x00018616
     d2c:	01370100 	0x01370100
     d30:	000001e5 	0x000001e5
     d34:	1c001300 	pcaddu12i	$r0,152(0x98)
     d38:	0000001c 	0x0000001c
     d3c:	04159c01 	csrrd	$r1,0x567
     d40:	64180000 	bge	$r0,$r0,6144(0x1800) # 2540 <__stack_size-0xdac0>
     d44:	01007473 	0x01007473
     d48:	01e50e37 	0x01e50e37
     d4c:	54010000 	bl	256(0x100) # e4c <__stack_size-0xf1b4>
     d50:	63727317 	blt	$r24,$r23,-36240(0x37270) # ffff7fc0 <_stack+0xe3ef7fc4>
     d54:	1f370100 	pcaddu18i	$r0,-411640(0x9b808)
     d58:	0000015a 	0x0000015a
     d5c:	00000ffb 	0x00000ffb
     d60:	00000ff7 	0x00000ff7
     d64:	01007019 	0x01007019
     d68:	01e50b3b 	0x01e50b3b
     d6c:	101d0000 	addu16i.d	$r0,$r0,1856(0x740)
     d70:	10190000 	addu16i.d	$r0,$r0,1600(0x640)
     d74:	16000000 	lu32i.d	$r0,0
     d78:	000001ab 	0x000001ab
     d7c:	35012201 	0x35012201
     d80:	c0000000 	0xc0000000
     d84:	341c0012 	0x341c0012
     d88:	01000000 	0x01000000
     d8c:	0004649c 	alsl.w	$r28,$r4,$r25,0x1
     d90:	00731700 	bstrins.w	$r0,$r24,0x13,0x5
     d94:	5a152201 	beq	$r16,$r1,-125664(0x21520) # fffe22b4 <_stack+0xe3ee22b8>
     d98:	41000001 	beqz	$r0,327680(0x50000) # 50d98 <__stack_size+0x40d98>
     d9c:	3b000010 	0x3b000010
     da0:	18000010 	pcaddi	$r16,0
     da4:	006e656c 	bstrins.w	$r12,$r11,0xe,0x19
     da8:	351f2201 	0x351f2201
     dac:	01000000 	0x01000000
     db0:	6e631955 	bgeu	$r10,$r21,-105704(0x26318) # fffe70c8 <_stack+0xe3ee70cc>
     db4:	23010074 	sc.d	$r20,$r3,256(0x100)
     db8:	0000350c 	revb.4h	$r12,$r8
     dbc:	00107700 	add.w	$r0,$r24,$r29
     dc0:	00107300 	add.w	$r0,$r24,$r28
     dc4:	e9160000 	0xe9160000
     dc8:	01000000 	0x01000000
     dcc:	0035010c 	0x0035010c
     dd0:	12800000 	addu16i.d	$r0,$r0,-24576(0xa000)
     dd4:	00341c00 	0x00341c00
     dd8:	9c010000 	0x9c010000
     ddc:	000004a5 	0x000004a5
     de0:	01007317 	0x01007317
     de4:	015a140c 	0x015a140c
     de8:	10a20000 	addu16i.d	$r0,$r0,10368(0x2880)
     dec:	10960000 	addu16i.d	$r0,$r0,9600(0x2580)
     df0:	63190000 	blt	$r0,$r0,-59136(0x31900) # ffff26f0 <_stack+0xe3ef26f4>
     df4:	0100746e 	0x0100746e
     df8:	00350c0d 	0x00350c0d
     dfc:	110a0000 	addu16i.d	$r0,$r0,17024(0x4280)
     e00:	11040000 	addu16i.d	$r0,$r0,16640(0x4100)
     e04:	1a000000 	pcalau12i	$r0,0
     e08:	00000264 	0x00000264
     e0c:	1c001430 	pcaddu12i	$r16,161(0xa1)
     e10:	00000020 	0x00000020
     e14:	751b9c01 	xvilvl.d	$xr1,$xr0,$xr7
     e18:	01000002 	0x01000002
     e1c:	027f1b54 	sltui	$r20,$r26,-58(0xfc6)
     e20:	55010000 	bl	65792(0x10100) # 10f20 <__stack_size+0xf20>
     e24:	00028908 	0x00028908
     e28:	00114100 	sub.w	$r0,$r8,$r16
     e2c:	00113500 	sub.w	$r0,$r8,$r13
     e30:	02930b00 	addi.w	$r0,$r24,1218(0x4c2)
     e34:	11b30000 	addu16i.d	$r0,$r0,27840(0x6cc0)
     e38:	11af0000 	addu16i.d	$r0,$r0,27584(0x6bc0)
     e3c:	00000000 	0x00000000
     e40:	00000245 	0x00000245
     e44:	07160004 	0x07160004
     e48:	01040000 	0x01040000
     e4c:	00000000 	0x00000000
     e50:	0002120c 	0x0002120c
     e54:	00008700 	0x00008700
     e58:	00156000 	or	$r0,$r0,$r24
     e5c:	0001401c 	0x0001401c
     e60:	0008c400 	bytepick.w	$r0,$r0,$r17,0x1
     e64:	07040200 	0x07040200
     e68:	000000bd 	0x000000bd
     e6c:	b8070402 	0xb8070402
     e70:	03000000 	lu52i.d	$r0,$r0,0
     e74:	00000201 	0x00000201
     e78:	2c170302 	vld	$vr2,$r24,1472(0x5c0)
     e7c:	04000000 	csrrd	$r0,0x0
     e80:	6e690504 	bgeu	$r8,$r4,-104188(0x26904) # fffe7784 <_stack+0xe3ee7788>
     e84:	f8050074 	0xf8050074
     e88:	10000001 	addu16i.d	$r1,$r0,0
     e8c:	88082002 	0x88082002
     e90:	06000000 	cacop	0x0,$r0,0
     e94:	0000023b 	0x0000023b
     e98:	330b2102 	0x330b2102
     e9c:	00000000 	0x00000000
     ea0:	00024906 	0x00024906
     ea4:	0b220200 	0x0b220200
     ea8:	00000033 	0x00000033
     eac:	022a0604 	slti	$r4,$r16,-1407(0xa81)
     eb0:	23020000 	sc.d	$r0,$r0,512(0x200)
     eb4:	0000330b 	revb.2h	$r11,$r24
     eb8:	0a060800 	0x0a060800
     ebc:	02000002 	slti	$r2,$r0,0
     ec0:	00330b24 	0x00330b24
     ec4:	000c0000 	bytepick.d	$r0,$r0,$r0,0x0
     ec8:	00021907 	0x00021907
     ecc:	0f3c0100 	0x0f3c0100
     ed0:	0000002c 	0x0000002c
     ed4:	1c001670 	pcaddu12i	$r16,179(0xb3)
     ed8:	00000030 	0x00000030
     edc:	00da9c01 	bstrpick.d	$r1,$r0,0x1a,0x27
     ee0:	6e080000 	bgeu	$r0,$r0,-129024(0x20800) # fffe16e0 <_stack+0xe3ee16e4>
     ee4:	133e0100 	addu16i.d	$r0,$r8,-12416(0xcf80)
     ee8:	0000002c 	0x0000002c
     eec:	000011d9 	clo.w	$r25,$r14
     ef0:	000011d1 	clo.w	$r17,$r14
     ef4:	00022e09 	0x00022e09
     ef8:	00167000 	orn	$r0,$r0,$r28
     efc:	00b8031c 	bstrins.d	$r28,$r24,0x38,0x0
     f00:	3f010000 	0x3f010000
     f04:	00b80a09 	bstrins.d	$r9,$r16,0x38,0x2
     f08:	3b0b0000 	0x3b0b0000
     f0c:	1b000002 	pcalau12i	$r2,-524288(0x80000)
     f10:	19000012 	pcaddi	$r18,-524288(0x80000)
     f14:	00000012 	0x00000012
     f18:	42070000 	beqz	$r0,132864(0x20700) # 21618 <__stack_size+0x11618>
     f1c:	01000002 	0x01000002
     f20:	002c0f33 	alsl.d	$r19,$r25,$r3,0x1
     f24:	16400000 	lu32i.d	$r0,131072(0x20000)
     f28:	00241c00 	crc.w.b.w	$r0,$r0,$r7
     f2c:	9c010000 	0x9c010000
     f30:	0000012c 	0x0000012c
     f34:	01006e08 	0x01006e08
     f38:	002c1335 	alsl.d	$r21,$r25,$r4,0x1
     f3c:	12360000 	addu16i.d	$r0,$r0,-29312(0x8d80)
     f40:	122e0000 	addu16i.d	$r0,$r0,-29824(0x8b80)
     f44:	2e090000 	0x2e090000
     f48:	40000002 	beqz	$r0,524288(0x80000) # 80f48 <__stack_size+0x70f48>
     f4c:	031c0016 	lu52i.d	$r22,$r0,1792(0x700)
     f50:	000000a0 	0x000000a0
     f54:	0a093601 	0x0a093601
     f58:	000000a0 	0x000000a0
     f5c:	00023b0b 	0x00023b0b
     f60:	00127100 	slt	$r0,$r8,$r28
     f64:	00126f00 	slt	$r0,$r24,$r27
     f68:	00000000 	0x00000000
     f6c:	0002200c 	0x0002200c
     f70:	0f2c0100 	0x0f2c0100
     f74:	0000002c 	0x0000002c
     f78:	00000147 	0x00000147
     f7c:	01006e0d 	0x01006e0d
     f80:	002c132e 	alsl.d	$r14,$r25,$r4,0x1
     f84:	07000000 	0x07000000
     f88:	00000251 	0x00000251
     f8c:	2c0f2001 	vld	$vr1,$r0,968(0x3c8)
     f90:	a0000000 	0xa0000000
     f94:	841c0015 	0x841c0015
     f98:	01000000 	0x01000000
     f9c:	0001bb9c 	0x0001bb9c
     fa0:	65730e00 	bge	$r16,$r0,94988(0x1730c) # 182ac <__stack_size+0x82ac>
     fa4:	2001006c 	ll.w	$r12,$r3,256(0x100)
     fa8:	00003f21 	revb.d	$r1,$r25
     fac:	00128800 	sltu	$r0,$r0,$r2
     fb0:	00128400 	sltu	$r0,$r0,$r1
     fb4:	6d740f00 	bgeu	$r24,$r0,95244(0x1740c) # 183c0 <__stack_size+0x83c0>
     fb8:	20010070 	ll.w	$r16,$r3,256(0x100)
     fbc:	0001bb36 	0x0001bb36
     fc0:	08550100 	fmsub.s	$f0,$f8,$f0,$f10
     fc4:	2201006e 	ll.d	$r14,$r3,256(0x100)
     fc8:	00002c13 	ctz.d	$r19,$r0
     fcc:	0012ad00 	sltu	$r0,$r8,$r11
     fd0:	0012a900 	sltu	$r0,$r8,$r10
     fd4:	022e0900 	slti	$r0,$r8,-1150(0xb82)
     fd8:	15a00000 	lu12i.w	$r0,-196608(0xd0000)
     fdc:	88031c00 	0x88031c00
     fe0:	01000000 	0x01000000
     fe4:	880a0923 	0x880a0923
     fe8:	0b000000 	0x0b000000
     fec:	0000023b 	0x0000023b
     ff0:	000012ce 	clo.w	$r14,$r22
     ff4:	000012cc 	clo.w	$r12,$r22
     ff8:	10000000 	addu16i.d	$r0,$r0,0
     ffc:	00004604 	revh.d	$r4,$r16
    1000:	01e01100 	0x01e01100
    1004:	16010000 	lu32i.d	$r0,2048(0x800)
    1008:	00002c0f 	ctz.d	$r15,$r0
    100c:	00159000 	xor	$r0,$r0,$r4
    1010:	0000081c 	0x0000081c
    1014:	ee9c0100 	0xee9c0100
    1018:	08000001 	0x08000001
    101c:	1801006e 	pcaddi	$r14,2051(0x803)
    1020:	00002c13 	ctz.d	$r19,$r0
    1024:	0012e300 	sltu	$r0,$r24,$r24
    1028:	0012e100 	sltu	$r0,$r8,$r24
    102c:	ee110000 	0xee110000
    1030:	01000001 	0x01000001
    1034:	002c0f11 	alsl.d	$r17,$r24,$r3,0x1
    1038:	15600000 	lu12i.w	$r0,-327680(0xb0000)
    103c:	001c1c00 	mul.w	$r0,$r0,$r7
    1040:	9c010000 	0x9c010000
    1044:	0000022e 	0x0000022e
    1048:	00022e09 	0x00022e09
    104c:	00156000 	or	$r0,$r0,$r24
    1050:	0070021c 	bstrins.w	$r28,$r16,0x10,0x0
    1054:	13010000 	addu16i.d	$r0,$r0,-16320(0xc040)
    1058:	00700a0d 	bstrins.w	$r13,$r16,0x10,0x2
    105c:	3b0b0000 	0x3b0b0000
    1060:	f8000002 	0xf8000002
    1064:	f6000012 	0xf6000012
    1068:	00000012 	0x00000012
    106c:	ed120000 	0xed120000
    1070:	01000001 	0x01000001
    1074:	002c0f04 	alsl.d	$r4,$r24,$r3,0x1
    1078:	13010000 	addu16i.d	$r0,$r0,-16320(0xc040)
    107c:	00000232 	0x00000232
    1080:	2c130601 	vld	$vr1,$r16,1217(0x4c1)
    1084:	00000000 	0x00000000
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
  24:	00160400 	orn	$r0,$r0,$r1
  28:	0b3a0e03 	0x0b3a0e03
  2c:	0b390b3b 	0x0b390b3b
  30:	00001349 	clo.w	$r9,$r26
  34:	03011305 	lu52i.d	$r5,$r24,68(0x44)
  38:	3a0b0b0e 	0x3a0b0b0e
  3c:	390b3b0b 	0x390b3b0b
  40:	0013010b 	maskeqz	$r11,$r8,$r0
  44:	000d0600 	bytepick.d	$r0,$r16,$r1,0x2
  48:	0b3a0803 	0x0b3a0803
  4c:	0b390b3b 	0x0b390b3b
  50:	0b381349 	0x0b381349
  54:	0f070000 	0x0f070000
  58:	490b0b00 	0x490b0b00
  5c:	08000013 	0x08000013
  60:	13490101 	addu16i.d	$r1,$r8,-11712(0xd240)
  64:	00001301 	clo.w	$r1,$r24
  68:	49002109 	bcnez	$fcc0,2424864(0x250020) # 250088 <__stack_size+0x240088>
  6c:	000b2f13 	0x000b2f13
  70:	00340a00 	0x00340a00
  74:	0b3a0e03 	0x0b3a0e03
  78:	0b390b3b 	0x0b390b3b
  7c:	193f1349 	pcaddi	$r9,-395110(0x9f89a)
  80:	00001802 	cto.w	$r2,$r0
  84:	3f012e0b 	0x3f012e0b
  88:	3a0e0319 	0x3a0e0319
  8c:	390b3b0b 	0x390b3b0b
  90:	4919270b 	0x4919270b
  94:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
  98:	97184006 	0x97184006
  9c:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
  a0:	050c0000 	0x050c0000
  a4:	3a0e0300 	0x3a0e0300
  a8:	390b3b0b 	0x390b3b0b
  ac:	0213490b 	slti	$r11,$r8,1234(0x4d2)
  b0:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
  b4:	340d0000 	0x340d0000
  b8:	3a080300 	0x3a080300
  bc:	390b3b0b 	0x390b3b0b
  c0:	0213490b 	slti	$r11,$r8,1234(0x4d2)
  c4:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
  c8:	340e0000 	0x340e0000
  cc:	3a0e0300 	0x3a0e0300
  d0:	390b3b0b 	0x390b3b0b
  d4:	0213490b 	slti	$r11,$r8,1234(0x4d2)
  d8:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
  dc:	2e0f0000 	0x2e0f0000
  e0:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
  e4:	3b0b3a0e 	0x3b0b3a0e
  e8:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0c20 <__stack_size+0x2c0c20>
  ec:	01193c13 	0x01193c13
  f0:	10000013 	addu16i.d	$r19,$r0,0
  f4:	00000018 	0x00000018
  f8:	01828911 	0x01828911
  fc:	31011101 	0x31011101
 100:	12000013 	addu16i.d	$r19,$r0,-32768(0x8000)
 104:	0001828a 	0x0001828a
 108:	42911802 	beqz	$r0,692504(0xa9118) # a9220 <__stack_size+0x99220>
 10c:	13000018 	addu16i.d	$r24,$r0,-16384(0xc000)
 110:	0b0b0024 	0x0b0b0024
 114:	08030b3e 	0x08030b3e
 118:	05140000 	0x05140000
 11c:	3a080300 	0x3a080300
 120:	390b3b0b 	0x390b3b0b
 124:	0213490b 	slti	$r11,$r8,1234(0x4d2)
 128:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
 12c:	34150000 	0x34150000
 130:	3a080300 	0x3a080300
 134:	390b3b0b 	0x390b3b0b
 138:	1c13490b 	pcaddu12i	$r11,39496(0x9a48)
 13c:	1600000b 	lu32i.d	$r11,0
 140:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 144:	0b3a0e03 	0x0b3a0e03
 148:	0b390b3b 	0x0b390b3b
 14c:	01111927 	fscaleb.d	$f7,$f9,$f6
 150:	18400612 	pcaddi	$r18,131120(0x20030)
 154:	01194297 	0x01194297
 158:	17000013 	lu32i.d	$r19,-524288(0x80000)
 15c:	0e030005 	0x0e030005
 160:	0b3b0b3a 	0x0b3b0b3a
 164:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 168:	00001802 	cto.w	$r2,$r0
 16c:	3f002e18 	0x3f002e18
 170:	6e193c19 	bgeu	$r0,$r25,-124612(0x2193c) # fffe1aac <_stack+0xe3ee1ab0>
 174:	3a0e030e 	0x3a0e030e
 178:	390b3b0b 	0x390b3b0b
 17c:	0000000b 	0x0000000b
 180:	25011101 	stptr.w	$r1,$r8,272(0x110)
 184:	030b130e 	lu52i.d	$r14,$r24,708(0x2c4)
 188:	110e1b0e 	addu16i.d	$r14,$r24,17286(0x4386)
 18c:	10061201 	addu16i.d	$r1,$r16,388(0x184)
 190:	02000017 	slti	$r23,$r0,0
 194:	0b0b000f 	0x0b0b000f
 198:	24030000 	ldptr.w	$r0,$r0,768(0x300)
 19c:	3e0b0b00 	0x3e0b0b00
 1a0:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
 1a4:	012e0400 	0x012e0400
 1a8:	0e03193f 	0x0e03193f
 1ac:	0b3b0b3a 	0x0b3b0b3a
 1b0:	19270b39 	pcaddi	$r25,-444327(0x93859)
 1b4:	01111349 	fscaleb.d	$f9,$f26,$f4
 1b8:	18400612 	pcaddi	$r18,131120(0x20030)
 1bc:	01194297 	0x01194297
 1c0:	05000013 	0x05000013
 1c4:	08030005 	0x08030005
 1c8:	0b3b0b3a 	0x0b3b0b3a
 1cc:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 1d0:	42b71702 	beqz	$r24,702228(0xab714) # ab8e4 <__stack_size+0x9b8e4>
 1d4:	06000017 	cacop	0x17,$r0,0
 1d8:	00000018 	0x00000018
 1dc:	03003407 	lu52i.d	$r7,$r0,13(0xd)
 1e0:	3b0b3a08 	0x3b0b3a08
 1e4:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0d1c <__stack_size+0x2c0d1c>
 1e8:	b7170213 	0xb7170213
 1ec:	00001742 	clz.w	$r2,$r26
 1f0:	03003408 	lu52i.d	$r8,$r0,13(0xd)
 1f4:	3b0b3a08 	0x3b0b3a08
 1f8:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0d30 <__stack_size+0x2c0d30>
 1fc:	00180213 	sra.w	$r19,$r16,$r0
 200:	000a0900 	0x000a0900
 204:	0b3a0e03 	0x0b3a0e03
 208:	0b390b3b 	0x0b390b3b
 20c:	00000111 	0x00000111
 210:	55010b0a 	bl	-64421624(0xc290108) # fc290318 <_stack+0xe019031c>
 214:	00130117 	maskeqz	$r23,$r8,$r0
 218:	012e0b00 	0x012e0b00
 21c:	0e03193f 	0x0e03193f
 220:	0b3b0b3a 	0x0b3b0b3a
 224:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 228:	1301193c 	addu16i.d	$r28,$r9,-16314(0xc046)
 22c:	890c0000 	0x890c0000
 230:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
 234:	01133101 	fcopysign.d	$f1,$f8,$f12
 238:	0d000013 	fsel	$f19,$f0,$f0,$fcc0
 23c:	0001828a 	0x0001828a
 240:	42911802 	beqz	$r0,692504(0xa9118) # a9358 <__stack_size+0x99358>
 244:	0e000018 	0x0e000018
 248:	00018289 	0x00018289
 24c:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
 250:	890f0000 	0x890f0000
 254:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
 258:	00133101 	maskeqz	$r1,$r8,$r12
 25c:	010b1000 	fmin.d	$f0,$f0,$f4
 260:	00001755 	clz.w	$r21,$r26
 264:	11010b11 	addu16i.d	$r17,$r24,16450(0x4042)
 268:	01061201 	0x01061201
 26c:	12000013 	addu16i.d	$r19,$r0,-32768(0x8000)
 270:	0b0b0024 	0x0b0b0024
 274:	08030b3e 	0x08030b3e
 278:	0f130000 	0x0f130000
 27c:	490b0b00 	0x490b0b00
 280:	14000013 	lu12i.w	$r19,0
 284:	13490026 	addu16i.d	$r6,$r1,-11712(0xd240)
 288:	2e150000 	0x2e150000
 28c:	3c193f00 	0x3c193f00
 290:	030e6e19 	lu52i.d	$r25,$r16,923(0x39b)
 294:	3b0b3a0e 	0x3b0b3a0e
 298:	000b390b 	0x000b390b
 29c:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
 2a0:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
 2a4:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
 2a8:	1201110e 	addu16i.d	$r14,$r8,-32700(0x8044)
 2ac:	00171006 	sll.w	$r6,$r0,$r4
 2b0:	00240200 	crc.w.b.w	$r0,$r16,$r0
 2b4:	0b3e0b0b 	0x0b3e0b0b
 2b8:	00000e03 	0x00000e03
 2bc:	3f012e03 	0x3f012e03
 2c0:	3a0e0319 	0x3a0e0319
 2c4:	390b3b0b 	0x390b3b0b
 2c8:	010b200b 	fmin.d	$f11,$f0,$f8
 2cc:	04000013 	csrrd	$r19,0x0
 2d0:	08030005 	0x08030005
 2d4:	0b3b0b3a 	0x0b3b0b3a
 2d8:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 2dc:	24050000 	ldptr.w	$r0,$r0,1280(0x500)
 2e0:	3e0b0b00 	0x3e0b0b00
 2e4:	0008030b 	bytepick.w	$r11,$r24,$r0,0x0
 2e8:	012e0600 	0x012e0600
 2ec:	0e03193f 	0x0e03193f
 2f0:	0b3b0b3a 	0x0b3b0b3a
 2f4:	19270b39 	pcaddi	$r25,-444327(0x93859)
 2f8:	01111349 	fscaleb.d	$f9,$f26,$f4
 2fc:	18400612 	pcaddi	$r18,131120(0x20030)
 300:	01194297 	0x01194297
 304:	07000013 	0x07000013
 308:	08030005 	0x08030005
 30c:	0b3b0b3a 	0x0b3b0b3a
 310:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 314:	42b71702 	beqz	$r24,702228(0xab714) # aba28 <__stack_size+0x9ba28>
 318:	08000017 	0x08000017
 31c:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 320:	0b3a0e03 	0x0b3a0e03
 324:	0b390b3b 	0x0b390b3b
 328:	193c1349 	pcaddi	$r9,-401254(0x9e09a)
 32c:	00001301 	clo.w	$r1,$r24
 330:	00001809 	cto.w	$r9,$r0
 334:	011d0a00 	0x011d0a00
 338:	01521331 	0x01521331
 33c:	550b42b8 	bl	-85914816(0xae10b40) # fae10e7c <_stack+0xded10e80>
 340:	590b5817 	beq	$r0,$r23,68440(0x10b58) # 10e98 <__stack_size+0xe98>
 344:	000b570b 	0x000b570b
 348:	00050b00 	alsl.w	$r0,$r24,$r2,0x3
 34c:	17021331 	lu32i.d	$r17,-520039(0x81099)
 350:	001742b7 	sll.w	$r23,$r21,$r16
 354:	012e0c00 	0x012e0c00
 358:	01111331 	fscaleb.d	$f17,$f25,$f4
 35c:	18400612 	pcaddi	$r18,131120(0x20030)
 360:	00194297 	srl.d	$r23,$r20,$r16
 364:	00050d00 	alsl.w	$r0,$r8,$r3,0x3
 368:	18021331 	pcaddi	$r17,4249(0x1099)
 36c:	01000000 	0x01000000
 370:	0e250111 	0x0e250111
 374:	0e030b13 	0x0e030b13
 378:	01110e1b 	fscaleb.d	$f27,$f16,$f3
 37c:	17100612 	lu32i.d	$r18,-491472(0x88030)
 380:	24020000 	ldptr.w	$r0,$r0,512(0x200)
 384:	3e0b0b00 	0x3e0b0b00
 388:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
 38c:	012e0300 	0x012e0300
 390:	0e03193f 	0x0e03193f
 394:	0b3b0b3a 	0x0b3b0b3a
 398:	19270b39 	pcaddi	$r25,-444327(0x93859)
 39c:	01111349 	fscaleb.d	$f9,$f26,$f4
 3a0:	18400612 	pcaddi	$r18,131120(0x20030)
 3a4:	01194297 	0x01194297
 3a8:	04000013 	csrrd	$r19,0x0
 3ac:	08030005 	0x08030005
 3b0:	0b3b0b3a 	0x0b3b0b3a
 3b4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 3b8:	42b71702 	beqz	$r24,702228(0xab714) # abacc <__stack_size+0x9bacc>
 3bc:	05000017 	0x05000017
 3c0:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 3c4:	0b3a0e03 	0x0b3a0e03
 3c8:	0b390b3b 	0x0b390b3b
 3cc:	193c1349 	pcaddi	$r9,-401254(0x9e09a)
 3d0:	00001301 	clo.w	$r1,$r24
 3d4:	00001806 	cto.w	$r6,$r0
 3d8:	82890700 	0x82890700
 3dc:	01110101 	fscaleb.d	$f1,$f8,$f0
 3e0:	13011331 	addu16i.d	$r17,$r25,-16316(0xc044)
 3e4:	8a080000 	0x8a080000
 3e8:	02000182 	slti	$r2,$r12,0
 3ec:	18429118 	pcaddi	$r24,136328(0x21488)
 3f0:	89090000 	0x89090000
 3f4:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
 3f8:	00133101 	maskeqz	$r1,$r8,$r12
 3fc:	00240a00 	crc.w.b.w	$r0,$r16,$r2
 400:	0b3e0b0b 	0x0b3e0b0b
 404:	00000803 	0x00000803
 408:	0b000f0b 	0x0b000f0b
 40c:	0013490b 	maskeqz	$r11,$r8,$r18
 410:	00340c00 	0x00340c00
 414:	0b3a0803 	0x0b3a0803
 418:	0b390b3b 	0x0b390b3b
 41c:	17021349 	lu32i.d	$r9,-520038(0x8109a)
 420:	001742b7 	sll.w	$r23,$r21,$r16
 424:	010b0d00 	fmin.d	$f0,$f8,$f3
 428:	00001755 	clz.w	$r21,$r26
 42c:	11010b0e 	addu16i.d	$r14,$r24,16450(0x4042)
 430:	01061201 	0x01061201
 434:	0f000013 	0x0f000013
 438:	193f002e 	pcaddi	$r14,-395263(0x9f801)
 43c:	0e6e193c 	0x0e6e193c
 440:	0b3a0e03 	0x0b3a0e03
 444:	0b390b3b 	0x0b390b3b
 448:	01000000 	0x01000000
 44c:	0e250111 	0x0e250111
 450:	0e030b13 	0x0e030b13
 454:	01110e1b 	fscaleb.d	$f27,$f16,$f3
 458:	17100612 	lu32i.d	$r18,-491472(0x88030)
 45c:	24020000 	ldptr.w	$r0,$r0,512(0x200)
 460:	3e0b0b00 	0x3e0b0b00
 464:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
 468:	012e0300 	0x012e0300
 46c:	0e03193f 	0x0e03193f
 470:	0b3b0b3a 	0x0b3b0b3a
 474:	19270b39 	pcaddi	$r25,-444327(0x93859)
 478:	01111349 	fscaleb.d	$f9,$f26,$f4
 47c:	18400612 	pcaddi	$r18,131120(0x20030)
 480:	01194297 	0x01194297
 484:	04000013 	csrrd	$r19,0x0
 488:	08030005 	0x08030005
 48c:	0b3b0b3a 	0x0b3b0b3a
 490:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 494:	42b71702 	beqz	$r24,702228(0xab714) # abba8 <__stack_size+0x9bba8>
 498:	05000017 	0x05000017
 49c:	0e030005 	0x0e030005
 4a0:	0b3b0b3a 	0x0b3b0b3a
 4a4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 4a8:	42b71702 	beqz	$r24,702228(0xab714) # abbbc <__stack_size+0x9bbbc>
 4ac:	06000017 	cacop	0x17,$r0,0
 4b0:	08030034 	0x08030034
 4b4:	0b3b0b3a 	0x0b3b0b3a
 4b8:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 4bc:	42b71702 	beqz	$r24,702228(0xab714) # abbd0 <__stack_size+0x9bbd0>
 4c0:	07000017 	0x07000017
 4c4:	08030034 	0x08030034
 4c8:	0b3b0b3a 	0x0b3b0b3a
 4cc:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 4d0:	00001802 	cto.w	$r2,$r0
 4d4:	03003408 	lu52i.d	$r8,$r0,13(0xd)
 4d8:	3b0b3a0e 	0x3b0b3a0e
 4dc:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1014 <__stack_size+0x2c1014>
 4e0:	b7170213 	0xb7170213
 4e4:	00001742 	clz.w	$r2,$r26
 4e8:	11010b09 	addu16i.d	$r9,$r24,16450(0x4042)
 4ec:	01061201 	0x01061201
 4f0:	0a000013 	0x0a000013
 4f4:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 4f8:	0b3a0e03 	0x0b3a0e03
 4fc:	0b390b3b 	0x0b390b3b
 500:	193c1349 	pcaddi	$r9,-401254(0x9e09a)
 504:	00001301 	clo.w	$r1,$r24
 508:	0000180b 	cto.w	$r11,$r0
 50c:	82890c00 	0x82890c00
 510:	01110101 	fscaleb.d	$f1,$f8,$f0
 514:	00001331 	clo.w	$r17,$r25
 518:	01828a0d 	0x01828a0d
 51c:	91180200 	0x91180200
 520:	00001842 	cto.w	$r2,$r2
 524:	11010b0e 	addu16i.d	$r14,$r24,16450(0x4042)
 528:	00061201 	alsl.wu	$r1,$r16,$r4,0x1
 52c:	82890f00 	0x82890f00
 530:	01110001 	fscaleb.d	$f1,$f0,$f0
 534:	00001331 	clo.w	$r17,$r25
 538:	0b002410 	0x0b002410
 53c:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
 540:	11000008 	addu16i.d	$r8,$r0,16384(0x4000)
 544:	13490101 	addu16i.d	$r1,$r8,-11712(0xd240)
 548:	00001301 	clo.w	$r1,$r24
 54c:	49002112 	bcnez	$fcc0,-3604448(0x490020) # ffc9056c <_stack+0xe3b90570>
 550:	000b2f13 	0x000b2f13
 554:	002e1300 	0x002e1300
 558:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
 55c:	0e030e6e 	0x0e030e6e
 560:	0b3b0b3a 	0x0b3b0b3a
 564:	00000b39 	0x00000b39
 568:	01110100 	fscaleb.d	$f0,$f8,$f0
 56c:	0b130e25 	0x0b130e25
 570:	0e1b0e03 	0x0e1b0e03
 574:	01111755 	fscaleb.d	$f21,$f26,$f5
 578:	00001710 	clz.w	$r16,$r24
 57c:	0b000f02 	0x0b000f02
 580:	0300000b 	lu52i.d	$r11,$r0,0
 584:	0b0b0024 	0x0b0b0024
 588:	0e030b3e 	0x0e030b3e
 58c:	16040000 	lu32i.d	$r0,8192(0x2000)
 590:	3a0e0300 	0x3a0e0300
 594:	390b3b0b 	0x390b3b0b
 598:	0013490b 	maskeqz	$r11,$r8,$r18
 59c:	012e0500 	0x012e0500
 5a0:	0e03193f 	0x0e03193f
 5a4:	053b0b3a 	0x053b0b3a
 5a8:	19270b39 	pcaddi	$r25,-444327(0x93859)
 5ac:	06120111 	cacop	0x11,$r8,1152(0x480)
 5b0:	42971840 	beqz	$r2,169752(0x29718) # 29cc8 <__stack_size+0x19cc8>
 5b4:	00130119 	maskeqz	$r25,$r8,$r0
 5b8:	00050600 	alsl.w	$r0,$r16,$r1,0x3
 5bc:	0b3a0803 	0x0b3a0803
 5c0:	0b39053b 	0x0b39053b
 5c4:	17021349 	lu32i.d	$r9,-520038(0x8109a)
 5c8:	001742b7 	sll.w	$r23,$r21,$r16
 5cc:	011d0700 	0x011d0700
 5d0:	01521331 	0x01521331
 5d4:	110b42b8 	addu16i.d	$r24,$r21,17104(0x42d0)
 5d8:	58061201 	beq	$r16,$r1,1552(0x610) # be8 <__stack_size-0xf418>
 5dc:	5705590b 	bl	70190424(0x42f0558) # 42f0b34 <__stack_size+0x42e0b34>
 5e0:	0800000b 	0x0800000b
 5e4:	13310005 	addu16i.d	$r5,$r0,-13248(0xcc40)
 5e8:	42b71702 	beqz	$r24,702228(0xab714) # abcfc <__stack_size+0x9bcfc>
 5ec:	09000017 	0x09000017
 5f0:	13310005 	addu16i.d	$r5,$r0,-13248(0xcc40)
 5f4:	00000b1c 	0x00000b1c
 5f8:	11010b0a 	addu16i.d	$r10,$r24,16450(0x4042)
 5fc:	00061201 	alsl.wu	$r1,$r16,$r4,0x1
 600:	00340b00 	0x00340b00
 604:	17021331 	lu32i.d	$r17,-520039(0x81099)
 608:	001742b7 	sll.w	$r23,$r21,$r16
 60c:	012e0c00 	0x012e0c00
 610:	0e03193f 	0x0e03193f
 614:	053b0b3a 	0x053b0b3a
 618:	19270b39 	pcaddi	$r25,-444327(0x93859)
 61c:	01111349 	fscaleb.d	$f9,$f26,$f4
 620:	18400612 	pcaddi	$r18,131120(0x20030)
 624:	01194297 	0x01194297
 628:	0d000013 	fsel	$f19,$f0,$f0,$fcc0
 62c:	08030034 	0x08030034
 630:	053b0b3a 	0x053b0b3a
 634:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 638:	42b71702 	beqz	$r24,702228(0xab714) # abd4c <__stack_size+0x9bd4c>
 63c:	0e000017 	0x0e000017
 640:	0b0b0024 	0x0b0b0024
 644:	08030b3e 	0x08030b3e
 648:	0f0f0000 	0x0f0f0000
 64c:	490b0b00 	0x490b0b00
 650:	10000013 	addu16i.d	$r19,$r0,0
 654:	00000026 	0x00000026
 658:	49002611 	0x49002611
 65c:	12000013 	addu16i.d	$r19,$r0,-32768(0x8000)
 660:	08030005 	0x08030005
 664:	053b0b3a 	0x053b0b3a
 668:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 66c:	00001802 	cto.w	$r2,$r0
 670:	3f012e13 	0x3f012e13
 674:	3a0e0319 	0x3a0e0319
 678:	390b3b0b 	0x390b3b0b
 67c:	4919270b 	0x4919270b
 680:	010b2013 	fmin.d	$f19,$f0,$f8
 684:	14000013 	lu12i.w	$r19,0
 688:	08030005 	0x08030005
 68c:	0b3b0b3a 	0x0b3b0b3a
 690:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 694:	34150000 	0x34150000
 698:	3a080300 	0x3a080300
 69c:	390b3b0b 	0x390b3b0b
 6a0:	0013490b 	maskeqz	$r11,$r8,$r18
 6a4:	012e1600 	0x012e1600
 6a8:	0e03193f 	0x0e03193f
 6ac:	0b3b0b3a 	0x0b3b0b3a
 6b0:	19270b39 	pcaddi	$r25,-444327(0x93859)
 6b4:	01111349 	fscaleb.d	$f9,$f26,$f4
 6b8:	18400612 	pcaddi	$r18,131120(0x20030)
 6bc:	01194297 	0x01194297
 6c0:	17000013 	lu32i.d	$r19,-524288(0x80000)
 6c4:	08030005 	0x08030005
 6c8:	0b3b0b3a 	0x0b3b0b3a
 6cc:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 6d0:	42b71702 	beqz	$r24,702228(0xab714) # abde4 <__stack_size+0x9bde4>
 6d4:	18000017 	pcaddi	$r23,0
 6d8:	08030005 	0x08030005
 6dc:	0b3b0b3a 	0x0b3b0b3a
 6e0:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 6e4:	00001802 	cto.w	$r2,$r0
 6e8:	03003419 	lu52i.d	$r25,$r0,13(0xd)
 6ec:	3b0b3a08 	0x3b0b3a08
 6f0:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1228 <__stack_size+0x2c1228>
 6f4:	b7170213 	0xb7170213
 6f8:	00001742 	clz.w	$r2,$r26
 6fc:	31012e1a 	0x31012e1a
 700:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
 704:	97184006 	0x97184006
 708:	00001942 	cto.w	$r2,$r10
 70c:	3100051b 	0x3100051b
 710:	00180213 	sra.w	$r19,$r16,$r0
 714:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
 718:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
 71c:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
 720:	1201110e 	addu16i.d	$r14,$r8,-32700(0x8044)
 724:	00171006 	sll.w	$r6,$r0,$r4
 728:	00240200 	crc.w.b.w	$r0,$r16,$r0
 72c:	0b3e0b0b 	0x0b3e0b0b
 730:	00000e03 	0x00000e03
 734:	03001603 	lu52i.d	$r3,$r16,5(0x5)
 738:	3b0b3a0e 	0x3b0b3a0e
 73c:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1274 <__stack_size+0x2c1274>
 740:	04000013 	csrrd	$r19,0x0
 744:	0b0b0024 	0x0b0b0024
 748:	08030b3e 	0x08030b3e
 74c:	13050000 	addu16i.d	$r0,$r0,-16064(0xc140)
 750:	0b0e0301 	0x0b0e0301
 754:	3b0b3a0b 	0x3b0b3a0b
 758:	010b390b 	fmin.d	$f11,$f8,$f14
 75c:	06000013 	cacop	0x13,$r0,0
 760:	0e03000d 	0x0e03000d
 764:	0b3b0b3a 	0x0b3b0b3a
 768:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 76c:	00000b38 	0x00000b38
 770:	3f012e07 	0x3f012e07
 774:	3a0e0319 	0x3a0e0319
 778:	390b3b0b 	0x390b3b0b
 77c:	4919270b 	0x4919270b
 780:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
 784:	97184006 	0x97184006
 788:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
 78c:	34080000 	0x34080000
 790:	3a080300 	0x3a080300
 794:	390b3b0b 	0x390b3b0b
 798:	0213490b 	slti	$r11,$r8,1234(0x4d2)
 79c:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
 7a0:	1d090000 	pcaddu12i	$r0,-505856(0x84800)
 7a4:	52133101 	b	67506992(0x4061330) # 4061ad4 <__stack_size+0x4051ad4>
 7a8:	0b42b801 	0x0b42b801
 7ac:	0b581755 	0x0b581755
 7b0:	0b570b59 	0x0b570b59
 7b4:	0b0a0000 	0x0b0a0000
 7b8:	00175501 	sll.w	$r1,$r8,$r21
 7bc:	00340b00 	0x00340b00
 7c0:	17021331 	lu32i.d	$r17,-520039(0x81099)
 7c4:	001742b7 	sll.w	$r23,$r21,$r16
 7c8:	012e0c00 	0x012e0c00
 7cc:	0e03193f 	0x0e03193f
 7d0:	0b3b0b3a 	0x0b3b0b3a
 7d4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 7d8:	00001301 	clo.w	$r1,$r24
 7dc:	0300340d 	lu52i.d	$r13,$r0,13(0xd)
 7e0:	3b0b3a08 	0x3b0b3a08
 7e4:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d131c <__stack_size+0x2c131c>
 7e8:	0e000013 	0x0e000013
 7ec:	08030005 	0x08030005
 7f0:	0b3b0b3a 	0x0b3b0b3a
 7f4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 7f8:	42b71702 	beqz	$r24,702228(0xab714) # abf0c <__stack_size+0x9bf0c>
 7fc:	0f000017 	0x0f000017
 800:	08030005 	0x08030005
 804:	0b3b0b3a 	0x0b3b0b3a
 808:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 80c:	00001802 	cto.w	$r2,$r0
 810:	0b000f10 	0x0b000f10
 814:	0013490b 	maskeqz	$r11,$r8,$r18
 818:	012e1100 	0x012e1100
 81c:	0e03193f 	0x0e03193f
 820:	0b3b0b3a 	0x0b3b0b3a
 824:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 828:	06120111 	cacop	0x11,$r8,1152(0x480)
 82c:	42971840 	beqz	$r2,169752(0x29718) # 29f44 <__stack_size+0x19f44>
 830:	00130119 	maskeqz	$r25,$r8,$r0
 834:	012e1200 	0x012e1200
 838:	0e03193f 	0x0e03193f
 83c:	0b3b0b3a 	0x0b3b0b3a
 840:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 844:	00000b20 	0x00000b20
 848:	03003413 	lu52i.d	$r19,$r0,13(0xd)
 84c:	3b0b3a0e 	0x3b0b3a0e
 850:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1388 <__stack_size+0x2c1388>
 854:	00000013 	0x00000013

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
	...
       8:	00000220 	0x00000220
       c:	00000238 	0x00000238
      10:	38540001 	0x38540001
      14:	64000002 	bge	$r0,$r2,0 # 14 <__stack_size-0xffec>
      18:	01000002 	0x01000002
      1c:	02646800 	sltui	$r0,$r0,-1766(0x91a)
      20:	026c0000 	sltui	$r0,$r0,-1280(0xb00)
      24:	00040000 	alsl.w	$r0,$r0,$r0,0x1
      28:	9f5401f3 	0x9f5401f3
      2c:	0000026c 	0x0000026c
      30:	00000278 	0x00000278
      34:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
	...
      40:	2c000000 	vld	$vr0,$r0,0
      44:	50000002 	b	524288(0x80000) # 80044 <__stack_size+0x70044>
      48:	01000002 	0x01000002
      4c:	026c6700 	sltui	$r0,$r24,-1255(0xb19)
      50:	02780000 	sltui	$r0,$r0,-512(0xe00)
      54:	00010000 	asrtle.d	$r0,$r0
      58:	00000067 	0x00000067
	...
      64:	00024000 	0x00024000
      68:	00025800 	0x00025800
      6c:	54000100 	bl	67108864(0x4000000) # 400006c <__stack_size+0x3ff006c>
      70:	0000026c 	0x0000026c
      74:	00000274 	0x00000274
      78:	00540001 	0x00540001
	...
      8c:	00015000 	asrtle.d	$r0,$r20
      90:	00016800 	asrtle.d	$r0,$r26
      94:	54000100 	bl	67108864(0x4000000) # 4000094 <__stack_size+0x3ff0094>
      98:	00000168 	0x00000168
      9c:	000001dc 	0x000001dc
      a0:	dc690001 	0xdc690001
      a4:	e8000001 	0xe8000001
      a8:	04000001 	csrrd	$r1,0x0
      ac:	5401f300 	bl	-67108368(0xc0001f0) # fc00029c <_stack+0xdff002a0>
      b0:	0001e89f 	0x0001e89f
      b4:	00021000 	0x00021000
      b8:	69000100 	bltu	$r8,$r0,65536(0x10000) # 100b8 <__stack_size+0xb8>
      bc:	00000210 	0x00000210
      c0:	00000218 	0x00000218
      c4:	01f30004 	0x01f30004
      c8:	00009f54 	0x00009f54
	...
      d4:	01500000 	0x01500000
      d8:	01770000 	0x01770000
      dc:	00010000 	asrtle.d	$r0,$r0
      e0:	00017755 	0x00017755
      e4:	00021800 	0x00021800
      e8:	f3000400 	0xf3000400
      ec:	009f5501 	bstrins.d	$r1,$r8,0x1f,0x15
	...
     100:	00015000 	asrtle.d	$r0,$r20
     104:	00017700 	asrtle.d	$r24,$r29
     108:	56000100 	bl	67239936(0x4020000) # 4020108 <__stack_size+0x4010108>
     10c:	00000177 	0x00000177
     110:	000001d4 	0x000001d4
     114:	d4670001 	0xd4670001
     118:	e8000001 	0xe8000001
     11c:	04000001 	csrrd	$r1,0x0
     120:	5601f300 	bl	-66977296(0xc0201f0) # fc020310 <_stack+0xdff20314>
     124:	0001e89f 	0x0001e89f
     128:	00020800 	0x00020800
     12c:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff012c <_stack+0xe3ef0130>
     130:	00000208 	0x00000208
     134:	00000218 	0x00000218
     138:	01f30004 	0x01f30004
     13c:	00009f56 	0x00009f56
	...
     148:	015c0000 	0x015c0000
     14c:	01d80000 	0x01d80000
     150:	00010000 	asrtle.d	$r0,$r0
     154:	0001e868 	0x0001e868
     158:	00020c00 	0x00020c00
     15c:	68000100 	bltu	$r8,$r0,0 # 15c <__stack_size-0xfea4>
	...
     16c:	00000178 	0x00000178
     170:	000001e0 	0x000001e0
     174:	e8540001 	0xe8540001
     178:	fc000001 	0xfc000001
     17c:	01000001 	0x01000001
     180:	00005400 	bitrev.d	$r0,$r0
     184:	00000000 	0x00000000
     188:	00010000 	asrtle.d	$r0,$r0
     18c:	00010000 	asrtle.d	$r0,$r0
     190:	01780000 	0x01780000
     194:	019c0000 	0x019c0000
     198:	00020000 	0x00020000
     19c:	019c9f30 	0x019c9f30
     1a0:	01a80000 	0x01a80000
     1a4:	00010000 	asrtle.d	$r0,$r0
     1a8:	0001a85e 	0x0001a85e
     1ac:	0001cc00 	asrtgt.d	$r0,$r19
     1b0:	5e000100 	bne	$r8,$r0,-131072(0x20000) # fffe01b0 <_stack+0xe3ee01b4>
     1b4:	000001e8 	0x000001e8
     1b8:	000001ec 	0x000001ec
     1bc:	9f300002 	0x9f300002
	...
     1d0:	00700000 	bstrins.w	$r0,$r0,0x10,0x0
     1d4:	00880000 	bstrins.d	$r0,$r0,0x8,0x0
     1d8:	00010000 	asrtle.d	$r0,$r0
     1dc:	00008854 	0x00008854
     1e0:	0000fc00 	0x0000fc00
     1e4:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe01e4 <_stack+0xe3ee01e8>
     1e8:	000000fc 	0x000000fc
     1ec:	0000010c 	0x0000010c
     1f0:	01f30004 	0x01f30004
     1f4:	010c9f54 	fmaxa.s	$f20,$f26,$f7
     1f8:	01280000 	0x01280000
     1fc:	00010000 	asrtle.d	$r0,$r0
     200:	0001286a 	0x0001286a
     204:	00013800 	asrtle.d	$r0,$r14
     208:	f3000400 	0xf3000400
     20c:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
     220:	00007000 	0x00007000
     224:	0000a700 	0x0000a700
     228:	55000100 	bl	67174400(0x4010000) # 4010228 <__stack_size+0x4000228>
     22c:	000000a7 	0x000000a7
     230:	000000f4 	0x000000f4
     234:	f4680001 	0xf4680001
     238:	0c000000 	0x0c000000
     23c:	04000001 	csrrd	$r1,0x0
     240:	5501f300 	bl	-67042832(0xc0101f0) # fc010430 <_stack+0xdff10434>
     244:	00010c9f 	0x00010c9f
     248:	00012000 	asrtle.d	$r0,$r8
     24c:	68000100 	bltu	$r8,$r0,0 # 24c <__stack_size-0xfdb4>
     250:	00000120 	0x00000120
     254:	00000138 	0x00000138
     258:	01f30004 	0x01f30004
     25c:	00009f55 	0x00009f55
	...
     270:	00000070 	0x00000070
     274:	000000a7 	0x000000a7
     278:	a7560001 	0xa7560001
     27c:	00000000 	0x00000000
     280:	01000001 	0x01000001
     284:	01006b00 	0x01006b00
     288:	010c0000 	0x010c0000
     28c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
     290:	9f5601f3 	0x9f5601f3
     294:	0000010c 	0x0000010c
     298:	0000012c 	0x0000012c
     29c:	2c6b0001 	vst	$vr1,$r0,-1344(0xac0)
     2a0:	38000001 	ldx.b	$r1,$r0,$r0
     2a4:	04000001 	csrrd	$r1,0x0
     2a8:	5601f300 	bl	-66977296(0xc0201f0) # fc020498 <_stack+0xdff2049c>
     2ac:	0000009f 	0x0000009f
	...
     2bc:	70000000 	vseq.b	$vr0,$vr0,$vr0
     2c0:	a7000000 	0xa7000000
     2c4:	01000000 	0x01000000
     2c8:	00a75700 	bstrins.d	$r0,$r24,0x27,0x15
     2cc:	00f00000 	bstrpick.d	$r0,$r0,0x30,0x0
     2d0:	00010000 	asrtle.d	$r0,$r0
     2d4:	0000f067 	0x0000f067
     2d8:	00010c00 	asrtle.d	$r0,$r3
     2dc:	f3000400 	0xf3000400
     2e0:	0c9f5701 	0x0c9f5701
     2e4:	1c000001 	pcaddu12i	$r1,0
     2e8:	01000001 	0x01000001
     2ec:	011c6700 	0x011c6700
     2f0:	01380000 	0x01380000
     2f4:	00040000 	alsl.w	$r0,$r0,$r0,0x1
     2f8:	9f5701f3 	0x9f5701f3
	...
     30c:	00840000 	bstrins.d	$r0,$r0,0x4,0x0
     310:	00880000 	bstrins.d	$r0,$r0,0x8,0x0
     314:	00010000 	asrtle.d	$r0,$r0
     318:	00008854 	0x00008854
     31c:	0000fc00 	0x0000fc00
     320:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0320 <_stack+0xe3ee0324>
     324:	000000fc 	0x000000fc
     328:	0000010c 	0x0000010c
     32c:	01f30004 	0x01f30004
     330:	010c9f54 	fmaxa.s	$f20,$f26,$f7
     334:	01280000 	0x01280000
     338:	00010000 	asrtle.d	$r0,$r0
     33c:	0001286a 	0x0001286a
     340:	00013800 	asrtle.d	$r0,$r14
     344:	f3000400 	0xf3000400
     348:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
     34c:	00000000 	0x00000000
     350:	01000000 	0x01000000
     354:	84000000 	0x84000000
     358:	f8000000 	0xf8000000
     35c:	01000000 	0x01000000
     360:	010c6900 	0x010c6900
     364:	01240000 	0x01240000
     368:	00010000 	asrtle.d	$r0,$r0
     36c:	00000069 	0x00000069
	...
     378:	0000a800 	0x0000a800
     37c:	00010400 	asrtle.d	$r0,$r1
     380:	54000100 	bl	67108864(0x4000000) # 4000380 <__stack_size+0x3ff0380>
     384:	0000010c 	0x0000010c
     388:	00000130 	0x00000130
     38c:	00540001 	0x00540001
	...
     398:	bc000100 	0xbc000100
     39c:	dc000000 	0xdc000000
     3a0:	01000000 	0x01000000
     3a4:	00dc5d00 	bstrpick.d	$r0,$r8,0x1c,0x17
     3a8:	010c0000 	0x010c0000
     3ac:	00010000 	asrtle.d	$r0,$r0
     3b0:	0000005d 	0x0000005d
	...
     3c4:	00003800 	revb.2w	$r0,$r0
     3c8:	54000100 	bl	67108864(0x4000000) # 40003c8 <__stack_size+0x3ff03c8>
     3cc:	00000038 	0x00000038
     3d0:	00000048 	0x00000048
     3d4:	48610001 	bceqz	$fcc0,286976(0x46100) # 464d4 <__stack_size+0x364d4>
     3d8:	50000000 	b	0 # 3d8 <__stack_size-0xfc28>
     3dc:	01000000 	0x01000000
     3e0:	00505400 	0x00505400
     3e4:	00640000 	bstrins.w	$r0,$r0,0x4,0x0
     3e8:	00010000 	asrtle.d	$r0,$r0
     3ec:	00000061 	0x00000061
     3f0:	00000000 	0x00000000
     3f4:	00000300 	0x00000300
     3f8:	00000000 	0x00000000
     3fc:	18000000 	pcaddi	$r0,0
     400:	02000000 	slti	$r0,$r0,0
     404:	189f3000 	pcaddi	$r0,326016(0x4f980)
     408:	30000000 	0x30000000
     40c:	01000000 	0x01000000
     410:	00485c00 	0x00485c00
     414:	004c0000 	0x004c0000
     418:	00010000 	asrtle.d	$r0,$r0
     41c:	0000005c 	0x0000005c
	...
     430:	00006400 	rdtimeh.w	$r0,$r0
     434:	54000100 	bl	67108864(0x4000000) # 4000434 <__stack_size+0x3ff0434>
     438:	00000064 	0x00000064
     43c:	000000cc 	0x000000cc
     440:	cc690001 	0xcc690001
     444:	f8000000 	0xf8000000
     448:	04000000 	csrrd	$r0,0x0
     44c:	5401f300 	bl	-67108368(0xc0001f0) # fc00063c <_stack+0xdff00640>
     450:	0000f89f 	0x0000f89f
     454:	00023c00 	0x00023c00
     458:	69000100 	bltu	$r8,$r0,65536(0x10000) # 10458 <__stack_size+0x458>
	...
     464:	00000002 	0x00000002
     468:	00010100 	asrtle.d	$r8,$r0
     46c:	00000000 	0x00000000
     470:	02000000 	slti	$r0,$r0,0
     474:	02000002 	slti	$r2,$r0,0
     478:	02000002 	slti	$r2,$r0,0
     47c:	02000002 	slti	$r2,$r0,0
     480:	02000002 	slti	$r2,$r0,0
     484:	02000002 	slti	$r2,$r0,0
     488:	02000002 	slti	$r2,$r0,0
     48c:	02000002 	slti	$r2,$r0,0
     490:	01000002 	0x01000002
     494:	00480001 	0x00480001
     498:	00640000 	bstrins.w	$r0,$r0,0x4,0x0
     49c:	00020000 	0x00020000
     4a0:	00649f30 	bstrpick.w	$r16,$r25,0x4,0x7
     4a4:	00cc0000 	bstrpick.d	$r0,$r0,0xc,0x0
     4a8:	00010000 	asrtle.d	$r0,$r0
     4ac:	0000f868 	0x0000f868
     4b0:	0000f800 	0x0000f800
     4b4:	68000100 	bltu	$r8,$r0,0 # 4b4 <__stack_size-0xfb4c>
     4b8:	000000f8 	0x000000f8
     4bc:	00000104 	0x00000104
     4c0:	01880003 	0x01880003
     4c4:	0001049f 	0x0001049f
     4c8:	00012000 	asrtle.d	$r0,$r8
     4cc:	68000100 	bltu	$r8,$r0,0 # 4cc <__stack_size-0xfb34>
     4d0:	00000120 	0x00000120
     4d4:	0000013c 	0x0000013c
     4d8:	7f880003 	0x7f880003
     4dc:	00013c9f 	0x00013c9f
     4e0:	00015800 	asrtle.d	$r0,$r22
     4e4:	68000100 	bltu	$r8,$r0,0 # 4e4 <__stack_size-0xfb1c>
     4e8:	00000158 	0x00000158
     4ec:	0000015c 	0x0000015c
     4f0:	7f880003 	0x7f880003
     4f4:	00015c9f 	0x00015c9f
     4f8:	00016800 	asrtle.d	$r0,$r26
     4fc:	68000100 	bltu	$r8,$r0,0 # 4fc <__stack_size-0xfb04>
     500:	00000168 	0x00000168
     504:	00000170 	0x00000170
     508:	7f880003 	0x7f880003
     50c:	0001709f 	0x0001709f
     510:	00018800 	asrtgt.d	$r0,$r2
     514:	68000100 	bltu	$r8,$r0,0 # 514 <__stack_size-0xfaec>
     518:	00000188 	0x00000188
     51c:	0000018c 	0x0000018c
     520:	7f880003 	0x7f880003
     524:	00018c9f 	0x00018c9f
     528:	0001a400 	asrtgt.d	$r0,$r9
     52c:	68000100 	bltu	$r8,$r0,0 # 52c <__stack_size-0xfad4>
     530:	000001a4 	0x000001a4
     534:	000001a8 	0x000001a8
     538:	7e880003 	0x7e880003
     53c:	0001a89f 	0x0001a89f
     540:	0001c400 	asrtgt.d	$r0,$r17
     544:	68000100 	bltu	$r8,$r0,0 # 544 <__stack_size-0xfabc>
     548:	000001c4 	0x000001c4
     54c:	000001c8 	0x000001c8
     550:	7f880003 	0x7f880003
     554:	0001c89f 	0x0001c89f
     558:	0001e400 	asrtgt.d	$r0,$r25
     55c:	68000100 	bltu	$r8,$r0,0 # 55c <__stack_size-0xfaa4>
     560:	000001e4 	0x000001e4
     564:	000001e8 	0x000001e8
     568:	7f880003 	0x7f880003
     56c:	0001e89f 	0x0001e89f
     570:	0001f800 	asrtgt.d	$r0,$r30
     574:	68000100 	bltu	$r8,$r0,0 # 574 <__stack_size-0xfa8c>
     578:	000001f8 	0x000001f8
     57c:	00000200 	0x00000200
     580:	7f880003 	0x7f880003
     584:	0002009f 	0x0002009f
     588:	00021800 	0x00021800
     58c:	68000100 	bltu	$r8,$r0,0 # 58c <__stack_size-0xfa74>
     590:	00000218 	0x00000218
     594:	0000021c 	0x0000021c
     598:	7f880003 	0x7f880003
     59c:	00021c9f 	0x00021c9f
     5a0:	00022800 	0x00022800
     5a4:	68000100 	bltu	$r8,$r0,0 # 5a4 <__stack_size-0xfa5c>
     5a8:	00000228 	0x00000228
     5ac:	0000022c 	0x0000022c
     5b0:	7f880003 	0x7f880003
     5b4:	00022c9f 	0x00022c9f
     5b8:	00023c00 	0x00023c00
     5bc:	68000100 	bltu	$r8,$r0,0 # 5bc <__stack_size-0xfa44>
	...
     5c8:	00010000 	asrtle.d	$r0,$r0
     5cc:	00640000 	bstrins.w	$r0,$r0,0x4,0x0
     5d0:	00780000 	bstrins.w	$r0,$r0,0x18,0x0
     5d4:	00010000 	asrtle.d	$r0,$r0
     5d8:	00007c67 	0x00007c67
     5dc:	0000cc00 	0x0000cc00
     5e0:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff05e0 <_stack+0xe3ef05e4>
     5e4:	000000f8 	0x000000f8
     5e8:	0000023c 	0x0000023c
     5ec:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
     5f0:	00000000 	0x00000000
     5f4:	01000000 	0x01000000
     5f8:	00000000 	0x00000000
     5fc:	00000101 	0x00000101
     600:	00000101 	0x00000101
     604:	00000101 	0x00000101
     608:	00000101 	0x00000101
     60c:	00000101 	0x00000101
     610:	00000101 	0x00000101
     614:	00000101 	0x00000101
     618:	48000101 	bcnez	$fcc0,262144(0x40000) # 40618 <__stack_size+0x30618>
     61c:	cc000000 	0xcc000000
     620:	01000000 	0x01000000
     624:	00f86a00 	bstrpick.d	$r0,$r16,0x38,0x1a
     628:	01540000 	0x01540000
     62c:	00010000 	asrtle.d	$r0,$r0
     630:	0001546a 	0x0001546a
     634:	00015c00 	asrtle.d	$r0,$r23
     638:	8a000300 	0x8a000300
     63c:	015c9f7c 	0x015c9f7c
     640:	016c0000 	0x016c0000
     644:	00010000 	asrtle.d	$r0,$r0
     648:	00016c6a 	0x00016c6a
     64c:	00017000 	asrtle.d	$r0,$r28
     650:	8a000300 	0x8a000300
     654:	01709f7c 	0x01709f7c
     658:	01840000 	0x01840000
     65c:	00010000 	asrtle.d	$r0,$r0
     660:	0001846a 	0x0001846a
     664:	00018c00 	asrtgt.d	$r0,$r3
     668:	8a000300 	0x8a000300
     66c:	018c9f7c 	0x018c9f7c
     670:	01a00000 	0x01a00000
     674:	00010000 	asrtle.d	$r0,$r0
     678:	0001a06a 	0x0001a06a
     67c:	0001a800 	asrtgt.d	$r0,$r10
     680:	8a000300 	0x8a000300
     684:	01a89f7c 	0x01a89f7c
     688:	01c00000 	0x01c00000
     68c:	00010000 	asrtle.d	$r0,$r0
     690:	0001c06a 	0x0001c06a
     694:	0001c800 	asrtgt.d	$r0,$r18
     698:	8a000300 	0x8a000300
     69c:	01c89f7c 	0x01c89f7c
     6a0:	01e00000 	0x01e00000
     6a4:	00010000 	asrtle.d	$r0,$r0
     6a8:	0001e06a 	0x0001e06a
     6ac:	0001e800 	asrtgt.d	$r0,$r26
     6b0:	8a000300 	0x8a000300
     6b4:	01e89f7c 	0x01e89f7c
     6b8:	01fc0000 	0x01fc0000
     6bc:	00010000 	asrtle.d	$r0,$r0
     6c0:	0001fc6a 	0x0001fc6a
     6c4:	00020000 	0x00020000
     6c8:	8a000300 	0x8a000300
     6cc:	02009f7c 	slti	$r28,$r27,39(0x27)
     6d0:	02140000 	slti	$r0,$r0,1280(0x500)
     6d4:	00010000 	asrtle.d	$r0,$r0
     6d8:	0002146a 	0x0002146a
     6dc:	00021c00 	0x00021c00
     6e0:	8a000300 	0x8a000300
     6e4:	021c9f7c 	slti	$r28,$r27,1831(0x727)
     6e8:	023c0000 	slti	$r0,$r0,-256(0xf00)
     6ec:	00010000 	asrtle.d	$r0,$r0
     6f0:	0000006a 	0x0000006a
	...
     714:	0000ac00 	0x0000ac00
     718:	0000cc00 	0x0000cc00
     71c:	55000100 	bl	67174400(0x4010000) # 401071c <__stack_size+0x400071c>
     720:	000000f8 	0x000000f8
     724:	00000104 	0x00000104
     728:	04550001 	csrrd	$r1,0x1540
     72c:	18000001 	pcaddi	$r1,0
     730:	02000001 	slti	$r1,$r0,0
     734:	189f3000 	pcaddi	$r0,326016(0x4f980)
     738:	1c000001 	pcaddu12i	$r1,0
     73c:	01000001 	0x01000001
     740:	013c5500 	0x013c5500
     744:	015b0000 	0x015b0000
     748:	00010000 	asrtle.d	$r0,$r0
     74c:	00016055 	0x00016055
     750:	00016f00 	asrtle.d	$r24,$r27
     754:	55000100 	bl	67174400(0x4010000) # 4010754 <__stack_size+0x4000754>
     758:	00000174 	0x00000174
     75c:	0000018b 	0x0000018b
     760:	90550001 	0x90550001
     764:	a7000001 	0xa7000001
     768:	01000001 	0x01000001
     76c:	01ac5500 	0x01ac5500
     770:	01c70000 	0x01c70000
     774:	00010000 	asrtle.d	$r0,$r0
     778:	0001cc55 	0x0001cc55
     77c:	0001e700 	asrtgt.d	$r24,$r25
     780:	55000100 	bl	67174400(0x4010000) # 4010780 <__stack_size+0x4000780>
     784:	000001ec 	0x000001ec
     788:	000001ff 	0x000001ff
     78c:	04550001 	csrrd	$r1,0x1540
     790:	1b000002 	pcalau12i	$r2,-524288(0x80000)
     794:	01000002 	0x01000002
     798:	02205500 	slti	$r0,$r8,-2027(0x815)
     79c:	022b0000 	slti	$r0,$r0,-1344(0xac0)
     7a0:	00010000 	asrtle.d	$r0,$r0
     7a4:	00023055 	0x00023055
     7a8:	00023700 	0x00023700
     7ac:	55000100 	bl	67174400(0x4010000) # 40107ac <__stack_size+0x40007ac>
	...
     7c0:	0000001c 	0x0000001c
     7c4:	1c540001 	pcaddu12i	$r1,172032(0x2a000)
     7c8:	28000000 	ld.b	$r0,$r0,0
     7cc:	04000000 	csrrd	$r0,0x0
     7d0:	5401f300 	bl	-67108368(0xc0001f0) # fc0009c0 <_stack+0xdff009c4>
     7d4:	0000009f 	0x0000009f
     7d8:	00000000 	0x00000000
     7dc:	00000200 	0x00000200
     7e0:	18000000 	pcaddi	$r0,0
     7e4:	01000000 	0x01000000
     7e8:	00005400 	bitrev.d	$r0,$r0
	...
     7f4:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
     7f8:	008b0000 	bstrins.d	$r0,$r0,0xb,0x0
     7fc:	00010000 	asrtle.d	$r0,$r0
     800:	00008b54 	0x00008b54
     804:	0000ac00 	0x0000ac00
     808:	f3000400 	0xf3000400
     80c:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
     818:	01010000 	fadd.d	$f0,$f0,$f0
     81c:	01010000 	fadd.d	$f0,$f0,$f0
     820:	00000000 	0x00000000
     824:	00002800 	cto.d	$r0,$r0
     828:	54000100 	bl	67108864(0x4000000) # 4000828 <__stack_size+0x3ff0828>
     82c:	00000028 	0x00000028
     830:	00000030 	0x00000030
     834:	7f880003 	0x7f880003
     838:	0000309f 	revb.2h	$r31,$r4
     83c:	00003c00 	revb.d	$r0,$r0
     840:	68000100 	bltu	$r8,$r0,0 # 840 <__stack_size-0xf7c0>
     844:	0000003c 	0x0000003c
     848:	00000050 	0x00000050
     84c:	7f880003 	0x7f880003
     850:	0000509f 	bitrev.w	$r31,$r4
     854:	00005800 	ext.w.h	$r0,$r0
     858:	68000100 	bltu	$r8,$r0,0 # 858 <__stack_size-0xf7a8>
	...
     864:	00180000 	sra.w	$r0,$r0,$r0
     868:	00600000 	bstrins.w	$r0,$r0,0x0,0x0
     86c:	00010000 	asrtle.d	$r0,$r0
     870:	00000067 	0x00000067
	...
     888:	00002400 	clz.d	$r0,$r0
     88c:	54000100 	bl	67108864(0x4000000) # 400088c <__stack_size+0x3ff088c>
     890:	00000024 	0x00000024
     894:	000000c0 	0x000000c0
     898:	01f30004 	0x01f30004
     89c:	00c09f54 	bstrpick.d	$r20,$r26,0x0,0x27
     8a0:	00c40000 	bstrpick.d	$r0,$r0,0x4,0x0
     8a4:	00010000 	asrtle.d	$r0,$r0
     8a8:	0000c454 	0x0000c454
     8ac:	0000d400 	0x0000d400
     8b0:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff08b0 <_stack+0xe3ef08b4>
     8b4:	000000d4 	0x000000d4
     8b8:	000000e0 	0x000000e0
     8bc:	00870004 	bstrins.d	$r4,$r0,0x7,0x0
     8c0:	00e09f1f 	bstrpick.d	$r31,$r24,0x20,0x27
     8c4:	00ec0000 	bstrpick.d	$r0,$r0,0x2c,0x0
     8c8:	00010000 	asrtle.d	$r0,$r0
     8cc:	00000054 	0x00000054
	...
     8e0:	24000000 	ldptr.w	$r0,$r0,0
     8e4:	01000000 	0x01000000
     8e8:	00245500 	crc.w.b.w	$r0,$r8,$r21
     8ec:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
     8f0:	00040000 	alsl.w	$r0,$r0,$r0,0x1
     8f4:	9f5501f3 	0x9f5501f3
     8f8:	000000c0 	0x000000c0
     8fc:	000000cf 	0x000000cf
     900:	cf550001 	0xcf550001
     904:	e0000000 	0xe0000000
     908:	03000000 	lu52i.d	$r0,$r0,0
     90c:	7fa89100 	0x7fa89100
     910:	000000e0 	0x000000e0
     914:	000000ec 	0x000000ec
     918:	00550001 	0x00550001
	...
     930:	00002400 	clz.d	$r0,$r0
     934:	56000100 	bl	67239936(0x4020000) # 4020934 <__stack_size+0x4010934>
     938:	00000024 	0x00000024
     93c:	000000c0 	0x000000c0
     940:	01f30004 	0x01f30004
     944:	00c09f56 	bstrpick.d	$r22,$r26,0x0,0x27
     948:	00cf0000 	bstrpick.d	$r0,$r0,0xf,0x0
     94c:	00010000 	asrtle.d	$r0,$r0
     950:	0000cf56 	0x0000cf56
     954:	0000e000 	0x0000e000
     958:	91000300 	0x91000300
     95c:	00e07fac 	bstrpick.d	$r12,$r29,0x20,0x1f
     960:	00ec0000 	bstrpick.d	$r0,$r0,0x2c,0x0
     964:	00010000 	asrtle.d	$r0,$r0
     968:	00000056 	0x00000056
	...
     97c:	24000000 	ldptr.w	$r0,$r0,0
     980:	01000000 	0x01000000
     984:	00245700 	crc.w.b.w	$r0,$r24,$r21
     988:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
     98c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
     990:	9f5701f3 	0x9f5701f3
     994:	000000c0 	0x000000c0
     998:	000000cf 	0x000000cf
     99c:	cf570001 	0xcf570001
     9a0:	e0000000 	0xe0000000
     9a4:	04000000 	csrrd	$r0,0x0
     9a8:	5701f300 	bl	-66911760(0xc0301f0) # fc030b98 <_stack+0xdff30b9c>
     9ac:	0000e09f 	0x0000e09f
     9b0:	0000ec00 	0x0000ec00
     9b4:	57000100 	bl	67305472(0x4030000) # 40309b4 <__stack_size+0x40209b4>
	...
     9c0:	00000001 	0x00000001
     9c4:	00000000 	0x00000000
     9c8:	00010000 	asrtle.d	$r0,$r0
     9cc:	00000020 	0x00000020
     9d0:	00000034 	0x00000034
     9d4:	9f300002 	0x9f300002
     9d8:	00000034 	0x00000034
     9dc:	00000038 	0x00000038
     9e0:	38680001 	ammin.wu	$r1,$r0,$r0
     9e4:	58000000 	beq	$r0,$r0,0 # 9e4 <__stack_size-0xf61c>
     9e8:	08000000 	0x08000000
     9ec:	91007c00 	0x91007c00
     9f0:	50231c00 	b	8988(0x231c) # 2d0c <__stack_size-0xd2f4>
     9f4:	0000589f 	ext.w.h	$r31,$r4
     9f8:	00006400 	rdtimeh.w	$r0,$r0
     9fc:	68000100 	bltu	$r8,$r0,0 # 9fc <__stack_size-0xf604>
     a00:	000000b8 	0x000000b8
     a04:	000000c0 	0x000000c0
     a08:	d4680001 	0xd4680001
     a0c:	ec000000 	0xec000000
     a10:	02000000 	slti	$r0,$r0,0
     a14:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
	...
     a24:	02000000 	slti	$r0,$r0,0
     a28:	00007000 	0x00007000
     a2c:	00009400 	0x00009400
     a30:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff0a30 <_stack+0xe3ef0a34>
     a34:	00000094 	0x00000094
     a38:	00000098 	0x00000098
     a3c:	01870003 	0x01870003
     a40:	0000989f 	0x0000989f
     a44:	00009c00 	0x00009c00
     a48:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff0a48 <_stack+0xe3ef0a4c>
     a4c:	000000bc 	0x000000bc
     a50:	000000c0 	0x000000c0
     a54:	e0550001 	0xe0550001
     a58:	ec000000 	0xec000000
     a5c:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
     a60:	12007500 	addu16i.d	$r0,$r8,-32739(0x801d)
     a64:	2b141630 	fld.s	$f16,$r17,1285(0x505)
     a68:	16000128 	lu32i.d	$r8,9(0x9)
     a6c:	00009f13 	0x00009f13
	...
     a78:	00000084 	0x00000084
     a7c:	00000090 	0x00000090
     a80:	005c0001 	0x005c0001
     a84:	00000000 	0x00000000
     a88:	01000000 	0x01000000
	...
     a98:	20000000 	ll.w	$r0,$r0,0
     a9c:	24000000 	ldptr.w	$r0,$r0,0
     aa0:	01000000 	0x01000000
     aa4:	00245400 	crc.w.b.w	$r0,$r0,$r21
     aa8:	00340000 	0x00340000
     aac:	00010000 	asrtle.d	$r0,$r0
     ab0:	00003467 	revb.4h	$r7,$r3
     ab4:	00003800 	revb.2w	$r0,$r0
     ab8:	5d000100 	bne	$r8,$r0,65536(0x10000) # 10ab8 <__stack_size+0xab8>
     abc:	00000038 	0x00000038
     ac0:	00000058 	0x00000058
     ac4:	58670001 	beq	$r0,$r1,26368(0x6700) # 71c4 <__stack_size-0x8e3c>
     ac8:	64000000 	bge	$r0,$r0,0 # ac8 <__stack_size-0xf538>
     acc:	01000000 	0x01000000
     ad0:	00b85d00 	bstrins.d	$r0,$r8,0x38,0x17
     ad4:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
     ad8:	00010000 	asrtle.d	$r0,$r0
     adc:	0000d45d 	0x0000d45d
     ae0:	0000e000 	0x0000e000
     ae4:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff0ae4 <_stack+0xe3ef0ae8>
     ae8:	000000e0 	0x000000e0
     aec:	000000ec 	0x000000ec
     af0:	00540001 	0x00540001
	...
     afc:	40000000 	beqz	$r0,0 # afc <__stack_size-0xf504>
     b00:	481c0015 	bceqz	$fcc0,-2876416(0x541c00) # ffd42700 <_stack+0xe3c42704>
     b04:	011c0015 	0x011c0015
     b08:	15485400 	lu12i.w	$r0,-376160(0xa42a0)
     b0c:	15581c00 	lu12i.w	$r0,-343840(0xac0e0)
     b10:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
     b14:	9f5401f3 	0x9f5401f3
	...
     b24:	1c001540 	pcaddu12i	$r0,170(0xaa)
     b28:	1c001548 	pcaddu12i	$r8,170(0xaa)
     b2c:	48550001 	bceqz	$fcc0,283904(0x45500) # 4602c <__stack_size+0x3602c>
     b30:	581c0015 	beq	$r0,$r21,7168(0x1c00) # 2730 <__stack_size-0xd8d0>
     b34:	041c0015 	csrrd	$r21,0x700
     b38:	5501f300 	bl	-67042832(0xc0101f0) # fc010d28 <_stack+0xdff10d2c>
     b3c:	0000009f 	0x0000009f
     b40:	00000000 	0x00000000
     b44:	05050200 	0x05050200
     b48:	40000000 	beqz	$r0,0 # b48 <__stack_size-0xf4b8>
     b4c:	401c0015 	beqz	$r0,-2876416(0x541c00) # ffd4274c <_stack+0xe3c42750>
     b50:	011c0015 	0x011c0015
     b54:	15405500 	lu12i.w	$r0,-392536(0xa02a8)
     b58:	15481c00 	lu12i.w	$r0,-376608(0xa40e0)
     b5c:	00031c00 	0x00031c00
     b60:	489f7f75 	0x489f7f75
     b64:	541c0015 	bl	5512192(0x541c00) # 542764 <__stack_size+0x532764>
     b68:	061c0015 	cacop	0x15,$r0,1792(0x700)
     b6c:	5501f300 	bl	-67042832(0xc0101f0) # fc010d5c <_stack+0xdff10d60>
     b70:	009f1c31 	bstrins.d	$r17,$r1,0x1f,0x7
     b74:	00000000 	0x00000000
     b78:	02000000 	slti	$r0,$r0,0
     b7c:	40000000 	beqz	$r0,0 # b7c <__stack_size-0xf484>
     b80:	481c0015 	bceqz	$fcc0,-2876416(0x541c00) # ffd42780 <_stack+0xe3c42784>
     b84:	011c0015 	0x011c0015
     b88:	15485400 	lu12i.w	$r0,-376160(0xa42a0)
     b8c:	15581c00 	lu12i.w	$r0,-343840(0xac0e0)
     b90:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
     b94:	9f5401f3 	0x9f5401f3
	...
     ba0:	15400004 	lu12i.w	$r4,-393216(0xa0000)
     ba4:	15581c00 	lu12i.w	$r0,-343840(0xac0e0)
     ba8:	00011c00 	asrtle.d	$r0,$r7
     bac:	00000054 	0x00000054
	...
     bb8:	0014e000 	and	$r0,$r0,$r24
     bbc:	0014f81c 	and	$r28,$r0,$r30
     bc0:	5400011c 	bl	74448896(0x4700000) # 4700bc0 <__stack_size+0x46f0bc0>
     bc4:	1c0014f8 	pcaddu12i	$r24,167(0xa7)
     bc8:	1c001538 	pcaddu12i	$r24,169(0xa9)
     bcc:	01f30004 	0x01f30004
     bd0:	00009f54 	0x00009f54
	...
     bdc:	14e00000 	lu12i.w	$r0,458752(0x70000)
     be0:	14f81c00 	lu12i.w	$r0,508128(0x7c0e0)
     be4:	00011c00 	asrtle.d	$r0,$r7
     be8:	0014f855 	and	$r21,$r2,$r30
     bec:	0015381c 	or	$r28,$r0,$r14
     bf0:	f300041c 	0xf300041c
     bf4:	009f5501 	bstrins.d	$r1,$r8,0x1f,0x15
	...
     c00:	00000404 	0x00000404
     c04:	e0000100 	0xe0000100
     c08:	e01c0014 	0xe01c0014
     c0c:	011c0014 	0x011c0014
     c10:	14e05600 	lu12i.w	$r0,459440(0x702b0)
     c14:	14f01c00 	lu12i.w	$r0,491744(0x780e0)
     c18:	00031c00 	0x00031c00
     c1c:	f09f7f76 	0xf09f7f76
     c20:	041c0014 	csrrd	$r20,0x700
     c24:	061c0015 	cacop	0x15,$r0,1792(0x700)
     c28:	5601f300 	bl	-66977296(0xc0201f0) # fc020e18 <_stack+0xdff20e1c>
     c2c:	049f1c31 	csrwr	$r17,0x27c7
     c30:	101c0015 	addu16i.d	$r21,$r0,1792(0x700)
     c34:	061c0015 	cacop	0x15,$r0,1792(0x700)
     c38:	5601f300 	bl	-66977296(0xc0201f0) # fc020e28 <_stack+0xdff20e2c>
     c3c:	009f1c31 	bstrins.d	$r17,$r1,0x1f,0x7
     c40:	00000000 	0x00000000
     c44:	02000000 	slti	$r0,$r0,0
     c48:	e0000000 	0xe0000000
     c4c:	141c0014 	lu12i.w	$r20,57344(0xe000)
     c50:	011c0015 	0x011c0015
     c54:	15185400 	lu12i.w	$r0,-474464(0x8c2a0)
     c58:	152c1c00 	lu12i.w	$r0,-433952(0x960e0)
     c5c:	00011c00 	asrtle.d	$r0,$r7
     c60:	00000054 	0x00000054
     c64:	00000000 	0x00000000
     c68:	e0000300 	0xe0000300
     c6c:	381c0014 	stx.d	$r20,$r0,$r0
     c70:	011c0015 	0x011c0015
     c74:	00005500 	bitrev.d	$r0,$r8
	...
     c84:	1c001480 	pcaddu12i	$r0,164(0xa4)
     c88:	1c0014bc 	pcaddu12i	$r28,165(0xa5)
     c8c:	bc550001 	0xbc550001
     c90:	d81c0014 	0xd81c0014
     c94:	041c0014 	csrrd	$r20,0x700
     c98:	5501f300 	bl	-67042832(0xc0101f0) # fc010e88 <_stack+0xdff10e8c>
     c9c:	0014d89f 	and	$r31,$r4,$r22
     ca0:	0014dc1c 	and	$r28,$r0,$r23
     ca4:	5500011c 	bl	74514432(0x4710000) # 4710ca4 <__stack_size+0x4700ca4>
	...
     cb0:	00010100 	asrtle.d	$r8,$r0
     cb4:	14800000 	lu12i.w	$r0,262144(0x40000)
     cb8:	14901c00 	lu12i.w	$r0,295136(0x480e0)
     cbc:	00011c00 	asrtle.d	$r0,$r7
     cc0:	00149056 	and	$r22,$r2,$r4
     cc4:	0014d41c 	and	$r28,$r0,$r21
     cc8:	7600031c 	0x7600031c
     ccc:	14d89f7f 	lu12i.w	$r31,443643(0x6c4fb)
     cd0:	14dc1c00 	lu12i.w	$r0,450784(0x6e0e0)
     cd4:	00031c00 	0x00031c00
     cd8:	009f7f76 	bstrins.d	$r22,$r27,0x1f,0x1f
     cdc:	00000000 	0x00000000
     ce0:	02000000 	slti	$r0,$r0,0
     ce4:	00000101 	0x00000101
     ce8:	80000000 	0x80000000
     cec:	8c1c0014 	0x8c1c0014
     cf0:	011c0014 	0x011c0014
     cf4:	148c5500 	lu12i.w	$r0,287400(0x462a8)
     cf8:	14ac1c00 	lu12i.w	$r0,352480(0x560e0)
     cfc:	00011c00 	asrtle.d	$r0,$r7
     d00:	0014ac5c 	and	$r28,$r2,$r11
     d04:	0014d41c 	and	$r28,$r0,$r21
     d08:	5500011c 	bl	74514432(0x4710000) # 4710d08 <__stack_size+0x4700d08>
     d0c:	1c0014d8 	pcaddu12i	$r24,166(0xa6)
     d10:	1c0014dc 	pcaddu12i	$r28,166(0xa6)
     d14:	00550001 	0x00550001
     d18:	00000000 	0x00000000
     d1c:	03000000 	lu52i.d	$r0,$r0,0
	...
     d28:	00148000 	and	$r0,$r0,$r0
     d2c:	0014901c 	and	$r28,$r0,$r4
     d30:	5400011c 	bl	74448896(0x4700000) # 4700d30 <__stack_size+0x46f0d30>
     d34:	1c001490 	pcaddu12i	$r16,164(0xa4)
     d38:	1c0014ac 	pcaddu12i	$r12,165(0xa5)
     d3c:	ac5d0001 	0xac5d0001
     d40:	bc1c0014 	0xbc1c0014
     d44:	011c0014 	0x011c0014
     d48:	14bc5400 	lu12i.w	$r0,385696(0x5e2a0)
     d4c:	14d41c00 	lu12i.w	$r0,434400(0x6a0e0)
     d50:	00011c00 	asrtle.d	$r0,$r7
     d54:	0014d85c 	and	$r28,$r2,$r22
     d58:	0014dc1c 	and	$r28,$r0,$r23
     d5c:	5400011c 	bl	74448896(0x4700000) # 4700d5c <__stack_size+0x46f0d5c>
	...
     d6c:	1c001450 	pcaddu12i	$r16,162(0xa2)
     d70:	1c00145c 	pcaddu12i	$r28,162(0xa2)
     d74:	5c550001 	bne	$r0,$r1,21760(0x5500) # 6274 <__stack_size-0x9d8c>
     d78:	781c0014 	0x781c0014
     d7c:	041c0014 	csrrd	$r20,0x700
     d80:	5501f300 	bl	-67042832(0xc0101f0) # fc010f70 <_stack+0xdff10f74>
     d84:	0000009f 	0x0000009f
     d88:	00000000 	0x00000000
     d8c:	04040000 	csrrd	$r0,0x100
     d90:	50000000 	b	0 # d90 <__stack_size-0xf270>
     d94:	501c0014 	b	5250048(0x501c00) # 502994 <__stack_size+0x4f2994>
     d98:	011c0014 	0x011c0014
     d9c:	14505600 	lu12i.w	$r0,164528(0x282b0)
     da0:	14581c00 	lu12i.w	$r0,180448(0x2c0e0)
     da4:	00031c00 	0x00031c00
     da8:	589f7f76 	beq	$r27,$r22,40828(0x9f7c) # ad24 <__stack_size-0x52dc>
     dac:	741c0014 	0x741c0014
     db0:	061c0014 	cacop	0x14,$r0,1792(0x700)
     db4:	5601f300 	bl	-66977296(0xc0201f0) # fc020fa4 <_stack+0xdff20fa8>
     db8:	009f1c31 	bstrins.d	$r17,$r1,0x1f,0x7
     dbc:	00000000 	0x00000000
     dc0:	02000000 	slti	$r0,$r0,0
     dc4:	00145000 	nor	$r0,$r0,$r20
     dc8:	0014781c 	nor	$r28,$r0,$r30
     dcc:	5500011c 	bl	74514432(0x4710000) # 4710dcc <__stack_size+0x4700dcc>
	...
     dd8:	00000003 	0x00000003
     ddc:	1c001450 	pcaddu12i	$r16,162(0xa2)
     de0:	1c00145c 	pcaddu12i	$r28,162(0xa2)
     de4:	5c540001 	bne	$r0,$r1,21504(0x5400) # 61e4 <__stack_size-0x9e1c>
     de8:	741c0014 	0x741c0014
     dec:	011c0014 	0x011c0014
     df0:	00005c00 	ext.w.b	$r0,$r0
	...
     dfc:	14000000 	lu12i.w	$r0,0
     e00:	14181c00 	lu12i.w	$r0,49376(0xc0e0)
     e04:	00011c00 	asrtle.d	$r0,$r7
     e08:	00141854 	nor	$r20,$r2,$r6
     e0c:	0014281c 	nor	$r28,$r0,$r10
     e10:	5400011c 	bl	74448896(0x4700000) # 4700e10 <__stack_size+0x46f0e10>
	...
     e20:	13c00000 	addu16i.d	$r0,$r0,-4096(0xf000)
     e24:	13d41c00 	addu16i.d	$r0,$r0,-2809(0xf507)
     e28:	00011c00 	asrtle.d	$r0,$r7
     e2c:	0013d454 	masknez	$r20,$r2,$r21
     e30:	0013f81c 	masknez	$r28,$r0,$r30
     e34:	5c00011c 	bne	$r8,$r28,0 # e34 <__stack_size-0xf1cc>
     e38:	1c0013f8 	pcaddu12i	$r24,159(0x9f)
     e3c:	1c0013fc 	pcaddu12i	$r28,159(0x9f)
     e40:	00540001 	0x00540001
	...
     e50:	00135000 	maskeqz	$r0,$r0,$r20
     e54:	00138c1c 	masknez	$r28,$r0,$r3
     e58:	5400011c 	bl	74448896(0x4700000) # 4700e58 <__stack_size+0x46f0e58>
     e5c:	1c00138c 	pcaddu12i	$r12,156(0x9c)
     e60:	1c001394 	pcaddu12i	$r20,156(0x9c)
     e64:	98540001 	0x98540001
     e68:	b01c0013 	0xb01c0013
     e6c:	011c0013 	0x011c0013
     e70:	00005400 	bitrev.d	$r0,$r0
	...
     e84:	1c001350 	pcaddu12i	$r16,154(0x9a)
     e88:	1c00136c 	pcaddu12i	$r12,155(0x9b)
     e8c:	6c550001 	bgeu	$r0,$r1,21760(0x5500) # 638c <__stack_size-0x9c74>
     e90:	841c0013 	0x841c0013
     e94:	011c0013 	0x011c0013
     e98:	13845c00 	addu16i.d	$r0,$r0,-7913(0xe117)
     e9c:	138c1c00 	addu16i.d	$r0,$r0,-7417(0xe307)
     ea0:	00011c00 	asrtle.d	$r0,$r7
     ea4:	00138c55 	masknez	$r21,$r2,$r3
     ea8:	0013901c 	masknez	$r28,$r0,$r4
     eac:	5c00011c 	bne	$r8,$r28,0 # eac <__stack_size-0xf154>
     eb0:	1c001398 	pcaddu12i	$r24,156(0x9c)
     eb4:	1c00139c 	pcaddu12i	$r28,156(0x9c)
     eb8:	005c0001 	0x005c0001
	...
     ec8:	01010000 	fadd.d	$f0,$f0,$f0
     ecc:	50000000 	b	0 # ecc <__stack_size-0xf134>
     ed0:	681c0013 	bltu	$r0,$r19,7168(0x1c00) # 2ad0 <__stack_size-0xd530>
     ed4:	011c0013 	0x011c0013
     ed8:	13685600 	addu16i.d	$r0,$r16,-9707(0xda15)
     edc:	136c1c00 	addu16i.d	$r0,$r0,-9465(0xdb07)
     ee0:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
     ee4:	9f5601f3 	0x9f5601f3
     ee8:	1c00136c 	pcaddu12i	$r12,155(0x9b)
     eec:	1c001384 	pcaddu12i	$r4,156(0x9c)
     ef0:	01f30006 	0x01f30006
     ef4:	9f1c3156 	0x9f1c3156
     ef8:	1c001384 	pcaddu12i	$r4,156(0x9c)
     efc:	1c001384 	pcaddu12i	$r4,156(0x9c)
     f00:	01f30004 	0x01f30004
     f04:	13849f56 	addu16i.d	$r22,$r26,-7897(0xe127)
     f08:	13901c00 	addu16i.d	$r0,$r0,-7161(0xe407)
     f0c:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
     f10:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
     f14:	13989f1c 	addu16i.d	$r28,$r24,-6617(0xe627)
     f18:	139c1c00 	addu16i.d	$r0,$r0,-6393(0xe707)
     f1c:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
     f20:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
     f24:	00009f1c 	0x00009f1c
	...
     f30:	13200000 	addu16i.d	$r0,$r0,-14336(0xc800)
     f34:	13441c00 	addu16i.d	$r0,$r0,-12025(0xd107)
     f38:	00011c00 	asrtle.d	$r0,$r7
     f3c:	00134455 	maskeqz	$r21,$r2,$r17
     f40:	00134c1c 	maskeqz	$r28,$r0,$r19
     f44:	5500011c 	bl	74514432(0x4710000) # 4710f44 <__stack_size+0x4700f44>
	...
     f54:	01000000 	0x01000000
     f58:	13200001 	addu16i.d	$r1,$r0,-14336(0xc800)
     f5c:	13281c00 	addu16i.d	$r0,$r0,-13817(0xca07)
     f60:	00011c00 	asrtle.d	$r0,$r7
     f64:	00132856 	maskeqz	$r22,$r2,$r10
     f68:	00132c1c 	maskeqz	$r28,$r0,$r11
     f6c:	f300041c 	0xf300041c
     f70:	2c9f5601 	xvld	$xr1,$r16,2005(0x7d5)
     f74:	381c0013 	stx.d	$r19,$r0,$r0
     f78:	0a1c0013 	xvfmadd.s	$xr19,$xr0,$xr0,$xr24
     f7c:	7d007400 	0x7d007400
     f80:	01f31c00 	0x01f31c00
     f84:	389f2256 	0x389f2256
     f88:	441c0013 	bnez	$r0,-3400704(0x4c1c00) # ffcc2b88 <_stack+0xe3bc2b8c>
     f8c:	0c1c0013 	0x0c1c0013
     f90:	7d007400 	0x7d007400
     f94:	01f31c00 	0x01f31c00
     f98:	01232256 	0x01232256
     f9c:	0013449f 	maskeqz	$r31,$r4,$r17
     fa0:	0013481c 	maskeqz	$r28,$r0,$r18
     fa4:	74000a1c 	xvseq.b	$xr28,$xr16,$xr2
     fa8:	1c007d00 	pcaddu12i	$r0,1000(0x3e8)
     fac:	225601f3 	ll.d	$r19,$r15,22016(0x5600)
     fb0:	0000009f 	0x0000009f
     fb4:	00000000 	0x00000000
     fb8:	00000200 	0x00000200
     fbc:	01010000 	fadd.d	$f0,$f0,$f0
     fc0:	00132000 	maskeqz	$r0,$r0,$r8
     fc4:	00132c1c 	maskeqz	$r28,$r0,$r11
     fc8:	5400011c 	bl	74448896(0x4700000) # 4700fc8 <__stack_size+0x46f0fc8>
     fcc:	1c00132c 	pcaddu12i	$r12,153(0x99)
     fd0:	1c001338 	pcaddu12i	$r24,153(0x99)
     fd4:	385d0001 	0x385d0001
     fd8:	441c0013 	bnez	$r0,-3400704(0x4c1c00) # ffcc2bd8 <_stack+0xe3bc2bdc>
     fdc:	031c0013 	lu52i.d	$r19,$r0,1792(0x700)
     fe0:	9f7f7d00 	0x9f7f7d00
     fe4:	1c001344 	pcaddu12i	$r4,154(0x9a)
     fe8:	1c001348 	pcaddu12i	$r8,154(0x9a)
     fec:	005d0001 	0x005d0001
	...
     ffc:	081c0013 	fmadd.s	$f19,$f0,$f0,$f24
    1000:	011c0013 	0x011c0013
    1004:	13085500 	addu16i.d	$r0,$r8,-15851(0xc215)
    1008:	131c1c00 	addu16i.d	$r0,$r0,-14585(0xc707)
    100c:	00011c00 	asrtle.d	$r0,$r7
    1010:	00000055 	0x00000055
    1014:	00000000 	0x00000000
    1018:	00000200 	0x00000200
    101c:	00130000 	maskeqz	$r0,$r0,$r0
    1020:	0013041c 	maskeqz	$r28,$r0,$r1
    1024:	5400011c 	bl	74448896(0x4700000) # 4701024 <__stack_size+0x46f1024>
    1028:	1c001304 	pcaddu12i	$r4,152(0x98)
    102c:	1c00131c 	pcaddu12i	$r28,152(0x98)
    1030:	005c0001 	0x005c0001
	...
    1040:	0012c000 	sltu	$r0,$r0,$r16
    1044:	0012c81c 	sltu	$r28,$r0,$r18
    1048:	5400011c 	bl	74448896(0x4700000) # 4701048 <__stack_size+0x46f1048>
    104c:	1c0012c8 	pcaddu12i	$r8,150(0x96)
    1050:	1c0012d8 	pcaddu12i	$r24,150(0x96)
    1054:	01740003 	0x01740003
    1058:	0012d89f 	sltu	$r31,$r4,$r22
    105c:	0012ec1c 	sltu	$r28,$r0,$r27
    1060:	7400081c 	xvseq.b	$xr28,$xr0,$xr2
    1064:	22007c00 	ll.d	$r0,$r0,124(0x7c)
    1068:	009f0123 	bstrins.d	$r3,$r9,0x1f,0x0
    106c:	00000000 	0x00000000
    1070:	02000000 	slti	$r0,$r0,0
    1074:	c0000000 	0xc0000000
    1078:	d81c0012 	0xd81c0012
    107c:	021c0012 	slti	$r18,$r0,1792(0x700)
    1080:	d89f3000 	0xd89f3000
    1084:	ec1c0012 	0xec1c0012
    1088:	011c0012 	0x011c0012
    108c:	00005c00 	ext.w.b	$r0,$r0
    1090:	00000000 	0x00000000
    1094:	03000000 	lu52i.d	$r0,$r0,0
    1098:	00000003 	0x00000003
    109c:	00000000 	0x00000000
    10a0:	12800000 	addu16i.d	$r0,$r0,-24576(0xa000)
    10a4:	12801c00 	addu16i.d	$r0,$r0,-24569(0xa007)
    10a8:	00011c00 	asrtle.d	$r0,$r7
    10ac:	00128054 	sltu	$r20,$r2,$r0
    10b0:	00128c1c 	sltu	$r28,$r0,$r3
    10b4:	7400031c 	xvseq.b	$xr28,$xr24,$xr0
    10b8:	128c9f01 	addu16i.d	$r1,$r24,-23769(0xa327)
    10bc:	12a41c00 	addu16i.d	$r0,$r0,-22265(0xa907)
    10c0:	00081c00 	bytepick.w	$r0,$r0,$r7,0x0
    10c4:	007c0074 	bstrins.w	$r20,$r3,0x1c,0x0
    10c8:	9f012322 	0x9f012322
    10cc:	1c0012a4 	pcaddu12i	$r4,149(0x95)
    10d0:	1c0012a8 	pcaddu12i	$r8,149(0x95)
    10d4:	01f30009 	0x01f30009
    10d8:	22007c54 	ll.d	$r20,$r2,124(0x7c)
    10dc:	a89f0123 	0xa89f0123
    10e0:	b01c0012 	0xb01c0012
    10e4:	031c0012 	lu52i.d	$r18,$r0,1792(0x700)
    10e8:	9f017400 	0x9f017400
    10ec:	1c0012b0 	pcaddu12i	$r16,149(0x95)
    10f0:	1c0012b4 	pcaddu12i	$r20,149(0x95)
    10f4:	01f30006 	0x01f30006
    10f8:	9f012354 	0x9f012354
	...
    1104:	00000002 	0x00000002
    1108:	12800000 	addu16i.d	$r0,$r0,-24576(0xa000)
    110c:	128c1c00 	addu16i.d	$r0,$r0,-23801(0xa307)
    1110:	00021c00 	0x00021c00
    1114:	128c9f30 	addu16i.d	$r16,$r25,-23769(0xa327)
    1118:	12a81c00 	addu16i.d	$r0,$r0,-22009(0xaa07)
    111c:	00011c00 	asrtle.d	$r0,$r7
    1120:	0012a85c 	sltu	$r28,$r2,$r10
    1124:	0012b41c 	sltu	$r28,$r0,$r13
    1128:	3000021c 	0x3000021c
    112c:	0000009f 	0x0000009f
    1130:	00000000 	0x00000000
    1134:	03030000 	lu52i.d	$r0,$r0,192(0xc0)
	...
    1140:	00143000 	nor	$r0,$r0,$r12
    1144:	0014301c 	nor	$r28,$r0,$r12
    1148:	5600011c 	bl	74579968(0x4720000) # 4721148 <__stack_size+0x4711148>
    114c:	1c001430 	pcaddu12i	$r16,161(0xa1)
    1150:	1c001438 	pcaddu12i	$r24,161(0xa1)
    1154:	7f760003 	0x7f760003
    1158:	0014389f 	nor	$r31,$r4,$r14
    115c:	00143c1c 	nor	$r28,$r0,$r15
    1160:	f300061c 	0xf300061c
    1164:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
    1168:	00143c9f 	nor	$r31,$r4,$r15
    116c:	0014441c 	nor	$r28,$r0,$r17
    1170:	7c000b1c 	0x7c000b1c
    1174:	01f32000 	0x01f32000
    1178:	00742256 	bstrins.w	$r22,$r18,0x14,0x8
    117c:	14449f22 	lu12i.w	$r2,140537(0x224f9)
    1180:	14481c00 	lu12i.w	$r0,147680(0x240e0)
    1184:	000a1c00 	0x000a1c00
    1188:	007c0074 	bstrins.w	$r20,$r3,0x1c,0x0
    118c:	5601f31c 	bl	-59637264(0xc7201f0) # fc72137c <_stack+0xe0621380>
    1190:	14489f22 	lu12i.w	$r2,148729(0x244f9)
    1194:	144c1c00 	lu12i.w	$r0,155872(0x260e0)
    1198:	000b1c00 	0x000b1c00
    119c:	f320007c 	0xf320007c
    11a0:	74225601 	xvaddwod.h.b	$xr1,$xr16,$xr21
    11a4:	009f2200 	bstrins.d	$r0,$r16,0x1f,0x8
    11a8:	00000000 	0x00000000
    11ac:	02000000 	slti	$r0,$r0,0
    11b0:	30000000 	0x30000000
    11b4:	3c1c0014 	0x3c1c0014
    11b8:	011c0014 	0x011c0014
    11bc:	143c5400 	lu12i.w	$r0,123552(0x1e2a0)
    11c0:	144c1c00 	lu12i.w	$r0,155872(0x260e0)
    11c4:	00011c00 	asrtle.d	$r0,$r7
    11c8:	0000005c 	0x0000005c
    11cc:	00000000 	0x00000000
    11d0:	01010200 	fadd.d	$f0,$f16,$f0
    11d4:	00000303 	0x00000303
    11d8:	00011000 	asrtle.d	$r0,$r4
    11dc:	00012000 	asrtle.d	$r0,$r8
    11e0:	30000200 	0x30000200
    11e4:	0001209f 	0x0001209f
    11e8:	00012000 	asrtle.d	$r0,$r8
    11ec:	54000100 	bl	67108864(0x4000000) # 40011ec <__stack_size+0x3ff11ec>
    11f0:	00000120 	0x00000120
    11f4:	00000134 	0x00000134
    11f8:	0074000c 	bstrins.w	$r12,$r0,0x14,0x0
    11fc:	640825f7 	bge	$r15,$r23,2084(0x824) # 1a20 <__stack_size-0xe5e0>
    1200:	f71b25f7 	0xf71b25f7
    1204:	01349f00 	0x01349f00
    1208:	01400000 	0x01400000
    120c:	00010000 	asrtle.d	$r0,$r0
    1210:	0000005d 	0x0000005d
    1214:	00000000 	0x00000000
    1218:	20010000 	ll.w	$r0,$r0,256(0x100)
    121c:	20000001 	ll.w	$r1,$r0,0
    1220:	01000001 	0x01000001
    1224:	00005400 	bitrev.d	$r0,$r0
    1228:	00000000 	0x00000000
    122c:	01020000 	0x01020000
    1230:	00030301 	0x00030301
    1234:	00e00000 	bstrpick.d	$r0,$r0,0x20,0x0
    1238:	00f00000 	bstrpick.d	$r0,$r0,0x30,0x0
    123c:	00020000 	0x00020000
    1240:	00f09f30 	bstrpick.d	$r16,$r25,0x30,0x27
    1244:	00f00000 	bstrpick.d	$r0,$r0,0x30,0x0
    1248:	00010000 	asrtle.d	$r0,$r0
    124c:	0000f054 	0x0000f054
    1250:	0000fc00 	0x0000fc00
    1254:	74000500 	xvseq.b	$xr0,$xr8,$xr1
    1258:	9f1e3a00 	0x9f1e3a00
    125c:	000000fc 	0x000000fc
    1260:	00000104 	0x00000104
    1264:	00540001 	0x00540001
	...
    1270:	0000f001 	0x0000f001
    1274:	0000f000 	0x0000f000
    1278:	54000100 	bl	67108864(0x4000000) # 4001278 <__stack_size+0x3ff1278>
	...
    1288:	00000040 	0x00000040
    128c:	000000ac 	0x000000ac
    1290:	ac540001 	0xac540001
    1294:	c4000000 	0xc4000000
    1298:	04000000 	csrrd	$r0,0x0
    129c:	5401f300 	bl	-67108368(0xc0001f0) # fc00148c <_stack+0xdff01490>
    12a0:	0000009f 	0x0000009f
    12a4:	00000000 	0x00000000
    12a8:	01010200 	fadd.d	$f0,$f16,$f0
    12ac:	00004000 	revh.2w	$r0,$r0
    12b0:	00005000 	bitrev.w	$r0,$r0
    12b4:	30000200 	0x30000200
    12b8:	0000509f 	bitrev.w	$r31,$r4
    12bc:	0000c400 	0x0000c400
    12c0:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff12c0 <_stack+0xe3ef12c4>
	...
    12cc:	00500100 	0x00500100
    12d0:	00500000 	0x00500000
    12d4:	00010000 	asrtle.d	$r0,$r0
    12d8:	0000005f 	0x0000005f
    12dc:	00000000 	0x00000000
    12e0:	34000000 	0x34000000
    12e4:	38000000 	ldx.b	$r0,$r0,$r0
    12e8:	01000000 	0x01000000
    12ec:	00005400 	bitrev.d	$r0,$r0
    12f0:	00000000 	0x00000000
    12f4:	01000000 	0x01000000
    12f8:	00000010 	0x00000010
    12fc:	00000010 	0x00000010
    1300:	00540001 	0x00540001
    1304:	00000000 	0x00000000
    1308:	Address 0x0000000000001308 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x0000001c
   4:	00000002 	0x00000002
   8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
   c:	00000000 	0x00000000
  10:	1c000bc0 	pcaddu12i	$r0,94(0x5e)
  14:	00000278 	0x00000278
	...
  20:	0000001c 	0x0000001c
  24:	033f0002 	lu52i.d	$r2,$r0,-64(0xfc0)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c000e40 	pcaddu12i	$r0,114(0x72)
  34:	0000023c 	0x0000023c
	...
  40:	0000001c 	0x0000001c
  44:	05ab0002 	0x05ab0002
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c001080 	pcaddu12i	$r0,132(0x84)
  54:	00000054 	0x00000054
	...
  60:	0000001c 	0x0000001c
  64:	06730002 	0x06730002
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c0010e0 	pcaddu12i	$r0,135(0x87)
  74:	000000ac 	0x000000ac
	...
  80:	0000001c 	0x0000001c
  84:	07e70002 	0x07e70002
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c001190 	pcaddu12i	$r16,140(0x8c)
  94:	000000ec 	0x000000ec
	...
  a0:	0000001c 	0x0000001c
  a4:	09620002 	vfmsub.d	$vr2,$vr0,$vr0,$vr4
  a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  ac:	00000000 	0x00000000
  b0:	1c001280 	pcaddu12i	$r0,148(0x94)
  b4:	000002d8 	0x000002d8
	...
  c0:	0000001c 	0x0000001c
  c4:	0e400002 	0x0e400002
  c8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  cc:	00000000 	0x00000000
  d0:	1c001560 	pcaddu12i	$r0,171(0xab)
  d4:	00000140 	0x00000140
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	0000022f 	0x0000022f
   4:	004d0002 	rotri.d	$r2,$r0,0x0
   8:	01010000 	fadd.d	$f0,$f0,$f0
   c:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
  10:	01010101 	fadd.d	$f1,$f8,$f0
  14:	01000000 	0x01000000
  18:	2e010000 	0x2e010000
  1c:	6e692f2e 	bgeu	$r25,$r14,-104148(0x2692c) # fffe6948 <_stack+0xe3ee694c>
  20:	64756c63 	bge	$r3,$r3,30060(0x756c) # 758c <__stack_size-0x8a74>
  24:	2f2e0065 	0x2f2e0065
  28:	692f2e2e 	bltu	$r17,$r14,77612(0x12f2c) # 12f54 <__stack_size+0x2f54>
  2c:	756c636e 	0x756c636e
  30:	00006564 	rdtimeh.w	$r4,$r11
  34:	69647473 	bltu	$r3,$r19,91252(0x16474) # 164a8 <__stack_size+0x64a8>
  38:	00632e6f 	bstrins.w	$r15,$r19,0x3,0xb
  3c:	73000000 	0x73000000
  40:	6f696474 	bgeu	$r3,$r20,-38556(0x36964) # ffff69a4 <_stack+0xe3ef69a8>
  44:	0100682e 	0x0100682e
  48:	6f630000 	bgeu	$r0,$r0,-40192(0x36300) # ffff6348 <_stack+0xe3ef634c>
  4c:	6e6f6d6d 	bgeu	$r11,$r13,-102548(0x26f6c) # fffe6fb8 <_stack+0xe3ee6fbc>
  50:	0200682e 	slti	$r14,$r1,26(0x1a)
  54:	05000000 	0x05000000
  58:	02050017 	slti	$r23,$r0,320(0x140)
  5c:	1c000bc0 	pcaddu12i	$r0,94(0x5e)
  60:	05011303 	0x05011303
  64:	06131302 	cacop	0x2,$r24,1220(0x4c4)
  68:	80170501 	0x80170501
  6c:	054c0705 	0x054c0705
  70:	03054a02 	lu52i.d	$r2,$r16,338(0x152)
  74:	05058306 	0x05058306
  78:	12050106 	addu16i.d	$r6,$r8,-32448(0x8140)
  7c:	02040200 	slti	$r0,$r16,256(0x100)
  80:	000205b9 	0x000205b9
  84:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a0288 <__stack_size+0x90288>
  88:	0f054f06 	0x0f054f06
  8c:	01054a06 	fmul.d	$f6,$f16,$f18
  90:	470f0585 	bnez	$r12,1511172(0x170f04) # 170f94 <__stack_size+0x160f94>
  94:	4b060205 	0x4b060205
  98:	01060f05 	0x01060f05
  9c:	4b060205 	0x4b060205
  a0:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
  a4:	02054a4a 	slti	$r10,$r18,338(0x152)
  a8:	0f054706 	0x0f054706
  ac:	01050106 	fmul.d	$f6,$f8,$f0
  b0:	470f054d 	bnez	$r10,3608324(0x370f04) # 370fb4 <__stack_size+0x360fb4>
  b4:	4b060205 	0x4b060205
  b8:	01060f05 	0x01060f05
  bc:	4b060205 	0x4b060205
  c0:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
  c4:	f4064105 	0xf4064105
  c8:	05130205 	0x05130205
  cc:	05110641 	0x05110641
  d0:	41058408 	beqz	$r0,2164100(0x210584) # 210654 <__stack_size+0x200654>
  d4:	06020548 	cacop	0x8,$r10,129(0x81)
  d8:	11051384 	addu16i.d	$r4,$r28,16708(0x4144)
  dc:	41050106 	beqz	$r8,1639680(0x190500) # 1905dc <__stack_size+0x1805dc>
  e0:	08110547 	fmadd.s	$f7,$f10,$f1,$f2
  e4:	060205af 	cacop	0xf,$r13,129(0x81)
  e8:	0604054b 	cacop	0xb,$r10,257(0x101)
  ec:	4e100501 	jirl	$r1,$r8,-126972(0x21004)
  f0:	054a0705 	0x054a0705
  f4:	1d054604 	pcaddu12i	$r4,-513488(0x82a30)
  f8:	4a1105bf 	bcnez	$fcc5,-126716(0x7e1104) # fffe11fc <_stack+0xe3ee1200>
  fc:	054a0805 	0x054a0805
 100:	03054a0c 	lu52i.d	$r12,$r16,338(0x152)
 104:	05058306 	0x05058306
 108:	03050106 	lu52i.d	$r6,$r8,320(0x140)
 10c:	01040200 	0x01040200
 110:	1d058106 	pcaddu12i	$r6,-513016(0x82c08)
 114:	01040200 	0x01040200
 118:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
 11c:	01040200 	0x01040200
 120:	0002054a 	0x0002054a
 124:	49010402 	bceqz	$fcc0,590084(0x90104) # 90228 <__stack_size+0x80228>
 128:	82510105 	0x82510105
 12c:	4a4a4a4a 	0x4a4a4a4a
 130:	0a05ba4a 	0x0a05ba4a
 134:	054a7603 	0x054a7603
 138:	4a0a0301 	0x4a0a0301
 13c:	4a4a4a4a 	0x4a4a4a4a
 140:	1a054a4a 	pcalau12i	$r10,10834(0x2a52)
 144:	f20e0306 	0xf20e0306
 148:	13130205 	addu16i.d	$r5,$r16,-15168(0xc4c0)
 14c:	060e0517 	cacop	0x17,$r8,897(0x381)
 150:	06020501 	cacop	0x1,$r8,129(0x81)
 154:	060e054b 	cacop	0xb,$r10,897(0x381)
 158:	4b010501 	bcnez	$fcc0,459012(0x70104) # 7025c <__stack_size+0x6025c>
 15c:	84062d05 	0x84062d05
 160:	05130205 	0x05130205
 164:	0511062d 	0x0511062d
 168:	02058308 	slti	$r8,$r24,352(0x160)
 16c:	2d054b06 	0x2d054b06
 170:	11051006 	addu16i.d	$r6,$r0,16708(0x4144)
 174:	482d0584 	bcnez	$fcc4,1060100(0x102d04) # 102e78 <__stack_size+0xf2e78>
 178:	4c110582 	jirl	$r2,$r12,4356(0x1104)
 17c:	4b060205 	0x4b060205
 180:	0e051313 	0x0e051313
 184:	07050106 	0x07050106
 188:	0603054a 	cacop	0xa,$r10,193(0xc1)
 18c:	0609054b 	cacop	0xb,$r10,577(0x241)
 190:	4a050501 	bcnez	$fcc0,394500(0x60504) # 60694 <__stack_size+0x50694>
 194:	05b70905 	0x05b70905
 198:	05ba4d05 	0x05ba4d05
 19c:	05820603 	0x05820603
 1a0:	1c051604 	pcaddu12i	$r4,10416(0x28b0)
 1a4:	10050106 	addu16i.d	$r6,$r8,320(0x140)
 1a8:	4a070582 	bcnez	$fcc4,657156(0xa0704) # a08ac <__stack_size+0x908ac>
 1ac:	4a0b054a 	bcnez	$fcc2,2755332(0x2a0b04) # 2a0cb0 <__stack_size+0x290cb0>
 1b0:	05450e05 	0x05450e05
 1b4:	07054b09 	0x07054b09
 1b8:	06020549 	cacop	0x9,$r10,129(0x81)
 1bc:	06010552 	cacop	0x12,$r10,65(0x41)
 1c0:	4a4a8213 	0x4a4a8213
 1c4:	0305054a 	lu52i.d	$r10,$r10,321(0x141)
 1c8:	04058278 	csrxchg	$r24,$r19,0x160
 1cc:	1c054b06 	pcaddu12i	$r6,10840(0x2a58)
 1d0:	10050106 	addu16i.d	$r6,$r8,320(0x140)
 1d4:	51010582 	b	101253380(0x6090104) # 60902d8 <__stack_size+0x60802d8>
 1d8:	79030b05 	0x79030b05
 1dc:	0604054a 	cacop	0xa,$r10,257(0x101)
 1e0:	1702054b 	lu32i.d	$r11,-520150(0x8102a)
 1e4:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
 1e8:	054a4a82 	0x054a4a82
 1ec:	05f40617 	0x05f40617
 1f0:	17051302 	lu32i.d	$r2,-513896(0x82898)
 1f4:	08051106 	0x08051106
 1f8:	06020583 	cacop	0x3,$r12,129(0x81)
 1fc:	0617054b 	cacop	0xb,$r10,1473(0x5c1)
 200:	84110510 	0x84110510
 204:	05481705 	0x05481705
 208:	02054c11 	slti	$r17,$r0,339(0x153)
 20c:	0b054b06 	0x0b054b06
 210:	04050106 	csrxchg	$r6,$r8,0x140
 214:	0603054a 	cacop	0xa,$r10,193(0xc1)
 218:	0628054d 	cacop	0xd,$r10,-1535(0xa01)
 21c:	4a1c0501 	bcnez	$fcc0,400388(0x61c04) # 61e20 <__stack_size+0x51e20>
 220:	054a2805 	0x054a2805
 224:	01054a0a 	fmul.d	$f10,$f16,$f18
 228:	0a05ba4d 	0x0a05ba4d
 22c:	04024ab5 	csrxchg	$r21,$r21,0x92
 230:	a4010100 	0xa4010100
 234:	02000001 	slti	$r1,$r0,0
 238:	00001f00 	ctz.w	$r0,$r24
 23c:	fb010100 	0xfb010100
 240:	01000d0e 	0x01000d0e
 244:	00010101 	0x00010101
 248:	00010000 	asrtle.d	$r0,$r0
 24c:	70000100 	vseq.b	$vr0,$vr8,$vr0
 250:	746e6972 	0x746e6972
 254:	00632e66 	bstrins.w	$r6,$r19,0x3,0xb
 258:	00000000 	0x00000000
 25c:	05000105 	0x05000105
 260:	000e4002 	bytepick.d	$r2,$r0,$r16,0x4
 264:	1313131c 	addu16i.d	$r28,$r24,-15164(0xc4c4)
 268:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
 26c:	017a0306 	0x017a0306
 270:	0c05e408 	0x0c05e408
 274:	4801058a 	bcnez	$fcc4,2621700(0x280104) # 280378 <__stack_size+0x270378>
 278:	084a7a03 	0x084a7a03
 27c:	134b0642 	addu16i.d	$r2,$r18,-11583(0xd2c1)
 280:	03050106 	lu52i.d	$r6,$r8,320(0x140)
 284:	00c60306 	bstrpick.d	$r6,$r24,0x6,0x0
 288:	8206ac08 	0x8206ac08
 28c:	02001105 	slti	$r5,$r8,4(0x4)
 290:	ba030204 	0xba030204
 294:	0c05017f 	0x0c05017f
 298:	02040200 	slti	$r0,$r16,256(0x100)
 29c:	0001054a 	0x0001054a
 2a0:	82020402 	0x82020402
 2a4:	4c060205 	jirl	$r5,$r16,1536(0x600)
 2a8:	06040513 	cacop	0x13,$r8,257(0x101)
 2ac:	06030501 	cacop	0x1,$r8,193(0xc1)
 2b0:	8200c203 	0x8200c203
 2b4:	01060505 	0x01060505
 2b8:	02000f05 	slti	$r5,$r24,3(0x3)
 2bc:	82060104 	0x82060104
 2c0:	03060405 	lu52i.d	$r5,$r0,385(0x181)
 2c4:	053c0840 	0x053c0840
 2c8:	09054c03 	0x09054c03
 2cc:	4a4a3303 	0x4a4a3303
 2d0:	03060305 	lu52i.d	$r5,$r24,384(0x180)
 2d4:	f206014d 	0xf206014d
 2d8:	c3030105 	0xc3030105
 2dc:	053c0800 	0x053c0800
 2e0:	6d030605 	bgeu	$r16,$r5,66308(0x10304) # 105e4 <__stack_size+0x5e4>
 2e4:	06012802 	cacop	0x2,$r0,74(0x4a)
 2e8:	001a0501 	0x001a0501
 2ec:	bc010402 	0xbc010402
 2f0:	02000505 	slti	$r5,$r8,1(0x1)
 2f4:	054a0104 	0x054a0104
 2f8:	04020006 	csrrd	$r6,0x80
 2fc:	05f30603 	0x05f30603
 300:	04020009 	csrrd	$r9,0x80
 304:	05010603 	0x05010603
 308:	0402002c 	csrwr	$r12,0x80
 30c:	10054903 	addu16i.d	$r3,$r8,338(0x152)
 310:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 314:	0016054a 	orn	$r10,$r10,$r1
 318:	4b030402 	bceqz	$fcc0,721668(0xb0304) # b061c <__stack_size+0xa061c>
 31c:	02001005 	slti	$r5,$r0,4(0x4)
 320:	05490304 	0x05490304
 324:	0402001a 	csrrd	$r26,0x80
 328:	05054a03 	0x05054a03
 32c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 330:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
 334:	83030402 	0x83030402
 338:	02000505 	slti	$r5,$r8,1(0x1)
 33c:	06490304 	0x06490304
 340:	05826f03 	0x05826f03
 344:	05bb0608 	0x05bb0608
 348:	05054b06 	0x05054b06
 34c:	134b0648 	addu16i.d	$r8,$r18,-11583(0xd2c1)
 350:	4a640313 	0x4a640313
 354:	4c060605 	jirl	$r5,$r16,1540(0x604)
 358:	05490805 	0x05490805
 35c:	4b064905 	bcnez	$fcc0,1508936(0x170648) # 1709a4 <__stack_size+0x1609a4>
 360:	05511313 	0x05511313
 364:	05bb0608 	0x05bb0608
 368:	05054b06 	0x05054b06
 36c:	134b0648 	addu16i.d	$r8,$r18,-11583(0xd2c1)
 370:	4c110513 	jirl	$r19,$r8,4356(0x1104)
 374:	bb061405 	0xbb061405
 378:	054b1205 	0x054b1205
 37c:	4b064811 	bceqz	$fcc0,-3733944(0x470648) # ffc709c4 <_stack+0xe3b709c8>
 380:	05051313 	0x05051313
 384:	06080584 	cacop	0x4,$r12,513(0x201)
 388:	4b0605bb 	bcnez	$fcc5,-1112572(0x6f0604) # ffef098c <_stack+0xe3df0990>
 38c:	06480505 	iocsrrd.h	$r5,$r8
 390:	8a13134b 	0x8a13134b
 394:	bb060805 	0xbb060805
 398:	054b0605 	0x054b0605
 39c:	4b064805 	bceqz	$fcc0,1508936(0x170648) # 1709e4 <__stack_size+0x1609e4>
 3a0:	59031313 	beq	$r24,$r19,66320(0x10310) # 106b0 <__stack_size+0x6b0>
 3a4:	06060582 	cacop	0x2,$r12,385(0x181)
 3a8:	4908054c 	bcnez	$fcc2,3213316(0x310804) # 310bac <__stack_size+0x300bac>
 3ac:	06490505 	0x06490505
 3b0:	5113134b 	b	-47377648(0xd2d1310) # fd2d16c0 <_stack+0xe11d16c4>
 3b4:	bb060805 	0xbb060805
 3b8:	054b0605 	0x054b0605
 3bc:	4b064805 	bceqz	$fcc0,1508936(0x170648) # 170a04 <__stack_size+0x160a04>
 3c0:	1c031313 	pcaddu12i	$r19,6296(0x1898)
 3c4:	0606054a 	cacop	0xa,$r10,385(0x181)
 3c8:	4905054b 	bcnez	$fcc2,2950404(0x2d0504) # 2d08cc <__stack_size+0x2c08cc>
 3cc:	05134b06 	0x05134b06
 3d0:	05055106 	0x05055106
 3d4:	04028315 	csrxchg	$r21,$r24,0xa0
 3d8:	5d010100 	bne	$r8,$r0,65792(0x10100) # 104d8 <__stack_size+0x4d8>
 3dc:	02000000 	slti	$r0,$r0,0
 3e0:	00002000 	clo.d	$r0,$r0
 3e4:	fb010100 	0xfb010100
 3e8:	01000d0e 	0x01000d0e
 3ec:	00010101 	0x00010101
 3f0:	00010000 	asrtle.d	$r0,$r0
 3f4:	70000100 	vseq.b	$vr0,$vr8,$vr0
 3f8:	68637475 	bltu	$r3,$r21,25460(0x6374) # 676c <__stack_size-0x9894>
 3fc:	632e7261 	blt	$r19,$r1,-53648(0x32e70) # ffff326c <_stack+0xe3ef3270>
 400:	00000000 	0x00000000
 404:	00010500 	asrtle.d	$r8,$r1
 408:	10800205 	addu16i.d	$r5,$r16,8192(0x2000)
 40c:	13131c00 	addu16i.d	$r0,$r0,-15161(0xc4c7)
 410:	05160605 	0x05160605
 414:	01051405 	fmul.d	$f5,$f0,$f5
 418:	01790306 	0x01790306
 41c:	f2890505 	0xf2890505
 420:	0d060105 	0x0d060105
 424:	064a1306 	0x064a1306
 428:	05053f08 	0x05053f08
 42c:	06010513 	cacop	0x13,$r8,65(0x41)
 430:	83050511 	0x83050511
 434:	02f90105 	addi.d	$r5,$r8,-448(0xe40)
 438:	0101000c 	fadd.d	$f12,$f0,$f0
 43c:	00000094 	0x00000094
 440:	001d0002 	mulh.wu	$r2,$r0,$r0
 444:	01010000 	fadd.d	$f0,$f0,$f0
 448:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
 44c:	01010101 	fadd.d	$f1,$f8,$f0
 450:	01000000 	0x01000000
 454:	00010000 	asrtle.d	$r0,$r0
 458:	73747570 	0x73747570
 45c:	0000632e 	rdtimel.w	$r14,$r25
 460:	05000000 	0x05000000
 464:	02050001 	slti	$r1,$r0,320(0x140)
 468:	1c0010e0 	pcaddu12i	$r0,135(0x87)
 46c:	06131313 	cacop	0x13,$r24,1220(0x4c4)
 470:	08090510 	0x08090510
 474:	4a06053e 	bcnez	$fcc1,-391676(0x7a0604) # fffa0a78 <_stack+0xe3ea0a7c>
 478:	05840405 	0x05840405
 47c:	83830602 	0x83830602
 480:	09050106 	0x09050106
 484:	4a06050e 	bcnez	$fcc0,3802628(0x3a0604) # 3a0a88 <__stack_size+0x390a88>
 488:	4c060205 	jirl	$r5,$r16,1536(0x600)
 48c:	14060305 	lu12i.w	$r5,12312(0x3018)
 490:	05480405 	0x05480405
 494:	04020010 	csrrd	$r16,0x80
 498:	054a0601 	0x054a0601
 49c:	04020002 	csrrd	$r2,0x80
 4a0:	02008301 	slti	$r1,$r24,32(0x20)
 4a4:	00830104 	bstrins.d	$r4,$r8,0x3,0x0
 4a8:	06010402 	cacop	0x2,$r0,65(0x41)
 4ac:	00090501 	bytepick.w	$r1,$r8,$r1,0x2
 4b0:	0e010402 	0x0e010402
 4b4:	02000605 	slti	$r5,$r16,1(0x1)
 4b8:	054a0104 	0x054a0104
 4bc:	06500601 	0x06500601
 4c0:	08068213 	0x08068213
 4c4:	110613e8 	addu16i.d	$r8,$r31,16772(0x4184)
 4c8:	834b0683 	0x834b0683
 4cc:	02130683 	slti	$r3,$r20,1217(0x4c1)
 4d0:	01010010 	fadd.d	$f16,$f0,$f0
 4d4:	000000e8 	0x000000e8
 4d8:	00220002 	div.d	$r2,$r0,$r0
 4dc:	01010000 	fadd.d	$f0,$f0,$f0
 4e0:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
 4e4:	01010101 	fadd.d	$f1,$f8,$f0
 4e8:	01000000 	0x01000000
 4ec:	00010000 	asrtle.d	$r0,$r0
 4f0:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe6e60 <_stack+0xe3ee6e64>
 4f4:	73616274 	vssrani.w.d	$vr20,$vr19,0x18
 4f8:	00632e65 	bstrins.w	$r5,$r19,0x3,0xb
 4fc:	00000000 	0x00000000
 500:	05000105 	0x05000105
 504:	00119002 	sub.d	$r2,$r0,$r4
 508:	0205131c 	slti	$r28,$r24,324(0x144)
 50c:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
 510:	06010513 	cacop	0x13,$r8,65(0x41)
 514:	053c080d 	0x053c080d
 518:	0a054f04 	0x0a054f04
 51c:	01040200 	0x01040200
 520:	0607054a 	cacop	0xa,$r10,449(0x1c1)
 524:	0602054f 	cacop	0xf,$r10,129(0x81)
 528:	07054a14 	0x07054a14
 52c:	000205f5 	0x000205f5
 530:	06030402 	cacop	0x2,$r0,193(0xc1)
 534:	000e0549 	bytepick.d	$r9,$r10,$r1,0x4
 538:	06030402 	cacop	0x2,$r0,193(0xc1)
 53c:	00080501 	bytepick.w	$r1,$r8,$r1,0x0
 540:	ba030402 	0xba030402
 544:	02000205 	slti	$r5,$r16,0
 548:	4b060304 	0x4b060304
 54c:	02000705 	slti	$r5,$r24,1(0x1)
 550:	4a060304 	0x4a060304
 554:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 558:	000205ba 	0x000205ba
 55c:	47030402 	bnez	$r0,721668(0xb0304) # b0860 <__stack_size+0xa0860>
 560:	07055206 	0x07055206
 564:	054a0106 	0x054a0106
 568:	81064d03 	0x81064d03
 56c:	01060e05 	0x01060e05
 570:	00ba0a05 	bstrins.d	$r5,$r16,0x3a,0x2
 574:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0678 <__stack_size+0x90678>
 578:	02000305 	slti	$r5,$r24,0
 57c:	4b060104 	bcnez	$fcc0,1246720(0x130600) # 130b7c <__stack_size+0x120b7c>
 580:	01040200 	0x01040200
 584:	0200ba06 	slti	$r6,$r16,46(0x2e)
 588:	004a0404 	0x004a0404
 58c:	4a040402 	bceqz	$fcc0,656388(0xa0404) # a0990 <__stack_size+0x90990>
 590:	02000205 	slti	$r5,$r16,0
 594:	050f0404 	0x050f0404
 598:	07055001 	0x07055001
 59c:	ac087a03 	0xac087a03
 5a0:	0302054a 	lu52i.d	$r10,$r10,129(0x81)
 5a4:	064a4a74 	0x064a4a74
 5a8:	05130681 	0x05130681
 5ac:	0205490a 	slti	$r10,$r8,338(0x152)
 5b0:	01064b06 	0x01064b06
 5b4:	0c0306ba 	0x0c0306ba
 5b8:	02010601 	slti	$r1,$r16,65(0x41)
 5bc:	0101000c 	fadd.d	$f12,$f0,$f0
 5c0:	00000300 	0x00000300
 5c4:	00380002 	0x00380002
 5c8:	01010000 	fadd.d	$f0,$f0,$f0
 5cc:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
 5d0:	01010101 	fadd.d	$f1,$f8,$f0
 5d4:	01000000 	0x01000000
 5d8:	2e010000 	0x2e010000
 5dc:	2f2e2e2f 	0x2f2e2e2f
 5e0:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 694c <__stack_size-0x96b4>
 5e4:	00656475 	bstrins.w	$r21,$r3,0x5,0x19
 5e8:	72747300 	0x72747300
 5ec:	2e676e69 	0x2e676e69
 5f0:	00000063 	0x00000063
 5f4:	6d6f6300 	bgeu	$r24,$r0,94048(0x16f60) # 17554 <__stack_size+0x7554>
 5f8:	2e6e6f6d 	0x2e6e6f6d
 5fc:	00010068 	0x00010068
 600:	17050000 	lu32i.d	$r0,-514048(0x82800)
 604:	80020500 	0x80020500
 608:	031c0012 	lu52i.d	$r18,$r0,1792(0x700)
 60c:	0505010b 	0x0505010b
 610:	0b051313 	0x0b051313
 614:	0c050106 	0x0c050106
 618:	06090581 	cacop	0x1,$r12,577(0x241)
 61c:	060d0584 	cacop	0x4,$r12,833(0x341)
 620:	490c0501 	bcnez	$fcc0,330756(0x50c04) # 51224 <__stack_size+0x41224>
 624:	054a0b05 	0x054a0b05
 628:	054a8601 	0x054a8601
 62c:	0505450c 	0x0505450c
 630:	01054e06 	fmul.d	$f6,$f16,$f19
 634:	054a1306 	0x054a1306
 638:	10030624 	addu16i.d	$r4,$r17,193(0xc1)
 63c:	130505f2 	addu16i.d	$r18,$r15,-16063(0xc141)
 640:	060c0513 	cacop	0x13,$r8,769(0x301)
 644:	4b0b0511 	bcnez	$fcc0,-3732732(0x470b04) # ffc71148 <_stack+0xe3b7114c>
 648:	054a1605 	0x054a1605
 64c:	1605490c 	lu32i.d	$r12,10824(0x2a48)
 650:	0402004b 	csrxchg	$r11,$r2,0x80
 654:	09058201 	0x09058201
 658:	0d058306 	0x0d058306
 65c:	19050106 	pcaddi	$r6,-514040(0x82808)
 660:	4a0b0549 	bcnez	$fcc2,2493188(0x260b04) # 261164 <__stack_size+0x251164>
 664:	054e0105 	0x054e0105
 668:	0f030624 	0x0f030624
 66c:	05053c08 	0x05053c08
 670:	0b051316 	0x0b051316
 674:	16051106 	lu32i.d	$r6,10376(0x2888)
 678:	01040200 	0x01040200
 67c:	1a054c06 	pcalau12i	$r6,10848(0x2a60)
 680:	01040200 	0x01040200
 684:	15051106 	lu12i.w	$r6,-513912(0x82888)
 688:	01040200 	0x01040200
 68c:	0010054a 	add.w	$r10,$r10,$r1
 690:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0794 <__stack_size+0x90794>
 694:	02001305 	slti	$r5,$r24,4(0x4)
 698:	054a0104 	0x054a0104
 69c:	0402000b 	csrrd	$r11,0x80
 6a0:	01054a01 	fmul.d	$f1,$f16,$f18
 6a4:	0631054e 	cacop	0xe,$r10,-959(0xc41)
 6a8:	05820d03 	0x05820d03
 6ac:	05131305 	0x05131305
 6b0:	8101060b 	0x8101060b
 6b4:	84060905 	0x84060905
 6b8:	01061305 	0x01061305
 6bc:	054d0b05 	0x054d0b05
 6c0:	054b4711 	0x054b4711
 6c4:	05840609 	0x05840609
 6c8:	050e060b 	0x050e060b
 6cc:	05500605 	0x05500605
 6d0:	05130601 	0x05130601
 6d4:	0e030633 	0x0e030633
 6d8:	13050582 	addu16i.d	$r2,$r12,-16063(0xc141)
 6dc:	01060b05 	0x01060b05
 6e0:	054a1505 	0x054a1505
 6e4:	21058212 	sc.w	$r18,$r16,1408(0x580)
 6e8:	1505824a 	lu12i.w	$r10,-513006(0x82c12)
 6ec:	01040200 	0x01040200
 6f0:	00120582 	slt	$r2,$r12,$r1
 6f4:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a07f8 <__stack_size+0x907f8>
 6f8:	02002b05 	slti	$r5,$r24,10(0xa)
 6fc:	054a0204 	0x054a0204
 700:	04020021 	csrwr	$r1,0x80
 704:	09058202 	0x09058202
 708:	19054b06 	pcaddi	$r6,-513448(0x82a58)
 70c:	12050106 	addu16i.d	$r6,$r8,-32448(0x8140)
 710:	490b054a 	bcnez	$fcc2,2689796(0x290b04) # 291214 <__stack_size+0x281214>
 714:	054d1905 	0x054d1905
 718:	054a4b01 	0x054a4b01
 71c:	05490605 	0x05490605
 720:	050e0633 	0x050e0633
 724:	36054e21 	0x36054e21
 728:	83010582 	0x83010582
 72c:	05491905 	0x05491905
 730:	1f054b01 	pcaddu18i	$r1,-513448(0x82a58)
 734:	820b0306 	0x820b0306
 738:	05130505 	0x05130505
 73c:	0501060c 	0x0501060c
 740:	0b05491f 	0x0b05491f
 744:	0609054b 	cacop	0xb,$r10,577(0x241)
 748:	060c054b 	cacop	0xb,$r10,769(0x301)
 74c:	09058201 	0x09058201
 750:	05154a06 	0x05154a06
 754:	0501060b 	0x0501060b
 758:	0b05460c 	0x0b05460c
 75c:	500c054a 	b	86510596(0x5280c04) # 5281360 <__stack_size+0x5271360>
 760:	05b80b05 	0x05b80b05
 764:	054a4d01 	0x054a4d01
 768:	0c030620 	0x0c030620
 76c:	13050582 	addu16i.d	$r2,$r12,-16063(0xc141)
 770:	01060c05 	0x01060c05
 774:	054a0b05 	0x054a0b05
 778:	054b0609 	0x054b0609
 77c:	8201060c 	0x8201060c
 780:	4a060905 	bcnez	$fcc0,1443336(0x160608) # 160d88 <__stack_size+0x150d88>
 784:	060b0515 	cacop	0x15,$r8,705(0x2c1)
 788:	460c0501 	bnez	$r8,396292(0x60c04) # 6138c <__stack_size+0x5138c>
 78c:	054a0b05 	0x054a0b05
 790:	05500605 	0x05500605
 794:	4a130601 	0x4a130601
 798:	03062305 	lu52i.d	$r5,$r24,392(0x188)
 79c:	05ba00e6 	0x05ba00e6
 7a0:	05131605 	0x05131605
 7a4:	8101060b 	0x8101060b
 7a8:	84060905 	0x84060905
 7ac:	01060c05 	0x01060c05
 7b0:	054a0f05 	0x054a0f05
 7b4:	0505490b 	0x0505490b
 7b8:	01054d06 	fmul.d	$f6,$f8,$f19
 7bc:	2e051406 	0x2e051406
 7c0:	4a110306 	0x4a110306
 7c4:	13160505 	addu16i.d	$r5,$r8,-14975(0xc581)
 7c8:	060b0513 	cacop	0x13,$r8,705(0x2c1)
 7cc:	09058101 	0x09058101
 7d0:	14058406 	lu12i.w	$r6,11296(0x2c20)
 7d4:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
 7d8:	4a0c054a 	bcnez	$fcc2,2755588(0x2a0c04) # 2a13dc <__stack_size+0x2913dc>
 7dc:	054a0f05 	0x054a0f05
 7e0:	0505490b 	0x0505490b
 7e4:	01054d06 	fmul.d	$f6,$f8,$f19
 7e8:	2f051406 	0x2f051406
 7ec:	ba0c0306 	0xba0c0306
 7f0:	13160505 	addu16i.d	$r5,$r8,-14975(0xc581)
 7f4:	06080513 	cacop	0x13,$r8,513(0x201)
 7f8:	00140501 	nor	$r1,$r8,$r1
 7fc:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0900 <__stack_size+0x90900>
 800:	02000f05 	slti	$r5,$r24,3(0x3)
 804:	054a0104 	0x054a0104
 808:	054b0609 	0x054b0609
 80c:	05010613 	0x05010613
 810:	054b0609 	0x054b0609
 814:	0501060f 	0x0501060f
 818:	054b060d 	0x054b060d
 81c:	05010613 	0x05010613
 820:	13054a15 	addu16i.d	$r21,$r16,-16046(0xc152)
 824:	0f054a4a 	0x0f054a4a
 828:	054eba49 	0x054eba49
 82c:	05bb060d 	0x05bb060d
 830:	05010618 	0x05010618
 834:	10054a15 	addu16i.d	$r21,$r16,338(0x152)
 838:	4a13054a 	bcnez	$fcc2,2757380(0x2a1304) # 2a1b3c <__stack_size+0x291b3c>
 83c:	05490f05 	0x05490f05
 840:	054a5001 	0x054a5001
 844:	11030632 	addu16i.d	$r18,$r17,16577(0x40c1)
 848:	13050582 	addu16i.d	$r2,$r12,-16063(0xc141)
 84c:	0b051313 	0x0b051313
 850:	09050106 	0x09050106
 854:	0d054b06 	0x0d054b06
 858:	14050106 	lu12i.w	$r6,10248(0x2808)
 85c:	820c054a 	0x820c054a
 860:	05820d05 	0x05820d05
 864:	0c054a14 	0x0c054a14
 868:	0609054a 	cacop	0xa,$r10,577(0x241)
 86c:	0c05154a 	0x0c05154a
 870:	13050106 	addu16i.d	$r6,$r8,-16064(0xc140)
 874:	460b054a 	bnez	$r10,2755332(0x2a0b04) # 2a1378 <__stack_size+0x291378>
 878:	05500c05 	0x05500c05
 87c:	0d054b01 	0x0d054b01
 880:	32054506 	0x32054506
 884:	1a050d06 	pcalau12i	$r6,10344(0x2868)
 888:	822f054f 	0x822f054f
 88c:	05870105 	0x05870105
 890:	01054514 	fmul.d	$f20,$f8,$f17
 894:	061e054f 	cacop	0xf,$r10,1921(0x781)
 898:	130205bc 	addu16i.d	$r28,$r13,-16255(0xc081)
 89c:	9e030105 	0x9e030105
 8a0:	0505017f 	0x0505017f
 8a4:	0b051316 	0x0b051316
 8a8:	09050106 	0x09050106
 8ac:	0c058306 	0x0c058306
 8b0:	0f050106 	0x0f050106
 8b4:	490b054a 	bcnez	$fcc2,2689796(0x290b04) # 2913b8 <__stack_size+0x2813b8>
 8b8:	0301054a 	lu52i.d	$r10,$r10,65(0x41)
 8bc:	020100de 	slti	$r30,$r6,64(0x40)
 8c0:	01010004 	fadd.d	$f4,$f0,$f0
 8c4:	00000127 	0x00000127
 8c8:	00320002 	0x00320002
 8cc:	01010000 	fadd.d	$f0,$f0,$f0
 8d0:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
 8d4:	01010101 	fadd.d	$f1,$f8,$f0
 8d8:	01000000 	0x01000000
 8dc:	2e010000 	0x2e010000
 8e0:	6e692f2e 	bgeu	$r25,$r14,-104148(0x2692c) # fffe720c <_stack+0xe3ee7210>
 8e4:	64756c63 	bge	$r3,$r3,30060(0x756c) # 7e50 <__stack_size-0x81b0>
 8e8:	74000065 	xvseq.b	$xr5,$xr3,$xr0
 8ec:	2e656d69 	0x2e656d69
 8f0:	00000063 	0x00000063
 8f4:	6d697400 	bgeu	$r0,$r0,92532(0x16974) # 17268 <__stack_size+0x7268>
 8f8:	00682e65 	bstrins.w	$r5,$r19,0x8,0xb
 8fc:	00000001 	0x00000001
 900:	05000105 	0x05000105
 904:	00156002 	or	$r2,$r0,$r24
 908:	0111031c 	fscaleb.d	$f28,$f24,$f0
 90c:	05130505 	0x05130505
 910:	0171030f 	0x0171030f
 914:	13140505 	addu16i.d	$r5,$r8,-15103(0xc501)
 918:	03060105 	lu52i.d	$r5,$r8,384(0x180)
 91c:	0505010b 	0x0505010b
 920:	06827503 	0x06827503
 924:	05010689 	0x05010689
 928:	08061801 	0x08061801
 92c:	130505e7 	addu16i.d	$r7,$r15,-16063(0xc141)
 930:	01054e13 	fmul.d	$f19,$f16,$f19
 934:	bd061306 	0xbd061306
 938:	13130505 	addu16i.d	$r5,$r8,-15167(0xc4c1)
 93c:	61030f05 	blt	$r24,$r5,66316(0x1030c) # 10c48 <__stack_size+0xc48>
 940:	14050501 	lu12i.w	$r1,10280(0x2828)
 944:	06010513 	cacop	0x13,$r8,65(0x41)
 948:	05011a03 	0x05011a03
 94c:	82660305 	0x82660305
 950:	01068906 	fdiv.s	$f6,$f8,$f2
 954:	01160306 	0x01160306
 958:	01061505 	0x01061505
 95c:	05831605 	0x05831605
 960:	16054b27 	lu32i.d	$r7,10841(0x2a59)
 964:	b9360549 	0xb9360549
 968:	054c2705 	0x054c2705
 96c:	27054928 	stptr.d	$r8,$r9,1352(0x548)
 970:	ba3605bb 	0xba3605bb
 974:	49bb1205 	0x49bb1205
 978:	4f010549 	jirl	$r9,$r10,-65276(0x30104)
 97c:	7a033605 	0x7a033605
 980:	ba120582 	0xba120582
 984:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 170f88 <__stack_size+0x160f88>
 988:	05141313 	0x05141313
 98c:	06130601 	cacop	0x1,$r16,1217(0x4c1)
 990:	24020a03 	ldptr.w	$r3,$r16,520(0x208)
 994:	13050501 	addu16i.d	$r1,$r8,-16063(0xc141)
 998:	030f0513 	lu52i.d	$r19,$r8,961(0x3c1)
 99c:	0505014e 	0x0505014e
 9a0:	01051314 	fmul.d	$f20,$f24,$f4
 9a4:	012d0306 	0x012d0306
 9a8:	53030505 	b	68616964(0x4170304) # 4170cac <__stack_size+0x4160cac>
 9ac:	06890682 	0x06890682
 9b0:	29030601 	st.b	$r1,$r16,193(0xc1)
 9b4:	06051301 	cacop	0x1,$r24,324(0x144)
 9b8:	01051106 	fmul.d	$f6,$f8,$f4
 9bc:	0806824c 	0x0806824c
 9c0:	13050540 	addu16i.d	$r0,$r10,-16063(0xc141)
 9c4:	030f0513 	lu52i.d	$r19,$r8,961(0x3c1)
 9c8:	05050145 	0x05050145
 9cc:	01051314 	fmul.d	$f20,$f24,$f4
 9d0:	01360306 	0x01360306
 9d4:	4a030505 	bcnez	$fcc0,1442564(0x160304) # 160cd8 <__stack_size+0x150cd8>
 9d8:	06890682 	0x06890682
 9dc:	32030601 	0x32030601
 9e0:	06051301 	cacop	0x1,$r24,324(0x144)
 9e4:	01051106 	fmul.d	$f6,$f8,$f4
 9e8:	0c02f24c 	0x0c02f24c
 9ec:	Address 0x00000000000009ec is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	20554e47 	ll.w	$r7,$r18,21836(0x554c)
   4:	20373143 	ll.w	$r3,$r10,14128(0x3730)
   8:	2e332e38 	0x2e332e38
   c:	6d2d2030 	bgeu	$r1,$r16,77088(0x12d20) # 12d2c <__stack_size+0x2d2c>
  10:	3d696261 	0x3d696261
  14:	33706c69 	xvstelm.h	$xr9,$r3,54(0x36),0xc
  18:	2d207332 	0x2d207332
  1c:	6372616d 	blt	$r11,$r13,-36256(0x37260) # ffff727c <_stack+0xe3ef7280>
  20:	6f6c3d68 	bgeu	$r11,$r8,-37828(0x36c3c) # ffff6c5c <_stack+0xe3ef6c60>
  24:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 16790 <__stack_size+0x6790>
  28:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
  2c:	2d207232 	0x2d207232
  30:	7570666d 	0x7570666d
  34:	6e6f6e3d 	bgeu	$r17,$r29,-102548(0x26f6c) # fffe6fa0 <_stack+0xe3ee6fa4>
  38:	6d2d2065 	bgeu	$r3,$r5,77088(0x12d20) # 12d58 <__stack_size+0x2d58>
  3c:	646d6973 	bge	$r11,$r19,28008(0x6d68) # 6da4 <__stack_size-0x925c>
  40:	6e6f6e3d 	bgeu	$r17,$r29,-102548(0x26f6c) # fffe6fac <_stack+0xe3ee6fb0>
  44:	6d2d2065 	bgeu	$r3,$r5,77088(0x12d20) # 12d64 <__stack_size+0x2d64>
  48:	646f6d63 	bge	$r11,$r3,28524(0x6f6c) # 6fb4 <__stack_size-0x904c>
  4c:	6e3d6c65 	bgeu	$r3,$r5,-115348(0x23d6c) # fffe3db8 <_stack+0xe3ee3dbc>
  50:	616d726f 	blt	$r19,$r15,93552(0x16d70) # 16dc0 <__stack_size+0x6dc0>
  54:	6d2d206c 	bgeu	$r3,$r12,77088(0x12d20) # 12d74 <__stack_size+0x2d74>
  58:	656e7574 	bge	$r11,$r20,93812(0x16e74) # 16ecc <__stack_size+0x6ecc>
  5c:	6f6f6c3d 	bgeu	$r1,$r29,-37012(0x36f6c) # ffff6fc8 <_stack+0xe3ef6fcc>
  60:	7261676e 	0x7261676e
  64:	32336863 	0x32336863
  68:	672d2072 	bge	$r3,$r18,-53984(0x32d20) # ffff2d88 <_stack+0xe3ef2d8c>
  6c:	324f2d20 	xvldrepl.h	$xr0,$r9,1942(0x796)
  70:	6e662d20 	bgeu	$r9,$r0,-104916(0x2662c) # fffe669c <_stack+0xe3ee66a0>
  74:	75622d6f 	0x75622d6f
  78:	69746c69 	bltu	$r3,$r9,95340(0x1746c) # 174e4 <__stack_size+0x74e4>
  7c:	662d206e 	bge	$r3,$r14,-119520(0x22d20) # fffe2d9c <_stack+0xe3ee2da0>
  80:	702d6f6e 	0x702d6f6e
  84:	2f006369 	0x2f006369
  88:	656d6f68 	bge	$r27,$r8,93548(0x16d6c) # 16df4 <__stack_size+0x6df4>
  8c:	3233312f 	0x3233312f
  90:	7469672f 	xvavgr.w	$xr15,$xr25,$xr25
  94:	7065725f 	vavg.w	$vr31,$vr18,$vr28
  98:	7265702f 	0x7265702f
  9c:	6f732f66 	bgeu	$r27,$r6,-36052(0x3732c) # ffff73c8 <_stack+0xe3ef73cc>
  a0:	702f7466 	vaddwev.d.wu	$vr6,$vr3,$vr29
  a4:	5f667265 	bne	$r19,$r5,-39312(0x36670) # ffff6714 <_stack+0xe3ef6718>
  a8:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # ffff6f1c <_stack+0xe3ef6f20>
  ac:	62696c2f 	blt	$r1,$r15,-104084(0x2696c) # fffe6a18 <_stack+0xe3ee6a1c>
  b0:	7a697300 	0x7a697300
  b4:	00745f65 	bstrins.w	$r5,$r27,0x14,0x17
  b8:	676e6f6c 	bge	$r27,$r12,-37268(0x36e6c) # ffff6f24 <_stack+0xe3ef6f28>
  bc:	736e7520 	vssrarni.du.q	$vr0,$vr9,0x1d
  c0:	656e6769 	bge	$r27,$r9,93796(0x16e64) # 16f24 <__stack_size+0x6f24>
  c4:	6e692064 	bgeu	$r3,$r4,-104160(0x26920) # fffe69e4 <_stack+0xe3ee69e8>
  c8:	6d6e0074 	bgeu	$r3,$r20,93696(0x16e00) # 16ec8 <__stack_size+0x6ec8>
  cc:	00626d65 	bstrins.w	$r5,$r11,0x2,0x1b
  d0:	61657266 	blt	$r19,$r6,91504(0x16570) # 16640 <__stack_size+0x6640>
  d4:	74730064 	xvmin.w	$xr4,$xr3,$xr0
  d8:	2e6f6964 	0x2e6f6964
  dc:	65670063 	bge	$r3,$r3,91904(0x16700) # 167dc <__stack_size+0x67dc>
  e0:	66006374 	bge	$r27,$r20,-130976(0x20060) # fffe0140 <_stack+0xe3ee0144>
  e4:	6e65706f 	bgeu	$r3,$r15,-105104(0x26570) # fffe6654 <_stack+0xe3ee6658>
  e8:	72747300 	0x72747300
  ec:	006e656c 	bstrins.w	$r12,$r11,0xe,0x19
  f0:	454c4946 	bnez	$r10,1657928(0x194c48) # 194d38 <__stack_size+0x184d38>
  f4:	7a697300 	0x7a697300
  f8:	6f740065 	bgeu	$r3,$r5,-35840(0x37400) # ffff74f8 <_stack+0xe3ef74fc>
  fc:	006c6174 	bstrins.w	$r20,$r11,0xc,0x18
 100:	656c6966 	bge	$r11,$r6,93288(0x16c68) # 16d68 <__stack_size+0x6d68>
 104:	67660073 	bge	$r3,$r19,-39424(0x36600) # ffff6704 <_stack+0xe3ef6708>
 108:	00737465 	bstrins.w	$r5,$r3,0x13,0x1d
 10c:	6f6c6366 	bgeu	$r27,$r6,-37792(0x36c60) # ffff6d6c <_stack+0xe3ef6d70>
 110:	73006573 	0x73006573
 114:	61657274 	blt	$r19,$r20,91504(0x16570) # 16684 <__stack_size+0x6684>
 118:	6761006d 	bge	$r3,$r13,-40704(0x36100) # ffff6218 <_stack+0xe3ef621c>
 11c:	006e6961 	bstrins.w	$r1,$r11,0xe,0x1a
 120:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe6a90 <_stack+0xe3ee6a94>
 124:	73616274 	vssrani.w.d	$vr20,$vr19,0x18
 128:	75700065 	0x75700065
 12c:	72747374 	0x72747374
 130:	00676e69 	bstrins.w	$r9,$r19,0x7,0x1b
 134:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe6aa4 <_stack+0xe3ee6aa8>
 138:	632e6674 	blt	$r19,$r20,-53660(0x32e64) # ffff2f9c <_stack+0xe3ef2fa0>
 13c:	69727000 	bltu	$r0,$r0,94832(0x17270) # 173ac <__stack_size+0x73ac>
 140:	0066746e 	bstrins.w	$r14,$r3,0x6,0x1d
 144:	5f746774 	bne	$r27,$r20,-35740(0x37464) # ffff75a8 <_stack+0xe3ef75ac>
 148:	63747570 	blt	$r11,$r16,-35724(0x37474) # ffff75bc <_stack+0xe3ef75c0>
 14c:	00726168 	bstrins.w	$r8,$r11,0x12,0x18
 150:	63747570 	blt	$r11,$r16,-35724(0x37474) # ffff75c4 <_stack+0xe3ef75c8>
 154:	2e726168 	0x2e726168
 158:	75700063 	0x75700063
 15c:	632e7374 	blt	$r27,$r20,-53648(0x32e70) # ffff2fcc <_stack+0xe3ef2fd0>
 160:	74757000 	xvmax.wu	$xr0,$xr0,$xr28
 164:	72700073 	0x72700073
 168:	62746e69 	blt	$r19,$r9,-101268(0x2746c) # fffe75d4 <_stack+0xe3ee75d8>
 16c:	2e657361 	0x2e657361
 170:	61760063 	blt	$r3,$r3,95744(0x17600) # 17770 <__stack_size+0x7770>
 174:	0065756c 	bstrins.w	$r12,$r11,0x5,0x1d
 178:	6e676973 	bgeu	$r11,$r19,-104600(0x26768) # fffe68e0 <_stack+0xe3ee68e4>
 17c:	6e6f6c00 	bgeu	$r0,$r0,-102548(0x26f6c) # fffe70e8 <_stack+0xe3ee70ec>
 180:	6e692067 	bgeu	$r3,$r7,-104160(0x26920) # fffe6aa0 <_stack+0xe3ee6aa4>
 184:	74730074 	xvmin.w	$xr20,$xr3,$xr0
 188:	79706372 	0x79706372
 18c:	657a6200 	bge	$r16,$r0,96864(0x17a60) # 17bec <__stack_size+0x7bec>
 190:	73006f72 	0x73006f72
 194:	6e697274 	bgeu	$r19,$r20,-104080(0x26970) # fffe6b04 <_stack+0xe3ee6b08>
 198:	00632e67 	bstrins.w	$r7,$r19,0x3,0xb
 19c:	636d656d 	blt	$r11,$r13,-37532(0x36d64) # ffff6f00 <_stack+0xe3ef6f04>
 1a0:	7300706d 	0x7300706d
 1a4:	636e7274 	blt	$r19,$r20,-37264(0x36e70) # ffff7014 <_stack+0xe3ef7018>
 1a8:	73007970 	0x73007970
 1ac:	6c6e7274 	bgeu	$r19,$r20,28272(0x6e70) # 701c <__stack_size-0x8fe4>
 1b0:	73006e65 	0x73006e65
 1b4:	68637274 	bltu	$r19,$r20,25456(0x6370) # 6524 <__stack_size-0x9adc>
 1b8:	656d0072 	bge	$r3,$r18,93440(0x16d00) # 16eb8 <__stack_size+0x6eb8>
 1bc:	7970636d 	0x7970636d
 1c0:	6d656d00 	bgeu	$r8,$r0,91500(0x1656c) # 1672c <__stack_size+0x672c>
 1c4:	65766f6d 	bge	$r27,$r13,95852(0x1766c) # 17830 <__stack_size+0x7830>
 1c8:	72747300 	0x72747300
 1cc:	706d636e 	0x706d636e
 1d0:	72747300 	0x72747300
 1d4:	646e6966 	bge	$r11,$r6,28264(0x6e68) # 703c <__stack_size-0x8fc4>
 1d8:	6d656d00 	bgeu	$r8,$r0,91500(0x1656c) # 16744 <__stack_size+0x6744>
 1dc:	00746573 	bstrins.w	$r19,$r11,0x14,0x19
 1e0:	5f746567 	bne	$r11,$r7,-35740(0x37464) # ffff7644 <_stack+0xe3ef7648>
 1e4:	6e756f63 	bgeu	$r27,$r3,-101012(0x2756c) # fffe7750 <_stack+0xe3ee7754>
 1e8:	796d5f74 	0x796d5f74
 1ec:	65675f00 	bge	$r24,$r0,91996(0x1675c) # 16948 <__stack_size+0x6948>
 1f0:	6f635f74 	bgeu	$r27,$r20,-40100(0x3635c) # ffff654c <_stack+0xe3ef6550>
 1f4:	00746e75 	bstrins.w	$r21,$r19,0x14,0x1b
 1f8:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 16f60 <__stack_size+0x6f60>
 1fc:	63657073 	blt	$r3,$r19,-39568(0x36570) # ffff676c <_stack+0xe3ef6770>
 200:	6c635f00 	bgeu	$r24,$r0,25436(0x635c) # 655c <__stack_size-0x9aa4>
 204:	5f6b636f 	bne	$r27,$r15,-38048(0x36b60) # ffff6d64 <_stack+0xe3ef6d68>
 208:	76740074 	0x76740074
 20c:	65736d5f 	bge	$r10,$r31,95084(0x1736c) # 17578 <__stack_size+0x7578>
 210:	69740063 	bltu	$r3,$r3,95232(0x17400) # 17610 <__stack_size+0x7610>
 214:	632e656d 	blt	$r11,$r13,-53660(0x32e64) # ffff3078 <_stack+0xe3ef307c>
 218:	74656700 	xvavg.w	$xr0,$xr24,$xr25
 21c:	0073755f 	bstrins.w	$r31,$r10,0x13,0x1d
 220:	5f746567 	bne	$r11,$r7,-35740(0x37464) # ffff7684 <_stack+0xe3ef7688>
 224:	636f6c63 	blt	$r3,$r3,-37012(0x36f6c) # ffff7190 <_stack+0xe3ef7194>
 228:	7674006b 	0x7674006b
 22c:	6573755f 	bge	$r10,$r31,95092(0x17374) # 175a0 <__stack_size+0x75a0>
 230:	635f0063 	blt	$r3,$r3,-41216(0x35f00) # ffff6130 <_stack+0xe3ef6134>
 234:	76746e6f 	0x76746e6f
 238:	74006c61 	xvseq.b	$xr1,$xr3,$xr27
 23c:	65735f76 	bge	$r27,$r22,95068(0x1735c) # 17598 <__stack_size+0x7598>
 240:	65670063 	bge	$r3,$r3,91904(0x16700) # 16940 <__stack_size+0x6940>
 244:	736e5f74 	vssrarni.du.q	$vr20,$vr27,0x17
 248:	5f767400 	bne	$r0,$r0,-35212(0x37674) # ffff78bc <_stack+0xe3ef78c0>
 24c:	6365736e 	blt	$r27,$r14,-39568(0x36570) # ffff67bc <_stack+0xe3ef67c0>
 250:	6f6c6300 	bgeu	$r24,$r0,-37792(0x36c60) # ffff6eb0 <_stack+0xe3ef6eb4>
 254:	675f6b63 	bge	$r27,$r3,-41112(0x35f68) # ffff61bc <_stack+0xe3ef61c0>
 258:	69747465 	bltu	$r3,$r5,95348(0x17474) # 176cc <__stack_size+0x76cc>
 25c:	Address 0x000000000000025c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	0x0000000c
   4:	ffffffff 	0xffffffff
   8:	7c010001 	0x7c010001
   c:	00030d01 	0x00030d01
  10:	0000000c 	0x0000000c
  14:	00000000 	0x00000000
  18:	1c000bc0 	pcaddu12i	$r0,94(0x5e)
  1c:	00000064 	0x00000064
  20:	00000044 	0x00000044
  24:	00000000 	0x00000000
  28:	1c000c30 	pcaddu12i	$r16,97(0x61)
  2c:	000000c8 	0x000000c8
  30:	44200e44 	bnez	$r18,1056780(0x10200c) # 10203c <__stack_size+0xf203c>
  34:	9a480499 	0x9a480499
  38:	02975405 	addi.w	$r5,$r0,1493(0x5d5)
  3c:	069b0398 	0x069b0398
  40:	02018150 	slti	$r16,$r10,96(0x60)
  44:	44c10a48 	bnez	$r18,2146568(0x20c108) # 20c14c <__stack_size+0x1fc14c>
  48:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd88c <_stack+0xe3ccd890>
  4c:	44da44d9 	bnez	$r6,-1779132(0x64da44) # ffe4da90 <_stack+0xe3d4da94>
  50:	000e48db 	bytepick.d	$r27,$r6,$r18,0x4
  54:	c1440b48 	0xc1440b48
  58:	d844d748 	0xd844d748
  5c:	da44d944 	0xda44d944
  60:	0e48db44 	0x0e48db44
  64:	00000000 	0x00000000
  68:	0000000c 	0x0000000c
  6c:	00000000 	0x00000000
  70:	1c000d00 	pcaddu12i	$r0,104(0x68)
  74:	0000000c 	0x0000000c
  78:	00000034 	0x00000034
  7c:	00000000 	0x00000000
  80:	1c000d10 	pcaddu12i	$r16,104(0x68)
  84:	000000c8 	0x000000c8
  88:	44100e44 	bnez	$r18,1052684(0x10100c) # 101094 <__stack_size+0xf1094>
  8c:	99480398 	0x99480398
  90:	02975004 	addi.w	$r4,$r0,1492(0x5d4)
  94:	60020181 	blt	$r12,$r1,512(0x200) # 294 <__stack_size-0xfd6c>
  98:	d744c10a 	0xd744c10a
  9c:	d944d844 	0xd944d844
  a0:	44000e48 	bnez	$r18,2097164(0x20000c) # 2000ac <__stack_size+0x1f00ac>
  a4:	44c15c0b 	bnez	$r0,2933084(0x2cc15c) # 2cc200 <__stack_size+0x2bc200>
  a8:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd8ec <_stack+0xe3ccd8f0>
  ac:	000e44d9 	bytepick.d	$r25,$r6,$r17,0x4
  b0:	00000024 	0x00000024
  b4:	00000000 	0x00000000
  b8:	1c000de0 	pcaddu12i	$r0,111(0x6f)
  bc:	00000058 	0x00000058
  c0:	44100e44 	bnez	$r18,1052684(0x10100c) # 1010cc <__stack_size+0xf10cc>
  c4:	98480297 	0x98480297
  c8:	01814c03 	0x01814c03
  cc:	44c10a60 	bnez	$r19,49416(0xc108) # c1d4 <__stack_size-0x3e2c>
  d0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd914 <_stack+0xe3ccd918>
  d4:	0b48000e 	0x0b48000e
  d8:	0000000c 	0x0000000c
  dc:	ffffffff 	0xffffffff
  e0:	7c010001 	0x7c010001
  e4:	00030d01 	0x00030d01
  e8:	00000034 	0x00000034
  ec:	000000d8 	0x000000d8
  f0:	1c000e40 	pcaddu12i	$r0,114(0x72)
  f4:	0000023c 	0x0000023c
  f8:	5c600e44 	bne	$r18,$r4,24588(0x600c) # 6104 <__stack_size-0x9efc>
  fc:	09810d9a 	0x09810d9a
 100:	0b980a97 	0x0b980a97
 104:	0e9b0c99 	0x0e9b0c99
 108:	b4020f9c 	0xb4020f9c
 10c:	d744c10a 	0xd744c10a
 110:	d944d844 	0xd944d844
 114:	db44da44 	0xdb44da44
 118:	0e48dc44 	0x0e48dc44
 11c:	000b4400 	0x000b4400
 120:	0000000c 	0x0000000c
 124:	ffffffff 	0xffffffff
 128:	7c010001 	0x7c010001
 12c:	00030d01 	0x00030d01
 130:	00000018 	0x00000018
 134:	00000120 	0x00000120
 138:	1c001080 	pcaddu12i	$r0,132(0x84)
 13c:	00000028 	0x00000028
 140:	44100e44 	bnez	$r18,1052684(0x10100c) # 10114c <__stack_size+0xf114c>
 144:	d9580199 	0xd9580199
 148:	00000e44 	0x00000e44
 14c:	00000018 	0x00000018
 150:	00000120 	0x00000120
 154:	1c0010b0 	pcaddu12i	$r16,133(0x85)
 158:	00000024 	0x00000024
 15c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101168 <__stack_size+0xf1168>
 160:	d9540199 	0xd9540199
 164:	00000e44 	0x00000e44
 168:	0000000c 	0x0000000c
 16c:	ffffffff 	0xffffffff
 170:	7c010001 	0x7c010001
 174:	00030d01 	0x00030d01
 178:	00000024 	0x00000024
 17c:	00000168 	0x00000168
 180:	1c0010e0 	pcaddu12i	$r0,135(0x87)
 184:	00000074 	0x00000074
 188:	50100e44 	b	-116387828(0x910100c) # f9101194 <_stack+0xdd001198>
 18c:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
 190:	04990398 	csrxchg	$r24,$r28,0x2640
 194:	44c14802 	bnez	$r0,573768(0x8c148) # 8c2dc <__stack_size+0x7c2dc>
 198:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd9dc <_stack+0xe3ccd9e0>
 19c:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
 1a0:	00000018 	0x00000018
 1a4:	00000168 	0x00000168
 1a8:	1c001160 	pcaddu12i	$r0,139(0x8b)
 1ac:	0000002c 	0x0000002c
 1b0:	44100e44 	bnez	$r18,1052684(0x10100c) # 1011bc <__stack_size+0xf11bc>
 1b4:	c1580181 	0xc1580181
 1b8:	00000e48 	0x00000e48
 1bc:	0000000c 	0x0000000c
 1c0:	ffffffff 	0xffffffff
 1c4:	7c010001 	0x7c010001
 1c8:	00030d01 	0x00030d01
 1cc:	00000028 	0x00000028
 1d0:	000001bc 	0x000001bc
 1d4:	1c001190 	pcaddu12i	$r16,140(0x8c)
 1d8:	000000ec 	0x000000ec
 1dc:	50600e44 	b	-116367348(0x910600c) # f91061e8 <_stack+0xdd0061ec>
 1e0:	01810297 	0x01810297
 1e4:	04990398 	csrxchg	$r24,$r28,0x2640
 1e8:	c10a8c02 	0xc10a8c02
 1ec:	d844d744 	0xd844d744
 1f0:	0e48d944 	0x0e48d944
 1f4:	000b4400 	0x000b4400
 1f8:	0000000c 	0x0000000c
 1fc:	ffffffff 	0xffffffff
 200:	7c010001 	0x7c010001
 204:	00030d01 	0x00030d01
 208:	0000000c 	0x0000000c
 20c:	000001f8 	0x000001f8
 210:	1c001280 	pcaddu12i	$r0,148(0x94)
 214:	00000034 	0x00000034
 218:	0000000c 	0x0000000c
 21c:	000001f8 	0x000001f8
 220:	1c0012c0 	pcaddu12i	$r0,150(0x96)
 224:	00000034 	0x00000034
 228:	0000000c 	0x0000000c
 22c:	000001f8 	0x000001f8
 230:	1c001300 	pcaddu12i	$r0,152(0x98)
 234:	0000001c 	0x0000001c
 238:	0000000c 	0x0000000c
 23c:	000001f8 	0x000001f8
 240:	1c001320 	pcaddu12i	$r0,153(0x99)
 244:	0000002c 	0x0000002c
 248:	00000014 	0x00000014
 24c:	000001f8 	0x000001f8
 250:	1c001350 	pcaddu12i	$r16,154(0x9a)
 254:	0000006c 	0x0000006c
 258:	100e5002 	addu16i.d	$r2,$r0,916(0x394)
 25c:	00000e54 	0x00000e54
 260:	0000000c 	0x0000000c
 264:	000001f8 	0x000001f8
 268:	1c0013c0 	pcaddu12i	$r0,158(0x9e)
 26c:	0000003c 	0x0000003c
 270:	0000000c 	0x0000000c
 274:	000001f8 	0x000001f8
 278:	1c001400 	pcaddu12i	$r0,160(0xa0)
 27c:	00000028 	0x00000028
 280:	0000000c 	0x0000000c
 284:	000001f8 	0x000001f8
 288:	1c001430 	pcaddu12i	$r16,161(0xa1)
 28c:	00000020 	0x00000020
 290:	0000000c 	0x0000000c
 294:	000001f8 	0x000001f8
 298:	1c001450 	pcaddu12i	$r16,162(0xa2)
 29c:	00000028 	0x00000028
 2a0:	0000000c 	0x0000000c
 2a4:	000001f8 	0x000001f8
 2a8:	1c001480 	pcaddu12i	$r0,164(0xa4)
 2ac:	0000005c 	0x0000005c
 2b0:	00000014 	0x00000014
 2b4:	000001f8 	0x000001f8
 2b8:	1c0014e0 	pcaddu12i	$r0,167(0xa7)
 2bc:	00000058 	0x00000058
 2c0:	54100e7c 	bl	-101707764(0x9f0100c) # f9f012cc <_stack+0xdde012d0>
 2c4:	0000000e 	0x0000000e
 2c8:	0000000c 	0x0000000c
 2cc:	000001f8 	0x000001f8
 2d0:	1c001540 	pcaddu12i	$r0,170(0xaa)
 2d4:	00000018 	0x00000018
 2d8:	0000000c 	0x0000000c
 2dc:	ffffffff 	0xffffffff
 2e0:	7c010001 	0x7c010001
 2e4:	00030d01 	0x00030d01
 2e8:	00000018 	0x00000018
 2ec:	000002d8 	0x000002d8
 2f0:	1c001560 	pcaddu12i	$r0,171(0xab)
 2f4:	0000001c 	0x0000001c
 2f8:	44100e44 	bnez	$r18,1052684(0x10100c) # 101304 <__stack_size+0xf1304>
 2fc:	d94c0199 	0xd94c0199
 300:	00000e44 	0x00000e44
 304:	0000000c 	0x0000000c
 308:	000002d8 	0x000002d8
 30c:	1c001580 	pcaddu12i	$r0,172(0xac)
 310:	00000004 	0x00000004
 314:	0000000c 	0x0000000c
 318:	000002d8 	0x000002d8
 31c:	1c001590 	pcaddu12i	$r16,172(0xac)
 320:	00000008 	0x00000008
 324:	00000018 	0x00000018
 328:	000002d8 	0x000002d8
 32c:	1c0015a0 	pcaddu12i	$r0,173(0xad)
 330:	00000084 	0x00000084
 334:	44100e44 	bnez	$r18,1052684(0x10100c) # 101340 <__stack_size+0xf1340>
 338:	60020199 	blt	$r12,$r25,512(0x200) # 538 <__stack_size-0xfac8>
 33c:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 340:	0000000c 	0x0000000c
 344:	000002d8 	0x000002d8
 348:	1c001630 	pcaddu12i	$r16,177(0xb1)
 34c:	00000004 	0x00000004
 350:	00000018 	0x00000018
 354:	000002d8 	0x000002d8
 358:	1c001640 	pcaddu12i	$r0,178(0xb2)
 35c:	00000024 	0x00000024
 360:	44100e44 	bnez	$r18,1052684(0x10100c) # 10136c <__stack_size+0xf136c>
 364:	d9500199 	0xd9500199
 368:	00000e48 	0x00000e48
 36c:	00000018 	0x00000018
 370:	000002d8 	0x000002d8
 374:	1c001670 	pcaddu12i	$r16,179(0xb3)
 378:	00000030 	0x00000030
 37c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101388 <__stack_size+0xf1388>
 380:	d9500199 	0xd9500199
 384:	00000e54 	0x00000e54

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
  60:	1c001280 	pcaddu12i	$r0,148(0x94)
  64:	1c001558 	pcaddu12i	$r24,170(0xaa)
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
