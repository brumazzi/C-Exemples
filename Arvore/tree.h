#ifndef __TREE__
	#define __TREE__

	#ifdef __TSTRING__
		typedef struct __no__{
			const char *value;
			struct __no__ *next;
		}NO;

		typedef struct __path__{
			NO *begin;
			NO *end;
		}PATH;

		int no_implement(PATH *path, NO *no){
			if(!path->begin){
				(*path).begin = no;
				(*path).end = no;
				(*path).begin->next = no;
				(*path).end->next = NULL;
				return 1;
			}else{
				(*path).end->next = no;
				(*path).end = no;
			}
			return 1;

		}

		int path_new(PATH *path, const char *str){
			PATH *swap = path;
			NO *no_swap = (NO*) malloc(sizeof(NO));
			if(!no_swap)
				return 0;
			int i;
			char buff[256];
			char cc[] = {0,0};
			for(i=0;i<strlen(str);i++){
				if(str[i] == '/'){
					no_swap.value = (const char *) buff;
					no_implement(path, no_swap);
					strcpy(buff,"");
				}else{
					cc[0] = str[i];
					strcat(buff,cc);
				}
			}
		}
	#endif

	typedef struct __tree__{
		#ifdef __TSTRING__
			const char *value;
		#else
			int value;
		#endif
		#ifdef __TACTION__
			int action;
		#endif
		struct __tree__ *left;
		struct __tree__ *right;
	}TREE;
	
	int tree_insert(TREE *tree,
				#ifdef __TACTION__
					int act,
				#endif
				#ifdef __TSTRING__
					const char *value
				#else
					int value
				#endif
				){
		TREE *_new = (TREE *) malloc(sizeof(TREE));
		TREE *swap = tree;
		if(!_new)
			return 0;

		_new->value = value;

		while(1){
			#ifdef __TSTRING__
				
			#else
				if(swap->value < value)
					swap = swap->left;
				else if(swap->value > value)
					swap = swap->right;
				else
					return 0;
			#endif
		}
	}

#endif
