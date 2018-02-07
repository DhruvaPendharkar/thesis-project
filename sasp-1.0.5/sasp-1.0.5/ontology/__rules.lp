superclass(X, Y) :- is_superclass(X, Y).
superclass(X, Y) :- is_superclass(K, Y),superclass(X, K).
