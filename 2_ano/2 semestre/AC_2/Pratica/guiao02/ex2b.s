.text
.globl main

main:
    li      $a0, 1000       # argumento = 1000;
    jal     delay           # delay(1000);

    li      $a0, 500        # argumento = 500;
    jal     delay           # delay(500);

end_loop:
    j       end_loop        # while(1);

delay:
    li      $t0, 20000      # K = 20000;
    mul     $t0, $a0, $t0   # limite = ms * K;
    mtc0    $zero, $9       # resetCoreTimer();
    ehb                     # (sincronização hardware)

wait_loop:
    mfc0    $t1, $9         # tempo_atual = readCoreTimer();
    bltu    $t1, $t0, wait_loop # while(tempo_atual < limite);
    jr      $ra             # return;