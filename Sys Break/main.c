void *_alloc(unsigned int);

#include <stdio.h>

int main(int argc, char **argv){
	puts("xxx");
	int *x;
	x = _alloc(8);
	printf("%p\n",x);
	x[0] = 16;
	//x[1] = 9;
	//free(x);

	return 0;
}
