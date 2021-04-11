-module(variant2). 
-export([start/0]). 

subset([],_) -> false;
subset(List,List) -> true;
subset(Main, Cand) ->
    LenCand = length(Cand),
    NewSublist = lists:sublist(Main, LenCand),
    subset(NewSublist, Cand, Main).
    
subset(Cand, Cand, _)-> true;
subset(_, Cand, [_|T]) -> subset(T,Cand).

start() -> 
   Candidate = [1,2,[3,4],5], 
   MainList = [5,6,0,1,2,[3,4],55,5,6,78,34,12],
   Result = subset(MainList, Candidate),
   io:fwrite("Does ~w contains ~w?~n",[MainList, Candidate]),
   io:fwrite("~w~n",[Result]).
