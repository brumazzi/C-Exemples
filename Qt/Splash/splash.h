#include <QtGui>
#include <iostream>

class mySplashScreen:public QSplashScreen
{
  Q_OBJECT
  public:
    mySplashScreen():
    QSplashScreen(),    m_pDrawAngle(0)
    { 
      timer = new QTimer();
      m_pPalette = new QPalette();
      m_pConicalGradient = new QConicalGradient();  
      
      timer->start(1);      
      connect(timer,SIGNAL(timeout()),this,SLOT(animateBackground()));
    };
    ~mySplashScreen(){};
  
private:
  
  void paintEvent(QPaintEvent* event)
  {     
      QPainter painter(this);      
      painter.drawArc(width()/2-75,height()/2-75,150,150,0,16*m_pDrawAngle);
      painter.drawArc(width()/2-90,height()/2-90,180,180,0,16*m_pDrawAngle);
      painter.drawArc(width()/2-105,height()/2-105,210,210,0,16*m_pDrawAngle);
      painter.drawArc(width()/2-120,height()/2-120,240,240,0,16*m_pDrawAngle);
  };
  
private slots:
  void animateBackground()
  {      
    m_pConicalGradient->setColorAt(0.5, Qt::cyan);
    m_pConicalGradient->setColorAt(1, Qt::white);
    m_pConicalGradient->setAngle(m_pDrawAngle);
    m_pConicalGradient->setCenter(width()/2,height()/2);

    m_pBrush = new  QBrush(*m_pConicalGradient);    
    m_pPalette->setBrush(QPalette::Window,*m_pBrush);
    setPalette(*m_pPalette);
    
    m_pDrawAngle+=2;
    if(m_pDrawAngle>360)
    {
      m_pDrawAngle = 0;
    }      
  };
    
private:
  QTimer* timer;
  QPalette* m_pPalette;   
  QConicalGradient* m_pConicalGradient;  
  QBrush* m_pBrush;
  int m_pDrawAngle;
  
};
