tree(t1).
binary_tree(t1).
person(t1).

tree(X, plant) :- tree(X), 
			      -ab(default_plant(X)),
				  not -tree(X, plant).
				  				  
tree(X, diagram) :- tree(X), 
					-ab(default_diagram(X)),
					not -tree(X, diagram).

tree(X, person) :- tree(X), 
				   -ab(default_person(X)),
				   not -tree(X, person).

tree(X, plant) :- not -tree(X, plant), 
				  not tree(X, diagram), 
				  not tree(X, person).


tree(X, diagram) :- not -tree(X, diagram), 
					-tree(X, plant), 
					not tree(X, person).

tree(X, person) :- not -tree(X, person), 
				   -tree(X, plant), 
				   -tree(X, diagram).
				   
%-ab(default_diagram(X)) :- binary_tree(X).
%-ab(default_person(X)) :- person(X).
