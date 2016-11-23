#include <lua.h>
#include <lauxlib.h>
#include <luaconf.h>

/*
 *
 * Using C in lua.
 *
 * All methods are `static int` type
 * and return `1` if success
 *
 */
static int sum(lua_State *state){
	double x,y;
	x = luaL_checknumber(state, 1); // get args in lua state
	y = luaL_checknumber(state, 2);
	lua_pushnumber(state, x+y); // send number to lua
	return 1;
}

/*
 * luaL_Reg has mnemonic of C methods for lua
 */
static const luaL_Reg lua_sum[] = {
	{"sum", sum},
	{NULL, NULL}
};

/*
 * luaopen_* is called by lua to open a library.
 */
int luaopen_sum(lua_State *state){
	luaL_register(state, "sum", lua_sum); // register methods
	lua_pushstring(state, "_VERSION");
	lua_pushstring(state, "0.1");
	lua_settable(state, -3);

	return 1;
}
