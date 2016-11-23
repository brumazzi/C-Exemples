#include <stdio.h>
#include <string.h>
#include <mysql.h>

#define SERVER "127.0.0.1"
#define USER "root"
#define PASSWORD "root"
#define DATABASE "local"

typedef struct {
	int id;
	char nome[50];
	char snome[50];
	int idade;
	char nascimento[50];
	char login[50];
	char pass[50];
}u_info;

int main(){
	u_info u;

	u.id = 2;
	strcpy(u.nome,"Nome");
	strcpy(u.snome,"SObrenome");
	u.idade = 20;
	strcpy(u.nascimento,"10-10-2010");
	strcpy(u.login,"log");
	strcpy(u.pass,"****");

	FILE *f;

	if( (f = fopen(".bank","r")) ){
		fscanf(f,"%i %s %s %i %s %s %s",&u.id,u.nome,u.snome,&u.idade,u.nascimento,u.login,u.pass);
		system("rm .bank");
		fclose(f);
	}

	MYSQL *conn;
	conn = mysql_init(NULL);
	if(!conn){
		puts("Falha na conexão");
		return 0;
	}
	conn=mysql_real_connect(conn,SERVER,USER,PASSWORD,DATABASE,0,NULL,0);
	if(conn)
		puts("Conectado com sucesso!");
	else{
		FILE *ff = fopen(".bank","w");
		fprintf(ff,"%i %s %s %i %s %s %s",u.id,u.nome,u.snome,u.idade,u.nascimento,u.login,u.pass);
		fclose(ff);
		puts("Backup salvo");
		return 0;
	}

	char buff[512];
	sprintf(buff,"insert into usuario values(%i, '%s', '%s', %i, null, '%s', '%s')",u.id,u.nome,u.snome,u.idade,u.nascimento,u.login,u.pass);
	MYSQL_RES *res_set;
	MYSQL_ROW row;
	mysql_query(conn,buff);

	unsigned int i = 0;
	if(mysql_query(conn,buff))
	//res_set = mysql_store_result(conn);
	//unsigned int numr = mysql_num_rows(res_set);

	mysql_close(conn);

	return 0;
}
