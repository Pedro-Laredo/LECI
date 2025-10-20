	.data
	.text
	.globl main
main:	li $t0, 5
	srl $t1,$t0,1
	xor $t1,$t1,$t0
	jr $ra