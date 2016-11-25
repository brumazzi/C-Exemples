#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main(int argc, const char **argv){
	const char *dir = "folder";

	mkdir(dir, 0755);

	return 0;
}
