#include <gtk/gtk.h>

void main(int argc, char **argv){
	gtk_init(&argc, &argv);

	GtkWidget	*win;
	win	=	gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_window_set_default_size(win,800,600);

	gtk_widget_show_all(win);

	gtk_main();
}
