#include <ruby-2.0.0/ruby.h>

int main(int argc, char **argv){
	ruby_setup();

	rb_require("./lib");

	ruby_finalize();

	return 0;
}
