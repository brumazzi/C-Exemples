#include <stdio.h>
#include <string.h>

int main(int argc, char **argv){
	char key[52];
	char *acpt = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890-_+=-*.!@$&*|";
	int len;
	int ac_len = strlen(acpt);
	int ok;
	bzero(key,52);

	key[0] = '0';

	while(key[51] != '9'){
		len = strlen(key);
		for(int x=0; x<len; x++){
			ok = 0;
			for(int y=0; y<ac_len; y++){
				if(key[x] == acpt[y]){
					ok = 1;
					break;
				}
			}
			if(!ok)
				key[x]++;
		}
		
		for(int x=0; x<len; x++){
			if(key[x] > 124){
				key[x+1] = key[x+1] ? key[x+1]+1: '0';
				key[x] = '0';
				break;
			}
		}
		puts(key);
		key[0]++;
	}
}
