#include <gtk-3.0/gtk/gtk.h>
#include <stdio.h>

int main(int argc, char **argv){
	gtk_init(&argc, &argv);

	GtkListStore *store = gtk_list_store_new(1, G_TYPE_STRING);
	GtkWidget *win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	GtkWidget *box = gtk_combo_box_text_new();

	gtk_container_add(GTK_CONTAINER(win), box);

	g_signal_connect(G_OBJECT(win), "destroy", G_CALLBACK(gtk_main_quit), 0);

	gtk_combo_box_text_append_text(box, "item1");
	gtk_combo_box_text_append_text(box, "item2");
	gtk_combo_box_text_append_text(box, "item3");

	gtk_widget_show_all(win);

	gtk_main();
	return 0;
}
