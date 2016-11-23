#include <time.h>
#include <stdio.h>
#include <unistd.h>

// usleep use micro seconds to sleep
// to sleep 1 sec, the value as 10^6

int main(int argc, char **argv){
	int milli_sec = 1000;
	usleep(milli_sec * 1000);
	puts("Hello...");

	return 0;
}
