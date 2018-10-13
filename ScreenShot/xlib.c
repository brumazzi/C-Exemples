#include <X11/X.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <stdio.h>
#include <malloc.h>
#include <string.h>
#include <png.h>
#include <time.h>

int main(int argc, char *argv[]){
	Display *disp;
	Window root;
	XWindowAttributes attr;
	XImage *img;
	unsigned char *pixels;

	disp = XOpenDisplay(NULL);
	root = XDefaultRootWindow(disp);
	XGetWindowAttributes(disp, root, &attr);

	/* Get image from screen */
	img = XGetImage(disp, root , 0, 0, attr.width, attr.height, AllPlanes, ZPixmap);
	const int IMG_LEN = attr.width*attr.height;
	pixels = malloc(IMG_LEN*3);

	/* put img pixels in pixels variant */
	for(unsigned long long int x=0; x<IMG_LEN; x+=3){
		pixels[x]	= img->data[x];
		pixels[x+1]	= img->data[x+1];
		pixels[x+2]	= img->data[x+2];
	}

	/* save png image */
	FILE *fpng;
	png_structp png;
	png_infop png_inf;
	png_bytep row;

	char fname_buff[64];
	sprintf(fname_buff, "screenshot-%ld.png", time(NULL));
	fpng = fopen(fname_buff, "w");
	png = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
	png_inf = png_create_info_struct(png);
	setjmp(png_jmpbuf(png));

	png_init_io(png, fpng);
	png_set_IHDR(png,
			png_inf,
			attr.width,
			attr.height,
			8, PNG_COLOR_TYPE_RGB,
			PNG_INTERLACE_NONE,
			PNG_COMPRESSION_TYPE_BASE,
			PNG_FILTER_TYPE_BASE);
	png_text png_title;
	png_title.compression = PNG_TEXT_COMPRESSION_NONE;
	png_title.key = "Title";
	png_title.text = "SShot";
	png_set_text(png, png_inf, &png_title, 1);

	png_write_info(png, png_inf);

	//row = (png_bytep) malloc(attr.width*3);

	for(int i=0; i < attr.height*3; i++){
		//strncpy(pixels+(attr.width*i), row, attr.width);
		png_write_row(png, &pixels[i*attr.width]);
	}


	png_write_end(png, NULL);

	fclose(fpng);
	png_free_data(png, png_inf, PNG_FREE_ALL, -1);
	png_destroy_write_struct(&png, (png_infopp) NULL);
	free(row);
	free(pixels);

	return 0;
}
