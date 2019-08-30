%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() -> 

	spawner(),
	spawner(),
	spawner().
	
get_id(M) ->
	io:fwrite("ID : ~p\n", [M]).

spawner() ->
	spawn(fun() -> get_id([self()]) end).
