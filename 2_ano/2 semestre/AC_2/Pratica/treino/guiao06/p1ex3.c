#include <detpic32.h>
void delay(unsigned int time){
    resetCoreTimer();
    while(readCoreTimer() < time);
}


int main(void){
    int i;
    int *p = (int*)(&ADC1BUF0);
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 4;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
    int soma,media,tensao;

    while(1){
        soma = 0;
        media = 0;
        tensao = 0;
        AD1CON1bits.ASAM = 1;
        while(IFS1bits.AD1IF == 0);
        for(i = 0;i<5;i++){
            soma = soma + p[i*4];
        }
        media = soma/4;
        tensao = (media * 33 + 511)/1023;
        printStr("Media: ");
        printInt10(media);
        printStr(" | Tensao: ");
        printInt10(tensao);
        printStr("   \r");
        IFS1bits.AD1IF = 0;
        delay(20000000);
    }

    return 0;

}