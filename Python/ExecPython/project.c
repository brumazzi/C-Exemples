#include <stdio.h>
#include <python2.7/Python.h>

int main(){
	FILE *pyFile;
	Py_Initialize();
		pyFile = fopen("Parametro.py","r");
		if(pyFile)
			PyRun_SimpleFile(pyFile,"Parametro.py");
		else
			printf("Arquivo não Encontrado!\n");
	Py_Finalize();

	return 0;
}
