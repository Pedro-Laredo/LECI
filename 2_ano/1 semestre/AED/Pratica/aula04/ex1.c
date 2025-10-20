#include <stdio.h>

int funcao1(int *array,size_t size,int *p_ncomps){
    int n = 0;
    for(size_t i = 1; i<size-1;i++){
        (*p_ncomps)++;
        if(array[i]==array[i-1]+array[i+1]){
            n++;
        }
    }
    return n;

}
int main(void) {
    int array0[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int array1[] = {1,2,1,4,5,6,7,8,9,10};
    int array2[] = {1,2,1,3,2,6,7,8,9,10};
    int array3[] = {0,2,2,0,3,3,0,4,4,0};
    int*arrays[] = {array0,array1,array2,array3};
    for(int i = 0; i<4;i++){
        int n_sucess;
        int NCOMPS= 0;
        n_sucess = funcao1(arrays[i],10,&NCOMPS);
        printf("O numero de elementos e %d\n",n_sucess);
        printf("Onumero de comparacoes e %d\n",NCOMPS);
        

    }
    printf("Sucesso");
}
