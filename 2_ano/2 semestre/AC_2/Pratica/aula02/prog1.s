    .equ    READ_CORE_TIMER,11
    .equ    RESET_CORE_TIMER,12
    .equ    PUT_CHAR,3
    .equ    PRINT_INT,6
    .data
str:    .asciiz "/r"

    .text
    .globl main

main:   li $t0,0
while:
    la $a0,str
    li $v0,PUT_CHAR
    syscall
    li $a0,0
    li $a1,0x0004000A
    move $a0,$t0
    li $v0,PRINT_INT
    syscall
    li $v0,RESET_CORE_TIMER
    syscall

while2:
    li $v0, READ_CORE_TIMER
    syscall
    move $t1,$v0
    li $t2,200000
    bge $t1, $t2, endwhile  
    addi $t0,$t0,1
    j while2
endwhile:
    j while

    jr $ra


