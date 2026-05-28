#include <detpic32.h>
int main(){
    TRISB = (TRISB & 0x80FF);
    TRISD = (TRISD & 0xFF9F);
    while(1){
        char ch = getChar();
        if(ch>= 'a' && ch<'g'){
            ch = ch - 'a';
            LATB = (LATB & 0x80FF) | 1<<(ch + 8);
        }
    }


    return 0;
}