#include <stdio.h>
#include <malloc.h>

typedef struct {
	int x;
	int y;
	long int w;
	long int z;
}model;

int main(){
	model *m;

	m = (model*) malloc(5*sizeof(model));

	printf("%i|%i\n",sizeof(model),sizeof(m[0]));

	return 0;
}
