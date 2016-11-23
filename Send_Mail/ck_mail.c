#include <C_CkMailMan.h>
#include <C_CkEmail.h>
#include <stdio.h>
#include <malloc.h>
#include <string.h>

typedef struct{
	char *from;
	char *to;
	char *subject;
	char *body;
	char *username;
	char *password;
}Mail;

void send_mail(Mail mail){
	HCkMailMan m_man;
	BOOL success;
	HCkEmail email;

	m_man = CkMailMan_Create();
	//success = CkMailMan_UnlockComponent(m_man,"best");
	success = CkMailMan_UnlockComponent(m_man,"30-day trial");

	if(success != TRUE){
		printf("%s\n",CkMailMan_lastErrorText(m_man));
		CkMailMan_Dispose(m_man);
		return;
	}

	CkMailMan_putSmtpHost(m_man,"smtp.mail.yahoo.com");

	CkMailMan_putSmtpUsername(m_man, mail.username);
	CkMailMan_putSmtpPassword(m_man, mail.password);

	email = CkEmail_Create();

	CkEmail_putSubject(email, mail.subject);
	CkEmail_putBody(email, mail.body);
	CkEmail_putFrom(email, mail.from);
	CkEmail_AddTo(email,"",mail.to);

	success = CkMailMan_SendEmail(m_man, email);
	if(success != TRUE){
		printf("%s\n",CkMailMan_lastErrorText(m_man));
		CkMailMan_Dispose(m_man);
		CkEmail_Dispose(email);
		return;
	}

	success = CkMailMan_CloseSmtpConnection(m_man);
	if(success != TRUE){
		printf("Connection to SMTP server not closed cleanly.\n");
	}

	printf("Mail Sent!\n");

	CkMailMan_Dispose(m_man);
	CkEmail_Dispose(email);
}

Mail *new_mail(const char *self_email, const char *send_email, const char *title, const char *message, const char *user, const char *pass){
	Mail *m = (Mail*) malloc(sizeof(Mail));
	m->from = (char *) malloc(sizeof(char)*strlen(self_email));
	m->to = (char *) malloc(sizeof(char)*strlen(send_email));
	m->subject = (char *) malloc(sizeof(char)*strlen(title));
	m->body = (char *) malloc(sizeof(char)*strlen(message));
	m->username = (char *) malloc(sizeof(char)*strlen(user));
	m->password = (char *) malloc(sizeof(char)*strlen(pass));

	strcpy(m->from, self_email);
	strcpy(m->to, send_email);
	strcpy(m->subject, title);
	strcpy(m->body, message);
	strcpy(m->username, user);
	strcpy(m->password, pass);
	return m;
}

int main(int argc, char *argv[]){
	//Mail m = {"brumazzi_daniel@yahoo.com.br","lucasouzapc@yahoo.com.br","Titulo","Mensagem","brumazzi_daniel","brumazzi0321*"};
	Mail *m = new_mail("brumazzi_daniel@yahoo.com.br","lucasouzapc@yahoo.com.br","Titulo","Mensagem","brumazzi_daniel","brumazzi0321*");

	send_mail(*m);

}
