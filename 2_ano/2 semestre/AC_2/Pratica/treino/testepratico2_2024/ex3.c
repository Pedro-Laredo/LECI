#include<detpic32.h>

void putc(char byte){
    while(U2STAbits.UTXBF==1);
    U2TXREG = byte;
}
void puts(char *str){
    while(*str !='\0'){
        putc(*str);
        str++;
    }
}
void print_decimal(int num){
    if(num>=10){
        int dezena = num / 10;
        int unidade = num % 10;
        putc(dezena + '0');
        putc(unidade+ '0');
    }
    else{
        putc(num+'0');
    }
}
void _int_(32) isr_uart2(void){
    if(IFS1bits.U2RXIF == 1){
        char c = U2RXREG;
        LATEbits.LATE7 = !LATEbits.LATE7;
        putc(c);
        if(c=='D'){
            puts("DSD=");
            int sw = PORTB & 0x0F;
            print_decimal(sw);
        }
        IFS1bits.U2RXIF = 0;
    }
}
int main(){
    TRISEbits.TRISE7 = 0;
    LATEbits.LATE7 = 0;
    TRISB = TRISB | 0x000F;
    U2BRG = 130;
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 2;
    U2MODEbits.STSEL = 1;
    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;
    U2MODEbits.ON = 1;
    IPC8bits.U2IP = 2;
    IEC1bits.U2RXIE = 1;
    IFS1bits.U2RXIF = 0;
    EnableInterrupts();
    while(1){

    }
    return 0;
}
