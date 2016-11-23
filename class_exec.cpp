#include <iostream>
#include <csignal>
#include <stdlib.h>

using namespace std;

class MainClass{
	public:
		MainClass(){
			signal(SIGSEGV,exit);
			cout << "Hello World!" << endl;
		}
};

MainClass main;
