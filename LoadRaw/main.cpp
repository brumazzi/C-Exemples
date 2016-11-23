#ifdef __APPLE__
#include <GLUT/glut.h>
#else
#include <GL/glut.h>
#endif
/*##########################################################################################*/
#include <iostream>
#include <stdlib.h>
#include <string>
#include <math.h>

#include "key_mos.hpp"
#include "loadraw.h"
#include "3D_Object.hpp"
#include "cube.h"

void initLightAndMaterial(void);

static float lmodel_twoside[] =
{GL_TRUE};
static float lmodel_oneside[] =
{GL_FALSE};

float angle;
bool full = true;
int rotate = 0;
double x=0,y=0,z=0;
ModelRaw raw;
BOX b;
GLUquadricObj *quadObj;

void
setMatrix(void)
{
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  glOrtho(-15.0, 15.0, -15.0, 15.0, -10.0, 10.0);
  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity();
}

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
	glClearColor(0.6,0.6,0.6,0);

	gluLookAt(0,5,5,x,y,z,0,1,0);

	glPushMatrix();
		glColor3f(1,.8,.8);
		glRotatef(rotate,0,1,0);
		glTranslatef(0,0,0);
//		b.draw();
//		glutSolidSphere(1,250,250);
//		glutSolidTeapot(1);
		raw.drawModel();
//		gluQuadricDrawStyle(quadObj, GLU_FILL);
//		gluCylinder(quadObj, 2.0, 5.0, 10.0, 20, 8);
	glPopMatrix();
	glColor3f(4,.5,.5);
	glRotatef(rotate,.0f,.1f,.0f);

//	drawCube();
	
	//obj.drawModel();
	//activeLight();

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

	GLfloat amb_light[] = {.1,.1,.1,1.0};
	GLfloat diffuse[] = {.6,.6,.6,1};
	GLfloat specular[] = {.7,.7,.3,1};
	GLfloat lightPos[] = {5.0,0.0,0.0,0};

	//glLightModelfv(GL_LIGHT_MODEL_AMBIENT, amb_light);
	//glLightfv(GL_LIGHT0,GL_AMBIENT,amb_light);
	glLightf(GL_LIGHT0, GL_SPOT_CUTOFF, 45.0);
	GLfloat spot_direction[] = { -1.0, -1.0, 0.0 };
	glLightfv(GL_LIGHT0, GL_SPOT_DIRECTION, spot_direction);

	static float front_mat_shininess[] =
  {60.0};
  static float front_mat_specular[] =
  {0.2, 0.2, 0.2, 1.0};
  static float front_mat_diffuse[] =
  {0.5, 0.5, 0.28, 1.0};
  static float back_mat_shininess[] =
  {60.0};
  static float back_mat_specular[] =
  {0.5, 0.5, 0.2, 1.0};
  static float back_mat_diffuse[] =
  {1.0, 0.9, 0.2, 1.0};

	glMaterialfv(GL_FRONT, GL_SHININESS, front_mat_shininess);
  glMaterialfv(GL_FRONT, GL_SPECULAR, front_mat_specular);
  glMaterialfv(GL_FRONT, GL_DIFFUSE, front_mat_diffuse);
  glMaterialfv(GL_BACK, GL_SHININESS, back_mat_shininess);
  glMaterialfv(GL_BACK, GL_SPECULAR, back_mat_specular);
  glMaterialfv(GL_BACK, GL_DIFFUSE, back_mat_diffuse);


	glLightfv(GL_LIGHT0,GL_DIFFUSE, diffuse);
	glLightfv(GL_LIGHT0,GL_SPECULAR, specular);
	glLightfv(GL_LIGHT0,GL_POSITION, lightPos);
	glEnable(GL_LIGHT0);
	glEnable(GL_COLOR_MATERIAL);
	glShadeModel(GL_SMOOTH);
	glLightModeli(GL_LIGHT_MODEL_TWO_SIDE,GL_FALSE);
	glDepthFunc(GL_LEQUAL);
	glEnable(GL_DEPTH_TEST);
	glEnable(GL_LIGHTING);
	glEnable(GL_LIGHT0);
	glClearColor(.0f,.0f,.0,1.0f);

	tex = TEXTURE("img.bmp");
}

void activeLight(){
	static float amb[] = {.4,.4,.4,0};
	static float dif[] = {1.0,1.0,1.0,0};
	float ldiffuse[] = {1.0,.0,1.0,1.0};
	float lposition[] = {-1.0,1.0,1.0,.0};

	glLightfv(GL_LIGHT0, GL_DIFFUSE, ldiffuse);
	glLightfv(GL_LIGHT0, GL_POSITION, lposition);
	glEnable(GL_LIGHT0);
	glEnable(GL_LIGHT1);
	glEnable(GL_LIGHTING);
	glMaterialfv(GL_FRONT, GL_AMBIENT, amb);
	glMaterialfv(GL_FRONT, GL_DIFFUSE, dif);
	glPushMatrix();
	
	b.draw();

	glPopMatrix();
	glDisable(GL_LIGHT0);
	glDisable(GL_LIGHT1);
	glDisable(GL_LIGHTING);
}

int main(int argc, char **argv){
	int W,H;
	quadObj = gluNewQuadric();
	glutInit(&argc,argv);
	glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGB);
	//GLScreen(W,H);
	glutInitWindowSize(800,600);
//	glutInitWindowPosition(W/2-1024/2,H/2-768/2);
	glutCreateWindow("Segredo das Armas");
	glutFullScreen();
	//glutSetIconTitle("Barra.png");

	glutGameModeString("800x600:32");

	initialize();
	//raw.setTextureMode(3);
	initLightAndMaterial;

	raw.loadModel("untitled.raw");

	glutDisplayFunc(drawSceene);
	glutKeyboardFunc(keyboard);
	glutMouseFunc(mouse);
	glutIdleFunc(drawSceene);
	glutReshapeFunc(resize);
	glutTimerFunc(25,update,0);
	glutMainLoop();

	return 0;
}

void initLightAndMaterial(void){
  static float ambient[] =
  {0.1, 0.1, 0.1, 1.0};
  static float diffuse[] =
  {0.5, 1.0, 1.0, 1.0};
  static float position[] =
  {90.0, 90.0, 150.0, 0.0};

  static float front_mat_shininess[] =
  {60.0};
  static float front_mat_specular[] =
  {0.2, 0.2, 0.2, 1.0};
  static float front_mat_diffuse[] =
  {0.5, 0.5, 0.28, 1.0};
  static float back_mat_shininess[] =
  {60.0};
  static float back_mat_specular[] =
  {0.5, 0.5, 0.2, 1.0};
  static float back_mat_diffuse[] =
  {1.0, 0.9, 0.2, 1.0};

  static float lmodel_ambient[] =
  {1.0, 1.0, 1.0, 1.0};

  setMatrix();
  glEnable(GL_DEPTH_TEST);
  glDepthFunc(GL_LEQUAL);

  glLightfv(GL_LIGHT0, GL_AMBIENT, ambient);
  glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse);
  glLightfv(GL_LIGHT0, GL_POSITION, position);

  glMaterialfv(GL_FRONT, GL_SHININESS, front_mat_shininess);
  glMaterialfv(GL_FRONT, GL_SPECULAR, front_mat_specular);
  glMaterialfv(GL_FRONT, GL_DIFFUSE, front_mat_diffuse);
  glMaterialfv(GL_BACK, GL_SHININESS, back_mat_shininess);
  glMaterialfv(GL_BACK, GL_SPECULAR, back_mat_specular);
  glMaterialfv(GL_BACK, GL_DIFFUSE, back_mat_diffuse);

  glLightModelfv(GL_LIGHT_MODEL_AMBIENT, lmodel_ambient);
  glLightModelfv(GL_LIGHT_MODEL_TWO_SIDE, lmodel_twoside);

  glEnable(GL_LIGHTING);
  glEnable(GL_LIGHT0);
  glShadeModel(GL_SMOOTH);
}
