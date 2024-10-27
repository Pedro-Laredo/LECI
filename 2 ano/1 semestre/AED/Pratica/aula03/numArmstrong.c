#include <stdio.h>

int main(void){
    int powers3[10] = {0,1,8,27,64,125,216,343,512,729}; 
    int NDIVS = 0;

    for(int i = 100; i < 1000; i++){
        int cent = i / 100;   
        int dez = (i / 10) % 10;  
        int uni = i % 10;         
        NDIVS += 4;  

        if (i == (powers3[cent] + powers3[dez] + powers3[uni])){
            printf("%d\n", i);  
        }
    }

    return 0;
}
