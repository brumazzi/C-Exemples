#ifndef MW_H
#define MW_H

#include <iostream>
/*#include <QMainWindow>
#include <QLabel>*/
#include <QtGui>

using namespace std;

class MW: public QMainWindow{
Q_OBJECT

public:
	QLabel *label1;
	QString size;
	MW(){};
	void setup_pack(QMainWindow *Frame){
		label1 = new QLabel(Frame);
		
		Frame->resize(800,600);

		label1->setText("Size|x|y|");
		Frame->show();
		QObject::connect(Frame,SIGNAL(resizeEvent(this)),this,SLOT(resized()));
		QStatusBar *statusbar = new QStatusBar(this);
		this->setStatusBar(statusbar);
	}
	void resizeEvent(QResizeEvent*){
		cout << this->width() << "|" << this->height() << endl;
		size = "Size|" + (QString)this->width() + "|" + (QString)this->height() + "|";
		label1->setText(QString(size));
	}
	~MW(){};

};
#endif
