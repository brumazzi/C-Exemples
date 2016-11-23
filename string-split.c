#include <string.h>
#include <stdio.h>

void main(){
	char str[512] = "maçã|pera|banana|uva|cereja|graviola";
	const char c_split[2] = "|";
	char *str_list;

	str_list = strtok(str, c_split);

	while(str_list){
		puts(str_list);
		str_list = strtok(NULL, c_split);
	}
}
