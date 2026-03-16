#include <detpic32.h>

int main(void){
    char ch;

    TRISB = TRISB & 0X80FF;     //1000 0000 1111 1111

    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 1;

    while(1){
        ch = getChar();
        putChar(ch);


        if(ch >= 'a' && ch <= 'g') {
            ch = ch - 'a';                         // converte para 0-6
            LATB = (LATB & 0x80FF) | 1 << (ch + 8); // acende segmento
        }
    }

    return 0;
}


