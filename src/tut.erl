%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() -> 

	spawner_up(1,50),
	spawner_down(50,1).

for_down(0,_) -> 
	ok;

for_down(Max, Min) when Max > 0 ->
	io:fwrite("Num : ~p\n", [Max]),
	for_down(Max-1, Min).
	
	
for_up(Min, Max) ->
	case Min of 
		Max -> io:fwrite("Num : ~p\n", [Min]);
  
  	_ -> 
	io:fwrite("Num : ~p\n", [Min]),
	for_up(Min+1, Max) end.

spawner_up(Min, Max) ->
	(fun() -> for_up(Max))

