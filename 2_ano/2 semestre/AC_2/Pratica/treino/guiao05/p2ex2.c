#include <detpic32.h>
void delay(unsigned int flicks){
    resetCoreTimer();
    while(readCoreTimer()<flicks);
}
unsigned char toBCD (unsigned char value){
    return((value / 10) << 4) + (value%10);
}
void send2display(unsigned char value){
    int dh,dl;
    static const char disp7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    static char displayFlag = 0;
    if(displayFlag == 0){ //send to low
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        dl = value & 0x0F;
        LATB = (LATB & 0x80FF) | (disp7Scodes[dl]<<8);
    }
    else {
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        dh = value >> 4;
        LATB = (LATB & 0x80FF) | (disp7Scodes[dh]<< 8);
    }
    displayFlag = !displayFlag;



}


int main(void){
    int counter = 0;
    int i;
    unsigned char bcd_value;
    TRISD = TRISD & 0xFF9F;
    TRISB = TRISB & 0x80FF;
    TRISE = TRISE & 0xFF00; // Configura RE0 a RE7 como saídas (8 LEDs)
    TRISBbits.TRISB0 = 1;
    unsigned char flag_counter;
    while (1)
    {
    i = 0;
    do
    {
        flag_counter = PORTBbits.RB0;
        bcd_value = toBCD(counter);
        send2display(bcd_value);
        LATE = (LATE & 0xFF00) | bcd_value;
        delay(200000);
    } while (++i<50);
    if (flag_counter == 0){
        counter = (counter+59) %60;
    }
    else{
        counter = (counter +1)%60;
    }
    }

    

    return 0;

}