#pragma once

#ifdef __GNUC__
	#include <conio.h>
#endif
#include <stdio.h>
#include <malloc.h>

typedef struct{
	unsigned int id;
	unsigned short size;
	unsigned long long int time;
}Package;

typedef struct __fila__{
	Package *pkg;
	struct __fila__ *next;
}Fila;

void insert_f(unsigned int ID, unsigned long long int time, Fila **start, Fila **end){
	Fila *swap = (Fila*) malloc(sizeof(Fila));
	Package *pkg = (Package*) malloc(sizeof(Package));

	pkg->id = ID;
	pkg->size = rand()%1024+1;
	pkg->time = time;

	swap->pkg = pkg;
	if(!(*start) || !(*end)){
		*start = swap;
		*end = swap;
	}else{
		(*end)->next = swap;
		*end = swap;
	}
	#ifdef __CONIO
		gotoxy(1,1);
	#endif
	printf("#PACOTE#INSERIDO#\nID: %i.....\nSIZE: %uKb.....\nTIME: %llims.....\n",pkg->id,pkg->size,pkg->time);
}

unsigned long long int remove_f(Fila **start, Fila **end){
	Fila *swap = NULL;
	unsigned long long int time;
	if(!(*start) || (!(*end))){
		return -1;
	}else if((*start) == (*end)){
		swap = *start;
		*start = NULL;
		*end = NULL;
		#ifdef __CONIO
			gotoxy(1,7);
		#endif
		printf("#REMOVENDO#PACOTE#\n<ID:%i>\n",swap->pkg->id);
		time = swap->pkg->time;
		free(swap);
		return time;
	}else{
		swap = *start;
		#ifdef __CONIO
			gotoxy(1,7);
		#endif
		printf("#REMOVENDO#PACOTE#\n<ID:%i>\n",swap->pkg->id);
		time = swap->pkg->time;
		*start = (*start)->next;
		free(swap);
		return time;
	}
}
