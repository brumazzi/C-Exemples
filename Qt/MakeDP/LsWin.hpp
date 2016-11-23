#ifndef __LSWIN__
#define __LSWIN__

#include <QtGui>
#include <cstdlib>

class LSWIN: public QMainWindow{
Q_OBJECT
public:
	LSWIN(int x, int y){
		editFile = new QLineEdit(this);
		label = new QLabel(this);
		allegro = new QPushButton(this);
		glade = new QPushButton(this);
		glut = new QPushButton(this);
		qt = new QPushButton(this);
		sync = new QPushButton(this);
		
		defB[0] = allegro->width();
		defB[1] = allegro->height();
		
		initPack();
		events();
		
		this->setGeometry((x/2)-(this->width()/2),(y/2)-(this->height()/2),this->width(),this->height());
		
		this->show();
	};
	
	void initPack(){
		label->setText(QString::fromUtf8("Nome do Projeto: "));
		allegro->setText(QString::fromUtf8("Allegro"));
		glade->setText(QString::fromUtf8("Glade"));
		glut->setText(QString::fromUtf8("Glut"));
		qt->setText(QString::fromUtf8("Qt"));
		sync->setText(QString::fromUtf8("Syncronizar"));
		
		this->setGeometry(0,0,editFile->width()+4,sync->y()+defB[1]);
		
		label->setGeometry(2,2,label->width()+10,label->height());
		editFile->setGeometry(2,label->height()+4,editFile->width()+50,editFile->height());
		allegro->setGeometry((this->width()/2)-(defB[0]/2),editFile->y()+editFile->height()+1,defB[0],defB[1]);
		glade->setGeometry((this->width()/2)-(defB[0]/2),allegro->y()+allegro->height()+1,defB[0],defB[1]);
		glut->setGeometry((this->width()/2)-(defB[0]/2),glade->y()+glade->height()+1,defB[0],defB[1]);
		qt->setGeometry((this->width()/2)-(defB[0]/2),glut->y()+glut->height()+1,defB[0],defB[1]);
		sync->setGeometry((this->width()/2)-(defB[0]/2),qt->y()+qt->height()+1,defB[0],defB[1]);
		this->resize(editFile->width()+4,sync->y()+defB[1]);
	};
	
	void events(){
		QObject::connect(allegro,SIGNAL(clicked()),this,SLOT(allegroF()));
		QObject::connect(glade,SIGNAL(clicked()),this,SLOT(gladeF()));
		QObject::connect(glut,SIGNAL(clicked()),this,SLOT(glutF()));
		QObject::connect(qt,SIGNAL(clicked()),this,SLOT(qtF()));
		QObject::connect(sync,SIGNAL(clicked()),this,SLOT(syncF()));
	};
	
	void resizeEvent(QResizeEvent*){
		label->setGeometry((this->width()/2)-(label->width()/2),2,label->width(),label->height());
		editFile->setGeometry((this->width()/2)-(editFile->width()/2),label->height()+4,editFile->width(),editFile->height());
		allegro->setGeometry((this->width()/2)-(defB[0]/2),editFile->y()+editFile->height()+1,defB[0],defB[1]);
		glade->setGeometry((this->width()/2)-(defB[0]/2),allegro->y()+allegro->height()+1,defB[0],defB[1]);
		glut->setGeometry((this->width()/2)-(defB[0]/2),glade->y()+glade->height()+1,defB[0],defB[1]);
		qt->setGeometry((this->width()/2)-(defB[0]/2),glut->y()+glut->height()+1,defB[0],defB[1]);
		sync->setGeometry((this->width()/2)-(defB[0]/2),qt->y()+qt->height()+1,defB[0],defB[1]);
		if(this->height() > sync->y()+defB[1]+2)
			this->resize(this->width(),sync->y()+defB[1]+2);
	};
	
	~LSWIN(){};

public slots:
	void allegroF(){
		system("sh config.dps allegro");
	};
	void gladeF(){
		system("sh config.dps glade");
	};
	void glutF(){
		system("sh config.dps glut");
	};
	void qtF(){
		system("sh config.dps qt");
	};
	void syncF(){
		//system("zenity --warning --text='Opição não disponivel no momento.'");
	};
	
private:
	QLineEdit *editFile;
	QLabel *label;
	QPushButton *allegro;
	QPushButton *glade;
	QPushButton *glut;
	QPushButton *qt;
	QPushButton *sync;
	int defB[1];
};

#endif
