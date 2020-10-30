-module (p04).
-export ([len/1]).

len([]) ->
    0;

len([_|Rest]) ->
    1+len(Rest).