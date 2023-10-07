#include <stdlib.h>
#include <stdio.h>
#include <wait.h>
#include <sys/types.h>
#include <unistd.h>

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - A C program to demonstrate Zombie Process.
 * Child becomes Zombie as parent is sleeping
 * when child process exits.
 *
 * Return: 0
 */
int zombie(void)
{
	int status;
	pid_t child_pid;

	/* Fork returns process id in parent process */
	child_pid = fork();

	/* Parent process */
	if (child_pid > 0)
	{
		printf("Zombie process created, PID: %ld\n", (long)child_pid);
	}

	/* Child process */
	else
		exit(0);
	
	return (0);
}

int main(void)
{
	int i;

	for (i = 0; i < 5; i++)
		zombie();
	infinite_while();
	return (0);
}
