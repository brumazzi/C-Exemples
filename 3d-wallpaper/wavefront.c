#include <wavefront.h>
#include <malloc.h>
#include <string.h>
#include <stdio.h>
#include <cvector.h>
#include <GL/gl.h>
#include <time.h>

const char *STR_LIMIT = "%[^ \n]";
const char *STR_LIMIT_LINE = " %[^\n]";

WaveFront *wf_load(const char *fpath){
	WaveFront *wf = malloc(sizeof(WaveFront));
	FILE *model = fopen(fpath, "r");

	wf->object = malloc(sizeof(WObject));
	wf->moviment = NULL;
	wf->oframes = 1;
	wf->ani_moves = 0;

	WObject *o = wf->object;
	o->vertex = cv_new();
	o->normal = cv_new();
	o->uv_map = cv_new();
	o->faces = cv_new();

	char buff[16] = {0};
	do{
		fscanf(model, STR_LIMIT, buff);
		if(!strcmp(buff, "o")){
			fscanf(model, "%s", buff);
			strcpy(buff, o->obj_name);
		}else if(!strcmp(buff, "v")){
			struct __vecv3lf *vv = malloc(sizeof(struct __vecv3lf));
			fscanf(model, "%lf %lf %lf", &vv->x, &vv->y, &vv->z);
			cv_appendp(o->vertex, (void *) vv);
		}else if(!strcmp(buff, "vt")){
			struct __vecm2lf *vv = malloc(sizeof(struct __vecm2lf));
			fscanf(model, "%lf %lf", &vv->u, &vv->v);
			cv_appendp(o->uv_map, (void *) vv);
		}else if(!strcmp(buff, "vn")){
			struct __vecv3lf *vv = malloc(sizeof(struct __vecv3lf));
			fscanf(model, "%lf %lf %lf", &vv->x, &vv->y, &vv->z);
			cv_appendp(o->normal, (void *) vv);
		}else if(!strcmp(buff, "f")){
			struct __vecf3d *ff = malloc(sizeof(struct __vecf3d));
			for(int x=0; x<4; x++){
				fscanf(model, "%lld/%lld/%lld", &ff->vertex[x], &ff->uv_map[x], &ff->normal[x]);
			}
			cv_appendp(o->faces, (void *) ff);
		}else if(!strcmp(buff, "s")){
			fscanf(model, STR_LIMIT_LINE, buff);
			if(!strcmp(buff, "off"))
				o->material = 0;
			else if(!strcmp(buff, "on"))
				o->material = 1;
		}
		
		do{
			fscanf(model, "%c", buff);
		}while(*buff != '\n');
	}while(!feof(model));
	
	return wf;
}

int wf_draw(WaveFront *model){
	for(unsigned long long int x=0; x < model->object->faces->size; x++){
		struct __vecv3lf *vertex, *normal;
		struct __vecm2lf *uv;
		struct __vecf3d *face;

		face = (struct __vecf3d *)	model->object->faces->value[x].pointer;

		for(int y=0; y<4; y++){
			vertex = (struct __vecv3lf *)	model->object->vertex->value[face->vertex[y]-1].pointer;
			normal = (struct __vecv3lf *)	model->object->normal->value[face->normal[y]-1].pointer;
			uv = (struct __vecm2lf *)	model->object->uv_map->value[face->uv_map[y]-1].pointer;
		
			glTexCoord2f(uv->u, uv->v);
			glColor3f(0.49, 0.78, 0.32);
			glNormal3f(normal->x, normal->y, normal->z);
			glVertex3f(vertex->x, vertex->y, vertex->z);
		}
	}
	return 0;
}

int wf_free(WaveFront *model){
	for(unsigned long long int x=0; x<model->object->vertex->size; x++){
		free(model->object->vertex->value[x].pointer);
	}
	for(unsigned long long int x=0; x<model->object->normal->size; x++){
		free(model->object->normal->value[x].pointer);
	}
	for(unsigned long long int x=0; x<model->object->uv_map->size; x++){
		free(model->object->uv_map->value[x].pointer);
	}
	for(unsigned long long int x=0; x<model->object->faces->size; x++){
		free(model->object->faces->value[x].pointer);
	}

	cv_free(model->object->vertex);
	cv_free(model->object->normal);
	cv_free(model->object->uv_map);
	cv_free(model->object->faces);

	free(model->object);
	free(model);
}
