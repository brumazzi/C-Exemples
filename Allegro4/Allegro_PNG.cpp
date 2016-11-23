#include <allegro.h>
#include <alpng.h>

void init();
void deinit();

int main(){
	init();
	BITMAP *png = load_png("edtbox.png",NULL);
	
	clear_to_color(screen,makecol(30,30,100));
	set_alpha_blender();
	draw_trans_sprite(screen,png,0,0);
	readkey();
	
	deinit();
	return 0;
}

void init(){
	allegro_init();
	set_color_depth(32);
	if(set_gfx_mode(GFX_AUTODETECT_WINDOWED, 640, 480, 0, 0) != 0){
		allegro_message(allegro_error);
		exit(0);
	}
	install_timer();
	install_keyboard();
	install_mouse();
}

void deinit(){
	clear_keybuf();
}
