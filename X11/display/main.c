#include <stdio.h>
#include <stdlib.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xos.h>
#include <X11/Xatom.h>
#include <X11/keysym.h>

int main(int argc, char *argv[]){
	Display *dis = XOpenDisplay(NULL);
	Window win = XCreateSimpleWindow(dis, RootWindow(dis, 0), 1, 1, 1366, 768, 0, BlackPixel(dis, 5), BlackPixel(dis, 3));
	XMapWindow(dis, win);
	XFlush(dis);
	sleep(5);
	return 1;
}
