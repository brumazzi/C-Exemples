#ifndef MW_H
#define MW_H

#include <QtGui>
#include <iostream>
#include <cstdlib>

#include "widget.h"
#include "tw.h"
#include "filewindow.h"

using namespace std;

class MW: public QMainWindow{
Q_OBJECT
public:
	MW(){
		cout << "#####Configurando Componentes#####" << endl;
		lateralBox = new QGroupBox(this);
		sourceBox = new QGroupBox(this);
		lateralTool = new QToolBox(lateralBox);
		file = new File();
		project = new Project();
		confirm = new QMessageBox(this);
		sourceTab = new TW(sourceBox);
		newfile = new QPushButton(file);
		openfile = new QPushButton(file);
		savefile = new QPushButton(file);
		fileDialog = new QFileDialog(this);

		lateralTool->addItem(file,QString::fromUtf8("Arquivo"));
		lateralTool->addItem(project,QString::fromUtf8("Projeto"));

		this->resize(800,600);

		setting();
		cout << "#####Todas as dependencias prontas#####" << endl;
		init();
	};

	void init(){this->showMaximized();};

	~MW(){};

	void setting(){
		confirm->setWindowTitle("Encerrar.");
		confirm->setText("Deseja sair?");
		btnyes = confirm->addButton(tr("Sair"),QMessageBox::ActionRole);
		confirm->addButton(tr("Permanecer"),QMessageBox::ActionRole);
		iconN.addFile(QString::fromUtf8("pixmaps/novo.png"));
		iconS.addFile(QString::fromUtf8("pixmaps/save.png"));
		iconL.addFile(QString::fromUtf8("pixmaps/load.png"));
		newfile->setIcon(iconN);
		openfile->setIcon(iconL);
		savefile->setIcon(iconS);
		newfile->setIconSize(QSize(72,72));
		openfile->setIconSize(QSize(72,72));
		savefile->setIconSize(QSize(70,70));
		fileDialog->setFilter(QString::fromUtf8("*.cpp *.c *.h *.hpp"));

		connections();
	};

	void connections(){
		QObject::connect(newfile,SIGNAL(clicked()),this,SLOT(showNewFile()));
		QObject::connect(openfile,SIGNAL(clicked()),sourceTab->tabBar,SLOT(index(sourceTab)));
	};
/*####################################################################################################################################*/
	void resizeEvent(QResizeEvent*){
		lateralBox->setGeometry(2,34,76,this->height()-36);
		sourceBox->setGeometry(lateralBox->width()+4,lateralBox->y(),this->width()-lateralBox->width()-4,lateralBox->height());
		lateralTool->setGeometry(2,2,lateralBox->width()-4,lateralBox->height()-4);
		sourceTab->setGeometry(2,2,sourceBox->width()-4,sourceBox->height()-4);
		newfile->setGeometry(2,2,70,70);
		openfile->setGeometry(2,newfile->height()+4,newfile->width(),newfile->height());
		savefile->setGeometry(2,openfile->height()+openfile->y()+4,newfile->width(),newfile->height());
	};

	void closeEvent(QCloseEvent* event){
		event->ignore();
		confirm->exec();
		if((QPushButton*)confirm->clickedButton() == btnyes){
			event->accept();
			cout << "#####Encerrado#####" << endl;
			system("exit");
		}
	};

	/*void keyReleaseEvent(QKeyEvent* key){};*/

public slots:
	void showNewFile(){
		newFileWin = new FW(this);
		newFileWin->init();
		if(newFileWin->resp() == true){
			fname = newFileWin->getFileName();
			sourceTab->newTab(fname);
			newFileWin->close();
		}
	};

	void showLoadFileDialog(){
/*		fileDialog->setTitle("Abrir Arquivo");
		file->setFileName(fileDialog->getOpenFileName());
		file->open(QIODevice::ReadWrite);
		sourceTab->source->()*/
	};

private:
	QGroupBox *lateralBox;
	QGroupBox *sourceBox;
	QToolBox *lateralTool;
	QMessageBox *confirm;
	File *file;
	Project *project;
	TW *sourceTab;
	QPushButton *btnyes;
	QPushButton *newfile;
	QPushButton *openfile;
	QPushButton *savefile;
	QIcon iconN;
	QIcon iconS;
	QIcon iconL;
	QFileDialog *fileDialog;
	FW *newFileWin;
	QString fname;
};

#endif
