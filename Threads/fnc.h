#pragma once

#include <stdio.h>
#include "fila.h"

void *create_pkg(void *data);
void *destroy_pkg(void *data);
void *clock_pkg(void *data);
void *key_pkg(void *data);

typedef struct{
	Fila *start;
	Fila *end;
	unsigned int max;
	unsigned long long int clock;
	unsigned long long int time;
	char block;
	char quit;
	int *psleep;
	int *csleep;
}_pack;

void *clock_pkg(void *data){
	_pack *pkg = (_pack*) data;
	while(1){
		system("sleep 0.01");
		pkg->clock++;
		if(pkg->quit) break;
	}
	double time;
	time = pkg->time/((double)pkg->max);
	printf("A media do tempo dos pacotes é: %lfms\n",(double)(time));
}

void *key_pkg(void *data){
	_pack *pkg = (_pack*) data;
	char key = 0;
	#ifdef __GNUC__
		gotoxy(30,1);
		printf("Aperte <Escape> para encerrar.");
	#endif
	while(key != 27)
		key = getch();
	pkg->block = 1;
}

void *create_pkg(void *data){
	_pack *pkg = (_pack *) data;
	char swap[128];
	sprintf(swap,"sleep %i",*pkg->psleep);
	while(1){
		system((const char*)swap);
		insert_f(pkg->max, pkg->clock, &pkg->start, &pkg->end);
		pkg->max++;
		if(pkg->block) break;
	}
}

void *destroy_pkg(void *data){
	_pack *pkg = (_pack *) data;
	char swap[128];
	sprintf(swap,"sleep %i",*pkg->csleep);
	unsigned long long int t;
	while(1){
		system((const char*)swap);
		t = remove_f(&pkg->start, &pkg->end);
		if(t > 0){
			pkg->time += pkg->clock - t;
		}
		if(pkg->block == 1 && pkg->start == NULL){
			break;
		}
	}
	pkg->quit = 1;
}
