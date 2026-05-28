#include <detpic32.h>

void setDutyCycle(unsigned int dc) {
    OC4RS = ((PR3 + 1) * dc) / 100;
}

int main(void) {
    // Configuração dos portos
    TRISBbits.TRISB1 = 1;
    TRISBbits.TRISB2 = 1;
    
    // Configuração do Timer 3
    T3CONbits.TCKPS = 2; // prescaler 1:4 (2^2)
    PR3 = 38461;
    TMR3 = 0;
    T3CONbits.TON = 1;   // ativa o timer 3
    
    // Configuração do OC4
    OC4CONbits.OCM = 6;
    OC4CONbits.OCTSEL = 1;
    setDutyCycle(50);    // Começa com 50% de duty-cycle
    OC4CONbits.ON = 1;
    
    int duty_cycle_state = 0;
    volatile int val_rb2;
    
    resetCoreTimer();
    
    while(1) {
        if (PORTBbits.RB1 == 0) {
            // Verifica se já passaram 1.3s
            // Num Core Timer a 20MHz, 1.3s = 26.000.000 ticks
            if (readCoreTimer() >= 26000000) {
                
                // Leitura do porto RB2 (obrigatório antes da mudança, segundo a nota)
                val_rb2 = PORTBbits.RB2;
                
                if (duty_cycle_state == 0) {
                    setDutyCycle(25);
                    duty_cycle_state = 1;
                } else {
                    setDutyCycle(75);
                    duty_cycle_state = 0;
                }
                
                // Faz reset ao timer para contar os próximos 1.3s
                resetCoreTimer();
            }
        } else {
            // Se RB1 == 1, não fazemos nada (mantém o último valor).
            // Damos reset ao Core Timer para que, quando RB1 voltar a 0, 
            // espere 1.3s completos antes de trocar.
            resetCoreTimer();
        }
    }
    
    return 0;
}
