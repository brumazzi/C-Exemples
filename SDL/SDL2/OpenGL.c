#include <SDL2/SDL.h>
#include <SDL2/SDL_video.h>
#include <SDL2/SDL_opengl.h>
#include <GL/gl.h>
#include <GL/glu.h>

#include <pthread.h>
#include <stdio.h>
#include <malloc.h>

#define	WIDTH		1366
#define HEIGHT		768
#define	WINDOW_FLAGS	SDL_WINDOW_OPENGL | SDL_WINDOW_FULLSCREEN

int main(int argc, char *argv[]){
	SDL_Window *win;
	SDL_GLContext gl_context;

	/*if(SDL_Init(SDL_INIT_VIDEO))
		return 1;*/
	if(SDL_Init(SDL_INIT_AUDIO))
		return 2;

	SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
	SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 0);

	SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
	SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 32);
	SDL_GL_SetAttribute(SDL_GL_RED_SIZE, 5);
	SDL_GL_SetAttribute(SDL_GL_GREEN_SIZE, 5);
	SDL_GL_SetAttribute(SDL_GL_BLUE_SIZE, 5);

	win = SDL_CreateWindow("OpenGL", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, WIDTH, HEIGHT, WINDOW_FLAGS);

	gl_context = SDL_GL_CreateContext(win);
	SDL_GL_SetSwapInterval(1);
	
	SDL_Event evt;
	char LOOP = 1;
	while(LOOP){
		SDL_PollEvent(&evt);
		switch(evt.type){
			case SDL_KEYDOWN:
				if(evt.key.keysym.sym == SDLK_ESCAPE){
					printf("%x: %x\n", SDLK_ESCAPE, evt.key.keysym.sym);
					LOOP = 0;
				}
				break;
			case SDL_QUIT:
				LOOP = 0;
		}

		glViewport(0,0, WIDTH, HEIGHT);
		static float color = 0.0f;
		glClearColor(color, .0, .0, 1.0);
		glClear(GL_COLOR_BUFFER_BIT);

		SDL_GL_SwapWindow(win);
		color += 0.01;
		if(color > 1.00f) color = 0;
	}
}
