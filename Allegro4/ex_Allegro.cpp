#include <iostream>
#include <allegro.h>
#include <string>
#include <cstdlib>
#include <math.h>
#include <stdio.h>

/*IMPORTANDO IMAGEM E SISTEMA DE DIREÇÃO*/

double PI = 3.141592653589;

using namespace std;

float dx=0,dy=0;
float x=400,y=300,a=0;
float speed = 2;
BITMAP *bmp = NULL;
BITMAP *edt = NULL;

void start_window(const char *title,int w, int h){
	allegro_init();
	set_color_depth(32);
	set_gfx_mode(GFX_AUTODETECT_WINDOWED, w, h, 0, 0);
	set_window_title(title);

	install_keyboard();
	install_mouse();
	install_timer();
}

void update_screen(BITMAP *buffer){
	draw_sprite(screen, buffer,0,0);
}

int angle(){
	if(a > 360) a = .1;
	else if(a < 0) a = 360;
	cout << a << endl;
	dx = cos(a/180);
	dy = sin(a/180);
}

void frente(){
	angle();
	draw_sprite(screen,bmp,x,y);
	/*x += speed*dx*.1f;
	y += speed*dy*.1f;*/
	x += speed*cos(a/(180/PI));
	y += speed*sin(a/(180/PI));
}

void traz(){
	draw_sprite(screen,bmp,x,y);
	//draw_sprite(screen,bmp,x+dx,y+dy);
	angle();
	//x -= speed*cos(a/58);
	//y -= speed*sin(a/58);
	x -= speed*cos(a/(180/PI));
	y -= speed*sin(a/(180/PI));
}

int main(){
	start_window("Allegro Project", 800,600);
	string str = "Logando...";
	bmp = load_bitmap("apple-green.bmp",NULL);
	set_alpha_blender();
//	textout_ex(screen,font,"Login",x-50,y-30,makecol(0,255,0),-1);

	while(!key[KEY_ESC]){
		if(key[KEY_UP]) frente();
		if(key[KEY_DOWN]) traz();
		if(key[KEY_LEFT])a -= 1.f;
		if(key[KEY_RIGHT]) a +=1.f;
		if(key[KEY_SPACE]) str = str+"[espaço]";
//		clear_to_color(screen, makecol(30,30,100));
		draw_sprite(screen,bmp,x,y);
		textout_ex(screen,font,str.c_str(),x-50,y-30,makecol(0,255,0),-1);
		//draw_sprite(screen,edt,90,60);
		system("sleep 0.016");
	}

	return 0;
}
