#ifdef __APPLE__
#include <GLUT/glut.h>
#else
#include <GL/glut.h>
#endif
#include <iostream>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <QtGui>

using namespace std;

class player{
public:
	double get_x(){return _x;}
	double get_y(){return _y;}
	double get_speed(char x_y){
		double _speed;
		if (x_y == 'x'){_speed = sp_x;}
		if (x_y == 'y'){_speed = sp_y;}
		return _speed;
	}
	double get_healt(){return _healt;}
	double get_mana(){return _mana;}
	string get_name(){return _name;}

public:
	void set_x(double x){_x = x;}
	void set_y(double y){_y = y;}
	void set_speed_x(double spx){sp_x = spx;}
	void set_speed_y(double spy){sp_y = spy;}
	void set_healt(double h){_healt = h;}
	void set_mana(double mana){_mana = mana;}
	void set_name(string name){_name = name;}

private:
	double _x,_y;
	double sp_x,sp_y;
	double _healt,_mana;
	string _name;

};

float x=0.0f,y=0.0f,z=0.0f;
float senz=0.0f,cosx=0.0f;
float angle=0.0f;
float rotx = x+senz;
float a = 0.1f,b = 1.0f;

void action_key(int key, int x, int y){
	switch(key){
	case GLUT_KEY_LEFT:
		angle -= 0.1f;
		senz = sin(angle);
		cosx = -cos(angle);
		break;
	case GLUT_KEY_RIGHT:
		angle += 0.1f;
		senz = sin(angle);
		cosx = -cos(angle);
		break;
	case GLUT_KEY_UP:
		z += senz*.1f;
		x += cosx*0.1f;
		break;
	case GLUT_KEY_DOWN:
		z -= senz*.1f;
		x -= cosx*0.1f;
		break;
	}
	std::cout << x << "|" << y << std::endl;
	//exit(0);
}

void quit(){
	cout<<"Encerrado!"<<endl;
	exit(0);
}

void draw_objects(){
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	gluLookAt(x,1,z,cosx+x,0,senz+z,0,1,0);
//	gluLookAt(x,1,z,0,1,1,0,1,0);

	glPushMatrix();
		glColor3f(1,0,1);
		glTranslatef(0,0,0);
		//glutSolidTeapot(1);
	glPopMatrix();

	glRotated(0,0,1,0);
	glBegin(GL_QUADS);

		glColor3f(0,1,0);

		glVertex3f(-.5,-.5,0);glColor3f(1,0,0);
		glVertex3f(.5,-.5,0);glColor3f(0,1,0);
		glVertex3f(.5,.5,0);glColor3f(0,0,1);
		glVertex3f(-.5,.5,0);glColor3f(1,1,0);

		glVertex3f(-.5,-.5,0);glColor3f(1,0,1);
		glVertex3f(.5,-.5,0);glColor3f(0,1,1);
		glVertex3f(.5,-.5,.5);glColor3f(1,1,1);
		glVertex3f(-.5,-.5,.5);glColor3f(.5,0,0);

		glVertex3f(.5,-.5,.5);glColor3f(0,.5,0);
		glVertex3f(-.5,-.5,.5);glColor3f(0,0,.5);
		glVertex3f(-.5,.5,.5);glColor3f(.5,.5,0);
		glVertex3f(.5,.5,.5);glColor3f(.5,0,.5);

		glVertex3f(-.5,.5,0);glColor3f(.5,.5,.5);
		glVertex3f(.5,.5,0);glColor3f(0,.5,.5);
		glVertex3f(.5,.5,.5);glColor3f(0.5,1,0);
		glVertex3f(-.5,.5,.5);glColor3f(0,1,.5);

		glVertex3f(-.5,-.5,0);glColor3f(.5,1,.5);
		glVertex3f(-.5,-.5,.5);glColor3f(1,.5,0);
		glVertex3f(-.5,.5,.5);glColor3f(1,.5,1);
		glVertex3f(-.5,.5,0);glColor3f(0,.5,1);

		glVertex3f(.5,-.5,0);glColor3f(0.2,1,.5);
		glVertex3f(.5,-.5,.5);glColor3f(0.3,.5,0);
		glVertex3f(.5,.5,.5);glColor3f(.4,.2,.9);
		glVertex3f(.5,.5,0);

		glRotatef(45,60,0,0);

	glEnd();

	glutSwapBuffers();
}

void confirmar(){
	QMessageBox *msbox = new QMessageBox();
	QPushButton *byes;
	byes = msbox->addButton("Confirmar",QMessageBox::ActionRole);
	msbox->addButton("Cancelar",QMessageBox::ActionRole);
	msbox->setWindowTitle("Sair");
	msbox->setText("Confirmar saida?");
	msbox->exec();
	if((QPushButton*)msbox->clickedButton() == byes){
		quit();
	}
	
}

void init_rendering(){
	glEnable(GL_DEPTH_TEST);
}

void get_key_press(unsigned char key, int x, int y){
	switch(key){
	case 27:confirmar(); break;
	//case 13:rot_valuex();
	break;
	}
}

void resize(int w, int h){
	glViewport(0,0,w,h);
	glMatrixMode(GL_PROJECTION);

	glLoadIdentity();
	gluPerspective(45.0,(double)w/(double)h,1.0,20.0);
}

int main(int argc,char** argv){
	QApplication app(argc,argv);
/*
	std::cout << "Iniciando...\n";
	std::cout << "Criando objetos:					";
	player heroi;
	std::cout << "[ OK ]\n";
	std::cout << "Nome do Personagem: ";
	string new_name;
	cin >> new_name; cout << "\n";
	std::cout << "Inclusão de dados:					";
	heroi.set_name(new_name);
	heroi.set_healt(100);
	heroi.set_mana(30);
	heroi.set_x(50);
	heroi.set_y(30);
	heroi.set_speed_x(2);
	heroi.set_speed_y(2);
	std::cout << "[ OK ]\n";
	std::cout << "Pegando dados...\n Imprimindo...\n";
	std::cout << "##############################################################\n";
	std::cout << "Nome: " << heroi.get_name() << "\n";
	std::cout << "Health: " << heroi.get_healt() << "\n";
	std::cout << "Mana: " << heroi.get_mana() << "\n";
	std::cout << "##############################################################\n";
	std::cout << "Dados empressos! \n";
*/
	glutInit(&argc,argv);
	glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA);
	glutInitWindowPosition(0,0);
	glutInitWindowSize(800,600);
	glutCreateWindow("Main Game");
	init_rendering();
	glutIgnoreKeyRepeat(0);

	glutDisplayFunc(draw_objects);
	glutKeyboardFunc(get_key_press);
	//glutReshapeFunc(resize);
	glutIdleFunc(draw_objects);
	glutSpecialFunc(action_key);

	//glutFullScreen();
	glutMainLoop();
	app.exec();

	return 0;
}
