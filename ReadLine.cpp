#include <stdio.h>
#include <string>
#include <cstring>

using namespace std;

int main(){
	printf("");
	char line[180];
	string str;
	const char *v;
	FILE *f = fopen("","r");
	int r;
	while(1){
		r = fscanf(f,"%s",line);
		printf("%s\n",line);
		if(r == EOF)
			break;
		str = " chmod 666 " + line;
		printf("%s\n",str.c_str());
		break;
	}

	return 0;
}
