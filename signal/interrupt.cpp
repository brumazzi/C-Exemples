#include <iostream>
#include <stdlib.h>
#include <csignal>
#include <unistd.h>

using namespace std;

void signalHandler(int signum){
	cout << "Sinal \"" << signum <<"\" interronpido." << endl;

	exit(signum);
}

int main(){
	signal(SIGINT, signalHandler);

	int x=0;
	while(++x){
		cout << "Esperando o sinal..." << endl;
		if(x==3)
			raise(SIGINT);
		sleep(1);
	}

	return 0;
}
