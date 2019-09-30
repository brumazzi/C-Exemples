#ifndef  HEADER_H
#define  HEADER_H

#include <vector>

//{{{ STRUCT PROPERTY
typedef struct {
	char name[64];
}stanford_propert;
//}}}
//{{{ STRUCT STANFORD
typedef struct {
	//{{{ HEADER
	char format[32];
	char comment[128];
	unsigned int element_vertex;
	unsigned int element_face;
	std::vector<stanford_propert> props;
	//}}}
	//{{{ BODY
	std::vector<double> x;
	std::vector<double> y;
	std::vector<double> z;
	std::vector<double> nx;
	std::vector<double> ny;
	std::vector<double> nz;
	std::vector<unsigned char> red;
	std::vector<unsigned char> green;
	std::vector<unsigned char> blue;

	std::vector<unsigned int> faces;
	//}}}
}stanford;
//}}}
typedef stanford PLY;

//{{{ EXTERN METHOD
extern "C" {
	int load_model(const char *path, PLY *model);
}
//}}}

#endif  /*HEADER_H*/
