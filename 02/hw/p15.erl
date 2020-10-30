-module (p15).
-export ([replicate/2]).

replicate([], _) ->
    [];

replicate(_, 0) ->
    [];

replicate([X|Rest], N) ->
    repeat_item([X|Rest], N, N).

repeat_item([_|Rest], 0, Initial) ->
    replicate(Rest, Initial);
    
repeat_item([X|Rest], N, Initial) ->
    [X|repeat_item([X|Rest], N-1, Initial)].