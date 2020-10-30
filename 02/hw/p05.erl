-module (p05).
-export ([reverse/1]).

reverse(L) ->
    reverse_inner(L, []).

reverse_inner([], Reversed) ->
    [], Reversed;

reverse_inner([X|Rest], Reversed) ->
    reverse_inner(Rest, [X|Reversed]).
