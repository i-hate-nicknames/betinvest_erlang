-module (p02).
-export ([but_last/1]).

but_last([S, T]) ->
    [S, T];

but_last([_|Rest]) ->
    but_last(Rest).