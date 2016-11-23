#ifndef  __CLASS_H__
#define  __CLASS_H__

#define CL_SYM(obj, m_set, m_ref)\
	swap = (void*) obj;\
	__cl_sym__((void (*)()) &m_set, m_ref)

#define LOAD_SELF(SELF, CLASS)\
	static CLASS *SELF = 0;\
	if(swap){\
		SELF = (CLASS*) swap;\
		swap = 0;\
		return;\
	}

void *swap;

typedef struct{
	int x;
	char *text;
	void(*write)();
}Class;

void __cl_sym__(void (*)(), void(*)());

#endif  /*CLASS_H*/
