#include <stdio.h>

enum __fruits{
	Orange,
	Apple,
	Lemon,
	Melon
}Fruits;

void main(){
	printf("Digite um numero de 1 a 4: ");
	scanf("%i",&Fruits);
	if(Fruits >= Orange && Fruits <= Melon){
		printf("Dentro.\n");
	}else
		printf("Fora.\n");
	printf("Melão: %i\n",Melon);
}
