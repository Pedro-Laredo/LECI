	.data
str:	.asciiz "2020 e 2024 sao anos bissextos"
	.text
	.globl main
main:
	addiu $sp,$sp,-4
	sw $ra,0($sp)
	la $a0,str
	jal atoi
	move $s0,$v0
	lw $ra,0($sp)
	addiu $sp,$sp,4
	li $v0,1
	or $a0,$s0,$0
	syscall
	jr $ra




atoi:

	li $v0,0 #res
while:
	lb $t0,0($a0) #*s
	blt $t0,'0', endw
	bgt $t0,'9',endw
	addi $t1,$t0,-0x30
	addiu $a0,$a0,1
	mul $v0,$v0,10
	add $v0,$v0,$t1
	j while
endw:
	jr $ra

	