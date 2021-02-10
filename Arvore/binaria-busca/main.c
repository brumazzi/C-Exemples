#include <stdio.h>
#include <tree.h>

#define RESULT_CAST ? "SUCCESS!" : "NOT FOUND!"

int main(int argc, char *argv[]){
	struct __tree *t = NULL;

	long long int values[] = {14,17,6,2,32,8,16,15,4,3,26,30,13,33,1,34,11};
	int x=0;
	while(x < 16){
		tree_insert(&t, NULL, values[x]);
		x++;
	}

	tree_remove(t, 14);
	tree_remove(t, 1);
	tree_remove(t, 6);
	tree_remove(t, 33);


	printf(" 12 %s\n", tree_search(t, 12) RESULT_CAST);
	printf(" 11 %s\n", tree_search(t, 11) RESULT_CAST);
	printf(" 26 %s\n", tree_search(t, 26) RESULT_CAST);
	printf(" 33 %s\n", tree_search(t, 33) RESULT_CAST);
	printf(" 34 %s\n", tree_search(t, 34) RESULT_CAST);
	printf(" 1 %s\n", tree_search(t, 1) RESULT_CAST);
	printf(" 6 %s\n", tree_search(t, 6) RESULT_CAST);
	printf(" 4 %s\n", tree_search(t, 4) RESULT_CAST);

	tree_clean(t);
	return 0;
}
