#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <iostream>
#include <stdlib.h>
#include <string>
#include <qpushbutton.h>
#include <QFrame>
#include <qmainwindow.h>
#include <qmessagebox.h>
#include <QHBoxLayout>

using namespace std;

class MainWindow: public Q3Frame{
Q_OBJECT

public:
	MainWindow(){};
	~MainWindow(){};
	
	void pack(Q3Frame *frame){
		QPushButton *button1 = new QPushButton(frame);
		QPushButton *button2 = new QPushButton();
		QWidget* widget = new QWidget(frame);
		widget->setSizePolicy(QSizePolicy::Expanding,QSizePolicy::Expanding);
		Q3HBoxLayout* layout = new Q3HBoxLayout(widget);

		button1->setText("Evento!");
		button2->setText("Sair");
		
		QObject::connect(button1,SIGNAL(clicked()),this,SLOT(evt_click()));
		QObject::connect(button2,SIGNAL(clicked()),this,SLOT(evt_click()));
		layout->addWidget(button1);
		frame->setWindowTitle("Função em Qt");
		button1->setGeometry(150,20,120,28);
		//button2->setGeometry(150,55,120,28);
		button2->setSizePolicy(QSizePolicy::Expanding,QSizePolicy::Expanding);
		//layout->addWidget(button1);
		layout->addWidget(button2);
		widget->show();
		frame->show();
	};
public slots:
	void evt_click(){
		cout << "\a";
		QMessageBox *msbox = new QMessageBox();
		if(((QPushButton*)sender())->text() == "Evento!"){
			msbox->setWindowTitle("Menssagem");
			msbox->setText("Evento Ativo!");
			cout << "Evento ativado!" << endl;
		}
		else{
			msbox->setWindowTitle("Finaliznado!");
			msbox->setText("Aplicação encerrada!");
			cout << "Aplicação finalizada!" << endl;
			cout << "\a";
			msbox->exec();
			exit(0);
		}
		msbox->exec();
	}

};

#endif
