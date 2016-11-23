#include <stdio.h>

__attribute__((constructor(2000))) static void init_01(){
	puts("prioridade '2000'");
}

__attribute__((constructor(543))) static void init_02(){
	puts("prioridade '543'");
}
