.equ ADDR_BASE_HI, 0xBF88
    .equ TRISE, 0x6100
    .equ LATE,  0x6120
    .equ TRISB, 0x6040          # Offset do TRISB
    .equ PORTB, 0x6050          # Offset do PORTB
    .equ readCoreTimer, 11
    .equ RESET_CORE_TIMER, 12

    .text
    .globl main

main:
    lui  $t0, ADDR_BASE_HI

    # --- Configurar RE4-RE1 como saídas ---
    lw   $t1, TRISE($t0)
    andi $t1, $t1, 0xFFE1
    sw   $t1, TRISE($t0)

    # --- Configurar RB3 como entrada (bit 3 = 1) ---
    lw   $t1, TRISB($t0)
    ori  $t1, $t1, 0x0008       # 0x0008 garante que o bit 3 fica a 1
    sw   $t1, TRISB($t0)

    li   $t2, 0                 # Inicializa o contador

while:
    # --- Atualizar os portos de saída (LATE) ---
    lw   $t1, LATE($t0)
    andi $t1, $t1, 0xFFE1       
    sll  $t3, $t2, 1            
    or   $t1, $t1, $t3          
    sw   $t1, LATE($t0)

    # --- Esperar 0.5 segundos (2 Hz = 10 milhões de ticks) ---
    li   $v0, RESET_CORE_TIMER  
    syscall
wait:
    li   $v0, readCoreTimer   
    syscall
    blt  $v0, 10000000, wait    

    # --- Ler RB3 e Atualizar Contador ---
    lw   $t4, PORTB($t0)        # Lê os pinos do Porto B
    andi $t4, $t4, 0x0008       # Isola o bit 3 (RB3)
    
    # Se RB3 == 0 (botão não premido/posição 0), salta para subtrair
    beq  $t4, 0, count_down     

count_up:
    addi $t2, $t2, 1            # Se o código chegou aqui, RB3 é 1 (soma)
    j    apply_mask             # Salta por cima da subtração para não fazer as duas coisas!

count_down:
    sub  $t2, $t2, 1            # Se saltou para aqui, RB3 é 0 (subtrai)

apply_mask:
    andi $t2, $t2, 0x000F       # Módulo 16 (Mantém o valor entre 0 e 15)

    # --- Repetir ---
    j    while