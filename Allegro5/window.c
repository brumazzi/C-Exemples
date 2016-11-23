#include <allegro5/allegro.h>
#include <stdio.h>

//#define bool unsigned char
//#define true 1
//#define false 0

#define FPS 60
#define SCREEN_WIDTH 640
#define SCREEN_HEIGHT 480
#define SCREEN SCREEN_WIDTH, SCREEN_HEIGHT
#define BOUNCE_SIZE 32
#define _BOUNCE BOUNCE_SIZE, BOUNCE_SIZE

void error(const char *err);

int main(int argc, char **argv){
	ALLEGRO_DISPLAY *dsp = NULL;
	ALLEGRO_EVENT_QUEUE *evt = NULL;
	ALLEGRO_TIMER *timer = NULL;
	ALLEGRO_BITMAP *bouncer = NULL;

	bool on = true;

	if(!al_init())
		error("");
	if(!al_install_keyboard())
		error("");
	if(!(timer = al_create_timer(1.0/FPS)))
		error("");
	if(!(dsp=al_create_display(SCREEN))){
		al_destroy_timer(timer);
		error("");
	}
	if(!(bouncer = al_create_bitmap(_BOUNCE))){
		al_destroy_timer(timer);
		al_destroy_display(dsp);
		error("");
	}

	al_set_target_bitmap(bouncer);
	al_clear_to_color(al_map_rgb(0,255,100));
	al_set_target_bitmap(al_get_backbuffer(dsp));

	evt = al_create_event_queue();
	if(!evt){
		al_destroy_timer(timer);
		al_destroy_display(dsp);
		al_destroy_bitmap(bouncer);
		error("");
	}

	al_clear_to_color(al_map_rgb(0,0,0));
	al_flip_display();
	al_start_timer(timer);

	while(on){
		ALLEGRO_EVENT e;
		al_wait_for_event(evt, &e);
		if(e.type == ALLEGRO_EVENT_DISPLAY_CLOSE)
			break;
	}
}

void error(const char *err){
	printf("%s\n",err);
	exit(1);
}
