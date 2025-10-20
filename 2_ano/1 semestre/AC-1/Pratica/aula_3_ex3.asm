#exercicio de imprimir com espaco entre 4 bits

#mapa de registos
#value : $t0
#bit : $t1
# i: $t2

	.data
str1:	.asciiz	"Introduza um numero: "
str2: 	.asciiz	"O valor em binario e:"

	.eqv print_string,4
	.eqv read_int, 5
	.eqv print_char,11
	
	.text
	.globl main
	
main:
	li $v0,print_string#print_string(str1)
	la $a0, str1
	syscall
	li $v0, read_int #value = read_int();
	syscall
	move $t0,$v0 # o mesmo que or $t0,$0,$v0
	li $v0,print_string#print(string(str2)
	la $a0, str2
	syscall
	
	li $t2,0
for:	bge $t2,32,endfor #while(i<32) logica invertida em assembly
	rem $t5,$t2,4	
	
	
if01:	bne $t5,0,endif01
	li $v0,print_char
	li $a0,' '
	syscall

endif01:

	li $t4, 0x80000000
	and $t1,$t0,$t4
	
if:	beq $t1,0,else 		#if(bit!=0){ novamente fazer a negacao
	li $v0,print_char		#print_char('1')
	li $a0, '1'
	syscall
	j endif
else:
	li $v0, print_char #print_char('0')
	li $a0, '0'
	syscall
endif: # {end if
	sll $t0,$t0,1 #value = value<<1 shift a esquerda logico
	addi $t2,$t2,1 #i++
	j for
endfor:

	
	
	
	
	
	
	
	
	