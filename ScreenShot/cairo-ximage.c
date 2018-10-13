#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <cairo.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <time.h>

int main(int argc, char** argv) {
	int x, y;

	Display *disp;
	Window root;
	XWindowAttributes watts;
	XImage *image;
	cairo_surface_t *surface;
	unsigned int width;
	unsigned int height;
	int stride;

	srand(time(NULL));

	disp = XOpenDisplay(NULL);
	root = DefaultRootWindow(disp);
	XGetWindowAttributes(disp, root, &watts);
	width = watts.width;
	height = watts.height;

	image = XGetImage(disp, root, watts.x, watts.y, width, height, AllPlanes, ZPixmap);
	stride = cairo_format_stride_for_width(CAIRO_FORMAT_RGB24, width);
	unsigned char *data = malloc(stride * height);

	/*
	for (y = 0; y < height; ++y)
		for (x = 0; x < width; ++x) {

			unsigned long pixel = XGetPixel(image, x, y);

			unsigned char red = (image->red_mask & pixel);
			unsigned char green = (image->green_mask & pixel) >> 8;
			unsigned char blue = (image->blue_mask & pixel) >> 16;

			data[y * stride + x*4 + 0] = red;
			data[y * stride + x*4 + 1] = green;
			data[y * stride + x*4 + 2] = blue;
		}
	*/

	for(x=0; x<stride*height; x++){
		data[x + 0] = (image->data[x+0])%4;
		data[x + 1] = (image->data[x+1])%4;
		data[x + 2] = (image->data[x+2])%4;
		/*data[x + 0] = image->data[x + 1];
		data[x + 1] = image->data[x + 2];
		data[x + 2] = image->data[x + 0];*/
	}
	

	surface = cairo_image_surface_create_for_data(
			data,
			CAIRO_FORMAT_RGB24,
			width, height,
			stride);

	cairo_surface_write_to_png(
			surface,
			"test.png");


	cairo_surface_destroy(surface);
	free(data);

	return (EXIT_SUCCESS);
}
