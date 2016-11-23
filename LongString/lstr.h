#ifndef  __LSTR_H__
#define  __LSTR_H__

#include <unistd.h>

typedef struct _long_str_node_ *lsnode;
typedef struct _long_str_ *String;

String lstr_new(void);
void lstr_cat(String str, const char c);
void lstr_clear(String str);
const char *lstr_parse(String str);
void lstr_free(String str);
#endif  /*LSTR_H*/
