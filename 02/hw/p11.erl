-module (p11).
-export ([encode_modified/1]).
-import (p10, [next_symbol/1]).

encode_modified([]) ->
    [];

encode_modified(L) ->
    {Encoding, Rem} = p10:next_symbol(L),
    Rest = encode_modified(Rem),
    case Encoding of
        {1, Item} ->
            [Item | Rest];
        _ ->
            [Encoding | Rest]
    end.
