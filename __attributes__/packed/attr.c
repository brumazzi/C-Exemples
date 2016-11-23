struct __attribute__ ((__packed__)){
	struct __attribute__((__packed__)){
		char c : 1;
		int i;
	}bar;
	char c : 2;
	int i;
}foo;

#include <stdio.h>

void main(){
	printf("%li\n",sizeof(foo));
	foo.bar.c = 1;
	printf("%i\n",foo.bar.c);
	foo.c = 2;
	printf("%i\n",foo.c);
}
