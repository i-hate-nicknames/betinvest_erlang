-module (p08).
-export ([compress/1]).

compress([]) ->
    [];

compress([X]) ->
    [X];

compress([X, X|Rest]) ->
    compress([X|Rest]);

compress([X, Y|Rest]) ->
    [X|compress([Y|Rest])].