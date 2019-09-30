//void function(char *text, void *val) __attribute__((nonnull(1,2)));
__attribute__((nonnull)) void function(char *text, void *val){
	printf("OK\n");
}

#include <stdio.h>

void main(){
	function(NULL,NULL);
}

//void function(char *text, void *val){}
