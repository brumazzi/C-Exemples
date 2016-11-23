#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

#include <stdio.h>
#include <stdlib.h>

void lua_write(lua_State *l);
void lua_write2(lua_State *l, const char *msg);
int lua_sum(lua_State *l, int x, int y);

int main(int argc, char **argv){
	lua_State *L;

	L = luaL_newstate();
	luaL_openlibs(L);
	if(luaL_dofile(L, "message.lua")){
		lua_close(L);

		return 1;
	}

	lua_write(L);
	lua_write2(L,"My Message");
	int s = lua_sum(L, 5, 15);

	printf("%d\n", s);

	lua_close(L);
	return 0;
}

void lua_write(lua_State *l){
	lua_getglobal(l, "write");
	lua_call(l,0,0);

	//lua_pop(l,1);
}

void lua_write2(lua_State *l, const char *msg){
	lua_getglobal(l, "write_2");
	lua_pushstring(l, msg);
	lua_call(l,1,0);
	//lua_pop(l,1);
}

int lua_sum(lua_State *l, int x, int y){
	lua_getglobal(l, "sum");
	lua_pushnumber(l,x);
	lua_pushnumber(l,y);
	lua_call(l,2,1);

	int res = (int) lua_tointeger(l, -1);
	lua_pop(l,1);

	return res;
}
