#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>

void signalHandler(int signum){
	printf("Sinal (%i) ativo!\n",signal);

	exit(signum);
}

int main(){
	signal(SIGINT, signalHandler);
	signal(SIGQUIT, signalHandler);

	int x=0;
	while(++x){
		puts("Esperando sinal...");
		/*if(x==3)
			raise(SIGINT);*/ // Força o sinal
		sleep(1);
	}

	return 0;
}
