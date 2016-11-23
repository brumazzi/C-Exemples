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
	int _conn;
	char buffer[256];
	struct sockaddr_in serv,cli; //socket address struct

	// int socket(sin_family, socket_type, protocol)
	// protocol TCP equal 6 (TRANSMISSION CONTROL PROTOCOL)
	_sock = socket(AF_INET, SOCK_STREAM, TCP);
	if(_sock < 0)
		return 1;

	// set zero in buffer
	bzero( (char *) &serv, sizeof(serv));
	
	// configure connection
	serv.sin_family = AF_INET;
	serv.sin_port = htons(PORT);
	serv.sin_addr.s_addr = INADDR_ANY;


	// up service on the port when server is running
	if(bind(_sock, (struct sockaddr *) &serv,
				sizeof(serv)) < 0)
		return 1;

	listen(_sock,5);

	int len = sizeof(cli);
	_conn = accept(_sock,
			(struct sockaddr *) &cli,
			&len);

	puts("accept");

	if(_conn < 0)
		return 2;
	bzero(buffer, 256);
	int res = read(_conn, buffer, 255);

	if(res)
		printf(buffer);

	strcpy(buffer,"return message.");
	res = write(_conn,buffer, strlen(buffer));
	
	close(_conn);
	close(_sock);
}
