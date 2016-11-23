#include <errno.h>
#include <unistd.h>
#include <malloc.h>
#include <string.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <resolv.h>
#include <openssl/ssl.h>
#include <openssl/err.h>

#define FAIL -1

void load_certificates(SSL_CTX *ctx, char *cfile, char *keyfile);
void show_certs(SSL *ssl);
SSL_CTX *init_CTX(void);

void load_certificates(SSL_CTX *ctx, char *cfile, char *keyfile){
	if(SSL_CTX_load_verify_locations(ctx, cfile, keyfile)!=1)
		ERR_print_errors_fp(stderr);
	
	if(SSL_CTX_set_default_verify_paths(ctx)!=1)
		ERR_print_errors_fp(stderr);

	if(SSL_CTX_use_certificate_file(ctx, cfile, SSL_FILETYPE_PEM) <= 0){
		ERR_print_errors_fp(stderr);
		abort();
	}

	if(SSL_CTX_use_PrivateKey_file(ctx, keyfile, SSL_FILETYPE_PEM) <= 0){
		ERR_print_errors_fp(stderr);
		abort();
	}

	if(!SSL_CTX_check_private_key(ctx)){
		fprintf(stderr,"chave n?o possui um certificado publico\n");
		abort();
	}

	SSL_CTX_set_verify(ctx, SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT, 0);
	SSL_CTX_set_verify_depth(ctx, 4);
}

void show_certs(SSL *ssl){
	X509 *cert;
	char *line;

	cert = SSL_get_peer_certificate(ssl);
	if(cert){
		printf("Server certificates:\n");
		line = X509_NAME_oneline(X509_get_subject_name(cert), 0, 0);
		printf("Subject: %s\n",line);
		free(line);
		line = X509_NAME_oneline(X509_get_issuer_name(cert), 0, 0);
		printf("Issuer: %s\n",line);
		free(line);
		X509_free(cert);
	}else
		puts("No certificates.");
}

SSL_CTX *init_CTX(void){
	SSL_METHOD *method;
	SSL_CTX *ctx;

	OpenSSL_add_all_algorithms();
	SSL_load_error_strings();
	method = (SSL_METHOD *) SSLv3_server_method();
	ctx = SSL_CTX_new(method);

	if(!ctx){
		ERR_print_errors_fp(stderr);
		abort();
	}

	return ctx;
}

