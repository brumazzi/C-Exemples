#include "splash.h"

int main(int argc,char ** argv)
{
    QApplication app(argc,argv);    
    mySplashScreen* splash = new mySplashScreen();        
    splash->setFixedSize(500,500);           
    splash->show(); 
    
    return app.exec();  
};
