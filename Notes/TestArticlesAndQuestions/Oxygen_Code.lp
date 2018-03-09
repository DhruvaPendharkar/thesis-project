%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(abundant_element, silicon_dioxide).
_is(dioxygen, gas).
_is(element, silicon_dioxide).
_is(oxygen, abundant_element).
_is(oxygen, chemical_element).
_is(oxygen, compound).
_is(oxygen, element).
_is(oxygen, member).
_is(oxygen, nonmetal).
_is(oxygen, reactive_nonmetal).
_is(oxygen, third_most_abundant_element).
_mod(agent, oxidizing).
_mod(atom, two).
_mod(atomic_number, 8).
_mod(element, abundant).
_mod(element, chemical).
_mod(element, most).
_mod(element, third_most).
_mod(form, readily).
_mod(gas, colorless).
_mod(gas, diatomic).
_mod(gas, odorless).
_mod(oxygen_gas, diatomic).
_mod(oxygen_levels, atmospheric).
_mod(percent, 8).
_mod(temperature, standard).
_mod(trend, downward).
_mod(trend, global).
_possess(crust, mass).
_possess(earth, atmosphere).
_possess(earth, crust).
_property(atom, of(oxygen)).
_property(bind, at(pressure)).
_property(bind, at(temperature)).
_property(burning, of(fossil_fuel)).
_property(chalcogen_group, on(periodic_table)).
_property(compound, like(oxide)).
_property(compound, with(element)).
_property(element, after(helium)).
_property(element, after(hydrogen)).
_property(element, as(part)).
_property(element, by(mass)).
_property(element, in(crust)).
_property(element, in(universe)).
_property(element, of(oxide_compounds)).
_property(element, with('8_atomic_number')).
_property(element, with(symbol_o)).
_property(form, with('formula_o2')).
_property(half, of(mass)).
_property(member, of(chalcogen_group)).
_property(monitoring, of(oxygen_levels)).
_property(percent, of(atmosphere)).
_relation(7, 8, _clcomplement).
_relation(element, 12, _clause).
agent(agent).
atmosphere(atmosphere).
atom(atom).
atomic_number(atomic_number).
burning(burning).
compound(compound).
compound(oxygen).
crust(crust).
earth(earth).
element(element).
element(oxygen).
element(silicon_dioxide).
event(10, show, monitoring, global_downward_trend).
event(10, show, monitoring, trend).
event(12, make, null, half).
event(12, make, null, half_of_mass).
event(5, form, agent, null).
event(5, form, oxidizing_agent, null).
event(7, bind, atom, null).
event(8, form, atom, dioxygen).
event(8, form, null, dioxygen).
event(9, constitute, diatomic_oxygen_gas, null).
event(9, constitute, oxygen_gas, null).
gas(dioxygen).
gas(gas).
half(half).
hydrogen(hydrogen).
mass(mass).
member(member).
member(oxygen).
monitoring(monitoring).
nonmetal(oxygen).
number(20).
number(8).
number(two).
oxide(oxide).
oxygen(oxygen).
part(part).
percent(percent).
pressure(pressure).
silicon_dioxide(silicon_dioxide).
temperature(temperature).
trend(trend).
universe(universe).
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
act(X, noun_tops) :- group_action(X, noun_act).
acting(X, noun_act) :- acting(X),not abnormal_d_act(X),not -acting(X, noun_act).
acting(X, noun_act) :- portrayal(X, noun_act).
action(X, noun_act) :- accomplishment(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
activity(X, noun_act) :- acting(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- attempt(X, noun_act).
activity(X, noun_act) :- ceremony(X, noun_act).
activity(X, noun_act) :- practice(X, noun_act).
activity(X, noun_act) :- sensory_activity(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
adversity(X, noun_state) :- adversity(X),not abnormal_d_state(X),not -adversity(X, noun_state).
adversity(X, noun_state) :- distress(X, noun_state).
agent(X, noun_communication) :- agent(X),not -agent(X, noun_communication),-agent(X, noun_object),-agent(X, noun_substance),-agent(X, noun_person).
agent(X, noun_communication) :- agent(X),not abnormal_d_communication(X),not -agent(X, noun_communication).
agent(X, noun_object) :- agent(X),not abnormal_d_object(X),not -agent(X, noun_object).
agent(X, noun_person) :- agent(X),not -agent(X, noun_person),-agent(X, noun_object),-agent(X, noun_substance),not agent(X, noun_communication).
agent(X, noun_person) :- agent(X),not abnormal_d_person(X),not -agent(X, noun_person).
agent(X, noun_substance) :- agent(X),not -agent(X, noun_substance),-agent(X, noun_object),not agent(X, noun_person),not agent(X, noun_communication).
agent(X, noun_substance) :- agent(X),not abnormal_d_substance(X),not -agent(X, noun_substance).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- enclosure(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
assets(X, noun_possession) :- assets(X),not abnormal_d_possession(X),not -assets(X, noun_possession).
assets(X, noun_possession) :- part(X, noun_possession).
associate(X, noun_person) :- associate(X),not abnormal_d_person(X),not -associate(X, noun_person).
associate(X, noun_person) :- member(X, noun_person).
atmosphere(X, noun_attribute) :- atmosphere(X),not -atmosphere(X, noun_attribute),-atmosphere(X, noun_quantity),-atmosphere(X, noun_location),-atmosphere(X, noun_state),-atmosphere(X, noun_object).
atmosphere(X, noun_attribute) :- atmosphere(X),not abnormal_d_attribute(X),not -atmosphere(X, noun_attribute).
atmosphere(X, noun_location) :- atmosphere(X),not -atmosphere(X, noun_location),-atmosphere(X, noun_quantity),not atmosphere(X, noun_state),not atmosphere(X, noun_object),not atmosphere(X, noun_attribute).
atmosphere(X, noun_location) :- atmosphere(X),not abnormal_d_location(X),not -atmosphere(X, noun_location).
atmosphere(X, noun_object) :- atmosphere(X),not -atmosphere(X, noun_object),-atmosphere(X, noun_quantity),-atmosphere(X, noun_location),-atmosphere(X, noun_state),not atmosphere(X, noun_attribute).
atmosphere(X, noun_object) :- atmosphere(X),not abnormal_d_object(X),not -atmosphere(X, noun_object).
atmosphere(X, noun_quantity) :- atmosphere(X),not abnormal_d_quantity(X),not -atmosphere(X, noun_quantity).
atmosphere(X, noun_state) :- atmosphere(X),not -atmosphere(X, noun_state),-atmosphere(X, noun_quantity),-atmosphere(X, noun_location),not atmosphere(X, noun_object),not atmosphere(X, noun_attribute).
atmosphere(X, noun_state) :- atmosphere(X),not abnormal_d_state(X),not -atmosphere(X, noun_state).
atmospheric_phenomenon(X, noun_phenomenon) :- atmospheric_phenomenon(X),not abnormal_d_phenomenon(X),not -atmospheric_phenomenon(X, noun_phenomenon).
atmospheric_phenomenon(X, noun_phenomenon) :- weather(X, noun_phenomenon).
atom(X, noun_substance) :- atom(X),not abnormal_d_substance(X),not -atom(X, noun_substance).
atomic_number(X, noun_quantity) :- atomic_number(X),not abnormal_d_quantity(X),not -atomic_number(X, noun_quantity).
attempt(X, noun_act) :- attempt(X),not abnormal_d_act(X),not -attempt(X, noun_act).
attempt(X, noun_act) :- part(X, noun_act).
attitude(X, noun_cognition) :- attitude(X),not abnormal_d_cognition(X),not -attitude(X, noun_cognition).
attitude(X, noun_cognition) :- inclination(X, noun_cognition).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- shape(X, noun_tops).
attribute(X, noun_tops) :- state(X, noun_tops).
attribute(X, noun_tops) :- trait(X, noun_attribute).
auditory_communication(X, noun_communication) :- auditory_communication(X),not abnormal_d_communication(X),not -auditory_communication(X, noun_communication).
auditory_communication(X, noun_communication) :- music(X, noun_communication).
bar(X, noun_artifact) :- bar(X),not abnormal_d_artifact(X),not -bar(X, noun_artifact).
bar(X, noun_artifact) :- lever(X, noun_artifact).
basic_cognitive_process(X, noun_cognition) :- basic_cognitive_process(X),not abnormal_d_cognition(X),not -basic_cognitive_process(X, noun_cognition).
basic_cognitive_process(X, noun_cognition) :- discrimination(X, noun_cognition).
basic_cognitive_process(X, noun_cognition) :- perception(X, noun_cognition).
body(X, noun_object) :- body(X),not abnormal_d_object(X),not -body(X, noun_object).
body(X, noun_object) :- mass(X, noun_object).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
body_part(X, noun_body) :- external_body_part(X, noun_body).
body_part(X, noun_body) :- organ(X, noun_body).
burning(X, noun_act) :- burning(X),not -burning(X, noun_act),-burning(X, noun_state),-burning(X, noun_process).
burning(X, noun_act) :- burning(X),not abnormal_d_act(X),not -burning(X, noun_act).
burning(X, noun_process) :- burning(X),not -burning(X, noun_process),-burning(X, noun_state),not burning(X, noun_act).
burning(X, noun_process) :- burning(X),not abnormal_d_process(X),not -burning(X, noun_process).
burning(X, noun_state) :- burning(X),not abnormal_d_state(X),not -burning(X, noun_state).
businessperson(X, noun_person) :- agent(X, noun_person).
businessperson(X, noun_person) :- businessperson(X),not abnormal_d_person(X),not -businessperson(X, noun_person).
capitalist(X, noun_person) :- businessperson(X, noun_person).
capitalist(X, noun_person) :- capitalist(X),not abnormal_d_person(X),not -capitalist(X, noun_person).
causal_agent(X, noun_tops) :- agent(X, noun_object).
causal_agent(X, noun_tops) :- agent(X, noun_substance).
causal_agent(X, noun_tops) :- causal_agent(X),not abnormal_d_tops(X),not -causal_agent(X, noun_tops).
celestial_body(X, noun_object) :- celestial_body(X),not abnormal_d_object(X),not -celestial_body(X, noun_object).
celestial_body(X, noun_object) :- planet(X, noun_object).
ceremony(X, noun_act) :- ceremony(X),not abnormal_d_act(X),not -ceremony(X, noun_act).
ceremony(X, noun_act) :- religious_ceremony(X, noun_act).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- change_of_integrity(X, noun_act).
change_of_integrity(X, noun_act) :- burning(X, noun_act).
change_of_integrity(X, noun_act) :- change_of_integrity(X),not abnormal_d_act(X),not -change_of_integrity(X, noun_act).
chemical_element(X, noun_substance) :- chemical_element(X),not abnormal_d_substance(X),not -chemical_element(X, noun_substance).
chemical_element(X, noun_substance) :- hydrogen(X, noun_substance).
chemical_element(X, noun_substance) :- oxygen(X, noun_substance).
chemical_phenomenon(X, noun_phenomenon) :- chemical_phenomenon(X),not abnormal_d_phenomenon(X),not -chemical_phenomenon(X, noun_phenomenon).
chemical_phenomenon(X, noun_phenomenon) :- state_of_matter(X, noun_state).
chemical_process(X, noun_process) :- chemical_process(X),not abnormal_d_process(X),not -chemical_process(X, noun_process).
chemical_process(X, noun_process) :- chemical_reaction(X, noun_process).
chemical_reaction(X, noun_process) :- chemical_reaction(X),not abnormal_d_process(X),not -chemical_reaction(X, noun_process).
chemical_reaction(X, noun_process) :- oxidation(X, noun_process).
class(X, noun_group) :- class(X),not abnormal_d_group(X),not -class(X, noun_group).
class(X, noun_group) :- grammatical_category(X, noun_communication).
cognition(X, noun_tops) :- attitude(X, noun_cognition).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- information(X, noun_cognition).
cognition(X, noun_tops) :- process(X, noun_cognition).
cognitive_state(X, noun_cognition) :- cognitive_state(X),not abnormal_d_cognition(X),not -cognitive_state(X, noun_cognition).
cognitive_state(X, noun_cognition) :- curiosity(X, noun_cognition).
collection(X, noun_group) :- class(X, noun_group).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- mass(X, noun_group).
collection(X, noun_group) :- universe(X, noun_cognition).
common_fraction(X, noun_quantity) :- common_fraction(X),not abnormal_d_quantity(X),not -common_fraction(X, noun_quantity).
common_fraction(X, noun_quantity) :- half(X, noun_quantity).
communication(X, noun_tops) :- auditory_communication(X, noun_communication).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- expressive_style(X, noun_communication).
communication(X, noun_tops) :- written_communication(X, noun_communication).
communicator(X, noun_person) :- communicator(X),not abnormal_d_person(X),not -communicator(X, noun_person).
communicator(X, noun_person) :- negotiator(X, noun_person).
complex_number(X, noun_quantity) :- complex_number(X),not abnormal_d_quantity(X),not -complex_number(X, noun_quantity).
complex_number(X, noun_quantity) :- real_number(X, noun_quantity).
compound(X, noun_artifact) :- compound(X),not -compound(X, noun_artifact),-compound(X, noun_substance),-compound(X, noun_cognition).
compound(X, noun_artifact) :- compound(X),not abnormal_d_artifact(X),not -compound(X, noun_artifact).
compound(X, noun_cognition) :- compound(X),not -compound(X, noun_cognition),-compound(X, noun_substance),not compound(X, noun_artifact).
compound(X, noun_cognition) :- compound(X),not abnormal_d_cognition(X),not -compound(X, noun_cognition).
compound(X, noun_substance) :- compound(X),not abnormal_d_substance(X),not -compound(X, noun_substance).
compound(X, noun_substance) :- oxide(X, noun_substance).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- part(X, noun_cognition).
concept(X, noun_cognition) :- whole(X, noun_cognition).
concern(X, noun_cognition) :- concern(X),not abnormal_d_cognition(X),not -concern(X, noun_cognition).
concern(X, noun_cognition) :- earth(X, noun_cognition).
concern(X, noun_cognition) :- part(X, noun_cognition).
condition(X, noun_state) :- atmosphere(X, noun_state).
condition(X, noun_state) :- condition(X),not abnormal_d_state(X),not -condition(X, noun_state).
condition(X, noun_state) :- fortune(X, noun_state).
condition(X, noun_state) :- need(X, noun_state).
connection(X, noun_artifact) :- connection(X),not abnormal_d_artifact(X),not -connection(X, noun_artifact).
connection(X, noun_artifact) :- earth(X, noun_artifact).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
content(X, noun_cognition) :- universe(X, noun_cognition).
corporal_punishment(X, noun_act) :- corporal_punishment(X),not abnormal_d_act(X),not -corporal_punishment(X, noun_act).
corporal_punishment(X, noun_act) :- execution(X, noun_act).
covering(X, noun_object) :- covering(X),not abnormal_d_object(X),not -covering(X, noun_object).
covering(X, noun_object) :- crust(X, noun_object).
crust(X, noun_attribute) :- crust(X),not -crust(X, noun_attribute),-crust(X, noun_object).
crust(X, noun_attribute) :- crust(X),not abnormal_d_attribute(X),not -crust(X, noun_attribute).
crust(X, noun_object) :- crust(X),not abnormal_d_object(X),not -crust(X, noun_object).
curiosity(X, noun_cognition) :- curiosity(X),not abnormal_d_cognition(X),not -curiosity(X, noun_cognition).
curiosity(X, noun_cognition) :- interest(X, noun_cognition).
deed(X, noun_act) :- deed(X),not abnormal_d_act(X),not -deed(X, noun_act).
deed(X, noun_act) :- propulsion(X, noun_act).
definite_quantity(X, noun_quantity) :- definite_quantity(X),not abnormal_d_quantity(X),not -definite_quantity(X, noun_quantity).
definite_quantity(X, noun_quantity) :- number(X, noun_quantity).
definite_quantity(X, noun_quantity) :- unit_of_measurement(X, noun_quantity).
demeanor(X, noun_attribute) :- demeanor(X),not abnormal_d_attribute(X),not -demeanor(X, noun_attribute).
demeanor(X, noun_attribute) :- manner(X, noun_attribute).
direction(X, noun_location) :- direction(X),not abnormal_d_location(X),not -direction(X, noun_location).
direction(X, noun_location) :- trend(X, noun_location).
discourtesy(X, noun_attribute) :- crust(X, noun_attribute).
discourtesy(X, noun_attribute) :- discourtesy(X),not abnormal_d_attribute(X),not -discourtesy(X, noun_attribute).
discrimination(X, noun_cognition) :- discrimination(X),not abnormal_d_cognition(X),not -discrimination(X, noun_cognition).
discrimination(X, noun_cognition) :- taste(X, noun_cognition).
distress(X, noun_state) :- distress(X),not abnormal_d_state(X),not -distress(X, noun_state).
distress(X, noun_state) :- pressure(X, noun_state).
duty(X, noun_act) :- duty(X),not abnormal_d_act(X),not -duty(X, noun_act).
duty(X, noun_act) :- part(X, noun_act).
earth(X, noun_artifact) :- earth(X),not -earth(X, noun_artifact),-earth(X, noun_substance),-earth(X, noun_object),-earth(X, noun_location),-earth(X, noun_cognition).
earth(X, noun_artifact) :- earth(X),not abnormal_d_artifact(X),not -earth(X, noun_artifact).
earth(X, noun_cognition) :- earth(X),not -earth(X, noun_cognition),-earth(X, noun_substance),-earth(X, noun_object),-earth(X, noun_location),not earth(X, noun_artifact).
earth(X, noun_cognition) :- earth(X),not abnormal_d_cognition(X),not -earth(X, noun_cognition).
earth(X, noun_location) :- earth(X),not -earth(X, noun_location),-earth(X, noun_substance),-earth(X, noun_object),not earth(X, noun_cognition),not earth(X, noun_artifact).
earth(X, noun_location) :- earth(X),not abnormal_d_location(X),not -earth(X, noun_location).
earth(X, noun_object) :- earth(X),not -earth(X, noun_object),-earth(X, noun_substance),not earth(X, noun_location),not earth(X, noun_cognition),not earth(X, noun_artifact).
earth(X, noun_object) :- earth(X),not abnormal_d_object(X),not -earth(X, noun_object).
earth(X, noun_substance) :- earth(X),not abnormal_d_substance(X),not -earth(X, noun_substance).
element(X, noun_artifact) :- element(X),not -element(X, noun_artifact),-element(X, noun_cognition),-element(X, noun_substance),not element(X, noun_location),not element(X, noun_state),not element(X, noun_shape).
element(X, noun_artifact) :- element(X),not abnormal_d_artifact(X),not -element(X, noun_artifact).
element(X, noun_cognition) :- element(X),not abnormal_d_cognition(X),not -element(X, noun_cognition).
element(X, noun_location) :- element(X),not -element(X, noun_location),-element(X, noun_cognition),-element(X, noun_substance),-element(X, noun_artifact),not element(X, noun_state),not element(X, noun_shape).
element(X, noun_location) :- element(X),not abnormal_d_location(X),not -element(X, noun_location).
element(X, noun_shape) :- element(X),not -element(X, noun_shape),-element(X, noun_cognition),-element(X, noun_substance),-element(X, noun_artifact),-element(X, noun_location),-element(X, noun_state).
element(X, noun_shape) :- element(X),not abnormal_d_shape(X),not -element(X, noun_shape).
element(X, noun_state) :- element(X),not -element(X, noun_state),-element(X, noun_cognition),-element(X, noun_substance),-element(X, noun_artifact),-element(X, noun_location),not element(X, noun_shape).
element(X, noun_state) :- element(X),not abnormal_d_state(X),not -element(X, noun_state).
element(X, noun_substance) :- earth(X, noun_substance).
element(X, noun_substance) :- element(X),not -element(X, noun_substance),-element(X, noun_cognition),not element(X, noun_artifact),not element(X, noun_location),not element(X, noun_state),not element(X, noun_shape).
element(X, noun_substance) :- element(X),not abnormal_d_substance(X),not -element(X, noun_substance).
enclosure(X, noun_artifact) :- compound(X, noun_artifact).
enclosure(X, noun_artifact) :- enclosure(X),not abnormal_d_artifact(X),not -enclosure(X, noun_artifact).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
environment(X, noun_location) :- element(X, noun_location).
environment(X, noun_location) :- environment(X),not abnormal_d_location(X),not -environment(X, noun_location).
erectile_organ(X, noun_body) :- erectile_organ(X),not abnormal_d_body(X),not -erectile_organ(X, noun_body).
erectile_organ(X, noun_body) :- member(X, noun_body).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
evidence(X, noun_cognition) :- evidence(X),not abnormal_d_cognition(X),not -evidence(X, noun_cognition).
evidence(X, noun_cognition) :- symptom(X, noun_state).
execution(X, noun_act) :- burning(X, noun_act).
execution(X, noun_act) :- execution(X),not abnormal_d_act(X),not -execution(X, noun_act).
expressive_style(X, noun_communication) :- expressive_style(X),not abnormal_d_communication(X),not -expressive_style(X, noun_communication).
expressive_style(X, noun_communication) :- music_genre(X, noun_communication).
external_body_part(X, noun_body) :- external_body_part(X),not abnormal_d_body(X),not -external_body_part(X, noun_body).
external_body_part(X, noun_body) :- member(X, noun_body).
fluid(X, noun_substance) :- fluid(X),not abnormal_d_substance(X),not -fluid(X, noun_substance).
fluid(X, noun_substance) :- gas(X, noun_substance).
force(X, noun_attribute) :- force(X),not abnormal_d_attribute(X),not -force(X, noun_attribute).
force(X, noun_attribute) :- pressure(X, noun_attribute).
fortune(X, noun_state) :- fortune(X),not abnormal_d_state(X),not -fortune(X, noun_state).
fortune(X, noun_state) :- misfortune(X, noun_state).
fossil_fuel(X, noun_substance) :- fossil_fuel(X),not abnormal_d_substance(X),not -fossil_fuel(X, noun_substance).
fossil_fuel(X, noun_substance) :- gas(X, noun_substance).
fraction(X, noun_quantity) :- common_fraction(X, noun_quantity).
fraction(X, noun_quantity) :- fraction(X),not abnormal_d_quantity(X),not -fraction(X, noun_quantity).
fuel(X, noun_substance) :- fossil_fuel(X, noun_substance).
fuel(X, noun_substance) :- fuel(X),not abnormal_d_substance(X),not -fuel(X, noun_substance).
fuel(X, noun_substance) :- gas(X, noun_substance).
gas(X, noun_artifact) :- gas(X),not -gas(X, noun_artifact),-gas(X, noun_substance),-gas(X, noun_state).
gas(X, noun_artifact) :- gas(X),not abnormal_d_artifact(X),not -gas(X, noun_artifact).
gas(X, noun_state) :- gas(X),not -gas(X, noun_state),-gas(X, noun_substance),not gas(X, noun_artifact).
gas(X, noun_state) :- gas(X),not abnormal_d_state(X),not -gas(X, noun_state).
gas(X, noun_substance) :- atmosphere(X, noun_object).
gas(X, noun_substance) :- gas(X),not abnormal_d_substance(X),not -gas(X, noun_substance).
geographical_area(X, noun_location) :- environment(X, noun_location).
geographical_area(X, noun_location) :- geographical_area(X),not abnormal_d_location(X),not -geographical_area(X, noun_location).
grammatical_category(X, noun_communication) :- grammatical_category(X),not abnormal_d_communication(X),not -grammatical_category(X, noun_communication).
grammatical_category(X, noun_communication) :- semantic_role(X, noun_communication).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- mass(X, noun_group).
group(X, noun_tops) :- social_group(X, noun_group).
group_action(X, noun_act) :- group_action(X),not abnormal_d_act(X),not -group_action(X, noun_act).
group_action(X, noun_act) :- social_control(X, noun_act).
half(X, noun_quantity) :- half(X),not abnormal_d_quantity(X),not -half(X, noun_quantity).
half(X, noun_time) :- half(X),not -half(X, noun_time),-half(X, noun_quantity).
half(X, noun_time) :- half(X),not abnormal_d_time(X),not -half(X, noun_time).
hydrogen(X, noun_substance) :- hydrogen(X),not abnormal_d_substance(X),not -hydrogen(X, noun_substance).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
implement(X, noun_artifact) :- bar(X, noun_artifact).
implement(X, noun_artifact) :- implement(X),not abnormal_d_artifact(X),not -implement(X, noun_artifact).
inclination(X, noun_cognition) :- inclination(X),not abnormal_d_cognition(X),not -inclination(X, noun_cognition).
inclination(X, noun_cognition) :- trend(X, noun_cognition).
indefinite_quantity(X, noun_quantity) :- indefinite_quantity(X),not abnormal_d_quantity(X),not -indefinite_quantity(X, noun_quantity).
indefinite_quantity(X, noun_quantity) :- large_indefinite_quantity(X, noun_quantity).
influence(X, noun_attribute) :- force(X, noun_attribute).
influence(X, noun_attribute) :- influence(X),not abnormal_d_attribute(X),not -influence(X, noun_attribute).
information(X, noun_cognition) :- evidence(X, noun_cognition).
information(X, noun_cognition) :- information(X),not abnormal_d_cognition(X),not -information(X, noun_cognition).
instrumentality(X, noun_artifact) :- connection(X, noun_artifact).
instrumentality(X, noun_artifact) :- implement(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
interest(X, noun_cognition) :- concern(X, noun_cognition).
interest(X, noun_cognition) :- interest(X),not abnormal_d_cognition(X),not -interest(X, noun_cognition).
large_indefinite_quantity(X, noun_quantity) :- large_indefinite_quantity(X),not abnormal_d_quantity(X),not -large_indefinite_quantity(X, noun_quantity).
large_indefinite_quantity(X, noun_quantity) :- mass(X, noun_quantity).
layer(X, noun_location) :- crust(X, noun_object).
layer(X, noun_location) :- layer(X),not abnormal_d_location(X),not -layer(X, noun_location).
lever(X, noun_artifact) :- lever(X),not abnormal_d_artifact(X),not -lever(X, noun_artifact).
lever(X, noun_artifact) :- pedal(X, noun_artifact).
line(X, noun_location) :- line(X),not abnormal_d_location(X),not -line(X, noun_location).
line(X, noun_location) :- part(X, noun_body).
line(X, noun_location) :- path(X, noun_location).
line(X, noun_shape) :- line(X),not -line(X, noun_shape),-line(X, noun_location).
line(X, noun_shape) :- line(X),not abnormal_d_shape(X),not -line(X, noun_shape).
line(X, noun_shape) :- straight_line(X, noun_shape).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- earth(X, noun_location).
location(X, noun_tops) :- line(X, noun_location).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- part(X, noun_location).
location(X, noun_tops) :- region(X, noun_location).
look(X, noun_act) :- look(X),not abnormal_d_act(X),not -look(X, noun_act).
look(X, noun_act) :- observation(X, noun_act).
magnitude(X, noun_attribute) :- magnitude(X),not abnormal_d_attribute(X),not -magnitude(X, noun_attribute).
magnitude(X, noun_attribute) :- mass(X, noun_attribute).
magnitude_relation(X, noun_relation) :- magnitude_relation(X),not abnormal_d_relation(X),not -magnitude_relation(X, noun_relation).
magnitude_relation(X, noun_relation) :- ratio(X, noun_relation).
maltreatment(X, noun_act) :- maltreatment(X),not abnormal_d_act(X),not -maltreatment(X, noun_act).
maltreatment(X, noun_act) :- persecution(X, noun_act).
manner(X, noun_attribute) :- discourtesy(X, noun_attribute).
manner(X, noun_attribute) :- manner(X),not abnormal_d_attribute(X),not -manner(X, noun_attribute).
mass(X, noun_act) :- mass(X),not -mass(X, noun_act),-mass(X, noun_attribute),-mass(X, noun_quantity),not mass(X, noun_object),not mass(X, noun_group),not mass(X, noun_communication).
mass(X, noun_act) :- mass(X),not abnormal_d_act(X),not -mass(X, noun_act).
mass(X, noun_attribute) :- mass(X),not abnormal_d_attribute(X),not -mass(X, noun_attribute).
mass(X, noun_communication) :- mass(X),not -mass(X, noun_communication),-mass(X, noun_attribute),-mass(X, noun_quantity),-mass(X, noun_act),-mass(X, noun_object),-mass(X, noun_group).
mass(X, noun_communication) :- mass(X),not abnormal_d_communication(X),not -mass(X, noun_communication).
mass(X, noun_group) :- mass(X),not -mass(X, noun_group),-mass(X, noun_attribute),-mass(X, noun_quantity),-mass(X, noun_act),-mass(X, noun_object),not mass(X, noun_communication).
mass(X, noun_group) :- mass(X),not abnormal_d_group(X),not -mass(X, noun_group).
mass(X, noun_object) :- mass(X),not -mass(X, noun_object),-mass(X, noun_attribute),-mass(X, noun_quantity),-mass(X, noun_act),not mass(X, noun_group),not mass(X, noun_communication).
mass(X, noun_object) :- mass(X),not abnormal_d_object(X),not -mass(X, noun_object).
mass(X, noun_quantity) :- mass(X),not -mass(X, noun_quantity),-mass(X, noun_attribute),not mass(X, noun_act),not mass(X, noun_object),not mass(X, noun_group),not mass(X, noun_communication).
mass(X, noun_quantity) :- mass(X),not abnormal_d_quantity(X),not -mass(X, noun_quantity).
material(X, noun_substance) :- atom(X, noun_substance).
material(X, noun_substance) :- earth(X, noun_substance).
material(X, noun_substance) :- material(X),not abnormal_d_substance(X),not -material(X, noun_substance).
measure(X, noun_tops) :- definite_quantity(X, noun_quantity).
measure(X, noun_tops) :- indefinite_quantity(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
measure(X, noun_tops) :- playing_period(X, noun_time).
member(X, noun_body) :- member(X),not -member(X, noun_body),-member(X, noun_person),-member(X, noun_group),-member(X, noun_relation).
member(X, noun_body) :- member(X),not abnormal_d_body(X),not -member(X, noun_body).
member(X, noun_group) :- member(X),not -member(X, noun_group),-member(X, noun_person),not member(X, noun_relation),not member(X, noun_body).
member(X, noun_group) :- member(X),not abnormal_d_group(X),not -member(X, noun_group).
member(X, noun_person) :- member(X),not abnormal_d_person(X),not -member(X, noun_person).
member(X, noun_relation) :- member(X),not -member(X, noun_relation),-member(X, noun_person),-member(X, noun_group),not member(X, noun_body).
member(X, noun_relation) :- member(X),not abnormal_d_relation(X),not -member(X, noun_relation).
misfortune(X, noun_state) :- adversity(X, noun_state).
misfortune(X, noun_state) :- misfortune(X),not abnormal_d_state(X),not -misfortune(X, noun_state).
mistreatment(X, noun_act) :- maltreatment(X, noun_act).
mistreatment(X, noun_act) :- mistreatment(X),not abnormal_d_act(X),not -mistreatment(X, noun_act).
monitoring(X, noun_act) :- monitoring(X),not abnormal_d_act(X),not -monitoring(X, noun_act).
music(X, noun_communication) :- music(X),not abnormal_d_communication(X),not -music(X, noun_communication).
music(X, noun_communication) :- tune(X, noun_communication).
music_genre(X, noun_communication) :- music_genre(X),not abnormal_d_communication(X),not -music_genre(X, noun_communication).
music_genre(X, noun_communication) :- religious_music(X, noun_communication).
natural_object(X, noun_tops) :- body(X, noun_object).
natural_object(X, noun_tops) :- celestial_body(X, noun_object).
natural_object(X, noun_tops) :- covering(X, noun_object).
natural_object(X, noun_tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_tops).
natural_object(X, noun_tops) :- universe(X, noun_object).
natural_phenomenon(X, noun_phenomenon) :- chemical_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X, noun_phenomenon).
natural_process(X, noun_process) :- chemical_process(X, noun_process).
natural_process(X, noun_process) :- natural_process(X),not abnormal_d_process(X),not -natural_process(X, noun_process).
necessity(X, noun_state) :- necessity(X),not abnormal_d_state(X),not -necessity(X, noun_state).
necessity(X, noun_state) :- urgency(X, noun_state).
need(X, noun_state) :- necessity(X, noun_state).
need(X, noun_state) :- need(X),not abnormal_d_state(X),not -need(X, noun_state).
negotiator(X, noun_person) :- negotiator(X),not abnormal_d_person(X),not -negotiator(X, noun_person).
negotiator(X, noun_person) :- representative(X, noun_person).
number(X, noun_quantity) :- atomic_number(X, noun_quantity).
number(X, noun_quantity) :- complex_number(X, noun_quantity).
number(X, noun_quantity) :- number(X),not abnormal_d_quantity(X),not -number(X, noun_quantity).
object(X, noun_tops) :- earth(X, noun_object).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- part(X, noun_artifact).
object(X, noun_tops) :- whole(X, noun_tops).
observation(X, noun_act) :- monitoring(X, noun_act).
observation(X, noun_act) :- observation(X),not abnormal_d_act(X),not -observation(X, noun_act).
official(X, noun_person) :- agent(X, noun_person).
official(X, noun_person) :- official(X),not abnormal_d_person(X),not -official(X, noun_person).
organ(X, noun_body) :- erectile_organ(X, noun_body).
organ(X, noun_body) :- organ(X),not abnormal_d_body(X),not -organ(X, noun_body).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
oxidation(X, noun_process) :- burning(X, noun_process).
oxidation(X, noun_process) :- oxidation(X),not abnormal_d_process(X),not -oxidation(X, noun_process).
oxide(X, noun_substance) :- oxide(X),not abnormal_d_substance(X),not -oxide(X, noun_substance).
oxide(X, noun_substance) :- silicon_dioxide(X, noun_substance).
oxygen(X, noun_substance) :- oxygen(X),not abnormal_d_substance(X),not -oxygen(X, noun_substance).
pain(X, noun_state) :- burning(X, noun_state).
pain(X, noun_state) :- pain(X),not abnormal_d_state(X),not -pain(X, noun_state).
part(X, noun_act) :- part(X),not -part(X, noun_act),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_act) :- part(X),not abnormal_d_act(X),not -part(X, noun_act).
part(X, noun_artifact) :- element(X, noun_artifact).
part(X, noun_artifact) :- part(X),not -part(X, noun_artifact),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),not part(X, noun_act),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_artifact) :- part(X),not abnormal_d_artifact(X),not -part(X, noun_artifact).
part(X, noun_body) :- part(X),not -part(X, noun_body),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),-part(X, noun_object),-part(X, noun_possession),-part(X, noun_communication).
part(X, noun_body) :- part(X),not abnormal_d_body(X),not -part(X, noun_body).
part(X, noun_cognition) :- element(X, noun_cognition).
part(X, noun_cognition) :- part(X),not -part(X, noun_cognition),-part(X, noun_relation),-part(X, noun_location),not part(X, noun_artifact),not part(X, noun_act),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_cognition) :- part(X),not abnormal_d_cognition(X),not -part(X, noun_cognition).
part(X, noun_communication) :- part(X),not -part(X, noun_communication),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),-part(X, noun_object),-part(X, noun_possession),not part(X, noun_body).
part(X, noun_communication) :- part(X),not abnormal_d_communication(X),not -part(X, noun_communication).
part(X, noun_location) :- part(X),not -part(X, noun_location),-part(X, noun_relation),not part(X, noun_cognition),not part(X, noun_artifact),not part(X, noun_act),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_location) :- part(X),not abnormal_d_location(X),not -part(X, noun_location).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not -part(X, noun_object),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
part(X, noun_possession) :- part(X),not -part(X, noun_possession),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),-part(X, noun_object),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_possession) :- part(X),not abnormal_d_possession(X),not -part(X, noun_possession).
part(X, noun_relation) :- member(X, noun_relation).
part(X, noun_relation) :- part(X),not abnormal_d_relation(X),not -part(X, noun_relation).
path(X, noun_location) :- direction(X, noun_location).
path(X, noun_location) :- path(X),not abnormal_d_location(X),not -path(X, noun_location).
pedal(X, noun_artifact) :- gas(X, noun_artifact).
pedal(X, noun_artifact) :- pedal(X),not abnormal_d_artifact(X),not -pedal(X, noun_artifact).
peer(X, noun_person) :- associate(X, noun_person).
peer(X, noun_person) :- peer(X),not abnormal_d_person(X),not -peer(X, noun_person).
percent(X, noun_relation) :- percent(X),not abnormal_d_relation(X),not -percent(X, noun_relation).
perception(X, noun_cognition) :- perception(X),not abnormal_d_cognition(X),not -perception(X, noun_cognition).
perception(X, noun_cognition) :- somesthesia(X, noun_cognition).
persecution(X, noun_act) :- persecution(X),not abnormal_d_act(X),not -persecution(X, noun_act).
persecution(X, noun_act) :- torture(X, noun_act).
person(X, noun_tops) :- capitalist(X, noun_person).
person(X, noun_tops) :- communicator(X, noun_person).
person(X, noun_tops) :- peer(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
person(X, noun_tops) :- worker(X, noun_person).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- causal_agent(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
physical_phenomenon(X, noun_phenomenon) :- atmospheric_phenomenon(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X),not abnormal_d_phenomenon(X),not -physical_phenomenon(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- pressure(X, noun_phenomenon).
physical_property(X, noun_attribute) :- mass(X, noun_attribute).
physical_property(X, noun_attribute) :- physical_property(X),not abnormal_d_attribute(X),not -physical_property(X, noun_attribute).
physical_property(X, noun_attribute) :- temperature(X, noun_attribute).
physiological_state(X, noun_state) :- gas(X, noun_state).
physiological_state(X, noun_state) :- physiological_state(X),not abnormal_d_state(X),not -physiological_state(X, noun_state).
planet(X, noun_object) :- planet(X),not abnormal_d_object(X),not -planet(X, noun_object).
planet(X, noun_object) :- terrestrial_planet(X, noun_object).
playing_period(X, noun_time) :- half(X, noun_time).
playing_period(X, noun_time) :- playing_period(X),not abnormal_d_time(X),not -playing_period(X, noun_time).
portrayal(X, noun_act) :- part(X, noun_cognition).
portrayal(X, noun_act) :- portrayal(X),not abnormal_d_act(X),not -portrayal(X, noun_act).
possession(X, noun_tops) :- assets(X, noun_possession).
possession(X, noun_tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_tops).
power(X, noun_attribute) :- influence(X, noun_attribute).
power(X, noun_attribute) :- power(X),not abnormal_d_attribute(X),not -power(X, noun_attribute).
practice(X, noun_act) :- mistreatment(X, noun_act).
practice(X, noun_act) :- practice(X),not abnormal_d_act(X),not -practice(X, noun_act).
prayer(X, noun_communication) :- mass(X, noun_communication).
prayer(X, noun_communication) :- prayer(X),not abnormal_d_communication(X),not -prayer(X, noun_communication).
pressure(X, noun_act) :- pressure(X),not -pressure(X, noun_act),-pressure(X, noun_phenomenon),-pressure(X, noun_attribute),not pressure(X, noun_state),not pressure(X, noun_cognition).
pressure(X, noun_act) :- pressure(X),not abnormal_d_act(X),not -pressure(X, noun_act).
pressure(X, noun_attribute) :- pressure(X),not -pressure(X, noun_attribute),-pressure(X, noun_phenomenon),not pressure(X, noun_act),not pressure(X, noun_state),not pressure(X, noun_cognition).
pressure(X, noun_attribute) :- pressure(X),not abnormal_d_attribute(X),not -pressure(X, noun_attribute).
pressure(X, noun_cognition) :- pressure(X),not -pressure(X, noun_cognition),-pressure(X, noun_phenomenon),-pressure(X, noun_attribute),-pressure(X, noun_act),-pressure(X, noun_state).
pressure(X, noun_cognition) :- pressure(X),not abnormal_d_cognition(X),not -pressure(X, noun_cognition).
pressure(X, noun_phenomenon) :- pressure(X),not abnormal_d_phenomenon(X),not -pressure(X, noun_phenomenon).
pressure(X, noun_state) :- pressure(X),not -pressure(X, noun_state),-pressure(X, noun_phenomenon),-pressure(X, noun_attribute),-pressure(X, noun_act),not pressure(X, noun_cognition).
pressure(X, noun_state) :- pressure(X),not abnormal_d_state(X),not -pressure(X, noun_state).
pressure_unit(X, noun_quantity) :- atmosphere(X, noun_quantity).
pressure_unit(X, noun_quantity) :- pressure_unit(X),not abnormal_d_quantity(X),not -pressure_unit(X, noun_quantity).
process(X, noun_cognition) :- basic_cognitive_process(X, noun_cognition).
process(X, noun_cognition) :- process(X),not abnormal_d_cognition(X),not -process(X, noun_cognition).
process(X, noun_tops) :- natural_process(X, noun_process).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not -process(X, noun_tops),-process(X, noun_cognition).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
property(X, noun_attribute) :- magnitude(X, noun_attribute).
property(X, noun_attribute) :- physical_property(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
proportion(X, noun_relation) :- percent(X, noun_relation).
proportion(X, noun_relation) :- proportion(X),not abnormal_d_relation(X),not -proportion(X, noun_relation).
propulsion(X, noun_act) :- propulsion(X),not abnormal_d_act(X),not -propulsion(X, noun_act).
propulsion(X, noun_act) :- push(X, noun_act).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
punishment(X, noun_act) :- corporal_punishment(X, noun_act).
punishment(X, noun_act) :- punishment(X),not abnormal_d_act(X),not -punishment(X, noun_act).
push(X, noun_act) :- pressure(X, noun_act).
push(X, noun_act) :- push(X),not abnormal_d_act(X),not -push(X, noun_act).
quality(X, noun_attribute) :- atmosphere(X, noun_attribute).
quality(X, noun_attribute) :- power(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
quotient(X, noun_relation) :- proportion(X, noun_relation).
quotient(X, noun_relation) :- quotient(X),not abnormal_d_relation(X),not -quotient(X, noun_relation).
ratio(X, noun_relation) :- quotient(X, noun_relation).
ratio(X, noun_relation) :- ratio(X),not abnormal_d_relation(X),not -ratio(X, noun_relation).
rational_number(X, noun_quantity) :- fraction(X, noun_quantity).
rational_number(X, noun_quantity) :- rational_number(X),not abnormal_d_quantity(X),not -rational_number(X, noun_quantity).
real_number(X, noun_quantity) :- rational_number(X, noun_quantity).
real_number(X, noun_quantity) :- real_number(X),not abnormal_d_quantity(X),not -real_number(X, noun_quantity).
region(X, noun_location) :- atmosphere(X, noun_location).
region(X, noun_location) :- geographical_area(X, noun_location).
region(X, noun_location) :- layer(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
relation(X, noun_tops) :- magnitude_relation(X, noun_relation).
relation(X, noun_tops) :- part(X, noun_relation).
relation(X, noun_tops) :- possession(X, noun_tops).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
religious_ceremony(X, noun_act) :- mass(X, noun_act).
religious_ceremony(X, noun_act) :- religious_ceremony(X),not abnormal_d_act(X),not -religious_ceremony(X, noun_act).
religious_music(X, noun_communication) :- mass(X, noun_communication).
religious_music(X, noun_communication) :- religious_music(X),not abnormal_d_communication(X),not -religious_music(X, noun_communication).
representative(X, noun_person) :- agent(X, noun_person).
representative(X, noun_person) :- representative(X),not abnormal_d_person(X),not -representative(X, noun_person).
sacred_text(X, noun_communication) :- prayer(X, noun_communication).
sacred_text(X, noun_communication) :- sacred_text(X),not abnormal_d_communication(X),not -sacred_text(X, noun_communication).
semantic_role(X, noun_communication) :- agent(X, noun_communication).
semantic_role(X, noun_communication) :- semantic_role(X),not abnormal_d_communication(X),not -semantic_role(X, noun_communication).
sensing(X, noun_act) :- look(X, noun_act).
sensing(X, noun_act) :- sensing(X),not abnormal_d_act(X),not -sensing(X, noun_act).
sensory_activity(X, noun_act) :- sensing(X, noun_act).
sensory_activity(X, noun_act) :- sensory_activity(X),not abnormal_d_act(X),not -sensory_activity(X, noun_act).
shape(X, noun_tops) :- line(X, noun_shape).
shape(X, noun_tops) :- shape(X),not abnormal_d_tops(X),not -shape(X, noun_tops).
silicon_dioxide(X, noun_substance) :- silicon_dioxide(X),not abnormal_d_substance(X),not -silicon_dioxide(X, noun_substance).
situation(X, noun_state) :- element(X, noun_state).
situation(X, noun_state) :- situation(X),not abnormal_d_state(X),not -situation(X, noun_state).
skilled_worker(X, noun_person) :- official(X, noun_person).
skilled_worker(X, noun_person) :- skilled_worker(X),not abnormal_d_person(X),not -skilled_worker(X, noun_person).
social_control(X, noun_act) :- punishment(X, noun_act).
social_control(X, noun_act) :- social_control(X),not abnormal_d_act(X),not -social_control(X, noun_act).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
somesthesia(X, noun_cognition) :- pressure(X, noun_cognition).
somesthesia(X, noun_cognition) :- somesthesia(X),not abnormal_d_cognition(X),not -somesthesia(X, noun_cognition).
somesthesia(X, noun_cognition) :- temperature(X, noun_cognition).
state(X, noun_tops) :- cognitive_state(X, noun_cognition).
state(X, noun_tops) :- condition(X, noun_state).
state(X, noun_tops) :- physiological_state(X, noun_state).
state(X, noun_tops) :- situation(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
state_of_matter(X, noun_state) :- gas(X, noun_state).
state_of_matter(X, noun_state) :- state_of_matter(X),not abnormal_d_state(X),not -state_of_matter(X, noun_state).
straight_line(X, noun_shape) :- element(X, noun_shape).
straight_line(X, noun_shape) :- straight_line(X),not abnormal_d_shape(X),not -straight_line(X, noun_shape).
substance(X, noun_tops) :- atom(X, noun_substance).
substance(X, noun_tops) :- chemical_element(X, noun_substance).
substance(X, noun_tops) :- compound(X, noun_substance).
substance(X, noun_tops) :- element(X, noun_substance).
substance(X, noun_tops) :- fluid(X, noun_substance).
substance(X, noun_tops) :- fuel(X, noun_substance).
substance(X, noun_tops) :- material(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
symptom(X, noun_state) :- pain(X, noun_state).
symptom(X, noun_state) :- symptom(X),not abnormal_d_state(X),not -symptom(X, noun_state).
taste(X, noun_cognition) :- taste(X),not abnormal_d_cognition(X),not -taste(X, noun_cognition).
taste(X, noun_cognition) :- trend(X, noun_cognition).
temperature(X, noun_attribute) :- temperature(X),not abnormal_d_attribute(X),not -temperature(X, noun_attribute).
temperature(X, noun_cognition) :- temperature(X),not -temperature(X, noun_cognition),-temperature(X, noun_attribute).
temperature(X, noun_cognition) :- temperature(X),not abnormal_d_cognition(X),not -temperature(X, noun_cognition).
terrestrial_planet(X, noun_object) :- earth(X, noun_object).
terrestrial_planet(X, noun_object) :- terrestrial_planet(X),not abnormal_d_object(X),not -terrestrial_planet(X, noun_object).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
torture(X, noun_act) :- burning(X, noun_act).
torture(X, noun_act) :- torture(X),not abnormal_d_act(X),not -torture(X, noun_act).
trait(X, noun_attribute) :- demeanor(X, noun_attribute).
trait(X, noun_attribute) :- trait(X),not abnormal_d_attribute(X),not -trait(X, noun_attribute).
trend(X, noun_cognition) :- trend(X),not -trend(X, noun_cognition),-trend(X, noun_location).
trend(X, noun_cognition) :- trend(X),not abnormal_d_cognition(X),not -trend(X, noun_cognition).
trend(X, noun_location) :- trend(X),not abnormal_d_location(X),not -trend(X, noun_location).
tune(X, noun_communication) :- part(X, noun_communication).
tune(X, noun_communication) :- tune(X),not abnormal_d_communication(X),not -tune(X, noun_communication).
unit(X, noun_group) :- member(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
unit_of_measurement(X, noun_quantity) :- pressure_unit(X, noun_quantity).
unit_of_measurement(X, noun_quantity) :- unit_of_measurement(X),not abnormal_d_quantity(X),not -unit_of_measurement(X, noun_quantity).
universe(X, noun_cognition) :- universe(X),not -universe(X, noun_cognition),-universe(X, noun_object).
universe(X, noun_cognition) :- universe(X),not abnormal_d_cognition(X),not -universe(X, noun_cognition).
universe(X, noun_object) :- universe(X),not abnormal_d_object(X),not -universe(X, noun_object).
urgency(X, noun_state) :- pressure(X, noun_state).
urgency(X, noun_state) :- urgency(X),not abnormal_d_state(X),not -urgency(X, noun_state).
weather(X, noun_phenomenon) :- atmosphere(X, noun_state).
weather(X, noun_phenomenon) :- weather(X),not abnormal_d_phenomenon(X),not -weather(X, noun_phenomenon).
whole(X, noun_cognition) :- compound(X, noun_cognition).
whole(X, noun_cognition) :- whole(X),not abnormal_d_cognition(X),not -whole(X, noun_cognition).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- natural_object(X, noun_tops).
whole(X, noun_tops) :- whole(X),not -whole(X, noun_tops),-whole(X, noun_cognition).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
work(X, noun_act) :- duty(X, noun_act).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
worker(X, noun_person) :- skilled_worker(X, noun_person).
worker(X, noun_person) :- worker(X),not abnormal_d_person(X),not -worker(X, noun_person).
writing(X, noun_communication) :- sacred_text(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).