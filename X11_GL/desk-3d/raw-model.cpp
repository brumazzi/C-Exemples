#include <vector>
#include <iostream>
#include <fstream>
#include <map>

using namespace std;

map<string, vector<double>> load_raw(const char *path){
	map<string, vector<double>> model;
	
	ifstream fin(path);
	vector<double> vv,vn,vc;
	while(true){
		double v1,v2,v3;
		double n1,n2,n3;
		double c1,c2,c3;
		char c;

		fin >> v1;
		fin >> v2;
		fin >> v3;
		fin >> n1;
		fin >> n2;
		fin >> n3;
		fin >> c1;
		fin >> c2;
		fin >> c3;

		cout << v1 << ' ' << v2 << ' ' << v3 << endl;

		vv.push_back(v1);
		vv.push_back(v2);
		vv.push_back(v3);
		vn.push_back(n1);
		vn.push_back(n2);
		vn.push_back(n3);
		vc.push_back(c1);
		vc.push_back(c2);
		vc.push_back(c3);

		model["vector"] = vv;
		model["normal"] = vn;
		model["color"] = vc;

		if(!fin.get(c)) break;
	}

	return model;
}
