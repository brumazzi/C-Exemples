#include <map>
#include <iostream>

using namespace std;

int main(int argc, char *argv[]){
	map<string, string> mm;

	mm["EX"]="HI!";
	mm["BOOM"]="destroy";
	mm["quickle"]="kick ass!";
	mm["explosion"]="caboom";

	for(auto pp: mm){
//	for(pair<string, string> pp: mm){
		cout << pp.first << '|' << pp.second << endl;
	}
}
