%-------------------------------------------------------%
%Question Rules%
%-------------------------------------------------------%
_similar(X, X).
_similar(X, Y) :- _abbreviation(X, Y).
_similar(X, Y) :- _abbreviation(Y, X).
_similar(X, Y) :- _is(X, Y).
_similar(X, Z) :- _abbreviation(X, Y), _is(Y, Z).

query(Q, answer(A, 1)) :- question(Q), 
						  question(Q, 1, A).

query(Q, answer(A, 2)) :- question(Q),
						  question(Q, 2, A),
						  not question(Q, 1, A).

query(Q, answer(A, 3)) :- question(Q),
						  question(Q, 3, A),
						  not question(Q, 2, A),
						  not question(Q, 1, A).
						  
query(Q, answer(A, 4)) :- question(Q),
						  question(Q, 4, A),
						  not question(Q, 3, A),
						  not question(Q, 2, A),
						  not question(Q, 1, A).
						  
								   