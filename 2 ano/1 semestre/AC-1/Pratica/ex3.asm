#mapa de registos
#$t0 = x
#$t1 = y
	.data
	.eqv read_int,5
	.eqv print_int10,1
	.text
	.globl main
main:
	li $t2,8 #carregar o int 8 para o registo t2
	li $v0,read_int
	syscall
	or $t0,$0,$v0 # x = read_int10
	add $t0,$t0,$t0 #x = x+x
	sub $t1, $t0,$t2 # y = 2x-8
	li $v0,print_int10 #carregar o print int para o registo $v0
	or $a0,$0,$t1 #carregar o y para o registo $a0 para ser impresso
	syscall
	