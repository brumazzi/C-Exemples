#include <stdio.h>
#include <malloc.h>

typedef struct {
	int x;
}_point;

int main(){
	_point **p;

	p = (_point**) malloc(2*sizeof(_point*));
	p[0] = (_point*) malloc(5*sizeof(_point));
	p[1] = (_point*) malloc(5*sizeof(_point));

	printf("%i|%i|%i.\n",sizeof(_point),sizeof(p[0]),sizeof(p[0][0]));

	return 0;
}
