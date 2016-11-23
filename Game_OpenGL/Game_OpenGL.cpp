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

#include "Messages.hpp"
#include "GLMode.hpp"
#include "key_mos.hpp"

using namespace std;

void GLScreen(int &WIDTH, int &HEIGHT){
	WIDTH = glutGet(GLUT_SCREEN_WIDTH);
	HEIGHT = glutGet(GLUT_SCREEN_HEIGHT);
}

int main(int argc, char **argv){
	int W,H;
	glutInit(&argc,argv);
	glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA);
	GLScreen(W,H);
	glutInitWindowSize(1024,768);
	glutInitWindowPosition(W/2-1024/2,H/2-768/2);
	glutCreateWindow("Segredo das Armas");
	//glutFullScreen();
	//glutSetIconTitle("Barra.png");


	glutGameModeString("800x600:32");

	initialize();
	obj.loadModel("Arvore");

	glutDisplayFunc(drawSceene);
	glutKeyboardFunc(keyboard);
	glutMouseFunc(mouse);
	glutIdleFunc(drawSceene);
	glutReshapeFunc(resize);
	glutTimerFunc(25,update,0);
	glutMainLoop();

	return 0;
}
