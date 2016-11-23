#include <iostream>
#include <stdlib.h>
#include <string.h>

class human{
private:
	double HP,MP,SP;
	double Fr,Ag,Df,Sf;
	string nome;
	string classe;
	int Lv;
public:
	double get_hp(){return HP;}
	double get_mp(){return MP;}
	double get_sp(){return SP;}
	double get_power(){return Fr;}
	double get_speed(){return Ag;}
	double get_defense(){return Df;}
	double get_skill(){return Sf;}
	string get_name(){return nome;}
	string get_classe(){return classe;}
	int get_level(){return Lv;}
/*############################################################################*/
	void set_hp(double hp){HP=hp;}
	void set_mp(double mp){MP=mp;}
	void set_sp(double sp){SP=sp;}
	void set_power(double p){Fr=p;}
	void set_speed(double s){Ag=s;}
	void set_defense(double d){Df=d;}
	void set_skill(double s){Sf=s;}
	void set_name(string n){nome=n;}
	void set_classe(string c){classe=c;}
	void default_data(){HP=20;MP=10;SP=10;Fr=3,Ag=2;Df=3;Sf=1;}
	void level_up(){
		Lv++;
		HP=HP+Lv*.3f;
		MP=MP+Lv*.3f;
		SP=SP+Lv*.3f;
		Fr=Fr+Lv*.15f;
		Ag=Ag+Lv*.015f;
		Df=Df+Lv*.05f;
		Sf=Sf+Lv*.02f;
	}
};

human *hm;

using namespace std;

int main(int argc, char **argv){
	string nome,classe;
	std::cout << "Entre o nome do seu char: " ;
	std::cin >> nome;
	hm.set_name(nome);
	std::cout "Entre a classe do seu char: ";
	std::cin >> classe;
	hm.set_classe(classe);
	hm.defaut_data();
	for(int x=1;x<=100;x++){/*
		cout << "#############LEVEL UP#################" << endl;
		cout << "Char: " << hm.get_name() << endl;
		cout << "Classe: " << hm.get_classe() << endl;
		cout << "Lv.: " << hm.get_level() << endl;
		cout << "HP: " << hm.get_hp()<< endl;
		cout << "MP: " << hm.get_mp() << endl;
		cout << "SP: " << hm.get_sp() << endl;
		cout << "Fr: " << hm.get_power() << endl;
		cout << "Ag: " << hm.get_speed() << endl;
		cout << "Df: " << hm.get_defense() << endl;
		cout << "Sf: " << hm.get_skill() << endl;
		system("sleep 1");*/
	}

	return 0;
}

