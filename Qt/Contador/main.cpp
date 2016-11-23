#include <QtGui>
#include "mw.h"

int main(int argc,char** argv){
	QApplication app(argc,argv);
	
	MW *main = new MW();

	return app.exec();	
}