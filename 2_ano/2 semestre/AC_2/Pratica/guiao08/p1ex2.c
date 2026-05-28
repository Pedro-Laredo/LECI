#include "detpic32.h"

int main(void)
{
    T3CONbits.TCKPS = 7;   
    PR3 = 39062;            
    TMR3 = 0;              

    IPC3bits.T3IP = 2;      
    IEC0bits.T3IE = 1;     
    IFS0bits.T3IF = 0;    

    T3CONbits.TON = 1;      

    EnableInterrupts();    

    while(1)
    {
        IdleMode();         
    }

    return 0;
}

void _int_(14) isr_T3(void)   // Vector 14 = Timer T3
{
    putChar('.');

    IFS0bits.T3IF = 0;    // Reset T3 interrupt flag (obrigatório!)
}