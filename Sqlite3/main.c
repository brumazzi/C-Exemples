#include <sqlite3.h>
#include <stdio.h>

static int callback(void *NoUsed, int argc, char **argv, char **colName){
	int i;
	for(i=0;i<argc;i++){
		printf("\n%s: %s",colName[i],argv[i] ? argv[i] : "NULL");
	}printf("\n");

	//printf("%i",NoUsed);

	return 0;
}

int main(){
	sqlite3 *db;
	char *error = 0;
	char *sql;

	if(sqlite3_open("sqlite.db",&db)){
		printf("Connection error.\n");
		return -1;
	}
int resp;
	/*sql =	"create table table_1(\n"\
		"id	int		not null,\n"\
		"name	varchar(30)	not null,\n"\
		"age	int		not null,\n"\
		"primary key(id));\n";

	int resp = sqlite3_exec(db,sql, callback, 0, &error);
	if(resp != SQLITE_OK){
		printf("SQL error: %s.\n",error);
		sqlite3_free(error);
	}else{
		printf("table created successfully.\n");
	}*/

	sql = "select * from people";

	resp = sqlite3_exec(db,sql,callback,3,&error);
	if(resp != SQLITE_OK){
		printf("SQL error: %s.\n",error);
		sqlite3_free(error);
	}

	sqlite3_close(db);
	return 0;
}
