#include <time.h>
#include <stdio.h>

int main(int argc, char **argv){
	time_t now;
	time(&now);

	struct tm *time;
	time = localtime(&now);

	printf("%d:%d:%d", time->tm_hour, time->tm_min, time->tm_sec);

	return 0;
}
