#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <math.h>

void itob(char *bin, int i){
	int x;
	memset(bin, '0', 8);
	for(x=0; x<8; x++){
		bin[7-x] = i%2 ? '1' : '0';
		i=i/2;
	}
}

void btoi(char *bin, int *i){
	int x;
	*i = 0;
	for(x=0;x<8;x++){
		*i += (bin[7-x]-48)*powl(2,x);
	}
}

int main(int argc, char **argv){
	if(argc < 2)
		return 1;

	if(!strcmp(argv[1],"-r")){
		char header[16];
		int w,h,toc;
		scanf("%[^\n]",header);
		scanf("%d %d\n",&w, &h);

		char dbin[8];
		size_t size = ((w*h)/8);
		while(size--){
			if(scanf("%8c",dbin) != 1)
				break;
			btoi(dbin,&toc);
			printf("%c", toc);
		}
		return 0;
	}
	int x;
	int i;
	char bin[9];
	bin[8] = 0;
	size_t key_len = strlen(argv[1]);
	printf("P1\n%lli %lli\n",key_len, 8);
	for(x=0; x<strlen(argv[1]); x++){
		itob(bin, (int) argv[1][x]);
		printf("%s", bin);
	}

	return 0;
}
