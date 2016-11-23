#include <stdio.h>
#include <malloc.h>
#include <string.h>

typedef struct __attribute__((__packed__)){
	char *s;
	int x;
}my_struct;

void *chr2struct(const char *text){
	char c;
//	my_struct *mst = (my_struct *) malloc(sizeof(my_struct));
	void **swap = (void **) malloc(sizeof(my_struct));
	void **res = swap;

	if(!text)
		return 0;

	int i;
	while(*text){
		c = *text;
		text++;
		char str[32];
		int x, len;
		char *data;
		switch(c){
			case 's':
			case 'c':
				sscanf(text,"%[^\037]",str);
				text += strlen(str)+1;
				len = atoi(str);
				data = (void *) malloc(sizeof(char)*len);
				strcpy(data,text);
				text+= len+1;
				swap[i] = data;
				break;
			case 'i':
				sscanf(text,"%[^\037]",str);
				text += strlen(str)+1;
				len = atoi(str);
				data = (void *) malloc(sizeof(int)*len);
				for(x=0; x<len; x++){
					sscanf(text,"%i", (int *) &data[x]);
					sprintf(str,"%i", (int) data[x]);
					text+=strlen(str)+1;
					swap[i] = (void *) *data;
				}
				break;
			default:
				return 0;
		}
		i++;
	}

	return res;
}

int main(int argc, char *argv[]){
	my_struct *mst;
	mst = (my_struct *) chr2struct("s16\037qwertyuiopasdfgh\0i1\03716\0");
	printf("%s | %i\n", mst->s, mst->x);
}
