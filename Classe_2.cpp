#include <iostream>

using namespace std;

class Hero{
public:
	Hero(){
		level = 1;
		health = 1;
		mana = 0;
		stamim = 0;
		atack = 0;
		defense = 0;
		agilit = 0;
	};
	
	void levelUp(){
		health = health + health*0.25;
		mana = mana + mana*0.15;
		stamim = stamim +stamim*0.10;
		atack = atack + 3;
		defense = defense + 2;
		agilit = agilit + 2;
		level++;
	};
	
	~Hero(){};
	
	int level;
	double health;
	double mana;
	double stamim;
	double atack;
	double defense;
	double agilit;
};

int main(){
	Hero h;
	h.health = 30;
	h.mana = 10;
	h.stamim = 15;
	h.atack = 5;
	h.defense = 4;
	h.agilit = 5;
	
	h.levelUp();h.levelUp();h.levelUp();h.levelUp();h.levelUp();h.levelUp();
	cout << "LV. " << h.level << endl;
	cout << (int)h.health << "|" << (int)h.mana << "|" << (int)h.stamim << endl;
	cout << h.atack << "|" << h.defense << "|" << h.agilit << endl;
	
	return 0;  
}