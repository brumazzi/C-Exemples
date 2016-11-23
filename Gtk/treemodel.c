#include <gtk-3.0/gtk/gtk.h>

int main(int argc, char **argv){
	gtk_init(&argc, &argv);
	const char *strings[]={
		"banana",
		"mensagem",
		"carro",
	};

	GtkListStore *list = gtk_list_store_new(1, G_TYPE_STRING);
	for(int x=0; x<3; x++){
		GtkTreeIter iter;
		gtk_list_store_append(list, &iter);
		gtk_list_store_set(list, &iter, 0, strings[x], -1);
	}

	/*for(int x=0; x<3; x++){
		GtkTreeIter iter;
		GValue value = {0,};
		gtk_tree_model_iter_nth_child(list, &iter, NULL, x);
		gtk_tree_model_get_value(GTK_TREE_MODEL(list), &iter, 0, &value);
		puts(g_value_get_string(&value));
	}*/
	
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

	gtk_main();
}
