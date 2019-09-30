#ifndef  TREE_H
#define  TREE_H

struct __tree{
	long long int value;
	struct __tree *left;
	struct __tree *right;
	struct __tree *parent;
};

void tree_insert(struct __tree **t, struct __tree *p, long long int v);
void tree_clean(struct __tree *t);
struct __tree *tree_search(struct __tree *t, long long int v);
void tree_remove(struct __tree *t, long long int v);

#endif  /*TREE_H*/
