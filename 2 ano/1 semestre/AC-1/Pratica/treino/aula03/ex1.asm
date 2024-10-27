#mapa de registos
#soma: $t0
#value : $t1
#i: $t2
	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "Valor ignorado\n"
str3:	.asciiz "A soma dos positivos e:"
	.eqv print_string,4
	.eqv print_int10,1
	.eqv read_int10,5
	.text
	.globl main

main:
	li $t0,0 # soma = 0
	li $t2,0 #i = 0
for:
	bge $t2,5,endfor #saltar para o endfor se i maior ou igual a 5
	li $v0,print_string #print("Introduza um numero")
	la $a0, str1
	syscall
	li $v0,read_int10 #value = read_int()
	syscall
	or $t1,$0,$v0
	
if:
	ble $t1,0,else #if value<0 saltar para endif, INVERTEMOS A LOGICA DO C
	add $t0,$t0,$t1 #soma  = soma+value
	j endif #colocamos este jump para caso passe no primeiro teste, nao entrar na condicao do else
else:
	li $v0,print_string #print string 2
	la $a0,str2
	syscall
endif:
	addi $t2,$t2,1 #i++ fazemos esta operacao aqui para simplificar o codigo, uma vez que tanto o if como else entrar sempre nesta label
	j for #voltar para o for
endfor:
	li $v0,print_string #apenas dar print na string 3 e no valor da soma
	la $a0,str3
	syscall
	li $v0, print_int10
	or $a0,$0,$t0
	syscall

	jr $ra
	
