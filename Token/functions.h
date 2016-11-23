#define MAX(x,y) ((x) > (y) ? (x) : (y))
#define MIN(x,y) ((x) < (y) ? (x) : (y))

#define TOKEN_0 0x00
#define TOKEN_1 0x01
#define TOKEN_2 0x02
#define TOKEN_3 0x03
#define TOKEN_4 0x04
#define TOKEN_5 0x05
#define TOKEN_6 0x06
#define TOKEN_7 0x07
#define TOKEN_8 0x08
#define TOKEN_9 0x10

#define TOKEN_A 0xaa
#define TOKEN_B 0x23
#define TOKEN_C 0xf3
#define TOKEN_D 0x5f

#include <stdio.h>

#define token_value(n) printf("TOKEN_" #n " = %u",TOKEN_##n)
