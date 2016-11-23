#include <stdio.h>

typedef struct{
	char nome[256];
	char fone[13];
	int idade;
}Usuario;

int main(){
	Usuario usr[5];
	int x;

	for(x=0;x<5;x++){
		printf("Nome: ");
		scanf("%s",&usr[x].nome);
		printf("Telefone: ");
		scanf("%s",&usr[x].fone);
		printf("Idade: ");
		scanf("%i",&usr[x].idade);
	}

	/*for(x=0;x<5;x++){
		printf("################################\n");
		printf("Nome:	   %s\n",usr[x].nome);
		printf("Telefone:  %s\n",usr[x].fone);
		printf("idade:	   %i\n",usr[x].idade);
		
	}*/

	while(1){
		printf("Qual resgistro deseja ver?:_");
		scanf("%i",&x);
		if(x == 0) break;
		printf("Nome:	   %s\n",usr[x-1].nome);
		printf("Telefone:  %s\n",usr[x-1].fone);
		printf("idade:	   %i\n",usr[x-1].idade);
		
	}

	return 0;
}
