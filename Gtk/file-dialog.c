#include <gtk-3.0/gtk/gtk.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]){
	gtk_init(&argc, &argv);

	int res;
	GtkFileChooserDialog *fl = gtk_file_chooser_dialog_new("", NULL, GTK_FILE_CHOOSER_ACTION_OPEN, "_Cancel", GTK_RESPONSE_CANCEL, "_Open", GTK_RESPONSE_ACCEPT, NULL);
	res = gtk_dialog_run(fl);

	if(res == GTK_RESPONSE_ACCEPT){
		char *fname = gtk_file_chooser_get_filename(fl);
	}
}
