#mapa de registos
#i: $t0
#lista: $t1
#lista+i: $t2
	.data
	.eqv SIZE,20
	.eqv read_int10,5
	.eqv print_string10,4
	
str1:	.asciiz "\nIntroduza um numero: "
	.align 2
	
lista:	.space 20 #tamhno do array*4
	.text
	.globl main

main:
	li $t0,0
	li $t1,SIZE
	
while:
	bge $t0,5,endwhile
	li $v0,print_string10
	la $a0,str1
	syscall
	li $v0,read_int10
	syscall
	la $t1,lista
	sll $t2,$t0,2
	addu $t2,$t2,$t1
	sw $v0,0($t2)
	addi $t0,$t0,1
	j while
	
	
	
endwhile:
