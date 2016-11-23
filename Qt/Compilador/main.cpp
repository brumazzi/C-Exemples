#include <QtGui>
#include <iostream>
#include <fstream>
#include <string>

#include "mw.h"

using namespace std;

/**************************************/

int main(int argc, char **argv){
	QApplication app(argc,argv);

	MW *frame = new MW();

	return app.exec();
}
