#include <stdio.h>
#include <string.h>
#include <errno.h>

int send_mail(const char *to,
		const char *from,
		const char *subject,
		const char *message){
	FILE *mail = popen("/usr/lib/sendmail -t", "w");
	if(!mail){
		perror("Failed to invoke sendmail");
		return 0;
	}

	fprintf(mail, "To: %s\n", to);
	fprintf(mail, "From: %s\n", from);
	fprintf(mail, "Subject: %s\n\n", subject);
	fwrite(message, 1, strlen(message), mail);
	fwrite(".\n", 1, 2, mail);
	pclose(mail);

	return 1;
}

int main(int argc, char *argv[]){
	if (argc < 5){
		puts("Usage: send_mail <to> <from> <subject> <message>");
		return 1;
	}
	if(!send_mail(argv[1], argv[2], argv[3], argv[4]))
		puts("Not be possible send this email.");
	else
		puts("Send sucess!");

	return 0;
}
