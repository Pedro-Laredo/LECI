#include <detpic32.h>

// Função de transmissão de 1 caracter por polling
void putc(char byte) {
    // Espera enquanto o buffer de transmissão estiver cheio
    while (U2STAbits.UTXBF == 1);
    U2TXREG = byte;
}

// Função de transmissão de uma string por polling
void puts(char *str) {
    while (*str != '\0') {
        putc(*str);
        str++;
    }
}

// Função para imprimir um número decimal (0 a 15, pois são 4 switches)
void print_decimal(int num) {
    if (num >= 10) {
        putc('1');
        putc((num - 10) + '0');
    } else {
        putc(num + '0');
    }
}

// Rotina de Interrupção da UART2 (Vector 32)
void _int_(32) isr_uart2(void) {
    if (IFS1bits.U2RXIF == 1) {
        // Lê o caracter recebido
        char c = U2RXREG;
        
        // Altera o estado do LED7
        LATEbits.LATE7 = !LATEbits.LATE7;
        
        // Eco do caracter recebido
        putc(c);
        
        // Se for o caracter 'D', envia o estado dos switches
        if (c == 'D') {
            puts("DSD=");
            int sw = PORTB & 0x0F; // Lê o valor de RB3 a RB0
            print_decimal(sw);
        }
        
        // Limpa a flag de interrupção
        IFS1bits.U2RXIF = 0;
    }
}

int main(void) {
    // -------------------------------------------------------------
    // CONFIGURAÇÃO DOS PORTOS
    // -------------------------------------------------------------
    // LED7 (RE7)
    TRISEbits.TRISE7 = 0; // Configura RE7 como saída
    LATEbits.LATE7 = 0;   // Valor inicial do LED7: 0
    
    // Switches DS4 a DS1 (RB3 a RB0)
    TRISB = TRISB | 0x000F; // Configura RB3 a RB0 como entradas
    
    // -------------------------------------------------------------
    // CONFIGURAÇÃO DA UART2
    // -------------------------------------------------------------
    // 1. Configurar o Baudrate (9600 bps)
    // U2BRG = (Fpb / (16 * baudrate)) - 1
    // U2BRG = (20000000 / (16 * 9600)) - 1 = 130.2 -> 130
    U2BRG = 130;
    U2MODEbits.BRGH = 0; // Divisão por 16
    
    // 2. Parâmetros da trama: 8 data bits, odd parity, 2 stop bits
    U2MODEbits.PDSEL = 2; // 10 = 8-bit data, odd parity
    U2MODEbits.STSEL = 1; // 1 = 2 Stop bits
    
    // 3. Ativar os módulos de Transmissão e Receção
    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;
    
    // 4. Ativar a UART2
    U2MODEbits.ON = 1;
    
    // -------------------------------------------------------------
    // CONFIGURAÇÃO DAS INTERRUPÇÕES (RX)
    // -------------------------------------------------------------
    IPC8bits.U2IP = 2;   // Prioridade da interrupção UART2
    IEC1bits.U2RXIE = 1; // Ativar a interrupção de Receção da UART2
    IFS1bits.U2RXIF = 0; // Limpar a flag de interrupção
    
    // Ativar interrupções globalmente
    EnableInterrupts();
    
    // O processamento principal agora decorre unicamente por interrupção
    while (1) {
        // O processador fica livre para outras tarefas, aguardando interrupções
    }
    
    return 0;
}
