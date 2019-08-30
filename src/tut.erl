%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() -> 

	spawner(50,1),
	spawner(100,51).
	
for(0,_) -> 
	ok;

for(Max, Min) when Max > 0 -> 
	io:fwrite("Num : ~p\n", [Max]),
	for(Max-1, Min).

spawner(Max, Min) -> 
	spawn(fun() -> for(Max, Min) end).