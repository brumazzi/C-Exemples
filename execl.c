#include <unistd.h>
#include <stdio.h>

void main(){
	puts("-------------");
	int x = execl("/bin/ls", "ls", "--color", "-l", 0);
	printf("##%d\n", x);
}
