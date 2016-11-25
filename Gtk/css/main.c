#include <gtk-3.0/gtk/gtk.h>
#include <string.h>

const char *style = "#window{background-color: #ff0000;}";

int main(int argc, char **argv){
	GtkWidget *win;
	GtkWidget *grid;
	GtkWidget *btn;
	GtkWidget *ent;
	GtkCssProvider *css;
	GError *error;
	GdkScreen *screen;
	GdkDisplay *display;

	gdk_init(&argc, &argv);
	gtk_init(&argc, &argv);

	win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	grid = gtk_grid_new();
	btn = gtk_button_new_with_mnemonic("Button");
	ent = gtk_entry_new();
	css = gtk_css_provider_new();
	display = gdk_display_get_default();
	screen = gdk_display_get_default_screen(display);

	gtk_widget_set_name(win, "window");
	gtk_widget_set_name(btn, "button");
	gtk_widget_set_name(ent, "entry");
	gtk_widget_set_name(grid, "grid");

	gtk_css_provider_load_from_path(css, "style.css", &error);
	//gtk_css_provider_load_from_data(css, style, strlen(style), &error);
	gtk_style_context_add_provider_for_screen(screen, GTK_STYLE_PROVIDER(css), GTK_STYLE_PROVIDER_PRIORITY_USER);

	gtk_container_add(GTK_CONTAINER(win), grid);
	gtk_grid_attach(GTK_GRID(grid), btn, 0,1,1,1);
	gtk_grid_attach(GTK_GRID(grid), ent, 0,0,1,1);


	g_signal_connect(G_OBJECT(win), "destroy", G_CALLBACK(gtk_main_quit), NULL);
	
	gtk_widget_show_all(win);

	gtk_main();
}
