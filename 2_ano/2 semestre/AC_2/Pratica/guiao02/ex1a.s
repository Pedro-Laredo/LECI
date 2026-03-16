    .equ READ_CORE_TIMER,11
    .equ RESET_CORE_TIMER,12
    .equ PUT_CHAR,3
    .equ PRINT_INT,6
    .data
    .text
    .globl main

main:   li $t0,0 #counter = 0


while:  li $a0,'\r'
        li $v0,PUT_CHAR
        syscall #putchar
        li $t1,4 #carregar 4 para t1
        sll $t2,$t1,16
        ori $t2,$t2,10
        move $a0,$t0
        move $a1,$t2
        li $v0,PRINT_INT  
        syscall
        li $v0,RESET_CORE_TIMER
        syscall

while2:
        li  $v0,READ_CORE_TIMER
        syscall
        li $t4,20000000000  #K#exercico 2
        li $t5, 1 #ms#exercico 2
        multu $t4,$t5#exercico 2
        mflo $t6#exercico 2
delay:  #exercico 2
        bge $a0,$t6,delay#exercico 2



        li  $t3,200000
        blt $v0,$t3,while2     # enquanto readCoreTimer() < 200000

        addi $t0,$t0,1         # counter++
        j while

    