.section .text
.globl _start

_start:
.org 0x100
    rdcntid $t1
    rdcntvl.w $t2
    rdcntvh.w $t3
    rdcntvl.w $t2

    pcaddu12i $t1, 0x1