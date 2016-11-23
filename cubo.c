#include <malloc.h>
#include <unistd.h>

int main(){
	int ***n,i,j,k;

	srand(time(NULL));
	n = (int***) malloc(5*sizeof(int**));
	for(i=0;i<5;i++){
		n[i] = (int**) malloc(5*sizeof(int*));
		for(j=0;j<5;j++){
			n[i][j] = (int*) malloc(5*sizeof(int));
		}
	}

	for(i=0;i<5;i++){
		for(j=0;j<5;j++){
			for(k=0;k<5;k++){
				n[i][j][k] = rand()%10;
				printf("|%i",n[i][j][k]);
			}
			printf("\n");
		}
		printf("\n");
	}
	printf("\n");

	return 0;
}
