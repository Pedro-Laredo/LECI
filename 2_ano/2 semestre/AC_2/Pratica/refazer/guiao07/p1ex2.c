#include<detpic32.h>
volatile unsigned char voltage_bcd = 0;
void delay(unsigned int ms){
    unsigned int ticks = ms*20000;
    resetCoreTimer();
    while(readCoreTimer()<ticks);
}
void send2display(unsigned char value) {
    int dh, dl;
    static const char disp7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};
    static char displayFlag = 0;
    
    if(displayFlag == 0) { // Envia para o display direito (Unidades)
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        dl = value & 0x0F;
        // Mantém a tua máscara 0x80FF que protege o pino RB15
        LATB = (LATB & 0x80FF) | (disp7Scodes[dl] << 8);
    }
    else {                 // Envia para o display esquerdo (Dezenas + Ponto Decimal)
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        dh = value >> 4;
        // Adicionado o "| 0x80" para acender o ponto decimal da tensão (ex: 3.3V)
        LATB = (LATB & 0x80FF) | ((disp7Scodes[dh] | 0x80) << 8);
    }
    displayFlag = !displayFlag;
}






int main(void){
    // 1. Configuração dos Displays de 7 Segmentos (Portos de Saída)
    TRISB = TRISB & 0x00FF;      // Pinos RB15 a RB8 como saídas digitais
    TRISDbits.TRISD5 = 0;        // RD5 como saída (display direito)
    TRISDbits.TRISD6 = 0;        // RD6 como saída (display esquerdo)
	TRISBbits.TRISB4 = 1;
	AD1PCFGbits.PCFG4 = 0;
	AD1CON1bits.SSRC = 7;
	AD1CON1bits.CLRASAM = 1;
	AD1CON3bits.SAMC = 16;
	AD1CON2bits.SMPI = 7;
	AD1CHSbits.CH0SA = 4;
	AD1CON1bits.ON = 1;
	IPC6bits.AD1IP = 2;
	IFS1bits.AD1IF = 0;
	IEC1bits.AD1IE = 1;

	EnableInterrupts();
    int main_counter = 0;

	while(1){
        if(main_counter==0){
            AD1CON1bits.ASAM = 1;
        }
        send2display(voltage_bcd);
        delay(10);
        //main_counter = (main_counter+1)%20;
	}

	return 0;
}

void _int_(27) isr_adc(void){
    int *p = (int*)(&ADC1BUF0);
    int i,average = 0;
    for(i=0; i<8; i++){
        average +=p[i*4];
    }
    average/=8;
    unsigned char voltage_dec = (char)((average*33+511)/1023);
    voltage_bcd = ((voltage_dec/10)<<4) |(voltage_dec %10);
    IFS1bits.AD1IF = 0; // Limpa a flag de interrupção

}
