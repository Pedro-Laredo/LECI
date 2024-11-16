#mapa de registos
# p:$t0
#pultimo $t1
#*p $t2
#soma : $t3

	
	.data
	.eqv print_int10,1
	.eqv SIZE,4
	
array:	.word 7692,23,5,234
	
	.text
	.globl main

main:

	li $t3,0 	#soma = 0
	la $t0, array	#p = array
	#pulitmo = array +size-1
	li $t4, SIZE
	addi $t4,$t4, -1 	#size-1
	sll $t4, $t4, 2 	#shit logico a esquerda 2 bits e equivalente a multiplicar por 4 (SIZE-1)*4
	addu $t1, $t0, $t4 	# array+(size-1)*4
	
while: 	#while (p<= puultimo)
	bgt $t0, $t1, endw
	lw $t2,0($t0) #t2 = *p
	add $t3,$t3, $t2	#soma = soma +(*p)
	#p++
	addiu $t0,$t0, 4 #p++ usamos o 4 pois um inteiro tem 4 bytes e estamos a incrementar o ponteiro
	
	
	j while
endw:
	
	li $v0, print_int10
	or $a0, $0, $t3
	syscall
	jr $ra
	
