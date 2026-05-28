.equ printInt,6         # Usa o 6 para a formatação funcionar!
    .equ putChar,3
    .equ readCoreTimer,11
    .equ resetCoreTimer,12

    .text
    .globl main

main:
    li $s0,0                # CORREÇÃO 1: Usar $s0 em vez de $t0 para o contador

while:
    li $v0,putChar
    li $a0,'\r'
    syscall
    
    li $v0,printInt
    move $a0,$s0            # Imprime o $s0
    li $t1,4
    sll $t1,$t1,16
    ori $a1,$t1,10
    syscall

    # CORREÇÃO 2: Lógica de espera usando a tua função
    
    # Passo A: Fazer reset ao cronómetro -> timeDone(1000, 1)
    li $a0, 1000            # ms = 1000
    li $a1, 1               # reset = 1
    jal timeDone

wait_loop:
    # Passo B: Perguntar se já passou o tempo -> timeDone(1000, 0)
    li $a0, 1000            # ms = 1000
    li $a1, 0               # reset = 0
    jal timeDone
    
    # Se o $v0 (retorno) for 0, o tempo não passou. Volta a saltar para o wait_loop!
    beq $v0, $zero, wait_loop  

    # Se saiu do wait_loop, é porque passou 1 segundo.
    addi $s0,$s0,1          # Incrementa o $s0
    j while

# =======================================================
# A tua função (mudei apenas o nome de delay para timeDone)
# =======================================================
timeDone:
    li $t5,20000
    move $t2,$a0
    move $t3,$a1
    li $t0,0
    mul $t4,$t5,$t2
if1:
    ble $t3,0,else
    li $v0,resetCoreTimer
    syscall
    j end_else
else:
    li $v0,readCoreTimer
    syscall
    move $t1,$v0
if_inside_else:
    ble $t1,$t4,end_else
    div $t0,$t1,$t5
end_else:
    move $v0,$t0
    jr $ra