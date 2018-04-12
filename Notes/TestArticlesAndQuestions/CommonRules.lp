%-------------------------------------------------------%
%Question Rules%
%-------------------------------------------------------%
_similar(X, X).
_similar(X, Y) :- _abbreviation(X, Y).
_similar(X, Y) :- _abbreviation(Y, X).
_similar(X, Y) :- _is(X, Y).
_similar(X, Z) :- _abbreviation(X, Y), _is(Y, Z).

query(Q, answer(A, certain)) :- question(Q, certain, A).

query(Q, answer(A, likely)) :- question(Q, likely, A),
						  not question(Q, certain, A).

query(Q, answer(A, possible)) :- question(Q, possible, A),
						  not question(Q, likely, A),
						  not question(Q, certain, A).
						  
query(Q, answer(A, guess)) :- question(Q, guess, A),
						  not question(Q, possible, A),
						  not question(Q, likely, A),
						  not question(Q, certain, A).
						  
								   