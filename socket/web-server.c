#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>

char webpage[] = 
"HTTP/1.1 200 OK\r\n"
"Content-Type: text/html; charset=UTF-8\r\n\r\n"
"<!DOCTYPE HTML>\r\n"
"<html><head><title>MyServer</title>\r\n"
"<body><center><h1>Lorem</h1></center></body></html>";

int main(int argc, char **argv){
	struct sockaddr_in serv, client;
	socklen_t len = sizeof(client);
	int fd_serv, fd_cli;
	char buff[2048];
	int on = 1;
	int ico;
	int port = 8080;
	
	fd_serv = socket(AF_INET, SOCK_STREAM, 0);
	if(fd_serv < 0){
		perror("socket");
		exit(1);
	}

	setsockopt(fd_serv, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(int));

	serv.sin_family = AF_INET;
	serv.sin_addr.s_addr = INADDR_ANY;
	serv.sin_port = htons(port);

	if(bind(fd_serv, (struct sockaddr *) &serv, sizeof(serv)) == -1){
		perror("bind");
		close(fd_serv);
		exit(2);
	}

	if(listen(fd_serv, 10) == -1){
		perror("listen");
		close(fd_serv);
		exit(3);
	}

	while(1){
		fd_cli = accept(fd_serv, (struct sockaddr *) &client, &len);
		if(fd_cli == -1){
			perror("Connection failed...\n");
			continue;
		}

		printf("Got client connection...\n");
		if(!fork()){
			close(fd_serv);
			memset(buff, 0, 2048);
			read(fd_cli, buff, 2047);

			printf("%s\n", buff);

			if(!strncmp(buff, "GET /favicon.ico", 16)){
				ico = open("favicon.ico", O_RDONLY);
				sendfile(fd_cli, ico, NULL, 4000);
				close(ico);
			}else
				write(fd_cli, webpage, sizeof(webpage) -1);
			
			close(fd_cli);
			printf("closing...\n");
			exit(0);
		}

		close(fd_cli);
	}
}
