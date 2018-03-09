%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(comb, group).
_is(ctenophora, animal).
_is(ctenophora, largest_animal).
_is(ctenophora, phylum).
_is(distinctive_feature, comb).
_is(feature, comb).
_is(layer, one_cell_deep).
_is(layer, only_one_cell_deep).
_is(layer, two_cells_deep).
_is(phylum, coelenterata).
_mod(animal, largest).
_mod(author, more).
_mod(author, recent).
_mod(awareness, increasing).
_mod(cavity, internal).
_mod(feature, distinctive).
_mod(know, commonly).
_mod(layer, one).
_mod(live, worldwide).
_mod(meter, 5).
_mod(millimeter, few).
_mod(phyla, separate).
_mod(phylum, one).
_mod(species, various).
_possess(ctenophora, body).
_possess(ctenophora, feature).
_property(adult, of(species)).
_property(awareness, of(difference)).
_property(cavity, for(digestion)).
_property(cavity, for(respiration)).
_property(cell, on(outside)).
_property(classify, as(phyla)).
_property(combine, in(one_phylum)).
_property(consist, like(cnidarian)).
_property(consist, of(mass_of_jelly)).
_property(consist, with(one_layer)).
_property(group, of(cilium)).
_property(know, as(comb_jellies)).
_property(layer, in(cnidarian)).
_property(layer, of(cell)).
_property(layer, of(line)).
_property(layer, of(mass_of_jelly)).
_property(live, in(marine_waters)).
_property(meter, in(size)).
_property(phylum, of(animal)).
_property(range, from(millimeter)).
_property(range, to(1)).
_property(rely, on(flow)).
_property(rely, through(cavity)).
_property(swim, by_means_of(cilium)).
_property(two_cells_deep, in(ctenophore)).
_property(use, for(swimming)).
_relation(12, 13, _clause).
_relation(15, 16, _clcomplement).
_relation(ctenophora, 1, _clause).
adult(adult).
animal(animal).
animal(ctenophora).
author(author).
awareness(awareness).
body(body).
cavity(cavity).
cell(cell).
cilium(cilium).
cnidarian(cnidarian).
coelenterata(coelenterata).
comb(comb).
comb(distinctive_feature).
comb(feature).
comb(group).
ctenophora(ctenophora).
ctenophore(ctenophore).
difference(difference).
digestion(digestion).
event(1, know, null, null).
event(12, combine, author, cnidarian).
event(12, combine, author, ctenophore).
event(13, rely, group, null).
event(15, persuade, awareness, author).
event(15, persuade, awareness, more_recent_author).
event(15, persuade, increasing_awareness, author).
event(15, persuade, increasing_awareness, more_recent_author).
event(16, classify, author, cnidarian).
event(16, classify, author, ctenophore).
event(16, classify, more_recent_author, cnidarian).
event(16, classify, more_recent_author, ctenophore).
event(3, live, animal, null).
event(6, swim, animal, null).
event(6, swim, largest_animal, null).
event(7, range, adult, null).
event(8, consist, body, null).
event(9, line, null, null).
feature(feature).
flow(flow).
group(group).
layer(layer).
means(means).
meter(meter).
millimeter(millimeter).
number(1).
number(5).
number(one).
phylum(coelenterata).
phylum(ctenophora).
phylum(phylum).
respiration(respiration).
size(size).
species(species).
swimming(swimming).
use(use).
water(water).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
abstract_entity(X, noun_tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_tops).
abstract_entity(X, noun_tops) :- abstraction(X, noun_tops).
abstraction(X, noun_cognition) :- abstraction(X),not abnormal_d_cognition(X),not -abstraction(X, noun_cognition).
abstraction(X, noun_cognition) :- right(X, noun_attribute).
abstraction(X, noun_tops) :- abstraction(X),not -abstraction(X, noun_tops),-abstraction(X, noun_cognition).
abstraction(X, noun_tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_tops).
abstraction(X, noun_tops) :- attribute(X, noun_tops).
abstraction(X, noun_tops) :- communication(X, noun_tops).
abstraction(X, noun_tops) :- group(X, noun_tops).
abstraction(X, noun_tops) :- measure(X, noun_tops).
abstraction(X, noun_tops) :- psychological_feature(X, noun_tops).
abstraction(X, noun_tops) :- relation(X, noun_tops).
abstraction(X, noun_tops) :- set(X, noun_group).
accomplishment(X, noun_act) :- accomplishment(X),not abnormal_d_act(X),not -accomplishment(X, noun_act).
accomplishment(X, noun_act) :- deed(X, noun_act).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
act(X, noun_tops) :- activity(X, noun_act).
act(X, noun_tops) :- speech_act(X, noun_communication).
action(X, noun_act) :- accomplishment(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- diversion(X, noun_act).
activity(X, noun_act) :- practice(X, noun_act).
activity(X, noun_act) :- use(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
adult(X, noun_animal) :- adult(X),not -adult(X, noun_animal),-adult(X, noun_person).
adult(X, noun_animal) :- adult(X),not abnormal_d_animal(X),not -adult(X, noun_animal).
adult(X, noun_person) :- adult(X),not abnormal_d_person(X),not -adult(X, noun_person).
amorphous_shape(X, noun_shape) :- amorphous_shape(X),not abnormal_d_shape(X),not -amorphous_shape(X, noun_shape).
amorphous_shape(X, noun_shape) :- space(X, noun_shape).
animal(X, noun_tops) :- adult(X, noun_animal).
animal(X, noun_tops) :- animal(X),not abnormal_d_tops(X),not -animal(X, noun_tops).
animal(X, noun_tops) :- chordate(X, noun_animal).
animal(X, noun_tops) :- invertebrate(X, noun_animal).
area(X, noun_artifact) :- area(X),not abnormal_d_artifact(X),not -area(X, noun_artifact).
area(X, noun_artifact) :- room(X, noun_artifact).
area(X, noun_artifact) :- storage_space(X, noun_artifact).
arrangement(X, noun_group) :- arrangement(X),not abnormal_d_group(X),not -arrangement(X, noun_group).
arrangement(X, noun_group) :- ordering(X, noun_group).
article(X, noun_communication) :- article(X),not abnormal_d_communication(X),not -article(X, noun_communication).
article(X, noun_communication) :- feature(X, noun_communication).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- commodity(X, noun_artifact).
artifact(X, noun_tops) :- facility(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
artifact(X, noun_tops) :- sheet(X, noun_artifact).
artifact(X, noun_tops) :- structure(X, noun_artifact).
assets(X, noun_possession) :- assets(X),not abnormal_d_possession(X),not -assets(X, noun_possession).
assets(X, noun_possession) :- capital(X, noun_possession).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- shape(X, noun_tops).
attribute(X, noun_tops) :- state(X, noun_tops).
author(X, noun_person) :- author(X),not abnormal_d_person(X),not -author(X, noun_person).
awareness(X, noun_cognition) :- awareness(X),not abnormal_d_cognition(X),not -awareness(X, noun_cognition).
basic_cognitive_process(X, noun_cognition) :- basic_cognitive_process(X),not abnormal_d_cognition(X),not -basic_cognitive_process(X, noun_cognition).
basic_cognitive_process(X, noun_cognition) :- learning(X, noun_cognition).
binary_compound(X, noun_substance) :- binary_compound(X),not abnormal_d_substance(X),not -binary_compound(X, noun_substance).
binary_compound(X, noun_substance) :- water(X, noun_substance).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
biological_group(X, noun_group) :- taxonomic_group(X, noun_group).
bird(X, noun_animal) :- bird(X),not abnormal_d_animal(X),not -bird(X, noun_animal).
bird(X, noun_animal) :- gallinaceous_bird(X, noun_animal).
bodily_process(X, noun_process) :- bodily_process(X),not abnormal_d_process(X),not -bodily_process(X, noun_process).
bodily_process(X, noun_process) :- discharge(X, noun_process).
bodily_process(X, noun_process) :- respiration(X, noun_act).
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
body_covering(X, noun_body) :- body_covering(X),not abnormal_d_body(X),not -body_covering(X, noun_body).
body_covering(X, noun_body) :- hair(X, noun_body).
body_part(X, noun_body) :- body(X, noun_body).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
body_part(X, noun_body) :- feature(X, noun_body).
body_part(X, noun_body) :- organ(X, noun_body).
body_part(X, noun_body) :- process(X, noun_body).
body_part(X, noun_body) :- structure(X, noun_body).
body_waste(X, noun_substance) :- body_waste(X),not abnormal_d_substance(X),not -body_waste(X, noun_substance).
body_waste(X, noun_substance) :- water(X, noun_substance).
capital(X, noun_possession) :- capital(X),not abnormal_d_possession(X),not -capital(X, noun_possession).
capital(X, noun_possession) :- means(X, noun_possession).
care(X, noun_act) :- care(X),not abnormal_d_act(X),not -care(X, noun_act).
care(X, noun_act) :- hair_care(X, noun_act).
caruncle(X, noun_body) :- caruncle(X),not abnormal_d_body(X),not -caruncle(X, noun_body).
caruncle(X, noun_body) :- comb(X, noun_body).
category(X, noun_cognition) :- category(X),not abnormal_d_cognition(X),not -category(X, noun_cognition).
category(X, noun_cognition) :- kind(X, noun_cognition).
causing(X, noun_act) :- causing(X),not abnormal_d_act(X),not -causing(X, noun_act).
causing(X, noun_act) :- influence(X, noun_act).
cavity(X, noun_body) :- cavity(X),not -cavity(X, noun_body),-cavity(X, noun_object),-cavity(X, noun_shape),-cavity(X, noun_process).
cavity(X, noun_body) :- cavity(X),not abnormal_d_body(X),not -cavity(X, noun_body).
cavity(X, noun_object) :- cavity(X),not abnormal_d_object(X),not -cavity(X, noun_object).
cavity(X, noun_process) :- cavity(X),not -cavity(X, noun_process),-cavity(X, noun_object),-cavity(X, noun_shape),not cavity(X, noun_body).
cavity(X, noun_process) :- cavity(X),not abnormal_d_process(X),not -cavity(X, noun_process).
cavity(X, noun_shape) :- cavity(X),not -cavity(X, noun_shape),-cavity(X, noun_object),not cavity(X, noun_process),not cavity(X, noun_body).
cavity(X, noun_shape) :- cavity(X),not abnormal_d_shape(X),not -cavity(X, noun_shape).
cell(X, noun_artifact) :- cell(X),not -cell(X, noun_artifact),-cell(X, noun_tops),not cell(X, noun_group).
cell(X, noun_artifact) :- cell(X),not abnormal_d_artifact(X),not -cell(X, noun_artifact).
cell(X, noun_group) :- cell(X),not -cell(X, noun_group),-cell(X, noun_tops),-cell(X, noun_artifact).
cell(X, noun_group) :- cell(X),not abnormal_d_group(X),not -cell(X, noun_group).
cell(X, noun_tops) :- cell(X),not abnormal_d_tops(X),not -cell(X, noun_tops).
change(X, noun_act) :- change(X),not -change(X, noun_act),-change(X, noun_event),-change(X, noun_relation).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- motion(X, noun_act).
change(X, noun_event) :- change(X),not abnormal_d_event(X),not -change(X, noun_event).
change(X, noun_event) :- variation(X, noun_event).
change(X, noun_relation) :- change(X),not -change(X, noun_relation),-change(X, noun_event),not change(X, noun_act).
change(X, noun_relation) :- change(X),not abnormal_d_relation(X),not -change(X, noun_relation).
change(X, noun_relation) :- difference(X, noun_relation).
change_of_location(X, noun_event) :- change_of_location(X),not abnormal_d_event(X),not -change_of_location(X, noun_event).
change_of_location(X, noun_event) :- flow(X, noun_event).
chemical_process(X, noun_process) :- chemical_process(X),not abnormal_d_process(X),not -chemical_process(X, noun_process).
chemical_process(X, noun_process) :- digestion(X, noun_process).
chicken(X, noun_animal) :- chicken(X),not abnormal_d_animal(X),not -chicken(X, noun_animal).
chicken(X, noun_animal) :- hen(X, noun_animal).
chordate(X, noun_animal) :- chordate(X),not abnormal_d_animal(X),not -chordate(X, noun_animal).
chordate(X, noun_animal) :- vertebrate(X, noun_animal).
cilium(X, noun_animal) :- cilium(X),not abnormal_d_animal(X),not -cilium(X, noun_animal).
cilium(X, noun_body) :- cilium(X),not -cilium(X, noun_body),-cilium(X, noun_animal).
cilium(X, noun_body) :- cilium(X),not abnormal_d_body(X),not -cilium(X, noun_body).
cnidarian(X, noun_animal) :- cnidarian(X),not abnormal_d_animal(X),not -cnidarian(X, noun_animal).
coelenterata(X, noun_animal) :- coelenterata(X),not abnormal_d_animal(X),not -coelenterata(X, noun_animal).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- place(X, noun_cognition).
cognition(X, noun_tops) :- process(X, noun_cognition).
cognitive_state(X, noun_cognition) :- cognitive_state(X),not abnormal_d_cognition(X),not -cognitive_state(X, noun_cognition).
cognitive_state(X, noun_cognition) :- consciousness(X, noun_cognition).
comb(X, noun_act) :- comb(X),not -comb(X, noun_act),-comb(X, noun_body),-comb(X, noun_artifact),-comb(X, noun_animal).
comb(X, noun_act) :- comb(X),not abnormal_d_act(X),not -comb(X, noun_act).
comb(X, noun_animal) :- comb(X),not -comb(X, noun_animal),-comb(X, noun_body),-comb(X, noun_artifact),not comb(X, noun_act).
comb(X, noun_animal) :- comb(X),not abnormal_d_animal(X),not -comb(X, noun_animal).
comb(X, noun_artifact) :- comb(X),not -comb(X, noun_artifact),-comb(X, noun_body),not comb(X, noun_animal),not comb(X, noun_act).
comb(X, noun_artifact) :- comb(X),not abnormal_d_artifact(X),not -comb(X, noun_artifact).
comb(X, noun_body) :- comb(X),not abnormal_d_body(X),not -comb(X, noun_body).
commodity(X, noun_artifact) :- commodity(X),not abnormal_d_artifact(X),not -commodity(X, noun_artifact).
commodity(X, noun_artifact) :- merchandise(X, noun_artifact).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- expressive_style(X, noun_communication).
communication(X, noun_tops) :- message(X, noun_communication).
communicator(X, noun_person) :- author(X, noun_person).
communicator(X, noun_person) :- communicator(X),not abnormal_d_person(X),not -communicator(X, noun_person).
compartment(X, noun_artifact) :- cell(X, noun_artifact).
compartment(X, noun_artifact) :- compartment(X),not abnormal_d_artifact(X),not -compartment(X, noun_artifact).
compound(X, noun_substance) :- binary_compound(X, noun_substance).
compound(X, noun_substance) :- compound(X),not abnormal_d_substance(X),not -compound(X, noun_substance).
concept(X, noun_cognition) :- abstraction(X, noun_cognition).
concept(X, noun_cognition) :- category(X, noun_cognition).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- property(X, noun_cognition).
consciousness(X, noun_cognition) :- awareness(X, noun_cognition).
consciousness(X, noun_cognition) :- consciousness(X),not abnormal_d_cognition(X),not -consciousness(X, noun_cognition).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
course(X, noun_group) :- course(X),not abnormal_d_group(X),not -course(X, noun_group).
course(X, noun_group) :- flow(X, noun_group).
covering(X, noun_object) :- body_covering(X, noun_body).
covering(X, noun_object) :- covering(X),not abnormal_d_object(X),not -covering(X, noun_object).
creator(X, noun_person) :- creator(X),not abnormal_d_person(X),not -creator(X, noun_person).
creator(X, noun_person) :- maker(X, noun_person).
crest(X, noun_animal) :- comb(X, noun_animal).
crest(X, noun_animal) :- crest(X),not abnormal_d_animal(X),not -crest(X, noun_animal).
ctenophora(X, noun_animal) :- ctenophora(X),not abnormal_d_animal(X),not -ctenophora(X, noun_animal).
ctenophore(X, noun_animal) :- ctenophore(X),not abnormal_d_animal(X),not -ctenophore(X, noun_animal).
custom(X, noun_act) :- custom(X),not abnormal_d_act(X),not -custom(X, noun_act).
custom(X, noun_act) :- use(X, noun_act).
decay(X, noun_process) :- cavity(X, noun_process).
decay(X, noun_process) :- decay(X),not abnormal_d_process(X),not -decay(X, noun_process).
deed(X, noun_act) :- causing(X, noun_act).
deed(X, noun_act) :- deed(X),not abnormal_d_act(X),not -deed(X, noun_act).
deed(X, noun_act) :- implementation(X, noun_act).
definite_quantity(X, noun_quantity) :- definite_quantity(X),not abnormal_d_quantity(X),not -definite_quantity(X, noun_quantity).
definite_quantity(X, noun_quantity) :- number(X, noun_quantity).
demand(X, noun_process) :- demand(X),not abnormal_d_process(X),not -demand(X, noun_process).
demand(X, noun_process) :- use(X, noun_process).
device(X, noun_artifact) :- comb(X, noun_artifact).
device(X, noun_artifact) :- device(X),not abnormal_d_artifact(X),not -device(X, noun_artifact).
device(X, noun_artifact) :- electrical_device(X, noun_artifact).
device(X, noun_artifact) :- instrument(X, noun_artifact).
difference(X, noun_attribute) :- difference(X),not abnormal_d_attribute(X),not -difference(X, noun_attribute).
difference(X, noun_communication) :- difference(X),not -difference(X, noun_communication),-difference(X, noun_attribute),-difference(X, noun_event),not difference(X, noun_relation),not difference(X, noun_quantity).
difference(X, noun_communication) :- difference(X),not abnormal_d_communication(X),not -difference(X, noun_communication).
difference(X, noun_event) :- difference(X),not -difference(X, noun_event),-difference(X, noun_attribute),not difference(X, noun_communication),not difference(X, noun_relation),not difference(X, noun_quantity).
difference(X, noun_event) :- difference(X),not abnormal_d_event(X),not -difference(X, noun_event).
difference(X, noun_quantity) :- difference(X),not -difference(X, noun_quantity),-difference(X, noun_attribute),-difference(X, noun_event),-difference(X, noun_communication),-difference(X, noun_relation).
difference(X, noun_quantity) :- difference(X),not abnormal_d_quantity(X),not -difference(X, noun_quantity).
difference(X, noun_relation) :- difference(X),not -difference(X, noun_relation),-difference(X, noun_attribute),-difference(X, noun_event),-difference(X, noun_communication),not difference(X, noun_quantity).
difference(X, noun_relation) :- difference(X),not abnormal_d_relation(X),not -difference(X, noun_relation).
digestion(X, noun_cognition) :- digestion(X),not -digestion(X, noun_cognition),-digestion(X, noun_process).
digestion(X, noun_cognition) :- digestion(X),not abnormal_d_cognition(X),not -digestion(X, noun_cognition).
digestion(X, noun_process) :- digestion(X),not abnormal_d_process(X),not -digestion(X, noun_process).
disagreement(X, noun_communication) :- difference(X, noun_communication).
disagreement(X, noun_communication) :- disagreement(X),not abnormal_d_communication(X),not -disagreement(X, noun_communication).
discharge(X, noun_process) :- discharge(X),not abnormal_d_process(X),not -discharge(X, noun_process).
discharge(X, noun_process) :- flow(X, noun_process).
diversion(X, noun_act) :- diversion(X),not abnormal_d_act(X),not -diversion(X, noun_act).
diversion(X, noun_act) :- sport(X, noun_act).
domestic_fowl(X, noun_animal) :- chicken(X, noun_animal).
domestic_fowl(X, noun_animal) :- domestic_fowl(X),not abnormal_d_animal(X),not -domestic_fowl(X, noun_animal).
economic_process(X, noun_process) :- demand(X, noun_process).
economic_process(X, noun_process) :- economic_process(X),not abnormal_d_process(X),not -economic_process(X, noun_process).
electrical_device(X, noun_artifact) :- cell(X, noun_artifact).
electrical_device(X, noun_artifact) :- electrical_device(X),not abnormal_d_artifact(X),not -electrical_device(X, noun_artifact).
electronic_equipment(X, noun_artifact) :- electronic_equipment(X),not abnormal_d_artifact(X),not -electronic_equipment(X, noun_artifact).
electronic_equipment(X, noun_artifact) :- telephone(X, noun_artifact).
element(X, noun_substance) :- element(X),not abnormal_d_substance(X),not -element(X, noun_substance).
element(X, noun_substance) :- water(X, noun_substance).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
equipment(X, noun_artifact) :- electronic_equipment(X, noun_artifact).
equipment(X, noun_artifact) :- equipment(X),not abnormal_d_artifact(X),not -equipment(X, noun_artifact).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- happening(X, noun_event).
event(X, noun_tops) :- social_event(X, noun_event).
expressive_style(X, noun_communication) :- expressive_style(X),not abnormal_d_communication(X),not -expressive_style(X, noun_communication).
expressive_style(X, noun_communication) :- writing_style(X, noun_communication).
facility(X, noun_artifact) :- facility(X),not abnormal_d_artifact(X),not -facility(X, noun_artifact).
facility(X, noun_artifact) :- water(X, noun_artifact).
feature(X, noun_artifact) :- feature(X),not -feature(X, noun_artifact),-feature(X, noun_cognition),-feature(X, noun_body),-feature(X, noun_communication).
feature(X, noun_artifact) :- feature(X),not abnormal_d_artifact(X),not -feature(X, noun_artifact).
feature(X, noun_body) :- feature(X),not -feature(X, noun_body),-feature(X, noun_cognition),not feature(X, noun_communication),not feature(X, noun_artifact).
feature(X, noun_body) :- feature(X),not abnormal_d_body(X),not -feature(X, noun_body).
feature(X, noun_cognition) :- feature(X),not abnormal_d_cognition(X),not -feature(X, noun_cognition).
feature(X, noun_communication) :- feature(X),not -feature(X, noun_communication),-feature(X, noun_cognition),-feature(X, noun_body),not feature(X, noun_artifact).
feature(X, noun_communication) :- feature(X),not abnormal_d_communication(X),not -feature(X, noun_communication).
filler(X, noun_substance) :- filler(X),not abnormal_d_substance(X),not -filler(X, noun_substance).
filler(X, noun_substance) :- size(X, noun_substance).
flow(X, noun_act) :- flow(X),not -flow(X, noun_act),-flow(X, noun_event),-flow(X, noun_time),not flow(X, noun_state),not flow(X, noun_group),not flow(X, noun_process).
flow(X, noun_act) :- flow(X),not abnormal_d_act(X),not -flow(X, noun_act).
flow(X, noun_event) :- flow(X),not abnormal_d_event(X),not -flow(X, noun_event).
flow(X, noun_group) :- flow(X),not -flow(X, noun_group),-flow(X, noun_event),-flow(X, noun_time),-flow(X, noun_act),-flow(X, noun_state),not flow(X, noun_process).
flow(X, noun_group) :- flow(X),not abnormal_d_group(X),not -flow(X, noun_group).
flow(X, noun_process) :- flow(X),not -flow(X, noun_process),-flow(X, noun_event),-flow(X, noun_time),-flow(X, noun_act),-flow(X, noun_state),-flow(X, noun_group).
flow(X, noun_process) :- flow(X),not abnormal_d_process(X),not -flow(X, noun_process).
flow(X, noun_state) :- flow(X),not -flow(X, noun_state),-flow(X, noun_event),-flow(X, noun_time),-flow(X, noun_act),not flow(X, noun_group),not flow(X, noun_process).
flow(X, noun_state) :- flow(X),not abnormal_d_state(X),not -flow(X, noun_state).
flow(X, noun_time) :- flow(X),not -flow(X, noun_time),-flow(X, noun_event),not flow(X, noun_act),not flow(X, noun_state),not flow(X, noun_group),not flow(X, noun_process).
flow(X, noun_time) :- flow(X),not abnormal_d_time(X),not -flow(X, noun_time).
food(X, noun_tops) :- food(X),not abnormal_d_tops(X),not -food(X, noun_tops).
food(X, noun_tops) :- water(X, noun_food).
form(X, noun_communication) :- form(X),not abnormal_d_communication(X),not -form(X, noun_communication).
form(X, noun_communication) :- versification(X, noun_communication).
gallinaceous_bird(X, noun_animal) :- domestic_fowl(X, noun_animal).
gallinaceous_bird(X, noun_animal) :- gallinaceous_bird(X),not abnormal_d_animal(X),not -gallinaceous_bird(X, noun_animal).
gathering(X, noun_group) :- body(X, noun_group).
gathering(X, noun_group) :- gathering(X),not abnormal_d_group(X),not -gathering(X, noun_group).
geological_formation(X, noun_object) :- geological_formation(X),not abnormal_d_object(X),not -geological_formation(X, noun_object).
geological_formation(X, noun_object) :- natural_depression(X, noun_object).
group(X, noun_cognition) :- group(X),not -group(X, noun_cognition),-group(X, noun_tops),-group(X, noun_substance).
group(X, noun_cognition) :- group(X),not abnormal_d_cognition(X),not -group(X, noun_cognition).
group(X, noun_substance) :- group(X),not -group(X, noun_substance),-group(X, noun_tops),not group(X, noun_cognition).
group(X, noun_substance) :- group(X),not abnormal_d_substance(X),not -group(X, noun_substance).
group(X, noun_tops) :- arrangement(X, noun_group).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- social_group(X, noun_group).
group(X, noun_tops) :- system(X, noun_group).
hair(X, noun_body) :- cilium(X, noun_body).
hair(X, noun_body) :- hair(X),not abnormal_d_body(X),not -hair(X, noun_body).
hair_care(X, noun_act) :- comb(X, noun_act).
hair_care(X, noun_act) :- hair_care(X),not abnormal_d_act(X),not -hair_care(X, noun_act).
happening(X, noun_event) :- change(X, noun_event).
happening(X, noun_event) :- happening(X),not abnormal_d_event(X),not -happening(X, noun_event).
happening(X, noun_event) :- movement(X, noun_event).
hen(X, noun_animal) :- hen(X),not abnormal_d_animal(X),not -hen(X, noun_animal).
hen(X, noun_animal) :- layer(X, noun_animal).
higher_cognitive_process(X, noun_cognition) :- higher_cognitive_process(X),not abnormal_d_cognition(X),not -higher_cognitive_process(X, noun_cognition).
higher_cognitive_process(X, noun_cognition) :- knowing(X, noun_cognition).
hole(X, noun_object) :- cavity(X, noun_object).
hole(X, noun_object) :- hole(X),not abnormal_d_object(X),not -hole(X, noun_object).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
implement(X, noun_artifact) :- implement(X),not abnormal_d_artifact(X),not -implement(X, noun_artifact).
implement(X, noun_artifact) :- tool(X, noun_artifact).
implementation(X, noun_act) :- implementation(X),not abnormal_d_act(X),not -implementation(X, noun_act).
implementation(X, noun_act) :- means(X, noun_act).
influence(X, noun_act) :- influence(X),not abnormal_d_act(X),not -influence(X, noun_act).
influence(X, noun_act) :- use(X, noun_act).
instrument(X, noun_artifact) :- instrument(X),not abnormal_d_artifact(X),not -instrument(X, noun_artifact).
instrument(X, noun_artifact) :- measuring_instrument(X, noun_artifact).
instrumentality(X, noun_artifact) :- device(X, noun_artifact).
instrumentality(X, noun_artifact) :- equipment(X, noun_artifact).
instrumentality(X, noun_artifact) :- implement(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
instrumentality(X, noun_artifact) :- means(X, noun_artifact).
invertebrate(X, noun_animal) :- cnidarian(X, noun_animal).
invertebrate(X, noun_animal) :- ctenophore(X, noun_animal).
invertebrate(X, noun_animal) :- invertebrate(X),not abnormal_d_animal(X),not -invertebrate(X, noun_animal).
kind(X, noun_cognition) :- kind(X),not abnormal_d_cognition(X),not -kind(X, noun_cognition).
kind(X, noun_cognition) :- species(X, noun_cognition).
knowing(X, noun_cognition) :- awareness(X, noun_cognition).
knowing(X, noun_cognition) :- knowing(X),not abnormal_d_cognition(X),not -knowing(X, noun_cognition).
layer(X, noun_animal) :- layer(X),not -layer(X, noun_animal),-layer(X, noun_artifact),-layer(X, noun_location),-layer(X, noun_cognition).
layer(X, noun_animal) :- layer(X),not abnormal_d_animal(X),not -layer(X, noun_animal).
layer(X, noun_artifact) :- layer(X),not abnormal_d_artifact(X),not -layer(X, noun_artifact).
layer(X, noun_cognition) :- layer(X),not -layer(X, noun_cognition),-layer(X, noun_artifact),-layer(X, noun_location),not layer(X, noun_animal).
layer(X, noun_cognition) :- layer(X),not abnormal_d_cognition(X),not -layer(X, noun_cognition).
layer(X, noun_location) :- layer(X),not -layer(X, noun_location),-layer(X, noun_artifact),not layer(X, noun_cognition),not layer(X, noun_animal).
layer(X, noun_location) :- layer(X),not abnormal_d_location(X),not -layer(X, noun_location).
learning(X, noun_cognition) :- digestion(X, noun_cognition).
learning(X, noun_cognition) :- learning(X),not abnormal_d_cognition(X),not -learning(X, noun_cognition).
legal_right(X, noun_attribute) :- legal_right(X),not abnormal_d_attribute(X),not -legal_right(X, noun_attribute).
legal_right(X, noun_attribute) :- use(X, noun_attribute).
linear_measure(X, noun_quantity) :- linear_measure(X),not abnormal_d_quantity(X),not -linear_measure(X, noun_quantity).
linear_measure(X, noun_quantity) :- linear_unit(X, noun_quantity).
linear_unit(X, noun_quantity) :- linear_unit(X),not abnormal_d_quantity(X),not -linear_unit(X, noun_quantity).
linear_unit(X, noun_quantity) :- metric_linear_unit(X, noun_quantity).
living_thing(X, noun_tops) :- cell(X, noun_tops).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- region(X, noun_location).
magnitude(X, noun_attribute) :- magnitude(X),not abnormal_d_attribute(X),not -magnitude(X, noun_attribute).
magnitude(X, noun_attribute) :- size(X, noun_attribute).
magnitude_relation(X, noun_relation) :- magnitude_relation(X),not abnormal_d_relation(X),not -magnitude_relation(X, noun_relation).
magnitude_relation(X, noun_relation) :- rate(X, noun_time).
maker(X, noun_person) :- author(X, noun_person).
maker(X, noun_person) :- maker(X),not abnormal_d_person(X),not -maker(X, noun_person).
material(X, noun_substance) :- material(X),not abnormal_d_substance(X),not -material(X, noun_substance).
material(X, noun_substance) :- sealing_material(X, noun_substance).
material(X, noun_substance) :- waste(X, noun_substance).
means(X, noun_act) :- means(X),not abnormal_d_act(X),not -means(X, noun_act).
means(X, noun_artifact) :- means(X),not -means(X, noun_artifact),-means(X, noun_act),not means(X, noun_possession).
means(X, noun_artifact) :- means(X),not abnormal_d_artifact(X),not -means(X, noun_artifact).
means(X, noun_possession) :- means(X),not -means(X, noun_possession),-means(X, noun_act),-means(X, noun_artifact).
means(X, noun_possession) :- means(X),not abnormal_d_possession(X),not -means(X, noun_possession).
measure(X, noun_tops) :- definite_quantity(X, noun_quantity).
measure(X, noun_tops) :- linear_measure(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
measuring_instrument(X, noun_artifact) :- measuring_instrument(X),not abnormal_d_artifact(X),not -measuring_instrument(X, noun_artifact).
measuring_instrument(X, noun_artifact) :- meter(X, noun_artifact).
merchandise(X, noun_artifact) :- feature(X, noun_artifact).
merchandise(X, noun_artifact) :- merchandise(X),not abnormal_d_artifact(X),not -merchandise(X, noun_artifact).
message(X, noun_communication) :- body(X, noun_communication).
message(X, noun_communication) :- message(X),not abnormal_d_communication(X),not -message(X, noun_communication).
metabolism(X, noun_process) :- metabolism(X),not abnormal_d_process(X),not -metabolism(X, noun_process).
metabolism(X, noun_process) :- respiration(X, noun_act).
meter(X, noun_artifact) :- meter(X),not -meter(X, noun_artifact),-meter(X, noun_quantity),not meter(X, noun_communication),not meter(X, noun_attribute).
meter(X, noun_artifact) :- meter(X),not abnormal_d_artifact(X),not -meter(X, noun_artifact).
meter(X, noun_attribute) :- meter(X),not -meter(X, noun_attribute),-meter(X, noun_quantity),-meter(X, noun_artifact),-meter(X, noun_communication).
meter(X, noun_attribute) :- meter(X),not abnormal_d_attribute(X),not -meter(X, noun_attribute).
meter(X, noun_communication) :- meter(X),not -meter(X, noun_communication),-meter(X, noun_quantity),-meter(X, noun_artifact),not meter(X, noun_attribute).
meter(X, noun_communication) :- meter(X),not abnormal_d_communication(X),not -meter(X, noun_communication).
meter(X, noun_quantity) :- meter(X),not abnormal_d_quantity(X),not -meter(X, noun_quantity).
metric_linear_unit(X, noun_quantity) :- meter(X, noun_quantity).
metric_linear_unit(X, noun_quantity) :- metric_linear_unit(X),not abnormal_d_quantity(X),not -metric_linear_unit(X, noun_quantity).
metric_linear_unit(X, noun_quantity) :- millimeter(X, noun_quantity).
millimeter(X, noun_quantity) :- millimeter(X),not abnormal_d_quantity(X),not -millimeter(X, noun_quantity).
motion(X, noun_act) :- flow(X, noun_act).
motion(X, noun_act) :- motion(X),not -motion(X, noun_act),-motion(X, noun_state).
motion(X, noun_act) :- motion(X),not abnormal_d_act(X),not -motion(X, noun_act).
motion(X, noun_state) :- flow(X, noun_state).
motion(X, noun_state) :- motion(X),not abnormal_d_state(X),not -motion(X, noun_state).
movement(X, noun_event) :- change_of_location(X, noun_event).
movement(X, noun_event) :- movement(X),not abnormal_d_event(X),not -movement(X, noun_event).
movie(X, noun_communication) :- feature(X, noun_communication).
movie(X, noun_communication) :- movie(X),not abnormal_d_communication(X),not -movie(X, noun_communication).
natural_depression(X, noun_object) :- hole(X, noun_object).
natural_depression(X, noun_object) :- natural_depression(X),not abnormal_d_object(X),not -natural_depression(X, noun_object).
natural_object(X, noun_tops) :- body(X, noun_body).
natural_object(X, noun_tops) :- body(X, noun_object).
natural_object(X, noun_tops) :- covering(X, noun_object).
natural_object(X, noun_tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_tops).
natural_process(X, noun_process) :- chemical_process(X, noun_process).
natural_process(X, noun_process) :- decay(X, noun_process).
natural_process(X, noun_process) :- flow(X, noun_process).
natural_process(X, noun_process) :- natural_process(X),not abnormal_d_process(X),not -natural_process(X, noun_process).
nonfiction(X, noun_communication) :- article(X, noun_communication).
nonfiction(X, noun_communication) :- nonfiction(X),not abnormal_d_communication(X),not -nonfiction(X, noun_communication).
number(X, noun_quantity) :- difference(X, noun_quantity).
number(X, noun_quantity) :- number(X),not abnormal_d_quantity(X),not -number(X, noun_quantity).
object(X, noun_tops) :- geological_formation(X, noun_object).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
ordering(X, noun_group) :- ordering(X),not abnormal_d_group(X),not -ordering(X, noun_group).
ordering(X, noun_group) :- series(X, noun_group).
organ(X, noun_body) :- organ(X),not abnormal_d_body(X),not -organ(X, noun_body).
organ(X, noun_body) :- organelle(X, noun_body).
organelle(X, noun_body) :- cilium(X, noun_animal).
organelle(X, noun_body) :- organelle(X),not abnormal_d_body(X),not -organelle(X, noun_body).
organic_process(X, noun_process) :- bodily_process(X, noun_process).
organic_process(X, noun_process) :- digestion(X, noun_process).
organic_process(X, noun_process) :- metabolism(X, noun_process).
organic_process(X, noun_process) :- organic_process(X),not abnormal_d_process(X),not -organic_process(X, noun_process).
organism(X, noun_tops) :- animal(X, noun_tops).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
person(X, noun_tops) :- adult(X, noun_person).
person(X, noun_tops) :- communicator(X, noun_person).
person(X, noun_tops) :- creator(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
phylum(X, noun_group) :- coelenterata(X, noun_animal).
phylum(X, noun_group) :- ctenophora(X, noun_animal).
phylum(X, noun_group) :- phylum(X),not abnormal_d_group(X),not -phylum(X, noun_group).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
place(X, noun_cognition) :- layer(X, noun_cognition).
place(X, noun_cognition) :- place(X),not abnormal_d_cognition(X),not -place(X, noun_cognition).
plate(X, noun_body) :- comb(X, noun_animal).
plate(X, noun_body) :- plate(X),not abnormal_d_body(X),not -plate(X, noun_body).
poetic_rhythm(X, noun_communication) :- meter(X, noun_communication).
poetic_rhythm(X, noun_communication) :- poetic_rhythm(X),not abnormal_d_communication(X),not -poetic_rhythm(X, noun_communication).
political_unit(X, noun_group) :- cell(X, noun_group).
political_unit(X, noun_group) :- political_unit(X),not abnormal_d_group(X),not -political_unit(X, noun_group).
possession(X, noun_tops) :- assets(X, noun_possession).
possession(X, noun_tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_tops).
practice(X, noun_act) :- custom(X, noun_act).
practice(X, noun_act) :- practice(X),not abnormal_d_act(X),not -practice(X, noun_act).
process(X, noun_body) :- caruncle(X, noun_body).
process(X, noun_body) :- crest(X, noun_animal).
process(X, noun_body) :- process(X),not -process(X, noun_body),-process(X, noun_cognition),not process(X, noun_tops).
process(X, noun_body) :- process(X),not abnormal_d_body(X),not -process(X, noun_body).
process(X, noun_cognition) :- basic_cognitive_process(X, noun_cognition).
process(X, noun_cognition) :- higher_cognitive_process(X, noun_cognition).
process(X, noun_cognition) :- process(X),not abnormal_d_cognition(X),not -process(X, noun_cognition).
process(X, noun_tops) :- economic_process(X, noun_process).
process(X, noun_tops) :- natural_process(X, noun_process).
process(X, noun_tops) :- organic_process(X, noun_process).
process(X, noun_tops) :- process(X),not -process(X, noun_tops),-process(X, noun_cognition),-process(X, noun_body).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
property(X, noun_attribute) :- body(X, noun_attribute).
property(X, noun_attribute) :- magnitude(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
property(X, noun_attribute) :- size(X, noun_attribute).
property(X, noun_attribute) :- sound_property(X, noun_attribute).
property(X, noun_cognition) :- feature(X, noun_cognition).
property(X, noun_cognition) :- property(X),not -property(X, noun_cognition),-property(X, noun_attribute).
property(X, noun_cognition) :- property(X),not abnormal_d_cognition(X),not -property(X, noun_cognition).
prose(X, noun_communication) :- nonfiction(X, noun_communication).
prose(X, noun_communication) :- prose(X),not abnormal_d_communication(X),not -prose(X, noun_communication).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
quality(X, noun_attribute) :- difference(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
quality(X, noun_attribute) :- utility(X, noun_attribute).
radiotelephone(X, noun_artifact) :- cell(X, noun_artifact).
radiotelephone(X, noun_artifact) :- radiotelephone(X),not abnormal_d_artifact(X),not -radiotelephone(X, noun_artifact).
rate(X, noun_time) :- flow(X, noun_time).
rate(X, noun_time) :- rate(X),not abnormal_d_time(X),not -rate(X, noun_time).
region(X, noun_location) :- layer(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
relation(X, noun_tops) :- change(X, noun_relation).
relation(X, noun_tops) :- magnitude_relation(X, noun_relation).
relation(X, noun_tops) :- possession(X, noun_tops).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
respiration(X, noun_act) :- respiration(X),not abnormal_d_act(X),not -respiration(X, noun_act).
rhythmicity(X, noun_attribute) :- meter(X, noun_attribute).
rhythmicity(X, noun_attribute) :- rhythmicity(X),not abnormal_d_attribute(X),not -rhythmicity(X, noun_attribute).
right(X, noun_attribute) :- legal_right(X, noun_attribute).
right(X, noun_attribute) :- right(X),not abnormal_d_attribute(X),not -right(X, noun_attribute).
room(X, noun_artifact) :- cell(X, noun_artifact).
room(X, noun_artifact) :- room(X),not abnormal_d_artifact(X),not -room(X, noun_artifact).
sealing_material(X, noun_substance) :- filler(X, noun_substance).
sealing_material(X, noun_substance) :- sealing_material(X),not abnormal_d_substance(X),not -sealing_material(X, noun_substance).
series(X, noun_group) :- course(X, noun_group).
series(X, noun_group) :- series(X),not abnormal_d_group(X),not -series(X, noun_group).
set(X, noun_group) :- group(X, noun_cognition).
set(X, noun_group) :- set(X),not abnormal_d_group(X),not -set(X, noun_group).
shape(X, noun_tops) :- amorphous_shape(X, noun_shape).
shape(X, noun_tops) :- shape(X),not abnormal_d_tops(X),not -shape(X, noun_tops).
sheet(X, noun_artifact) :- layer(X, noun_artifact).
sheet(X, noun_artifact) :- sheet(X),not abnormal_d_artifact(X),not -sheet(X, noun_artifact).
show(X, noun_communication) :- movie(X, noun_communication).
show(X, noun_communication) :- show(X),not abnormal_d_communication(X),not -show(X, noun_communication).
situation(X, noun_state) :- situation(X),not abnormal_d_state(X),not -situation(X, noun_state).
situation(X, noun_state) :- size(X, noun_state).
size(X, noun_attribute) :- size(X),not abnormal_d_attribute(X),not -size(X, noun_attribute).
size(X, noun_state) :- size(X),not -size(X, noun_state),-size(X, noun_attribute),-size(X, noun_substance).
size(X, noun_state) :- size(X),not abnormal_d_state(X),not -size(X, noun_state).
size(X, noun_substance) :- size(X),not -size(X, noun_substance),-size(X, noun_attribute),not size(X, noun_state).
size(X, noun_substance) :- size(X),not abnormal_d_substance(X),not -size(X, noun_substance).
social_event(X, noun_event) :- show(X, noun_communication).
social_event(X, noun_event) :- social_event(X),not abnormal_d_event(X),not -social_event(X, noun_event).
social_group(X, noun_group) :- gathering(X, noun_group).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- phylum(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
sound_property(X, noun_attribute) :- rhythmicity(X, noun_attribute).
sound_property(X, noun_attribute) :- sound_property(X),not abnormal_d_attribute(X),not -sound_property(X, noun_attribute).
space(X, noun_shape) :- cavity(X, noun_shape).
space(X, noun_shape) :- space(X),not abnormal_d_shape(X),not -space(X, noun_shape).
species(X, noun_cognition) :- species(X),not -species(X, noun_cognition),-species(X, noun_group).
species(X, noun_cognition) :- species(X),not abnormal_d_cognition(X),not -species(X, noun_cognition).
species(X, noun_group) :- species(X),not abnormal_d_group(X),not -species(X, noun_group).
speech_act(X, noun_communication) :- disagreement(X, noun_communication).
speech_act(X, noun_communication) :- speech_act(X),not abnormal_d_communication(X),not -speech_act(X, noun_communication).
sport(X, noun_act) :- sport(X),not abnormal_d_act(X),not -sport(X, noun_act).
sport(X, noun_act) :- water_sport(X, noun_act).
state(X, noun_tops) :- cognitive_state(X, noun_cognition).
state(X, noun_tops) :- motion(X, noun_state).
state(X, noun_tops) :- situation(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
storage_space(X, noun_artifact) :- compartment(X, noun_artifact).
storage_space(X, noun_artifact) :- storage_space(X),not abnormal_d_artifact(X),not -storage_space(X, noun_artifact).
structure(X, noun_artifact) :- area(X, noun_artifact).
structure(X, noun_artifact) :- body(X, noun_artifact).
structure(X, noun_artifact) :- structure(X),not abnormal_d_artifact(X),not -structure(X, noun_artifact).
structure(X, noun_body) :- cavity(X, noun_body).
structure(X, noun_body) :- layer(X, noun_animal).
structure(X, noun_body) :- plate(X, noun_body).
structure(X, noun_body) :- structure(X),not -structure(X, noun_body),-structure(X, noun_artifact).
structure(X, noun_body) :- structure(X),not abnormal_d_body(X),not -structure(X, noun_body).
substance(X, noun_tops) :- compound(X, noun_substance).
substance(X, noun_tops) :- element(X, noun_substance).
substance(X, noun_tops) :- food(X, noun_tops).
substance(X, noun_tops) :- material(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
swimming(X, noun_act) :- swimming(X),not abnormal_d_act(X),not -swimming(X, noun_act).
system(X, noun_group) :- body(X, noun_group).
system(X, noun_group) :- system(X),not abnormal_d_group(X),not -system(X, noun_group).
taxonomic_group(X, noun_group) :- phylum(X, noun_group).
taxonomic_group(X, noun_group) :- species(X, noun_group).
taxonomic_group(X, noun_group) :- taxonomic_group(X),not abnormal_d_group(X),not -taxonomic_group(X, noun_group).
telephone(X, noun_artifact) :- radiotelephone(X, noun_artifact).
telephone(X, noun_artifact) :- telephone(X),not abnormal_d_artifact(X),not -telephone(X, noun_artifact).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
thing(X, noun_tops) :- unit(X, noun_object).
thing(X, noun_tops) :- water(X, noun_object).
tool(X, noun_artifact) :- comb(X, noun_artifact).
tool(X, noun_artifact) :- tool(X),not abnormal_d_artifact(X),not -tool(X, noun_artifact).
unit(X, noun_group) :- political_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
unit(X, noun_object) :- group(X, noun_substance).
unit(X, noun_object) :- unit(X),not -unit(X, noun_object),-unit(X, noun_group).
unit(X, noun_object) :- unit(X),not abnormal_d_object(X),not -unit(X, noun_object).
use(X, noun_act) :- use(X),not -use(X, noun_act),-use(X, noun_process),not use(X, noun_attribute).
use(X, noun_act) :- use(X),not abnormal_d_act(X),not -use(X, noun_act).
use(X, noun_attribute) :- use(X),not -use(X, noun_attribute),-use(X, noun_process),-use(X, noun_act).
use(X, noun_attribute) :- use(X),not abnormal_d_attribute(X),not -use(X, noun_attribute).
use(X, noun_process) :- use(X),not abnormal_d_process(X),not -use(X, noun_process).
utility(X, noun_attribute) :- use(X, noun_attribute).
utility(X, noun_attribute) :- utility(X),not abnormal_d_attribute(X),not -utility(X, noun_attribute).
variation(X, noun_event) :- difference(X, noun_event).
variation(X, noun_event) :- variation(X),not abnormal_d_event(X),not -variation(X, noun_event).
versification(X, noun_communication) :- poetic_rhythm(X, noun_communication).
versification(X, noun_communication) :- versification(X),not abnormal_d_communication(X),not -versification(X, noun_communication).
vertebrate(X, noun_animal) :- bird(X, noun_animal).
vertebrate(X, noun_animal) :- vertebrate(X),not abnormal_d_animal(X),not -vertebrate(X, noun_animal).
waste(X, noun_substance) :- body_waste(X, noun_substance).
waste(X, noun_substance) :- waste(X),not abnormal_d_substance(X),not -waste(X, noun_substance).
water(X, noun_artifact) :- water(X),not -water(X, noun_artifact),-water(X, noun_object),not water(X, noun_substance),not water(X, noun_food).
water(X, noun_artifact) :- water(X),not abnormal_d_artifact(X),not -water(X, noun_artifact).
water(X, noun_food) :- water(X),not -water(X, noun_food),-water(X, noun_object),-water(X, noun_artifact),-water(X, noun_substance).
water(X, noun_food) :- water(X),not abnormal_d_food(X),not -water(X, noun_food).
water(X, noun_object) :- water(X),not abnormal_d_object(X),not -water(X, noun_object).
water(X, noun_substance) :- water(X),not -water(X, noun_substance),-water(X, noun_object),-water(X, noun_artifact),not water(X, noun_food).
water(X, noun_substance) :- water(X),not abnormal_d_substance(X),not -water(X, noun_substance).
water_sport(X, noun_act) :- swimming(X, noun_act).
water_sport(X, noun_act) :- water_sport(X),not abnormal_d_act(X),not -water_sport(X, noun_act).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- natural_object(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
work(X, noun_act) :- care(X, noun_act).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
writing_style(X, noun_communication) :- form(X, noun_communication).
writing_style(X, noun_communication) :- prose(X, noun_communication).
writing_style(X, noun_communication) :- writing_style(X),not abnormal_d_communication(X),not -writing_style(X, noun_communication).
