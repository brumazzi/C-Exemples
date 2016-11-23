__attribute__((noreturn)) void kill(){
	asm("mov $1, %rbx");
	asm("mov $1, %rax");
	asm("int $0x80");
}
