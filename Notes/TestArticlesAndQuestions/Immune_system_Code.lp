%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(barrier, blood).
_is(immune_system, system).
_is(subsystem, humoral_immunity).
_is(subsystem, innate_immune_system).
_mod(fluid, similar).
_mod(function, properly).
_mod(immune_system, peripheral).
_mod(species, many).
_mod(structure, biological).
_mod(structure, many).
_mod(tissue, healthy).
_mod(tissue, own).
_mod(variety, wide).
_mod(worm, parasitic).
_possess(organism, tissue).
_property(cerebrospinal_fluid, in(human)).
_property(classify, in(species)).
_property(classify, into(subsystem)).
_property(detect, from(virus)).
_property(detect, to(worm)).
_property(distinguish, from(tissue)).
_property(innate_immune_system, versus(adaptive_immune_system)).
_property(know, as(pathogen)).
_property(protect, against(disease)).
_property(separate, from(neuroimmune_system)).
_property(structure, within(organism)).
_property(subsystem, versus(cell_mediated_immunity)).
_property(system, of(process)).
_property(system, of(structure)).
_property(variety, of(agent)).
_relation(4, 3, _clause).
_relation(4, 6, _conj).
_relation(agent, 5, _clause).
agent(agent).
barrier(barrier).
barrier(blood).
blood(blood).
brain(brain).
disease(disease).
event(10, protect, neuroimmune_system, brain).
event(2, protect, organism, null).
event(3, function, null, null).
event(4, detect, immune_system, variety).
event(4, detect, immune_system, variety_of_agent).
event(4, detect, immune_system, wide_variety).
event(5, know, null, null).
event(6, distinguish, immune_system, pathogen).
event(8, classify, null, immune_system).
event(9, separate, barrier, immune_system).
event(9, separate, barrier, peripheral_immune_system).
fluid(fluid).
human(human).
immune_system(immune_system).
organism(organism).
pathogen(pathogen).
process(process).
species(species).
structure(structure).
subsystem(humoral_immunity).
subsystem(innate_immune_system).
subsystem(subsystem).
system(immune_system).
system(system).
tissue(tissue).
variety(variety).
virus(virus).
worm(worm).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
ability(X, noun_cognition) :- ability(X),not abnormal_d_cognition(X),not -ability(X, noun_cognition).
ability(X, noun_cognition) :- intelligence(X, noun_cognition).
ability(X, noun_cognition) :- know_how(X, noun_cognition).
abstract_entity(X, noun_tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_tops).
abstract_entity(X, noun_tops) :- abstraction(X, noun_tops).
abstraction(X, noun_tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_tops).
abstraction(X, noun_tops) :- attribute(X, noun_tops).
abstraction(X, noun_tops) :- communication(X, noun_tops).
abstraction(X, noun_tops) :- group(X, noun_tops).
abstraction(X, noun_tops) :- psychological_feature(X, noun_tops).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- activity(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- process(X, noun_act).
agent(X, noun_communication) :- agent(X),not -agent(X, noun_communication),-agent(X, noun_object),-agent(X, noun_substance),-agent(X, noun_person).
agent(X, noun_communication) :- agent(X),not abnormal_d_communication(X),not -agent(X, noun_communication).
agent(X, noun_object) :- agent(X),not abnormal_d_object(X),not -agent(X, noun_object).
agent(X, noun_person) :- agent(X),not -agent(X, noun_person),-agent(X, noun_object),-agent(X, noun_substance),not agent(X, noun_communication).
agent(X, noun_person) :- agent(X),not abnormal_d_person(X),not -agent(X, noun_person).
agent(X, noun_substance) :- agent(X),not -agent(X, noun_substance),-agent(X, noun_object),not agent(X, noun_person),not agent(X, noun_communication).
agent(X, noun_substance) :- agent(X),not abnormal_d_substance(X),not -agent(X, noun_substance).
animal(X, noun_tops) :- animal(X),not abnormal_d_tops(X),not -animal(X, noun_tops).
animal(X, noun_tops) :- chordate(X, noun_animal).
animal(X, noun_tops) :- invertebrate(X, noun_animal).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
artifact(X, noun_tops) :- structure(X, noun_artifact).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
attribute(X, noun_tops) :- trait(X, noun_attribute).
bad_person(X, noun_person) :- bad_person(X),not abnormal_d_person(X),not -bad_person(X, noun_person).
bad_person(X, noun_person) :- libertine(X, noun_person).
barrier(X, noun_artifact) :- barrier(X),not abnormal_d_artifact(X),not -barrier(X, noun_artifact).
barrier(X, noun_cognition) :- barrier(X),not -barrier(X, noun_cognition),-barrier(X, noun_artifact),not barrier(X, noun_object).
barrier(X, noun_cognition) :- barrier(X),not abnormal_d_cognition(X),not -barrier(X, noun_cognition).
barrier(X, noun_object) :- barrier(X),not -barrier(X, noun_object),-barrier(X, noun_artifact),-barrier(X, noun_cognition).
barrier(X, noun_object) :- barrier(X),not abnormal_d_object(X),not -barrier(X, noun_object).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
biological_group(X, noun_group) :- taxonomic_group(X, noun_group).
blood(X, noun_attribute) :- blood(X),not -blood(X, noun_attribute),-blood(X, noun_body),not blood(X, noun_person),not blood(X, noun_group).
blood(X, noun_attribute) :- blood(X),not abnormal_d_attribute(X),not -blood(X, noun_attribute).
blood(X, noun_body) :- blood(X),not abnormal_d_body(X),not -blood(X, noun_body).
blood(X, noun_group) :- blood(X),not -blood(X, noun_group),-blood(X, noun_body),-blood(X, noun_attribute),-blood(X, noun_person).
blood(X, noun_group) :- blood(X),not abnormal_d_group(X),not -blood(X, noun_group).
blood(X, noun_person) :- blood(X),not -blood(X, noun_person),-blood(X, noun_body),-blood(X, noun_attribute),not blood(X, noun_group).
blood(X, noun_person) :- blood(X),not abnormal_d_person(X),not -blood(X, noun_person).
body(X, noun_body) :- body(X),not abnormal_d_body(X),not -body(X, noun_body).
body(X, noun_body) :- live_body(X, noun_body).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
body_part(X, noun_body) :- process(X, noun_body).
body_part(X, noun_body) :- structure(X, noun_body).
body_part(X, noun_body) :- system(X, noun_body).
body_part(X, noun_body) :- tissue(X, noun_body).
body_substance(X, noun_body) :- body_substance(X),not abnormal_d_body(X),not -body_substance(X, noun_body).
body_substance(X, noun_body) :- liquid_body_substance(X, noun_body).
brain(X, noun_body) :- brain(X),not abnormal_d_body(X),not -brain(X, noun_body).
brain(X, noun_cognition) :- brain(X),not -brain(X, noun_cognition),-brain(X, noun_body),not brain(X, noun_person),not brain(X, noun_food).
brain(X, noun_cognition) :- brain(X),not abnormal_d_cognition(X),not -brain(X, noun_cognition).
brain(X, noun_food) :- brain(X),not -brain(X, noun_food),-brain(X, noun_body),-brain(X, noun_cognition),-brain(X, noun_person).
brain(X, noun_food) :- brain(X),not abnormal_d_food(X),not -brain(X, noun_food).
brain(X, noun_person) :- brain(X),not -brain(X, noun_person),-brain(X, noun_body),-brain(X, noun_cognition),not brain(X, noun_food).
brain(X, noun_person) :- brain(X),not abnormal_d_person(X),not -brain(X, noun_person).
businessperson(X, noun_person) :- agent(X, noun_person).
businessperson(X, noun_person) :- businessperson(X),not abnormal_d_person(X),not -businessperson(X, noun_person).
capitalist(X, noun_person) :- businessperson(X, noun_person).
capitalist(X, noun_person) :- capitalist(X),not abnormal_d_person(X),not -capitalist(X, noun_person).
category(X, noun_cognition) :- category(X),not abnormal_d_cognition(X),not -category(X, noun_cognition).
category(X, noun_cognition) :- kind(X, noun_cognition).
category(X, noun_cognition) :- variety(X, noun_cognition).
causal_agent(X, noun_tops) :- agent(X, noun_object).
causal_agent(X, noun_tops) :- agent(X, noun_substance).
causal_agent(X, noun_tops) :- causal_agent(X),not abnormal_d_tops(X),not -causal_agent(X, noun_tops).
chordate(X, noun_animal) :- chordate(X),not abnormal_d_animal(X),not -chordate(X, noun_animal).
chordate(X, noun_animal) :- vertebrate(X, noun_animal).
class(X, noun_group) :- class(X),not abnormal_d_group(X),not -class(X, noun_group).
class(X, noun_group) :- grammatical_category(X, noun_communication).
code(X, noun_communication) :- code(X),not abnormal_d_communication(X),not -code(X, noun_communication).
code(X, noun_communication) :- software(X, noun_communication).
coding_system(X, noun_communication) :- code(X, noun_communication).
coding_system(X, noun_communication) :- coding_system(X),not abnormal_d_communication(X),not -coding_system(X, noun_communication).
cognition(X, noun_tops) :- ability(X, noun_cognition).
cognition(X, noun_tops) :- brain(X, noun_cognition).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- cognitive_factor(X, noun_cognition).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- process(X, noun_cognition).
cognition(X, noun_tops) :- structure(X, noun_cognition).
cognitive_factor(X, noun_cognition) :- cognitive_factor(X),not abnormal_d_cognition(X),not -cognitive_factor(X, noun_cognition).
cognitive_factor(X, noun_cognition) :- difficulty(X, noun_cognition).
collection(X, noun_group) :- class(X, noun_group).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- variety(X, noun_group).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- written_communication(X, noun_communication).
communicator(X, noun_person) :- communicator(X),not abnormal_d_person(X),not -communicator(X, noun_person).
communicator(X, noun_person) :- negotiator(X, noun_person).
concept(X, noun_cognition) :- category(X, noun_cognition).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
condition(X, noun_state) :- condition(X),not abnormal_d_state(X),not -condition(X, noun_state).
condition(X, noun_state) :- pathological_state(X, noun_state).
constitution(X, noun_attribute) :- constitution(X),not abnormal_d_attribute(X),not -constitution(X, noun_attribute).
constitution(X, noun_attribute) :- structure(X, noun_attribute).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
device(X, noun_artifact) :- device(X),not abnormal_d_artifact(X),not -device(X, noun_artifact).
device(X, noun_artifact) :- restraint(X, noun_artifact).
difference(X, noun_attribute) :- difference(X),not abnormal_d_attribute(X),not -difference(X, noun_attribute).
difference(X, noun_attribute) :- dissimilarity(X, noun_attribute).
difference(X, noun_attribute) :- variety(X, noun_attribute).
difficulty(X, noun_cognition) :- difficulty(X),not abnormal_d_cognition(X),not -difficulty(X, noun_cognition).
difficulty(X, noun_cognition) :- hindrance(X, noun_cognition).
disease(X, noun_state) :- disease(X),not abnormal_d_state(X),not -disease(X, noun_state).
disposition(X, noun_attribute) :- blood(X, noun_attribute).
disposition(X, noun_attribute) :- disposition(X),not abnormal_d_attribute(X),not -disposition(X, noun_attribute).
dissimilarity(X, noun_attribute) :- dissimilarity(X),not abnormal_d_attribute(X),not -dissimilarity(X, noun_attribute).
dissimilarity(X, noun_attribute) :- nonuniformity(X, noun_attribute).
document(X, noun_communication) :- document(X),not abnormal_d_communication(X),not -document(X, noun_communication).
document(X, noun_communication) :- legal_document(X, noun_communication).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- social_event(X, noun_event).
fastener(X, noun_artifact) :- fastener(X),not abnormal_d_artifact(X),not -fastener(X, noun_artifact).
fastener(X, noun_artifact) :- screw(X, noun_artifact).
fluid(X, noun_substance) :- fluid(X),not abnormal_d_substance(X),not -fluid(X, noun_substance).
food(X, noun_food) :- food(X),not abnormal_d_food(X),not -food(X, noun_food).
food(X, noun_food) :- meat(X, noun_food).
genealogy(X, noun_group) :- blood(X, noun_group).
genealogy(X, noun_group) :- genealogy(X),not abnormal_d_group(X),not -genealogy(X, noun_group).
grammatical_category(X, noun_communication) :- grammatical_category(X),not abnormal_d_communication(X),not -grammatical_category(X, noun_communication).
grammatical_category(X, noun_communication) :- semantic_role(X, noun_communication).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- people(X, noun_group).
group(X, noun_tops) :- social_group(X, noun_group).
group(X, noun_tops) :- system(X, noun_group).
heterogeneity(X, noun_attribute) :- heterogeneity(X),not abnormal_d_attribute(X),not -heterogeneity(X, noun_attribute).
heterogeneity(X, noun_attribute) :- variety(X, noun_attribute).
hindrance(X, noun_cognition) :- hindrance(X),not abnormal_d_cognition(X),not -hindrance(X, noun_cognition).
hindrance(X, noun_cognition) :- obstacle(X, noun_cognition).
hominid(X, noun_animal) :- hominid(X),not abnormal_d_animal(X),not -hominid(X, noun_animal).
hominid(X, noun_animal) :- human(X, noun_animal).
human(X, noun_animal) :- human(X),not abnormal_d_animal(X),not -human(X, noun_animal).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
idea(X, noun_cognition) :- plan(X, noun_cognition).
ill_health(X, noun_state) :- ill_health(X),not abnormal_d_state(X),not -ill_health(X, noun_state).
ill_health(X, noun_state) :- illness(X, noun_state).
illness(X, noun_state) :- disease(X, noun_state).
illness(X, noun_state) :- illness(X),not abnormal_d_state(X),not -illness(X, noun_state).
immune_system(X, noun_body) :- immune_system(X),not abnormal_d_body(X),not -immune_system(X, noun_body).
instrumentality(X, noun_artifact) :- device(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
instrumentality(X, noun_artifact) :- system(X, noun_artifact).
intellectual(X, noun_person) :- brain(X, noun_person).
intellectual(X, noun_person) :- intellectual(X),not abnormal_d_person(X),not -intellectual(X, noun_person).
intelligence(X, noun_cognition) :- brain(X, noun_cognition).
intelligence(X, noun_cognition) :- intelligence(X),not abnormal_d_cognition(X),not -intelligence(X, noun_cognition).
invertebrate(X, noun_animal) :- invertebrate(X),not abnormal_d_animal(X),not -invertebrate(X, noun_animal).
invertebrate(X, noun_animal) :- worm(X, noun_animal).
kin(X, noun_group) :- genealogy(X, noun_group).
kin(X, noun_group) :- kin(X),not abnormal_d_group(X),not -kin(X, noun_group).
kind(X, noun_cognition) :- kind(X),not abnormal_d_cognition(X),not -kind(X, noun_cognition).
kind(X, noun_cognition) :- species(X, noun_cognition).
know_how(X, noun_cognition) :- know_how(X),not abnormal_d_cognition(X),not -know_how(X, noun_cognition).
know_how(X, noun_cognition) :- method(X, noun_cognition).
legal_document(X, noun_communication) :- legal_document(X),not abnormal_d_communication(X),not -legal_document(X, noun_communication).
legal_document(X, noun_communication) :- writ(X, noun_communication).
libertine(X, noun_person) :- blood(X, noun_person).
libertine(X, noun_person) :- libertine(X),not abnormal_d_person(X),not -libertine(X, noun_person).
liquid_body_substance(X, noun_body) :- blood(X, noun_body).
liquid_body_substance(X, noun_body) :- liquid_body_substance(X),not abnormal_d_body(X),not -liquid_body_substance(X, noun_body).
live_body(X, noun_body) :- live_body(X),not abnormal_d_body(X),not -live_body(X, noun_body).
live_body(X, noun_body) :- system(X, noun_body).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
malevolent_program(X, noun_communication) :- malevolent_program(X),not abnormal_d_communication(X),not -malevolent_program(X, noun_communication).
malevolent_program(X, noun_communication) :- virus(X, noun_communication).
malevolent_program(X, noun_communication) :- worm(X, noun_communication).
mammal(X, noun_animal) :- mammal(X),not abnormal_d_animal(X),not -mammal(X, noun_animal).
mammal(X, noun_animal) :- placental(X, noun_animal).
material(X, noun_substance) :- material(X),not abnormal_d_substance(X),not -material(X, noun_substance).
material(X, noun_substance) :- paper(X, noun_substance).
meat(X, noun_food) :- meat(X),not abnormal_d_food(X),not -meat(X, noun_food).
meat(X, noun_food) :- variety_meat(X, noun_food).
mechanism(X, noun_object) :- barrier(X, noun_object).
mechanism(X, noun_object) :- mechanism(X),not abnormal_d_object(X),not -mechanism(X, noun_object).
method(X, noun_cognition) :- method(X),not abnormal_d_cognition(X),not -method(X, noun_cognition).
method(X, noun_cognition) :- system(X, noun_cognition).
microorganism(X, noun_animal) :- microorganism(X),not abnormal_d_animal(X),not -microorganism(X, noun_animal).
microorganism(X, noun_animal) :- pathogen(X, noun_animal).
microorganism(X, noun_animal) :- virus(X, noun_animal).
natural_object(X, noun_tops) :- body(X, noun_body).
natural_object(X, noun_tops) :- mechanism(X, noun_object).
natural_object(X, noun_tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_tops).
nature(X, noun_attribute) :- disposition(X, noun_attribute).
nature(X, noun_attribute) :- nature(X),not abnormal_d_attribute(X),not -nature(X, noun_attribute).
negotiator(X, noun_person) :- negotiator(X),not abnormal_d_person(X),not -negotiator(X, noun_person).
negotiator(X, noun_person) :- representative(X, noun_person).
neural_structure(X, noun_body) :- brain(X, noun_body).
neural_structure(X, noun_body) :- neural_structure(X),not abnormal_d_body(X),not -neural_structure(X, noun_body).
nonuniformity(X, noun_attribute) :- heterogeneity(X, noun_attribute).
nonuniformity(X, noun_attribute) :- nonuniformity(X),not abnormal_d_attribute(X),not -nonuniformity(X, noun_attribute).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
obstacle(X, noun_cognition) :- barrier(X, noun_cognition).
obstacle(X, noun_cognition) :- obstacle(X),not abnormal_d_cognition(X),not -obstacle(X, noun_cognition).
obstruction(X, noun_artifact) :- barrier(X, noun_artifact).
obstruction(X, noun_artifact) :- obstruction(X),not abnormal_d_artifact(X),not -obstruction(X, noun_artifact).
official(X, noun_person) :- agent(X, noun_person).
official(X, noun_person) :- official(X),not abnormal_d_person(X),not -official(X, noun_person).
orderliness(X, noun_attribute) :- orderliness(X),not abnormal_d_attribute(X),not -orderliness(X, noun_attribute).
orderliness(X, noun_attribute) :- system(X, noun_attribute).
organism(X, noun_group) :- organism(X),not -organism(X, noun_group),-organism(X, noun_tops).
organism(X, noun_group) :- organism(X),not abnormal_d_group(X),not -organism(X, noun_group).
organism(X, noun_tops) :- animal(X, noun_tops).
organism(X, noun_tops) :- microorganism(X, noun_animal).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
paper(X, noun_substance) :- paper(X),not abnormal_d_substance(X),not -paper(X, noun_substance).
paper(X, noun_substance) :- tissue(X, noun_substance).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
pathogen(X, noun_animal) :- pathogen(X),not abnormal_d_animal(X),not -pathogen(X, noun_animal).
pathological_state(X, noun_state) :- ill_health(X, noun_state).
pathological_state(X, noun_state) :- pathological_state(X),not abnormal_d_state(X),not -pathological_state(X, noun_state).
people(X, noun_group) :- blood(X, noun_group).
people(X, noun_group) :- people(X),not abnormal_d_group(X),not -people(X, noun_group).
person(X, noun_tops) :- bad_person(X, noun_person).
person(X, noun_tops) :- capitalist(X, noun_person).
person(X, noun_tops) :- communicator(X, noun_person).
person(X, noun_tops) :- intellectual(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
person(X, noun_tops) :- unwelcome_person(X, noun_person).
person(X, noun_tops) :- worker(X, noun_person).
physical_entity(X, noun_tops) :- causal_agent(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
placental(X, noun_animal) :- placental(X),not abnormal_d_animal(X),not -placental(X, noun_animal).
placental(X, noun_animal) :- primate(X, noun_animal).
plan(X, noun_cognition) :- plan(X),not abnormal_d_cognition(X),not -plan(X, noun_cognition).
plan(X, noun_cognition) :- plan_of_action(X, noun_cognition).
plan_of_action(X, noun_cognition) :- plan_of_action(X),not abnormal_d_cognition(X),not -plan_of_action(X, noun_cognition).
plan_of_action(X, noun_cognition) :- system(X, noun_cognition).
primate(X, noun_animal) :- hominid(X, noun_animal).
primate(X, noun_animal) :- primate(X),not abnormal_d_animal(X),not -primate(X, noun_animal).
process(X, noun_act) :- process(X),not abnormal_d_act(X),not -process(X, noun_act).
process(X, noun_body) :- process(X),not -process(X, noun_body),-process(X, noun_act),-process(X, noun_communication),-process(X, noun_cognition),not process(X, noun_tops).
process(X, noun_body) :- process(X),not abnormal_d_body(X),not -process(X, noun_body).
process(X, noun_cognition) :- process(X),not -process(X, noun_cognition),-process(X, noun_act),-process(X, noun_communication),not process(X, noun_body),not process(X, noun_tops).
process(X, noun_cognition) :- process(X),not abnormal_d_cognition(X),not -process(X, noun_cognition).
process(X, noun_communication) :- process(X),not -process(X, noun_communication),-process(X, noun_act),not process(X, noun_cognition),not process(X, noun_body),not process(X, noun_tops).
process(X, noun_communication) :- process(X),not abnormal_d_communication(X),not -process(X, noun_communication).
process(X, noun_tops) :- process(X),not -process(X, noun_tops),-process(X, noun_act),-process(X, noun_communication),-process(X, noun_cognition),-process(X, noun_body).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
program(X, noun_communication) :- malevolent_program(X, noun_communication).
program(X, noun_communication) :- program(X),not abnormal_d_communication(X),not -program(X, noun_communication).
property(X, noun_attribute) :- constitution(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
quality(X, noun_attribute) :- difference(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
quality(X, noun_attribute) :- regularity(X, noun_attribute).
regularity(X, noun_attribute) :- orderliness(X, noun_attribute).
regularity(X, noun_attribute) :- regularity(X),not abnormal_d_attribute(X),not -regularity(X, noun_attribute).
representation(X, noun_state) :- representation(X),not abnormal_d_state(X),not -representation(X, noun_state).
representation(X, noun_state) :- virus(X, noun_state).
representative(X, noun_person) :- agent(X, noun_person).
representative(X, noun_person) :- representative(X),not abnormal_d_person(X),not -representative(X, noun_person).
restraint(X, noun_artifact) :- fastener(X, noun_artifact).
restraint(X, noun_artifact) :- restraint(X),not abnormal_d_artifact(X),not -restraint(X, noun_artifact).
screw(X, noun_artifact) :- screw(X),not abnormal_d_artifact(X),not -screw(X, noun_artifact).
screw(X, noun_artifact) :- worm(X, noun_artifact).
semantic_role(X, noun_communication) :- agent(X, noun_communication).
semantic_role(X, noun_communication) :- semantic_role(X),not abnormal_d_communication(X),not -semantic_role(X, noun_communication).
show(X, noun_communication) :- show(X),not abnormal_d_communication(X),not -show(X, noun_communication).
show(X, noun_communication) :- variety(X, noun_communication).
skilled_worker(X, noun_person) :- official(X, noun_person).
skilled_worker(X, noun_person) :- skilled_worker(X),not abnormal_d_person(X),not -skilled_worker(X, noun_person).
social_event(X, noun_event) :- show(X, noun_communication).
social_event(X, noun_event) :- social_event(X),not abnormal_d_event(X),not -social_event(X, noun_event).
social_group(X, noun_group) :- kin(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
software(X, noun_communication) :- program(X, noun_communication).
software(X, noun_communication) :- software(X),not abnormal_d_communication(X),not -software(X, noun_communication).
solid(X, noun_substance) :- food(X, noun_food).
solid(X, noun_substance) :- solid(X),not abnormal_d_substance(X),not -solid(X, noun_substance).
species(X, noun_cognition) :- species(X),not -species(X, noun_cognition),-species(X, noun_group).
species(X, noun_cognition) :- species(X),not abnormal_d_cognition(X),not -species(X, noun_cognition).
species(X, noun_group) :- species(X),not abnormal_d_group(X),not -species(X, noun_group).
state(X, noun_tops) :- condition(X, noun_state).
state(X, noun_tops) :- representation(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
structure(X, noun_artifact) :- obstruction(X, noun_artifact).
structure(X, noun_artifact) :- structure(X),not abnormal_d_artifact(X),not -structure(X, noun_artifact).
structure(X, noun_attribute) :- structure(X),not -structure(X, noun_attribute),-structure(X, noun_artifact),not structure(X, noun_cognition),not structure(X, noun_body),not structure(X, noun_group).
structure(X, noun_attribute) :- structure(X),not abnormal_d_attribute(X),not -structure(X, noun_attribute).
structure(X, noun_body) :- neural_structure(X, noun_body).
structure(X, noun_body) :- structure(X),not -structure(X, noun_body),-structure(X, noun_artifact),-structure(X, noun_attribute),-structure(X, noun_cognition),not structure(X, noun_group).
structure(X, noun_body) :- structure(X),not abnormal_d_body(X),not -structure(X, noun_body).
structure(X, noun_cognition) :- structure(X),not -structure(X, noun_cognition),-structure(X, noun_artifact),-structure(X, noun_attribute),not structure(X, noun_body),not structure(X, noun_group).
structure(X, noun_cognition) :- structure(X),not abnormal_d_cognition(X),not -structure(X, noun_cognition).
structure(X, noun_cognition) :- system(X, noun_cognition).
structure(X, noun_group) :- structure(X),not -structure(X, noun_group),-structure(X, noun_artifact),-structure(X, noun_attribute),-structure(X, noun_cognition),-structure(X, noun_body).
structure(X, noun_group) :- structure(X),not abnormal_d_group(X),not -structure(X, noun_group).
substance(X, noun_tops) :- body_substance(X, noun_body).
substance(X, noun_tops) :- fluid(X, noun_substance).
substance(X, noun_tops) :- material(X, noun_substance).
substance(X, noun_tops) :- solid(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
substance(X, noun_tops) :- system(X, noun_substance).
subsystem(X, noun_group) :- subsystem(X),not abnormal_d_group(X),not -subsystem(X, noun_group).
system(X, noun_artifact) :- system(X),not -system(X, noun_artifact),-system(X, noun_group),not system(X, noun_cognition),not system(X, noun_body),not system(X, noun_substance),not system(X, noun_attribute).
system(X, noun_artifact) :- system(X),not abnormal_d_artifact(X),not -system(X, noun_artifact).
system(X, noun_attribute) :- system(X),not -system(X, noun_attribute),-system(X, noun_group),-system(X, noun_artifact),-system(X, noun_cognition),-system(X, noun_body),-system(X, noun_substance).
system(X, noun_attribute) :- system(X),not abnormal_d_attribute(X),not -system(X, noun_attribute).
system(X, noun_body) :- immune_system(X, noun_body).
system(X, noun_body) :- system(X),not -system(X, noun_body),-system(X, noun_group),-system(X, noun_artifact),-system(X, noun_cognition),not system(X, noun_substance),not system(X, noun_attribute).
system(X, noun_body) :- system(X),not abnormal_d_body(X),not -system(X, noun_body).
system(X, noun_cognition) :- system(X),not -system(X, noun_cognition),-system(X, noun_group),-system(X, noun_artifact),not system(X, noun_body),not system(X, noun_substance),not system(X, noun_attribute).
system(X, noun_cognition) :- system(X),not abnormal_d_cognition(X),not -system(X, noun_cognition).
system(X, noun_group) :- organism(X, noun_group).
system(X, noun_group) :- structure(X, noun_group).
system(X, noun_group) :- subsystem(X, noun_group).
system(X, noun_group) :- system(X),not abnormal_d_group(X),not -system(X, noun_group).
system(X, noun_substance) :- system(X),not -system(X, noun_substance),-system(X, noun_group),-system(X, noun_artifact),-system(X, noun_cognition),-system(X, noun_body),not system(X, noun_attribute).
system(X, noun_substance) :- system(X),not abnormal_d_substance(X),not -system(X, noun_substance).
taxonomic_group(X, noun_group) :- species(X, noun_group).
taxonomic_group(X, noun_group) :- taxonomic_group(X),not abnormal_d_group(X),not -taxonomic_group(X, noun_group).
taxonomic_group(X, noun_group) :- variety(X, noun_group).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
tissue(X, noun_body) :- tissue(X),not abnormal_d_body(X),not -tissue(X, noun_body).
tissue(X, noun_substance) :- tissue(X),not -tissue(X, noun_substance),-tissue(X, noun_body).
tissue(X, noun_substance) :- tissue(X),not abnormal_d_substance(X),not -tissue(X, noun_substance).
trait(X, noun_attribute) :- nature(X, noun_attribute).
trait(X, noun_attribute) :- trait(X),not abnormal_d_attribute(X),not -trait(X, noun_attribute).
unpleasant_person(X, noun_person) :- unpleasant_person(X),not abnormal_d_person(X),not -unpleasant_person(X, noun_person).
unpleasant_person(X, noun_person) :- worm(X, noun_person).
unwelcome_person(X, noun_person) :- unpleasant_person(X, noun_person).
unwelcome_person(X, noun_person) :- unwelcome_person(X),not abnormal_d_person(X),not -unwelcome_person(X, noun_person).
variety(X, noun_attribute) :- variety(X),not -variety(X, noun_attribute),-variety(X, noun_group),-variety(X, noun_communication),-variety(X, noun_cognition).
variety(X, noun_attribute) :- variety(X),not abnormal_d_attribute(X),not -variety(X, noun_attribute).
variety(X, noun_cognition) :- variety(X),not -variety(X, noun_cognition),-variety(X, noun_group),-variety(X, noun_communication),not variety(X, noun_attribute).
variety(X, noun_cognition) :- variety(X),not abnormal_d_cognition(X),not -variety(X, noun_cognition).
variety(X, noun_communication) :- variety(X),not -variety(X, noun_communication),-variety(X, noun_group),not variety(X, noun_cognition),not variety(X, noun_attribute).
variety(X, noun_communication) :- variety(X),not abnormal_d_communication(X),not -variety(X, noun_communication).
variety(X, noun_group) :- variety(X),not abnormal_d_group(X),not -variety(X, noun_group).
variety_meat(X, noun_food) :- brain(X, noun_food).
variety_meat(X, noun_food) :- variety_meat(X),not abnormal_d_food(X),not -variety_meat(X, noun_food).
vertebrate(X, noun_animal) :- mammal(X, noun_animal).
vertebrate(X, noun_animal) :- vertebrate(X),not abnormal_d_animal(X),not -vertebrate(X, noun_animal).
virus(X, noun_animal) :- virus(X),not abnormal_d_animal(X),not -virus(X, noun_animal).
virus(X, noun_communication) :- virus(X),not -virus(X, noun_communication),-virus(X, noun_animal),-virus(X, noun_state).
virus(X, noun_communication) :- virus(X),not abnormal_d_communication(X),not -virus(X, noun_communication).
virus(X, noun_state) :- virus(X),not -virus(X, noun_state),-virus(X, noun_animal),not virus(X, noun_communication).
virus(X, noun_state) :- virus(X),not abnormal_d_state(X),not -virus(X, noun_state).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- natural_object(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
worker(X, noun_person) :- skilled_worker(X, noun_person).
worker(X, noun_person) :- worker(X),not abnormal_d_person(X),not -worker(X, noun_person).
worm(X, noun_animal) :- worm(X),not abnormal_d_animal(X),not -worm(X, noun_animal).
worm(X, noun_artifact) :- worm(X),not -worm(X, noun_artifact),-worm(X, noun_animal),-worm(X, noun_person),-worm(X, noun_communication).
worm(X, noun_artifact) :- worm(X),not abnormal_d_artifact(X),not -worm(X, noun_artifact).
worm(X, noun_communication) :- worm(X),not -worm(X, noun_communication),-worm(X, noun_animal),-worm(X, noun_person),not worm(X, noun_artifact).
worm(X, noun_communication) :- worm(X),not abnormal_d_communication(X),not -worm(X, noun_communication).
worm(X, noun_person) :- worm(X),not -worm(X, noun_person),-worm(X, noun_animal),not worm(X, noun_communication),not worm(X, noun_artifact).
worm(X, noun_person) :- worm(X),not abnormal_d_person(X),not -worm(X, noun_person).
writ(X, noun_communication) :- process(X, noun_communication).
writ(X, noun_communication) :- writ(X),not abnormal_d_communication(X),not -writ(X, noun_communication).
writing(X, noun_communication) :- coding_system(X, noun_communication).
writing(X, noun_communication) :- document(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).
