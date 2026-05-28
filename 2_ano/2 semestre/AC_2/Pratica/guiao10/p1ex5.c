#include <detpic32.h>

void putc(char byte);
void putstr(char *str);

int main(void)
{
    // 1 - Configurar BaudRate Generator (115200 bps, fator 4 para menor erro)
    U2BRG = 42; 
    U2MODEbits.BRGH = 1; 
    
    // 2 - Configurar parâmetros (8 data bits, sem paridade, 1 stop bit)
    U2MODEbits.PDSEL = 0; 
    U2MODEbits.STSEL = 0; 
    
    // 3 - LIGAR A UART PRIMEIRO (Crucial!)
    U2MODEbits.ON = 1;    

    // 4 - ATIVAR TX E RX SÓ DEPOIS DA UART ESTAR LIGADA
    U2STAbits.UTXEN = 1;  
    U2STAbits.URXEN = 1;  

    // Ciclo infinito
    while(1)
    {
        putstr("String de teste\n");
        
        // Espera 1 segundo
        resetCoreTimer();
        while(readCoreTimer() < 20000000); 
    }
    
    return 0;
}

void putc(char byte)
{
    while (U2STAbits.UTXBF == 1);
    U2TXREG = byte;
}

void putstr(char *str)
{
    while (*str != '\0')
    {
        putc(*str);
        str++;
    }
}