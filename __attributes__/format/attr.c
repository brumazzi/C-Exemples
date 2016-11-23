#include <stdio.h>
//void print(const char *fmt, ...) __attribute__((format(printf,1,2)));
//
extern int print(void *obj, const char *fmt, ...)
	__attribute__((format(printf,2,3)));
