#ifndef TW_H
#define TW_H

#include <QtGui>
#include <iostream>
#include <cstdlib>

#include "widget.h"

using namespace std;

class TW: public QTabWidget{
Q_OBJECT
public:
	TW(QWidget *parent){
		cout << "#####Gerando Text Source#####" << endl;
		TABN = 0;
		this->setParent(parent);
		timer = new QTimer(this);
		this->setTabsClosable(true);
		tabBar = new TB();
		this->addTab(tabBar,"new file.cpp");

		QObject::connect(this,SIGNAL(tabCloseRequested(int)),this,SLOT(closeTab(int)));
		QObject::connect(timer,SIGNAL(timeout()),this,SLOT(resize_comp()));
		timer->start(100);
	};

	~TW(){};

	void close(int index){
		this->removeTab(index);
		cout << "#####Aba Encerrada#####" << endl;
	};

	void indexTab(int index){
		system("zenity --warning --text='Todos os campos devem estar preenchidos!'");
		cout << index << endl;
	}

	void newTab(QString filename){
		TABN++;
		tabBar = new TB();
		this->addTab(tabBar,filename);
		newFile = filename;
	};

	TB *tabBar;

public slots:
	void closeTab(int index){
		close(index);
		cout << TABN << endl << index << endl << this->count() << endl;
		int n = TABN-this->count()+index;
		cout << "o numero é " << n << endl;
	};

	void resize_comp(){
	};

	void sourceIndex(){
		cout << this->indexOf(tabBar) << endl;
	};

private:
	QTimer *timer;
	QString newFile;
	int TABN;
};

#endif
