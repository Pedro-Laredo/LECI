    .equ printInt,6
    .equ putChar,3
    .equ readCoreTimer,11 #retorna em v0
    .equ resetCoreTimer,12

    .text
    .globl main
    #mapa de registos
    #t0 = cnt1
    #t1 = cnt5
    #t2 = cnt10
    #t3 = timer5
    #t4 = timer1

main:
    li $t0,0
    li $t1,0
    li $t2,0
    li $t3,0
    li $t4,0
while:
    li $v0,putChar
    li $a0,'\r'
    syscall
    #printInt(cnt1, 10 | 5 << 16);
    li $v0,printInt
    li $t6,5
    sll $t6,$t6,16
    ori $a1,$t6,10
    move $a0,$t0
    syscall
    li $v0, putChar
    li $a0, '\t'
    syscall
    #printInt(cnt5, 10 | 5 << 16);
    li $v0,printInt
    li $t6,5
    sll $t6,$t6,16
    ori $a1,$t6,10
    move $a0,$t1
    syscall
    li $v0, putChar
    li $a0, '\t'
    syscall
    #printInt(cnt10, 10 | 5 << 16);
    li $v0,printInt
    li $t6,5
    sll $t6,$t6,16
    ori $a1,$t6,10
    move $a0,$t2
    syscall
    li $v0, putChar
    li $a0, '\t'
    syscall
    li $a0,100
    move $s0,$t0
    move $s1,$t1
    move $s2,$t2
    move $s3,$t3
    move $s4,$t4
    #delay(100)
    jal delay
    move $t0,$s0
    move $t1,$s1
    move $t2,$s2
    move $t3,$s3
    move $t4,$s4
    addi $t2,$t2,1 #cnt10++
    addi $t3,$t3,1 #timer5++

if1:
    bne $t3,2,if2
    addi $t1,$t1,1 #cnt5++
    li $t3,0        #timer5=0

if2:
    addi $t4,$t4,1
    bne $t4,10,endif2
    addi $t0,$t0,1 #cnt1++
    li $t4,0        #timer1=0
endif2:
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