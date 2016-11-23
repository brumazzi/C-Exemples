#include <stdio.h>
#include <stdlib.h>
#include <string.h> 
#include <pthread.h>
#include <unistd.h> //Contem a função sleep
 
struct valor{
   int tempo;
   int id;
};
 
void *espera(void *tmp){
   struct valor *v = (struct valor *) tmp;
   sleep(v->tempo);
   printf("Thread <%d> executada após %d segundos.\n",v->id,v->tempo);
}
 
int main(){
   pthread_t linhas[10];
   int execute,i;
   struct valor *v;
   srand(time(NULL));
   for (i=0;i<10;i++){
      v = (struct valor *) malloc(sizeof(struct valor *));
      v->tempo = (rand()%10+1);
      v->id = i;
      printf("Criada a thread <%d> com tempo de <%d> segundos.\n",i,v->tempo);
      execute = pthread_create(&linhas[i],NULL,espera,(void *)v);
   }
   pthread_exit(NULL);
}
