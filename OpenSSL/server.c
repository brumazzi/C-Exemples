#include "ssl_base.h"

int open_listener(int port);
void Servlet(SSL* ssl);

void main(){
	SSL_CTX *ctx;
    int server;
    char portnum[]="5000";

        char CertFile[] = "./ssl.pem";
        char KeyFile[] = "./ssl.pem";

    SSL_library_init();

    ctx = init_CTX();        /* initialize SSL */
    load_certificates(ctx, CertFile, KeyFile); /* load certs */
    server = open_listener(atoi(portnum));    /* create server socket */
    while (1)
    {   struct sockaddr_in addr;
        socklen_t len = sizeof(addr);
        SSL *ssl;

        int client = accept(server, (struct sockaddr*)&addr, &len);  /* accept connection as usual */
        printf("Connection: %s:%d\n",inet_ntoa(addr.sin_addr), ntohs(addr.sin_port));
        ssl = SSL_new(ctx);              /* get new SSL state with context */
        SSL_set_fd(ssl, client);      /* set connection socket to SSL state */
        Servlet(ssl);         /* service connection */
    }
    close(server);          /* close server socket */
    SSL_CTX_free(ctx);         /* release context */
}

int open_listener(int port){
	int sd;
	struct sockaddr_in addr;

	sd = socket(PF_INET, SOCK_STREAM, 0);
	bzero(&addr, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_port = htons(port);
	addr.sin_addr.s_addr = INADDR_ANY;

	if(bind(sd,(struct sockaddr*)&addr, sizeof(addr))){
		perror("N?o foi possivel conectar nessa porta.");
		abort();
	}

	if(listen(sd,10)){
		perror("N?o foi possivel configurar a porta");
		abort();
	}

	return sd;
}

void Servlet(SSL* ssl){ /* Serve the connection -- threadable */
    char buf[1024];
    char reply[1024];
    int sd, bytes;
    const char* HTMLecho="<html><body><pre>%s</pre></body></html>\n\n";

    if ( SSL_accept(ssl) == FAIL )     /* do SSL-protocol accept */
        ERR_print_errors_fp(stderr);
    else{
        show_certs(ssl);        /* get any certificates */
        bytes = SSL_read(ssl, buf, sizeof(buf)); /* get request */
        if ( bytes > 0 ){
            buf[bytes] = 0;
            printf("Client msg: \"%s\"\n", buf);
            sprintf(reply, HTMLecho, buf);   /* construct reply */
            SSL_write(ssl, reply, strlen(reply)); /* send reply */
        }else
            ERR_print_errors_fp(stderr);
    }
    sd = SSL_get_fd(ssl);       /* get socket connection */
    SSL_free(ssl);         /* release SSL state */
    close(sd);          /* close connection */
}
