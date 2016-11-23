#include "class.h"

#include <stdio.h>

typedef struct{
	const char *text;
	void(*write)(const char *);
}CClass;

void set(const char *msg){
	LOAD_SELF(self, CClass);

	puts(self->text);
	puts(msg);
}

int main(int argc, char **argv){
	CClass o;
	CClass o2;
	CL_SYM(&o,o.write,set);
	//CL_SYM(&o2,o.write,set);

	o.text = "Mensagem";
	//o2.text = "Other";
	o.write("Second text.");
	//o2.write("Message22.");

	return 0;
}
