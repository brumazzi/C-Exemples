#include <tk.h>
#include <tcl.h>

int main(int argc, char **argv){
	Tcl_Interp *inter = Tcl_CreateInterp();

	Tk_Init(inter);
	Tk_MainLoop();

	return 0;
}
