#include <stdio.h>

int main(int argc, char **argv){
	const int NUM = 10;

	int n[NUM];
	int ord[NUM];

	int x,y;
	for(x=0; x<NUM; x++){
		scanf("%d",&n[x]);
		ord[x] = n[x];
	}

	int min;
	int pos;
	for(x=0; x<NUM; x++){
		min = ord[x];
		pos = -1;
		/*  START SHOW  */
		for(y=0; y<NUM; y++){
			printf("[[33m%d[00m]",ord[y]);
		}
		puts("");
		
		/*  END   SHOW  */
		for(y=x; y<NUM; y++){
			if(ord[y] < min){
				min = ord[y];
				pos = y;
			}
		}
		if(pos >= 0){
			ord[pos] = ord[x];
			ord[x] = min;
		}
	}

	printf("\nOrdenado: ");
	for(x=0; x<NUM; x++){
		printf("[[33m%d[00m]",ord[x]);
	}
	printf("\nOriginal: ");
	for(x=0; x<NUM; x++){
		printf("[[33m%d[00m]",n[x]);
	}
	puts("");
	

	return 1;

}
