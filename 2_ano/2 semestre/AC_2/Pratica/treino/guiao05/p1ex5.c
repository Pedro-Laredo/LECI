#include <detpic32.h>
void send2displays(unsigned char counter){
    static const char disp7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    int dl,dh;
    static char flagDisplay = 0;

    if(flagDisplay == 0){ //send to low
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        dl = counter & 0x0F;
        LATB = (LATB & 0x80FF) | disp7Scodes[dl] << 8;

    } 
    else{
        LATDbits.LATD6 = 1;
        LATDbits.LATD5 = 0;
        dh = counter >> 4;
        LATB = (LATB & 0x80FF) | disp7Scodes[dh] << 8;
    }   
    flagDisplay = !flagDisplay;

}
void delay(unsigned int time){
    resetCoreTimer();
    while(readCoreTimer()<time);
}


int main(void){
    int counter;
    TRISD = TRISD & 0xFF9F;
    TRISB = TRISB & 0x80FF;
    counter = 0;
    int i;
    while(1){
        i = 0;
        do{
            send2displays(counter);
            delay(50000); //50hz
        } while(++i < 20);
        counter = (counter + 1) % 256; // Incrementa cá fora!
    }
    return 0;

}