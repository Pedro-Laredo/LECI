#mapa de registos
#num $t0
#p : $t1
#*p: $t2
	.data
	.eqv SIZE, 20
	.eqv read_string, 8
	.eqv print_int10, 1
	
str:	.space 21		# static char str[SIZE+1]

	.text
	.globl main

main:

	li $v0, read_string 	# read_string(str,SIZE)
	la $a0, str
	li $a1, SIZE
	syscall
	
	li $t0,0 #num = 0
	la $t1, str


while:				#while(*p !='\0')
	lb $t2,0($t1)
	beq $t2,'\0', endw
if:
	blt $t2,'0',endif
	bgt $t2,'9', endif
	
	addiu $t0,$t0,1 #p++
	
	
endif:
	addiu $t1,$t1,1 # i++
	
	
	
	j while
	
endw:
	li $v0, print_int10
	or $a0, $0,$t0
	syscall

	jr $ra
	
