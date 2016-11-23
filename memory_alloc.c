#include <stdio.h>
#include <unistd.h>
#include <sys/mman.h>
#include <string.h>

int main(int argc, char **argv){
	size_t len = 12;
	char *ptr = (char *) mmap(NULL, len, PROT_READ | PROT_WRITE, MAP_ANONYMOUS|MAP_PRIVATE, -1, 0);

	if(ptr == MAP_FAILED)
		return -1;

	strcpy(ptr, "Message!");
	puts(ptr);
	printf("%d\n",MAP_FAILED);

	if(munmap(ptr, len) == -1)
		return -2;

	return 0;
}
