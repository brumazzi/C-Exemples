#include <stdio.h>

struct{
	unsigned int x;
	unsigned int y;
}s1;

struct{
	unsigned int x : 3; //permite na variavel um valor = 2^3
	unsigned int y : 3;
}s2;

int main(){
	printf("sizeof(s1) = %i\n",sizeof(s1));
	printf("sizeof(s2) = %i\n",sizeof(s2));

	int x;
	scanf("%i",&x);

	s2.x = x;

	printf("%i\n",s2.x);

	return 0;
}
