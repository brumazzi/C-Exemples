#include <stdio.h>
//void print(const char *fmt, ...) __attribute__((format(printf,1,2)));
//
int print(void *obj, const char *fmt, ...)
	__attribute__((format(printf,2,3)));
