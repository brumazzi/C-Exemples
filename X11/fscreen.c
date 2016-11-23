#include <X11/Xlib.h>
#include <stdio.h>
#include <stdlib.h>

int main(){
	Display *disp = XOpenDisplay(NULL);
	Window win = DefaultRootWindow(disp);
	XSetWindowAttributes att;
	att.override_redirect = 1;
	XWindowAttributes gwa;
	XGetWindowAttributes(disp,win,&gwa);
	win = XCreateWindow(disp,win,0,0,800,600,0,NULL,InputOutput,NULL,CWBorderPixel|CWEventMask|CWOverrideRedirect,&att);

	XMapWindow(disp,win);

	XSelectInput(disp, win, ButtonPressMask | KeyPressMask);

	XEvent evt;
	char c;
	while(1){
		/*XNextEvent(disp, &evt);
		c = getch();
		printf("%i",c);
		switch(c){
			case 10:
				printf("%i",c);
				exit(0);
				break;
		}*/
	}

	return 0;
}
