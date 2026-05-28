#include <detpic32.h>

// Array global com os códigos dos 7 segmentos (0 a 9)
// Segmentos: A(RB8), B(RB9), C(RB10), D(RB11), E(RB12), F(RB13), G(RB14)
static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};

volatile unsigned char voltage_bcd = 0; // Variável global partilhada com a interrupção

// Função para converter um valor decimal em BCD
unsigned char toBcd(unsigned char value) {
    return ((value / 10) << 4) + (value % 10);
}

// Função para refrescar os displays
void send2displays(unsigned char value) {
    static char displayFlag = 0;
    unsigned char digit_high = value >> 4;
    unsigned char digit_low = value & 0x0F;
    
    if (displayFlag == 0) {
        // Seleciona display mais significativo (RD5)
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        // Envia valor para os segmentos
        LATB = (LATB & 0x80FF) | (display7Scodes[digit_high] << 8);
    } else {
        // Seleciona display menos significativo (RD6)
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        // Envia valor para os segmentos
        LATB = (LATB & 0x80FF) | (display7Scodes[digit_low] << 8);
    }
    displayFlag = !displayFlag;
}

// Rotina de interrupção do Timer 3 para refrescar os displays a 250Hz
void _int_(12) isr_T3(void) {
    send2displays(voltage_bcd); // Atualiza os displays com a temperatura
    IFS0bits.T3IF = 0;          // Limpa a flag de interrupção do T3
}

int main(void) {
    // -------------------------------------------------------------
    // CONFIGURAÇÃO DOS PORTOS (Displays de 7 Segmentos)
    // -------------------------------------------------------------
    TRISB = TRISB & 0x80FF; // RB8 a RB14 configurados como saída (segmentos)
    TRISD = TRISD & 0xFF9F; // RD5 e RD6 configurados como saída (seleção de displays)
    
    // -------------------------------------------------------------
    // CONFIGURAÇÃO DA ADC (AN4 / RB4, polling, 2 amostras)
    // -------------------------------------------------------------
    TRISBbits.TRISB4 = 1;       // RB4 configurado como entrada analógica (AN4)
    AD1PCFGbits.PCFG4 = 0;      // AN4 em modo analógico
    AD1CON1bits.SSRC = 7;       // Termina amostragem e inicia conversão via timer interno
    AD1CON1bits.CLRASAM = 1;    // Para amostragem após gerar interrupção / converter a sequência
    AD1CON3bits.SAMC = 16;      // Tempo de amostragem
    AD1CON2bits.SMPI = 1;       // 2 conversões por cada interrupção / sequência
    AD1CHSbits.CH0SA = 4;       // Seleciona AN4 como entrada do multiplexer
    AD1CON1bits.ON = 1;         // Activa a ADC
    
    // -------------------------------------------------------------
    // CONFIGURAÇÃO DO TIMER 3 (Fout = 250Hz para os displays)
    // -------------------------------------------------------------
    // Fout = Fpb / (K * (PR3 + 1))  => 250 = 20000000 / (K * (PR3 + 1))
    // Com K = 2: PR3 = 39999
    T3CONbits.TCKPS = 1;        // Prescaler 1:2
    PR3 = 39999;
    TMR3 = 0;
    
    // Configuração das Interrupções do Timer 3
    IPC3bits.T3IP = 2;          // Prioridade da interrupção (1 a 6)
    IEC0bits.T3IE = 1;          // Activa interrupção do T3
    IFS0bits.T3IF = 0;          // Limpa a flag pendente
    T3CONbits.TON = 1;          // Activa Timer 3
    
    EnableInterrupts();         // Activa as interrupções globalmente

    // Variáveis auxiliares para a conversão
    int media_adc;
    int temperatura;

    resetCoreTimer();

    while(1) {
        // Core Timer para ditar a frequência de amostragem da ADC a 5Hz
        // 5 Hz = 20.000.000 / 5 = 4.000.000 ticks
        if (readCoreTimer() >= 4000000) {
            
            AD1CON1bits.ASAM = 1; // Inicia a conversão na ADC
            
            // Fim de conversão processado por polling
            while(IFS1bits.AD1IF == 0); 
            
            // Leitura e cálculo da média das 2 conversões (ADC1BUF0 e ADC1BUF1)
            media_adc = (ADC1BUF0 + ADC1BUF1) / 2;
            
            // Converter a média da ADC (0 - 1023) para temperatura (7ºC a 73ºC)
            // T = 7 + (media_adc * (73 - 7)) / 1023
            // T = 7 + (media_adc * 66) / 1023
            // Somamos 511 (metade de 1023) antes da divisão para obter o arredondamento correto (rounding).
            temperatura = 7 + ((media_adc * 66) + 511) / 1023;
            
            // Guardar em formato BCD na variável partilhada com a interrupção
            voltage_bcd = toBcd(temperatura);
            
            IFS1bits.AD1IF = 0; // Limpar a flag de polling da ADC
            
            resetCoreTimer();   // Reinicia para esperar mais 200ms (5Hz)
        }
    }
    
    return 0;
}
