#ifndef __REENT__
	#define __REENT__

	typedef struct{
		Display			*dpy;
		Window			root;
		XVisualInfo		*vi;
		Colormap		cmap;
		XSetWindowAttributes	swa;
		Window			win;
		GLXContext		glc;
		XWindowAttributes	gwa;
		XEvent			xevt;
	}x11_window;
#endif
