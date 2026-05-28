#include<detpic32.h>
static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};
volatile unsigned char voltage_bcd;
unsigned char toBcd(unsigned char value){
    return ((value/10)<<4) + (value%10);
}
void send2Display(unsigned char value){
    static char displayFlag = 0;
    unsigned char dh = value>>4;
    unsigned char dl = value &0x0F;
    if(displayFlag == 0){
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        LATB = (LATB &0x80FF) | display7Scodes[dl]<<8;
    }
    else{
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        LATB = (LATB & 0x80FF) | display7Scodes[dh]<<8;
    }
    displayFlag =!displayFlag;
}
void _int_(12) isr_t3(void){
    send2Display(voltage_bcd);
    IFS0bits.T3IF = 0;
}

int main(void){
    int media,temperatura;
    T3CONbits.TCKPS = 1;
    PR3 = 39999;
    TMR3 = 0;
    T3CONbits.TON = 1;
    TRISBbits.TRISB4 = 1; // RBx digital output disconnected 
    AD1PCFGbits.PCFG4= 0; // RBx configured as analog input 
    AD1CON1bits.SSRC = 7; // Conversion trigger selection bits: in this 
            //  mode an internal counter ends sampling and 
            //  starts conversion 
    AD1CON1bits.CLRASAM = 1;  // Stop conversions when the 1st A/D converter 16
            //  interrupt is generated. At the same time, 
            //  hardware clears the ASAM bit 
    AD1CON3bits.SAMC = 16;    // Sample time is 16 TAD (TAD = 100 ns) 
    AD1CON2bits.SMPI = 1;   // Interrupt is generated after N samples 
            //  (replace N by the desired number of 
            //  consecutive samples) 
    AD1CHSbits.CH0SA = 4;   // replace x by the desired input  
            //  analog channel (0 to 15) 
    AD1CON1bits.ON = 1;     // Enable A/D converter 
            //  This must the last command of the A/D 
            //  configuration sequence 
    IPC3bits.T3IP = 2;
    IEC0bits.T3IE = 1;
    IFS0bits.T3IF = 0;
    TRISB = TRISB & 0x80FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    EnableInterrupts();
    while(1){
        AD1CON1bits.ASAM = 1;
        while(IFS1bits.AD1IF == 0);
        temperatura =((media*66)+511)/1023 + 7;
        resetCoreTimer();
        while(readCoreTimer()<4000000);
        IFS1bits.AD1IF = 0;
    }
    return 0;
}

