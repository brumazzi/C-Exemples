#include <stdio.h>

int main(){
	FILE *fin = fopen("data","r");
	fseek(fin,0,SEEK_END);
	fseek(fin,0,SEEK_SET);

	int l;
	fscanf(fin,"%i",&l);

	int **vals,**val_back,size = 2;
	vals = malloc(l*size*sizeof(int));
	val_back = malloc(l*size*sizeof(int));

	char c[2] = {0,'\0'};

	do{
		fgets(buffer,sizeof(buffer),fin);
		while(c[0] != '\n'){
			if()
		}
	}while(!feof(fin));

	printf("%i\n",l);

	return 0;
}
