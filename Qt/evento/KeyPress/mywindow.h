#ifndef MYWINDOW_H
#define MYWINDOW_H
#include<QMainWindow>
#include<QMessageBox>
#include<QKeyEvent>

class MyWindow: public QMainWindow{
Q_OBJECT
  
 public :    
	void keyPressEvent(QKeyEvent* e)
	{
	      QMessageBox* box = new QMessageBox();
	      box->setWindowTitle(QString("Hello"));
	      box->setText(QString("You Pressed: ")+ QString::number(e->key()));
	      box->show();
	};
};
#endif

