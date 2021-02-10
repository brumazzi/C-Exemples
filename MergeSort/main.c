#include <merge.h>
#include <stdio.h>

int main(int argc, char *argv[]){
	const int vec_len = 8;
	//int vec[] = {5,12,4,1,9,8,7,10,2,6,3,11,12};
	int vec[] = {4,8,7,2,3,1,9,6};

	merge_sort(vec, 0, vec_len);

	for(int x=0; x<vec_len; x++){
		printf("%d:", vec[x]);
	}
	printf("\n");
	return 0;
}
