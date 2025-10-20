	.data
k1:	.double 5.0
k2:	.double 9.0
k3:	.double 32.0
k4:	.double 100.0
	.text
	.globl main

main:
	addiu $sp, $sp, -4	# 	poem espaco na pilha
	sw $ra, 0($sp)	#	guarda o $ra
	la $s0,k4
	l.d $f22,0($s0)
while:
	li $v0,7
	syscall
	mov.d $f12,$f0
	jal f2c
	mov.d $f12,$f0
	li $v0,3
	syscall
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra
	
f2c:
	la $t0,k1
	l.d $f2,0($t0) #5.0
	la $t1,k2 
	l.d $f4,0($t1)# 9.0
	la $t2,k3
	l.d $f6,0($t2) #32.0
	sub.d $f20,$f12,$f6 #ft-32
	div.d $f18,$f2,$f4 #5/9
	mul.d $f0,$f20,$f18
	jr $ra
	
	