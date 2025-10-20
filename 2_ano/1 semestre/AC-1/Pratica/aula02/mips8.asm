	.data
	.text
	.globl main
main:	li $t1, 7
	srl $t3,$t1,4
	xor $t1, $t1,$t3
	srl $t3,$t1,2
	xor $t1, $t1,$t3
	srl $t3,$t1,1
	xor $t1, $t1,$t3
	or $t2,$0,$t1
	
	jr $ra