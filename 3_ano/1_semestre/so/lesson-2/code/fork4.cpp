#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/wait.h>

#include "delays.h"
#include "process.h"

int main(int argc, char *argv[])
{
  int fd;
  mode_t fd_mode = S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH;
  printf("Before the fork: PID = %d, PPID = %d\n", getpid(), getppid());

  pid_t ret = pfork();
  if (ret == 0)
  {
    if ((fd = open((argv[1]), O_WRONLY | O_CREAT,fd_mode)) ==-1){ //lesson3
      perror("fail opening file\n"); //lesson3
    }
    if (dup2(fd,STDOUT_FILENO) == -1){//lesson3
      perror ("fail redirection stdout\n");//lesson3
      close(fd);//lesson3
      return 1;//lesson3
    }
    close(fd);//lesson3

    execl("./child", "./child", NULL);
    printf("why doesn't this message show up?\n");
    
    return EXIT_FAILURE;
  }
  else
  {
    //pwait(NULL);
    printf("I'm the parent: PID = %d, PPID = %d\n", getpid(), getppid());
    usleep(1000);
  }

  return EXIT_SUCCESS;
}
