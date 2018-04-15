%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_abbreviation(nasa, national_aeronautics_and_space_administration).
_end_date(project_gemini, 1966).
_is(apollo_program, program).
_is(apollo_program, third_united_states_human_program).
_is(program, program).
_is(program, third_united_states_human_program).
_mod(american, first).
_mod(conceive, first).
_mod(dedicate, later).
_mod(flight, first).
_mod(flight, manned).
_mod(goal, national).
_mod(human, first).
_mod(know, also).
_mod(program, apollo).
_mod(program, human).
_mod(program, third).
_mod(program, united_states).
_mod(project_gemini, two_man).
_mod(project_mercury, one_man).
_mod(propose, john_f_kennedy).
_mod(return, safely).
_mod(spacecraft, three_man).
_possess(dwight_d_eisenhower, administration).
_possess(john_f_kennedy, goal).
_property(1, know, as, project_apollo).
_property(10, dedicate, _by, end).
_property(10, dedicate, to, goal).
_property(10, end, of, 1960).
_property(11, man, on, moon).
_property(12, return, to, earth).
_property(13, propose, in, 'may_25_1961').
_property(13, propose, in, address).
_property(13, propose, to, congress).
_property(15, follow, _by, project_gemini).
_property(16, flight, of, apollo).
_property(3, carry, by, national_aeronautics_and_space_administration).
_property(5, landing, on, 'moon_from_1969_to_1972').
_property(6, administration, as, spacecraft).
_property(6, conceive, during, administration).
_property(8, put, in, space).
_relation(10, 6, _clause).
_relation(11, 12, _conj).
_relation(4, 5, _clcomplement).
_relation(6, 7, _clcomplement).
_relation(goal, 11, _clause).
_relation(goal, 12, _clause).
_relation(program, 1, _clause).
_relation(program, 3, _clause).
_start_date(project_gemini, 1962).
address(address).
administration(administration).
american(american).
apollo(apollo).
congress(congress).
day('may_25_1961', 25).
earth(earth).
end(end).
event(1, know, null, null).
event(10, dedicate, null, apollo).
event(11, land, null, man).
event(11, land, null, man_on_moon).
event(12, return, null, he).
event(13, propose, end, null).
event(14, be, null, null).
event(15, follow, null, project_mercury).
event(16, be, null, null).
event(2, be, null, null).
event(3, carry, null, null).
event(4, accomplish, national_aeronautics_and_space_administration, null).
event(5, landing, null, first_human).
event(5, landing, null, human).
event(6, conceive, null, null).
event(7, follow, null, one_man_project_mercury).
event(7, follow, null, project_mercury).
event(8, put, one_man_project_mercury, american).
event(8, put, one_man_project_mercury, first_american).
event(8, put, project_mercury, american).
event(8, put, project_mercury, first_american).
event(9, be, null, null).
flight(flight).
goal(goal).
human(human).
man(man).
month('may_25_1961', may).
moon(moon).
national_aeronautics_and_space_administration(national_aeronautics_and_space_administration).
organization(congress).
organization(nasa).
president(president).
program(apollo_program).
program(program).
space(space).
spacecraft(spacecraft).
spaceflight(spaceflight).
time('may_25_1961').
time('moon_from_1969_to_1972').
time(1960).
time(1962).
time(1966).
time(1968).
year('may_25_1961', 1961).
year('moon_from_1969_to_1972', 1969).
year('moon_from_1969_to_1972', 1972).
year(1962, 1962).
year(1966, 1966).
year(1968, 1968).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
ability(X, noun_cognition) :- ability(X),not abnormal_d_cognition(X),not -ability(X, noun_cognition).
ability(X, noun_cognition) :- creativity(X, noun_cognition).
ability(X, noun_cognition) :- know_how(X, noun_cognition).
abstract_entity(X, noun_tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_tops).
abstract_entity(X, noun_tops) :- abstraction(X, noun_tops).
abstraction(X, noun_tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_tops).
abstraction(X, noun_tops) :- attribute(X, noun_tops).
abstraction(X, noun_tops) :- communication(X, noun_tops).
abstraction(X, noun_tops) :- group(X, noun_tops).
abstraction(X, noun_tops) :- measure(X, noun_tops).
abstraction(X, noun_tops) :- psychological_feature(X, noun_tops).
academic_administrator(X, noun_person) :- academic_administrator(X),not abnormal_d_person(X),not -academic_administrator(X, noun_person).
academic_administrator(X, noun_person) :- president(X, noun_person).
accomplishment(X, noun_act) :- accomplishment(X),not abnormal_d_act(X),not -accomplishment(X, noun_act).
accomplishment(X, noun_act) :- attainment(X, noun_act).
accomplishment(X, noun_act) :- deed(X, noun_act).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
act(X, noun_tops) :- activity(X, noun_act).
act(X, noun_tops) :- group_action(X, noun_act).
act(X, noun_tops) :- speech_act(X, noun_communication).
actinic_radiation(X, noun_phenomenon) :- actinic_radiation(X),not abnormal_d_phenomenon(X),not -actinic_radiation(X, noun_phenomenon).
actinic_radiation(X, noun_phenomenon) :- light(X, noun_phenomenon).
action(X, noun_act) :- accomplishment(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- arrival(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- attempt(X, noun_act).
activity(X, noun_act) :- diversion(X, noun_act).
activity(X, noun_act) :- role(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
address(X, noun_attribute) :- address(X),not -address(X, noun_attribute),-address(X, noun_location),-address(X, noun_communication).
address(X, noun_attribute) :- address(X),not abnormal_d_attribute(X),not -address(X, noun_attribute).
address(X, noun_communication) :- address(X),not -address(X, noun_communication),-address(X, noun_location),not address(X, noun_attribute).
address(X, noun_communication) :- address(X),not abnormal_d_communication(X),not -address(X, noun_communication).
address(X, noun_location) :- address(X),not abnormal_d_location(X),not -address(X, noun_location).
administration(X, noun_act) :- administration(X),not abnormal_d_act(X),not -administration(X, noun_act).
administration(X, noun_group) :- administration(X),not -administration(X, noun_group),-administration(X, noun_act),not administration(X, noun_time).
administration(X, noun_group) :- administration(X),not abnormal_d_group(X),not -administration(X, noun_group).
administration(X, noun_time) :- administration(X),not -administration(X, noun_time),-administration(X, noun_act),-administration(X, noun_group).
administration(X, noun_time) :- administration(X),not abnormal_d_time(X),not -administration(X, noun_time).
administrative_unit(X, noun_group) :- administrative_unit(X),not abnormal_d_group(X),not -administrative_unit(X, noun_group).
administrative_unit(X, noun_group) :- agency(X, noun_group).
administrator(X, noun_person) :- academic_administrator(X, noun_person).
administrator(X, noun_person) :- administrator(X),not abnormal_d_person(X),not -administrator(X, noun_person).
administrator(X, noun_person) :- executive(X, noun_person).
agency(X, noun_group) :- agency(X),not abnormal_d_group(X),not -agency(X, noun_group).
agency(X, noun_group) :- independent_agency(X, noun_group).
air_travel(X, noun_act) :- air_travel(X),not abnormal_d_act(X),not -air_travel(X, noun_act).
air_travel(X, noun_act) :- flight(X, noun_act).
air_unit(X, noun_group) :- air_unit(X),not abnormal_d_group(X),not -air_unit(X, noun_group).
air_unit(X, noun_group) :- flight(X, noun_group).
american(X, noun_communication) :- american(X),not abnormal_d_communication(X),not -american(X, noun_communication).
american(X, noun_person) :- american(X),not -american(X, noun_person),-american(X, noun_communication).
american(X, noun_person) :- american(X),not abnormal_d_person(X),not -american(X, noun_person).
amorphous_shape(X, noun_shape) :- amorphous_shape(X),not abnormal_d_shape(X),not -amorphous_shape(X, noun_shape).
amorphous_shape(X, noun_shape) :- space(X, noun_shape).
animal(X, noun_tops) :- animal(X),not abnormal_d_tops(X),not -animal(X, noun_tops).
animal(X, noun_tops) :- chordate(X, noun_animal).
animal_group(X, noun_group) :- animal_group(X),not abnormal_d_group(X),not -animal_group(X, noun_group).
animal_group(X, noun_group) :- flock(X, noun_group).
announcement(X, noun_communication) :- announcement(X),not abnormal_d_communication(X),not -announcement(X, noun_communication).
announcement(X, noun_communication) :- program(X, noun_communication).
apollo(X, noun_person) :- apollo(X),not abnormal_d_person(X),not -apollo(X, noun_person).
area(X, noun_attribute) :- area(X),not -area(X, noun_attribute),-area(X, noun_location).
area(X, noun_attribute) :- area(X),not abnormal_d_attribute(X),not -area(X, noun_attribute).
area(X, noun_attribute) :- space(X, noun_communication).
area(X, noun_location) :- area(X),not abnormal_d_location(X),not -area(X, noun_location).
area(X, noun_location) :- space(X, noun_location).
arrangement(X, noun_group) :- arrangement(X),not abnormal_d_group(X),not -arrangement(X, noun_group).
arrangement(X, noun_group) :- formation(X, noun_group).
arrival(X, noun_act) :- arrival(X),not abnormal_d_act(X),not -arrival(X, noun_act).
arrival(X, noun_act) :- landing(X, noun_act).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- block(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
artifact(X, noun_tops) :- structure(X, noun_artifact).
artifact(X, noun_tops) :- surface(X, noun_artifact).
artifact(X, noun_tops) :- way(X, noun_artifact).
assembly(X, noun_group) :- assembly(X),not abnormal_d_group(X),not -assembly(X, noun_group).
assembly(X, noun_group) :- legislature(X, noun_group).
assistant(X, noun_person) :- assistant(X),not abnormal_d_person(X),not -assistant(X, noun_person).
assistant(X, noun_person) :- subordinate(X, noun_person).
athlete(X, noun_person) :- athlete(X),not abnormal_d_person(X),not -athlete(X, noun_person).
athlete(X, noun_person) :- football_player(X, noun_person).
attainment(X, noun_act) :- attainment(X),not abnormal_d_act(X),not -attainment(X, noun_act).
attainment(X, noun_act) :- success(X, noun_act).
attempt(X, noun_act) :- attempt(X),not abnormal_d_act(X),not -attempt(X, noun_act).
attempt(X, noun_act) :- contribution(X, noun_act).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- shape(X, noun_tops).
attribute(X, noun_tops) :- space(X, noun_tops).
attribute(X, noun_tops) :- state(X, noun_tops).
belief(X, noun_cognition) :- belief(X),not abnormal_d_cognition(X),not -belief(X, noun_cognition).
belief(X, noun_cognition) :- spiritual_being(X, noun_person).
biological_group(X, noun_group) :- animal_group(X, noun_group).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
block(X, noun_artifact) :- block(X),not abnormal_d_artifact(X),not -block(X, noun_artifact).
block(X, noun_artifact) :- type(X, noun_artifact).
bodily_process(X, noun_process) :- bodily_process(X),not abnormal_d_process(X),not -bodily_process(X, noun_process).
bodily_process(X, noun_process) :- sexual_activity(X, noun_act).
bodily_property(X, noun_attribute) :- bodily_property(X),not abnormal_d_attribute(X),not -bodily_property(X, noun_attribute).
bodily_property(X, noun_attribute) :- position(X, noun_attribute).
body(X, noun_group) :- administration(X, noun_group).
body(X, noun_group) :- body(X),not abnormal_d_group(X),not -body(X, noun_group).
boundary(X, noun_location) :- boundary(X),not abnormal_d_location(X),not -boundary(X, noun_location).
boundary(X, noun_location) :- end(X, noun_location).
boundary(X, noun_location) :- surface(X, noun_location).
care(X, noun_act) :- care(X),not abnormal_d_act(X),not -care(X, noun_act).
care(X, noun_act) :- treatment(X, noun_act).
celestial_body(X, noun_object) :- celestial_body(X),not abnormal_d_object(X),not -celestial_body(X, noun_object).
celestial_body(X, noun_object) :- planet(X, noun_object).
celestial_body(X, noun_object) :- satellite(X, noun_object).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- motion(X, noun_act).
character(X, noun_communication) :- character(X),not abnormal_d_communication(X),not -character(X, noun_communication).
character(X, noun_communication) :- space(X, noun_communication).
chordate(X, noun_animal) :- chordate(X),not abnormal_d_animal(X),not -chordate(X, noun_animal).
chordate(X, noun_animal) :- vertebrate(X, noun_animal).
code(X, noun_communication) :- address(X, noun_communication).
code(X, noun_communication) :- code(X),not abnormal_d_communication(X),not -code(X, noun_communication).
code(X, noun_communication) :- software(X, noun_communication).
coding_system(X, noun_communication) :- code(X, noun_communication).
coding_system(X, noun_communication) :- coding_system(X),not abnormal_d_communication(X),not -coding_system(X, noun_communication).
cognition(X, noun_tops) :- ability(X, noun_cognition).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognitive_state(X, noun_cognition) :- cognitive_state(X),not abnormal_d_cognition(X),not -cognitive_state(X, noun_cognition).
cognitive_state(X, noun_cognition) :- curiosity(X, noun_cognition).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- expressive_style(X, noun_communication).
communication(X, noun_tops) :- language(X, noun_communication).
communication(X, noun_tops) :- message(X, noun_communication).
communication(X, noun_tops) :- sign(X, noun_communication).
communication(X, noun_tops) :- signal(X, noun_communication).
communication(X, noun_tops) :- written_communication(X, noun_communication).
communicator(X, noun_person) :- communicator(X),not abnormal_d_person(X),not -communicator(X, noun_person).
communicator(X, noun_person) :- negotiator(X, noun_person).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- part(X, noun_cognition).
concern(X, noun_cognition) :- concern(X),not abnormal_d_cognition(X),not -concern(X, noun_cognition).
concern(X, noun_cognition) :- earth(X, noun_cognition).
congress(X, noun_act) :- congress(X),not -congress(X, noun_act),-congress(X, noun_group).
congress(X, noun_act) :- congress(X),not abnormal_d_act(X),not -congress(X, noun_act).
congress(X, noun_group) :- congress(X),not abnormal_d_group(X),not -congress(X, noun_group).
connection(X, noun_artifact) :- connection(X),not abnormal_d_artifact(X),not -connection(X, noun_artifact).
connection(X, noun_artifact) :- earth(X, noun_artifact).
consideration(X, noun_attribute) :- consideration(X),not abnormal_d_attribute(X),not -consideration(X, noun_attribute).
consideration(X, noun_attribute) :- tact(X, noun_attribute).
content(X, noun_cognition) :- belief(X, noun_cognition).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- end(X, noun_cognition).
content(X, noun_cognition) :- goal(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
contestant(X, noun_person) :- athlete(X, noun_person).
contestant(X, noun_person) :- contestant(X),not abnormal_d_person(X),not -contestant(X, noun_person).
contribution(X, noun_act) :- contribution(X),not abnormal_d_act(X),not -contribution(X, noun_act).
contribution(X, noun_act) :- end(X, noun_act).
conveyance(X, noun_artifact) :- conveyance(X),not abnormal_d_artifact(X),not -conveyance(X, noun_artifact).
conveyance(X, noun_artifact) :- vehicle(X, noun_artifact).
corporate_executive(X, noun_person) :- corporate_executive(X),not abnormal_d_person(X),not -corporate_executive(X, noun_person).
corporate_executive(X, noun_person) :- president(X, noun_person).
craft(X, noun_artifact) :- craft(X),not abnormal_d_artifact(X),not -craft(X, noun_artifact).
craft(X, noun_artifact) :- spacecraft(X, noun_artifact).
creativity(X, noun_cognition) :- creativity(X),not abnormal_d_cognition(X),not -creativity(X, noun_cognition).
creativity(X, noun_cognition) :- flight(X, noun_cognition).
curiosity(X, noun_cognition) :- curiosity(X),not abnormal_d_cognition(X),not -curiosity(X, noun_cognition).
curiosity(X, noun_cognition) :- interest(X, noun_cognition).
deed(X, noun_act) :- deed(X),not abnormal_d_act(X),not -deed(X, noun_act).
deed(X, noun_act) :- running_away(X, noun_act).
deity(X, noun_person) :- deity(X),not abnormal_d_person(X),not -deity(X, noun_person).
deity(X, noun_person) :- greek_deity(X, noun_person).
direction(X, noun_communication) :- address(X, noun_communication).
direction(X, noun_communication) :- direction(X),not abnormal_d_communication(X),not -direction(X, noun_communication).
diversion(X, noun_act) :- diversion(X),not abnormal_d_act(X),not -diversion(X, noun_act).
diversion(X, noun_act) :- entertainment(X, noun_act).
document(X, noun_communication) :- document(X),not abnormal_d_communication(X),not -document(X, noun_communication).
document(X, noun_communication) :- program(X, noun_communication).
earth(X, noun_artifact) :- earth(X),not -earth(X, noun_artifact),-earth(X, noun_substance),-earth(X, noun_object),-earth(X, noun_location),-earth(X, noun_cognition).
earth(X, noun_artifact) :- earth(X),not abnormal_d_artifact(X),not -earth(X, noun_artifact).
earth(X, noun_cognition) :- earth(X),not -earth(X, noun_cognition),-earth(X, noun_substance),-earth(X, noun_object),-earth(X, noun_location),not earth(X, noun_artifact).
earth(X, noun_cognition) :- earth(X),not abnormal_d_cognition(X),not -earth(X, noun_cognition).
earth(X, noun_location) :- earth(X),not -earth(X, noun_location),-earth(X, noun_substance),-earth(X, noun_object),not earth(X, noun_cognition),not earth(X, noun_artifact).
earth(X, noun_location) :- earth(X),not abnormal_d_location(X),not -earth(X, noun_location).
earth(X, noun_object) :- earth(X),not -earth(X, noun_object),-earth(X, noun_substance),not earth(X, noun_location),not earth(X, noun_cognition),not earth(X, noun_artifact).
earth(X, noun_object) :- earth(X),not abnormal_d_object(X),not -earth(X, noun_object).
earth(X, noun_substance) :- earth(X),not abnormal_d_substance(X),not -earth(X, noun_substance).
electromagnetic_radiation(X, noun_phenomenon) :- actinic_radiation(X, noun_phenomenon).
electromagnetic_radiation(X, noun_phenomenon) :- electromagnetic_radiation(X),not abnormal_d_phenomenon(X),not -electromagnetic_radiation(X, noun_phenomenon).
element(X, noun_substance) :- earth(X, noun_substance).
element(X, noun_substance) :- element(X),not abnormal_d_substance(X),not -element(X, noun_substance).
end(X, noun_act) :- end(X),not -end(X, noun_act),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),-end(X, noun_state),-end(X, noun_person),-end(X, noun_location),-end(X, noun_communication),-end(X, noun_artifact).
end(X, noun_act) :- end(X),not abnormal_d_act(X),not -end(X, noun_act).
end(X, noun_artifact) :- end(X),not -end(X, noun_artifact),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),-end(X, noun_state),-end(X, noun_person),-end(X, noun_location),-end(X, noun_communication),not end(X, noun_act).
end(X, noun_artifact) :- end(X),not abnormal_d_artifact(X),not -end(X, noun_artifact).
end(X, noun_cognition) :- end(X),not -end(X, noun_cognition),-end(X, noun_time),-end(X, noun_event),not end(X, noun_state),not end(X, noun_person),not end(X, noun_location),not end(X, noun_communication),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_cognition) :- end(X),not abnormal_d_cognition(X),not -end(X, noun_cognition).
end(X, noun_communication) :- end(X),not -end(X, noun_communication),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),-end(X, noun_state),-end(X, noun_person),-end(X, noun_location),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_communication) :- end(X),not abnormal_d_communication(X),not -end(X, noun_communication).
end(X, noun_event) :- end(X),not -end(X, noun_event),-end(X, noun_time),not end(X, noun_cognition),not end(X, noun_state),not end(X, noun_person),not end(X, noun_location),not end(X, noun_communication),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_event) :- end(X),not abnormal_d_event(X),not -end(X, noun_event).
end(X, noun_location) :- end(X),not -end(X, noun_location),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),-end(X, noun_state),-end(X, noun_person),not end(X, noun_communication),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_location) :- end(X),not abnormal_d_location(X),not -end(X, noun_location).
end(X, noun_location) :- goal(X, noun_location).
end(X, noun_person) :- end(X),not -end(X, noun_person),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),-end(X, noun_state),not end(X, noun_location),not end(X, noun_communication),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_person) :- end(X),not abnormal_d_person(X),not -end(X, noun_person).
end(X, noun_state) :- end(X),not -end(X, noun_state),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),not end(X, noun_person),not end(X, noun_location),not end(X, noun_communication),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_state) :- end(X),not abnormal_d_state(X),not -end(X, noun_state).
end(X, noun_time) :- end(X),not abnormal_d_time(X),not -end(X, noun_time).
ending(X, noun_event) :- end(X, noun_event).
ending(X, noun_event) :- ending(X),not abnormal_d_event(X),not -ending(X, noun_event).
energy(X, noun_phenomenon) :- energy(X),not abnormal_d_phenomenon(X),not -energy(X, noun_phenomenon).
energy(X, noun_phenomenon) :- radiation(X, noun_phenomenon).
english(X, noun_communication) :- american(X, noun_communication).
english(X, noun_communication) :- english(X),not abnormal_d_communication(X),not -english(X, noun_communication).
entertainment(X, noun_act) :- entertainment(X),not abnormal_d_act(X),not -entertainment(X, noun_act).
entertainment(X, noun_act) :- show(X, noun_act).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
equipment(X, noun_artifact) :- equipment(X),not abnormal_d_artifact(X),not -equipment(X, noun_artifact).
equipment(X, noun_artifact) :- game_equipment(X, noun_artifact).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- happening(X, noun_event).
event(X, noun_tops) :- social_event(X, noun_event).
executive(X, noun_person) :- corporate_executive(X, noun_person).
executive(X, noun_person) :- executive(X),not abnormal_d_person(X),not -executive(X, noun_person).
expressive_style(X, noun_communication) :- expressive_style(X),not abnormal_d_communication(X),not -expressive_style(X, noun_communication).
expressive_style(X, noun_communication) :- manner_of_speaking(X, noun_communication).
extent(X, noun_attribute) :- area(X, noun_attribute).
extent(X, noun_attribute) :- extent(X),not abnormal_d_attribute(X),not -extent(X, noun_attribute).
extremity(X, noun_location) :- boundary(X, noun_location).
extremity(X, noun_location) :- end(X, noun_location).
extremity(X, noun_location) :- extremity(X),not abnormal_d_location(X),not -extremity(X, noun_location).
flight(X, noun_act) :- flight(X),not abnormal_d_act(X),not -flight(X, noun_act).
flight(X, noun_artifact) :- flight(X),not -flight(X, noun_artifact),-flight(X, noun_act),not flight(X, noun_group),not flight(X, noun_cognition),not flight(X, noun_phenomenon).
flight(X, noun_artifact) :- flight(X),not abnormal_d_artifact(X),not -flight(X, noun_artifact).
flight(X, noun_cognition) :- flight(X),not -flight(X, noun_cognition),-flight(X, noun_act),-flight(X, noun_artifact),-flight(X, noun_group),not flight(X, noun_phenomenon).
flight(X, noun_cognition) :- flight(X),not abnormal_d_cognition(X),not -flight(X, noun_cognition).
flight(X, noun_group) :- flight(X),not -flight(X, noun_group),-flight(X, noun_act),-flight(X, noun_artifact),not flight(X, noun_cognition),not flight(X, noun_phenomenon).
flight(X, noun_group) :- flight(X),not abnormal_d_group(X),not -flight(X, noun_group).
flight(X, noun_phenomenon) :- flight(X),not -flight(X, noun_phenomenon),-flight(X, noun_act),-flight(X, noun_artifact),-flight(X, noun_group),-flight(X, noun_cognition).
flight(X, noun_phenomenon) :- flight(X),not abnormal_d_phenomenon(X),not -flight(X, noun_phenomenon).
flock(X, noun_group) :- flight(X, noun_group).
flock(X, noun_group) :- flock(X),not abnormal_d_group(X),not -flock(X, noun_group).
football_player(X, noun_person) :- football_player(X),not abnormal_d_person(X),not -football_player(X, noun_person).
football_player(X, noun_person) :- lineman(X, noun_person).
formation(X, noun_group) :- flight(X, noun_group).
formation(X, noun_group) :- formation(X),not abnormal_d_group(X),not -formation(X, noun_group).
fundamental_quantity(X, noun_quantity) :- fundamental_quantity(X),not abnormal_d_quantity(X),not -fundamental_quantity(X, noun_quantity).
fundamental_quantity(X, noun_quantity) :- time_period(X, noun_time).
game_equipment(X, noun_artifact) :- game_equipment(X),not abnormal_d_artifact(X),not -game_equipment(X, noun_artifact).
game_equipment(X, noun_artifact) :- goal(X, noun_artifact).
game_equipment(X, noun_artifact) :- man(X, noun_artifact).
gathering(X, noun_group) :- assembly(X, noun_group).
gathering(X, noun_group) :- body(X, noun_group).
gathering(X, noun_group) :- gathering(X),not abnormal_d_group(X),not -gathering(X, noun_group).
gathering(X, noun_group) :- meeting(X, noun_group).
geographic_point(X, noun_location) :- address(X, noun_location).
geographic_point(X, noun_location) :- geographic_point(X),not abnormal_d_location(X),not -geographic_point(X, noun_location).
germanic(X, noun_communication) :- germanic(X),not abnormal_d_communication(X),not -germanic(X, noun_communication).
germanic(X, noun_communication) :- west_germanic(X, noun_communication).
goal(X, noun_act) :- goal(X),not -goal(X, noun_act),-goal(X, noun_cognition),not goal(X, noun_artifact),not goal(X, noun_location).
goal(X, noun_act) :- goal(X),not abnormal_d_act(X),not -goal(X, noun_act).
goal(X, noun_artifact) :- goal(X),not -goal(X, noun_artifact),-goal(X, noun_cognition),-goal(X, noun_act),not goal(X, noun_location).
goal(X, noun_artifact) :- goal(X),not abnormal_d_artifact(X),not -goal(X, noun_artifact).
goal(X, noun_cognition) :- goal(X),not abnormal_d_cognition(X),not -goal(X, noun_cognition).
goal(X, noun_location) :- goal(X),not -goal(X, noun_location),-goal(X, noun_cognition),-goal(X, noun_act),-goal(X, noun_artifact).
goal(X, noun_location) :- goal(X),not abnormal_d_location(X),not -goal(X, noun_location).
good(X, noun_attribute) :- good(X),not abnormal_d_attribute(X),not -good(X, noun_attribute).
good(X, noun_attribute) :- kindness(X, noun_attribute).
greek_deity(X, noun_person) :- apollo(X, noun_person).
greek_deity(X, noun_person) :- greek_deity(X),not abnormal_d_person(X),not -greek_deity(X, noun_person).
group(X, noun_tops) :- arrangement(X, noun_group).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- social_group(X, noun_group).
group_action(X, noun_act) :- group_action(X),not abnormal_d_act(X),not -group_action(X, noun_act).
group_action(X, noun_act) :- social_control(X, noun_act).
happening(X, noun_event) :- ending(X, noun_event).
happening(X, noun_event) :- happening(X),not abnormal_d_event(X),not -happening(X, noun_event).
head(X, noun_person) :- administrator(X, noun_person).
head(X, noun_person) :- head(X),not abnormal_d_person(X),not -head(X, noun_person).
head_of_state(X, noun_person) :- head_of_state(X),not abnormal_d_person(X),not -head_of_state(X, noun_person).
head_of_state(X, noun_person) :- president(X, noun_person).
hominid(X, noun_animal) :- hominid(X),not abnormal_d_animal(X),not -hominid(X, noun_animal).
hominid(X, noun_animal) :- homo(X, noun_animal).
hominid(X, noun_animal) :- human(X, noun_animal).
hominid(X, noun_animal) :- man(X, noun_animal).
homo(X, noun_animal) :- homo(X),not abnormal_d_animal(X),not -homo(X, noun_animal).
homo(X, noun_animal) :- man(X, noun_animal).
horizontal_surface(X, noun_artifact) :- horizontal_surface(X),not abnormal_d_artifact(X),not -horizontal_surface(X, noun_artifact).
horizontal_surface(X, noun_artifact) :- platform(X, noun_artifact).
human(X, noun_animal) :- human(X),not abnormal_d_animal(X),not -human(X, noun_animal).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
idea(X, noun_cognition) :- program(X, noun_cognition).
independent_agency(X, noun_group) :- independent_agency(X),not abnormal_d_group(X),not -independent_agency(X, noun_group).
independent_agency(X, noun_group) :- national_aeronautics_and_space_administration(X, noun_group).
indo_european(X, noun_communication) :- germanic(X, noun_communication).
indo_european(X, noun_communication) :- indo_european(X),not abnormal_d_communication(X),not -indo_european(X, noun_communication).
information(X, noun_communication) :- information(X),not abnormal_d_communication(X),not -information(X, noun_communication).
information(X, noun_communication) :- program(X, noun_communication).
inhabitant(X, noun_person) :- american(X, noun_person).
inhabitant(X, noun_person) :- inhabitant(X),not abnormal_d_person(X),not -inhabitant(X, noun_person).
instrumentality(X, noun_artifact) :- connection(X, noun_artifact).
instrumentality(X, noun_artifact) :- conveyance(X, noun_artifact).
instrumentality(X, noun_artifact) :- equipment(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
interest(X, noun_cognition) :- concern(X, noun_cognition).
interest(X, noun_cognition) :- interest(X),not abnormal_d_cognition(X),not -interest(X, noun_cognition).
island(X, noun_object) :- island(X),not abnormal_d_object(X),not -island(X, noun_object).
island(X, noun_object) :- man(X, noun_location).
journey(X, noun_act) :- journey(X),not abnormal_d_act(X),not -journey(X, noun_act).
journey(X, noun_act) :- trip(X, noun_act).
journey(X, noun_act) :- voyage(X, noun_act).
kindness(X, noun_attribute) :- consideration(X, noun_attribute).
kindness(X, noun_attribute) :- kindness(X),not abnormal_d_attribute(X),not -kindness(X, noun_attribute).
know_how(X, noun_cognition) :- know_how(X),not abnormal_d_cognition(X),not -know_how(X, noun_cognition).
know_how(X, noun_cognition) :- method(X, noun_cognition).
land(X, noun_object) :- island(X, noun_object).
land(X, noun_object) :- land(X),not abnormal_d_object(X),not -land(X, noun_object).
landing(X, noun_act) :- landing(X),not -landing(X, noun_act),-landing(X, noun_artifact).
landing(X, noun_act) :- landing(X),not abnormal_d_act(X),not -landing(X, noun_act).
landing(X, noun_artifact) :- landing(X),not abnormal_d_artifact(X),not -landing(X, noun_artifact).
language(X, noun_communication) :- language(X),not abnormal_d_communication(X),not -language(X, noun_communication).
language(X, noun_communication) :- natural_language(X, noun_communication).
leader(X, noun_person) :- head(X, noun_person).
leader(X, noun_person) :- leader(X),not abnormal_d_person(X),not -leader(X, noun_person).
leader(X, noun_person) :- presiding_officer(X, noun_person).
legislature(X, noun_group) :- congress(X, noun_group).
legislature(X, noun_group) :- legislature(X),not abnormal_d_group(X),not -legislature(X, noun_group).
light(X, noun_phenomenon) :- light(X),not abnormal_d_phenomenon(X),not -light(X, noun_phenomenon).
light(X, noun_phenomenon) :- moon(X, noun_phenomenon).
lineman(X, noun_act) :- end(X, noun_act).
lineman(X, noun_act) :- lineman(X),not -lineman(X, noun_act),-lineman(X, noun_person).
lineman(X, noun_act) :- lineman(X),not abnormal_d_act(X),not -lineman(X, noun_act).
lineman(X, noun_person) :- end(X, noun_person).
lineman(X, noun_person) :- lineman(X),not abnormal_d_person(X),not -lineman(X, noun_person).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- earth(X, noun_location).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- point(X, noun_location).
location(X, noun_tops) :- region(X, noun_location).
magnitude(X, noun_attribute) :- extent(X, noun_attribute).
magnitude(X, noun_attribute) :- magnitude(X),not abnormal_d_attribute(X),not -magnitude(X, noun_attribute).
male(X, noun_person) :- male(X),not abnormal_d_person(X),not -male(X, noun_person).
male(X, noun_person) :- man(X, noun_person).
mammal(X, noun_animal) :- mammal(X),not abnormal_d_animal(X),not -mammal(X, noun_animal).
mammal(X, noun_animal) :- placental(X, noun_animal).
man(X, noun_animal) :- man(X),not abnormal_d_animal(X),not -man(X, noun_animal).
man(X, noun_artifact) :- man(X),not -man(X, noun_artifact),-man(X, noun_animal),-man(X, noun_person),-man(X, noun_location).
man(X, noun_artifact) :- man(X),not abnormal_d_artifact(X),not -man(X, noun_artifact).
man(X, noun_location) :- man(X),not -man(X, noun_location),-man(X, noun_animal),-man(X, noun_person),not man(X, noun_artifact).
man(X, noun_location) :- man(X),not abnormal_d_location(X),not -man(X, noun_location).
man(X, noun_person) :- man(X),not -man(X, noun_person),-man(X, noun_animal),not man(X, noun_location),not man(X, noun_artifact).
man(X, noun_person) :- man(X),not abnormal_d_person(X),not -man(X, noun_person).
management(X, noun_act) :- administration(X, noun_act).
management(X, noun_act) :- management(X),not abnormal_d_act(X),not -management(X, noun_act).
manner_of_speaking(X, noun_communication) :- address(X, noun_communication).
manner_of_speaking(X, noun_communication) :- manner_of_speaking(X),not abnormal_d_communication(X),not -manner_of_speaking(X, noun_communication).
manservant(X, noun_person) :- man(X, noun_person).
manservant(X, noun_person) :- manservant(X),not abnormal_d_person(X),not -manservant(X, noun_person).
material(X, noun_substance) :- earth(X, noun_substance).
material(X, noun_substance) :- material(X),not abnormal_d_substance(X),not -material(X, noun_substance).
measure(X, noun_tops) :- fundamental_quantity(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
measure(X, noun_tops) :- point(X, noun_time).
measure(X, noun_tops) :- time_interval(X, noun_time).
measure(X, noun_tops) :- time_unit(X, noun_time).
mechanical_phenomenon(X, noun_phenomenon) :- flight(X, noun_phenomenon).
mechanical_phenomenon(X, noun_phenomenon) :- mechanical_phenomenon(X),not abnormal_d_phenomenon(X),not -mechanical_phenomenon(X, noun_phenomenon).
medical_care(X, noun_act) :- medical_care(X),not abnormal_d_act(X),not -medical_care(X, noun_act).
medical_care(X, noun_act) :- therapy(X, noun_act).
medication(X, noun_act) :- administration(X, noun_act).
medication(X, noun_act) :- medication(X),not abnormal_d_act(X),not -medication(X, noun_act).
meeting(X, noun_group) :- congress(X, noun_group).
meeting(X, noun_group) :- meeting(X),not abnormal_d_group(X),not -meeting(X, noun_group).
message(X, noun_communication) :- direction(X, noun_communication).
message(X, noun_communication) :- information(X, noun_communication).
message(X, noun_communication) :- message(X),not abnormal_d_communication(X),not -message(X, noun_communication).
message(X, noun_communication) :- statement(X, noun_communication).
method(X, noun_cognition) :- method(X),not abnormal_d_cognition(X),not -method(X, noun_cognition).
method(X, noun_cognition) :- system(X, noun_cognition).
military_unit(X, noun_group) :- air_unit(X, noun_group).
military_unit(X, noun_group) :- military_unit(X),not abnormal_d_group(X),not -military_unit(X, noun_group).
month(X, noun_time) :- month(X),not abnormal_d_time(X),not -month(X, noun_time).
month(X, noun_time) :- moon(X, noun_time).
moon(X, noun_object) :- moon(X),not abnormal_d_object(X),not -moon(X, noun_object).
moon(X, noun_person) :- moon(X),not -moon(X, noun_person),-moon(X, noun_object),-moon(X, noun_time),-moon(X, noun_phenomenon).
moon(X, noun_person) :- moon(X),not abnormal_d_person(X),not -moon(X, noun_person).
moon(X, noun_phenomenon) :- moon(X),not -moon(X, noun_phenomenon),-moon(X, noun_object),-moon(X, noun_time),not moon(X, noun_person).
moon(X, noun_phenomenon) :- moon(X),not abnormal_d_phenomenon(X),not -moon(X, noun_phenomenon).
moon(X, noun_time) :- moon(X),not -moon(X, noun_time),-moon(X, noun_object),not moon(X, noun_phenomenon),not moon(X, noun_person).
moon(X, noun_time) :- moon(X),not abnormal_d_time(X),not -moon(X, noun_time).
morality(X, noun_attribute) :- good(X, noun_attribute).
morality(X, noun_attribute) :- morality(X),not abnormal_d_attribute(X),not -morality(X, noun_attribute).
motion(X, noun_act) :- motion(X),not abnormal_d_act(X),not -motion(X, noun_act).
motion(X, noun_act) :- travel(X, noun_act).
national_aeronautics_and_space_administration(X, noun_group) :- national_aeronautics_and_space_administration(X),not abnormal_d_group(X),not -national_aeronautics_and_space_administration(X, noun_group).
natural_language(X, noun_communication) :- indo_european(X, noun_communication).
natural_language(X, noun_communication) :- natural_language(X),not abnormal_d_communication(X),not -natural_language(X, noun_communication).
natural_object(X, noun_tops) :- celestial_body(X, noun_object).
natural_object(X, noun_tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_tops).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X, noun_phenomenon).
negotiator(X, noun_person) :- negotiator(X),not abnormal_d_person(X),not -negotiator(X, noun_person).
negotiator(X, noun_person) :- representative(X, noun_person).
object(X, noun_tops) :- earth(X, noun_object).
object(X, noun_tops) :- land(X, noun_object).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- moon(X, noun_object).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- part(X, noun_artifact).
object(X, noun_tops) :- whole(X, noun_tops).
organic_process(X, noun_process) :- bodily_process(X, noun_process).
organic_process(X, noun_process) :- organic_process(X),not abnormal_d_process(X),not -organic_process(X, noun_process).
organism(X, noun_tops) :- animal(X, noun_tops).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
part(X, noun_artifact) :- part(X),not -part(X, noun_artifact),-part(X, noun_cognition).
part(X, noun_artifact) :- part(X),not abnormal_d_artifact(X),not -part(X, noun_artifact).
part(X, noun_artifact) :- piece(X, noun_artifact).
part(X, noun_cognition) :- end(X, noun_cognition).
part(X, noun_cognition) :- part(X),not abnormal_d_cognition(X),not -part(X, noun_cognition).
performance(X, noun_act) :- performance(X),not abnormal_d_act(X),not -performance(X, noun_act).
performance(X, noun_act) :- program(X, noun_act).
person(X, noun_tops) :- communicator(X, noun_person).
person(X, noun_tops) :- contestant(X, noun_person).
person(X, noun_tops) :- inhabitant(X, noun_person).
person(X, noun_tops) :- leader(X, noun_person).
person(X, noun_tops) :- male(X, noun_person).
person(X, noun_tops) :- man(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
person(X, noun_tops) :- religious_person(X, noun_person).
person(X, noun_tops) :- worker(X, noun_person).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_phenomenon(X, noun_phenomenon) :- energy(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- mechanical_phenomenon(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X),not abnormal_d_phenomenon(X),not -physical_phenomenon(X, noun_phenomenon).
piece(X, noun_artifact) :- piece(X),not abnormal_d_artifact(X),not -piece(X, noun_artifact).
piece(X, noun_artifact) :- piece_of_cloth(X, noun_artifact).
piece_of_cloth(X, noun_artifact) :- end(X, noun_artifact).
piece_of_cloth(X, noun_artifact) :- piece_of_cloth(X),not abnormal_d_artifact(X),not -piece_of_cloth(X, noun_artifact).
placental(X, noun_animal) :- placental(X),not abnormal_d_animal(X),not -placental(X, noun_animal).
placental(X, noun_animal) :- primate(X, noun_animal).
planet(X, noun_object) :- planet(X),not abnormal_d_object(X),not -planet(X, noun_object).
planet(X, noun_object) :- terrestrial_planet(X, noun_object).
platform(X, noun_artifact) :- landing(X, noun_artifact).
platform(X, noun_artifact) :- platform(X),not abnormal_d_artifact(X),not -platform(X, noun_artifact).
point(X, noun_location) :- geographic_point(X, noun_location).
point(X, noun_location) :- point(X),not abnormal_d_location(X),not -point(X, noun_location).
point(X, noun_location) :- topographic_point(X, noun_location).
point(X, noun_time) :- end(X, noun_time).
point(X, noun_time) :- point(X),not -point(X, noun_time),-point(X, noun_location).
point(X, noun_time) :- point(X),not abnormal_d_time(X),not -point(X, noun_time).
position(X, noun_act) :- lineman(X, noun_act).
position(X, noun_act) :- position(X),not -position(X, noun_act),-position(X, noun_attribute).
position(X, noun_act) :- position(X),not abnormal_d_act(X),not -position(X, noun_act).
position(X, noun_act) :- presidency(X, noun_act).
position(X, noun_attribute) :- position(X),not abnormal_d_attribute(X),not -position(X, noun_attribute).
position(X, noun_attribute) :- stance(X, noun_attribute).
presentation(X, noun_act) :- performance(X, noun_act).
presentation(X, noun_act) :- presentation(X),not abnormal_d_act(X),not -presentation(X, noun_act).
presidency(X, noun_act) :- presidency(X),not abnormal_d_act(X),not -presidency(X, noun_act).
presidency(X, noun_act) :- president(X, noun_act).
president(X, noun_act) :- president(X),not -president(X, noun_act),-president(X, noun_person).
president(X, noun_act) :- president(X),not abnormal_d_act(X),not -president(X, noun_act).
president(X, noun_person) :- president(X),not abnormal_d_person(X),not -president(X, noun_person).
presiding_officer(X, noun_person) :- president(X, noun_person).
presiding_officer(X, noun_person) :- presiding_officer(X),not abnormal_d_person(X),not -presiding_officer(X, noun_person).
primate(X, noun_animal) :- hominid(X, noun_animal).
primate(X, noun_animal) :- primate(X),not abnormal_d_animal(X),not -primate(X, noun_animal).
process(X, noun_tops) :- organic_process(X, noun_process).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
program(X, noun_act) :- program(X),not -program(X, noun_act),-program(X, noun_cognition),-program(X, noun_communication).
program(X, noun_act) :- program(X),not abnormal_d_act(X),not -program(X, noun_act).
program(X, noun_cognition) :- program(X),not abnormal_d_cognition(X),not -program(X, noun_cognition).
program(X, noun_communication) :- program(X),not -program(X, noun_communication),-program(X, noun_cognition),not program(X, noun_act).
program(X, noun_communication) :- program(X),not abnormal_d_communication(X),not -program(X, noun_communication).
property(X, noun_attribute) :- bodily_property(X, noun_attribute).
property(X, noun_attribute) :- magnitude(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
quality(X, noun_attribute) :- morality(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
radiation(X, noun_phenomenon) :- electromagnetic_radiation(X, noun_phenomenon).
radiation(X, noun_phenomenon) :- radiation(X),not abnormal_d_phenomenon(X),not -radiation(X, noun_phenomenon).
region(X, noun_location) :- area(X, noun_location).
region(X, noun_location) :- extremity(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
religious_leader(X, noun_person) :- moon(X, noun_person).
religious_leader(X, noun_person) :- religious_leader(X),not abnormal_d_person(X),not -religious_leader(X, noun_person).
religious_person(X, noun_person) :- religious_leader(X, noun_person).
religious_person(X, noun_person) :- religious_person(X),not abnormal_d_person(X),not -religious_person(X, noun_person).
representative(X, noun_person) :- head_of_state(X, noun_person).
representative(X, noun_person) :- representative(X),not abnormal_d_person(X),not -representative(X, noun_person).
role(X, noun_act) :- position(X, noun_act).
role(X, noun_act) :- role(X),not abnormal_d_act(X),not -role(X, noun_act).
running_away(X, noun_act) :- flight(X, noun_act).
running_away(X, noun_act) :- running_away(X),not abnormal_d_act(X),not -running_away(X, noun_act).
satellite(X, noun_object) :- moon(X, noun_object).
satellite(X, noun_object) :- satellite(X),not abnormal_d_object(X),not -satellite(X, noun_object).
score(X, noun_act) :- goal(X, noun_act).
score(X, noun_act) :- score(X),not abnormal_d_act(X),not -score(X, noun_act).
section(X, noun_communication) :- end(X, noun_communication).
section(X, noun_communication) :- section(X),not abnormal_d_communication(X),not -section(X, noun_communication).
servant(X, noun_person) :- manservant(X, noun_person).
servant(X, noun_person) :- servant(X),not abnormal_d_person(X),not -servant(X, noun_person).
sexual_activity(X, noun_act) :- congress(X, noun_act).
sexual_activity(X, noun_act) :- sexual_activity(X),not abnormal_d_act(X),not -sexual_activity(X, noun_act).
shape(X, noun_tops) :- amorphous_shape(X, noun_shape).
shape(X, noun_tops) :- shape(X),not abnormal_d_tops(X),not -shape(X, noun_tops).
show(X, noun_act) :- presentation(X, noun_act).
show(X, noun_act) :- show(X),not abnormal_d_act(X),not -show(X, noun_act).
show(X, noun_communication) :- program(X, noun_communication).
show(X, noun_communication) :- show(X),not -show(X, noun_communication),-show(X, noun_act).
show(X, noun_communication) :- show(X),not abnormal_d_communication(X),not -show(X, noun_communication).
sign(X, noun_communication) :- sign(X),not abnormal_d_communication(X),not -sign(X, noun_communication).
sign(X, noun_communication) :- street_sign(X, noun_communication).
signal(X, noun_communication) :- signal(X),not abnormal_d_communication(X),not -signal(X, noun_communication).
signal(X, noun_communication) :- symbol(X, noun_communication).
skilled_worker(X, noun_person) :- man(X, noun_person).
skilled_worker(X, noun_person) :- skilled_worker(X),not abnormal_d_person(X),not -skilled_worker(X, noun_person).
social_control(X, noun_act) :- management(X, noun_act).
social_control(X, noun_act) :- social_control(X),not abnormal_d_act(X),not -social_control(X, noun_act).
social_event(X, noun_event) :- show(X, noun_communication).
social_event(X, noun_event) :- social_event(X),not abnormal_d_event(X),not -social_event(X, noun_event).
social_group(X, noun_group) :- gathering(X, noun_group).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
software(X, noun_communication) :- program(X, noun_communication).
software(X, noun_communication) :- software(X),not abnormal_d_communication(X),not -software(X, noun_communication).
space(X, noun_artifact) :- space(X),not -space(X, noun_artifact),-space(X, noun_tops),-space(X, noun_shape),-space(X, noun_location),-space(X, noun_time),-space(X, noun_communication).
space(X, noun_artifact) :- space(X),not abnormal_d_artifact(X),not -space(X, noun_artifact).
space(X, noun_communication) :- space(X),not -space(X, noun_communication),-space(X, noun_tops),-space(X, noun_shape),-space(X, noun_location),-space(X, noun_time),not space(X, noun_artifact).
space(X, noun_communication) :- space(X),not abnormal_d_communication(X),not -space(X, noun_communication).
space(X, noun_location) :- space(X),not -space(X, noun_location),-space(X, noun_tops),-space(X, noun_shape),not space(X, noun_time),not space(X, noun_communication),not space(X, noun_artifact).
space(X, noun_location) :- space(X),not abnormal_d_location(X),not -space(X, noun_location).
space(X, noun_shape) :- space(X),not -space(X, noun_shape),-space(X, noun_tops),not space(X, noun_location),not space(X, noun_time),not space(X, noun_communication),not space(X, noun_artifact).
space(X, noun_shape) :- space(X),not abnormal_d_shape(X),not -space(X, noun_shape).
space(X, noun_time) :- space(X),not -space(X, noun_time),-space(X, noun_tops),-space(X, noun_shape),-space(X, noun_location),not space(X, noun_communication),not space(X, noun_artifact).
space(X, noun_time) :- space(X),not abnormal_d_time(X),not -space(X, noun_time).
space(X, noun_tops) :- space(X),not abnormal_d_tops(X),not -space(X, noun_tops).
spacecraft(X, noun_artifact) :- spacecraft(X),not abnormal_d_artifact(X),not -spacecraft(X, noun_artifact).
spaceflight(X, noun_act) :- spaceflight(X),not abnormal_d_act(X),not -spaceflight(X, noun_act).
speech_act(X, noun_communication) :- address(X, noun_communication).
speech_act(X, noun_communication) :- speech_act(X),not abnormal_d_communication(X),not -speech_act(X, noun_communication).
spiritual_being(X, noun_person) :- deity(X, noun_person).
spiritual_being(X, noun_person) :- spiritual_being(X),not abnormal_d_person(X),not -spiritual_being(X, noun_person).
stairway(X, noun_artifact) :- flight(X, noun_artifact).
stairway(X, noun_artifact) :- stairway(X),not abnormal_d_artifact(X),not -stairway(X, noun_artifact).
stance(X, noun_attribute) :- address(X, noun_attribute).
stance(X, noun_attribute) :- stance(X),not abnormal_d_attribute(X),not -stance(X, noun_attribute).
state(X, noun_tops) :- cognitive_state(X, noun_cognition).
state(X, noun_tops) :- end(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
statement(X, noun_communication) :- announcement(X, noun_communication).
statement(X, noun_communication) :- statement(X),not abnormal_d_communication(X),not -statement(X, noun_communication).
street_sign(X, noun_communication) :- address(X, noun_communication).
street_sign(X, noun_communication) :- street_sign(X),not abnormal_d_communication(X),not -street_sign(X, noun_communication).
structure(X, noun_artifact) :- landing(X, noun_artifact).
structure(X, noun_artifact) :- structure(X),not abnormal_d_artifact(X),not -structure(X, noun_artifact).
subordinate(X, noun_person) :- man(X, noun_person).
subordinate(X, noun_person) :- subordinate(X),not abnormal_d_person(X),not -subordinate(X, noun_person).
substance(X, noun_tops) :- element(X, noun_substance).
substance(X, noun_tops) :- material(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
success(X, noun_act) :- score(X, noun_act).
success(X, noun_act) :- success(X),not abnormal_d_act(X),not -success(X, noun_act).
surface(X, noun_artifact) :- horizontal_surface(X, noun_artifact).
surface(X, noun_artifact) :- surface(X),not abnormal_d_artifact(X),not -surface(X, noun_artifact).
surface(X, noun_location) :- end(X, noun_location).
surface(X, noun_location) :- surface(X),not -surface(X, noun_location),-surface(X, noun_artifact).
surface(X, noun_location) :- surface(X),not abnormal_d_location(X),not -surface(X, noun_location).
symbol(X, noun_communication) :- symbol(X),not abnormal_d_communication(X),not -symbol(X, noun_communication).
symbol(X, noun_communication) :- written_symbol(X, noun_communication).
system(X, noun_cognition) :- program(X, noun_cognition).
system(X, noun_cognition) :- system(X),not abnormal_d_cognition(X),not -system(X, noun_cognition).
tact(X, noun_attribute) :- address(X, noun_attribute).
tact(X, noun_attribute) :- tact(X),not abnormal_d_attribute(X),not -tact(X, noun_attribute).
tenure(X, noun_time) :- administration(X, noun_time).
tenure(X, noun_time) :- tenure(X),not abnormal_d_time(X),not -tenure(X, noun_time).
term(X, noun_time) :- tenure(X, noun_time).
term(X, noun_time) :- term(X),not abnormal_d_time(X),not -term(X, noun_time).
terrestrial_planet(X, noun_object) :- earth(X, noun_object).
terrestrial_planet(X, noun_object) :- terrestrial_planet(X),not abnormal_d_object(X),not -terrestrial_planet(X, noun_object).
therapy(X, noun_act) :- medication(X, noun_act).
therapy(X, noun_act) :- therapy(X),not abnormal_d_act(X),not -therapy(X, noun_act).
time_interval(X, noun_time) :- space(X, noun_time).
time_interval(X, noun_time) :- time_interval(X),not abnormal_d_time(X),not -time_interval(X, noun_time).
time_period(X, noun_time) :- term(X, noun_time).
time_period(X, noun_time) :- time_period(X),not abnormal_d_time(X),not -time_period(X, noun_time).
time_unit(X, noun_time) :- month(X, noun_time).
time_unit(X, noun_time) :- time_unit(X),not abnormal_d_time(X),not -time_unit(X, noun_time).
topographic_point(X, noun_location) :- end(X, noun_location).
topographic_point(X, noun_location) :- topographic_point(X),not abnormal_d_location(X),not -topographic_point(X, noun_location).
travel(X, noun_act) :- air_travel(X, noun_act).
travel(X, noun_act) :- journey(X, noun_act).
travel(X, noun_act) :- travel(X),not abnormal_d_act(X),not -travel(X, noun_act).
treatment(X, noun_act) :- medical_care(X, noun_act).
treatment(X, noun_act) :- treatment(X),not abnormal_d_act(X),not -treatment(X, noun_act).
trip(X, noun_act) :- flight(X, noun_act).
trip(X, noun_act) :- trip(X),not abnormal_d_act(X),not -trip(X, noun_act).
type(X, noun_artifact) :- space(X, noun_artifact).
type(X, noun_artifact) :- type(X),not abnormal_d_artifact(X),not -type(X, noun_artifact).
unit(X, noun_group) :- administrative_unit(X, noun_group).
unit(X, noun_group) :- military_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
vehicle(X, noun_artifact) :- craft(X, noun_artifact).
vehicle(X, noun_artifact) :- vehicle(X),not abnormal_d_artifact(X),not -vehicle(X, noun_artifact).
vertebrate(X, noun_animal) :- mammal(X, noun_animal).
vertebrate(X, noun_animal) :- vertebrate(X),not abnormal_d_animal(X),not -vertebrate(X, noun_animal).
voyage(X, noun_act) :- spaceflight(X, noun_act).
voyage(X, noun_act) :- voyage(X),not abnormal_d_act(X),not -voyage(X, noun_act).
way(X, noun_artifact) :- stairway(X, noun_artifact).
way(X, noun_artifact) :- way(X),not abnormal_d_artifact(X),not -way(X, noun_artifact).
west_germanic(X, noun_communication) :- english(X, noun_communication).
west_germanic(X, noun_communication) :- west_germanic(X),not abnormal_d_communication(X),not -west_germanic(X, noun_communication).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- natural_object(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
work(X, noun_act) :- care(X, noun_act).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
worker(X, noun_person) :- assistant(X, noun_person).
worker(X, noun_person) :- servant(X, noun_person).
worker(X, noun_person) :- skilled_worker(X, noun_person).
worker(X, noun_person) :- worker(X),not abnormal_d_person(X),not -worker(X, noun_person).
writing(X, noun_communication) :- coding_system(X, noun_communication).
writing(X, noun_communication) :- document(X, noun_communication).
writing(X, noun_communication) :- section(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).
written_symbol(X, noun_communication) :- character(X, noun_communication).
written_symbol(X, noun_communication) :- written_symbol(X),not abnormal_d_communication(X),not -written_symbol(X, noun_communication).