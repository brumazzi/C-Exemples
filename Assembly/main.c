#include <stdio.h>

void main(){
	int x = 10,y = 3;
	asm(	"movl %1, %%eax;"
		"movl %%eax, %0;"
		:"=r"(y)
		:"r"(x+1)
		:"%eax"
	);

	printf("%i|%i\n",x,y);
}
