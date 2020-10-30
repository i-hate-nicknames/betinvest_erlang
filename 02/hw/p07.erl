-module (p07).
-import (utils, [append/2]).
-import (p05, [reverse/1]).
-export ([flatten/1]).

flatten([]) ->
    [];

flatten([X|Rest]) ->

    utils:append(flatten(X), flatten(Rest));

% our argument is not a list, so we just return it as it is
flatten(X) ->
    [X].