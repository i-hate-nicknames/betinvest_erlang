-module (p12).
-export ([decode_modified/1]).

decode_modified([]) ->
    [];

decode_modified([{1, X}|Rest]) ->
    [X|decode_modified(Rest)];

decode_modified([{N, X}|Rest]) ->
    [X|decode_modified([{N-1, X}|Rest])];

decode_modified([X|Rest]) ->
    [X|decode_modified(Rest)].
