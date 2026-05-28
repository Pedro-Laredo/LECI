#include <detpic32.h>

void delay(int ticks){
    resetCoreTimer();
    while((readCoreTimer()<ticks));
}

int main(){
    int array[] = {0x30, 0x18,0x0C,0x06,0x03};
    int current_value;
    TRISE = TRISE &0xFF03; // a 0
    TRISBbits.TRISB0 = 1;
    TRISBbits.TRISB2 = 1;
    int current_freq = 2739726;
    int i;
    while(1){
        if (PORTBbits.RB0== 0 && PORTBbits.RB2 == 0){
            current_freq = 4347826;
        }
        else if (PORTBbits.RB0== 1 && PORTBbits.RB2 == 1)
        {
            current_freq = 2739726;
        }
        for(i = 0;i<5;i++){
            current_value = array[i];
            LATE = (LATE & 0xFF03) | current_value<<2;
            delay(current_freq);
        }
        
        

    }
    return 0;
}

