#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>

#define PATH "/etc/passwd"

int main(int argc, char **argv){
	struct stat buf;
	stat(PATH, &buf);
	printf("%d - %ld\n", buf.st_gid, buf.st_ino);

	int fd = open(PATH, O_RDONLY);

	fstat(fd, &buf);
	printf("%d - %ld\n", buf.st_gid, buf.st_ino);
	close(fd);

	lstat(PATH, &buf);
	printf("%d - %ld\n", buf.st_gid, buf.st_ino);
}
