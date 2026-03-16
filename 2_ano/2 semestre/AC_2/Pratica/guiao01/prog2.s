    .equ GETCHAR,   2
    .equ PUTCHAR,   3
    .equ PRINT_INT, 6

    .text
    .globl main

main:
    li   $t0, 0            # cnt = 0

do_loop:
    li   $v0, GETCHAR      # c = getChar()
    syscall
    move $t1, $v0          # guarda c em $t1

    addi $a0, $t1, 1          # putChar(c)
    li   $v0, PUTCHAR
    syscall

    addi $t0, $t0, 1       # cnt++

    li   $t2, '\n'         # while(c != '\n')
    bne  $t1, $t2, do_loop

    move $a0, $t0          # printInt(cnt, 10)
    li   $a1, 10
    li   $v0, PRINT_INT
    syscall

    li   $v0, 0            # return 0
    jr   $ra