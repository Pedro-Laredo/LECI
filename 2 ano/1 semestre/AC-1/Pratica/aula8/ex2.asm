	.data
	.text
	.globl main
	
itoa:
# Mapa de registos
# n: $a0 -> $s0
# b: $a1 -> $s1
# s: $a2 -> $s2
# p: $s3
# digit: $t0
	addiu $sp,$sp,-20
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	move	$s0, $a0		# 	s0 = n
	move	$s1, $a1		#	s1 = b
	move	$s2, $a2		#	s2 = s
	move	$s3, $a2		#	s3 = s
do:
	rem $t0,$s0,$s1
	div $s0,$s0,$s1
	move $a0,$t0
	jal toascii
	sb $v0,0($s3)
	addi $s3,$s3,1
	bgt $s1,0,do
endo:
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	addiu $sp,$sp,20
	move $a0,$s2
	jal strrev
	move $v0,$s2	
	jr $ra
	

	
