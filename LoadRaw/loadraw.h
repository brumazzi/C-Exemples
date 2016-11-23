#ifndef loadraw_h
#define loadraw_h

#define FLAT 		1
#define SMOOTH		2
#define WIREFRAME	3

class ModelRaw{
public:
	ModelRaw();
	int loadModel(const char *fileName);
	void drawModel();
	void setTextureMode(int type); 

private:
	//float *calcNormal(float *coord1, float *coord2, float *coord3);
	float *normals;
	float *facesTriangles;
	float *vertexBuffer;
	long totalConnPoints;
	long totalConnTriangles;
	void texture();
	int tex;
};

#endif
