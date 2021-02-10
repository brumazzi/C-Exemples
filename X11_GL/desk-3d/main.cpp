#include <GL/gl.h>
#include <GL/glx.h>
#include <GL/glu.h>
#include <stdio.h>
#include <stdlib.h>
#include <X11/X.h>
#include <X11/Xlib.h>

#include <iostream>
#include <vector>
#include <map>

struct Obj{
	std::vector<double *> vec;
	std::vector<unsigned long long int> faces;

	std::string name;
	std::string material;
	std::string material_lib;
};

void initialize();
void resize(int w,int h);
void drawSceene();
void keyboard(unsigned char key,int x,int y);
void mouse(int button,int state,int x,int y);
unsigned int loadTexture(const char *fname);
struct Obj *load_obj(const char *path);
void draw_obj(struct Obj*);
std::map<std::string, std::vector<double>> load_raw(const char *path);

double rotate;

unsigned int tex;

std::map<std::string, std::vector<double>> model;
struct Obj* obj;

void drawSceene(){
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	gluLookAt(0,3,5,0,0,0,0,1,0);


	glPushMatrix();
	glBindTexture(GL_TEXTURE_2D,tex);

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

	glPopMatrix();
	GLfloat position[] = {.2,1.2,2.0};
	glLightfv(GL_LIGHT0,GL_POSITION, position);

	glPushMatrix();
	glRotatef(rotate,0,1,0);
	draw_obj(obj);
	glPopMatrix();

	glFlush();
	rotate += .2f;
}

void initialize(){
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();

	gluPerspective(40,800/600,.1f,500.0f);
	glMatrixMode(GL_MODELVIEW);
	glShadeModel(GL_FLAT);

	glClearDepth(1.0f);
	glEnable(GL_DEPTH_TEST);
	glDepthFunc(GL_LEQUAL);
	glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);

	GLfloat amb_light[] = {0.1,0.1,0.1,1.0};
	GLfloat diffuse[] = {.6,.6,.6,1};
	GLfloat specular[] = {.7,.7,.3,1};
	GLfloat position[] = {1.2,1.2,2.0};

	glLightModelfv(GL_LIGHT_MODEL_AMBIENT, amb_light);
	glLightfv(GL_LIGHT0,GL_DIFFUSE, diffuse);
	glLightfv(GL_LIGHT0,GL_SPECULAR, specular);
	glLightfv(GL_LIGHT0,GL_POSITION, position);
	glEnable(GL_LIGHT0);
	glEnable(GL_COLOR_MATERIAL);
	glShadeModel(GL_FLAT);
	glLightModeli(GL_LIGHT_MODEL_TWO_SIDE,GL_FALSE);
	glDepthFunc(GL_LEQUAL);
	glEnable(GL_DEPTH_TEST);
	glEnable(GL_LIGHTING);
	glEnable(GL_LIGHT0);
	glClearColor(.0f,.0f,.0,1.0f);

	glEnable(GL_TEXTURE_2D); 

	//tex = loadTexture("frag.bmp");
}

int main(int argc,char **argv){
	rotate = 0;
	int h,w;

	Display *disp = XOpenDisplay(NULL);
	int scr = XDefaultScreen(disp);
	Window root = XRootWindow(disp, scr);

	w = DisplayWidth(disp, scr);
	h = DisplayHeight(disp, scr);

	XVisualInfo *vi;
	GLXContext glc;
	GLint attr[] = {GLX_RGBA, GLX_DEPTH_SIZE, 24, GLX_DOUBLEBUFFER, None};

	vi = glXChooseVisual(disp, 0, attr);
	glc = glXCreateContext(disp, vi, NULL, GL_TRUE);
	glXMakeCurrent(disp, root, glc);
	glEnable(GL_DEPTH_TEST);

	//model = load_raw("arvore.raw");
	obj = load_obj("cube.obj");

	initialize();

	while(1){
		glViewport(0,0, w, h);
		glXSwapBuffers(disp, root);
		drawSceene();
	}

	return 0;
}
