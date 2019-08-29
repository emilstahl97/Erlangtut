%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() -> 
	error_stuff(0).
	
error_stuff(N) ->
	try 
		Ans = 2/N,
		Ans
	catch	
		error:badarith ->	
			"Can't divide by zero"
end.