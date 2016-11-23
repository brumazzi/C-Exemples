#include <stdio.h>

int main(){
	#ifdef __WIN32 
	#ifdef __GNUC__
		printf("Esta presente em ambos os sistemas.\n");
		return 0;
	#endif
	#endif
	#ifdef __WIN32
		printf("Presente no windows.\n");
		return 0;
	#endif
	#ifdef __GNUC__
		printf("Presente no Linux.\n");
		return 0;
	#endif

	return 0;
}
