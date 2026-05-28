#include <detpic32.h>
void delay(unsigned int ms)
{
    resetCoreTimer();
    while(readCoreTimer() < 20000 * ms);
} 

int main(void)
{
    int cnt1 = 0;
    int cnt5 = 0;
    int cnt10 = 0;

    int timer1 = 0;
    int timer5 = 0;

    while(1)
    {
        putChar('\r');
        printInt(cnt1, 10 | 5 << 16);
        putChar('\t');
        printInt(cnt5, 10 | 5 << 16);
        putChar('\t');
        printInt(cnt10, 10 | 5 << 16);

        delay(100);
        
        cnt10++;
        
        timer5++;
        if (timer5 == 2) 
        {
            cnt5++;        
            timer5 = 0;   
        }

        timer1++;
        if (timer1 == 10) 
        {
            cnt1++;        
            timer1 = 0;    
        }
    }
    return 0;
}