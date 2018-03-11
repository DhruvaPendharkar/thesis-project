tree(t1).
tree(t1, noun_person).
tree(X, noun_plant) :- tree(X),properties_plant(X),not -tree(X, noun_plant).
tree(X, noun_shape) :- tree(X),properties_shape(X),not -tree(X, noun_shape).
tree(X, noun_person) :- tree(X),properties_person(X),not -tree(X, noun_person).
tree(X, noun_plant) :- not -tree(X, noun_plant),not tree(X, noun_shape),not tree(X, noun_person).
tree(X, noun_shape) :- tree(X),not -tree(X, noun_shape),-tree(X, noun_plant),not tree(X, noun_person).
tree(X, noun_person) :- tree(X),not -tree(X, noun_person),-tree(X, noun_plant),-tree(X, noun_shape).