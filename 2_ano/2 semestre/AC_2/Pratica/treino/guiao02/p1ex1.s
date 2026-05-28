    .equ printInt,7
    .equ putChar,3
    .equ readCoreTimer,11 #retorna em v0
    .equ resetCoreTimer,12

    .text
    .globl main

#$t0 = counter
#$t1 = registo intermedio
#$t2 = coretime
main:
    li $t0,0
while:
    li $v0,putChar
    li $a0,'\r'
    syscall
    li $v0,printInt
    move $a0,$t0
    li $t1,4
    sll $t1,$t1,16
    ori $a1,$t1,10
    syscall
    li $a0,1000
    jal delay
    addi $t0,$t0,1
    j while


delay:
    li $t3,20000
    mul $t4,$a0,$t3
    li $v0,resetCoreTimer
    syscall
delay_while:
    li $v0,readCoreTimer
    syscall
    bge $v0,$t4,delay_end
    j delay_while
delay_end:
    jr $ra

