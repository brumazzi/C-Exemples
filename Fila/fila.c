#include <stdio.h>
#include <malloc.h>

typedef struct _fila{
	int data;
	struct _fila *next;
}FILA;

FILA *invert_p(FILA *fila);
void insert_p(int data, FILA **fila);

void insert_p(int data, FILA **fila){
	FILA *swap = (FILA*) malloc(sizeof(FILA));
	swap->data = data;
	swap->next = *fila;
	*fila = swap;
}

void insert_f(int data, FILA **fila){
	FILA *swap = (FILA*) malloc(sizeof(FILA));
	FILA *floap = invert_p(*fila);

	swap->data = data;
	swap->next = floap;
	floap = invert_p(swap);

	*fila = floap;
}

int remove_f(FILA **fila){
	FILA *swap = *fila;
	if(!swap){
		printf("Não há informações na pilha.\n");
		return 0;
	}
	int resp = swap->data;
	*fila = (*fila)->next;
	free(swap);

	return resp;
}

FILA *invert_p(FILA *fila){
	FILA *swap = fila;
	FILA *floap = NULL;

	while(swap){
		insert_p(swap->data,&floap);
		remove_f(&swap);
	}
	return floap;
}

int main(){
	FILA *fila = NULL;
	int data=1;
	srand(time(NULL));

	while(data){
		data=rand()%10;
		insert_f(data,&fila);
		printf("Inserindo valor: %i\n",data);
	}
	printf("#########################################\n");
	while(fila)
		printf("Removendo valor: %i\n",remove_f(&fila));

	return 0;
}
