#include "detpic32.h"

int main(void)
{
    TRISBbits.TRISB4 = 1;          
    AD1PCFGbits.PCFG4 = 0;         
    AD1CON1 = 0;
    AD1CON1bits.SSRC = 7;          
    AD1CON1bits.CLRASAM = 1;        
    AD1CON2 = 0;
    AD1CON2bits.SMPI = 0;          
    AD1CON3 = 0;
    AD1CON3bits.SAMC = 16;        
    AD1CHSbits.CH0SA = 4;          
    AD1CON1bits.ON = 1;             
    IPC6bits.AD1IP = 2;
    IFS1bits.AD1IF = 0;
    IEC1bits.AD1IE = 1;

    EnableInterrupts();


    AD1CON1bits.SAMP = 1;

    while (1) { }

    return 0;
}

void _int_(27) isr_adc(void)
{
    int adc_value;

    adc_value = ADC1BUF0;
    resetCoreTimer();
    while(readCoreTimer()<1666666);
    printStr("\n");
    printInt10(adc_value);

    AD1CON1bits.SAMP = 1;           

    IFS1bits.AD1IF = 0;            
}