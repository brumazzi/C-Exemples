#include <X11/Xlib.h>
#include <stdio.h>

int main(int argc, char *argv[]){
	Display *disp = XOpenDisplay(NULL);
	Window root = XDefaultRootWindow(disp);
	int scr = XDefaultScreen(disp);

	Window w_parent;
	Window w_childs[64];
	unsigned int n_childs;

	sleep(2);
	XQueryTree(disp, root, &root, &w_parent, &w_childs, &n_childs);
	sleep(2);

	printf("%d\n", n_childs);

	XCloseDisplay(disp);

	sleep(10);


	return 0;
}
