	.data
K0:	.float 1.0
	.text
	.globl main
	
main:
	addiu $sp,$sp, -4
	sw $ra,0($sp)
	#========
	
	
	
	#========
	lw $ra,0(


	jr $ra
#=============================================
	
abs:
#mapa de registos
#val: $a0
	move $a0,$v0

if0:
	bge $a0,0,endif0
	sub $v0,$0,$a0
endif0:
	jr $ra

#===============================================
xtoy:
	addiu $sp,$sp, -20
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	s.s $f20,12($sp)
	s.s $f22,14($sp)
	#==============
	#init
	li $t0,0
	la $t1,K0
	l.s $f22,0($t0)
	move $s0,$a0
	li $s1,0
for:
	move $a0,$s0
	jal abs
	bge $s1,$v0,endif
if:	ble $s0,$0,else
	mul.s $f22,$f22,$f20
	j endif
else:
	div.s $f22,$f22,$f20
	
endif:
	addiu $s1,$s1,1 
	j for
endfor:
	
	mov.s $f0,$f22 #return result
	#==============
	
	l.s $f22, 16($sp)
	l.s $f20,12($sp)
	lw $s1,8($sp)
	lw $s0,4($sp)
	lw $ra,0($sp)
	addiu $sp,$sp,20
	jr $ra
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	