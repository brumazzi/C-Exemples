#include <QApplication>
#include <QMainWindow>
#include "mw.h"

int main(int argc, char **argv){
	QApplication app(argc,argv);
	
	MW *frame = new MW();
	frame->setup_pack(frame);

	return app.exec();
}
