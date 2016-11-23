#ifndef INIPT_H
#define INIPT_H
#include <iostream>
#include <fstream>
#include <string>

using namespace std;

class DefineConfig{
public:
	void SetConfig(){
		id_chave = false;
		c_l = false;
		c_c = false;
		find_s = false;
		ch = "";
		txt = "";
		pt = "";
		stp = 0;
	};
	string GetValue(const char *fname, string chave, string prop){
		file.open(fname);
		file.clear();
		file.seekg(0,ios::beg);
		if(!file) {return "";file.close();}
		SetConfig();
		while(file.get(carac)){
			if(carac == 91 && id_chave == false)
				id_chave = true;
			else if(carac == 93 && id_chave == true)
				id_chave = false;
			if(carac == 61){
				//c_c = false;
				//c_l = true;
			}
			else if(carac == 59){
				c_l = false;
				c_c = true;
				pt = "";
			}
			else if(carac == 91)
				c_c = false;
			/*############################################################################*/
			if(id_chave == true && carac != 91)
				ch = ch + carac;
			if(id_chave == false && ch == chave && carac == 93){
				c_c = true;
				//cout << ch << endl;
				ch = "";
				find_s = true;
			}
			if(c_c == true && carac != 93 && carac != 59 && carac != 125)
				pt = pt + carac;
			if(pt == prop && c_c == true){
				c_l = true;
				c_c = false;
				pt = "";
			}
			if(carac != 61 && c_c == false && c_l == true && carac != 125){
				if(stp > 0)
					txt = txt + carac;
				stp++;
			}
			if(find_s == true && carac == 125){
				file.close();
				return txt;
			}
		}
		file.close();
		return txt;
	};
	
	int SetValue(const char *fname, string chave, string campo, string value){
		string fileText;
		SetConfig();
		file.open(fname);
		file.clear();
		file.seekg(0,ios::beg);
		id_chave = true;
		if(file){
			while(file.get(carac)){
				fileText = fileText + carac;
				if(id_chave == true)
					ch = ch + carac;
				if(carac == 93)
					id_chave == false;
				if(ch != "["+chave+"]" && id_chave == false)
					return 0;
				if(carac == 61)
					c_c = false;
				else if(carac == 93)
					c_c = true;
				else if(c_c == true){
					pt = pt + carac;
				}
			}
		if(pt == campo){
					return 0;
			}
		else {
			cout << "|" << pt << endl;
			nfile.open(fname);
			nfile << fileText + campo + "=" + value + ";";
		}
		}
		else if(!file){
			nfile.open(fname);
			nfile << "[" + chave + "]" + campo + "=" << value << ";";
			nfile.close();
			return 1;
		}
		cout << fileText << endl;
		nfile.close();
		return 1;
	};

private:
	string txt,pt,ch;
	char carac;
	bool c_l, c_c,id_chave,find_s;
	ifstream file;
	ofstream nfile;
	int stp;
	
};
#endif