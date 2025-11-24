#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "delays.h"
#include "process.h"

int main(void)
{
    // Parent prints the top line
    printf("========================================\n");
    
    // Fork a child process
    pid_t ret = pfork();
    
    if (ret == 0) {
        // Child process: execute ls -l
        pexecl("/bin/ls", "ls", "-l", NULL);
        
        // This line only executes if execl fails
        fprintf(stderr, "execl failed\n");
        return EXIT_FAILURE;
    }
    else {
        // Parent process: wait for child to complete
        pwait(NULL);
        
        // After child finishes, print the bottom line
        printf("========================================\n");
    }
    
    return EXIT_SUCCESS;
}