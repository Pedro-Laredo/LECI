#include <detpic32.h>

int main(void){
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4= 0;
    AD1CON1bits.SSRC = 7;

    AD1CON1bits.CLRASAM = 1; 
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 0; 

    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
    int aux;
    int aux2;

    while(1){
        AD1CON1bits.ASAM = 1;
        resetCoreTimer();
        LATDbits.LATD11 = 11;
        while(IFS1bits.AD1IF==0);
        LATDbits.LATD11 = 0;
        aux = ADC1BUF0;
        aux2 = readCoreTimer();
        printInt10(aux2);
        putChar('\r');
        IFS1bits.AD1IF = 0;
    }

    return 0;
}