#include <vector>
#include <iostream>

int main(int argc, char *argv[]){
	auto lamb = [](unsigned int x){std::cout << x*x << std::endl;};

	lamb(7);

	return 0;
}
