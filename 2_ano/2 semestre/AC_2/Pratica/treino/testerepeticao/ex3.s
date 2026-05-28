    .equ putChar,3
    .equ prinInt,6
    .equ ADDR_BASE_HI,0xBF88
    .equ resetCoreTimer,12
    .equ readCoreTimer,11
    .equ TRISE,0x6100
    .equ LATE,0x6120
    .text
    .globl main

main:
    li $t3,0
    lui $t1,ADDR_BASE_HI
    lw $t2,TRISE($t1) 
    andi $t2,$t2,0xFF83
    sw $t2,TRISE($t1)
    #incializacao TRISE
    #counter = $t3

while:
    lui $t1,ADDR_BASE_HI
    lw $t2,LATE($t1)
    andi $t2,$t2,0xFF83
    sll $t4,$t3,2
    or $t2,$t2,$t4
    sw $t2,LATE($t1)
    #agora vamos dar print
    move $a0,$t3
    li $a1,0x0005000A
    li $v0,prinInt
    syscall
    li $v0,putChar
    li $a0,'\n'
    syscall
    li $a0,5714286
    jal delay
    addi $t3,$t3,-1

    bge $t3,0,endwhile
    li $t3,24

endwhile:
    j while

delay:
    li $v0,resetCoreTimer
    syscall
    li $v0,readCoreTimer
    syscall
delay_wait:
    li $v0,readCoreTimer
    syscall
    blt $v0,$a0,delay_wait
    jr $ra





