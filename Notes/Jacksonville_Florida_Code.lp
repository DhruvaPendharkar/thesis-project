%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(jacksonville, city).
_is(jacksonville, county_seat).
_is(jacksonville, largest_city).
_is(jacksonville, populous).
_is(jacksonville, populous_proper_city).
_is(jacksonville, principal_city).
_mod(area, metropolitan).
_mod(city, largest).
_mod(city, populous).
_mod(city, principal).
_mod(city, proper).
_mod(population, estimated).
_mod(population, metropolitan).
_mod(size, great).
_mod(united_states, contiguous).
_possess(city, government).
_possess(jacksonville, area).
_possess(jacksonville, population).
_possess(jacksonville_jacksonville, size).
_possess(united_state, state).
_property(area, in(united_states)).
_property(city, by(area)).
_property(city, by(population)).
_property(city, in(area)).
_property(city, with(population)).
_property(consolidated, in(1968)).
_property(consolidated, with(duval_county)).
_property(county_seat, of(duval_county)).
_property(most, of(population)).
_property(place, in(2014)).
_property(place, with(population)).
_property(place, within(limit)).
_property(population, in(state)).
_property(population, of('1,345,596')).
_property(population, of('853,382')).
_property(populous, in(united_states)).
_property(proper, in(florida)).
_property(proper, in(southeast)).
_property(state, of(florida)).
_relation(3, 4, _conj).
area(area).
city(city).
city(jacksonville).
consolidation(consolidation).
county_seat(county_seat).
county_seat(jacksonville).
event(3, give, consolidation, great_size).
event(3, give, consolidation, size).
event(4, place, consolidation, most).
event(4, place, consolidation, most_of_population).
florida(florida).
government(government).
jacksonville(jacksonville).
limit(limit).
organization(jacksonville_jacksonville).
population(population).
size(size).
southeast(southeast).
state(state).
time(1968).
time(2010).
time(2014).
united_states(united_states).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
ability(X, noun_cognition) :- ability(X),not abnormal_d_cognition(X),not -ability(X, noun_cognition).
ability(X, noun_cognition) :- know_how(X, noun_cognition).
abstract_entity(X, noun_tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_tops).
abstract_entity(X, noun_tops) :- abstraction(X, noun_tops).
abstraction(X, noun_tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_tops).
abstraction(X, noun_tops) :- attribute(X, noun_tops).
abstraction(X, noun_tops) :- group(X, noun_tops).
abstraction(X, noun_tops) :- measure(X, noun_tops).
abstraction(X, noun_tops) :- psychological_feature(X, noun_tops).
abstraction(X, noun_tops) :- relation(X, noun_tops).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
act(X, noun_tops) :- group_action(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
administrative_district(X, noun_location) :- administrative_district(X),not abnormal_d_location(X),not -administrative_district(X, noun_location).
administrative_district(X, noun_location) :- city(X, noun_location).
administrative_district(X, noun_location) :- country(X, noun_location).
administrative_district(X, noun_location) :- state(X, noun_location).
administrative_unit(X, noun_group) :- administrative_unit(X),not abnormal_d_group(X),not -administrative_unit(X, noun_group).
administrative_unit(X, noun_group) :- division(X, noun_group).
american_state(X, noun_location) :- american_state(X),not abnormal_d_location(X),not -american_state(X, noun_location).
american_state(X, noun_location) :- florida(X, noun_location).
area(X, noun_artifact) :- area(X),not -area(X, noun_artifact),-area(X, noun_location),-area(X, noun_state),-area(X, noun_cognition),not area(X, noun_body),not area(X, noun_attribute).
area(X, noun_artifact) :- area(X),not abnormal_d_artifact(X),not -area(X, noun_artifact).
area(X, noun_attribute) :- area(X),not -area(X, noun_attribute),-area(X, noun_location),-area(X, noun_state),-area(X, noun_cognition),-area(X, noun_artifact),-area(X, noun_body).
area(X, noun_attribute) :- area(X),not abnormal_d_attribute(X),not -area(X, noun_attribute).
area(X, noun_body) :- area(X),not -area(X, noun_body),-area(X, noun_location),-area(X, noun_state),-area(X, noun_cognition),-area(X, noun_artifact),not area(X, noun_attribute).
area(X, noun_body) :- area(X),not abnormal_d_body(X),not -area(X, noun_body).
area(X, noun_cognition) :- area(X),not -area(X, noun_cognition),-area(X, noun_location),-area(X, noun_state),not area(X, noun_artifact),not area(X, noun_body),not area(X, noun_attribute).
area(X, noun_cognition) :- area(X),not abnormal_d_cognition(X),not -area(X, noun_cognition).
area(X, noun_location) :- area(X),not abnormal_d_location(X),not -area(X, noun_location).
area(X, noun_location) :- center(X, noun_location).
area(X, noun_state) :- area(X),not -area(X, noun_state),-area(X, noun_location),not area(X, noun_cognition),not area(X, noun_artifact),not area(X, noun_body),not area(X, noun_attribute).
area(X, noun_state) :- area(X),not abnormal_d_state(X),not -area(X, noun_state).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- structure(X, noun_artifact).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
beginning(X, noun_act) :- beginning(X),not abnormal_d_act(X),not -beginning(X, noun_act).
beginning(X, noun_act) :- constitution(X, noun_act).
body_part(X, noun_body) :- area(X, noun_body).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
boundary(X, noun_location) :- boundary(X),not abnormal_d_location(X),not -boundary(X, noun_location).
boundary(X, noun_location) :- limit(X, noun_location).
center(X, noun_location) :- center(X),not abnormal_d_location(X),not -center(X, noun_location).
center(X, noun_location) :- seat(X, noun_location).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- change_of_integrity(X, noun_act).
change(X, noun_act) :- change_of_state(X, noun_act).
change_of_integrity(X, noun_act) :- change_of_integrity(X),not abnormal_d_act(X),not -change_of_integrity(X, noun_act).
change_of_integrity(X, noun_act) :- combination(X, noun_act).
change_of_state(X, noun_act) :- beginning(X, noun_act).
change_of_state(X, noun_act) :- change_of_state(X),not abnormal_d_act(X),not -change_of_state(X, noun_act).
chemical_phenomenon(X, noun_phenomenon) :- chemical_phenomenon(X),not abnormal_d_phenomenon(X),not -chemical_phenomenon(X, noun_phenomenon).
chemical_phenomenon(X, noun_phenomenon) :- state(X, noun_state).
city(X, noun_group) :- city(X),not -city(X, noun_group),-city(X, noun_location).
city(X, noun_group) :- city(X),not abnormal_d_group(X),not -city(X, noun_group).
city(X, noun_location) :- city(X),not abnormal_d_location(X),not -city(X, noun_location).
city(X, noun_location) :- jacksonville(X, noun_location).
cognition(X, noun_tops) :- ability(X, noun_cognition).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- population(X, noun_cognition).
colonization(X, noun_act) :- colonization(X),not abnormal_d_act(X),not -colonization(X, noun_act).
colonization(X, noun_act) :- population(X, noun_act).
combination(X, noun_act) :- combination(X),not abnormal_d_act(X),not -combination(X, noun_act).
combination(X, noun_act) :- consolidation(X, noun_act).
combining(X, noun_event) :- combining(X),not abnormal_d_event(X),not -combining(X, noun_event).
combining(X, noun_event) :- consolidation(X, noun_event).
compass_point(X, noun_relation) :- compass_point(X),not abnormal_d_relation(X),not -compass_point(X, noun_relation).
compass_point(X, noun_relation) :- southeast(X, noun_relation).
consolidation(X, noun_act) :- consolidation(X),not -consolidation(X, noun_act),-consolidation(X, noun_event),not consolidation(X, noun_object).
consolidation(X, noun_act) :- consolidation(X),not abnormal_d_act(X),not -consolidation(X, noun_act).
consolidation(X, noun_event) :- consolidation(X),not abnormal_d_event(X),not -consolidation(X, noun_event).
consolidation(X, noun_object) :- consolidation(X),not -consolidation(X, noun_object),-consolidation(X, noun_event),-consolidation(X, noun_act).
consolidation(X, noun_object) :- consolidation(X),not abnormal_d_object(X),not -consolidation(X, noun_object).
constitution(X, noun_act) :- colonization(X, noun_act).
constitution(X, noun_act) :- constitution(X),not abnormal_d_act(X),not -constitution(X, noun_act).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- knowledge_domain(X, noun_cognition).
content(X, noun_cognition) :- topic(X, noun_cognition).
country(X, noun_location) :- country(X),not abnormal_d_location(X),not -country(X, noun_location).
country(X, noun_location) :- north_american_country(X, noun_location).
county_seat(X, noun_location) :- county_seat(X),not abnormal_d_location(X),not -county_seat(X, noun_location).
definite_quantity(X, noun_quantity) :- definite_quantity(X),not abnormal_d_quantity(X),not -definite_quantity(X, noun_quantity).
definite_quantity(X, noun_quantity) :- number(X, noun_quantity).
department(X, noun_group) :- department(X),not abnormal_d_group(X),not -department(X, noun_group).
department(X, noun_group) :- government_department(X, noun_group).
direction(X, noun_relation) :- compass_point(X, noun_relation).
direction(X, noun_relation) :- direction(X),not abnormal_d_relation(X),not -direction(X, noun_relation).
discipline(X, noun_cognition) :- discipline(X),not abnormal_d_cognition(X),not -discipline(X, noun_cognition).
discipline(X, noun_cognition) :- science(X, noun_cognition).
district(X, noun_location) :- administrative_district(X, noun_location).
district(X, noun_location) :- district(X),not abnormal_d_location(X),not -district(X, noun_location).
division(X, noun_group) :- department(X, noun_group).
division(X, noun_group) :- division(X),not abnormal_d_group(X),not -division(X, noun_group).
emotion(X, noun_feeling) :- emotion(X),not abnormal_d_feeling(X),not -emotion(X, noun_feeling).
emotion(X, noun_feeling) :- emotional_state(X, noun_state).
emotional_state(X, noun_state) :- emotional_state(X),not abnormal_d_state(X),not -emotional_state(X, noun_state).
emotional_state(X, noun_state) :- state(X, noun_state).
end(X, noun_time) :- end(X),not abnormal_d_time(X),not -end(X, noun_time).
end(X, noun_time) :- limit(X, noun_time).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
environment(X, noun_state) :- area(X, noun_state).
environment(X, noun_state) :- environment(X),not abnormal_d_state(X),not -environment(X, noun_state).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- happening(X, noun_event).
executive_department(X, noun_group) :- executive_department(X),not abnormal_d_group(X),not -executive_department(X, noun_group).
executive_department(X, noun_group) :- state(X, noun_group).
extent(X, noun_attribute) :- area(X, noun_attribute).
extent(X, noun_attribute) :- extent(X),not abnormal_d_attribute(X),not -extent(X, noun_attribute).
extent(X, noun_attribute) :- limit(X, noun_attribute).
extremity(X, noun_location) :- boundary(X, noun_location).
extremity(X, noun_location) :- extremity(X),not abnormal_d_location(X),not -extremity(X, noun_location).
extremity(X, noun_location) :- limit(X, noun_location).
federal_department(X, noun_group) :- executive_department(X, noun_group).
federal_department(X, noun_group) :- federal_department(X),not abnormal_d_group(X),not -federal_department(X, noun_group).
federal_government(X, noun_group) :- federal_government(X),not abnormal_d_group(X),not -federal_government(X, noun_group).
federal_government(X, noun_group) :- united_states(X, noun_group).
feeling(X, noun_tops) :- emotion(X, noun_feeling).
feeling(X, noun_tops) :- feeling(X),not abnormal_d_tops(X),not -feeling(X, noun_tops).
filler(X, noun_substance) :- filler(X),not abnormal_d_substance(X),not -filler(X, noun_substance).
filler(X, noun_substance) :- size(X, noun_substance).
florida(X, noun_location) :- florida(X),not abnormal_d_location(X),not -florida(X, noun_location).
gathering(X, noun_group) :- gathering(X),not abnormal_d_group(X),not -gathering(X, noun_group).
gathering(X, noun_group) :- municipality(X, noun_group).
geographical_area(X, noun_location) :- geographical_area(X),not abnormal_d_location(X),not -geographical_area(X, noun_location).
geographical_area(X, noun_location) :- southeast(X, noun_location).
geographical_area(X, noun_location) :- urban_area(X, noun_location).
government(X, noun_act) :- government(X),not -government(X, noun_act),-government(X, noun_group),not government(X, noun_cognition).
government(X, noun_act) :- government(X),not abnormal_d_act(X),not -government(X, noun_act).
government(X, noun_cognition) :- government(X),not -government(X, noun_cognition),-government(X, noun_group),-government(X, noun_act).
government(X, noun_cognition) :- government(X),not abnormal_d_cognition(X),not -government(X, noun_cognition).
government(X, noun_group) :- federal_government(X, noun_group).
government(X, noun_group) :- government(X),not abnormal_d_group(X),not -government(X, noun_group).
government(X, noun_group) :- state(X, noun_group).
government_department(X, noun_group) :- federal_department(X, noun_group).
government_department(X, noun_group) :- government_department(X),not abnormal_d_group(X),not -government_department(X, noun_group).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- people(X, noun_group).
group(X, noun_tops) :- population(X, noun_group).
group(X, noun_tops) :- social_group(X, noun_group).
group_action(X, noun_act) :- group_action(X),not abnormal_d_act(X),not -group_action(X, noun_act).
group_action(X, noun_act) :- social_control(X, noun_act).
happening(X, noun_event) :- happening(X),not abnormal_d_event(X),not -happening(X, noun_event).
happening(X, noun_event) :- union(X, noun_event).
indefinite_quantity(X, noun_quantity) :- indefinite_quantity(X),not abnormal_d_quantity(X),not -indefinite_quantity(X, noun_quantity).
indefinite_quantity(X, noun_quantity) :- limit(X, noun_quantity).
integer(X, noun_quantity) :- integer(X),not abnormal_d_quantity(X),not -integer(X, noun_quantity).
integer(X, noun_quantity) :- population(X, noun_quantity).
jacksonville(X, noun_location) :- jacksonville(X),not abnormal_d_location(X),not -jacksonville(X, noun_location).
know_how(X, noun_cognition) :- know_how(X),not abnormal_d_cognition(X),not -know_how(X, noun_cognition).
know_how(X, noun_cognition) :- method(X, noun_cognition).
knowledge_domain(X, noun_cognition) :- discipline(X, noun_cognition).
knowledge_domain(X, noun_cognition) :- knowledge_domain(X),not abnormal_d_cognition(X),not -knowledge_domain(X, noun_cognition).
limit(X, noun_attribute) :- limit(X),not abnormal_d_attribute(X),not -limit(X, noun_attribute).
limit(X, noun_location) :- limit(X),not -limit(X, noun_location),-limit(X, noun_attribute),-limit(X, noun_time),not limit(X, noun_quantity).
limit(X, noun_location) :- limit(X),not abnormal_d_location(X),not -limit(X, noun_location).
limit(X, noun_quantity) :- limit(X),not -limit(X, noun_quantity),-limit(X, noun_attribute),-limit(X, noun_time),-limit(X, noun_location).
limit(X, noun_quantity) :- limit(X),not abnormal_d_quantity(X),not -limit(X, noun_quantity).
limit(X, noun_time) :- limit(X),not -limit(X, noun_time),-limit(X, noun_attribute),not limit(X, noun_location),not limit(X, noun_quantity).
limit(X, noun_time) :- limit(X),not abnormal_d_time(X),not -limit(X, noun_time).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- region(X, noun_location).
magnitude(X, noun_attribute) :- extent(X, noun_attribute).
magnitude(X, noun_attribute) :- magnitude(X),not abnormal_d_attribute(X),not -magnitude(X, noun_attribute).
magnitude(X, noun_attribute) :- size(X, noun_attribute).
material(X, noun_substance) :- material(X),not abnormal_d_substance(X),not -material(X, noun_substance).
material(X, noun_substance) :- sealing_material(X, noun_substance).
measure(X, noun_tops) :- definite_quantity(X, noun_quantity).
measure(X, noun_tops) :- indefinite_quantity(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
measure(X, noun_tops) :- point(X, noun_time).
method(X, noun_cognition) :- method(X),not abnormal_d_cognition(X),not -method(X, noun_cognition).
method(X, noun_cognition) :- system(X, noun_cognition).
municipality(X, noun_group) :- city(X, noun_group).
municipality(X, noun_group) :- municipality(X),not -municipality(X, noun_group),-municipality(X, noun_location).
municipality(X, noun_group) :- municipality(X),not abnormal_d_group(X),not -municipality(X, noun_group).
municipality(X, noun_location) :- city(X, noun_location).
municipality(X, noun_location) :- municipality(X),not abnormal_d_location(X),not -municipality(X, noun_location).
natural_object(X, noun_tops) :- consolidation(X, noun_object).
natural_object(X, noun_tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_tops).
natural_phenomenon(X, noun_phenomenon) :- chemical_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
north_american_country(X, noun_location) :- north_american_country(X),not abnormal_d_location(X),not -north_american_country(X, noun_location).
north_american_country(X, noun_location) :- united_states(X, noun_location).
number(X, noun_quantity) :- integer(X, noun_quantity).
number(X, noun_quantity) :- number(X),not abnormal_d_quantity(X),not -number(X, noun_quantity).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- polity(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
people(X, noun_group) :- people(X),not abnormal_d_group(X),not -people(X, noun_group).
people(X, noun_group) :- population(X, noun_group).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
point(X, noun_time) :- end(X, noun_time).
point(X, noun_time) :- point(X),not abnormal_d_time(X),not -point(X, noun_time).
political_unit(X, noun_group) :- political_unit(X),not abnormal_d_group(X),not -political_unit(X, noun_group).
political_unit(X, noun_group) :- state(X, noun_group).
polity(X, noun_group) :- government(X, noun_group).
polity(X, noun_group) :- polity(X),not abnormal_d_group(X),not -polity(X, noun_group).
population(X, noun_act) :- population(X),not -population(X, noun_act),-population(X, noun_group),-population(X, noun_cognition),-population(X, noun_quantity).
population(X, noun_act) :- population(X),not abnormal_d_act(X),not -population(X, noun_act).
population(X, noun_cognition) :- population(X),not -population(X, noun_cognition),-population(X, noun_group),not population(X, noun_quantity),not population(X, noun_act).
population(X, noun_cognition) :- population(X),not abnormal_d_cognition(X),not -population(X, noun_cognition).
population(X, noun_group) :- population(X),not abnormal_d_group(X),not -population(X, noun_group).
population(X, noun_quantity) :- population(X),not -population(X, noun_quantity),-population(X, noun_group),-population(X, noun_cognition),not population(X, noun_act).
population(X, noun_quantity) :- population(X),not abnormal_d_quantity(X),not -population(X, noun_quantity).
position(X, noun_attribute) :- direction(X, noun_relation).
position(X, noun_attribute) :- position(X),not abnormal_d_attribute(X),not -position(X, noun_attribute).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
property(X, noun_attribute) :- magnitude(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
property(X, noun_attribute) :- size(X, noun_attribute).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
region(X, noun_location) :- area(X, noun_location).
region(X, noun_location) :- district(X, noun_location).
region(X, noun_location) :- extremity(X, noun_location).
region(X, noun_location) :- geographical_area(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
relation(X, noun_tops) :- position(X, noun_attribute).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
science(X, noun_cognition) :- science(X),not abnormal_d_cognition(X),not -science(X, noun_cognition).
science(X, noun_cognition) :- social_science(X, noun_cognition).
sealing_material(X, noun_substance) :- filler(X, noun_substance).
sealing_material(X, noun_substance) :- sealing_material(X),not abnormal_d_substance(X),not -sealing_material(X, noun_substance).
seat(X, noun_location) :- county_seat(X, noun_location).
seat(X, noun_location) :- seat(X),not abnormal_d_location(X),not -seat(X, noun_location).
situation(X, noun_state) :- environment(X, noun_state).
situation(X, noun_state) :- situation(X),not abnormal_d_state(X),not -situation(X, noun_state).
situation(X, noun_state) :- size(X, noun_state).
size(X, noun_attribute) :- size(X),not abnormal_d_attribute(X),not -size(X, noun_attribute).
size(X, noun_state) :- size(X),not -size(X, noun_state),-size(X, noun_attribute),-size(X, noun_substance).
size(X, noun_state) :- size(X),not abnormal_d_state(X),not -size(X, noun_state).
size(X, noun_substance) :- size(X),not -size(X, noun_substance),-size(X, noun_attribute),not size(X, noun_state).
size(X, noun_substance) :- size(X),not abnormal_d_substance(X),not -size(X, noun_substance).
social_control(X, noun_act) :- government(X, noun_act).
social_control(X, noun_act) :- social_control(X),not abnormal_d_act(X),not -social_control(X, noun_act).
social_group(X, noun_group) :- gathering(X, noun_group).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
social_science(X, noun_cognition) :- government(X, noun_cognition).
social_science(X, noun_cognition) :- social_science(X),not abnormal_d_cognition(X),not -social_science(X, noun_cognition).
southeast(X, noun_location) :- southeast(X),not -southeast(X, noun_location),-southeast(X, noun_relation).
southeast(X, noun_location) :- southeast(X),not abnormal_d_location(X),not -southeast(X, noun_location).
southeast(X, noun_relation) :- southeast(X),not abnormal_d_relation(X),not -southeast(X, noun_relation).
state(X, noun_group) :- state(X),not -state(X, noun_group),-state(X, noun_tops),not state(X, noun_location),not state(X, noun_state).
state(X, noun_group) :- state(X),not abnormal_d_group(X),not -state(X, noun_group).
state(X, noun_location) :- american_state(X, noun_location).
state(X, noun_location) :- state(X),not -state(X, noun_location),-state(X, noun_tops),-state(X, noun_group),not state(X, noun_state).
state(X, noun_location) :- state(X),not abnormal_d_location(X),not -state(X, noun_location).
state(X, noun_state) :- state(X),not -state(X, noun_state),-state(X, noun_tops),-state(X, noun_group),-state(X, noun_location).
state(X, noun_state) :- state(X),not abnormal_d_state(X),not -state(X, noun_state).
state(X, noun_tops) :- feeling(X, noun_tops).
state(X, noun_tops) :- situation(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
structure(X, noun_artifact) :- area(X, noun_artifact).
structure(X, noun_artifact) :- structure(X),not abnormal_d_artifact(X),not -structure(X, noun_artifact).
substance(X, noun_tops) :- material(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
system(X, noun_cognition) :- government(X, noun_cognition).
system(X, noun_cognition) :- system(X),not abnormal_d_cognition(X),not -system(X, noun_cognition).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
topic(X, noun_cognition) :- area(X, noun_cognition).
topic(X, noun_cognition) :- topic(X),not abnormal_d_cognition(X),not -topic(X, noun_cognition).
union(X, noun_event) :- combining(X, noun_event).
union(X, noun_event) :- union(X),not abnormal_d_event(X),not -union(X, noun_event).
unit(X, noun_group) :- administrative_unit(X, noun_group).
unit(X, noun_group) :- political_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
united_states(X, noun_group) :- united_states(X),not -united_states(X, noun_group),-united_states(X, noun_location).
united_states(X, noun_group) :- united_states(X),not abnormal_d_group(X),not -united_states(X, noun_group).
united_states(X, noun_location) :- united_states(X),not abnormal_d_location(X),not -united_states(X, noun_location).
urban_area(X, noun_location) :- municipality(X, noun_location).
urban_area(X, noun_location) :- urban_area(X),not abnormal_d_location(X),not -urban_area(X, noun_location).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- natural_object(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
