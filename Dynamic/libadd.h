//#ifdef LIBADD_H
//#define LIBADD_H

#include <iostream>

using namespace std;

extern "C" void add(double x);

void add(double x){
	cout << x << " + " << x << " = " << x+x << endl;
}
