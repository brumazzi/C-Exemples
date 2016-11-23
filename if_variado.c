#include <stdio.h>

int main(){
	printf("Digite um valor > 0 e < 10: ");
	int x = 0;
	scanf("%i",&x);

	char resp = x < 5? 0:1;

	if(resp) printf("Maior que 5\n");
	else printf("Menor que 5\n");

	return 0;
}
