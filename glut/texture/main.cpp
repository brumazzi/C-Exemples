#include <GL/glut.h>
#include <stdio.h>
#include <stdlib.h>

#include "glTexture.h"
#include "cube.h"

#define GLUT_MAIN_LOOP do {\
	glutMainLoop();\
}while(0)

void initialize();
void resize(int w,int h);
void drawSceene();
void keyboard(unsigned char key,int x,int y);
void mouse(int button,int state,int x,int y);

double rotate;

unsigned int tex;

void keyboard(unsigned char key,int x,int y){
	switch(key){
	case 27: exit(0); break;
	case 13: rotate = 0; break;
	}
}

void mouse(int button,int state,int x,int y){}

void drawSceene(){
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	gluLookAt(0,3,5,0,0,0,0,1,0);

	glBindTexture(GL_TEXTURE_2D,tex);

	glRotatef(rotate,0,1,0);

	glBegin(GL_QUADS);
		glTexCoord2f(0.0,0.0);
		glVertex3f(-1.0,1.0,.0);
		glTexCoord2f(0.0,1.0);
		glVertex3f(-1.0,-1.0,.0);
		glTexCoord2f(1.0,1.0);
		glVertex3f(1.0,-1.0,.0);
		glTexCoord2f(1.0,0.0);
		glVertex3f(1.0,1.0,.0);
	glEnd();

//	drawCube();

	glPushMatrix();
	glPopMatrix();

	glutSwapBuffers();
	glutPostRedisplay();
	rotate += .2f;
}

void initialize(){
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();

	gluPerspective(40,800/600,.1f,500.0f);
	glMatrixMode(GL_MODELVIEW);
	glShadeModel(GL_SMOOTH);

        glClearDepth(1.0f);
        glEnable(GL_DEPTH_TEST);
        glDepthFunc(GL_LEQUAL);
        glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
 
        GLfloat amb_light[] = {0.1,0.1,0.1,1.0};
        GLfloat diffuse[] = {.6,.6,.6,1};
        GLfloat specular[] = {.7,.7,.3,1};
	GLfloat position[] = {.2,.2,2.0};
 
        glLightModelfv(GL_LIGHT_MODEL_AMBIENT, amb_light);
        glLightfv(GL_LIGHT0,GL_DIFFUSE, diffuse);
        glLightfv(GL_LIGHT0,GL_SPECULAR, specular);
	//glLightfv(GL_LIGHT0,GL_POSITION, position);
        glEnable(GL_LIGHT0);
        glEnable(GL_COLOR_MATERIAL);
        glShadeModel(GL_SMOOTH);
        glLightModeli(GL_LIGHT_MODEL_TWO_SIDE,GL_FALSE);
        glDepthFunc(GL_LEQUAL);
        glEnable(GL_DEPTH_TEST);
        glEnable(GL_LIGHTING);
        glEnable(GL_LIGHT0);
        glClearColor(.0f,.0f,.0,1.0f);

	glEnable(GL_TEXTURE_2D); 

	tex = loadTexture("frag.bmp");
}

void GLScreen(int &W, int &H){
	W = glutGet(GLUT_SCREEN_WIDTH);
	H = glutGet(GLUT_SCREEN_HEIGHT);
}

int main(int argc,char **argv){
	rotate = 0;
	glutInit(&argc,argv);
	glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA);
	glutInitWindowSize(800,600);
	int h,w;
	GLScreen(w,h);
	glutInitWindowPosition(w/2-800/2,h/2-600/2);
	glutCreateWindow("Exemplo com textura");

	initialize();
	glutDisplayFunc(drawSceene);
	glutKeyboardFunc(keyboard);
	glutMouseFunc(mouse);
	glutIdleFunc(drawSceene);
//	glutReshapeFunc(resize);
	GLUT_MAIN_LOOP;

	return 0;
}
