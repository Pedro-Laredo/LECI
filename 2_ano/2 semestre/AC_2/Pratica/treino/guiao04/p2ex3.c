#include <detpic32.h>
void delay(){
    resetCoreTimer();
    while(readCoreTimer()<1000000);
}

int main(void){
    TRISB = (TRISB & 0x80FF);
    TRISD = (TRISD & 0xFF9F);
    LATDbits.LATD5 = 0; //enable
    LATDbits.LATD6= 1; //disable
    int segment;
    int i;


    while(1){
        segment = 1;
        for(i = 0; i<7;i++){
            LATB = (LATB & 0x80FF) | (segment<<8);
            delay();
            segment = segment<<1;
        }
        LATD = LATD ^0x0060;
    }

    return 0;
}
