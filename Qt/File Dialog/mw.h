#include <QtGui>

class MW: public QMainWindow{
Q_OBJECT
public:
	QFile *file;
	QTextEdit *edit;
	QPushButton *button;
	QLineEdit *line_edit;
	QString last_directori;
	QFileDialog *dialog;

	MW(){};
	void setup_pack(){
		last_directori = QString("/");
		dialog = new QFileDialog();
		file = new QFile();
		edit = new QTextEdit(this);
		button = new QPushButton(this);
		line_edit = new QLineEdit(this);

		this->resize(800,600);
		line_edit->setGeometry(3,3,this->width()-3,28);
		button->setGeometry(3,33,120,28);
		edit->setGeometry(3,63,this->width()-3,this->height()-66);
		button->setText(QString("File Dialog"));
		
		QObject::connect(button,SIGNAL(clicked()),this,SLOT(open_file_dialog()));

		this->show();
	};
	~MW(){};
public slots:
	
	void open_file_dialog(){
		dialog->setFilter("Documents(*.doc *.txt *.cpp *.h *.py)");
		last_directori = dialog->getOpenFileName();
		line_edit->setText(last_directori);
		file->setFileName(last_directori);
		file->open(QIODevice::ReadWrite);
		edit->setPlainText(QString(file->readAll()));
	}
};
