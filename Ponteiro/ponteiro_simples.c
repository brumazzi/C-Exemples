#include <stdio.h>

int main(){
	int n;
	int *ponteiro;

	printf("Digite um tamanho para o ponteiro: ");
	scanf("%i",&n);

	ponteiro = malloc(5*sizeof(int));

	int x;
	for(x=0;x<5;x++){
		ponteiro[x] = (rand()%9)+1;
	}

	for(x=0;x<n;x++){
		printf("Ponteiro no expacho %i.\n",ponteiro[x]);
	}

	return 0;
}
