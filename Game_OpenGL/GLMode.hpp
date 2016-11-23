#include <cstdlib>
#include <math.h>
#include <GL/glut.h>

#include "Messages.hpp"
#include "3D_Object.hpp"
#include "loadobj.h"
//#include "md2_import.hpp"

using namespace std;

/*##################################################EXPORTS##################################################*/

void resize(int w, int h);
void fullScreen();
void drawSceene();
void update(int value);
void initialize();
void ShowModel();

/*##################################################FUNCTIONS################################################*/

float angle;
bool full = true;
int rotate = 0;
double x=0,y=0,z=0;
BOX box;
LoadOBJ obj;
//Model_MD2 md2;

void resize(int w, int h){
	glViewport(0,0,w,h);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(45,(double)w/(double)h,1.0,200.0);
//	gluOrtho2D(90,(double)w,1.0,(double)h);
}

void fullScreen(){
	full = not full;
	if(full == false)
		glutReshapeWindow(1024,768);
	else if(full == true)
		glutFullScreen();
	glutReshapeFunc(resize);
	
}

void drawSceene(){
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	gluLookAt(4,4,0,x,y,z,0,1,0);

	glPushMatrix();
		glColor3f(.5,.5,4);
		glRotatef(rotate,0,1,0);
		glTranslatef(0,0,0);
		//glutSolidTeapot(1);
		//md2.Load("box.md2","");
	glPopMatrix();
	glColor3f(4,.5,.5);
	glRotatef(rotate,.0f,.1f,.0f);
	//obj.drawModel();
	box.draw();

	glutSwapBuffers();
	glutPostRedisplay();
}

void update(int value){
	rotate += 2;
	if (rotate > 360) rotate -=360;
	glutTimerFunc(25,update,0);
}

void initialize(){
	glMatrixMode(GL_PROJECTION);
	glMatrixMode(GL_PROJECTION);

	glLoadIdentity();
	gluPerspective(40,800/600,0.1f,500.0f);
	glMatrixMode(GL_MODELVIEW);
	glShadeModel(GL_SMOOTH);

	glClearDepth(1.0f);
	glEnable(GL_DEPTH_TEST);
	glDepthFunc(GL_LEQUAL);
	glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);

	GLfloat amb_light[] = {0.1,0.1,0.1,1.0};
	GLfloat diffuse[] = {.6,.6,.6,1};
	GLfloat specular[] = {.7,.7,.3,1};

	glLightModelfv(GL_LIGHT_MODEL_AMBIENT, amb_light);
	glLightfv(GL_LIGHT0,GL_DIFFUSE, diffuse);
	glLightfv(GL_LIGHT0,GL_SPECULAR, specular);
	glEnable(GL_LIGHT0);
	glEnable(GL_COLOR_MATERIAL);
	glShadeModel(GL_SMOOTH);
	glLightModeli(GL_LIGHT_MODEL_TWO_SIDE,GL_FALSE);
	glDepthFunc(GL_LEQUAL);
	glEnable(GL_DEPTH_TEST);
	glEnable(GL_LIGHTING);
	glEnable(GL_LIGHT0);
	glClearColor(.0f,.0f,.0,1.0f);
}
