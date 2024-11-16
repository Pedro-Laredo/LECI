#mapa de registos
# i= $t0
#soma = $t1
#value = $t2
	.data
	.eqv print_int10,1
	.eqv print_string,4
	.eqv read_int10,5
str1:	.asciiz "A soma dos positivos e: "
	
str2:	.asciiz "Valor ignorado\n"

str3:	.asciiz "Introduza um numero: "
	.text
	.globl main

main:

	li $t0,0
	li $t1,0
	li $t2,0
for:
	bge $t0,5,endfor
	addi $t0,$t0,1
	li $v0,print_string
	la $a0,str3
	syscall
	li $v0,read_int10
	syscall
	or $t2,$0,$v0
if:
	ble $t2,0,endif
	add $t1,$t1,$t2
	j for
	
endif:
	li $v0,print_string
	la $a0,str2
	syscall
	j for
	
endfor:
	li $v0,print_string
	la $a0, str1
	syscall
	li $v0,print_int10
	or $a0,$0,$t1
	syscall
	jr $ra
	