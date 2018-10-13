#include <X11/Xlib.h>
#include <cairo/cairo.h>
#include <cairo/cairo-xlib.h>
#include <assert.h>
#include <stdio.h>
#include <time.h>

int main(int argc, char *argv[]){
	Display *disp;
	Window root;
	cairo_surface_t *surf;
	int screen;
	char output[64];

	disp = XOpenDisplay(NULL);
	screen = DefaultScreen(disp);
	root = DefaultRootWindow(disp);
	surf = cairo_xlib_surface_create(disp, root,
			XDefaultVisual(disp, screen),
			XDisplayWidth(disp, screen),
			XDisplayHeight(disp, screen));

	sprintf(output, "screen-shot-%ld.png", time(NULL));
	cairo_surface_write_to_png(surf, output);
	cairo_surface_destroy(surf);

	XCloseDisplay(disp);
	return 0;
}
