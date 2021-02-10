#include <merge.h>
#include <malloc.h>

void merge(int *vec, int begin, int mid, int end){
	int com1 = begin,
	    com2 = mid+1,
	    buff = 0,
	    leng = end-begin+1;
	int vec_buff[leng+1];
	//vec_buff = (int *) malloc(leng * sizeof(int));

	while(com1 <= mid && com2 <= end){
		if(vec[com1] < vec[com2]){
			vec_buff[buff] = vec[com1];
			com1++;
		}else{
			vec_buff[buff] = vec[com2];
			com2++;
		}
		buff++;
	}

	while(com1 <= mid){
		vec_buff[buff] = vec[com1];
		buff++;
		com1++;
	}

	while(com2 <= end){
		vec_buff[buff] = vec[com2];
		buff++;
		com2++;
	}

	for(buff = begin; buff<=end; buff++){
		vec[buff] = vec_buff[buff-begin];
	}

//	free(vec_buff);
}

void merge_sort(int *vec, int begin, int end){
	if(begin < end){
		int mid = (end+begin)/2;

		merge_sort(vec, begin, mid);
		merge_sort(vec, mid+1, end);
		merge(vec, begin, mid, end);
	}
}
