/*Socket and Network headers*/
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <string.h>

#include <stdio.h>
#include <stdlib.h>

#define PORT 8000
#define TCP 6

int main(int argc, char *argv[]){
	int _sock;
	int res;
	char buffer[256];
	struct sockaddr_in serv; //socket address struct
	struct hostent *server;

	// int socket(sin_family, socket_type, protocol)
	// protocol TCP equal 6 (TRANSMISSION CONTROL PROTOCOL)
	_sock = socket(AF_INET, SOCK_STREAM, TCP);
	if(_sock < 0)
		return 1;

	server = gethostbyname("127.0.0.1");

	// set zero in buffer
	bzero( (char *) &serv, sizeof(serv));

	// configure connection
	serv.sin_family = AF_INET;
	serv.sin_port = htons(PORT);
	bcopy((char *) server->h_addr,
			(char *) &serv.sin_addr.s_addr,
			server->h_length);
	//serv.sin_addr.s_addr = INADDR_ANY;

	int len = sizeof(serv);
	res = connect(_sock, (struct sockaddr *) &serv, len);

	if(res < 0)
		return 2;

	bzero(buffer, 256);
	fgets(buffer,255,stdin);
	res = write(_sock,buffer, strlen(buffer));

	char c;
	while(1)
		if(read(_sock, &c, 1) != 1)
			break;
		else
			printf("%c",c);
	//	res = read(_sock, buffer, 255);
	//if(res)
	//	puts(buffer);
	//strcpy(buffer,"return message.");
	
	close(_sock);
}
