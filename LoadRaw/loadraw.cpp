#include "loadraw.h"

#include <GL/glut.h>
#include <stdio.h>
#include <string.h>
#include <string>
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <cmath>

ModelRaw::ModelRaw(){
	tex = 0;
}

//float *ModelRaw::calcNormal(float *cood1,float *coord2,float *coord3){}

int ModelRaw::loadModel(const char *fileName){
	for(int i = 0;i<totalConnTriangles;i++){facesTriangles[i] = 0x00;}
	this->totalConnTriangles = 0;
	if(fileName != NULL){
		FILE *file = fopen(fileName,"r");
		fseek(file,0,SEEK_END);
		long fileSize = ftell(file);
		try{vertexBuffer = (float*) malloc(ftell(file)*3);}
		catch(const char*){return -1;}
		
		if(vertexBuffer == NULL)return -1;
		fseek(file,0,SEEK_SET);
		facesTriangles = (float*)malloc(fileSize*sizeof(float));
		normals = (float*) malloc(fileSize*sizeof(float));

		if(file){
			int i=0;
			//int quadIndex=0;
			//int normalIndex=0;
			char buffer[1000];
			while(!feof(file)){
				fgets(buffer,1000,file);
				sscanf(buffer,"%f %f %f %f %f %f %f %f %f ",&facesTriangles[i],&facesTriangles[i+1],&facesTriangles[i+2],&facesTriangles[i+3], &facesTriangles[i+4], &facesTriangles[i+5],&facesTriangles[i+6],&facesTriangles[i+7], &facesTriangles[i+8]);
				i += 9;
        		        totalConnTriangles+=9;
			}
			printf("Modelo [ OK ]\n");
		} else printf("Não foi possivel ler o arquivo.\n");
	}
	return 0;
}

void ModelRaw::setTextureMode(int type){
	tex = type;
}

void ModelRaw::texture(){
	glClear(.1);
	if(tex == 1){
		glEnable(GL_FLAT);
		glShadeModel(GL_FLAT);
		glPolygonMode(GL_FRONT_AND_BACK,GL_FILL);
	} else if(tex == 2){
		glEnable(GL_SMOOTH);
		glShadeModel(GL_SMOOTH);
		glPolygonMode(GL_FRONT_AND_BACK,GL_FILL);
	} else if(tex == 3)
		glPolygonMode(GL_FRONT_AND_BACK,GL_LINE);
	GLfloat amb_light[] = {.1,.1,.1,1.0};
	GLfloat diffuse[] = {.6,.6,.6,1};
	GLfloat specular[] = {.7,.7,.3,1};

	glLightModelfv(GL_LIGHT_MODEL_AMBIENT, amb_light);
	glLightfv(GL_LIGHT0,GL_DIFFUSE, diffuse);
	glLightfv(GL_LIGHT0,GL_SPECULAR, specular);
	glEnable(GL_LIGHT0);
	glEnable(GL_COLOR_MATERIAL);
	glShadeModel(GL_SMOOTH);
	glLightModeli(GL_LIGHT_MODEL_TWO_SIDE,GL_FALSE);
	glDepthFunc(GL_LEQUAL);
	glEnable(GL_DEPTH_TEST);
	glEnable(GL_LIGHTING);
	glEnable(GL_LIGHT0);
	glClearColor(.0f,.0f,.0,1.0f);
}

void ModelRaw::drawModel(){
	glEnableClientState(GL_VERTEX_ARRAY);
	glEnableClientState(GL_NORMAL_ARRAY);

	texture();

	glNormalPointer(GL_FLOAT,0,normals);
	glVertexPointer(3,GL_FLOAT,0,facesTriangles);
	glDrawArrays(GL_TRIANGLES,0,totalConnTriangles);

	glDisableClientState(GL_VERTEX_ARRAY);
	glDisableClientState(GL_NORMAL_ARRAY);
}
