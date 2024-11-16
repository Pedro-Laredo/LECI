#mapa de registos
#i = $t0
# p = $t1
#*p = $t2
#pultimo = $t3
	.eqv SIZE,12
	.eqv print_string,4
	.data
str0:	.asciiz "Array"
str1:	.asciiz "de"
str2:	.asciiz "ponteiros"
array:	.word str0,str1,str2
	.text
	.globl main
main:
	li $t0,0
	la $t1,array
	addi $t3,$t1,SIZE #p ultimo
for:
	bge $t1,$t3,endfor
	lw $t2,0($t1)
	li $v0,print_string
	move $a0,$t2
	syscall
	addi $t1,$t1,4
	j for
	
	
endfor:	
	jr $ra
