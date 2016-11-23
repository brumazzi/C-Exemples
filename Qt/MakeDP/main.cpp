#include <QApplication>
#include <iostream>
#include <fstream>
#include <cstdlib>

#include "LsWin.hpp"

using namespace std;

int main(int argc, char **argv){
	FILE *ALLEGRO = fopen("res/alg.dp","r");
	FILE *GLADE = fopen("res/gld.dp","r");
	FILE *GLUT = fopen("res/glt.dp","r");
	FILE *QT = fopen("res/qt.dp","r");
	FILE *DPS = fopen("res/config.dps", "r");
	FILE *make = fopen("MAKE_DP","r");
	
	if(!ALLEGRO || !GLADE || !GLUT || !QT || !DPS)
		return 0;
	
	if(make){
		QApplication app(argc,argv);
		QDesktopWidget *DM = QApplication::desktop();
		LSWIN *LW = new LSWIN(DM->width(),DM->height());
		return app.exec();
	}
	else{
		system("sh MAKE_DP");
	}
	return 0;
}
