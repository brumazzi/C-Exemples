#include "lstr.h"

#include <stdio.h>

int main(int argc, char **argv){
	char c;
	String str = lstr_new();
	while(fscanf(stdin, "%c", &c) == 1 && c != '\n'){
		lstr_cat(str, c);
	}

	const char *res = lstr_parse(str);
	printf("minha string é: %s\n", res);
	lstr_free(str);

	return 0;
}
