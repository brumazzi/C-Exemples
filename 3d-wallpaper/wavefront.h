#ifndef  WAVEFRONT_H
#define  WAVEFRONT_H

#include <cvector.h>

struct __vecm2lf{
	double u,v;
};

struct __vecv2lf{
	double x,y;
};

struct __vecv3lf{
	double x,y,z;
};

struct __vecf3d{
	unsigned long long int vertex[4];
	unsigned long long int uv_map[4];
	unsigned long long int normal[4];
};

typedef struct __wobject{
	vector *vertex;
	vector *normal;
	vector *uv_map;
	vector *faces;

	char obj_name[32];
	char material;
	/*unsigned long long int t_vertex;
	unsigned long long int t_normal;
	unsigned long long int t_uv_map;*/
	// map group
}WObject;

typedef struct __frame_group{
	const char *name;
	unsigned long long int first;
	unsigned long long int last;
}FGroup;

typedef struct __wavefront{
	WObject *object;
	FGroup *moviment;
	unsigned long long int oframes;
	unsigned long long int ani_moves;
}WaveFront;

typedef struct __wavefront_animat{
	vector *object;
	vector *moviment;
	unsigned long long int oframes;
	unsigned long long int ani_moves;
}WaveFrontA;

WaveFront *wf_load(const char *);
int wf_draw(WaveFront *);
int wf_free(WaveFront *);

#endif  /*WAVEFRONT_H*/
