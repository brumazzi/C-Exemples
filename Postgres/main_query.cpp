#include <libpq-fe.h>
#include <stdio.h>
#include <string>
#include <string.h>
#include <iostream>
#include <malloc.h>

using namespace std;

class UserInfo{
public:
	UserInfo(PGconn *dbname){
		this->_pg = dbname;
		this->res = NULL;
	};

	void showData(const char *table){
		char sql[512];
		sprintf(sql,"select * from %s;",table);
		this->res = PQexec(this->_pg, sql);
		int i;
		char *data;
		char n[50],sn[50],cpf[14];
		int idd;
		for(i=0;i<PQntuples(this->res);i++){
			data = PQgetvalue(this->res,i,0);
			sscanf(data,"(\"(%[^,],%[^)])\",\"(%i,%[^)])\")",n,sn,&idd,cpf);
			printf("Nome: %s\nSobrenome: %s\nIdade: %i\nCPF: %s\n###########################################################\n\n",n,sn,idd,cpf);
		}
	};

	void insertData(const char *table, const char *nome, const char *snome, int idade, const char *cpf){
		char sql[512];
		sprintf(sql,"insert into %s(cl.c.nome,cl.c.snome,cl.i.idade,cl.i.cpf) values('%s','%s',%i,'%s');", table, nome, snome, idade, cpf);
		//printf("%s\n",sql);
		this->res = PQexec(this->_pg,sql);
	}

	void close(){
		PQfinish(this->_pg);
	};

	PGconn		*_pg;
	PGresult	*res;
};























































int main(int argc, char **argv){
	PGconn		*pg;

	pg = PQconnectdb("host='localhost' user='brumazzi' dbname='object'");
	if(!pg){
		cout << "Falha ao connectar" << endl;
		return -1;
	}

	UserInfo	uf(pg);

	uf.insertData("us","Gislaine","Perreira",87,"987654321-09");
	uf.showData("us");

	uf.close();

	return 0;
}

