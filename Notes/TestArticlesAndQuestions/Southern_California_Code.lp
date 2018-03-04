%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(county, imperial).
_is(imperial, los_angeles).
_is(imperial, orange).
_is(imperial, riverside).
_is(imperial, san_bernardino).
_is(imperial, san_diego).
_is(imperial, santa_barbara).
_is(imperial, ventura).
_is(southern_california, center).
_is(southern_california, geographic_cultural_region).
_is(southern_california, major_economic_center).
_is(southern_california, region).
_mod(abbreviate, often).
_mod(center, economic).
_mod(center, major).
_mod(comprise, generally).
_mod(county, 10).
_mod(county, eight).
_mod(county, southernmost).
_mod(definition, '10_county').
_mod(definition, extensive).
_mod(describe, traditionally).
_mod(division, historical).
_mod(division, political).
_mod(region, cultural).
_mod(region, geographic).
_mod(tie, economic).
_mod(use, also).
_possess(california, county).
_property(abbreviate, as(socal)).
_property(center, for(state_of_california)).
_property(center, for(united_states)).
_property(definition, including(county)).
_property(describe, as(eight_counties)).
_relation(southern_california, 1, _clause).
california(california).
center(center).
center(southern_california).
county(county).
definition(definition).
demographic(demographic).
division(division).
event(1, abbreviate, null, null).
event(10, use, null, definition).
event(11, base, null, null).
event(3, comprise, geographic_cultural_region, county).
event(3, comprise, geographic_cultural_region, southernmost_county).
event(3, comprise, region, county).
event(3, comprise, region, southernmost_county).
event(5, describe, null, null).
event(6, base, null, null).
event(8, include, null, null).
imperial(county).
imperial(los_angeles).
imperial(orange).
imperial(riverside).
imperial(san_bernardino).
imperial(san_diego).
imperial(santa_barbara).
imperial(ventura).
kern(kern).
los_angeles(los_angeles).
orange(orange).
organization(imperial).
region(region).
region(southern_california).
riverside(riverside).
san_diego(san_diego).
santa_barbara(santa_barbara).
tie(tie).
united_states(united_states).
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
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
act(X, noun_tops) :- activity(X, noun_act).
act(X, noun_tops) :- speech_act(X, noun_communication).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- procedure(X, noun_act).
activity(X, noun_act) :- role(X, noun_act).
administrative_district(X, noun_location) :- administrative_district(X),not abnormal_d_location(X),not -administrative_district(X, noun_location).
administrative_district(X, noun_location) :- country(X, noun_location).
administrative_district(X, noun_location) :- county(X, noun_location).
administrative_district(X, noun_location) :- state(X, noun_location).
administrative_unit(X, noun_group) :- administrative_unit(X),not abnormal_d_group(X),not -administrative_unit(X, noun_group).
administrative_unit(X, noun_group) :- division(X, noun_group).
air_unit(X, noun_group) :- air_unit(X),not abnormal_d_group(X),not -air_unit(X, noun_group).
air_unit(X, noun_group) :- division(X, noun_group).
american_state(X, noun_location) :- american_state(X),not abnormal_d_location(X),not -american_state(X, noun_location).
american_state(X, noun_location) :- california(X, noun_location).
angiospermous_tree(X, noun_plant) :- angiospermous_tree(X),not abnormal_d_plant(X),not -angiospermous_tree(X, noun_plant).
angiospermous_tree(X, noun_plant) :- fruit_tree(X, noun_plant).
area(X, noun_location) :- area(X),not abnormal_d_location(X),not -area(X, noun_location).
area(X, noun_location) :- center(X, noun_location).
arithmetic_operation(X, noun_act) :- arithmetic_operation(X),not abnormal_d_act(X),not -arithmetic_operation(X, noun_act).
arithmetic_operation(X, noun_act) :- division(X, noun_act).
army_unit(X, noun_group) :- army_unit(X),not abnormal_d_group(X),not -army_unit(X, noun_group).
army_unit(X, noun_group) :- division(X, noun_group).
arrangement(X, noun_group) :- arrangement(X),not abnormal_d_group(X),not -arrangement(X, noun_group).
arrangement(X, noun_group) :- formation(X, noun_group).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- block(X, noun_artifact).
artifact(X, noun_tops) :- covering(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
artifact(X, noun_tops) :- line(X, noun_artifact).
artifact(X, noun_tops) :- structure(X, noun_artifact).
artist(X, noun_person) :- artist(X),not abnormal_d_person(X),not -artist(X, noun_person).
artist(X, noun_person) :- musician(X, noun_person).
association(X, noun_group) :- association(X),not abnormal_d_group(X),not -association(X, noun_group).
association(X, noun_group) :- league(X, noun_group).
athlete(X, noun_person) :- athlete(X),not abnormal_d_person(X),not -athlete(X, noun_person).
athlete(X, noun_person) :- basketball_player(X, noun_person).
athlete(X, noun_person) :- football_player(X, noun_person).
athlete(X, noun_person) :- hockey_player(X, noun_person).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
bank(X, noun_object) :- bank(X),not abnormal_d_object(X),not -bank(X, noun_object).
bank(X, noun_object) :- riverside(X, noun_object).
basketball_player(X, noun_person) :- basketball_player(X),not abnormal_d_person(X),not -basketball_player(X, noun_person).
basketball_player(X, noun_person) :- center(X, noun_person).
beam(X, noun_artifact) :- beam(X),not abnormal_d_artifact(X),not -beam(X, noun_artifact).
beam(X, noun_artifact) :- tie(X, noun_artifact).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
biological_group(X, noun_group) :- division(X, noun_group).
biological_group(X, noun_group) :- taxonomic_group(X, noun_group).
block(X, noun_artifact) :- block(X),not abnormal_d_artifact(X),not -block(X, noun_artifact).
block(X, noun_artifact) :- type(X, noun_artifact).
body_of_water(X, noun_object) :- body_of_water(X),not abnormal_d_object(X),not -body_of_water(X, noun_object).
body_of_water(X, noun_object) :- stream(X, noun_object).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
body_part(X, noun_body) :- region(X, noun_body).
body_part(X, noun_body) :- structure(X, noun_body).
brace(X, noun_artifact) :- brace(X),not abnormal_d_artifact(X),not -brace(X, noun_artifact).
brace(X, noun_artifact) :- tie(X, noun_artifact).
building(X, noun_artifact) :- building(X),not abnormal_d_artifact(X),not -building(X, noun_artifact).
building(X, noun_artifact) :- center(X, noun_artifact).
calculation(X, noun_act) :- calculation(X),not abnormal_d_act(X),not -calculation(X, noun_act).
calculation(X, noun_act) :- mathematical_process(X, noun_act).
california(X, noun_location) :- california(X),not abnormal_d_location(X),not -california(X, noun_location).
center(X, noun_act) :- center(X),not -center(X, noun_act),-center(X, noun_location),-center(X, noun_cognition),-center(X, noun_body),-center(X, noun_person),-center(X, noun_group),-center(X, noun_food),-center(X, noun_artifact).
center(X, noun_act) :- center(X),not abnormal_d_act(X),not -center(X, noun_act).
center(X, noun_artifact) :- center(X),not -center(X, noun_artifact),-center(X, noun_location),-center(X, noun_cognition),-center(X, noun_body),-center(X, noun_person),-center(X, noun_group),-center(X, noun_food),not center(X, noun_act).
center(X, noun_artifact) :- center(X),not abnormal_d_artifact(X),not -center(X, noun_artifact).
center(X, noun_body) :- center(X),not -center(X, noun_body),-center(X, noun_location),-center(X, noun_cognition),not center(X, noun_person),not center(X, noun_group),not center(X, noun_food),not center(X, noun_artifact),not center(X, noun_act).
center(X, noun_body) :- center(X),not abnormal_d_body(X),not -center(X, noun_body).
center(X, noun_cognition) :- center(X),not -center(X, noun_cognition),-center(X, noun_location),not center(X, noun_body),not center(X, noun_person),not center(X, noun_group),not center(X, noun_food),not center(X, noun_artifact),not center(X, noun_act).
center(X, noun_cognition) :- center(X),not abnormal_d_cognition(X),not -center(X, noun_cognition).
center(X, noun_food) :- center(X),not -center(X, noun_food),-center(X, noun_location),-center(X, noun_cognition),-center(X, noun_body),-center(X, noun_person),-center(X, noun_group),not center(X, noun_artifact),not center(X, noun_act).
center(X, noun_food) :- center(X),not abnormal_d_food(X),not -center(X, noun_food).
center(X, noun_group) :- center(X),not -center(X, noun_group),-center(X, noun_location),-center(X, noun_cognition),-center(X, noun_body),-center(X, noun_person),not center(X, noun_food),not center(X, noun_artifact),not center(X, noun_act).
center(X, noun_group) :- center(X),not abnormal_d_group(X),not -center(X, noun_group).
center(X, noun_location) :- center(X),not abnormal_d_location(X),not -center(X, noun_location).
center(X, noun_person) :- center(X),not -center(X, noun_person),-center(X, noun_location),-center(X, noun_cognition),-center(X, noun_body),not center(X, noun_group),not center(X, noun_food),not center(X, noun_artifact),not center(X, noun_act).
center(X, noun_person) :- center(X),not abnormal_d_person(X),not -center(X, noun_person).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- change_of_integrity(X, noun_act).
change_of_integrity(X, noun_act) :- change_of_integrity(X),not abnormal_d_act(X),not -change_of_integrity(X, noun_act).
change_of_integrity(X, noun_act) :- separation(X, noun_act).
chromatic_color(X, noun_attribute) :- chromatic_color(X),not abnormal_d_attribute(X),not -chromatic_color(X, noun_attribute).
chromatic_color(X, noun_attribute) :- orange(X, noun_attribute).
citrus(X, noun_food) :- citrus(X),not abnormal_d_food(X),not -citrus(X, noun_food).
citrus(X, noun_food) :- orange(X, noun_food).
citrus(X, noun_plant) :- citrus(X),not -citrus(X, noun_plant),-citrus(X, noun_food).
citrus(X, noun_plant) :- citrus(X),not abnormal_d_plant(X),not -citrus(X, noun_plant).
citrus(X, noun_plant) :- orange(X, noun_plant).
city(X, noun_location) :- city(X),not abnormal_d_location(X),not -city(X, noun_location).
city(X, noun_location) :- los_angeles(X, noun_location).
city(X, noun_location) :- riverside(X, noun_location).
city(X, noun_location) :- san_diego(X, noun_location).
class(X, noun_group) :- center(X, noun_group).
class(X, noun_group) :- class(X),not abnormal_d_group(X),not -class(X, noun_group).
clearness(X, noun_attribute) :- clearness(X),not abnormal_d_attribute(X),not -clearness(X, noun_attribute).
clearness(X, noun_attribute) :- distinctness(X, noun_attribute).
clothing(X, noun_artifact) :- clothing(X),not abnormal_d_artifact(X),not -clothing(X, noun_artifact).
clothing(X, noun_artifact) :- garment(X, noun_artifact).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- information(X, noun_cognition).
color(X, noun_attribute) :- chromatic_color(X, noun_attribute).
color(X, noun_attribute) :- color(X),not abnormal_d_attribute(X),not -color(X, noun_attribute).
coloring_material(X, noun_substance) :- coloring_material(X),not abnormal_d_substance(X),not -coloring_material(X, noun_substance).
coloring_material(X, noun_substance) :- pigment(X, noun_substance).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- message(X, noun_communication).
communication(X, noun_tops) :- written_communication(X, noun_communication).
composer(X, noun_person) :- composer(X),not abnormal_d_person(X),not -composer(X, noun_person).
composer(X, noun_person) :- kern(X, noun_person).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- division(X, noun_cognition).
content(X, noun_cognition) :- center(X, noun_cognition).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
content(X, noun_cognition) :- knowledge_domain(X, noun_cognition).
content(X, noun_cognition) :- object(X, noun_cognition).
contestant(X, noun_person) :- athlete(X, noun_person).
contestant(X, noun_person) :- contestant(X),not abnormal_d_person(X),not -contestant(X, noun_person).
cord(X, noun_artifact) :- cord(X),not abnormal_d_artifact(X),not -cord(X, noun_artifact).
cord(X, noun_artifact) :- tie(X, noun_artifact).
country(X, noun_location) :- country(X),not abnormal_d_location(X),not -country(X, noun_location).
country(X, noun_location) :- north_american_country(X, noun_location).
county(X, noun_location) :- county(X),not abnormal_d_location(X),not -county(X, noun_location).
covering(X, noun_artifact) :- clothing(X, noun_artifact).
covering(X, noun_artifact) :- covering(X),not abnormal_d_artifact(X),not -covering(X, noun_artifact).
creator(X, noun_person) :- artist(X, noun_person).
creator(X, noun_person) :- creator(X),not abnormal_d_person(X),not -creator(X, noun_person).
dainty(X, noun_food) :- dainty(X),not abnormal_d_food(X),not -dainty(X, noun_food).
dainty(X, noun_food) :- sweet(X, noun_food).
datum(X, noun_cognition) :- datum(X),not abnormal_d_cognition(X),not -datum(X, noun_cognition).
datum(X, noun_cognition) :- statistic(X, noun_cognition).
definition(X, noun_attribute) :- definition(X),not -definition(X, noun_attribute),-definition(X, noun_communication).
definition(X, noun_attribute) :- definition(X),not abnormal_d_attribute(X),not -definition(X, noun_attribute).
definition(X, noun_communication) :- definition(X),not abnormal_d_communication(X),not -definition(X, noun_communication).
demographic(X, noun_cognition) :- demographic(X),not abnormal_d_cognition(X),not -demographic(X, noun_cognition).
device(X, noun_artifact) :- device(X),not abnormal_d_artifact(X),not -device(X, noun_artifact).
device(X, noun_artifact) :- restraint(X, noun_artifact).
device(X, noun_artifact) :- support(X, noun_artifact).
disagreement(X, noun_communication) :- disagreement(X),not abnormal_d_communication(X),not -disagreement(X, noun_communication).
disagreement(X, noun_communication) :- discord(X, noun_communication).
discord(X, noun_communication) :- discord(X),not abnormal_d_communication(X),not -discord(X, noun_communication).
discord(X, noun_communication) :- division(X, noun_communication).
distinctness(X, noun_attribute) :- definition(X, noun_attribute).
distinctness(X, noun_attribute) :- distinctness(X),not abnormal_d_attribute(X),not -distinctness(X, noun_attribute).
district(X, noun_location) :- administrative_district(X, noun_location).
district(X, noun_location) :- district(X),not abnormal_d_location(X),not -district(X, noun_location).
division(X, noun_act) :- division(X),not -division(X, noun_act),-division(X, noun_cognition),-division(X, noun_group),not division(X, noun_communication).
division(X, noun_act) :- division(X),not abnormal_d_act(X),not -division(X, noun_act).
division(X, noun_cognition) :- division(X),not abnormal_d_cognition(X),not -division(X, noun_cognition).
division(X, noun_communication) :- division(X),not -division(X, noun_communication),-division(X, noun_cognition),-division(X, noun_group),-division(X, noun_act).
division(X, noun_communication) :- division(X),not abnormal_d_communication(X),not -division(X, noun_communication).
division(X, noun_group) :- division(X),not -division(X, noun_group),-division(X, noun_cognition),not division(X, noun_act),not division(X, noun_communication).
division(X, noun_group) :- division(X),not abnormal_d_group(X),not -division(X, noun_group).
edible_fruit(X, noun_food) :- citrus(X, noun_food).
edible_fruit(X, noun_food) :- edible_fruit(X),not abnormal_d_food(X),not -edible_fruit(X, noun_food).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
equality(X, noun_state) :- equality(X),not abnormal_d_state(X),not -equality(X, noun_state).
equality(X, noun_state) :- tie(X, noun_state).
establishment(X, noun_artifact) :- establishment(X),not abnormal_d_artifact(X),not -establishment(X, noun_artifact).
establishment(X, noun_artifact) :- place_of_business(X, noun_artifact).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- happening(X, noun_event).
explanation(X, noun_communication) :- definition(X, noun_communication).
explanation(X, noun_communication) :- explanation(X),not abnormal_d_communication(X),not -explanation(X, noun_communication).
fastener(X, noun_artifact) :- fastener(X),not abnormal_d_artifact(X),not -fastener(X, noun_artifact).
fastener(X, noun_artifact) :- tie(X, noun_artifact).
federal_government(X, noun_group) :- federal_government(X),not abnormal_d_group(X),not -federal_government(X, noun_group).
federal_government(X, noun_group) :- united_states(X, noun_group).
finish(X, noun_event) :- finish(X),not abnormal_d_event(X),not -finish(X, noun_event).
finish(X, noun_event) :- tie(X, noun_event).
food(X, noun_food) :- food(X),not -food(X, noun_food),-food(X, noun_tops).
food(X, noun_food) :- food(X),not abnormal_d_food(X),not -food(X, noun_food).
food(X, noun_food) :- produce(X, noun_food).
food(X, noun_tops) :- food(X),not abnormal_d_tops(X),not -food(X, noun_tops).
food(X, noun_tops) :- nutriment(X, noun_food).
football_player(X, noun_person) :- football_player(X),not abnormal_d_person(X),not -football_player(X, noun_person).
football_player(X, noun_person) :- lineman(X, noun_person).
formation(X, noun_group) :- center(X, noun_group).
formation(X, noun_group) :- formation(X),not abnormal_d_group(X),not -formation(X, noun_group).
fruit_tree(X, noun_plant) :- citrus(X, noun_plant).
fruit_tree(X, noun_plant) :- fruit_tree(X),not abnormal_d_plant(X),not -fruit_tree(X, noun_plant).
garment(X, noun_artifact) :- garment(X),not abnormal_d_artifact(X),not -garment(X, noun_artifact).
garment(X, noun_artifact) :- neckwear(X, noun_artifact).
geographical_area(X, noun_location) :- geographical_area(X),not abnormal_d_location(X),not -geographical_area(X, noun_location).
geographical_area(X, noun_location) :- place(X, noun_location).
geographical_area(X, noun_location) :- tract(X, noun_location).
geographical_area(X, noun_location) :- urban_area(X, noun_location).
geological_formation(X, noun_object) :- geological_formation(X),not abnormal_d_object(X),not -geological_formation(X, noun_object).
geological_formation(X, noun_object) :- slope(X, noun_object).
government(X, noun_group) :- federal_government(X, noun_group).
government(X, noun_group) :- government(X),not abnormal_d_group(X),not -government(X, noun_group).
group(X, noun_tops) :- arrangement(X, noun_group).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- people(X, noun_group).
group(X, noun_tops) :- social_group(X, noun_group).
happening(X, noun_event) :- finish(X, noun_event).
happening(X, noun_event) :- happening(X),not abnormal_d_event(X),not -happening(X, noun_event).
hockey_player(X, noun_person) :- center(X, noun_person).
hockey_player(X, noun_person) :- hockey_player(X),not abnormal_d_person(X),not -hockey_player(X, noun_person).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
indefinite_quantity(X, noun_quantity) :- indefinite_quantity(X),not abnormal_d_quantity(X),not -indefinite_quantity(X, noun_quantity).
indefinite_quantity(X, noun_quantity) :- region(X, noun_quantity).
information(X, noun_cognition) :- datum(X, noun_cognition).
information(X, noun_cognition) :- information(X),not abnormal_d_cognition(X),not -information(X, noun_cognition).
instrumentality(X, noun_artifact) :- device(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
kern(X, noun_artifact) :- kern(X),not -kern(X, noun_artifact),-kern(X, noun_person).
kern(X, noun_artifact) :- kern(X),not abnormal_d_artifact(X),not -kern(X, noun_artifact).
kern(X, noun_person) :- kern(X),not abnormal_d_person(X),not -kern(X, noun_person).
knowledge_domain(X, noun_cognition) :- knowledge_domain(X),not abnormal_d_cognition(X),not -knowledge_domain(X, noun_cognition).
knowledge_domain(X, noun_cognition) :- region(X, noun_cognition).
league(X, noun_group) :- division(X, noun_group).
league(X, noun_group) :- league(X),not abnormal_d_group(X),not -league(X, noun_group).
line(X, noun_artifact) :- cord(X, noun_artifact).
line(X, noun_artifact) :- line(X),not abnormal_d_artifact(X),not -line(X, noun_artifact).
lineman(X, noun_act) :- center(X, noun_act).
lineman(X, noun_act) :- lineman(X),not -lineman(X, noun_act),-lineman(X, noun_person).
lineman(X, noun_act) :- lineman(X),not abnormal_d_act(X),not -lineman(X, noun_act).
lineman(X, noun_person) :- center(X, noun_person).
lineman(X, noun_person) :- lineman(X),not abnormal_d_person(X),not -lineman(X, noun_person).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- point(X, noun_location).
location(X, noun_tops) :- region(X, noun_location).
los_angeles(X, noun_location) :- los_angeles(X),not abnormal_d_location(X),not -los_angeles(X, noun_location).
material(X, noun_substance) :- coloring_material(X, noun_substance).
material(X, noun_substance) :- material(X),not abnormal_d_substance(X),not -material(X, noun_substance).
mathematical_process(X, noun_act) :- arithmetic_operation(X, noun_act).
mathematical_process(X, noun_act) :- mathematical_process(X),not abnormal_d_act(X),not -mathematical_process(X, noun_act).
measure(X, noun_tops) :- indefinite_quantity(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
mercantile_establishment(X, noun_artifact) :- center(X, noun_artifact).
mercantile_establishment(X, noun_artifact) :- mercantile_establishment(X),not abnormal_d_artifact(X),not -mercantile_establishment(X, noun_artifact).
message(X, noun_communication) :- message(X),not abnormal_d_communication(X),not -message(X, noun_communication).
message(X, noun_communication) :- statement(X, noun_communication).
military_unit(X, noun_group) :- air_unit(X, noun_group).
military_unit(X, noun_group) :- army_unit(X, noun_group).
military_unit(X, noun_group) :- military_unit(X),not abnormal_d_group(X),not -military_unit(X, noun_group).
military_unit(X, noun_group) :- naval_unit(X, noun_group).
municipality(X, noun_location) :- city(X, noun_location).
municipality(X, noun_location) :- municipality(X),not abnormal_d_location(X),not -municipality(X, noun_location).
municipality(X, noun_location) :- town(X, noun_location).
musical_notation(X, noun_communication) :- musical_notation(X),not abnormal_d_communication(X),not -musical_notation(X, noun_communication).
musical_notation(X, noun_communication) :- slur(X, noun_communication).
musician(X, noun_person) :- composer(X, noun_person).
musician(X, noun_person) :- musician(X),not abnormal_d_person(X),not -musician(X, noun_person).
naval_unit(X, noun_group) :- division(X, noun_group).
naval_unit(X, noun_group) :- naval_unit(X),not abnormal_d_group(X),not -naval_unit(X, noun_group).
neckwear(X, noun_artifact) :- neckwear(X),not abnormal_d_artifact(X),not -neckwear(X, noun_artifact).
neckwear(X, noun_artifact) :- tie(X, noun_artifact).
neural_structure(X, noun_body) :- center(X, noun_body).
neural_structure(X, noun_body) :- neural_structure(X),not abnormal_d_body(X),not -neural_structure(X, noun_body).
north_american_country(X, noun_location) :- north_american_country(X),not abnormal_d_location(X),not -north_american_country(X, noun_location).
north_american_country(X, noun_location) :- united_states(X, noun_location).
notation(X, noun_communication) :- musical_notation(X, noun_communication).
notation(X, noun_communication) :- notation(X),not abnormal_d_communication(X),not -notation(X, noun_communication).
nutriment(X, noun_food) :- dainty(X, noun_food).
nutriment(X, noun_food) :- nutriment(X),not abnormal_d_food(X),not -nutriment(X, noun_food).
object(X, noun_cognition) :- center(X, noun_cognition).
object(X, noun_cognition) :- object(X),not -object(X, noun_cognition),-object(X, noun_tops).
object(X, noun_cognition) :- object(X),not abnormal_d_cognition(X),not -object(X, noun_cognition).
object(X, noun_tops) :- geological_formation(X, noun_object).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
orange(X, noun_attribute) :- orange(X),not -orange(X, noun_attribute),-orange(X, noun_food),not orange(X, noun_plant),not orange(X, noun_substance),not orange(X, noun_object).
orange(X, noun_attribute) :- orange(X),not abnormal_d_attribute(X),not -orange(X, noun_attribute).
orange(X, noun_food) :- orange(X),not abnormal_d_food(X),not -orange(X, noun_food).
orange(X, noun_object) :- orange(X),not -orange(X, noun_object),-orange(X, noun_food),-orange(X, noun_attribute),-orange(X, noun_plant),-orange(X, noun_substance).
orange(X, noun_object) :- orange(X),not abnormal_d_object(X),not -orange(X, noun_object).
orange(X, noun_plant) :- orange(X),not -orange(X, noun_plant),-orange(X, noun_food),-orange(X, noun_attribute),not orange(X, noun_substance),not orange(X, noun_object).
orange(X, noun_plant) :- orange(X),not abnormal_d_plant(X),not -orange(X, noun_plant).
orange(X, noun_substance) :- orange(X),not -orange(X, noun_substance),-orange(X, noun_food),-orange(X, noun_attribute),-orange(X, noun_plant),not orange(X, noun_object).
orange(X, noun_substance) :- orange(X),not abnormal_d_substance(X),not -orange(X, noun_substance).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organism(X, noun_tops) :- plant(X, noun_tops).
organization(X, noun_group) :- association(X, noun_group).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- polity(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
people(X, noun_group) :- class(X, noun_group).
people(X, noun_group) :- people(X),not abnormal_d_group(X),not -people(X, noun_group).
person(X, noun_tops) :- contestant(X, noun_person).
person(X, noun_tops) :- creator(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
phylum(X, noun_group) :- division(X, noun_group).
phylum(X, noun_group) :- phylum(X),not abnormal_d_group(X),not -phylum(X, noun_group).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
pigment(X, noun_substance) :- orange(X, noun_substance).
pigment(X, noun_substance) :- pigment(X),not abnormal_d_substance(X),not -pigment(X, noun_substance).
place(X, noun_location) :- center(X, noun_location).
place(X, noun_location) :- place(X),not abnormal_d_location(X),not -place(X, noun_location).
place_of_business(X, noun_artifact) :- mercantile_establishment(X, noun_artifact).
place_of_business(X, noun_artifact) :- place_of_business(X),not abnormal_d_artifact(X),not -place_of_business(X, noun_artifact).
plant(X, noun_tops) :- plant(X),not abnormal_d_tops(X),not -plant(X, noun_tops).
plant(X, noun_tops) :- vascular_plant(X, noun_plant).
point(X, noun_location) :- center(X, noun_location).
point(X, noun_location) :- point(X),not abnormal_d_location(X),not -point(X, noun_location).
polity(X, noun_group) :- government(X, noun_group).
polity(X, noun_group) :- polity(X),not abnormal_d_group(X),not -polity(X, noun_group).
position(X, noun_act) :- center(X, noun_act).
position(X, noun_act) :- lineman(X, noun_act).
position(X, noun_act) :- position(X),not abnormal_d_act(X),not -position(X, noun_act).
procedure(X, noun_act) :- calculation(X, noun_act).
procedure(X, noun_act) :- procedure(X),not abnormal_d_act(X),not -procedure(X, noun_act).
produce(X, noun_food) :- edible_fruit(X, noun_food).
produce(X, noun_food) :- produce(X),not abnormal_d_food(X),not -produce(X, noun_food).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
property(X, noun_attribute) :- visual_property(X, noun_attribute).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
quality(X, noun_attribute) :- clearness(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
region(X, noun_body) :- region(X),not -region(X, noun_body),-region(X, noun_location),not region(X, noun_quantity),not region(X, noun_cognition).
region(X, noun_body) :- region(X),not abnormal_d_body(X),not -region(X, noun_body).
region(X, noun_cognition) :- region(X),not -region(X, noun_cognition),-region(X, noun_location),-region(X, noun_body),-region(X, noun_quantity).
region(X, noun_cognition) :- region(X),not abnormal_d_cognition(X),not -region(X, noun_cognition).
region(X, noun_location) :- area(X, noun_location).
region(X, noun_location) :- county(X, noun_location).
region(X, noun_location) :- district(X, noun_location).
region(X, noun_location) :- geographical_area(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
region(X, noun_quantity) :- region(X),not -region(X, noun_quantity),-region(X, noun_location),-region(X, noun_body),not region(X, noun_cognition).
region(X, noun_quantity) :- region(X),not abnormal_d_quantity(X),not -region(X, noun_quantity).
relationship(X, noun_state) :- relationship(X),not abnormal_d_state(X),not -relationship(X, noun_state).
relationship(X, noun_state) :- tie(X, noun_state).
restraint(X, noun_artifact) :- fastener(X, noun_artifact).
restraint(X, noun_artifact) :- restraint(X),not abnormal_d_artifact(X),not -restraint(X, noun_artifact).
river(X, noun_object) :- orange(X, noun_object).
river(X, noun_object) :- river(X),not abnormal_d_object(X),not -river(X, noun_object).
riverside(X, noun_location) :- riverside(X),not -riverside(X, noun_location),-riverside(X, noun_object).
riverside(X, noun_location) :- riverside(X),not abnormal_d_location(X),not -riverside(X, noun_location).
riverside(X, noun_object) :- riverside(X),not abnormal_d_object(X),not -riverside(X, noun_object).
role(X, noun_act) :- position(X, noun_act).
role(X, noun_act) :- role(X),not abnormal_d_act(X),not -role(X, noun_act).
san_diego(X, noun_location) :- san_diego(X),not abnormal_d_location(X),not -san_diego(X, noun_location).
santa_barbara(X, noun_location) :- santa_barbara(X),not abnormal_d_location(X),not -santa_barbara(X, noun_location).
separation(X, noun_act) :- division(X, noun_act).
separation(X, noun_act) :- separation(X),not abnormal_d_act(X),not -separation(X, noun_act).
slope(X, noun_object) :- bank(X, noun_object).
slope(X, noun_object) :- slope(X),not abnormal_d_object(X),not -slope(X, noun_object).
slur(X, noun_communication) :- slur(X),not abnormal_d_communication(X),not -slur(X, noun_communication).
slur(X, noun_communication) :- tie(X, noun_communication).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
solid(X, noun_substance) :- food(X, noun_food).
solid(X, noun_substance) :- solid(X),not abnormal_d_substance(X),not -solid(X, noun_substance).
speech_act(X, noun_communication) :- disagreement(X, noun_communication).
speech_act(X, noun_communication) :- speech_act(X),not abnormal_d_communication(X),not -speech_act(X, noun_communication).
state(X, noun_location) :- american_state(X, noun_location).
state(X, noun_location) :- state(X),not -state(X, noun_location),-state(X, noun_tops).
state(X, noun_location) :- state(X),not abnormal_d_location(X),not -state(X, noun_location).
state(X, noun_tops) :- relationship(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
state(X, noun_tops) :- status(X, noun_state).
statement(X, noun_communication) :- explanation(X, noun_communication).
statement(X, noun_communication) :- statement(X),not abnormal_d_communication(X),not -statement(X, noun_communication).
statistic(X, noun_cognition) :- demographic(X, noun_cognition).
statistic(X, noun_cognition) :- statistic(X),not abnormal_d_cognition(X),not -statistic(X, noun_cognition).
status(X, noun_state) :- equality(X, noun_state).
status(X, noun_state) :- status(X),not abnormal_d_state(X),not -status(X, noun_state).
stream(X, noun_object) :- river(X, noun_object).
stream(X, noun_object) :- stream(X),not abnormal_d_object(X),not -stream(X, noun_object).
structural_member(X, noun_artifact) :- beam(X, noun_artifact).
structural_member(X, noun_artifact) :- brace(X, noun_artifact).
structural_member(X, noun_artifact) :- structural_member(X),not abnormal_d_artifact(X),not -structural_member(X, noun_artifact).
structure(X, noun_artifact) :- building(X, noun_artifact).
structure(X, noun_artifact) :- establishment(X, noun_artifact).
structure(X, noun_artifact) :- structure(X),not abnormal_d_artifact(X),not -structure(X, noun_artifact).
structure(X, noun_body) :- neural_structure(X, noun_body).
structure(X, noun_body) :- structure(X),not -structure(X, noun_body),-structure(X, noun_artifact).
structure(X, noun_body) :- structure(X),not abnormal_d_body(X),not -structure(X, noun_body).
substance(X, noun_tops) :- food(X, noun_tops).
substance(X, noun_tops) :- material(X, noun_substance).
substance(X, noun_tops) :- solid(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
support(X, noun_artifact) :- structural_member(X, noun_artifact).
support(X, noun_artifact) :- support(X),not abnormal_d_artifact(X),not -support(X, noun_artifact).
sweet(X, noun_food) :- center(X, noun_food).
sweet(X, noun_food) :- sweet(X),not abnormal_d_food(X),not -sweet(X, noun_food).
taxonomic_group(X, noun_group) :- phylum(X, noun_group).
taxonomic_group(X, noun_group) :- taxonomic_group(X),not abnormal_d_group(X),not -taxonomic_group(X, noun_group).
thing(X, noun_tops) :- body_of_water(X, noun_object).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
tie(X, noun_artifact) :- tie(X),not -tie(X, noun_artifact),-tie(X, noun_state),-tie(X, noun_event),not tie(X, noun_communication).
tie(X, noun_artifact) :- tie(X),not abnormal_d_artifact(X),not -tie(X, noun_artifact).
tie(X, noun_communication) :- tie(X),not -tie(X, noun_communication),-tie(X, noun_state),-tie(X, noun_event),-tie(X, noun_artifact).
tie(X, noun_communication) :- tie(X),not abnormal_d_communication(X),not -tie(X, noun_communication).
tie(X, noun_event) :- tie(X),not -tie(X, noun_event),-tie(X, noun_state),not tie(X, noun_artifact),not tie(X, noun_communication).
tie(X, noun_event) :- tie(X),not abnormal_d_event(X),not -tie(X, noun_event).
tie(X, noun_state) :- tie(X),not abnormal_d_state(X),not -tie(X, noun_state).
town(X, noun_location) :- santa_barbara(X, noun_location).
town(X, noun_location) :- town(X),not abnormal_d_location(X),not -town(X, noun_location).
tract(X, noun_location) :- center(X, noun_artifact).
tract(X, noun_location) :- tract(X),not abnormal_d_location(X),not -tract(X, noun_location).
tree(X, noun_plant) :- angiospermous_tree(X, noun_plant).
tree(X, noun_plant) :- tree(X),not abnormal_d_plant(X),not -tree(X, noun_plant).
type(X, noun_artifact) :- kern(X, noun_artifact).
type(X, noun_artifact) :- type(X),not abnormal_d_artifact(X),not -type(X, noun_artifact).
unit(X, noun_group) :- administrative_unit(X, noun_group).
unit(X, noun_group) :- military_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
united_states(X, noun_group) :- united_states(X),not -united_states(X, noun_group),-united_states(X, noun_location).
united_states(X, noun_group) :- united_states(X),not abnormal_d_group(X),not -united_states(X, noun_group).
united_states(X, noun_location) :- united_states(X),not abnormal_d_location(X),not -united_states(X, noun_location).
urban_area(X, noun_location) :- municipality(X, noun_location).
urban_area(X, noun_location) :- urban_area(X),not abnormal_d_location(X),not -urban_area(X, noun_location).
vascular_plant(X, noun_plant) :- vascular_plant(X),not abnormal_d_plant(X),not -vascular_plant(X, noun_plant).
vascular_plant(X, noun_plant) :- woody_plant(X, noun_plant).
visual_property(X, noun_attribute) :- color(X, noun_attribute).
visual_property(X, noun_attribute) :- visual_property(X),not abnormal_d_attribute(X),not -visual_property(X, noun_attribute).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
woody_plant(X, noun_plant) :- tree(X, noun_plant).
woody_plant(X, noun_plant) :- woody_plant(X),not abnormal_d_plant(X),not -woody_plant(X, noun_plant).
writing(X, noun_communication) :- notation(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).
