#include <time.h>
#include <stdio.h>

using namespace std;

time_t now,later;

void sleep(int delay){
     now = time(NULL);
     later = now+delay;
     while(now<=later) now = time(NULL);
}

int main(){
	printf("Dormindo!\n");        
	sleep(2);
	return 0;
}
