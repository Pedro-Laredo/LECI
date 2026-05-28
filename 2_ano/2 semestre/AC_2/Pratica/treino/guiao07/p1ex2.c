#include<detpic32.h>
volatile unsigned char voltage = 0;
void delay(){
    resetCoreTimer();
    while(readCoreTimer()<200000);

}
unsigned char toBcd(unsigned char value){
    return((value/10)<<4) + (value%10);
}
void send2Display(unsigned char value){
    static const char disp7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    int dh,dl;
    static char displayFlag = 0;
    if(displayFlag == 0){
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        dl = value & 0x0F;
        LATB = (LATB & 0x80FF) | (disp7Scodes[dl]<<8);
    }
    else{
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        dh = value>>4;
        LATB = (LATB & 0x80FF) |(disp7Scodes[dh]<<8);
    }
    displayFlag =!displayFlag;
}
int main(void){
    unsigned int cnt = 0;
    TRISB = TRISB & 0x80FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 7;
    AD1CHSbits.CH0SA = 4;
    IPC6bits.AD1IP = 2;
    IFS1bits.AD1IF = 0;
    IEC1bits.AD1IE = 1;
    AD1CON1bits.ON = 1;


    EnableInterrupts();
    AD1CON1bits.ASAM = 1;
    while(1){
        if(cnt == 0){
            AD1CON1bits.ASAM = 1;
        }
        send2Display(voltage);
        delay();
        cnt =(cnt +1) %20;
    }
    return 0;
}
void _int_(27) isr_adc(void){
    int i, average =0;
    int *p = (int*)(&ADC1BUF0);
    for(i=0;i<8;i++){
        average+=p[i*4];
    }
    average = average/8;
    int v = (average*33 +511)/1023;
    voltage=toBcd(v);
    IFS1bits.AD1IF = 0;
}