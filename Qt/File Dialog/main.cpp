#include <QApplication>

#include "mw.h"

int main(int argc, char **argv){
	QApplication app(argc,argv);

	MW *frame = new MW();
	frame->setup_pack();

	return app.exec();
}
