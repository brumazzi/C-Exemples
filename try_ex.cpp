#include <stdio.h>

int main(){
	int x = 10;
	printf("Digite um numero: ");
//	try{
		scanf("%i",&x);
		printf("Imprimindo Valor: %i\n",x);
//	} catch(const char *error){
		printf("Valor não valido.\n");
//	}
	return 0;
}
