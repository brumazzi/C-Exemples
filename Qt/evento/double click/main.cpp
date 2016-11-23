#include <QApplication>
#include <QMainWindow>
#include <QMouseEvent>
#include <QMessageBox>


class myMainWindow: public QMainWindow
{   
  QMessageBox* msgBox;
  public:    
	myMainWindow()
	{};
	~ myMainWindow(){};
	
	void mouseDoubleClickEvent ( QMouseEvent * event )
	{
	    msgBox = new QMessageBox();
	    msgBox->setWindowTitle("Hello");
	    msgBox->setText("You Double Clicked Mouse Button");
	    msgBox->show();	  

	}; 

};

int main(int argc, char **argv)
{
	QApplication app(argc, argv);

	myMainWindow *window = new myMainWindow();

        window->setWindowTitle(QString::fromUtf8("QT - Capture Mouse Double Click"));
        window->resize(300, 250);
	
	window->show();
	return app.exec();
}
