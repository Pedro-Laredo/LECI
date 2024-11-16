#mapa de registos
#value $t0
#bit $t1
#i $t2
	.data
	.eqv print_string,4
	.eqv read_int10,5
	.eqv print_int10,1
	.eqv print_char,11
	
str1:	.asciiz "Introduza um numero: "

str2:	.asciiz "\nO valor em binario e: "

	.text
	.globl main

main:
	li $t3,0x80000000
	li $v0,print_string
	la $a0,str1
	syscall
	li $v0,read_int10
	syscall
	or $t0,$0,$v0
	li $v0,print_string
	la $a0,str2
	syscall
	
for:
	bge $t2,32,endfor
if2:
	rem $t4,$t2,4
	bne $t4,0,endif2
	li $v0,print_char
	li $a0,' '
	syscall
endif2:
	and $t1,$t0,$t3
	

if:
	beq $t1,0,else
	li $v0,print_char		#print_char('1')
	li $a0, '1'
	syscall
	j endif

else:
	li $v0,print_char		#print_char('0')
	li $a0, '0'
	syscall
	j endif

endif:
	addi $t2,$t2,1
	sll $t0,$t0,1
	j for
endfor:
	jr $ra
	