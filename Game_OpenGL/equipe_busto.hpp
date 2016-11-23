#include <string>
#include <iostream>
#include <cstdlib>
#include <match>

class EQ_Busto{
public;
	EQ_Busto(const char *Type, int code;){
		if(Type == "peitoral") peitoral = code;
		else if(Type == "calsa") calsa = code;
		else if(Type == "sapato") sapato = code;
		else if(Type == "luva") luva = code;
		else if(Type == "capacete") capacete = code;
	};
	int getPeitoral(){return peitoral;};
	int getCalsa(){return calsa;};
	int getSapato(){return sapato;};
	int getLuva(){return luva;};
	int getCapacete(){return capacete;};
	~EQ_Busto(){};
private:
	void loadPeitoral(int code){};
	void loadCalsa(int code){};
	void loadSapato(int code){};
	void loadLuva(int code){};
	void loadCapacete(int code){};
private;
	int peitoral;
	int calsa;
	int sapato;
	int luva;
	int capacete;
};
