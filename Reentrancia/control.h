#ifdef __GNUC__
#include <X11/X.h>
#include <X11/Xlib.h>

int _keyboard(XEvent evt,int stage){
	int x = evt.xkey.x; int y = evt.xkey.y;
	switch(evt.xkey.keycode){
		case 9: return 0;
	}
	return 1;
}

int _mouse(XEvent evt,int stage){
/*	int x = evt.xbutton.x; int y = evt.xbutton.y;
	switch(evt.xbutton.button){
		case 1:
			break;
		case 2:
			break;
		case 3:
			break;
		case 4:
			break;
		case 5:
			break;
	}*/
	return 1;
}
#endif
