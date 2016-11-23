#include <QtGui>

int main(int argc, char **argv){
	QApplication app(argc,argv);

	app.setOverrideCursor(Qt::BlankCursor);
	QMainWindow *mw = new QMainWindow();

	mw->resize(640,480);
	mw->setWindowTitle("Cursor exemple");
	mw->show();

	return app.exec();
}
