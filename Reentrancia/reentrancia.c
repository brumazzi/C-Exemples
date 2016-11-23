#include <stdio.h>
#include <stdlib.h>
#include <X11/Xlib.h>
#include <pthread.h>
#include <unistd.h>

#include "win_linux.h"

int x,w;
x11_window *win;

void window(void *display){
	w++;
	if(w < 10)
		start_window(win[w]);
	else{
		printf("Limite de janelas Excedido.");
	}
	x--;
	FILE *cf = fopen("data","w");
	fprintf(cf,"%i",x);
	fclose(cf);
	sleep(1);
	printf("%i\n",x);
	if(x == 0)
		exit(0);
}

void *newWindow(void *display){
	FILE *nf;
	x = 0;
	w = 0;
	pthread_t nl;
	int y;
	while(1){
		sleep(1);
		nf = fopen("data","r");
		fscanf(nf,"%i",&y);
		fclose(nf);
		if(y > x){
			x++;
			pthread_create(&nl,NULL,window,display);
		}
	}
}

int main(int argc, char**argv){
	void *display;
	pthread_t l;
	win = (x11_window *) malloc(10*sizeof(x11_window));
	FILE *f;
	if(!(f = fopen("data","r"))){
		f = fopen("data","w");
		fprintf(f,"1");
		fclose(f);
	}else{
		int i=0;
		f = fopen("data","r");
		fscanf(f,"%i",&i);
		f = fopen("data","w");
		fprintf(f,"%i",(i+1));
		fclose(f);
		if(i > 0)
			return 1;
	}
	pthread_create(&l,NULL,newWindow,(void *)display);

	printf("here\n");
	pthread_exit(NULL);

	return 0;
}
