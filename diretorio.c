#include <dirent.h>
#include <stdio.h>

int main(){
	DIR *d = opendir("/home/");
	struct dirent *ent = NULL;

	if(d){
		while(ent = readdir(d))
			printf("/home/%s\n",ent->d_name);
	}else
		printf("Não existe.\n");

	return 0;
}
