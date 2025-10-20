	.eqv print_int10,1
	.data
str:	.asciiz "arquitetura de computadores i"
	.text
	.globl main

main:
	addiu $sp, $sp, -4
	sw $ra,0($sp)
	#--
	
	#strlen(str)
	la $a0,str
	jal strlen
	
	move $a0,$v0
	li $v0,print_int10
	syscall
	
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra

#==================================================
#mapa de registos
#len : $t0
#s -> $a0
#*s : $t1


strlen:	li $t0,0

while:	lb $t1,0($a0) 		#*s
	addiu $a0,$a0,1		# s++
	beq $t1,'\0', endw	#while(*s++!='\0')
	addi $t0,$t0,1 #len ++
	j while
	
	
endw:
	move $v0,$t0

	jr $ra

#==================================================