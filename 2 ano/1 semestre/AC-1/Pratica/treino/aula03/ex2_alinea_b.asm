#mapa de registos
#value $t0
#bit: $t1
#i : $t2

	.data
str1:	.asciiz "Introduza um numero"
str2:	.asciiz "\n0 Valor em binario e: "
	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	read_int10,5
	.text
	.globl main
main:
	li $t1,0
	li $t2,0
	li $v0,print_string #print string 1
	la $a0,str1
	syscall
	li $v0,read_int10 #value =read_int()
	syscall
	or $t0,$0,$v0
	li $v0,print_string #print string 2
	la $a0,str2
for:
	bge $t2,32,endfor #for(i<32)
	rem $t3,$t2,4
if01:
	bne $t3,0,endif01
	li $v0,print_char
	li $a0,' '
	syscall
	
endif01:
	li $t4, 0x80000000
	and $t1,$t0,$t4
	
if:
	beq $t1,0,else #if bit!=0 LOGICA INVERTIDA
	li $v0,print_char
	li $a0, '1'
	syscall
	j endif
else:
	li $v0,print_char
	li $a0,'0'
	syscall
endif:
	sll $t0,$t0,1
	addi $t2,$t2,1
	j for
endfor:
	
	
