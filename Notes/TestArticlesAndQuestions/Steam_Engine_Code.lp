%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(fluid, separate).
_is(non_combustion_source, energy).
_is(non_combustion_source, geothermal_energy).
_is(non_combustion_source, nuclear_power).
_is(non_combustion_source, power).
_is(non_combustion_source, solar_power).
_is(reduced_pressure_steam, condensed).
_is(source, energy).
_is(source, geothermal_energy).
_is(source, nuclear_power).
_is(source, power).
_is(source, solar_power).
_is(steam, condensed).
_is(steam_engines, combustion_engines).
_is(steam_engines, external_combustion_engines).
_is(working_fluid, separate).
_mod(combustion_engines, external).
_mod(cycle, ideal).
_mod(cycle, rankine).
_mod(cycle, thermodynamic).
_mod(energy, geothermal).
_mod(expand, when).
_mod(fluid, working).
_mod(power, nuclear).
_mod(power, solar).
_mod(pressure, high).
_mod(source, non_combustion).
_mod(steam, reduced_pressure).
_mod(work, mechanical).
_property(1, separate, from, product).
_property(11, heat, in, cycle).
_property(12, operating, at, pressure).
_property(12, transform, into, steam).
_property(12, transform, within, operating).
_property(13, expand, through, piston).
_property(13, expand, through, turbine).
_property(17, pump, into, boiler).
_relation(11, 12, _conj).
_relation(15, 13, _clause).
_relation(6, 7, _clcomplement).
_relation(cycle, 6, _clause).
boiler(boiler).
combustion(combustion).
cycle(cycle).
energy(energy).
event(1, be, null, null).
event(10, be, null, null).
event(11, heat, water, null).
event(12, transform, water, null).
event(13, expand, null, null).
event(14, be, null, null).
event(15, do, null, work).
event(16, be, null, null).
event(17, pump, reduced_pressure_steam, null).
event(17, pump, steam, null).
event(3, be, null, null).
event(4, be, null, null).
event(5, use, null, source).
event(6, use, null, null).
event(7, analyze, null, process).
event(8, be, null, null).
fluid(fluid).
heat(heat).
piston(piston).
power(power).
pressure(pressure).
process(process).
product(product).
separate(fluid).
separate(working_fluid).
source(energy).
source(geothermal_energy).
source(nuclear_power).
source(power).
source(solar_power).
source(source).
steam(steam).
turbine(turbine).
water(water).
work(work).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
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
action(X, noun_act) :- accomplishment(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
activeness(X, noun_attribute) :- activeness(X),not abnormal_d_attribute(X),not -activeness(X, noun_attribute).
activeness(X, noun_attribute) :- animation(X, noun_attribute).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- occupation(X, noun_act).
activity(X, noun_act) :- process(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
administrative_unit(X, noun_group) :- administrative_unit(X),not abnormal_d_group(X),not -administrative_unit(X, noun_group).
administrative_unit(X, noun_group) :- division(X, noun_group).
adversity(X, noun_state) :- adversity(X),not abnormal_d_state(X),not -adversity(X, noun_state).
adversity(X, noun_state) :- distress(X, noun_state).
animation(X, noun_attribute) :- animation(X),not abnormal_d_attribute(X),not -animation(X, noun_attribute).
animation(X, noun_attribute) :- liveliness(X, noun_attribute).
arrangement(X, noun_group) :- arrangement(X),not abnormal_d_group(X),not -arrangement(X, noun_group).
arrangement(X, noun_group) :- ordering(X, noun_group).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- commodity(X, noun_artifact).
artifact(X, noun_tops) :- creation(X, noun_artifact).
artifact(X, noun_tops) :- facility(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
artist(X, noun_person) :- artist(X),not abnormal_d_person(X),not -artist(X, noun_person).
artist(X, noun_person) :- musician(X, noun_person).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
attribute(X, noun_tops) :- trait(X, noun_attribute).
basic_cognitive_process(X, noun_cognition) :- basic_cognitive_process(X),not abnormal_d_cognition(X),not -basic_cognitive_process(X, noun_cognition).
basic_cognitive_process(X, noun_cognition) :- learning(X, noun_cognition).
basic_cognitive_process(X, noun_cognition) :- perception(X, noun_cognition).
binary_compound(X, noun_substance) :- binary_compound(X),not abnormal_d_substance(X),not -binary_compound(X, noun_substance).
binary_compound(X, noun_substance) :- water(X, noun_substance).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
body_part(X, noun_body) :- process(X, noun_body).
body_waste(X, noun_substance) :- body_waste(X),not abnormal_d_substance(X),not -body_waste(X, noun_substance).
body_waste(X, noun_substance) :- water(X, noun_substance).
boiler(X, noun_artifact) :- boiler(X),not abnormal_d_artifact(X),not -boiler(X, noun_artifact).
businessman(X, noun_person) :- businessman(X),not abnormal_d_person(X),not -businessman(X, noun_person).
businessman(X, noun_person) :- power(X, noun_person).
businessperson(X, noun_person) :- businessman(X, noun_person).
businessperson(X, noun_person) :- businessperson(X),not abnormal_d_person(X),not -businessperson(X, noun_person).
capitalist(X, noun_person) :- businessperson(X, noun_person).
capitalist(X, noun_person) :- capitalist(X),not abnormal_d_person(X),not -capitalist(X, noun_person).
causal_agent(X, noun_tops) :- causal_agent(X),not abnormal_d_tops(X),not -causal_agent(X, noun_tops).
causal_agent(X, noun_tops) :- power(X, noun_person).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- change_of_integrity(X, noun_act).
change_of_integrity(X, noun_act) :- change_of_integrity(X),not abnormal_d_act(X),not -change_of_integrity(X, noun_act).
change_of_integrity(X, noun_act) :- combustion(X, noun_act).
chemical(X, noun_substance) :- chemical(X),not abnormal_d_substance(X),not -chemical(X, noun_substance).
chemical(X, noun_substance) :- product(X, noun_substance).
chemical_process(X, noun_process) :- chemical_process(X),not abnormal_d_process(X),not -chemical_process(X, noun_process).
chemical_process(X, noun_process) :- chemical_reaction(X, noun_process).
chemical_reaction(X, noun_process) :- chemical_reaction(X),not abnormal_d_process(X),not -chemical_reaction(X, noun_process).
chemical_reaction(X, noun_process) :- oxidation(X, noun_process).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- power(X, noun_cognition).
cognition(X, noun_tops) :- process(X, noun_cognition).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- set(X, noun_group).
combustion(X, noun_act) :- combustion(X),not -combustion(X, noun_act),-combustion(X, noun_process),-combustion(X, noun_state).
combustion(X, noun_act) :- combustion(X),not abnormal_d_act(X),not -combustion(X, noun_act).
combustion(X, noun_process) :- combustion(X),not abnormal_d_process(X),not -combustion(X, noun_process).
combustion(X, noun_state) :- combustion(X),not -combustion(X, noun_state),-combustion(X, noun_process),not combustion(X, noun_act).
combustion(X, noun_state) :- combustion(X),not abnormal_d_state(X),not -combustion(X, noun_state).
commodity(X, noun_artifact) :- commodity(X),not abnormal_d_artifact(X),not -commodity(X, noun_artifact).
commodity(X, noun_artifact) :- product(X, noun_artifact).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- written_communication(X, noun_communication).
communicator(X, noun_person) :- communicator(X),not abnormal_d_person(X),not -communicator(X, noun_person).
communicator(X, noun_person) :- source(X, noun_person).
composer(X, noun_person) :- composer(X),not abnormal_d_person(X),not -composer(X, noun_person).
composer(X, noun_person) :- piston(X, noun_person).
compound(X, noun_substance) :- binary_compound(X, noun_substance).
compound(X, noun_substance) :- compound(X),not abnormal_d_substance(X),not -compound(X, noun_substance).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- quantity(X, noun_cognition).
condition(X, noun_state) :- condition(X),not abnormal_d_state(X),not -condition(X, noun_state).
condition(X, noun_state) :- fortune(X, noun_state).
condition(X, noun_state) :- need(X, noun_state).
consequence(X, noun_phenomenon) :- consequence(X),not abnormal_d_phenomenon(X),not -consequence(X, noun_phenomenon).
consequence(X, noun_phenomenon) :- product(X, noun_phenomenon).
container(X, noun_artifact) :- container(X),not abnormal_d_artifact(X),not -container(X, noun_artifact).
container(X, noun_artifact) :- vessel(X, noun_artifact).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
contest(X, noun_event) :- contest(X),not abnormal_d_event(X),not -contest(X, noun_event).
contest(X, noun_event) :- race(X, noun_event).
conveyance(X, noun_artifact) :- conveyance(X),not abnormal_d_artifact(X),not -conveyance(X, noun_artifact).
conveyance(X, noun_artifact) :- vehicle(X, noun_artifact).
cooking_utensil(X, noun_artifact) :- cooking_utensil(X),not abnormal_d_artifact(X),not -cooking_utensil(X, noun_artifact).
cooking_utensil(X, noun_artifact) :- pot(X, noun_artifact).
creation(X, noun_artifact) :- creation(X),not abnormal_d_artifact(X),not -creation(X, noun_artifact).
creation(X, noun_artifact) :- product(X, noun_artifact).
creator(X, noun_person) :- artist(X, noun_person).
creator(X, noun_person) :- creator(X),not abnormal_d_person(X),not -creator(X, noun_person).
creator(X, noun_person) :- maker(X, noun_person).
cycle(X, noun_artifact) :- cycle(X),not -cycle(X, noun_artifact),-cycle(X, noun_time),-cycle(X, noun_group),-cycle(X, noun_event).
cycle(X, noun_artifact) :- cycle(X),not abnormal_d_artifact(X),not -cycle(X, noun_artifact).
cycle(X, noun_event) :- cycle(X),not -cycle(X, noun_event),-cycle(X, noun_time),-cycle(X, noun_group),not cycle(X, noun_artifact).
cycle(X, noun_event) :- cycle(X),not abnormal_d_event(X),not -cycle(X, noun_event).
cycle(X, noun_group) :- cycle(X),not -cycle(X, noun_group),-cycle(X, noun_time),not cycle(X, noun_event),not cycle(X, noun_artifact).
cycle(X, noun_group) :- cycle(X),not abnormal_d_group(X),not -cycle(X, noun_group).
cycle(X, noun_time) :- cycle(X),not abnormal_d_time(X),not -cycle(X, noun_time).
deed(X, noun_act) :- deed(X),not abnormal_d_act(X),not -deed(X, noun_act).
deed(X, noun_act) :- propulsion(X, noun_act).
department(X, noun_group) :- department(X),not abnormal_d_group(X),not -department(X, noun_group).
department(X, noun_group) :- government_department(X, noun_group).
device(X, noun_artifact) :- device(X),not abnormal_d_artifact(X),not -device(X, noun_artifact).
device(X, noun_artifact) :- machine(X, noun_artifact).
device(X, noun_artifact) :- mechanism(X, noun_artifact).
disorder(X, noun_state) :- disorder(X),not abnormal_d_state(X),not -disorder(X, noun_state).
disorder(X, noun_state) :- disturbance(X, noun_state).
distress(X, noun_state) :- distress(X),not abnormal_d_state(X),not -distress(X, noun_state).
distress(X, noun_state) :- pressure(X, noun_state).
disturbance(X, noun_state) :- disturbance(X),not abnormal_d_state(X),not -disturbance(X, noun_state).
disturbance(X, noun_state) :- tumult(X, noun_state).
division(X, noun_group) :- department(X, noun_group).
division(X, noun_group) :- division(X),not abnormal_d_group(X),not -division(X, noun_group).
document(X, noun_communication) :- document(X),not abnormal_d_communication(X),not -document(X, noun_communication).
document(X, noun_communication) :- legal_document(X, noun_communication).
document(X, noun_communication) :- source(X, noun_communication).
drive(X, noun_attribute) :- drive(X),not abnormal_d_attribute(X),not -drive(X, noun_attribute).
drive(X, noun_attribute) :- energy(X, noun_attribute).
element(X, noun_substance) :- element(X),not abnormal_d_substance(X),not -element(X, noun_substance).
element(X, noun_substance) :- water(X, noun_substance).
emotionality(X, noun_attribute) :- emotionality(X),not abnormal_d_attribute(X),not -emotionality(X, noun_attribute).
emotionality(X, noun_attribute) :- heat(X, noun_attribute).
end_product(X, noun_artifact) :- end_product(X),not abnormal_d_artifact(X),not -end_product(X, noun_artifact).
end_product(X, noun_artifact) :- work(X, noun_artifact).
energy(X, noun_attribute) :- energy(X),not -energy(X, noun_attribute),-energy(X, noun_phenomenon),not energy(X, noun_state),not energy(X, noun_group).
energy(X, noun_attribute) :- energy(X),not abnormal_d_attribute(X),not -energy(X, noun_attribute).
energy(X, noun_group) :- energy(X),not -energy(X, noun_group),-energy(X, noun_phenomenon),-energy(X, noun_attribute),-energy(X, noun_state).
energy(X, noun_group) :- energy(X),not abnormal_d_group(X),not -energy(X, noun_group).
energy(X, noun_phenomenon) :- energy(X),not abnormal_d_phenomenon(X),not -energy(X, noun_phenomenon).
energy(X, noun_phenomenon) :- heat(X, noun_phenomenon).
energy(X, noun_phenomenon) :- work(X, noun_phenomenon).
energy(X, noun_state) :- energy(X),not -energy(X, noun_state),-energy(X, noun_phenomenon),-energy(X, noun_attribute),not energy(X, noun_group).
energy(X, noun_state) :- energy(X),not abnormal_d_state(X),not -energy(X, noun_state).
engine(X, noun_artifact) :- engine(X),not abnormal_d_artifact(X),not -engine(X, noun_artifact).
engine(X, noun_artifact) :- heat_engine(X, noun_artifact).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- happening(X, noun_event).
event(X, noun_tops) :- social_event(X, noun_event).
executive_department(X, noun_group) :- energy(X, noun_group).
executive_department(X, noun_group) :- executive_department(X),not abnormal_d_group(X),not -executive_department(X, noun_group).
facility(X, noun_artifact) :- facility(X),not abnormal_d_artifact(X),not -facility(X, noun_artifact).
facility(X, noun_artifact) :- source(X, noun_artifact).
facility(X, noun_artifact) :- utility(X, noun_artifact).
facility(X, noun_artifact) :- water(X, noun_artifact).
federal_department(X, noun_group) :- executive_department(X, noun_group).
federal_department(X, noun_group) :- federal_department(X),not abnormal_d_group(X),not -federal_department(X, noun_group).
fluid(X, noun_substance) :- fluid(X),not abnormal_d_substance(X),not -fluid(X, noun_substance).
food(X, noun_tops) :- food(X),not abnormal_d_tops(X),not -food(X, noun_tops).
food(X, noun_tops) :- water(X, noun_food).
force(X, noun_attribute) :- energy(X, noun_attribute).
force(X, noun_attribute) :- force(X),not abnormal_d_attribute(X),not -force(X, noun_attribute).
force(X, noun_attribute) :- pressure(X, noun_attribute).
fortune(X, noun_state) :- fortune(X),not abnormal_d_state(X),not -fortune(X, noun_state).
fortune(X, noun_state) :- misfortune(X, noun_state).
geographic_point(X, noun_location) :- geographic_point(X),not abnormal_d_location(X),not -geographic_point(X, noun_location).
geographic_point(X, noun_location) :- work(X, noun_artifact).
good_health(X, noun_state) :- energy(X, noun_state).
good_health(X, noun_state) :- good_health(X),not abnormal_d_state(X),not -good_health(X, noun_state).
government_department(X, noun_group) :- federal_department(X, noun_group).
government_department(X, noun_group) :- government_department(X),not abnormal_d_group(X),not -government_department(X, noun_group).
group(X, noun_tops) :- arrangement(X, noun_group).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- social_group(X, noun_group).
happening(X, noun_event) :- happening(X),not abnormal_d_event(X),not -happening(X, noun_event).
happening(X, noun_event) :- periodic_event(X, noun_event).
heat(X, noun_artifact) :- heat(X),not -heat(X, noun_artifact),-heat(X, noun_phenomenon),-heat(X, noun_attribute),-heat(X, noun_cognition),-heat(X, noun_state),-heat(X, noun_event).
heat(X, noun_artifact) :- heat(X),not abnormal_d_artifact(X),not -heat(X, noun_artifact).
heat(X, noun_attribute) :- heat(X),not -heat(X, noun_attribute),-heat(X, noun_phenomenon),not heat(X, noun_cognition),not heat(X, noun_state),not heat(X, noun_event),not heat(X, noun_artifact).
heat(X, noun_attribute) :- heat(X),not abnormal_d_attribute(X),not -heat(X, noun_attribute).
heat(X, noun_cognition) :- heat(X),not -heat(X, noun_cognition),-heat(X, noun_phenomenon),-heat(X, noun_attribute),not heat(X, noun_state),not heat(X, noun_event),not heat(X, noun_artifact).
heat(X, noun_cognition) :- heat(X),not abnormal_d_cognition(X),not -heat(X, noun_cognition).
heat(X, noun_event) :- heat(X),not -heat(X, noun_event),-heat(X, noun_phenomenon),-heat(X, noun_attribute),-heat(X, noun_cognition),-heat(X, noun_state),not heat(X, noun_artifact).
heat(X, noun_event) :- heat(X),not abnormal_d_event(X),not -heat(X, noun_event).
heat(X, noun_phenomenon) :- heat(X),not abnormal_d_phenomenon(X),not -heat(X, noun_phenomenon).
heat(X, noun_state) :- heat(X),not -heat(X, noun_state),-heat(X, noun_phenomenon),-heat(X, noun_attribute),-heat(X, noun_cognition),not heat(X, noun_event),not heat(X, noun_artifact).
heat(X, noun_state) :- heat(X),not abnormal_d_state(X),not -heat(X, noun_state).
heat_engine(X, noun_artifact) :- heat_engine(X),not abnormal_d_artifact(X),not -heat_engine(X, noun_artifact).
heat_engine(X, noun_artifact) :- internal_combustion_engine(X, noun_artifact).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
idea(X, noun_cognition) :- inspiration(X, noun_cognition).
implement(X, noun_artifact) :- implement(X),not abnormal_d_artifact(X),not -implement(X, noun_artifact).
implement(X, noun_artifact) :- utensil(X, noun_artifact).
influence(X, noun_attribute) :- force(X, noun_attribute).
influence(X, noun_attribute) :- influence(X),not abnormal_d_attribute(X),not -influence(X, noun_attribute).
inspiration(X, noun_cognition) :- inspiration(X),not abnormal_d_cognition(X),not -inspiration(X, noun_cognition).
inspiration(X, noun_cognition) :- source(X, noun_cognition).
instrumentality(X, noun_artifact) :- container(X, noun_artifact).
instrumentality(X, noun_artifact) :- conveyance(X, noun_artifact).
instrumentality(X, noun_artifact) :- device(X, noun_artifact).
instrumentality(X, noun_artifact) :- implement(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
internal_combustion_engine(X, noun_artifact) :- internal_combustion_engine(X),not abnormal_d_artifact(X),not -internal_combustion_engine(X, noun_artifact).
internal_combustion_engine(X, noun_artifact) :- rotary_engine(X, noun_artifact).
kitchen_utensil(X, noun_artifact) :- cooking_utensil(X, noun_artifact).
kitchen_utensil(X, noun_artifact) :- kitchen_utensil(X),not abnormal_d_artifact(X),not -kitchen_utensil(X, noun_artifact).
learning(X, noun_cognition) :- learning(X),not abnormal_d_cognition(X),not -learning(X, noun_cognition).
learning(X, noun_cognition) :- work(X, noun_cognition).
legal_document(X, noun_communication) :- legal_document(X),not abnormal_d_communication(X),not -legal_document(X, noun_communication).
legal_document(X, noun_communication) :- writ(X, noun_communication).
liveliness(X, noun_attribute) :- energy(X, noun_attribute).
liveliness(X, noun_attribute) :- liveliness(X),not abnormal_d_attribute(X),not -liveliness(X, noun_attribute).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- point(X, noun_location).
machine(X, noun_artifact) :- machine(X),not abnormal_d_artifact(X),not -machine(X, noun_artifact).
machine(X, noun_artifact) :- motor(X, noun_artifact).
magnitude_relation(X, noun_relation) :- magnitude_relation(X),not abnormal_d_relation(X),not -magnitude_relation(X, noun_relation).
magnitude_relation(X, noun_relation) :- rate(X, noun_time).
maker(X, noun_person) :- maker(X),not abnormal_d_person(X),not -maker(X, noun_person).
maker(X, noun_person) :- source(X, noun_person).
material(X, noun_substance) :- chemical(X, noun_substance).
material(X, noun_substance) :- material(X),not abnormal_d_substance(X),not -material(X, noun_substance).
material(X, noun_substance) :- waste(X, noun_substance).
mathematical_notation(X, noun_communication) :- mathematical_notation(X),not abnormal_d_communication(X),not -mathematical_notation(X, noun_communication).
mathematical_notation(X, noun_communication) :- power(X, noun_communication).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
measure(X, noun_tops) :- time_interval(X, noun_time).
mechanical_device(X, noun_artifact) :- mechanical_device(X),not abnormal_d_artifact(X),not -mechanical_device(X, noun_artifact).
mechanical_device(X, noun_artifact) :- piston(X, noun_artifact).
mechanism(X, noun_artifact) :- mechanical_device(X, noun_artifact).
mechanism(X, noun_artifact) :- mechanism(X),not abnormal_d_artifact(X),not -mechanism(X, noun_artifact).
misfortune(X, noun_state) :- adversity(X, noun_state).
misfortune(X, noun_state) :- misfortune(X),not abnormal_d_state(X),not -misfortune(X, noun_state).
mixture(X, noun_substance) :- mixture(X),not abnormal_d_substance(X),not -mixture(X, noun_substance).
mixture(X, noun_substance) :- suspension(X, noun_substance).
motor(X, noun_artifact) :- engine(X, noun_artifact).
motor(X, noun_artifact) :- motor(X),not abnormal_d_artifact(X),not -motor(X, noun_artifact).
musician(X, noun_person) :- composer(X, noun_person).
musician(X, noun_person) :- musician(X),not abnormal_d_person(X),not -musician(X, noun_person).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X, noun_phenomenon).
natural_process(X, noun_process) :- chemical_process(X, noun_process).
natural_process(X, noun_process) :- natural_process(X),not abnormal_d_process(X),not -natural_process(X, noun_process).
natural_process(X, noun_process) :- source(X, noun_process).
necessity(X, noun_state) :- necessity(X),not abnormal_d_state(X),not -necessity(X, noun_state).
necessity(X, noun_state) :- urgency(X, noun_state).
need(X, noun_state) :- necessity(X, noun_state).
need(X, noun_state) :- need(X),not abnormal_d_state(X),not -need(X, noun_state).
notation(X, noun_communication) :- mathematical_notation(X, noun_communication).
notation(X, noun_communication) :- notation(X),not abnormal_d_communication(X),not -notation(X, noun_communication).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
occupation(X, noun_act) :- occupation(X),not abnormal_d_act(X),not -occupation(X, noun_act).
occupation(X, noun_act) :- work(X, noun_act).
ordering(X, noun_group) :- ordering(X),not abnormal_d_group(X),not -ordering(X, noun_group).
ordering(X, noun_group) :- series(X, noun_group).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
oxidation(X, noun_process) :- combustion(X, noun_process).
oxidation(X, noun_process) :- oxidation(X),not abnormal_d_process(X),not -oxidation(X, noun_process).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
perception(X, noun_cognition) :- perception(X),not abnormal_d_cognition(X),not -perception(X, noun_cognition).
perception(X, noun_cognition) :- somesthesia(X, noun_cognition).
periodic_event(X, noun_event) :- cycle(X, noun_event).
periodic_event(X, noun_event) :- periodic_event(X),not abnormal_d_event(X),not -periodic_event(X, noun_event).
periodic_event(X, noun_event) :- repeat(X, noun_event).
person(X, noun_tops) :- capitalist(X, noun_person).
person(X, noun_tops) :- communicator(X, noun_person).
person(X, noun_tops) :- creator(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
phenomenon(X, noun_tops) :- consequence(X, noun_phenomenon).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- causal_agent(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
physical_phenomenon(X, noun_phenomenon) :- energy(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X),not abnormal_d_phenomenon(X),not -physical_phenomenon(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- power(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- pressure(X, noun_phenomenon).
physical_property(X, noun_attribute) :- physical_property(X),not abnormal_d_attribute(X),not -physical_property(X, noun_attribute).
physical_property(X, noun_attribute) :- temperature(X, noun_attribute).
physiological_state(X, noun_state) :- good_health(X, noun_state).
physiological_state(X, noun_state) :- heat(X, noun_state).
physiological_state(X, noun_state) :- physiological_state(X),not abnormal_d_state(X),not -physiological_state(X, noun_state).
piston(X, noun_artifact) :- piston(X),not -piston(X, noun_artifact),-piston(X, noun_person).
piston(X, noun_artifact) :- piston(X),not abnormal_d_artifact(X),not -piston(X, noun_artifact).
piston(X, noun_person) :- piston(X),not abnormal_d_person(X),not -piston(X, noun_person).
point(X, noun_location) :- geographic_point(X, noun_location).
point(X, noun_location) :- point(X),not abnormal_d_location(X),not -point(X, noun_location).
point(X, noun_location) :- source(X, noun_location).
political_unit(X, noun_group) :- political_unit(X),not abnormal_d_group(X),not -political_unit(X, noun_group).
political_unit(X, noun_group) :- state(X, noun_group).
pot(X, noun_artifact) :- boiler(X, noun_artifact).
pot(X, noun_artifact) :- pot(X),not abnormal_d_artifact(X),not -pot(X, noun_artifact).
power(X, noun_attribute) :- influence(X, noun_attribute).
power(X, noun_attribute) :- power(X),not abnormal_d_attribute(X),not -power(X, noun_attribute).
power(X, noun_cognition) :- power(X),not -power(X, noun_cognition),-power(X, noun_attribute),-power(X, noun_phenomenon),not power(X, noun_group),not power(X, noun_state),not power(X, noun_communication),not power(X, noun_person).
power(X, noun_cognition) :- power(X),not abnormal_d_cognition(X),not -power(X, noun_cognition).
power(X, noun_communication) :- power(X),not -power(X, noun_communication),-power(X, noun_attribute),-power(X, noun_phenomenon),-power(X, noun_cognition),-power(X, noun_group),-power(X, noun_state),not power(X, noun_person).
power(X, noun_communication) :- power(X),not abnormal_d_communication(X),not -power(X, noun_communication).
power(X, noun_group) :- power(X),not -power(X, noun_group),-power(X, noun_attribute),-power(X, noun_phenomenon),-power(X, noun_cognition),not power(X, noun_state),not power(X, noun_communication),not power(X, noun_person).
power(X, noun_group) :- power(X),not abnormal_d_group(X),not -power(X, noun_group).
power(X, noun_person) :- power(X),not -power(X, noun_person),-power(X, noun_attribute),-power(X, noun_phenomenon),-power(X, noun_cognition),-power(X, noun_group),-power(X, noun_state),-power(X, noun_communication).
power(X, noun_person) :- power(X),not abnormal_d_person(X),not -power(X, noun_person).
power(X, noun_phenomenon) :- power(X),not -power(X, noun_phenomenon),-power(X, noun_attribute),not power(X, noun_cognition),not power(X, noun_group),not power(X, noun_state),not power(X, noun_communication),not power(X, noun_person).
power(X, noun_phenomenon) :- power(X),not abnormal_d_phenomenon(X),not -power(X, noun_phenomenon).
power(X, noun_state) :- power(X),not -power(X, noun_state),-power(X, noun_attribute),-power(X, noun_phenomenon),-power(X, noun_cognition),-power(X, noun_group),not power(X, noun_communication),not power(X, noun_person).
power(X, noun_state) :- power(X),not abnormal_d_state(X),not -power(X, noun_state).
pressure(X, noun_act) :- pressure(X),not -pressure(X, noun_act),-pressure(X, noun_phenomenon),-pressure(X, noun_attribute),not pressure(X, noun_state),not pressure(X, noun_cognition).
pressure(X, noun_act) :- pressure(X),not abnormal_d_act(X),not -pressure(X, noun_act).
pressure(X, noun_attribute) :- pressure(X),not -pressure(X, noun_attribute),-pressure(X, noun_phenomenon),not pressure(X, noun_act),not pressure(X, noun_state),not pressure(X, noun_cognition).
pressure(X, noun_attribute) :- pressure(X),not abnormal_d_attribute(X),not -pressure(X, noun_attribute).
pressure(X, noun_cognition) :- pressure(X),not -pressure(X, noun_cognition),-pressure(X, noun_phenomenon),-pressure(X, noun_attribute),-pressure(X, noun_act),-pressure(X, noun_state).
pressure(X, noun_cognition) :- pressure(X),not abnormal_d_cognition(X),not -pressure(X, noun_cognition).
pressure(X, noun_phenomenon) :- pressure(X),not abnormal_d_phenomenon(X),not -pressure(X, noun_phenomenon).
pressure(X, noun_state) :- pressure(X),not -pressure(X, noun_state),-pressure(X, noun_phenomenon),-pressure(X, noun_attribute),-pressure(X, noun_act),not pressure(X, noun_cognition).
pressure(X, noun_state) :- pressure(X),not abnormal_d_state(X),not -pressure(X, noun_state).
process(X, noun_act) :- process(X),not abnormal_d_act(X),not -process(X, noun_act).
process(X, noun_body) :- process(X),not -process(X, noun_body),-process(X, noun_act),-process(X, noun_communication),-process(X, noun_cognition),not process(X, noun_tops).
process(X, noun_body) :- process(X),not abnormal_d_body(X),not -process(X, noun_body).
process(X, noun_cognition) :- basic_cognitive_process(X, noun_cognition).
process(X, noun_cognition) :- process(X),not -process(X, noun_cognition),-process(X, noun_act),-process(X, noun_communication),not process(X, noun_body),not process(X, noun_tops).
process(X, noun_cognition) :- process(X),not abnormal_d_cognition(X),not -process(X, noun_cognition).
process(X, noun_communication) :- process(X),not -process(X, noun_communication),-process(X, noun_act),not process(X, noun_cognition),not process(X, noun_body),not process(X, noun_tops).
process(X, noun_communication) :- process(X),not abnormal_d_communication(X),not -process(X, noun_communication).
process(X, noun_tops) :- natural_process(X, noun_process).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not -process(X, noun_tops),-process(X, noun_act),-process(X, noun_communication),-process(X, noun_cognition),-process(X, noun_body).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
product(X, noun_artifact) :- end_product(X, noun_artifact).
product(X, noun_artifact) :- product(X),not abnormal_d_artifact(X),not -product(X, noun_artifact).
product(X, noun_artifact) :- work(X, noun_artifact).
product(X, noun_cognition) :- product(X),not -product(X, noun_cognition),-product(X, noun_artifact),-product(X, noun_phenomenon),-product(X, noun_substance),not product(X, noun_group).
product(X, noun_cognition) :- product(X),not abnormal_d_cognition(X),not -product(X, noun_cognition).
product(X, noun_group) :- product(X),not -product(X, noun_group),-product(X, noun_artifact),-product(X, noun_phenomenon),-product(X, noun_substance),-product(X, noun_cognition).
product(X, noun_group) :- product(X),not abnormal_d_group(X),not -product(X, noun_group).
product(X, noun_phenomenon) :- product(X),not -product(X, noun_phenomenon),-product(X, noun_artifact),not product(X, noun_substance),not product(X, noun_cognition),not product(X, noun_group).
product(X, noun_phenomenon) :- product(X),not abnormal_d_phenomenon(X),not -product(X, noun_phenomenon).
product(X, noun_substance) :- product(X),not -product(X, noun_substance),-product(X, noun_artifact),-product(X, noun_phenomenon),not product(X, noun_cognition),not product(X, noun_group).
product(X, noun_substance) :- product(X),not abnormal_d_substance(X),not -product(X, noun_substance).
property(X, noun_attribute) :- physical_property(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
property(X, noun_attribute) :- strength(X, noun_attribute).
propulsion(X, noun_act) :- propulsion(X),not abnormal_d_act(X),not -propulsion(X, noun_act).
propulsion(X, noun_act) :- push(X, noun_act).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
publication(X, noun_communication) :- publication(X),not abnormal_d_communication(X),not -publication(X, noun_communication).
publication(X, noun_communication) :- source(X, noun_communication).
push(X, noun_act) :- pressure(X, noun_act).
push(X, noun_act) :- push(X),not abnormal_d_act(X),not -push(X, noun_act).
quality(X, noun_attribute) :- power(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
quantity(X, noun_cognition) :- product(X, noun_cognition).
quantity(X, noun_cognition) :- quantity(X),not abnormal_d_cognition(X),not -quantity(X, noun_cognition).
race(X, noun_event) :- heat(X, noun_event).
race(X, noun_event) :- race(X),not abnormal_d_event(X),not -race(X, noun_event).
rate(X, noun_time) :- cycle(X, noun_time).
rate(X, noun_time) :- rate(X),not abnormal_d_time(X),not -rate(X, noun_time).
relation(X, noun_tops) :- magnitude_relation(X, noun_relation).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
repeat(X, noun_event) :- cycle(X, noun_event).
repeat(X, noun_event) :- repeat(X),not abnormal_d_event(X),not -repeat(X, noun_event).
rotary_engine(X, noun_artifact) :- rotary_engine(X),not abnormal_d_artifact(X),not -rotary_engine(X, noun_artifact).
rotary_engine(X, noun_artifact) :- turbine(X, noun_artifact).
series(X, noun_group) :- cycle(X, noun_group).
series(X, noun_group) :- series(X),not abnormal_d_group(X),not -series(X, noun_group).
set(X, noun_group) :- product(X, noun_group).
set(X, noun_group) :- set(X),not abnormal_d_group(X),not -set(X, noun_group).
social_event(X, noun_event) :- contest(X, noun_event).
social_event(X, noun_event) :- social_event(X),not abnormal_d_event(X),not -social_event(X, noun_event).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
somesthesia(X, noun_cognition) :- pressure(X, noun_cognition).
somesthesia(X, noun_cognition) :- somesthesia(X),not abnormal_d_cognition(X),not -somesthesia(X, noun_cognition).
somesthesia(X, noun_cognition) :- temperature(X, noun_cognition).
source(X, noun_artifact) :- source(X),not -source(X, noun_artifact),-source(X, noun_location),-source(X, noun_person),-source(X, noun_communication),not source(X, noun_cognition),not source(X, noun_process),not source(X, noun_object).
source(X, noun_artifact) :- source(X),not abnormal_d_artifact(X),not -source(X, noun_artifact).
source(X, noun_cognition) :- source(X),not -source(X, noun_cognition),-source(X, noun_location),-source(X, noun_person),-source(X, noun_communication),-source(X, noun_artifact),not source(X, noun_process),not source(X, noun_object).
source(X, noun_cognition) :- source(X),not abnormal_d_cognition(X),not -source(X, noun_cognition).
source(X, noun_communication) :- source(X),not -source(X, noun_communication),-source(X, noun_location),-source(X, noun_person),not source(X, noun_artifact),not source(X, noun_cognition),not source(X, noun_process),not source(X, noun_object).
source(X, noun_communication) :- source(X),not abnormal_d_communication(X),not -source(X, noun_communication).
source(X, noun_location) :- source(X),not abnormal_d_location(X),not -source(X, noun_location).
source(X, noun_object) :- source(X),not -source(X, noun_object),-source(X, noun_location),-source(X, noun_person),-source(X, noun_communication),-source(X, noun_artifact),-source(X, noun_cognition),-source(X, noun_process).
source(X, noun_object) :- source(X),not abnormal_d_object(X),not -source(X, noun_object).
source(X, noun_person) :- source(X),not -source(X, noun_person),-source(X, noun_location),not source(X, noun_communication),not source(X, noun_artifact),not source(X, noun_cognition),not source(X, noun_process),not source(X, noun_object).
source(X, noun_person) :- source(X),not abnormal_d_person(X),not -source(X, noun_person).
source(X, noun_process) :- source(X),not -source(X, noun_process),-source(X, noun_location),-source(X, noun_person),-source(X, noun_communication),-source(X, noun_artifact),-source(X, noun_cognition),not source(X, noun_object).
source(X, noun_process) :- source(X),not abnormal_d_process(X),not -source(X, noun_process).
state(X, noun_group) :- power(X, noun_group).
state(X, noun_group) :- state(X),not -state(X, noun_group),-state(X, noun_tops).
state(X, noun_group) :- state(X),not abnormal_d_group(X),not -state(X, noun_group).
state(X, noun_tops) :- condition(X, noun_state).
state(X, noun_tops) :- disorder(X, noun_state).
state(X, noun_tops) :- physiological_state(X, noun_state).
state(X, noun_tops) :- power(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
steam(X, noun_substance) :- steam(X),not abnormal_d_substance(X),not -steam(X, noun_substance).
strength(X, noun_attribute) :- power(X, noun_attribute).
strength(X, noun_attribute) :- strength(X),not abnormal_d_attribute(X),not -strength(X, noun_attribute).
substance(X, noun_tops) :- compound(X, noun_substance).
substance(X, noun_tops) :- element(X, noun_substance).
substance(X, noun_tops) :- fluid(X, noun_substance).
substance(X, noun_tops) :- food(X, noun_tops).
substance(X, noun_tops) :- material(X, noun_substance).
substance(X, noun_tops) :- mixture(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
suspension(X, noun_substance) :- suspension(X),not abnormal_d_substance(X),not -suspension(X, noun_substance).
suspension(X, noun_substance) :- vapor(X, noun_substance).
temperature(X, noun_attribute) :- heat(X, noun_attribute).
temperature(X, noun_attribute) :- temperature(X),not abnormal_d_attribute(X),not -temperature(X, noun_attribute).
temperature(X, noun_cognition) :- heat(X, noun_cognition).
temperature(X, noun_cognition) :- temperature(X),not -temperature(X, noun_cognition),-temperature(X, noun_attribute).
temperature(X, noun_cognition) :- temperature(X),not abnormal_d_cognition(X),not -temperature(X, noun_cognition).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- source(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
thing(X, noun_tops) :- water(X, noun_object).
time_interval(X, noun_time) :- cycle(X, noun_time).
time_interval(X, noun_time) :- time_interval(X),not abnormal_d_time(X),not -time_interval(X, noun_time).
trait(X, noun_attribute) :- activeness(X, noun_attribute).
trait(X, noun_attribute) :- drive(X, noun_attribute).
trait(X, noun_attribute) :- emotionality(X, noun_attribute).
trait(X, noun_attribute) :- trait(X),not abnormal_d_attribute(X),not -trait(X, noun_attribute).
tumult(X, noun_state) :- combustion(X, noun_state).
tumult(X, noun_state) :- tumult(X),not abnormal_d_state(X),not -tumult(X, noun_state).
turbine(X, noun_artifact) :- turbine(X),not abnormal_d_artifact(X),not -turbine(X, noun_artifact).
unit(X, noun_group) :- administrative_unit(X, noun_group).
unit(X, noun_group) :- political_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
urgency(X, noun_state) :- pressure(X, noun_state).
urgency(X, noun_state) :- urgency(X),not abnormal_d_state(X),not -urgency(X, noun_state).
utensil(X, noun_artifact) :- kitchen_utensil(X, noun_artifact).
utensil(X, noun_artifact) :- utensil(X),not abnormal_d_artifact(X),not -utensil(X, noun_artifact).
utility(X, noun_artifact) :- heat(X, noun_artifact).
utility(X, noun_artifact) :- utility(X),not abnormal_d_artifact(X),not -utility(X, noun_artifact).
vapor(X, noun_substance) :- steam(X, noun_substance).
vapor(X, noun_substance) :- vapor(X),not abnormal_d_substance(X),not -vapor(X, noun_substance).
vehicle(X, noun_artifact) :- vehicle(X),not abnormal_d_artifact(X),not -vehicle(X, noun_artifact).
vehicle(X, noun_artifact) :- wheeled_vehicle(X, noun_artifact).
vessel(X, noun_artifact) :- boiler(X, noun_artifact).
vessel(X, noun_artifact) :- vessel(X),not abnormal_d_artifact(X),not -vessel(X, noun_artifact).
waste(X, noun_substance) :- body_waste(X, noun_substance).
waste(X, noun_substance) :- waste(X),not abnormal_d_substance(X),not -waste(X, noun_substance).
water(X, noun_artifact) :- water(X),not -water(X, noun_artifact),-water(X, noun_object),not water(X, noun_substance),not water(X, noun_food).
water(X, noun_artifact) :- water(X),not abnormal_d_artifact(X),not -water(X, noun_artifact).
water(X, noun_food) :- water(X),not -water(X, noun_food),-water(X, noun_object),-water(X, noun_artifact),-water(X, noun_substance).
water(X, noun_food) :- water(X),not abnormal_d_food(X),not -water(X, noun_food).
water(X, noun_object) :- water(X),not abnormal_d_object(X),not -water(X, noun_object).
water(X, noun_substance) :- water(X),not -water(X, noun_substance),-water(X, noun_object),-water(X, noun_artifact),not water(X, noun_food).
water(X, noun_substance) :- water(X),not abnormal_d_substance(X),not -water(X, noun_substance).
wheeled_vehicle(X, noun_artifact) :- cycle(X, noun_artifact).
wheeled_vehicle(X, noun_artifact) :- wheeled_vehicle(X),not abnormal_d_artifact(X),not -wheeled_vehicle(X, noun_artifact).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
work(X, noun_artifact) :- publication(X, noun_communication).
work(X, noun_artifact) :- work(X),not -work(X, noun_artifact),-work(X, noun_act),not work(X, noun_cognition),not work(X, noun_phenomenon).
work(X, noun_artifact) :- work(X),not abnormal_d_artifact(X),not -work(X, noun_artifact).
work(X, noun_cognition) :- work(X),not -work(X, noun_cognition),-work(X, noun_act),-work(X, noun_artifact),not work(X, noun_phenomenon).
work(X, noun_cognition) :- work(X),not abnormal_d_cognition(X),not -work(X, noun_cognition).
work(X, noun_phenomenon) :- work(X),not -work(X, noun_phenomenon),-work(X, noun_act),-work(X, noun_artifact),-work(X, noun_cognition).
work(X, noun_phenomenon) :- work(X),not abnormal_d_phenomenon(X),not -work(X, noun_phenomenon).
writ(X, noun_communication) :- process(X, noun_communication).
writ(X, noun_communication) :- writ(X),not abnormal_d_communication(X),not -writ(X, noun_communication).
writing(X, noun_communication) :- document(X, noun_communication).
writing(X, noun_communication) :- notation(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).