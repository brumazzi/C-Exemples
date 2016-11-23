#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <time.h>

void *t_callback(void *arg);
pthread_mutex_t t_sync;

int main(int argc, char **argv){
	pthread_t line[5];

	srand(time(NULL));

	if(pthread_mutex_init(&t_sync, NULL)){
		puts("Mutex init failed");
		return 1;
	}

	for(int x=0; x<5; x++){
		int err = pthread_create(&line[x], NULL, t_callback, x);
		if(err)
			printf("Erro to create thread: [%s]\n", strerror(err));
	}
	
	for(int x=0; x<5; x++){
		pthread_join(line[x], NULL);
	}

	pthread_mutex_destroy(&t_sync);

	return 0;
}

void *t_callback(void *arg){
	pthread_mutex_lock(&t_sync);
	printf("Start thread[%d]\n", arg);

	int t = rand()%3+1;
	sleep(t);

	printf("thread[%i] sleep: %d\n", arg, t);
	
	pthread_mutex_unlock(&t_sync);
}
