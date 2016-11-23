#include <QtGui>

class myMainWindow: public QMainWindow
{   
  public:
  QMessageBox* msgBox;
  
  public:    
	myMainWindow():QMainWindow()
	{};
	~ myMainWindow(){};
	
	void closeEvent ( QCloseEvent * event )
	{  
	    event->ignore();	    
	    //Setting parent will keep messagebox in the center of QMainWindow
	    msgBox = new QMessageBox(this);
	    msgBox->setWindowTitle("Warning");
	    msgBox->setText("Are you sure you want to exit?");    
	    
	    QPushButton *yesButton = msgBox->addButton(tr("Yes"), QMessageBox::ActionRole);
	    msgBox->addButton(tr("No"), QMessageBox::ActionRole);  
	    msgBox->exec();  
	    
	    //If user clicks 'Yes'  button , accept QCloseEvent (Close Window)
	    if ((QPushButton*)msgBox->clickedButton() == yesButton) 
	    {
		event->accept();
	    }
	}; 

};

int main(int argc, char **argv)
{
	QApplication app(argc, argv);

	myMainWindow *window = new myMainWindow();

        window->setWindowTitle(QString::fromUtf8("QT - Capture Mouse Release"));
        window->resize(300, 250);
	
	window->show();
	return app.exec();
}

