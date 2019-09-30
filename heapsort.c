#include <stdio.h>

void heapsort(int *vec, int size);

int main(int argc, char *argv[]){
	int vec[] =  {3,4,6,1,2,9,7,10,5,8};
	heapsort(vec, 10);

	for(int x=0; x<10; x++)
		printf("%d:", vec[x]);
	return 0;
}

void heapsort(int *vec, int size){
	int limit = size/2;
	int v;
	int p,f;

	while(1){
		if(limit){
			limit--;
			v = vec[limit];
		}else{
			size--;
			if(size <= 0) return;
			v = vec[size];
			vec[size] = vec[0];
		}
		p = limit;
		f = limit*2+1;
		while(f < size){
			if((f+1<size) && (vec[f+1] > vec[f]))
				f++;
			if(vec[f] > v){
				vec[p] = vec[f];
				p = f;
				f = p*2+1;
			}else break;
		}
		vec[p] = v;
	}
}
