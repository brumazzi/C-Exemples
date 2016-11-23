#include "libasm.h"
#include <stdio.h>

void soma(int x, int y){
	int r = x + y;
	__RET__(r);
}

void main(){
	int x;
	soma(15,5);
	__GET__(x);
	printf("%i\n",x);
}
