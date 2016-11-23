#include <vector>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

int main(){
	vector<double> vecD = (vector<double>)10;
	int v = 0;

	for(int i=0;i<10;i++){
		vecD[i] = rand()%10;
	}

	cout << "Digite a posição do vetor que deseja ver: ";
	cin >> v;

	cout << vecD[v] << endl;

	return 0;
}
