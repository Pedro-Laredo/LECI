        .equ BASE, 0xBF88
        .equ TRISE, 0x6100
        .equ LATE,  0x6120

        .equ RESET_CORE_TIMER, 12
        .equ READ_CORE_TIMER,  11

        .data
        .text
        .globl main

main:
        lui     $t0, BASE

        # Configurar RE4-RE1 como output
        lw      $t1, TRISE($t0)
        andi    $t1, $t1, 0xFFE1     # limpa bits 4-1
        sw      $t1, TRISE($t0)

        li      $t2, 0               # Johnson counter = 0000

loop:
        # Escrever contador nos LEDs RE4-RE1
        lw      $t3, LATE($t0)
        andi    $t3, $t3, 0xFFE1     # limpa bits 4-1
        sll     $t4, $t2, 1          # posiciona em RE4-RE1
        or      $t3, $t3, $t4
        sw      $t3, LATE($t0)

        # Reset core timer
        li      $v0, RESET_CORE_TIMER
        syscall

        # Esperar ~0.667s (1.5 Hz => 13333333 ticks)
wait:
        li      $v0, READ_CORE_TIMER
        syscall
        li      $t5, 13333333
        blt     $v0, $t5, wait

        # Johnson counter: shift left, novo LSB = NOT(MSB anterior)
        # Extrair bit 3 (MSB dos 4 bits)
        srl     $t6, $t2, 3          # bit 3 -> bit 0
        andi    $t6, $t6, 0x0001     # isolar bit 3
        xori    $t6, $t6, 0x0001     # negar: novo LSB = NOT(MSB)

        # Shift left e inserir novo LSB
        sll     $t2, $t2, 1          # shift left
        or      $t2, $t2, $t6        # inserir novo LSB
        andi    $t2, $t2, 0x000F     # manter apenas 4 bits

        j       loop

        jr      $ra
