#include <stdio.h>

#define out printf("%i\n",x)

void main(){
	unsigned long long int x = 1;
	unsigned long long int y;
	int rpt = 0;
	while(x++){
		rpt = 0;
		if(x == 2)
			out;
		else if(x%2 == 1){
			for(y=2;y<x;y++)
				if(x%y == 0){
					rpt++;
					break;
				}
			if(!rpt)
				out;
		}
	}
}
