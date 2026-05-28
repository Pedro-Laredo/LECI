    .equ readINT10,5
    .equ printSTR,8
    .equ printINT10,7
    .equ printINT,6

    .data
msg1:   .asciiz "\nIntroduza um inteiro (sinal e modulo)"
msg2:   .asciiz "\nValor em base 10(signed):"
msg3:   .asciiz "\nValor em base 2: "
msg4:   .asciiz "\nvalor em base 2, formatado: "
msg5:   .asciiz "\nValor em base 16: "
msg6:   .asciiz "\nValor em vase 10 (unsigned)"
    .text
    .globl main
    #value = $t0
main:
    li $v0,printSTR
    la $a0,msg1
    syscall
    li $v0,readINT10
    syscall
    move $t0,$v0
    li $v0,printSTR
    la $a0,msg2
    syscall
    li $v0,printINT10
    move $a0,$t0
    syscall
    li $v0,printSTR
    la $a0,msg3
    syscall
    li $v0,printINT
    move $a0,$t0
    li $a1,2
    syscall
    li $v0,printSTR
    la $a0,msg4
    syscall
    #preparar chamada 
    li $t1,32
    sll $t1,$t1,16 #shift
    ori $a1,$t1,2
    move $a0,$t0
    li $v0,printINT
    syscall
