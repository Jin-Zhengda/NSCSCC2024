.section .text
.globl _start

_start:
.org 0x100
    nop
    ori $t1, $zero, 0x1
    andi $t2, $t1, 0x10
    add.w $t3, $t1, $t2
    sub.w $t4, $t3, $t1
    xor $t4, $t4, $t3

    lu12i.w $t1, 0x2

    // data related instructions
    lu12i.w $t1, 0x3
    addi.w $t2, $t1, 0x1
    ori $t3, $t2, 0x1

    // slt
    li.w $t1, 0xffffffff
    
    slt $t2, $zero, $t1
    sltu $t2, $zero, $t1

    // sll, srl
    ori $t1, $zero, 0x4
    li.w $t2, 0x87654321
    sra.w $t3, $t2, $t1
    sll.w $t3, $t2, $t1
    srl.w $t3, $t2, $t1
    
    // t1 1, 2, 3, ffffffff, 4
    // t2 10, 4, 0, 1, 87654321
    // t3 11, 5, f8765432, 87654320, 08765432
    // t4 10, 1