.section .text
.globl _start

_start:
.org 0x100
    nop

    // mul
    li.w $t1, 0xfffffffb
    ori $t2, $zero, 0x6
    mul.w $t3, $t1, $t2
    mulh.w $t3, $t1, $t2
    mulh.wu $t3, $t1, $t2

    // div
    li.w $t1, 0xfffffff1
    ori $t2, $zero, 0x11
    div.w $t4, $t2, $t1
    mod.w $t4, $t2, $t1
    div.wu $t4, $t2, $t1
    mod.wu $t4, $t2, $t1
    div.w $t4, $t1, $t2
    mod.w $t4, $t1, $t2

    // t1 fffffffb, fffffff1
    // t2 6, 11
    // t3 ffffffe2, ffffffff, 5
    // t4 0, fffffff1, 0f0f0f0e, 3, ffffffff, 2
