#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#include "fnc.h"

void main(void){
	srand(time(0));

	pthread_t *Pline = NULL;
	pthread_t *Cline = NULL;
	int ptmp,ctmp;
	_pack pkg = {NULL, NULL, 0, 0, 1, 0, 1, &ptmp, &ctmp};
	int prod,cons;

	printf("Quantidade de produtores e consumidores:\n");
	scanf("%i %i", &prod, &cons);
	printf("Tempo de produção e consumo:\n");
	scanf("%i %i",&ptmp, &ctmp);

	system("clear");

	Pline = (pthread_t*) malloc(prod*sizeof(pthread_t));
	Cline = (pthread_t*) malloc(cons*sizeof(pthread_t));

	pkg.quit = 0;

	int i;
	for(i=0;i<prod;i++)
		pthread_create(&Pline[i], NULL, create_pkg, &pkg);

	for(i=0;i<cons;i++)
		pthread_create(&Cline[i], NULL, destroy_pkg, &pkg);

	pthread_t lclock;
	pthread_create(&lclock, NULL, clock_pkg, &pkg);

	pthread_t lkey;
	pthread_create(&lkey, NULL, key_pkg, &pkg);

	pthread_exit(NULL);
}
