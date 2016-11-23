#include <iostream>

using namespace std;

namespace NS{
	static int x = 0;
	void print(){
		cout << NS::x << endl;
	}
}

int main(){
	NS::x = 15;
	NS::print();

	return 0;
}
