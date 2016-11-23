#include <stdio.h>

__attribute__((constructor)) static void _bar(){
	printf("bar\n");
}
