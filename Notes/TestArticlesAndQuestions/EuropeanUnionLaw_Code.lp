%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(body, regulations_and_directives).
_is(european_union_law, body).
_is(main_source, treaty).
_is(source, primary_law).
_is(source, secondary_law).
_is(source, supplementary_law).
_is(source, treaty).
_mod(compose, principally).
_mod(source, main).
_mod(source, secondary).
_mod(source, three).
_mod(state, european_union).
_property(base, on(treaty)).
_property(body, of(legislation)).
_property(body, of(treaty)).
_property(compose, of(council_of_the_european_union)).
_property(compose, of(european_parliament)).
_property(establish, under(treaty)).
_property(have, on(law)).
_property(law, of(state)).
_property(legislature, of(european_union)).
_property(set, in(treaty)).
_property(source, of(european_union_law)).
_property(source, of(primary_law)).
_relation(objective, 13, _clause).
_relation(treaty, 5, _clause).
body(body).
body(european_union_law).
body(regulations_and_directives).
directive(directive).
european_union(european_union).
event(10, compose, null, legislature).
event(11, establish, council_of_the_european_union, null).
event(12, pursue, null, objective).
event(13, set, null, null).
event(2, have, regulations_and_directives, direct_effect).
event(2, have, regulations_and_directives, indirect_effect).
event(5, establish, null, european_union).
event(6, include, secondary_source, directive).
event(6, include, secondary_source, regulation).
event(6, include, source, directive).
event(6, include, source, regulation).
event(8, base, null, directive).
event(8, base, null, regulation).
law(law).
legislation(legislation).
legislature(legislature).
member(member).
objective(objective).
regulation(regulation).
source(source).
state(state).
treaty(main_source).
treaty(source).
treaty(treaty).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
abstract_entity(X, noun_tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_tops).
abstract_entity(X, noun_tops) :- abstraction(X, noun_tops).
abstraction(X, noun_tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_tops).
abstraction(X, noun_tops) :- attribute(X, noun_tops).
abstraction(X, noun_tops) :- communication(X, noun_tops).
abstraction(X, noun_tops) :- group(X, noun_tops).
abstraction(X, noun_tops) :- psychological_feature(X, noun_tops).
abstraction(X, noun_tops) :- relation(X, noun_tops).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- activity(X, noun_act).
act(X, noun_tops) :- group_action(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- control(X, noun_act).
activity(X, noun_act) :- occupation(X, noun_act).
administrative_district(X, noun_location) :- administrative_district(X),not abnormal_d_location(X),not -administrative_district(X, noun_location).
administrative_district(X, noun_location) :- state(X, noun_location).
administrative_unit(X, noun_group) :- administrative_unit(X),not abnormal_d_group(X),not -administrative_unit(X, noun_group).
administrative_unit(X, noun_group) :- division(X, noun_group).
agreement(X, noun_communication) :- agreement(X),not abnormal_d_communication(X),not -agreement(X, noun_communication).
agreement(X, noun_communication) :- written_agreement(X, noun_communication).
alliance(X, noun_group) :- alliance(X),not abnormal_d_group(X),not -alliance(X, noun_group).
alliance(X, noun_group) :- world_organization(X, noun_group).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- creation(X, noun_artifact).
artifact(X, noun_tops) :- facility(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
artifact(X, noun_tops) :- structure(X, noun_artifact).
assembly(X, noun_group) :- assembly(X),not abnormal_d_group(X),not -assembly(X, noun_group).
assembly(X, noun_group) :- legislature(X, noun_group).
associate(X, noun_person) :- associate(X),not abnormal_d_person(X),not -associate(X, noun_person).
associate(X, noun_person) :- member(X, noun_person).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
body(X, noun_artifact) :- body(X),not -body(X, noun_artifact),-body(X, noun_body),-body(X, noun_object),-body(X, noun_group),not body(X, noun_attribute),not body(X, noun_communication).
body(X, noun_artifact) :- body(X),not abnormal_d_artifact(X),not -body(X, noun_artifact).
body(X, noun_attribute) :- body(X),not -body(X, noun_attribute),-body(X, noun_body),-body(X, noun_object),-body(X, noun_group),-body(X, noun_artifact),not body(X, noun_communication).
body(X, noun_attribute) :- body(X),not abnormal_d_attribute(X),not -body(X, noun_attribute).
body(X, noun_body) :- body(X),not abnormal_d_body(X),not -body(X, noun_body).
body(X, noun_communication) :- body(X),not -body(X, noun_communication),-body(X, noun_body),-body(X, noun_object),-body(X, noun_group),-body(X, noun_artifact),-body(X, noun_attribute).
body(X, noun_communication) :- body(X),not abnormal_d_communication(X),not -body(X, noun_communication).
body(X, noun_group) :- body(X),not -body(X, noun_group),-body(X, noun_body),-body(X, noun_object),not body(X, noun_artifact),not body(X, noun_attribute),not body(X, noun_communication).
body(X, noun_group) :- body(X),not abnormal_d_group(X),not -body(X, noun_group).
body(X, noun_object) :- body(X),not -body(X, noun_object),-body(X, noun_body),not body(X, noun_group),not body(X, noun_artifact),not body(X, noun_attribute),not body(X, noun_communication).
body(X, noun_object) :- body(X),not abnormal_d_object(X),not -body(X, noun_object).
body_part(X, noun_body) :- body(X, noun_body).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
body_part(X, noun_body) :- external_body_part(X, noun_body).
body_part(X, noun_body) :- organ(X, noun_body).
chemical_phenomenon(X, noun_phenomenon) :- chemical_phenomenon(X),not abnormal_d_phenomenon(X),not -chemical_phenomenon(X, noun_phenomenon).
chemical_phenomenon(X, noun_phenomenon) :- state(X, noun_state).
civil_law(X, noun_group) :- civil_law(X),not abnormal_d_group(X),not -civil_law(X, noun_group).
civil_law(X, noun_group) :- legislation(X, noun_communication).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- law(X, noun_group).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- message(X, noun_communication).
communication(X, noun_tops) :- written_communication(X, noun_communication).
communicator(X, noun_person) :- communicator(X),not abnormal_d_person(X),not -communicator(X, noun_person).
communicator(X, noun_person) :- source(X, noun_person).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- law(X, noun_cognition).
concept(X, noun_cognition) :- regulation(X, noun_cognition).
condition(X, noun_state) :- condition(X),not abnormal_d_state(X),not -condition(X, noun_state).
condition(X, noun_state) :- dominance(X, noun_state).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- goal(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
content(X, noun_cognition) :- knowledge_domain(X, noun_cognition).
control(X, noun_act) :- control(X),not abnormal_d_act(X),not -control(X, noun_act).
control(X, noun_act) :- regulation(X, noun_act).
creation(X, noun_artifact) :- creation(X),not abnormal_d_artifact(X),not -creation(X, noun_artifact).
creation(X, noun_artifact) :- product(X, noun_artifact).
creator(X, noun_person) :- creator(X),not abnormal_d_person(X),not -creator(X, noun_person).
creator(X, noun_person) :- maker(X, noun_person).
declaration(X, noun_communication) :- declaration(X),not abnormal_d_communication(X),not -declaration(X, noun_communication).
declaration(X, noun_communication) :- pronouncement(X, noun_communication).
department(X, noun_group) :- department(X),not abnormal_d_group(X),not -department(X, noun_group).
department(X, noun_group) :- government_department(X, noun_group).
device(X, noun_artifact) :- device(X),not abnormal_d_artifact(X),not -device(X, noun_artifact).
device(X, noun_artifact) :- optical_device(X, noun_artifact).
direction(X, noun_communication) :- direction(X),not abnormal_d_communication(X),not -direction(X, noun_communication).
direction(X, noun_communication) :- rule(X, noun_communication).
directive(X, noun_communication) :- directive(X),not abnormal_d_communication(X),not -directive(X, noun_communication).
discipline(X, noun_cognition) :- discipline(X),not abnormal_d_cognition(X),not -discipline(X, noun_cognition).
discipline(X, noun_cognition) :- humanistic_discipline(X, noun_cognition).
district(X, noun_location) :- administrative_district(X, noun_location).
district(X, noun_location) :- district(X),not abnormal_d_location(X),not -district(X, noun_location).
division(X, noun_group) :- department(X, noun_group).
division(X, noun_group) :- division(X),not abnormal_d_group(X),not -division(X, noun_group).
document(X, noun_communication) :- document(X),not abnormal_d_communication(X),not -document(X, noun_communication).
document(X, noun_communication) :- legal_document(X, noun_communication).
document(X, noun_communication) :- source(X, noun_communication).
dominance(X, noun_state) :- dominance(X),not abnormal_d_state(X),not -dominance(X, noun_state).
dominance(X, noun_state) :- regulation(X, noun_state).
emotion(X, noun_feeling) :- emotion(X),not abnormal_d_feeling(X),not -emotion(X, noun_feeling).
emotion(X, noun_feeling) :- emotional_state(X, noun_state).
emotional_state(X, noun_state) :- emotional_state(X),not abnormal_d_state(X),not -emotional_state(X, noun_state).
emotional_state(X, noun_state) :- state(X, noun_state).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
erectile_organ(X, noun_body) :- erectile_organ(X),not abnormal_d_body(X),not -erectile_organ(X, noun_body).
erectile_organ(X, noun_body) :- member(X, noun_body).
european_union(X, noun_group) :- european_union(X),not abnormal_d_group(X),not -european_union(X, noun_group).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
executive_department(X, noun_group) :- executive_department(X),not abnormal_d_group(X),not -executive_department(X, noun_group).
executive_department(X, noun_group) :- state(X, noun_group).
external_body_part(X, noun_body) :- external_body_part(X),not abnormal_d_body(X),not -external_body_part(X, noun_body).
external_body_part(X, noun_body) :- member(X, noun_body).
facility(X, noun_artifact) :- facility(X),not abnormal_d_artifact(X),not -facility(X, noun_artifact).
facility(X, noun_artifact) :- source(X, noun_artifact).
federal_department(X, noun_group) :- executive_department(X, noun_group).
federal_department(X, noun_group) :- federal_department(X),not abnormal_d_group(X),not -federal_department(X, noun_group).
feeling(X, noun_tops) :- emotion(X, noun_feeling).
feeling(X, noun_tops) :- feeling(X),not abnormal_d_tops(X),not -feeling(X, noun_tops).
force(X, noun_group) :- force(X),not abnormal_d_group(X),not -force(X, noun_group).
force(X, noun_group) :- law(X, noun_group).
gathering(X, noun_group) :- assembly(X, noun_group).
gathering(X, noun_group) :- body(X, noun_group).
gathering(X, noun_group) :- gathering(X),not abnormal_d_group(X),not -gathering(X, noun_group).
goal(X, noun_cognition) :- goal(X),not abnormal_d_cognition(X),not -goal(X, noun_cognition).
goal(X, noun_cognition) :- objective(X, noun_cognition).
government(X, noun_act) :- government(X),not -government(X, noun_act),-government(X, noun_group).
government(X, noun_act) :- government(X),not abnormal_d_act(X),not -government(X, noun_act).
government(X, noun_act) :- legislation(X, noun_act).
government(X, noun_group) :- government(X),not abnormal_d_group(X),not -government(X, noun_group).
government(X, noun_group) :- state(X, noun_group).
government_department(X, noun_group) :- federal_department(X, noun_group).
government_department(X, noun_group) :- government_department(X),not abnormal_d_group(X),not -government_department(X, noun_group).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- social_group(X, noun_group).
group(X, noun_tops) :- system(X, noun_group).
group_action(X, noun_act) :- group_action(X),not abnormal_d_act(X),not -group_action(X, noun_act).
group_action(X, noun_act) :- social_control(X, noun_act).
humanistic_discipline(X, noun_cognition) :- humanistic_discipline(X),not abnormal_d_cognition(X),not -humanistic_discipline(X, noun_cognition).
humanistic_discipline(X, noun_cognition) :- philosophy(X, noun_cognition).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
idea(X, noun_cognition) :- inspiration(X, noun_cognition).
inspiration(X, noun_cognition) :- inspiration(X),not abnormal_d_cognition(X),not -inspiration(X, noun_cognition).
inspiration(X, noun_cognition) :- source(X, noun_cognition).
instrumentality(X, noun_artifact) :- device(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
knowledge_domain(X, noun_cognition) :- discipline(X, noun_cognition).
knowledge_domain(X, noun_cognition) :- knowledge_domain(X),not abnormal_d_cognition(X),not -knowledge_domain(X, noun_cognition).
law(X, noun_act) :- law(X),not -law(X, noun_act),-law(X, noun_communication),-law(X, noun_cognition),not law(X, noun_group).
law(X, noun_act) :- law(X),not abnormal_d_act(X),not -law(X, noun_act).
law(X, noun_cognition) :- law(X),not -law(X, noun_cognition),-law(X, noun_communication),not law(X, noun_act),not law(X, noun_group).
law(X, noun_cognition) :- law(X),not abnormal_d_cognition(X),not -law(X, noun_cognition).
law(X, noun_communication) :- law(X),not abnormal_d_communication(X),not -law(X, noun_communication).
law(X, noun_group) :- civil_law(X, noun_group).
law(X, noun_group) :- law(X),not -law(X, noun_group),-law(X, noun_communication),-law(X, noun_cognition),-law(X, noun_act).
law(X, noun_group) :- law(X),not abnormal_d_group(X),not -law(X, noun_group).
learned_profession(X, noun_act) :- law(X, noun_act).
learned_profession(X, noun_act) :- learned_profession(X),not abnormal_d_act(X),not -learned_profession(X, noun_act).
legal_document(X, noun_communication) :- law(X, noun_communication).
legal_document(X, noun_communication) :- legal_document(X),not abnormal_d_communication(X),not -legal_document(X, noun_communication).
legislation(X, noun_act) :- legislation(X),not -legislation(X, noun_act),-legislation(X, noun_communication).
legislation(X, noun_act) :- legislation(X),not abnormal_d_act(X),not -legislation(X, noun_act).
legislation(X, noun_communication) :- legislation(X),not abnormal_d_communication(X),not -legislation(X, noun_communication).
legislature(X, noun_group) :- legislature(X),not abnormal_d_group(X),not -legislature(X, noun_group).
lens(X, noun_artifact) :- lens(X),not abnormal_d_artifact(X),not -lens(X, noun_artifact).
lens(X, noun_artifact) :- objective(X, noun_artifact).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- point(X, noun_location).
location(X, noun_tops) :- region(X, noun_location).
maker(X, noun_person) :- maker(X),not abnormal_d_person(X),not -maker(X, noun_person).
maker(X, noun_person) :- source(X, noun_person).
member(X, noun_body) :- member(X),not -member(X, noun_body),-member(X, noun_person),-member(X, noun_group),-member(X, noun_relation).
member(X, noun_body) :- member(X),not abnormal_d_body(X),not -member(X, noun_body).
member(X, noun_group) :- member(X),not -member(X, noun_group),-member(X, noun_person),not member(X, noun_relation),not member(X, noun_body).
member(X, noun_group) :- member(X),not abnormal_d_group(X),not -member(X, noun_group).
member(X, noun_person) :- member(X),not abnormal_d_person(X),not -member(X, noun_person).
member(X, noun_relation) :- member(X),not -member(X, noun_relation),-member(X, noun_person),-member(X, noun_group),not member(X, noun_body).
member(X, noun_relation) :- member(X),not abnormal_d_relation(X),not -member(X, noun_relation).
message(X, noun_communication) :- body(X, noun_communication).
message(X, noun_communication) :- direction(X, noun_communication).
message(X, noun_communication) :- message(X),not abnormal_d_communication(X),not -message(X, noun_communication).
message(X, noun_communication) :- statement(X, noun_communication).
natural_object(X, noun_tops) :- body(X, noun_body).
natural_object(X, noun_tops) :- body(X, noun_object).
natural_object(X, noun_tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_tops).
natural_phenomenon(X, noun_phenomenon) :- chemical_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
natural_process(X, noun_process) :- natural_process(X),not abnormal_d_process(X),not -natural_process(X, noun_process).
natural_process(X, noun_process) :- source(X, noun_process).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
objective(X, noun_artifact) :- objective(X),not -objective(X, noun_artifact),-objective(X, noun_cognition).
objective(X, noun_artifact) :- objective(X),not abnormal_d_artifact(X),not -objective(X, noun_artifact).
objective(X, noun_cognition) :- objective(X),not abnormal_d_cognition(X),not -objective(X, noun_cognition).
occupation(X, noun_act) :- occupation(X),not abnormal_d_act(X),not -occupation(X, noun_act).
occupation(X, noun_act) :- profession(X, noun_act).
optical_device(X, noun_artifact) :- lens(X, noun_artifact).
optical_device(X, noun_artifact) :- optical_device(X),not abnormal_d_artifact(X),not -optical_device(X, noun_artifact).
organ(X, noun_body) :- erectile_organ(X, noun_body).
organ(X, noun_body) :- organ(X),not abnormal_d_body(X),not -organ(X, noun_body).
organic_process(X, noun_process) :- organic_process(X),not abnormal_d_process(X),not -organic_process(X, noun_process).
organic_process(X, noun_process) :- regulation(X, noun_process).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- alliance(X, noun_group).
organization(X, noun_group) :- force(X, noun_group).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- polity(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not -part(X, noun_object),-part(X, noun_relation).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
part(X, noun_relation) :- member(X, noun_relation).
part(X, noun_relation) :- part(X),not abnormal_d_relation(X),not -part(X, noun_relation).
peer(X, noun_person) :- associate(X, noun_person).
peer(X, noun_person) :- peer(X),not abnormal_d_person(X),not -peer(X, noun_person).
person(X, noun_tops) :- communicator(X, noun_person).
person(X, noun_tops) :- creator(X, noun_person).
person(X, noun_tops) :- peer(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
philosophy(X, noun_cognition) :- law(X, noun_cognition).
philosophy(X, noun_cognition) :- philosophy(X),not abnormal_d_cognition(X),not -philosophy(X, noun_cognition).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
point(X, noun_location) :- point(X),not abnormal_d_location(X),not -point(X, noun_location).
point(X, noun_location) :- source(X, noun_location).
political_unit(X, noun_group) :- political_unit(X),not abnormal_d_group(X),not -political_unit(X, noun_group).
political_unit(X, noun_group) :- state(X, noun_group).
polity(X, noun_group) :- government(X, noun_group).
polity(X, noun_group) :- polity(X),not abnormal_d_group(X),not -polity(X, noun_group).
process(X, noun_tops) :- natural_process(X, noun_process).
process(X, noun_tops) :- organic_process(X, noun_process).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
product(X, noun_artifact) :- product(X),not abnormal_d_artifact(X),not -product(X, noun_artifact).
product(X, noun_artifact) :- work(X, noun_artifact).
profession(X, noun_act) :- learned_profession(X, noun_act).
profession(X, noun_act) :- profession(X),not abnormal_d_act(X),not -profession(X, noun_act).
pronouncement(X, noun_communication) :- directive(X, noun_communication).
pronouncement(X, noun_communication) :- pronouncement(X),not abnormal_d_communication(X),not -pronouncement(X, noun_communication).
property(X, noun_attribute) :- body(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
publication(X, noun_communication) :- publication(X),not abnormal_d_communication(X),not -publication(X, noun_communication).
publication(X, noun_communication) :- source(X, noun_communication).
region(X, noun_location) :- district(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
regulation(X, noun_act) :- regulation(X),not -regulation(X, noun_act),-regulation(X, noun_communication),-regulation(X, noun_cognition),-regulation(X, noun_state),-regulation(X, noun_process).
regulation(X, noun_act) :- regulation(X),not abnormal_d_act(X),not -regulation(X, noun_act).
regulation(X, noun_cognition) :- regulation(X),not -regulation(X, noun_cognition),-regulation(X, noun_communication),not regulation(X, noun_state),not regulation(X, noun_process),not regulation(X, noun_act).
regulation(X, noun_cognition) :- regulation(X),not abnormal_d_cognition(X),not -regulation(X, noun_cognition).
regulation(X, noun_communication) :- regulation(X),not abnormal_d_communication(X),not -regulation(X, noun_communication).
regulation(X, noun_process) :- regulation(X),not -regulation(X, noun_process),-regulation(X, noun_communication),-regulation(X, noun_cognition),-regulation(X, noun_state),not regulation(X, noun_act).
regulation(X, noun_process) :- regulation(X),not abnormal_d_process(X),not -regulation(X, noun_process).
regulation(X, noun_state) :- regulation(X),not -regulation(X, noun_state),-regulation(X, noun_communication),-regulation(X, noun_cognition),not regulation(X, noun_process),not regulation(X, noun_act).
regulation(X, noun_state) :- regulation(X),not abnormal_d_state(X),not -regulation(X, noun_state).
relation(X, noun_tops) :- part(X, noun_relation).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
rule(X, noun_communication) :- regulation(X, noun_communication).
rule(X, noun_communication) :- rule(X),not abnormal_d_communication(X),not -rule(X, noun_communication).
social_control(X, noun_act) :- government(X, noun_act).
social_control(X, noun_act) :- social_control(X),not abnormal_d_act(X),not -social_control(X, noun_act).
social_group(X, noun_group) :- gathering(X, noun_group).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
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
state(X, noun_group) :- state(X),not -state(X, noun_group),-state(X, noun_tops),not state(X, noun_location),not state(X, noun_state).
state(X, noun_group) :- state(X),not abnormal_d_group(X),not -state(X, noun_group).
state(X, noun_location) :- state(X),not -state(X, noun_location),-state(X, noun_tops),-state(X, noun_group),not state(X, noun_state).
state(X, noun_location) :- state(X),not abnormal_d_location(X),not -state(X, noun_location).
state(X, noun_state) :- state(X),not -state(X, noun_state),-state(X, noun_tops),-state(X, noun_group),-state(X, noun_location).
state(X, noun_state) :- state(X),not abnormal_d_state(X),not -state(X, noun_state).
state(X, noun_tops) :- condition(X, noun_state).
state(X, noun_tops) :- feeling(X, noun_tops).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
statement(X, noun_communication) :- agreement(X, noun_communication).
statement(X, noun_communication) :- declaration(X, noun_communication).
statement(X, noun_communication) :- statement(X),not abnormal_d_communication(X),not -statement(X, noun_communication).
structure(X, noun_artifact) :- body(X, noun_artifact).
structure(X, noun_artifact) :- structure(X),not abnormal_d_artifact(X),not -structure(X, noun_artifact).
system(X, noun_group) :- body(X, noun_group).
system(X, noun_group) :- system(X),not abnormal_d_group(X),not -system(X, noun_group).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- source(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
treaty(X, noun_communication) :- treaty(X),not abnormal_d_communication(X),not -treaty(X, noun_communication).
unit(X, noun_group) :- administrative_unit(X, noun_group).
unit(X, noun_group) :- member(X, noun_group).
unit(X, noun_group) :- political_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- natural_object(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
work(X, noun_artifact) :- publication(X, noun_communication).
work(X, noun_artifact) :- work(X),not abnormal_d_artifact(X),not -work(X, noun_artifact).
world_organization(X, noun_group) :- european_union(X, noun_group).
world_organization(X, noun_group) :- world_organization(X),not abnormal_d_group(X),not -world_organization(X, noun_group).
writing(X, noun_communication) :- document(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
written_agreement(X, noun_communication) :- treaty(X, noun_communication).
written_agreement(X, noun_communication) :- written_agreement(X),not abnormal_d_communication(X),not -written_agreement(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).
