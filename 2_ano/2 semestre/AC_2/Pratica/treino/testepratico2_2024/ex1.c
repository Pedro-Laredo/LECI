#include<detpic32.h>
void setDutyCycle(unsigned int dc){
    OC4RS = ((PR3+1)*dc)/100;
}
int main(void){
    TRISBbits.TRISB1 = 1;
    TRISBbits.TRISB2 = 1;
    T3CONbits.TCKPS = 2; //prescaler 2 ^ 2
    PR3 = 38461;
    TMR3 = 0;
    T3CONbits.TON = 1 //ativa o timer 3
    OC4CONbits.OCM = 6;
    OC4CONbits.OCTSEL = 1;
    OC4RS = 19231;
    OC4CONbits.ON = 1;
    int duty_cycle_state = 0;
    volatile int val_rb2;
    resetCoreTimer();
    while(1){
        
        if(PORTBits.RB1 ==0){
            if(readCoreTimer()>26000000){
                val_rb2 = PORTBbits.RB2;    
                if(duty_cycle_state == 0){
                    setDutyCycle(25);
                    duty_cycle_state =1 ;
                }
                else{
                    setDutyCycle(75);
                    duty_cycle_state = 0;
                }
                resetCoreTimer();
            }
        
        }
        else{
            resetCoreTimer();
        }
    }
    return 0;
}

if(condicao){
    kona
}
else{

}