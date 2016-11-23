#ifndef WIDGET_H
#define WIDGET_H

#include <QtGui>
#include <iostream>

#include "ts.h"

using namespace std;

class File: public QWidget{
Q_OBJECT
public:
	File(){};

	~File(){};
private:
	
};
/**************************************************************************************************************************************/
class Project: public QWidget{
Q_OBJECT
public:
	Project(){};

	~Project(){};

};
/**************************************************************************************************************************************/
class TB: public QWidget{
Q_OBJECT
public:
	TB(QWidget *parent=0){
		setParent(parent);
		source = new TS(this);
		timer = new QTimer(this);

		QObject::connect(timer,SIGNAL(timeout()),this,SLOT(resizeComp()));
		timer->start(100);
	};
	~TB(){};
public slots:
	void resizeComp(){
		source->setGeometry(2,2,this->width()-4,this->height()-4);
	};

	void index(QTabWidget *w){
		cout << w->indexOf(this) << endl;
	};

public:
	TS *source;
private:
	QTimer *timer;
	QFile file;
};
/**************************************************************************************************************************************/
class WSource: public QWidget{
Q_OBJECT
public:
	WSource(){};

	~WSource(){};
};

#endif
