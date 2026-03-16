        .equ BASE, 0xBF88
        .equ TRISE, 0x6100
        .equ LATE,  0x6120

        .equ RESET_CORE_TIMER, 12
        .equ READ_CORE_TIMER,  11

        .data
        .text
        .globl main

main:
        # Base address = 0xBF880000
        lui     $t0, BASE
        lw      $t1, TRISE($t0)
        andi    $t1, $t1, 0xFFE1     # limpa bits 4-1
        sw      $t1, TRISE($t0)
        li      $t2, 15              # counter = 15 (decrescente) para crescente $t2 = 1

loop:
        lw      $t3, LATE($t0)
        andi    $t3, $t3, 0xFFE1     # limpa bits 4-1
        sll     $t4, $t2, 1          # posiciona contador em RE4-RE1
        or      $t3, $t3, $t4
        sw      $t3, LATE($t0)
        li      $v0, RESET_CORE_TIMER
        syscall

wait:
        li      $v0, READ_CORE_TIMER
        syscall
        blt     $v0, 5000000, wait
        addi    $t2, $t2, -1 #para crescente addi $t2, $t2, 1
        andi    $t2, $t2, 0x000F     # MOD 16

        j       loop

        jr      $ra