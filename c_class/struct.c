#include <stdio.h>

typedef struct p_class{
	int x;
	char c;
	char *str;
	void (*new_text)(struct p_class *m,char *str);
	void (*new_int)(struct p_class *m,int x);
	void (*new_char)(struct p_class *m,char c);
}MyClass;

void new_int(MyClass *m,int x){
	m->x = x;
}
void new_char(MyClass *m,char c){
	m->c = c;
}
void new_text(MyClass *m,char *str){
	m->str = str;
}

MyClass *new_MyClass(){
	MyClass *swap = (MyClass*) malloc(sizeof(MyClass));
	swap->new_text = new_text;
	swap->new_int = new_int;
	swap->new_text = new_text;

	return swap;
}

void main(){
	MyClass *m = new_MyClass();
	m->new_text(m,"novo texto");
	m->new_int(m,47);

	printf("%s\n%i\n",m->str,m->x);
}
