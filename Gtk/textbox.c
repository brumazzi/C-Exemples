#include <gtk-3.0/gtk/_gtk.h>

int main(int argc, char **argv){
	gtk_init(&argc, &argv);

	GtkWidget *win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	GtkWidget *tbox = gtk_combo_box_text_new();

	gtk_container_add(GTK_CONTAINER(win), tbox);
	gtk_combo_box_text_append(GTK_COMBO_BOX_TEXT(tbox), 0, "text");
	gtk_combo_box_text_append(GTK_COMBO_BOX_TEXT(tbox), 0, "xxtext");
	gtk_combo_box_text_append(GTK_COMBO_BOX_TEXT(tbox), 0, "111text");
	gtk_combo_box_text_append(GTK_COMBO_BOX_TEXT(tbox), 0, "qqqtext");
	gtk_combo_box_text_append(GTK_COMBO_BOX_TEXT(tbox), 0, "qwertext");
	gtk_combo_box_text_insert_text(GTK_COMBO_BOX_TEXT(tbox), 3, "insert");

	gtk_widget_show_all(win);

	gtk_main();

	return 0;
}
