	.data
	.text
	.globl main
main:	ori $t0,$0,0x0f1e
	ori $t1,$s0,0
	nor $t2,$t0,$t1
	jr $ra