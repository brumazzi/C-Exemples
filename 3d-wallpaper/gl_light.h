#ifndef  GL_LIGHT_H
#define  GL_LIGHT_H

#include <GL/gl.h>
#include <GL/glu.h>

typedef struct __gl_light{
	float ambient[4];
	float diffuse[4];
	float position[4];
	float specular[4];

	float front_shini[4];
	float front_specular[4];
	float front_diffuse[4];

	float back_shini[4];
	float back_specular[4];
	float back_diffuse[4];

	float model_ambient[4];
	float model_twoside[1];

	int light;
	int smooth;
}Light;

void light_init(Light ll);
void light_update(Light ll);

#endif  /*GL_LIGHT_H*/
