#include <iostream>
#include <stdlib.h>
#include <string>

using namespace std;

int main(int argc, char **argv){
	string parm;

	std::cout << "################################################################################" << std::endl;	
	std::cout << argc << std::endl;
	std::cout << "################################################################################" << std::endl;
	std::cout << argv[1] << std::endl;
	std::cout << "################################################################################" << std::endl;

	std::cout << argc << " parametros existentes" << endl;
	
	if(argc > 1){
	parm = argv[1];}
	else{exit(0);}

	if (parm == "g"){std::cout << "Parametro Aceito" << std::endl;}
	else {std::cout << "Erro: Parametro não encontrado." << std::endl;}

	return 0;
}
