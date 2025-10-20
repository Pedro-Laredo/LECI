#i: $t0
#lista: $t1
#lista+i : $t2
	.data
	.eqv SIZE,20
	.eqv read_int10,5
	.eqv print_string10,4
	
str:	.asciiz "\nIntroduza um numero: "
	.align 2
	
lista:	.space 20 #tamhno do array*4
	.text
	.globl main
	
main:
	li $t0,0
	la $t1,lista
	
while:
	bge $t0,20,endwhile
	li $v0,print_string10
	la $a0,str
	syscall
	li $v0,read_int10
	syscall
	add $t2,$t1,$t0 #lista+i
	sw $v0,0($t2)
	addi $t0,$t0,4
	j while
	
endwhile:
	jr $ra
