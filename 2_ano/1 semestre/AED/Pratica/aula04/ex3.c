#include <stdio.h>

int f1(int *p,size_t size, unsigned int*ncomp){
    *ncomp = 0;
    int ntermos = 0;
    for(unsigned int i = 0; i<size-2;i++){
        for(unsigned int j = i+1;j<size-1;j++){
            for(unsigned int k = j+1; k<=size-1;k++){
                (*ncomp)++;
                if(p[k]==p[i]+p[j]){
                    ntermos+=1;
                }
            }
        }
    }
    return ntermos;

}