%% @author emilstahl
%% @doc @todo Add description to tut.


-module(tut).

-import(string, [len/1, concat/2, chr/2, sustr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() ->
	what_grade(10).

preschool() -> 
	"Go to ps".

kindergarten() -> 
	"Go to kg".

grade_school() -> 
	"Go to gs".

what_grade(x) -> 
	if x < 5 -> preschool()
	; x == 5 -> kindergarten()
	; x > 5 -> grade_school()
	end.