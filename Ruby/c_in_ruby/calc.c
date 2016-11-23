#include <ruby-2.3.0/ruby.h>

VALUE Calc = Qnil; // ruby module

// methods
VALUE sum(VALUE self, VALUE x, VALUE y);
VALUE sub(VALUE self, VALUE x, VALUE y);

// initializator method
void Init_calc(){
	Calc = rb_define_module("Calc"); // instance module

	//register methods
	rb_define_method(Calc, "sum", sum, 2); 
	rb_define_method(Calc, "sub", sub, 2);
}

/* methods src */

VALUE sum(VALUE self, VALUE x, VALUE y){
	int cx = NUM2INT(x);
	int cy = NUM2INT(y);

	return INT2NUM(cx+cy);
}
VALUE sub(VALUE self, VALUE x, VALUE y){
	int cx = NUM2INT(x);
	int cy = NUM2INT(y);

	return INT2NUM(cx-cy);
}
