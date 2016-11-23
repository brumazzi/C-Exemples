#include <signal.h>
#include <stdio.h>

int main(int argc, char **argv){
	int pid;
	printf("PID: ");
	scanf("%d", &pid);

	kill(pid, SIGTERM);
}
