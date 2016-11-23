#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(){
	FILE *f = fopen("Dados","w");
	char var[100];
	char ip[16];

	printf("IP: ");
	__fpurge(stdin);
	fgets(ip, 16, stdin);

	ip[strlen(ip)] = 0;
	memset(var, 0x0, 100);
	sprintf(var,"%s", ip);
	int x = system(var);

	printf("%i|%s.\n",x,var);

	fprintf(f,var);

	return 0;
}
