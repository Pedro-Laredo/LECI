#include<detpic32.h>
void delay(int ticks){
    resetCoreTimer();
    while((readCoreTimer()<ticks));
}

int main(void){
    TRISE = TRISE & 0xFF03;  // 0 as output
    TRISBbits.TRISB2 = 1; // 1 as input
    TRISBbits.TRISB0 = 1;           
    int i;
    int freq_counter = 2739726; //7.3 hz
    int counter = 0x30;
    while(1){

        LATE = (LATE & 0xFF03) | counter << 2;

        if (PORTBbits.RB0 == 1 && PORTBbits.RB2 == 1 ){
            freq_counter = 2739726;
            if (counter == 0x03){
                counter = 0x30;
            }
            else{
                counter = counter >> 1;
            }
        }

        else if (PORTBbits.RB0 == 0 && PORTBbits.RB2 == 0)
        {
            freq_counter = 4347826; //4.6hz
                if (counter == 0x03){
                counter = 0x30;
            }
            else{
                counter = counter >> 1;
            }
        }

        else{
            if (counter == 0x03){
                counter = 0x30;
            }
            else{
                counter = counter >> 1;
            }
        }
        delay(freq_counter);
    }
    return 0;
}