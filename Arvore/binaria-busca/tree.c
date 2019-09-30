#include <tree.h>
#include <malloc.h>

void tree_insert(struct __tree **t, struct __tree *p, long long int v){
	if(!(*t)){
		(*t) = malloc(sizeof(struct __tree));
		(*t)->value = v;
		(*t)->parent = p;
		return;
	}

	if((*t)->value > v)
		tree_insert(&(*t)->left, (*t), v);
	else if((*t)->value < v)
		tree_insert(&(*t)->right, (*t), v);
	(*t)->parent = p;
}

void tree_clean(struct __tree *t){
	if(!t) return;
	if(t->left)
		tree_clean(t->left);
	if(t->right)
		tree_clean(t->right);

	free(t);
}

struct __tree *tree_search(struct __tree *t, long long int v){
	if(!t)
		return NULL;

	if(v == t->value)
		return t;
	else if(v < t->value){
		printf("<");
		return tree_search(t->left, v);
	}
	else{
		printf(">");
		return tree_search(t->right, v);
	}
	return NULL;
}

void tree_remove(struct __tree *t, long long int v){
	struct __tree *buff = tree_search(t, v);

	if(!buff)
		return;
	else if(!buff->left && !buff->right){
		if(buff->parent){
			if(buff->parent->left == buff)
				buff->parent->left = NULL;
			else
				buff->parent->right = NULL;
		}
		free(buff);
	}else if(buff->left && buff->right){
		if(buff->right->left){
			buff->value = buff->right->left->value;
			tree_remove(buff->right->left, buff->value);
		}else{
			if(buff->parent->left == buff){
				buff->parent->left = buff->right;
			}else{
				buff->parent->right = buff->right;
			}
			buff->right->left = buff->left;
		}
	}else{
		struct __tree *lr = buff->left ? buff->left : buff->right;
		buff->value = lr->value;
		buff->left = lr->left;
		buff->right = lr->right;

		free(lr);
	}
}
