#include <stdio.h>

#define p_type(type)  _Generic( (type),\
int : "int",\
long : "long",\
float : "float",\
char : "char",\
char* : "char*",\
const char* : "const char*",\
default : "other type")

int main(int argc, char *argv[]){
	int x = 16;
	char c = 65;
	const char *str = "text";
	printf("%s\n", p_type(x));
	printf("%s\n", p_type(c));
	printf("%s\n", p_type(str));
}
