#mapa de registos
#num: $t0
#i:$t1
#order:$t2
#reg temp para num&1: $t3

	.data
	.eqv print_string,4
	.eqv read_int10,5
	.eqv print_int10,1
	
str1:	.asciiz "Enter a number"
str2:	.asciiz "No set bits\n"
	.text
	.globl main

main:
	li $t2,-1
	li $v0,print_string
	la $a0,str1
	syscall
	li $v0,read_int10
	syscall
	move $t0,$v0
	li $t1,0

do:

if:	
	andi $t3,$t0,1
	bne $t3,1,endif
	move $t2,$t1
	j if2
	
endif:
	srl $t0,$t0,1
	addi $t1,$t1,1
	blt $t1,32,do
if2:
	beq $t2,-1,else
	li $v0,print_int10
	move $a0,$t2
	syscall
	j endif2
	
else:
	li $v0,print_string
	la $a0,str2
	syscall
	
endif2:

	
	
	
