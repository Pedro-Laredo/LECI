/*
 * An implementation of the bounded-buffer problem
 *
 * NC producers and NC consumers communicate through a fifo.
 * The fifo has a fixed capacity.
 * NI items will be produced by the producers and consume by the consumers.
 * An item is composed of 2 equal integers, ranging from 1 to NI.
 */

#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <math.h>
#include <libgen.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "utils.h"
#include "thread.h"
#include "fifo.h"



void* child(void *arg){
    int v2;
    int *pointer = (int*)arg;

    while (true)
    {
        printf("Enter a digit between 10-20\n");
        scanf("%d",&v2);
        if (v2>20 || v2<10){
            printf("Invalid number\n");
        continue;
    }
        else{
            break;
        }
    }
    printf("%d\n",*pointer);
    while(*pointer<v2){
        (*pointer)++;
        printf("\nNumber: %d",*pointer);
        
    }
    return NULL;
    
    
}
int main(void){
    int v1;
    while (true)
    {
        printf("Enter a digit between 1-9: \n");
        scanf("%d",&v1);
        if (v1>9 || v1<0){
            printf("Invalid number\n");
        continue;
    }
        else{
            break;
        }
    }
    

    pthread_t thread;
    thread_create(&thread,NULL,child,&v1);

    thread_join(thread, NULL);       

    while (v1 > 1) {
        v1--;                         
        printf("\nnumber: %d", v1);
    }

    return 0;

    
}

