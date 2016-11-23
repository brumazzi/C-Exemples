#include <libpq-fe.h>
#include <stdio.h>
#include <string.h>
#include <malloc.h>

typedef struct{
	char	_nome[50];
	char	_snome[50];
	char	_cpf[14];
	int	_idade;
}UserInfo;
int main(int argc, char **argv){
	PGconn		*pg;
	PGresult	*res;
	int		rec_count;
	int		row;
	int		col;
	UserInfo	uf;

	pg = PQconnectdb("host='localhost' user='brumazzi' dbname='object'");
	if(!pg){
		puts("Falha ao connectar");
		return -1;
	}

	res = PQexec(pg,"select * from table_user where id = 1;");

	char *data;
	for(row=0;row<PQntuples(res);row++){
		data = PQgetvalue(res,row,0);
	}

//	sscanf(data,"(\"(%[^,],%[^)])\",\"(%i,%[^)])\")",&uf._nome,&uf._snome,&uf._idade,&uf._cpf);

//	printf("Nome: %s\nSobrenome: %s\nUF: %s\nIdade: %i\nCPF: %s",uf._nome,uf._snome,uf._idade,uf._cpf);

	PQfinish(pg);

	return 0;
}
