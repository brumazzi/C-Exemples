#include <stdio.h>
#include <stdlib.h>
#include <X11/Xlib.h>

int main(int argc, char**argv){
	Display *display = XOpenDisplay(NULL);

	Window window = XCreateSimpleWindow(
	display, RootWindow(display,0), 0, 0,
	600, 400, 1, BlackPixel(display, 0),
	WhitePixel(display, 0));

	XMapWindow(display, window);

	XSelectInput(display, window, ButtonPressMask | KeyPressMask); // ativa os eventos mouse e teclado

	XEvent event;
	while (1){
		XNextEvent(display, &event);
		switch(event.type) {
		case ButtonPress:
			printf("Clicked at %d,%d,%i\n", event.xbutton.x, event.xbutton.y,event.xbutton.button);
			break;
		case KeyPress:
			printf("Botão precionado. %i\n", event.xkey.keycode);
			if(event.xkey.keycode == 9) exit(0);
			break;
		}
	}

	return 0;
}
