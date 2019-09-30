#include <gl_light.h>

#include <gl_light.h>
#include <GL/gl.h>
#include <GL/glu.h>

void light_init(Light ll){
	light_update(ll);
}

void light_update(Light ll){
	glLightfv(ll.light, GL_AMBIENT, ll.ambient);
	glLightfv(ll.light, GL_DIFFUSE, ll.diffuse);
	glLightfv(ll.light, GL_POSITION, ll.position);
	glLightfv(ll.light, GL_SPECULAR, ll.specular);

	glMaterialfv(GL_FRONT, GL_SHININESS, ll.front_shini);
	glMaterialfv(GL_FRONT, GL_SPECULAR, ll.front_specular);
	glMaterialfv(GL_FRONT, GL_DIFFUSE, ll.front_diffuse);
	glMaterialfv(GL_BACK, GL_SHININESS, ll.back_shini);
	glMaterialfv(GL_BACK, GL_SPECULAR, ll.back_specular);
	glMaterialfv(GL_BACK, GL_DIFFUSE, ll.back_diffuse);

//	glLightModelfv(GL_LIGHT_MODEL_AMBIENT, ll.model_ambient);
	glLightModelfv(GL_LIGHT_MODEL_TWO_SIDE, ll.model_twoside);

	glEnable(GL_LIGHTING);
	glEnable(ll.light);
	if(ll.smooth)
		glShadeModel(GL_SMOOTH);
	else
		glShadeModel(GL_FLAT);

	glEnable(GL_COLOR_MATERIAL);
}
