.equ getChar,2
.equ putChar,3
.equ printInt,6
.equ exit,10

.text
.globl main

# t0 = cnt
# t1 = c

main:
    li $t0, 0           # cnt = 0

do:
    # c = getChar()
    li $v0, getChar
    syscall
    move $t1, $v0

    # putChar(c)
    move $a0, $t1
    li $v0, putChar
    syscall

    # cnt++
    addi $t0, $t0, 1

    # while(c != '\n')
    bne $t1, '\n', do

    # printInt(cnt,10)
    move $a0, $t0
    li $a1, 10
    li $v0, printInt
    syscall

    li $v0, exit
    syscall