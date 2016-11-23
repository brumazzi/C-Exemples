#include <dlfcn.h>
#include <iostream>
#include <cstdlib>
#include "class.h"

using namespace std;

int main(int argc, char **argv){
	void *handle = dlopen("./class.so",RTLD_NOW);
	ClasseSO* (*classeC)();
	if(!handle){
		cout << dlerror() << endl;
		exit(0);
	}
	classeC = (ClasseSO*(*)()) dlsym(handle, "create_class");
	if(!classeC){
		cout << "classe não encontrada." << endl;
		exit(0);
	}
	ClasseSO *classe = (ClasseSO*)classeC();
	classe->Print();

	return 0;
}
