%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, sustr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() ->
	var_stuff().

var_stuff() ->
	Num = 1,
	Num.
