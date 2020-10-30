-module (utils).
-export ([append/2]).

append([], L2) ->
    L2;

append(L1, []) ->
    L1;

append([X|Rest], L2) ->
    [X|append(Rest, L2)].
