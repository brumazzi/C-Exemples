#include <iostream>
#include <string>

#ifndef FUNCS_H
#define FUNCS_H

#include <cstdlib>

#define printer(message) do {\
	std::cout << "Escrevendo menssagem..." << std::endl;\
	system("sleep 1");\
	std::cout << "Retornando: \"" << message << "\"" << std::endl;\
	std::cout << "Menssagem Escrita com sucesso!" << std::endl;\
} while(0)

#define sum(n,m) do {\
	std::cout << "Somando " << n << " e " << m << std::endl;\
	double r = n+m;\
	system("sleep 1");\
	std::cout << "Feito!" << std::endl;\
	std::cout << "A soma é: " << r << endl;\
} while(0)

#define AUTOR do{\
	std::cout << "\033[1mAutor: Daniel Borges Brumazzi\033[0m" << std::endl;\
} while(0)

#endif

using namespace std;

int main(){
	cout << "Função_1 \"printer\"" << endl;
	string s;
	cout << "Escreva uma palavra: ";
	cin >> s;
	printer(s);
	system("sleep 1");
	cout << "#################################################################" << endl;
	cout << "Função_2 \"sum\"" << endl;
	int x,y;
	cout << "Entre um numero" << endl;
	cin >> x;
	cout << "Entre outro numero" << endl;
	cin >> y;
	sum(x,y);

	AUTOR;

	return 0;
}
