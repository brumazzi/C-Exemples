#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sqlite3.h>

#define MAX 30

#define FINISH do {return 0;}while(0)

#define CONFIGURE_DB do {\
	char *sql;\
	int ctdb;\
	sqlite3 *db;\
	ctdb = sqlite3_open("DB_TEXTE.sqlite3",&db);\
	sql =  "CREATE TABLE user(nome varchar(30));";\
	ctdb = sqlite3_exec(db,sql,0,0,0);\
	sqlite3_close(db);\
}while(0)

int main(){
	CONFIGURE_DB;
	FILE *data = fopen("DB_TEXTE.sqlite3","r");
	if(!data) return -1;
	fclose(data);

	char *sql,nome[MAX],*end;
	int retval,i;
	int q_cnt = 5,q_size = 150, ind =0;
	char **queries = malloc(sizeof(char)*q_cnt * q_size);

	sqlite3_stmt *stmt;
	sqlite3 *handle;

	retval = sqlite3_open("DB_TEXTE.sqlite3",&handle);
	if(retval) {printf("erro no banco\n"); return -1;}

	printf("banco de dados conectado\n.");
	printf("digite o um valor para o registro.\n");
	getchar();
	fgets(nome,MAX,stdin);
	printf("%s",nome);
	i = strlen(nome)-1;
	if(nome[i] == '\n') nome[i] == '\0';

	sql = (char*)malloc(sizeof(char)*q_size);
	printf("%s.\n",sql);
	strcpy(sql,"INSERT INTO user VALUES('");
	strcat(sql,nome);
	strcat(sql,"')");

	retval = sqlite3_exec(handle,sql,0,0,0);

	sqlite3_close(handle);

	FINISH;
}
