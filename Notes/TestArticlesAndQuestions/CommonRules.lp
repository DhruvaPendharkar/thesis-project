%-------------------------------------------------------%
%Question Rules%
%-------------------------------------------------------%
_similar(X, X).
_similar(X, Y) :- _abbreviation(X, Y).
_similar(X, Y) :- _abbreviation(Y, X).
_similar(X, Y) :- _is(X, Y).
_similar(X, Z) :- _abbreviation(X, Y), _is(Y, Z).