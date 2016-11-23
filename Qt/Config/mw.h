#include <QtGui>
#include <iostream>
#include <fstream>
#include <string>

#include "inipt.h"

class MW: public QMainWindow{
Q_OBJECT
public:
	MW(){
		edit1 = new QLineEdit(this);
		edit2 = new QLineEdit(this);
		edit3 = new QLineEdit(this);
		msbox = new QMessageBox(this);
		btn1 = new QPushButton(this);
		btn2 = new QPushButton(this);
		this->resize(800,600);
		config();
		this->show();
	};
	
	void config(){
		double dx,dy;
		dx = edit1->width();
		dy = edit1->height();
		edit1->setGeometry(2,2,dx,dy);
		edit2->setGeometry(2,dy + 4,dx,dy);
		edit3->setGeometry(2,dy*2+6,dx,dy);
		btn1->setGeometry(2,edit3->y()+dy+2,btn1->width(),btn1->height());
		btn2->setGeometry(btn1->width()+4,btn1->y(),btn1->width(),btn1->height());
		btn1->setText("Incluir");
		btn2->setText("Recuperar");
		QObject::connect(btn1,SIGNAL(clicked()),this,SLOT(addValue()));
		QObject::connect(btn2,SIGNAL(clicked()),this,SLOT(getValue()));
	}
			
	~MW(){};
	
private slots:
	void addValues(){
		const char *file;
		file = edit1->text();
		string value;
		value = edit4->text();
		string chave;
		chave = edit2->text();
		string opt;
		opt = edit3->text();
		defIni.setValue(file,chave,opt,value);
	};
	void getValue(){
		const char file*;
		file = edit1.text();
		string chave;
		chave = edit2->text();
		string opt;
		opt = edit3->text();
		//string resp = defIni.getValue(file,chave,opt);
		//edit4->setText(QString(resp));
	};

private:
	const char *file;
	DefineConfig defIni;
	QLineEdit *edit1;
	QLineEdit *edit2;
	QLineEdit *edit3;
	QLineEdit *edit4;
	QPushButton *btn1;
	QPushButton *btn2;
	QMessageBox *msbox;

};
