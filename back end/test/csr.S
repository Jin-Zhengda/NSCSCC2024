.section .text
.globl _start

_start:
.org 0x0
    csrrd $t1, 0x6
    ori $t2, $zero, 0x20
    csrwr $t2, 0x6
    ertn 

.org 0x20
    ori $t1, $zero, 0x0
    ori $t2, $zero, 0x0
    idle 0

.org 0x100
    nop 
    syscall 0