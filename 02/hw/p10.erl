-module (p10).
-export ([encode/1, next_symbol/1]).

encode([]) ->
    [];

encode(L) ->
    {Encoding, Rem} = next_symbol(L),
    [Encoding|encode(Rem)].

% next_symbol group takes a list of elements, extracts a run-length
% encoding of the next symbol in the list. Encoding constitutes of a
% pair of the symbol itself and the number of repetitions.
% Return RLE of the next symbol and remainder of the list, once the
% symbol stopped repeating
% next_symbol([]) -> []
% next_symbol([a, b, c]) -> {a, 1}, [b, c]
% next_symbol([a, a, a, b, c]) -> {a, 3}, [b, c]

next_symbol([X, X|Rest]) ->
    {{Repetitions, Item}, Rem} = next_symbol([X|Rest]),
    {{Repetitions+1, Item}, Rem};

next_symbol([X|Rest]) ->
    {{1, X}, Rest}.