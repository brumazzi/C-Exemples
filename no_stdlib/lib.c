#define div(x,y) ((int)((x-(x%y))/y))

unsigned int str_len(char *str){}

#include <malloc.h>
#include <unistd.h>

char *int_to_str(int value){
	char *str = (char*) malloc(18);
	int x = 0;
	int y = 0;
	str += 17;
	*str = 0;

	while(value){
		str--;
		y = value % 10;
		value = (int)(value-y)/10;
		*str = 48 + y;
	}

	return str;
}

void main(){
	write(1,int_to_str(14560),5);
}
