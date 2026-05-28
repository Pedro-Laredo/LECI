#include <detpic32.h>

void putc(char byte);
void putstr(char *str);

int main(void)
{

    U2BRG = 10;
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 0;
    U2MODEbits.STSEL = 0;
    U2MODEbits.ON = 1;
    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;

    TRISDbits.TRISD11 = 0;

    while(1)
    {

        while(U2STAbits.TRMT == 0);
        
        LATDbits.LATD11 = 1;      
        putstr("12345");          
        LATDbits.LATD11 = 0;      
    }
    
    return 0;
}


void putc(char byte) {
    while (U2STAbits.UTXBF == 1); 
    U2TXREG = byte;
}

void putstr(char *str) {
    while (*str != '\0') {
        putc(*str);
        str++;
    }
}