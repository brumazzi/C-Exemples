#include <stdio.h>
#ifdef __WIN32
	#include <winsocke2.h>
#else
	#include <sys/types.h>
	#include <sys/socket.h>
	#include <netinet/in.h>
	#include <netdb.h>
#endif

#define AUTHOR "Daniel B. Brumazzi"
#pragma comment(lib, "ws2_32.lib") //Winsock Library

char *header = "GET / HTTP/1.1\r\n"
"Host: localhost:8081\r\n"
"User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0\r\n"
"Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n"
"Accept-Language: pt-BR\r\n"
"Accept-Encoding: gzip, deflate\r\n"
"DNT: 1\r\n"
"Connection: keep-alive\r\n\r\n";

int main(int argc, char **argv){
	int sock;
	struct sockaddr_in server;
#ifdef __WIN32
	WSADATA wsa;
	if(WSAStartup(MAKEWORD(2,2), &wsa) != 0)
		return 1;
#endif
	if((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
		return 2;

	server.sin_addr.s_addr = inet_addr("192.168.0.10");
	server.sin_family = AF_INET;
	server.sin_port = htons(80);

	if(connect(sock, (struct sockaddr *)&server, sizeof(server)) < 0)
		return 3;

	const char *msg = header;
		//"GET / http/1.1\r\n\r\n";
	int rlen;
	if(rlen = send(sock, msg, strlen(msg), 0) < 0)
		return 4;

	char res[5120];
	if(recv(sock, res, 5120, 0) < 0)
		return 5;

	printf("%d\n", rlen);
//	res[rlen] = '\0';
	puts(res);
	close(sock);

	return 0;
}
