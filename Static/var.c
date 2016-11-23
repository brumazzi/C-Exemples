#include <stdio.h>

int funct(){
	int x = 5;
	static int y = 0;

	y += x;

	return y;
}

void main(){
	int x = 3;
	while(x--){
		funct();
	}
	x = funct();

	printf("%i",x);
}
