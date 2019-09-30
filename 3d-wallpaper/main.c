#include <X11/X.h>
#include <X11/Xlib.h>
#include <wavefront.h>
#include <gl_light.h>
#include <gl_init.h>

#include <GL/gl.h>
#include <GL/glu.h>
#include <GL/glx.h>

#include <stdio.h>
#include <unistd.h>

int main(int argc, char *argv[]){
	Display *disp;
	int scr;
	Window root;
	WaveFront *model;

	int width, height;
	XVisualInfo *vi;
	GLXContext glc;
	GLint attr[] = {GLX_RGBA, GLX_DEPTH_SIZE, 24, GLX_DOUBLEBUFFER, None};

	disp = XOpenDisplay(NULL);
	scr = XDefaultScreen(disp);
	root = XRootWindow(disp, scr);
	width = XDisplayWidth(disp, scr);
	height = XDisplayHeight(disp, scr);

	vi = glXChooseVisual(disp, 0, attr);
	glc = glXCreateContext(disp, vi, NULL, GL_TRUE);
	glXMakeCurrent(disp, root, glc);

	struct gl_config conf = {0};
	Light light = {0};

	{//{{{ GL_CONFIG:
		conf.perspective = MOD_2D;
		conf.view_port.width = width;
		conf.view_port.height = height;
		conf.cls_color.r = 0.0f;
		conf.cls_color.g = 0.0f;
		conf.cls_color.b = 0.0f;
		conf.cls_color.a = 1.0f;

		light.ambient[0] = 0.1;
		light.ambient[1] = 0.1;
		light.ambient[2] = 0.1;
		light.ambient[3] = 1.0;
		light.diffuse[0] = 0.5;
		light.diffuse[1] = 1.0;
		light.diffuse[2] = 1.0;
		light.diffuse[3] = 1.0;
		light.position[0] = 90.0;
		light.position[1] = 90.0;
		light.position[2] = 150.0;
		light.position[3] = 0.0;
		light.specular[0] = .7;
		light.specular[1] = .7;
		light.specular[2] = .3;
		light.specular[3] = 1;
		light.front_shini[0] = 60.0;
		light.front_specular[0] = 0.2;
		light.front_specular[1] = 0.2;
		light.front_specular[2] = 0.2;
		light.front_specular[3] = 1.0;
		light.front_diffuse[0] = 0.5;
		light.front_diffuse[1] = 0.5;
		light.front_diffuse[2] = 0.28;
		light.front_diffuse[3] = 1.0;
		light.back_shini[0] = 60.0;
		light.back_specular[0] = 0.5;
		light.back_specular[1] = 0.5;
		light.back_specular[2] = 0.2;
		light.back_specular[3] = 1.0;
		light.back_diffuse[0] = 1.0;
		light.back_diffuse[1] = 0.9;
		light.back_diffuse[2] = 0.2;
		light.back_diffuse[3] = 1.0;
		light.model_ambient[0] = 1.0;
		light.model_ambient[1] = 1.0;
		light.model_ambient[2] = 1.0;
		light.model_ambient[3] = 1.0;
		light.model_twoside[0] = GL_FALSE;
		light.smooth = 1;
		light.light = GL_LIGHT0;
	}//}}}

	gl_init(conf, light);
	light_init(light);

	model = wf_load("plane-extrude.obj");
	//model = wf_load("cube.obj");
	//model = wf_load("monkey.obj");
	//model = wf_load("cube-mod.obj");
	
	while(1){
		//gl_resize(conf);
		gl_draw(conf, model);
		glXSwapBuffers(disp, root);
		usleep(15000);
	}

	return 0;
}
