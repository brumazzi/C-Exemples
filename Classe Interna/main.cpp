#include <stdio.h>
#include <stdlib.h>

class Externa{
public:
	Externa(){printf("Classe Externa Criada.\n");};
	~Externa(){printf("Classe Externa Destruida.\n");};
	class Interna{
	public:
		Interna(){printf("Classe Interna Criada.\n");};
		~Interna(){printf("Classe Interna Destruida.\n");};
		void Menssage(){printf("Escrevendo Menssagem.\n");};
	};
	//Interna interna;
};

int main(){
	Externa externa();
	
	Externa::Interna interna();
//	interna.Menssage();


	system("sleep 2");

//	delete externa;

	return 0;
}
