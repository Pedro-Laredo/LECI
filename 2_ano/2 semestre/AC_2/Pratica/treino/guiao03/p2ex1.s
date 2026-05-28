    .equ ADDR_BASE_HI, 0xBF88
    .equ TRISE, 0x6100
    .equ LATE,0x6120
    .equ readCoreTimer,11
    .equ RESET_CORE_TIMER, 12   # Adicionado o syscall para o Reset
    .text
    .globl main
main:
    lui $t0,ADDR_BASE_HI
    lw $t1,TRISE($t0)
    andi $t1,$t1,0xFFE1
    sw $t1,TRISE($t0) #setup as RE1-4 as out
    li $t2,0 #counter
while:
    # 3. Atualizar os portos de saída (LATE)
    lw   $t1, LATE($t0)
    andi $t1, $t1, 0xFFE1       # Reset bits 4-1
    sll  $t3, $t2, 1            # Desloca o contador para a posição dos LEDs (bit 1)
    or   $t1, $t1, $t3          # Junta o contador ao LATE
    sw   $t1, LATE($t0)

# 4. Esperar 1 segundo (1 Hz = 20 milhões de ticks)
    li   $v0, RESET_CORE_TIMER  # Reinicia o Core Timer a 0
    syscall
wait:
    li   $v0, readCoreTimer   # Lê o valor atual do Core Timer
    syscall
    blt  $v0, 20000000, wait    # Se for menor que 20 milhões, volta a ler

    # 5. Atualizar a variável de contagem (Crescente MOD 16)
    addi $t2, $t2, 1
    andi $t2, $t2, 0x000F       # Aplica máscara para manter apenas os 4 bits menos significativos (MOD 16)

    # 6. Repetir
    j    while
