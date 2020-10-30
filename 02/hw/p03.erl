-module (p03).
-export ([element_at/2]).

element_at([X|_], 1) ->
    X;

element_at([_|Rest], N) ->
    element_at(Rest, N-1);

element_at([], _) ->
    undefined.