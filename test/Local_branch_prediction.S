.section .text
.globl _start

_start:
.org 0x100
    ori $t0, $zero, 0x20
    addi.w $t1, $zero, 0x0
    loop:
        bge $t1, $t0, exit
        addi.w $t1, $t1, 0x1
        b loop
    exit:
        ori $t0, $zero, 0x0