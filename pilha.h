#ifndef PILHA_H
#define	PILHA_H

#include <stdio.h>

struct __pilha__{
    const char *value;
    struct __pilha__ *next;
};

typedef struct __pilha__ PILHA;

int insertp(PILHA **p,char *value){
    //if(!p) return 0;
    PILHA *_new = (PILHA *) malloc(sizeof(PILHA));
    
    _new->value = value;
    _new->next = *p;
    *p = _new;
    
    return 1;
}

PILHA *removep(PILHA *p){
    if(!p) return NULL;
    PILHA buff;
    PILHA *resp = NULL;
    PILHA *_del = NULL;//(PILHA *) malloc(sizeof(PILHA));
    
    buff = *(p->next);
    resp = &buff;
    _del = p;
    free(_del);
    
    return resp;
}

#endif
