-module(variant1). 
-import(string,[str/2]). 
-export([start/0]). 

start() -> 
   Candidate = [1,2,3], 
   MainList = [5,6,0,1,2,3],
   Index = str(MainList, Candidate),
   io:fwrite("Does ~w contains ~w?~n",[MainList, Candidate]),
   io:fwrite("~w~n",[Index > 0]).
