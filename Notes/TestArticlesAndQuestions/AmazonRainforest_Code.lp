%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(amazon_rainforest, forest).
_is(amazon_rainforest, moist_broadleafed_forest).
_is(percent, colombia).
_is(word, amazona).
_mod(amount, minor).
_mod(forest, broadleafed).
_mod(forest, moist).
_mod(know, also).
_mod(nation, four).
_mod(nation, nine).
_mod(percent, 10).
_mod(percent, 60).
_mod(rainforest, remaining).
_mod(species, '16,000').
_mod(square_kilometre, '5,500,000').
_mod(square_kilometre, '7,000,000').
_mod(tract, largest).
_mod(tract, most).
_mod(tree, individual).
_mod(tree, rainforest).
_mod(tree, tropical).
_possess(planet, rainforest).
_possess(they, name).
_property(1, know, as, amazon_jungle).
_property(1, know, as, amazonia).
_property(1, know, in, english).
_property(10, contain, with, '60_percent').
_property(10, contain, within, brazil).
_property(10, majority, of, forest).
_property(10, percent, of, rainforest).
_property(11, amount, in, bolivia).
_property(11, amount, in, ecuador).
_property(11, amount, in, french_guiana).
_property(11, amount, in, guyana).
_property(11, amount, in, suriname).
_property(11, amount, in, venezuela).
_property(11, colombia, with, '10_percent').
_property(11, colombia, with, amount).
_property(11, follow, by, peru).
_property(11, follow, with, 13).
_property(12, state, in, four_nation).
_property(12, word, in, name).
_property(13, half, of, rainforest).
_property(15, comprise, of, tract).
_property(15, rainforest, in, world).
_property(15, rainforest, with, billion).
_property(15, tract, of, tree).
_property(17, divide, into, '16,000_species').
_property(3, amazon_basin, of, south_america).
_property(3, most, of, amazon_basin).
_property(6, cover, _by, rainforest).
_property(6, cover, of, '7,000,000_square_kilometre').
_property(8, belong, to, nine_nation).
_relation(11, 10, _clcomplement).
_relation(13, 15, _conj).
_relation(amazon_rainforest, 1, _clause).
_relation(territory, 8, _clause).
_relation(tree, 17, _clause).
amazon(amazon).
amazona(amazona).
amount(amount).
basin(basin).
bolivia(bolivia).
brazil(brazil).
colombia(colombia).
department(department).
ecuador(ecuador).
event(1, know, null, null).
event(10, contain, null, majority).
event(11, follow, colombia, null).
event(11, follow, percent, null).
event(12, contain, department, word).
event(12, contain, department, word_in_name).
event(12, contain, null, amazona).
event(12, contain, state, word).
event(12, contain, state, word_in_name).
event(13, represent, amazon, half).
event(13, represent, amazon, half_of_rainforest).
event(15, comprise, amazon, null).
event(17, divide, null, null).
event(2, be, null, null).
event(3, cover, forest, most).
event(3, cover, forest, most_of_amazon_basin).
event(3, cover, moist_broadleafed_forest, most).
event(3, cover, moist_broadleafed_forest, most_of_amazon_basin).
event(4, encompass, basin, square_kilometre).
event(5, be, null, null).
event(6, cover, null, square_kilometre).
event(7, 'include', amazon_rainforest, territory).
event(8, belong, null, null).
event(9, be, null, null).
forest(amazon_rainforest).
forest(forest).
guyana(guyana).
half(half).
majority(majority).
name(name).
nation(nation).
number('16,000').
number('5,500,000').
number('7,000,000').
number(10).
number(13).
number(390).
number(60).
number(billion).
number(four).
number(nine).
organization(amazon).
organization(amazonas).
percent(colombia).
percent(percent).
peru(peru).
planet(planet).
rainforest(rainforest).
south_america(south_america).
species(species).
state(state).
suriname(suriname).
territory(territory).
tract(tract).
tree(tree).
venezuela(venezuela).
word(amazona).
word(word).
world(world).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
ability(X, noun_cognition) :- ability(X),not abnormal_d_cognition(X),not -ability(X, noun_cognition).
ability(X, noun_cognition) :- creativity(X, noun_cognition).
abstract_entity(X, noun_tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_tops).
abstract_entity(X, noun_tops) :- abstraction(X, noun_tops).
abstraction(X, noun_tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_tops).
abstraction(X, noun_tops) :- amount(X, noun_tops).
abstraction(X, noun_tops) :- attribute(X, noun_tops).
abstraction(X, noun_tops) :- communication(X, noun_tops).
abstraction(X, noun_tops) :- group(X, noun_tops).
abstraction(X, noun_tops) :- measure(X, noun_tops).
abstraction(X, noun_tops) :- psychological_feature(X, noun_tops).
abstraction(X, noun_tops) :- relation(X, noun_tops).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- activity(X, noun_act).
act(X, noun_tops) :- group_action(X, noun_act).
act(X, noun_tops) :- speech_act(X, noun_communication).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- game(X, noun_act).
actor(X, noun_person) :- actor(X),not abnormal_d_person(X),not -actor(X, noun_person).
actor(X, noun_person) :- tree(X, noun_person).
administrative_district(X, noun_location) :- administrative_district(X),not abnormal_d_location(X),not -administrative_district(X, noun_location).
administrative_district(X, noun_location) :- country(X, noun_location).
administrative_district(X, noun_location) :- department(X, noun_location).
administrative_district(X, noun_location) :- state(X, noun_location).
administrative_unit(X, noun_group) :- administrative_unit(X),not abnormal_d_group(X),not -administrative_unit(X, noun_group).
administrative_unit(X, noun_group) :- division(X, noun_group).
adult(X, noun_person) :- adult(X),not abnormal_d_person(X),not -adult(X, noun_person).
adult(X, noun_person) :- important_person(X, noun_person).
age(X, noun_time) :- age(X),not abnormal_d_time(X),not -age(X, noun_time).
age(X, noun_time) :- majority(X, noun_time).
amazon(X, noun_animal) :- amazon(X),not -amazon(X, noun_animal),-amazon(X, noun_person),-amazon(X, noun_object).
amazon(X, noun_animal) :- amazon(X),not abnormal_d_animal(X),not -amazon(X, noun_animal).
amazon(X, noun_object) :- amazon(X),not -amazon(X, noun_object),-amazon(X, noun_person),not amazon(X, noun_animal).
amazon(X, noun_object) :- amazon(X),not abnormal_d_object(X),not -amazon(X, noun_object).
amazon(X, noun_person) :- amazon(X),not abnormal_d_person(X),not -amazon(X, noun_person).
amazona(X, noun_animal) :- amazona(X),not abnormal_d_animal(X),not -amazona(X, noun_animal).
amount(X, noun_attribute) :- amount(X),not abnormal_d_attribute(X),not -amount(X, noun_attribute).
amount(X, noun_attribute) :- number(X, noun_attribute).
amount(X, noun_cognition) :- amount(X),not -amount(X, noun_cognition),-amount(X, noun_attribute),-amount(X, noun_possession),-amount(X, noun_tops).
amount(X, noun_cognition) :- amount(X),not abnormal_d_cognition(X),not -amount(X, noun_cognition).
amount(X, noun_possession) :- amount(X),not -amount(X, noun_possession),-amount(X, noun_attribute),not amount(X, noun_tops),not amount(X, noun_cognition).
amount(X, noun_possession) :- amount(X),not abnormal_d_possession(X),not -amount(X, noun_possession).
amount(X, noun_tops) :- amount(X),not -amount(X, noun_tops),-amount(X, noun_attribute),-amount(X, noun_possession),not amount(X, noun_cognition).
amount(X, noun_tops) :- amount(X),not abnormal_d_tops(X),not -amount(X, noun_tops).
animal(X, noun_tops) :- animal(X),not abnormal_d_tops(X),not -animal(X, noun_tops).
animal(X, noun_tops) :- chordate(X, noun_animal).
animal_tissue(X, noun_body) :- animal_tissue(X),not abnormal_d_body(X),not -animal_tissue(X, noun_body).
animal_tissue(X, noun_body) :- nervous_tissue(X, noun_body).
area(X, noun_cognition) :- area(X),not abnormal_d_cognition(X),not -area(X, noun_cognition).
area(X, noun_cognition) :- territory(X, noun_cognition).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- fixture(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
aspect(X, noun_cognition) :- aspect(X),not abnormal_d_cognition(X),not -aspect(X, noun_cognition).
aspect(X, noun_cognition) :- sector(X, noun_cognition).
assets(X, noun_possession) :- amount(X, noun_possession).
assets(X, noun_possession) :- assets(X),not abnormal_d_possession(X),not -assets(X, noun_possession).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- shape(X, noun_tops).
attribute(X, noun_tops) :- state(X, noun_tops).
auditory_communication(X, noun_communication) :- auditory_communication(X),not abnormal_d_communication(X),not -auditory_communication(X, noun_communication).
auditory_communication(X, noun_communication) :- speech(X, noun_communication).
authorization(X, noun_act) :- authorization(X),not abnormal_d_act(X),not -authorization(X, noun_act).
authorization(X, noun_act) :- sanction(X, noun_act).
basin(X, noun_artifact) :- basin(X),not abnormal_d_artifact(X),not -basin(X, noun_artifact).
basin(X, noun_location) :- basin(X),not -basin(X, noun_location),-basin(X, noun_artifact),-basin(X, noun_quantity),-basin(X, noun_object).
basin(X, noun_location) :- basin(X),not abnormal_d_location(X),not -basin(X, noun_location).
basin(X, noun_object) :- basin(X),not -basin(X, noun_object),-basin(X, noun_artifact),-basin(X, noun_quantity),not basin(X, noun_location).
basin(X, noun_object) :- basin(X),not abnormal_d_object(X),not -basin(X, noun_object).
basin(X, noun_quantity) :- basin(X),not -basin(X, noun_quantity),-basin(X, noun_artifact),not basin(X, noun_object),not basin(X, noun_location).
basin(X, noun_quantity) :- basin(X),not abnormal_d_quantity(X),not -basin(X, noun_quantity).
belief(X, noun_cognition) :- belief(X),not abnormal_d_cognition(X),not -belief(X, noun_cognition).
belief(X, noun_cognition) :- spiritual_being(X, noun_person).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
biological_group(X, noun_group) :- taxonomic_group(X, noun_group).
bird(X, noun_animal) :- bird(X),not abnormal_d_animal(X),not -bird(X, noun_animal).
bird(X, noun_animal) :- parrot(X, noun_animal).
bird_genus(X, noun_animal) :- amazona(X, noun_animal).
bird_genus(X, noun_animal) :- bird_genus(X),not abnormal_d_animal(X),not -bird_genus(X, noun_animal).
body_of_water(X, noun_object) :- body_of_water(X),not abnormal_d_object(X),not -body_of_water(X, noun_object).
body_of_water(X, noun_object) :- stream(X, noun_object).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
body_part(X, noun_body) :- system(X, noun_body).
body_part(X, noun_body) :- tissue(X, noun_body).
bolivia(X, noun_act) :- bolivia(X),not -bolivia(X, noun_act),-bolivia(X, noun_location).
bolivia(X, noun_act) :- bolivia(X),not abnormal_d_act(X),not -bolivia(X, noun_act).
bolivia(X, noun_location) :- bolivia(X),not abnormal_d_location(X),not -bolivia(X, noun_location).
brazil(X, noun_food) :- brazil(X),not -brazil(X, noun_food),-brazil(X, noun_location).
brazil(X, noun_food) :- brazil(X),not abnormal_d_food(X),not -brazil(X, noun_food).
brazil(X, noun_location) :- brazil(X),not abnormal_d_location(X),not -brazil(X, noun_location).
canasta(X, noun_act) :- bolivia(X, noun_act).
canasta(X, noun_act) :- canasta(X),not abnormal_d_act(X),not -canasta(X, noun_act).
card_game(X, noun_act) :- card_game(X),not abnormal_d_act(X),not -card_game(X, noun_act).
card_game(X, noun_act) :- rummy(X, noun_act).
category(X, noun_cognition) :- category(X),not abnormal_d_cognition(X),not -category(X, noun_cognition).
category(X, noun_cognition) :- kind(X, noun_cognition).
celestial_body(X, noun_object) :- celestial_body(X),not abnormal_d_object(X),not -celestial_body(X, noun_object).
celestial_body(X, noun_object) :- planet(X, noun_object).
chemical_phenomenon(X, noun_phenomenon) :- chemical_phenomenon(X),not abnormal_d_phenomenon(X),not -chemical_phenomenon(X, noun_phenomenon).
chemical_phenomenon(X, noun_phenomenon) :- state(X, noun_state).
chordate(X, noun_animal) :- chordate(X),not abnormal_d_animal(X),not -chordate(X, noun_animal).
chordate(X, noun_animal) :- vertebrate(X, noun_animal).
class(X, noun_group) :- class(X),not abnormal_d_group(X),not -class(X, noun_group).
class(X, noun_group) :- world(X, noun_group).
cognition(X, noun_tops) :- ability(X, noun_cognition).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognitive_state(X, noun_cognition) :- cognitive_state(X),not abnormal_d_cognition(X),not -cognitive_state(X, noun_cognition).
cognitive_state(X, noun_cognition) :- curiosity(X, noun_cognition).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- south_america(X, noun_group).
collection(X, noun_group) :- vegetation(X, noun_group).
colombia(X, noun_location) :- colombia(X),not abnormal_d_location(X),not -colombia(X, noun_location).
command(X, noun_communication) :- command(X),not abnormal_d_communication(X),not -command(X, noun_communication).
command(X, noun_communication) :- order(X, noun_communication).
common_fraction(X, noun_quantity) :- common_fraction(X),not abnormal_d_quantity(X),not -common_fraction(X, noun_quantity).
common_fraction(X, noun_quantity) :- half(X, noun_quantity).
communication(X, noun_tops) :- auditory_communication(X, noun_communication).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- indication(X, noun_communication).
communication(X, noun_tops) :- message(X, noun_communication).
communication(X, noun_tops) :- written_communication(X, noun_communication).
complex_number(X, noun_quantity) :- complex_number(X),not abnormal_d_quantity(X),not -complex_number(X, noun_quantity).
complex_number(X, noun_quantity) :- real_number(X, noun_quantity).
computer_memory_unit(X, noun_quantity) :- computer_memory_unit(X),not abnormal_d_quantity(X),not -computer_memory_unit(X, noun_quantity).
computer_memory_unit(X, noun_quantity) :- word(X, noun_quantity).
concept(X, noun_cognition) :- category(X, noun_cognition).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- property(X, noun_cognition).
concept(X, noun_cognition) :- quantity(X, noun_cognition).
concern(X, noun_cognition) :- concern(X),not abnormal_d_cognition(X),not -concern(X, noun_cognition).
concern(X, noun_cognition) :- world(X, noun_cognition).
confederation(X, noun_group) :- confederation(X),not abnormal_d_group(X),not -confederation(X, noun_group).
confederation(X, noun_group) :- nation(X, noun_group).
container(X, noun_artifact) :- container(X),not abnormal_d_artifact(X),not -container(X, noun_artifact).
container(X, noun_artifact) :- vessel(X, noun_artifact).
containerful(X, noun_quantity) :- basin(X, noun_quantity).
containerful(X, noun_quantity) :- containerful(X),not abnormal_d_quantity(X),not -containerful(X, noun_quantity).
content(X, noun_cognition) :- belief(X, noun_cognition).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- experience(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
content(X, noun_cognition) :- topic(X, noun_cognition).
continent(X, noun_object) :- continent(X),not abnormal_d_object(X),not -continent(X, noun_object).
continent(X, noun_object) :- south_america(X, noun_object).
country(X, noun_location) :- country(X),not abnormal_d_location(X),not -country(X, noun_location).
country(X, noun_location) :- south_american_country(X, noun_location).
creativity(X, noun_cognition) :- creativity(X),not abnormal_d_cognition(X),not -creativity(X, noun_cognition).
creativity(X, noun_cognition) :- imagination(X, noun_cognition).
curiosity(X, noun_cognition) :- curiosity(X),not abnormal_d_cognition(X),not -curiosity(X, noun_cognition).
curiosity(X, noun_cognition) :- interest(X, noun_cognition).
defamation(X, noun_communication) :- defamation(X),not abnormal_d_communication(X),not -defamation(X, noun_communication).
defamation(X, noun_communication) :- name(X, noun_communication).
definite_quantity(X, noun_quantity) :- definite_quantity(X),not abnormal_d_quantity(X),not -definite_quantity(X, noun_quantity).
definite_quantity(X, noun_quantity) :- number(X, noun_quantity).
definite_quantity(X, noun_quantity) :- unit_of_measurement(X, noun_quantity).
department(X, noun_cognition) :- department(X),not -department(X, noun_cognition),-department(X, noun_group),-department(X, noun_location).
department(X, noun_cognition) :- department(X),not abnormal_d_cognition(X),not -department(X, noun_cognition).
department(X, noun_group) :- department(X),not abnormal_d_group(X),not -department(X, noun_group).
department(X, noun_group) :- government_department(X, noun_group).
department(X, noun_location) :- department(X),not -department(X, noun_location),-department(X, noun_group),not department(X, noun_cognition).
department(X, noun_location) :- department(X),not abnormal_d_location(X),not -department(X, noun_location).
disparagement(X, noun_communication) :- defamation(X, noun_communication).
disparagement(X, noun_communication) :- disparagement(X),not abnormal_d_communication(X),not -disparagement(X, noun_communication).
disputant(X, noun_person) :- disputant(X),not abnormal_d_person(X),not -disputant(X, noun_person).
disputant(X, noun_person) :- reformer(X, noun_person).
disrespect(X, noun_communication) :- disparagement(X, noun_communication).
disrespect(X, noun_communication) :- disrespect(X),not abnormal_d_communication(X),not -disrespect(X, noun_communication).
district(X, noun_location) :- administrative_district(X, noun_location).
district(X, noun_location) :- district(X),not abnormal_d_location(X),not -district(X, noun_location).
division(X, noun_group) :- department(X, noun_group).
division(X, noun_group) :- division(X),not abnormal_d_group(X),not -division(X, noun_group).
dry(X, noun_person) :- dry(X),not abnormal_d_person(X),not -dry(X, noun_person).
dry(X, noun_person) :- nation(X, noun_person).
ecuador(X, noun_location) :- ecuador(X),not abnormal_d_location(X),not -ecuador(X, noun_location).
edible_nut(X, noun_food) :- brazil(X, noun_food).
edible_nut(X, noun_food) :- edible_nut(X),not abnormal_d_food(X),not -edible_nut(X, noun_food).
emotion(X, noun_feeling) :- emotion(X),not abnormal_d_feeling(X),not -emotion(X, noun_feeling).
emotion(X, noun_feeling) :- emotional_state(X, noun_state).
emotional_state(X, noun_state) :- emotional_state(X),not abnormal_d_state(X),not -emotional_state(X, noun_state).
emotional_state(X, noun_state) :- state(X, noun_state).
entertainer(X, noun_person) :- entertainer(X),not abnormal_d_person(X),not -entertainer(X, noun_person).
entertainer(X, noun_person) :- performer(X, noun_person).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
evidence(X, noun_communication) :- evidence(X),not abnormal_d_communication(X),not -evidence(X, noun_communication).
evidence(X, noun_communication) :- identification(X, noun_communication).
executive_department(X, noun_group) :- executive_department(X),not abnormal_d_group(X),not -executive_department(X, noun_group).
executive_department(X, noun_group) :- state(X, noun_group).
experience(X, noun_cognition) :- experience(X),not abnormal_d_cognition(X),not -experience(X, noun_cognition).
experience(X, noun_cognition) :- world(X, noun_cognition).
family(X, noun_group) :- family(X),not abnormal_d_group(X),not -family(X, noun_group).
family(X, noun_group) :- name(X, noun_group).
feature(X, noun_cognition) :- aspect(X, noun_cognition).
feature(X, noun_cognition) :- feature(X),not abnormal_d_cognition(X),not -feature(X, noun_cognition).
federal_department(X, noun_group) :- executive_department(X, noun_group).
federal_department(X, noun_group) :- federal_department(X),not abnormal_d_group(X),not -federal_department(X, noun_group).
feeling(X, noun_tops) :- emotion(X, noun_feeling).
feeling(X, noun_tops) :- feeling(X),not abnormal_d_tops(X),not -feeling(X, noun_tops).
female(X, noun_person) :- female(X),not abnormal_d_person(X),not -female(X, noun_person).
female(X, noun_person) :- woman(X, noun_person).
figure(X, noun_shape) :- figure(X),not abnormal_d_shape(X),not -figure(X, noun_shape).
figure(X, noun_shape) :- plane_figure(X, noun_shape).
fixture(X, noun_artifact) :- fixture(X),not abnormal_d_artifact(X),not -fixture(X, noun_artifact).
fixture(X, noun_artifact) :- plumbing_fixture(X, noun_artifact).
follower(X, noun_person) :- follower(X),not abnormal_d_person(X),not -follower(X, noun_person).
follower(X, noun_person) :- planet(X, noun_person).
forest(X, noun_group) :- forest(X),not abnormal_d_group(X),not -forest(X, noun_group).
forest(X, noun_object) :- forest(X),not -forest(X, noun_object),-forest(X, noun_group).
forest(X, noun_object) :- forest(X),not abnormal_d_object(X),not -forest(X, noun_object).
forest(X, noun_object) :- rainforest(X, noun_object).
fraction(X, noun_quantity) :- common_fraction(X, noun_quantity).
fraction(X, noun_quantity) :- fraction(X),not abnormal_d_quantity(X),not -fraction(X, noun_quantity).
fruit(X, noun_plant) :- fruit(X),not abnormal_d_plant(X),not -fruit(X, noun_plant).
fruit(X, noun_plant) :- seed(X, noun_plant).
fundamental_quantity(X, noun_quantity) :- fundamental_quantity(X),not abnormal_d_quantity(X),not -fundamental_quantity(X, noun_quantity).
fundamental_quantity(X, noun_quantity) :- time_period(X, noun_time).
game(X, noun_act) :- card_game(X, noun_act).
game(X, noun_act) :- game(X),not abnormal_d_act(X),not -game(X, noun_act).
genealogy(X, noun_group) :- genealogy(X),not abnormal_d_group(X),not -genealogy(X, noun_group).
genealogy(X, noun_group) :- lineage(X, noun_group).
genus(X, noun_group) :- bird_genus(X, noun_animal).
genus(X, noun_group) :- genus(X),not abnormal_d_group(X),not -genus(X, noun_group).
geographical_area(X, noun_location) :- basin(X, noun_location).
geographical_area(X, noun_location) :- geographical_area(X),not abnormal_d_location(X),not -geographical_area(X, noun_location).
geographical_area(X, noun_location) :- territory(X, noun_location).
geographical_area(X, noun_location) :- tract(X, noun_location).
geological_formation(X, noun_object) :- geological_formation(X),not abnormal_d_object(X),not -geological_formation(X, noun_object).
geological_formation(X, noun_object) :- natural_depression(X, noun_object).
god(X, noun_person) :- god(X),not abnormal_d_person(X),not -god(X, noun_person).
god(X, noun_person) :- godhead(X, noun_person).
godhead(X, noun_person) :- godhead(X),not abnormal_d_person(X),not -godhead(X, noun_person).
godhead(X, noun_person) :- hypostasis(X, noun_person).
government(X, noun_group) :- government(X),not abnormal_d_group(X),not -government(X, noun_group).
government(X, noun_group) :- state(X, noun_group).
government_department(X, noun_group) :- federal_department(X, noun_group).
government_department(X, noun_group) :- government_department(X),not abnormal_d_group(X),not -government_department(X, noun_group).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- people(X, noun_group).
group(X, noun_tops) :- social_group(X, noun_group).
group_action(X, noun_act) :- group_action(X),not abnormal_d_act(X),not -group_action(X, noun_act).
group_action(X, noun_act) :- social_control(X, noun_act).
guyana(X, noun_location) :- guyana(X),not abnormal_d_location(X),not -guyana(X, noun_location).
half(X, noun_quantity) :- half(X),not abnormal_d_quantity(X),not -half(X, noun_quantity).
half(X, noun_time) :- half(X),not -half(X, noun_time),-half(X, noun_quantity).
half(X, noun_time) :- half(X),not abnormal_d_time(X),not -half(X, noun_time).
hominid(X, noun_animal) :- hominid(X),not abnormal_d_animal(X),not -hominid(X, noun_animal).
hominid(X, noun_animal) :- homo(X, noun_animal).
homo(X, noun_animal) :- homo(X),not abnormal_d_animal(X),not -homo(X, noun_animal).
homo(X, noun_animal) :- world(X, noun_animal).
honor(X, noun_state) :- honor(X),not abnormal_d_state(X),not -honor(X, noun_state).
honor(X, noun_state) :- repute(X, noun_state).
hypostasis(X, noun_person) :- hypostasis(X),not abnormal_d_person(X),not -hypostasis(X, noun_person).
hypostasis(X, noun_person) :- word(X, noun_person).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
identification(X, noun_communication) :- identification(X),not abnormal_d_communication(X),not -identification(X, noun_communication).
identification(X, noun_communication) :- positive_identification(X, noun_communication).
imaginary_being(X, noun_person) :- imaginary_being(X),not abnormal_d_person(X),not -imaginary_being(X, noun_person).
imaginary_being(X, noun_person) :- mythical_being(X, noun_person).
imagination(X, noun_cognition) :- imaginary_being(X, noun_person).
imagination(X, noun_cognition) :- imagination(X),not abnormal_d_cognition(X),not -imagination(X, noun_cognition).
important_person(X, noun_person) :- important_person(X),not abnormal_d_person(X),not -important_person(X, noun_person).
important_person(X, noun_person) :- name(X, noun_person).
indefinite_quantity(X, noun_quantity) :- containerful(X, noun_quantity).
indefinite_quantity(X, noun_quantity) :- indefinite_quantity(X),not abnormal_d_quantity(X),not -indefinite_quantity(X, noun_quantity).
indication(X, noun_communication) :- evidence(X, noun_communication).
indication(X, noun_communication) :- indication(X),not abnormal_d_communication(X),not -indication(X, noun_communication).
information(X, noun_communication) :- information(X),not abnormal_d_communication(X),not -information(X, noun_communication).
information(X, noun_communication) :- word(X, noun_communication).
instrumentality(X, noun_artifact) :- container(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
interest(X, noun_cognition) :- concern(X, noun_cognition).
interest(X, noun_cognition) :- interest(X),not abnormal_d_cognition(X),not -interest(X, noun_cognition).
kin(X, noun_group) :- genealogy(X, noun_group).
kin(X, noun_group) :- kin(X),not abnormal_d_group(X),not -kin(X, noun_group).
kind(X, noun_cognition) :- kind(X),not abnormal_d_cognition(X),not -kind(X, noun_cognition).
kind(X, noun_cognition) :- species(X, noun_cognition).
land(X, noun_object) :- forest(X, noun_object).
land(X, noun_object) :- land(X),not abnormal_d_object(X),not -land(X, noun_object).
land(X, noun_object) :- landmass(X, noun_object).
landmass(X, noun_object) :- continent(X, noun_object).
landmass(X, noun_object) :- landmass(X),not abnormal_d_object(X),not -landmass(X, noun_object).
language_unit(X, noun_communication) :- language_unit(X),not abnormal_d_communication(X),not -language_unit(X, noun_communication).
language_unit(X, noun_communication) :- name(X, noun_communication).
language_unit(X, noun_communication) :- word(X, noun_communication).
lineage(X, noun_group) :- family(X, noun_group).
lineage(X, noun_group) :- lineage(X),not abnormal_d_group(X),not -lineage(X, noun_group).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- region(X, noun_location).
magnitude(X, noun_attribute) :- amount(X, noun_attribute).
magnitude(X, noun_attribute) :- magnitude(X),not abnormal_d_attribute(X),not -magnitude(X, noun_attribute).
magnitude_relation(X, noun_relation) :- magnitude_relation(X),not abnormal_d_relation(X),not -magnitude_relation(X, noun_relation).
magnitude_relation(X, noun_relation) :- ratio(X, noun_relation).
majority(X, noun_attribute) :- majority(X),not abnormal_d_attribute(X),not -majority(X, noun_attribute).
majority(X, noun_quantity) :- majority(X),not -majority(X, noun_quantity),-majority(X, noun_attribute),not majority(X, noun_time).
majority(X, noun_quantity) :- majority(X),not abnormal_d_quantity(X),not -majority(X, noun_quantity).
majority(X, noun_time) :- majority(X),not -majority(X, noun_time),-majority(X, noun_attribute),-majority(X, noun_quantity).
majority(X, noun_time) :- majority(X),not abnormal_d_time(X),not -majority(X, noun_time).
mammal(X, noun_animal) :- mammal(X),not abnormal_d_animal(X),not -mammal(X, noun_animal).
mammal(X, noun_animal) :- placental(X, noun_animal).
management(X, noun_act) :- authorization(X, noun_act).
management(X, noun_act) :- management(X),not abnormal_d_act(X),not -management(X, noun_act).
measure(X, noun_tops) :- definite_quantity(X, noun_quantity).
measure(X, noun_tops) :- fundamental_quantity(X, noun_quantity).
measure(X, noun_tops) :- indefinite_quantity(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
measure(X, noun_tops) :- playing_period(X, noun_time).
measure(X, noun_tops) :- relative_quantity(X, noun_quantity).
message(X, noun_communication) :- disrespect(X, noun_communication).
message(X, noun_communication) :- information(X, noun_communication).
message(X, noun_communication) :- message(X),not abnormal_d_communication(X),not -message(X, noun_communication).
message(X, noun_communication) :- statement(X, noun_communication).
mythical_being(X, noun_person) :- amazon(X, noun_person).
mythical_being(X, noun_person) :- mythical_being(X),not abnormal_d_person(X),not -mythical_being(X, noun_person).
name(X, noun_act) :- name(X),not abnormal_d_act(X),not -name(X, noun_act).
name(X, noun_communication) :- name(X),not -name(X, noun_communication),-name(X, noun_act),-name(X, noun_state),-name(X, noun_person),-name(X, noun_group).
name(X, noun_communication) :- name(X),not abnormal_d_communication(X),not -name(X, noun_communication).
name(X, noun_group) :- name(X),not -name(X, noun_group),-name(X, noun_act),-name(X, noun_state),-name(X, noun_person),not name(X, noun_communication).
name(X, noun_group) :- name(X),not abnormal_d_group(X),not -name(X, noun_group).
name(X, noun_person) :- name(X),not -name(X, noun_person),-name(X, noun_act),-name(X, noun_state),not name(X, noun_group),not name(X, noun_communication).
name(X, noun_person) :- name(X),not abnormal_d_person(X),not -name(X, noun_person).
name(X, noun_state) :- name(X),not -name(X, noun_state),-name(X, noun_act),not name(X, noun_person),not name(X, noun_group),not name(X, noun_communication).
name(X, noun_state) :- name(X),not abnormal_d_state(X),not -name(X, noun_state).
nation(X, noun_group) :- nation(X),not abnormal_d_group(X),not -nation(X, noun_group).
nation(X, noun_person) :- nation(X),not -nation(X, noun_person),-nation(X, noun_group).
nation(X, noun_person) :- nation(X),not abnormal_d_person(X),not -nation(X, noun_person).
natural_depression(X, noun_object) :- basin(X, noun_object).
natural_depression(X, noun_object) :- natural_depression(X),not abnormal_d_object(X),not -natural_depression(X, noun_object).
natural_object(X, noun_tops) :- celestial_body(X, noun_object).
natural_object(X, noun_tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_tops).
natural_object(X, noun_tops) :- plant_part(X, noun_plant).
natural_object(X, noun_tops) :- world(X, noun_object).
natural_phenomenon(X, noun_phenomenon) :- chemical_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
nervous_tissue(X, noun_body) :- nervous_tissue(X),not abnormal_d_body(X),not -nervous_tissue(X, noun_body).
nervous_tissue(X, noun_body) :- white_matter(X, noun_body).
number(X, noun_attribute) :- majority(X, noun_attribute).
number(X, noun_attribute) :- number(X),not abnormal_d_attribute(X),not -number(X, noun_attribute).
number(X, noun_quantity) :- complex_number(X, noun_quantity).
number(X, noun_quantity) :- number(X),not -number(X, noun_quantity),-number(X, noun_attribute).
number(X, noun_quantity) :- number(X),not abnormal_d_quantity(X),not -number(X, noun_quantity).
nut(X, noun_plant) :- edible_nut(X, noun_food).
nut(X, noun_plant) :- nut(X),not abnormal_d_plant(X),not -nut(X, noun_plant).
object(X, noun_tops) :- geological_formation(X, noun_object).
object(X, noun_tops) :- land(X, noun_object).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
order(X, noun_communication) :- order(X),not abnormal_d_communication(X),not -order(X, noun_communication).
order(X, noun_communication) :- word(X, noun_communication).
organism(X, noun_tops) :- animal(X, noun_tops).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organism(X, noun_tops) :- plant(X, noun_tops).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- polity(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
parrot(X, noun_animal) :- amazon(X, noun_animal).
parrot(X, noun_animal) :- parrot(X),not abnormal_d_animal(X),not -parrot(X, noun_animal).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not -part(X, noun_object),-part(X, noun_relation).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
part(X, noun_object) :- world(X, noun_object).
part(X, noun_relation) :- language_unit(X, noun_communication).
part(X, noun_relation) :- part(X),not abnormal_d_relation(X),not -part(X, noun_relation).
people(X, noun_group) :- class(X, noun_group).
people(X, noun_group) :- nation(X, noun_group).
people(X, noun_group) :- people(X),not abnormal_d_group(X),not -people(X, noun_group).
people(X, noun_group) :- world(X, noun_group).
percent(X, noun_relation) :- percent(X),not abnormal_d_relation(X),not -percent(X, noun_relation).
performer(X, noun_person) :- actor(X, noun_person).
performer(X, noun_person) :- performer(X),not abnormal_d_person(X),not -performer(X, noun_person).
person(X, noun_tops) :- adult(X, noun_person).
person(X, noun_tops) :- disputant(X, noun_person).
person(X, noun_tops) :- entertainer(X, noun_person).
person(X, noun_tops) :- female(X, noun_person).
person(X, noun_tops) :- follower(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
peru(X, noun_location) :- peru(X),not abnormal_d_location(X),not -peru(X, noun_location).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
placental(X, noun_animal) :- placental(X),not abnormal_d_animal(X),not -placental(X, noun_animal).
placental(X, noun_animal) :- primate(X, noun_animal).
plane_figure(X, noun_shape) :- plane_figure(X),not abnormal_d_shape(X),not -plane_figure(X, noun_shape).
plane_figure(X, noun_shape) :- tree(X, noun_shape).
planet(X, noun_object) :- planet(X),not -planet(X, noun_object),-planet(X, noun_person).
planet(X, noun_object) :- planet(X),not abnormal_d_object(X),not -planet(X, noun_object).
planet(X, noun_object) :- terrestrial_planet(X, noun_object).
planet(X, noun_person) :- planet(X),not abnormal_d_person(X),not -planet(X, noun_person).
plant(X, noun_tops) :- plant(X),not abnormal_d_tops(X),not -plant(X, noun_tops).
plant(X, noun_tops) :- vascular_plant(X, noun_plant).
plant_organ(X, noun_plant) :- plant_organ(X),not abnormal_d_plant(X),not -plant_organ(X, noun_plant).
plant_organ(X, noun_plant) :- reproductive_structure(X, noun_plant).
plant_part(X, noun_plant) :- plant_organ(X, noun_plant).
plant_part(X, noun_plant) :- plant_part(X),not abnormal_d_plant(X),not -plant_part(X, noun_plant).
playing_period(X, noun_time) :- half(X, noun_time).
playing_period(X, noun_time) :- playing_period(X),not abnormal_d_time(X),not -playing_period(X, noun_time).
plumbing_fixture(X, noun_artifact) :- plumbing_fixture(X),not abnormal_d_artifact(X),not -plumbing_fixture(X, noun_artifact).
plumbing_fixture(X, noun_artifact) :- sink(X, noun_artifact).
political_unit(X, noun_group) :- nation(X, noun_group).
political_unit(X, noun_group) :- political_unit(X),not abnormal_d_group(X),not -political_unit(X, noun_group).
political_unit(X, noun_group) :- state(X, noun_group).
political_unit(X, noun_group) :- union(X, noun_group).
polity(X, noun_group) :- government(X, noun_group).
polity(X, noun_group) :- polity(X),not abnormal_d_group(X),not -polity(X, noun_group).
positive_identification(X, noun_communication) :- positive_identification(X),not abnormal_d_communication(X),not -positive_identification(X, noun_communication).
positive_identification(X, noun_communication) :- word(X, noun_communication).
possession(X, noun_tops) :- assets(X, noun_possession).
possession(X, noun_tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_tops).
primate(X, noun_animal) :- hominid(X, noun_animal).
primate(X, noun_animal) :- primate(X),not abnormal_d_animal(X),not -primate(X, noun_animal).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
promise(X, noun_communication) :- promise(X),not abnormal_d_communication(X),not -promise(X, noun_communication).
promise(X, noun_communication) :- word(X, noun_communication).
property(X, noun_attribute) :- magnitude(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
property(X, noun_cognition) :- feature(X, noun_cognition).
property(X, noun_cognition) :- property(X),not -property(X, noun_cognition),-property(X, noun_attribute).
property(X, noun_cognition) :- property(X),not abnormal_d_cognition(X),not -property(X, noun_cognition).
proportion(X, noun_relation) :- percent(X, noun_relation).
proportion(X, noun_relation) :- proportion(X),not abnormal_d_relation(X),not -proportion(X, noun_relation).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
quantity(X, noun_cognition) :- amount(X, noun_cognition).
quantity(X, noun_cognition) :- quantity(X),not abnormal_d_cognition(X),not -quantity(X, noun_cognition).
quotient(X, noun_relation) :- proportion(X, noun_relation).
quotient(X, noun_relation) :- quotient(X),not abnormal_d_relation(X),not -quotient(X, noun_relation).
rainforest(X, noun_object) :- rainforest(X),not abnormal_d_object(X),not -rainforest(X, noun_object).
ratio(X, noun_relation) :- quotient(X, noun_relation).
ratio(X, noun_relation) :- ratio(X),not abnormal_d_relation(X),not -ratio(X, noun_relation).
rational_number(X, noun_quantity) :- fraction(X, noun_quantity).
rational_number(X, noun_quantity) :- rational_number(X),not abnormal_d_quantity(X),not -rational_number(X, noun_quantity).
real_number(X, noun_quantity) :- rational_number(X, noun_quantity).
real_number(X, noun_quantity) :- real_number(X),not abnormal_d_quantity(X),not -real_number(X, noun_quantity).
reformer(X, noun_person) :- dry(X, noun_person).
reformer(X, noun_person) :- reformer(X),not abnormal_d_person(X),not -reformer(X, noun_person).
region(X, noun_location) :- district(X, noun_location).
region(X, noun_location) :- geographical_area(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
region(X, noun_location) :- territory(X, noun_location).
relation(X, noun_tops) :- magnitude_relation(X, noun_relation).
relation(X, noun_tops) :- part(X, noun_relation).
relation(X, noun_tops) :- possession(X, noun_tops).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
relative_quantity(X, noun_quantity) :- majority(X, noun_quantity).
relative_quantity(X, noun_quantity) :- relative_quantity(X),not abnormal_d_quantity(X),not -relative_quantity(X, noun_quantity).
reproductive_structure(X, noun_plant) :- fruit(X, noun_plant).
reproductive_structure(X, noun_plant) :- reproductive_structure(X),not abnormal_d_plant(X),not -reproductive_structure(X, noun_plant).
repute(X, noun_state) :- name(X, noun_state).
repute(X, noun_state) :- repute(X),not abnormal_d_state(X),not -repute(X, noun_state).
river(X, noun_object) :- amazon(X, noun_object).
river(X, noun_object) :- river(X),not abnormal_d_object(X),not -river(X, noun_object).
rummy(X, noun_act) :- canasta(X, noun_act).
rummy(X, noun_act) :- rummy(X),not abnormal_d_act(X),not -rummy(X, noun_act).
sacred_text(X, noun_communication) :- sacred_text(X),not abnormal_d_communication(X),not -sacred_text(X, noun_communication).
sacred_text(X, noun_communication) :- word(X, noun_communication).
sanction(X, noun_act) :- name(X, noun_act).
sanction(X, noun_act) :- sanction(X),not abnormal_d_act(X),not -sanction(X, noun_act).
sector(X, noun_cognition) :- department(X, noun_cognition).
sector(X, noun_cognition) :- sector(X),not abnormal_d_cognition(X),not -sector(X, noun_cognition).
seed(X, noun_plant) :- nut(X, noun_plant).
seed(X, noun_plant) :- seed(X),not abnormal_d_plant(X),not -seed(X, noun_plant).
shape(X, noun_tops) :- figure(X, noun_shape).
shape(X, noun_tops) :- shape(X),not abnormal_d_tops(X),not -shape(X, noun_tops).
sink(X, noun_artifact) :- basin(X, noun_artifact).
sink(X, noun_artifact) :- sink(X),not abnormal_d_artifact(X),not -sink(X, noun_artifact).
social_control(X, noun_act) :- management(X, noun_act).
social_control(X, noun_act) :- social_control(X),not abnormal_d_act(X),not -social_control(X, noun_act).
social_group(X, noun_group) :- kin(X, noun_group).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
south_america(X, noun_group) :- south_america(X),not -south_america(X, noun_group),-south_america(X, noun_object).
south_america(X, noun_group) :- south_america(X),not abnormal_d_group(X),not -south_america(X, noun_group).
south_america(X, noun_object) :- south_america(X),not abnormal_d_object(X),not -south_america(X, noun_object).
south_american_country(X, noun_location) :- bolivia(X, noun_location).
south_american_country(X, noun_location) :- brazil(X, noun_location).
south_american_country(X, noun_location) :- colombia(X, noun_location).
south_american_country(X, noun_location) :- ecuador(X, noun_location).
south_american_country(X, noun_location) :- guyana(X, noun_location).
south_american_country(X, noun_location) :- peru(X, noun_location).
south_american_country(X, noun_location) :- south_american_country(X),not abnormal_d_location(X),not -south_american_country(X, noun_location).
south_american_country(X, noun_location) :- suriname(X, noun_location).
south_american_country(X, noun_location) :- venezuela(X, noun_location).
species(X, noun_cognition) :- species(X),not -species(X, noun_cognition),-species(X, noun_group).
species(X, noun_cognition) :- species(X),not abnormal_d_cognition(X),not -species(X, noun_cognition).
species(X, noun_group) :- species(X),not abnormal_d_group(X),not -species(X, noun_group).
speech(X, noun_communication) :- speech(X),not abnormal_d_communication(X),not -speech(X, noun_communication).
speech(X, noun_communication) :- word(X, noun_communication).
speech_act(X, noun_communication) :- command(X, noun_communication).
speech_act(X, noun_communication) :- promise(X, noun_communication).
speech_act(X, noun_communication) :- speech_act(X),not abnormal_d_communication(X),not -speech_act(X, noun_communication).
spiritual_being(X, noun_person) :- god(X, noun_person).
spiritual_being(X, noun_person) :- spiritual_being(X),not abnormal_d_person(X),not -spiritual_being(X, noun_person).
standing(X, noun_state) :- honor(X, noun_state).
standing(X, noun_state) :- standing(X),not abnormal_d_state(X),not -standing(X, noun_state).
state(X, noun_group) :- state(X),not -state(X, noun_group),-state(X, noun_tops),not state(X, noun_location),not state(X, noun_state).
state(X, noun_group) :- state(X),not abnormal_d_group(X),not -state(X, noun_group).
state(X, noun_location) :- state(X),not -state(X, noun_location),-state(X, noun_tops),-state(X, noun_group),not state(X, noun_state).
state(X, noun_location) :- state(X),not abnormal_d_location(X),not -state(X, noun_location).
state(X, noun_state) :- state(X),not -state(X, noun_state),-state(X, noun_tops),-state(X, noun_group),-state(X, noun_location).
state(X, noun_state) :- state(X),not abnormal_d_state(X),not -state(X, noun_state).
state(X, noun_tops) :- cognitive_state(X, noun_cognition).
state(X, noun_tops) :- feeling(X, noun_tops).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
state(X, noun_tops) :- status(X, noun_state).
statement(X, noun_communication) :- statement(X),not abnormal_d_communication(X),not -statement(X, noun_communication).
statement(X, noun_communication) :- word(X, noun_communication).
status(X, noun_state) :- standing(X, noun_state).
status(X, noun_state) :- status(X),not abnormal_d_state(X),not -status(X, noun_state).
stream(X, noun_object) :- river(X, noun_object).
stream(X, noun_object) :- stream(X),not abnormal_d_object(X),not -stream(X, noun_object).
suriname(X, noun_location) :- suriname(X),not abnormal_d_location(X),not -suriname(X, noun_location).
system(X, noun_body) :- system(X),not abnormal_d_body(X),not -system(X, noun_body).
system(X, noun_body) :- tract(X, noun_body).
taxonomic_group(X, noun_group) :- genus(X, noun_group).
taxonomic_group(X, noun_group) :- species(X, noun_group).
taxonomic_group(X, noun_group) :- taxonomic_group(X),not abnormal_d_group(X),not -taxonomic_group(X, noun_group).
terrestrial_planet(X, noun_object) :- terrestrial_planet(X),not abnormal_d_object(X),not -terrestrial_planet(X, noun_object).
terrestrial_planet(X, noun_object) :- world(X, noun_object).
territory(X, noun_cognition) :- territory(X),not -territory(X, noun_cognition),-territory(X, noun_location).
territory(X, noun_cognition) :- territory(X),not abnormal_d_cognition(X),not -territory(X, noun_cognition).
territory(X, noun_location) :- territory(X),not abnormal_d_location(X),not -territory(X, noun_location).
thing(X, noun_tops) :- body_of_water(X, noun_object).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
time_of_life(X, noun_time) :- age(X, noun_time).
time_of_life(X, noun_time) :- time_of_life(X),not abnormal_d_time(X),not -time_of_life(X, noun_time).
time_period(X, noun_time) :- time_of_life(X, noun_time).
time_period(X, noun_time) :- time_period(X),not abnormal_d_time(X),not -time_period(X, noun_time).
tissue(X, noun_body) :- animal_tissue(X, noun_body).
tissue(X, noun_body) :- tissue(X),not abnormal_d_body(X),not -tissue(X, noun_body).
topic(X, noun_cognition) :- area(X, noun_cognition).
topic(X, noun_cognition) :- topic(X),not abnormal_d_cognition(X),not -topic(X, noun_cognition).
tract(X, noun_body) :- tract(X),not -tract(X, noun_body),-tract(X, noun_location),not tract(X, noun_communication).
tract(X, noun_body) :- tract(X),not abnormal_d_body(X),not -tract(X, noun_body).
tract(X, noun_communication) :- tract(X),not -tract(X, noun_communication),-tract(X, noun_location),-tract(X, noun_body).
tract(X, noun_communication) :- tract(X),not abnormal_d_communication(X),not -tract(X, noun_communication).
tract(X, noun_location) :- tract(X),not abnormal_d_location(X),not -tract(X, noun_location).
treatise(X, noun_communication) :- tract(X, noun_communication).
treatise(X, noun_communication) :- treatise(X),not abnormal_d_communication(X),not -treatise(X, noun_communication).
tree(X, noun_person) :- tree(X),not -tree(X, noun_person),-tree(X, noun_plant),-tree(X, noun_shape).
tree(X, noun_person) :- tree(X),not abnormal_d_person(X),not -tree(X, noun_person).
tree(X, noun_plant) :- tree(X),not abnormal_d_plant(X),not -tree(X, noun_plant).
tree(X, noun_shape) :- tree(X),not -tree(X, noun_shape),-tree(X, noun_plant),not tree(X, noun_person).
tree(X, noun_shape) :- tree(X),not abnormal_d_shape(X),not -tree(X, noun_shape).
union(X, noun_group) :- confederation(X, noun_group).
union(X, noun_group) :- union(X),not abnormal_d_group(X),not -union(X, noun_group).
unit(X, noun_group) :- administrative_unit(X, noun_group).
unit(X, noun_group) :- political_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
unit_of_measurement(X, noun_quantity) :- computer_memory_unit(X, noun_quantity).
unit_of_measurement(X, noun_quantity) :- unit_of_measurement(X),not abnormal_d_quantity(X),not -unit_of_measurement(X, noun_quantity).
vascular_plant(X, noun_plant) :- vascular_plant(X),not abnormal_d_plant(X),not -vascular_plant(X, noun_plant).
vascular_plant(X, noun_plant) :- woody_plant(X, noun_plant).
vegetation(X, noun_group) :- forest(X, noun_group).
vegetation(X, noun_group) :- vegetation(X),not abnormal_d_group(X),not -vegetation(X, noun_group).
venezuela(X, noun_location) :- venezuela(X),not abnormal_d_location(X),not -venezuela(X, noun_location).
vertebrate(X, noun_animal) :- bird(X, noun_animal).
vertebrate(X, noun_animal) :- mammal(X, noun_animal).
vertebrate(X, noun_animal) :- vertebrate(X),not abnormal_d_animal(X),not -vertebrate(X, noun_animal).
vessel(X, noun_artifact) :- basin(X, noun_artifact).
vessel(X, noun_artifact) :- vessel(X),not abnormal_d_artifact(X),not -vessel(X, noun_artifact).
white_matter(X, noun_body) :- tract(X, noun_body).
white_matter(X, noun_body) :- white_matter(X),not abnormal_d_body(X),not -white_matter(X, noun_body).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- natural_object(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
woman(X, noun_person) :- amazon(X, noun_person).
woman(X, noun_person) :- woman(X),not abnormal_d_person(X),not -woman(X, noun_person).
woody_plant(X, noun_plant) :- tree(X, noun_plant).
woody_plant(X, noun_plant) :- woody_plant(X),not abnormal_d_plant(X),not -woody_plant(X, noun_plant).
word(X, noun_communication) :- word(X),not -word(X, noun_communication),-word(X, noun_person),not word(X, noun_quantity).
word(X, noun_communication) :- word(X),not abnormal_d_communication(X),not -word(X, noun_communication).
word(X, noun_person) :- word(X),not abnormal_d_person(X),not -word(X, noun_person).
word(X, noun_quantity) :- word(X),not -word(X, noun_quantity),-word(X, noun_person),-word(X, noun_communication).
word(X, noun_quantity) :- word(X),not abnormal_d_quantity(X),not -word(X, noun_quantity).
world(X, noun_animal) :- world(X),not -world(X, noun_animal),-world(X, noun_cognition),-world(X, noun_object),-world(X, noun_group).
world(X, noun_animal) :- world(X),not abnormal_d_animal(X),not -world(X, noun_animal).
world(X, noun_cognition) :- world(X),not abnormal_d_cognition(X),not -world(X, noun_cognition).
world(X, noun_group) :- world(X),not -world(X, noun_group),-world(X, noun_cognition),-world(X, noun_object),not world(X, noun_animal).
world(X, noun_group) :- world(X),not abnormal_d_group(X),not -world(X, noun_group).
world(X, noun_object) :- world(X),not -world(X, noun_object),-world(X, noun_cognition),not world(X, noun_group),not world(X, noun_animal).
world(X, noun_object) :- world(X),not abnormal_d_object(X),not -world(X, noun_object).
writing(X, noun_communication) :- sacred_text(X, noun_communication).
writing(X, noun_communication) :- treatise(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).