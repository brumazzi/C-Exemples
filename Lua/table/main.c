#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

#include <stdio.h>

lua_State *lua_lib;

void *get_of_list(int index){
	lua_getglobal(lua_lib, "get");
	lua_pushinteger(lua_lib, index);
	
	lua_call(lua_lib, 1, 1);
	void *res = lua_touserdata(lua_lib, -1);
	lua_pop(lua_lib, 1);

	return res;
}

void save_in_list(int index, void *data){
	lua_getglobal(lua_lib, "insert");
	lua_pushinteger(lua_lib, index);
	lua_pushlightuserdata(lua_lib, data);

	lua_call(lua_lib, 2, 0);
}

int list_size(){
	lua_getglobal(lua_lib, "count");
	
	lua_call(lua_lib, 0, 1);

	int size = lua_tointeger(lua_lib, -1);
	lua_pop(lua_lib, 1);

	return size;
}

typedef struct{
	char name[512];
	char author[512];
	int age;
}Book;

void write(){
	int x;
	Book *b;
	for(x=0; x<list_size(); x++){
		b = get_of_list(x);
		puts(b->name);
		puts(b->author);
		printf("%d\n", b->age);
		puts("#############");

		free(b);
	}
	
}

int main(int argc, char **argv){
	lua_lib = luaL_newstate();
	luaL_openlibs(lua_lib);

	if(luaL_dofile(lua_lib, "list.lua.bin")){
		lua_close(lua_lib);
		puts("file not load");
		return 1;
	}

	Book *b1 = malloc(sizeof(Book));
	Book *b2 = malloc(sizeof(Book));

	strcpy(b1->name,"Avenger");
	strcpy(b1->author,"Fulano");
	b1->age = 2010;
	strcpy(b2->name,"Chapolim");
	strcpy(b2->author,"Chaves");
	b2->age = 1990;

	save_in_list(list_size(), b1);
	save_in_list(list_size(), b2);

	write();
}
