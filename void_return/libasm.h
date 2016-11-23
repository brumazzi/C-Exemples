#ifndef __LIBASM__
	#define __LIBASM

	#ifndef __GET__
		#define __GET__(var) asm("movl %%eax, %%eax": "=a"(var));
	#endif
	
	#ifndef __RET__
		#define __RET__(var) void a_ret(){asm("movl %edi, %eax");}
	#endif

#endif
