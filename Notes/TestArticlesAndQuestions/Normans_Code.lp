%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(leader, rollo).
_is(norman, people).
_is(normandy, region).
_mod(century, '10th').
_mod(century, '11th').
_mod(century, succeeding).
_mod(culture, carolingian_based).
_mod(emerge, initially).
_mod(identity, cultural).
_mod(identity, distinct).
_mod(identity, ethnic).
_mod(merge, gradually).
_mod(population, frankish_and_roman_gaulish).
_mod(population, native).
_mod(raider, norse).
_mod(swear, fealty).
_possess(norman, descendant).
_possess(norman, leader).
_possess(norman, name).
_possess(norman, rollo).
_property(10, emerge, in, 'the_first_half_of_the_10th_century').
_property(10, identity, of, norman).
_property(2, give, in, century).
_property(2, give, to, normandy).
_property(2, region, in, france).
_property(4, descend, from, denmark_iceland).
_property(4, descend, from, norway).
_property(4, descend, from, pirate).
_property(4, descend, from, raider).
_property(4, descend, under, leader).
_property(6, king_charles_iii, of, west_francia).
_property(6, swear, to, king_charles_iii).
_property(7, assimilate, with, population).
_property(9, culture, of, west_francia).
_property(9, descendant, through, generation).
_property(9, merge, with, culture).
_relation(10, 11, _conj).
_relation(11, 12, _clcomplement).
_relation(5, 6, _clcomplement).
_relation(7, 8, _conj).
_relation(generation, 7, _clause).
_relation(generation, 8, _clause).
_relation(leader, 5, _clause).
century(century).
culture(culture).
descendant(descendant).
event(1, be, null, null).
event(10, emerge, distinct_cultural_ethnic_identity, null).
event(10, emerge, identity, null).
event(11, continue, cultural_ethnic_identity, null).
event(11, continue, identity, null).
event(12, evolve, cultural_ethnic_identity, century).
event(12, evolve, cultural_ethnic_identity, succeeding_century).
event(12, evolve, identity, century).
event(12, evolve, identity, succeeding_century).
event(2, give, people, name).
event(3, be, null, null).
event(4, descend, norman, null).
event(5, agree, null, null).
event(6, swear, null, null).
event(7, assimilate, null, null).
event(8, mix, null, null).
event(9, merge, descendant, null).
fealty(fealty).
france(france).
generation(generation).
identity(identity).
leader(leader).
leader(rollo).
name(name).
norman(norman).
normandy(normandy).
norway(norway).
people(norman).
people(people).
pirate(pirate).
population(population).
raider(raider).
region(normandy).
region(region).
rollo(rollo).
time('the_first_half_of_the_10th_century').
%%-------------------------------------------------------%%
%%Rules%%
%%-------------------------------------------------------%%
cause(event(E, gain, S, O), emerge) :- event(E1, emerge, O, O1).
country(france).
country(norway).
country(iceland).
country(denmark_iceland).
time(X, T) :- _property(X, on(T)), time(T).
time(X, T) :- _property(X, at(T)), time(T).
time(X, T) :- _property(X, in(T)), time(T).
time(T) :- year(T).
place(X, P) :- _property(X, in(P)).
place(X, P) :- _is(X, A), _property(A, in(P)).
place(X, P, from) :- _property(X, from(P)).
place(X, P, from) :- _is(X, A), _property(A, from(P)).
when(event(E, X, S, O), T) :- S = null, _is(O1, O), event(E1, X, S, O1), time(X, T).
when(event(E, X, S, O), T) :- S = null, cause(event(E, X, S, O), C), time(C, T).
when(event(E, X, S, O), T) :- time(X, T).
effect(event(_, originate, S, O), descend) :- event(_, descend, O, S).
where(event(E, X, S, O), P, Prep) :- effect(event(_, X, S, O), Y), place(Y, P, Prep).

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
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
act(X, noun_tops) :- group_action(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
adult(X, noun_person) :- adult(X),not abnormal_d_person(X),not -adult(X, noun_person).
adult(X, noun_person) :- important_person(X, noun_person).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- commodity(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
attitude(X, noun_cognition) :- attitude(X),not abnormal_d_cognition(X),not -attitude(X, noun_cognition).
attitude(X, noun_cognition) :- culture(X, noun_cognition).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- personality(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
authorization(X, noun_act) :- authorization(X),not abnormal_d_act(X),not -authorization(X, noun_act).
authorization(X, noun_act) :- sanction(X, noun_act).
bad_person(X, noun_person) :- bad_person(X),not abnormal_d_person(X),not -bad_person(X, noun_person).
bad_person(X, noun_person) :- wrongdoer(X, noun_person).
basic_cognitive_process(X, noun_cognition) :- basic_cognitive_process(X),not abnormal_d_cognition(X),not -basic_cognitive_process(X, noun_cognition).
basic_cognitive_process(X, noun_cognition) :- discrimination(X, noun_cognition).
basic_cognitive_process(X, noun_cognition) :- memory(X, noun_cognition).
beginning(X, noun_act) :- beginning(X),not -beginning(X, noun_act),-beginning(X, noun_event).
beginning(X, noun_act) :- beginning(X),not abnormal_d_act(X),not -beginning(X, noun_act).
beginning(X, noun_act) :- constitution(X, noun_act).
beginning(X, noun_event) :- beginning(X),not abnormal_d_event(X),not -beginning(X, noun_event).
beginning(X, noun_event) :- generation(X, noun_event).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
biological_group(X, noun_group) :- generation(X, noun_group).
bodily_process(X, noun_process) :- bodily_process(X),not abnormal_d_process(X),not -bodily_process(X, noun_process).
bodily_process(X, noun_process) :- sexual_activity(X, noun_act).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
body_part(X, noun_body) :- region(X, noun_body).
century(X, noun_quantity) :- century(X),not -century(X, noun_quantity),-century(X, noun_time).
century(X, noun_quantity) :- century(X),not abnormal_d_quantity(X),not -century(X, noun_quantity).
century(X, noun_time) :- century(X),not abnormal_d_time(X),not -century(X, noun_time).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- change_of_state(X, noun_act).
change_of_state(X, noun_act) :- beginning(X, noun_act).
change_of_state(X, noun_act) :- change_of_state(X),not abnormal_d_act(X),not -change_of_state(X, noun_act).
cognition(X, noun_tops) :- attitude(X, noun_cognition).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- process(X, noun_cognition).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- population(X, noun_cognition).
colonization(X, noun_act) :- colonization(X),not abnormal_d_act(X),not -colonization(X, noun_act).
colonization(X, noun_act) :- population(X, noun_act).
commerce(X, noun_act) :- commerce(X),not abnormal_d_act(X),not -commerce(X, noun_act).
commerce(X, noun_act) :- commercial_enterprise(X, noun_act).
commercial_enterprise(X, noun_act) :- commercial_enterprise(X),not abnormal_d_act(X),not -commercial_enterprise(X, noun_act).
commercial_enterprise(X, noun_act) :- industry(X, noun_act).
commodity(X, noun_artifact) :- commodity(X),not abnormal_d_artifact(X),not -commodity(X, noun_artifact).
commodity(X, noun_artifact) :- merchandise(X, noun_artifact).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- message(X, noun_communication).
company(X, noun_group) :- company(X),not abnormal_d_group(X),not -company(X, noun_group).
company(X, noun_group) :- corporate_investor(X, noun_group).
constitution(X, noun_act) :- colonization(X, noun_act).
constitution(X, noun_act) :- constitution(X),not abnormal_d_act(X),not -constitution(X, noun_act).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- culture(X, noun_cognition).
content(X, noun_cognition) :- knowledge_domain(X, noun_cognition).
conveyance(X, noun_artifact) :- conveyance(X),not abnormal_d_artifact(X),not -conveyance(X, noun_artifact).
conveyance(X, noun_artifact) :- vehicle(X, noun_artifact).
corporate_investor(X, noun_group) :- corporate_investor(X),not abnormal_d_group(X),not -corporate_investor(X, noun_group).
corporate_investor(X, noun_group) :- raider(X, noun_group).
craft(X, noun_artifact) :- craft(X),not abnormal_d_artifact(X),not -craft(X, noun_artifact).
craft(X, noun_artifact) :- vessel(X, noun_artifact).
criminal(X, noun_person) :- criminal(X),not abnormal_d_person(X),not -criminal(X, noun_person).
criminal(X, noun_person) :- thief(X, noun_person).
cultivation(X, noun_act) :- cultivation(X),not abnormal_d_act(X),not -cultivation(X, noun_act).
cultivation(X, noun_act) :- culture(X, noun_act).
culture(X, noun_act) :- culture(X),not -culture(X, noun_act),-culture(X, noun_group),-culture(X, noun_cognition),-culture(X, noun_state).
culture(X, noun_act) :- culture(X),not abnormal_d_act(X),not -culture(X, noun_act).
culture(X, noun_cognition) :- culture(X),not -culture(X, noun_cognition),-culture(X, noun_group),not culture(X, noun_state),not culture(X, noun_act).
culture(X, noun_cognition) :- culture(X),not abnormal_d_cognition(X),not -culture(X, noun_cognition).
culture(X, noun_group) :- culture(X),not abnormal_d_group(X),not -culture(X, noun_group).
culture(X, noun_state) :- culture(X),not -culture(X, noun_state),-culture(X, noun_group),-culture(X, noun_cognition),not culture(X, noun_act).
culture(X, noun_state) :- culture(X),not abnormal_d_state(X),not -culture(X, noun_state).
defamation(X, noun_communication) :- defamation(X),not abnormal_d_communication(X),not -defamation(X, noun_communication).
defamation(X, noun_communication) :- name(X, noun_communication).
definite_quantity(X, noun_quantity) :- definite_quantity(X),not abnormal_d_quantity(X),not -definite_quantity(X, noun_quantity).
definite_quantity(X, noun_quantity) :- number(X, noun_quantity).
descendant(X, noun_person) :- descendant(X),not abnormal_d_person(X),not -descendant(X, noun_person).
discrimination(X, noun_cognition) :- discrimination(X),not abnormal_d_cognition(X),not -discrimination(X, noun_cognition).
discrimination(X, noun_cognition) :- taste(X, noun_cognition).
disparagement(X, noun_communication) :- defamation(X, noun_communication).
disparagement(X, noun_communication) :- disparagement(X),not abnormal_d_communication(X),not -disparagement(X, noun_communication).
disrespect(X, noun_communication) :- disparagement(X, noun_communication).
disrespect(X, noun_communication) :- disrespect(X),not abnormal_d_communication(X),not -disrespect(X, noun_communication).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
european(X, noun_person) :- european(X),not abnormal_d_person(X),not -european(X, noun_person).
european(X, noun_person) :- frenchman(X, noun_person).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- happening(X, noun_event).
family(X, noun_group) :- family(X),not abnormal_d_group(X),not -family(X, noun_group).
family(X, noun_group) :- name(X, noun_group).
family(X, noun_group) :- people(X, noun_group).
fealty(X, noun_attribute) :- fealty(X),not abnormal_d_attribute(X),not -fealty(X, noun_attribute).
feature(X, noun_artifact) :- feature(X),not abnormal_d_artifact(X),not -feature(X, noun_artifact).
feature(X, noun_artifact) :- leader(X, noun_artifact).
fidelity(X, noun_attribute) :- fidelity(X),not abnormal_d_attribute(X),not -fidelity(X, noun_attribute).
fidelity(X, noun_attribute) :- loyalty(X, noun_attribute).
france(X, noun_location) :- france(X),not abnormal_d_location(X),not -france(X, noun_location).
france(X, noun_person) :- france(X),not -france(X, noun_person),-france(X, noun_location).
france(X, noun_person) :- france(X),not abnormal_d_person(X),not -france(X, noun_person).
frenchman(X, noun_person) :- frenchman(X),not abnormal_d_person(X),not -frenchman(X, noun_person).
frenchman(X, noun_person) :- norman(X, noun_person).
function(X, noun_relation) :- function(X),not abnormal_d_relation(X),not -function(X, noun_relation).
function(X, noun_relation) :- operator(X, noun_relation).
fundamental_quantity(X, noun_quantity) :- fundamental_quantity(X),not abnormal_d_quantity(X),not -fundamental_quantity(X, noun_quantity).
fundamental_quantity(X, noun_quantity) :- time_period(X, noun_time).
genealogy(X, noun_group) :- genealogy(X),not abnormal_d_group(X),not -genealogy(X, noun_group).
genealogy(X, noun_group) :- lineage(X, noun_group).
generation(X, noun_act) :- generation(X),not -generation(X, noun_act),-generation(X, noun_group),-generation(X, noun_time),-generation(X, noun_event).
generation(X, noun_act) :- generation(X),not abnormal_d_act(X),not -generation(X, noun_act).
generation(X, noun_event) :- generation(X),not -generation(X, noun_event),-generation(X, noun_group),-generation(X, noun_time),not generation(X, noun_act).
generation(X, noun_event) :- generation(X),not abnormal_d_event(X),not -generation(X, noun_event).
generation(X, noun_group) :- generation(X),not abnormal_d_group(X),not -generation(X, noun_group).
generation(X, noun_time) :- generation(X),not -generation(X, noun_time),-generation(X, noun_group),not generation(X, noun_event),not generation(X, noun_act).
generation(X, noun_time) :- generation(X),not abnormal_d_time(X),not -generation(X, noun_time).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- people(X, noun_group).
group(X, noun_tops) :- population(X, noun_group).
group(X, noun_tops) :- social_group(X, noun_group).
group_action(X, noun_act) :- group_action(X),not abnormal_d_act(X),not -group_action(X, noun_act).
group_action(X, noun_act) :- social_control(X, noun_act).
group_action(X, noun_act) :- transaction(X, noun_act).
growth(X, noun_process) :- culture(X, noun_act).
growth(X, noun_process) :- growth(X),not abnormal_d_process(X),not -growth(X, noun_process).
happening(X, noun_event) :- beginning(X, noun_event).
happening(X, noun_event) :- happening(X),not abnormal_d_event(X),not -happening(X, noun_event).
honor(X, noun_state) :- honor(X),not abnormal_d_state(X),not -honor(X, noun_state).
honor(X, noun_state) :- repute(X, noun_state).
identity(X, noun_attribute) :- identity(X),not abnormal_d_attribute(X),not -identity(X, noun_attribute).
identity(X, noun_cognition) :- identity(X),not -identity(X, noun_cognition),-identity(X, noun_attribute),not identity(X, noun_relation).
identity(X, noun_cognition) :- identity(X),not abnormal_d_cognition(X),not -identity(X, noun_cognition).
identity(X, noun_relation) :- identity(X),not -identity(X, noun_relation),-identity(X, noun_attribute),-identity(X, noun_cognition).
identity(X, noun_relation) :- identity(X),not abnormal_d_relation(X),not -identity(X, noun_relation).
important_person(X, noun_person) :- important_person(X),not abnormal_d_person(X),not -important_person(X, noun_person).
important_person(X, noun_person) :- name(X, noun_person).
indefinite_quantity(X, noun_quantity) :- indefinite_quantity(X),not abnormal_d_quantity(X),not -indefinite_quantity(X, noun_quantity).
indefinite_quantity(X, noun_quantity) :- region(X, noun_quantity).
industry(X, noun_act) :- industry(X),not abnormal_d_act(X),not -industry(X, noun_act).
industry(X, noun_act) :- production(X, noun_act).
inhabitant(X, noun_person) :- european(X, noun_person).
inhabitant(X, noun_person) :- inhabitant(X),not abnormal_d_person(X),not -inhabitant(X, noun_person).
institution(X, noun_group) :- company(X, noun_group).
institution(X, noun_group) :- institution(X),not abnormal_d_group(X),not -institution(X, noun_group).
instrumentality(X, noun_artifact) :- conveyance(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
integer(X, noun_quantity) :- integer(X),not abnormal_d_quantity(X),not -integer(X, noun_quantity).
integer(X, noun_quantity) :- large_integer(X, noun_quantity).
integer(X, noun_quantity) :- population(X, noun_quantity).
kin(X, noun_group) :- genealogy(X, noun_group).
kin(X, noun_group) :- kin(X),not abnormal_d_group(X),not -kin(X, noun_group).
knowledge_domain(X, noun_cognition) :- knowledge_domain(X),not abnormal_d_cognition(X),not -knowledge_domain(X, noun_cognition).
knowledge_domain(X, noun_cognition) :- region(X, noun_cognition).
language_unit(X, noun_communication) :- language_unit(X),not abnormal_d_communication(X),not -language_unit(X, noun_communication).
language_unit(X, noun_communication) :- name(X, noun_communication).
large_integer(X, noun_quantity) :- century(X, noun_quantity).
large_integer(X, noun_quantity) :- large_integer(X),not abnormal_d_quantity(X),not -large_integer(X, noun_quantity).
leader(X, noun_artifact) :- leader(X),not -leader(X, noun_artifact),-leader(X, noun_person).
leader(X, noun_artifact) :- leader(X),not abnormal_d_artifact(X),not -leader(X, noun_artifact).
leader(X, noun_person) :- leader(X),not abnormal_d_person(X),not -leader(X, noun_person).
lineage(X, noun_group) :- family(X, noun_group).
lineage(X, noun_group) :- lineage(X),not abnormal_d_group(X),not -lineage(X, noun_group).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- region(X, noun_location).
loyalty(X, noun_attribute) :- fealty(X, noun_attribute).
loyalty(X, noun_attribute) :- loyalty(X),not abnormal_d_attribute(X),not -loyalty(X, noun_attribute).
management(X, noun_act) :- authorization(X, noun_act).
management(X, noun_act) :- management(X),not abnormal_d_act(X),not -management(X, noun_act).
mathematical_relation(X, noun_relation) :- function(X, noun_relation).
mathematical_relation(X, noun_relation) :- mathematical_relation(X),not abnormal_d_relation(X),not -mathematical_relation(X, noun_relation).
measure(X, noun_tops) :- definite_quantity(X, noun_quantity).
measure(X, noun_tops) :- fundamental_quantity(X, noun_quantity).
measure(X, noun_tops) :- indefinite_quantity(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
memory(X, noun_cognition) :- memory(X),not abnormal_d_cognition(X),not -memory(X, noun_cognition).
memory(X, noun_cognition) :- recognition(X, noun_cognition).
merchandise(X, noun_artifact) :- feature(X, noun_artifact).
merchandise(X, noun_artifact) :- merchandise(X),not abnormal_d_artifact(X),not -merchandise(X, noun_artifact).
message(X, noun_communication) :- disrespect(X, noun_communication).
message(X, noun_communication) :- message(X),not abnormal_d_communication(X),not -message(X, noun_communication).
name(X, noun_act) :- name(X),not abnormal_d_act(X),not -name(X, noun_act).
name(X, noun_communication) :- name(X),not -name(X, noun_communication),-name(X, noun_act),-name(X, noun_state),-name(X, noun_person),-name(X, noun_group).
name(X, noun_communication) :- name(X),not abnormal_d_communication(X),not -name(X, noun_communication).
name(X, noun_group) :- name(X),not -name(X, noun_group),-name(X, noun_act),-name(X, noun_state),-name(X, noun_person),not name(X, noun_communication).
name(X, noun_group) :- name(X),not abnormal_d_group(X),not -name(X, noun_group).
name(X, noun_person) :- name(X),not -name(X, noun_person),-name(X, noun_act),-name(X, noun_state),not name(X, noun_group),not name(X, noun_communication).
name(X, noun_person) :- name(X),not abnormal_d_person(X),not -name(X, noun_person).
name(X, noun_state) :- name(X),not -name(X, noun_state),-name(X, noun_act),not name(X, noun_person),not name(X, noun_group),not name(X, noun_communication).
name(X, noun_state) :- name(X),not abnormal_d_state(X),not -name(X, noun_state).
norman(X, noun_person) :- norman(X),not abnormal_d_person(X),not -norman(X, noun_person).
normandy(X, noun_location) :- normandy(X),not abnormal_d_location(X),not -normandy(X, noun_location).
norway(X, noun_location) :- norway(X),not abnormal_d_location(X),not -norway(X, noun_location).
number(X, noun_quantity) :- integer(X, noun_quantity).
number(X, noun_quantity) :- number(X),not abnormal_d_quantity(X),not -number(X, noun_quantity).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
operator(X, noun_relation) :- identity(X, noun_relation).
operator(X, noun_relation) :- operator(X),not abnormal_d_relation(X),not -operator(X, noun_relation).
organic_process(X, noun_process) :- bodily_process(X, noun_process).
organic_process(X, noun_process) :- growth(X, noun_process).
organic_process(X, noun_process) :- organic_process(X),not abnormal_d_process(X),not -organic_process(X, noun_process).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- institution(X, noun_group).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not -part(X, noun_object),-part(X, noun_relation).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
part(X, noun_relation) :- language_unit(X, noun_communication).
part(X, noun_relation) :- part(X),not abnormal_d_relation(X),not -part(X, noun_relation).
people(X, noun_group) :- generation(X, noun_group).
people(X, noun_group) :- people(X),not abnormal_d_group(X),not -people(X, noun_group).
people(X, noun_group) :- population(X, noun_group).
perfection(X, noun_state) :- culture(X, noun_state).
perfection(X, noun_state) :- perfection(X),not abnormal_d_state(X),not -perfection(X, noun_state).
person(X, noun_tops) :- adult(X, noun_person).
person(X, noun_tops) :- bad_person(X, noun_person).
person(X, noun_tops) :- inhabitant(X, noun_person).
person(X, noun_tops) :- leader(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
person(X, noun_tops) :- relative(X, noun_person).
personality(X, noun_attribute) :- identity(X, noun_attribute).
personality(X, noun_attribute) :- personality(X),not abnormal_d_attribute(X),not -personality(X, noun_attribute).
phase(X, noun_time) :- generation(X, noun_time).
phase(X, noun_time) :- phase(X),not abnormal_d_time(X),not -phase(X, noun_time).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
pirate(X, noun_artifact) :- pirate(X),not -pirate(X, noun_artifact),-pirate(X, noun_person).
pirate(X, noun_artifact) :- pirate(X),not abnormal_d_artifact(X),not -pirate(X, noun_artifact).
pirate(X, noun_person) :- pirate(X),not abnormal_d_person(X),not -pirate(X, noun_person).
plunderer(X, noun_person) :- pirate(X, noun_person).
plunderer(X, noun_person) :- plunderer(X),not abnormal_d_person(X),not -plunderer(X, noun_person).
population(X, noun_act) :- population(X),not -population(X, noun_act),-population(X, noun_group),-population(X, noun_cognition),-population(X, noun_quantity).
population(X, noun_act) :- population(X),not abnormal_d_act(X),not -population(X, noun_act).
population(X, noun_cognition) :- population(X),not -population(X, noun_cognition),-population(X, noun_group),not population(X, noun_quantity),not population(X, noun_act).
population(X, noun_cognition) :- population(X),not abnormal_d_cognition(X),not -population(X, noun_cognition).
population(X, noun_group) :- population(X),not abnormal_d_group(X),not -population(X, noun_group).
population(X, noun_quantity) :- population(X),not -population(X, noun_quantity),-population(X, noun_group),-population(X, noun_cognition),not population(X, noun_act).
population(X, noun_quantity) :- population(X),not abnormal_d_quantity(X),not -population(X, noun_quantity).
process(X, noun_cognition) :- basic_cognitive_process(X, noun_cognition).
process(X, noun_cognition) :- process(X),not abnormal_d_cognition(X),not -process(X, noun_cognition).
process(X, noun_tops) :- organic_process(X, noun_process).
process(X, noun_tops) :- process(X),not -process(X, noun_tops),-process(X, noun_cognition).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
production(X, noun_act) :- cultivation(X, noun_act).
production(X, noun_act) :- generation(X, noun_act).
production(X, noun_act) :- production(X),not abnormal_d_act(X),not -production(X, noun_act).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
quality(X, noun_attribute) :- fidelity(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
quality(X, noun_attribute) :- sameness(X, noun_attribute).
raider(X, noun_group) :- raider(X),not -raider(X, noun_group),-raider(X, noun_person).
raider(X, noun_group) :- raider(X),not abnormal_d_group(X),not -raider(X, noun_group).
raider(X, noun_person) :- raider(X),not abnormal_d_person(X),not -raider(X, noun_person).
recognition(X, noun_cognition) :- identity(X, noun_cognition).
recognition(X, noun_cognition) :- recognition(X),not abnormal_d_cognition(X),not -recognition(X, noun_cognition).
region(X, noun_body) :- region(X),not -region(X, noun_body),-region(X, noun_location),not region(X, noun_quantity),not region(X, noun_cognition).
region(X, noun_body) :- region(X),not abnormal_d_body(X),not -region(X, noun_body).
region(X, noun_cognition) :- region(X),not -region(X, noun_cognition),-region(X, noun_location),-region(X, noun_body),-region(X, noun_quantity).
region(X, noun_cognition) :- region(X),not abnormal_d_cognition(X),not -region(X, noun_cognition).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
region(X, noun_quantity) :- region(X),not -region(X, noun_quantity),-region(X, noun_location),-region(X, noun_body),not region(X, noun_cognition).
region(X, noun_quantity) :- region(X),not abnormal_d_quantity(X),not -region(X, noun_quantity).
relation(X, noun_tops) :- mathematical_relation(X, noun_relation).
relation(X, noun_tops) :- part(X, noun_relation).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
relative(X, noun_person) :- descendant(X, noun_person).
relative(X, noun_person) :- relative(X),not abnormal_d_person(X),not -relative(X, noun_person).
reproduction(X, noun_act) :- generation(X, noun_act).
reproduction(X, noun_act) :- reproduction(X),not abnormal_d_act(X),not -reproduction(X, noun_act).
repute(X, noun_state) :- name(X, noun_state).
repute(X, noun_state) :- repute(X),not abnormal_d_state(X),not -repute(X, noun_state).
rollo(X, noun_person) :- rollo(X),not abnormal_d_person(X),not -rollo(X, noun_person).
sameness(X, noun_attribute) :- identity(X, noun_attribute).
sameness(X, noun_attribute) :- sameness(X),not abnormal_d_attribute(X),not -sameness(X, noun_attribute).
sanction(X, noun_act) :- name(X, noun_act).
sanction(X, noun_act) :- sanction(X),not abnormal_d_act(X),not -sanction(X, noun_act).
sexual_activity(X, noun_act) :- reproduction(X, noun_act).
sexual_activity(X, noun_act) :- sexual_activity(X),not abnormal_d_act(X),not -sexual_activity(X, noun_act).
ship(X, noun_artifact) :- pirate(X, noun_artifact).
ship(X, noun_artifact) :- ship(X),not abnormal_d_artifact(X),not -ship(X, noun_artifact).
social_control(X, noun_act) :- management(X, noun_act).
social_control(X, noun_act) :- social_control(X),not abnormal_d_act(X),not -social_control(X, noun_act).
social_group(X, noun_group) :- kin(X, noun_group).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
social_group(X, noun_group) :- society(X, noun_group).
society(X, noun_group) :- culture(X, noun_group).
society(X, noun_group) :- society(X),not abnormal_d_group(X),not -society(X, noun_group).
standing(X, noun_state) :- honor(X, noun_state).
standing(X, noun_state) :- standing(X),not abnormal_d_state(X),not -standing(X, noun_state).
state(X, noun_tops) :- perfection(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
state(X, noun_tops) :- status(X, noun_state).
status(X, noun_state) :- standing(X, noun_state).
status(X, noun_state) :- status(X),not abnormal_d_state(X),not -status(X, noun_state).
taste(X, noun_cognition) :- culture(X, noun_cognition).
taste(X, noun_cognition) :- taste(X),not abnormal_d_cognition(X),not -taste(X, noun_cognition).
thief(X, noun_person) :- pirate(X, noun_person).
thief(X, noun_person) :- plunderer(X, noun_person).
thief(X, noun_person) :- raider(X, noun_person).
thief(X, noun_person) :- thief(X),not abnormal_d_person(X),not -thief(X, noun_person).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
time_period(X, noun_time) :- century(X, noun_time).
time_period(X, noun_time) :- generation(X, noun_time).
time_period(X, noun_time) :- phase(X, noun_time).
time_period(X, noun_time) :- time_period(X),not abnormal_d_time(X),not -time_period(X, noun_time).
transaction(X, noun_act) :- commerce(X, noun_act).
transaction(X, noun_act) :- transaction(X),not abnormal_d_act(X),not -transaction(X, noun_act).
vehicle(X, noun_artifact) :- craft(X, noun_artifact).
vehicle(X, noun_artifact) :- vehicle(X),not abnormal_d_artifact(X),not -vehicle(X, noun_artifact).
vessel(X, noun_artifact) :- ship(X, noun_artifact).
vessel(X, noun_artifact) :- vessel(X),not abnormal_d_artifact(X),not -vessel(X, noun_artifact).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
wrongdoer(X, noun_person) :- criminal(X, noun_person).
wrongdoer(X, noun_person) :- wrongdoer(X),not abnormal_d_person(X),not -wrongdoer(X, noun_person).