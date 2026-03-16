#include <detpic32.h>

int main(void)
{
    TRISE = TRISE & 0XFF87;     //1111 1111 1000 0111

    int counter = 9;

    while(1){
    LATE = (LATE & 0XFF87) | counter << 3;

    resetCoreTimer(); while( readCoreTimer()< 7407407); // (1/2.7Hz) x 20 000 000 = 7407407 (20 000 000 é a velocidade do clock sempre)

    counter = (counter - 1 + 10) % 10;
    }

    return 0;

}

//counter