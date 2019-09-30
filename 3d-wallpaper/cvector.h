#ifndef  CVECTOR_H
#define  CVECTOR_H

#include <malloc.h>

enum V_TYPE{
	V_POINTER	= 0x1,
	V_INTEGER	= 0x2,
	V_UINTEGER	= 0x3,
	V_DECIMAL	= 0x4
};

union v_value{
	void * pointer;
	long long int integer;
	unsigned long long int uinteger;
	double decimal;
};

typedef struct __vector{
	//enum V_TYPE vtype;
	union v_value *value;
	unsigned long long int size;
	unsigned long long int limit;
}vector;

vector *cv_new();
int cv_appendp(vector *, void *);
int cv_appendd(vector *, long long int);
int cv_appendu(vector *, unsigned long long int);
int cv_appendf(vector *, double);
void cv_free(vector *);
void cv_clear(vector *);

#endif  /*CVECTOR_H*/
