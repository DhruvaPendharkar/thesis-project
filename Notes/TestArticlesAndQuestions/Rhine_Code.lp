%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(biggest_city, cologne).
_is(city, cologne).
_is(rhine, river).
_is(rhine, second_longest_river).
_is(river, rhine).
_mod('m3/s', '2,900').
_mod(border, franco_german).
_mod(border, swiss_austrian).
_mod(border, swiss_liechtenstein).
_mod(city, biggest).
_mod(discharge, average).
_mod(empty, eventually).
_mod(flow, then).
_mod(people, '1,050,000').
_mod(river, second_longest).
_property(begin, in(swiss_canton)).
_property(city, on(river)).
_property(cologne, in(germany)).
_property(cologne, with(population)).
_property(danube, at('1,230')).
_property(discharge, of('2,900_m3/s')).
_property(empty, into(north_sea)).
_property(flow, through(rhineland)).
_property(graubünden, in(southeastern_swiss_alps)).
_property(north_sea, in(netherland)).
_property(part, of(border)).
_property(part, of(swiss_german)).
_property(population, of('1,050,000_people')).
_property(river, in(central)).
_property(river, in(western_europe)).
_property(river, with(discharge)).
_property(swiss_canton, of(graubünden)).
border(border).
city(city).
cologne(biggest_city).
cologne(city).
cologne(cologne).
danube(danube).
discharge(discharge).
event(2, begin, rhine, null).
event(2, begin, river, null).
event(3, flow, rhine, null).
event(4, empty, rhine, null).
form(form).
germany(germany).
kilometre(kilometre).
north_sea(north_sea).
part(part).
people(people).
population(population).
rhine(rhine).
rhineland(rhineland).
river(rhine).
river(river).
swiss_canton(swiss_canton).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
ability(X, noun_attribute) :- ability(X),not abnormal_d_attribute(X),not -ability(X, noun_attribute).
ability(X, noun_attribute) :- form(X, noun_attribute).
abstract_entity(X, noun_tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_tops).
abstract_entity(X, noun_tops) :- abstraction(X, noun_tops).
abstraction(X, noun_tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_tops).
abstraction(X, noun_tops) :- attribute(X, noun_tops).
abstraction(X, noun_tops) :- communication(X, noun_tops).
abstraction(X, noun_tops) :- group(X, noun_tops).
abstraction(X, noun_tops) :- measure(X, noun_tops).
abstraction(X, noun_tops) :- psychological_feature(X, noun_tops).
abstraction(X, noun_tops) :- relation(X, noun_tops).
accomplishment(X, noun_act) :- accomplishment(X),not abnormal_d_act(X),not -accomplishment(X, noun_act).
accomplishment(X, noun_act) :- deed(X, noun_act).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
act(X, noun_tops) :- activity(X, noun_act).
acting(X, noun_act) :- acting(X),not abnormal_d_act(X),not -acting(X, noun_act).
acting(X, noun_act) :- portrayal(X, noun_act).
action(X, noun_act) :- accomplishment(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
activity(X, noun_act) :- acting(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- attempt(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
administrative_district(X, noun_location) :- administrative_district(X),not abnormal_d_location(X),not -administrative_district(X, noun_location).
administrative_district(X, noun_location) :- canton(X, noun_location).
administrative_district(X, noun_location) :- city(X, noun_location).
administrative_district(X, noun_location) :- country(X, noun_location).
appearance(X, noun_attribute) :- appearance(X),not abnormal_d_attribute(X),not -appearance(X, noun_attribute).
appearance(X, noun_attribute) :- form(X, noun_attribute).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- creation(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
artifact(X, noun_tops) :- strip(X, noun_artifact).
assets(X, noun_possession) :- assets(X),not abnormal_d_possession(X),not -assets(X, noun_possession).
assets(X, noun_possession) :- part(X, noun_possession).
attempt(X, noun_act) :- attempt(X),not abnormal_d_act(X),not -attempt(X, noun_act).
attempt(X, noun_act) :- part(X, noun_act).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- form(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- shape(X, noun_tops).
attribute(X, noun_tops) :- state(X, noun_tops).
auditory_communication(X, noun_communication) :- auditory_communication(X),not abnormal_d_communication(X),not -auditory_communication(X, noun_communication).
auditory_communication(X, noun_communication) :- music(X, noun_communication).
beginning(X, noun_act) :- beginning(X),not abnormal_d_act(X),not -beginning(X, noun_act).
beginning(X, noun_act) :- constitution(X, noun_act).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
biological_group(X, noun_group) :- taxonomic_group(X, noun_group).
bodily_process(X, noun_process) :- bodily_process(X),not abnormal_d_process(X),not -bodily_process(X, noun_process).
bodily_process(X, noun_process) :- discharge(X, noun_process).
body(X, noun_body) :- body(X),not abnormal_d_body(X),not -body(X, noun_body).
body(X, noun_body) :- form(X, noun_body).
body_of_water(X, noun_object) :- body_of_water(X),not abnormal_d_object(X),not -body_of_water(X, noun_object).
body_of_water(X, noun_object) :- sea(X, noun_object).
body_of_water(X, noun_object) :- stream(X, noun_object).
border(X, noun_artifact) :- border(X),not -border(X, noun_artifact),-border(X, noun_location),-border(X, noun_shape).
border(X, noun_artifact) :- border(X),not abnormal_d_artifact(X),not -border(X, noun_artifact).
border(X, noun_location) :- border(X),not abnormal_d_location(X),not -border(X, noun_location).
border(X, noun_shape) :- border(X),not -border(X, noun_shape),-border(X, noun_location),not border(X, noun_artifact).
border(X, noun_shape) :- border(X),not abnormal_d_shape(X),not -border(X, noun_shape).
boundary(X, noun_location) :- border(X, noun_location).
boundary(X, noun_location) :- boundary(X),not abnormal_d_location(X),not -boundary(X, noun_location).
boundary(X, noun_shape) :- border(X, noun_shape).
boundary(X, noun_shape) :- boundary(X),not -boundary(X, noun_shape),-boundary(X, noun_location).
boundary(X, noun_shape) :- boundary(X),not abnormal_d_shape(X),not -boundary(X, noun_shape).
canton(X, noun_location) :- canton(X),not abnormal_d_location(X),not -canton(X, noun_location).
canton(X, noun_location) :- swiss_canton(X, noun_location).
category(X, noun_cognition) :- category(X),not abnormal_d_cognition(X),not -category(X, noun_cognition).
category(X, noun_cognition) :- form(X, noun_cognition).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- change_of_state(X, noun_act).
change_of_location(X, noun_event) :- change_of_location(X),not abnormal_d_event(X),not -change_of_location(X, noun_event).
change_of_location(X, noun_event) :- flow(X, noun_event).
change_of_state(X, noun_act) :- beginning(X, noun_act).
change_of_state(X, noun_act) :- change_of_state(X),not abnormal_d_act(X),not -change_of_state(X, noun_act).
change_of_state(X, noun_act) :- termination(X, noun_act).
chemical_phenomenon(X, noun_phenomenon) :- chemical_phenomenon(X),not abnormal_d_phenomenon(X),not -chemical_phenomenon(X, noun_phenomenon).
chemical_phenomenon(X, noun_phenomenon) :- state_of_matter(X, noun_state).
city(X, noun_group) :- city(X),not -city(X, noun_group),-city(X, noun_location).
city(X, noun_group) :- city(X),not abnormal_d_group(X),not -city(X, noun_group).
city(X, noun_location) :- city(X),not abnormal_d_location(X),not -city(X, noun_location).
city(X, noun_location) :- cologne(X, noun_location).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- structure(X, noun_cognition).
cognitive_state(X, noun_cognition) :- cognitive_state(X),not abnormal_d_cognition(X),not -cognitive_state(X, noun_cognition).
cognitive_state(X, noun_cognition) :- curiosity(X, noun_cognition).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- population(X, noun_cognition).
cologne(X, noun_artifact) :- cologne(X),not -cologne(X, noun_artifact),-cologne(X, noun_location).
cologne(X, noun_artifact) :- cologne(X),not abnormal_d_artifact(X),not -cologne(X, noun_artifact).
cologne(X, noun_location) :- cologne(X),not abnormal_d_location(X),not -cologne(X, noun_location).
colonization(X, noun_act) :- colonization(X),not abnormal_d_act(X),not -colonization(X, noun_act).
colonization(X, noun_act) :- population(X, noun_act).
communication(X, noun_tops) :- auditory_communication(X, noun_communication).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- expressive_style(X, noun_communication).
communication(X, noun_tops) :- written_communication(X, noun_communication).
concept(X, noun_cognition) :- category(X, noun_cognition).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- part(X, noun_cognition).
concern(X, noun_cognition) :- concern(X),not abnormal_d_cognition(X),not -concern(X, noun_cognition).
concern(X, noun_cognition) :- part(X, noun_cognition).
conduction(X, noun_phenomenon) :- conduction(X),not abnormal_d_phenomenon(X),not -conduction(X, noun_phenomenon).
conduction(X, noun_phenomenon) :- electrical_conduction(X, noun_phenomenon).
constitution(X, noun_act) :- colonization(X, noun_act).
constitution(X, noun_act) :- constitution(X),not abnormal_d_act(X),not -constitution(X, noun_act).
container(X, noun_artifact) :- container(X),not abnormal_d_artifact(X),not -container(X, noun_artifact).
container(X, noun_artifact) :- mold(X, noun_artifact).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
country(X, noun_location) :- country(X),not abnormal_d_location(X),not -country(X, noun_location).
country(X, noun_location) :- european_country(X, noun_location).
creation(X, noun_artifact) :- creation(X),not abnormal_d_artifact(X),not -creation(X, noun_artifact).
creation(X, noun_artifact) :- representation(X, noun_artifact).
curiosity(X, noun_cognition) :- curiosity(X),not abnormal_d_cognition(X),not -curiosity(X, noun_cognition).
curiosity(X, noun_cognition) :- interest(X, noun_cognition).
danube(X, noun_object) :- danube(X),not abnormal_d_object(X),not -danube(X, noun_object).
deed(X, noun_act) :- deed(X),not abnormal_d_act(X),not -deed(X, noun_act).
deed(X, noun_act) :- egress(X, noun_act).
deed(X, noun_act) :- propulsion(X, noun_act).
definite_quantity(X, noun_quantity) :- definite_quantity(X),not abnormal_d_quantity(X),not -definite_quantity(X, noun_quantity).
definite_quantity(X, noun_quantity) :- number(X, noun_quantity).
discharge(X, noun_act) :- discharge(X),not -discharge(X, noun_act),-discharge(X, noun_event),-discharge(X, noun_substance),-discharge(X, noun_process),-discharge(X, noun_phenomenon).
discharge(X, noun_act) :- discharge(X),not abnormal_d_act(X),not -discharge(X, noun_act).
discharge(X, noun_event) :- discharge(X),not abnormal_d_event(X),not -discharge(X, noun_event).
discharge(X, noun_phenomenon) :- discharge(X),not -discharge(X, noun_phenomenon),-discharge(X, noun_event),-discharge(X, noun_substance),-discharge(X, noun_process),not discharge(X, noun_act).
discharge(X, noun_phenomenon) :- discharge(X),not abnormal_d_phenomenon(X),not -discharge(X, noun_phenomenon).
discharge(X, noun_process) :- discharge(X),not -discharge(X, noun_process),-discharge(X, noun_event),-discharge(X, noun_substance),not discharge(X, noun_phenomenon),not discharge(X, noun_act).
discharge(X, noun_process) :- discharge(X),not abnormal_d_process(X),not -discharge(X, noun_process).
discharge(X, noun_substance) :- discharge(X),not -discharge(X, noun_substance),-discharge(X, noun_event),not discharge(X, noun_process),not discharge(X, noun_phenomenon),not discharge(X, noun_act).
discharge(X, noun_substance) :- discharge(X),not abnormal_d_substance(X),not -discharge(X, noun_substance).
district(X, noun_location) :- administrative_district(X, noun_location).
district(X, noun_location) :- district(X),not abnormal_d_location(X),not -district(X, noun_location).
document(X, noun_communication) :- document(X),not abnormal_d_communication(X),not -document(X, noun_communication).
document(X, noun_communication) :- form(X, noun_communication).
dummy(X, noun_artifact) :- dummy(X),not abnormal_d_artifact(X),not -dummy(X, noun_artifact).
dummy(X, noun_artifact) :- form(X, noun_artifact).
duty(X, noun_act) :- duty(X),not abnormal_d_act(X),not -duty(X, noun_act).
duty(X, noun_act) :- part(X, noun_act).
edge(X, noun_artifact) :- border(X, noun_artifact).
edge(X, noun_artifact) :- edge(X),not abnormal_d_artifact(X),not -edge(X, noun_artifact).
egress(X, noun_act) :- egress(X),not abnormal_d_act(X),not -egress(X, noun_act).
egress(X, noun_act) :- emission(X, noun_act).
electrical_conduction(X, noun_phenomenon) :- discharge(X, noun_phenomenon).
electrical_conduction(X, noun_phenomenon) :- electrical_conduction(X),not abnormal_d_phenomenon(X),not -electrical_conduction(X, noun_phenomenon).
emission(X, noun_act) :- discharge(X, noun_act).
emission(X, noun_act) :- emission(X),not abnormal_d_act(X),not -emission(X, noun_act).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
european_country(X, noun_location) :- european_country(X),not abnormal_d_location(X),not -european_country(X, noun_location).
european_country(X, noun_location) :- germany(X, noun_location).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- happening(X, noun_event).
expressive_style(X, noun_communication) :- expressive_style(X),not abnormal_d_communication(X),not -expressive_style(X, noun_communication).
expressive_style(X, noun_communication) :- writing_style(X, noun_communication).
extremity(X, noun_location) :- boundary(X, noun_location).
extremity(X, noun_location) :- extremity(X),not abnormal_d_location(X),not -extremity(X, noun_location).
family(X, noun_group) :- family(X),not abnormal_d_group(X),not -family(X, noun_group).
family(X, noun_group) :- people(X, noun_group).
figure(X, noun_artifact) :- dummy(X, noun_artifact).
figure(X, noun_artifact) :- figure(X),not abnormal_d_artifact(X),not -figure(X, noun_artifact).
flow(X, noun_event) :- discharge(X, noun_event).
flow(X, noun_event) :- flow(X),not abnormal_d_event(X),not -flow(X, noun_event).
form(X, noun_artifact) :- form(X),not -form(X, noun_artifact),-form(X, noun_cognition),-form(X, noun_attribute),-form(X, noun_body),-form(X, noun_tops),-form(X, noun_state),-form(X, noun_group),-form(X, noun_communication).
form(X, noun_artifact) :- form(X),not abnormal_d_artifact(X),not -form(X, noun_artifact).
form(X, noun_attribute) :- form(X),not -form(X, noun_attribute),-form(X, noun_cognition),not form(X, noun_body),not form(X, noun_tops),not form(X, noun_state),not form(X, noun_group),not form(X, noun_communication),not form(X, noun_artifact).
form(X, noun_attribute) :- form(X),not abnormal_d_attribute(X),not -form(X, noun_attribute).
form(X, noun_body) :- form(X),not -form(X, noun_body),-form(X, noun_cognition),-form(X, noun_attribute),not form(X, noun_tops),not form(X, noun_state),not form(X, noun_group),not form(X, noun_communication),not form(X, noun_artifact).
form(X, noun_body) :- form(X),not abnormal_d_body(X),not -form(X, noun_body).
form(X, noun_cognition) :- form(X),not abnormal_d_cognition(X),not -form(X, noun_cognition).
form(X, noun_communication) :- form(X),not -form(X, noun_communication),-form(X, noun_cognition),-form(X, noun_attribute),-form(X, noun_body),-form(X, noun_tops),-form(X, noun_state),-form(X, noun_group),not form(X, noun_artifact).
form(X, noun_communication) :- form(X),not abnormal_d_communication(X),not -form(X, noun_communication).
form(X, noun_group) :- form(X),not -form(X, noun_group),-form(X, noun_cognition),-form(X, noun_attribute),-form(X, noun_body),-form(X, noun_tops),-form(X, noun_state),not form(X, noun_communication),not form(X, noun_artifact).
form(X, noun_group) :- form(X),not abnormal_d_group(X),not -form(X, noun_group).
form(X, noun_state) :- form(X),not -form(X, noun_state),-form(X, noun_cognition),-form(X, noun_attribute),-form(X, noun_body),-form(X, noun_tops),not form(X, noun_group),not form(X, noun_communication),not form(X, noun_artifact).
form(X, noun_state) :- form(X),not abnormal_d_state(X),not -form(X, noun_state).
form(X, noun_tops) :- form(X),not -form(X, noun_tops),-form(X, noun_cognition),-form(X, noun_attribute),-form(X, noun_body),not form(X, noun_state),not form(X, noun_group),not form(X, noun_communication),not form(X, noun_artifact).
form(X, noun_tops) :- form(X),not abnormal_d_tops(X),not -form(X, noun_tops).
gathering(X, noun_group) :- form(X, noun_group).
gathering(X, noun_group) :- gathering(X),not abnormal_d_group(X),not -gathering(X, noun_group).
gathering(X, noun_group) :- municipality(X, noun_group).
genealogy(X, noun_group) :- genealogy(X),not abnormal_d_group(X),not -genealogy(X, noun_group).
genealogy(X, noun_group) :- lineage(X, noun_group).
geographical_area(X, noun_location) :- geographical_area(X),not abnormal_d_location(X),not -geographical_area(X, noun_location).
geographical_area(X, noun_location) :- rhineland(X, noun_location).
geographical_area(X, noun_location) :- urban_area(X, noun_location).
germany(X, noun_location) :- germany(X),not abnormal_d_location(X),not -germany(X, noun_location).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- people(X, noun_group).
group(X, noun_tops) :- population(X, noun_group).
group(X, noun_tops) :- social_group(X, noun_group).
happening(X, noun_event) :- discharge(X, noun_event).
happening(X, noun_event) :- happening(X),not abnormal_d_event(X),not -happening(X, noun_event).
happening(X, noun_event) :- movement(X, noun_event).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
instrumentality(X, noun_artifact) :- container(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
instrumentality(X, noun_artifact) :- toiletry(X, noun_artifact).
integer(X, noun_quantity) :- integer(X),not abnormal_d_quantity(X),not -integer(X, noun_quantity).
integer(X, noun_quantity) :- population(X, noun_quantity).
interest(X, noun_cognition) :- concern(X, noun_cognition).
interest(X, noun_cognition) :- interest(X),not abnormal_d_cognition(X),not -interest(X, noun_cognition).
kilometre(X, noun_quantity) :- kilometre(X),not abnormal_d_quantity(X),not -kilometre(X, noun_quantity).
kin(X, noun_group) :- genealogy(X, noun_group).
kin(X, noun_group) :- kin(X),not abnormal_d_group(X),not -kin(X, noun_group).
language_unit(X, noun_communication) :- language_unit(X),not abnormal_d_communication(X),not -language_unit(X, noun_communication).
language_unit(X, noun_communication) :- word(X, noun_communication).
line(X, noun_location) :- line(X),not abnormal_d_location(X),not -line(X, noun_location).
line(X, noun_location) :- part(X, noun_body).
line(X, noun_shape) :- boundary(X, noun_shape).
line(X, noun_shape) :- line(X),not -line(X, noun_shape),-line(X, noun_location).
line(X, noun_shape) :- line(X),not abnormal_d_shape(X),not -line(X, noun_shape).
lineage(X, noun_group) :- family(X, noun_group).
lineage(X, noun_group) :- lineage(X),not abnormal_d_group(X),not -lineage(X, noun_group).
linear_measure(X, noun_quantity) :- linear_measure(X),not abnormal_d_quantity(X),not -linear_measure(X, noun_quantity).
linear_measure(X, noun_quantity) :- linear_unit(X, noun_quantity).
linear_unit(X, noun_quantity) :- linear_unit(X),not abnormal_d_quantity(X),not -linear_unit(X, noun_quantity).
linear_unit(X, noun_quantity) :- metric_linear_unit(X, noun_quantity).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- line(X, noun_location).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- part(X, noun_location).
location(X, noun_tops) :- region(X, noun_location).
manner(X, noun_attribute) :- form(X, noun_attribute).
manner(X, noun_attribute) :- manner(X),not abnormal_d_attribute(X),not -manner(X, noun_attribute).
material(X, noun_substance) :- discharge(X, noun_substance).
material(X, noun_substance) :- material(X),not abnormal_d_substance(X),not -material(X, noun_substance).
measure(X, noun_tops) :- definite_quantity(X, noun_quantity).
measure(X, noun_tops) :- linear_measure(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
metric_linear_unit(X, noun_quantity) :- kilometre(X, noun_quantity).
metric_linear_unit(X, noun_quantity) :- metric_linear_unit(X),not abnormal_d_quantity(X),not -metric_linear_unit(X, noun_quantity).
model(X, noun_artifact) :- figure(X, noun_artifact).
model(X, noun_artifact) :- model(X),not abnormal_d_artifact(X),not -model(X, noun_artifact).
mold(X, noun_artifact) :- form(X, noun_artifact).
mold(X, noun_artifact) :- mold(X),not abnormal_d_artifact(X),not -mold(X, noun_artifact).
movement(X, noun_event) :- change_of_location(X, noun_event).
movement(X, noun_event) :- movement(X),not abnormal_d_event(X),not -movement(X, noun_event).
municipality(X, noun_group) :- city(X, noun_group).
municipality(X, noun_group) :- municipality(X),not -municipality(X, noun_group),-municipality(X, noun_location).
municipality(X, noun_group) :- municipality(X),not abnormal_d_group(X),not -municipality(X, noun_group).
municipality(X, noun_location) :- city(X, noun_location).
municipality(X, noun_location) :- municipality(X),not abnormal_d_location(X),not -municipality(X, noun_location).
music(X, noun_communication) :- music(X),not abnormal_d_communication(X),not -music(X, noun_communication).
music(X, noun_communication) :- tune(X, noun_communication).
natural_object(X, noun_tops) :- body(X, noun_body).
natural_object(X, noun_tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_tops).
natural_phenomenon(X, noun_phenomenon) :- chemical_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X, noun_phenomenon).
north_sea(X, noun_object) :- north_sea(X),not abnormal_d_object(X),not -north_sea(X, noun_object).
number(X, noun_quantity) :- integer(X, noun_quantity).
number(X, noun_quantity) :- number(X),not abnormal_d_quantity(X),not -number(X, noun_quantity).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- part(X, noun_artifact).
object(X, noun_tops) :- whole(X, noun_tops).
organic_process(X, noun_process) :- bodily_process(X, noun_process).
organic_process(X, noun_process) :- organic_process(X),not abnormal_d_process(X),not -organic_process(X, noun_process).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
parapsychologist(X, noun_person) :- parapsychologist(X),not abnormal_d_person(X),not -parapsychologist(X, noun_person).
parapsychologist(X, noun_person) :- rhine(X, noun_person).
part(X, noun_act) :- part(X),not -part(X, noun_act),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_act) :- part(X),not abnormal_d_act(X),not -part(X, noun_act).
part(X, noun_artifact) :- part(X),not -part(X, noun_artifact),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),not part(X, noun_act),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_artifact) :- part(X),not abnormal_d_artifact(X),not -part(X, noun_artifact).
part(X, noun_body) :- part(X),not -part(X, noun_body),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),-part(X, noun_object),-part(X, noun_possession),-part(X, noun_communication).
part(X, noun_body) :- part(X),not abnormal_d_body(X),not -part(X, noun_body).
part(X, noun_cognition) :- part(X),not -part(X, noun_cognition),-part(X, noun_relation),-part(X, noun_location),not part(X, noun_artifact),not part(X, noun_act),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_cognition) :- part(X),not abnormal_d_cognition(X),not -part(X, noun_cognition).
part(X, noun_communication) :- part(X),not -part(X, noun_communication),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),-part(X, noun_object),-part(X, noun_possession),not part(X, noun_body).
part(X, noun_communication) :- part(X),not abnormal_d_communication(X),not -part(X, noun_communication).
part(X, noun_location) :- part(X),not -part(X, noun_location),-part(X, noun_relation),not part(X, noun_cognition),not part(X, noun_artifact),not part(X, noun_act),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_location) :- part(X),not abnormal_d_location(X),not -part(X, noun_location).
part(X, noun_object) :- part(X),not -part(X, noun_object),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
part(X, noun_possession) :- part(X),not -part(X, noun_possession),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),-part(X, noun_object),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_possession) :- part(X),not abnormal_d_possession(X),not -part(X, noun_possession).
part(X, noun_relation) :- language_unit(X, noun_communication).
part(X, noun_relation) :- part(X),not abnormal_d_relation(X),not -part(X, noun_relation).
people(X, noun_group) :- people(X),not abnormal_d_group(X),not -people(X, noun_group).
people(X, noun_group) :- population(X, noun_group).
perfume(X, noun_artifact) :- cologne(X, noun_artifact).
perfume(X, noun_artifact) :- perfume(X),not abnormal_d_artifact(X),not -perfume(X, noun_artifact).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
person(X, noun_tops) :- scientist(X, noun_person).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
physical_phenomenon(X, noun_phenomenon) :- conduction(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X),not abnormal_d_phenomenon(X),not -physical_phenomenon(X, noun_phenomenon).
population(X, noun_act) :- population(X),not -population(X, noun_act),-population(X, noun_group),-population(X, noun_cognition),-population(X, noun_quantity).
population(X, noun_act) :- population(X),not abnormal_d_act(X),not -population(X, noun_act).
population(X, noun_cognition) :- population(X),not -population(X, noun_cognition),-population(X, noun_group),not population(X, noun_quantity),not population(X, noun_act).
population(X, noun_cognition) :- population(X),not abnormal_d_cognition(X),not -population(X, noun_cognition).
population(X, noun_group) :- population(X),not abnormal_d_group(X),not -population(X, noun_group).
population(X, noun_quantity) :- population(X),not -population(X, noun_quantity),-population(X, noun_group),-population(X, noun_cognition),not population(X, noun_act).
population(X, noun_quantity) :- population(X),not abnormal_d_quantity(X),not -population(X, noun_quantity).
portrayal(X, noun_act) :- part(X, noun_cognition).
portrayal(X, noun_act) :- portrayal(X),not abnormal_d_act(X),not -portrayal(X, noun_act).
possession(X, noun_tops) :- assets(X, noun_possession).
possession(X, noun_tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_tops).
process(X, noun_tops) :- organic_process(X, noun_process).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
property(X, noun_attribute) :- manner(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
property(X, noun_attribute) :- spatial_property(X, noun_attribute).
propulsion(X, noun_act) :- propulsion(X),not abnormal_d_act(X),not -propulsion(X, noun_act).
propulsion(X, noun_act) :- shooting(X, noun_act).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
psychologist(X, noun_person) :- parapsychologist(X, noun_person).
psychologist(X, noun_person) :- psychologist(X),not abnormal_d_person(X),not -psychologist(X, noun_person).
quality(X, noun_attribute) :- ability(X, noun_attribute).
quality(X, noun_attribute) :- appearance(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
region(X, noun_location) :- district(X, noun_location).
region(X, noun_location) :- extremity(X, noun_location).
region(X, noun_location) :- geographical_area(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
relation(X, noun_tops) :- part(X, noun_relation).
relation(X, noun_tops) :- possession(X, noun_tops).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
relinquishment(X, noun_act) :- discharge(X, noun_act).
relinquishment(X, noun_act) :- relinquishment(X),not abnormal_d_act(X),not -relinquishment(X, noun_act).
representation(X, noun_artifact) :- model(X, noun_artifact).
representation(X, noun_artifact) :- representation(X),not abnormal_d_artifact(X),not -representation(X, noun_artifact).
rhine(X, noun_object) :- rhine(X),not -rhine(X, noun_object),-rhine(X, noun_person).
rhine(X, noun_object) :- rhine(X),not abnormal_d_object(X),not -rhine(X, noun_object).
rhine(X, noun_person) :- rhine(X),not abnormal_d_person(X),not -rhine(X, noun_person).
rhineland(X, noun_location) :- rhineland(X),not abnormal_d_location(X),not -rhineland(X, noun_location).
river(X, noun_object) :- danube(X, noun_object).
river(X, noun_object) :- rhine(X, noun_object).
river(X, noun_object) :- river(X),not abnormal_d_object(X),not -river(X, noun_object).
scientist(X, noun_person) :- psychologist(X, noun_person).
scientist(X, noun_person) :- scientist(X),not abnormal_d_person(X),not -scientist(X, noun_person).
sea(X, noun_object) :- north_sea(X, noun_object).
sea(X, noun_object) :- sea(X),not abnormal_d_object(X),not -sea(X, noun_object).
shape(X, noun_tops) :- line(X, noun_shape).
shape(X, noun_tops) :- shape(X),not abnormal_d_tops(X),not -shape(X, noun_tops).
shooting(X, noun_act) :- discharge(X, noun_act).
shooting(X, noun_act) :- shooting(X),not abnormal_d_act(X),not -shooting(X, noun_act).
social_group(X, noun_group) :- gathering(X, noun_group).
social_group(X, noun_group) :- kin(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
spatial_property(X, noun_attribute) :- form(X, noun_attribute).
spatial_property(X, noun_attribute) :- spatial_property(X),not abnormal_d_attribute(X),not -spatial_property(X, noun_attribute).
state(X, noun_tops) :- cognitive_state(X, noun_cognition).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
state_of_matter(X, noun_state) :- form(X, noun_state).
state_of_matter(X, noun_state) :- state_of_matter(X),not abnormal_d_state(X),not -state_of_matter(X, noun_state).
stream(X, noun_object) :- river(X, noun_object).
stream(X, noun_object) :- stream(X),not abnormal_d_object(X),not -stream(X, noun_object).
strip(X, noun_artifact) :- edge(X, noun_artifact).
strip(X, noun_artifact) :- strip(X),not abnormal_d_artifact(X),not -strip(X, noun_artifact).
structure(X, noun_cognition) :- form(X, noun_cognition).
structure(X, noun_cognition) :- structure(X),not abnormal_d_cognition(X),not -structure(X, noun_cognition).
substance(X, noun_tops) :- material(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
swiss_canton(X, noun_location) :- swiss_canton(X),not abnormal_d_location(X),not -swiss_canton(X, noun_location).
taxonomic_group(X, noun_group) :- form(X, noun_group).
taxonomic_group(X, noun_group) :- taxonomic_group(X),not abnormal_d_group(X),not -taxonomic_group(X, noun_group).
termination(X, noun_act) :- discharge(X, noun_act).
termination(X, noun_act) :- relinquishment(X, noun_act).
termination(X, noun_act) :- termination(X),not abnormal_d_act(X),not -termination(X, noun_act).
thing(X, noun_tops) :- body_of_water(X, noun_object).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
toiletry(X, noun_artifact) :- perfume(X, noun_artifact).
toiletry(X, noun_artifact) :- toiletry(X),not abnormal_d_artifact(X),not -toiletry(X, noun_artifact).
tune(X, noun_communication) :- part(X, noun_communication).
tune(X, noun_communication) :- tune(X),not abnormal_d_communication(X),not -tune(X, noun_communication).
urban_area(X, noun_location) :- municipality(X, noun_location).
urban_area(X, noun_location) :- urban_area(X),not abnormal_d_location(X),not -urban_area(X, noun_location).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- natural_object(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
word(X, noun_communication) :- form(X, noun_communication).
word(X, noun_communication) :- word(X),not abnormal_d_communication(X),not -word(X, noun_communication).
work(X, noun_act) :- duty(X, noun_act).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
writing(X, noun_communication) :- document(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
writing_style(X, noun_communication) :- form(X, noun_communication).
writing_style(X, noun_communication) :- writing_style(X),not abnormal_d_communication(X),not -writing_style(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).
