.section .text
.globl _start

_start:
.org 0x0
s1: ori $t1, $zero, 0x2
    bl s2
    ori $t1, $zero, 0xf
    ori $t1, $zero, 0xe
    ori $t1, $zero, 0xd

.org 0x20
s2: ori $t1, $zero, 0x3
    ori $t2, $zero, 0x4
    beq $t1, $t2, s5
    bne $t1, $t2, s3
    ori $t1, $zero, 0xf
    ori $t1, $zero, 0xe
    ori $t1, $zero, 0xd

.org 0x40
s3: ori $t1, $zero, 0x5
    li.w $t3, 0xffffffff
    blt $zero, $t3, s6
    bge $t1, $zero, s4
    ori $t1, $zero, 0xf
    ori $t1, $zero, 0xe
    ori $t1, $zero, 0xd

.org 0x60
s4: ori $t1, $zero, 0x6
    b s7
    ori $t1, $zero, 0xf
    ori $t1, $zero, 0xe
    ori $t1, $zero, 0xd

.org 0x80
s5: ori $t1, $zero, 0x7
s6: ori $t1, $zero, 0x8

.org 0x100
    nop
    ori $t1, $zero, 0x1
    b s1
    ori $t1, $zero, 0xf
    ori $t1, $zero, 0xe
    ori $t1, $zero, 0xd
s7: ori $t1, $zero, 0x9
    ori $t2, $zero, 0x0
loop:
    blt $t1, $t2, exit
    addi.w $t2, $t2, 0x1
    b loop
exit:
    ori $t1, $zero, 0xa

    // t1 1, 2, 3, 5, 6, 9, a
    // t2 4, 0, 1, 2, 3, 4, 5, 6 ,7, 8, 9, a
    // t3 ffffffff