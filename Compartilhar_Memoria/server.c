#include <stdio.h>
#include <unistd.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <termios.h>

int main(){
	int comp = 0;
	int last = 1;
	int *x;

	FILE *f = fopen("endereco.end","w");
	if(f){
		comp = shmget(IPC_PRIVATE, 1, IPC_CREAT | 0644);
		if(comp == -1)
			return 1;
		fwrite(&comp, sizeof(int), 1, f);
		fclose(f);
	}else{
		return -1;
	}

	x = (int*) shmat(comp,0,0);
	*x = 1;

	while(*x){
		sleep(1);
		if(last != *x)
			printf("%i\n",(last=(*x)));
	}

	shmctl(comp, IPC_RMID, NULL);
	shmdt(x);
	return 0;
}
