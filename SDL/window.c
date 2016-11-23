#include <stdio.h>
#include <SDL/SDL.h>
#include <SDL/SDL_ttf.h>

int main(){
	SDL_Init(SDL_INIT_VIDEO);
	TTF_Init();

	char exit = 0;

	SDL_Surface	*scr;
	SDL_Event	evt;
	TTF_Font	*font = TTF_OpenFont("/usr/share/fonts/liberation-fonts/LiberationSans-Italic.ttf",32);

	if(!font){
		puts("Fonte não encontrada.");

		return -1;
	}

	SDL_WM_SetCaption("Window", 0);
	scr = SDL_SetVideoMode(800,600,32,SDL_DOUBLEBUF);

	SDL_ShowCursor(1);

	while(!exit){
		SDL_PollEvent(&evt);
		switch(evt.type){
			case SDL_KEYDOWN:
				if(evt.key.keysym.sym == SDLK_ESCAPE)
					exit = 1;
				break;
		}
		SDL_Color rgb = {0,0,150};
		SDL_Surface *src = TTF_RenderText_Blended(font,"Escrevendo fonte.",rgb);
		SDL_Rect rec = {50,50,0,0};
		SDL_BlitSurface(src, NULL, scr, &rec);
		SDL_FreeSurface(src);
		SDL_Flip(scr);
		SDL_Delay(1);
	}

	SDL_QuitSubSystem(SDL_INIT_AUDIO);
	TTF_Quit();
	SDL_Quit();
}
