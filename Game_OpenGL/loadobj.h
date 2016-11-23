#ifndef loadobj_h
#define loadobj_h

class LoadOBJ{
public:
	LoadOBJ();
	int loadModel(const char *fileName);
	void drawModel();
	int setModelColor(double r,double g,double b);
private:
	const char *modelName;
	char readLine[128];
	float corx[];
	float cory[];
	float corz[];
	double R;
	double G;
	double B;
	int count;
};

#endif
