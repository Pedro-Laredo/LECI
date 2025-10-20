#include <stdio.h>

int funcao1(int *array,size_t size){
    double r = array[1]/array[0];
    for(size_t i = 2;i<size;i++ ){
        if(array[i] != r*array[i-1]){
            return 0;
        }
    }
    return 1;
    
}

int main(void) {
    int array1[] = {2, 6, 18, 54, 162};
    int array2[] = {1, 2, 4, 8, 16};     
    int array3[] = {1, 2, 5, 10};        

    size_t n1 = sizeof(array1) / sizeof(array1[0]);
    size_t n2 = sizeof(array2) / sizeof(array2[0]);
    size_t n3 = sizeof(array3) / sizeof(array3[0]);

    printf("Array 1 is %sa geometric progression.\n", funcao1(array1, n1) ? "" : "not ");
    printf("Array 2 is %sa geometric progression.\n", funcao1(array2, n2) ? "" : "not ");
    printf("Array 3 is %sa geometric progression.\n", funcao1(array3, n3) ? "" : "not ");

    return 0;
}