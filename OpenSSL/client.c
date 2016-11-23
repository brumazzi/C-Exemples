#include "ssl_base.h"

int open_connection(const char *hostname, int port);

struct nhostent{
	char *h_name;
	char **h_aliases;
	int h_addrtype;
	int h_length;
	char **h_addr_list;
	char *h_addr;
};

int main(){
	SSL_CTX *ctx;
	int server;
	SSL *ssl;
	char swap[1024];
	int bytes;
	char hostname[]="127.0.0.1";
	char portnum[]="5000";
	char ck[]="./ssl.pem";

	SSL_library_init();

	ctx = init_CTX();
	load_certificates(ctx, ck, ck);
	server = open_connection(hostname, atoi(portnum));
	ssl = SSL_new(ctx);
	SSL_set_fd(ssl, server);
	if(SSL_connect(ssl) == FAIL)
		ERR_print_errors_fp(stderr);
	else{
		char *msg = "Connectado";

		printf("Connected with %s encryption\n",SSL_get_cipher(ssl));
		show_certs(ssl);
		SSL_write(ssl, msg, strlen(msg));
		bytes = SSL_read(ssl, swap, sizeof(swap));
		swap[bytes] = 0;
		printf("Receive: \"%s\"\n",swap);
		SSL_free(ssl);
	}

	close(server);
	SSL_CTX_free(ctx);
	return 0;
}

int open_connection(const char *hostname, int port){
	int sd;
	struct nhostent *host;
	struct sockaddr_in addr;

	if(!(host = (struct nhostent*) gethostbyname(hostname))){
		perror(hostname);
		abort();
	}
	sd = socket(PF_INET, SOCK_STREAM, 0);
	bzero(&addr, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_port = htons(port);
puts("asd");
	//addr.sin_addr.s_addr = *(long *)(host->h_addr);
	printf("%i\n",*host->h_addr);

	if(connect(sd, (struct sockaddr*) &addr, sizeof(addr)) != 0){
		close(sd);
		perror(hostname);
		abort();
	}

	return sd;
}

