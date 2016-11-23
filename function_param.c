#include <stdio.h>

void printer(const char *Message){
	printf(Message);
}

void execute(void(*prin)(const char *),const char *str){
	prin(str);
}

void main(){
	execute(printer, "Mensagem de texte\n");
}
