% lion ontology
% lion senses : animal, celebrity, astrology
big_cat(X, animal) :- lion(X, animal).
feline(X, animal) :- big_cat(X, animal).
carnivore(X, animal) :- feline(X, animal).
vertebrate(X, animal) :- carnivore(X, animal).
animal(X, top) :- vertebrate(X, animal).

lion(X, animal) :- lion(X),
				not ab(d_animal(X)),
				not -lion(X, animal).
lion(X, celebrity) :- lion(X),
				not ab(d_person(X)),
				not -lion(X, celebrity).
lion(X, astrology) :- lion(X),
				not ab(d_star(X)),
				not -lion(X, astrology).
				
lion(X, celebrity) :- lion(X),
				not -lion(X, celebrity),
				-lion(X, animal),
				not lion(X, astrology).
lion(X, astrology) :- lion(X),
	 			not -lion(X, astrology),
				-lion(X, animal),
				-lion(X, celebrity).
				
% snake ontology
% snake senses : animal, person
reptile(X, animal) :- snake(X, animal).
vertebrate(X, animal) :- reptile(X, animal). 

snake(X, animal) :- snake(X),
				not ab(animal(X)),
				not -snake(X, animal).
snake(X, person) :- snake(X),
				not ab(person(X)),
				not -snake(X, person).

snake(X, person) :- snake(X),
				not -snake(X, person),
				-snake(X, animal).

% general knowledge
% Generally, animals live in the forest
% Generally, animals live in the forest:forest1
forest(forest1).
live(X, forest1) :- animal(X, top),
					not ab(animal(X)),
					not -live(X, forest1).

% Generally, one can live in only one place at a time
% -live(X, Z):- live(X, Y), Y\=Z.
-live(X, forest1):- live(X, Y), Y\=forest1.

% story
% The lion lives in the circus
% The lion:lion1 lives in the circus:circus1
lion(lion1).
snake(snake1).
circus(circus1).
live(lion1, circus1).