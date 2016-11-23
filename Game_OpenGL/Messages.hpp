#ifndef __MESSAGES__
#define __MESSAGES__

#include <GL/glut.h>
#include <math.h>

class GLMessageBox{
public:
	GLMessageBox(int W, int H){
		width = (W/2)-(200);
		height = (H/2)-(150);
	};

	void position(){
		
	};

	void showMessage(const char *title, const char *text, int type){};

	~GLMessageBox(){};
private:
	double width,height;
};

#endif
