#include <iostream>
#include <string>

using namespace std;

int main(){
	string s;
	s = "Escrevendo uma menssagem!";

	string m(s,5);
	string n(s,5,6);

	std::cout << "|" << m << "|" << n << "|" << std::endl; 

	return 0;
}
