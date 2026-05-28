#include <detpic32.h>
void delay(int ticks){
    resetCoreTimer();
    while(readCoreTimer()<ticks); //12hz
}

int main(void){
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 3;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    TRISB = TRISB & 0x80FF; //display
    TRISBbits.TRISB3 = 1; //switch
    TRISEbits.TRISE6;
    TRISEbits.TRISE1;
    int *p = (int *)(&ADC1BUF0);
    int soma;
    int media;
    int i;
    int valor;
    static const char disp7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};


    while(1){
        AD1CON1bits.ASAM = 1;
        soma = 0;
        while(IFS1bits.AD1IF==0);
        for(i = 0;i<4;i++){
            soma = soma + p[i*4];
        }
        media = soma/4;
        valor = ((media*10 +511)/1023) + 4;
        if(PORTBbits.RB3 == 1){
            LATDbits.LATD5 = 1;
            LATDbits.LATD6 = 0;
            LATB = (LATB & 0x80FF) | (disp7Scodes[valor]<<8);
        }
        else{
            LATDbits.LATD5 = 0;
            LATDbits.LATD6 = 1;
            LATB = (LATB & 0x80FF) | (disp7Scodes[valor]<<8);
        }
        delay(5000000); //4 hz

        IFS1bits.AD1IF = 0; 


    }

    
    
}