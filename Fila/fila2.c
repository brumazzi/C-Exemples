#include <stdio.h>
#include <malloc.h>

typedef struct _no{
	int data;
	struct _no *next;
}FILA;

void insert_f(int data, FILA **start, FILA **end){
	FILA *swap = (FILA *) malloc(sizeof(FILA));

	if(!(*start) && !(*end)){
		swap->data = data;
		swap->next = NULL;
		*start = swap;
		*end = swap;
	}else{
		swap->data = data;
		swap->next = (*end)->next;
		(*end)->next = swap;
		*end = swap;
	}
}

char remove_f(FILA **start, FILA **end){
	FILA *swap = NULL;
	int resp;

	if(!(*start) || !(*end)){
		printf("Não há valores na fila.\n");
		return 0;
	}else if((*start) == (*end)){
		resp = (*start)->data;
		swap = *start;
		*start = NULL;
		*end = NULL;
	}else{
		resp = (*start)->data;
		swap = *start;
		(*start) = (*start)->next;
	}

	free(swap);

	return resp;
}

int main(){
	FILA *start = NULL, *end = NULL;

	srand(time(NULL));
	int data = 1;

	while(data){
		data = rand()%10;
		insert_f(data,&start,&end);
		printf("Valor inserido: %i\n",data);
	}
	while(start || end){
		printf("Valor removido: %i\n",remove_f(&start,&end));
	}

	return 0;
}
