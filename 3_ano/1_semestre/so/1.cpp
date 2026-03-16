int main(void)
{
    if (fork() == 0)
    {
        bwDelay();
        printf("A"); fflush(stdout);
        bwDelay();
        printf("B"); fflush(stdout);
        sem_up(parent)
        exit(0);
    }

    bwDelay();
    sem_down(parent)
    printf("C"); fflush(stdout);

    if (fork() == 0)
    {
        bwDelay();
        printf("D"); fflush(stdout);
        bwDelay();
        printf("E"); fflush(stdout);
        exit(0);
    }

    wait(NULL);
    wait(NULL);
    return 0;
}
