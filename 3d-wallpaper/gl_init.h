#ifndef  GL_INIT_H
#define  GL_INIT_H

#include <wavefront.h>
#include <gl_light.h>

enum{
	MOD_2D,
	MOD_3D,
};

struct gl_config{
	int perspective;
	struct{
		unsigned int width, height;
	}view_port;
	struct{
		double r,g,b,a;
	}cls_color;
};

void gl_init(struct gl_config, Light);
void gl_resize(struct gl_config);
void gl_draw(struct gl_config, WaveFront *obj);
void gl_update_view(struct gl_config conf);

#endif  /*GL_INIT_H*/
