#include <stdio.h>

void __f(){
	puts("call __f");
}

void f() __attribute__((weak, alias("__f")));

int main(int argc, char *argv[]){
	f();

	return 0;
}
