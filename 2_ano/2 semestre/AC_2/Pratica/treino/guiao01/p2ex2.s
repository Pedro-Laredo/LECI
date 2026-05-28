    .equ inkey,1
    .equ putChar,3
    .equ printInt,6
    .text
    .globl main

    #$t0 = cnt
    #$t1 =  c
main:
    li $t0,0
    li $t2,'R'
while:
    li $v0,inkey #inkehy call
    syscall
    move $t1,$v0 # c = inkey

    bne $t1,$t2,endif #if c=='R'
    li $t0,0 #cnt = 0

endif:
    li $v0,putChar
    li $a0,'\r'
    syscall

    li $v0,printInt
    move $a0,$t0
    li $a1,0x0003000A
    syscall
    addi $t0,$t0,1
    andi $t0,$t0,0xFF
    li $a0,4
    jal wait

    j while
    wait:
    li $t3, 515000      # Carrega o valor constante
    mul $t3, $t3, $a0   # $t3 = 515000 * ts (este será o limite do for)
    
    li $t4, 0           # i = 0

wait_for:
    bge $t4, $t3, wait_end  # se i >= (515000 * ts), sai do ciclo
    addi $t4, $t4, 1        # i++
    j wait_for              # volta a verificar a condição do for

wait_end:
    jr $ra                  # Regressa à função chamadora (main)

