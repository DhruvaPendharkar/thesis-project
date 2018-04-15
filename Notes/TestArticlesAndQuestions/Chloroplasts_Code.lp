%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(algae, up_to).
_is(pigment, chlorophyll).
_is(plant, arabidopsis).
_is(plant, wheat).
_mod(capture, where).
_mod(fatty_acid_synthesis, like).
_mod(molecule, energy_storage).
_mod(molecule, organic).
_mod(pigment, photosynthetic).
_mod(role, main).
_mod(up_to, 100).
_mod(use, then).
_possess(chloroplast, role).
_property(10, immune_response, in, plant).
_property(11, number_of_chloroplasts, per, cell).
_property(11, up_to, in, plant).
_property(11, vary, from, 1).
_property(11, vary, in, algae).
_property(3, capture, from, sunlight).
_property(5, free, from, water).
_property(6, energy, in, atp).
_property(6, energy, in, molecule).
_property(6, energy, in, nadph).
_property(8, make, from, carbon_dioxide).
_property(8, make, in, process).
_property(9, know, as, calvin_cycle).
_relation(1, 2, _clcomplement).
_relation(3, 4, _conj).
_relation(3, 5, _clause).
_relation(3, 6, _conj).
_relation(7, 8, _clause).
_relation(process, 9, _clause).
algae(algae).
algae(up_to).
arabidopsis(arabidopsis).
atp(atp).
carbon_dioxide(carbon_dioxide).
cell(cell).
chlorophyll(chlorophyll).
chloroplast(chloroplast).
energy(energy).
event(1, be, main_role, null).
event(1, be, role, null).
event(10, carry, chloroplast, amino_acid_synthesis).
event(10, carry, chloroplast, fatty_acid_synthesis).
event(10, carry, chloroplast, immune_response).
event(10, carry, chloroplast, immune_response_in_plant).
event(10, carry, chloroplast, like_fatty_acid_synthesis).
event(10, carry, chloroplast, number_of_functions).
event(11, vary, number_of_chloroplasts, null).
event(2, conduct, main_role, photosynthesis).
event(2, conduct, role, photosynthesis).
event(3, capture, chlorophyll, null).
event(3, capture, photosynthetic_pigment, energy).
event(3, capture, pigment, energy).
event(4, convert, chlorophyll, null).
event(4, convert, photosynthetic_pigment, energy).
event(4, convert, pigment, energy).
event(5, free, null, oxygen).
event(6, store, chlorophyll, null).
event(6, store, photosynthetic_pigment, energy).
event(6, store, photosynthetic_pigment, energy_in_atp).
event(6, store, photosynthetic_pigment, energy_in_molecule).
event(6, store, photosynthetic_pigment, energy_in_nadph).
event(6, store, pigment, energy).
event(6, store, pigment, energy_in_atp).
event(6, store, pigment, energy_in_molecule).
event(6, store, pigment, energy_in_nadph).
event(7, use, chloroplast, atp).
event(7, use, chloroplast, nadph).
event(8, make, null, molecule).
event(8, make, null, organic_molecule).
event(9, know, null, null).
immune_response(immune_response).
molecule(molecule).
number(1).
number(100).
oxygen(oxygen).
photosynthesis(photosynthesis).
pigment(chlorophyll).
pigment(pigment).
plant(arabidopsis).
plant(plant).
plant(wheat).
process(process).
role(role).
sunlight(sunlight).
water(water).
wheat(wheat).
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
accumulation(X, noun_possession) :- accumulation(X),not abnormal_d_possession(X),not -accumulation(X, noun_possession).
accumulation(X, noun_possession) :- store(X, noun_possession).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- activity(X, noun_act).
acting(X, noun_act) :- acting(X),not abnormal_d_act(X),not -acting(X, noun_act).
acting(X, noun_act) :- portrayal(X, noun_act).
actinic_radiation(X, noun_phenomenon) :- actinic_radiation(X),not abnormal_d_phenomenon(X),not -actinic_radiation(X, noun_phenomenon).
actinic_radiation(X, noun_phenomenon) :- light(X, noun_phenomenon).
activeness(X, noun_attribute) :- activeness(X),not abnormal_d_attribute(X),not -activeness(X, noun_attribute).
activeness(X, noun_attribute) :- animation(X, noun_attribute).
activity(X, noun_act) :- acting(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- process(X, noun_act).
activity(X, noun_act) :- role(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
actor(X, noun_person) :- actor(X),not abnormal_d_person(X),not -actor(X, noun_person).
actor(X, noun_person) :- plant(X, noun_person).
administrative_unit(X, noun_group) :- administrative_unit(X),not abnormal_d_group(X),not -administrative_unit(X, noun_group).
administrative_unit(X, noun_group) :- division(X, noun_group).
algae(X, noun_animal) :- algae(X),not abnormal_d_animal(X),not -algae(X, noun_animal).
animation(X, noun_attribute) :- animation(X),not abnormal_d_attribute(X),not -animation(X, noun_attribute).
animation(X, noun_attribute) :- liveliness(X, noun_attribute).
arabidopsis(X, noun_plant) :- arabidopsis(X),not abnormal_d_plant(X),not -arabidopsis(X, noun_plant).
area(X, noun_artifact) :- area(X),not abnormal_d_artifact(X),not -area(X, noun_artifact).
area(X, noun_artifact) :- room(X, noun_artifact).
area(X, noun_artifact) :- storage_space(X, noun_artifact).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- facility(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
artifact(X, noun_tops) :- structure(X, noun_artifact).
assets(X, noun_possession) :- assets(X),not abnormal_d_possession(X),not -assets(X, noun_possession).
assets(X, noun_possession) :- sum(X, noun_possession).
atom(X, noun_substance) :- atom(X),not abnormal_d_substance(X),not -atom(X, noun_substance).
atom(X, noun_substance) :- grain(X, noun_object).
atp(X, noun_substance) :- atp(X),not abnormal_d_substance(X),not -atp(X, noun_substance).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
attribute(X, noun_tops) :- trait(X, noun_attribute).
binary_compound(X, noun_substance) :- binary_compound(X),not abnormal_d_substance(X),not -binary_compound(X, noun_substance).
binary_compound(X, noun_substance) :- water(X, noun_substance).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
biological_group(X, noun_group) :- taxonomic_group(X, noun_group).
bodily_process(X, noun_process) :- bodily_process(X),not abnormal_d_process(X),not -bodily_process(X, noun_process).
bodily_process(X, noun_process) :- reaction(X, noun_act).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
body_part(X, noun_body) :- process(X, noun_body).
body_waste(X, noun_substance) :- body_waste(X),not abnormal_d_substance(X),not -body_waste(X, noun_substance).
body_waste(X, noun_substance) :- water(X, noun_substance).
building_complex(X, noun_artifact) :- building_complex(X),not abnormal_d_artifact(X),not -building_complex(X, noun_artifact).
building_complex(X, noun_artifact) :- plant(X, noun_artifact).
carbon_dioxide(X, noun_substance) :- carbon_dioxide(X),not abnormal_d_substance(X),not -carbon_dioxide(X, noun_substance).
cell(X, noun_artifact) :- cell(X),not -cell(X, noun_artifact),-cell(X, noun_tops),not cell(X, noun_group).
cell(X, noun_artifact) :- cell(X),not abnormal_d_artifact(X),not -cell(X, noun_artifact).
cell(X, noun_group) :- cell(X),not -cell(X, noun_group),-cell(X, noun_tops),-cell(X, noun_artifact).
cell(X, noun_group) :- cell(X),not abnormal_d_group(X),not -cell(X, noun_group).
cell(X, noun_tops) :- cell(X),not abnormal_d_tops(X),not -cell(X, noun_tops).
cereal(X, noun_plant) :- cereal(X),not abnormal_d_plant(X),not -cereal(X, noun_plant).
cereal(X, noun_plant) :- wheat(X, noun_plant).
chemical_element(X, noun_substance) :- chemical_element(X),not abnormal_d_substance(X),not -chemical_element(X, noun_substance).
chemical_element(X, noun_substance) :- oxygen(X, noun_substance).
chemical_process(X, noun_process) :- chemical_process(X),not abnormal_d_process(X),not -chemical_process(X, noun_process).
chemical_process(X, noun_process) :- photosynthesis(X, noun_process).
chlorophyll(X, noun_animal) :- chlorophyll(X),not abnormal_d_animal(X),not -chlorophyll(X, noun_animal).
chloroplast(X, noun_plant) :- chloroplast(X),not abnormal_d_plant(X),not -chloroplast(X, noun_plant).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- process(X, noun_cognition).
coloring_material(X, noun_substance) :- coloring_material(X),not abnormal_d_substance(X),not -coloring_material(X, noun_substance).
coloring_material(X, noun_substance) :- pigment(X, noun_substance).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- written_communication(X, noun_communication).
compartment(X, noun_artifact) :- cell(X, noun_artifact).
compartment(X, noun_artifact) :- compartment(X),not abnormal_d_artifact(X),not -compartment(X, noun_artifact).
compound(X, noun_substance) :- binary_compound(X, noun_substance).
compound(X, noun_substance) :- compound(X),not abnormal_d_substance(X),not -compound(X, noun_substance).
compound(X, noun_substance) :- organic_compound(X, noun_substance).
compound(X, noun_substance) :- oxide(X, noun_substance).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
contrivance(X, noun_cognition) :- contrivance(X),not abnormal_d_cognition(X),not -contrivance(X, noun_cognition).
contrivance(X, noun_cognition) :- plant(X, noun_cognition).
degree(X, noun_attribute) :- degree(X),not abnormal_d_attribute(X),not -degree(X, noun_attribute).
degree(X, noun_attribute) :- intensity(X, noun_attribute).
department(X, noun_group) :- department(X),not abnormal_d_group(X),not -department(X, noun_group).
department(X, noun_group) :- government_department(X, noun_group).
depository(X, noun_artifact) :- depository(X),not abnormal_d_artifact(X),not -depository(X, noun_artifact).
depository(X, noun_artifact) :- store(X, noun_artifact).
device(X, noun_artifact) :- device(X),not abnormal_d_artifact(X),not -device(X, noun_artifact).
device(X, noun_artifact) :- electrical_device(X, noun_artifact).
device(X, noun_artifact) :- memory_device(X, noun_artifact).
dicot_genus(X, noun_plant) :- dicot_genus(X),not abnormal_d_plant(X),not -dicot_genus(X, noun_plant).
dicot_genus(X, noun_plant) :- dilleniid_dicot_genus(X, noun_plant).
dilleniid_dicot_genus(X, noun_plant) :- arabidopsis(X, noun_plant).
dilleniid_dicot_genus(X, noun_plant) :- dilleniid_dicot_genus(X),not abnormal_d_plant(X),not -dilleniid_dicot_genus(X, noun_plant).
dioxide(X, noun_substance) :- carbon_dioxide(X, noun_substance).
dioxide(X, noun_substance) :- dioxide(X),not abnormal_d_substance(X),not -dioxide(X, noun_substance).
division(X, noun_group) :- department(X, noun_group).
division(X, noun_group) :- division(X),not abnormal_d_group(X),not -division(X, noun_group).
document(X, noun_communication) :- document(X),not abnormal_d_communication(X),not -document(X, noun_communication).
document(X, noun_communication) :- legal_document(X, noun_communication).
drive(X, noun_attribute) :- drive(X),not abnormal_d_attribute(X),not -drive(X, noun_attribute).
drive(X, noun_attribute) :- energy(X, noun_attribute).
duty(X, noun_act) :- duty(X),not abnormal_d_act(X),not -duty(X, noun_act).
duty(X, noun_act) :- role(X, noun_act).
electrical_device(X, noun_artifact) :- cell(X, noun_artifact).
electrical_device(X, noun_artifact) :- electrical_device(X),not abnormal_d_artifact(X),not -electrical_device(X, noun_artifact).
electromagnetic_radiation(X, noun_phenomenon) :- actinic_radiation(X, noun_phenomenon).
electromagnetic_radiation(X, noun_phenomenon) :- electromagnetic_radiation(X),not abnormal_d_phenomenon(X),not -electromagnetic_radiation(X, noun_phenomenon).
electronic_equipment(X, noun_artifact) :- electronic_equipment(X),not abnormal_d_artifact(X),not -electronic_equipment(X, noun_artifact).
electronic_equipment(X, noun_artifact) :- telephone(X, noun_artifact).
element(X, noun_substance) :- element(X),not abnormal_d_substance(X),not -element(X, noun_substance).
element(X, noun_substance) :- water(X, noun_substance).
energy(X, noun_attribute) :- energy(X),not -energy(X, noun_attribute),-energy(X, noun_phenomenon),not energy(X, noun_state),not energy(X, noun_group).
energy(X, noun_attribute) :- energy(X),not abnormal_d_attribute(X),not -energy(X, noun_attribute).
energy(X, noun_group) :- energy(X),not -energy(X, noun_group),-energy(X, noun_phenomenon),-energy(X, noun_attribute),-energy(X, noun_state).
energy(X, noun_group) :- energy(X),not abnormal_d_group(X),not -energy(X, noun_group).
energy(X, noun_phenomenon) :- energy(X),not abnormal_d_phenomenon(X),not -energy(X, noun_phenomenon).
energy(X, noun_phenomenon) :- radiation(X, noun_phenomenon).
energy(X, noun_state) :- energy(X),not -energy(X, noun_state),-energy(X, noun_phenomenon),-energy(X, noun_attribute),not energy(X, noun_group).
energy(X, noun_state) :- energy(X),not abnormal_d_state(X),not -energy(X, noun_state).
entertainer(X, noun_person) :- entertainer(X),not abnormal_d_person(X),not -entertainer(X, noun_person).
entertainer(X, noun_person) :- performer(X, noun_person).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
equipment(X, noun_artifact) :- electronic_equipment(X, noun_artifact).
equipment(X, noun_artifact) :- equipment(X),not abnormal_d_artifact(X),not -equipment(X, noun_artifact).
establishment(X, noun_artifact) :- establishment(X),not abnormal_d_artifact(X),not -establishment(X, noun_artifact).
establishment(X, noun_artifact) :- place_of_business(X, noun_artifact).
ester(X, noun_substance) :- ester(X),not abnormal_d_substance(X),not -ester(X, noun_substance).
ester(X, noun_substance) :- nucleotide(X, noun_substance).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
executive_department(X, noun_group) :- energy(X, noun_group).
executive_department(X, noun_group) :- executive_department(X),not abnormal_d_group(X),not -executive_department(X, noun_group).
facility(X, noun_artifact) :- depository(X, noun_artifact).
facility(X, noun_artifact) :- facility(X),not abnormal_d_artifact(X),not -facility(X, noun_artifact).
facility(X, noun_artifact) :- water(X, noun_artifact).
federal_department(X, noun_group) :- executive_department(X, noun_group).
federal_department(X, noun_group) :- federal_department(X),not abnormal_d_group(X),not -federal_department(X, noun_group).
financial_gain(X, noun_possession) :- financial_gain(X),not abnormal_d_possession(X),not -financial_gain(X, noun_possession).
financial_gain(X, noun_possession) :- income(X, noun_possession).
food(X, noun_tops) :- food(X),not abnormal_d_tops(X),not -food(X, noun_tops).
food(X, noun_tops) :- foodstuff(X, noun_food).
food(X, noun_tops) :- water(X, noun_food).
foodstuff(X, noun_food) :- foodstuff(X),not abnormal_d_food(X),not -foodstuff(X, noun_food).
foodstuff(X, noun_food) :- grain(X, noun_food).
force(X, noun_attribute) :- energy(X, noun_attribute).
force(X, noun_attribute) :- force(X),not abnormal_d_attribute(X),not -force(X, noun_attribute).
gain(X, noun_possession) :- financial_gain(X, noun_possession).
gain(X, noun_possession) :- gain(X),not abnormal_d_possession(X),not -gain(X, noun_possession).
genus(X, noun_group) :- dicot_genus(X, noun_plant).
genus(X, noun_group) :- genus(X),not abnormal_d_group(X),not -genus(X, noun_group).
good_health(X, noun_state) :- energy(X, noun_state).
good_health(X, noun_state) :- good_health(X),not abnormal_d_state(X),not -good_health(X, noun_state).
government_department(X, noun_group) :- federal_department(X, noun_group).
government_department(X, noun_group) :- government_department(X),not abnormal_d_group(X),not -government_department(X, noun_group).
grain(X, noun_food) :- grain(X),not -grain(X, noun_food),-grain(X, noun_object).
grain(X, noun_food) :- grain(X),not abnormal_d_food(X),not -grain(X, noun_food).
grain(X, noun_food) :- wheat(X, noun_food).
grain(X, noun_object) :- grain(X),not abnormal_d_object(X),not -grain(X, noun_object).
grain(X, noun_object) :- granule(X, noun_object).
gramineous_plant(X, noun_plant) :- gramineous_plant(X),not abnormal_d_plant(X),not -gramineous_plant(X, noun_plant).
gramineous_plant(X, noun_plant) :- grass(X, noun_plant).
granule(X, noun_object) :- granule(X),not abnormal_d_object(X),not -granule(X, noun_object).
granule(X, noun_object) :- plastid(X, noun_plant).
grass(X, noun_plant) :- cereal(X, noun_plant).
grass(X, noun_plant) :- grass(X),not abnormal_d_plant(X),not -grass(X, noun_plant).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- social_group(X, noun_group).
herb(X, noun_plant) :- gramineous_plant(X, noun_plant).
herb(X, noun_plant) :- herb(X),not abnormal_d_plant(X),not -herb(X, noun_plant).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
idea(X, noun_cognition) :- plan(X, noun_cognition).
immune_response(X, noun_act) :- immune_response(X),not abnormal_d_act(X),not -immune_response(X, noun_act).
income(X, noun_possession) :- income(X),not abnormal_d_possession(X),not -income(X, noun_possession).
income(X, noun_possession) :- net_income(X, noun_possession).
instrumentality(X, noun_artifact) :- device(X, noun_artifact).
instrumentality(X, noun_artifact) :- equipment(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
intensity(X, noun_attribute) :- force(X, noun_attribute).
intensity(X, noun_attribute) :- intensity(X),not abnormal_d_attribute(X),not -intensity(X, noun_attribute).
legal_document(X, noun_communication) :- legal_document(X),not abnormal_d_communication(X),not -legal_document(X, noun_communication).
legal_document(X, noun_communication) :- writ(X, noun_communication).
light(X, noun_phenomenon) :- light(X),not abnormal_d_phenomenon(X),not -light(X, noun_phenomenon).
light(X, noun_phenomenon) :- sunlight(X, noun_phenomenon).
liveliness(X, noun_attribute) :- energy(X, noun_attribute).
liveliness(X, noun_attribute) :- liveliness(X),not abnormal_d_attribute(X),not -liveliness(X, noun_attribute).
living_thing(X, noun_tops) :- cell(X, noun_tops).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
material(X, noun_substance) :- atom(X, noun_substance).
material(X, noun_substance) :- coloring_material(X, noun_substance).
material(X, noun_substance) :- material(X),not abnormal_d_substance(X),not -material(X, noun_substance).
material(X, noun_substance) :- molecule(X, noun_substance).
material(X, noun_substance) :- waste(X, noun_substance).
memory_device(X, noun_artifact) :- memory_device(X),not abnormal_d_artifact(X),not -memory_device(X, noun_artifact).
memory_device(X, noun_artifact) :- store(X, noun_artifact).
mercantile_establishment(X, noun_artifact) :- mercantile_establishment(X),not abnormal_d_artifact(X),not -mercantile_establishment(X, noun_artifact).
mercantile_establishment(X, noun_artifact) :- store(X, noun_artifact).
microorganism(X, noun_animal) :- microorganism(X),not abnormal_d_animal(X),not -microorganism(X, noun_animal).
microorganism(X, noun_animal) :- protoctist(X, noun_animal).
molecule(X, noun_substance) :- molecule(X),not abnormal_d_substance(X),not -molecule(X, noun_substance).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X, noun_phenomenon).
natural_process(X, noun_process) :- chemical_process(X, noun_process).
natural_process(X, noun_process) :- natural_process(X),not abnormal_d_process(X),not -natural_process(X, noun_process).
net_income(X, noun_possession) :- accumulation(X, noun_possession).
net_income(X, noun_possession) :- net_income(X),not abnormal_d_possession(X),not -net_income(X, noun_possession).
nucleotide(X, noun_substance) :- atp(X, noun_substance).
nucleotide(X, noun_substance) :- nucleotide(X),not abnormal_d_substance(X),not -nucleotide(X, noun_substance).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
organic_compound(X, noun_substance) :- ester(X, noun_substance).
organic_compound(X, noun_substance) :- organic_compound(X),not abnormal_d_substance(X),not -organic_compound(X, noun_substance).
organic_process(X, noun_process) :- bodily_process(X, noun_process).
organic_process(X, noun_process) :- organic_process(X),not abnormal_d_process(X),not -organic_process(X, noun_process).
organism(X, noun_tops) :- microorganism(X, noun_animal).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organism(X, noun_tops) :- plant(X, noun_tops).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
oxide(X, noun_substance) :- dioxide(X, noun_substance).
oxide(X, noun_substance) :- oxide(X),not abnormal_d_substance(X),not -oxide(X, noun_substance).
oxygen(X, noun_substance) :- oxygen(X),not abnormal_d_substance(X),not -oxygen(X, noun_substance).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
performer(X, noun_person) :- actor(X, noun_person).
performer(X, noun_person) :- performer(X),not abnormal_d_person(X),not -performer(X, noun_person).
person(X, noun_tops) :- entertainer(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
photosynthesis(X, noun_process) :- photosynthesis(X),not abnormal_d_process(X),not -photosynthesis(X, noun_process).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
physical_phenomenon(X, noun_phenomenon) :- energy(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X),not abnormal_d_phenomenon(X),not -physical_phenomenon(X, noun_phenomenon).
physiological_state(X, noun_state) :- good_health(X, noun_state).
physiological_state(X, noun_state) :- physiological_state(X),not abnormal_d_state(X),not -physiological_state(X, noun_state).
pigment(X, noun_substance) :- chlorophyll(X, noun_animal).
pigment(X, noun_substance) :- pigment(X),not abnormal_d_substance(X),not -pigment(X, noun_substance).
place_of_business(X, noun_artifact) :- mercantile_establishment(X, noun_artifact).
place_of_business(X, noun_artifact) :- place_of_business(X),not abnormal_d_artifact(X),not -place_of_business(X, noun_artifact).
plan(X, noun_cognition) :- plan(X),not abnormal_d_cognition(X),not -plan(X, noun_cognition).
plan(X, noun_cognition) :- plan_of_action(X, noun_cognition).
plan_of_action(X, noun_cognition) :- plan_of_action(X),not abnormal_d_cognition(X),not -plan_of_action(X, noun_cognition).
plan_of_action(X, noun_cognition) :- scheme(X, noun_cognition).
plant(X, noun_artifact) :- plant(X),not abnormal_d_artifact(X),not -plant(X, noun_artifact).
plant(X, noun_cognition) :- plant(X),not -plant(X, noun_cognition),-plant(X, noun_artifact),-plant(X, noun_tops),not plant(X, noun_person).
plant(X, noun_cognition) :- plant(X),not abnormal_d_cognition(X),not -plant(X, noun_cognition).
plant(X, noun_person) :- plant(X),not -plant(X, noun_person),-plant(X, noun_artifact),-plant(X, noun_tops),-plant(X, noun_cognition).
plant(X, noun_person) :- plant(X),not abnormal_d_person(X),not -plant(X, noun_person).
plant(X, noun_tops) :- plant(X),not -plant(X, noun_tops),-plant(X, noun_artifact),not plant(X, noun_cognition),not plant(X, noun_person).
plant(X, noun_tops) :- plant(X),not abnormal_d_tops(X),not -plant(X, noun_tops).
plant(X, noun_tops) :- vascular_plant(X, noun_plant).
plastid(X, noun_plant) :- chloroplast(X, noun_plant).
plastid(X, noun_plant) :- plastid(X),not abnormal_d_plant(X),not -plastid(X, noun_plant).
political_unit(X, noun_group) :- cell(X, noun_group).
political_unit(X, noun_group) :- political_unit(X),not abnormal_d_group(X),not -political_unit(X, noun_group).
portrayal(X, noun_act) :- portrayal(X),not abnormal_d_act(X),not -portrayal(X, noun_act).
portrayal(X, noun_act) :- role(X, noun_cognition).
possession(X, noun_tops) :- assets(X, noun_possession).
possession(X, noun_tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_tops).
process(X, noun_act) :- process(X),not abnormal_d_act(X),not -process(X, noun_act).
process(X, noun_body) :- process(X),not -process(X, noun_body),-process(X, noun_act),-process(X, noun_communication),-process(X, noun_cognition),not process(X, noun_tops).
process(X, noun_body) :- process(X),not abnormal_d_body(X),not -process(X, noun_body).
process(X, noun_cognition) :- process(X),not -process(X, noun_cognition),-process(X, noun_act),-process(X, noun_communication),not process(X, noun_body),not process(X, noun_tops).
process(X, noun_cognition) :- process(X),not abnormal_d_cognition(X),not -process(X, noun_cognition).
process(X, noun_communication) :- process(X),not -process(X, noun_communication),-process(X, noun_act),not process(X, noun_cognition),not process(X, noun_body),not process(X, noun_tops).
process(X, noun_communication) :- process(X),not abnormal_d_communication(X),not -process(X, noun_communication).
process(X, noun_tops) :- natural_process(X, noun_process).
process(X, noun_tops) :- organic_process(X, noun_process).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not -process(X, noun_tops),-process(X, noun_act),-process(X, noun_communication),-process(X, noun_cognition),-process(X, noun_body).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
property(X, noun_attribute) :- degree(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
protoctist(X, noun_animal) :- algae(X, noun_animal).
protoctist(X, noun_animal) :- protoctist(X),not abnormal_d_animal(X),not -protoctist(X, noun_animal).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
quality(X, noun_attribute) :- utility(X, noun_attribute).
radiation(X, noun_phenomenon) :- electromagnetic_radiation(X, noun_phenomenon).
radiation(X, noun_phenomenon) :- radiation(X),not abnormal_d_phenomenon(X),not -radiation(X, noun_phenomenon).
radiotelephone(X, noun_artifact) :- cell(X, noun_artifact).
radiotelephone(X, noun_artifact) :- radiotelephone(X),not abnormal_d_artifact(X),not -radiotelephone(X, noun_artifact).
reaction(X, noun_act) :- immune_response(X, noun_act).
reaction(X, noun_act) :- reaction(X),not abnormal_d_act(X),not -reaction(X, noun_act).
relation(X, noun_tops) :- possession(X, noun_tops).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
role(X, noun_act) :- role(X),not abnormal_d_act(X),not -role(X, noun_act).
role(X, noun_attribute) :- role(X),not -role(X, noun_attribute),-role(X, noun_act),-role(X, noun_cognition).
role(X, noun_attribute) :- role(X),not abnormal_d_attribute(X),not -role(X, noun_attribute).
role(X, noun_cognition) :- role(X),not -role(X, noun_cognition),-role(X, noun_act),not role(X, noun_attribute).
role(X, noun_cognition) :- role(X),not abnormal_d_cognition(X),not -role(X, noun_cognition).
room(X, noun_artifact) :- cell(X, noun_artifact).
room(X, noun_artifact) :- room(X),not abnormal_d_artifact(X),not -room(X, noun_artifact).
scheme(X, noun_cognition) :- contrivance(X, noun_cognition).
scheme(X, noun_cognition) :- scheme(X),not abnormal_d_cognition(X),not -scheme(X, noun_cognition).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
state(X, noun_tops) :- physiological_state(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
storage_space(X, noun_artifact) :- compartment(X, noun_artifact).
storage_space(X, noun_artifact) :- storage_space(X),not abnormal_d_artifact(X),not -storage_space(X, noun_artifact).
store(X, noun_artifact) :- store(X),not -store(X, noun_artifact),-store(X, noun_possession).
store(X, noun_artifact) :- store(X),not abnormal_d_artifact(X),not -store(X, noun_artifact).
store(X, noun_possession) :- store(X),not abnormal_d_possession(X),not -store(X, noun_possession).
structure(X, noun_artifact) :- area(X, noun_artifact).
structure(X, noun_artifact) :- building_complex(X, noun_artifact).
structure(X, noun_artifact) :- establishment(X, noun_artifact).
structure(X, noun_artifact) :- structure(X),not abnormal_d_artifact(X),not -structure(X, noun_artifact).
substance(X, noun_tops) :- chemical_element(X, noun_substance).
substance(X, noun_tops) :- compound(X, noun_substance).
substance(X, noun_tops) :- element(X, noun_substance).
substance(X, noun_tops) :- food(X, noun_tops).
substance(X, noun_tops) :- material(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
sum(X, noun_possession) :- gain(X, noun_possession).
sum(X, noun_possession) :- sum(X),not abnormal_d_possession(X),not -sum(X, noun_possession).
sunlight(X, noun_phenomenon) :- sunlight(X),not abnormal_d_phenomenon(X),not -sunlight(X, noun_phenomenon).
taxonomic_group(X, noun_group) :- genus(X, noun_group).
taxonomic_group(X, noun_group) :- taxonomic_group(X),not abnormal_d_group(X),not -taxonomic_group(X, noun_group).
telephone(X, noun_artifact) :- radiotelephone(X, noun_artifact).
telephone(X, noun_artifact) :- telephone(X),not abnormal_d_artifact(X),not -telephone(X, noun_artifact).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
thing(X, noun_tops) :- unit(X, noun_object).
thing(X, noun_tops) :- water(X, noun_object).
trait(X, noun_attribute) :- activeness(X, noun_attribute).
trait(X, noun_attribute) :- drive(X, noun_attribute).
trait(X, noun_attribute) :- trait(X),not abnormal_d_attribute(X),not -trait(X, noun_attribute).
unit(X, noun_group) :- administrative_unit(X, noun_group).
unit(X, noun_group) :- political_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
unit(X, noun_object) :- molecule(X, noun_substance).
unit(X, noun_object) :- unit(X),not -unit(X, noun_object),-unit(X, noun_group).
unit(X, noun_object) :- unit(X),not abnormal_d_object(X),not -unit(X, noun_object).
utility(X, noun_attribute) :- role(X, noun_attribute).
utility(X, noun_attribute) :- utility(X),not abnormal_d_attribute(X),not -utility(X, noun_attribute).
vascular_plant(X, noun_plant) :- herb(X, noun_plant).
vascular_plant(X, noun_plant) :- vascular_plant(X),not abnormal_d_plant(X),not -vascular_plant(X, noun_plant).
waste(X, noun_substance) :- body_waste(X, noun_substance).
waste(X, noun_substance) :- waste(X),not abnormal_d_substance(X),not -waste(X, noun_substance).
water(X, noun_artifact) :- water(X),not -water(X, noun_artifact),-water(X, noun_object),not water(X, noun_substance),not water(X, noun_food).
water(X, noun_artifact) :- water(X),not abnormal_d_artifact(X),not -water(X, noun_artifact).
water(X, noun_food) :- water(X),not -water(X, noun_food),-water(X, noun_object),-water(X, noun_artifact),-water(X, noun_substance).
water(X, noun_food) :- water(X),not abnormal_d_food(X),not -water(X, noun_food).
water(X, noun_object) :- water(X),not abnormal_d_object(X),not -water(X, noun_object).
water(X, noun_substance) :- water(X),not -water(X, noun_substance),-water(X, noun_object),-water(X, noun_artifact),not water(X, noun_food).
water(X, noun_substance) :- water(X),not abnormal_d_substance(X),not -water(X, noun_substance).
wheat(X, noun_food) :- wheat(X),not -wheat(X, noun_food),-wheat(X, noun_plant).
wheat(X, noun_food) :- wheat(X),not abnormal_d_food(X),not -wheat(X, noun_food).
wheat(X, noun_plant) :- wheat(X),not abnormal_d_plant(X),not -wheat(X, noun_plant).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
work(X, noun_act) :- duty(X, noun_act).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
writ(X, noun_communication) :- process(X, noun_communication).
writ(X, noun_communication) :- writ(X),not abnormal_d_communication(X),not -writ(X, noun_communication).
writing(X, noun_communication) :- document(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).
