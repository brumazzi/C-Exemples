#include <malloc.h>
#include <stdio.h>

int *method(){
	static int *i = NULL;

	if(!i)
		i = (int *) malloc(sizeof(int));

	return i;
}

int main(int argc, char *argv[]){
	printf("%i\n",*method());
	printf("%i\n",*method());
	*method() = 336699;
	printf("%i\n",*method());
}
