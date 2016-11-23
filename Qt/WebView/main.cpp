#include <QtGui>
#include <QtCore>
#include <QWebView>

using namespace std;

class MainWidget: public QWidget{

public:
	MainWidget(){
		this->web = new QWebView(this);
		this->web->setUrl(QUrl("http://localhost:8000"));
	};
	~MainWidget(){};
private:
	void resizeEvent(QResizeEvent*){
		this->web->setGeometry(0,0,this->geometry().width(),this->geometry().height());
	}
	QWebView *web;
};

int main(int argc, char **argv){
	QApplication app(argc, argv);
	MainWidget *win = new MainWidget();

	win->showMaximized();

	return app.exec();
}
