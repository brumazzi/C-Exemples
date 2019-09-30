#include <GL/glut.h>
#include <GL/glu.h>
#include <GL/gl.h>

void initialize();
void draw_scenne();

int main(int argc, char *argv[]){
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA);
	glutInitWindowSize(640, 480);
	glutCreateWindow("Load Model");

	initialize();
	glutDisplayFunc(draw_scenne);
	glutMainLoop();
}

void draw_scenne(){
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	{
	}

	glutSwapBuffers();
	glutPostRedisplay();
}

void initialize(){
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();

	gluPerspective(40, 640/480, .1f, 500.0f);
	glMatrixMode(GL_MODELVIEW);
	glShadeModel(GL_FLAT);

	glClearDepth(1.0f);
	glEnable(GL_DEPTH_TEST);
	glDepthFunc(GL_LEQUAL);
	glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);

	glClearColor(.0f, 0.f, 0.f, 1.0f);
}
