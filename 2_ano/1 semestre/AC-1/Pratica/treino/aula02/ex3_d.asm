#mapa de registos
# a = $t0
# b = $t2
	
	.data
str1:	.asciiz "Introduza 2 numeros\n"
str2:	.asciiz #A soma dos dois numeros e:"

	.eqv read_int10,5
	.eqv print_string,4
	.eqv print_int10,1
	.text
	.globl main
	
main:
	li $v0,print_string #carregar print string para v0
	la $a0, str1 # carregar str1 para o registo a0
	syscall
	li $v0, read_int10 #carregar read int para v0
	syscall
	or $t0,$0,$v0 #carregar valor read int para t0
	li $v0,read_int10 #carregar read int para v0
	syscall
	or $t1,$0,$v0 #carregar valor read int para t1
	add $t2,$t1,$t0 #guardar em t2 o valor da soma de t1 com t0
	li $v0,print_string
	la $a0,str2
	syscall
	li $v0,print_int10
	or $a0,$0,$t2
	syscall
	
	