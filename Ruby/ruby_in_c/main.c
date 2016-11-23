#include <ruby-2.0.0/ruby.h>

int main(int argc, char **argv){
	ruby_init();

	rb_require("./sum");
	rb_funcall(0, rb_intern("mylib"), 0, NULL);
	int x = NUM2INT(rb_funcall(0,
				rb_intern("sum"), 
				2,
				rb_int_new(5),
				rb_int_new(15)
				)
			);

	printf("%d\n", x);

	return ruby_cleanup(0);
}
