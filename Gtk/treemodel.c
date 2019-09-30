#include <gtk-3.0/gtk/gtk.h>

int main(int argc, char **argv){
	gtk_init(&argc, &argv);
	const char *strings[]={
		"banana",
		"mensagem",
		"carro",
	};

	const int numb[]={
		4,7,12,
	};

	GtkListStore *list = gtk_list_store_new(2, G_TYPE_STRING, G_TYPE_INT);
	for(int x=0; x<3; x++){
		GtkTreeIter iter;
		gtk_list_store_append(list, &iter);
		gtk_list_store_set(list, &iter, 0, strings[x], 1, numb[x], -1);
	}

	GtkTreeIter iter;
	GValue value = {0,};
	gtk_tree_model_iter_nth_child(list, &iter, NULL, 0);
	gtk_tree_model_get_value(GTK_TREE_MODEL(list), &iter, 0, &value);
	puts(g_value_get_string(&value));
	while(gtk_tree_model_iter_next(GTK_TREE_MODEL(list), &iter)){
		GValue value = {0,};
		gtk_tree_model_get_value(GTK_TREE_MODEL(list), &iter, 0, &value);
		puts(g_value_get_string(&value));
	}

	GtkWidget *win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	GtkWidget *tree = gtk_tree_view_new_with_model(list);
	gtk_container_add(win, tree);

	GtkCellRenderer *rend;
	GtkTreeViewColumn *col;
	rend = gtk_cell_renderer_text_new();
	col = gtk_tree_view_column_new_with_attributes("Item", rend, "text", 0, NULL);
	gtk_tree_view_append_column(GTK_TREE_VIEW(tree), col);
	rend = gtk_cell_renderer_text_new();
	col = gtk_tree_view_column_new_with_attributes("NUMB", rend, "text", 1, NULL);
	gtk_tree_view_append_column(GTK_TREE_VIEW(tree), col);

	gtk_widget_show_all(win);

	gtk_main();
}
