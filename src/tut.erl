%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() -> 
	record_stuff().

-record(customer, {name = "", bal = 0.00}).

record_stuff() -> 
	Emil = #customer{name="Emil Stahl", bal = 100.00},

	io:fwrite("~p paid $~p\n", [Emil#customer.name, Emil#customer.bal]).