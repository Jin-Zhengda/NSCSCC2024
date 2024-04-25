.section .text
.globl _start

_start:
.org 0x100
    nop 
    li.w $t1, 0x1234
    st.w $t1, $zero, 0x0
    li.w $t1, 0x5678

    sc.w $t1, $zero, 0x0
    ld.w $t1, $zero, 0x0

    ori $t1, $zero, 0x0
    ll.w $t1
    addi.w $t1, $t1, 0x1
    sc.w $t1, $zero, 0x0

    ld.w $t1, $zero, 0x0

    // t1 1234, 5678, 0, 1234, 0, 1234, 1235, 1, 1235