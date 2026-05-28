#include <stdio.h>
int main() {
    int media;
    for(media = 0; media <= 1023; media += 100) {
        int temperatura = ((media*66) +511)/1023 +7;
        unsigned char bcd = ((temperatura/10)<<4) + (temperatura%10);
        printf("media=%d -> T=%d, BCD=%x\n", media, temperatura, bcd);
    }
    return 0;
}
