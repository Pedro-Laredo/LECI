#mapa de registos
#$t0 = val
#$f12 = res
	.data
k1:	.float 2.59375
k2:	.float 0.0
	.text
	.globl main
	
main:
do:
	li $v0,5
	syscall
	la $t1,k1
	l.s $f6,0($t1) #carregar valor do k1
	move $t0,$v0
	mtc1 $t0,$f4
	cvt.s.w $f4,$f4 #passar o valor lido para o fpu e converter em single
	mul.s $f12,$f6,$f4
	li $v0,2
	syscall
while:
	mtc1 $0,$f8
	c.eq.s $f8,$f12
	bc1f do
	jr $ra
	
	
	
