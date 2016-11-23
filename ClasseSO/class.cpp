#include <iostream>
#include <cstdlib>
#include "class.h"

using namespace std;

extern "C" ClasseSO* create_class(){
	return new ClasseSO;
}

ClasseSO::ClasseSO(){
	x = 20;
}

void ClasseSO::Print(){
	cout << "Valor de \"x\" é " << x << "." << endl;
	system("zenity --error --text='Uma menssagem de error!'");
} 
