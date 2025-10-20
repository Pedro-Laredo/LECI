#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "delays.h"
#include "process.h"

int main(void)
{
  
  printf("Before the fork: PID = %d, PPID = %d\n", getpid(), getppid());

  //pfork(); // equivalent to fork(), dealing internally with error situations
  pid_t  pid = pfork();
  
  
  printf("After the fork: PID = %d, PPID = %d\n",getpid(), getppid());
  bwRandomDelay(1000, 100000); // added to enhance the occurrence of different outputs
  if (pid == 0) {
    // este bloco é o FILHO
    printf("I was printed by the child\n");
    } else {
    // este bloco é o PAI; 'pid' contém o PID do filho
    printf("I was printed by the parent");
}
  //printf("  Was I printed by the parent or by the child process? How can I know it?\n"); 
  
  return EXIT_SUCCESS;
}

