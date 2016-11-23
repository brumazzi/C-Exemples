#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(){
	int x;
	srand(time(NULL));
	for(x=0;x<10;x++)
		printf("%i",(rand()%10+1));

	return 0;
}
