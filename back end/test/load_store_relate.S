.section .text
.globl _start

_start:
.org 0x100
    nop
    li.w $t1, 0x1234
    st.w $t1, $zero, 0x0

    li.w $t2, 0x1234
    ori $t1, $zero, 0x0

    ld.w $t1, $zero, 0x0

    addi.w $t3, $t1, 0x1
    nop
    li.w $t1, 0x4567
