#ifndef __OBJECT__
#define __OBJECT__

#include <GL/glut.h>

class BOX{
public:
	BOX(){
		x = 0;
		y = 0;
		z = 0;
		scalex = 1;
		scaley = 1;
		scalez = 1;
		rotatex = 0;
		rotatey = 0;
		rotatez = 0;
		angle = 0;
	};

	void draw(){
		glBegin(GL_QUADS);
			glRotatef(angle,rotatex,rotatey,rotatez);
			glVertex3f(x-(1*scalex),y-(1*scaley),z-(1*scalez));
			glVertex3f(x-(1*scalex),y-(1*scaley),z+(1*scalez));
			glVertex3f(x+(1*scalex),y-(1*scaley),z+(1*scalez));
			glVertex3f(x+(1*scalex),y-(1*scaley),z-(1*scalez));

			glVertex3f(x-(1*scalex),y-(1*scaley),z-(1*scalez));
			glVertex3f(x-(1*scalex),y+(1*scaley),z-(1*scalez));
			glVertex3f(x-(1*scalex),y+(1*scaley),z+(1*scalez));
			glVertex3f(x-(1*scalex),y-(1*scaley),z+(1*scalez));

			glVertex3f(x-(1*scalex),y-(1*scaley),z+(1*scalez));
			glVertex3f(x+(1*scalex),y-(1*scaley),z+(1*scalez));
			glVertex3f(x+(1*scalex),y+(1*scaley),z+(1*scalez));
			glVertex3f(x-(1*scalex),y+(1*scaley),z+(1*scalez));

			glVertex3f(x-(1*scalex),y+(1*scaley),z+(1*scalez));
			glVertex3f(x-(1*scalex),y+(1*scaley),z-(1*scalez));
			glVertex3f(x+(1*scalex),y+(1*scaley),z-(1*scalez));
			glVertex3f(x+(1*scalex),y+(1*scaley),z+(1*scalez));

			glVertex3f(x+(1*scalex),y+(1*scaley),z+(1*scalez));
			glVertex3f(x+(1*scalex),y+(1*scaley),z-(1*scalez));
			glVertex3f(x+(1*scalex),y-(1*scaley),z-(1*scalez));
			glVertex3f(x+(1*scalex),y-(1*scaley),z+(1*scalez));

			glVertex3f(x+(1*scalex),y-(1*scaley),z-(1*scalez));
			glVertex3f(x+(1*scalex),y+(1*scaley),z-(1*scalez));
			glVertex3f(x-(1*scalex),y-(1*scaley),z-(1*scalez));
			glVertex3f(x-(1*scalex),y-(1*scaley),z-(1*scalez));
		glEnd();
	};

	~BOX(){};
private:
	int x;
	int y;
	int z;
	int angle;
	float scalex;
	float scaley;
	float scalez;
	float rotatex;
	float rotatey;
	float rotatez;
};

#endif
