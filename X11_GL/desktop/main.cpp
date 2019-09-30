#include <X11/X.h>
#include <X11/Xlib.h>
#include <GL/gl.h>
#include <GL/glx.h>
#include <GL/glut.h>
#include <assert.h>

#include <vector>
#include <unistd.h>

#include "header.h"

using std::vector;

double **model;

void DrawModel() {
        glClearColor(0.0, 0.0, 0.0, 1.0);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        glMatrixMode(GL_PROJECTION);
        glLoadIdentity();
        glOrtho(-2., 2., -2., 2., 2., 20.);

        glMatrixMode(GL_MODELVIEW);
        glLoadIdentity();
        gluLookAt(0., 0., 10., 0., 0., 0., 0., 1., 0.);

	static double zrot = 0.0;
	//glLoadIdentity();
	glMatrixMode(GL_PROJECTION);
	glPushMatrix();
	glRotated(0.0,0.0, zrot ,0.0);
        glBegin(GL_QUADS);

	glColor3f(1., 0., 0.); glVertex3f(-.75, -.75, 0.);
	glColor3f(0., 1., 0.); glVertex3f( .75, -.75, 0.);
	glColor3f(0., 0., 1.); glVertex3f( .75,  .75, 0.);
	glColor3f(1., 1., 0.); glVertex3f(-.75,  .75, 0.);

	glEnd();
	glPopMatrix();
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
	zrot = zrot++;
	if(zrot > 360.0) zrot = 0.0;
	glFlush();
}

int main(int argc, char *argv[]){
	Display *disp = XOpenDisplay(NULL);
	assert(disp);

	int scr = XDefaultScreen(disp);
	Window root = XRootWindow(disp, scr);


	unsigned short
		width = DisplayWidth(disp, scr),
		      height = DisplayHeight(disp, scr);

	XVisualInfo *vi;
	GLXContext glc;
	GLint attr[] = {GLX_RGBA, GLX_DEPTH_SIZE, 24, GLX_DOUBLEBUFFER, None};

	XSetWindowAttributes swa;

	vi = glXChooseVisual(disp, 0, attr);

	glc = glXCreateContext(disp, vi, NULL, GL_TRUE);
	glXMakeCurrent(disp, root, glc);

	glEnable(GL_DEPTH_TEST);

	while(1){
		glViewport(0,0, width, height);
		DrawModel();
		glXSwapBuffers(disp, root);
		usleep(1000);
	}
}
