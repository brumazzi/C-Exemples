#include <stdio.h>
#include <unistd.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <termios.h>

int main(){
	int *get;
	int f_data;

	FILE *f = fopen("endereco.end","r");
	if(!f)
		return -1;

	fread(&f_data, sizeof(int), 1, f);

	fclose(f);

	get = (int*) shmat(f_data,0,0);

	printf("Valor atual: %i\n",*get);
	printf("Novo valor: ");
	scanf("%i", get);

	return 0;
}
