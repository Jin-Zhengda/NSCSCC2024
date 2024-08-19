
obj/fireye_C0/main.elf:     file format elf32-loongarch
obj/fireye_C0/main.elf


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
1c000054:	02bd818c 	addi.w	$r12,$r12,-160(0xf60)
1c000058:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c00005c:	02bea1ad 	addi.w	$r13,$r13,-88(0xfa8)
1c000060:	1c0010ae 	pcaddu12i	$r14,133(0x85)
1c000064:	029081ce 	addi.w	$r14,$r14,1056(0x420)
1c000068:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000080 <_start+0x80>
1c00006c:	2880018f 	ld.w	$r15,$r12,0
1c000070:	298001af 	st.w	$r15,$r13,0
1c000074:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000078:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00007c:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c00006c <_start+0x6c>
1c000080:	1c0010ac 	pcaddu12i	$r12,133(0x85)
1c000084:	0290018c 	addi.w	$r12,$r12,1024(0x400)
1c000088:	1c0010ad 	pcaddu12i	$r13,133(0x85)
1c00008c:	029481ad 	addi.w	$r13,$r13,1312(0x520)
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
1c00038c:	540cd400 	bl	3284(0xcd4) # 1c001060 <shell13>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <insert>:
insert():
1c0003a0:	280000a9 	ld.b	$r9,$r5,0
1c0003a4:	0015000e 	move	$r14,$r0
1c0003a8:	0280680f 	addi.w	$r15,$r0,26(0x1a)
1c0003ac:	58009120 	beq	$r9,$r0,144(0x90) # 1c00043c <insert+0x9c>
1c0003b0:	001c3dcd 	mul.w	$r13,$r14,$r15
1c0003b4:	02be7d2c 	addi.w	$r12,$r9,-97(0xf9f)
1c0003b8:	001031a6 	add.w	$r6,$r13,$r12
1c0003bc:	004088c7 	slli.w	$r7,$r6,0x2
1c0003c0:	00101c88 	add.w	$r8,$r4,$r7
1c0003c4:	2880010e 	ld.w	$r14,$r8,0
1c0003c8:	5c0069c0 	bne	$r14,$r0,104(0x68) # 1c000430 <insert+0x90>
1c0003cc:	14000050 	lu12i.w	$r16,2(0x2)
1c0003d0:	03a2820a 	ori	$r10,$r16,0x8a0
1c0003d4:	0010114b 	add.w	$r11,$r10,$r4
1c0003d8:	28800171 	ld.w	$r17,$r11,0
1c0003dc:	03a28213 	ori	$r19,$r16,0x8a0
1c0003e0:	00101274 	add.w	$r20,$r19,$r4
1c0003e4:	02800632 	addi.w	$r18,$r17,1(0x1)
1c0003e8:	29800292 	st.w	$r18,$r20,0
1c0003ec:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0003f0:	283ffcac 	ld.b	$r12,$r5,-1(0xfff)
1c0003f4:	02be7d86 	addi.w	$r6,$r12,-97(0xf9f)
1c0003f8:	001019a7 	add.w	$r7,$r13,$r6
1c0003fc:	004088e8 	slli.w	$r8,$r7,0x2
1c000400:	0010208e 	add.w	$r14,$r4,$r8
1c000404:	298001d2 	st.w	$r18,$r14,0
1c000408:	283ffca9 	ld.b	$r9,$r5,-1(0xfff)
1c00040c:	02be7d30 	addi.w	$r16,$r9,-97(0xf9f)
1c000410:	001041ad 	add.w	$r13,$r13,$r16
1c000414:	280000a9 	ld.b	$r9,$r5,0
1c000418:	004089aa 	slli.w	$r10,$r13,0x2
1c00041c:	0010288b 	add.w	$r11,$r4,$r10
1c000420:	2880016e 	ld.w	$r14,$r11,0
1c000424:	5fff8d20 	bne	$r9,$r0,-116(0x3ff8c) # 1c0003b0 <insert+0x10>
1c000428:	4c000020 	jirl	$r0,$r1,0
1c00042c:	03400000 	andi	$r0,$r0,0x0
1c000430:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c000434:	280000a9 	ld.b	$r9,$r5,0
1c000438:	5fff7920 	bne	$r9,$r0,-136(0x3ff78) # 1c0003b0 <insert+0x10>
1c00043c:	4c000020 	jirl	$r0,$r1,0

1c000440 <dfs>:
dfs():
1c000440:	1c0010ac 	pcaddu12i	$r12,133(0x85)
1c000444:	0280b18c 	addi.w	$r12,$r12,44(0x2c)
1c000448:	2880018e 	ld.w	$r14,$r12,0
1c00044c:	028005c6 	addi.w	$r6,$r14,1(0x1)
1c000450:	580330c4 	beq	$r6,$r4,816(0x330) # 1c000780 <dfs+0x340>
1c000454:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c000458:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00045c:	29808078 	st.w	$r24,$r3,32(0x20)
1c000460:	02bffc81 	addi.w	$r1,$r4,-1(0xfff)
1c000464:	02801818 	addi.w	$r24,$r0,6(0x6)
1c000468:	2980207e 	st.w	$r30,$r3,8(0x8)
1c00046c:	001c603e 	mul.w	$r30,$r1,$r24
1c000470:	29809077 	st.w	$r23,$r3,36(0x24)
1c000474:	00150097 	move	$r23,$r4
1c000478:	02bffcad 	addi.w	$r13,$r5,-1(0xfff)
1c00047c:	29807079 	st.w	$r25,$r3,28(0x1c)
1c000480:	2980107f 	st.w	$r31,$r3,4(0x4)
1c000484:	1c0010b9 	pcaddu12i	$r25,133(0x85)
1c000488:	28bfc339 	ld.w	$r25,$r25,-16(0xff0)
1c00048c:	001500bf 	move	$r31,$r5
1c000490:	2980407c 	st.w	$r28,$r3,16(0x10)
1c000494:	0280681c 	addi.w	$r28,$r0,26(0x1a)
1c000498:	2980307d 	st.w	$r29,$r3,12(0xc)
1c00049c:	1c00101d 	pcaddu12i	$r29,128(0x80)
1c0004a0:	02b533bd 	addi.w	$r29,$r29,-692(0xd4c)
1c0004a4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0004a8:	2980607a 	st.w	$r26,$r3,24(0x18)
1c0004ac:	2980507b 	st.w	$r27,$r3,20(0x14)
1c0004b0:	1c0010ba 	pcaddu12i	$r26,133(0x85)
1c0004b4:	28bf335a 	ld.w	$r26,$r26,-52(0xfcc)
1c0004b8:	001c6098 	mul.w	$r24,$r4,$r24
1c0004bc:	001017c4 	add.w	$r4,$r30,$r5
1c0004c0:	00408885 	slli.w	$r5,$r4,0x2
1c0004c4:	0010173e 	add.w	$r30,$r25,$r5
1c0004c8:	288003c8 	ld.w	$r8,$r30,0
1c0004cc:	001c7109 	mul.w	$r9,$r8,$r28
1c0004d0:	00103716 	add.w	$r22,$r24,$r13
1c0004d4:	00408ac7 	slli.w	$r7,$r22,0x2
1c0004d8:	00101f56 	add.w	$r22,$r26,$r7
1c0004dc:	0040892a 	slli.w	$r10,$r9,0x2
1c0004e0:	00102bab 	add.w	$r11,$r29,$r10
1c0004e4:	28800171 	ld.w	$r17,$r11,0
1c0004e8:	58006220 	beq	$r17,$r0,96(0x60) # 1c000548 <dfs+0x108>
1c0004ec:	288002cf 	ld.w	$r15,$r22,0
1c0004f0:	03a8a410 	ori	$r16,$r0,0xa29
1c0004f4:	001c71f2 	mul.w	$r18,$r15,$r28
1c0004f8:	00104253 	add.w	$r19,$r18,$r16
1c0004fc:	00408a74 	slli.w	$r20,$r19,0x2
1c000500:	001053bb 	add.w	$r27,$r29,$r20
1c000504:	2880036e 	ld.w	$r14,$r27,0
1c000508:	580041c0 	beq	$r14,$r0,64(0x40) # 1c000548 <dfs+0x108>
1c00050c:	00107f0c 	add.w	$r12,$r24,$r31
1c000510:	1c0010a6 	pcaddu12i	$r6,133(0x85)
1c000514:	02bd50c6 	addi.w	$r6,$r6,-172(0xf54)
1c000518:	00408981 	slli.w	$r1,$r12,0x2
1c00051c:	288000cd 	ld.w	$r13,$r6,0
1c000520:	00100727 	add.w	$r7,$r25,$r1
1c000524:	00100748 	add.w	$r8,$r26,$r1
1c000528:	028007e5 	addi.w	$r5,$r31,1(0x1)
1c00052c:	298000f1 	st.w	$r17,$r7,0
1c000530:	2980010e 	st.w	$r14,$r8,0
1c000534:	001502e4 	move	$r4,$r23
1c000538:	64000da5 	bge	$r13,$r5,12(0xc) # 1c000544 <dfs+0x104>
1c00053c:	028006e4 	addi.w	$r4,$r23,1(0x1)
1c000540:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000544:	57feffff 	bl	-260(0xffffefc) # 1c000440 <dfs>
1c000548:	288003c4 	ld.w	$r4,$r30,0
1c00054c:	0280041b 	addi.w	$r27,$r0,1(0x1)
1c000550:	001c7085 	mul.w	$r5,$r4,$r28
1c000554:	028004a9 	addi.w	$r9,$r5,1(0x1)
1c000558:	0040892a 	slli.w	$r10,$r9,0x2
1c00055c:	00102bab 	add.w	$r11,$r29,$r10
1c000560:	28800171 	ld.w	$r17,$r11,0
1c000564:	58006220 	beq	$r17,$r0,96(0x60) # 1c0005c4 <dfs+0x184>
1c000568:	288002cf 	ld.w	$r15,$r22,0
1c00056c:	03a8a810 	ori	$r16,$r0,0xa2a
1c000570:	001c71f2 	mul.w	$r18,$r15,$r28
1c000574:	00104253 	add.w	$r19,$r18,$r16
1c000578:	00408a74 	slli.w	$r20,$r19,0x2
1c00057c:	001053ae 	add.w	$r14,$r29,$r20
1c000580:	288001c6 	ld.w	$r6,$r14,0
1c000584:	580040c0 	beq	$r6,$r0,64(0x40) # 1c0005c4 <dfs+0x184>
1c000588:	00107f0c 	add.w	$r12,$r24,$r31
1c00058c:	1c0010a1 	pcaddu12i	$r1,133(0x85)
1c000590:	02bb6021 	addi.w	$r1,$r1,-296(0xed8)
1c000594:	0040898d 	slli.w	$r13,$r12,0x2
1c000598:	28800027 	ld.w	$r7,$r1,0
1c00059c:	00103728 	add.w	$r8,$r25,$r13
1c0005a0:	00103749 	add.w	$r9,$r26,$r13
1c0005a4:	028007e5 	addi.w	$r5,$r31,1(0x1)
1c0005a8:	29800111 	st.w	$r17,$r8,0
1c0005ac:	29800126 	st.w	$r6,$r9,0
1c0005b0:	001502e4 	move	$r4,$r23
1c0005b4:	64000ce5 	bge	$r7,$r5,12(0xc) # 1c0005c0 <dfs+0x180>
1c0005b8:	028006e4 	addi.w	$r4,$r23,1(0x1)
1c0005bc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0005c0:	57fe83ff 	bl	-384(0xffffe80) # 1c000440 <dfs>
1c0005c4:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c0005c8:	288003c4 	ld.w	$r4,$r30,0
1c0005cc:	001c7085 	mul.w	$r5,$r4,$r28
1c0005d0:	00106caa 	add.w	$r10,$r5,$r27
1c0005d4:	0040894b 	slli.w	$r11,$r10,0x2
1c0005d8:	00102fb1 	add.w	$r17,$r29,$r11
1c0005dc:	28800232 	ld.w	$r18,$r17,0
1c0005e0:	58006640 	beq	$r18,$r0,100(0x64) # 1c000644 <dfs+0x204>
1c0005e4:	288002cf 	ld.w	$r15,$r22,0
1c0005e8:	03a8a410 	ori	$r16,$r0,0xa29
1c0005ec:	001c71f3 	mul.w	$r19,$r15,$r28
1c0005f0:	00106e74 	add.w	$r20,$r19,$r27
1c0005f4:	0010428e 	add.w	$r14,$r20,$r16
1c0005f8:	004089c6 	slli.w	$r6,$r14,0x2
1c0005fc:	00101bac 	add.w	$r12,$r29,$r6
1c000600:	28800181 	ld.w	$r1,$r12,0
1c000604:	58004020 	beq	$r1,$r0,64(0x40) # 1c000644 <dfs+0x204>
1c000608:	00107f0d 	add.w	$r13,$r24,$r31
1c00060c:	1c0010a7 	pcaddu12i	$r7,133(0x85)
1c000610:	02b960e7 	addi.w	$r7,$r7,-424(0xe58)
1c000614:	004089a8 	slli.w	$r8,$r13,0x2
1c000618:	288000e9 	ld.w	$r9,$r7,0
1c00061c:	0010232a 	add.w	$r10,$r25,$r8
1c000620:	0010234b 	add.w	$r11,$r26,$r8
1c000624:	028007e5 	addi.w	$r5,$r31,1(0x1)
1c000628:	29800152 	st.w	$r18,$r10,0
1c00062c:	29800161 	st.w	$r1,$r11,0
1c000630:	001502e4 	move	$r4,$r23
1c000634:	64000d25 	bge	$r9,$r5,12(0xc) # 1c000640 <dfs+0x200>
1c000638:	028006e4 	addi.w	$r4,$r23,1(0x1)
1c00063c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000640:	57fe03ff 	bl	-512(0xffffe00) # 1c000440 <dfs>
1c000644:	288003c4 	ld.w	$r4,$r30,0
1c000648:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c00064c:	001c7085 	mul.w	$r5,$r4,$r28
1c000650:	00106cb1 	add.w	$r17,$r5,$r27
1c000654:	00408a32 	slli.w	$r18,$r17,0x2
1c000658:	00104baf 	add.w	$r15,$r29,$r18
1c00065c:	288001f3 	ld.w	$r19,$r15,0
1c000660:	58006660 	beq	$r19,$r0,100(0x64) # 1c0006c4 <dfs+0x284>
1c000664:	288002d0 	ld.w	$r16,$r22,0
1c000668:	03a8a414 	ori	$r20,$r0,0xa29
1c00066c:	001c720e 	mul.w	$r14,$r16,$r28
1c000670:	00106dc6 	add.w	$r6,$r14,$r27
1c000674:	001050cc 	add.w	$r12,$r6,$r20
1c000678:	00408981 	slli.w	$r1,$r12,0x2
1c00067c:	001007ad 	add.w	$r13,$r29,$r1
1c000680:	288001a7 	ld.w	$r7,$r13,0
1c000684:	580040e0 	beq	$r7,$r0,64(0x40) # 1c0006c4 <dfs+0x284>
1c000688:	00107f08 	add.w	$r8,$r24,$r31
1c00068c:	1c0010a9 	pcaddu12i	$r9,133(0x85)
1c000690:	02b76129 	addi.w	$r9,$r9,-552(0xdd8)
1c000694:	0040890a 	slli.w	$r10,$r8,0x2
1c000698:	2880012b 	ld.w	$r11,$r9,0
1c00069c:	00102b31 	add.w	$r17,$r25,$r10
1c0006a0:	00102b52 	add.w	$r18,$r26,$r10
1c0006a4:	028007e5 	addi.w	$r5,$r31,1(0x1)
1c0006a8:	29800233 	st.w	$r19,$r17,0
1c0006ac:	29800247 	st.w	$r7,$r18,0
1c0006b0:	001502e4 	move	$r4,$r23
1c0006b4:	64000d65 	bge	$r11,$r5,12(0xc) # 1c0006c0 <dfs+0x280>
1c0006b8:	028006e4 	addi.w	$r4,$r23,1(0x1)
1c0006bc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0006c0:	57fd83ff 	bl	-640(0xffffd80) # 1c000440 <dfs>
1c0006c4:	288003c4 	ld.w	$r4,$r30,0
1c0006c8:	02800765 	addi.w	$r5,$r27,1(0x1)
1c0006cc:	001c708f 	mul.w	$r15,$r4,$r28
1c0006d0:	001015f3 	add.w	$r19,$r15,$r5
1c0006d4:	00408a70 	slli.w	$r16,$r19,0x2
1c0006d8:	001043b4 	add.w	$r20,$r29,$r16
1c0006dc:	2880028e 	ld.w	$r14,$r20,0
1c0006e0:	580065c0 	beq	$r14,$r0,100(0x64) # 1c000744 <dfs+0x304>
1c0006e4:	288002c6 	ld.w	$r6,$r22,0
1c0006e8:	03a8a401 	ori	$r1,$r0,0xa29
1c0006ec:	001c70cc 	mul.w	$r12,$r6,$r28
1c0006f0:	0010158d 	add.w	$r13,$r12,$r5
1c0006f4:	001005a7 	add.w	$r7,$r13,$r1
1c0006f8:	004088e8 	slli.w	$r8,$r7,0x2
1c0006fc:	001023a9 	add.w	$r9,$r29,$r8
1c000700:	2880012a 	ld.w	$r10,$r9,0
1c000704:	58004140 	beq	$r10,$r0,64(0x40) # 1c000744 <dfs+0x304>
1c000708:	00107f0b 	add.w	$r11,$r24,$r31
1c00070c:	1c0010b1 	pcaddu12i	$r17,133(0x85)
1c000710:	02b56231 	addi.w	$r17,$r17,-680(0xd58)
1c000714:	00408972 	slli.w	$r18,$r11,0x2
1c000718:	2880022f 	ld.w	$r15,$r17,0
1c00071c:	00104b33 	add.w	$r19,$r25,$r18
1c000720:	00104b50 	add.w	$r16,$r26,$r18
1c000724:	028007e5 	addi.w	$r5,$r31,1(0x1)
1c000728:	2980026e 	st.w	$r14,$r19,0
1c00072c:	2980020a 	st.w	$r10,$r16,0
1c000730:	001502e4 	move	$r4,$r23
1c000734:	64000de5 	bge	$r15,$r5,12(0xc) # 1c000740 <dfs+0x300>
1c000738:	028006e4 	addi.w	$r4,$r23,1(0x1)
1c00073c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000740:	57fd03ff 	bl	-768(0xffffd00) # 1c000440 <dfs>
1c000744:	02800b7b 	addi.w	$r27,$r27,2(0x2)
1c000748:	5ffe837c 	bne	$r27,$r28,-384(0x3fe80) # 1c0005c8 <dfs+0x188>
1c00074c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c000750:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c000754:	28809077 	ld.w	$r23,$r3,36(0x24)
1c000758:	28808078 	ld.w	$r24,$r3,32(0x20)
1c00075c:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c000760:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c000764:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c000768:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c00076c:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c000770:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c000774:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c000778:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00077c:	4c000020 	jirl	$r0,$r1,0
1c000780:	1c0010a4 	pcaddu12i	$r4,133(0x85)
1c000784:	28b3e084 	ld.w	$r4,$r4,-776(0xcf8)
1c000788:	28800085 	ld.w	$r5,$r4,0
1c00078c:	028004b4 	addi.w	$r20,$r5,1(0x1)
1c000790:	29800094 	st.w	$r20,$r4,0
1c000794:	4c000020 	jirl	$r0,$r1,0
1c000798:	03400000 	andi	$r0,$r0,0x0
1c00079c:	03400000 	andi	$r0,$r0,0x0

1c0007a0 <run>:
run():
1c0007a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0007a4:	1c0010ac 	pcaddu12i	$r12,133(0x85)
1c0007a8:	02b3118c 	addi.w	$r12,$r12,-828(0xcc4)
1c0007ac:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0007b0:	28800181 	ld.w	$r1,$r12,0
1c0007b4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0007b8:	29809077 	st.w	$r23,$r3,36(0x24)
1c0007bc:	29808078 	st.w	$r24,$r3,32(0x20)
1c0007c0:	29807079 	st.w	$r25,$r3,28(0x1c)
1c0007c4:	2980607a 	st.w	$r26,$r3,24(0x18)
1c0007c8:	2980507b 	st.w	$r27,$r3,20(0x14)
1c0007cc:	2980407c 	st.w	$r28,$r3,16(0x10)
1c0007d0:	2980307d 	st.w	$r29,$r3,12(0xc)
1c0007d4:	2980207e 	st.w	$r30,$r3,8(0x8)
1c0007d8:	2980107f 	st.w	$r31,$r3,4(0x4)
1c0007dc:	6400a001 	bge	$r0,$r1,160(0xa0) # 1c00087c <run+0xdc>
1c0007e0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0007e4:	001c1025 	mul.w	$r5,$r1,$r4
1c0007e8:	1400004d 	lu12i.w	$r13,2(0x2)
1c0007ec:	1c001011 	pcaddu12i	$r17,128(0x80)
1c0007f0:	02a7f231 	addi.w	$r17,$r17,-1540(0x9fc)
1c0007f4:	03a281a6 	ori	$r6,$r13,0x8a0
1c0007f8:	001044c7 	add.w	$r7,$r6,$r17
1c0007fc:	1c0010b3 	pcaddu12i	$r19,133(0x85)
1c000800:	02af3273 	addi.w	$r19,$r19,-1076(0xbcc)
1c000804:	288000f0 	ld.w	$r16,$r7,0
1c000808:	02800679 	addi.w	$r25,$r19,1(0x1)
1c00080c:	00150014 	move	$r20,$r0
1c000810:	02806812 	addi.w	$r18,$r0,26(0x1a)
1c000814:	001064a8 	add.w	$r8,$r5,$r25
1c000818:	283fff38 	ld.b	$r24,$r25,-1(0xfff)
1c00081c:	58004700 	beq	$r24,$r0,68(0x44) # 1c000860 <run+0xc0>
1c000820:	0015032e 	move	$r14,$r25
1c000824:	00150017 	move	$r23,$r0
1c000828:	001c4ae9 	mul.w	$r9,$r23,$r18
1c00082c:	02be7f0a 	addi.w	$r10,$r24,-97(0xf9f)
1c000830:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000834:	283ffdd8 	ld.b	$r24,$r14,-1(0xfff)
1c000838:	0010292b 	add.w	$r11,$r9,$r10
1c00083c:	0040896f 	slli.w	$r15,$r11,0x2
1c000840:	00103e36 	add.w	$r22,$r17,$r15
1c000844:	288002d7 	ld.w	$r23,$r22,0
1c000848:	5c035ae0 	bne	$r23,$r0,856(0x358) # 1c000ba0 <run+0x400>
1c00084c:	02800610 	addi.w	$r16,$r16,1(0x1)
1c000850:	298002d0 	st.w	$r16,$r22,0
1c000854:	02800414 	addi.w	$r20,$r0,1(0x1)
1c000858:	00150217 	move	$r23,$r16
1c00085c:	5fffcf00 	bne	$r24,$r0,-52(0x3ffcc) # 1c000828 <run+0x88>
1c000860:	02800f39 	addi.w	$r25,$r25,3(0x3)
1c000864:	5fffb728 	bne	$r25,$r8,-76(0x3ffb4) # 1c000818 <run+0x78>
1c000868:	58001680 	beq	$r20,$r0,20(0x14) # 1c00087c <run+0xdc>
1c00086c:	1400005a 	lu12i.w	$r26,2(0x2)
1c000870:	03a2835b 	ori	$r27,$r26,0x8a0
1c000874:	0010477c 	add.w	$r28,$r27,$r17
1c000878:	29800390 	st.w	$r16,$r28,0
1c00087c:	1c0010bd 	pcaddu12i	$r29,133(0x85)
1c000880:	02af93bd 	addi.w	$r29,$r29,-1052(0xbe4)
1c000884:	288003be 	ld.w	$r30,$r29,0
1c000888:	6400a81e 	bge	$r0,$r30,168(0xa8) # 1c000930 <run+0x190>
1c00088c:	02800c1f 	addi.w	$r31,$r0,3(0x3)
1c000890:	001c7fcc 	mul.w	$r12,$r30,$r31
1c000894:	140000b3 	lu12i.w	$r19,5(0x5)
1c000898:	1c001011 	pcaddu12i	$r17,128(0x80)
1c00089c:	02a54231 	addi.w	$r17,$r17,-1712(0x950)
1c0008a0:	03851265 	ori	$r5,$r19,0x144
1c0008a4:	001044ad 	add.w	$r13,$r5,$r17
1c0008a8:	1c0010a1 	pcaddu12i	$r1,133(0x85)
1c0008ac:	02aa2021 	addi.w	$r1,$r1,-1400(0xa88)
1c0008b0:	288001b0 	ld.w	$r16,$r13,0
1c0008b4:	02800434 	addi.w	$r20,$r1,1(0x1)
1c0008b8:	00150004 	move	$r4,$r0
1c0008bc:	02806806 	addi.w	$r6,$r0,26(0x1a)
1c0008c0:	14000067 	lu12i.w	$r7,3(0x3)
1c0008c4:	00103292 	add.w	$r18,$r20,$r12
1c0008c8:	283ffe98 	ld.b	$r24,$r20,-1(0xfff)
1c0008cc:	58004b00 	beq	$r24,$r0,72(0x48) # 1c000914 <run+0x174>
1c0008d0:	0015028e 	move	$r14,$r20
1c0008d4:	00150017 	move	$r23,$r0
1c0008d8:	001c1ae8 	mul.w	$r8,$r23,$r6
1c0008dc:	02be7f09 	addi.w	$r9,$r24,-97(0xf9f)
1c0008e0:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0008e4:	283ffdd8 	ld.b	$r24,$r14,-1(0xfff)
1c0008e8:	0010250a 	add.w	$r10,$r8,$r9
1c0008ec:	0040894b 	slli.w	$r11,$r10,0x2
1c0008f0:	00102e2f 	add.w	$r15,$r17,$r11
1c0008f4:	00103cf6 	add.w	$r22,$r7,$r15
1c0008f8:	28a292d7 	ld.w	$r23,$r22,-1884(0x8a4)
1c0008fc:	5c02b6e0 	bne	$r23,$r0,692(0x2b4) # 1c000bb0 <run+0x410>
1c000900:	02800610 	addi.w	$r16,$r16,1(0x1)
1c000904:	29a292d0 	st.w	$r16,$r22,-1884(0x8a4)
1c000908:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00090c:	00150217 	move	$r23,$r16
1c000910:	5fffcb00 	bne	$r24,$r0,-56(0x3ffc8) # 1c0008d8 <run+0x138>
1c000914:	02800e94 	addi.w	$r20,$r20,3(0x3)
1c000918:	5fffb254 	bne	$r18,$r20,-80(0x3ffb0) # 1c0008c8 <run+0x128>
1c00091c:	58001480 	beq	$r4,$r0,20(0x14) # 1c000930 <run+0x190>
1c000920:	140000b9 	lu12i.w	$r25,5(0x5)
1c000924:	0385133a 	ori	$r26,$r25,0x144
1c000928:	0010475b 	add.w	$r27,$r26,$r17
1c00092c:	29800370 	st.w	$r16,$r27,0
1c000930:	1c0010ba 	pcaddu12i	$r26,133(0x85)
1c000934:	02acf35a 	addi.w	$r26,$r26,-1220(0xb3c)
1c000938:	2880035c 	ld.w	$r28,$r26,0
1c00093c:	02800819 	addi.w	$r25,$r0,2(0x2)
1c000940:	1c0010bf 	pcaddu12i	$r31,133(0x85)
1c000944:	28acf3ff 	ld.w	$r31,$r31,-1220(0xb3c)
1c000948:	1c0010b6 	pcaddu12i	$r22,133(0x85)
1c00094c:	02ac72d6 	addi.w	$r22,$r22,-1252(0xb1c)
1c000950:	02800418 	addi.w	$r24,$r0,1(0x1)
1c000954:	58027b80 	beq	$r28,$r0,632(0x278) # 1c000bcc <run+0x42c>
1c000958:	1c0010be 	pcaddu12i	$r30,133(0x85)
1c00095c:	28ac73de 	ld.w	$r30,$r30,-1252(0xb1c)
1c000960:	288013d1 	ld.w	$r17,$r30,4(0x4)
1c000964:	0280681c 	addi.w	$r28,$r0,26(0x1a)
1c000968:	1c00101d 	pcaddu12i	$r29,128(0x80)
1c00096c:	02a203bd 	addi.w	$r29,$r29,-1920(0x880)
1c000970:	001c722c 	mul.w	$r12,$r17,$r28
1c000974:	1c0010a1 	pcaddu12i	$r1,133(0x85)
1c000978:	28ac1021 	ld.w	$r1,$r1,-1276(0xb04)
1c00097c:	29800020 	st.w	$r0,$r1,0
1c000980:	03a8a417 	ori	$r23,$r0,0xa29
1c000984:	00408993 	slli.w	$r19,$r12,0x2
1c000988:	00104fa5 	add.w	$r5,$r29,$r19
1c00098c:	288000ad 	ld.w	$r13,$r5,0
1c000990:	58003da0 	beq	$r13,$r0,60(0x3c) # 1c0009cc <run+0x22c>
1c000994:	288063e6 	ld.w	$r6,$r31,24(0x18)
1c000998:	001c70c7 	mul.w	$r7,$r6,$r28
1c00099c:	00105cf2 	add.w	$r18,$r7,$r23
1c0009a0:	00408a48 	slli.w	$r8,$r18,0x2
1c0009a4:	001023a9 	add.w	$r9,$r29,$r8
1c0009a8:	2880012a 	ld.w	$r10,$r9,0
1c0009ac:	58002140 	beq	$r10,$r0,32(0x20) # 1c0009cc <run+0x22c>
1c0009b0:	288002cb 	ld.w	$r11,$r22,0
1c0009b4:	298073cd 	st.w	$r13,$r30,28(0x1c)
1c0009b8:	298073ea 	st.w	$r10,$r31,28(0x1c)
1c0009bc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0009c0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0009c4:	64021b0b 	bge	$r24,$r11,536(0x218) # 1c000bdc <run+0x43c>
1c0009c8:	57fa7bff 	bl	-1416(0xffffa78) # 1c000440 <dfs>
1c0009cc:	288013cf 	ld.w	$r15,$r30,4(0x4)
1c0009d0:	0280041b 	addi.w	$r27,$r0,1(0x1)
1c0009d4:	001c71ee 	mul.w	$r14,$r15,$r28
1c0009d8:	028005d0 	addi.w	$r16,$r14,1(0x1)
1c0009dc:	00408a04 	slli.w	$r4,$r16,0x2
1c0009e0:	001013b4 	add.w	$r20,$r29,$r4
1c0009e4:	28800281 	ld.w	$r1,$r20,0
1c0009e8:	58004820 	beq	$r1,$r0,72(0x48) # 1c000a30 <run+0x290>
1c0009ec:	288063f1 	ld.w	$r17,$r31,24(0x18)
1c0009f0:	001c722c 	mul.w	$r12,$r17,$r28
1c0009f4:	02800593 	addi.w	$r19,$r12,1(0x1)
1c0009f8:	00105e65 	add.w	$r5,$r19,$r23
1c0009fc:	004088ad 	slli.w	$r13,$r5,0x2
1c000a00:	001037a6 	add.w	$r6,$r29,$r13
1c000a04:	288000c7 	ld.w	$r7,$r6,0
1c000a08:	580028e0 	beq	$r7,$r0,40(0x28) # 1c000a30 <run+0x290>
1c000a0c:	288002d2 	ld.w	$r18,$r22,0
1c000a10:	298073c1 	st.w	$r1,$r30,28(0x1c)
1c000a14:	298073e7 	st.w	$r7,$r31,28(0x1c)
1c000a18:	02800805 	addi.w	$r5,$r0,2(0x2)
1c000a1c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000a20:	60000f12 	blt	$r24,$r18,12(0xc) # 1c000a2c <run+0x28c>
1c000a24:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000a28:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000a2c:	57fa17ff 	bl	-1516(0xffffa14) # 1c000440 <dfs>
1c000a30:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c000a34:	288013c8 	ld.w	$r8,$r30,4(0x4)
1c000a38:	001c7109 	mul.w	$r9,$r8,$r28
1c000a3c:	00106d2a 	add.w	$r10,$r9,$r27
1c000a40:	0040894b 	slli.w	$r11,$r10,0x2
1c000a44:	00102faf 	add.w	$r15,$r29,$r11
1c000a48:	288001ee 	ld.w	$r14,$r15,0
1c000a4c:	580049c0 	beq	$r14,$r0,72(0x48) # 1c000a94 <run+0x2f4>
1c000a50:	288063f0 	ld.w	$r16,$r31,24(0x18)
1c000a54:	001c7204 	mul.w	$r4,$r16,$r28
1c000a58:	00106c94 	add.w	$r20,$r4,$r27
1c000a5c:	00105e81 	add.w	$r1,$r20,$r23
1c000a60:	00408831 	slli.w	$r17,$r1,0x2
1c000a64:	001047ac 	add.w	$r12,$r29,$r17
1c000a68:	28800193 	ld.w	$r19,$r12,0
1c000a6c:	58002a60 	beq	$r19,$r0,40(0x28) # 1c000a94 <run+0x2f4>
1c000a70:	288002cd 	ld.w	$r13,$r22,0
1c000a74:	298073ce 	st.w	$r14,$r30,28(0x1c)
1c000a78:	298073f3 	st.w	$r19,$r31,28(0x1c)
1c000a7c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c000a80:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000a84:	60000f0d 	blt	$r24,$r13,12(0xc) # 1c000a90 <run+0x2f0>
1c000a88:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000a8c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000a90:	57f9b3ff 	bl	-1616(0xffff9b0) # 1c000440 <dfs>
1c000a94:	288013c5 	ld.w	$r5,$r30,4(0x4)
1c000a98:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c000a9c:	001c70a6 	mul.w	$r6,$r5,$r28
1c000aa0:	00106cc7 	add.w	$r7,$r6,$r27
1c000aa4:	004088f2 	slli.w	$r18,$r7,0x2
1c000aa8:	00104ba8 	add.w	$r8,$r29,$r18
1c000aac:	28800109 	ld.w	$r9,$r8,0
1c000ab0:	58004920 	beq	$r9,$r0,72(0x48) # 1c000af8 <run+0x358>
1c000ab4:	288063ea 	ld.w	$r10,$r31,24(0x18)
1c000ab8:	001c714b 	mul.w	$r11,$r10,$r28
1c000abc:	00106d6f 	add.w	$r15,$r11,$r27
1c000ac0:	00105dee 	add.w	$r14,$r15,$r23
1c000ac4:	004089d0 	slli.w	$r16,$r14,0x2
1c000ac8:	001043a4 	add.w	$r4,$r29,$r16
1c000acc:	28800094 	ld.w	$r20,$r4,0
1c000ad0:	58002a80 	beq	$r20,$r0,40(0x28) # 1c000af8 <run+0x358>
1c000ad4:	288002c1 	ld.w	$r1,$r22,0
1c000ad8:	298073c9 	st.w	$r9,$r30,28(0x1c)
1c000adc:	298073f4 	st.w	$r20,$r31,28(0x1c)
1c000ae0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c000ae4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000ae8:	60000f01 	blt	$r24,$r1,12(0xc) # 1c000af4 <run+0x354>
1c000aec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000af0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000af4:	57f94fff 	bl	-1716(0xffff94c) # 1c000440 <dfs>
1c000af8:	288013d1 	ld.w	$r17,$r30,4(0x4)
1c000afc:	02800773 	addi.w	$r19,$r27,1(0x1)
1c000b00:	001c722c 	mul.w	$r12,$r17,$r28
1c000b04:	00104d8d 	add.w	$r13,$r12,$r19
1c000b08:	004089a5 	slli.w	$r5,$r13,0x2
1c000b0c:	001017a6 	add.w	$r6,$r29,$r5
1c000b10:	288000c7 	ld.w	$r7,$r6,0
1c000b14:	580048e0 	beq	$r7,$r0,72(0x48) # 1c000b5c <run+0x3bc>
1c000b18:	288063f2 	ld.w	$r18,$r31,24(0x18)
1c000b1c:	001c7248 	mul.w	$r8,$r18,$r28
1c000b20:	00104d09 	add.w	$r9,$r8,$r19
1c000b24:	00105d2a 	add.w	$r10,$r9,$r23
1c000b28:	0040894b 	slli.w	$r11,$r10,0x2
1c000b2c:	00102faf 	add.w	$r15,$r29,$r11
1c000b30:	288001f0 	ld.w	$r16,$r15,0
1c000b34:	58002a00 	beq	$r16,$r0,40(0x28) # 1c000b5c <run+0x3bc>
1c000b38:	288002ce 	ld.w	$r14,$r22,0
1c000b3c:	298073c7 	st.w	$r7,$r30,28(0x1c)
1c000b40:	298073f0 	st.w	$r16,$r31,28(0x1c)
1c000b44:	02800805 	addi.w	$r5,$r0,2(0x2)
1c000b48:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000b4c:	60000f0e 	blt	$r24,$r14,12(0xc) # 1c000b58 <run+0x3b8>
1c000b50:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000b54:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000b58:	57f8ebff 	bl	-1816(0xffff8e8) # 1c000440 <dfs>
1c000b5c:	02800b7b 	addi.w	$r27,$r27,2(0x2)
1c000b60:	5ffed77c 	bne	$r27,$r28,-300(0x3fed4) # 1c000a34 <run+0x294>
1c000b64:	5c005f38 	bne	$r25,$r24,92(0x5c) # 1c000bc0 <run+0x420>
1c000b68:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c000b6c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c000b70:	28809077 	ld.w	$r23,$r3,36(0x24)
1c000b74:	28808078 	ld.w	$r24,$r3,32(0x20)
1c000b78:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c000b7c:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c000b80:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c000b84:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c000b88:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c000b8c:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c000b90:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c000b94:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c000b98:	4c000020 	jirl	$r0,$r1,0
1c000b9c:	03400000 	andi	$r0,$r0,0x0
1c000ba0:	5ffc8b00 	bne	$r24,$r0,-888(0x3fc88) # 1c000828 <run+0x88>
1c000ba4:	02800f39 	addi.w	$r25,$r25,3(0x3)
1c000ba8:	5ffc7328 	bne	$r25,$r8,-912(0x3fc70) # 1c000818 <run+0x78>
1c000bac:	53fcbfff 	b	-836(0xffffcbc) # 1c000868 <run+0xc8>
1c000bb0:	5ffd2b00 	bne	$r24,$r0,-728(0x3fd28) # 1c0008d8 <run+0x138>
1c000bb4:	02800e94 	addi.w	$r20,$r20,3(0x3)
1c000bb8:	5ffd1254 	bne	$r18,$r20,-752(0x3fd10) # 1c0008c8 <run+0x128>
1c000bbc:	53fd63ff 	b	-672(0xffffd60) # 1c00091c <run+0x17c>
1c000bc0:	2880035c 	ld.w	$r28,$r26,0
1c000bc4:	02800419 	addi.w	$r25,$r0,1(0x1)
1c000bc8:	5ffd9380 	bne	$r28,$r0,-624(0x3fd90) # 1c000958 <run+0x1b8>
1c000bcc:	1c0010be 	pcaddu12i	$r30,133(0x85)
1c000bd0:	28a2b3de 	ld.w	$r30,$r30,-1876(0x8ac)
1c000bd4:	298003d8 	st.w	$r24,$r30,0
1c000bd8:	53ff8fff 	b	-116(0xfffff8c) # 1c000b64 <run+0x3c4>
1c000bdc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000be0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000be4:	53fde7ff 	b	-540(0xffffde4) # 1c0009c8 <run+0x228>
1c000be8:	03400000 	andi	$r0,$r0,0x0
1c000bec:	03400000 	andi	$r0,$r0,0x0

1c000bf0 <shell13_main>:
shell13_main():
1c000bf0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c000bf4:	1c0010ac 	pcaddu12i	$r12,133(0x85)
1c000bf8:	02a1d18c 	addi.w	$r12,$r12,-1932(0x874)
1c000bfc:	1400004f 	lu12i.w	$r15,2(0x2)
1c000c00:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000c04:	2980d077 	st.w	$r23,$r3,52(0x34)
1c000c08:	03a291ed 	ori	$r13,$r15,0x8a4
1c000c0c:	1c000ff7 	pcaddu12i	$r23,127(0x7f)
1c000c10:	029772f7 	addi.w	$r23,$r23,1500(0x5dc)
1c000c14:	28800181 	ld.w	$r1,$r12,0
1c000c18:	2980e076 	st.w	$r22,$r3,56(0x38)
1c000c1c:	2980c078 	st.w	$r24,$r3,48(0x30)
1c000c20:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c000c24:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c000c28:	2980907b 	st.w	$r27,$r3,36(0x24)
1c000c2c:	2980807c 	st.w	$r28,$r3,32(0x20)
1c000c30:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c000c34:	2980607e 	st.w	$r30,$r3,24(0x18)
1c000c38:	2980507f 	st.w	$r31,$r3,20(0x14)
1c000c3c:	00105da4 	add.w	$r4,$r13,$r23
1c000c40:	298002e0 	st.w	$r0,$r23,0
1c000c44:	29800080 	st.w	$r0,$r4,0
1c000c48:	64009801 	bge	$r0,$r1,152(0x98) # 1c000ce0 <shell13_main+0xf0>
1c000c4c:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c000c50:	001c4027 	mul.w	$r7,$r1,$r16
1c000c54:	03a281e5 	ori	$r5,$r15,0x8a0
1c000c58:	00105ca6 	add.w	$r6,$r5,$r23
1c000c5c:	1c00108e 	pcaddu12i	$r14,132(0x84)
1c000c60:	029db1ce 	addi.w	$r14,$r14,1900(0x76c)
1c000c64:	288000d1 	ld.w	$r17,$r6,0
1c000c68:	028005db 	addi.w	$r27,$r14,1(0x1)
1c000c6c:	00150012 	move	$r18,$r0
1c000c70:	02806814 	addi.w	$r20,$r0,26(0x1a)
1c000c74:	00106ce8 	add.w	$r8,$r7,$r27
1c000c78:	283fff79 	ld.b	$r25,$r27,-1(0xfff)
1c000c7c:	58004b20 	beq	$r25,$r0,72(0x48) # 1c000cc4 <shell13_main+0xd4>
1c000c80:	00150378 	move	$r24,$r27
1c000c84:	0015001a 	move	$r26,$r0
1c000c88:	001c5349 	mul.w	$r9,$r26,$r20
1c000c8c:	02be7f2a 	addi.w	$r10,$r25,-97(0xf9f)
1c000c90:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000c94:	283fff19 	ld.b	$r25,$r24,-1(0xfff)
1c000c98:	0010292b 	add.w	$r11,$r9,$r10
1c000c9c:	00408973 	slli.w	$r19,$r11,0x2
1c000ca0:	00104ef6 	add.w	$r22,$r23,$r19
1c000ca4:	288002da 	ld.w	$r26,$r22,0
1c000ca8:	5c037f40 	bne	$r26,$r0,892(0x37c) # 1c001024 <shell13_main+0x434>
1c000cac:	0280063a 	addi.w	$r26,$r17,1(0x1)
1c000cb0:	298002da 	st.w	$r26,$r22,0
1c000cb4:	02800412 	addi.w	$r18,$r0,1(0x1)
1c000cb8:	00150351 	move	$r17,$r26
1c000cbc:	5fffcf20 	bne	$r25,$r0,-52(0x3ffcc) # 1c000c88 <shell13_main+0x98>
1c000cc0:	00150351 	move	$r17,$r26
1c000cc4:	02800f7b 	addi.w	$r27,$r27,3(0x3)
1c000cc8:	5fffb368 	bne	$r27,$r8,-80(0x3ffb0) # 1c000c78 <shell13_main+0x88>
1c000ccc:	58001640 	beq	$r18,$r0,20(0x14) # 1c000ce0 <shell13_main+0xf0>
1c000cd0:	1400005c 	lu12i.w	$r28,2(0x2)
1c000cd4:	03a2839d 	ori	$r29,$r28,0x8a0
1c000cd8:	00105fbe 	add.w	$r30,$r29,$r23
1c000cdc:	298003d1 	st.w	$r17,$r30,0
1c000ce0:	1c00109f 	pcaddu12i	$r31,132(0x84)
1c000ce4:	029e03ff 	addi.w	$r31,$r31,1920(0x780)
1c000ce8:	288003ec 	ld.w	$r12,$r31,0
1c000cec:	6400a40c 	bge	$r0,$r12,164(0xa4) # 1c000d90 <shell13_main+0x1a0>
1c000cf0:	02800c01 	addi.w	$r1,$r0,3(0x3)
1c000cf4:	001c0585 	mul.w	$r5,$r12,$r1
1c000cf8:	140000ad 	lu12i.w	$r13,5(0x5)
1c000cfc:	038511a4 	ori	$r4,$r13,0x144
1c000d00:	00105c90 	add.w	$r16,$r4,$r23
1c000d04:	1c00108f 	pcaddu12i	$r15,132(0x84)
1c000d08:	0298b1ef 	addi.w	$r15,$r15,1580(0x62c)
1c000d0c:	28800211 	ld.w	$r17,$r16,0
1c000d10:	028005ee 	addi.w	$r14,$r15,1(0x1)
1c000d14:	00150012 	move	$r18,$r0
1c000d18:	02806806 	addi.w	$r6,$r0,26(0x1a)
1c000d1c:	14000067 	lu12i.w	$r7,3(0x3)
1c000d20:	001015d4 	add.w	$r20,$r14,$r5
1c000d24:	283ffdd9 	ld.b	$r25,$r14,-1(0xfff)
1c000d28:	58004f20 	beq	$r25,$r0,76(0x4c) # 1c000d74 <shell13_main+0x184>
1c000d2c:	001501d8 	move	$r24,$r14
1c000d30:	0015001a 	move	$r26,$r0
1c000d34:	001c1b48 	mul.w	$r8,$r26,$r6
1c000d38:	02be7f29 	addi.w	$r9,$r25,-97(0xf9f)
1c000d3c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000d40:	283fff19 	ld.b	$r25,$r24,-1(0xfff)
1c000d44:	0010250a 	add.w	$r10,$r8,$r9
1c000d48:	0040894b 	slli.w	$r11,$r10,0x2
1c000d4c:	00102ef3 	add.w	$r19,$r23,$r11
1c000d50:	00104cf6 	add.w	$r22,$r7,$r19
1c000d54:	28a292da 	ld.w	$r26,$r22,-1884(0x8a4)
1c000d58:	5c02c340 	bne	$r26,$r0,704(0x2c0) # 1c001018 <shell13_main+0x428>
1c000d5c:	0280063a 	addi.w	$r26,$r17,1(0x1)
1c000d60:	29a292da 	st.w	$r26,$r22,-1884(0x8a4)
1c000d64:	02800412 	addi.w	$r18,$r0,1(0x1)
1c000d68:	00150351 	move	$r17,$r26
1c000d6c:	5fffcb20 	bne	$r25,$r0,-56(0x3ffc8) # 1c000d34 <shell13_main+0x144>
1c000d70:	00150351 	move	$r17,$r26
1c000d74:	02800dce 	addi.w	$r14,$r14,3(0x3)
1c000d78:	5fffae8e 	bne	$r20,$r14,-84(0x3ffac) # 1c000d24 <shell13_main+0x134>
1c000d7c:	58001640 	beq	$r18,$r0,20(0x14) # 1c000d90 <shell13_main+0x1a0>
1c000d80:	140000bb 	lu12i.w	$r27,5(0x5)
1c000d84:	0385137c 	ori	$r28,$r27,0x144
1c000d88:	00105f9d 	add.w	$r29,$r28,$r23
1c000d8c:	298003b1 	st.w	$r17,$r29,0
1c000d90:	0280081e 	addi.w	$r30,$r0,2(0x2)
1c000d94:	2980307e 	st.w	$r30,$r3,12(0xc)
1c000d98:	1c00109e 	pcaddu12i	$r30,132(0x84)
1c000d9c:	029b53de 	addi.w	$r30,$r30,1748(0x6d4)
1c000da0:	288003cc 	ld.w	$r12,$r30,0
1c000da4:	1c00109c 	pcaddu12i	$r28,132(0x84)
1c000da8:	289b539c 	ld.w	$r28,$r28,1748(0x6d4)
1c000dac:	1c00109f 	pcaddu12i	$r31,132(0x84)
1c000db0:	289b43ff 	ld.w	$r31,$r31,1744(0x6d0)
1c000db4:	1c00109d 	pcaddu12i	$r29,132(0x84)
1c000db8:	029ac3bd 	addi.w	$r29,$r29,1712(0x6b0)
1c000dbc:	0280041a 	addi.w	$r26,$r0,1(0x1)
1c000dc0:	58028180 	beq	$r12,$r0,640(0x280) # 1c001040 <shell13_main+0x450>
1c000dc4:	1c001096 	pcaddu12i	$r22,132(0x84)
1c000dc8:	289ac2d6 	ld.w	$r22,$r22,1712(0x6b0)
1c000dcc:	288012c1 	ld.w	$r1,$r22,4(0x4)
1c000dd0:	02806819 	addi.w	$r25,$r0,26(0x1a)
1c000dd4:	29800380 	st.w	$r0,$r28,0
1c000dd8:	001c642f 	mul.w	$r15,$r1,$r25
1c000ddc:	03a8a41b 	ori	$r27,$r0,0xa29
1c000de0:	004089ed 	slli.w	$r13,$r15,0x2
1c000de4:	001036e4 	add.w	$r4,$r23,$r13
1c000de8:	28800090 	ld.w	$r16,$r4,0
1c000dec:	58003e00 	beq	$r16,$r0,60(0x3c) # 1c000e28 <shell13_main+0x238>
1c000df0:	288063e5 	ld.w	$r5,$r31,24(0x18)
1c000df4:	001c64a6 	mul.w	$r6,$r5,$r25
1c000df8:	00106cc7 	add.w	$r7,$r6,$r27
1c000dfc:	004088f4 	slli.w	$r20,$r7,0x2
1c000e00:	001052e8 	add.w	$r8,$r23,$r20
1c000e04:	28800109 	ld.w	$r9,$r8,0
1c000e08:	58002120 	beq	$r9,$r0,32(0x20) # 1c000e28 <shell13_main+0x238>
1c000e0c:	288003aa 	ld.w	$r10,$r29,0
1c000e10:	298072d0 	st.w	$r16,$r22,28(0x1c)
1c000e14:	298073e9 	st.w	$r9,$r31,28(0x1c)
1c000e18:	02800805 	addi.w	$r5,$r0,2(0x2)
1c000e1c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000e20:	64022b4a 	bge	$r26,$r10,552(0x228) # 1c001048 <shell13_main+0x458>
1c000e24:	57f61fff 	bl	-2532(0xffff61c) # 1c000440 <dfs>
1c000e28:	288012cb 	ld.w	$r11,$r22,4(0x4)
1c000e2c:	02800418 	addi.w	$r24,$r0,1(0x1)
1c000e30:	001c6573 	mul.w	$r19,$r11,$r25
1c000e34:	02800672 	addi.w	$r18,$r19,1(0x1)
1c000e38:	00408a51 	slli.w	$r17,$r18,0x2
1c000e3c:	001046ee 	add.w	$r14,$r23,$r17
1c000e40:	288001c1 	ld.w	$r1,$r14,0
1c000e44:	58004820 	beq	$r1,$r0,72(0x48) # 1c000e8c <shell13_main+0x29c>
1c000e48:	288063ec 	ld.w	$r12,$r31,24(0x18)
1c000e4c:	001c658f 	mul.w	$r15,$r12,$r25
1c000e50:	028005ed 	addi.w	$r13,$r15,1(0x1)
1c000e54:	00106da4 	add.w	$r4,$r13,$r27
1c000e58:	00408890 	slli.w	$r16,$r4,0x2
1c000e5c:	001042e5 	add.w	$r5,$r23,$r16
1c000e60:	288000a6 	ld.w	$r6,$r5,0
1c000e64:	580028c0 	beq	$r6,$r0,40(0x28) # 1c000e8c <shell13_main+0x29c>
1c000e68:	288003a7 	ld.w	$r7,$r29,0
1c000e6c:	298072c1 	st.w	$r1,$r22,28(0x1c)
1c000e70:	298073e6 	st.w	$r6,$r31,28(0x1c)
1c000e74:	02800805 	addi.w	$r5,$r0,2(0x2)
1c000e78:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000e7c:	60000f47 	blt	$r26,$r7,12(0xc) # 1c000e88 <shell13_main+0x298>
1c000e80:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000e84:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000e88:	57f5bbff 	bl	-2632(0xffff5b8) # 1c000440 <dfs>
1c000e8c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000e90:	288012d4 	ld.w	$r20,$r22,4(0x4)
1c000e94:	001c6688 	mul.w	$r8,$r20,$r25
1c000e98:	00106109 	add.w	$r9,$r8,$r24
1c000e9c:	0040892a 	slli.w	$r10,$r9,0x2
1c000ea0:	00102aeb 	add.w	$r11,$r23,$r10
1c000ea4:	28800173 	ld.w	$r19,$r11,0
1c000ea8:	58004a60 	beq	$r19,$r0,72(0x48) # 1c000ef0 <shell13_main+0x300>
1c000eac:	288063f2 	ld.w	$r18,$r31,24(0x18)
1c000eb0:	001c6651 	mul.w	$r17,$r18,$r25
1c000eb4:	0010622e 	add.w	$r14,$r17,$r24
1c000eb8:	00106dc1 	add.w	$r1,$r14,$r27
1c000ebc:	0040882c 	slli.w	$r12,$r1,0x2
1c000ec0:	001032ef 	add.w	$r15,$r23,$r12
1c000ec4:	288001ed 	ld.w	$r13,$r15,0
1c000ec8:	580029a0 	beq	$r13,$r0,40(0x28) # 1c000ef0 <shell13_main+0x300>
1c000ecc:	288003b0 	ld.w	$r16,$r29,0
1c000ed0:	298072d3 	st.w	$r19,$r22,28(0x1c)
1c000ed4:	298073ed 	st.w	$r13,$r31,28(0x1c)
1c000ed8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c000edc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000ee0:	60000f50 	blt	$r26,$r16,12(0xc) # 1c000eec <shell13_main+0x2fc>
1c000ee4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000ee8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000eec:	57f557ff 	bl	-2732(0xffff554) # 1c000440 <dfs>
1c000ef0:	288012c4 	ld.w	$r4,$r22,4(0x4)
1c000ef4:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000ef8:	001c6485 	mul.w	$r5,$r4,$r25
1c000efc:	001060a6 	add.w	$r6,$r5,$r24
1c000f00:	004088c7 	slli.w	$r7,$r6,0x2
1c000f04:	00101ef4 	add.w	$r20,$r23,$r7
1c000f08:	28800288 	ld.w	$r8,$r20,0
1c000f0c:	58004900 	beq	$r8,$r0,72(0x48) # 1c000f54 <shell13_main+0x364>
1c000f10:	288063e9 	ld.w	$r9,$r31,24(0x18)
1c000f14:	001c652a 	mul.w	$r10,$r9,$r25
1c000f18:	0010614b 	add.w	$r11,$r10,$r24
1c000f1c:	00106d73 	add.w	$r19,$r11,$r27
1c000f20:	00408a72 	slli.w	$r18,$r19,0x2
1c000f24:	00104af1 	add.w	$r17,$r23,$r18
1c000f28:	2880022e 	ld.w	$r14,$r17,0
1c000f2c:	580029c0 	beq	$r14,$r0,40(0x28) # 1c000f54 <shell13_main+0x364>
1c000f30:	288003a1 	ld.w	$r1,$r29,0
1c000f34:	298072c8 	st.w	$r8,$r22,28(0x1c)
1c000f38:	298073ee 	st.w	$r14,$r31,28(0x1c)
1c000f3c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c000f40:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000f44:	60000f41 	blt	$r26,$r1,12(0xc) # 1c000f50 <shell13_main+0x360>
1c000f48:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000f4c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000f50:	57f4f3ff 	bl	-2832(0xffff4f0) # 1c000440 <dfs>
1c000f54:	288012cc 	ld.w	$r12,$r22,4(0x4)
1c000f58:	0280070f 	addi.w	$r15,$r24,1(0x1)
1c000f5c:	001c658d 	mul.w	$r13,$r12,$r25
1c000f60:	00103db0 	add.w	$r16,$r13,$r15
1c000f64:	00408a04 	slli.w	$r4,$r16,0x2
1c000f68:	001012e5 	add.w	$r5,$r23,$r4
1c000f6c:	288000a6 	ld.w	$r6,$r5,0
1c000f70:	580048c0 	beq	$r6,$r0,72(0x48) # 1c000fb8 <shell13_main+0x3c8>
1c000f74:	288063e7 	ld.w	$r7,$r31,24(0x18)
1c000f78:	001c64f4 	mul.w	$r20,$r7,$r25
1c000f7c:	00103e88 	add.w	$r8,$r20,$r15
1c000f80:	00106d09 	add.w	$r9,$r8,$r27
1c000f84:	0040892a 	slli.w	$r10,$r9,0x2
1c000f88:	00102aeb 	add.w	$r11,$r23,$r10
1c000f8c:	28800173 	ld.w	$r19,$r11,0
1c000f90:	58002a60 	beq	$r19,$r0,40(0x28) # 1c000fb8 <shell13_main+0x3c8>
1c000f94:	288003b2 	ld.w	$r18,$r29,0
1c000f98:	298072c6 	st.w	$r6,$r22,28(0x1c)
1c000f9c:	298073f3 	st.w	$r19,$r31,28(0x1c)
1c000fa0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c000fa4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000fa8:	60000f52 	blt	$r26,$r18,12(0xc) # 1c000fb4 <shell13_main+0x3c4>
1c000fac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000fb0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000fb4:	57f48fff 	bl	-2932(0xffff48c) # 1c000440 <dfs>
1c000fb8:	02800b18 	addi.w	$r24,$r24,2(0x2)
1c000fbc:	5ffed719 	bne	$r24,$r25,-300(0x3fed4) # 1c000e90 <shell13_main+0x2a0>
1c000fc0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c000fc4:	5c006eda 	bne	$r22,$r26,108(0x6c) # 1c001030 <shell13_main+0x440>
1c000fc8:	28800385 	ld.w	$r5,$r28,0
1c000fcc:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000fd0:	0280d084 	addi.w	$r4,$r4,52(0x34)
1c000fd4:	540a5c00 	bl	2652(0xa5c) # 1c001a30 <printf>
1c000fd8:	28800397 	ld.w	$r23,$r28,0
1c000fdc:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c000fe0:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c000fe4:	03c0faff 	xori	$r31,$r23,0x3e
1c000fe8:	0012fc04 	sltu	$r4,$r0,$r31
1c000fec:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c000ff0:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c000ff4:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c000ff8:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c000ffc:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c001000:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c001004:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c001008:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c00100c:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c001010:	02810063 	addi.w	$r3,$r3,64(0x40)
1c001014:	4c000020 	jirl	$r0,$r1,0
1c001018:	5ffd1f20 	bne	$r25,$r0,-740(0x3fd1c) # 1c000d34 <shell13_main+0x144>
1c00101c:	0015023a 	move	$r26,$r17
1c001020:	53fd53ff 	b	-688(0xffffd50) # 1c000d70 <shell13_main+0x180>
1c001024:	5ffc6720 	bne	$r25,$r0,-924(0x3fc64) # 1c000c88 <shell13_main+0x98>
1c001028:	0015023a 	move	$r26,$r17
1c00102c:	53fc97ff 	b	-876(0xffffc94) # 1c000cc0 <shell13_main+0xd0>
1c001030:	288003cc 	ld.w	$r12,$r30,0
1c001034:	02800419 	addi.w	$r25,$r0,1(0x1)
1c001038:	29803079 	st.w	$r25,$r3,12(0xc)
1c00103c:	5ffd8980 	bne	$r12,$r0,-632(0x3fd88) # 1c000dc4 <shell13_main+0x1d4>
1c001040:	2980039a 	st.w	$r26,$r28,0
1c001044:	53ff7fff 	b	-132(0xfffff7c) # 1c000fc0 <shell13_main+0x3d0>
1c001048:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00104c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c001050:	53fdd7ff 	b	-556(0xffffdd4) # 1c000e24 <shell13_main+0x234>
1c001054:	03400000 	andi	$r0,$r0,0x0
1c001058:	03400000 	andi	$r0,$r0,0x0
1c00105c:	03400000 	andi	$r0,$r0,0x0

1c001060 <shell13>:
shell13():
1c001060:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c001064:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001068:	02be8084 	addi.w	$r4,$r4,-96(0xfa0)
1c00106c:	29813061 	st.w	$r1,$r3,76(0x4c)
1c001070:	29812076 	st.w	$r22,$r3,72(0x48)
1c001074:	29811077 	st.w	$r23,$r3,68(0x44)
1c001078:	29810078 	st.w	$r24,$r3,64(0x40)
1c00107c:	2980f079 	st.w	$r25,$r3,60(0x3c)
1c001080:	2980e07a 	st.w	$r26,$r3,56(0x38)
1c001084:	2980d07b 	st.w	$r27,$r3,52(0x34)
1c001088:	2980c07c 	st.w	$r28,$r3,48(0x30)
1c00108c:	2980b07d 	st.w	$r29,$r3,44(0x2c)
1c001090:	2980a07e 	st.w	$r30,$r3,40(0x28)
1c001094:	2980907f 	st.w	$r31,$r3,36(0x24)
1c001098:	540cb800 	bl	3256(0xcb8) # 1c001d50 <puts>
1c00109c:	540dd400 	bl	3540(0xdd4) # 1c001e70 <get_count>
1c0010a0:	29806064 	st.w	$r4,$r3,24(0x18)
1c0010a4:	540dfc00 	bl	3580(0xdfc) # 1c001ea0 <get_count_my>
1c0010a8:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c0010ac:	29807064 	st.w	$r4,$r3,28(0x1c)
1c0010b0:	03bc8184 	ori	$r4,$r12,0xf20
1c0010b4:	28800085 	ld.w	$r5,$r4,0
1c0010b8:	5c0538a0 	bne	$r5,$r0,1336(0x538) # 1c0015f0 <shell13+0x590>
1c0010bc:	02801001 	addi.w	$r1,$r0,4(0x4)
1c0010c0:	29805061 	st.w	$r1,$r3,20(0x14)
1c0010c4:	29803060 	st.w	$r0,$r3,12(0xc)
1c0010c8:	1c000ff6 	pcaddu12i	$r22,127(0x7f)
1c0010cc:	028482d6 	addi.w	$r22,$r22,288(0x120)
1c0010d0:	1c00109a 	pcaddu12i	$r26,132(0x84)
1c0010d4:	288ea35a 	ld.w	$r26,$r26,936(0x3a8)
1c0010d8:	1c00109f 	pcaddu12i	$r31,132(0x84)
1c0010dc:	288e93ff 	ld.w	$r31,$r31,932(0x3a4)
1c0010e0:	1c001099 	pcaddu12i	$r25,132(0x84)
1c0010e4:	028e1339 	addi.w	$r25,$r25,900(0x384)
1c0010e8:	1c001086 	pcaddu12i	$r6,132(0x84)
1c0010ec:	028e00c6 	addi.w	$r6,$r6,896(0x380)
1c0010f0:	1400004e 	lu12i.w	$r14,2(0x2)
1c0010f4:	03a291cd 	ori	$r13,$r14,0x8a4
1c0010f8:	288000c7 	ld.w	$r7,$r6,0
1c0010fc:	001059a8 	add.w	$r8,$r13,$r22
1c001100:	298002c0 	st.w	$r0,$r22,0
1c001104:	29800100 	st.w	$r0,$r8,0
1c001108:	64009807 	bge	$r0,$r7,152(0x98) # 1c0011a0 <shell13+0x140>
1c00110c:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c001110:	001c48eb 	mul.w	$r11,$r7,$r18
1c001114:	03a281c9 	ori	$r9,$r14,0x8a0
1c001118:	0010592a 	add.w	$r10,$r9,$r22
1c00111c:	1c001090 	pcaddu12i	$r16,132(0x84)
1c001120:	028ab210 	addi.w	$r16,$r16,684(0x2ac)
1c001124:	28800153 	ld.w	$r19,$r10,0
1c001128:	02800605 	addi.w	$r5,$r16,1(0x1)
1c00112c:	00150014 	move	$r20,$r0
1c001130:	0280680f 	addi.w	$r15,$r0,26(0x1a)
1c001134:	00102cb7 	add.w	$r23,$r5,$r11
1c001138:	283ffca4 	ld.b	$r4,$r5,-1(0xfff)
1c00113c:	58004880 	beq	$r4,$r0,72(0x48) # 1c001184 <shell13+0x124>
1c001140:	001500b1 	move	$r17,$r5
1c001144:	0015000c 	move	$r12,$r0
1c001148:	001c3d98 	mul.w	$r24,$r12,$r15
1c00114c:	02be7c9b 	addi.w	$r27,$r4,-97(0xf9f)
1c001150:	02800631 	addi.w	$r17,$r17,1(0x1)
1c001154:	283ffe24 	ld.b	$r4,$r17,-1(0xfff)
1c001158:	00106f1c 	add.w	$r28,$r24,$r27
1c00115c:	00408b9d 	slli.w	$r29,$r28,0x2
1c001160:	001076de 	add.w	$r30,$r22,$r29
1c001164:	288003cc 	ld.w	$r12,$r30,0
1c001168:	5c045980 	bne	$r12,$r0,1112(0x458) # 1c0015c0 <shell13+0x560>
1c00116c:	0280066c 	addi.w	$r12,$r19,1(0x1)
1c001170:	298003cc 	st.w	$r12,$r30,0
1c001174:	02800414 	addi.w	$r20,$r0,1(0x1)
1c001178:	00150193 	move	$r19,$r12
1c00117c:	5fffcc80 	bne	$r4,$r0,-52(0x3ffcc) # 1c001148 <shell13+0xe8>
1c001180:	00150193 	move	$r19,$r12
1c001184:	02800ca5 	addi.w	$r5,$r5,3(0x3)
1c001188:	5fffb0b7 	bne	$r5,$r23,-80(0x3ffb0) # 1c001138 <shell13+0xd8>
1c00118c:	58001680 	beq	$r20,$r0,20(0x14) # 1c0011a0 <shell13+0x140>
1c001190:	14000041 	lu12i.w	$r1,2(0x2)
1c001194:	03a28026 	ori	$r6,$r1,0x8a0
1c001198:	001058c7 	add.w	$r7,$r6,$r22
1c00119c:	298000f3 	st.w	$r19,$r7,0
1c0011a0:	1c00108e 	pcaddu12i	$r14,132(0x84)
1c0011a4:	028b01ce 	addi.w	$r14,$r14,704(0x2c0)
1c0011a8:	288001c8 	ld.w	$r8,$r14,0
1c0011ac:	6400a408 	bge	$r0,$r8,164(0xa4) # 1c001250 <shell13+0x1f0>
1c0011b0:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c0011b4:	001c490b 	mul.w	$r11,$r8,$r18
1c0011b8:	140000ad 	lu12i.w	$r13,5(0x5)
1c0011bc:	038511a9 	ori	$r9,$r13,0x144
1c0011c0:	0010592a 	add.w	$r10,$r9,$r22
1c0011c4:	1c001090 	pcaddu12i	$r16,132(0x84)
1c0011c8:	0285b210 	addi.w	$r16,$r16,364(0x16c)
1c0011cc:	28800153 	ld.w	$r19,$r10,0
1c0011d0:	02800606 	addi.w	$r6,$r16,1(0x1)
1c0011d4:	00150014 	move	$r20,$r0
1c0011d8:	0280680f 	addi.w	$r15,$r0,26(0x1a)
1c0011dc:	14000077 	lu12i.w	$r23,3(0x3)
1c0011e0:	00102cd8 	add.w	$r24,$r6,$r11
1c0011e4:	283ffcc1 	ld.b	$r1,$r6,-1(0xfff)
1c0011e8:	58004c20 	beq	$r1,$r0,76(0x4c) # 1c001234 <shell13+0x1d4>
1c0011ec:	001500d1 	move	$r17,$r6
1c0011f0:	0015000c 	move	$r12,$r0
1c0011f4:	001c3d9b 	mul.w	$r27,$r12,$r15
1c0011f8:	02be7c3c 	addi.w	$r28,$r1,-97(0xf9f)
1c0011fc:	02800631 	addi.w	$r17,$r17,1(0x1)
1c001200:	283ffe21 	ld.b	$r1,$r17,-1(0xfff)
1c001204:	0010737d 	add.w	$r29,$r27,$r28
1c001208:	00408bbe 	slli.w	$r30,$r29,0x2
1c00120c:	00107ac4 	add.w	$r4,$r22,$r30
1c001210:	001012e5 	add.w	$r5,$r23,$r4
1c001214:	28a290ac 	ld.w	$r12,$r5,-1884(0x8a4)
1c001218:	5c039980 	bne	$r12,$r0,920(0x398) # 1c0015b0 <shell13+0x550>
1c00121c:	0280066c 	addi.w	$r12,$r19,1(0x1)
1c001220:	29a290ac 	st.w	$r12,$r5,-1884(0x8a4)
1c001224:	02800414 	addi.w	$r20,$r0,1(0x1)
1c001228:	00150193 	move	$r19,$r12
1c00122c:	5fffc820 	bne	$r1,$r0,-56(0x3ffc8) # 1c0011f4 <shell13+0x194>
1c001230:	00150193 	move	$r19,$r12
1c001234:	02800cc6 	addi.w	$r6,$r6,3(0x3)
1c001238:	5fffaf06 	bne	$r24,$r6,-84(0x3ffac) # 1c0011e4 <shell13+0x184>
1c00123c:	58001680 	beq	$r20,$r0,20(0x14) # 1c001250 <shell13+0x1f0>
1c001240:	140000a7 	lu12i.w	$r7,5(0x5)
1c001244:	038510ee 	ori	$r14,$r7,0x144
1c001248:	001059c8 	add.w	$r8,$r14,$r22
1c00124c:	29800113 	st.w	$r19,$r8,0
1c001250:	1c001092 	pcaddu12i	$r18,132(0x84)
1c001254:	02887252 	addi.w	$r18,$r18,540(0x21c)
1c001258:	28800250 	ld.w	$r16,$r18,0
1c00125c:	0280081c 	addi.w	$r28,$r0,2(0x2)
1c001260:	02800417 	addi.w	$r23,$r0,1(0x1)
1c001264:	58038200 	beq	$r16,$r0,896(0x380) # 1c0015e4 <shell13+0x584>
1c001268:	1c00109d 	pcaddu12i	$r29,132(0x84)
1c00126c:	288833bd 	ld.w	$r29,$r29,524(0x20c)
1c001270:	288013ad 	ld.w	$r13,$r29,4(0x4)
1c001274:	0280681e 	addi.w	$r30,$r0,26(0x1a)
1c001278:	29800340 	st.w	$r0,$r26,0
1c00127c:	001c79a9 	mul.w	$r9,$r13,$r30
1c001280:	03a8a418 	ori	$r24,$r0,0xa29
1c001284:	0040892a 	slli.w	$r10,$r9,0x2
1c001288:	00102acb 	add.w	$r11,$r22,$r10
1c00128c:	2880016f 	ld.w	$r15,$r11,0
1c001290:	580045e0 	beq	$r15,$r0,68(0x44) # 1c0012d4 <shell13+0x274>
1c001294:	288063fb 	ld.w	$r27,$r31,24(0x18)
1c001298:	001c7b64 	mul.w	$r4,$r27,$r30
1c00129c:	00106085 	add.w	$r5,$r4,$r24
1c0012a0:	004088b1 	slli.w	$r17,$r5,0x2
1c0012a4:	001046c1 	add.w	$r1,$r22,$r17
1c0012a8:	2880002c 	ld.w	$r12,$r1,0
1c0012ac:	58002980 	beq	$r12,$r0,40(0x28) # 1c0012d4 <shell13+0x274>
1c0012b0:	28800334 	ld.w	$r20,$r25,0
1c0012b4:	298073af 	st.w	$r15,$r29,28(0x1c)
1c0012b8:	298073ec 	st.w	$r12,$r31,28(0x1c)
1c0012bc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0012c0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0012c4:	60000ef4 	blt	$r23,$r20,12(0xc) # 1c0012d0 <shell13+0x270>
1c0012c8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0012cc:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0012d0:	57f173ff 	bl	-3728(0xffff170) # 1c000440 <dfs>
1c0012d4:	288013b3 	ld.w	$r19,$r29,4(0x4)
1c0012d8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0012dc:	001c7a66 	mul.w	$r6,$r19,$r30
1c0012e0:	028004c7 	addi.w	$r7,$r6,1(0x1)
1c0012e4:	004088ee 	slli.w	$r14,$r7,0x2
1c0012e8:	00103ac8 	add.w	$r8,$r22,$r14
1c0012ec:	28800112 	ld.w	$r18,$r8,0
1c0012f0:	58004e40 	beq	$r18,$r0,76(0x4c) # 1c00133c <shell13+0x2dc>
1c0012f4:	288063f0 	ld.w	$r16,$r31,24(0x18)
1c0012f8:	001c7a0d 	mul.w	$r13,$r16,$r30
1c0012fc:	028005a9 	addi.w	$r9,$r13,1(0x1)
1c001300:	0010612a 	add.w	$r10,$r9,$r24
1c001304:	0040894b 	slli.w	$r11,$r10,0x2
1c001308:	00102ecf 	add.w	$r15,$r22,$r11
1c00130c:	288001fb 	ld.w	$r27,$r15,0
1c001310:	58002f60 	beq	$r27,$r0,44(0x2c) # 1c00133c <shell13+0x2dc>
1c001314:	28800331 	ld.w	$r17,$r25,0
1c001318:	298073b2 	st.w	$r18,$r29,28(0x1c)
1c00131c:	298073fb 	st.w	$r27,$r31,28(0x1c)
1c001320:	02800805 	addi.w	$r5,$r0,2(0x2)
1c001324:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001328:	60000ef1 	blt	$r23,$r17,12(0xc) # 1c001334 <shell13+0x2d4>
1c00132c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001330:	02800804 	addi.w	$r4,$r0,2(0x2)
1c001334:	57f10fff 	bl	-3828(0xffff10c) # 1c000440 <dfs>
1c001338:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00133c:	0280049b 	addi.w	$r27,$r4,1(0x1)
1c001340:	288013a5 	ld.w	$r5,$r29,4(0x4)
1c001344:	001c78a1 	mul.w	$r1,$r5,$r30
1c001348:	00106c34 	add.w	$r20,$r1,$r27
1c00134c:	00408a93 	slli.w	$r19,$r20,0x2
1c001350:	00104ec6 	add.w	$r6,$r22,$r19
1c001354:	288000c7 	ld.w	$r7,$r6,0
1c001358:	580050e0 	beq	$r7,$r0,80(0x50) # 1c0013a8 <shell13+0x348>
1c00135c:	288063ee 	ld.w	$r14,$r31,24(0x18)
1c001360:	001c79c8 	mul.w	$r8,$r14,$r30
1c001364:	00106d12 	add.w	$r18,$r8,$r27
1c001368:	00106250 	add.w	$r16,$r18,$r24
1c00136c:	00408a0d 	slli.w	$r13,$r16,0x2
1c001370:	001036c9 	add.w	$r9,$r22,$r13
1c001374:	2880012a 	ld.w	$r10,$r9,0
1c001378:	58003140 	beq	$r10,$r0,48(0x30) # 1c0013a8 <shell13+0x348>
1c00137c:	2880032b 	ld.w	$r11,$r25,0
1c001380:	298073a7 	st.w	$r7,$r29,28(0x1c)
1c001384:	298073ea 	st.w	$r10,$r31,28(0x1c)
1c001388:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00138c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001390:	60000eeb 	blt	$r23,$r11,12(0xc) # 1c00139c <shell13+0x33c>
1c001394:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001398:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00139c:	2980407b 	st.w	$r27,$r3,16(0x10)
1c0013a0:	57f0a3ff 	bl	-3936(0xffff0a0) # 1c000440 <dfs>
1c0013a4:	2880407b 	ld.w	$r27,$r3,16(0x10)
1c0013a8:	288013af 	ld.w	$r15,$r29,4(0x4)
1c0013ac:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c0013b0:	001c79ec 	mul.w	$r12,$r15,$r30
1c0013b4:	00106d91 	add.w	$r17,$r12,$r27
1c0013b8:	00408a24 	slli.w	$r4,$r17,0x2
1c0013bc:	001012c5 	add.w	$r5,$r22,$r4
1c0013c0:	288000a1 	ld.w	$r1,$r5,0
1c0013c4:	58004820 	beq	$r1,$r0,72(0x48) # 1c00140c <shell13+0x3ac>
1c0013c8:	288063f4 	ld.w	$r20,$r31,24(0x18)
1c0013cc:	001c7a93 	mul.w	$r19,$r20,$r30
1c0013d0:	00106e66 	add.w	$r6,$r19,$r27
1c0013d4:	001060c7 	add.w	$r7,$r6,$r24
1c0013d8:	004088ee 	slli.w	$r14,$r7,0x2
1c0013dc:	00103ac8 	add.w	$r8,$r22,$r14
1c0013e0:	28800112 	ld.w	$r18,$r8,0
1c0013e4:	58002a40 	beq	$r18,$r0,40(0x28) # 1c00140c <shell13+0x3ac>
1c0013e8:	28800330 	ld.w	$r16,$r25,0
1c0013ec:	298073a1 	st.w	$r1,$r29,28(0x1c)
1c0013f0:	298073f2 	st.w	$r18,$r31,28(0x1c)
1c0013f4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0013f8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0013fc:	60000ef0 	blt	$r23,$r16,12(0xc) # 1c001408 <shell13+0x3a8>
1c001400:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001404:	02800804 	addi.w	$r4,$r0,2(0x2)
1c001408:	57f03bff 	bl	-4040(0xffff038) # 1c000440 <dfs>
1c00140c:	288013ad 	ld.w	$r13,$r29,4(0x4)
1c001410:	02800769 	addi.w	$r9,$r27,1(0x1)
1c001414:	001c79aa 	mul.w	$r10,$r13,$r30
1c001418:	0010254b 	add.w	$r11,$r10,$r9
1c00141c:	0040896f 	slli.w	$r15,$r11,0x2
1c001420:	00103ecc 	add.w	$r12,$r22,$r15
1c001424:	28800191 	ld.w	$r17,$r12,0
1c001428:	58004a20 	beq	$r17,$r0,72(0x48) # 1c001470 <shell13+0x410>
1c00142c:	288063e4 	ld.w	$r4,$r31,24(0x18)
1c001430:	001c7885 	mul.w	$r5,$r4,$r30
1c001434:	001024a1 	add.w	$r1,$r5,$r9
1c001438:	00106034 	add.w	$r20,$r1,$r24
1c00143c:	00408a93 	slli.w	$r19,$r20,0x2
1c001440:	00104ec6 	add.w	$r6,$r22,$r19
1c001444:	288000c7 	ld.w	$r7,$r6,0
1c001448:	580028e0 	beq	$r7,$r0,40(0x28) # 1c001470 <shell13+0x410>
1c00144c:	2880032e 	ld.w	$r14,$r25,0
1c001450:	298073b1 	st.w	$r17,$r29,28(0x1c)
1c001454:	298073e7 	st.w	$r7,$r31,28(0x1c)
1c001458:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00145c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001460:	60000eee 	blt	$r23,$r14,12(0xc) # 1c00146c <shell13+0x40c>
1c001464:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001468:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00146c:	57efd7ff 	bl	-4140(0xfffefd4) # 1c000440 <dfs>
1c001470:	02800b7b 	addi.w	$r27,$r27,2(0x2)
1c001474:	5ffecf7e 	bne	$r27,$r30,-308(0x3fecc) # 1c001340 <shell13+0x2e0>
1c001478:	5c015b97 	bne	$r28,$r23,344(0x158) # 1c0015d0 <shell13+0x570>
1c00147c:	28805077 	ld.w	$r23,$r3,20(0x14)
1c001480:	28800345 	ld.w	$r5,$r26,0
1c001484:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001488:	02adf084 	addi.w	$r4,$r4,-1156(0xb7c)
1c00148c:	02bffefc 	addi.w	$r28,$r23,-1(0xfff)
1c001490:	2980507c 	st.w	$r28,$r3,20(0x14)
1c001494:	54059c00 	bl	1436(0x59c) # 1c001a30 <printf>
1c001498:	2880035d 	ld.w	$r29,$r26,0
1c00149c:	28803068 	ld.w	$r8,$r3,12(0xc)
1c0014a0:	03c0fbbe 	xori	$r30,$r29,0x3e
1c0014a4:	0012f818 	sltu	$r24,$r0,$r30
1c0014a8:	00106112 	add.w	$r18,$r8,$r24
1c0014ac:	29803072 	st.w	$r18,$r3,12(0xc)
1c0014b0:	5ffc3b80 	bne	$r28,$r0,-968(0x3fc38) # 1c0010e8 <shell13+0x88>
1c0014b4:	5409ec00 	bl	2540(0x9ec) # 1c001ea0 <get_count_my>
1c0014b8:	00150098 	move	$r24,$r4
1c0014bc:	5409b400 	bl	2484(0x9b4) # 1c001e70 <get_count>
1c0014c0:	28803072 	ld.w	$r18,$r3,12(0xc)
1c0014c4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0014c8:	2880607d 	ld.w	$r29,$r3,24(0x18)
1c0014cc:	00115b19 	sub.w	$r25,$r24,$r22
1c0014d0:	00117497 	sub.w	$r23,$r4,$r29
1c0014d4:	5800a240 	beq	$r18,$r0,160(0xa0) # 1c001574 <shell13+0x514>
1c0014d8:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0014dc:	02ad5084 	addi.w	$r4,$r4,-1196(0xb54)
1c0014e0:	54087000 	bl	2160(0x870) # 1c001d50 <puts>
1c0014e4:	157f5fe9 	lu12i.w	$r9,-263425(0xbfaff)
1c0014e8:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c0014ec:	0381012f 	ori	$r15,$r9,0x40
1c0014f0:	298001ea 	st.w	$r10,$r15,0
1c0014f4:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c0014f8:	0380c130 	ori	$r16,$r9,0x30
1c0014fc:	0380812d 	ori	$r13,$r9,0x20
1c001500:	2980020b 	st.w	$r11,$r16,0
1c001504:	298001a0 	st.w	$r0,$r13,0
1c001508:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c00150c:	03814028 	ori	$r8,$r1,0x50
1c001510:	29800119 	st.w	$r25,$r8,0
1c001514:	157f5f07 	lu12i.w	$r7,-263432(0xbfaf8)
1c001518:	298000f9 	st.w	$r25,$r7,0
1c00151c:	038040ee 	ori	$r14,$r7,0x10
1c001520:	001502e5 	move	$r5,$r23
1c001524:	298001d7 	st.w	$r23,$r14,0
1c001528:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c00152c:	02ac6084 	addi.w	$r4,$r4,-1256(0xb18)
1c001530:	54050000 	bl	1280(0x500) # 1c001a30 <printf>
1c001534:	28812076 	ld.w	$r22,$r3,72(0x48)
1c001538:	28813061 	ld.w	$r1,$r3,76(0x4c)
1c00153c:	28811077 	ld.w	$r23,$r3,68(0x44)
1c001540:	28810078 	ld.w	$r24,$r3,64(0x40)
1c001544:	2880e07a 	ld.w	$r26,$r3,56(0x38)
1c001548:	2880d07b 	ld.w	$r27,$r3,52(0x34)
1c00154c:	2880c07c 	ld.w	$r28,$r3,48(0x30)
1c001550:	2880b07d 	ld.w	$r29,$r3,44(0x2c)
1c001554:	2880a07e 	ld.w	$r30,$r3,40(0x28)
1c001558:	2880907f 	ld.w	$r31,$r3,36(0x24)
1c00155c:	00150325 	move	$r5,$r25
1c001560:	2880f079 	ld.w	$r25,$r3,60(0x3c)
1c001564:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001568:	02ac2084 	addi.w	$r4,$r4,-1272(0xb08)
1c00156c:	02814063 	addi.w	$r3,$r3,80(0x50)
1c001570:	5004c000 	b	1216(0x4c0) # 1c001a30 <printf>
1c001574:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001578:	02aaa084 	addi.w	$r4,$r4,-1368(0xaa8)
1c00157c:	5407d400 	bl	2004(0x7d4) # 1c001d50 <puts>
1c001580:	157f5ff1 	lu12i.w	$r17,-263425(0xbfaff)
1c001584:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001588:	03810234 	ori	$r20,$r17,0x40
1c00158c:	29800285 	st.w	$r5,$r20,0
1c001590:	140001e4 	lu12i.w	$r4,15(0xf)
1c001594:	0380c233 	ori	$r19,$r17,0x30
1c001598:	0380822c 	ori	$r12,$r17,0x20
1c00159c:	03bffc86 	ori	$r6,$r4,0xfff
1c0015a0:	29800265 	st.w	$r5,$r19,0
1c0015a4:	29800186 	st.w	$r6,$r12,0
1c0015a8:	53ff63ff 	b	-160(0xfffff60) # 1c001508 <shell13+0x4a8>
1c0015ac:	03400000 	andi	$r0,$r0,0x0
1c0015b0:	5ffc4420 	bne	$r1,$r0,-956(0x3fc44) # 1c0011f4 <shell13+0x194>
1c0015b4:	0015026c 	move	$r12,$r19
1c0015b8:	53fc7bff 	b	-904(0xffffc78) # 1c001230 <shell13+0x1d0>
1c0015bc:	03400000 	andi	$r0,$r0,0x0
1c0015c0:	5ffb8880 	bne	$r4,$r0,-1144(0x3fb88) # 1c001148 <shell13+0xe8>
1c0015c4:	0015026c 	move	$r12,$r19
1c0015c8:	53fbbbff 	b	-1096(0xffffbb8) # 1c001180 <shell13+0x120>
1c0015cc:	03400000 	andi	$r0,$r0,0x0
1c0015d0:	1c001092 	pcaddu12i	$r18,132(0x84)
1c0015d4:	02ba7252 	addi.w	$r18,$r18,-356(0xe9c)
1c0015d8:	28800250 	ld.w	$r16,$r18,0
1c0015dc:	0280041c 	addi.w	$r28,$r0,1(0x1)
1c0015e0:	5ffc8a00 	bne	$r16,$r0,-888(0x3fc88) # 1c001268 <shell13+0x208>
1c0015e4:	29800357 	st.w	$r23,$r26,0
1c0015e8:	53fe93ff 	b	-368(0xffffe90) # 1c001478 <shell13+0x418>
1c0015ec:	03400000 	andi	$r0,$r0,0x0
1c0015f0:	1c001090 	pcaddu12i	$r16,132(0x84)
1c0015f4:	02b9e210 	addi.w	$r16,$r16,-392(0xe78)
1c0015f8:	1400004d 	lu12i.w	$r13,2(0x2)
1c0015fc:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c001600:	02afb39c 	addi.w	$r28,$r28,-1044(0xbec)
1c001604:	03a291aa 	ori	$r10,$r13,0x8a4
1c001608:	28800209 	ld.w	$r9,$r16,0
1c00160c:	0010714b 	add.w	$r11,$r10,$r28
1c001610:	29800380 	st.w	$r0,$r28,0
1c001614:	29800160 	st.w	$r0,$r11,0
1c001618:	64009809 	bge	$r0,$r9,152(0x98) # 1c0016b0 <shell13+0x650>
1c00161c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001620:	001c3125 	mul.w	$r5,$r9,$r12
1c001624:	03a281b1 	ori	$r17,$r13,0x8a0
1c001628:	00107224 	add.w	$r4,$r17,$r28
1c00162c:	1c00108f 	pcaddu12i	$r15,132(0x84)
1c001630:	02b671ef 	addi.w	$r15,$r15,-612(0xd9c)
1c001634:	28800092 	ld.w	$r18,$r4,0
1c001638:	028005f6 	addi.w	$r22,$r15,1(0x1)
1c00163c:	00150008 	move	$r8,$r0
1c001640:	02806801 	addi.w	$r1,$r0,26(0x1a)
1c001644:	001016d4 	add.w	$r20,$r22,$r5
1c001648:	283ffede 	ld.b	$r30,$r22,-1(0xfff)
1c00164c:	58004bc0 	beq	$r30,$r0,72(0x48) # 1c001694 <shell13+0x634>
1c001650:	001502ce 	move	$r14,$r22
1c001654:	00150018 	move	$r24,$r0
1c001658:	001c0713 	mul.w	$r19,$r24,$r1
1c00165c:	02be7fc6 	addi.w	$r6,$r30,-97(0xf9f)
1c001660:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c001664:	283ffdde 	ld.b	$r30,$r14,-1(0xfff)
1c001668:	00101a67 	add.w	$r7,$r19,$r6
1c00166c:	004088fb 	slli.w	$r27,$r7,0x2
1c001670:	00106f9d 	add.w	$r29,$r28,$r27
1c001674:	288003b8 	ld.w	$r24,$r29,0
1c001678:	5c037b00 	bne	$r24,$r0,888(0x378) # 1c0019f0 <shell13+0x990>
1c00167c:	02800658 	addi.w	$r24,$r18,1(0x1)
1c001680:	298003b8 	st.w	$r24,$r29,0
1c001684:	02800408 	addi.w	$r8,$r0,1(0x1)
1c001688:	00150312 	move	$r18,$r24
1c00168c:	5fffcfc0 	bne	$r30,$r0,-52(0x3ffcc) # 1c001658 <shell13+0x5f8>
1c001690:	00150312 	move	$r18,$r24
1c001694:	02800ed6 	addi.w	$r22,$r22,3(0x3)
1c001698:	5fffb296 	bne	$r20,$r22,-80(0x3ffb0) # 1c001648 <shell13+0x5e8>
1c00169c:	58001500 	beq	$r8,$r0,20(0x14) # 1c0016b0 <shell13+0x650>
1c0016a0:	14000057 	lu12i.w	$r23,2(0x2)
1c0016a4:	03a282f9 	ori	$r25,$r23,0x8a0
1c0016a8:	0010733a 	add.w	$r26,$r25,$r28
1c0016ac:	29800352 	st.w	$r18,$r26,0
1c0016b0:	1c00109f 	pcaddu12i	$r31,132(0x84)
1c0016b4:	02b6c3ff 	addi.w	$r31,$r31,-592(0xdb0)
1c0016b8:	288003e9 	ld.w	$r9,$r31,0
1c0016bc:	6400a409 	bge	$r0,$r9,164(0xa4) # 1c001760 <shell13+0x700>
1c0016c0:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c0016c4:	001c2931 	mul.w	$r17,$r9,$r10
1c0016c8:	140000b0 	lu12i.w	$r16,5(0x5)
1c0016cc:	0385120d 	ori	$r13,$r16,0x144
1c0016d0:	001071ac 	add.w	$r12,$r13,$r28
1c0016d4:	1c00108b 	pcaddu12i	$r11,132(0x84)
1c0016d8:	02b1716b 	addi.w	$r11,$r11,-932(0xc5c)
1c0016dc:	28800192 	ld.w	$r18,$r12,0
1c0016e0:	0280056f 	addi.w	$r15,$r11,1(0x1)
1c0016e4:	00150008 	move	$r8,$r0
1c0016e8:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c0016ec:	14000065 	lu12i.w	$r5,3(0x3)
1c0016f0:	001045e1 	add.w	$r1,$r15,$r17
1c0016f4:	283ffdfe 	ld.b	$r30,$r15,-1(0xfff)
1c0016f8:	58004fc0 	beq	$r30,$r0,76(0x4c) # 1c001744 <shell13+0x6e4>
1c0016fc:	001501ee 	move	$r14,$r15
1c001700:	00150018 	move	$r24,$r0
1c001704:	001c1314 	mul.w	$r20,$r24,$r4
1c001708:	02be7fd3 	addi.w	$r19,$r30,-97(0xf9f)
1c00170c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c001710:	283ffdde 	ld.b	$r30,$r14,-1(0xfff)
1c001714:	00104e86 	add.w	$r6,$r20,$r19
1c001718:	004088c7 	slli.w	$r7,$r6,0x2
1c00171c:	00101f9b 	add.w	$r27,$r28,$r7
1c001720:	00106cbd 	add.w	$r29,$r5,$r27
1c001724:	28a293b8 	ld.w	$r24,$r29,-1884(0x8a4)
1c001728:	5c02bb00 	bne	$r24,$r0,696(0x2b8) # 1c0019e0 <shell13+0x980>
1c00172c:	02800658 	addi.w	$r24,$r18,1(0x1)
1c001730:	29a293b8 	st.w	$r24,$r29,-1884(0x8a4)
1c001734:	02800408 	addi.w	$r8,$r0,1(0x1)
1c001738:	00150312 	move	$r18,$r24
1c00173c:	5fffcbc0 	bne	$r30,$r0,-56(0x3ffc8) # 1c001704 <shell13+0x6a4>
1c001740:	00150312 	move	$r18,$r24
1c001744:	02800def 	addi.w	$r15,$r15,3(0x3)
1c001748:	5fffac2f 	bne	$r1,$r15,-84(0x3ffac) # 1c0016f4 <shell13+0x694>
1c00174c:	58001500 	beq	$r8,$r0,20(0x14) # 1c001760 <shell13+0x700>
1c001750:	140000b6 	lu12i.w	$r22,5(0x5)
1c001754:	038512d7 	ori	$r23,$r22,0x144
1c001758:	001072f9 	add.w	$r25,$r23,$r28
1c00175c:	29800332 	st.w	$r18,$r25,0
1c001760:	1c00109b 	pcaddu12i	$r27,132(0x84)
1c001764:	02b4337b 	addi.w	$r27,$r27,-756(0xd0c)
1c001768:	28800369 	ld.w	$r9,$r27,0
1c00176c:	0280081a 	addi.w	$r26,$r0,2(0x2)
1c001770:	2980307a 	st.w	$r26,$r3,12(0xc)
1c001774:	1c001099 	pcaddu12i	$r25,132(0x84)
1c001778:	28b41339 	ld.w	$r25,$r25,-764(0xd04)
1c00177c:	1c00109f 	pcaddu12i	$r31,132(0x84)
1c001780:	28b403ff 	ld.w	$r31,$r31,-768(0xd00)
1c001784:	1c001096 	pcaddu12i	$r22,132(0x84)
1c001788:	02b382d6 	addi.w	$r22,$r22,-800(0xce0)
1c00178c:	02800418 	addi.w	$r24,$r0,1(0x1)
1c001790:	58028120 	beq	$r9,$r0,640(0x280) # 1c001a10 <shell13+0x9b0>
1c001794:	1c00109e 	pcaddu12i	$r30,132(0x84)
1c001798:	28b383de 	ld.w	$r30,$r30,-800(0xce0)
1c00179c:	288013ca 	ld.w	$r10,$r30,4(0x4)
1c0017a0:	0280681d 	addi.w	$r29,$r0,26(0x1a)
1c0017a4:	29800320 	st.w	$r0,$r25,0
1c0017a8:	001c754b 	mul.w	$r11,$r10,$r29
1c0017ac:	03a8a417 	ori	$r23,$r0,0xa29
1c0017b0:	00408970 	slli.w	$r16,$r11,0x2
1c0017b4:	0010438d 	add.w	$r13,$r28,$r16
1c0017b8:	288001b1 	ld.w	$r17,$r13,0
1c0017bc:	58003e20 	beq	$r17,$r0,60(0x3c) # 1c0017f8 <shell13+0x798>
1c0017c0:	288063ec 	ld.w	$r12,$r31,24(0x18)
1c0017c4:	001c7584 	mul.w	$r4,$r12,$r29
1c0017c8:	00105c85 	add.w	$r5,$r4,$r23
1c0017cc:	004088a1 	slli.w	$r1,$r5,0x2
1c0017d0:	00100794 	add.w	$r20,$r28,$r1
1c0017d4:	28800293 	ld.w	$r19,$r20,0
1c0017d8:	58002260 	beq	$r19,$r0,32(0x20) # 1c0017f8 <shell13+0x798>
1c0017dc:	288002c6 	ld.w	$r6,$r22,0
1c0017e0:	298073d1 	st.w	$r17,$r30,28(0x1c)
1c0017e4:	298073f3 	st.w	$r19,$r31,28(0x1c)
1c0017e8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0017ec:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0017f0:	64022b06 	bge	$r24,$r6,552(0x228) # 1c001a18 <shell13+0x9b8>
1c0017f4:	57ec4fff 	bl	-5044(0xfffec4c) # 1c000440 <dfs>
1c0017f8:	288013c7 	ld.w	$r7,$r30,4(0x4)
1c0017fc:	0280041a 	addi.w	$r26,$r0,1(0x1)
1c001800:	001c74ee 	mul.w	$r14,$r7,$r29
1c001804:	028005c8 	addi.w	$r8,$r14,1(0x1)
1c001808:	00408912 	slli.w	$r18,$r8,0x2
1c00180c:	00104b8f 	add.w	$r15,$r28,$r18
1c001810:	288001e9 	ld.w	$r9,$r15,0
1c001814:	58004920 	beq	$r9,$r0,72(0x48) # 1c00185c <shell13+0x7fc>
1c001818:	288063ea 	ld.w	$r10,$r31,24(0x18)
1c00181c:	001c754b 	mul.w	$r11,$r10,$r29
1c001820:	02800570 	addi.w	$r16,$r11,1(0x1)
1c001824:	00105e0d 	add.w	$r13,$r16,$r23
1c001828:	004089b1 	slli.w	$r17,$r13,0x2
1c00182c:	0010478c 	add.w	$r12,$r28,$r17
1c001830:	28800184 	ld.w	$r4,$r12,0
1c001834:	58002880 	beq	$r4,$r0,40(0x28) # 1c00185c <shell13+0x7fc>
1c001838:	288002c1 	ld.w	$r1,$r22,0
1c00183c:	298073e4 	st.w	$r4,$r31,28(0x1c)
1c001840:	298073c9 	st.w	$r9,$r30,28(0x1c)
1c001844:	02800805 	addi.w	$r5,$r0,2(0x2)
1c001848:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00184c:	60000f01 	blt	$r24,$r1,12(0xc) # 1c001858 <shell13+0x7f8>
1c001850:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001854:	02800804 	addi.w	$r4,$r0,2(0x2)
1c001858:	57ebebff 	bl	-5144(0xfffebe8) # 1c000440 <dfs>
1c00185c:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c001860:	288013c5 	ld.w	$r5,$r30,4(0x4)
1c001864:	001c74b4 	mul.w	$r20,$r5,$r29
1c001868:	00106a93 	add.w	$r19,$r20,$r26
1c00186c:	00408a66 	slli.w	$r6,$r19,0x2
1c001870:	00101b87 	add.w	$r7,$r28,$r6
1c001874:	288000ee 	ld.w	$r14,$r7,0
1c001878:	580049c0 	beq	$r14,$r0,72(0x48) # 1c0018c0 <shell13+0x860>
1c00187c:	288063e8 	ld.w	$r8,$r31,24(0x18)
1c001880:	001c7512 	mul.w	$r18,$r8,$r29
1c001884:	00106a4f 	add.w	$r15,$r18,$r26
1c001888:	00105de9 	add.w	$r9,$r15,$r23
1c00188c:	0040892a 	slli.w	$r10,$r9,0x2
1c001890:	00102b8b 	add.w	$r11,$r28,$r10
1c001894:	28800170 	ld.w	$r16,$r11,0
1c001898:	58002a00 	beq	$r16,$r0,40(0x28) # 1c0018c0 <shell13+0x860>
1c00189c:	288002cd 	ld.w	$r13,$r22,0
1c0018a0:	298073ce 	st.w	$r14,$r30,28(0x1c)
1c0018a4:	298073f0 	st.w	$r16,$r31,28(0x1c)
1c0018a8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0018ac:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0018b0:	60000f0d 	blt	$r24,$r13,12(0xc) # 1c0018bc <shell13+0x85c>
1c0018b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0018b8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0018bc:	57eb87ff 	bl	-5244(0xfffeb84) # 1c000440 <dfs>
1c0018c0:	288013d1 	ld.w	$r17,$r30,4(0x4)
1c0018c4:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c0018c8:	001c762c 	mul.w	$r12,$r17,$r29
1c0018cc:	00106984 	add.w	$r4,$r12,$r26
1c0018d0:	00408881 	slli.w	$r1,$r4,0x2
1c0018d4:	00100785 	add.w	$r5,$r28,$r1
1c0018d8:	288000b4 	ld.w	$r20,$r5,0
1c0018dc:	58004a80 	beq	$r20,$r0,72(0x48) # 1c001924 <shell13+0x8c4>
1c0018e0:	288063f3 	ld.w	$r19,$r31,24(0x18)
1c0018e4:	001c7666 	mul.w	$r6,$r19,$r29
1c0018e8:	001068c7 	add.w	$r7,$r6,$r26
1c0018ec:	00105cee 	add.w	$r14,$r7,$r23
1c0018f0:	004089c8 	slli.w	$r8,$r14,0x2
1c0018f4:	00102392 	add.w	$r18,$r28,$r8
1c0018f8:	28800249 	ld.w	$r9,$r18,0
1c0018fc:	58002920 	beq	$r9,$r0,40(0x28) # 1c001924 <shell13+0x8c4>
1c001900:	288002cf 	ld.w	$r15,$r22,0
1c001904:	298073d4 	st.w	$r20,$r30,28(0x1c)
1c001908:	298073e9 	st.w	$r9,$r31,28(0x1c)
1c00190c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c001910:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001914:	60000f0f 	blt	$r24,$r15,12(0xc) # 1c001920 <shell13+0x8c0>
1c001918:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00191c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c001920:	57eb23ff 	bl	-5344(0xfffeb20) # 1c000440 <dfs>
1c001924:	288013ca 	ld.w	$r10,$r30,4(0x4)
1c001928:	0280074b 	addi.w	$r11,$r26,1(0x1)
1c00192c:	001c7550 	mul.w	$r16,$r10,$r29
1c001930:	00102e0d 	add.w	$r13,$r16,$r11
1c001934:	004089b1 	slli.w	$r17,$r13,0x2
1c001938:	0010478c 	add.w	$r12,$r28,$r17
1c00193c:	28800184 	ld.w	$r4,$r12,0
1c001940:	58004880 	beq	$r4,$r0,72(0x48) # 1c001988 <shell13+0x928>
1c001944:	288063e1 	ld.w	$r1,$r31,24(0x18)
1c001948:	001c7425 	mul.w	$r5,$r1,$r29
1c00194c:	00102cb4 	add.w	$r20,$r5,$r11
1c001950:	00105e93 	add.w	$r19,$r20,$r23
1c001954:	00408a66 	slli.w	$r6,$r19,0x2
1c001958:	00101b87 	add.w	$r7,$r28,$r6
1c00195c:	288000ee 	ld.w	$r14,$r7,0
1c001960:	580029c0 	beq	$r14,$r0,40(0x28) # 1c001988 <shell13+0x928>
1c001964:	288002c8 	ld.w	$r8,$r22,0
1c001968:	298073c4 	st.w	$r4,$r30,28(0x1c)
1c00196c:	298073ee 	st.w	$r14,$r31,28(0x1c)
1c001970:	02800805 	addi.w	$r5,$r0,2(0x2)
1c001974:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001978:	60000f08 	blt	$r24,$r8,12(0xc) # 1c001984 <shell13+0x924>
1c00197c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001980:	02800804 	addi.w	$r4,$r0,2(0x2)
1c001984:	57eabfff 	bl	-5444(0xfffeabc) # 1c000440 <dfs>
1c001988:	02800b5a 	addi.w	$r26,$r26,2(0x2)
1c00198c:	5ffed75d 	bne	$r26,$r29,-300(0x3fed4) # 1c001860 <shell13+0x800>
1c001990:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c001994:	5c006fd8 	bne	$r30,$r24,108(0x6c) # 1c001a00 <shell13+0x9a0>
1c001998:	28800325 	ld.w	$r5,$r25,0
1c00199c:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c0019a0:	02999084 	addi.w	$r4,$r4,1636(0x664)
1c0019a4:	54008c00 	bl	140(0x8c) # 1c001a30 <printf>
1c0019a8:	2880033c 	ld.w	$r28,$r25,0
1c0019ac:	03c0fb9f 	xori	$r31,$r28,0x3e
1c0019b0:	0012fc1b 	sltu	$r27,$r0,$r31
1c0019b4:	2980307b 	st.w	$r27,$r3,12(0xc)
1c0019b8:	5404e800 	bl	1256(0x4e8) # 1c001ea0 <get_count_my>
1c0019bc:	00150098 	move	$r24,$r4
1c0019c0:	5404b000 	bl	1200(0x4b0) # 1c001e70 <get_count>
1c0019c4:	28803072 	ld.w	$r18,$r3,12(0xc)
1c0019c8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0019cc:	2880607d 	ld.w	$r29,$r3,24(0x18)
1c0019d0:	00115b19 	sub.w	$r25,$r24,$r22
1c0019d4:	00117497 	sub.w	$r23,$r4,$r29
1c0019d8:	5ffb0240 	bne	$r18,$r0,-1280(0x3fb00) # 1c0014d8 <shell13+0x478>
1c0019dc:	53fb9bff 	b	-1128(0xffffb98) # 1c001574 <shell13+0x514>
1c0019e0:	5ffd27c0 	bne	$r30,$r0,-732(0x3fd24) # 1c001704 <shell13+0x6a4>
1c0019e4:	00150258 	move	$r24,$r18
1c0019e8:	53fd5bff 	b	-680(0xffffd58) # 1c001740 <shell13+0x6e0>
1c0019ec:	03400000 	andi	$r0,$r0,0x0
1c0019f0:	5ffc6bc0 	bne	$r30,$r0,-920(0x3fc68) # 1c001658 <shell13+0x5f8>
1c0019f4:	00150258 	move	$r24,$r18
1c0019f8:	53fc9bff 	b	-872(0xffffc98) # 1c001690 <shell13+0x630>
1c0019fc:	03400000 	andi	$r0,$r0,0x0
1c001a00:	28800369 	ld.w	$r9,$r27,0
1c001a04:	0280041a 	addi.w	$r26,$r0,1(0x1)
1c001a08:	2980307a 	st.w	$r26,$r3,12(0xc)
1c001a0c:	5ffd8920 	bne	$r9,$r0,-632(0x3fd88) # 1c001794 <shell13+0x734>
1c001a10:	29800338 	st.w	$r24,$r25,0
1c001a14:	53ff7fff 	b	-132(0xfffff7c) # 1c001990 <shell13+0x930>
1c001a18:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001a1c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c001a20:	53fdd7ff 	b	-556(0xffffdd4) # 1c0017f4 <shell13+0x794>
1c001a24:	03400000 	andi	$r0,$r0,0x0
1c001a28:	03400000 	andi	$r0,$r0,0x0
1c001a2c:	03400000 	andi	$r0,$r0,0x0

1c001a30 <printf>:
printf():
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
int printf(const char *fmt,...)
{
1c001a30:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001a34:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c001a38:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001a3c:	2980e077 	st.w	$r23,$r3,56(0x38)
1c001a40:	2980d078 	st.w	$r24,$r3,52(0x34)
1c001a44:	2980c079 	st.w	$r25,$r3,48(0x30)
1c001a48:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c001a4c:	2980907c 	st.w	$r28,$r3,36(0x24)
1c001a50:	29811065 	st.w	$r5,$r3,68(0x44)
1c001a54:	29812066 	st.w	$r6,$r3,72(0x48)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c001a58:	28000097 	ld.b	$r23,$r4,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c001a5c:	0281107a 	addi.w	$r26,$r3,68(0x44)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:2
{
1c001a60:	29813067 	st.w	$r7,$r3,76(0x4c)
1c001a64:	29814068 	st.w	$r8,$r3,80(0x50)
1c001a68:	29815069 	st.w	$r9,$r3,84(0x54)
1c001a6c:	2981606a 	st.w	$r10,$r3,88(0x58)
1c001a70:	2981706b 	st.w	$r11,$r3,92(0x5c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c001a74:	2980707a 	st.w	$r26,$r3,28(0x1c)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10
for(i=0;fmt[i];i++)
1c001a78:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c001b00 <printf+0xd0>
1c001a7c:	00150099 	move	$r25,$r4
1c001a80:	00150018 	move	$r24,$r0
1c001a84:	1c000fdc 	pcaddu12i	$r28,126(0x7e)
1c001a88:	0298539c 	addi.w	$r28,$r28,1556(0x614)
1c001a8c:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c001a90:	50001c00 	b	28(0x1c) # 1c001aac <printf+0x7c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c001a94:	001502e4 	move	$r4,$r23
1c001a98:	5401d800 	bl	472(0x1d8) # 1c001c70 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c001a9c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c001aa0:	0010632c 	add.w	$r12,$r25,$r24
1c001aa4:	28000197 	ld.b	$r23,$r12,0
1c001aa8:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c001b00 <printf+0xd0>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:13
	if(c=='%')
1c001aac:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001ab0:	58001aec 	beq	$r23,$r12,24(0x18) # 1c001ac8 <printf+0x98>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c001ab4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ab8:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c001a94 <printf+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:79 (discriminator 1)
1c001abc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001ac0:	5401b000 	bl	432(0x1b0) # 1c001c70 <putchar>
1c001ac4:	53ffd3ff 	b	-48(0xfffffd0) # 1c001a94 <printf+0x64>
1c001ac8:	0010632c 	add.w	$r12,$r25,$r24
1c001acc:	2800058d 	ld.b	$r13,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:15
		w=1;
1c001ad0:	02800405 	addi.w	$r5,$r0,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c001ad4:	02814c10 	addi.w	$r16,$r0,83(0x53)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c001ad8:	0280280f 	addi.w	$r15,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:17
		switch(fmt[i+1])
1c001adc:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c001ae0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c001ae4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c001ae8:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c001c60 <printf+0x230>
1c001aec:	0040898c 	slli.w	$r12,$r12,0x2
1c001af0:	0010338c 	add.w	$r12,$r28,$r12
1c001af4:	2880018c 	ld.w	$r12,$r12,0
1c001af8:	4c000180 	jirl	$r0,$r12,0
1c001afc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:84
	}
}
	return 0;
}
1c001b00:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001b04:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c001b08:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c001b0c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001b10:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c001b14:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c001b18:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c001b1c:	00150004 	move	$r4,$r0
1c001b20:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001b24:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:65
				i++;
1c001b28:	0010632c 	add.w	$r12,$r25,$r24
1c001b2c:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c001b30:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c001b34:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c001b38:	2980306c 	st.w	$r12,$r3,12(0xc)
1c001b3c:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c001b40:	00150005 	move	$r5,$r0
1c001b44:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c001adc <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c001b48:	001c3ca5 	mul.w	$r5,$r5,$r15
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c001b4c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c001b50:	0010632c 	add.w	$r12,$r25,$r24
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c001b54:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c001b58:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c001b5c:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c001b60:	2980306c 	st.w	$r12,$r3,12(0xc)
1c001b64:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c001b68:	001015c5 	add.w	$r5,$r14,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c001b6c:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c001b48 <printf+0x118>
1c001b70:	53ff6fff 	b	-148(0xfffff6c) # 1c001adc <printf+0xac>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c001b74:	28800344 	ld.w	$r4,$r26,0
1c001b78:	00150007 	move	$r7,$r0
1c001b7c:	02800806 	addi.w	$r6,$r0,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:51
				arg++;
1c001b80:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:52
				i++;
1c001b84:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c001b88:	5401f800 	bl	504(0x1f8) # 1c001d80 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:53
				break;
1c001b8c:	53ff13ff 	b	-240(0xfffff10) # 1c001a9c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c001b90:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:27
				i++;
1c001b94:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:26
				arg++;
1c001b98:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:25
				putchar((long)*arg);
1c001b9c:	5400d400 	bl	212(0xd4) # 1c001c70 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:28
				break;
1c001ba0:	53feffff 	b	-260(0xffffefc) # 1c001a9c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c001ba4:	28800344 	ld.w	$r4,$r26,0
1c001ba8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001bac:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:36
				arg++;
1c001bb0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:37
				i++;
1c001bb4:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c001bb8:	5401c800 	bl	456(0x1c8) # 1c001d80 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:38
				break;
1c001bbc:	53fee3ff 	b	-288(0xffffee0) # 1c001a9c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c001bc0:	28800344 	ld.w	$r4,$r26,0
1c001bc4:	00150007 	move	$r7,$r0
1c001bc8:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:41
                arg++;
1c001bcc:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:42
                i=i+2;
1c001bd0:	02800b18 	addi.w	$r24,$r24,2(0x2)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c001bd4:	5401ac00 	bl	428(0x1ac) # 1c001d80 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:43
                break;
1c001bd8:	53fec7ff 	b	-316(0xffffec4) # 1c001a9c <printf+0x6c>
1c001bdc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c001be0:	28800344 	ld.w	$r4,$r26,0
1c001be4:	00150007 	move	$r7,$r0
1c001be8:	02802006 	addi.w	$r6,$r0,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:46
				arg++;
1c001bec:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:47
				i++;
1c001bf0:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c001bf4:	54018c00 	bl	396(0x18c) # 1c001d80 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:48
				break;
1c001bf8:	53fea7ff 	b	-348(0xffffea4) # 1c001a9c <printf+0x6c>
1c001bfc:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c001c00:	28800344 	ld.w	$r4,$r26,0
1c001c04:	00150007 	move	$r7,$r0
1c001c08:	02804006 	addi.w	$r6,$r0,16(0x10)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:57
				arg++;
1c001c0c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:58
				i++;
1c001c10:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c001c14:	54016c00 	bl	364(0x16c) # 1c001d80 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:59
				break;
1c001c18:	53fe87ff 	b	-380(0xffffe84) # 1c001a9c <printf+0x6c>
1c001c1c:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c001c20:	28800344 	ld.w	$r4,$r26,0
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:22
				i++;
1c001c24:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:21
				arg++;
1c001c28:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:20
				putstring(*arg);
1c001c2c:	5400a400 	bl	164(0xa4) # 1c001cd0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:23
				break;
1c001c30:	53fe6fff 	b	-404(0xffffe6c) # 1c001a9c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c001c34:	28800344 	ld.w	$r4,$r26,0
1c001c38:	00150007 	move	$r7,$r0
1c001c3c:	02802806 	addi.w	$r6,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:31
				arg++;
1c001c40:	0280135a 	addi.w	$r26,$r26,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:32
				i++;
1c001c44:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c001c48:	54013800 	bl	312(0x138) # 1c001d80 <printbase>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:33
				break;
1c001c4c:	53fe53ff 	b	-432(0xffffe50) # 1c001a9c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c001c50:	02809404 	addi.w	$r4,$r0,37(0x25)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:62
				i++;
1c001c54:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:61
				putchar('%');
1c001c58:	54001800 	bl	24(0x18) # 1c001c70 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:63
				break;
1c001c5c:	53fe43ff 	b	-448(0xffffe40) # 1c001a9c <printf+0x6c>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:73
				putchar('%');
1c001c60:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001c64:	54000c00 	bl	12(0xc) # 1c001c70 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printf.c:74
				break;
1c001c68:	53fe37ff 	b	-460(0xffffe34) # 1c001a9c <printf+0x6c>
1c001c6c:	03400000 	andi	$r0,$r0,0x0

1c001c70 <putchar>:
putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:2
int putchar(int c)
{
1c001c70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c74:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c001c78:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c001c7c:	03bc4339 	ori	$r25,$r25,0xf10
1c001c80:	29000324 	st.b	$r4,$r25,0
1c001c84:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:5
}
1c001c88:	00150004 	move	$r4,$r0
1c001c8c:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001c90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c94:	4c000020 	jirl	$r0,$r1,0
1c001c98:	03400000 	andi	$r0,$r0,0x0
1c001c9c:	03400000 	andi	$r0,$r0,0x0

1c001ca0 <tgt_putchar>:
tgt_putchar():
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:8
{   //UART_ADDR
1c001ca0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ca4:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:9
    asm(
1c001ca8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c001cac:	03bc4339 	ori	$r25,$r25,0xf10
1c001cb0:	29000324 	st.b	$r4,$r25,0
1c001cb4:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c001cb8:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001cbc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001cc0:	4c000020 	jirl	$r0,$r1,0
1c001cc4:	03400000 	andi	$r0,$r0,0x0
1c001cc8:	03400000 	andi	$r0,$r0,0x0
1c001ccc:	03400000 	andi	$r0,$r0,0x0

1c001cd0 <putstring>:
putstring():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:2
int putstring(char *s)
{
1c001cd0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001cd4:	29803061 	st.w	$r1,$r3,12(0xc)
1c001cd8:	29802077 	st.w	$r23,$r3,8(0x8)
1c001cdc:	29801078 	st.w	$r24,$r3,4(0x4)
1c001ce0:	29800079 	st.w	$r25,$r3,0
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
char c;
while((c=*s))
1c001ce4:	28000097 	ld.b	$r23,$r4,0
1c001ce8:	580042e0 	beq	$r23,$r0,64(0x40) # 1c001d28 <putstring+0x58>
1c001cec:	00150098 	move	$r24,$r4
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c001cf0:	02802819 	addi.w	$r25,$r0,10(0xa)
1c001cf4:	50001400 	b	20(0x14) # 1c001d08 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7
 putchar(c);
1c001cf8:	001502e4 	move	$r4,$r23
1c001cfc:	57ff77ff 	bl	-140(0xfffff74) # 1c001c70 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4
while((c=*s))
1c001d00:	28000317 	ld.b	$r23,$r24,0
1c001d04:	580026e0 	beq	$r23,$r0,36(0x24) # 1c001d28 <putstring+0x58>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:8
 s++;
1c001d08:	02800718 	addi.w	$r24,$r24,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c001d0c:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c001cf8 <putstring+0x28>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:6 (discriminator 1)
1c001d10:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001d14:	57ff5fff 	bl	-164(0xfffff5c) # 1c001c70 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c001d18:	001502e4 	move	$r4,$r23
1c001d1c:	57ff57ff 	bl	-172(0xfffff54) # 1c001c70 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c001d20:	28000317 	ld.b	$r23,$r24,0
1c001d24:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c001d08 <putstring+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:11
}
return 0;
}
1c001d28:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d2c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001d30:	28801078 	ld.w	$r24,$r3,4(0x4)
1c001d34:	28800079 	ld.w	$r25,$r3,0
1c001d38:	00150004 	move	$r4,$r0
1c001d3c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d40:	4c000020 	jirl	$r0,$r1,0
1c001d44:	03400000 	andi	$r0,$r0,0x0
1c001d48:	03400000 	andi	$r0,$r0,0x0
1c001d4c:	03400000 	andi	$r0,$r0,0x0

1c001d50 <puts>:
puts():
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:15


int puts(char *s)
{
1c001d50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d54:	29803061 	st.w	$r1,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:16
putstring(s);
1c001d58:	57ff7bff 	bl	-136(0xfffff78) # 1c001cd0 <putstring>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:17
putchar('\r');
1c001d5c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001d60:	57ff13ff 	bl	-240(0xfffff10) # 1c001c70 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:18
putchar('\n');
1c001d64:	02802804 	addi.w	$r4,$r0,10(0xa)
1c001d68:	57ff0bff 	bl	-248(0xfffff08) # 1c001c70 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/puts.c:20
return 0;
}
1c001d6c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d70:	00150004 	move	$r4,$r0
1c001d74:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d78:	4c000020 	jirl	$r0,$r1,0
1c001d7c:	03400000 	andi	$r0,$r0,0x0

1c001d80 <printbase>:
printbase():
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c001d80:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001d84:	29816077 	st.w	$r23,$r3,88(0x58)
1c001d88:	29817061 	st.w	$r1,$r3,92(0x5c)
1c001d8c:	29815078 	st.w	$r24,$r3,84(0x54)
1c001d90:	29814079 	st.w	$r25,$r3,80(0x50)
1c001d94:	00150097 	move	$r23,$r4
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c001d98:	580008e0 	beq	$r7,$r0,8(0x8) # 1c001da0 <printbase+0x20>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:7 (discriminator 1)
1c001d9c:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c001e40 <printbase+0xc0>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c001da0:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c001e60 <printbase+0xe0>
1c001da4:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001da8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001dac:	001131ce 	sub.w	$r14,$r14,$r12
1c001db0:	50000800 	b	8(0x8) # 1c001db8 <printbase+0x38>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c001db4:	001501b7 	move	$r23,$r13
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c001db8:	00219aed 	mod.wu	$r13,$r23,$r6
1c001dbc:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001dc4 <printbase+0x44>
1c001dc0:	002a0007 	break	0x7
1c001dc4:	2900018d 	st.b	$r13,$r12,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c001dc8:	001031d8 	add.w	$r24,$r14,$r12
1c001dcc:	00211aed 	div.wu	$r13,$r23,$r6
1c001dd0:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001dd8 <printbase+0x58>
1c001dd4:	002a0007 	break	0x7
1c001dd8:	0280058c 	addi.w	$r12,$r12,1(0x1)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c001ddc:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c001db4 <printbase+0x34>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c001de0:	600058b8 	blt	$r5,$r24,88(0x58) # 1c001e38 <printbase+0xb8>
1c001de4:	001500b7 	move	$r23,$r5
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001de8:	02802419 	addi.w	$r25,$r0,9(0x9)
1c001dec:	03400000 	andi	$r0,$r0,0x0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c001df0:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001df4:	00105d8c 	add.w	$r12,$r12,$r23
1c001df8:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c001dfc:	60001717 	blt	$r24,$r23,20(0x14) # 1c001e10 <printbase+0x90>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:24 (discriminator 1)
1c001e00:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001e04:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c001e08:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c001e10 <printbase+0x90>
1c001e0c:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c001e10:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:25 (discriminator 4)
1c001e14:	57fe5fff 	bl	-420(0xffffe5c) # 1c001c70 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c001e18:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c001df0 <printbase+0x70>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:28
	}
	return 0;
}
1c001e1c:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c001e20:	28816077 	ld.w	$r23,$r3,88(0x58)
1c001e24:	28815078 	ld.w	$r24,$r3,84(0x54)
1c001e28:	28814079 	ld.w	$r25,$r3,80(0x50)
1c001e2c:	00150004 	move	$r4,$r0
1c001e30:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001e34:	4c000020 	jirl	$r0,$r1,0
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c001e38:	00150305 	move	$r5,$r24
1c001e3c:	53ffabff 	b	-88(0xfffffa8) # 1c001de4 <printbase+0x64>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c001e40:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001e44:	29803066 	st.w	$r6,$r3,12(0xc)
1c001e48:	29802065 	st.w	$r5,$r3,8(0x8)
1c001e4c:	57fe27ff 	bl	-476(0xffffe24) # 1c001c70 <putchar>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:9
	value = -v;
1c001e50:	00115c17 	sub.w	$r23,$r0,$r23
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:10
	putchar('-');
1c001e54:	28802065 	ld.w	$r5,$r3,8(0x8)
1c001e58:	28803066 	ld.w	$r6,$r3,12(0xc)
1c001e5c:	53ff4bff 	b	-184(0xfffff48) # 1c001da4 <printbase+0x24>
/home/132/git_rep/perf/soft/perf_func/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c001e60:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c001e1c <printbase+0x9c>
1c001e64:	00150018 	move	$r24,$r0
1c001e68:	53ff7fff 	b	-132(0xfffff7c) # 1c001de4 <printbase+0x64>
1c001e6c:	03400000 	andi	$r0,$r0,0x0

1c001e70 <get_count>:
get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c001e70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e74:	29803079 	st.w	$r25,$r3,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001e78:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001e7c:	28800324 	ld.w	$r4,$r25,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
    return  _get_count();
}
1c001e80:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001e84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e88:	4c000020 	jirl	$r0,$r1,0
1c001e8c:	03400000 	andi	$r0,$r0,0x0

1c001e90 <_get_count>:
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:20
1c001e90:	53ffe3ff 	b	-32(0xfffffe0) # 1c001e70 <get_count>
1c001e94:	03400000 	andi	$r0,$r0,0x0
1c001e98:	03400000 	andi	$r0,$r0,0x0
1c001e9c:	03400000 	andi	$r0,$r0,0x0

1c001ea0 <get_count_my>:
get_count_my():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c001ea0:	00006004 	rdtimel.w	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c001ea4:	4c000020 	jirl	$r0,$r1,0
1c001ea8:	03400000 	andi	$r0,$r0,0x0
1c001eac:	03400000 	andi	$r0,$r0,0x0

1c001eb0 <clock_gettime>:
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c001eb0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001eb4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001eb8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001ebc:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001ec0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c001ec4:	001c35ed 	mul.w	$r13,$r15,$r13
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001ec8:	02819011 	addi.w	$r17,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001ecc:	1400030e 	lu12i.w	$r14,24(0x18)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001ed0:	002145f0 	div.wu	$r16,$r15,$r17
1c001ed4:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c001edc <clock_gettime+0x2c>
1c001ed8:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001edc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001ee0:	039a81ce 	ori	$r14,$r14,0x6a0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001ee4:	0021b211 	mod.wu	$r17,$r16,$r12
1c001ee8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001ef0 <clock_gettime+0x40>
1c001eec:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001ef0:	002139f0 	div.wu	$r16,$r15,$r14
1c001ef4:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c001efc <clock_gettime+0x4c>
1c001ef8:	002a0007 	break	0x7
1c001efc:	0021b20e 	mod.wu	$r14,$r16,$r12
1c001f00:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001f08 <clock_gettime+0x58>
1c001f04:	002a0007 	break	0x7
/home/132/git_rep/perf/soft/perf_func/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c001f08:	298000a0 	st.w	$r0,$r5,0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001f0c:	298030ae 	st.w	$r14,$r5,12(0xc)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001f10:	298020b1 	st.w	$r17,$r5,8(0x8)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c001f14:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001f18:	00150004 	move	$r4,$r0
/home/132/git_rep/perf/soft/perf_func/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001f1c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001f20:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001f28 <clock_gettime+0x78>
1c001f24:	002a0007 	break	0x7
1c001f28:	298010ae 	st.w	$r14,$r5,4(0x4)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
}
1c001f2c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f30:	4c000020 	jirl	$r0,$r1,0
1c001f34:	03400000 	andi	$r0,$r0,0x0
1c001f38:	03400000 	andi	$r0,$r0,0x0
1c001f3c:	03400000 	andi	$r0,$r0,0x0

1c001f40 <get_clock>:
get_clock():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:42
1c001f40:	53ff33ff 	b	-208(0xfffff30) # 1c001e70 <get_count>
1c001f44:	03400000 	andi	$r0,$r0,0x0
1c001f48:	03400000 	andi	$r0,$r0,0x0
1c001f4c:	03400000 	andi	$r0,$r0,0x0

1c001f50 <get_ns>:
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c001f50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f54:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001f58:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001f5c:	28800324 	ld.w	$r4,$r25,0
get_ns():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c001f60:	0280280c 	addi.w	$r12,$r0,10(0xa)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:57
    return n;
}
1c001f64:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001f68:	001c3084 	mul.w	$r4,$r4,$r12
1c001f6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f70:	4c000020 	jirl	$r0,$r1,0
1c001f74:	03400000 	andi	$r0,$r0,0x0
1c001f78:	03400000 	andi	$r0,$r0,0x0
1c001f7c:	03400000 	andi	$r0,$r0,0x0

1c001f80 <get_us>:
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:61


unsigned long get_us(void)
{
1c001f80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f84:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:7
    asm volatile(
1c001f88:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001f8c:	28800324 	ld.w	$r4,$r25,0
get_us():
/home/132/git_rep/perf/soft/perf_func/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c001f90:	0281900c 	addi.w	$r12,$r0,100(0x64)
/home/132/git_rep/perf/soft/perf_func/lib/time.c:66
    return n;
}
1c001f94:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001f98:	0021308d 	div.wu	$r13,$r4,$r12
1c001f9c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001fa4 <get_us+0x24>
1c001fa0:	002a0007 	break	0x7
1c001fa4:	001501a4 	move	$r4,$r13
1c001fa8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fac:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <t-0x1e8>:
1c080000:	000a6425 	0x000a6425
1c080004:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c09726c <_end+0x11cc4>
1c080008:	43206579 	beqz	$r11,-1630108(0x672064) # 1bef206c <__stack_size+0x1bee206c>
1c08000c:	65742030 	bge	$r1,$r16,95264(0x17420) # 1c09742c <_end+0x11e84>
1c080010:	62207473 	blt	$r3,$r19,-122764(0x22074) # 1c062084 <_data_lma+0x600d4>
1c080014:	6e696765 	bgeu	$r27,$r5,-104092(0x26964) # 1c066978 <_data_lma+0x649c8>
1c080018:	0000002e 	0x0000002e
1c08001c:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c097284 <_end+0x11cdc>
1c080020:	43206579 	beqz	$r11,-1630108(0x672064) # 1bef2084 <__stack_size+0x1bee2084>
1c080024:	41502030 	beqz	$r1,-4108256(0x415020) # 1bc95044 <__stack_size+0x1bc85044>
1c080028:	00215353 	div.wu	$r19,$r26,$r20
1c08002c:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c097294 <_end+0x11cec>
1c080030:	43206579 	beqz	$r11,-1630108(0x672064) # 1bef2094 <__stack_size+0x1bee2094>
1c080034:	52452030 	b	12731680(0xc24520) # 1cca4554 <_stack+0xba4558>
1c080038:	21454f52 	sc.w	$r18,$r26,17740(0x454c)
1c08003c:	00002121 	clo.d	$r1,$r9
1c080040:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c0972a8 <_end+0x11d00>
1c080044:	43206579 	beqz	$r11,-1630108(0x672064) # 1bef20a8 <__stack_size+0x1bee20a8>
1c080048:	54203a30 	bl	-121626568(0x8c02038) # 14c82080 <__stack_size+0x14c72080>
1c08004c:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861c0 <_end+0xc18>
1c080050:	756f4320 	0x756f4320
1c080054:	5328746e 	b	29042804(0x1bb2874) # 1dc328c8 <_stack+0x1b328cc>
1c080058:	6320436f 	blt	$r27,$r15,-57280(0x32040) # 1c072098 <_data_lma+0x700e8>
1c08005c:	746e756f 	0x746e756f
1c080060:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c080064:	78257830 	0x78257830
1c080068:	0000000a 	0x0000000a
1c08006c:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c0972d4 <_end+0x11d2c>
1c080070:	43206579 	beqz	$r11,-1630108(0x672064) # 1bef20d4 <__stack_size+0x1bee20d4>
1c080074:	54203a30 	bl	-121626568(0x8c02038) # 14c820ac <__stack_size+0x14c720ac>
1c080078:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861ec <_end+0xc44>
1c08007c:	756f4320 	0x756f4320
1c080080:	4328746e 	beqz	$r3,3876980(0x3b2874) # 1c4328f4 <_stack+0x3328f8>
1c080084:	63205550 	blt	$r10,$r16,-57260(0x32054) # 1c0720d8 <_data_lma+0x70128>
1c080088:	746e756f 	0x746e756f
1c08008c:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c080090:	78257830 	0x78257830
1c080094:	0000000a 	0x0000000a
1c080098:	1c001c50 	pcaddu12i	$r16,226(0xe2)
1c08009c:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800a0:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800a4:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800a8:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800ac:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800b0:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800b4:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800b8:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800bc:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800c0:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800c4:	1c001b28 	pcaddu12i	$r8,217(0xd9)
1c0800c8:	1c001b34 	pcaddu12i	$r20,217(0xd9)
1c0800cc:	1c001b34 	pcaddu12i	$r20,217(0xd9)
1c0800d0:	1c001b34 	pcaddu12i	$r20,217(0xd9)
1c0800d4:	1c001b34 	pcaddu12i	$r20,217(0xd9)
1c0800d8:	1c001b34 	pcaddu12i	$r20,217(0xd9)
1c0800dc:	1c001b34 	pcaddu12i	$r20,217(0xd9)
1c0800e0:	1c001b34 	pcaddu12i	$r20,217(0xd9)
1c0800e4:	1c001b34 	pcaddu12i	$r20,217(0xd9)
1c0800e8:	1c001b34 	pcaddu12i	$r20,217(0xd9)
1c0800ec:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800f0:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800f4:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800f8:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0800fc:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080100:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080104:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080108:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c08010c:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080110:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080114:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080118:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c08011c:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080120:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080124:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080128:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c08012c:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080130:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080134:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080138:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c08013c:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080140:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080144:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080148:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c08014c:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080150:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080154:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080158:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c08015c:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080160:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080164:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080168:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c08016c:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080170:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080174:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080178:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c08017c:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080180:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080184:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c080188:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c08018c:	1c001b74 	pcaddu12i	$r20,219(0xdb)
1c080190:	1c001b90 	pcaddu12i	$r16,220(0xdc)
1c080194:	1c001ba4 	pcaddu12i	$r4,221(0xdd)
1c080198:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c08019c:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801a0:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801a4:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801a8:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801ac:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801b0:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801b4:	1c001bc0 	pcaddu12i	$r0,222(0xde)
1c0801b8:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801bc:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801c0:	1c001be0 	pcaddu12i	$r0,223(0xdf)
1c0801c4:	1c001c00 	pcaddu12i	$r0,224(0xe0)
1c0801c8:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801cc:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801d0:	1c001c20 	pcaddu12i	$r0,225(0xe1)
1c0801d4:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801d8:	1c001c34 	pcaddu12i	$r20,225(0xe1)
1c0801dc:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801e0:	1c001c60 	pcaddu12i	$r0,227(0xe3)
1c0801e4:	1c001c00 	pcaddu12i	$r0,224(0xe0)

1c0801e8 <t>:
rodata_end():
1c0801e8:	00000001 	0x00000001
	...
1c082a8c:	00000001 	0x00000001
	...

1c085330 <C0_data1>:
1c085330:	77006f6c 	0x77006f6c
1c085334:	6968006f 	bltu	$r3,$r15,92160(0x16800) # 1c09bb34 <_end+0x1658c>
1c085338:	00696c00 	bstrins.w	$r0,$r0,0x9,0x1b
1c08533c:	6e006974 	bgeu	$r11,$r20,-130968(0x20068) # 1c0653a4 <_data_lma+0x633f4>
1c085340:	61620065 	blt	$r3,$r5,90624(0x16200) # 1c09b540 <_end+0x15f98>
1c085344:	00617000 	bstrins.w	$r0,$r0,0x1,0x1c
1c085348:	69006973 	bltu	$r11,$r19,65640(0x10068) # 1c0953b0 <_end+0xfe08>
1c08534c:	696d0064 	bltu	$r3,$r4,93440(0x16d00) # 1c09c04c <_end+0x16aa4>
1c085350:	006f6d00 	bstrins.w	$r0,$r8,0xf,0x1b
1c085354:	65006566 	bge	$r11,$r6,65636(0x10064) # 1c0953b8 <_end+0xfe10>
1c085358:	786f006c 	0x786f006c
1c08535c:	00626100 	bstrins.w	$r0,$r8,0x2,0x18
1c085360:	65007261 	bge	$r19,$r1,65648(0x10070) # 1c0953d0 <_end+0xfe28>
1c085364:	776f0073 	xvssrarni.du.q	$xr19,$xr3,0x40
1c085368:	00657000 	bstrins.w	$r0,$r0,0x5,0x1c
1c08536c:	6f006f62 	bgeu	$r27,$r2,-65428(0x3006c) # 1c0753d8 <_data_lma+0x73428>
1c085370:	706f0069 	0x706f0069
1c085374:	00616600 	bstrins.w	$r0,$r16,0x1,0x19
1c085378:	62006875 	blt	$r3,$r21,-130968(0x20068) # 1c0653e0 <_data_lma+0x63430>
1c08537c:	69700069 	bltu	$r3,$r9,94208(0x17000) # 1c09c37c <_end+0x16dd4>
1c085380:	00756d00 	bstrins.w	$r0,$r8,0x15,0x1b
1c085384:	61006d68 	blt	$r11,$r8,65644(0x1006c) # 1c0953f0 <_end+0xfe48>
1c085388:	69780079 	bltu	$r3,$r25,96256(0x17800) # 1c09cb88 <_end+0x175e0>
1c08538c:	00696b00 	bstrins.w	$r0,$r24,0x9,0x1a
1c085390:	6f00756e 	bgeu	$r11,$r14,-65420(0x30074) # 1c075404 <_data_lma+0x73454>
1c085394:	61610073 	blt	$r3,$r19,90368(0x16100) # 1c09b494 <_end+0x15eec>
1c085398:	00696100 	bstrins.w	$r0,$r8,0x9,0x18
1c08539c:	61006761 	blt	$r27,$r1,65636(0x10064) # 1c095400 <_end+0xfe58>
1c0853a0:	74750065 	xvmax.wu	$xr5,$xr3,$xr0
1c0853a4:	00776100 	bstrins.w	$r0,$r8,0x17,0x18
1c0853a8:	6b00796f 	bltu	$r11,$r15,-65416(0x30078) # 1c075420 <_data_lma+0x73470>
1c0853ac:	78610061 	0x78610061
1c0853b0:	00646f00 	bstrins.w	$r0,$r24,0x4,0x1b
1c0853b4:	6f006971 	bgeu	$r11,$r17,-65432(0x30068) # 1c07541c <_data_lma+0x7346c>
1c0853b8:	6f6a006d 	bgeu	$r3,$r13,-38400(0x36a00) # 1c07bdb8 <_data_lma+0x79e08>
1c0853bc:	00617a00 	bstrins.w	$r0,$r16,0x1,0x1e
1c0853c0:	6f006665 	bgeu	$r19,$r5,-65436(0x30064) # 1c075424 <_data_lma+0x73474>
1c0853c4:	00000065 	0x00000065

1c0853c8 <C0_data0>:
1c0853c8:	7400666f 	xvseq.b	$xr15,$xr19,$xr25
1c0853cc:	6e69006f 	bgeu	$r3,$r15,-104192(0x26900) # 1c06bccc <_data_lma+0x69d1c>
1c0853d0:	00736900 	bstrins.w	$r0,$r8,0x13,0x1a
1c0853d4:	6f007469 	bgeu	$r3,$r9,-65420(0x30074) # 1c075448 <_data_lma+0x73498>
1c0853d8:	6562006e 	bge	$r3,$r14,90624(0x16200) # 1c09b5d8 <_end+0x16030>
1c0853dc:	00736100 	bstrins.w	$r0,$r8,0x13,0x18
1c0853e0:	62007461 	blt	$r3,$r1,-130956(0x20074) # 1c065454 <_data_lma+0x634a4>
1c0853e4:	65680079 	bge	$r3,$r25,92160(0x16800) # 1c09bbe4 <_end+0x1663c>
1c0853e8:	00726f00 	bstrins.w	$r0,$r24,0x12,0x1b
1c0853ec:	77006e61 	0x77006e61
1c0853f0:	70750065 	vmax.wu	$vr5,$vr3,$vr0
1c0853f4:	006f7300 	bstrins.w	$r0,$r24,0xf,0x1c
1c0853f8:	64006669 	bge	$r19,$r9,100(0x64) # 1c08545c <C0_data0+0x94>
1c0853fc:	6f6e006f 	bgeu	$r3,$r15,-37376(0x36e00) # 1c07c1fc <_data_lma+0x7a24c>
1c085400:	00656d00 	bstrins.w	$r0,$r8,0x5,0x1b
1c085404:	6700796d 	bge	$r11,$r13,-65416(0x30078) # 1c07547c <_data_lma+0x734cc>
1c085408:	7265006f 	0x7265006f
1c08540c:	00737500 	bstrins.w	$r0,$r8,0x13,0x1d
1c085410:	6f006d61 	bgeu	$r11,$r1,-65428(0x3006c) # 1c07547c <_data_lma+0x734cc>
1c085414:	65640068 	bge	$r3,$r8,91136(0x16400) # 1c09b814 <_end+0x1626c>
1c085418:	006d6d00 	bstrins.w	$r0,$r8,0xd,0x1b
1c08541c:	61007465 	blt	$r3,$r5,65652(0x10074) # 1c095490 <_end+0xfee8>
1c085420:	616c006c 	blt	$r3,$r12,93184(0x16c00) # 1c09c020 <_end+0x16a78>
1c085424:	00686100 	bstrins.w	$r0,$r8,0x8,0x18
1c085428:	65006168 	bge	$r11,$r8,65632(0x10060) # 1c095488 <_end+0xfee0>
1c08542c:	64610068 	bge	$r3,$r8,24832(0x6100) # 1c08b52c <_end+0x5f84>
1c085430:	00617900 	bstrins.w	$r0,$r8,0x1,0x1e
1c085434:	72006e65 	0x72006e65
1c085438:	65790065 	bge	$r3,$r5,96512(0x17900) # 1c09cd38 <_end+0x17790>
1c08543c:	00786500 	bstrins.w	$r0,$r8,0x18,0x19
1c085440:	6d006f79 	bgeu	$r27,$r25,65644(0x1006c) # 1c0954ac <_end+0xff04>
1c085444:	616e0061 	blt	$r3,$r1,93696(0x16e00) # 1c09c244 <_end+0x16c9c>
1c085448:	00617400 	bstrins.w	$r0,$r0,0x1,0x1d
1c08544c:	73006465 	0x73006465
1c085450:	6f680068 	bgeu	$r3,$r8,-38912(0x36800) # 1c07bc50 <_data_lma+0x79ca0>
1c085454:	006d7500 	bstrins.w	$r0,$r8,0xd,0x1d
1c085458:	75006d65 	0x75006d65
1c08545c:	0000006e 	0x0000006e

1c085460 <B>:
1c085460:	00000032 	0x00000032

1c085464 <C0_m>:
1c085464:	00000002 	0x00000002

1c085468 <A>:
1c085468:	00000032 	0x00000032

1c08546c <C0_n>:
1c08546c:	00000002 	0x00000002

Disassembly of section .got:

1c085470 <_GLOBAL_OFFSET_TABLE_>:
1c085470:	00000000 	0x00000000
1c085474:	1c085480 	pcaddu12i	$r0,17060(0x42a4)
1c085478:	1c085510 	pcaddu12i	$r16,17064(0x42a8)
1c08547c:	1c085514 	pcaddu12i	$r20,17064(0x42a8)

Disassembly of section .bss:

1c085480 <mpN>:
	...

1c085510 <ans>:
__bss_start():
1c085510:	00000000 	0x00000000

1c085514 <mpM>:
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
  18:	001a3000 	0x001a3000
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e60400 	bstrpick.d	$r0,$r0,0x26,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	001a3000 	0x001a3000
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
  c4:	001adc01 	0x001adc01
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
 108:	001b8c0c 	rotr.d	$r12,$r0,$r3
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	001ba00e 	rotr.d	$r14,$r0,$r8
 124:	0002531c 	0x0002531c
 128:	1bbc0c00 	pcalau12i	$r0,-139168(0xde060)
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	1bd80c00 	pcalau12i	$r0,-81824(0xec060)
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	1bf80c00 	pcalau12i	$r0,-16288(0xfc060)
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	180c0030 	pcaddi	$r16,24577(0x6001)
 174:	471c001c 	bnez	$r0,-844800(0x731c00) # fff31d74 <_stack+0xe3e31d78>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	300e0030 	0x300e0030
 18c:	5f1c001c 	bne	$r0,$r28,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c001c4c 	pcaddu12i	$r12,226(0xe2)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c001c5c 	pcaddu12i	$r28,226(0xe2)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c001c68 	pcaddu12i	$r8,227(0xe3)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00f10b00 	bstrpick.d	$r0,$r24,0x31,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c001abc 	pcaddu12i	$r28,213(0xd5)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000f10b 	0x0000f10b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	c40f0006 	0xc40f0006
 208:	531c001a 	b	7019520(0x6b1c00) # 6b1e08 <__stack_size+0x6a1e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	9c0f0000 	0x9c0f0000
 218:	531c001a 	b	7019520(0x6b1c00) # 6b1e18 <__stack_size+0x6a1e18>
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
 284:	001c7000 	mul.w	$r0,$r0,$r28
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
 2c8:	1c700000 	pcaddu12i	$r0,229376(0x38000)
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
 300:	001c7000 	mul.w	$r0,$r0,$r28
 304:	0030021c 	0x0030021c
 308:	03010000 	lu52i.d	$r0,$r0,64(0x40)
 30c:	00400b01 	0x00400b01
 310:	03ba0000 	ori	$r0,$r0,0xe80
 314:	03b80000 	ori	$r0,$r0,0xe00
 318:	00000000 	0x00000000
 31c:	0000330c 	revb.2h	$r12,$r24
 320:	001ca000 	mulh.w	$r0,$r0,$r8
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
 34c:	001cd000 	mulh.w	$r0,$r0,$r20
 350:	0000ac1c 	0x0000ac1c
 354:	00020900 	0x00020900
 358:	07040200 	0x07040200
 35c:	0000000b 	0x0000000b
 360:	06070402 	cacop	0x2,$r0,449(0x1c1)
 364:	03000000 	lu52i.d	$r0,$r0,0
 368:	0000010a 	0x0000010a
 36c:	a9050e01 	0xa9050e01
 370:	50000000 	b	0 # 370 <__stack_size-0xfc90>
 374:	2c1c001d 	vld	$vr29,$r0,1792(0x700)
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
 3a4:	1d5c0700 	pcaddu12i	$r0,-335816(0xae038)
 3a8:	00bd1c00 	bstrins.d	$r0,$r0,0x3d,0x7
 3ac:	00860000 	bstrins.d	$r0,$r0,0x6,0x0
 3b0:	01080000 	0x01080000
 3b4:	01f30354 	0x01f30354
 3b8:	64070054 	bge	$r2,$r20,1792(0x700) # ab8 <__stack_size-0xf548>
 3bc:	671c001d 	bge	$r0,$r29,-58368(0x31c00) # ffff1fbc <_stack+0xe3ef1fc0>
 3c0:	99000001 	0x99000001
 3c4:	08000000 	0x08000000
 3c8:	3d015401 	0x3d015401
 3cc:	1d6c0900 	pcaddu12i	$r0,-303032(0xb6048)
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
 3fc:	001cd000 	mulh.w	$r0,$r0,$r20
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
 448:	081c001d 	fmadd.s	$f29,$f0,$f0,$f24
 44c:	41000000 	beqz	$r0,65536(0x10000) # 1044c <__stack_size+0x44c>
 450:	05000001 	0x05000001
 454:	000000f1 	0x000000f1
 458:	a9100601 	0xa9100601
 45c:	31000000 	0x31000000
 460:	06000001 	cacop	0x1,$r0,0
 464:	1d180900 	pcaddu12i	$r0,-475064(0x8c048)
 468:	01671c00 	0x01671c00
 46c:	01080000 	0x01080000
 470:	003d0154 	0x003d0154
 474:	1d000700 	pcaddu12i	$r0,-524232(0x80038)
 478:	01671c00 	0x01671c00
 47c:	01550000 	0x01550000
 480:	01080000 	0x01080000
 484:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
 488:	1d200900 	pcaddu12i	$r0,-458680(0x90048)
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
 4c0:	001d8000 	mul.d	$r0,$r0,$r0
 4c4:	0000ec1c 	0x0000ec1c
 4c8:	0002a100 	0x0002a100
 4cc:	07040200 	0x07040200
 4d0:	0000000b 	0x0000000b
 4d4:	06070402 	cacop	0x2,$r0,449(0x1c1)
 4d8:	03000000 	lu52i.d	$r0,$r0,0
 4dc:	0000009f 	0x0000009f
 4e0:	49050101 	bcnez	$fcc0,328960(0x50500) # 509e0 <__stack_size+0x409e0>
 4e4:	80000001 	0x80000001
 4e8:	ec1c001d 	0xec1c001d
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
 59c:	1c001e40 	pcaddu12i	$r0,242(0xf2)
 5a0:	00000020 	0x00000020
 5a4:	00000123 	0x00000123
 5a8:	0000f10a 	0x0000f10a
 5ac:	020a0100 	slti	$r0,$r8,640(0x280)
 5b0:	00000149 	0x00000149
 5b4:	00000112 	0x00000112
 5b8:	500c000b 	b	2886656(0x2c0c00) # 2c11b8 <__stack_size+0x2b11b8>
 5bc:	6e1c001e 	bgeu	$r0,$r30,-123904(0x21c00) # fffe21bc <_stack+0xe3ee21c0>
 5c0:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 5c4:	08025401 	0x08025401
 5c8:	0e00002d 	0x0e00002d
 5cc:	1c001de8 	pcaddu12i	$r8,239(0xef)
 5d0:	00000030 	0x00000030
 5d4:	0000f10a 	0x0000f10a
 5d8:	020a0100 	slti	$r0,$r8,640(0x280)
 5dc:	00000149 	0x00000149
 5e0:	0000013e 	0x0000013e
 5e4:	180f000b 	pcaddi	$r11,30720(0x7800)
 5e8:	6e1c001e 	bgeu	$r0,$r30,-123904(0x21c00) # fffe21e8 <_stack+0xe3ee21ec>
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
 63c:	1c001e70 	pcaddu12i	$r16,243(0xf3)
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
 6b8:	301c001f 	0x301c001f
 6bc:	01000000 	0x01000000
 6c0:	0000da9c 	0x0000da9c
 6c4:	006e0800 	bstrins.w	$r0,$r0,0xe,0x2
 6c8:	2c133e01 	vld	$vr1,$r16,1231(0x4cf)
 6cc:	de000000 	0xde000000
 6d0:	d6000006 	0xd6000006
 6d4:	09000006 	0x09000006
 6d8:	0000022e 	0x0000022e
 6dc:	1c001f80 	pcaddu12i	$r0,252(0xfc)
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
 708:	001f5000 	mulw.d.w	$r0,$r0,$r20
 70c:	0000241c 	clz.d	$r28,$r0
 710:	2c9c0100 	xvld	$xr0,$r8,1792(0x700)
 714:	08000001 	0x08000001
 718:	3501006e 	0x3501006e
 71c:	00002c13 	ctz.d	$r19,$r0
 720:	00073b00 	alsl.wu	$r0,$r24,$r14,0x3
 724:	00073300 	alsl.wu	$r0,$r24,$r12,0x3
 728:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 72c:	1f500000 	pcaddu18i	$r0,-360448(0xa8000)
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
 774:	1eb00000 	pcaddu18i	$r0,360448(0x58000)
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
 7bc:	001eb000 	mulh.du	$r0,$r0,$r12
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
 7f0:	1c001ea0 	pcaddu12i	$r0,245(0xf5)
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
 81c:	001e7000 	mulh.d	$r0,$r0,$r28
 820:	00001c1c 	ctz.w	$r28,$r0
 824:	2e9c0100 	0x2e9c0100
 828:	09000002 	0x09000002
 82c:	0000022e 	0x0000022e
 830:	1c001e70 	pcaddu12i	$r16,243(0xf3)
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
  10:	1c001a30 	pcaddu12i	$r16,209(0xd1)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c001c70 	pcaddu12i	$r16,227(0xe3)
  34:	00000054 	0x00000054
	...
  40:	0000001c 	0x0000001c
  44:	03340002 	lu52i.d	$r2,$r0,-768(0xd00)
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c001cd0 	pcaddu12i	$r16,230(0xe6)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04a80002 	csrrd	$r2,0x2a00
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c001d80 	pcaddu12i	$r0,236(0xec)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06230002 	cacop	0x2,$r0,-1856(0x8c0)
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c001e70 	pcaddu12i	$r16,243(0xf3)
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
  2c:	1a300205 	pcalau12i	$r5,98320(0x18010)
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
 1d8:	131c001c 	addu16i.d	$r28,$r0,-14592(0xc700)
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
 234:	001cd002 	mulh.w	$r2,$r0,$r20
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
 2d0:	1d800205 	pcaddu12i	$r5,-262128(0xc0010)
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
 3cc:	1e700205 	pcaddu18i	$r5,229392(0x38010)
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
  18:	1c001a30 	pcaddu12i	$r16,209(0xd1)
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
  60:	1c001c70 	pcaddu12i	$r16,227(0xe3)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c001ca0 	pcaddu12i	$r0,229(0xe5)
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
  a8:	1c001cd0 	pcaddu12i	$r16,230(0xe6)
  ac:	00000074 	0x00000074
  b0:	50100e44 	b	-116387828(0x910100c) # f91010bc <_stack+0xdd0010c0>
  b4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  b8:	04990398 	csrxchg	$r24,$r28,0x2640
  bc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c204 <__stack_size+0x7c204>
  c0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd904 <_stack+0xe3ccd908>
  c4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  c8:	00000018 	0x00000018
  cc:	00000090 	0x00000090
  d0:	1c001d50 	pcaddu12i	$r16,234(0xea)
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
  fc:	1c001d80 	pcaddu12i	$r0,236(0xec)
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
 138:	1c001e70 	pcaddu12i	$r16,243(0xf3)
 13c:	0000001c 	0x0000001c
 140:	44100e44 	bnez	$r18,1052684(0x10100c) # 10114c <__stack_size+0xf114c>
 144:	d94c0199 	0xd94c0199
 148:	00000e44 	0x00000e44
 14c:	0000000c 	0x0000000c
 150:	00000120 	0x00000120
 154:	1c001e90 	pcaddu12i	$r16,244(0xf4)
 158:	00000004 	0x00000004
 15c:	0000000c 	0x0000000c
 160:	00000120 	0x00000120
 164:	1c001ea0 	pcaddu12i	$r0,245(0xf5)
 168:	00000008 	0x00000008
 16c:	00000018 	0x00000018
 170:	00000120 	0x00000120
 174:	1c001eb0 	pcaddu12i	$r16,245(0xf5)
 178:	00000084 	0x00000084
 17c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101188 <__stack_size+0xf1188>
 180:	60020199 	blt	$r12,$r25,512(0x200) # 380 <__stack_size-0xfc80>
 184:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 188:	0000000c 	0x0000000c
 18c:	00000120 	0x00000120
 190:	1c001f40 	pcaddu12i	$r0,250(0xfa)
 194:	00000004 	0x00000004
 198:	00000018 	0x00000018
 19c:	00000120 	0x00000120
 1a0:	1c001f50 	pcaddu12i	$r16,250(0xfa)
 1a4:	00000024 	0x00000024
 1a8:	44100e44 	bnez	$r18,1052684(0x10100c) # 1011b4 <__stack_size+0xf11b4>
 1ac:	d9500199 	0xd9500199
 1b0:	00000e48 	0x00000e48
 1b4:	00000018 	0x00000018
 1b8:	00000120 	0x00000120
 1bc:	1c001f80 	pcaddu12i	$r0,252(0xfc)
 1c0:	00000030 	0x00000030
 1c4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1011d0 <__stack_size+0xf11d0>
 1c8:	d9500199 	0xd9500199
 1cc:	00000e54 	0x00000e54
