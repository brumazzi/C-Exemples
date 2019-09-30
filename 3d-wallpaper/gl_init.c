#include <gl_init.h>
#include <gl_light.h>
#include <GL/gl.h>
#include <GL/glu.h>

void gl_init(struct gl_config conf, Light ll){
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	if(conf.perspective)
		gluPerspective(40,conf.view_port.width/conf.view_port.height, 0.1, 500.0);
	else
		glOrtho(-2.0, 2.0, -2.0, 2.0, -2.0, 10.0);
	gl_update_view(conf);
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	glClearDepth(1.0);
	glEnable(GL_DEPTH_TEST);
	glDepthFunc(GL_LEQUAL);
	glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);

	//glEnable(GL_TEXTURE_2D);
	light_init(ll);
	glClearColor(conf.cls_color.r, conf.cls_color.g, conf.cls_color.b, conf.cls_color.a);
	gl_resize(conf);
}

void gl_resize(struct gl_config conf){
	glViewport(0, 0, conf.view_port.width, conf.view_port.height);
}

void gl_update_view(struct gl_config conf){
	gluLookAt(0,2,5,0,1,2,0,1,0);
}

void gl_draw(struct gl_config conf, WaveFront *obj){
	static double eixZ = 0;
	
	glClearColor(conf.cls_color.r, conf.cls_color.g, conf.cls_color.b, conf.cls_color.a);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	
	glPushMatrix();
	glRotatef(eixZ, 0, 0.1, 0);
	
	glBegin(GL_QUADS);
	wf_draw(obj);
	glEnd();
	
	glPopMatrix();

	eixZ += 0.5;
	eixZ = eixZ >= 360.0 ? 0.0 : eixZ;

	glFlush();
}
