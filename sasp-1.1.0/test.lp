grammatical_category(X, noun_communication) :- grammatical_category(X),not abnormal_d_communication(X),not -grammatical_category(X, noun_communication).
vertebrate(X, noun_animal) :- vertebrate(X),not abnormal_d_animal(X),not -vertebrate(X, noun_animal).
organism(X, noun_Tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_Tops).
abstract_entity(X, noun_Tops) :- abstraction(X, noun_Tops).
human_body(X, noun_body) :- person(X, noun_body).
adult(X, noun_person) :- adult(X),not abnormal_d_person(X),not -adult(X, noun_person).
grammatical_category(X, noun_communication) :- person(X, noun_communication).
physical_entity(X, noun_Tops) :- object(X, noun_Tops).
group(X, noun_Tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_Tops).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
class(X, noun_group) :- grammatical_category(X, noun_communication).
body(X, noun_body) :- body(X),not abnormal_d_body(X),not -body(X, noun_body).
mammal(X, noun_animal) :- mammal(X),not abnormal_d_animal(X),not -mammal(X, noun_animal).
abstract_entity(X, noun_Tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_Tops).
feline(X, noun_animal) :- feline(X),not abnormal_d_animal(X),not -feline(X, noun_animal).
whole(X, noun_Tops) :- natural_object(X, noun_Tops).
important_person(X, noun_person) :- important_person(X),not abnormal_d_person(X),not -important_person(X, noun_person).
big_cat(X, noun_animal) :- lion(X, noun_animal).
mammal(X, noun_animal) :- placental(X, noun_animal).
entity(X, noun_Tops) :- abstract_entity(X, noun_Tops).
vertebrate(X, noun_animal) :- mammal(X, noun_animal).
organism(X, noun_Tops) :- person(X, noun_Tops).
whole(X, noun_Tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_Tops).
celebrity(X, noun_person) :- lion(X, noun_person).
entity(X, noun_Tops) :- physical_entity(X, noun_Tops).
abstraction(X, noun_Tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_Tops).
adult(X, noun_person) :- important_person(X, noun_person).
natural_object(X, noun_Tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_Tops).
carnivore(X, noun_animal) :- feline(X, noun_animal).
chordate(X, noun_animal) :- chordate(X),not abnormal_d_animal(X),not -chordate(X, noun_animal).
person(X, noun_Tops) :- adult(X, noun_person).
human_body(X, noun_body) :- human_body(X),not abnormal_d_body(X),not -human_body(X, noun_body).
carnivore(X, noun_animal) :- carnivore(X),not abnormal_d_animal(X),not -carnivore(X, noun_animal).
animal(X, noun_Tops) :- chordate(X, noun_animal).
collection(X, noun_group) :- class(X, noun_group).
feline(X, noun_animal) :- big_cat(X, noun_animal).
living_thing(X, noun_Tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_Tops).

lion(X, noun_animal) :- lion(X),not abnormal_d_animal(X),not -lion(X, noun_animal).
lion(X, noun_person) :- lion(X),not abnormal_d_person(X),not -lion(X, noun_person).
lion(X, noun_location) :- lion(X),not abnormal_d_location(X),not -lion(X, noun_location).
lion(X, noun_person) :- lion(X),not -lion(X, noun_person),-lion(X, noun_animal),not lion(X, noun_location).
lion(X, noun_location) :- lion(X),not -lion(X, noun_location),-lion(X, noun_animal),-lion(X, noun_person).

abstraction(X, noun_Tops) :- group(X, noun_Tops).
body(X, noun_body) :- human_body(X, noun_body).
object(X, noun_Tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_Tops).
class(X, noun_group) :- class(X),not abnormal_d_group(X),not -class(X, noun_group).
person(X, noun_communication) :- person(X),not -person(X, noun_communication),-person(X, noun_Tops),-person(X, noun_body).
person(X, noun_Tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_Tops).
person(X, noun_communication) :- person(X),not abnormal_d_communication(X),not -person(X, noun_communication).
chordate(X, noun_animal) :- vertebrate(X, noun_animal).
person(X, noun_body) :- person(X),not abnormal_d_body(X),not -person(X, noun_body).
natural_object(X, noun_Tops) :- body(X, noun_body).
person(X, noun_Tops) :- lion(X, noun_person).
living_thing(X, noun_Tops) :- organism(X, noun_Tops).
placental(X, noun_animal) :- placental(X),not abnormal_d_animal(X),not -placental(X, noun_animal).
physical_entity(X, noun_Tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_Tops).
object(X, noun_Tops) :- whole(X, noun_Tops).
person(X, noun_body) :- person(X),not -person(X, noun_body),-person(X, noun_Tops),not person(X, noun_communication).
big_cat(X, noun_animal) :- big_cat(X),not abnormal_d_animal(X),not -big_cat(X, noun_animal).
entity(X, noun_Tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_Tops).
important_person(X, noun_person) :- celebrity(X, noun_person).
object(X, noun_Tops) :- living_thing(X, noun_Tops).
organism(X, noun_Tops) :- animal(X, noun_Tops).
animal(X, noun_Tops) :- animal(X),not abnormal_d_tops(X),not -animal(X, noun_Tops).
celebrity(X, noun_person) :- celebrity(X),not abnormal_d_person(X),not -celebrity(X, noun_person).
group(X, noun_Tops) :- collection(X, noun_group).
placental(X, noun_animal) :- carnivore(X, noun_animal).



lion(lion1).
-lion(lion1, noun_animal).