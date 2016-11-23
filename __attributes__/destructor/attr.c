#include <stdio.h>

__attribute__((destructor)) void close(){
	puts("End Program");
}
