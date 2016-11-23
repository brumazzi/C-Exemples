#include <stdio.h>
#include <malloc.h>
#include <string.h>

int main(){
	int *p = (int*) malloc(2*sizeof(int));

	srand(time(NULL));

	printf("tamanho de p = %i.\n",sizeof(p));
	p[0] = 2;
	p[1] = 5;

	p = realloc(p, 5 * sizeof(int));

	int i;
	for(i=2;i<5;i++){
		p[i] = rand()%10;
	}

	for(i=0;i<5;i++){
		printf("%i\n",p[i]);
	}

	return 0;
}
