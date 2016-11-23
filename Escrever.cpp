#include <fstream>
#include <iostream>
#include <stdlib.h>
#include <string>

using namespace std;

int main(int argc, char **argv){

	ofstream fout(argv[1]);
	char c;
	string s;
	bool x = false;
	cout << "Precione Escape e logo apos Enter para encerar." << endl;
	cout << "Digite um texto: " << endl;
	while(cin.get(c)){
		switch(c){
		case 27: x=true;
		}
		if (x == true){break;}
		s = s+c;
	}
	fout << s << std::endl;
	return 0;
}
