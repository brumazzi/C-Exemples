#include <X11/X.h>
#include <stdlib.h>
#include <string.h>
#include <X11/Xlib.h>

int main(){
XSetWindowAttributes attr = { 0 };
	//attr.event_mask = event_mask;
	Display *dpy = XOpenDisplay(NULL);

	int xres=800;int yres=480;   //Pandora res
	int screen = DefaultScreen(dpy);
	Window win = XCreateWindow(dpy, RootWindow(dpy, screen),
			0, 0, xres, yres, 0,
			CopyFromParent, InputOutput,
			CopyFromParent, CWEventMask,
			&attr);
	if(!win)
	    return 0;
	/*SEB*/
	//Try to switch to fullscreen
	XEvent xev;
	Atom wm_state = XInternAtom(dpy, "_NET_WM_STATE", False);
	Atom fullscreen = XInternAtom(dpy, "_NET_WM_STATE_FULLSCREEN", True);
	memset(&xev, 0, sizeof(xev));
	xev.type = ClientMessage;
	xev.xclient.window = win;
	xev.xclient.message_type = wm_state;
	xev.xclient.format = 32;
	xev.xclient.data.l[0] = 1;
	xev.xclient.data.l[1] = fullscreen;
	xev.xclient.data.l[2] = 0;
	XSendEvent(dpy, RootWindow(dpy, screen), False,
	    SubstructureNotifyMask, &xev);

	system("sleep 2");
}
