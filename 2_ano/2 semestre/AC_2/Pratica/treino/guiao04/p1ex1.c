#include <detpic32.h>

void delay(unsigned int ms ){
    resetCoreTimer();
    while(readCoreTimer()<20000*ms);
}

int main(void){
    
    TRISCbits.TRISC14 = 0;
    
    while(1){
        delay(500);
        LATC = LATC ^ 0x4000;
    }

    return 0;
}