#mapa de registos
# num : $t0
#i : $t1
#str : $t2
#str+1 : $t3
#str[i] : $t4	
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
	li $t0,0
	li $t1,0

while:				#while(str[i] != '\0')
	la $t2, str		#str
	addu $t3, $t2,$t1	#str+i
	lb $t4,0 ($t3) 		#str[i]
	beq $t4,'\0', endw
if:
	blt $t4,'0',endif
	bgt $t4,'9', endif
	addiu $t0, $t0,1 #num++
	
endif:
	addiu $t1,$t1,1 # i++
	j while
	
endw:
	li $v0, print_int10
	move $a0, $t0
	syscall
	jr $ra
	
