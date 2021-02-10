#include <forms.h>

int main(int argc, char *argv[]){
	FL_FORM *form;
	FL_OBJECT *btn_normal;
	FL_OBJECT *btn_push;
	FL_OBJECT *btn_touch;
	FL_OBJECT *btn_radio1, *btn_radio2;

	FL_OBJECT *box;

	fl_initialize(&argc, argv,"Button Demo", 0,0);
	
	fl_set_icm_color(FL_FREE_COL1, 16, 30, 80);

	form = fl_bgn_form(FL_DOWN_BOX, 640, 480);

	box = fl_add_box(FL_FLAT_BOX, 0, 0,640,480,"@>");
	btn_normal = fl_add_button(FL_NORMAL_BUTTON, 10,10, 80, 38, "Normal");
	btn_push = fl_add_button(FL_PUSH_BUTTON, 10,60, 80, 38, "@menu");
	btn_touch = fl_add_button(FL_TOUCH_BUTTON, 10,110, 80, 38, "Touch");
	btn_radio1 = fl_add_button(FL_RADIO_BUTTON, 10,160, 80, 38, "Radio 1");
	btn_radio2 = fl_add_button(FL_RADIO_BUTTON, 100,160, 80, 38, "Radio 2");

	fl_end_form();


	fl_set_object_color(box, 6, 6);

	fl_set_object_color(btn_normal, FL_GOLD, FL_IVORY);
	fl_set_object_color(btn_push, FL_NAVY, 256);
	fl_set_object_color(btn_touch, FL_TEAL, FL_IVORY);
	fl_set_object_color(btn_radio1, 50, FL_FREE_COL9);
	fl_set_object_color(btn_radio2, 30, FL_FREE_COL2);


	fl_show_form(form, FL_PLACE_CENTER, FL_TRANSIENT, "Buttons");

	char transp = 1;
	while(1){
		void *clk = fl_do_forms();
		if(clk == btn_normal)
			break;
		if(clk == btn_push){
		}
	}

	fl_finish();
	return 0;
}
