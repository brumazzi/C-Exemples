#ifndef TS_H
#define TS_H

#include <QtGui>

class TS: public QTextEdit{
Q_OBJECT
public:
	TS(QWidget* parent=0){
		setParent(parent);
	};
	~TS(){};

public slots:
	//void loadFile(QFile file){};
	//void saveFile(QFile file){};
};

#endif
