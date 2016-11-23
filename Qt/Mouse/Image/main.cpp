#include <QtGui>

int main(int argc, char **argv){
	QApplication app(argc,argv);
	app.setOverrideCursor(*(new QCursor(*(new QPixmap("apple-green.png")))));

	QMainWindow *mw = new QMainWindow();
	mw->setWindowTitle(QString::fromUtf8("Mouse PNG"));

	mw->resize(640,480);
	mw->show();

	return app.exec();
}
