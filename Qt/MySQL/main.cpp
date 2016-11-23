/*#include <QApplication>

#include "mw.h"
#include "db.h"

int main(int argc, char **argv){
	QApplication app(argc,argv);

	//MW Frame = new MW();
	DB database = new DB();

	return app.exec();
}*/

#include <QtGui>
#include <Qt/QtSql>
int main(int argc,char* argv[])
{
    QApplication app(argc,argv);
    QTableWidget* table = new QTableWidget();
    table->setWindowTitle("Connect to Mysql Database Example");   
    
    QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL");
    db.setHostName("127.0.0.1:3306");
    db.setDatabaseName("local");
    db.setUserName("root");
    db.setPassword("daniel21");
    if (!db.open()) 
    {
      QMessageBox::critical(0, QObject::tr("Database Error"),
			    db.lastError().text());    
    }
    
    /*QSqlQuery query("SELECT * FROM test");   
    
    table->setColumnCount(query.record().count());
    table->setRowCount(query.size());
    
    int index=0;
    while (query.next()) 
    {      
	table->setItem(index,0,new QTableWidgetItem(query.value(0).toString()));
	table->setItem(index,1,new QTableWidgetItem(query.value(1).toString()));	
	index++;
    }*/
    
    table->show();
    return app.exec();
}
