#include <GL/glut.h>
#include <SDL/SDL.h>

unsigned int TEXTURE(const char *tex);

struct model_struct{
	float vx,vy,vz;
	float nx,ny,nz;
	float u,v;
};

struct model_struct cube[] ={
{1.000000, 1.000000, -1.000000, 0.000000, 0.000000, -1.000000, 0.548755, 0.459721},
{1.000000, -1.000000, -1.000000, 0.000000, 0.000000, -1.000000, 0.481251, 0.442818},
{-1.000000, -1.000000, -1.000000, 0.000000, 0.000000, -1.000000, 0.454963, 0.476360},
{-1.000000, 1.000000, -1.000000, 0.000000, 0.000000, -1.000000, 0.516958, 0.490137},
{1.000000, 0.999999, 1.000000, 0.000000, -0.000000, 1.000000, 0.550811, 0.526670},
{-1.000000, 1.000000, 1.000000, 0.000000, -0.000000, 1.000000, 0.516997, 0.551838},
{-1.000000, -1.000000, 1.000000, 0.000000, -0.000000, 1.000000, 0.451319, 0.540218},
{0.999999, -1.000001, 1.000000, 0.000000, -0.000000, 1.000000, 0.478914, 0.512264},
{1.000000, 1.000000, -1.000000, 1.000000, -0.000000, 0.000000, 0.548755, 0.459721},
{1.000000, 0.999999, 1.000000, 1.000000, -0.000000, 0.000000, 0.550811, 0.526670},
{0.999999, -1.000001, 1.000000, 1.000000, -0.000000, 0.000000, 0.478914, 0.512264},
{1.000000, -1.000000, -1.000000, 1.000000, -0.000000, 0.000000, 0.481251, 0.442818},
{1.000000, -1.000000, -1.000000, -0.000000, -1.000000, -0.000000, 0.481251, 0.442818},
{0.999999, -1.000001, 1.000000, -0.000000, -1.000000, -0.000000, 0.478914, 0.512264},
{-1.000000, -1.000000, 1.000000, -0.000000, -1.000000, -0.000000, 0.451319, 0.540218},
{-1.000000, -1.000000, -1.000000, -0.000000, -1.000000, -0.000000, 0.454963, 0.476360},
{-1.000000, -1.000000, -1.000000, -1.000000, 0.000000, -0.000000, 0.454963, 0.476360},
{-1.000000, -1.000000, 1.000000, -1.000000, 0.000000, -0.000000, 0.451319, 0.540218},
{-1.000000, 1.000000, 1.000000, -1.000000, 0.000000, -0.000000, 0.516997, 0.551838},
{-1.000000, 1.000000, -1.000000, -1.000000, 0.000000, -0.000000, 0.516958, 0.490137},
{1.000000, 0.999999, 1.000000, 0.000000, 1.000000, 0.000000, 0.550811, 0.526670},
{1.000000, 1.000000, -1.000000, 0.000000, 1.000000, 0.000000, 0.548755, 0.459721},
{-1.000000, 1.000000, -1.000000, 0.000000, 1.000000, 0.000000, 0.516958, 0.490137},
{-1.000000, 1.000000, 1.000000, 0.000000, 1.000000, 0.000000, 0.516997, 0.551838}};

unsigned int tex;

unsigned int TEXTURE(const char *tex){
	SDL_Surface *img = SDL_LoadBMP(tex);
	unsigned int id;
	glGenTextures(1,&id);
	glBindTexture(GL_TEXTURE_2D,id);
	glTexImage2D(GL_TEXTURE_2D,0,GL_RGB,img->w,img->h,0,GL_RGB,GL_UNSIGNED_SHORT_5_6_5,img->pixels);
	glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
	SDL_FreeSurface(img);
	return id;
}

void drawCube(){
//	glBindTexture(GL_TEXTURE_2D,tex);
	glBegin(GL_TRIANGLES);
		for(int x=0;x<24;x++){
			glTexCoord2f(cube[x].u,cube[x].v);
			glNormal3f(cube[x].nx,cube[x].ny,cube[x].nz);
			glVertex3f(cube[x].vx,cube[x].vy,cube[x].vz);
		}
	glEnd();

}
