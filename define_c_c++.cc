#include <stdio.h>
int main(){
	#ifdef __cplusplus
		printf("C++");
	#else
		printf("C");
	#endif
	return 0;
}
