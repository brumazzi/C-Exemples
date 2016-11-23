#include <iostream>

class classe{
public: classe();
	int x;
	int y;
	int x_y(){return x+y;}
};

using namespace std;

classe::classe(){
	x = 1;
	y = 2;
}

int main(){
	classe cla;
	cout << cla.x << " " << cla.y << endl;
	cout << cla.x_y() << endl;

	return 0;
}
