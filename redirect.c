#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char **argv){
	int fd;
	int ret;

	fd = open("out.txt", O_CREAT | O_APPEND | O_WRONLY, 0666);

	ret = dup2(fd, 1);

	system("ls");
	close(fd);
	return 0;
}
