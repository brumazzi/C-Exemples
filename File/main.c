#include <stdio.h>

int main(){
	const char fname = "a.out";
	FILE *f = fopen("Leitura","w");

	fprintf(f,"Escrevendo uma menssagem.\n%c",NULL);
	fprintf(f,"Segunda Parte da menssagem.");

	fclose(f);

	f = fopen("Elemental War","r");

	char c;
	long unsigned int x=0;
	while(fscanf(f,"%c",&c) != -1){
//		fscanf(f,"%c",&c);
		if(c == NULL){ x++;printf("%i\n",x);}
//		printf("%c",c);
	}
	//printf("%i\n",x);

	return 0;
}
