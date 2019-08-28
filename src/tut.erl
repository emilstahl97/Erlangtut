%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, sustr/3, str/2, to_lower/1, to_upper/1]).

-export([hello_world/0, add/2]).

hello_world() -> 
	io:fwrite("Hello world!\n").

add(A,B) -> 
	hello_world(),
	A + B.

