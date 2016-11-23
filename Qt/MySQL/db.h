/*#include <QtGui>
#include <Qt/QtSql>

class DB: public QTableWidget{
Q_OBJECT
public:
	DB(){
		db = new QSqlDatabase::addDatabase("QMYSQL");
		db.setHostName("127.0.0.1:3306");
		db.setDatabaseName("sysdb");
		db.setUserName("root");
		db.setPassword("123456");
		if(!db.open())
			QMessageBox::critical(0,QObject::tr("DataBase Erro"),db.lastError().text());
		QSqlQuery query("SELECT * FROM local_sch.USER;");
		this->setColumnCount(query.record().count());
		this->setRowCount(query.size());

		int index = 0;
		while(query.next()){
			this->setItem(index,0,new QTableWidgetItem(query.value(0).toString()));
			this->setItem(index,1,new QTableWidgetItem(query.value(1).toString()));
			this->setItem(index,2,new QTableWidgetItem(query.value(2).toString()));
		}
		this->show();
	};
	~DB(){};

private:
	QSqlDatabase db;
};*/
