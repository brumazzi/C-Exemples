#ifndef __APPG__
	#define __APPG__

	#include <QtGui>

	class MW: public QFrame{
	public:
		MW(){
			QPushButton *btn = new QPushButton(this);
			btn->setText(QString("&Sair"));
			this->setGeometry(50,50,100,100);
		}
	};

#endif
