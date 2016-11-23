#include <QApplication>
#include <QMainWindow>
#include "mywindow.h"
int main(int argc, char **argv)
{
	QApplication app(argc, argv);

	MyWindow *window = new MyWindow();    
    
        window->setWindowTitle(QString::fromUtf8("Handling QKeyEvent"));
        window->resize(336, 227);
	
	window->show();
	return app.exec();
}
