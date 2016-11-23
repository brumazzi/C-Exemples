#include <stdio.h>
#include <python2.7/Python.h>

int main(){
	PyObject *module,*dict;
	PyObject *file,*resp;

	int val1;
	int val2;
	char *xresp;

	FILE *py;

	printf("Digite 2 valores: ");
	scanf("%i %i",&val1,&val2);

	Py_Initialize();
	module = PyImport_AddModule("__main__");
	if(!module){
		printf("Modulo Error\n");
		return -1;
	}
	dict = PyModule_GetDict(module);

	if(!dict){
		printf("Dict error\n");
		return -1;
	}
	py = fopen("file.py","r");
	PyRun_SimpleFile(py,"file.py");

	file = PyDict_GetItemString(dict,"Message");
	resp = PyObject_CallFunction(file,"ii",val1,val2);
	file = PyDict_GetItemString(dict,"printer");
	PyObject_CallFunction(file,"");
	file = PyDict_GetItemString(dict,"sum");

	xresp = PyString_AsString(resp);

	Py_Finalize();

	printf("Resposta: %s\n",xresp);

	return 0;
}
