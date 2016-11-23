#include <stdio.h>

int main(){
	FILE *f = fopen("data","r");

	int x,n;
	char c;
	for(x=0;x<4;x++){
		fscanf(f,"%i",&n);
		/*if(c != 0 || c != '\0' || c != '\n'){
			n = atoi(&c);
			if(n != 0) printf("%i",n);
			else printf(" ");
		}
		if(c == '\n') printf("\n");*/
		printf("%i ",n);
	}
	printf("\n");

	return 0;
}
