#include <stdio.h>
#include <string.h>
#include <GL/glut.h>
#include <GL/gl.h>

void escreve(int width,int height,int x,int y,void *font,char *texto){
	float xxx = (float)x/width;
	float yyy = (float)y/height;
	glColor3f (0,0,0);
	glRasterPos2f(xxx,yyy);
	int i;
	for(i =0;i<strlen(texto);i++)
		 glutBitmapCharacter(font, texto[i]);
}


void display(void){
	glClear	(GL_COLOR_BUFFER_BIT); 
	escreve(800,600,400,300,GLUT_BITMAP_TIMES_ROMAN_24,"Texte com String");
	glFlush ();
}
void init (void){
	glClearColor(1.0, 1.0, 1.0, 0.0);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	glOrtho(0.0,1.0, 0.0, 1.0, -1.0, 1.0);
}

int main(int argc, char** argv){
	/*glutInit(&argc,	argv);
	glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
	glutInitWindowSize(800, 600); 
	glutInitWindowPosition(100, 100);
	glutCreateWindow("Glut-OpenGl");
	init();

	glutDisplayFunc(display);	
	glutMainLoop();*/
	return 0;
}

