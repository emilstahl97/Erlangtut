%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() -> 

	spawner(1,50).

for_down(Max, Min) -> 
	case Max of 0 -> 
		ok;
    _ ->
	io:fwrite("Num : ~p\n", [Max]),
	for_down(Max-1, Min) end.
	
	
for_up(Min, Max) ->
	case Min of 
		Max -> io:fwrite("Num : ~p\n", [Min]);
  	_ -> 
	io:fwrite("Num : ~p\n", [Min]),
	for_up(Min+1, Max) end.

spawner(Min, Max) ->
	spawn(fun() -> for_up(Min,Max)end),
	spawn(fun() -> for_down(Max,Min)end).

