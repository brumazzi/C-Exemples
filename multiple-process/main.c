#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdio.h>

int main(int argc, char **argv){
	pid_t f_res;
	int x=10;

	puts("Iniciando...");

	f_res = fork();
	if(!f_res){
		puts("Processo filho.");
		puts("Processo filho 2.");
		puts("Processo filho 3.");
		sleep(1);
		puts("Processo filho 4.");
		return 0;
	}
	puts("Processo pai.");
	sleep(1);
	puts("Processo pai 2.");
	puts("Processo pai 3.");
	puts("Processo pai 4.");

	int stat;
	wait(&stat);
	return 0;
}
