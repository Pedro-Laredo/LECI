#include <detpic32.h>

void delay(){
    resetCoreTimer();
    while(readCoreTimer()<7407407);
}
int main(void){
    TRISE = (TRISE & 0xFF87);
    int counter = 0;
    int step = 1;
    while(1){
        LATE = (LATE & 0xFF87) | counter<< 3;
        counter = (counter-step +10) % 10;
        delay();
    }

    

}
