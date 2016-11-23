#include <gtk-3.0/gtk/gtk.h>

int main(int argc, char **argv){
	gtk_init(&argc, &argv);

	GtkWidget *win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	GtkWidget *trv = gtk_tree_view_new();
	
	GtkCellRenderer *render1 = gtk_cell_renderer_text_new();
	GtkCellRenderer *render2 = gtk_cell_renderer_text_new();
	GtkTreeViewColumn *col1 = gtk_tree_view_column_new_with_attributes("ID",render1, "text", 0, NULL);
	GtkTreeViewColumn *col2 = gtk_tree_view_column_new_with_attributes("Nome",render2, "text", 1, NULL);


	gtk_tree_view_append_column(GTK_TREE_VIEW(trv), col1);
	gtk_tree_view_append_column(GTK_TREE_VIEW(trv), col2);
	gtk_container_add(GTK_CONTAINER(win), trv);

	GtkListStore *list = gtk_list_store_new(2, G_TYPE_INT, G_TYPE_STRING);
	GtkTreeIter i1;
	gtk_list_store_append(list, &i1);
	gtk_list_store_set(list, &i1, 0, 16, 1, "Jacinto",-1);
	//gtk_list_store_set(list, &i1, 0, 16, -1);
	//gtk_list_store_set(list, &i1, 1, "jão", -1);
	gtk_tree_view_set_model(GTK_TREE_VIEW(trv), GTK_TREE_MODEL(list));

	gtk_widget_show_all(win);
	g_signal_connect(G_OBJECT(win), "destroy", G_CALLBACK(gtk_main_quit), NULL);
	gtk_list_store_clear(list);
	gtk_main();

	return 0;
}
