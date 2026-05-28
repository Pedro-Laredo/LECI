    .equ resetCoreTimer,12
    .equ readCoreTimer,11
    .equ printInt,6
    .equ putChar,3
    .equ BASE_ADDR,0xBF88
    .equ TRISE,0x6100
    .equ LATE,0x6120
    .text
    .globl main
    #t3 = counter
main:
    lui $t0,BASE_ADDR
    lw $t2,TRISE($t0)
    andi $t2,$t2,0xFF83
    sw $t2,TRISE($t0)
    li $t3,0
while:
    lw $t2,LATE($t0)
    andi $t1,$t1,0xFF83
    sll $t4,$t3,2
    or $t2,$t2,$t4
    sw $t2,LATE($t0)
    move $a0,$t3            # Passa o contador para $a0
    li $a1,0x00050002       # Formatação: Base 2, 5 bits
    li $v0,printInt
    syscall
    li $a0,'\n'             # Nova linha
    li $v0,putChar
    syscall
    # --- 3. Delay de 4.6Hz ---
    li $a0,4347826
    jal delay
    addi $t3,$t3,-1

if_0:
    bge $t3,0,endif_0
    li $t3,24

endif_0:

    j while


delay:
    li $v0,resetCoreTimer
    syscall

delay_while:
    li $v0,readCoreTimer
    syscall
    bge $v0,$a0,end_delay
    j delay_while

end_delay:
    jr $ra
