#RE0 saida
#RD8 como entrada
    .equ ADDR_BASE_HI, 0xBF88
    .equ TRISE, 0x6100
    .equ LATE,0x6120
    .equ TRISD,0x60C0
    .equ PORTD,0x60D0
    .text 
    .globl main

main:
    lui $t0,ADDR_BASE_HI
    lw $t1,TRISD($t0)
    ori $t1,$t1,0x0100
    sw $t1, TRISD($t0) #RD8 como entrada
    lw $t1,TRISE($t0)
    andi $t1,$t1,0xFFFE
    sw $t1,TRISE($t0) #RE0 como saida 

while:
    lw $t1,PORTD($t0)
    andi $t1,$t1,0x0100
    srl $t1,$t1,8
    #xori $t1, $t1, 1          # Inverte o bit 0 (0 vira 1, 1 vira 0)
    lw $t2,LATE($t0)
    andi $t2,$t2,0xFFFE
    or $t2,$t2,$t1
    sw $t2,LATE($t0)
    j while