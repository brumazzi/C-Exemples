#include <stdio.h>

#define CL_SYNC(obj, m_set, m_ref)\
	m_set = m_ref;\
	m_set(obj)


#define LOAD_CLASS(ref, class, self)\
	static class *self = 0;\
	if(ref){\
		self = (class *)ref;\
		return;\
	}\
	if(ref)\
		return

typedef struct{
	int x;
	const char *name;
	void (*write)(void *self);
}Class;

void c_write(void *ref){
	LOAD_CLASS(ref, Class, self);

	puts(self->name);
}
int main(int argc, char **argv){
	Class c;

	CL_SYNC(&c, c.write, c_write);

	c.name = "C_Class";
	c.write(0);
	c.name = "Write \"name\" in Class \"c\"";
	c.write(0);

	return 0;
}
