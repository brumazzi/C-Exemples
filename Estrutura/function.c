#include <stdio.h>

typedef struct{
	int x;
	int str[2];
}valer;

valer vfunction(int n,char c){
	valer v;
	v.x = n*n;
	v.str[0] = c;
	v.str[1] = c+1;

	return v;
}

int main(){
	int n = vfunction(5,'s').x;

	printf("%i",n);

	return 0;
}
