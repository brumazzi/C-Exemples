#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

void pauseSignalHandler(int signum){
	puts("Paused");
}
void contiSignalHandler(int signum){
	puts("Continue");
}
void interSignalHandler(int signum){
	puts("Interomped");
	exit(signum);
}

int main(){
	signal(SIGSTOP, pauseSignalHandler);
	signal(SIGCONT, contiSignalHandler);
	signal(SIGINT, interSignalHandler);

	while(1);

	return 0;
}
