#include <detpic32.h>

void setPWM(unsigned int dutyCycle) {
    if(dutyCycle > 100) dutyCycle = 100; // Limite de segurança
    OC1RS = ((PR3 + 1) * dutyCycle) / 100; // Cálculo do tempo ON
}

int main(void) {
    // 1. Configuração do Timer T3 (Base de Tempo)
    T3CONbits.TCKPS = 2;      // Prescaler 1:4
    PR3 = 49999;              // 100 Hz[cite: 1]
    TMR3 = 0;                 // Reset do contador[cite: 1]
    T3CONbits.TON = 1;        // Ligar Timer[cite: 1]

    // 2. Configuração do OC1 (PWM)
    OC1CONbits.OCM = 6;       // Modo PWM[cite: 1]
    OC1CONbits.OCTSEL = 1;    // IMPORTANTE: Selecionar Timer T3[cite: 1]
    setPWM(25);               // Duty Cycle inicial[cite: 1]
    OC1CONbits.ON = 1;        // Ativar OC1[cite: 1]

    // 3. Configuração do Porto do LED
    TRISCbits.TRISC14 = 0;    // LED D11 como saída[cite: 1]

    while(1) {
        // Cópia constante de hardware para software[cite: 1]
        // NÃO use IdleMode() aqui se quiser ver o LED brilhar!
        LATCbits.LATC14 = PORTDbits.RD0; 

        // Se quiser testar se o código está vivo, 
        // mude o duty cycle aqui com um delay longo.
    }
    return 0;
}