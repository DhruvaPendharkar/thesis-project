%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(rock, igneous_rock).
_is(rock, re_eroded).
_is(rock, rock).
_is(rock_cycle, concept).
_is(rock_cycle, important_concept).
_is(sedimentary_rock, re_eroded).
_is(type, igneous).
_is(type, re_melted).
_mod(become, ultimately).
_mod(concept, important).
_mod(crystallize, again).
_mod(crystallize, when).
_mod(fabric, characteristic).
_mod(magma, new).
_mod(melt, when).
_mod(metamorphism, additional).
_mod(redeposit, then).
_mod(rock, due).
_mod(rock, igneous).
_mod(rock, metamorphic).
_mod(rock, sedimentary).
_mod(turn, subsequently).
_mod(turn, then).
_mod(type, major).
_mod(type, metamorphic).
_mod(type, sedimentary).
_mod(type, three).
_mod(undergo, also).
_mod(weather, then).
_property(concept, in(geology)).
_property(content, of(rock)).
_property(crystallize, from(lava)).
_property(crystallize, from(magma)).
_property(due, to(heat)).
_property(due, to(pressure)).
_property(form, from(magma)).
_property(redeposit, into(rock)).
_property(relationship, between(three_type)).
_property(relationship, of(rock)).
_property(turn, into(rock)).
_property(type, of(rock)).
_relation(16, 18, _conj).
_relation(16, 21, _conj).
_relation(16, 22, _clause).
_relation(30, 28, _clause).
_relation(7, 10, _conj).
_relation(7, 12, _conj).
_relation(7, 8, _conj).
_relation(7, 9, _conj).
_relation(9, 10, _conj).
concept(concept).
concept(rock_cycle).
content(content).
event(1, have, geology, major_sedimentary_metamorphic_type).
event(1, have, geology, type).
event(1, have, geology, type_of_rock).
event(1, have, null, type).
event(10, lithify, null, null).
event(12, turn, null, rock).
event(13, change, heat, content).
event(13, change, heat, content_of_rock).
event(13, change, pressure, content).
event(13, change, pressure, content_of_rock).
event(14, give, rock, characteristic_fabric).
event(14, give, rock, fabric).
event(16, turn, null, rock).
event(18, weather, null, rock).
event(19, erode, null, null).
event(20, deposit, null, null).
event(21, lithify, null, rock).
event(22, become, null, null).
event(24, redeposit, rock, null).
event(24, redeposit, sedimentary_rock, null).
event(25, undergo, metamorphic_rock, additional_metamorphism).
event(25, undergo, metamorphic_rock, metamorphism).
event(25, undergo, rock, additional_metamorphism).
event(25, undergo, rock, metamorphism).
event(28, melt, null, rock).
event(3, illustrate, geology, magma).
event(3, illustrate, geology, relationship).
event(3, illustrate, geology, relationship_between_type).
event(3, illustrate, geology, relationship_of_rock).
event(30, form, null, magma).
event(31, crystallize, igneous_rock, null).
event(4, crystallize, rock, null).
event(7, weather, null, rock).
event(8, erode, null, rock).
event(9, redeposit, null, rock).
fabric(fabric).
geology(geology).
heat(heat).
igneous_rock(igneous_rock).
lava(lava).
magma(magma).
metamorphism(metamorphism).
mineral(mineral).
number(three).
pressure(pressure).
relationship(relationship).
rock(rock).
type(igneous).
type(type).
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
acceptance(X, noun_state) :- acceptance(X),not abnormal_d_state(X),not -acceptance(X, noun_state).
acceptance(X, noun_state) :- content(X, noun_state).
accomplishment(X, noun_act) :- accomplishment(X),not abnormal_d_act(X),not -accomplishment(X, noun_act).
accomplishment(X, noun_act) :- deed(X, noun_act).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
action(X, noun_act) :- accomplishment(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
adult(X, noun_person) :- adult(X),not abnormal_d_person(X),not -adult(X, noun_person).
adult(X, noun_person) :- professional(X, noun_person).
adult(X, noun_person) :- type(X, noun_person).
adversity(X, noun_state) :- adversity(X),not abnormal_d_state(X),not -adversity(X, noun_state).
adversity(X, noun_state) :- distress(X, noun_state).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- block(X, noun_artifact).
artifact(X, noun_tops) :- fabric(X, noun_artifact).
artifact(X, noun_tops) :- facility(X, noun_artifact).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
attribute(X, noun_tops) :- trait(X, noun_attribute).
basic_cognitive_process(X, noun_cognition) :- basic_cognitive_process(X),not abnormal_d_cognition(X),not -basic_cognitive_process(X, noun_cognition).
basic_cognitive_process(X, noun_cognition) :- perception(X, noun_cognition).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
biological_group(X, noun_group) :- taxonomic_group(X, noun_group).
block(X, noun_artifact) :- block(X),not abnormal_d_artifact(X),not -block(X, noun_artifact).
block(X, noun_artifact) :- type(X, noun_artifact).
candy(X, noun_food) :- candy(X),not abnormal_d_food(X),not -candy(X, noun_food).
candy(X, noun_food) :- rock(X, noun_food).
category(X, noun_cognition) :- category(X),not abnormal_d_cognition(X),not -category(X, noun_cognition).
category(X, noun_cognition) :- kind(X, noun_cognition).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- motion(X, noun_act).
character(X, noun_communication) :- character(X),not abnormal_d_communication(X),not -character(X, noun_communication).
character(X, noun_communication) :- type(X, noun_communication).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- process(X, noun_cognition).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- content(X, noun_group).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- content(X, noun_communication).
communication(X, noun_tops) :- expressive_style(X, noun_communication).
communication(X, noun_tops) :- signal(X, noun_communication).
concept(X, noun_cognition) :- category(X, noun_cognition).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
condition(X, noun_state) :- condition(X),not abnormal_d_state(X),not -condition(X, noun_state).
condition(X, noun_state) :- fortune(X, noun_state).
condition(X, noun_state) :- need(X, noun_state).
constitution(X, noun_attribute) :- constitution(X),not abnormal_d_attribute(X),not -constitution(X, noun_attribute).
constitution(X, noun_attribute) :- structure(X, noun_attribute).
content(X, noun_artifact) :- content(X),not -content(X, noun_artifact),-content(X, noun_group),-content(X, noun_communication),-content(X, noun_relation),-content(X, noun_quantity),-content(X, noun_cognition),-content(X, noun_state).
content(X, noun_artifact) :- content(X),not abnormal_d_artifact(X),not -content(X, noun_artifact).
content(X, noun_cognition) :- content(X),not -content(X, noun_cognition),-content(X, noun_group),-content(X, noun_communication),-content(X, noun_relation),-content(X, noun_quantity),not content(X, noun_state),not content(X, noun_artifact).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
content(X, noun_cognition) :- knowledge_domain(X, noun_cognition).
content(X, noun_communication) :- content(X),not -content(X, noun_communication),-content(X, noun_group),not content(X, noun_relation),not content(X, noun_quantity),not content(X, noun_cognition),not content(X, noun_state),not content(X, noun_artifact).
content(X, noun_communication) :- content(X),not abnormal_d_communication(X),not -content(X, noun_communication).
content(X, noun_group) :- content(X),not abnormal_d_group(X),not -content(X, noun_group).
content(X, noun_quantity) :- content(X),not -content(X, noun_quantity),-content(X, noun_group),-content(X, noun_communication),-content(X, noun_relation),not content(X, noun_cognition),not content(X, noun_state),not content(X, noun_artifact).
content(X, noun_quantity) :- content(X),not abnormal_d_quantity(X),not -content(X, noun_quantity).
content(X, noun_relation) :- content(X),not -content(X, noun_relation),-content(X, noun_group),-content(X, noun_communication),not content(X, noun_quantity),not content(X, noun_cognition),not content(X, noun_state),not content(X, noun_artifact).
content(X, noun_relation) :- content(X),not abnormal_d_relation(X),not -content(X, noun_relation).
content(X, noun_state) :- content(X),not -content(X, noun_state),-content(X, noun_group),-content(X, noun_communication),-content(X, noun_relation),-content(X, noun_quantity),-content(X, noun_cognition),not content(X, noun_artifact).
content(X, noun_state) :- content(X),not abnormal_d_state(X),not -content(X, noun_state).
contest(X, noun_event) :- contest(X),not abnormal_d_event(X),not -contest(X, noun_event).
contest(X, noun_event) :- race(X, noun_event).
dainty(X, noun_food) :- dainty(X),not abnormal_d_food(X),not -dainty(X, noun_food).
dainty(X, noun_food) :- sweet(X, noun_food).
deed(X, noun_act) :- deed(X),not abnormal_d_act(X),not -deed(X, noun_act).
deed(X, noun_act) :- propulsion(X, noun_act).
discipline(X, noun_cognition) :- discipline(X),not abnormal_d_cognition(X),not -discipline(X, noun_cognition).
discipline(X, noun_cognition) :- science(X, noun_cognition).
distress(X, noun_state) :- distress(X),not abnormal_d_state(X),not -distress(X, noun_state).
distress(X, noun_state) :- pressure(X, noun_state).
doctor(X, noun_person) :- doctor(X),not abnormal_d_person(X),not -doctor(X, noun_person).
doctor(X, noun_person) :- specialist(X, noun_person).
earth_science(X, noun_cognition) :- earth_science(X),not abnormal_d_cognition(X),not -earth_science(X, noun_cognition).
earth_science(X, noun_cognition) :- geology(X, noun_cognition).
emotionality(X, noun_attribute) :- emotionality(X),not abnormal_d_attribute(X),not -emotionality(X, noun_attribute).
emotionality(X, noun_attribute) :- heat(X, noun_attribute).
energy(X, noun_phenomenon) :- energy(X),not abnormal_d_phenomenon(X),not -energy(X, noun_phenomenon).
energy(X, noun_phenomenon) :- heat(X, noun_phenomenon).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- social_event(X, noun_event).
expressive_style(X, noun_communication) :- expressive_style(X),not abnormal_d_communication(X),not -expressive_style(X, noun_communication).
expressive_style(X, noun_communication) :- music_genre(X, noun_communication).
fabric(X, noun_artifact) :- fabric(X),not abnormal_d_artifact(X),not -fabric(X, noun_artifact).
fabric(X, noun_attribute) :- fabric(X),not -fabric(X, noun_attribute),-fabric(X, noun_artifact).
fabric(X, noun_attribute) :- fabric(X),not abnormal_d_attribute(X),not -fabric(X, noun_attribute).
facility(X, noun_artifact) :- facility(X),not abnormal_d_artifact(X),not -facility(X, noun_artifact).
facility(X, noun_artifact) :- utility(X, noun_artifact).
food(X, noun_tops) :- food(X),not abnormal_d_tops(X),not -food(X, noun_tops).
food(X, noun_tops) :- nutriment(X, noun_food).
force(X, noun_attribute) :- force(X),not abnormal_d_attribute(X),not -force(X, noun_attribute).
force(X, noun_attribute) :- pressure(X, noun_attribute).
fortune(X, noun_state) :- fortune(X),not abnormal_d_state(X),not -fortune(X, noun_state).
fortune(X, noun_state) :- misfortune(X, noun_state).
geological_process(X, noun_process) :- geological_process(X),not abnormal_d_process(X),not -geological_process(X, noun_process).
geological_process(X, noun_process) :- metamorphism(X, noun_process).
geology(X, noun_cognition) :- geology(X),not abnormal_d_cognition(X),not -geology(X, noun_cognition).
good_person(X, noun_person) :- good_person(X),not abnormal_d_person(X),not -good_person(X, noun_person).
good_person(X, noun_person) :- rock(X, noun_person).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
gynecologist(X, noun_person) :- gynecologist(X),not abnormal_d_person(X),not -gynecologist(X, noun_person).
gynecologist(X, noun_person) :- rock(X, noun_person).
health_professional(X, noun_person) :- health_professional(X),not abnormal_d_person(X),not -health_professional(X, noun_person).
health_professional(X, noun_person) :- medical_practitioner(X, noun_person).
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
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
igneous_rock(X, noun_substance) :- igneous_rock(X),not abnormal_d_substance(X),not -igneous_rock(X, noun_substance).
igneous_rock(X, noun_substance) :- volcanic_rock(X, noun_substance).
influence(X, noun_attribute) :- force(X, noun_attribute).
influence(X, noun_attribute) :- influence(X),not abnormal_d_attribute(X),not -influence(X, noun_attribute).
kind(X, noun_cognition) :- kind(X),not abnormal_d_cognition(X),not -kind(X, noun_cognition).
kind(X, noun_cognition) :- type(X, noun_cognition).
knowledge_domain(X, noun_cognition) :- discipline(X, noun_cognition).
knowledge_domain(X, noun_cognition) :- knowledge_domain(X),not abnormal_d_cognition(X),not -knowledge_domain(X, noun_cognition).
lava(X, noun_substance) :- lava(X),not abnormal_d_substance(X),not -lava(X, noun_substance).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
lurch(X, noun_act) :- lurch(X),not abnormal_d_act(X),not -lurch(X, noun_act).
lurch(X, noun_act) :- rock(X, noun_act).
magma(X, noun_substance) :- magma(X),not abnormal_d_substance(X),not -magma(X, noun_substance).
magnitude_relation(X, noun_relation) :- magnitude_relation(X),not abnormal_d_relation(X),not -magnitude_relation(X, noun_relation).
magnitude_relation(X, noun_relation) :- ratio(X, noun_relation).
material(X, noun_substance) :- material(X),not abnormal_d_substance(X),not -material(X, noun_substance).
material(X, noun_substance) :- mineral(X, noun_substance).
material(X, noun_substance) :- rock(X, noun_substance).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
measure(X, noun_tops) :- volume(X, noun_quantity).
medical_practitioner(X, noun_person) :- doctor(X, noun_person).
medical_practitioner(X, noun_person) :- medical_practitioner(X),not abnormal_d_person(X),not -medical_practitioner(X, noun_person).
metamorphism(X, noun_process) :- metamorphism(X),not abnormal_d_process(X),not -metamorphism(X, noun_process).
mineral(X, noun_substance) :- mineral(X),not abnormal_d_substance(X),not -mineral(X, noun_substance).
misfortune(X, noun_state) :- adversity(X, noun_state).
misfortune(X, noun_state) :- misfortune(X),not abnormal_d_state(X),not -misfortune(X, noun_state).
motion(X, noun_act) :- lurch(X, noun_act).
motion(X, noun_act) :- motion(X),not abnormal_d_act(X),not -motion(X, noun_act).
music_genre(X, noun_communication) :- music_genre(X),not abnormal_d_communication(X),not -music_genre(X, noun_communication).
music_genre(X, noun_communication) :- popular_music(X, noun_communication).
natural_object(X, noun_tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_tops).
natural_object(X, noun_tops) :- rock(X, noun_object).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X, noun_phenomenon).
natural_process(X, noun_process) :- geological_process(X, noun_process).
natural_process(X, noun_process) :- natural_process(X),not abnormal_d_process(X),not -natural_process(X, noun_process).
natural_science(X, noun_cognition) :- earth_science(X, noun_cognition).
natural_science(X, noun_cognition) :- natural_science(X),not abnormal_d_cognition(X),not -natural_science(X, noun_cognition).
necessity(X, noun_state) :- necessity(X),not abnormal_d_state(X),not -necessity(X, noun_state).
necessity(X, noun_state) :- urgency(X, noun_state).
need(X, noun_state) :- necessity(X, noun_state).
need(X, noun_state) :- need(X),not abnormal_d_state(X),not -need(X, noun_state).
nutriment(X, noun_food) :- dainty(X, noun_food).
nutriment(X, noun_food) :- nutriment(X),not abnormal_d_food(X),not -nutriment(X, noun_food).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
perception(X, noun_cognition) :- perception(X),not abnormal_d_cognition(X),not -perception(X, noun_cognition).
perception(X, noun_cognition) :- somesthesia(X, noun_cognition).
person(X, noun_tops) :- adult(X, noun_person).
person(X, noun_tops) :- good_person(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
physical_phenomenon(X, noun_phenomenon) :- energy(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X),not abnormal_d_phenomenon(X),not -physical_phenomenon(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- pressure(X, noun_phenomenon).
physical_property(X, noun_attribute) :- physical_property(X),not abnormal_d_attribute(X),not -physical_property(X, noun_attribute).
physical_property(X, noun_attribute) :- temperature(X, noun_attribute).
physiological_state(X, noun_state) :- heat(X, noun_state).
physiological_state(X, noun_state) :- physiological_state(X),not abnormal_d_state(X),not -physiological_state(X, noun_state).
popular_music(X, noun_communication) :- popular_music(X),not abnormal_d_communication(X),not -popular_music(X, noun_communication).
popular_music(X, noun_communication) :- rock(X, noun_communication).
power(X, noun_attribute) :- influence(X, noun_attribute).
power(X, noun_attribute) :- power(X),not abnormal_d_attribute(X),not -power(X, noun_attribute).
pressure(X, noun_act) :- pressure(X),not -pressure(X, noun_act),-pressure(X, noun_phenomenon),-pressure(X, noun_attribute),not pressure(X, noun_state),not pressure(X, noun_cognition).
pressure(X, noun_act) :- pressure(X),not abnormal_d_act(X),not -pressure(X, noun_act).
pressure(X, noun_attribute) :- pressure(X),not -pressure(X, noun_attribute),-pressure(X, noun_phenomenon),not pressure(X, noun_act),not pressure(X, noun_state),not pressure(X, noun_cognition).
pressure(X, noun_attribute) :- pressure(X),not abnormal_d_attribute(X),not -pressure(X, noun_attribute).
pressure(X, noun_cognition) :- pressure(X),not -pressure(X, noun_cognition),-pressure(X, noun_phenomenon),-pressure(X, noun_attribute),-pressure(X, noun_act),-pressure(X, noun_state).
pressure(X, noun_cognition) :- pressure(X),not abnormal_d_cognition(X),not -pressure(X, noun_cognition).
pressure(X, noun_phenomenon) :- pressure(X),not abnormal_d_phenomenon(X),not -pressure(X, noun_phenomenon).
pressure(X, noun_state) :- pressure(X),not -pressure(X, noun_state),-pressure(X, noun_phenomenon),-pressure(X, noun_attribute),-pressure(X, noun_act),not pressure(X, noun_cognition).
pressure(X, noun_state) :- pressure(X),not abnormal_d_state(X),not -pressure(X, noun_state).
process(X, noun_cognition) :- basic_cognitive_process(X, noun_cognition).
process(X, noun_cognition) :- process(X),not abnormal_d_cognition(X),not -process(X, noun_cognition).
process(X, noun_tops) :- natural_process(X, noun_process).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not -process(X, noun_tops),-process(X, noun_cognition).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
professional(X, noun_person) :- health_professional(X, noun_person).
professional(X, noun_person) :- professional(X),not abnormal_d_person(X),not -professional(X, noun_person).
property(X, noun_attribute) :- constitution(X, noun_attribute).
property(X, noun_attribute) :- physical_property(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
proportion(X, noun_relation) :- content(X, noun_relation).
proportion(X, noun_relation) :- proportion(X),not abnormal_d_relation(X),not -proportion(X, noun_relation).
propulsion(X, noun_act) :- propulsion(X),not abnormal_d_act(X),not -propulsion(X, noun_act).
propulsion(X, noun_act) :- push(X, noun_act).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
push(X, noun_act) :- pressure(X, noun_act).
push(X, noun_act) :- push(X),not abnormal_d_act(X),not -push(X, noun_act).
quality(X, noun_attribute) :- power(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
quotient(X, noun_relation) :- proportion(X, noun_relation).
quotient(X, noun_relation) :- quotient(X),not abnormal_d_relation(X),not -quotient(X, noun_relation).
race(X, noun_event) :- heat(X, noun_event).
race(X, noun_event) :- race(X),not abnormal_d_event(X),not -race(X, noun_event).
ratio(X, noun_relation) :- quotient(X, noun_relation).
ratio(X, noun_relation) :- ratio(X),not abnormal_d_relation(X),not -ratio(X, noun_relation).
relation(X, noun_tops) :- magnitude_relation(X, noun_relation).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
relation(X, noun_tops) :- relationship(X, noun_relation).
relationship(X, noun_relation) :- relationship(X),not abnormal_d_relation(X),not -relationship(X, noun_relation).
relationship(X, noun_state) :- relationship(X),not -relationship(X, noun_state),-relationship(X, noun_relation).
relationship(X, noun_state) :- relationship(X),not abnormal_d_state(X),not -relationship(X, noun_state).
rock(X, noun_act) :- rock(X),not -rock(X, noun_act),-rock(X, noun_object),-rock(X, noun_substance),-rock(X, noun_person),-rock(X, noun_food),-rock(X, noun_communication).
rock(X, noun_act) :- rock(X),not abnormal_d_act(X),not -rock(X, noun_act).
rock(X, noun_communication) :- rock(X),not -rock(X, noun_communication),-rock(X, noun_object),-rock(X, noun_substance),-rock(X, noun_person),-rock(X, noun_food),not rock(X, noun_act).
rock(X, noun_communication) :- rock(X),not abnormal_d_communication(X),not -rock(X, noun_communication).
rock(X, noun_food) :- rock(X),not -rock(X, noun_food),-rock(X, noun_object),-rock(X, noun_substance),-rock(X, noun_person),not rock(X, noun_communication),not rock(X, noun_act).
rock(X, noun_food) :- rock(X),not abnormal_d_food(X),not -rock(X, noun_food).
rock(X, noun_object) :- rock(X),not abnormal_d_object(X),not -rock(X, noun_object).
rock(X, noun_person) :- rock(X),not -rock(X, noun_person),-rock(X, noun_object),-rock(X, noun_substance),not rock(X, noun_food),not rock(X, noun_communication),not rock(X, noun_act).
rock(X, noun_person) :- rock(X),not abnormal_d_person(X),not -rock(X, noun_person).
rock(X, noun_substance) :- igneous_rock(X, noun_substance).
rock(X, noun_substance) :- magma(X, noun_substance).
rock(X, noun_substance) :- rock(X),not -rock(X, noun_substance),-rock(X, noun_object),not rock(X, noun_person),not rock(X, noun_food),not rock(X, noun_communication),not rock(X, noun_act).
rock(X, noun_substance) :- rock(X),not abnormal_d_substance(X),not -rock(X, noun_substance).
science(X, noun_cognition) :- natural_science(X, noun_cognition).
science(X, noun_cognition) :- science(X),not abnormal_d_cognition(X),not -science(X, noun_cognition).
signal(X, noun_communication) :- signal(X),not abnormal_d_communication(X),not -signal(X, noun_communication).
signal(X, noun_communication) :- symbol(X, noun_communication).
situation(X, noun_state) :- acceptance(X, noun_state).
situation(X, noun_state) :- situation(X),not abnormal_d_state(X),not -situation(X, noun_state).
social_event(X, noun_event) :- contest(X, noun_event).
social_event(X, noun_event) :- social_event(X),not abnormal_d_event(X),not -social_event(X, noun_event).
somesthesia(X, noun_cognition) :- pressure(X, noun_cognition).
somesthesia(X, noun_cognition) :- somesthesia(X),not abnormal_d_cognition(X),not -somesthesia(X, noun_cognition).
somesthesia(X, noun_cognition) :- temperature(X, noun_cognition).
specialist(X, noun_person) :- gynecologist(X, noun_person).
specialist(X, noun_person) :- specialist(X),not abnormal_d_person(X),not -specialist(X, noun_person).
state(X, noun_tops) :- condition(X, noun_state).
state(X, noun_tops) :- physiological_state(X, noun_state).
state(X, noun_tops) :- relationship(X, noun_state).
state(X, noun_tops) :- situation(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
structure(X, noun_attribute) :- fabric(X, noun_attribute).
structure(X, noun_attribute) :- structure(X),not abnormal_d_attribute(X),not -structure(X, noun_attribute).
substance(X, noun_tops) :- food(X, noun_tops).
substance(X, noun_tops) :- material(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
sweet(X, noun_food) :- candy(X, noun_food).
sweet(X, noun_food) :- sweet(X),not abnormal_d_food(X),not -sweet(X, noun_food).
symbol(X, noun_communication) :- symbol(X),not abnormal_d_communication(X),not -symbol(X, noun_communication).
symbol(X, noun_communication) :- type(X, noun_communication).
symbol(X, noun_communication) :- written_symbol(X, noun_communication).
taxonomic_group(X, noun_group) :- taxonomic_group(X),not abnormal_d_group(X),not -taxonomic_group(X, noun_group).
taxonomic_group(X, noun_group) :- type(X, noun_group).
temperature(X, noun_attribute) :- heat(X, noun_attribute).
temperature(X, noun_attribute) :- temperature(X),not abnormal_d_attribute(X),not -temperature(X, noun_attribute).
temperature(X, noun_cognition) :- heat(X, noun_cognition).
temperature(X, noun_cognition) :- temperature(X),not -temperature(X, noun_cognition),-temperature(X, noun_attribute).
temperature(X, noun_cognition) :- temperature(X),not abnormal_d_cognition(X),not -temperature(X, noun_cognition).
thing(X, noun_tops) :- content(X, noun_artifact).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
trait(X, noun_attribute) :- emotionality(X, noun_attribute).
trait(X, noun_attribute) :- trait(X),not abnormal_d_attribute(X),not -trait(X, noun_attribute).
type(X, noun_artifact) :- type(X),not -type(X, noun_artifact),-type(X, noun_cognition),-type(X, noun_person),-type(X, noun_group),not type(X, noun_communication).
type(X, noun_artifact) :- type(X),not abnormal_d_artifact(X),not -type(X, noun_artifact).
type(X, noun_cognition) :- type(X),not abnormal_d_cognition(X),not -type(X, noun_cognition).
type(X, noun_communication) :- type(X),not -type(X, noun_communication),-type(X, noun_cognition),-type(X, noun_person),-type(X, noun_group),-type(X, noun_artifact).
type(X, noun_communication) :- type(X),not abnormal_d_communication(X),not -type(X, noun_communication).
type(X, noun_group) :- type(X),not -type(X, noun_group),-type(X, noun_cognition),-type(X, noun_person),not type(X, noun_artifact),not type(X, noun_communication).
type(X, noun_group) :- type(X),not abnormal_d_group(X),not -type(X, noun_group).
type(X, noun_person) :- type(X),not -type(X, noun_person),-type(X, noun_cognition),not type(X, noun_group),not type(X, noun_artifact),not type(X, noun_communication).
type(X, noun_person) :- type(X),not abnormal_d_person(X),not -type(X, noun_person).
urgency(X, noun_state) :- pressure(X, noun_state).
urgency(X, noun_state) :- urgency(X),not abnormal_d_state(X),not -urgency(X, noun_state).
utility(X, noun_artifact) :- heat(X, noun_artifact).
utility(X, noun_artifact) :- utility(X),not abnormal_d_artifact(X),not -utility(X, noun_artifact).
volcanic_rock(X, noun_substance) :- lava(X, noun_substance).
volcanic_rock(X, noun_substance) :- volcanic_rock(X),not abnormal_d_substance(X),not -volcanic_rock(X, noun_substance).
volume(X, noun_quantity) :- content(X, noun_quantity).
volume(X, noun_quantity) :- volume(X),not abnormal_d_quantity(X),not -volume(X, noun_quantity).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- natural_object(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
written_symbol(X, noun_communication) :- character(X, noun_communication).
written_symbol(X, noun_communication) :- written_symbol(X),not abnormal_d_communication(X),not -written_symbol(X, noun_communication).