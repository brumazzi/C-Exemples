#include <SDL2/SDL.h>
#include <GL/gl.h>

int main(){
	SDL_Window *mw;
	SDL_GLContext mc;

	if(SDL_Init(SDL_INIT_VIDEO))
		return 1;

	SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION,2);
	SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION,1);

	SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER,1);
	SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 24);

	mw = SDL_CreateWindow("SDL2 with OpenGL",SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,800,600,SDL_WINDOW_OPENGL | SDL_WINDOW_SHOWN);

	mc = SDL_GL_CreateContext(mw);
	SDL_GL_SetSwapInterval(1);

	while(1){
		glClearColor(1.,0.,0.,1.);
		glClear(GL_COLOR_BUFFER_BIT);

		SDL_GL_SwapWindow(mw);
	}
	SDL_GL_DeleteContext(mc);
	SDL_DestroyWindow(mw);
	SDL_Quit();
}
