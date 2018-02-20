%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_abbreviation(afc, american_football_conference).
_abbreviation(nfc, national_football_conference).
_abbreviation(nfl, national_football_league).
_is('super_bowl_50', '50th_super_bowl').
_is('super_bowl_50', american_football_game).
_is('super_bowl_50', game).
_is('super_bowl_50', super_bowl).
_is(team, carolina_panthers).
_is(team, denver_broncos).
_mod(anniversary, golden).
_mod(feature, prominently).
_mod(game, american_football).
_mod(initiative, gold_themed).
_mod(initiative, various).
_mod(season, 2015).
_mod(super_bowl, '50th').
_mod(suspend, temporarily).
_mod(title, super_bowl).
_mod(title, third).
_possess(american_football_conference, denver_broncos).
_possess(american_football_conference, team).
_possess(national_football_conference, carolina_panthers).
_possess(national_football_conference, team).
_property(champion, of(national_football_league)).
_property(defeat, by('24_10')).
_property(emphasize, know).
_property(emphasize, suspend).
_property(emphasize, under(tradition)).
_property(know, as(super_bowl_l)).
_property(know, with(initiative)).
_property(name, with(roman_numerals)).
_property(national_football_league, for('2015_season')).
_property(play, at(levis_stadium)).
_property(play, at(santa_clara)).
_property(play, in(san_francisco_bay_area)).
_property(play, on('february_7_2016')).
_property(santa_clara, in(california)).
_relation(13, 9, _conj).
_relation(13, tradition, _conj).
_relation(2, 3, _clcomplement).
_relation(4, 5, _clause).
_relation(7, 14, _clause).
_relation(tradition, 10, _clause).
american_football(american_football).
anniversary(anniversary).
california(california).
champion(champion).
event(10, name, null, super_bowl).
event(13, know, null, game).
event(14, feature, logo, 'arabic_numerals_50').
event(16, play, null, game).
event(2, be, super_bowl_50, null).
event(3, determine, 'super_bowl_50', champion).
event(3, determine, 'super_bowl_50', champion_of_national_football_league).
event(4, defeat, denver_broncos, carolina_panthers).
event(4, defeat, team, team).
event(5, earn, afc, third_super_bowl_title).
event(5, earn, afc, title).
event(7, emphasize, league, anniversary).
event(7, emphasize, league, golden_anniversary).
event(9, suspend, null, game).
event(9, suspend, null, tradition).
game(game).
game('super_bowl_50').
initiative(initiative).
league(league).
logo(logo).
organization(national_football_league).
organization(nfl).
santa_clara(santa_clara).
season(season).
team(carolina_panthers).
team(denver_broncos).
team(team).
time(2015).
time('february_7_2016').
title(title).
tradition(tradition).
%%-------------------------------------------------------%%
%%Rules%%
%%-------------------------------------------------------%%
event(E, X, represent, Y) :- _possess(Y, X), team(X).
event(E, X, represent, Y) :- _possess(A, X), _abbreviation(Y, A), team(X).
place(X, P, at) :- _property(X, at(P)).
place(X, P, in) :- _property(X, in(P)).
time(X, T) :- _property(X, on(T)), time(T).
time(X, T) :- _property(X, at(T)), time(T).
time(T) :- year(T).

where(event(E, S, X, O), P, Prep) :- S = null, _is(O1, O), event(E1, _, X, O1), place(X, P, Prep). 
where(event(E, _, X, O), P, Prep) :- place(X, P, Prep).

when(event(E, S, X, O), P) :- S = null, _is(O1, O), event(E1, _, X, O1), time(X, P). 
when(event(E, _, X, O), P) :- time(X, P).

_score('24_10').
_property(play, on(2016)).
year(2016).

title(title, noun_state).
event(E, win, X, O) :- event(E1, earn, X, title), title(title, S), S = noun_state.
event(E, win, X, O) :- event(E1, earn, X1, title), _abbreviation(X1, X), title(title, S), S = noun_state.
event(E, win, X, O) :- event(E1, earn, X1, title), _possess(X1, X), title(title, S), S = noun_state.
event(E, win, X, O) :- event(E1, earn, X1, title), _abbreviation(X1, X2), _possess(X2, X), title(title, S), S = noun_state.

%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
abstract_entity(X, noun_tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_tops).
abstract_entity(X, noun_tops) :- abstraction(X, noun_tops).
abstraction(X, noun_cognition) :- abstraction(X),not abnormal_d_cognition(X),not -abstraction(X, noun_cognition).
abstraction(X, noun_cognition) :- right(X, noun_attribute).
abstraction(X, noun_tops) :- abstraction(X),not -abstraction(X, noun_tops),-abstraction(X, noun_cognition).
abstraction(X, noun_tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_tops).
abstraction(X, noun_tops) :- attribute(X, noun_tops).
abstraction(X, noun_tops) :- communication(X, noun_tops).
abstraction(X, noun_tops) :- group(X, noun_tops).
abstraction(X, noun_tops) :- measure(X, noun_tops).
abstraction(X, noun_tops) :- psychological_feature(X, noun_tops).
abstraction(X, noun_tops) :- relation(X, noun_tops).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
act(X, noun_tops) :- activity(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- diversion(X, noun_act).
activity(X, noun_act) :- game(X, noun_act).
activity(X, noun_act) :- occupation(X, noun_act).
advocate(X, noun_person) :- advocate(X),not abnormal_d_person(X),not -advocate(X, noun_person).
advocate(X, noun_person) :- champion(X, noun_person).
american_football(X, noun_act) :- american_football(X),not abnormal_d_act(X),not -american_football(X, noun_act).
animal(X, noun_tops) :- animal(X),not abnormal_d_tops(X),not -animal(X, noun_tops).
animal(X, noun_tops) :- game(X, noun_animal).
animal_group(X, noun_group) :- animal_group(X),not abnormal_d_group(X),not -animal_group(X, noun_group).
animal_group(X, noun_group) :- team(X, noun_group).
anniversary(X, noun_time) :- anniversary(X),not abnormal_d_time(X),not -anniversary(X, noun_time).
appellation(X, noun_communication) :- appellation(X),not abnormal_d_communication(X),not -appellation(X, noun_communication).
appellation(X, noun_communication) :- title(X, noun_communication).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
association(X, noun_group) :- association(X),not abnormal_d_group(X),not -association(X, noun_group).
association(X, noun_group) :- league(X, noun_group).
athletic_game(X, noun_act) :- athletic_game(X),not abnormal_d_act(X),not -athletic_game(X, noun_act).
athletic_game(X, noun_act) :- outdoor_game(X, noun_act).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- state(X, noun_tops).
attribute(X, noun_tops) :- trait(X, noun_attribute).
beginning(X, noun_act) :- beginning(X),not abnormal_d_act(X),not -beginning(X, noun_act).
beginning(X, noun_act) :- initiative(X, noun_act).
biological_group(X, noun_group) :- animal_group(X, noun_group).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
calendar_day(X, noun_time) :- calendar_day(X),not abnormal_d_time(X),not -calendar_day(X, noun_time).
calendar_day(X, noun_time) :- day(X, noun_time).
california(X, noun_location) :- california(X),not abnormal_d_location(X),not -california(X, noun_location).
champion(X, noun_person) :- champion(X),not abnormal_d_person(X),not -champion(X, noun_person).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- change_of_state(X, noun_act).
change_of_state(X, noun_act) :- beginning(X, noun_act).
change_of_state(X, noun_act) :- change_of_state(X),not abnormal_d_act(X),not -change_of_state(X, noun_act).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- practice(X, noun_cognition).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- signal(X, noun_communication).
communication(X, noun_tops) :- written_communication(X, noun_communication).
concept(X, noun_cognition) :- abstraction(X, noun_cognition).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
content(X, noun_cognition) :- tradition(X, noun_cognition).
contest(X, noun_event) :- contest(X),not abnormal_d_event(X),not -contest(X, noun_event).
contest(X, noun_event) :- game(X, noun_act).
contestant(X, noun_person) :- contestant(X),not abnormal_d_person(X),not -contestant(X, noun_person).
contestant(X, noun_person) :- rival(X, noun_person).
day(X, noun_time) :- anniversary(X, noun_time).
day(X, noun_time) :- day(X),not abnormal_d_time(X),not -day(X, noun_time).
defender(X, noun_person) :- champion(X, noun_person).
defender(X, noun_person) :- defender(X),not abnormal_d_person(X),not -defender(X, noun_person).
definite_quantity(X, noun_quantity) :- definite_quantity(X),not abnormal_d_quantity(X),not -definite_quantity(X, noun_quantity).
definite_quantity(X, noun_quantity) :- number(X, noun_quantity).
diversion(X, noun_act) :- diversion(X),not abnormal_d_act(X),not -diversion(X, noun_act).
diversion(X, noun_act) :- game(X, noun_act).
diversion(X, noun_act) :- play(X, noun_act).
diversion(X, noun_act) :- sport(X, noun_act).
document(X, noun_communication) :- document(X),not abnormal_d_communication(X),not -document(X, noun_communication).
document(X, noun_communication) :- legal_document(X, noun_communication).
drive(X, noun_attribute) :- drive(X),not abnormal_d_attribute(X),not -drive(X, noun_attribute).
drive(X, noun_attribute) :- initiative(X, noun_attribute).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
equipment(X, noun_artifact) :- equipment(X),not abnormal_d_artifact(X),not -equipment(X, noun_artifact).
equipment(X, noun_artifact) :- game_equipment(X, noun_artifact).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- social_event(X, noun_event).
expert(X, noun_person) :- champion(X, noun_person).
expert(X, noun_person) :- expert(X),not abnormal_d_person(X),not -expert(X, noun_person).
field_game(X, noun_act) :- field_game(X),not abnormal_d_act(X),not -field_game(X, noun_act).
field_game(X, noun_act) :- football(X, noun_act).
food(X, noun_food) :- food(X),not abnormal_d_food(X),not -food(X, noun_food).
food(X, noun_food) :- meat(X, noun_food).
football(X, noun_act) :- american_football(X, noun_act).
football(X, noun_act) :- football(X),not abnormal_d_act(X),not -football(X, noun_act).
fundamental_quantity(X, noun_quantity) :- fundamental_quantity(X),not abnormal_d_quantity(X),not -fundamental_quantity(X, noun_quantity).
fundamental_quantity(X, noun_quantity) :- time_period(X, noun_time).
game(X, noun_act) :- game(X),not -game(X, noun_act),-game(X, noun_animal),-game(X, noun_artifact),not game(X, noun_quantity),not game(X, noun_food),not game(X, noun_cognition).
game(X, noun_act) :- game(X),not abnormal_d_act(X),not -game(X, noun_act).
game(X, noun_animal) :- game(X),not abnormal_d_animal(X),not -game(X, noun_animal).
game(X, noun_artifact) :- game(X),not -game(X, noun_artifact),-game(X, noun_animal),not game(X, noun_act),not game(X, noun_quantity),not game(X, noun_food),not game(X, noun_cognition).
game(X, noun_artifact) :- game(X),not abnormal_d_artifact(X),not -game(X, noun_artifact).
game(X, noun_cognition) :- game(X),not -game(X, noun_cognition),-game(X, noun_animal),-game(X, noun_artifact),-game(X, noun_act),-game(X, noun_quantity),-game(X, noun_food).
game(X, noun_cognition) :- game(X),not abnormal_d_cognition(X),not -game(X, noun_cognition).
game(X, noun_food) :- game(X),not -game(X, noun_food),-game(X, noun_animal),-game(X, noun_artifact),-game(X, noun_act),-game(X, noun_quantity),not game(X, noun_cognition).
game(X, noun_food) :- game(X),not abnormal_d_food(X),not -game(X, noun_food).
game(X, noun_quantity) :- game(X),not -game(X, noun_quantity),-game(X, noun_animal),-game(X, noun_artifact),-game(X, noun_act),not game(X, noun_food),not game(X, noun_cognition).
game(X, noun_quantity) :- game(X),not abnormal_d_quantity(X),not -game(X, noun_quantity).
game_equipment(X, noun_artifact) :- game(X, noun_artifact).
game_equipment(X, noun_artifact) :- game_equipment(X),not abnormal_d_artifact(X),not -game_equipment(X, noun_artifact).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- social_group(X, noun_group).
heading(X, noun_communication) :- heading(X),not abnormal_d_communication(X),not -heading(X, noun_communication).
heading(X, noun_communication) :- subheading(X, noun_communication).
heading(X, noun_communication) :- title(X, noun_communication).
high_status(X, noun_state) :- high_status(X),not abnormal_d_state(X),not -high_status(X, noun_state).
high_status(X, noun_state) :- title(X, noun_state).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
idea(X, noun_cognition) :- plan(X, noun_cognition).
initiative(X, noun_act) :- initiative(X),not -initiative(X, noun_act),-initiative(X, noun_attribute).
initiative(X, noun_act) :- initiative(X),not abnormal_d_act(X),not -initiative(X, noun_act).
initiative(X, noun_attribute) :- initiative(X),not abnormal_d_attribute(X),not -initiative(X, noun_attribute).
instrumentality(X, noun_artifact) :- equipment(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
language_unit(X, noun_communication) :- language_unit(X),not abnormal_d_communication(X),not -language_unit(X, noun_communication).
language_unit(X, noun_communication) :- name(X, noun_communication).
league(X, noun_group) :- league(X),not abnormal_d_group(X),not -league(X, noun_group).
league(X, noun_quantity) :- league(X),not -league(X, noun_quantity),-league(X, noun_group).
league(X, noun_quantity) :- league(X),not abnormal_d_quantity(X),not -league(X, noun_quantity).
legal_document(X, noun_communication) :- legal_document(X),not abnormal_d_communication(X),not -legal_document(X, noun_communication).
legal_document(X, noun_communication) :- title(X, noun_communication).
legal_right(X, noun_attribute) :- legal_right(X),not abnormal_d_attribute(X),not -legal_right(X, noun_attribute).
legal_right(X, noun_attribute) :- title(X, noun_attribute).
line(X, noun_communication) :- heading(X, noun_communication).
line(X, noun_communication) :- line(X),not abnormal_d_communication(X),not -line(X, noun_communication).
linear_measure(X, noun_quantity) :- linear_measure(X),not abnormal_d_quantity(X),not -linear_measure(X, noun_quantity).
linear_measure(X, noun_quantity) :- linear_unit(X, noun_quantity).
linear_unit(X, noun_quantity) :- league(X, noun_quantity).
linear_unit(X, noun_quantity) :- linear_unit(X),not abnormal_d_quantity(X),not -linear_unit(X, noun_quantity).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
logo(X, noun_communication) :- logo(X),not abnormal_d_communication(X),not -logo(X, noun_communication).
marker(X, noun_communication) :- marker(X),not abnormal_d_communication(X),not -marker(X, noun_communication).
marker(X, noun_communication) :- trademark(X, noun_communication).
matter(X, noun_communication) :- matter(X),not abnormal_d_communication(X),not -matter(X, noun_communication).
matter(X, noun_communication) :- text(X, noun_communication).
measure(X, noun_tops) :- definite_quantity(X, noun_quantity).
measure(X, noun_tops) :- fundamental_quantity(X, noun_quantity).
measure(X, noun_tops) :- linear_measure(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
meat(X, noun_food) :- game(X, noun_food).
meat(X, noun_food) :- meat(X),not abnormal_d_food(X),not -meat(X, noun_food).
name(X, noun_communication) :- appellation(X, noun_communication).
name(X, noun_communication) :- name(X),not abnormal_d_communication(X),not -name(X, noun_communication).
name(X, noun_communication) :- title(X, noun_communication).
number(X, noun_quantity) :- number(X),not abnormal_d_quantity(X),not -number(X, noun_quantity).
number(X, noun_quantity) :- score(X, noun_quantity).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
occupation(X, noun_act) :- game(X, noun_act).
occupation(X, noun_act) :- occupation(X),not abnormal_d_act(X),not -occupation(X, noun_act).
organism(X, noun_tops) :- animal(X, noun_tops).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- association(X, noun_group).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
outdoor_game(X, noun_act) :- field_game(X, noun_act).
outdoor_game(X, noun_act) :- outdoor_game(X),not abnormal_d_act(X),not -outdoor_game(X, noun_act).
part(X, noun_relation) :- language_unit(X, noun_communication).
part(X, noun_relation) :- part(X),not abnormal_d_relation(X),not -part(X, noun_relation).
person(X, noun_tops) :- advocate(X, noun_person).
person(X, noun_tops) :- contestant(X, noun_person).
person(X, noun_tops) :- expert(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
person(X, noun_tops) :- preserver(X, noun_person).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
plan(X, noun_cognition) :- plan(X),not abnormal_d_cognition(X),not -plan(X, noun_cognition).
plan(X, noun_cognition) :- plan_of_action(X, noun_cognition).
plan_of_action(X, noun_cognition) :- plan_of_action(X),not abnormal_d_cognition(X),not -plan_of_action(X, noun_cognition).
plan_of_action(X, noun_cognition) :- scheme(X, noun_cognition).
play(X, noun_act) :- game(X, noun_act).
play(X, noun_act) :- play(X),not abnormal_d_act(X),not -play(X, noun_act).
political_unit(X, noun_group) :- political_unit(X),not abnormal_d_group(X),not -political_unit(X, noun_group).
political_unit(X, noun_group) :- union(X, noun_group).
practice(X, noun_cognition) :- practice(X),not abnormal_d_cognition(X),not -practice(X, noun_cognition).
practice(X, noun_cognition) :- tradition(X, noun_cognition).
preserver(X, noun_person) :- defender(X, noun_person).
preserver(X, noun_person) :- preserver(X),not abnormal_d_person(X),not -preserver(X, noun_person).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
relation(X, noun_tops) :- part(X, noun_relation).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
right(X, noun_attribute) :- legal_right(X, noun_attribute).
right(X, noun_attribute) :- right(X),not abnormal_d_attribute(X),not -right(X, noun_attribute).
right(X, noun_attribute) :- title(X, noun_attribute).
rival(X, noun_person) :- champion(X, noun_person).
rival(X, noun_person) :- rival(X),not abnormal_d_person(X),not -rival(X, noun_person).
santa_clara(X, noun_location) :- santa_clara(X),not abnormal_d_location(X),not -santa_clara(X, noun_location).
scheme(X, noun_cognition) :- game(X, noun_cognition).
scheme(X, noun_cognition) :- scheme(X),not abnormal_d_cognition(X),not -scheme(X, noun_cognition).
score(X, noun_quantity) :- game(X, noun_quantity).
score(X, noun_quantity) :- score(X),not abnormal_d_quantity(X),not -score(X, noun_quantity).
season(X, noun_time) :- season(X),not abnormal_d_time(X),not -season(X, noun_time).
signal(X, noun_communication) :- signal(X),not abnormal_d_communication(X),not -signal(X, noun_communication).
signal(X, noun_communication) :- symbol(X, noun_communication).
social_event(X, noun_event) :- contest(X, noun_event).
social_event(X, noun_event) :- social_event(X),not abnormal_d_event(X),not -social_event(X, noun_event).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
solid(X, noun_substance) :- food(X, noun_food).
solid(X, noun_substance) :- solid(X),not abnormal_d_substance(X),not -solid(X, noun_substance).
sport(X, noun_act) :- athletic_game(X, noun_act).
sport(X, noun_act) :- sport(X),not abnormal_d_act(X),not -sport(X, noun_act).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
state(X, noun_tops) :- status(X, noun_state).
status(X, noun_state) :- high_status(X, noun_state).
status(X, noun_state) :- status(X),not abnormal_d_state(X),not -status(X, noun_state).
subheading(X, noun_communication) :- subheading(X),not abnormal_d_communication(X),not -subheading(X, noun_communication).
subheading(X, noun_communication) :- title(X, noun_communication).
substance(X, noun_tops) :- solid(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
symbol(X, noun_communication) :- marker(X, noun_communication).
symbol(X, noun_communication) :- symbol(X),not abnormal_d_communication(X),not -symbol(X, noun_communication).
team(X, noun_group) :- team(X),not abnormal_d_group(X),not -team(X, noun_group).
text(X, noun_communication) :- line(X, noun_communication).
text(X, noun_communication) :- text(X),not abnormal_d_communication(X),not -text(X, noun_communication).
time_period(X, noun_time) :- calendar_day(X, noun_time).
time_period(X, noun_time) :- season(X, noun_time).
time_period(X, noun_time) :- time_period(X),not abnormal_d_time(X),not -time_period(X, noun_time).
title(X, noun_attribute) :- title(X),not -title(X, noun_attribute),-title(X, noun_state),-title(X, noun_communication).
title(X, noun_attribute) :- title(X),not abnormal_d_attribute(X),not -title(X, noun_attribute).
title(X, noun_communication) :- title(X),not -title(X, noun_communication),-title(X, noun_state),not title(X, noun_attribute).
title(X, noun_communication) :- title(X),not abnormal_d_communication(X),not -title(X, noun_communication).
title(X, noun_state) :- title(X),not abnormal_d_state(X),not -title(X, noun_state).
trademark(X, noun_communication) :- logo(X, noun_communication).
trademark(X, noun_communication) :- trademark(X),not abnormal_d_communication(X),not -trademark(X, noun_communication).
tradition(X, noun_cognition) :- tradition(X),not abnormal_d_cognition(X),not -tradition(X, noun_cognition).
trait(X, noun_attribute) :- drive(X, noun_attribute).
trait(X, noun_attribute) :- trait(X),not abnormal_d_attribute(X),not -trait(X, noun_attribute).
union(X, noun_group) :- league(X, noun_group).
union(X, noun_group) :- union(X),not abnormal_d_group(X),not -union(X, noun_group).
unit(X, noun_group) :- political_unit(X, noun_group).
unit(X, noun_group) :- team(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
writing(X, noun_communication) :- document(X, noun_communication).
writing(X, noun_communication) :- matter(X, noun_communication).
writing(X, noun_communication) :- title(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).

