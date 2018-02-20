%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_abbreviation(ac, alternating_current).
_birth_date(nikola_tesla, '10_july_1856').
_death_date(nikola_tesla, '7_january_1943').
_is(nikola_tesla, electrical_engineer).
_is(nikola_tesla, engineer).
_is(nikola_tesla, futurist).
_is(nikola_tesla, inventor).
_is(nikola_tesla, mechanical_engineer).
_is(nikola_tesla, physicist).
_is(nikola_tesla, serbian_american_inventor).
_mod(engineer, electrical).
_mod(engineer, mechanical).
_mod(inventor, serbian_american).
_mod(know, best).
_mod(system, alternating_current).
_mod(system, modern).
_possess(nikola_tesla, contribution).
_property(contribution, to(design)).
_property(design, of(system)).
_property(know, for(contribution)).
_relation(futurist, 2, _clause).
contribution(contribution).
design(design).
electricity(electricity).
engineer(engineer).
futurist(futurist).
inventor(inventor).
nikola_tesla(nikola_tesla).
physicist(physicist).
supply(supply).
system(system).
time('10_july_1856').
time('7_january_1943').
%%-------------------------------------------------------%%
%%Rules%%
%%-------------------------------------------------------%%
ethnicity(serbian_american).
ethnicity(P, X) :- _mod(P, X), ethnicity(X).
ethnicity(P, X) :- _is(P, Y), _mod(Y, X), ethnicity(X).
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
abstraction(X, noun_tops) :- group(X, noun_tops).
abstraction(X, noun_tops) :- measure(X, noun_tops).
abstraction(X, noun_tops) :- psychological_feature(X, noun_tops).
abstraction(X, noun_tops) :- relation(X, noun_tops).
acquisition(X, noun_possession) :- acquisition(X),not abnormal_d_possession(X),not -acquisition(X, noun_possession).
acquisition(X, noun_possession) :- gift(X, noun_possession).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- activity(X, noun_act).
act(X, noun_tops) :- distribution(X, noun_act).
act(X, noun_tops) :- group_action(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- attempt(X, noun_act).
activity(X, noun_act) :- creation(X, noun_act).
activity(X, noun_act) :- supply(X, noun_act).
agitation(X, noun_feeling) :- agitation(X),not abnormal_d_feeling(X),not -agitation(X, noun_feeling).
agitation(X, noun_feeling) :- stir(X, noun_feeling).
arrangement(X, noun_cognition) :- arrangement(X),not abnormal_d_cognition(X),not -arrangement(X, noun_cognition).
arrangement(X, noun_cognition) :- design(X, noun_cognition).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- creation(X, noun_artifact).
artifact(X, noun_tops) :- decoration(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
assets(X, noun_possession) :- assets(X),not abnormal_d_possession(X),not -assets(X, noun_possession).
assets(X, noun_possession) :- sum(X, noun_possession).
attempt(X, noun_act) :- attempt(X),not abnormal_d_act(X),not -attempt(X, noun_act).
attempt(X, noun_act) :- contribution(X, noun_act).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
body(X, noun_body) :- body(X),not abnormal_d_body(X),not -body(X, noun_body).
body(X, noun_body) :- live_body(X, noun_body).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
body_part(X, noun_body) :- system(X, noun_body).
causal_agent(X, noun_tops) :- causal_agent(X),not abnormal_d_tops(X),not -causal_agent(X, noun_tops).
causal_agent(X, noun_tops) :- operator(X, noun_person).
cognition(X, noun_tops) :- ability(X, noun_cognition).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- structure(X, noun_cognition).
commerce(X, noun_act) :- commerce(X),not abnormal_d_act(X),not -commerce(X, noun_act).
commerce(X, noun_act) :- commercial_enterprise(X, noun_act).
commercial_enterprise(X, noun_act) :- commercial_enterprise(X),not abnormal_d_act(X),not -commercial_enterprise(X, noun_act).
commercial_enterprise(X, noun_act) :- publication(X, noun_act).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- goal(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
contribution(X, noun_act) :- contribution(X),not -contribution(X, noun_act),-contribution(X, noun_possession).
contribution(X, noun_act) :- contribution(X),not abnormal_d_act(X),not -contribution(X, noun_act).
contribution(X, noun_possession) :- contribution(X),not abnormal_d_possession(X),not -contribution(X, noun_possession).
creating_by_mental_acts(X, noun_act) :- creating_by_mental_acts(X),not abnormal_d_act(X),not -creating_by_mental_acts(X, noun_act).
creating_by_mental_acts(X, noun_act) :- design(X, noun_act).
creation(X, noun_act) :- creating_by_mental_acts(X, noun_act).
creation(X, noun_act) :- creation(X),not -creation(X, noun_act),-creation(X, noun_artifact).
creation(X, noun_act) :- creation(X),not abnormal_d_act(X),not -creation(X, noun_act).
creation(X, noun_artifact) :- creation(X),not abnormal_d_artifact(X),not -creation(X, noun_artifact).
creation(X, noun_artifact) :- representation(X, noun_artifact).
creativity(X, noun_cognition) :- creativity(X),not abnormal_d_cognition(X),not -creativity(X, noun_cognition).
creativity(X, noun_cognition) :- design(X, noun_cognition).
creator(X, noun_person) :- creator(X),not abnormal_d_person(X),not -creator(X, noun_person).
creator(X, noun_person) :- inventor(X, noun_person).
decoration(X, noun_artifact) :- decoration(X),not abnormal_d_artifact(X),not -decoration(X, noun_artifact).
decoration(X, noun_artifact) :- design(X, noun_artifact).
design(X, noun_act) :- design(X),not abnormal_d_act(X),not -design(X, noun_act).
design(X, noun_artifact) :- design(X),not -design(X, noun_artifact),-design(X, noun_act),-design(X, noun_cognition).
design(X, noun_artifact) :- design(X),not abnormal_d_artifact(X),not -design(X, noun_artifact).
design(X, noun_cognition) :- design(X),not -design(X, noun_cognition),-design(X, noun_act),not design(X, noun_artifact).
design(X, noun_cognition) :- design(X),not abnormal_d_cognition(X),not -design(X, noun_cognition).
distribution(X, noun_act) :- distribution(X),not abnormal_d_act(X),not -distribution(X, noun_act).
distribution(X, noun_act) :- sharing(X, noun_act).
drawing(X, noun_artifact) :- drawing(X),not abnormal_d_artifact(X),not -drawing(X, noun_artifact).
drawing(X, noun_artifact) :- sketch(X, noun_artifact).
economic_process(X, noun_process) :- economic_process(X),not abnormal_d_process(X),not -economic_process(X, noun_process).
economic_process(X, noun_process) :- supply(X, noun_process).
electricity(X, noun_feeling) :- electricity(X),not -electricity(X, noun_feeling),-electricity(X, noun_phenomenon).
electricity(X, noun_feeling) :- electricity(X),not abnormal_d_feeling(X),not -electricity(X, noun_feeling).
electricity(X, noun_phenomenon) :- electricity(X),not abnormal_d_phenomenon(X),not -electricity(X, noun_phenomenon).
energy(X, noun_phenomenon) :- electricity(X, noun_phenomenon).
energy(X, noun_phenomenon) :- energy(X),not abnormal_d_phenomenon(X),not -energy(X, noun_phenomenon).
engineer(X, noun_person) :- engineer(X),not abnormal_d_person(X),not -engineer(X, noun_person).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
feeling(X, noun_tops) :- agitation(X, noun_feeling).
feeling(X, noun_tops) :- feeling(X),not abnormal_d_tops(X),not -feeling(X, noun_tops).
futurist(X, noun_person) :- futurist(X),not abnormal_d_person(X),not -futurist(X, noun_person).
gift(X, noun_possession) :- contribution(X, noun_possession).
gift(X, noun_possession) :- gift(X),not abnormal_d_possession(X),not -gift(X, noun_possession).
giving(X, noun_act) :- contribution(X, noun_act).
giving(X, noun_act) :- giving(X),not abnormal_d_act(X),not -giving(X, noun_act).
goal(X, noun_cognition) :- design(X, noun_cognition).
goal(X, noun_cognition) :- goal(X),not abnormal_d_cognition(X),not -goal(X, noun_cognition).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- system(X, noun_group).
group_action(X, noun_act) :- group_action(X),not abnormal_d_act(X),not -group_action(X, noun_act).
group_action(X, noun_act) :- transaction(X, noun_act).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
idea(X, noun_cognition) :- plan(X, noun_cognition).
indefinite_quantity(X, noun_quantity) :- indefinite_quantity(X),not abnormal_d_quantity(X),not -indefinite_quantity(X, noun_quantity).
indefinite_quantity(X, noun_quantity) :- supply(X, noun_quantity).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
instrumentality(X, noun_artifact) :- system(X, noun_artifact).
intellectual(X, noun_person) :- intellectual(X),not abnormal_d_person(X),not -intellectual(X, noun_person).
intellectual(X, noun_person) :- scholar(X, noun_person).
intellectual(X, noun_person) :- visionary(X, noun_person).
inventor(X, noun_person) :- inventor(X),not abnormal_d_person(X),not -inventor(X, noun_person).
know_how(X, noun_cognition) :- know_how(X),not abnormal_d_cognition(X),not -know_how(X, noun_cognition).
know_how(X, noun_cognition) :- method(X, noun_cognition).
live_body(X, noun_body) :- live_body(X),not abnormal_d_body(X),not -live_body(X, noun_body).
live_body(X, noun_body) :- system(X, noun_body).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
measure(X, noun_tops) :- indefinite_quantity(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
method(X, noun_cognition) :- method(X),not abnormal_d_cognition(X),not -method(X, noun_cognition).
method(X, noun_cognition) :- system(X, noun_cognition).
natural_object(X, noun_tops) :- body(X, noun_body).
natural_object(X, noun_tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_tops).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X, noun_phenomenon).
nikola_tesla(X, noun_person) :- nikola_tesla(X),not abnormal_d_person(X),not -nikola_tesla(X, noun_person).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
operator(X, noun_person) :- engineer(X, noun_person).
operator(X, noun_person) :- operator(X),not abnormal_d_person(X),not -operator(X, noun_person).
orderliness(X, noun_attribute) :- orderliness(X),not abnormal_d_attribute(X),not -orderliness(X, noun_attribute).
orderliness(X, noun_attribute) :- system(X, noun_attribute).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
person(X, noun_tops) :- creator(X, noun_person).
person(X, noun_tops) :- engineer(X, noun_person).
person(X, noun_tops) :- intellectual(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
person(X, noun_tops) :- scientist(X, noun_person).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- causal_agent(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
physical_phenomenon(X, noun_phenomenon) :- electricity(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- energy(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X),not abnormal_d_phenomenon(X),not -physical_phenomenon(X, noun_phenomenon).
physicist(X, noun_person) :- physicist(X),not abnormal_d_person(X),not -physicist(X, noun_person).
plan(X, noun_cognition) :- design(X, noun_cognition).
plan(X, noun_cognition) :- plan(X),not abnormal_d_cognition(X),not -plan(X, noun_cognition).
plan(X, noun_cognition) :- plan_of_action(X, noun_cognition).
plan_of_action(X, noun_cognition) :- plan_of_action(X),not abnormal_d_cognition(X),not -plan_of_action(X, noun_cognition).
plan_of_action(X, noun_cognition) :- system(X, noun_cognition).
possession(X, noun_tops) :- assets(X, noun_possession).
possession(X, noun_tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_tops).
possession(X, noun_tops) :- transferred_property(X, noun_possession).
process(X, noun_tops) :- economic_process(X, noun_process).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
publication(X, noun_act) :- contribution(X, noun_act).
publication(X, noun_act) :- publication(X),not abnormal_d_act(X),not -publication(X, noun_act).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
quality(X, noun_attribute) :- regularity(X, noun_attribute).
regularity(X, noun_attribute) :- orderliness(X, noun_attribute).
regularity(X, noun_attribute) :- regularity(X),not abnormal_d_attribute(X),not -regularity(X, noun_attribute).
relation(X, noun_tops) :- possession(X, noun_tops).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
representation(X, noun_artifact) :- drawing(X, noun_artifact).
representation(X, noun_artifact) :- representation(X),not abnormal_d_artifact(X),not -representation(X, noun_artifact).
scholar(X, noun_person) :- scholar(X),not abnormal_d_person(X),not -scholar(X, noun_person).
scholar(X, noun_person) :- theologian(X, noun_person).
scientist(X, noun_person) :- physicist(X, noun_person).
scientist(X, noun_person) :- scientist(X),not abnormal_d_person(X),not -scientist(X, noun_person).
sharing(X, noun_act) :- giving(X, noun_act).
sharing(X, noun_act) :- sharing(X),not abnormal_d_act(X),not -sharing(X, noun_act).
sketch(X, noun_artifact) :- design(X, noun_artifact).
sketch(X, noun_artifact) :- sketch(X),not abnormal_d_artifact(X),not -sketch(X, noun_artifact).
state(X, noun_tops) :- feeling(X, noun_tops).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
stir(X, noun_feeling) :- electricity(X, noun_feeling).
stir(X, noun_feeling) :- stir(X),not abnormal_d_feeling(X),not -stir(X, noun_feeling).
structure(X, noun_cognition) :- arrangement(X, noun_cognition).
structure(X, noun_cognition) :- structure(X),not abnormal_d_cognition(X),not -structure(X, noun_cognition).
structure(X, noun_cognition) :- system(X, noun_cognition).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
substance(X, noun_tops) :- system(X, noun_substance).
sum(X, noun_possession) :- contribution(X, noun_possession).
sum(X, noun_possession) :- sum(X),not abnormal_d_possession(X),not -sum(X, noun_possession).
supply(X, noun_act) :- supply(X),not -supply(X, noun_act),-supply(X, noun_quantity),-supply(X, noun_process).
supply(X, noun_act) :- supply(X),not abnormal_d_act(X),not -supply(X, noun_act).
supply(X, noun_process) :- supply(X),not -supply(X, noun_process),-supply(X, noun_quantity),not supply(X, noun_act).
supply(X, noun_process) :- supply(X),not abnormal_d_process(X),not -supply(X, noun_process).
supply(X, noun_quantity) :- supply(X),not abnormal_d_quantity(X),not -supply(X, noun_quantity).
system(X, noun_artifact) :- system(X),not -system(X, noun_artifact),-system(X, noun_group),not system(X, noun_cognition),not system(X, noun_body),not system(X, noun_substance),not system(X, noun_attribute).
system(X, noun_artifact) :- system(X),not abnormal_d_artifact(X),not -system(X, noun_artifact).
system(X, noun_attribute) :- system(X),not -system(X, noun_attribute),-system(X, noun_group),-system(X, noun_artifact),-system(X, noun_cognition),-system(X, noun_body),-system(X, noun_substance).
system(X, noun_attribute) :- system(X),not abnormal_d_attribute(X),not -system(X, noun_attribute).
system(X, noun_body) :- system(X),not -system(X, noun_body),-system(X, noun_group),-system(X, noun_artifact),-system(X, noun_cognition),not system(X, noun_substance),not system(X, noun_attribute).
system(X, noun_body) :- system(X),not abnormal_d_body(X),not -system(X, noun_body).
system(X, noun_cognition) :- system(X),not -system(X, noun_cognition),-system(X, noun_group),-system(X, noun_artifact),not system(X, noun_body),not system(X, noun_substance),not system(X, noun_attribute).
system(X, noun_cognition) :- system(X),not abnormal_d_cognition(X),not -system(X, noun_cognition).
system(X, noun_group) :- system(X),not abnormal_d_group(X),not -system(X, noun_group).
system(X, noun_substance) :- system(X),not -system(X, noun_substance),-system(X, noun_group),-system(X, noun_artifact),-system(X, noun_cognition),-system(X, noun_body),not system(X, noun_attribute).
system(X, noun_substance) :- system(X),not abnormal_d_substance(X),not -system(X, noun_substance).
theologian(X, noun_person) :- futurist(X, noun_person).
theologian(X, noun_person) :- theologian(X),not abnormal_d_person(X),not -theologian(X, noun_person).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
transaction(X, noun_act) :- commerce(X, noun_act).
transaction(X, noun_act) :- transaction(X),not abnormal_d_act(X),not -transaction(X, noun_act).
transferred_property(X, noun_possession) :- acquisition(X, noun_possession).
transferred_property(X, noun_possession) :- transferred_property(X),not abnormal_d_possession(X),not -transferred_property(X, noun_possession).
visionary(X, noun_person) :- futurist(X, noun_person).
visionary(X, noun_person) :- visionary(X),not abnormal_d_person(X),not -visionary(X, noun_person).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- natural_object(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
