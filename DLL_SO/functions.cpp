#include <iostream>
#include <cstdlib>
#include <string>

using namespace std;

extern float sub(float n1, float n2);
extern float som(float n1, float n2);
extern float div(float n1, float n2);
extern float mut(float n1, float n2);
extern char mes(const char *ms);

float sub(float n1, float n2){
	return (n1-n2);
}

float som(float n1, float n2){
	return (n1+n2);
}

float div(float n1, float n2){
	system("zenity --error --text='Impriso'");
	return (n1/n2);
}

float mut(float n1, float n2){
	return (n1*n2);
}

char mes(){
	const char *ms = "zenity --error --text='Impressa!'";
	system(ms);
	return 0;
}
