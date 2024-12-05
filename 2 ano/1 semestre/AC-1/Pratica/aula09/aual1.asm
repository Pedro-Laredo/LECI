	.data
	.eqv read_int10,5
	.eqv print_float,2

K0:	.float 2.59375,0.0
K1:	.double 

	.text
	.globl main
	
main:
	la $t0,K0
	l.s $f2, 0($t0) #carregar o valor guardaod em memoria
	l.s $f4,4($t0)
do:
	li $v0,read_int10
	syscall
	#conversao pra float
	mtc1 $v0,$f6
	cvt.s.w $f6,$f6
	
	mul.s $f0,$f6,$f2 #multiplacao f12 usado para dar print float
	li $v0,print_float
	mov.s $f12,$f0
	syscall
	#while
	c.eq.s $f0,$f4
	bc1f do
	li $v0,0
	jr $ra