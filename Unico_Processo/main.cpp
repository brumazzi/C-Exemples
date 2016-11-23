#include <QApplication>
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#include "app.h"

MW *frame[10];
int j;

void *newWin(void *tmp){
	system("sleep 0.5");
	char **arg;
	FILE *f = fopen("data","r");
	QApplication app();
	int bf;
	fscanf(f,"%i",&bf);
	if(bf > j){
		j = bf;
		frame[j] = new MW();
		frame[j]->show();
		app.exec();
	}
}

int main(int argc, char **argv){
	//QApplication app(argc,argv);
	FILE *f;
	j = -1;

	if(fopen("data","r")){
		int v;
		f = fopen("data","r");
		fscanf(f,"%i",&v);
		f = fopen("data","w");
		fprintf(f,"%i",v+1);
		fclose(f);
		return 1;
	}else{
		f = fopen("data","w");
		fprintf(f,"0");
		fclose(f);
	}

	pthread_t l;
	pthread_create(&l,NULL,newWin,NULL);

	//frame[0] = new MW();
	//frame[0]->show();
	//app.exec();
	system("rm data");
	pthread_exit(NULL);
}
