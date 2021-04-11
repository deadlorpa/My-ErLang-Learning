-module(variant2). 
-export([start/0]). 

subset([],_) -> false;
subset(List,List) -> true;
subset(Main, Cand) ->
    LenCand = length(Cand),
    [H | T] = Main,
    NewSublist = lists:sublist(Main, LenCand),
    if Cand == NewSublist ->
        true;
    true ->
        subset(T, Cand)
    end.

start() -> 
   Candidate = [1,2,[3,4],5], 
   MainList = [5,6,0,1,2,[3,4],53,5,6,78,34,12],
   Result = subset(MainList, Candidate),
   io:fwrite("Does ~w contains ~w?~n",[MainList, Candidate]),
   io:fwrite("~w~n",[Result]).
