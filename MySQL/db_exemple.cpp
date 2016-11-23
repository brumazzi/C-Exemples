#include <stdio.h>
#include <mysql.h>
#include <string>

#define SERVER "127.0.0.1"
#define USER "root"
#define PASSWORD "root"
#define DATABASE "local"

int main(){
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
		puts("Falha na conexão");
		return 0;
	}
	MYSQL_RES *res_set;
	//MYSQL_FIELD *row;
	MYSQL_ROW row;
	mysql_query(conn,"select * from usuario;");

	unsigned int i = 0;
	res_set = mysql_store_result(conn);
	unsigned int numr = mysql_num_rows(res_set);



	while ((row = mysql_fetch_row(res_set)) != NULL){
		//printf("ID:\t\t%s\nNOME:\t\t%s\nSOBRENOME:\t%s\nIDADE:\t\t%s\nNASCIMENTO:\t%s\nLOGIN:\t\t%s\nPASSWD:\t\t%s\n",row[0],row[1],row[2],row[3],row[4],row[5],row[6]);
		printf("ID: %s\nNome: %s\nIdade: %s\n",row[0], row[1], row[2]);
		/*puts(row->name);
		puts(row->table);
		printf("%d-%d\n",row->type, MYSQL_TYPE_LONG);
		printf("%d\n",row->max_length);
		printf("%d\n",row->length);
		puts("########################");*/
		/*#######################    C_INIFILE    ##########################*/
		/*setIniString("Usuario",row[0],"CODIGO",row[0]);
		setIniString("Usuario",row[0],"NOME",row[1]);
		setIniString("Usuario",row[0],"SOBRENOME",row[2]);
		setIniString("Usuario",row[0],"IDADE",row[3]);
		setIniString("Usuario",row[0],"NASCIMENTO",row[4]);
		setIniString("Usuario",row[0],"LOGIN",row[5]);
		setIniString("Usuario",row[0],"PASSWORD",row[6]);*/
	}
	mysql_close(conn);

	return 0;
}
