#include <detpic32.h>
void setDutyCycle(unsigned int dc){
    OC4RS = (38461*dc)/100;
}

int main(void){
    T3CONbits.TCKPS = 2;
    PR3 = 38461;
    TMR3 = 0;
    T3CONbits.TON = 1; 
    // K*(PR3+1) = 20M/135   se K1 = 148148
                            // K2 =  74074
                            // K4 = 38462
    OC4CONbits.OCM = 6;
    OC4CONbits.OCTSEL = 1;
    OC4RS = 19231;
    OC4CONbits.ON = 1;
    TRISBbits.TRISB1 = 1;
    TRISBbits.TRISB2 = 1;
    int duty_cycle_state = 0;
    while(1){
        if(PORTBbits.RB1==0){
            resetCoreTimer();
            while(readCoreTimer()<26000000);
            if(duty_cycle_state == 0){
                setDutyCycle(25);
                duty_cycle_state = !duty_cycle_state;
            }
            else{
                setDutyCycle(75);
                duty_cycle_state = !duty_cycle_state;
        }
        }
    }
    
}