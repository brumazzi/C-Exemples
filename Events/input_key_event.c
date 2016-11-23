#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <fcntl.h>
#include <linux/input.h>
 
#define KEYFILE "/dev/input/event12"
 
void signalHandler(int signum){
	exit(signum);
}

int main(){
	int fd;
	struct input_event ie;
	signal(SIGINT, signalHandler);

	if((fd = open(KEYFILE, O_RDONLY)) == -1) {
		perror("Cannot access keyboard device");
		exit(EXIT_FAILURE);
	}

	while(read(fd, &ie, sizeof(struct input_event))) {
		if(ie.type == 1 && ie.value == 1){
			printf("%i-%i-%i\n",ie.type, ie.code, ie.value);
			if(ie.code == 1)
				raise(SIGINT);
		}

/*		time ( &rawtime );
		timeinfo = localtime ( &rawtime );
		printf ( "Actvy: %s", asctime (timeinfo) );*/
	}

	return 0;
}
