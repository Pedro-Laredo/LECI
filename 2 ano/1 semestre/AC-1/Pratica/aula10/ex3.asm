	.data
	.text
	.globl main
main:

strcpy:
	li $t0,0
	move $t2,$a0
do:
	addu $a0,$a0,$t0
	lb $t1,0($a1)
	sb $t1,0($a0)
	addi $t0,$t0,1
while:	bne $t1,'\0',do
	move $v0,$t2
	jr $ra