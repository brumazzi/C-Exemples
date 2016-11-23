#include <stdio.h>

#define mk_str(x) #x
#define concat(x,y,z) #x #y #z

int main(){
	puts(mk_str(# STRING CRIADA EM C #));
	puts(concat(STRING01_, STRING02_,10));

	return 0;
}
