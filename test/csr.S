.section .text
.globl _start

_start:
.org 0x0
    csrrd $t1, 0x6
    ori $t2, $zero, 0x40
    csrwr $t2, 0x6
    ertn 
    ori $t1, $zero, 0x0
    ori $t1, $zero, 0x1
    ori $t1, $zero, 0x2
    ori $t1, $zero, 0x3

.org 0x40
    ori $t1, $zero, 0x0
    ori $t2, $zero, 0x0
    idle 0
    ori $t1, $zero, 0x1
    ori $t1, $zero, 0x2
    ori $t1, $zero, 0x3
    ori $t1, $zero, 0x4
    ori $t1, $zero, 0x5

.org 0x100
    nop 
    syscall 0
    ori $t1, $zero, 0x0
    ori $t1, $zero, 0x1
    ori $t1, $zero, 0x2
    ori $t1, $zero, 0x3
    ori $t1, $zero, 0x4
    ori $t1, $zero, 0x5
    