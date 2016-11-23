#include <signal.h>
#include <stdio.h>
#include <unistd.h>

#define jump_pointer(x) asm(#x":");
#define jump(x) asm("jmp "#x);

int signal_handler(int signum);

void main(){
	signal(SIGSEGV,signal_handler);

	int *x = 1000;
	*x = 10;
	jump_pointer(pos_error);
	while(1){
		sleep(1);
		puts("in loop");
	}
}

int signal_handler(int signum){
	puts("Endereço inválido!");

	jump(pos_error);
	return 0;
	//exit(1);
}
