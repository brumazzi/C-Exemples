#ifndef FILEWINDOW_H
#define FILEWINDOW_H

#include <QtGui>
#include <iostream>
#include <cstdlib>

#include "tw.h"

using namespace std;

class FW: public QDialog{
Q_OBJECT
public:
	FW(QWidget * parent = 0){
		setParent(parent);
		cout << "#####Configurando File Dialog#####" << endl;
		fset = new QGroupBox(this);
		editDir = new QLineEdit(fset);
		editFile = new QLineEdit(fset);
		label1 = new QLabel(fset);
		label2 = new QLabel(fset);
		confirm = new QPushButton(this);
		cancel = new QPushButton(this);
		error = new QMessageBox(this);
		direct = new QPushButton(fset);
		dialog = new QFileDialog();

		this->resize(500,200);
		this->setModal(true);

		settings();
		this->close();
	};

	void init(){this->exec();}

	void settings(){
		fset->setTitle("Novo Arquivo");
		confirm->setText("&Confirmar");
		cancel->setText("Cance&lar");
		label1->setText("Diretorio");
		label2->setText("Arquivo");
		error->setWindowTitle("Erro");
		error->setText("Campos não preenchidos.");

		QObject::connect(cancel,SIGNAL(clicked()),this,SLOT(ignore()));
		QObject::connect(confirm,SIGNAL(clicked()),this,SLOT(accept()));
		
	};

	bool fileNameDefine(){
		bool ch;
		dir = editDir->text();
		fname = editFile->text();
		if(dir!=NULL && fname!=NULL){
			file = dir+"/"+fname;
			ch = true;
			cout << "#####Arquivo Criado######" << endl;
		}else ch = false;
		return ch;
	};

	bool resp(){return resf;}
	QString getFileName(){return file;};

	~FW(){};

/***************************************************************************************************************************************/
	void resizeEvent(QResizeEvent*){
		confirm->setGeometry(this->width()-122,this->height()-30,120,28);
		cancel->setGeometry(confirm->x()-122,confirm->y(),120,28);
		fset->setGeometry(2,2,this->width()-4,confirm->y()-4);
		label1->setGeometry(2,20,label1->width(),label2->height());
		editDir->setGeometry(2,label1->height()+label1->y()+2,this->width()-direct->width()-12,editDir->height());
		label2->setGeometry(2,editDir->y()+editDir->height()+2,label2->width(),label2->height());
		editFile->setGeometry(2,label2->y()+label2->height()+2,editDir->width(),editFile->height());
		direct->setGeometry(editDir->width()+4,editDir->y(),direct->width(),direct->height());
	};

public slots:
	void accept(){
		if(fileNameDefine() == true){
			resf = true;
			this->close();
		}
		else{
			error->exec();
			//system("zenity --warning --text='Todos os campos devem estar preenchidos!'");
			cout << "#####Parametros invalidos#####" << endl;
		}
	};
	void ignore(){
		this->close();
		resf = false;
		cout << "#####Ação negada#####" << endl;
	};

private:
	QString dir;
	QString fname;
	QString ext;
	QString file;
	QGroupBox *fset;
	QLineEdit *editDir;
	QLineEdit *editFile;
	QLabel *label1;
	QLabel *label2;
	QPushButton *confirm;
	QPushButton *cancel;
	QPushButton *direct;
	QMessageBox *error;
	QFileDialog *dialog;
	bool resf;
};

#endif
