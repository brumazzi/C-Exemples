#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(){
	int **matriz;
	int s;

	printf("Digite o tamanho da matriz: ");
	scanf("%i",&s);

	srand(time(NULL));

	matriz = (int**) malloc(s*sizeof(int*));
	if(matriz == NULL){
		printf("Erro no alocamento de memoria.\n");
		return -1;
	}else printf("As informações serão iniciadas apartir do espaço %u.\n",matriz);

	int i,j;
	for(i=0;i<s;i++){
		matriz[i] = (int*) malloc(s*sizeof(int));
//		printf("|");
		for(j=0;j<s;j++){
			matriz[i][j] = rand()%16;
			printf("posição: %u | valor: %i|%p.\n",matriz[i],matriz[i][j],matriz[i][j]);
		}

	}

//	free(matriz);

	return 0;
}
