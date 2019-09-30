#include <cvector.h>

#include <malloc.h>
#include <stdio.h>
#include <string.h>

vector *cv_new(){
	vector *vec = malloc(sizeof(vector));
	bzero(vec, sizeof(vector));

	vec->value = malloc(sizeof(union v_value)*32);
	bzero(vec->value, sizeof(union v_value)*32);

	vec->limit = 32;
	vec->size = 0;

	return vec;
}

int cv_appendp(vector *vec, void *dta){
	if(vec->size == vec->limit){
		vec->limit += 8;
		vec->value = realloc(vec->value, sizeof(union v_value)*vec->limit);
	}
	vec->value[vec->size].pointer = dta;
	vec->size++;
}

int cv_appendd(vector *vec, long long int dta){
	if(vec->size == vec->limit){
		vec->limit += 8;
		vec->value = realloc(vec->value, sizeof(union v_value)*vec->limit);
	}
	vec->value[vec->size].integer = dta;
	vec->size++;
}

int cv_appendu(vector *vec, unsigned long long int dta){
	if(vec->size == vec->limit){
		vec->limit += 8;
		vec->value = realloc(vec->value, sizeof(union v_value)*vec->limit);
	}
	vec->value[vec->size].uinteger = dta;
	vec->size++;
}

int cv_appendf(vector *vec, double dta){
	if(vec->size == vec->limit){
		vec->limit += 8;
		vec->value = realloc(vec->value, sizeof(union v_value)*vec->limit);
	}
	vec->value[vec->size].decimal = dta;
	vec->size++;
}

void cv_free(vector *vec){
	free(vec->value);
	free(vec);
}

void cv_clear(vector *vec){
	free(vec->value);
	vec->limit = 32;
	vec->size = 0;
	vec->value = malloc(sizeof(union v_value)*32);
}
