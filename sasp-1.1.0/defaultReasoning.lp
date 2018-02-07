tree(t1).

tree(X, plant) :- tree(X), 
			      not ab(d_plant(X)),
				  not -tree(X, plant).
				  				  
tree(X, diagram) :- tree(X), 
					not ab(d_diagram(X)),
					not -tree(X, diagram).

tree(X, person) :- tree(X), 
				  not ab(d_person(X)),
				  not -tree(X, person).
				  
tree(X, plant) :- not -tree(X, plant), not tree(X, diagram), not tree(person).
tree(X, diagram) :- not -tree(X, diagram), -tree(X, plant), not tree(X, person).
tree(X, person) :- not -tree(X, person), -tree(X, plant), -tree(X, diagram).

ab(d_plant(X)) :- not plant(X).
ab(d_diagram(X)) :- not figure(X).
ab(d_person(X)) :- not person(X).

tree(t1, plant).