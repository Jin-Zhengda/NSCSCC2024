.section .text
.globl _start

_start:
.org 0x100
    ori $t0, $zero, 0x20 # 100
    addi.w $t1, $zero, 0x0 # 104
    loop: 
        bge $t1, $t0, exit # 108
        addi.w $t1, $t1, 0x1 # 10c
        b loop # 110
    exit:
        ori $t0, $zero, 0x0 # 114