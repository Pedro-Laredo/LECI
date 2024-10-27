#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main (void) {
    char palavra1[100] = "dinheiro é MuiTo Fixe";
    int count = 0;
    for(int i = 0; i < strlen(palavra1); i++) {
        if((palavra1[i] >= 'a' && palavra1[i] <= 'z') || (palavra1[i] >= 'A' && palavra1[i] <= 'Z')) {
            count++;
        }
        
    }
    printf("%d\n", count);  // Fix printf to print the integer value of count

    return 0;
}




