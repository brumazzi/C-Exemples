#include <stdio.h>
#include <string.h>

void main(){
	char *c = "\u00e7|caractere unicode\u00a1";
	printf("%i - %s\n",strlen(c),c);
}
