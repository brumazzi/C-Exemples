#include <stdio.h>
#include <string.h>
#include <iostream>

int main(){
	char *strx;

	strx = (char *)"Menssagem";

	int x = strlen(strx);
	
	printf("\"%s\", tem %i caracteres\n",strx,x);

	return 0;
}
