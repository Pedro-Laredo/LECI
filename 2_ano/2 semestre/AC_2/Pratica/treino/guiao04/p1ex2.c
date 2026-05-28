#include <detpic32.h>
void delay(){
    resetCoreTimer();
    while(readCoreTimer()<4347826);
}

int main(void){
    TRISE = TRISE & 0xFF87;
    int step = 1;
    int counter = 0;
    while(1){
    LATE = (LATE &0xFF87) | counter << 3;
    delay();
    counter = (counter + step) %10;
    }
}