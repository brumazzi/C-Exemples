#ifndef MW_H
#define MW_H

#include <QtGui>
#include <unistd.h>
#include <iostream>

using namespace std;

class MW: public QMainWindow{
Q_OBJECT
public:
	MW(){
		this->resize(800,600);
		label = new QLabel(this);
		timer = new QTimer();
		btn1 = new QPushButton(this);
		btn2 = new QPushButton(this);
		s=1;
		m=0;
		h=0;
		btn1->setGeometry(label->width()+2,label->y(),120,30);
		btn2->setGeometry(label->width()+2,btn1->y()+btn1->height()+2,120,30);
		btn1->setText("Iniciar");
		btn2->setText("Parar");

		QObject::connect(timer,SIGNAL(timeout()),this,SLOT(tempo()));
		QObject::connect(btn1,SIGNAL(clicked()),this,SLOT(start()));
		QObject::connect(btn2,SIGNAL(clicked()),this,SLOT(stop()));
		this->showFullScreen();
	};	
	~MW(){};

public slots:
	void start(){
		timer->start(1000);
	};
	void stop(){
		timer->stop();
	};
	void tempo(){
		label->setGeometry(this->width()/2-label->width()/2,this->height()/2-label->height()/2,label->width(),label->height());
		s++;
		if(s >= 60) {
			s = 0;
			m++;
		}
		if(m >= 60) {
			m = 0;
			h++;
		}
		label->setText("<big><big><big><big><big><big><big><big><big>"+QString(QString::number(h)+":"+QString::number(m)+":"+QString::number(s)));
		btn1->setGeometry(label->x()+label->width()+2,label->y(),120,30);
		btn2->setGeometry(label->x()+label->width()+2,btn1->y()+btn1->height()+2,120,30);
	};
private:
	QLabel *label;
	int s,m,h;
	QPushButton *btn1;
	QPushButton *btn2;
	QTimer *timer;
};


#endif
