#include <stdio.h>
#include "pilha.h"

int main(){
	PILHA * top = NULL;

	insertp(&top,6);
	insertp(&top,1);
	insertp(&top,9);

/*	while(top){
		printf("%s\n",top->value);
		top = removep(top);
	}
*/
	printf(top->value);
	top = removep(top);
	printf(top->value);

	return 0;
}
