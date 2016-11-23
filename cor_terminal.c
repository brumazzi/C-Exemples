#include <stdio.h>

int main(){
	/*COR DAS LETRAS*/
	printf("\033[30mCor Preta\n");
	printf("\033[1mCor Vermelha\n");
	printf("\033[32mCor Verde\n");
	printf("\033[33mCor Laranja\n");
	printf("\033[34mCor Azul\n");
	printf("\033[35mCor Magenta\n");
	printf("\033[36mCor Ciano\n");
	printf("\033[37mCor Branco\n");

	/*COR DO FUNDO*/
	
	printf("{FONTE}33[40mCor Preta\n");
	printf("{FONTE}33[41mCor Vermelha\n");
	printf("{FONTE}33[42mCor Verde\n");
	printf("{FONTE}33[43mCor Laranja\n");
	printf("{FONTE}33[44mCor Azul\n");
	printf("{FONTE}33[45mCor Magenta\n");
	printf("{FONTE}33[46mCor Ciano\n");
	printf("{FONTE}33[47mCor Branca\n");
	return 0;
}
