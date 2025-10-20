#mapa de registos
#$t0 = x
#$t1 = y

	.data
	.text
	.globl main
main:
	li $t0,5 # x=5
	li $t2,8 #carregar o valor 8
	add $t0,$t0,$t0 # x = x+x
	sub $t1,$t0,$t2 # y = 2x-8
	jr $ra