#include <ruby-2.0.0/ruby.h>

int main(int argc, char **argv){
	ruby_init();
	// run a puts in ruby
	char *opt[] = { "-v", "-eputs 'Hello, world'"};
	void *node = ruby_options(2, opt);

	int state;
	if(ruby_executable_node(node, &state))
		state = ruby_exec_node(node);

	if(state)
		puts("Can't be possible run this command.");

	return ruby_cleanup(state);
}
