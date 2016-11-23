#include <QApplication>
#include "mw.h"

int main(int argc,char** argv){
	QApplication app(argc,argv);

	MW *root = new MW(); 

	return app.exec();
}
