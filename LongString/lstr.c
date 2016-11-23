#include "lstr.h"

#include <malloc.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

struct _long_str_node_{
	char data;
	lsnode next;
};

struct _long_str_{
	size_t size;
	const char *data;
	lsnode point;
};

String lstr_new(void){
	String _new = malloc(sizeof(struct _long_str_));
	_new->size = 0;
	_new->point = NULL;
	_new->data = NULL;

	return _new;
}

void lstr_cat(String str, const char c){
	lsnode _new = (lsnode) malloc(sizeof(struct _long_str_node_));
	_new->data = c;
	_new->next = str->point;
	str->point = _new;

	str->size++;
}

void lstr_clear(String str){
	lsnode buff = str->point;
	lsnode remov;
	while(buff){
		remov = buff;
		buff = buff->next;
		free((void*)remov);
	}
}

const char *lstr_parse(String str){
	lsnode buff = str->point;
	char *data = malloc(str->size);
	bzero(data, str->size);

	int x;
	for(x=0; x<str->size; x++){
		if(!buff)
			break;
		data[str->size-x-1] = buff->data;
		buff = buff->next;
	}

	if(str->data)
		free((void*)str->data);
	str->data = data;
	return (const char *) data;
}

void lstr_free(String str){
	lstr_clear(str);
	if(str->data)
		free((void*)str->data);
	free((void*)str);
}

