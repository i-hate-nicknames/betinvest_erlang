-module (p13).
-export ([decode/1]).

decode([]) ->
    [];

decode([{1, X}|Rest]) ->
    [X|decode(Rest)];

decode([{N, X}|Rest]) ->
    [X|decode([{N-1, X}|Rest])].
