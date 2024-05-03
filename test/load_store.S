.section .text
.globl _start

_start:
.org 0x100
    nop
    ori $t1, $zero, 0xff
    st.b $t1, $zero, 0x3

    ori $t1, $zero, 0xee
    st.b $t1, $zero, 0x2

    ori $t1, $zero, 0xdd
    st.b $t1, $zero, 0x1

    ori $t1, $zero, 0xcc
    st.b $t1, $zero, 0x0

    ld.b $t2, $zero, 0x3
    ld.bu $t2, $zero, 0x2


    li.w $t3, 0xaabb
    st.h $t3, $zero, 0x4

    ld.hu $t4, $zero, 0x4
    ld.h $t4, $zero, 0x4

    li.w $t3, 0x8899
    st.h $t3, $zero, 0x6

    ld.h $t4, $zero, 0x6
    ld.hu $t4, $zero, 0x6



    li.w $t5, 0x44556677
    st.w $t5, $zero, 0x8

    ld.w $t6, $zero, 0x8

    // t1 ff, ee, dd, cc
    // t2 ffffffff, ee
    // t3 aabb, 8899
    // t4 aabb, ffffaabb, ffff8899, 8899
    // t5 44556677
    // t6 44556677