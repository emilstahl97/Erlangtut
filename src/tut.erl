%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() -> 
	find_factorial(3).

factorial(N) when N == 0 -> 1;
factorial(N) when N > 0 -> N * factorial(N-1).
							
find_factorial(N) -> factorial(N).