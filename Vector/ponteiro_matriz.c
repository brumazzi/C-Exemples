#include <stdio.h>

int vecPosition(int size[2],int pos[2]){
	int resp;
	if(size[pos[0] >= size[0]] || pos[1] >= size[1])
		return 0;
	return (pos[0]+pos[1]);
}

int main(){
	int l,c;
	printf("Entre o total de linhas: ");
	scanf("%i",&l);
	printf("Entre o total de colunas: ");
	scanf("%i",&c);

	int *matriz = (int *) malloc(l*c*sizeof(int));

	int x,y;
	for(x=0;x<sizeof(matriz);x++)
		matriz[x] = rand()%9+1;

	printf("#########################################\nPosição \"x\" a ser lida: ");
	scanf("%i",&x);
	x--;
	printf("Posição \"y\" a ser lida: ");
	scanf("%i",&y);
	y--;

	printf("\n|%i|\n",matriz[vecPosition((l,c),(x,y))]);

	return 0;
}
