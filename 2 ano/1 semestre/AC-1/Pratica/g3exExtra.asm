#mapa de registos
#num : $t0
#p : $t0
#*p:$t1

	.data
	.eqv SIZE,20
	.eqv read_string,8
	.eqv print_string,4

str:	.space 21

str2: .asciiz "Introduza uma string: "

	.text
	.globl main

main:
	li $v0,read_string
	la $a0,str
	li $a1,SIZE
	syscall
	la $t0,str
while:
	lb $t1,0($t0) #*p
	beq $t1,'\0',endwhile
	addiu $t1, $t1, -0x20		# *p = *p - 'a' + 'A';
	sb $t1, 0($t0)
	addiu $t0,$t0,1
	j while

endwhile:
	li $v0,print_string
	la $a0,str
	syscall
	jr $ra