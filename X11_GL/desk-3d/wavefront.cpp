#include <map>
#include <vector>
#include <iostream>
#include <fstream>
#include <GL/gl.h>

using namespace std;

struct Obj{
	vector<double *> vec;
	vector<unsigned long long int> faces;

	string name;
	string material;
	string material_lib;
};

struct Obj *load_obj(const char *path){
	auto model = new struct Obj();

	ifstream ff(path);

	string word;
	char c;
	double v1, v2, v3;
	double *vv;
	unsigned long long int f1,f2,f3,f4;
	while(true){
		ff >> word;

		switch(word.c_str()[0]){
			case 'o':
				ff >> word;
				model->name = word;
				break;
			case 'v':
				ff >> v1;
				ff >> v2;
				ff >> v3;

				vv = new double[3];
				vv[0] = v1;
				vv[1] = v2;
				vv[2] = v3;
				model->vec.push_back(vv);
				break;
			case 'f':
				ff >> f1;
				ff >> f2;
				ff >> f3;
				ff >> f4;

				model->faces.push_back(f1);
				model->faces.push_back(f2);
				model->faces.push_back(f3);
				model->faces.push_back(f4);
				break;
		}

		if(!ff.get(c)) break;
	}
	return model;
}

void draw_obj(struct Obj *model){
	glBegin(GL_QUADS);

	for(auto face: model->faces){
		glVertex3f(
				(const GLfloat) model->vec[face-1][0],
				(const GLfloat) model->vec[face-1][1],
				(const GLfloat) model->vec[face-1][2]);
	}

	glEnd();
}
