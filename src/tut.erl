%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, sustr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() ->
	say_hello(english).

say_hello(X) ->
	case X of 
		german -> 'guten tag';
		french -> "bonjour";
		english -> "hello"
end.