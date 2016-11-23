#include <iostream>
#include <cstdlib>
#include <dlfcn.h>

using namespace std;

void error(){
	cout << "Erro de função." << endl;
	exit(0);
}

int main(){
	void *handle;
	handle = dlopen("./fnc.so", RTLD_NOW);
	if(!handle){
		cerr << dlerror() << endl;
		exit(0);
	}
	float (*soma)(float n1,float n2);
	float (*subt)(float n1,float n2);
	float (*divi)(float n1,float n2);
	float (*mult)(float n1,float n2);
	char (*msg)();
	soma = (float(*)(float n1,float n2)) dlsym(handle,"som");
	subt = (float(*)(float n1,float n2)) dlsym(handle,"sub");
	divi = (float(*)(float n1,float n2)) dlsym(handle,"div");
	mult = (float(*)(float n1,float n2)) dlsym(handle,"mut");
	msg = (char(*)()) dlsym(handle,"mes");
	if(!divi) error();
	//if(!subt) error();
	//if(!soma) error();
	//if(!mult) error();
	//if(!msg) error();
	cout << divi(5,5) << endl;
	dlclose(handle);
};
