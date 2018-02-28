%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_abbreviation(abc, american_broadcasting_company).
_is(american_broadcasting_company, american_commercial_network).
_is(american_broadcasting_company, network).
_is(disney_abc_television_group, subsidiary).
_is(network, part).
_mod(division, disney_media_networks).
_mod(network, american).
_mod(network, commercial).
_mod(network, the_big_three).
_mod(office, additional).
_mod(office, major).
_possess(network, logo).
_property(division, of(the_walt_disney_company)).
_property(facility, in(burbank)).
_property(facility, in(california)).
_property(facility, in(los_angeles)).
_property(facility, in(new_york_city)).
_property(headquarter, in(manhattan)).
_property(headquarter, on('west_66th_street')).
_property(headquarter, on(columbus_avenue)).
_property(headquarter, with(facility)).
_property(headquarter, with(office)).
_property(logo, as(abc)).
_property(own, by(disney_abc_television_group)).
_property(part, of(network)).
_property(stylize, in(logo)).
_property(stylize, since(1957)).
_property(subsidiary, of(division)).
_relation(american_broadcasting_company, 1, _clause).
abc(abc).
broadcast(broadcast).
burbank(burbank).
california(california).
division(division).
event(1, stylize, null, null).
event(4, own, null, network).
event(7, headquarter, null, network).
facility(facility).
logo(logo).
los_angeles(los_angeles).
manhattan(manhattan).
network(american_broadcasting_company).
network(network).
new_york_city(new_york_city).
office(office).
organization(abc).
organization(american_broadcasting_company).
part(network).
part(part).
production(production).
subsidiary(disney_abc_television_group).
subsidiary(subsidiary).
television(television).
time(1957).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
abc(X, noun_cognition) :- abc(X),not abnormal_d_cognition(X),not -abc(X, noun_cognition).
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
act(X, noun_tops) :- activity(X, noun_act).
act(X, noun_tops) :- group_action(X, noun_act).
act(X, noun_tops) :- production(X, noun_act).
act(X, noun_tops) :- speech_act(X, noun_communication).
acting(X, noun_act) :- acting(X),not abnormal_d_act(X),not -acting(X, noun_act).
acting(X, noun_act) :- portrayal(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
activity(X, noun_act) :- acting(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- attempt(X, noun_act).
activity(X, noun_act) :- ceremony(X, noun_act).
activity(X, noun_act) :- creation(X, noun_act).
activity(X, noun_act) :- diversion(X, noun_act).
activity(X, noun_act) :- occupation(X, noun_act).
activity(X, noun_act) :- procedure(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
administrative_district(X, noun_location) :- administrative_district(X),not abnormal_d_location(X),not -administrative_district(X, noun_location).
administrative_district(X, noun_location) :- borough(X, noun_location).
administrative_district(X, noun_location) :- state(X, noun_location).
administrative_unit(X, noun_group) :- administrative_unit(X),not abnormal_d_group(X),not -administrative_unit(X, noun_group).
administrative_unit(X, noun_group) :- division(X, noun_group).
administrative_unit(X, noun_group) :- office(X, noun_group).
air_unit(X, noun_group) :- air_unit(X),not abnormal_d_group(X),not -air_unit(X, noun_group).
air_unit(X, noun_group) :- division(X, noun_group).
alcohol(X, noun_food) :- alcohol(X),not abnormal_d_food(X),not -alcohol(X, noun_food).
alcohol(X, noun_food) :- mixed_drink(X, noun_food).
american_state(X, noun_location) :- american_state(X),not abnormal_d_location(X),not -american_state(X, noun_location).
american_state(X, noun_location) :- california(X, noun_location).
arithmetic_operation(X, noun_act) :- arithmetic_operation(X),not abnormal_d_act(X),not -arithmetic_operation(X, noun_act).
arithmetic_operation(X, noun_act) :- division(X, noun_act).
army_unit(X, noun_group) :- army_unit(X),not abnormal_d_group(X),not -army_unit(X, noun_group).
army_unit(X, noun_group) :- division(X, noun_group).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- creation(X, noun_artifact).
artifact(X, noun_tops) :- fabric(X, noun_artifact).
artifact(X, noun_tops) :- facility(X, noun_act).
artifact(X, noun_tops) :- facility(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
artifact(X, noun_tops) :- structure(X, noun_artifact).
assets(X, noun_possession) :- assets(X),not abnormal_d_possession(X),not -assets(X, noun_possession).
assets(X, noun_possession) :- part(X, noun_possession).
assistant(X, noun_person) :- assistant(X),not abnormal_d_person(X),not -assistant(X, noun_person).
assistant(X, noun_person) :- subsidiary(X, noun_person).
association(X, noun_group) :- association(X),not abnormal_d_group(X),not -association(X, noun_group).
association(X, noun_group) :- league(X, noun_group).
attempt(X, noun_act) :- attempt(X),not abnormal_d_act(X),not -attempt(X, noun_act).
attempt(X, noun_act) :- part(X, noun_act).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
auditory_communication(X, noun_communication) :- auditory_communication(X),not abnormal_d_communication(X),not -auditory_communication(X, noun_communication).
auditory_communication(X, noun_communication) :- music(X, noun_communication).
beverage(X, noun_food) :- alcohol(X, noun_food).
beverage(X, noun_food) :- beverage(X),not abnormal_d_food(X),not -beverage(X, noun_food).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
biological_group(X, noun_group) :- division(X, noun_group).
biological_group(X, noun_group) :- taxonomic_group(X, noun_group).
borough(X, noun_location) :- borough(X),not abnormal_d_location(X),not -borough(X, noun_location).
borough(X, noun_location) :- manhattan(X, noun_location).
broadcast(X, noun_communication) :- broadcast(X),not abnormal_d_communication(X),not -broadcast(X, noun_communication).
broadcasting(X, noun_communication) :- broadcasting(X),not abnormal_d_communication(X),not -broadcasting(X, noun_communication).
broadcasting(X, noun_communication) :- television(X, noun_communication).
burbank(X, noun_person) :- burbank(X),not abnormal_d_person(X),not -burbank(X, noun_person).
calculation(X, noun_act) :- calculation(X),not abnormal_d_act(X),not -calculation(X, noun_act).
calculation(X, noun_act) :- mathematical_process(X, noun_act).
california(X, noun_location) :- california(X),not abnormal_d_location(X),not -california(X, noun_location).
ceremony(X, noun_act) :- ceremony(X),not abnormal_d_act(X),not -ceremony(X, noun_act).
ceremony(X, noun_act) :- religious_ceremony(X, noun_act).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- change_of_integrity(X, noun_act).
change_of_integrity(X, noun_act) :- change_of_integrity(X),not abnormal_d_act(X),not -change_of_integrity(X, noun_act).
change_of_integrity(X, noun_act) :- separation(X, noun_act).
city(X, noun_location) :- city(X),not abnormal_d_location(X),not -city(X, noun_location).
city(X, noun_location) :- los_angeles(X, noun_location).
city(X, noun_location) :- new_york_city(X, noun_location).
cocktail(X, noun_food) :- cocktail(X),not abnormal_d_food(X),not -cocktail(X, noun_food).
cocktail(X, noun_food) :- manhattan(X, noun_food).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognitive_state(X, noun_cognition) :- cognitive_state(X),not abnormal_d_cognition(X),not -cognitive_state(X, noun_cognition).
cognitive_state(X, noun_cognition) :- curiosity(X, noun_cognition).
commerce(X, noun_act) :- commerce(X),not abnormal_d_act(X),not -commerce(X, noun_act).
commerce(X, noun_act) :- commercial_enterprise(X, noun_act).
commercial_enterprise(X, noun_act) :- commercial_enterprise(X),not abnormal_d_act(X),not -commercial_enterprise(X, noun_act).
commercial_enterprise(X, noun_act) :- industry(X, noun_act).
communication(X, noun_tops) :- auditory_communication(X, noun_communication).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- message(X, noun_communication).
communication(X, noun_tops) :- signal(X, noun_communication).
communication_system(X, noun_artifact) :- communication_system(X),not abnormal_d_artifact(X),not -communication_system(X, noun_artifact).
communication_system(X, noun_artifact) :- network(X, noun_artifact).
communication_system(X, noun_artifact) :- telecommunication_system(X, noun_artifact).
company(X, noun_group) :- company(X),not abnormal_d_group(X),not -company(X, noun_group).
company(X, noun_group) :- subsidiary(X, noun_group).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- division(X, noun_cognition).
concept(X, noun_cognition) :- law(X, noun_cognition).
concept(X, noun_cognition) :- part(X, noun_cognition).
concern(X, noun_cognition) :- concern(X),not abnormal_d_cognition(X),not -concern(X, noun_cognition).
concern(X, noun_cognition) :- part(X, noun_cognition).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
creation(X, noun_act) :- creation(X),not -creation(X, noun_act),-creation(X, noun_artifact).
creation(X, noun_act) :- creation(X),not abnormal_d_act(X),not -creation(X, noun_act).
creation(X, noun_act) :- production(X, noun_act).
creation(X, noun_artifact) :- creation(X),not abnormal_d_artifact(X),not -creation(X, noun_artifact).
creation(X, noun_artifact) :- production(X, noun_artifact).
curiosity(X, noun_cognition) :- curiosity(X),not abnormal_d_cognition(X),not -curiosity(X, noun_cognition).
curiosity(X, noun_cognition) :- interest(X, noun_cognition).
disagreement(X, noun_communication) :- disagreement(X),not abnormal_d_communication(X),not -disagreement(X, noun_communication).
disagreement(X, noun_communication) :- discord(X, noun_communication).
disclosure(X, noun_communication) :- disclosure(X),not abnormal_d_communication(X),not -disclosure(X, noun_communication).
disclosure(X, noun_communication) :- display(X, noun_communication).
discord(X, noun_communication) :- discord(X),not abnormal_d_communication(X),not -discord(X, noun_communication).
discord(X, noun_communication) :- division(X, noun_communication).
display(X, noun_communication) :- display(X),not abnormal_d_communication(X),not -display(X, noun_communication).
display(X, noun_communication) :- presentation(X, noun_communication).
display(X, noun_communication) :- production(X, noun_communication).
district(X, noun_location) :- administrative_district(X, noun_location).
district(X, noun_location) :- district(X),not abnormal_d_location(X),not -district(X, noun_location).
diversion(X, noun_act) :- diversion(X),not abnormal_d_act(X),not -diversion(X, noun_act).
diversion(X, noun_act) :- entertainment(X, noun_act).
division(X, noun_act) :- division(X),not -division(X, noun_act),-division(X, noun_cognition),-division(X, noun_group),not division(X, noun_communication).
division(X, noun_act) :- division(X),not abnormal_d_act(X),not -division(X, noun_act).
division(X, noun_cognition) :- division(X),not abnormal_d_cognition(X),not -division(X, noun_cognition).
division(X, noun_communication) :- division(X),not -division(X, noun_communication),-division(X, noun_cognition),-division(X, noun_group),-division(X, noun_act).
division(X, noun_communication) :- division(X),not abnormal_d_communication(X),not -division(X, noun_communication).
division(X, noun_group) :- division(X),not -division(X, noun_group),-division(X, noun_cognition),not division(X, noun_act),not division(X, noun_communication).
division(X, noun_group) :- division(X),not abnormal_d_group(X),not -division(X, noun_group).
duty(X, noun_act) :- duty(X),not abnormal_d_act(X),not -duty(X, noun_act).
duty(X, noun_act) :- office(X, noun_act).
duty(X, noun_act) :- part(X, noun_act).
ease(X, noun_attribute) :- ease(X),not abnormal_d_attribute(X),not -ease(X, noun_attribute).
ease(X, noun_attribute) :- effortlessness(X, noun_attribute).
effortlessness(X, noun_attribute) :- effortlessness(X),not abnormal_d_attribute(X),not -effortlessness(X, noun_attribute).
effortlessness(X, noun_attribute) :- facility(X, noun_attribute).
electronic_equipment(X, noun_artifact) :- electronic_equipment(X),not abnormal_d_artifact(X),not -electronic_equipment(X, noun_artifact).
electronic_equipment(X, noun_artifact) :- set(X, noun_artifact).
entertainment(X, noun_act) :- entertainment(X),not abnormal_d_act(X),not -entertainment(X, noun_act).
entertainment(X, noun_act) :- show(X, noun_act).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
equipment(X, noun_artifact) :- electronic_equipment(X, noun_artifact).
equipment(X, noun_artifact) :- equipment(X),not abnormal_d_artifact(X),not -equipment(X, noun_artifact).
establishment(X, noun_artifact) :- establishment(X),not abnormal_d_artifact(X),not -establishment(X, noun_artifact).
establishment(X, noun_artifact) :- place_of_business(X, noun_artifact).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- social_event(X, noun_event).
exhibition(X, noun_act) :- exhibition(X),not abnormal_d_act(X),not -exhibition(X, noun_act).
exhibition(X, noun_act) :- production(X, noun_act).
expert(X, noun_person) :- expert(X),not abnormal_d_person(X),not -expert(X, noun_person).
expert(X, noun_person) :- horticulturist(X, noun_person).
fabric(X, noun_artifact) :- fabric(X),not abnormal_d_artifact(X),not -fabric(X, noun_artifact).
fabric(X, noun_artifact) :- network(X, noun_artifact).
facility(X, noun_act) :- facility(X),not -facility(X, noun_act),-facility(X, noun_artifact),-facility(X, noun_cognition),-facility(X, noun_attribute).
facility(X, noun_act) :- facility(X),not abnormal_d_act(X),not -facility(X, noun_act).
facility(X, noun_artifact) :- facility(X),not abnormal_d_artifact(X),not -facility(X, noun_artifact).
facility(X, noun_attribute) :- facility(X),not -facility(X, noun_attribute),-facility(X, noun_artifact),-facility(X, noun_cognition),not facility(X, noun_act).
facility(X, noun_attribute) :- facility(X),not abnormal_d_attribute(X),not -facility(X, noun_attribute).
facility(X, noun_cognition) :- facility(X),not -facility(X, noun_cognition),-facility(X, noun_artifact),not facility(X, noun_attribute),not facility(X, noun_act).
facility(X, noun_cognition) :- facility(X),not abnormal_d_cognition(X),not -facility(X, noun_cognition).
food(X, noun_tops) :- beverage(X, noun_food).
food(X, noun_tops) :- food(X),not abnormal_d_tops(X),not -food(X, noun_tops).
force(X, noun_group) :- force(X),not abnormal_d_group(X),not -force(X, noun_group).
force(X, noun_group) :- staff(X, noun_group).
fundamentals(X, noun_cognition) :- abc(X, noun_cognition).
fundamentals(X, noun_cognition) :- fundamentals(X),not abnormal_d_cognition(X),not -fundamentals(X, noun_cognition).
geographical_area(X, noun_location) :- geographical_area(X),not abnormal_d_location(X),not -geographical_area(X, noun_location).
geographical_area(X, noun_location) :- urban_area(X, noun_location).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- social_group(X, noun_group).
group(X, noun_tops) :- system(X, noun_group).
group_action(X, noun_act) :- group_action(X),not abnormal_d_act(X),not -group_action(X, noun_act).
group_action(X, noun_act) :- transaction(X, noun_act).
horticulturist(X, noun_person) :- burbank(X, noun_person).
horticulturist(X, noun_person) :- horticulturist(X),not abnormal_d_person(X),not -horticulturist(X, noun_person).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
indefinite_quantity(X, noun_quantity) :- indefinite_quantity(X),not abnormal_d_quantity(X),not -indefinite_quantity(X, noun_quantity).
indefinite_quantity(X, noun_quantity) :- production(X, noun_quantity).
industry(X, noun_act) :- industry(X),not abnormal_d_act(X),not -industry(X, noun_act).
industry(X, noun_act) :- production(X, noun_act).
institution(X, noun_group) :- company(X, noun_group).
institution(X, noun_group) :- institution(X),not abnormal_d_group(X),not -institution(X, noun_group).
instrumentality(X, noun_artifact) :- equipment(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
instrumentality(X, noun_artifact) :- medium(X, noun_communication).
instrumentality(X, noun_artifact) :- system(X, noun_artifact).
interest(X, noun_cognition) :- concern(X, noun_cognition).
interest(X, noun_cognition) :- interest(X),not abnormal_d_cognition(X),not -interest(X, noun_cognition).
law(X, noun_cognition) :- law(X),not abnormal_d_cognition(X),not -law(X, noun_cognition).
law(X, noun_cognition) :- principle(X, noun_cognition).
league(X, noun_group) :- division(X, noun_group).
league(X, noun_group) :- league(X),not abnormal_d_group(X),not -league(X, noun_group).
line(X, noun_location) :- line(X),not abnormal_d_location(X),not -line(X, noun_location).
line(X, noun_location) :- part(X, noun_body).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- line(X, noun_location).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- part(X, noun_location).
location(X, noun_tops) :- region(X, noun_location).
logo(X, noun_communication) :- logo(X),not abnormal_d_communication(X),not -logo(X, noun_communication).
los_angeles(X, noun_location) :- los_angeles(X),not abnormal_d_location(X),not -los_angeles(X, noun_location).
manhattan(X, noun_food) :- manhattan(X),not -manhattan(X, noun_food),-manhattan(X, noun_location).
manhattan(X, noun_food) :- manhattan(X),not abnormal_d_food(X),not -manhattan(X, noun_food).
manhattan(X, noun_location) :- manhattan(X),not abnormal_d_location(X),not -manhattan(X, noun_location).
marker(X, noun_communication) :- marker(X),not abnormal_d_communication(X),not -marker(X, noun_communication).
marker(X, noun_communication) :- trademark(X, noun_communication).
mathematical_process(X, noun_act) :- arithmetic_operation(X, noun_act).
mathematical_process(X, noun_act) :- mathematical_process(X),not abnormal_d_act(X),not -mathematical_process(X, noun_act).
measure(X, noun_tops) :- indefinite_quantity(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
medium(X, noun_communication) :- medium(X),not abnormal_d_communication(X),not -medium(X, noun_communication).
medium(X, noun_communication) :- telecommunication(X, noun_communication).
message(X, noun_communication) :- broadcast(X, noun_communication).
message(X, noun_communication) :- message(X),not abnormal_d_communication(X),not -message(X, noun_communication).
military_unit(X, noun_group) :- air_unit(X, noun_group).
military_unit(X, noun_group) :- army_unit(X, noun_group).
military_unit(X, noun_group) :- military_unit(X),not abnormal_d_group(X),not -military_unit(X, noun_group).
military_unit(X, noun_group) :- naval_unit(X, noun_group).
mixed_drink(X, noun_food) :- cocktail(X, noun_food).
mixed_drink(X, noun_food) :- mixed_drink(X),not abnormal_d_food(X),not -mixed_drink(X, noun_food).
municipality(X, noun_location) :- city(X, noun_location).
municipality(X, noun_location) :- municipality(X),not abnormal_d_location(X),not -municipality(X, noun_location).
music(X, noun_communication) :- music(X),not abnormal_d_communication(X),not -music(X, noun_communication).
music(X, noun_communication) :- tune(X, noun_communication).
naval_unit(X, noun_group) :- division(X, noun_group).
naval_unit(X, noun_group) :- naval_unit(X),not abnormal_d_group(X),not -naval_unit(X, noun_group).
network(X, noun_artifact) :- network(X),not -network(X, noun_artifact),-network(X, noun_group).
network(X, noun_artifact) :- network(X),not abnormal_d_artifact(X),not -network(X, noun_artifact).
network(X, noun_group) :- network(X),not abnormal_d_group(X),not -network(X, noun_group).
new_york_city(X, noun_location) :- new_york_city(X),not abnormal_d_location(X),not -new_york_city(X, noun_location).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- part(X, noun_artifact).
object(X, noun_tops) :- whole(X, noun_tops).
occupation(X, noun_act) :- occupation(X),not abnormal_d_act(X),not -occupation(X, noun_act).
occupation(X, noun_act) :- office(X, noun_act).
office(X, noun_act) :- office(X),not -office(X, noun_act),-office(X, noun_artifact),-office(X, noun_state),-office(X, noun_group).
office(X, noun_act) :- office(X),not abnormal_d_act(X),not -office(X, noun_act).
office(X, noun_artifact) :- office(X),not abnormal_d_artifact(X),not -office(X, noun_artifact).
office(X, noun_group) :- office(X),not -office(X, noun_group),-office(X, noun_artifact),-office(X, noun_state),not office(X, noun_act).
office(X, noun_group) :- office(X),not abnormal_d_group(X),not -office(X, noun_group).
office(X, noun_state) :- office(X),not -office(X, noun_state),-office(X, noun_artifact),not office(X, noun_group),not office(X, noun_act).
office(X, noun_state) :- office(X),not abnormal_d_state(X),not -office(X, noun_state).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- association(X, noun_group).
organization(X, noun_group) :- force(X, noun_group).
organization(X, noun_group) :- institution(X, noun_group).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
part(X, noun_act) :- part(X),not -part(X, noun_act),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_act) :- part(X),not abnormal_d_act(X),not -part(X, noun_act).
part(X, noun_artifact) :- part(X),not -part(X, noun_artifact),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),not part(X, noun_act),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_artifact) :- part(X),not abnormal_d_artifact(X),not -part(X, noun_artifact).
part(X, noun_body) :- part(X),not -part(X, noun_body),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),-part(X, noun_object),-part(X, noun_possession),-part(X, noun_communication).
part(X, noun_body) :- part(X),not abnormal_d_body(X),not -part(X, noun_body).
part(X, noun_cognition) :- part(X),not -part(X, noun_cognition),-part(X, noun_relation),-part(X, noun_location),not part(X, noun_artifact),not part(X, noun_act),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_cognition) :- part(X),not abnormal_d_cognition(X),not -part(X, noun_cognition).
part(X, noun_communication) :- part(X),not -part(X, noun_communication),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),-part(X, noun_object),-part(X, noun_possession),not part(X, noun_body).
part(X, noun_communication) :- part(X),not abnormal_d_communication(X),not -part(X, noun_communication).
part(X, noun_location) :- part(X),not -part(X, noun_location),-part(X, noun_relation),not part(X, noun_cognition),not part(X, noun_artifact),not part(X, noun_act),not part(X, noun_object),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_location) :- part(X),not abnormal_d_location(X),not -part(X, noun_location).
part(X, noun_object) :- part(X),not -part(X, noun_object),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),not part(X, noun_possession),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
part(X, noun_possession) :- part(X),not -part(X, noun_possession),-part(X, noun_relation),-part(X, noun_location),-part(X, noun_cognition),-part(X, noun_artifact),-part(X, noun_act),-part(X, noun_object),not part(X, noun_communication),not part(X, noun_body).
part(X, noun_possession) :- part(X),not abnormal_d_possession(X),not -part(X, noun_possession).
part(X, noun_relation) :- part(X),not abnormal_d_relation(X),not -part(X, noun_relation).
person(X, noun_tops) :- expert(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
person(X, noun_tops) :- worker(X, noun_person).
phylum(X, noun_group) :- division(X, noun_group).
phylum(X, noun_group) :- phylum(X),not abnormal_d_group(X),not -phylum(X, noun_group).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
place_of_business(X, noun_artifact) :- office(X, noun_artifact).
place_of_business(X, noun_artifact) :- place_of_business(X),not abnormal_d_artifact(X),not -place_of_business(X, noun_artifact).
portrayal(X, noun_act) :- part(X, noun_cognition).
portrayal(X, noun_act) :- portrayal(X),not abnormal_d_act(X),not -portrayal(X, noun_act).
possession(X, noun_tops) :- assets(X, noun_possession).
possession(X, noun_tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_tops).
presentation(X, noun_act) :- exhibition(X, noun_act).
presentation(X, noun_act) :- presentation(X),not abnormal_d_act(X),not -presentation(X, noun_act).
presentation(X, noun_communication) :- presentation(X),not -presentation(X, noun_communication),-presentation(X, noun_act).
presentation(X, noun_communication) :- presentation(X),not abnormal_d_communication(X),not -presentation(X, noun_communication).
presentation(X, noun_communication) :- production(X, noun_communication).
principle(X, noun_cognition) :- fundamentals(X, noun_cognition).
principle(X, noun_cognition) :- principle(X),not abnormal_d_cognition(X),not -principle(X, noun_cognition).
procedure(X, noun_act) :- calculation(X, noun_act).
procedure(X, noun_act) :- procedure(X),not abnormal_d_act(X),not -procedure(X, noun_act).
production(X, noun_act) :- production(X),not -production(X, noun_act),-production(X, noun_communication),-production(X, noun_artifact),not production(X, noun_quantity).
production(X, noun_act) :- production(X),not abnormal_d_act(X),not -production(X, noun_act).
production(X, noun_artifact) :- production(X),not -production(X, noun_artifact),-production(X, noun_communication),not production(X, noun_act),not production(X, noun_quantity).
production(X, noun_artifact) :- production(X),not abnormal_d_artifact(X),not -production(X, noun_artifact).
production(X, noun_communication) :- production(X),not abnormal_d_communication(X),not -production(X, noun_communication).
production(X, noun_quantity) :- production(X),not -production(X, noun_quantity),-production(X, noun_communication),-production(X, noun_artifact),-production(X, noun_act).
production(X, noun_quantity) :- production(X),not abnormal_d_quantity(X),not -production(X, noun_quantity).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
quality(X, noun_attribute) :- ease(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
receiver(X, noun_artifact) :- receiver(X),not abnormal_d_artifact(X),not -receiver(X, noun_artifact).
receiver(X, noun_artifact) :- television(X, noun_artifact).
region(X, noun_location) :- district(X, noun_location).
region(X, noun_location) :- geographical_area(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
relation(X, noun_tops) :- part(X, noun_relation).
relation(X, noun_tops) :- possession(X, noun_tops).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
religious_ceremony(X, noun_act) :- religious_ceremony(X),not abnormal_d_act(X),not -religious_ceremony(X, noun_act).
religious_ceremony(X, noun_act) :- rite(X, noun_act).
rite(X, noun_act) :- office(X, noun_act).
rite(X, noun_act) :- rite(X),not abnormal_d_act(X),not -rite(X, noun_act).
separation(X, noun_act) :- division(X, noun_act).
separation(X, noun_act) :- separation(X),not abnormal_d_act(X),not -separation(X, noun_act).
service(X, noun_act) :- facility(X, noun_act).
service(X, noun_act) :- service(X),not abnormal_d_act(X),not -service(X, noun_act).
set(X, noun_artifact) :- receiver(X, noun_artifact).
set(X, noun_artifact) :- set(X),not abnormal_d_artifact(X),not -set(X, noun_artifact).
show(X, noun_act) :- presentation(X, noun_act).
show(X, noun_act) :- show(X),not abnormal_d_act(X),not -show(X, noun_act).
show(X, noun_communication) :- broadcast(X, noun_communication).
show(X, noun_communication) :- show(X),not -show(X, noun_communication),-show(X, noun_act).
show(X, noun_communication) :- show(X),not abnormal_d_communication(X),not -show(X, noun_communication).
signal(X, noun_communication) :- signal(X),not abnormal_d_communication(X),not -signal(X, noun_communication).
signal(X, noun_communication) :- symbol(X, noun_communication).
skillfulness(X, noun_cognition) :- facility(X, noun_cognition).
skillfulness(X, noun_cognition) :- skillfulness(X),not abnormal_d_cognition(X),not -skillfulness(X, noun_cognition).
social_event(X, noun_event) :- show(X, noun_communication).
social_event(X, noun_event) :- social_event(X),not abnormal_d_event(X),not -social_event(X, noun_event).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
speech_act(X, noun_communication) :- disagreement(X, noun_communication).
speech_act(X, noun_communication) :- disclosure(X, noun_communication).
speech_act(X, noun_communication) :- speech_act(X),not abnormal_d_communication(X),not -speech_act(X, noun_communication).
staff(X, noun_group) :- office(X, noun_group).
staff(X, noun_group) :- staff(X),not abnormal_d_group(X),not -staff(X, noun_group).
state(X, noun_location) :- american_state(X, noun_location).
state(X, noun_location) :- state(X),not -state(X, noun_location),-state(X, noun_tops).
state(X, noun_location) :- state(X),not abnormal_d_location(X),not -state(X, noun_location).
state(X, noun_tops) :- cognitive_state(X, noun_cognition).
state(X, noun_tops) :- office(X, noun_state).
state(X, noun_tops) :- skillfulness(X, noun_cognition).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
structure(X, noun_artifact) :- establishment(X, noun_artifact).
structure(X, noun_artifact) :- structure(X),not abnormal_d_artifact(X),not -structure(X, noun_artifact).
subsidiary(X, noun_group) :- subsidiary(X),not -subsidiary(X, noun_group),-subsidiary(X, noun_person).
subsidiary(X, noun_group) :- subsidiary(X),not abnormal_d_group(X),not -subsidiary(X, noun_group).
subsidiary(X, noun_person) :- subsidiary(X),not abnormal_d_person(X),not -subsidiary(X, noun_person).
substance(X, noun_tops) :- food(X, noun_tops).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
symbol(X, noun_communication) :- marker(X, noun_communication).
symbol(X, noun_communication) :- symbol(X),not abnormal_d_communication(X),not -symbol(X, noun_communication).
system(X, noun_artifact) :- communication_system(X, noun_artifact).
system(X, noun_artifact) :- network(X, noun_artifact).
system(X, noun_artifact) :- system(X),not -system(X, noun_artifact),-system(X, noun_group).
system(X, noun_artifact) :- system(X),not abnormal_d_artifact(X),not -system(X, noun_artifact).
system(X, noun_group) :- network(X, noun_group).
system(X, noun_group) :- system(X),not abnormal_d_group(X),not -system(X, noun_group).
taxonomic_group(X, noun_group) :- phylum(X, noun_group).
taxonomic_group(X, noun_group) :- taxonomic_group(X),not abnormal_d_group(X),not -taxonomic_group(X, noun_group).
telecommunication(X, noun_communication) :- broadcasting(X, noun_communication).
telecommunication(X, noun_communication) :- telecommunication(X),not abnormal_d_communication(X),not -telecommunication(X, noun_communication).
telecommunication_system(X, noun_artifact) :- telecommunication_system(X),not abnormal_d_artifact(X),not -telecommunication_system(X, noun_artifact).
telecommunication_system(X, noun_artifact) :- television(X, noun_artifact).
television(X, noun_artifact) :- television(X),not -television(X, noun_artifact),-television(X, noun_communication).
television(X, noun_artifact) :- television(X),not abnormal_d_artifact(X),not -television(X, noun_artifact).
television(X, noun_communication) :- television(X),not abnormal_d_communication(X),not -television(X, noun_communication).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
trademark(X, noun_communication) :- logo(X, noun_communication).
trademark(X, noun_communication) :- trademark(X),not abnormal_d_communication(X),not -trademark(X, noun_communication).
transaction(X, noun_act) :- commerce(X, noun_act).
transaction(X, noun_act) :- transaction(X),not abnormal_d_act(X),not -transaction(X, noun_act).
tune(X, noun_communication) :- part(X, noun_communication).
tune(X, noun_communication) :- tune(X),not abnormal_d_communication(X),not -tune(X, noun_communication).
unit(X, noun_group) :- administrative_unit(X, noun_group).
unit(X, noun_group) :- military_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
urban_area(X, noun_location) :- municipality(X, noun_location).
urban_area(X, noun_location) :- urban_area(X),not abnormal_d_location(X),not -urban_area(X, noun_location).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
work(X, noun_act) :- duty(X, noun_act).
work(X, noun_act) :- service(X, noun_act).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
worker(X, noun_person) :- assistant(X, noun_person).
worker(X, noun_person) :- worker(X),not abnormal_d_person(X),not -worker(X, noun_person).