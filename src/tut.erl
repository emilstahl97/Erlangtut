%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() -> 
	sum([1,2,3,4,5], 0).

sum([], Sum) -> io:fwrite("Sum : ~p\n", [Sum]);

sum([H|T], Sum) -> 
	io:fwrite("Sum : ~p\n", [Sum]),
	sum(T, H + Sum).