#include <iostream>

using namespace std;

class C{
	public:
		C(){};
		~C(){};
		static int quad(int x=1){
			cout << x*x << endl;
		};
		static void method(void){
			cout << "static method" << endl;
		};
};

int main(){
	C::method();
	C::quad();
	C::quad(2);
	return 0;
}
