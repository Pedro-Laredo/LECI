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

        # Configurar RB1 como input
        lw      $t1, TRISB($t0)
        ori     $t1, $t1, 0x0002     # set bit 1
        sw      $t1, TRISB($t0)

        # Configurar RE4-RE1 como output
        lw      $t1, TRISE($t0)
        andi    $t1, $t1, 0xFFE1     # limpa bits 4-1
        sw      $t1, TRISE($t0)

        li      $t2, 1               # ring counter = 0001

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

        # Esperar ~0.333s (3 Hz => 6666667 ticks)
wait:
        li      $v0, READ_CORE_TIMER
        syscall
        li      $t5, 6666667
        blt     $v0, $t5, wait

        # Ler RB1 para decidir direcao
        lw      $t6, PORTB($t0)
        andi    $t6, $t6, 0x0002     # isolar bit 1
        beq     $t6, $zero, shift_right

        # RB1=1: deslocamento a esquerda
        # rotacao esquerda 4 bits: (val << 1) | (val >> 3)
        sll     $t7, $t2, 1
        srl     $t8, $t2, 3
        or      $t2, $t7, $t8
        j       mask

        # RB1=0: deslocamento a direita
shift_right:
        # rotacao direita 4 bits: (val >> 1) | (val << 3)
        srl     $t7, $t2, 1
        sll     $t8, $t2, 3
        or      $t2, $t7, $t8

mask:
        andi    $t2, $t2, 0x000F     # manter apenas 4 bits

        j       loop

        jr      $ra
