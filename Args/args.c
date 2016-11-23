#include <stdio.h>
#include <stdarg.h>

int sum(int argc, ...){
	va_list argv;
	int max = 0;

	va_start(argv, argc);
	while(argc--)
		max += va_arg(argv, int);

	va_end(argv);

	return max;
}

void print_n(char *types, ...){
	va_list	argv;
	char	_char;
	char	_str[512];
	int	_int;
	float	_float;

	va_start(argv, types);
	int len = strlen(types);
	while(len--){
		switch(*types){
			case 'c':
				printf("%c\n",va_arg(argv,int)%256);
				break;
			case 's':
				printf("%s\n",va_arg(argv,char*));
				break;
			case 'i':
				printf("%i\n",va_arg(argv,int));
				break;
			case 'f':
				printf("%f\n",va_arg(argv,float));
				break;
		}
		types++;
	}
}

void main(){
	printf("%i\n",sum(10,1,2,3,4,5,6,7,8,9,10));
	print_n("sicsci","Brumazzi",21,'D',"Daniel",')',30);
}
