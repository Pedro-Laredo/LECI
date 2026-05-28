#include <detpic32.h>

int main(void)
{
    T3CONbits.TCKPS = 2;      
    PR3 = 49999;              
    TMR3 = 0;                         
    OC1CONbits.OCM = 6;       
    OC1CONbits.OCTSEL = 1;   
    OC1RS = 12500;           
    OC1CONbits.ON = 1;     
        T3CONbits.TON = 1;

    while(1)
    {

        printf("T3CON: %04X, PR3: %d, OC1RS: %d\n", T3CON, PR3, OC1RS);
        IdleMode();           
    }
    
    return 0;
}