-module (p09).
-export ([pack/1]).

pack([]) ->
    [];

pack(L) ->
    {Group, Rem} = extract_group(L),
    [Group|pack(Rem)].

% Extract group takes a list of elements, extracts a group
% of elements located at the start, and returns that group
% as a list together with remaining elements from the original list.
% A group is one or more repeated elements
% extract_group([1, 1, 2]) -> {[1, 1], [2]}
% extract_group([1, 2]) -> {[1], [2]}

extract_group([]) ->
    {[], []};

extract_group([X, X|Rest]) ->
    {Group, Rem} = extract_group([X|Rest]),
    {[X|Group], Rem};

extract_group([X|Rest]) ->
    {[X], Rest}.