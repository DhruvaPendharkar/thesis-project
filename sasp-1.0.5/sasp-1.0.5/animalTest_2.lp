% "All animals live in the forest"
% "Generally, animals live in the forest"

animal(lion).
animal(snake).
animal(monkey).
animal(rat).

live(monkey, forest).
live(snake, zoo).
live(rat, apartment).

live(X, forest) :- animal(X),
			  not _ab(live_animal(X)),
			  not -live(X, forest).

-live(X, forest) :- live(X, Y),
			   Y \= forest.

?- live(X, forest).