#include <stdio.h>
#include <malloc.h>

union Data{
	int i[3];
	float f;
//	char str[20];
};

struct Regi{
	int i[3];
	float f;
}Regi;

int main(){
	union Data *dta = (union Data) malloc(5*sizeof(union Data));
	struct Regi *rgi = (struct Regi) malloc(5*sizeof(struct Regi));

	printf("%i|%i\n",sizeof(union Data),sizeof(struct Regi));
	printf("%i|%i\n",sizeof(dta),sizeof(rgi));

	return 0;
}
