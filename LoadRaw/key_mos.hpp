#include <GL/glut.h>

/*##################################################EXPORTS##################################################*/

void keyboard(unsigned char key, int x, int y);
void mouse(int button, int state, int x, int y);

/*##################################################FUNCTIONS################################################*/

void keyboard(unsigned char key, int x, int y){
	switch(key){
	case 27: exit(0); break;
	case 13: x -= 1.1f; break;
	case 83: x -= .1f; break;
	case 65: y -= .1f; break;
	case 68: y += .1f; break;
	}
}

void mouse(int button, int state, int x, int y){
}
