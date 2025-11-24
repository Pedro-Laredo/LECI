	#i : $t0
	#v: $t1
	# &(val[0]):$t2
	# size*2 : $t3
	# i+4 intermedio . $t4
	# *val[i+4] : $t5
	.data
	.eqv print_int10,1
	.eqv print_char,11
	.eqv print_string,4
	.eqv SIZE,8
val:	.word 8,4,15,-1987,327,-9,27,16
str1:	.asciiz "Result is: "
str2:	.asciiz ","
	.text
	.globl main
main:
	li $t0,0
	la $t2,val
do:
	sll $t3,$t0,2
	addu $t1,$t3,$t2
	lw $t4,0($t2)
	addi $t5,$t3,4
	add $t6,$t3,$t5
	lw $t7,0($t6)
	move $t4,$t6
	sw $t2,0($t4)
	move $t7,$t1

while:
	addi $t0,$t0,1
	blt $t0,4,do
	j print_str
	
print_str:
	la $a0,str1
	li $v0,print_string
	syscall
do2:
	lw $t8,0($t2)
	move $a0,$t8
	li $t0,print_int10
	syscall
	la $a0,str2
	li $v0,print_char
	syscall
while2:
	blt $t0,8,do2
	jr $ra
	


	
	
	