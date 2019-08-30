% @author emilstahl
% This is a tutorial in Erlang, to see all exercises, 
% check out https://github.com/emilstahl97/Erlangtut.git

-module(tut).

-export([spawner/2]).

for_down(Max, Min) -> 
	case Max of Min -> 
		ok;
    _ ->
	io:fwrite("Num : ~p\n", [Max]),
	for_down(Max-1, Min) end.
	
	
for_up(Min, Max) ->
	case Min of 
		Max -> 
			io:fwrite("Num : ~p\n", [Min]);
  	_ -> 
		io:fwrite("Num : ~p\n", [Min]),
		for_up(Min+1, Max) end.

spawner(Min, Max) ->
	spawn(fun() -> for_up(Min,Max)end),
	spawn(fun() -> for_down(Max,Min)end).

