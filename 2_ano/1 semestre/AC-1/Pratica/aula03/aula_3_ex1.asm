 
#Mapa de registos:
# soma : $t0
#value : $t1
# i : $t2
	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "Valor ignorado\n"
str3: .asciiz "A soma dos positivos e: "
	.eqv print_string,4
	.eqv read_int, 5
	.eqv print_int10,1
	
	.text
	.globl main
main:
	li $t0, 0		 #soma = 0;
	li $t2, 0 		# i = 0;
for: 	bge $t2,5,endfor 	#while(i<5){
	li $v0,print_string	#print_string(str1)
	la $a0,str1		
	syscall
	li $v0,read_int		#value = read_int()
	syscall
	or $t1,$0,$v0
if:	ble $t1,0,else #if(value>0){ ###invertemos a logica
	add $t0,$t0,$t1
	j endif # garantir que nao entra na condicao do else caso a primeira condicao seja atingida	
else: 	#}end if
	li $v0,print_string	#print_string(str3)
	la $a0,str2		
	syscall
endif:
	
	addi $t2,$t2,1 		#i++
	j for
	
endfor: #} end for
	li $v0, print_string #print_string(str2);
	la $a0, str3
	syscall
	
	li $v0,print_int10 #print_int10(soma);
	or $a0, $0,$t0
	syscall
	jr $ra
	
	
	
