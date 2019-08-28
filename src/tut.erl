%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, sustr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() ->
	do_math(5,4).

do_math(A,B) ->
	math:exp(1),
	math:log(2.718281828459045),
	math:pow(10,2),
	math:sqrt(49),
	math:cos(3.141592653589793),
	random:uniform(10).