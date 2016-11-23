#include <stdio.h>

#define xstr(s) str(s)
#define str(s) #s
#define var 16

#define CALL(com, var) com(#var)
#define CALL_UNI(p1,p2,var) p1##p2(#var)

#define print(...) printf(__VA_ARGS__)

//#define method(x,y) x## (y)

int main(){
	printf("%i\n",__LINE__);
	printf("%s\n",__FILE__);
	printf("%s\n",__DATE__);
	printf("%s\n",__TIME__);

	puts(str(var));
	puts(xstr(var));

	CALL(puts,mensagem);
	CALL_UNI(pu,ts,texto);

	print("numero: %i\n", var);

//	method("puts","text");

	return 0;
}
