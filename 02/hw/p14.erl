-module (p14).
-export ([duplicate/1]).

duplicate([]) ->
    [];

duplicate([X|Rest]) ->
    [X, X|duplicate(Rest)].