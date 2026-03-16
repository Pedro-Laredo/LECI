#include <detpic32.h>

int main(void) 
{
    // Configure port RC14 as output
    TRISCbits.TRISC14 = 0;

    while(1) {
        resetCoreTimer();while(readCoreTimer() < 20000000/2);               // Wait 0.5s
        LATC = LATC ^ 0x4000;    // Toggle RC14 (bit 14)
    }

    return 0;
}
