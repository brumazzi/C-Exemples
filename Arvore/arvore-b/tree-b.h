#ifndef  TREE_B_H
#define  TREE_B_H

#define TREE_MAX_NODE	4
#define ORDER_LEAF	0
#define ORDER_BASE	1
#define ORDER_NODE	2

struct item{
	struct item *prev;
	void *ptr;
	struct item *next;
};

struct node{
	long long int elements;
	char order;
	struct item *index;
	struct item *data;
	struct item *child;
};

typedef struct node **Tree;

void tree_insert(Tree, long long int, void *);
struct node *tree_search(Tree, long long int);

struct item* item_insert(struct item*, long long int, long long int);
struct item* item_index(struct item*, long long int);

#endif  /*TREE-B_H*/
