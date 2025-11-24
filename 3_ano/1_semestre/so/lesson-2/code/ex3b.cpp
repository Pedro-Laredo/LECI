#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <signal.h>


int main(int argc, char *argv[]){
    
    int argument = atoi(argv[1]);
    pid_t pid = argument;
    kill(pid, SIGINT);
    return 0;
}