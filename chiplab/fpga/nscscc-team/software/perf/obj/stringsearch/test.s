
obj/stringsearch/main.elf:     file format elf32-loongarch
obj/stringsearch/main.elf


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
1c000054:	0293018c 	addi.w	$r12,$r12,1216(0x4c0)
1c000058:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00005c:	02bea1ad 	addi.w	$r13,$r13,-88(0xfa8)
1c000060:	1c00102e 	pcaddu12i	$r14,129(0x81)
1c000064:	02b141ce 	addi.w	$r14,$r14,-944(0xc50)
1c000068:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000080 <_start+0x80>
1c00006c:	2880018f 	ld.w	$r15,$r12,0
1c000070:	298001af 	st.w	$r15,$r13,0
1c000074:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000078:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00007c:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c00006c <_start+0x6c>
1c000080:	1c00102c 	pcaddu12i	$r12,129(0x81)
1c000084:	02b0c18c 	addi.w	$r12,$r12,-976(0xc30)
1c000088:	1c00102d 	pcaddu12i	$r13,129(0x81)
1c00008c:	0280c1ad 	addi.w	$r13,$r13,48(0x30)
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
1c00038c:	54001400 	bl	20(0x14) # 1c0003a0 <shell10>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <shell10>:
shell10():
1c0003a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0003a4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0003a8:	157f5fcc 	lu12i.w	$r12,-263426(0xbfafe)
1c0003ac:	29806077 	st.w	$r23,$r3,24(0x18)
1c0003b0:	29805078 	st.w	$r24,$r3,20(0x14)
1c0003b4:	29804079 	st.w	$r25,$r3,16(0x10)
1c0003b8:	2980307a 	st.w	$r26,$r3,12(0xc)
1c0003bc:	29800180 	st.w	$r0,$r12,0
1c0003c0:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0003c4:	02b10084 	addi.w	$r4,$r4,-960(0xc40)
1c0003c8:	540c0800 	bl	3080(0xc08) # 1c000fd0 <puts>
1c0003cc:	54100400 	bl	4100(0x1004) # 1c0013d0 <get_count>
1c0003d0:	00150099 	move	$r25,$r4
1c0003d4:	54102c00 	bl	4140(0x102c) # 1c001400 <get_count_my>
1c0003d8:	0015009a 	move	$r26,$r4
1c0003dc:	157f5fe4 	lu12i.w	$r4,-263425(0xbfaff)
1c0003e0:	03bc8085 	ori	$r5,$r4,0xf20
1c0003e4:	288000a6 	ld.w	$r6,$r5,0
1c0003e8:	02802817 	addi.w	$r23,$r0,10(0xa)
1c0003ec:	00150018 	move	$r24,$r0
1c0003f0:	5c00e8c0 	bne	$r6,$r0,232(0xe8) # 1c0004d8 <shell10+0x138>
1c0003f4:	54042c00 	bl	1068(0x42c) # 1c000820 <search_small>
1c0003f8:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c0003fc:	00101318 	add.w	$r24,$r24,$r4
1c000400:	5ffff6e0 	bne	$r23,$r0,-12(0x3fff4) # 1c0003f4 <shell10+0x54>
1c000404:	540ffc00 	bl	4092(0xffc) # 1c001400 <get_count_my>
1c000408:	00150097 	move	$r23,$r4
1c00040c:	540fc400 	bl	4036(0xfc4) # 1c0013d0 <get_count>
1c000410:	00116afa 	sub.w	$r26,$r23,$r26
1c000414:	00116499 	sub.w	$r25,$r4,$r25
1c000418:	58008b00 	beq	$r24,$r0,136(0x88) # 1c0004a0 <shell10+0x100>
1c00041c:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000420:	02b05084 	addi.w	$r4,$r4,-1004(0xc14)
1c000424:	540bac00 	bl	2988(0xbac) # 1c000fd0 <puts>
1c000428:	157f5fe7 	lu12i.w	$r7,-263425(0xbfaff)
1c00042c:	02800410 	addi.w	$r16,$r0,1(0x1)
1c000430:	038100ef 	ori	$r15,$r7,0x40
1c000434:	298001f0 	st.w	$r16,$r15,0
1c000438:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c00043c:	0380c0ed 	ori	$r13,$r7,0x30
1c000440:	038080e8 	ori	$r8,$r7,0x20
1c000444:	298001ae 	st.w	$r14,$r13,0
1c000448:	29800100 	st.w	$r0,$r8,0
1c00044c:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c000450:	0381402c 	ori	$r12,$r1,0x50
1c000454:	2980019a 	st.w	$r26,$r12,0
1c000458:	157f5f06 	lu12i.w	$r6,-263432(0xbfaf8)
1c00045c:	038040d8 	ori	$r24,$r6,0x10
1c000460:	298000da 	st.w	$r26,$r6,0
1c000464:	00150325 	move	$r5,$r25
1c000468:	29800319 	st.w	$r25,$r24,0
1c00046c:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000470:	02af7084 	addi.w	$r4,$r4,-1060(0xbdc)
1c000474:	54083c00 	bl	2108(0x83c) # 1c000cb0 <printf>
1c000478:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00047c:	28806077 	ld.w	$r23,$r3,24(0x18)
1c000480:	28805078 	ld.w	$r24,$r3,20(0x14)
1c000484:	28804079 	ld.w	$r25,$r3,16(0x10)
1c000488:	00150345 	move	$r5,$r26
1c00048c:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c000490:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000494:	02afa084 	addi.w	$r4,$r4,-1048(0xbe8)
1c000498:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00049c:	50081400 	b	2068(0x814) # 1c000cb0 <printf>
1c0004a0:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0004a4:	02adf084 	addi.w	$r4,$r4,-1156(0xb7c)
1c0004a8:	540b2800 	bl	2856(0xb28) # 1c000fd0 <puts>
1c0004ac:	157f5fe9 	lu12i.w	$r9,-263425(0xbfaff)
1c0004b0:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c0004b4:	03810131 	ori	$r17,$r9,0x40
1c0004b8:	2980022b 	st.w	$r11,$r17,0
1c0004bc:	140001ea 	lu12i.w	$r10,15(0xf)
1c0004c0:	0380c132 	ori	$r18,$r9,0x30
1c0004c4:	03808133 	ori	$r19,$r9,0x20
1c0004c8:	03bffd54 	ori	$r20,$r10,0xfff
1c0004cc:	2980024b 	st.w	$r11,$r18,0
1c0004d0:	29800274 	st.w	$r20,$r19,0
1c0004d4:	53ff7bff 	b	-136(0xfffff78) # 1c00044c <shell10+0xac>
1c0004d8:	54034800 	bl	840(0x348) # 1c000820 <search_small>
1c0004dc:	00150098 	move	$r24,$r4
1c0004e0:	540f2000 	bl	3872(0xf20) # 1c001400 <get_count_my>
1c0004e4:	00150097 	move	$r23,$r4
1c0004e8:	540ee800 	bl	3816(0xee8) # 1c0013d0 <get_count>
1c0004ec:	00116afa 	sub.w	$r26,$r23,$r26
1c0004f0:	00116499 	sub.w	$r25,$r4,$r25
1c0004f4:	5fff2b00 	bne	$r24,$r0,-216(0x3ff28) # 1c00041c <shell10+0x7c>
1c0004f8:	53ffabff 	b	-88(0xfffffa8) # 1c0004a0 <shell10+0x100>
1c0004fc:	03400000 	andi	$r0,$r0,0x0

1c000500 <init_search>:
init_search():
1c000500:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000504:	29802077 	st.w	$r23,$r3,8(0x8)
1c000508:	29803061 	st.w	$r1,$r3,12(0xc)
1c00050c:	00150097 	move	$r23,$r4
1c000510:	540be000 	bl	3040(0xbe0) # 1c0010f0 <strlen>
1c000514:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000518:	029e91ce 	addi.w	$r14,$r14,1956(0x7a4)
1c00051c:	1c00100f 	pcaddu12i	$r15,128(0x80)
1c000520:	029e61ef 	addi.w	$r15,$r15,1944(0x798)
1c000524:	001501cc 	move	$r12,$r14
1c000528:	029001cd 	addi.w	$r13,$r14,1024(0x400)
1c00052c:	298001e4 	st.w	$r4,$r15,0
1c000530:	29800184 	st.w	$r4,$r12,0
1c000534:	29801184 	st.w	$r4,$r12,4(0x4)
1c000538:	29802184 	st.w	$r4,$r12,8(0x8)
1c00053c:	29803184 	st.w	$r4,$r12,12(0xc)
1c000540:	29804184 	st.w	$r4,$r12,16(0x10)
1c000544:	29805184 	st.w	$r4,$r12,20(0x14)
1c000548:	29806184 	st.w	$r4,$r12,24(0x18)
1c00054c:	29807184 	st.w	$r4,$r12,28(0x1c)
1c000550:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c000554:	5fffdd8d 	bne	$r12,$r13,-36(0x3ffdc) # 1c000530 <init_search+0x30>
1c000558:	00105c81 	add.w	$r1,$r4,$r23
1c00055c:	001502ec 	move	$r12,$r23
1c000560:	02bffef0 	addi.w	$r16,$r23,-1(0xfff)
1c000564:	58019c80 	beq	$r4,$r0,412(0x19c) # 1c000700 <init_search+0x200>
1c000568:	00115c25 	sub.w	$r5,$r1,$r23
1c00056c:	03401ca6 	andi	$r6,$r5,0x7
1c000570:	00101204 	add.w	$r4,$r16,$r4
1c000574:	5800c8c0 	beq	$r6,$r0,200(0xc8) # 1c00063c <init_search+0x13c>
1c000578:	02800407 	addi.w	$r7,$r0,1(0x1)
1c00057c:	5800a4c7 	beq	$r6,$r7,164(0xa4) # 1c000620 <init_search+0x120>
1c000580:	02800808 	addi.w	$r8,$r0,2(0x2)
1c000584:	580084c8 	beq	$r6,$r8,132(0x84) # 1c000608 <init_search+0x108>
1c000588:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c00058c:	580064c9 	beq	$r6,$r9,100(0x64) # 1c0005f0 <init_search+0xf0>
1c000590:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c000594:	580044ca 	beq	$r6,$r10,68(0x44) # 1c0005d8 <init_search+0xd8>
1c000598:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c00059c:	580024cb 	beq	$r6,$r11,36(0x24) # 1c0005c0 <init_search+0xc0>
1c0005a0:	02801811 	addi.w	$r17,$r0,6(0x6)
1c0005a4:	5c0178d1 	bne	$r6,$r17,376(0x178) # 1c00071c <init_search+0x21c>
1c0005a8:	2a00018d 	ld.bu	$r13,$r12,0
1c0005ac:	00113090 	sub.w	$r16,$r4,$r12
1c0005b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005b4:	004089a5 	slli.w	$r5,$r13,0x2
1c0005b8:	001015c6 	add.w	$r6,$r14,$r5
1c0005bc:	298000d0 	st.w	$r16,$r6,0
1c0005c0:	2a000187 	ld.bu	$r7,$r12,0
1c0005c4:	00113088 	sub.w	$r8,$r4,$r12
1c0005c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005cc:	004088e9 	slli.w	$r9,$r7,0x2
1c0005d0:	001025ca 	add.w	$r10,$r14,$r9
1c0005d4:	29800148 	st.w	$r8,$r10,0
1c0005d8:	2a00018b 	ld.bu	$r11,$r12,0
1c0005dc:	00113091 	sub.w	$r17,$r4,$r12
1c0005e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005e4:	00408972 	slli.w	$r18,$r11,0x2
1c0005e8:	001049d3 	add.w	$r19,$r14,$r18
1c0005ec:	29800271 	st.w	$r17,$r19,0
1c0005f0:	2a000194 	ld.bu	$r20,$r12,0
1c0005f4:	0011308f 	sub.w	$r15,$r4,$r12
1c0005f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005fc:	00408a8d 	slli.w	$r13,$r20,0x2
1c000600:	001035d0 	add.w	$r16,$r14,$r13
1c000604:	2980020f 	st.w	$r15,$r16,0
1c000608:	2a000185 	ld.bu	$r5,$r12,0
1c00060c:	00113086 	sub.w	$r6,$r4,$r12
1c000610:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000614:	004088a7 	slli.w	$r7,$r5,0x2
1c000618:	00101dc8 	add.w	$r8,$r14,$r7
1c00061c:	29800106 	st.w	$r6,$r8,0
1c000620:	2a000189 	ld.bu	$r9,$r12,0
1c000624:	0011308a 	sub.w	$r10,$r4,$r12
1c000628:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00062c:	0040892b 	slli.w	$r11,$r9,0x2
1c000630:	00102dd1 	add.w	$r17,$r14,$r11
1c000634:	2980022a 	st.w	$r10,$r17,0
1c000638:	5800c82c 	beq	$r1,$r12,200(0xc8) # 1c000700 <init_search+0x200>
1c00063c:	2a00018f 	ld.bu	$r15,$r12,0
1c000640:	02800993 	addi.w	$r19,$r12,2(0x2)
1c000644:	02800592 	addi.w	$r18,$r12,1(0x1)
1c000648:	004089eb 	slli.w	$r11,$r15,0x2
1c00064c:	00113087 	sub.w	$r7,$r4,$r12
1c000650:	00114c85 	sub.w	$r5,$r4,$r19
1c000654:	00102dd3 	add.w	$r19,$r14,$r11
1c000658:	29800267 	st.w	$r7,$r19,0
1c00065c:	02800d94 	addi.w	$r20,$r12,3(0x3)
1c000660:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c000664:	02801590 	addi.w	$r16,$r12,5(0x5)
1c000668:	0280198a 	addi.w	$r10,$r12,6(0x6)
1c00066c:	00114886 	sub.w	$r6,$r4,$r18
1c000670:	02801d92 	addi.w	$r18,$r12,7(0x7)
1c000674:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c000678:	2a3fe587 	ld.bu	$r7,$r12,-7(0xff9)
1c00067c:	00113489 	sub.w	$r9,$r4,$r13
1c000680:	0011408f 	sub.w	$r15,$r4,$r16
1c000684:	004088ed 	slli.w	$r13,$r7,0x2
1c000688:	001035d0 	add.w	$r16,$r14,$r13
1c00068c:	29800206 	st.w	$r6,$r16,0
1c000690:	2a3fe986 	ld.bu	$r6,$r12,-6(0xffa)
1c000694:	00112891 	sub.w	$r17,$r4,$r10
1c000698:	00115088 	sub.w	$r8,$r4,$r20
1c00069c:	004088ca 	slli.w	$r10,$r6,0x2
1c0006a0:	001029cb 	add.w	$r11,$r14,$r10
1c0006a4:	29800165 	st.w	$r5,$r11,0
1c0006a8:	2a3fed85 	ld.bu	$r5,$r12,-5(0xffb)
1c0006ac:	00114894 	sub.w	$r20,$r4,$r18
1c0006b0:	004088b2 	slli.w	$r18,$r5,0x2
1c0006b4:	001049d3 	add.w	$r19,$r14,$r18
1c0006b8:	29800268 	st.w	$r8,$r19,0
1c0006bc:	2a3ff188 	ld.bu	$r8,$r12,-4(0xffc)
1c0006c0:	00408907 	slli.w	$r7,$r8,0x2
1c0006c4:	00101dcd 	add.w	$r13,$r14,$r7
1c0006c8:	298001a9 	st.w	$r9,$r13,0
1c0006cc:	2a3ff589 	ld.bu	$r9,$r12,-3(0xffd)
1c0006d0:	00408930 	slli.w	$r16,$r9,0x2
1c0006d4:	001041c6 	add.w	$r6,$r14,$r16
1c0006d8:	298000cf 	st.w	$r15,$r6,0
1c0006dc:	2a3ff98f 	ld.bu	$r15,$r12,-2(0xffe)
1c0006e0:	004089ea 	slli.w	$r10,$r15,0x2
1c0006e4:	001029cb 	add.w	$r11,$r14,$r10
1c0006e8:	29800171 	st.w	$r17,$r11,0
1c0006ec:	2a3ffd91 	ld.bu	$r17,$r12,-1(0xfff)
1c0006f0:	00408a25 	slli.w	$r5,$r17,0x2
1c0006f4:	001015d2 	add.w	$r18,$r14,$r5
1c0006f8:	29800254 	st.w	$r20,$r18,0
1c0006fc:	5fff402c 	bne	$r1,$r12,-192(0x3ff40) # 1c00063c <init_search+0x13c>
1c000700:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000704:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000708:	0296b1ce 	addi.w	$r14,$r14,1452(0x5ac)
1c00070c:	298001d7 	st.w	$r23,$r14,0
1c000710:	28802077 	ld.w	$r23,$r3,8(0x8)
1c000714:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000718:	4c000020 	jirl	$r0,$r1,0
1c00071c:	2a0002f2 	ld.bu	$r18,$r23,0
1c000720:	00115c93 	sub.w	$r19,$r4,$r23
1c000724:	028006ec 	addi.w	$r12,$r23,1(0x1)
1c000728:	00408a54 	slli.w	$r20,$r18,0x2
1c00072c:	001051cf 	add.w	$r15,$r14,$r20
1c000730:	298001f3 	st.w	$r19,$r15,0
1c000734:	53fe77ff 	b	-396(0xffffe74) # 1c0005a8 <init_search+0xa8>
1c000738:	03400000 	andi	$r0,$r0,0x0
1c00073c:	03400000 	andi	$r0,$r0,0x0

1c000740 <strsearch>:
strsearch():
1c000740:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c000744:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000748:	0295c18c 	addi.w	$r12,$r12,1392(0x570)
1c00074c:	2980407d 	st.w	$r29,$r3,16(0x10)
1c000750:	2880019d 	ld.w	$r29,$r12,0
1c000754:	2980a077 	st.w	$r23,$r3,40(0x28)
1c000758:	29809078 	st.w	$r24,$r3,36(0x24)
1c00075c:	29808079 	st.w	$r25,$r3,32(0x20)
1c000760:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c000764:	2980507c 	st.w	$r28,$r3,20(0x14)
1c000768:	2980307e 	st.w	$r30,$r3,12(0xc)
1c00076c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c000770:	2980607b 	st.w	$r27,$r3,24(0x18)
1c000774:	00150098 	move	$r24,$r4
1c000778:	54097800 	bl	2424(0x978) # 1c0010f0 <strlen>
1c00077c:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c000780:	0294d1ad 	addi.w	$r13,$r13,1332(0x534)
1c000784:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000788:	02bfffb7 	addi.w	$r23,$r29,-1(0xfff)
1c00078c:	1c001019 	pcaddu12i	$r25,128(0x80)
1c000790:	0294b339 	addi.w	$r25,$r25,1324(0x52c)
1c000794:	0015009a 	move	$r26,$r4
1c000798:	288001be 	ld.w	$r30,$r13,0
1c00079c:	001174bc 	sub.w	$r28,$r5,$r29
1c0007a0:	6c0026e4 	bgeu	$r23,$r4,36(0x24) # 1c0007c4 <strsearch+0x84>
1c0007a4:	00105f01 	add.w	$r1,$r24,$r23
1c0007a8:	2a000024 	ld.bu	$r4,$r1,0
1c0007ac:	00408886 	slli.w	$r6,$r4,0x2
1c0007b0:	00101b27 	add.w	$r7,$r25,$r6
1c0007b4:	288000e8 	ld.w	$r8,$r7,0
1c0007b8:	58004100 	beq	$r8,$r0,64(0x40) # 1c0007f8 <strsearch+0xb8>
1c0007bc:	001022f7 	add.w	$r23,$r23,$r8
1c0007c0:	6bffe6fa 	bltu	$r23,$r26,-28(0x3ffe4) # 1c0007a4 <strsearch+0x64>
1c0007c4:	0015001b 	move	$r27,$r0
1c0007c8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0007cc:	00150364 	move	$r4,$r27
1c0007d0:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c0007d4:	28809078 	ld.w	$r24,$r3,36(0x24)
1c0007d8:	28808079 	ld.w	$r25,$r3,32(0x20)
1c0007dc:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c0007e0:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c0007e4:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c0007e8:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c0007ec:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c0007f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0007f4:	4c000020 	jirl	$r0,$r1,0
1c0007f8:	00105f9b 	add.w	$r27,$r28,$r23
1c0007fc:	00106f1b 	add.w	$r27,$r24,$r27
1c000800:	001503a6 	move	$r6,$r29
1c000804:	001503c4 	move	$r4,$r30
1c000808:	00150365 	move	$r5,$r27
1c00080c:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c000810:	5409b000 	bl	2480(0x9b0) # 1c0011c0 <strncmp>
1c000814:	5fffac80 	bne	$r4,$r0,-84(0x3ffac) # 1c0007c0 <strsearch+0x80>
1c000818:	53ffb3ff 	b	-80(0xfffffb0) # 1c0007c8 <strsearch+0x88>
1c00081c:	03400000 	andi	$r0,$r0,0x0

1c000820 <search_small>:
search_small():
1c000820:	02b44063 	addi.w	$r3,$r3,-752(0xd10)
1c000824:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000828:	0282318c 	addi.w	$r12,$r12,140(0x8c)
1c00082c:	298bb061 	st.w	$r1,$r3,748(0x2ec)
1c000830:	298ba076 	st.w	$r22,$r3,744(0x2e8)
1c000834:	298b9077 	st.w	$r23,$r3,740(0x2e4)
1c000838:	298b8078 	st.w	$r24,$r3,736(0x2e0)
1c00083c:	298b7079 	st.w	$r25,$r3,732(0x2dc)
1c000840:	298b607a 	st.w	$r26,$r3,728(0x2d8)
1c000844:	298b507b 	st.w	$r27,$r3,724(0x2d4)
1c000848:	298b407c 	st.w	$r28,$r3,720(0x2d0)
1c00084c:	298b307d 	st.w	$r29,$r3,716(0x2cc)
1c000850:	298b207e 	st.w	$r30,$r3,712(0x2c8)
1c000854:	298b107f 	st.w	$r31,$r3,708(0x2c4)
1c000858:	0287606d 	addi.w	$r13,$r3,472(0x1d8)
1c00085c:	02838192 	addi.w	$r18,$r12,224(0xe0)
1c000860:	28800191 	ld.w	$r17,$r12,0
1c000864:	28801190 	ld.w	$r16,$r12,4(0x4)
1c000868:	2880218f 	ld.w	$r15,$r12,8(0x8)
1c00086c:	2880318e 	ld.w	$r14,$r12,12(0xc)
1c000870:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c000874:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c000878:	29bfc1b1 	st.w	$r17,$r13,-16(0xff0)
1c00087c:	29bfd1b0 	st.w	$r16,$r13,-12(0xff4)
1c000880:	29bfe1af 	st.w	$r15,$r13,-8(0xff8)
1c000884:	29bff1ae 	st.w	$r14,$r13,-4(0xffc)
1c000888:	5fffd992 	bne	$r12,$r18,-40(0x3ffd8) # 1c000860 <search_small+0x40>
1c00088c:	28800181 	ld.w	$r1,$r12,0
1c000890:	28801184 	ld.w	$r4,$r12,4(0x4)
1c000894:	1c00100a 	pcaddu12i	$r10,128(0x80)
1c000898:	0284114a 	addi.w	$r10,$r10,260(0x104)
1c00089c:	0280406b 	addi.w	$r11,$r3,16(0x10)
1c0008a0:	02838145 	addi.w	$r5,$r10,224(0xe0)
1c0008a4:	298001a1 	st.w	$r1,$r13,0
1c0008a8:	298011a4 	st.w	$r4,$r13,4(0x4)
1c0008ac:	28800146 	ld.w	$r6,$r10,0
1c0008b0:	28801147 	ld.w	$r7,$r10,4(0x4)
1c0008b4:	28802148 	ld.w	$r8,$r10,8(0x8)
1c0008b8:	28803149 	ld.w	$r9,$r10,12(0xc)
1c0008bc:	0280416b 	addi.w	$r11,$r11,16(0x10)
1c0008c0:	0280414a 	addi.w	$r10,$r10,16(0x10)
1c0008c4:	29bfc166 	st.w	$r6,$r11,-16(0xff0)
1c0008c8:	29bfd167 	st.w	$r7,$r11,-12(0xff4)
1c0008cc:	29bfe168 	st.w	$r8,$r11,-8(0xff8)
1c0008d0:	29bff169 	st.w	$r9,$r11,-4(0xffc)
1c0008d4:	5fffd945 	bne	$r10,$r5,-40(0x3ffd8) # 1c0008ac <search_small+0x8c>
1c0008d8:	28800153 	ld.w	$r19,$r10,0
1c0008dc:	1c00101a 	pcaddu12i	$r26,128(0x80)
1c0008e0:	0286835a 	addi.w	$r26,$r26,416(0x1a0)
1c0008e4:	0283d07c 	addi.w	$r28,$r3,244(0xf4)
1c0008e8:	02838354 	addi.w	$r20,$r26,224(0xe0)
1c0008ec:	29800173 	st.w	$r19,$r11,0
1c0008f0:	28800356 	ld.w	$r22,$r26,0
1c0008f4:	28801357 	ld.w	$r23,$r26,4(0x4)
1c0008f8:	28802358 	ld.w	$r24,$r26,8(0x8)
1c0008fc:	28803359 	ld.w	$r25,$r26,12(0xc)
1c000900:	0280439c 	addi.w	$r28,$r28,16(0x10)
1c000904:	0280435a 	addi.w	$r26,$r26,16(0x10)
1c000908:	29bfc396 	st.w	$r22,$r28,-16(0xff0)
1c00090c:	29bfd397 	st.w	$r23,$r28,-12(0xff4)
1c000910:	29bfe398 	st.w	$r24,$r28,-8(0xff8)
1c000914:	29bff399 	st.w	$r25,$r28,-4(0xffc)
1c000918:	5fffdb54 	bne	$r26,$r20,-40(0x3ffd8) # 1c0008f0 <search_small+0xd0>
1c00091c:	2880035d 	ld.w	$r29,$r26,0
1c000920:	2887607f 	ld.w	$r31,$r3,472(0x1d8)
1c000924:	0015001b 	move	$r27,$r0
1c000928:	2980039d 	st.w	$r29,$r28,0
1c00092c:	5802bfe0 	beq	$r31,$r0,700(0x2bc) # 1c000be8 <search_small+0x3c8>
1c000930:	1c001016 	pcaddu12i	$r22,128(0x80)
1c000934:	028e22d6 	addi.w	$r22,$r22,904(0x388)
1c000938:	0287707a 	addi.w	$r26,$r3,476(0x1dc)
1c00093c:	0283d078 	addi.w	$r24,$r3,244(0xf4)
1c000940:	02804079 	addi.w	$r25,$r3,16(0x10)
1c000944:	001503e4 	move	$r4,$r31
1c000948:	5407a800 	bl	1960(0x7a8) # 1c0010f0 <strlen>
1c00094c:	1c001012 	pcaddu12i	$r18,128(0x80)
1c000950:	028da252 	addi.w	$r18,$r18,872(0x368)
1c000954:	0015009e 	move	$r30,$r4
1c000958:	1c001011 	pcaddu12i	$r17,128(0x80)
1c00095c:	028d8231 	addi.w	$r17,$r17,864(0x360)
1c000960:	29800244 	st.w	$r4,$r18,0
1c000964:	1c001010 	pcaddu12i	$r16,128(0x80)
1c000968:	028d5210 	addi.w	$r16,$r16,852(0x354)
1c00096c:	2980023e 	st.w	$r30,$r17,0
1c000970:	2980123e 	st.w	$r30,$r17,4(0x4)
1c000974:	2980223e 	st.w	$r30,$r17,8(0x8)
1c000978:	2980323e 	st.w	$r30,$r17,12(0xc)
1c00097c:	2980423e 	st.w	$r30,$r17,16(0x10)
1c000980:	2980523e 	st.w	$r30,$r17,20(0x14)
1c000984:	2980623e 	st.w	$r30,$r17,24(0x18)
1c000988:	2980723e 	st.w	$r30,$r17,28(0x1c)
1c00098c:	0290020f 	addi.w	$r15,$r16,1024(0x400)
1c000990:	02808231 	addi.w	$r17,$r17,32(0x20)
1c000994:	5fffd1f1 	bne	$r15,$r17,-48(0x3ffd0) # 1c000964 <search_small+0x144>
1c000998:	02bfffdd 	addi.w	$r29,$r30,-1(0xfff)
1c00099c:	00107fce 	add.w	$r14,$r30,$r31
1c0009a0:	001503ec 	move	$r12,$r31
1c0009a4:	001077ed 	add.w	$r13,$r31,$r29
1c0009a8:	5802f3c0 	beq	$r30,$r0,752(0x2f0) # 1c000c98 <search_small+0x478>
1c0009ac:	00117dc1 	sub.w	$r1,$r14,$r31
1c0009b0:	03401c24 	andi	$r4,$r1,0x7
1c0009b4:	5800e080 	beq	$r4,$r0,224(0xe0) # 1c000a94 <search_small+0x274>
1c0009b8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0009bc:	5800bc85 	beq	$r4,$r5,188(0xbc) # 1c000a78 <search_small+0x258>
1c0009c0:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0009c4:	58009c86 	beq	$r4,$r6,156(0x9c) # 1c000a60 <search_small+0x240>
1c0009c8:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0009cc:	58007c87 	beq	$r4,$r7,124(0x7c) # 1c000a48 <search_small+0x228>
1c0009d0:	02801008 	addi.w	$r8,$r0,4(0x4)
1c0009d4:	58005c88 	beq	$r4,$r8,92(0x5c) # 1c000a30 <search_small+0x210>
1c0009d8:	02801409 	addi.w	$r9,$r0,5(0x5)
1c0009dc:	58003c89 	beq	$r4,$r9,60(0x3c) # 1c000a18 <search_small+0x1f8>
1c0009e0:	0280180a 	addi.w	$r10,$r0,6(0x6)
1c0009e4:	58001c8a 	beq	$r4,$r10,28(0x1c) # 1c000a00 <search_small+0x1e0>
1c0009e8:	2a0003ec 	ld.bu	$r12,$r31,0
1c0009ec:	00117db4 	sub.w	$r20,$r13,$r31
1c0009f0:	0040898b 	slli.w	$r11,$r12,0x2
1c0009f4:	00102ed3 	add.w	$r19,$r22,$r11
1c0009f8:	29800274 	st.w	$r20,$r19,0
1c0009fc:	028007ec 	addi.w	$r12,$r31,1(0x1)
1c000a00:	2a000197 	ld.bu	$r23,$r12,0
1c000a04:	001131b1 	sub.w	$r17,$r13,$r12
1c000a08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a0c:	00408af2 	slli.w	$r18,$r23,0x2
1c000a10:	00104ad0 	add.w	$r16,$r22,$r18
1c000a14:	29800211 	st.w	$r17,$r16,0
1c000a18:	2a00018f 	ld.bu	$r15,$r12,0
1c000a1c:	001131bc 	sub.w	$r28,$r13,$r12
1c000a20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a24:	004089e1 	slli.w	$r1,$r15,0x2
1c000a28:	001006c4 	add.w	$r4,$r22,$r1
1c000a2c:	2980009c 	st.w	$r28,$r4,0
1c000a30:	2a000185 	ld.bu	$r5,$r12,0
1c000a34:	001131a6 	sub.w	$r6,$r13,$r12
1c000a38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a3c:	004088a7 	slli.w	$r7,$r5,0x2
1c000a40:	00101ec8 	add.w	$r8,$r22,$r7
1c000a44:	29800106 	st.w	$r6,$r8,0
1c000a48:	2a000189 	ld.bu	$r9,$r12,0
1c000a4c:	001131aa 	sub.w	$r10,$r13,$r12
1c000a50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a54:	0040892b 	slli.w	$r11,$r9,0x2
1c000a58:	00102ed3 	add.w	$r19,$r22,$r11
1c000a5c:	2980026a 	st.w	$r10,$r19,0
1c000a60:	2a000197 	ld.bu	$r23,$r12,0
1c000a64:	001131b4 	sub.w	$r20,$r13,$r12
1c000a68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a6c:	00408af1 	slli.w	$r17,$r23,0x2
1c000a70:	001046d2 	add.w	$r18,$r22,$r17
1c000a74:	29800254 	st.w	$r20,$r18,0
1c000a78:	2a000190 	ld.bu	$r16,$r12,0
1c000a7c:	001131af 	sub.w	$r15,$r13,$r12
1c000a80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a84:	00408a1c 	slli.w	$r28,$r16,0x2
1c000a88:	001072c1 	add.w	$r1,$r22,$r28
1c000a8c:	2980002f 	st.w	$r15,$r1,0
1c000a90:	5800c9cc 	beq	$r14,$r12,200(0xc8) # 1c000b58 <search_small+0x338>
1c000a94:	2a000189 	ld.bu	$r9,$r12,0
1c000a98:	001131a4 	sub.w	$r4,$r13,$r12
1c000a9c:	02800585 	addi.w	$r5,$r12,1(0x1)
1c000aa0:	00408931 	slli.w	$r17,$r9,0x2
1c000aa4:	001046d2 	add.w	$r18,$r22,$r17
1c000aa8:	29800244 	st.w	$r4,$r18,0
1c000aac:	2a00058f 	ld.bu	$r15,$r12,1(0x1)
1c000ab0:	001115a8 	sub.w	$r8,$r13,$r5
1c000ab4:	02800986 	addi.w	$r6,$r12,2(0x2)
1c000ab8:	004089e9 	slli.w	$r9,$r15,0x2
1c000abc:	001026c4 	add.w	$r4,$r22,$r9
1c000ac0:	29800088 	st.w	$r8,$r4,0
1c000ac4:	2a000985 	ld.bu	$r5,$r12,2(0x2)
1c000ac8:	001119aa 	sub.w	$r10,$r13,$r6
1c000acc:	02801594 	addi.w	$r20,$r12,5(0x5)
1c000ad0:	004088a6 	slli.w	$r6,$r5,0x2
1c000ad4:	00101ac8 	add.w	$r8,$r22,$r6
1c000ad8:	2980010a 	st.w	$r10,$r8,0
1c000adc:	2a000d8a 	ld.bu	$r10,$r12,3(0x3)
1c000ae0:	02800d87 	addi.w	$r7,$r12,3(0x3)
1c000ae4:	001151b0 	sub.w	$r16,$r13,$r20
1c000ae8:	00408954 	slli.w	$r20,$r10,0x2
1c000aec:	00111db3 	sub.w	$r19,$r13,$r7
1c000af0:	001052d1 	add.w	$r17,$r22,$r20
1c000af4:	29800233 	st.w	$r19,$r17,0
1c000af8:	2a001193 	ld.bu	$r19,$r12,4(0x4)
1c000afc:	0280118b 	addi.w	$r11,$r12,4(0x4)
1c000b00:	00112db7 	sub.w	$r23,$r13,$r11
1c000b04:	00408a72 	slli.w	$r18,$r19,0x2
1c000b08:	00104acf 	add.w	$r15,$r22,$r18
1c000b0c:	298001f7 	st.w	$r23,$r15,0
1c000b10:	2a001597 	ld.bu	$r23,$r12,5(0x5)
1c000b14:	0280199c 	addi.w	$r28,$r12,6(0x6)
1c000b18:	001171a1 	sub.w	$r1,$r13,$r28
1c000b1c:	00408afc 	slli.w	$r28,$r23,0x2
1c000b20:	001072c9 	add.w	$r9,$r22,$r28
1c000b24:	02801d87 	addi.w	$r7,$r12,7(0x7)
1c000b28:	29800130 	st.w	$r16,$r9,0
1c000b2c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c000b30:	2a3ff990 	ld.bu	$r16,$r12,-2(0xffe)
1c000b34:	00111dab 	sub.w	$r11,$r13,$r7
1c000b38:	00408a04 	slli.w	$r4,$r16,0x2
1c000b3c:	001012c5 	add.w	$r5,$r22,$r4
1c000b40:	298000a1 	st.w	$r1,$r5,0
1c000b44:	2a3ffd81 	ld.bu	$r1,$r12,-1(0xfff)
1c000b48:	00408826 	slli.w	$r6,$r1,0x2
1c000b4c:	00101ac8 	add.w	$r8,$r22,$r6
1c000b50:	2980010b 	st.w	$r11,$r8,0
1c000b54:	5fff41cc 	bne	$r14,$r12,-192(0x3ff40) # 1c000a94 <search_small+0x274>
1c000b58:	2880033c 	ld.w	$r28,$r25,0
1c000b5c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c000b60:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000b64:	028541ce 	addi.w	$r14,$r14,336(0x150)
1c000b68:	001179ac 	sub.w	$r12,$r13,$r30
1c000b6c:	00150384 	move	$r4,$r28
1c000b70:	298001df 	st.w	$r31,$r14,0
1c000b74:	2980206c 	st.w	$r12,$r3,8(0x8)
1c000b78:	54057800 	bl	1400(0x578) # 1c0010f0 <strlen>
1c000b7c:	0015008f 	move	$r15,$r4
1c000b80:	6c0027a4 	bgeu	$r29,$r4,36(0x24) # 1c000ba4 <search_small+0x384>
1c000b84:	0010778a 	add.w	$r10,$r28,$r29
1c000b88:	2a000147 	ld.bu	$r7,$r10,0
1c000b8c:	004088eb 	slli.w	$r11,$r7,0x2
1c000b90:	00102ed4 	add.w	$r20,$r22,$r11
1c000b94:	28800291 	ld.w	$r17,$r20,0
1c000b98:	58008a20 	beq	$r17,$r0,136(0x88) # 1c000c20 <search_small+0x400>
1c000b9c:	001047bd 	add.w	$r29,$r29,$r17
1c000ba0:	6bffe7af 	bltu	$r29,$r15,-28(0x3ffe4) # 1c000b84 <search_small+0x364>
1c000ba4:	00150387 	move	$r7,$r28
1c000ba8:	1c001006 	pcaddu12i	$r6,128(0x80)
1c000bac:	02a350c6 	addi.w	$r6,$r6,-1836(0x8d4)
1c000bb0:	001503e5 	move	$r5,$r31
1c000bb4:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000bb8:	0293d084 	addi.w	$r4,$r4,1268(0x4f4)
1c000bbc:	5400f400 	bl	244(0xf4) # 1c000cb0 <printf>
1c000bc0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c000bc4:	54032c00 	bl	812(0x32c) # 1c000ef0 <putchar>
1c000bc8:	2880031c 	ld.w	$r28,$r24,0
1c000bcc:	0012f009 	sltu	$r9,$r0,$r28
1c000bd0:	0010277b 	add.w	$r27,$r27,$r9
1c000bd4:	2880035f 	ld.w	$r31,$r26,0
1c000bd8:	02801318 	addi.w	$r24,$r24,4(0x4)
1c000bdc:	0280135a 	addi.w	$r26,$r26,4(0x4)
1c000be0:	02801339 	addi.w	$r25,$r25,4(0x4)
1c000be4:	5ffd63e0 	bne	$r31,$r0,-672(0x3fd60) # 1c000944 <search_small+0x124>
1c000be8:	288bb061 	ld.w	$r1,$r3,748(0x2ec)
1c000bec:	288ba076 	ld.w	$r22,$r3,744(0x2e8)
1c000bf0:	00150364 	move	$r4,$r27
1c000bf4:	288b9077 	ld.w	$r23,$r3,740(0x2e4)
1c000bf8:	288b8078 	ld.w	$r24,$r3,736(0x2e0)
1c000bfc:	288b7079 	ld.w	$r25,$r3,732(0x2dc)
1c000c00:	288b607a 	ld.w	$r26,$r3,728(0x2d8)
1c000c04:	288b507b 	ld.w	$r27,$r3,724(0x2d4)
1c000c08:	288b407c 	ld.w	$r28,$r3,720(0x2d0)
1c000c0c:	288b307d 	ld.w	$r29,$r3,716(0x2cc)
1c000c10:	288b207e 	ld.w	$r30,$r3,712(0x2c8)
1c000c14:	288b107f 	ld.w	$r31,$r3,708(0x2c4)
1c000c18:	028bc063 	addi.w	$r3,$r3,752(0x2f0)
1c000c1c:	4c000020 	jirl	$r0,$r1,0
1c000c20:	28802073 	ld.w	$r19,$r3,8(0x8)
1c000c24:	001503c6 	move	$r6,$r30
1c000c28:	001503e4 	move	$r4,$r31
1c000c2c:	00107672 	add.w	$r18,$r19,$r29
1c000c30:	00104b97 	add.w	$r23,$r28,$r18
1c000c34:	001502e5 	move	$r5,$r23
1c000c38:	2980306f 	st.w	$r15,$r3,12(0xc)
1c000c3c:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c000c40:	54058000 	bl	1408(0x580) # 1c0011c0 <strncmp>
1c000c44:	58001080 	beq	$r4,$r0,16(0x10) # 1c000c54 <search_small+0x434>
1c000c48:	2880306f 	ld.w	$r15,$r3,12(0xc)
1c000c4c:	6bff3baf 	bltu	$r29,$r15,-200(0x3ff38) # 1c000b84 <search_small+0x364>
1c000c50:	53ff57ff 	b	-172(0xfffff54) # 1c000ba4 <search_small+0x384>
1c000c54:	00150387 	move	$r7,$r28
1c000c58:	1c000fe6 	pcaddu12i	$r6,127(0x7f)
1c000c5c:	029f70c6 	addi.w	$r6,$r6,2012(0x7dc)
1c000c60:	001503e5 	move	$r5,$r31
1c000c64:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000c68:	02911084 	addi.w	$r4,$r4,1092(0x444)
1c000c6c:	54004400 	bl	68(0x44) # 1c000cb0 <printf>
1c000c70:	001502e5 	move	$r5,$r23
1c000c74:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000c78:	02912084 	addi.w	$r4,$r4,1096(0x448)
1c000c7c:	54003400 	bl	52(0x34) # 1c000cb0 <printf>
1c000c80:	02802804 	addi.w	$r4,$r0,10(0xa)
1c000c84:	54026c00 	bl	620(0x26c) # 1c000ef0 <putchar>
1c000c88:	2880031f 	ld.w	$r31,$r24,0
1c000c8c:	024007fe 	sltui	$r30,$r31,1(0x1)
1c000c90:	00107b7b 	add.w	$r27,$r27,$r30
1c000c94:	53ff43ff 	b	-192(0xfffff40) # 1c000bd4 <search_small+0x3b4>
1c000c98:	1c00101e 	pcaddu12i	$r30,128(0x80)
1c000c9c:	028063de 	addi.w	$r30,$r30,24(0x18)
1c000ca0:	298003df 	st.w	$r31,$r30,0
1c000ca4:	2880033c 	ld.w	$r28,$r25,0
1c000ca8:	53feffff 	b	-260(0xffffefc) # 1c000ba4 <search_small+0x384>
1c000cac:	03400000 	andi	$r0,$r0,0x0

1c000cb0 <printf>:
printf():
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
int printf(const char *fmt,...)
{
1c000cb0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c000cb4:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c000cb8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000cbc:	2980e077 	st.w	$r23,$r3,56(0x38)
1c000cc0:	2980d078 	st.w	$r24,$r3,52(0x34)
1c000cc4:	2980c079 	st.w	$r25,$r3,48(0x30)
1c000cc8:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c000ccc:	2980907c 	st.w	$r28,$r3,36(0x24)
1c000cd0:	29811065 	st.w	$r5,$r3,68(0x44)
1c000cd4:	29812066 	st.w	$r6,$r3,72(0x48)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c000cd8:	28000097 	ld.b	$r23,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c000cdc:	0281107a 	addi.w	$r26,$r3,68(0x44)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
{
1c000ce0:	29813067 	st.w	$r7,$r3,76(0x4c)
1c000ce4:	29814068 	st.w	$r8,$r3,80(0x50)
1c000ce8:	29815069 	st.w	$r9,$r3,84(0x54)
1c000cec:	2981606a 	st.w	$r10,$r3,88(0x58)
1c000cf0:	2981706b 	st.w	$r11,$r3,92(0x5c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c000cf4:	2980707a 	st.w	$r26,$r3,28(0x1c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
for(i=0;fmt[i];i++)
1c000cf8:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c000d80 <printf+0xd0>
1c000cfc:	00150099 	move	$r25,$r4
1c000d00:	00150018 	move	$r24,$r0
1c000d04:	1c00101c 	pcaddu12i	$r28,128(0x80)
1c000d08:	02b9739c 	addi.w	$r28,$r28,-420(0xe5c)
1c000d0c:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c000d10:	50001c00 	b	28(0x1c) # 1c000d2c <printf+0x7c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c000d14:	001502e4 	move	$r4,$r23
1c000d18:	5401d800 	bl	472(0x1d8) # 1c000ef0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c000d1c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000d20:	0010632c 	add.w	$r12,$r25,$r24
1c000d24:	28000197 	ld.b	$r23,$r12,0
1c000d28:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c000d80 <printf+0xd0>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:13
	if(c=='%')
1c000d2c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c000d30:	58001aec 	beq	$r23,$r12,24(0x18) # 1c000d48 <printf+0x98>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c000d34:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c000d38:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c000d14 <printf+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79 (discriminator 1)
1c000d3c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000d40:	5401b000 	bl	432(0x1b0) # 1c000ef0 <putchar>
1c000d44:	53ffd3ff 	b	-48(0xfffffd0) # 1c000d14 <printf+0x64>
1c000d48:	0010632c 	add.w	$r12,$r25,$r24
1c000d4c:	2800058d 	ld.b	$r13,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:15
		w=1;
1c000d50:	02800405 	addi.w	$r5,$r0,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c000d54:	02814c10 	addi.w	$r16,$r0,83(0x53)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c000d58:	0280280f 	addi.w	$r15,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c000d5c:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c000d60:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000d64:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c000d68:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c000ee0 <printf+0x230>
1c000d6c:	0040898c 	slli.w	$r12,$r12,0x2
1c000d70:	0010338c 	add.w	$r12,$r28,$r12
1c000d74:	2880018c 	ld.w	$r12,$r12,0
1c000d78:	4c000180 	jirl	$r0,$r12,0
1c000d7c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:84
	}
}
	return 0;
}
1c000d80:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c000d84:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c000d88:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c000d8c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c000d90:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c000d94:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c000d98:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c000d9c:	00150004 	move	$r4,$r0
1c000da0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c000da4:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:65
				i++;
1c000da8:	0010632c 	add.w	$r12,$r25,$r24
1c000dac:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c000db0:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000db4:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c000db8:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000dbc:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c000dc0:	00150005 	move	$r5,$r0
1c000dc4:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c000d5c <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000dc8:	001c3ca5 	mul.w	$r5,$r5,$r15
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000dcc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000dd0:	0010632c 	add.w	$r12,$r25,$r24
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000dd4:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000dd8:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c000ddc:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c000de0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000de4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000de8:	001015c5 	add.w	$r5,$r14,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000dec:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c000dc8 <printf+0x118>
1c000df0:	53ff6fff 	b	-148(0xfffff6c) # 1c000d5c <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c000df4:	28800344 	ld.w	$r4,$r26,0
1c000df8:	00150007 	move	$r7,$r0
1c000dfc:	02800806 	addi.w	$r6,$r0,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:51
				arg++;
1c000e00:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:52
				i++;
1c000e04:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c000e08:	5401f800 	bl	504(0x1f8) # 1c001000 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:53
				break;
1c000e0c:	53ff13ff 	b	-240(0xfffff10) # 1c000d1c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c000e10:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:27
				i++;
1c000e14:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:26
				arg++;
1c000e18:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c000e1c:	5400d400 	bl	212(0xd4) # 1c000ef0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:28
				break;
1c000e20:	53feffff 	b	-260(0xffffefc) # 1c000d1c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c000e24:	28800344 	ld.w	$r4,$r26,0
1c000e28:	02800407 	addi.w	$r7,$r0,1(0x1)
1c000e2c:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:36
				arg++;
1c000e30:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:37
				i++;
1c000e34:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c000e38:	5401c800 	bl	456(0x1c8) # 1c001000 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:38
				break;
1c000e3c:	53fee3ff 	b	-288(0xffffee0) # 1c000d1c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c000e40:	28800344 	ld.w	$r4,$r26,0
1c000e44:	00150007 	move	$r7,$r0
1c000e48:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:41
                arg++;
1c000e4c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:42
                i=i+2;
1c000e50:	02800b18 	addi.w	$r24,$r24,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c000e54:	5401ac00 	bl	428(0x1ac) # 1c001000 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:43
                break;
1c000e58:	53fec7ff 	b	-316(0xffffec4) # 1c000d1c <printf+0x6c>
1c000e5c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c000e60:	28800344 	ld.w	$r4,$r26,0
1c000e64:	00150007 	move	$r7,$r0
1c000e68:	02802006 	addi.w	$r6,$r0,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:46
				arg++;
1c000e6c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:47
				i++;
1c000e70:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c000e74:	54018c00 	bl	396(0x18c) # 1c001000 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:48
				break;
1c000e78:	53fea7ff 	b	-348(0xffffea4) # 1c000d1c <printf+0x6c>
1c000e7c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c000e80:	28800344 	ld.w	$r4,$r26,0
1c000e84:	00150007 	move	$r7,$r0
1c000e88:	02804006 	addi.w	$r6,$r0,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:57
				arg++;
1c000e8c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:58
				i++;
1c000e90:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c000e94:	54016c00 	bl	364(0x16c) # 1c001000 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:59
				break;
1c000e98:	53fe87ff 	b	-380(0xffffe84) # 1c000d1c <printf+0x6c>
1c000e9c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c000ea0:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:22
				i++;
1c000ea4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:21
				arg++;
1c000ea8:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c000eac:	5400a400 	bl	164(0xa4) # 1c000f50 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:23
				break;
1c000eb0:	53fe6fff 	b	-404(0xffffe6c) # 1c000d1c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c000eb4:	28800344 	ld.w	$r4,$r26,0
1c000eb8:	00150007 	move	$r7,$r0
1c000ebc:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:31
				arg++;
1c000ec0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:32
				i++;
1c000ec4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c000ec8:	54013800 	bl	312(0x138) # 1c001000 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:33
				break;
1c000ecc:	53fe53ff 	b	-432(0xffffe50) # 1c000d1c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c000ed0:	02809404 	addi.w	$r4,$r0,37(0x25)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:62
				i++;
1c000ed4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c000ed8:	54001800 	bl	24(0x18) # 1c000ef0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:63
				break;
1c000edc:	53fe43ff 	b	-448(0xffffe40) # 1c000d1c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:73
				putchar('%');
1c000ee0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c000ee4:	54000c00 	bl	12(0xc) # 1c000ef0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:74
				break;
1c000ee8:	53fe37ff 	b	-460(0xffffe34) # 1c000d1c <printf+0x6c>
1c000eec:	03400000 	andi	$r0,$r0,0x0

1c000ef0 <putchar>:
putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:2
int putchar(int c)
{
1c000ef0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000ef4:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c000ef8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c000efc:	03bc4339 	ori	$r25,$r25,0xf10
1c000f00:	29000324 	st.b	$r4,$r25,0
1c000f04:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:5
}
1c000f08:	00150004 	move	$r4,$r0
1c000f0c:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000f10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000f14:	4c000020 	jirl	$r0,$r1,0
1c000f18:	03400000 	andi	$r0,$r0,0x0
1c000f1c:	03400000 	andi	$r0,$r0,0x0

1c000f20 <tgt_putchar>:
tgt_putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:8
{   //UART_ADDR
1c000f20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000f24:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
    asm(
1c000f28:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c000f2c:	03bc4339 	ori	$r25,$r25,0xf10
1c000f30:	29000324 	st.b	$r4,$r25,0
1c000f34:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c000f38:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000f3c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000f40:	4c000020 	jirl	$r0,$r1,0
1c000f44:	03400000 	andi	$r0,$r0,0x0
1c000f48:	03400000 	andi	$r0,$r0,0x0
1c000f4c:	03400000 	andi	$r0,$r0,0x0

1c000f50 <putstring>:
putstring():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:2
int putstring(char *s)
{
1c000f50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000f54:	29803061 	st.w	$r1,$r3,12(0xc)
1c000f58:	29802077 	st.w	$r23,$r3,8(0x8)
1c000f5c:	29801078 	st.w	$r24,$r3,4(0x4)
1c000f60:	29800079 	st.w	$r25,$r3,0
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
char c;
while((c=*s))
1c000f64:	28000097 	ld.b	$r23,$r4,0
1c000f68:	580042e0 	beq	$r23,$r0,64(0x40) # 1c000fa8 <putstring+0x58>
1c000f6c:	00150098 	move	$r24,$r4
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c000f70:	02802819 	addi.w	$r25,$r0,10(0xa)
1c000f74:	50001400 	b	20(0x14) # 1c000f88 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7
 putchar(c);
1c000f78:	001502e4 	move	$r4,$r23
1c000f7c:	57ff77ff 	bl	-140(0xfffff74) # 1c000ef0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
while((c=*s))
1c000f80:	28000317 	ld.b	$r23,$r24,0
1c000f84:	580026e0 	beq	$r23,$r0,36(0x24) # 1c000fa8 <putstring+0x58>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:8
 s++;
1c000f88:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c000f8c:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c000f78 <putstring+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6 (discriminator 1)
1c000f90:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000f94:	57ff5fff 	bl	-164(0xfffff5c) # 1c000ef0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c000f98:	001502e4 	move	$r4,$r23
1c000f9c:	57ff57ff 	bl	-172(0xfffff54) # 1c000ef0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c000fa0:	28000317 	ld.b	$r23,$r24,0
1c000fa4:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c000f88 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:11
}
return 0;
}
1c000fa8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000fac:	28802077 	ld.w	$r23,$r3,8(0x8)
1c000fb0:	28801078 	ld.w	$r24,$r3,4(0x4)
1c000fb4:	28800079 	ld.w	$r25,$r3,0
1c000fb8:	00150004 	move	$r4,$r0
1c000fbc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000fc0:	4c000020 	jirl	$r0,$r1,0
1c000fc4:	03400000 	andi	$r0,$r0,0x0
1c000fc8:	03400000 	andi	$r0,$r0,0x0
1c000fcc:	03400000 	andi	$r0,$r0,0x0

1c000fd0 <puts>:
puts():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:15


int puts(char *s)
{
1c000fd0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000fd4:	29803061 	st.w	$r1,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:16
putstring(s);
1c000fd8:	57ff7bff 	bl	-136(0xfffff78) # 1c000f50 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:17
putchar('\r');
1c000fdc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000fe0:	57ff13ff 	bl	-240(0xfffff10) # 1c000ef0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:18
putchar('\n');
1c000fe4:	02802804 	addi.w	$r4,$r0,10(0xa)
1c000fe8:	57ff0bff 	bl	-248(0xfffff08) # 1c000ef0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:20
return 0;
}
1c000fec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000ff0:	00150004 	move	$r4,$r0
1c000ff4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000ff8:	4c000020 	jirl	$r0,$r1,0
1c000ffc:	03400000 	andi	$r0,$r0,0x0

1c001000 <printbase>:
printbase():
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c001000:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001004:	29816077 	st.w	$r23,$r3,88(0x58)
1c001008:	29817061 	st.w	$r1,$r3,92(0x5c)
1c00100c:	29815078 	st.w	$r24,$r3,84(0x54)
1c001010:	29814079 	st.w	$r25,$r3,80(0x50)
1c001014:	00150097 	move	$r23,$r4
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c001018:	580008e0 	beq	$r7,$r0,8(0x8) # 1c001020 <printbase+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7 (discriminator 1)
1c00101c:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c0010c0 <printbase+0xc0>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c001020:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c0010e0 <printbase+0xe0>
1c001024:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001028:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00102c:	001131ce 	sub.w	$r14,$r14,$r12
1c001030:	50000800 	b	8(0x8) # 1c001038 <printbase+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c001034:	001501b7 	move	$r23,$r13
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c001038:	00219aed 	mod.wu	$r13,$r23,$r6
1c00103c:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001044 <printbase+0x44>
1c001040:	002a0007 	break	0x7
1c001044:	2900018d 	st.b	$r13,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c001048:	001031d8 	add.w	$r24,$r14,$r12
1c00104c:	00211aed 	div.wu	$r13,$r23,$r6
1c001050:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001058 <printbase+0x58>
1c001054:	002a0007 	break	0x7
1c001058:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c00105c:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c001034 <printbase+0x34>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c001060:	600058b8 	blt	$r5,$r24,88(0x58) # 1c0010b8 <printbase+0xb8>
1c001064:	001500b7 	move	$r23,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001068:	02802419 	addi.w	$r25,$r0,9(0x9)
1c00106c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c001070:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001074:	00105d8c 	add.w	$r12,$r12,$r23
1c001078:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00107c:	60001717 	blt	$r24,$r23,20(0x14) # 1c001090 <printbase+0x90>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24 (discriminator 1)
1c001080:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001084:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c001088:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c001090 <printbase+0x90>
1c00108c:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c001090:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 4)
1c001094:	57fe5fff 	bl	-420(0xffffe5c) # 1c000ef0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c001098:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c001070 <printbase+0x70>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:28
	}
	return 0;
}
1c00109c:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c0010a0:	28816077 	ld.w	$r23,$r3,88(0x58)
1c0010a4:	28815078 	ld.w	$r24,$r3,84(0x54)
1c0010a8:	28814079 	ld.w	$r25,$r3,80(0x50)
1c0010ac:	00150004 	move	$r4,$r0
1c0010b0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c0010b4:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c0010b8:	00150305 	move	$r5,$r24
1c0010bc:	53ffabff 	b	-88(0xfffffa8) # 1c001064 <printbase+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c0010c0:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0010c4:	29803066 	st.w	$r6,$r3,12(0xc)
1c0010c8:	29802065 	st.w	$r5,$r3,8(0x8)
1c0010cc:	57fe27ff 	bl	-476(0xffffe24) # 1c000ef0 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:9
	value = -v;
1c0010d0:	00115c17 	sub.w	$r23,$r0,$r23
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c0010d4:	28802065 	ld.w	$r5,$r3,8(0x8)
1c0010d8:	28803066 	ld.w	$r6,$r3,12(0xc)
1c0010dc:	53ff4bff 	b	-184(0xfffff48) # 1c001024 <printbase+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c0010e0:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c00109c <printbase+0x9c>
1c0010e4:	00150018 	move	$r24,$r0
1c0010e8:	53ff7fff 	b	-132(0xfffff7c) # 1c001064 <printbase+0x64>
1c0010ec:	03400000 	andi	$r0,$r0,0x0

1c0010f0 <strlen>:
strlen():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:14
 * The strlen() function returns the length of string @s.
 * */
size_t
strlen(const char *s) {
    size_t cnt = 0;
    while (*s ++ != '\0') {
1c0010f0:	2800008c 	ld.b	$r12,$r4,0
1c0010f4:	58002580 	beq	$r12,$r0,36(0x24) # 1c001118 <strlen+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:13
    size_t cnt = 0;
1c0010f8:	0015000c 	move	$r12,$r0
1c0010fc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:15
        cnt ++;
1c001100:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:14
    while (*s ++ != '\0') {
1c001104:	0010308d 	add.w	$r13,$r4,$r12
1c001108:	280001ad 	ld.b	$r13,$r13,0
1c00110c:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c001100 <strlen+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:18
    }
    return cnt;
}
1c001110:	00150184 	move	$r4,$r12
1c001114:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:13
    size_t cnt = 0;
1c001118:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:18
}
1c00111c:	00150184 	move	$r4,$r12
1c001120:	4c000020 	jirl	$r0,$r1,0
1c001124:	03400000 	andi	$r0,$r0,0x0
1c001128:	03400000 	andi	$r0,$r0,0x0
1c00112c:	03400000 	andi	$r0,$r0,0x0

1c001130 <strnlen>:
strnlen():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:35
 * @len if there is no '\0' character among the first @len characters
 * pointed by @s.
 * */
size_t
strnlen(const char *s, size_t len) {
    size_t cnt = 0;
1c001130:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001134:	580028a0 	beq	$r5,$r0,40(0x28) # 1c00115c <strnlen+0x2c>
1c001138:	2800008d 	ld.b	$r13,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:35
    size_t cnt = 0;
1c00113c:	0015000c 	move	$r12,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001140:	5c0011a0 	bne	$r13,$r0,16(0x10) # 1c001150 <strnlen+0x20>
1c001144:	50001800 	b	24(0x18) # 1c00115c <strnlen+0x2c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36 (discriminator 1)
1c001148:	280001ad 	ld.b	$r13,$r13,0
1c00114c:	580011a0 	beq	$r13,$r0,16(0x10) # 1c00115c <strnlen+0x2c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:37
        cnt ++;
1c001150:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001154:	0010308d 	add.w	$r13,$r4,$r12
1c001158:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c001148 <strnlen+0x18>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:40
    }
    return cnt;
}
1c00115c:	00150184 	move	$r4,$r12
1c001160:	4c000020 	jirl	$r0,$r1,0
1c001164:	03400000 	andi	$r0,$r0,0x0
1c001168:	03400000 	andi	$r0,$r0,0x0
1c00116c:	03400000 	andi	$r0,$r0,0x0

1c001170 <strcpy>:
strcpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:59
char *
strcpy(char *dst, const char *src) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __strcpy(dst, src);
#else
    char *p = dst;
1c001170:	0015008c 	move	$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:60 (discriminator 1)
    while ((*p ++ = *src ++) != '\0')
1c001174:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c001178:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c00117c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001180:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c001184:	5ffff1a0 	bne	$r13,$r0,-16(0x3fff0) # 1c001174 <strcpy+0x4>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:64
        /* nothing */;
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001188:	4c000020 	jirl	$r0,$r1,0
1c00118c:	03400000 	andi	$r0,$r0,0x0

1c001190 <strncpy>:
strncpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:79
 * The return value is @dst
 * */
char *
strncpy(char *dst, const char *src, size_t len) {
    char *p = dst;
    while (len > 0) {
1c001190:	580028c0 	beq	$r6,$r0,40(0x28) # 1c0011b8 <strncpy+0x28>
1c001194:	00101886 	add.w	$r6,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:78
    char *p = dst;
1c001198:	0015008d 	move	$r13,$r4
1c00119c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:80
        if ((*p = *src) != '\0') {
1c0011a0:	280000ac 	ld.b	$r12,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:83
            src ++;
        }
        p ++, len --;
1c0011a4:	028005ad 	addi.w	$r13,$r13,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:80
        if ((*p = *src) != '\0') {
1c0011a8:	293ffdac 	st.b	$r12,$r13,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:81
            src ++;
1c0011ac:	0012b00c 	sltu	$r12,$r0,$r12
1c0011b0:	001030a5 	add.w	$r5,$r5,$r12
/home/132/git_rep/perf/soft/perf_func/lib/string.c:79
    while (len > 0) {
1c0011b4:	5fffeda6 	bne	$r13,$r6,-20(0x3ffec) # 1c0011a0 <strncpy+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:86
    }
    return dst;
}
1c0011b8:	4c000020 	jirl	$r0,$r1,0
1c0011bc:	03400000 	andi	$r0,$r0,0x0

1c0011c0 <strncmp>:
strncmp():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101
 * the characters differ, until a terminating null-character is reached, or
 * until @n characters match in both strings, whichever happens first.
 * */
int
strncmp(const char *s1, const char *s2, size_t n) {
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c0011c0:	580040c0 	beq	$r6,$r0,64(0x40) # 1c001200 <strncmp+0x40>
1c0011c4:	2800008d 	ld.b	$r13,$r4,0
1c0011c8:	280000ae 	ld.b	$r14,$r5,0
1c0011cc:	580041a0 	beq	$r13,$r0,64(0x40) # 1c00120c <strncmp+0x4c>
1c0011d0:	5c003dae 	bne	$r13,$r14,60(0x3c) # 1c00120c <strncmp+0x4c>
1c0011d4:	001018a6 	add.w	$r6,$r5,$r6
1c0011d8:	50001c00 	b	28(0x1c) # 1c0011f4 <strncmp+0x34>
1c0011dc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101 (discriminator 1)
1c0011e0:	2800008d 	ld.b	$r13,$r4,0
1c0011e4:	580025a0 	beq	$r13,$r0,36(0x24) # 1c001208 <strncmp+0x48>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101 (discriminator 2)
1c0011e8:	2800018e 	ld.b	$r14,$r12,0
1c0011ec:	00150185 	move	$r5,$r12
1c0011f0:	5c001dae 	bne	$r13,$r14,28(0x1c) # 1c00120c <strncmp+0x4c>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:102
        n --, s1 ++, s2 ++;
1c0011f4:	028004ac 	addi.w	$r12,$r5,1(0x1)
1c0011f8:	02800484 	addi.w	$r4,$r4,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:101
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c0011fc:	5fffe586 	bne	$r12,$r6,-28(0x3ffe4) # 1c0011e0 <strncmp+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    }
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001200:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c001204:	4c000020 	jirl	$r0,$r1,0
1c001208:	280004ae 	ld.b	$r14,$r5,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:100
strncmp(const char *s1, const char *s2, size_t n) {
1c00120c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001210:	2980306d 	st.w	$r13,$r3,12(0xc)
1c001214:	2a00306d 	ld.bu	$r13,$r3,12(0xc)
1c001218:	2980306e 	st.w	$r14,$r3,12(0xc)
1c00121c:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c001220:	02804063 	addi.w	$r3,$r3,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001224:	001111a4 	sub.w	$r4,$r13,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:105
}
1c001228:	4c000020 	jirl	$r0,$r1,0
1c00122c:	03400000 	andi	$r0,$r0,0x0

1c001230 <strchr>:
strchr():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
 * The strchr() function returns a pointer to the first occurrence of
 * character in @s. If the value is not found, the function returns 'NULL'.
 * */
char *
strchr(const char *s, char c) {
    while (*s != '\0') {
1c001230:	2800008d 	ld.b	$r13,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:116
strchr(const char *s, char c) {
1c001234:	0015008c 	move	$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
    while (*s != '\0') {
1c001238:	58001da0 	beq	$r13,$r0,28(0x1c) # 1c001254 <strchr+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:118
        if (*s == c) {
1c00123c:	5c000da5 	bne	$r13,$r5,12(0xc) # 1c001248 <strchr+0x18>
1c001240:	50002800 	b	40(0x28) # 1c001268 <strchr+0x38>
1c001244:	58001da5 	beq	$r13,$r5,28(0x1c) # 1c001260 <strchr+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:121
            return (char *)s;
        }
        s ++;
1c001248:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:117
    while (*s != '\0') {
1c00124c:	2800018d 	ld.b	$r13,$r12,0
1c001250:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c001244 <strchr+0x14>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:123
    }
    return NULL;
1c001254:	00150004 	move	$r4,$r0
1c001258:	4c000020 	jirl	$r0,$r1,0
1c00125c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:121
        s ++;
1c001260:	00150184 	move	$r4,$r12
/home/132/git_rep/perf/soft/perf_func/lib/string.c:124
}
1c001264:	4c000020 	jirl	$r0,$r1,0
1c001268:	4c000020 	jirl	$r0,$r1,0
1c00126c:	03400000 	andi	$r0,$r0,0x0

1c001270 <strfind>:
strfind():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:137
 * not found in @s, then it returns a pointer to the null byte at the
 * end of @s, rather than 'NULL'.
 * */
char *
strfind(const char *s, char c) {
    while (*s != '\0') {
1c001270:	2800008c 	ld.b	$r12,$r4,0
1c001274:	58001d80 	beq	$r12,$r0,28(0x1c) # 1c001290 <strfind+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:138
        if (*s == c) {
1c001278:	5c000cac 	bne	$r5,$r12,12(0xc) # 1c001284 <strfind+0x14>
1c00127c:	50001800 	b	24(0x18) # 1c001294 <strfind+0x24>
1c001280:	58001185 	beq	$r12,$r5,16(0x10) # 1c001290 <strfind+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:141
            break;
        }
        s ++;
1c001284:	02800484 	addi.w	$r4,$r4,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:137
    while (*s != '\0') {
1c001288:	2800008c 	ld.b	$r12,$r4,0
1c00128c:	5ffff580 	bne	$r12,$r0,-12(0x3fff4) # 1c001280 <strfind+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:144
    }
    return (char *)s;
}
1c001290:	4c000020 	jirl	$r0,$r1,0
1c001294:	4c000020 	jirl	$r0,$r1,0
1c001298:	03400000 	andi	$r0,$r0,0x0
1c00129c:	03400000 	andi	$r0,$r0,0x0

1c0012a0 <memset>:
memset():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
memset(void *s, char c, size_t n) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memset(s, c, n);
#else
    char *p = s;
    while (n -- > 0) {
1c0012a0:	58001cc0 	beq	$r6,$r0,28(0x1c) # 1c0012bc <memset+0x1c>
1c0012a4:	00101886 	add.w	$r6,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:250
    char *p = s;
1c0012a8:	0015008c 	move	$r12,$r4
1c0012ac:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:252
        *p ++ = c;
1c0012b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0012b4:	293ffd85 	st.b	$r5,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c0012b8:	5ffff986 	bne	$r12,$r6,-8(0x3fff8) # 1c0012b0 <memset+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:256
    }
    return s;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0012bc:	4c000020 	jirl	$r0,$r1,0

1c0012c0 <memcpy>:
memcpy():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:279
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memcpy(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    while (n -- > 0) {
1c0012c0:	580024c0 	beq	$r6,$r0,36(0x24) # 1c0012e4 <memcpy+0x24>
1c0012c4:	001018a6 	add.w	$r6,$r5,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:278
    char *d = dst;
1c0012c8:	0015008c 	move	$r12,$r4
1c0012cc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:280
        *d ++ = *s ++;
1c0012d0:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0012d4:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c0012d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0012dc:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:279
    while (n -- > 0) {
1c0012e0:	5ffff0a6 	bne	$r5,$r6,-16(0x3fff0) # 1c0012d0 <memcpy+0x10>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:284
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0012e4:	4c000020 	jirl	$r0,$r1,0
1c0012e8:	03400000 	andi	$r0,$r0,0x0
1c0012ec:	03400000 	andi	$r0,$r0,0x0

1c0012f0 <memmove>:
memmove():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:302
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memmove(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    if (s < d && s + n > d) {
1c0012f0:	6c0030a4 	bgeu	$r5,$r4,48(0x30) # 1c001320 <memmove+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:302 (discriminator 1)
1c0012f4:	001018ac 	add.w	$r12,$r5,$r6
1c0012f8:	6c00288c 	bgeu	$r4,$r12,40(0x28) # 1c001320 <memmove+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:303
        s += n, d += n;
1c0012fc:	0010188d 	add.w	$r13,$r4,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:304
        while (n -- > 0) {
1c001300:	580044c0 	beq	$r6,$r0,68(0x44) # 1c001344 <memmove+0x54>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:305
            *-- d = *-- s;
1c001304:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001308:	2800018e 	ld.b	$r14,$r12,0
1c00130c:	02bffdad 	addi.w	$r13,$r13,-1(0xfff)
1c001310:	290001ae 	st.b	$r14,$r13,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:304
        while (n -- > 0) {
1c001314:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c001304 <memmove+0x14>
1c001318:	4c000020 	jirl	$r0,$r1,0
1c00131c:	03400000 	andi	$r0,$r0,0x0
1c001320:	001018ae 	add.w	$r14,$r5,$r6
/home/132/git_rep/perf/soft/perf_func/lib/string.c:308
        }
    } else {
        while (n -- > 0) {
1c001324:	0015008c 	move	$r12,$r4
1c001328:	580020c0 	beq	$r6,$r0,32(0x20) # 1c001348 <memmove+0x58>
1c00132c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:309
            *d ++ = *s ++;
1c001330:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c001334:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c001338:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00133c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:308
        while (n -- > 0) {
1c001340:	5ffff0ae 	bne	$r5,$r14,-16(0x3fff0) # 1c001330 <memmove+0x40>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:314
        }
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001344:	4c000020 	jirl	$r0,$r1,0
1c001348:	4c000020 	jirl	$r0,$r1,0
1c00134c:	03400000 	andi	$r0,$r0,0x0

1c001350 <memcmp>:
memcmp():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:334
 * */
int
memcmp(const void *v1, const void *v2, size_t n) {
    const char *s1 = (const char *)v1;
    const char *s2 = (const char *)v2;
    while (n -- > 0) {
1c001350:	580030c0 	beq	$r6,$r0,48(0x30) # 1c001380 <memcmp+0x30>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:335
        if (*s1 != *s2) {
1c001354:	2800008c 	ld.b	$r12,$r4,0
1c001358:	280000ad 	ld.b	$r13,$r5,0
1c00135c:	00101886 	add.w	$r6,$r4,$r6
1c001360:	580015ac 	beq	$r13,$r12,20(0x14) # 1c001374 <memcmp+0x24>
1c001364:	50002400 	b	36(0x24) # 1c001388 <memcmp+0x38>
1c001368:	2800008c 	ld.b	$r12,$r4,0
1c00136c:	280000ad 	ld.b	$r13,$r5,0
1c001370:	5c00198d 	bne	$r12,$r13,24(0x18) # 1c001388 <memcmp+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:338
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
        }
        s1 ++, s2 ++;
1c001374:	02800484 	addi.w	$r4,$r4,1(0x1)
1c001378:	028004a5 	addi.w	$r5,$r5,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:334
    while (n -- > 0) {
1c00137c:	5fffec86 	bne	$r4,$r6,-20(0x3ffec) # 1c001368 <memcmp+0x18>
/home/132/git_rep/perf/soft/perf_func/lib/string.c:340
    }
    return 0;
1c001380:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c001384:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/string.c:331
memcmp(const void *v1, const void *v2, size_t n) {
1c001388:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c00138c:	2980306c 	st.w	$r12,$r3,12(0xc)
1c001390:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c001394:	2980306d 	st.w	$r13,$r3,12(0xc)
1c001398:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c00139c:	02804063 	addi.w	$r3,$r3,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0013a0:	00111184 	sub.w	$r4,$r12,$r4
/home/132/git_rep/perf/soft/perf_func/lib/string.c:341
}
1c0013a4:	4c000020 	jirl	$r0,$r1,0
1c0013a8:	03400000 	andi	$r0,$r0,0x0
1c0013ac:	03400000 	andi	$r0,$r0,0x0

1c0013b0 <bzero>:
memset():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c0013b0:	580014a0 	beq	$r5,$r0,20(0x14) # 1c0013c4 <bzero+0x14>
1c0013b4:	00101485 	add.w	$r5,$r4,$r5
/home/132/git_rep/perf/soft/perf_func/lib/string.c:252
        *p ++ = c;
1c0013b8:	02800484 	addi.w	$r4,$r4,1(0x1)
1c0013bc:	293ffc80 	st.b	$r0,$r4,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/string.c:251
    while (n -- > 0) {
1c0013c0:	5ffff885 	bne	$r4,$r5,-8(0x3fff8) # 1c0013b8 <bzero+0x8>
bzero():
/home/132/git_rep/perf/soft/perf_func/lib/string.c:345

void bzero(void *s, size_t n){
	memset(s, 0, n);
}
1c0013c4:	4c000020 	jirl	$r0,$r1,0
1c0013c8:	03400000 	andi	$r0,$r0,0x0
1c0013cc:	03400000 	andi	$r0,$r0,0x0

1c0013d0 <get_count>:
get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c0013d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0013d4:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c0013d8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0013dc:	28800324 	ld.w	$r4,$r25,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
    return  _get_count();
}
1c0013e0:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0013e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013e8:	4c000020 	jirl	$r0,$r1,0
1c0013ec:	03400000 	andi	$r0,$r0,0x0

1c0013f0 <_get_count>:
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
1c0013f0:	53ffe3ff 	b	-32(0xfffffe0) # 1c0013d0 <get_count>
1c0013f4:	03400000 	andi	$r0,$r0,0x0
1c0013f8:	03400000 	andi	$r0,$r0,0x0
1c0013fc:	03400000 	andi	$r0,$r0,0x0

1c001400 <get_count_my>:
get_count_my():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c001400:	00006004 	rdtimel.w	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c001404:	4c000020 	jirl	$r0,$r1,0
1c001408:	03400000 	andi	$r0,$r0,0x0
1c00140c:	03400000 	andi	$r0,$r0,0x0

1c001410 <clock_gettime>:
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c001410:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001414:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001418:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00141c:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001420:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c001424:	001c35ed 	mul.w	$r13,$r15,$r13
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001428:	02819011 	addi.w	$r17,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00142c:	1400030e 	lu12i.w	$r14,24(0x18)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001430:	002145f0 	div.wu	$r16,$r15,$r17
1c001434:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c00143c <clock_gettime+0x2c>
1c001438:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00143c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001440:	039a81ce 	ori	$r14,$r14,0x6a0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001444:	0021b211 	mod.wu	$r17,$r16,$r12
1c001448:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001450 <clock_gettime+0x40>
1c00144c:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001450:	002139f0 	div.wu	$r16,$r15,$r14
1c001454:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c00145c <clock_gettime+0x4c>
1c001458:	002a0007 	break	0x7
1c00145c:	0021b20e 	mod.wu	$r14,$r16,$r12
1c001460:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001468 <clock_gettime+0x58>
1c001464:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c001468:	298000a0 	st.w	$r0,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00146c:	298030ae 	st.w	$r14,$r5,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001470:	298020b1 	st.w	$r17,$r5,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c001474:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001478:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00147c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001480:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001488 <clock_gettime+0x78>
1c001484:	002a0007 	break	0x7
1c001488:	298010ae 	st.w	$r14,$r5,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
}
1c00148c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001490:	4c000020 	jirl	$r0,$r1,0
1c001494:	03400000 	andi	$r0,$r0,0x0
1c001498:	03400000 	andi	$r0,$r0,0x0
1c00149c:	03400000 	andi	$r0,$r0,0x0

1c0014a0 <get_clock>:
get_clock():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
1c0014a0:	53ff33ff 	b	-208(0xfffff30) # 1c0013d0 <get_count>
1c0014a4:	03400000 	andi	$r0,$r0,0x0
1c0014a8:	03400000 	andi	$r0,$r0,0x0
1c0014ac:	03400000 	andi	$r0,$r0,0x0

1c0014b0 <get_ns>:
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c0014b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0014b4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c0014b8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0014bc:	28800324 	ld.w	$r4,$r25,0
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c0014c0:	0280280c 	addi.w	$r12,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:57
    return n;
}
1c0014c4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0014c8:	001c3084 	mul.w	$r4,$r4,$r12
1c0014cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0014d0:	4c000020 	jirl	$r0,$r1,0
1c0014d4:	03400000 	andi	$r0,$r0,0x0
1c0014d8:	03400000 	andi	$r0,$r0,0x0
1c0014dc:	03400000 	andi	$r0,$r0,0x0

1c0014e0 <get_us>:
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:61


unsigned long get_us(void)
{
1c0014e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0014e4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c0014e8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0014ec:	28800324 	ld.w	$r4,$r25,0
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c0014f0:	0281900c 	addi.w	$r12,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:66
    return n;
}
1c0014f4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0014f8:	0021308d 	div.wu	$r13,$r4,$r12
1c0014fc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001504 <get_us+0x24>
1c001500:	002a0007 	break	0x7
1c001504:	001501a4 	move	$r4,$r13
1c001508:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00150c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <rodata_end-0xcb0>:
1c080000:	69727473 	bltu	$r3,$r19,94836(0x17274) # 1c097274 <_end+0x161bc>
1c080004:	7320676e 	0x7320676e
1c080008:	63726165 	blt	$r11,$r5,-36256(0x37260) # 1c077268 <_data_lma+0x75d58>
1c08000c:	65742068 	bge	$r3,$r8,95264(0x17420) # 1c09742c <_end+0x16374>
1c080010:	62207473 	blt	$r3,$r19,-122764(0x22074) # 1c062084 <_data_lma+0x60b74>
1c080014:	6e696765 	bgeu	$r27,$r5,-104092(0x26964) # 1c066978 <_data_lma+0x65468>
1c080018:	0000002e 	0x0000002e
1c08001c:	69727473 	bltu	$r3,$r19,94836(0x17274) # 1c097290 <_end+0x161d8>
1c080020:	7320676e 	0x7320676e
1c080024:	63726165 	blt	$r11,$r5,-36256(0x37260) # 1c077284 <_data_lma+0x75d74>
1c080028:	41502068 	beqz	$r3,2183200(0x215020) # 1c295048 <_stack+0x19504c>
1c08002c:	00215353 	div.wu	$r19,$r26,$r20
1c080030:	69727473 	bltu	$r3,$r19,94836(0x17274) # 1c0972a4 <_end+0x161ec>
1c080034:	7320676e 	0x7320676e
1c080038:	63726165 	blt	$r11,$r5,-36256(0x37260) # 1c077298 <_data_lma+0x75d88>
1c08003c:	52452068 	b	27411744(0x1a24520) # 1daa455c <_stack+0x19a4560>
1c080040:	21524f52 	sc.w	$r18,$r26,21068(0x524c)
1c080044:	00002121 	clo.d	$r1,$r9
1c080048:	69727473 	bltu	$r3,$r19,94836(0x17274) # 1c0972bc <_end+0x16204>
1c08004c:	7320676e 	0x7320676e
1c080050:	63726165 	blt	$r11,$r5,-36256(0x37260) # 1c0772b0 <_data_lma+0x75da0>
1c080054:	54203a68 	bl	-106946504(0x9a02038) # 15a8208c <__stack_size+0x15a7208c>
1c080058:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861cc <_end+0x5114>
1c08005c:	756f4320 	0x756f4320
1c080060:	5328746e 	b	29042804(0x1bb2874) # 1dc328d4 <_stack+0x1b328d8>
1c080064:	6320436f 	blt	$r27,$r15,-57280(0x32040) # 1c0720a4 <_data_lma+0x70b94>
1c080068:	746e756f 	0x746e756f
1c08006c:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c080070:	78257830 	0x78257830
1c080074:	0000000a 	0x0000000a
1c080078:	69727473 	bltu	$r3,$r19,94836(0x17274) # 1c0972ec <_end+0x16234>
1c08007c:	7320676e 	0x7320676e
1c080080:	63726165 	blt	$r11,$r5,-36256(0x37260) # 1c0772e0 <_data_lma+0x75dd0>
1c080084:	54203a68 	bl	-106946504(0x9a02038) # 15a820bc <__stack_size+0x15a720bc>
1c080088:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861fc <_end+0x5144>
1c08008c:	756f4320 	0x756f4320
1c080090:	4328746e 	beqz	$r3,3876980(0x3b2874) # 1c432904 <_stack+0x332908>
1c080094:	63205550 	blt	$r10,$r16,-57260(0x32054) # 1c0720e8 <_data_lma+0x70bd8>
1c080098:	746e756f 	0x746e756f
1c08009c:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c0800a0:	78257830 	0x78257830
1c0800a4:	0000000a 	0x0000000a
1c0800a8:	22732522 	ll.d	$r2,$r9,29476(0x7324)
1c0800ac:	25736920 	stptr.w	$r0,$r9,29544(0x7368)
1c0800b0:	6e692073 	bgeu	$r3,$r19,-104160(0x26920) # 1c0669d0 <_data_lma+0x654c0>
1c0800b4:	73252220 	vsat.d	$vr0,$vr17,0x8
1c0800b8:	00000022 	0x00000022
1c0800bc:	25225b20 	stptr.w	$r0,$r25,8792(0x2258)
1c0800c0:	005d2273 	0x005d2273
1c0800c4:	00626261 	bstrins.w	$r1,$r19,0x2,0x18
1c0800c8:	00756f79 	bstrins.w	$r25,$r27,0x15,0x1b
1c0800cc:	00746f6e 	bstrins.w	$r14,$r27,0x14,0x1b
1c0800d0:	00007469 	0x00007469
1c0800d4:	00646164 	bstrins.w	$r4,$r11,0x4,0x18
1c0800d8:	006f6f79 	bstrins.w	$r25,$r27,0xf,0x1b
1c0800dc:	006f6f68 	bstrins.w	$r8,$r27,0xf,0x1b
1c0800e0:	0000686f 	rdtime.d	$r15,$r3
1c0800e4:	00007878 	0x00007878
1c0800e8:	00000078 	0x00000078
1c0800ec:	6c656966 	bgeu	$r11,$r6,25960(0x6568) # 1c086654 <_end+0x559c>
1c0800f0:	00000064 	0x00000064
1c0800f4:	0077656e 	bstrins.w	$r14,$r11,0x17,0x19
1c0800f8:	00776f72 	bstrins.w	$r18,$r27,0x17,0x1b
1c0800fc:	69676572 	bltu	$r11,$r18,92004(0x16764) # 1c096860 <_end+0x157a8>
1c080100:	0000656d 	rdtimeh.w	$r13,$r11
1c080104:	6d6f6f62 	bgeu	$r27,$r2,94060(0x16f6c) # 1c097070 <_end+0x15fb8>
1c080108:	00000000 	0x00000000
1c08010c:	74616874 	xvabsd.w	$xr20,$xr3,$xr26
1c080110:	00000000 	0x00000000
1c080114:	61706d69 	blt	$r11,$r9,94316(0x1706c) # 1c097180 <_end+0x160c8>
1c080118:	00007463 	0x00007463
1c08011c:	00646e61 	bstrins.w	$r1,$r19,0x4,0x1b
1c080120:	6d6f6f7a 	bgeu	$r27,$r26,94060(0x16f6c) # 1c09708c <_end+0x15fd4>
1c080124:	00000000 	0x00000000
1c080128:	74786574 	0x74786574
1c08012c:	00657275 	bstrins.w	$r21,$r19,0x5,0x1c
1c080130:	6e67616d 	bgeu	$r11,$r13,-104608(0x26760) # 1c066890 <_data_lma+0x65380>
1c080134:	00007465 	0x00007465
1c080138:	6d6f6f64 	bgeu	$r27,$r4,94060(0x16f6c) # 1c0970a4 <_end+0x15fec>
1c08013c:	00000000 	0x00000000
1c080140:	6d6f6f6c 	bgeu	$r27,$r12,94060(0x16f6c) # 1c0970ac <_end+0x15ff4>
1c080144:	00000000 	0x00000000
1c080148:	71657266 	0x71657266
1c08014c:	00000000 	0x00000000
1c080150:	72727563 	0x72727563
1c080154:	00746e65 	bstrins.w	$r5,$r19,0x14,0x1b
1c080158:	73616870 	vssrani.w.d	$vr16,$vr3,0x1a
1c08015c:	00000065 	0x00000065
1c080160:	67616d69 	bge	$r11,$r9,-40596(0x3616c) # 1c0762cc <_data_lma+0x74dbc>
1c080164:	00007365 	0x00007365
1c080168:	65707061 	bge	$r3,$r1,94320(0x17070) # 1c0971d8 <_end+0x16120>
1c08016c:	00737261 	bstrins.w	$r1,$r19,0x13,0x1c
1c080170:	646e6f63 	bge	$r27,$r3,28268(0x6e6c) # 1c086fdc <_end+0x5f24>
1c080174:	6f746375 	bgeu	$r27,$r21,-35744(0x37460) # 1c0775d4 <_data_lma+0x760c4>
1c080178:	00000072 	0x00000072
1c08017c:	65766177 	bge	$r11,$r23,95840(0x17660) # 1c0977dc <_end+0x16724>
1c080180:	0000007a 	0x0000007a
1c080184:	65657266 	bge	$r19,$r6,91504(0x16570) # 1c0966f4 <_end+0x1563c>
1c080188:	00000000 	0x00000000
1c08018c:	6d726574 	bgeu	$r11,$r20,94820(0x17264) # 1c0973f0 <_end+0x16338>
1c080190:	00006465 	rdtimeh.w	$r5,$r3
1c080194:	766f7270 	0x766f7270
1c080198:	00656469 	bstrins.w	$r9,$r3,0x5,0x19
1c08019c:	00726f66 	bstrins.w	$r6,$r27,0x12,0x1b
1c0801a0:	75727473 	0x75727473
1c0801a4:	00007463 	0x00007463
1c0801a8:	756f6261 	0x756f6261
1c0801ac:	00000074 	0x00000074
1c0801b0:	65766168 	bge	$r11,$r8,95840(0x17660) # 1c097810 <_end+0x16758>
1c0801b4:	00000000 	0x00000000
1c0801b8:	706f7270 	0x706f7270
1c0801bc:	00007265 	0x00007265
1c0801c0:	6f766e69 	bgeu	$r19,$r9,-35220(0x3766c) # 1c07782c <_data_lma+0x7631c>
1c0801c4:	0065766c 	bstrins.w	$r12,$r19,0x5,0x1d
1c0801c8:	63736564 	blt	$r11,$r4,-35996(0x37364) # 1c07752c <_data_lma+0x7601c>
1c0801cc:	65626972 	bge	$r11,$r18,90728(0x16268) # 1c096434 <_end+0x1537c>
1c0801d0:	00796c64 	bstrins.w	$r4,$r3,0x19,0x1b
1c0801d4:	74616874 	xvabsd.w	$xr20,$xr3,$xr26
1c0801d8:	00000073 	0x00000073
1c0801dc:	63617073 	blt	$r3,$r19,-40592(0x36170) # 1c07634c <_data_lma+0x74e3c>
1c0801e0:	00007365 	0x00007365
1c0801e4:	63726963 	blt	$r11,$r3,-36248(0x37268) # 1c07744c <_data_lma+0x75f3c>
1c0801e8:	74736d75 	xvmin.w	$xr21,$xr11,$xr27
1c0801ec:	65636e61 	bge	$r19,$r1,90988(0x1636c) # 1c096558 <_end+0x154a0>
1c0801f0:	00000000 	0x00000000
1c0801f4:	00656874 	bstrins.w	$r20,$r3,0x5,0x1a
1c0801f8:	626d656d 	blt	$r11,$r13,-103068(0x26d64) # 1c066f5c <_data_lma+0x65a4c>
1c0801fc:	00007265 	0x00007265
1c080200:	68637573 	bltu	$r11,$r19,25460(0x6374) # 1c086574 <_end+0x54bc>
1c080204:	00000000 	0x00000000
1c080208:	64697567 	bge	$r11,$r7,26996(0x6974) # 1c086b7c <_end+0x5ac4>
1c08020c:	00000065 	0x00000065
1c080210:	61676572 	blt	$r11,$r18,92004(0x16764) # 1c096974 <_end+0x158bc>
1c080214:	00006472 	rdtimeh.w	$r18,$r3
1c080218:	6966666f 	bltu	$r19,$r15,91748(0x16664) # 1c09687c <_end+0x157c4>
1c08021c:	73726563 	0x73726563
1c080220:	00000000 	0x00000000
1c080224:	6c706d69 	bgeu	$r11,$r9,28780(0x706c) # 1c087290 <_end+0x61d8>
1c080228:	6e656d65 	bgeu	$r11,$r5,-105108(0x2656c) # 1c066794 <_data_lma+0x65284>
1c08022c:	00000074 	0x00000074
1c080230:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # 1c066ba0 <_data_lma+0x65690>
1c080234:	61706963 	blt	$r11,$r3,94312(0x17068) # 1c09729c <_end+0x161e4>
1c080238:	6974696c 	bltu	$r11,$r12,95336(0x17468) # 1c0976a0 <_end+0x165e8>
1c08023c:	00007365 	0x00007365
1c080240:	62626163 	blt	$r11,$r3,-105888(0x26260) # 1c0664a0 <_data_lma+0x64f90>
1c080244:	00006569 	rdtimeh.w	$r9,$r11
1c080248:	72756f79 	0x72756f79
1c08024c:	00000000 	0x00000000
1c080250:	69207449 	bltu	$r2,$r9,73844(0x12074) # 1c0922c4 <_end+0x1120c>
1c080254:	74276e73 	0x74276e73
1c080258:	72656820 	0x72656820
1c08025c:	00000065 	0x00000065
1c080260:	20747542 	ll.w	$r2,$r10,29812(0x7474)
1c080264:	69207469 	bltu	$r3,$r9,73844(0x12074) # 1c0922d8 <_end+0x11220>
1c080268:	65682073 	bge	$r3,$r19,92192(0x16820) # 1c096a88 <_end+0x159d0>
1c08026c:	00006572 	rdtimeh.w	$r18,$r11
1c080270:	61646f68 	blt	$r27,$r8,91244(0x1646c) # 1c0966dc <_end+0x15624>
1c080274:	00000064 	0x00000064
1c080278:	686f6f79 	bltu	$r27,$r25,28524(0x6f6c) # 1c0871e4 <_end+0x612c>
1c08027c:	00006f6f 	cpucfg	$r15,$r27
1c080280:	72206e49 	0x72206e49
1c080284:	6e656365 	bgeu	$r27,$r5,-105120(0x26560) # 1c0667e4 <_data_lma+0x652d4>
1c080288:	65792074 	bge	$r3,$r20,96544(0x17920) # 1c097ba8 <_end+0x16af0>
1c08028c:	2c737261 	vst	$vr1,$r19,-804(0xcdc)
1c080290:	65687420 	bge	$r1,$r0,92276(0x16874) # 1c096b04 <_end+0x15a4c>
1c080294:	65696620 	bge	$r17,$r0,92516(0x16964) # 1c096bf8 <_end+0x15b40>
1c080298:	6f20646c 	bgeu	$r3,$r12,-57244(0x32064) # 1c0722fc <_data_lma+0x70dec>
1c08029c:	68702066 	bltu	$r3,$r6,28704(0x7020) # 1c0872bc <_end+0x6204>
1c0802a0:	6e6f746f 	bgeu	$r3,$r15,-102540(0x26f74) # 1c067214 <_data_lma+0x65d04>
1c0802a4:	00206369 	div.w	$r9,$r27,$r24
1c0802a8:	73797263 	0x73797263
1c0802ac:	736c6174 	vssrarni.bu.h	$vr20,$vr11,0x8
1c0802b0:	73616820 	vssrani.w.d	$vr0,$vr1,0x1a
1c0802b4:	756f6620 	0x756f6620
1c0802b8:	6e20646e 	bgeu	$r3,$r14,-122780(0x22064) # 1c06231c <_data_lma+0x60e0c>
1c0802bc:	00007765 	0x00007765
1c0802c0:	6c707061 	bgeu	$r3,$r1,28784(0x7070) # 1c087330 <_end+0x6278>
1c0802c4:	74616369 	xvabsd.w	$xr9,$xr27,$xr24
1c0802c8:	736e6f69 	vssrarni.du.q	$vr9,$vr27,0x1b
1c0802cc:	206e6920 	ll.w	$r0,$r9,28264(0x6e68)
1c0802d0:	20656874 	ll.w	$r20,$r3,25960(0x6568)
1c0802d4:	61204652 	blt	$r18,$r18,73796(0x12044) # 1c092318 <_end+0x11260>
1c0802d8:	6d20646e 	bgeu	$r3,$r14,73828(0x12064) # 1c09233c <_end+0x11284>
1c0802dc:	6f726369 	bgeu	$r27,$r9,-36256(0x37260) # 1c07753c <_data_lma+0x7602c>
1c0802e0:	65766177 	bge	$r11,$r23,95840(0x17660) # 1c097940 <_end+0x16888>
1c0802e4:	00000000 	0x00000000
1c0802e8:	69676572 	bltu	$r11,$r18,92004(0x16764) # 1c096a4c <_end+0x15994>
1c0802ec:	202e656d 	ll.w	$r13,$r11,11876(0x2e64)
1c0802f0:	656e2041 	bge	$r2,$r1,93728(0x16e20) # 1c097110 <_end+0x16058>
1c0802f4:	79742077 	0x79742077
1c0802f8:	6f206570 	bgeu	$r11,$r16,-57244(0x32064) # 1c07235c <_data_lma+0x70e4c>
1c0802fc:	656d2066 	bge	$r3,$r6,93472(0x16d20) # 1c09701c <_end+0x15f64>
1c080300:	6c6c6174 	bgeu	$r11,$r20,27744(0x6c60) # 1c086f60 <_end+0x5ea8>
1c080304:	00006369 	rdtimel.w	$r9,$r27
1c080308:	63656c65 	blt	$r3,$r5,-39572(0x3656c) # 1c076874 <_data_lma+0x75364>
1c08030c:	6d6f7274 	bgeu	$r19,$r20,94064(0x16f70) # 1c09727c <_end+0x161c4>
1c080310:	656e6761 	bge	$r27,$r1,93796(0x16e64) # 1c097174 <_end+0x160bc>
1c080314:	20636974 	ll.w	$r20,$r11,25448(0x6368)
1c080318:	73797263 	0x73797263
1c08031c:	206c6174 	ll.w	$r20,$r11,27744(0x6c60)
1c080320:	20736168 	ll.w	$r8,$r11,29536(0x7360)
1c080324:	6e656562 	bgeu	$r11,$r2,-105116(0x26564) # 1c066888 <_data_lma+0x65378>
1c080328:	00000000 	0x00000000
1c08032c:	65766564 	bge	$r11,$r4,95844(0x17664) # 1c097990 <_end+0x168d8>
1c080330:	65706f6c 	bge	$r27,$r12,94316(0x1706c) # 1c09739c <_end+0x162e4>
1c080334:	68742064 	bltu	$r3,$r4,29728(0x7420) # 1c087754 <_end+0x669c>
1c080338:	69207461 	bltu	$r3,$r1,73844(0x12074) # 1c0923ac <_end+0x112f4>
1c08033c:	61682073 	blt	$r3,$r19,92192(0x16820) # 1c096b5c <_end+0x15aa4>
1c080340:	676e6976 	bge	$r11,$r22,-37272(0x36e68) # 1c0771a8 <_data_lma+0x75c98>
1c080344:	00006120 	rdtimel.w	$r0,$r9
1c080348:	6e676973 	bgeu	$r11,$r19,-104600(0x26768) # 1c066ab0 <_data_lma+0x655a0>
1c08034c:	63696669 	blt	$r19,$r9,-38556(0x36964) # 1c076cb0 <_data_lma+0x757a0>
1c080350:	20746e61 	ll.w	$r1,$r19,29804(0x746c)
1c080354:	61706d69 	blt	$r11,$r9,94316(0x1706c) # 1c0973c0 <_end+0x16308>
1c080358:	6f207463 	bgeu	$r3,$r3,-57228(0x32074) # 1c0723cc <_data_lma+0x70ebc>
1c08035c:	6874206e 	bltu	$r3,$r14,29728(0x7420) # 1c08777c <_end+0x66c4>
1c080360:	69662065 	bltu	$r3,$r5,91680(0x16620) # 1c096980 <_end+0x158c8>
1c080364:	20646c65 	ll.w	$r5,$r3,25708(0x646c)
1c080368:	0000666f 	rdtimeh.w	$r15,$r19
1c08036c:	65746e61 	bge	$r19,$r1,95340(0x1746c) # 1c0977d8 <_end+0x16720>
1c080370:	73616e6e 	vssrani.w.d	$vr14,$vr19,0x1b
1c080374:	7449202e 	xvssub.w	$xr14,$xr1,$xr8
1c080378:	6e6f6320 	bgeu	$r25,$r0,-102560(0x26f60) # 1c0672d8 <_data_lma+0x65dc8>
1c08037c:	74736973 	xvmin.w	$xr19,$xr11,$xr26
1c080380:	666f2073 	bge	$r3,$r19,-102624(0x26f20) # 1c0672a0 <_data_lma+0x65d90>
1c080384:	00006120 	rdtimel.w	$r0,$r9
1c080388:	646e6f63 	bge	$r27,$r3,28268(0x6e6c) # 1c0871f4 <_end+0x613c>
1c08038c:	69746375 	bltu	$r27,$r21,95328(0x17460) # 1c0977ec <_end+0x16734>
1c080390:	73206576 	0x73206576
1c080394:	61667275 	blt	$r19,$r21,91760(0x16670) # 1c096a04 <_end+0x1594c>
1c080398:	202c6563 	ll.w	$r3,$r11,11364(0x2c64)
1c08039c:	65766f63 	bge	$r27,$r3,95852(0x1766c) # 1c097a08 <_end+0x16950>
1c0803a0:	20646572 	ll.w	$r18,$r11,25700(0x6464)
1c0803a4:	68746977 	bltu	$r11,$r23,29800(0x7468) # 1c08780c <_end+0x6754>
1c0803a8:	00006120 	rdtimel.w	$r0,$r9
1c0803ac:	63657073 	blt	$r3,$r19,-39568(0x36570) # 1c07691c <_data_lma+0x7540c>
1c0803b0:	206c6169 	ll.w	$r9,$r11,27744(0x6c60)
1c0803b4:	74786574 	0x74786574
1c0803b8:	20657275 	ll.w	$r21,$r19,25968(0x6570)
1c0803bc:	63696877 	blt	$r3,$r23,-38552(0x36968) # 1c076d24 <_data_lma+0x75814>
1c0803c0:	6c612068 	bgeu	$r3,$r8,24864(0x6120) # 1c0864e0 <_end+0x5428>
1c0803c4:	73726574 	0x73726574
1c0803c8:	73746920 	0x73746920
1c0803cc:	00000000 	0x00000000
1c0803d0:	63656c65 	blt	$r3,$r5,-39572(0x3656c) # 1c07693c <_data_lma+0x7542c>
1c0803d4:	6d6f7274 	bgeu	$r19,$r20,94064(0x16f70) # 1c097344 <_end+0x1628c>
1c0803d8:	656e6761 	bge	$r27,$r1,93796(0x16e64) # 1c09723c <_end+0x16184>
1c0803dc:	20636974 	ll.w	$r20,$r11,25448(0x6368)
1c0803e0:	706f7270 	0x706f7270
1c0803e4:	69747265 	bltu	$r19,$r5,95344(0x17470) # 1c097854 <_end+0x1679c>
1c0803e8:	202e7365 	ll.w	$r5,$r27,11888(0x2e70)
1c0803ec:	6564614d 	bge	$r10,$r13,91232(0x16460) # 1c09684c <_end+0x15794>
1c0803f0:	20666f20 	ll.w	$r0,$r25,26220(0x666c)
1c0803f4:	696c6f73 	bltu	$r27,$r19,93292(0x16c6c) # 1c097060 <_end+0x15fa8>
1c0803f8:	00000064 	0x00000064
1c0803fc:	6174656d 	blt	$r11,$r13,95332(0x17464) # 1c097860 <_end+0x167a8>
1c080400:	74202c6c 	xvsubwev.h.b	$xr12,$xr3,$xr11
1c080404:	73206568 	0x73206568
1c080408:	63757274 	blt	$r19,$r20,-35472(0x37570) # 1c077978 <_data_lma+0x76468>
1c08040c:	65727574 	bge	$r11,$r20,94836(0x17274) # 1c097680 <_end+0x165c8>
1c080410:	00000000 	0x00000000
1c080414:	646e6f63 	bge	$r27,$r3,28268(0x6e6c) # 1c087280 <_end+0x61c8>
1c080418:	73746375 	0x73746375
1c08041c:	20434420 	ll.w	$r0,$r1,17220(0x4344)
1c080420:	72727563 	0x72727563
1c080424:	73746e65 	0x73746e65
1c080428:	7562202c 	0x7562202c
1c08042c:	766f2074 	0x766f2074
1c080430:	61207265 	blt	$r19,$r5,73840(0x12070) # 1c0924a0 <_end+0x113e8>
1c080434:	00000000 	0x00000000
1c080438:	74726170 	xvmin.b	$xr16,$xr11,$xr24
1c08043c:	6c756369 	bgeu	$r27,$r9,30048(0x7560) # 1c08799c <_end+0x68e4>
1c080440:	66207261 	bge	$r19,$r1,-122768(0x22070) # 1c0624b0 <_data_lma+0x60fa0>
1c080444:	75716572 	0x75716572
1c080448:	79636e65 	0x79636e65
1c08044c:	6e617220 	bgeu	$r17,$r0,-106128(0x26170) # 1c0665bc <_data_lma+0x650ac>
1c080450:	69206567 	bltu	$r11,$r7,73828(0x12064) # 1c0924b4 <_end+0x113fc>
1c080454:	6f642074 	bgeu	$r3,$r20,-39904(0x36420) # 1c076874 <_data_lma+0x75364>
1c080458:	00007365 	0x00007365
1c08045c:	20746f6e 	ll.w	$r14,$r27,29804(0x746c)
1c080460:	646e6f63 	bge	$r27,$r3,28268(0x6e6c) # 1c0872cc <_end+0x6214>
1c080464:	20746375 	ll.w	$r21,$r27,29792(0x7460)
1c080468:	63204341 	blt	$r26,$r1,-57280(0x32040) # 1c0724a8 <_data_lma+0x70f98>
1c08046c:	65727275 	bge	$r19,$r21,94832(0x17270) # 1c0976dc <_end+0x16624>
1c080470:	2e73746e 	0x2e73746e
1c080474:	20744920 	ll.w	$r0,$r9,29768(0x7448)
1c080478:	73656f64 	vssrani.wu.d	$vr4,$vr27,0x1b
1c08047c:	746f6e20 	0x746f6e20
1c080480:	00000000 	0x00000000
1c080484:	65766572 	bge	$r11,$r18,95844(0x17664) # 1c097ae8 <_end+0x16a30>
1c080488:	20657372 	ll.w	$r18,$r27,25968(0x6570)
1c08048c:	20656874 	ll.w	$r20,$r3,25960(0x6568)
1c080490:	73616870 	vssrani.w.d	$vr16,$vr3,0x1a
1c080494:	666f2065 	bge	$r3,$r5,-102624(0x26f20) # 1c0673b4 <_data_lma+0x65ea4>
1c080498:	66657220 	bge	$r17,$r0,-105104(0x26570) # 1c066a08 <_data_lma+0x654f8>
1c08049c:	7463656c 	xvabsd.wu	$xr12,$xr11,$xr25
1c0804a0:	00006465 	rdtimeh.w	$r5,$r3
1c0804a4:	65766177 	bge	$r11,$r23,95840(0x17660) # 1c097b04 <_end+0x16a4c>
1c0804a8:	61202c73 	blt	$r3,$r19,73772(0x1202c) # 1c0924d4 <_end+0x1141c>
1c0804ac:	7420646e 	xvsubwev.h.b	$xr14,$xr3,$xr25
1c0804b0:	65206568 	bge	$r11,$r8,73828(0x12064) # 1c092514 <_end+0x1145c>
1c0804b4:	63656666 	blt	$r19,$r6,-39580(0x36564) # 1c076a18 <_data_lma+0x75508>
1c0804b8:	65766974 	bge	$r11,$r20,95848(0x17668) # 1c097b20 <_end+0x16a68>
1c0804bc:	616d6920 	blt	$r9,$r0,93544(0x16d68) # 1c097224 <_end+0x1616c>
1c0804c0:	63206567 	blt	$r11,$r7,-57244(0x32064) # 1c072524 <_data_lma+0x71014>
1c0804c4:	65727275 	bge	$r19,$r21,94832(0x17270) # 1c097734 <_end+0x1667c>
1c0804c8:	0073746e 	bstrins.w	$r14,$r3,0x13,0x1d
1c0804cc:	65707061 	bge	$r3,$r1,94320(0x17070) # 1c09753c <_end+0x16484>
1c0804d0:	69207261 	bltu	$r19,$r1,73840(0x12070) # 1c092540 <_end+0x11488>
1c0804d4:	68702d6e 	bltu	$r11,$r14,28716(0x702c) # 1c087500 <_end+0x6448>
1c0804d8:	2c657361 	vst	$vr1,$r27,-1700(0x95c)
1c0804dc:	74617220 	xvabsd.w	$xr0,$xr17,$xr28
1c0804e0:	20726568 	ll.w	$r8,$r11,29284(0x7264)
1c0804e4:	6e616874 	bgeu	$r3,$r20,-106136(0x26168) # 1c06664c <_data_lma+0x6513c>
1c0804e8:	00000000 	0x00000000
1c0804ec:	2d74756f 	0x2d74756f
1c0804f0:	702d666f 	0x702d666f
1c0804f4:	65736168 	bge	$r11,$r8,95072(0x17360) # 1c097854 <_end+0x1679c>
1c0804f8:	20736120 	ll.w	$r0,$r9,29536(0x7360)
1c0804fc:	79656874 	0x79656874
1c080500:	65726120 	bge	$r9,$r0,94816(0x17260) # 1c097760 <_end+0x166a8>
1c080504:	206e6f20 	ll.w	$r0,$r25,28268(0x6e6c)
1c080508:	6d726f6e 	bgeu	$r27,$r14,94828(0x1726c) # 1c097774 <_end+0x166bc>
1c08050c:	00006c61 	cpucfg	$r1,$r3
1c080510:	646e6f63 	bge	$r27,$r3,28268(0x6e6c) # 1c08737c <_end+0x62c4>
1c080514:	6f746375 	bgeu	$r27,$r21,-35744(0x37460) # 1c077974 <_data_lma+0x76464>
1c080518:	202e7372 	ll.w	$r18,$r27,11888(0x2e70)
1c08051c:	74727546 	xvmin.b	$xr6,$xr10,$xr29
1c080520:	6d726568 	bgeu	$r11,$r8,94820(0x17264) # 1c097784 <_end+0x166cc>
1c080524:	2c65726f 	vst	$vr15,$r19,-1700(0x95c)
1c080528:	72757320 	0x72757320
1c08052c:	65636166 	bge	$r11,$r6,90976(0x16360) # 1c09688c <_end+0x157d4>
1c080530:	00000000 	0x00000000
1c080534:	65766177 	bge	$r11,$r23,95840(0x17660) # 1c097b94 <_end+0x16adc>
1c080538:	6f642073 	bgeu	$r3,$r19,-39904(0x36420) # 1c076958 <_data_lma+0x75448>
1c08053c:	746f6e20 	0x746f6e20
1c080540:	6f727020 	bgeu	$r1,$r0,-36240(0x37270) # 1c0777b0 <_data_lma+0x762a0>
1c080544:	61676170 	blt	$r11,$r16,92000(0x16760) # 1c096ca4 <_end+0x15bec>
1c080548:	202c6574 	ll.w	$r20,$r11,11364(0x2c64)
1c08054c:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c080550:	74736e69 	xvmin.w	$xr9,$xr19,$xr27
1c080554:	00646165 	bstrins.w	$r5,$r11,0x4,0x18
1c080558:	69646172 	bltu	$r11,$r18,91232(0x16460) # 1c0969b8 <_end+0x15900>
1c08055c:	20657461 	ll.w	$r1,$r3,25972(0x6574)
1c080560:	69666665 	bltu	$r19,$r5,91748(0x16664) # 1c096bc4 <_end+0x15b0c>
1c080564:	6e656963 	bgeu	$r11,$r3,-105112(0x26568) # 1c066acc <_data_lma+0x655bc>
1c080568:	20796c74 	ll.w	$r20,$r3,31084(0x796c)
1c08056c:	6f746e69 	bgeu	$r19,$r9,-35732(0x3746c) # 1c0779d8 <_data_lma+0x764c8>
1c080570:	65726620 	bge	$r17,$r0,94820(0x17264) # 1c0977d4 <_end+0x1671c>
1c080574:	00000065 	0x00000065
1c080578:	63617073 	blt	$r3,$r19,-40592(0x36170) # 1c0766e8 <_data_lma+0x751d8>
1c08057c:	54202e65 	bl	-107732948(0x994202c) # 159c25a8 <__stack_size+0x159b25a8>
1c080580:	20736968 	ll.w	$r8,$r11,29544(0x7368)
1c080584:	2077656e 	ll.w	$r14,$r11,30564(0x7764)
1c080588:	6574616d 	bge	$r11,$r13,95328(0x17460) # 1c0979e8 <_end+0x16930>
1c08058c:	6c616972 	bgeu	$r11,$r18,24936(0x6168) # 1c0866f4 <_end+0x563c>
1c080590:	6574202c 	bge	$r1,$r12,95264(0x17420) # 1c0979b0 <_end+0x168f8>
1c080594:	64656d72 	bge	$r11,$r18,25964(0x656c) # 1c086b00 <_end+0x5a48>
1c080598:	00006120 	rdtimel.w	$r0,$r9
1c08059c:	68676968 	bltu	$r11,$r8,26472(0x6768) # 1c086d04 <_end+0x5c4c>
1c0805a0:	706d692d 	0x706d692d
1c0805a4:	6e616465 	bgeu	$r3,$r5,-106140(0x26164) # 1c066708 <_data_lma+0x651f8>
1c0805a8:	73206563 	0x73206563
1c0805ac:	61667275 	blt	$r19,$r21,91760(0x16670) # 1c096c1c <_end+0x15b64>
1c0805b0:	202c6563 	ll.w	$r3,$r11,11364(0x2c64)
1c0805b4:	766f7270 	0x766f7270
1c0805b8:	73656469 	vssrani.wu.d	$vr9,$vr3,0x19
1c0805bc:	00000000 	0x00000000
1c0805c0:	73752061 	0x73752061
1c0805c4:	6c756665 	bgeu	$r19,$r5,30052(0x7564) # 1c087b28 <_end+0x6a70>
1c0805c8:	77656e20 	xvssrani.wu.d	$xr0,$xr17,0x1b
1c0805cc:	6f726720 	bgeu	$r25,$r0,-36252(0x37264) # 1c077830 <_data_lma+0x76320>
1c0805d0:	20646e75 	ll.w	$r21,$r19,25708(0x646c)
1c0805d4:	6e616c70 	bgeu	$r3,$r16,-106132(0x2616c) # 1c066740 <_data_lma+0x65230>
1c0805d8:	6f662065 	bgeu	$r3,$r5,-39392(0x36620) # 1c076bf8 <_data_lma+0x756e8>
1c0805dc:	6f6e2072 	bgeu	$r3,$r18,-37344(0x36e20) # 1c0773fc <_data_lma+0x75eec>
1c0805e0:	006c6576 	bstrins.w	$r22,$r11,0xc,0x19
1c0805e4:	2d776f6c 	0x2d776f6c
1c0805e8:	666f7270 	bge	$r19,$r16,-102544(0x26f70) # 1c067558 <_data_lma+0x66048>
1c0805ec:	20656c69 	ll.w	$r9,$r3,25964(0x656c)
1c0805f0:	65746e61 	bge	$r19,$r1,95340(0x1746c) # 1c097a5c <_end+0x169a4>
1c0805f4:	73616e6e 	vssrani.w.d	$vr14,$vr19,0x1b
1c0805f8:	646e6120 	bge	$r9,$r0,28256(0x6e60) # 1c087458 <_end+0x63a0>
1c0805fc:	68746f20 	bltu	$r25,$r0,29804(0x746c) # 1c087a68 <_end+0x69b0>
1c080600:	00007265 	0x00007265
1c080604:	63656c65 	blt	$r3,$r5,-39572(0x3656c) # 1c076b70 <_data_lma+0x75660>
1c080608:	6d6f7274 	bgeu	$r19,$r20,94064(0x16f70) # 1c097578 <_end+0x164c0>
1c08060c:	656e6761 	bge	$r27,$r1,93796(0x16e64) # 1c097470 <_end+0x163b8>
1c080610:	20636974 	ll.w	$r20,$r11,25448(0x6368)
1c080614:	75727473 	0x75727473
1c080618:	72757463 	0x72757463
1c08061c:	002e7365 	0x002e7365
1c080620:	20656854 	ll.w	$r20,$r2,25960(0x6568)
1c080624:	65636572 	bge	$r11,$r18,90980(0x16364) # 1c096988 <_end+0x158d0>
1c080628:	7020746e 	vsubwev.h.b	$vr14,$vr3,$vr29
1c08062c:	65746f72 	bge	$r27,$r18,95340(0x1746c) # 1c097a98 <_end+0x169e0>
1c080630:	20737473 	ll.w	$r19,$r3,29556(0x7374)
1c080634:	756f6261 	0x756f6261
1c080638:	68742074 	bltu	$r3,$r20,29728(0x7420) # 1c087a58 <_end+0x69a0>
1c08063c:	694d2065 	bltu	$r3,$r5,85280(0x14d20) # 1c09535c <_end+0x142a4>
1c080640:	67696863 	bge	$r3,$r3,-38552(0x36968) # 1c076fa8 <_data_lma+0x75a98>
1c080644:	61756d61 	blt	$r11,$r1,95596(0x1756c) # 1c097bb0 <_end+0x16af8>
1c080648:	00000000 	0x00000000
1c08064c:	64757473 	bge	$r3,$r19,30068(0x7574) # 1c087bc0 <_end+0x6b08>
1c080650:	20746e65 	ll.w	$r5,$r19,29804(0x746c)
1c080654:	6167726f 	blt	$r19,$r15,92016(0x16770) # 1c096dc4 <_end+0x15d0c>
1c080658:	617a696e 	blt	$r11,$r14,96872(0x17a68) # 1c0980c0 <_end+0x17008>
1c08065c:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c0675c4 <_data_lma+0x660b4>
1c080660:	76616820 	0x76616820
1c080664:	61722065 	blt	$r3,$r5,94752(0x17220) # 1c097884 <_end+0x167cc>
1c080668:	64657369 	bge	$r27,$r9,25968(0x6570) # 1c086bd8 <_end+0x5b20>
1c08066c:	006e6120 	bstrins.w	$r0,$r9,0xe,0x18
1c080670:	6f706d69 	bgeu	$r11,$r9,-36756(0x3706c) # 1c0776dc <_data_lma+0x761cc>
1c080674:	6e617472 	bgeu	$r3,$r18,-106124(0x26174) # 1c0667e8 <_data_lma+0x652d8>
1c080678:	75712074 	0x75712074
1c08067c:	69747365 	bltu	$r27,$r5,95344(0x17470) # 1c097aec <_end+0x16a34>
1c080680:	61206e6f 	blt	$r19,$r15,73836(0x1206c) # 1c0926ec <_end+0x11634>
1c080684:	6f742073 	bgeu	$r3,$r19,-35808(0x37420) # 1c077aa4 <_data_lma+0x76594>
1c080688:	65687420 	bge	$r1,$r0,92276(0x16874) # 1c096efc <_end+0x15e44>
1c08068c:	6f727020 	bgeu	$r1,$r0,-36240(0x37270) # 1c0778fc <_data_lma+0x763ec>
1c080690:	20726570 	ll.w	$r16,$r11,29284(0x7264)
1c080694:	7574616e 	0x7574616e
1c080698:	00006572 	rdtimeh.w	$r18,$r11
1c08069c:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c0806a0:	706f6373 	0x706f6373
1c0806a4:	666f2065 	bge	$r3,$r5,-102624(0x26f20) # 1c0675c4 <_data_lma+0x660b4>
1c0806a8:	696e5520 	bltu	$r9,$r0,93780(0x16e54) # 1c0974fc <_end+0x16444>
1c0806ac:	73726576 	0x73726576
1c0806b0:	20797469 	ll.w	$r9,$r3,31092(0x7974)
1c0806b4:	6f766e69 	bgeu	$r19,$r9,-35220(0x3766c) # 1c077d20 <_data_lma+0x76810>
1c0806b8:	6d65766c 	bgeu	$r19,$r12,91508(0x16574) # 1c096c2c <_end+0x15b74>
1c0806bc:	00746e65 	bstrins.w	$r5,$r19,0x14,0x1b
1c0806c0:	68746977 	bltu	$r11,$r23,29800(0x7468) # 1c087b28 <_end+0x6a70>
1c0806c4:	75747320 	0x75747320
1c0806c8:	746e6564 	0x746e6564
1c0806cc:	67726f20 	bge	$r25,$r0,-36244(0x3726c) # 1c077938 <_data_lma+0x76428>
1c0806d0:	7a696e61 	0x7a696e61
1c0806d4:	6f697461 	bgeu	$r3,$r1,-38540(0x36974) # 1c077048 <_data_lma+0x75b38>
1c0806d8:	202e736e 	ll.w	$r14,$r27,11888(0x2e70)
1c0806dc:	6f636341 	bgeu	$r26,$r1,-40096(0x36360) # 1c076a3c <_data_lma+0x7552c>
1c0806e0:	6e696472 	bgeu	$r3,$r18,-104092(0x26964) # 1c067044 <_data_lma+0x65b34>
1c0806e4:	00796c67 	bstrins.w	$r7,$r3,0x19,0x1b
1c0806e8:	20656874 	ll.w	$r20,$r3,25960(0x6568)
1c0806ec:	656e6170 	bge	$r11,$r16,93792(0x16e60) # 1c09754c <_end+0x16494>
1c0806f0:	6564206c 	bge	$r3,$r12,91168(0x16420) # 1c096b10 <_end+0x15a58>
1c0806f4:	69726373 	bltu	$r27,$r19,94816(0x17260) # 1c097954 <_end+0x1689c>
1c0806f8:	20646562 	ll.w	$r2,$r11,25700(0x6464)
1c0806fc:	6d206e69 	bgeu	$r19,$r9,73836(0x1206c) # 1c092768 <_end+0x116b0>
1c080700:	74532079 	0x74532079
1c080704:	6d657461 	bgeu	$r3,$r1,91508(0x16574) # 1c096c78 <_end+0x15bc0>
1c080708:	20746e65 	ll.w	$r5,$r19,29804(0x746c)
1c08070c:	0000666f 	rdtimeh.w	$r15,$r19
1c080710:	72626546 	0x72626546
1c080714:	79726175 	0x79726175
1c080718:	2c353220 	vld	$vr0,$r17,-692(0xd4c)
1c08071c:	30303220 	0x30303220
1c080720:	68742030 	bltu	$r1,$r16,29728(0x7420) # 1c087b40 <_end+0x6a88>
1c080724:	69207461 	bltu	$r3,$r1,73844(0x12074) # 1c092798 <_end+0x116e0>
1c080728:	6f632073 	bgeu	$r3,$r19,-40160(0x36320) # 1c076a48 <_data_lma+0x75538>
1c08072c:	6469736e 	bge	$r27,$r14,26992(0x6970) # 1c08709c <_end+0x5fe4>
1c080730:	6e697265 	bgeu	$r19,$r5,-104080(0x26970) # 1c0670a0 <_data_lma+0x65b90>
1c080734:	68742067 	bltu	$r3,$r7,29728(0x7420) # 1c087b54 <_end+0x6a9c>
1c080738:	00000065 	0x00000065
1c08073c:	73657571 	vssrani.wu.d	$vr17,$vr11,0x1d
1c080740:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c0676a8 <_data_lma+0x66198>
1c080744:	20666f20 	ll.w	$r0,$r25,26220(0x666c)
1c080748:	76697270 	0x76697270
1c08074c:	67656c69 	bge	$r3,$r9,-39572(0x3656c) # 1c076cb8 <_data_lma+0x757a8>
1c080750:	73206465 	0x73206465
1c080754:	65636170 	bge	$r11,$r16,90976(0x16360) # 1c096ab4 <_end+0x159fc>
1c080758:	736c6120 	vssrarni.bu.h	$vr0,$vr9,0x8
1c08075c:	6977206f 	bltu	$r3,$r15,96032(0x17720) # 1c097e7c <_end+0x16dc4>
1c080760:	00006c6c 	cpucfg	$r12,$r3
1c080764:	736e6f63 	vssrarni.du.q	$vr3,$vr27,0x1b
1c080768:	72656469 	0x72656469
1c08076c:	646e7520 	bge	$r9,$r0,28276(0x6e74) # 1c0875e0 <_end+0x6528>
1c080770:	77207265 	0x77207265
1c080774:	20746168 	ll.w	$r8,$r11,29792(0x7460)
1c080778:	63726963 	blt	$r11,$r3,-36248(0x37268) # 1c0779e0 <_data_lma+0x764d0>
1c08077c:	74736d75 	xvmin.w	$xr21,$xr11,$xr27
1c080780:	65636e61 	bge	$r19,$r1,90988(0x1636c) # 1c096aec <_end+0x15a34>
1c080784:	6e612073 	bgeu	$r3,$r19,-106208(0x26120) # 1c0668a4 <_data_lma+0x65394>
1c080788:	6e692064 	bgeu	$r3,$r4,-104160(0x26920) # 1c0670a8 <_data_lma+0x65b98>
1c08078c:	00000000 	0x00000000
1c080790:	74616877 	xvabsd.w	$xr23,$xr3,$xr26
1c080794:	79617720 	0x79617720
1c080798:	68742073 	bltu	$r3,$r19,29728(0x7420) # 1c087bb8 <_end+0x6b00>
1c08079c:	6e552065 	bgeu	$r3,$r5,-109280(0x25520) # 1c065cbc <_data_lma+0x647ac>
1c0807a0:	72657669 	0x72657669
1c0807a4:	79746973 	0x79746973
1c0807a8:	7469202c 	xvavgr.w	$xr12,$xr1,$xr8
1c0807ac:	00000073 	0x00000073
1c0807b0:	696d6461 	bltu	$r3,$r1,93540(0x16d64) # 1c097514 <_end+0x1645c>
1c0807b4:	7473696e 	xvmin.w	$xr14,$xr11,$xr26
1c0807b8:	6f746172 	bgeu	$r11,$r18,-35744(0x37460) # 1c077c18 <_data_lma+0x76708>
1c0807bc:	61207372 	blt	$r27,$r18,73840(0x12070) # 1c09282c <_end+0x11774>
1c0807c0:	6620646e 	bge	$r3,$r14,-122780(0x22064) # 1c062824 <_data_lma+0x61314>
1c0807c4:	6c756361 	bgeu	$r27,$r1,30048(0x7560) # 1c087d24 <_end+0x6c6c>
1c0807c8:	6d207974 	bgeu	$r11,$r20,73848(0x12078) # 1c092840 <_end+0x11788>
1c0807cc:	65626d65 	bge	$r11,$r5,90732(0x1626c) # 1c096a38 <_end+0x15980>
1c0807d0:	73207372 	0x73207372
1c0807d4:	6c756f68 	bgeu	$r27,$r8,30060(0x756c) # 1c087d40 <_end+0x6c88>
1c0807d8:	00000064 	0x00000064
1c0807dc:	61206562 	blt	$r11,$r2,73828(0x12064) # 1c092840 <_end+0x11788>
1c0807e0:	636f7373 	blt	$r27,$r19,-37008(0x36f70) # 1c077750 <_data_lma+0x76240>
1c0807e4:	65746169 	bge	$r11,$r9,95328(0x17460) # 1c097c44 <_end+0x16b8c>
1c0807e8:	69772064 	bltu	$r3,$r4,96032(0x17720) # 1c097f08 <_end+0x16e50>
1c0807ec:	73206874 	0x73206874
1c0807f0:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c0807f4:	6167726f 	blt	$r19,$r15,92016(0x16770) # 1c096f64 <_end+0x15eac>
1c0807f8:	617a696e 	blt	$r11,$r14,96872(0x17a68) # 1c098260 <_end+0x171a8>
1c0807fc:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c067764 <_data_lma+0x66254>
1c080800:	00000073 	0x00000073
1c080804:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c080808:	77207469 	0x77207469
1c08080c:	206c6c69 	ll.w	$r9,$r3,27756(0x6c6c)
1c080810:	6f636572 	bgeu	$r11,$r18,-40092(0x36364) # 1c076b74 <_data_lma+0x75664>
1c080814:	6e656d6d 	bgeu	$r11,$r13,-105108(0x2656c) # 1c066d80 <_data_lma+0x65870>
1c080818:	75672064 	0x75672064
1c08081c:	6e696469 	bgeu	$r3,$r9,-104092(0x26964) # 1c067180 <_data_lma+0x65c70>
1c080820:	72702067 	0x72702067
1c080824:	69636e69 	bltu	$r19,$r9,90988(0x1636c) # 1c096b90 <_end+0x15ad8>
1c080828:	73656c70 	vssrani.wu.d	$vr16,$vr3,0x1b
1c08082c:	00000000 	0x00000000
1c080830:	74206e69 	xvsubwev.h.b	$xr9,$xr19,$xr27
1c080834:	20736968 	ll.w	$r8,$r11,29544(0x7368)
1c080838:	61676572 	blt	$r11,$r18,92004(0x16764) # 1c096f9c <_end+0x15ee4>
1c08083c:	202e6472 	ll.w	$r18,$r3,11876(0x2e64)
1c080840:	20656854 	ll.w	$r20,$r2,25960(0x6568)
1c080844:	76696e55 	0x76696e55
1c080848:	69737265 	bltu	$r19,$r5,95088(0x17370) # 1c097bb8 <_end+0x16b00>
1c08084c:	73277974 	0x73277974
1c080850:	00000000 	0x00000000
1c080854:	63657845 	blt	$r2,$r5,-39560(0x36578) # 1c076dcc <_data_lma+0x758bc>
1c080858:	76697475 	0x76697475
1c08085c:	664f2065 	bge	$r3,$r5,-110816(0x24f20) # 1c06577c <_data_lma+0x6426c>
1c080860:	65636966 	bge	$r11,$r6,90984(0x16368) # 1c096bc8 <_end+0x15b10>
1c080864:	61207372 	blt	$r27,$r18,73840(0x12070) # 1c0928d4 <_end+0x1181c>
1c080868:	4920646e 	bceqz	$fcc3,3743844(0x392064) # 1c4128cc <_stack+0x3128d0>
1c08086c:	6c697720 	bgeu	$r25,$r0,26996(0x6974) # 1c0871e0 <_end+0x6128>
1c080870:	6874206c 	bltu	$r3,$r12,29728(0x7420) # 1c087c90 <_end+0x6bd8>
1c080874:	64206e65 	bge	$r19,$r5,8300(0x206c) # 1c0828e0 <_end+0x1828>
1c080878:	64696365 	bge	$r27,$r5,26976(0x6960) # 1c0871d8 <_end+0x6120>
1c08087c:	00000065 	0x00000065
1c080880:	74656877 	xvavg.w	$xr23,$xr3,$xr26
1c080884:	20726568 	ll.w	$r8,$r11,29284(0x7264)
1c080888:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c08088c:	20776f68 	ll.w	$r8,$r27,30572(0x776c)
1c080890:	69206f74 	bltu	$r27,$r20,73836(0x1206c) # 1c0928fc <_end+0x11844>
1c080894:	656c706d 	bge	$r3,$r13,93296(0x16c70) # 1c097504 <_end+0x1644c>
1c080898:	746e656d 	0x746e656d
1c08089c:	63757320 	blt	$r25,$r0,-35472(0x37570) # 1c077e0c <_data_lma+0x768fc>
1c0808a0:	00000068 	0x00000068
1c0808a4:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # 1c067214 <_data_lma+0x65d04>
1c0808a8:	6c706963 	bgeu	$r11,$r3,28776(0x7068) # 1c087910 <_end+0x6858>
1c0808ac:	002e7365 	0x002e7365
1c0808b0:	1c0800c4 	pcaddu12i	$r4,16390(0x4006)
1c0808b4:	1c0800c8 	pcaddu12i	$r8,16390(0x4006)
1c0808b8:	1c0800cc 	pcaddu12i	$r12,16390(0x4006)
1c0808bc:	1c0800d0 	pcaddu12i	$r16,16390(0x4006)
1c0808c0:	1c0800d4 	pcaddu12i	$r20,16390(0x4006)
1c0808c4:	1c0800d8 	pcaddu12i	$r24,16390(0x4006)
1c0808c8:	1c0800dc 	pcaddu12i	$r28,16390(0x4006)
1c0808cc:	1c08027c 	pcaddu12i	$r28,16403(0x4013)
1c0808d0:	1c0800e0 	pcaddu12i	$r0,16391(0x4007)
1c0808d4:	1c0800e4 	pcaddu12i	$r4,16391(0x4007)
1c0808d8:	1c0800e4 	pcaddu12i	$r4,16391(0x4007)
1c0808dc:	1c0800e8 	pcaddu12i	$r8,16391(0x4007)
1c0808e0:	1c0800e8 	pcaddu12i	$r8,16391(0x4007)
1c0808e4:	1c0800ec 	pcaddu12i	$r12,16391(0x4007)
1c0808e8:	1c0800f4 	pcaddu12i	$r20,16391(0x4007)
1c0808ec:	1c0800f8 	pcaddu12i	$r24,16391(0x4007)
1c0808f0:	1c0800fc 	pcaddu12i	$r28,16391(0x4007)
1c0808f4:	1c080104 	pcaddu12i	$r4,16392(0x4008)
1c0808f8:	1c08010c 	pcaddu12i	$r12,16392(0x4008)
1c0808fc:	1c080114 	pcaddu12i	$r20,16392(0x4008)
1c080900:	1c08011c 	pcaddu12i	$r28,16392(0x4008)
1c080904:	1c080120 	pcaddu12i	$r0,16393(0x4009)
1c080908:	1c080128 	pcaddu12i	$r8,16393(0x4009)
1c08090c:	1c080130 	pcaddu12i	$r16,16393(0x4009)
1c080910:	1c080138 	pcaddu12i	$r24,16393(0x4009)
1c080914:	1c080140 	pcaddu12i	$r0,16394(0x400a)
1c080918:	1c080148 	pcaddu12i	$r8,16394(0x400a)
1c08091c:	1c080150 	pcaddu12i	$r16,16394(0x400a)
1c080920:	1c080158 	pcaddu12i	$r24,16394(0x400a)
1c080924:	1c080160 	pcaddu12i	$r0,16395(0x400b)
1c080928:	1c080168 	pcaddu12i	$r8,16395(0x400b)
1c08092c:	1c080158 	pcaddu12i	$r24,16394(0x400a)
1c080930:	1c080170 	pcaddu12i	$r16,16395(0x400b)
1c080934:	1c08017c 	pcaddu12i	$r28,16395(0x400b)
1c080938:	1c080508 	pcaddu12i	$r8,16424(0x4028)
1c08093c:	1c080184 	pcaddu12i	$r4,16396(0x400c)
1c080940:	1c08018c 	pcaddu12i	$r12,16396(0x400c)
1c080944:	1c080194 	pcaddu12i	$r20,16396(0x400c)
1c080948:	1c08019c 	pcaddu12i	$r28,16396(0x400c)
1c08094c:	1c08011c 	pcaddu12i	$r28,16392(0x4008)
1c080950:	1c0801a0 	pcaddu12i	$r0,16397(0x400d)
1c080954:	1c0801a8 	pcaddu12i	$r8,16397(0x400d)
1c080958:	1c0801b0 	pcaddu12i	$r16,16397(0x400d)
1c08095c:	1c0801b8 	pcaddu12i	$r24,16397(0x400d)
1c080960:	1c0801c0 	pcaddu12i	$r0,16398(0x400e)
1c080964:	1c0801c8 	pcaddu12i	$r8,16398(0x400e)
1c080968:	1c0801d4 	pcaddu12i	$r20,16398(0x400e)
1c08096c:	1c0801dc 	pcaddu12i	$r28,16398(0x400e)
1c080970:	1c0801e4 	pcaddu12i	$r4,16399(0x400f)
1c080974:	1c0801f4 	pcaddu12i	$r20,16399(0x400f)
1c080978:	1c0801f8 	pcaddu12i	$r24,16399(0x400f)
1c08097c:	1c080200 	pcaddu12i	$r0,16400(0x4010)
1c080980:	1c080208 	pcaddu12i	$r8,16400(0x4010)
1c080984:	1c080210 	pcaddu12i	$r16,16400(0x4010)
1c080988:	1c080218 	pcaddu12i	$r24,16400(0x4010)
1c08098c:	1c080224 	pcaddu12i	$r4,16401(0x4011)
1c080990:	1c080230 	pcaddu12i	$r16,16401(0x4011)
1c080994:	00000000 	0x00000000
1c080998:	1c080240 	pcaddu12i	$r0,16402(0x4012)
1c08099c:	1c080248 	pcaddu12i	$r8,16402(0x4012)
1c0809a0:	1c080250 	pcaddu12i	$r16,16402(0x4012)
1c0809a4:	1c080260 	pcaddu12i	$r0,16403(0x4013)
1c0809a8:	1c080270 	pcaddu12i	$r16,16403(0x4013)
1c0809ac:	1c080278 	pcaddu12i	$r24,16403(0x4013)
1c0809b0:	1c080278 	pcaddu12i	$r24,16403(0x4013)
1c0809b4:	1c080278 	pcaddu12i	$r24,16403(0x4013)
1c0809b8:	1c080278 	pcaddu12i	$r24,16403(0x4013)
1c0809bc:	1c080278 	pcaddu12i	$r24,16403(0x4013)
1c0809c0:	1c0800e4 	pcaddu12i	$r4,16391(0x4007)
1c0809c4:	1c0800e8 	pcaddu12i	$r8,16391(0x4007)
1c0809c8:	1c080018 	pcaddu12i	$r24,16384(0x4000)
1c0809cc:	1c080280 	pcaddu12i	$r0,16404(0x4014)
1c0809d0:	1c0802a8 	pcaddu12i	$r8,16405(0x4015)
1c0809d4:	1c0802c0 	pcaddu12i	$r0,16406(0x4016)
1c0809d8:	1c0802e8 	pcaddu12i	$r8,16407(0x4017)
1c0809dc:	1c080308 	pcaddu12i	$r8,16408(0x4018)
1c0809e0:	1c08032c 	pcaddu12i	$r12,16409(0x4019)
1c0809e4:	1c080348 	pcaddu12i	$r8,16410(0x401a)
1c0809e8:	1c08036c 	pcaddu12i	$r12,16411(0x401b)
1c0809ec:	1c080388 	pcaddu12i	$r8,16412(0x401c)
1c0809f0:	1c0803ac 	pcaddu12i	$r12,16413(0x401d)
1c0809f4:	1c0803d0 	pcaddu12i	$r16,16414(0x401e)
1c0809f8:	1c0803fc 	pcaddu12i	$r28,16415(0x401f)
1c0809fc:	1c080414 	pcaddu12i	$r20,16416(0x4020)
1c080a00:	1c080438 	pcaddu12i	$r24,16417(0x4021)
1c080a04:	1c08045c 	pcaddu12i	$r28,16418(0x4022)
1c080a08:	1c080484 	pcaddu12i	$r4,16420(0x4024)
1c080a0c:	1c0804a4 	pcaddu12i	$r4,16421(0x4025)
1c080a10:	1c0804cc 	pcaddu12i	$r12,16422(0x4026)
1c080a14:	1c0804ec 	pcaddu12i	$r12,16423(0x4027)
1c080a18:	1c080510 	pcaddu12i	$r16,16424(0x4028)
1c080a1c:	1c080534 	pcaddu12i	$r20,16425(0x4029)
1c080a20:	1c080558 	pcaddu12i	$r24,16426(0x402a)
1c080a24:	1c080578 	pcaddu12i	$r24,16427(0x402b)
1c080a28:	1c08059c 	pcaddu12i	$r28,16428(0x402c)
1c080a2c:	1c0805c0 	pcaddu12i	$r0,16430(0x402e)
1c080a30:	1c0805e4 	pcaddu12i	$r4,16431(0x402f)
1c080a34:	1c080604 	pcaddu12i	$r4,16432(0x4030)
1c080a38:	1c080620 	pcaddu12i	$r0,16433(0x4031)
1c080a3c:	1c08064c 	pcaddu12i	$r12,16434(0x4032)
1c080a40:	1c080670 	pcaddu12i	$r16,16435(0x4033)
1c080a44:	1c08069c 	pcaddu12i	$r28,16436(0x4034)
1c080a48:	1c0806c0 	pcaddu12i	$r0,16438(0x4036)
1c080a4c:	1c0806e8 	pcaddu12i	$r8,16439(0x4037)
1c080a50:	1c080710 	pcaddu12i	$r16,16440(0x4038)
1c080a54:	1c08073c 	pcaddu12i	$r28,16441(0x4039)
1c080a58:	1c080764 	pcaddu12i	$r4,16443(0x403b)
1c080a5c:	1c080790 	pcaddu12i	$r16,16444(0x403c)
1c080a60:	1c0807b0 	pcaddu12i	$r16,16445(0x403d)
1c080a64:	1c0807dc 	pcaddu12i	$r28,16446(0x403e)
1c080a68:	1c080804 	pcaddu12i	$r4,16448(0x4040)
1c080a6c:	1c080830 	pcaddu12i	$r16,16449(0x4041)
1c080a70:	1c080854 	pcaddu12i	$r20,16450(0x4042)
1c080a74:	1c080880 	pcaddu12i	$r0,16452(0x4044)
1c080a78:	1c0808a4 	pcaddu12i	$r4,16453(0x4045)
1c080a7c:	00000001 	0x00000001
1c080a80:	00000001 	0x00000001
1c080a84:	00000000 	0x00000000
1c080a88:	00000001 	0x00000001
1c080a8c:	00000001 	0x00000001
1c080a90:	00000001 	0x00000001
1c080a94:	00000001 	0x00000001
1c080a98:	00000001 	0x00000001
1c080a9c:	00000001 	0x00000001
1c080aa0:	00000000 	0x00000000
1c080aa4:	00000001 	0x00000001
1c080aa8:	00000001 	0x00000001
1c080aac:	00000000 	0x00000000
1c080ab0:	00000001 	0x00000001
1c080ab4:	00000001 	0x00000001
1c080ab8:	00000001 	0x00000001
1c080abc:	00000001 	0x00000001
1c080ac0:	00000000 	0x00000000
1c080ac4:	00000001 	0x00000001
1c080ac8:	00000001 	0x00000001
	...
1c080ad4:	00000001 	0x00000001
1c080ad8:	00000001 	0x00000001
	...
1c080ae4:	00000001 	0x00000001
1c080ae8:	00000001 	0x00000001
1c080aec:	00000001 	0x00000001
	...
1c080af8:	00000001 	0x00000001
1c080afc:	00000001 	0x00000001
	...
1c080b3c:	00000001 	0x00000001
1c080b40:	00000001 	0x00000001
1c080b44:	00000001 	0x00000001
1c080b48:	00000001 	0x00000001
1c080b4c:	00000000 	0x00000000
1c080b50:	00000001 	0x00000001
1c080b54:	00000000 	0x00000000
1c080b58:	00000001 	0x00000001
1c080b5c:	00000000 	0x00000000
1c080b60:	1c000ed0 	pcaddu12i	$r16,118(0x76)
1c080b64:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b68:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b6c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b70:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b74:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b78:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b7c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b80:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b84:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b88:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b8c:	1c000da8 	pcaddu12i	$r8,109(0x6d)
1c080b90:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080b94:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080b98:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080b9c:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080ba0:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080ba4:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080ba8:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080bac:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080bb0:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080bb4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bb8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bbc:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bc0:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bc4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bc8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bcc:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bd0:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bd4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bd8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bdc:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080be0:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080be4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080be8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bec:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bf0:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bf4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bf8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bfc:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c00:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c04:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c08:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c0c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c10:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c14:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c18:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c1c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c20:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c24:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c28:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c2c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c30:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c34:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c38:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c3c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c40:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c44:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c48:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c4c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c50:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c54:	1c000df4 	pcaddu12i	$r20,111(0x6f)
1c080c58:	1c000e10 	pcaddu12i	$r16,112(0x70)
1c080c5c:	1c000e24 	pcaddu12i	$r4,113(0x71)
1c080c60:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c64:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c68:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c6c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c70:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c74:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c78:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c7c:	1c000e40 	pcaddu12i	$r0,114(0x72)
1c080c80:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c84:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c88:	1c000e60 	pcaddu12i	$r0,115(0x73)
1c080c8c:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080c90:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c94:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c98:	1c000ea0 	pcaddu12i	$r0,117(0x75)
1c080c9c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080ca0:	1c000eb4 	pcaddu12i	$r20,117(0x75)
1c080ca4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080ca8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080cac:	1c000e80 	pcaddu12i	$r0,116(0x74)

Disassembly of section .bss:

1c080cb0 <__bss_start>:
__bss_start():
1c080cb0:	00000000 	0x00000000

1c080cb4 <len>:
1c080cb4:	00000000 	0x00000000

1c080cb8 <table>:
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
  18:	000cb000 	bytepick.d	$r0,$r0,$r12,0x1
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e60400 	bstrpick.d	$r0,$r0,0x26,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	000cb000 	bytepick.d	$r0,$r0,$r12,0x1
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
  c4:	000d5c01 	bytepick.d	$r1,$r0,$r23,0x2
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
 108:	000e0c0c 	bytepick.d	$r12,$r0,$r3,0x4
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	000e200e 	bytepick.d	$r14,$r0,$r8,0x4
 124:	0002531c 	0x0002531c
 128:	0e3c0c00 	0x0e3c0c00
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	0e580c00 	0x0e580c00
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	0e780c00 	0x0e780c00
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	980c0030 	0x980c0030
 174:	471c000e 	bnez	$r0,3873792(0x3b1c00) # 3b1d74 <__stack_size+0x3a1d74>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	b00e0030 	0xb00e0030
 18c:	5f1c000e 	bne	$r0,$r14,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c000ecc 	pcaddu12i	$r12,118(0x76)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c000edc 	pcaddu12i	$r28,118(0x76)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c000ee8 	pcaddu12i	$r8,119(0x77)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00f10b00 	bstrpick.d	$r0,$r24,0x31,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c000d3c 	pcaddu12i	$r28,105(0x69)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000f10b 	0x0000f10b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	440f0006 	bnez	$r0,1576704(0x180f00) # 181104 <__stack_size+0x171104>
 208:	531c000d 	b	3611648(0x371c00) # 371e08 <__stack_size+0x361e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	1c0f0000 	pcaddu12i	$r0,30720(0x7800)
 218:	531c000d 	b	3611648(0x371c00) # 371e18 <__stack_size+0x361e18>
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
 284:	000ef000 	bytepick.d	$r0,$r0,$r28,0x5
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
 2c8:	0ef00000 	0x0ef00000
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
 300:	000ef000 	bytepick.d	$r0,$r0,$r28,0x5
 304:	0030021c 	0x0030021c
 308:	03010000 	lu52i.d	$r0,$r0,64(0x40)
 30c:	00400b01 	0x00400b01
 310:	03ba0000 	ori	$r0,$r0,0xe80
 314:	03b80000 	ori	$r0,$r0,0xe00
 318:	00000000 	0x00000000
 31c:	0000330c 	revb.2h	$r12,$r24
 320:	000f2000 	bytepick.d	$r0,$r0,$r8,0x6
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
 34c:	000f5000 	bytepick.d	$r0,$r0,$r20,0x6
 350:	0000ac1c 	0x0000ac1c
 354:	00020900 	0x00020900
 358:	07040200 	0x07040200
 35c:	0000000b 	0x0000000b
 360:	06070402 	cacop	0x2,$r0,449(0x1c1)
 364:	03000000 	lu52i.d	$r0,$r0,0
 368:	0000010a 	0x0000010a
 36c:	a9050e01 	0xa9050e01
 370:	d0000000 	0xd0000000
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
 3a4:	0fdc0700 	0x0fdc0700
 3a8:	00bd1c00 	bstrins.d	$r0,$r0,0x3d,0x7
 3ac:	00860000 	bstrins.d	$r0,$r0,0x6,0x0
 3b0:	01080000 	0x01080000
 3b4:	01f30354 	0x01f30354
 3b8:	e4070054 	0xe4070054
 3bc:	671c000f 	bge	$r0,$r15,-58368(0x31c00) # ffff1fbc <_stack+0xe3ef1fc0>
 3c0:	99000001 	0x99000001
 3c4:	08000000 	0x08000000
 3c8:	3d015401 	0x3d015401
 3cc:	0fec0900 	0x0fec0900
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
 3fc:	000f5000 	bytepick.d	$r0,$r0,$r20,0x6
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
 444:	900e0006 	0x900e0006
 448:	081c000f 	fmadd.s	$f15,$f0,$f0,$f24
 44c:	41000000 	beqz	$r0,65536(0x10000) # 1044c <__stack_size+0x44c>
 450:	05000001 	0x05000001
 454:	000000f1 	0x000000f1
 458:	a9100601 	0xa9100601
 45c:	31000000 	0x31000000
 460:	06000001 	cacop	0x1,$r0,0
 464:	0f980900 	0x0f980900
 468:	01671c00 	0x01671c00
 46c:	01080000 	0x01080000
 470:	003d0154 	0x003d0154
 474:	0f800700 	0x0f800700
 478:	01671c00 	0x01671c00
 47c:	01550000 	0x01550000
 480:	01080000 	0x01080000
 484:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
 488:	0fa00900 	0x0fa00900
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
 4c0:	00100000 	add.w	$r0,$r0,$r0
 4c4:	0000ec1c 	0x0000ec1c
 4c8:	0002a100 	0x0002a100
 4cc:	07040200 	0x07040200
 4d0:	0000000b 	0x0000000b
 4d4:	06070402 	cacop	0x2,$r0,449(0x1c1)
 4d8:	03000000 	lu52i.d	$r0,$r0,0
 4dc:	0000009f 	0x0000009f
 4e0:	49050101 	bcnez	$fcc0,328960(0x50500) # 509e0 <__stack_size+0x409e0>
 4e4:	00000001 	0x00000001
 4e8:	ec1c0010 	0xec1c0010
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
 59c:	1c0010c0 	pcaddu12i	$r0,134(0x86)
 5a0:	00000020 	0x00000020
 5a4:	00000123 	0x00000123
 5a8:	0000f10a 	0x0000f10a
 5ac:	020a0100 	slti	$r0,$r8,640(0x280)
 5b0:	00000149 	0x00000149
 5b4:	00000112 	0x00000112
 5b8:	d00c000b 	0xd00c000b
 5bc:	6e1c0010 	bgeu	$r0,$r16,-123904(0x21c00) # fffe21bc <_stack+0xe3ee21c0>
 5c0:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 5c4:	08025401 	0x08025401
 5c8:	0e00002d 	0x0e00002d
 5cc:	1c001068 	pcaddu12i	$r8,131(0x83)
 5d0:	00000030 	0x00000030
 5d4:	0000f10a 	0x0000f10a
 5d8:	020a0100 	slti	$r0,$r8,640(0x280)
 5dc:	00000149 	0x00000149
 5e0:	0000013e 	0x0000013e
 5e4:	980f000b 	0x980f000b
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
 66c:	0013b006 	masknez	$r6,$r0,$r12
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
 6a4:	13b00000 	addu16i.d	$r0,$r0,-5120(0xec00)
 6a8:	b0021c00 	0xb0021c00
 6ac:	141c0013 	lu12i.w	$r19,57344(0xe000)
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
 6d8:	1c0013b0 	pcaddu12i	$r16,157(0x9d)
 6dc:	00000014 	0x00000014
 6e0:	0002930b 	0x0002930b
 6e4:	00077d00 	alsl.wu	$r0,$r8,$r31,0x3
 6e8:	00077b00 	alsl.wu	$r0,$r24,$r30,0x3
 6ec:	00000000 	0x00000000
 6f0:	00014c0c 	0x00014c0c
 6f4:	014b0100 	0x014b0100
 6f8:	00014c01 	0x00014c01
 6fc:	00135000 	maskeqz	$r0,$r0,$r20
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
 79c:	1c0012f0 	pcaddu12i	$r16,151(0x97)
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
 818:	c0000000 	0xc0000000
 81c:	281c0012 	ld.b	$r18,$r0,1792(0x700)
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
 8cc:	00127000 	slt	$r0,$r0,$r28
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
 904:	12300000 	addu16i.d	$r0,$r0,-29696(0x8c00)
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
 93c:	c0000001 	0xc0000001
 940:	6c1c0011 	bgeu	$r0,$r17,7168(0x1c00) # 2540 <__stack_size-0xdac0>
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
 990:	11900000 	addu16i.d	$r0,$r0,25600(0x6400)
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
 9f4:	00117000 	sub.w	$r0,$r0,$r28
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
 a44:	1c001130 	pcaddu12i	$r16,137(0x89)
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
 a90:	f0000000 	0xf0000000
 a94:	341c0010 	0x341c0010
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
 acc:	0012a000 	sltu	$r0,$r0,$r8
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
 b18:	13d00000 	addu16i.d	$r0,$r0,-3072(0xf400)
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
 b94:	0014e000 	and	$r0,$r0,$r24
 b98:	0000301c 	revb.2h	$r28,$r0
 b9c:	da9c0100 	0xda9c0100
 ba0:	08000000 	0x08000000
 ba4:	3e01006e 	0x3e01006e
 ba8:	00002c13 	ctz.d	$r19,$r0
 bac:	000db400 	bytepick.d	$r0,$r0,$r13,0x3
 bb0:	000dac00 	bytepick.d	$r0,$r0,$r11,0x3
 bb4:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 bb8:	14e00000 	lu12i.w	$r0,458752(0x70000)
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
 be4:	b0000000 	0xb0000000
 be8:	241c0014 	ldptr.w	$r20,$r0,7168(0x1c00)
 bec:	01000000 	0x01000000
 bf0:	00012c9c 	0x00012c9c
 bf4:	006e0800 	bstrins.w	$r0,$r0,0xe,0x2
 bf8:	2c133501 	vld	$vr1,$r8,1229(0x4cd)
 bfc:	11000000 	addu16i.d	$r0,$r0,16384(0x4000)
 c00:	0900000e 	0x0900000e
 c04:	0900000e 	0x0900000e
 c08:	0000022e 	0x0000022e
 c0c:	1c0014b0 	pcaddu12i	$r16,165(0xa5)
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
 c54:	1c001410 	pcaddu12i	$r16,160(0xa0)
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
 c98:	10000002 	addu16i.d	$r2,$r0,0
 c9c:	031c0014 	lu52i.d	$r20,$r0,1792(0x700)
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
 ccc:	14000000 	lu12i.w	$r0,0
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
 cf8:	d0000000 	0xd0000000
 cfc:	1c1c0013 	pcaddu12i	$r19,57344(0xe000)
 d00:	01000000 	0x01000000
 d04:	00022e9c 	0x00022e9c
 d08:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 d0c:	13d00000 	addu16i.d	$r0,$r0,-3072(0xf400)
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
 6d8:	13b00000 	addu16i.d	$r0,$r0,-5120(0xec00)
 6dc:	13b81c00 	addu16i.d	$r0,$r0,-4601(0xee07)
 6e0:	00011c00 	asrtle.d	$r0,$r7
 6e4:	0013b854 	masknez	$r20,$r2,$r14
 6e8:	0013c81c 	masknez	$r28,$r0,$r18
 6ec:	f300041c 	0xf300041c
 6f0:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
 6fc:	b0000000 	0xb0000000
 700:	b81c0013 	0xb81c0013
 704:	011c0013 	0x011c0013
 708:	13b85500 	addu16i.d	$r0,$r8,-4587(0xee15)
 70c:	13c81c00 	addu16i.d	$r0,$r0,-3577(0xf207)
 710:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 714:	9f5501f3 	0x9f5501f3
	...
 720:	00050502 	alsl.w	$r2,$r8,$r1,0x3
 724:	13b00000 	addu16i.d	$r0,$r0,-5120(0xec00)
 728:	13b01c00 	addu16i.d	$r0,$r0,-5113(0xec07)
 72c:	00011c00 	asrtle.d	$r0,$r7
 730:	0013b055 	masknez	$r21,$r2,$r12
 734:	0013b81c 	masknez	$r28,$r0,$r14
 738:	7500031c 	0x7500031c
 73c:	13b89f7f 	addu16i.d	$r31,$r27,-4569(0xee27)
 740:	13c41c00 	addu16i.d	$r0,$r0,-3833(0xf107)
 744:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 748:	315501f3 	vstelm.h	$vr19,$r15,128(0x80),0x5
 74c:	00009f1c 	0x00009f1c
 750:	00000000 	0x00000000
 754:	00020000 	0x00020000
 758:	13b00000 	addu16i.d	$r0,$r0,-5120(0xec00)
 75c:	13b81c00 	addu16i.d	$r0,$r0,-4601(0xee07)
 760:	00011c00 	asrtle.d	$r0,$r7
 764:	0013b854 	masknez	$r20,$r2,$r14
 768:	0013c81c 	masknez	$r28,$r0,$r18
 76c:	f300041c 	0xf300041c
 770:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
 774:	00000000 	0x00000000
 778:	04000000 	csrrd	$r0,0x0
 77c:	0013b000 	masknez	$r0,$r0,$r12
 780:	0013c81c 	masknez	$r28,$r0,$r18
 784:	5400011c 	bl	74448896(0x4700000) # 4700784 <__stack_size+0x46f0784>
	...
 794:	1c001350 	pcaddu12i	$r16,154(0x9a)
 798:	1c001368 	pcaddu12i	$r8,155(0x9b)
 79c:	68540001 	bltu	$r0,$r1,21504(0x5400) # 5b9c <__stack_size-0xa464>
 7a0:	a81c0013 	0xa81c0013
 7a4:	041c0013 	csrrd	$r19,0x700
 7a8:	5401f300 	bl	-67108368(0xc0001f0) # fc000998 <_stack+0xdff0099c>
 7ac:	0000009f 	0x0000009f
	...
 7b8:	00135000 	maskeqz	$r0,$r0,$r20
 7bc:	0013681c 	maskeqz	$r28,$r0,$r26
 7c0:	5500011c 	bl	74514432(0x4710000) # 47107c0 <__stack_size+0x47007c0>
 7c4:	1c001368 	pcaddu12i	$r8,155(0x9b)
 7c8:	1c0013a8 	pcaddu12i	$r8,157(0x9d)
 7cc:	01f30004 	0x01f30004
 7d0:	00009f55 	0x00009f55
 7d4:	00000000 	0x00000000
 7d8:	04000000 	csrrd	$r0,0x0
 7dc:	00000004 	0x00000004
 7e0:	13500001 	addu16i.d	$r1,$r0,-11264(0xd400)
 7e4:	13501c00 	addu16i.d	$r0,$r0,-11257(0xd407)
 7e8:	00011c00 	asrtle.d	$r0,$r7
 7ec:	00135056 	maskeqz	$r22,$r2,$r20
 7f0:	0013601c 	maskeqz	$r28,$r0,$r24
 7f4:	7600031c 	0x7600031c
 7f8:	13609f7f 	addu16i.d	$r31,$r27,-10201(0xd827)
 7fc:	13741c00 	addu16i.d	$r0,$r0,-8953(0xdd07)
 800:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 804:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 808:	13749f1c 	addu16i.d	$r28,$r24,-8921(0xdd27)
 80c:	13801c00 	addu16i.d	$r0,$r0,-8185(0xe007)
 810:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 814:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 818:	00009f1c 	0x00009f1c
 81c:	00000000 	0x00000000
 820:	00020000 	0x00020000
 824:	13500000 	addu16i.d	$r0,$r0,-11264(0xd400)
 828:	13841c00 	addu16i.d	$r0,$r0,-7929(0xe107)
 82c:	00011c00 	asrtle.d	$r0,$r7
 830:	00138854 	masknez	$r20,$r2,$r2
 834:	00139c1c 	masknez	$r28,$r0,$r7
 838:	5400011c 	bl	74448896(0x4700000) # 4700838 <__stack_size+0x46f0838>
	...
 844:	13500003 	addu16i.d	$r3,$r0,-11264(0xd400)
 848:	13a81c00 	addu16i.d	$r0,$r0,-5625(0xea07)
 84c:	00011c00 	asrtle.d	$r0,$r7
 850:	00000055 	0x00000055
	...
 85c:	f0000000 	0xf0000000
 860:	2c1c0012 	vld	$vr18,$r0,1792(0x700)
 864:	011c0013 	0x011c0013
 868:	132c5500 	addu16i.d	$r0,$r8,-13547(0xcb15)
 86c:	13481c00 	addu16i.d	$r0,$r0,-11769(0xd207)
 870:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 874:	9f5501f3 	0x9f5501f3
 878:	1c001348 	pcaddu12i	$r8,154(0x9a)
 87c:	1c00134c 	pcaddu12i	$r12,154(0x9a)
 880:	00550001 	0x00550001
	...
 88c:	00000101 	0x00000101
 890:	0012f000 	sltu	$r0,$r0,$r28
 894:	0013001c 	maskeqz	$r28,$r0,$r0
 898:	5600011c 	bl	74579968(0x4720000) # 4720898 <__stack_size+0x4710898>
 89c:	1c001300 	pcaddu12i	$r0,152(0x98)
 8a0:	1c001344 	pcaddu12i	$r4,154(0x9a)
 8a4:	7f760003 	0x7f760003
 8a8:	0013489f 	maskeqz	$r31,$r4,$r18
 8ac:	00134c1c 	maskeqz	$r28,$r0,$r19
 8b0:	7600031c 	0x7600031c
 8b4:	00009f7f 	0x00009f7f
 8b8:	00000000 	0x00000000
 8bc:	01020000 	0x01020000
 8c0:	00000001 	0x00000001
 8c4:	12f00000 	addu16i.d	$r0,$r0,-17408(0xbc00)
 8c8:	12fc1c00 	addu16i.d	$r0,$r0,-16633(0xbf07)
 8cc:	00011c00 	asrtle.d	$r0,$r7
 8d0:	0012fc55 	sltu	$r21,$r2,$r31
 8d4:	00131c1c 	maskeqz	$r28,$r0,$r7
 8d8:	5c00011c 	bne	$r8,$r28,0 # 8d8 <__stack_size-0xf728>
 8dc:	1c00131c 	pcaddu12i	$r28,152(0x98)
 8e0:	1c001344 	pcaddu12i	$r4,154(0x9a)
 8e4:	48550001 	bceqz	$fcc0,283904(0x45500) # 45de4 <__stack_size+0x35de4>
 8e8:	4c1c0013 	jirl	$r19,$r0,7168(0x1c00)
 8ec:	011c0013 	0x011c0013
 8f0:	00005500 	bitrev.d	$r0,$r8
 8f4:	00000000 	0x00000000
 8f8:	00030000 	0x00030000
	...
 904:	1c0012f0 	pcaddu12i	$r16,151(0x97)
 908:	1c001300 	pcaddu12i	$r0,152(0x98)
 90c:	00540001 	0x00540001
 910:	1c1c0013 	pcaddu12i	$r19,57344(0xe000)
 914:	011c0013 	0x011c0013
 918:	131c5d00 	addu16i.d	$r0,$r8,-14569(0xc717)
 91c:	132c1c00 	addu16i.d	$r0,$r0,-13561(0xcb07)
 920:	00011c00 	asrtle.d	$r0,$r7
 924:	00132c54 	maskeqz	$r20,$r2,$r11
 928:	0013441c 	maskeqz	$r28,$r0,$r17
 92c:	5c00011c 	bne	$r8,$r28,0 # 92c <__stack_size-0xf6d4>
 930:	1c001348 	pcaddu12i	$r8,154(0x9a)
 934:	1c00134c 	pcaddu12i	$r12,154(0x9a)
 938:	00540001 	0x00540001
	...
 944:	c0000000 	0xc0000000
 948:	cc1c0012 	0xcc1c0012
 94c:	011c0012 	0x011c0012
 950:	12cc5500 	addu16i.d	$r0,$r8,-19691(0xb315)
 954:	12e81c00 	addu16i.d	$r0,$r0,-17913(0xba07)
 958:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 95c:	9f5501f3 	0x9f5501f3
	...
 968:	00040400 	alsl.w	$r0,$r0,$r1,0x1
 96c:	12c00000 	addu16i.d	$r0,$r0,-20480(0xb000)
 970:	12c01c00 	addu16i.d	$r0,$r0,-20473(0xb007)
 974:	00011c00 	asrtle.d	$r0,$r7
 978:	0012c056 	sltu	$r22,$r2,$r16
 97c:	0012c81c 	sltu	$r28,$r0,$r18
 980:	7600031c 	0x7600031c
 984:	12c89f7f 	addu16i.d	$r31,$r27,-19929(0xb227)
 988:	12e41c00 	addu16i.d	$r0,$r0,-18169(0xb907)
 98c:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 990:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 994:	00009f1c 	0x00009f1c
 998:	00000000 	0x00000000
 99c:	00020000 	0x00020000
 9a0:	1c0012c0 	pcaddu12i	$r0,150(0x96)
 9a4:	1c0012e8 	pcaddu12i	$r8,151(0x97)
 9a8:	00550001 	0x00550001
 9ac:	00000000 	0x00000000
 9b0:	03000000 	lu52i.d	$r0,$r0,0
 9b4:	c0000000 	0xc0000000
 9b8:	cc1c0012 	0xcc1c0012
 9bc:	011c0012 	0x011c0012
 9c0:	12cc5400 	addu16i.d	$r0,$r0,-19691(0xb315)
 9c4:	12e41c00 	addu16i.d	$r0,$r0,-18169(0xb907)
 9c8:	00011c00 	asrtle.d	$r0,$r7
 9cc:	0000005c 	0x0000005c
	...
 9d8:	00127000 	slt	$r0,$r0,$r28
 9dc:	0012881c 	sltu	$r28,$r0,$r2
 9e0:	5400011c 	bl	74448896(0x4700000) # 47009e0 <__stack_size+0x46f09e0>
 9e4:	1c001288 	pcaddu12i	$r8,148(0x94)
 9e8:	1c001298 	pcaddu12i	$r24,148(0x94)
 9ec:	00540001 	0x00540001
	...
 9fc:	00123000 	slt	$r0,$r0,$r12
 a00:	0012441c 	slt	$r28,$r0,$r17
 a04:	5400011c 	bl	74448896(0x4700000) # 4700a04 <__stack_size+0x46f0a04>
 a08:	1c001244 	pcaddu12i	$r4,146(0x92)
 a0c:	1c001268 	pcaddu12i	$r8,147(0x93)
 a10:	685c0001 	bltu	$r0,$r1,23552(0x5c00) # 6610 <__stack_size-0x99f0>
 a14:	6c1c0012 	bgeu	$r0,$r18,7168(0x1c00) # 2614 <__stack_size-0xd9ec>
 a18:	011c0012 	0x011c0012
 a1c:	00005400 	bitrev.d	$r0,$r0
	...
 a2c:	1c0011c0 	pcaddu12i	$r0,142(0x8e)
 a30:	1c0011fc 	pcaddu12i	$r28,143(0x8f)
 a34:	fc540001 	0xfc540001
 a38:	041c0011 	csrrd	$r17,0x700
 a3c:	011c0012 	0x011c0012
 a40:	12085400 	addu16i.d	$r0,$r0,-32235(0x8215)
 a44:	12201c00 	addu16i.d	$r0,$r0,-30713(0x8807)
 a48:	00011c00 	asrtle.d	$r0,$r7
 a4c:	00000054 	0x00000054
	...
 a5c:	c0000000 	0xc0000000
 a60:	dc1c0011 	0xdc1c0011
 a64:	011c0011 	0x011c0011
 a68:	11dc5500 	addu16i.d	$r0,$r8,30485(0x7715)
 a6c:	11f41c00 	addu16i.d	$r0,$r0,32007(0x7d07)
 a70:	00011c00 	asrtle.d	$r0,$r7
 a74:	0011f45c 	sub.d	$r28,$r2,$r29
 a78:	0011fc1c 	sub.d	$r28,$r0,$r31
 a7c:	5500011c 	bl	74514432(0x4710000) # 4710a7c <__stack_size+0x4700a7c>
 a80:	1c0011fc 	pcaddu12i	$r28,143(0x8f)
 a84:	1c001200 	pcaddu12i	$r0,144(0x90)
 a88:	085c0001 	fmsub.s	$f1,$f0,$f0,$f24
 a8c:	0c1c0012 	0x0c1c0012
 a90:	011c0012 	0x011c0012
 a94:	00005c00 	ext.w.b	$r0,$r0
	...
 aa4:	00010100 	asrtle.d	$r8,$r0
 aa8:	11c00000 	addu16i.d	$r0,$r0,28672(0x7000)
 aac:	11d81c00 	addu16i.d	$r0,$r0,30215(0x7607)
 ab0:	00011c00 	asrtle.d	$r0,$r7
 ab4:	0011d856 	sub.d	$r22,$r2,$r22
 ab8:	0011dc1c 	sub.d	$r28,$r0,$r23
 abc:	f300041c 	0xf300041c
 ac0:	dc9f5601 	0xdc9f5601
 ac4:	f41c0011 	0xf41c0011
 ac8:	061c0011 	cacop	0x11,$r0,1792(0x700)
 acc:	5601f300 	bl	-66977296(0xc0201f0) # fc020cbc <_stack+0xdff20cc0>
 ad0:	f49f1c31 	0xf49f1c31
 ad4:	f41c0011 	0xf41c0011
 ad8:	041c0011 	csrrd	$r17,0x700
 adc:	5601f300 	bl	-66977296(0xc0201f0) # fc020ccc <_stack+0xdff20cd0>
 ae0:	0011f49f 	sub.d	$r31,$r4,$r29
 ae4:	0012001c 	slt	$r28,$r0,$r0
 ae8:	f300061c 	0xf300061c
 aec:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 af0:	0012089f 	slt	$r31,$r4,$r2
 af4:	00120c1c 	slt	$r28,$r0,$r3
 af8:	f300061c 	0xf300061c
 afc:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 b00:	0000009f 	0x0000009f
	...
 b0c:	00119000 	sub.d	$r0,$r0,$r4
 b10:	0011b41c 	sub.d	$r28,$r0,$r13
 b14:	5500011c 	bl	74514432(0x4710000) # 4710b14 <__stack_size+0x4700b14>
 b18:	1c0011b4 	pcaddu12i	$r20,141(0x8d)
 b1c:	1c0011bc 	pcaddu12i	$r28,141(0x8d)
 b20:	00550001 	0x00550001
	...
 b30:	01010000 	fadd.d	$f0,$f0,$f0
 b34:	00119000 	sub.d	$r0,$r0,$r4
 b38:	0011981c 	sub.d	$r28,$r0,$r6
 b3c:	5600011c 	bl	74579968(0x4720000) # 4720b3c <__stack_size+0x4710b3c>
 b40:	1c001198 	pcaddu12i	$r24,140(0x8c)
 b44:	1c00119c 	pcaddu12i	$r28,140(0x8c)
 b48:	01f30004 	0x01f30004
 b4c:	119c9f56 	addu16i.d	$r22,$r26,26407(0x6727)
 b50:	11a81c00 	addu16i.d	$r0,$r0,27143(0x6a07)
 b54:	000a1c00 	0x000a1c00
 b58:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b5c:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d4c <_stack+0xe0620d50>
 b60:	11a89f22 	addu16i.d	$r2,$r25,27175(0x6a27)
 b64:	11b41c00 	addu16i.d	$r0,$r0,27911(0x6d07)
 b68:	000c1c00 	bytepick.d	$r0,$r0,$r7,0x0
 b6c:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b70:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d60 <_stack+0xe0620d64>
 b74:	9f012322 	0x9f012322
 b78:	1c0011b4 	pcaddu12i	$r20,141(0x8d)
 b7c:	1c0011b8 	pcaddu12i	$r24,141(0x8d)
 b80:	0074000a 	bstrins.w	$r10,$r0,0x14,0x0
 b84:	f31c007d 	0xf31c007d
 b88:	9f225601 	0x9f225601
	...
 b94:	00000002 	0x00000002
 b98:	00010100 	asrtle.d	$r8,$r0
 b9c:	1c001190 	pcaddu12i	$r16,140(0x8c)
 ba0:	1c00119c 	pcaddu12i	$r28,140(0x8c)
 ba4:	9c540001 	0x9c540001
 ba8:	a81c0011 	0xa81c0011
 bac:	011c0011 	0x011c0011
 bb0:	11a85d00 	addu16i.d	$r0,$r8,27159(0x6a17)
 bb4:	11b41c00 	addu16i.d	$r0,$r0,27911(0x6d07)
 bb8:	00031c00 	0x00031c00
 bbc:	b49f7f7d 	0xb49f7f7d
 bc0:	b81c0011 	0xb81c0011
 bc4:	011c0011 	0x011c0011
 bc8:	00005d00 	ext.w.b	$r0,$r8
	...
 bd4:	11700000 	addu16i.d	$r0,$r0,23552(0x5c00)
 bd8:	11781c00 	addu16i.d	$r0,$r0,24071(0x5e07)
 bdc:	00011c00 	asrtle.d	$r0,$r7
 be0:	00117855 	sub.w	$r21,$r2,$r30
 be4:	00118c1c 	sub.d	$r28,$r0,$r3
 be8:	5500011c 	bl	74514432(0x4710000) # 4710be8 <__stack_size+0x4700be8>
	...
 bf4:	00000002 	0x00000002
 bf8:	1c001170 	pcaddu12i	$r16,139(0x8b)
 bfc:	1c001174 	pcaddu12i	$r20,139(0x8b)
 c00:	74540001 	xvhaddw.h.b	$xr1,$xr0,$xr0
 c04:	8c1c0011 	0x8c1c0011
 c08:	011c0011 	0x011c0011
 c0c:	00005c00 	ext.w.b	$r0,$r0
	...
 c1c:	1c001130 	pcaddu12i	$r16,137(0x89)
 c20:	1c001138 	pcaddu12i	$r24,137(0x89)
 c24:	38540001 	0x38540001
 c28:	481c0011 	bceqz	$fcc0,-3924992(0x441c00) # ffc42828 <_stack+0xe3b4282c>
 c2c:	031c0011 	lu52i.d	$r17,$r0,1792(0x700)
 c30:	9f017400 	0x9f017400
 c34:	1c001148 	pcaddu12i	$r8,138(0x8a)
 c38:	1c00115c 	pcaddu12i	$r28,138(0x8a)
 c3c:	00740008 	bstrins.w	$r8,$r0,0x14,0x0
 c40:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 c44:	00009f01 	0x00009f01
 c48:	00000000 	0x00000000
 c4c:	00020000 	0x00020000
 c50:	11300000 	addu16i.d	$r0,$r0,19456(0x4c00)
 c54:	11481c00 	addu16i.d	$r0,$r0,20999(0x5207)
 c58:	00021c00 	0x00021c00
 c5c:	11489f30 	addu16i.d	$r16,$r25,21031(0x5227)
 c60:	115c1c00 	addu16i.d	$r0,$r0,22279(0x5707)
 c64:	00011c00 	asrtle.d	$r0,$r7
 c68:	0000005c 	0x0000005c
 c6c:	00000000 	0x00000000
 c70:	03030000 	lu52i.d	$r0,$r0,192(0xc0)
	...
 c7c:	0010f000 	add.d	$r0,$r0,$r28
 c80:	0010f01c 	add.d	$r28,$r0,$r28
 c84:	5400011c 	bl	74448896(0x4700000) # 4700c84 <__stack_size+0x46f0c84>
 c88:	1c0010f0 	pcaddu12i	$r16,135(0x87)
 c8c:	1c0010fc 	pcaddu12i	$r28,135(0x87)
 c90:	01740003 	0x01740003
 c94:	0010fc9f 	add.d	$r31,$r4,$r31
 c98:	0011141c 	sub.w	$r28,$r0,$r5
 c9c:	7400081c 	xvseq.b	$xr28,$xr0,$xr2
 ca0:	22007c00 	ll.d	$r0,$r0,124(0x7c)
 ca4:	149f0123 	lu12i.w	$r3,325641(0x4f809)
 ca8:	181c0011 	pcaddi	$r17,57344(0xe000)
 cac:	091c0011 	vfmadd.s	$vr17,$vr0,$vr0,$vr24
 cb0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ea0 <_stack+0xdff00ea4>
 cb4:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 cb8:	11189f01 	addu16i.d	$r1,$r24,17959(0x4627)
 cbc:	11201c00 	addu16i.d	$r0,$r0,18439(0x4807)
 cc0:	00031c00 	0x00031c00
 cc4:	209f0174 	ll.w	$r20,$r11,-24832(0x9f00)
 cc8:	241c0011 	ldptr.w	$r17,$r0,7168(0x1c00)
 ccc:	061c0011 	cacop	0x11,$r0,1792(0x700)
 cd0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ec0 <_stack+0xdff00ec4>
 cd4:	009f0123 	bstrins.d	$r3,$r9,0x1f,0x0
 cd8:	00000000 	0x00000000
 cdc:	02000000 	slti	$r0,$r0,0
 ce0:	00000000 	0x00000000
 ce4:	0010f000 	add.d	$r0,$r0,$r28
 ce8:	0010fc1c 	add.d	$r28,$r0,$r31
 cec:	3000021c 	0x3000021c
 cf0:	0010fc9f 	add.d	$r31,$r4,$r31
 cf4:	0011181c 	sub.w	$r28,$r0,$r6
 cf8:	5c00011c 	bne	$r8,$r28,0 # cf8 <__stack_size-0xf308>
 cfc:	1c001118 	pcaddu12i	$r24,136(0x88)
 d00:	1c001124 	pcaddu12i	$r4,137(0x89)
 d04:	9f300002 	0x9f300002
	...
 d10:	00030300 	0x00030300
	...
 d1c:	1c0012a0 	pcaddu12i	$r0,149(0x95)
 d20:	1c0012a0 	pcaddu12i	$r0,149(0x95)
 d24:	a0560001 	0xa0560001
 d28:	a81c0012 	0xa81c0012
 d2c:	031c0012 	lu52i.d	$r18,$r0,1792(0x700)
 d30:	9f7f7600 	0x9f7f7600
 d34:	1c0012a8 	pcaddu12i	$r8,149(0x95)
 d38:	1c0012ac 	pcaddu12i	$r12,149(0x95)
 d3c:	01f30006 	0x01f30006
 d40:	9f1c3156 	0x9f1c3156
 d44:	1c0012ac 	pcaddu12i	$r12,149(0x95)
 d48:	1c0012b4 	pcaddu12i	$r20,149(0x95)
 d4c:	007c000b 	bstrins.w	$r11,$r0,0x1c,0x0
 d50:	5601f320 	bl	-58588688(0xc8201f0) # fc820f40 <_stack+0xe0720f44>
 d54:	22007422 	ll.d	$r2,$r1,116(0x74)
 d58:	0012b49f 	sltu	$r31,$r4,$r13
 d5c:	0012b81c 	sltu	$r28,$r0,$r14
 d60:	74000a1c 	xvseq.b	$xr28,$xr16,$xr2
 d64:	1c007c00 	pcaddu12i	$r0,992(0x3e0)
 d68:	225601f3 	ll.d	$r19,$r15,22016(0x5600)
 d6c:	0012b89f 	sltu	$r31,$r4,$r14
 d70:	0012bc1c 	sltu	$r28,$r0,$r15
 d74:	7c000b1c 	0x7c000b1c
 d78:	01f32000 	0x01f32000
 d7c:	00742256 	bstrins.w	$r22,$r18,0x14,0x8
 d80:	00009f22 	0x00009f22
 d84:	00000000 	0x00000000
 d88:	00020000 	0x00020000
 d8c:	12a00000 	addu16i.d	$r0,$r0,-22528(0xa800)
 d90:	12ac1c00 	addu16i.d	$r0,$r0,-21753(0xab07)
 d94:	00011c00 	asrtle.d	$r0,$r7
 d98:	0012ac54 	sltu	$r20,$r2,$r11
 d9c:	0012bc1c 	sltu	$r28,$r0,$r15
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
  10:	1c000cb0 	pcaddu12i	$r16,101(0x65)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c000ef0 	pcaddu12i	$r16,119(0x77)
  34:	00000054 	0x00000054
	...
  40:	0000001c 	0x0000001c
  44:	03340002 	lu52i.d	$r2,$r0,-768(0xd00)
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c000f50 	pcaddu12i	$r16,122(0x7a)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04a80002 	csrrd	$r2,0x2a00
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c001000 	pcaddu12i	$r0,128(0x80)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06230002 	cacop	0x2,$r0,-1856(0x8c0)
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c0010f0 	pcaddu12i	$r16,135(0x87)
  94:	000002d8 	0x000002d8
	...
  a0:	0000001c 	0x0000001c
  a4:	0b010002 	0x0b010002
  a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  ac:	00000000 	0x00000000
  b0:	1c0013d0 	pcaddu12i	$r16,158(0x9e)
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
  60:	1c0010f0 	pcaddu12i	$r16,135(0x87)
  64:	1c0013c8 	pcaddu12i	$r8,158(0x9e)
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
  2c:	0cb00205 	0x0cb00205
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
 1d4:	f0020500 	0xf0020500
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
 234:	000f5002 	bytepick.d	$r2,$r0,$r20,0x6
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
 2d0:	10000205 	addu16i.d	$r5,$r16,0
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
 3d4:	1c0010f0 	pcaddu12i	$r16,135(0x87)
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
 6d0:	13d00205 	addu16i.d	$r5,$r16,-3072(0xf400)
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
  18:	1c000cb0 	pcaddu12i	$r16,101(0x65)
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
  60:	1c000ef0 	pcaddu12i	$r16,119(0x77)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c000f20 	pcaddu12i	$r0,121(0x79)
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
  a8:	1c000f50 	pcaddu12i	$r16,122(0x7a)
  ac:	00000074 	0x00000074
  b0:	50100e44 	b	-116387828(0x910100c) # f91010bc <_stack+0xdd0010c0>
  b4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  b8:	04990398 	csrxchg	$r24,$r28,0x2640
  bc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c204 <__stack_size+0x7c204>
  c0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd904 <_stack+0xe3ccd908>
  c4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  c8:	00000018 	0x00000018
  cc:	00000090 	0x00000090
  d0:	1c000fd0 	pcaddu12i	$r16,126(0x7e)
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
  fc:	1c001000 	pcaddu12i	$r0,128(0x80)
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
 138:	1c0010f0 	pcaddu12i	$r16,135(0x87)
 13c:	00000034 	0x00000034
 140:	0000000c 	0x0000000c
 144:	00000120 	0x00000120
 148:	1c001130 	pcaddu12i	$r16,137(0x89)
 14c:	00000034 	0x00000034
 150:	0000000c 	0x0000000c
 154:	00000120 	0x00000120
 158:	1c001170 	pcaddu12i	$r16,139(0x8b)
 15c:	0000001c 	0x0000001c
 160:	0000000c 	0x0000000c
 164:	00000120 	0x00000120
 168:	1c001190 	pcaddu12i	$r16,140(0x8c)
 16c:	0000002c 	0x0000002c
 170:	00000014 	0x00000014
 174:	00000120 	0x00000120
 178:	1c0011c0 	pcaddu12i	$r0,142(0x8e)
 17c:	0000006c 	0x0000006c
 180:	100e5002 	addu16i.d	$r2,$r0,916(0x394)
 184:	00000e54 	0x00000e54
 188:	0000000c 	0x0000000c
 18c:	00000120 	0x00000120
 190:	1c001230 	pcaddu12i	$r16,145(0x91)
 194:	0000003c 	0x0000003c
 198:	0000000c 	0x0000000c
 19c:	00000120 	0x00000120
 1a0:	1c001270 	pcaddu12i	$r16,147(0x93)
 1a4:	00000028 	0x00000028
 1a8:	0000000c 	0x0000000c
 1ac:	00000120 	0x00000120
 1b0:	1c0012a0 	pcaddu12i	$r0,149(0x95)
 1b4:	00000020 	0x00000020
 1b8:	0000000c 	0x0000000c
 1bc:	00000120 	0x00000120
 1c0:	1c0012c0 	pcaddu12i	$r0,150(0x96)
 1c4:	00000028 	0x00000028
 1c8:	0000000c 	0x0000000c
 1cc:	00000120 	0x00000120
 1d0:	1c0012f0 	pcaddu12i	$r16,151(0x97)
 1d4:	0000005c 	0x0000005c
 1d8:	00000014 	0x00000014
 1dc:	00000120 	0x00000120
 1e0:	1c001350 	pcaddu12i	$r16,154(0x9a)
 1e4:	00000058 	0x00000058
 1e8:	54100e7c 	bl	-101707764(0x9f0100c) # f9f011f4 <_stack+0xdde011f8>
 1ec:	0000000e 	0x0000000e
 1f0:	0000000c 	0x0000000c
 1f4:	00000120 	0x00000120
 1f8:	1c0013b0 	pcaddu12i	$r16,157(0x9d)
 1fc:	00000018 	0x00000018
 200:	0000000c 	0x0000000c
 204:	ffffffff 	0xffffffff
 208:	7c010001 	0x7c010001
 20c:	00030d01 	0x00030d01
 210:	00000018 	0x00000018
 214:	00000200 	0x00000200
 218:	1c0013d0 	pcaddu12i	$r16,158(0x9e)
 21c:	0000001c 	0x0000001c
 220:	44100e44 	bnez	$r18,1052684(0x10100c) # 10122c <__stack_size+0xf122c>
 224:	d94c0199 	0xd94c0199
 228:	00000e44 	0x00000e44
 22c:	0000000c 	0x0000000c
 230:	00000200 	0x00000200
 234:	1c0013f0 	pcaddu12i	$r16,159(0x9f)
 238:	00000004 	0x00000004
 23c:	0000000c 	0x0000000c
 240:	00000200 	0x00000200
 244:	1c001400 	pcaddu12i	$r0,160(0xa0)
 248:	00000008 	0x00000008
 24c:	00000018 	0x00000018
 250:	00000200 	0x00000200
 254:	1c001410 	pcaddu12i	$r16,160(0xa0)
 258:	00000084 	0x00000084
 25c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101268 <__stack_size+0xf1268>
 260:	60020199 	blt	$r12,$r25,512(0x200) # 460 <__stack_size-0xfba0>
 264:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 268:	0000000c 	0x0000000c
 26c:	00000200 	0x00000200
 270:	1c0014a0 	pcaddu12i	$r0,165(0xa5)
 274:	00000004 	0x00000004
 278:	00000018 	0x00000018
 27c:	00000200 	0x00000200
 280:	1c0014b0 	pcaddu12i	$r16,165(0xa5)
 284:	00000024 	0x00000024
 288:	44100e44 	bnez	$r18,1052684(0x10100c) # 101294 <__stack_size+0xf1294>
 28c:	d9500199 	0xd9500199
 290:	00000e48 	0x00000e48
 294:	00000018 	0x00000018
 298:	00000200 	0x00000200
 29c:	1c0014e0 	pcaddu12i	$r0,167(0xa7)
 2a0:	00000030 	0x00000030
 2a4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1012b0 <__stack_size+0xf12b0>
 2a8:	d9500199 	0xd9500199
 2ac:	00000e54 	0x00000e54
