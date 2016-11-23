#include <fstream>
#include <iostream>

using namespace std;

int main(int argc, char **argv){
	ifstream fin("Texte de arquivo");
	
	char c;

	while(fin.get(c)){
		cout << c;
	}

	return 0;
}
