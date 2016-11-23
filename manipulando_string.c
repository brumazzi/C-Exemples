#include <stdio.h>
#include <string.h>

int main(int argc,char **argv){
	char str1[50],*str2;

	scanf("%s",&str1);
	str2 = "-";

	if(strcmp(str1,str2)) //Se str1 == str2 retorna falso.
		printf("x\n");
	else
		printf("y\n");

	return 0;
}
