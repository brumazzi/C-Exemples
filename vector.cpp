#include <vector>
#include <iostream>

using namespace std;

int main(){
	vector<char> str;
	char c;
	while(c != 'x'){
		cin >> c;
		str.push_back(c);
	}

	cout << str.size() << endl;
	cout << str.max_size() << endl;
	cout << str.at(0) << endl;
	cout << str[0] << endl;
	cout << str.front() << endl;
	cout << str.back() << endl;

	auto pos = str.begin();
	str.erase(pos, pos+1);
	
	cout << str.size() << endl;
	cout << str.data() << endl;
	cout << str.capacity() << endl;

	/*while(!str.empty()){
		str.pop_back();
	}*/

	str.clear();

	cout << str.size() << endl;
	cout << str.data() << endl;
}
