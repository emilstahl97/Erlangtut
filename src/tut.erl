%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() -> 
	do_math2(),
	fun_stuff("Emil"),
	fun_stuff2().

double(X) -> X * 2.
triple(X) -> X * 3.


do_math2() ->
	lists:map(fun double/1, [1,2,3]),
	lists:map(fun triple/1, [1,2,3]).

fun_stuff(N) ->
	Fun_stuff = fun() -> io:fwrite("Hello, ~p\n", [N]) end,
	Fun_stuff().

fun_stuff2() ->
	A = 3,
	B = 4,
	C = fun() -> 
		io:fwrite("Sum : ~p\n", [A+B]) end,
	C().