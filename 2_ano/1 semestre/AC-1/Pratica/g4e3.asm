#mapa de registos
#p:	$t0
#pultimo:	$t1
#*p:	$t2
#soma:	$t3

	.data
	.eqv SIZE,4
	.eqv print_int10,1

array: .word 7692,23,5,234
	.text
	.globl main
	
main:
	la $t0,array #p = array
	li $t3,0
	li $t4,SIZE	#registo temp para colocar o valor do size
	addi $t4,$t4,-1	#size-1
	sll $t4,$t4,2	#(size-1)*4
	add $t1,$t4,$t0 #pultimo = array+(size-1)*4
while:
	bgt $t0,$t1,endwhile
	lw $t2,0($t0)
	add $t3,$t3,$t2
	addiu $t0,$t0,4
	j while
endwhile:
	li $v0,print_int10
	move $a0,$t3
	syscall
	
	
	
	