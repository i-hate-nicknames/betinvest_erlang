-module (p01).
-export ([last/1]).

last([X]) ->
    X;
last([H|T]) ->
    last(T).