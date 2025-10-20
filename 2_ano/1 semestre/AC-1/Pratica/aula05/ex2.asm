#mapa de registo
#p: $t0
#*p $t1
#lista+size: $t2
	.data
	.eqv SIZE,40
	.eqv print_string, 4
	.eqv print_int,1
str1:
	.asciiz "\nConteudo array: \n"
str2:
	.asciiz ";"

lista:  .word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15
	.text
	.globl main
main:
	li $t1,0
	li $v0,print_string
	la $a0,str1
	syscall
	la $t0,lista
	addiu $t2,$t0,SIZE
for:
	bge $t0,$t2,endfor
	lw $t1,0($t0)
	li $v0,print_int
	or $a0,$0,$t1
	syscall
	li $v0,print_string
	la $a0,str2
	syscall
	addiu $t0,$t0,4
	j for
endfor:

