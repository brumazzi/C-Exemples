#include <stdio.h>
#include <GL/gl.h>
#include <SDL/SDL.h>
#include <SDL/SDL_ttf.h>

int main(){
	SDL_Init(SDL_INIT_VIDEO);

	char exit = 0;

	SDL_Surface	*scr;
	SDL_Event	evt;

	SDL_WM_SetCaption("Window", 0);
	scr = SDL_SetVideoMode(800,600,32,SDL_DOUBLEBUF);
	
	SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER,1);
	SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE,24);

	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
	glClearColor(1.f,1.f,1.f,1.f);

	SDL_ShowCursor(1);

	while(!exit){
		SDL_PollEvent(&evt);
		switch(evt.type){
			case SDL_KEYDOWN:
				if(evt.key.keysym.sym == SDLK_ESCAPE)
					exit = 1;
				break;
		}
		SDL_Flip(scr);
		SDL_Delay(1);
		
		glClear(GL_COLOR_BUFFER_BIT);

		glBegin(GL_QUADS);
			glVertex2f(-.5f,-.5f); glColor3f(.0f,.1f,.3f);
			glVertex2f(-.5f,.5f);
			glVertex2f(.5f,.5f); glColor3f(.3f,.1f,.4f);
			glVertex2f(.5f,-.5f);
		glEnd();

		SDL_GL_SwapBuffers();
	}

	SDL_QuitSubSystem(SDL_INIT_AUDIO);
	SDL_Quit();
}
