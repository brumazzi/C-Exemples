#include <gtk-3.0/gtk/gtk.h>

int main(int argc, char **argv){
	gtk_init(&argc, &argv);

	GtkWidget *win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	GtkTable *table = gtk_table_new(3,3, TRUE);

	const char *text[] = {
		"1","2","3","4","5","6","7","8","9"
	};

	int x,y,z=0;
	for(x=0; x<3; x++){
		for(y=0; y<3; y++){
			GtkWidget *lb = gtk_label_new_with_mnemonic(text[z]);
			gtk_table_attach(table, lb, y, y+1, x, x+1, GTK_FILL, GTK_FILL, 1, 1);
			z++;
		}
		
	}
	
	gtk_container_add(GTK_CONTAINER(win), table);
	gtk_widget_show_all(win);
	g_signal_connect(G_OBJECT(win), "destroy", G_CALLBACK(gtk_main_quit), NULL);

	gtk_main();

	return 0;
}
