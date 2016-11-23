#include <iostream>

using namespace std;

int main(int argc, char **argv){
	int valor[10][10];

	valor[10][1] = 15;
	valor[5][6] = 5;

	std::cout << "O codigo dá: " << valor[10][1] + valor[5][6] << std::endl;
	
	return 0;
}
