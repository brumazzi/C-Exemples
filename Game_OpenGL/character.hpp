#include <string>
#include <iostream>
#include <cstdlib>
#include <math>
#include "equipe_busto.hpp"

class Character{
public:
	void setName(std::string N){nome = N;};
	void setClass(std::string C){classe = C};
	void setHP(double H){HP = H;};
	void setMP(double M){MP = M;};
	void setSP(double S){SP = S;};
	void setAtack(double A){ativa = A;};
	void setDefensa(double D){passiva = D};
	void setDextreza(double D){dextreza = D};
	void setSorte(double S){sorte = S;};
	void setMagia(double M){magia = M;};
	void setTecnic(double T){tecnica = T;};
	void setPosx(double x){posx = x;};
	void setPosy(double y){posy = y;};
	void setPosz(double z){posz = z;};
	void setPassos(double P){passos = P;};
	void setO2(double O){O2 = O;};
public:
	std::string getName(){return nome;};
	std::string getClass(){return classe;};
	double getHP(){return HP;};
	double getMP{return MP;};
	double getSP{return SP;};
	double getAtack(return ativa;){};
	double getDefensa(){return passiva;};
	double getDextreza(){return dextreza;};
	double getSorte(){return sorte;};
	double getMagia(){return magia;};
	double getTecnic(){return tecnica;};
	double getPosx(){return posx;};
	double getPosy(){return posy;};
	double getPosz(){return posz;};
	int getPassos(){return passos;};
	double getO2(){return O2;};

private:
/*#########################################################STATUS##############################################################*/
	std::string nome;
	std::string classe;
	double HP;
	double MP;
	double SP;
	double ativa;
	double passiva;
	double dextreza;
	double sorte;
	double magia;
	double tecnica;
/*#############################################################################################################################*/
	double posx;
	double posy;
	double posz;
	int passos;
	double O2;
/*#####################################################CORPO###################################################################*/
	int cabelo;
	int rosto;
	int olhos;
	int nariz;
	int orelha;
	int boca;
	int busto;
	int statura;
	double peso;
/*####################################################EQUIPAMENTO##############################################################*/
	int peito;
	int pernas;
	int escudo;
	int espada;
	int luva;
	int capacete;
	int sapato;
	bool eq_escudo;
	bool eq_espada;
	int direita;
	int esquerda;
};
