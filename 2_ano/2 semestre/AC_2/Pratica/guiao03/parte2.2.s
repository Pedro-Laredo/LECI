        .equ BASE, 0xBF88
        .equ TRISE, 0x6100
        .equ LATE,  0x6120
        .equ TRISB, 0x6040
        .equ PORTB, 0x6050

        .equ RESET_CORE_TIMER, 12
        .equ READ_CORE_TIMER,  11

        .data
        .text
        .globl main

main:
        lui     $t0, BASE

        # Configurar RB3 como input
        lw      $t1, TRISB($t0)
        ori     $t1, $t1, 0x0008     # set bit 3
        sw      $t1, TRISB($t0)

        # Configurar RE4-RE1 como output
        lw      $t1, TRISE($t0)
        andi    $t1, $t1, 0xFFE1     # limpa bits 4-1
        sw      $t1, TRISE($t0)

        li      $t2, 0               # counter = 0

loop:
        # Escrever contador nos LEDs RE4-RE1
        lw      $t3, LATE($t0)
        andi    $t3, $t3, 0xFFE1     # limpa bits 4-1
        sll     $t4, $t2, 1          # posiciona contador em RE4-RE1
        or      $t3, $t3, $t4
        sw      $t3, LATE($t0)

        # Reset core timer
        li      $v0, RESET_CORE_TIMER
        syscall

        # Esperar 0.5s (2 Hz => 10,000,000 ticks)
wait:
        li      $v0, READ_CORE_TIMER
        syscall
        li      $t5, 10000000
        blt     $v0, $t5, wait

        # Ler RB3 para decidir direção
        lw      $t6, PORTB($t0)
        andi    $t6, $t6, 0x0008     # isolar bit 3
        beq     $t6, $zero, decr     # se RB3=0, decrescente

        # RB3=1: contador crescente
        addi    $t2, $t2, 1
        j       mod16

        # RB3=0: contador decrescente
decr:
        addi    $t2, $t2, -1

mod16:
        andi    $t2, $t2, 0x000F     # MOD 16

        j       loop

        jr      $ra
