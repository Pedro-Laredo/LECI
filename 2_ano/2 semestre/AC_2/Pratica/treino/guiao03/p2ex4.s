.equ ADDR_BASE_HI, 0xBF88
    .equ TRISE, 0x6100
    .equ LATE,  0x6120
    .equ TRISB, 0x6040          # Offset do TRISB
    .equ PORTB, 0x6050          # Offset do PORTB
    .equ readCoreTimer, 11
    .equ RESET_CORE_TIMER, 12
    .text
    .globl main

main:
    #RE4-RE3 como saidas
    lui $t0,ADDR_BASE_HI
    lw $t1,TRISE($t0)
    andi $t1,$t1,0xFFE1
    sw $t1,TRISE($t0)
    lw $t1,TRISB($t0)
    ori $t1,$t1,0x0002
    sw   $t1, TRISB($t0)
    #iniciar variavel contage
    li $t2,1
while:
    #atualizar os portos de saida com o valor da variavel de contagem
    lw $t1,LATE($t0)
    andi $t1,$t1,0xFFE1
    sll $t3,$t2,1
    or $t1,$t1,$t3
    sw $t1,LATE($t0)
    # --- Esperar 1/3 segundo (3 Hz = ~6.666.666 ticks) ---
    li   $v0, RESET_CORE_TIMER
    syscall
wait:
    li   $v0, readCoreTimer
    syscall
    blt  $v0, 6666666, wait

    lw $t4,PORTB($t0)
    andi $t4,$t4,0x0002
    bne $t4,0,left_counter
right_counter:
    srl $t2,$t2,1
    bne $t2,0,end_counters
    li $t2,8
    j end_counters

left_counter:
    sll $t2,$t2,1
    bne $t2,16,end_counters
    li $t2,1
end_counters:
    j while

