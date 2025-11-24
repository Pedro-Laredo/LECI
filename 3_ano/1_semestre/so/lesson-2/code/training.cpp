#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "delays.h"
#include "process.h"

int main(void){
    printf("concurrent program between parent and child\n");
    pid_t ret = pfork();
    if (ret==0){
        for (int i=0;i<11;i++){
            printf("%d\n",i);

        }
    printf("Child finishied\n");
}
    else{
        pwait(NULL);
        for ( int i=11;i<21;i++){
            printf("%d\n",i);
        }
            printf("Parent finished\n");
    }


    return 0;
}