#include <stdio.h>
#include <stdlib.h>
#include <SDL/SDL.h>
#include <SDL/SDL_opengl.h>
#include <GL/glu.h>
#include <GL/gl.h>

void render(){
	glClear(GL_COLOR_BUFFER_BIT);

	glBegin(GL_QUADS);
		glVertex2f(-.5f, -.5f);
		glVertex2f(.5f, -.5f);
		glVertex2f(.5f, .5f);
		glVertex2f(-.5f, .5f);
	glEnd();

	SDL_GL_SwapBuffers();
}

int main(){
	SDL_Surface *sfc;
	if(SDL_Init(SDL_INIT_VIDEO) && (sfc = SDL_SetVideoMode(800,600,32,SDL_OPENGL))){
		puts("Erro ao iniciar");
		return 1;
	}

	/*             GL START           */

	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	glClearColor(.0f,.0f,.0f,1.f);

	SDL_WM_SetCaption("Janela com opengl", 0);

	SDL_Event evt;
	while(1){
		switch(evt.type){
			case SDL_KEYDOWN:
				if(evt.key.keysym.sym == SDLK_ESCAPE)
					exit(0);
				break;
		}
		SDL_Flip(sfc);
		render();
	}
	
	
}
