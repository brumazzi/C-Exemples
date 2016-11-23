#include <stdio.h>
#include <limits.h>
#include <unistd.h>

int main(int argc, char **argv){
	char exec_path[PATH_MAX]; // PATH_MAX is a max size of path (limits.h)

	getcwd(exec_path, PATH_MAX); // Get the path with max size of PATH_MAX

	puts(exec_path);

	return 0;
}
