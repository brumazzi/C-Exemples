#include <stdio.h>
#include <dlfcn.h>

int main(int argc, char **argv){
	char call[16];
	void *lib = dlopen("./libtest.so", RTLD_NOW);

	void (*mth)();

	scanf("%s",call);
	mth = dlsym(lib, call);
	scanf("%s",call);
	mth(call);

	dlclose(lib);
}
