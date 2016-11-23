#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>
#include <sys/types.h>

typedef struct __node__{
	pid_t pid;
	struct __node__ *next;
}Node;

void push(Node **n, pid_t pid){
	Node *new = (Node *) malloc(sizeof(Node));
	new->next = (*n);
	new->pid = pid;
	(*n) = new;
}

pid_t pop(Node **n){
	if(!*n)
		return 0;
	pid_t pid = (*n)->pid;
	void *del = (void *) (*n);
	(*n) = (*n)->next;
	free(del);

	return pid;
}

Node *get_pid(const char *process){
	DIR *dir = NULL;
	struct dirent *ent = NULL;
	char buff[512] = {0};
	Node *n = NULL;

	dir = opendir("/proc");
	if(!dir)
		return 0;

	while(ent = readdir(dir)){
		pid_t pid = atoi(ent->d_name);

		if(!pid)
			continue;

		snprintf(buff, sizeof(buff), "/proc/%d/comm", pid);
		FILE *fp = fopen(buff,"r");

		if(!fp)
			continue;

		fscanf(fp,"%512[^\n]", buff);
		if(!strcmp(buff, process))
			push(&n, pid);

		fclose(fp);
	}

	return n;
}

int main(int argc, char **argv){
	pid_t pid;
	if(argc < 2)
		return -1;

	Node *n = get_pid(argv[1]);

	while(pid = pop(&n))
		printf("%d\n",pid);

	return 0;
}
