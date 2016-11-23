#include <iostream>
#include <stdlib.h>
#include <QApplication>
#include <QFrame>

#include "mainwindow.h"
/**/
int main(int argc,char **argv){
	QApplication app(argc,argv);
	MainWindow *MWindow = new MainWindow();
	
	/*MWindow->resize(800,600);
	MWindow->pack(MWindow);

	MWindow->show();*/
		
	return app.exec();
}
