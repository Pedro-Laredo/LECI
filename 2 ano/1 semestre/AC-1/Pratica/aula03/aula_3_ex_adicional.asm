#exercicio 2
#mapa de registos
#value : $t0
#bit : $t1
# i: $t2

	.data
str1: .asciiz "Introduza um sumero"
str2: .asciiz "O valor em binario e: "
	.eqv print_string,4
	.eqv read_int, 5
	.eqv print_char,11
	
	.text
	.globl main
	
main:
	li $v0,print_string
	la $a0, str1
	syscall
	li $v0, read_int
	syscall
	move $t0, $v0  # Store the input value in $t0 (value)
for:
	li $t4,32
	bge $t2,$t4,fim
	li $t6, 0x80000000  # Load the mask 0x80000000 (bit 31 is set)
	and $t1, $t0, $t6   # $t1 = value & 0x80000000
	
if:
	beq $t1, $zero, else  # If $t1 == 0, go to 'else' (print '0')
	li $v0, print_char    # Print '1'
	li $a0, '1'
	syscall
	j end_if 
else:
	li $v0,print_char #print_char('1')
	li $a0, '1'
end_if:
	sll $t0,$t0,1
	li $t3,1
	add $t2,$t2,$t3
	j for
fim:
	jr $ra
	
