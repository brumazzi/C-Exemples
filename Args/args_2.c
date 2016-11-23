#include <stdarg.h>
#include <stdio.h>

int math(char type, ...){
	va_list list;
	va_start(list, 1);
	int index;
	int x = 0;

	if(type == 1){
		while(index = va_arg(list,int)){
			x += index;
		}
	}

	return x;
}

void main(){
	printf("%i\n",math(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5));
}
