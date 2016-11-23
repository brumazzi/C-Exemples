#include <stdio.h>
#include <string.h>
#include <malloc.h>

typedef struct _listElement{
	char *data;
	struct _listElement *next;
}Elemento;

typedef struct _find{
	Elemento *ini;
	int size;
}Pilha;

void _initPilha(Pilha *_p){
	_p->ini = NULL;
	_p->size = 0;
}

int _empilhar(Pilha *_p, char *datas){
	Elemento *_elemento;
	if((_elemento = (Elemento *) malloc(sizeof(Elemento))) == NULL)
		return -1;
	if((_elemento->data = (char *) malloc(50*sizeof(char))) == NULL)
		return -1;
	strcpy(_elemento->data, datas);
	_elemento->next = _p->ini;
	_p->ini = _elemento;
	_p->size++;
}

int _desempilhar(Pilha *_p){
	Elemento *_elemento;
	if(_p->size == 0) return -1;
	_elemento = _p->ini;
	_p->ini = _p->ini->next;
	free(_elemento->data);
	free(_elemento);
	_p->size--;
	return 0;
}

void _printPilha(Pilha *_p){
	Elemento *_elemento;
	int i;
	_elemento = _p->ini;

	printf("Dados em pilhados...\n");
	for(i=0;i<_p->size;i++){
		printf("|%s|\n",_elemento->data);
		_elemento = _elemento->next;
	}
}

int main(){
	Pilha *_p;

	_initPilha(_p);
	char c[2];
	printf("Entre os valores para a pilha.\n");
	while(c[0] != 0){
		scanf("%c",&c[0]);
		_empilhar(_p,c);
	}

	_printPilha(_p);
	_desempilhar(_p);
	_printPilha(_p);

	return 0;
}
