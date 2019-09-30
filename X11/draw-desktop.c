#include <assert.h>
#include <stdio.h>
#include <X11/Xlib.h>
#include <cairo.h>
#include <cairo-xlib.h>

#include <unistd.h>

int get_windows(Display *disp, Window root, int scr);

int width, height;

typedef struct rect_info{
	unsigned short x,y;
	unsigned short w,h;
	float r,g,b;
}rect_info;

void draw(cairo_t *cr, rect_info rect) {
	cairo_set_source_rgb(cr, rect.r, rect.g, rect.b);
	cairo_rectangle(cr, rect.x, rect.y, rect.w, rect.y);
	cairo_fill(cr);
}

int main() {
	Display *d = XOpenDisplay(NULL);
	assert(d);

	int s = DefaultScreen(d);
	Window w = RootWindow(d, s);
	width = DisplayWidth(d, s);
	height = DisplayHeight(d, s);

	cairo_surface_t *surf = cairo_xlib_surface_create(d, w,
			DefaultVisual(d, s),
			width, height);
	cairo_t *cr = cairo_create(surf);

	XSelectInput(d, w, ExposureMask);

	rect_info rect;
	rect.x = 30;
	rect.y = 30;
	rect.w = 100;
	rect.h = 100;
	rect.r = 0.0;
	rect.g = 0.2;
	rect.b = 0.0;
	draw(cr, rect);

	XEvent ev;
	while (1) {
		XNextEvent(d, &ev);
		printf("Event!\n");
		//if (ev.type == Expose) {
			draw(cr, rect);
		//}
	}

	cairo_destroy(cr);
	cairo_surface_destroy(surf);
	XCloseDisplay(d);
	return 0;
}
