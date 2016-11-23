#include <stdio.h>

void main(){
	int rx = 5;
	asm(
	"movl %0, %%eax;"
	"movl %%eax, %%ebx"
	:
	:"b"(rx)
	:"%eax"
	);

	printf("%i\n",rx);
}
