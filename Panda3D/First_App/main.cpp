#include "panda3d/pandaFramework.h"
#include "pandaSystem.h"

int main(int argc, char *argv[]){
	PandaFramework pf;
	pf.open_framework(argc, argv);
	pf.set_window_title("");
	WindowFramework *window = pf.open_window();

	pf.main_loop();
	pf.close_framework();
	return 0;
}
