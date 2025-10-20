#mapa de registos
# $t0 = x
#$t1 = Y
	.data
	.text
	.globl	main

main:
	li $t0, 5 # x = 5
	li $t2,8 #carregar valor 8
	add $t0,$t0,$t0
	add $t1, $t0, $t2
	jr $ra