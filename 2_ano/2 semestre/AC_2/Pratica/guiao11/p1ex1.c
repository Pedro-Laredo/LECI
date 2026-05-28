#include <detpic32.h>

int main(void)
{
    U2BRG = 10;             
    U2MODEbits.BRGH = 0;   
    U2MODEbits.PDSEL = 0;  
    U2MODEbits.STSEL = 0;  
    U2STAbits.URXEN = 1;    
    U2STAbits.UTXEN = 1;   
    U2MODEbits.ON = 1;     

    IEC1bits.U2RXIE = 1;   
    IEC1bits.U2TXIE = 0;    
    

    IPC8bits.U2IP = 2;      
    

    IFS1bits.U2RXIF = 0;   
    
 
    U2STAbits.URXISEL = 0; 

    TRISCbits.TRISC14 = 0; 

    LATCbits.LATC14 = 0;

    EnableInterrupts();     
    
    while(1)
    {
        IdleMode();         
    }
    
    return 0;
}

void _int_(32) isr_uart2 (void)
{
   
    if (IFS1bits.U2RXIF == 1) 
    {

        char c = U2RXREG; 
        putChar(c); 
        if(c=='l'){
            LATCbits.LATC14 = 1;
        }
        if(c=='t'){
            LATCbits.LATC14=0;
        }

        if (c == '?') 
        {
            printStr("AC2-Guiao 11"); 
        }
        

        IFS1bits.U2RXIF = 0; 
    }
}