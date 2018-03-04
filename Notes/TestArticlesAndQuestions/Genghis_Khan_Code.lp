%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_mod(accompany, often).
_mod(campaign, mongol).
_mod(invasion, mongol).
_mod(massacre, wholesale).
_mod(population, civilian).
_mod(portion, substantial).
_mod(tribe, nomadic).
_possess(genghis_khan, life).
_property(accompany, by(massacre)).
_property(accompany, in(land)).
_property(come, to(power)).
_property(conquest, of(most)).
_property(end, of(life)).
_property(many, of(tribe)).
_property(massacre, of(population)).
_property(most, of(eurasia)).
_property(occupy, by(end)).
_property(portion, of(central_asia)).
_property(portion, of(china)).
_property(proclaim, as(genghis_khan)).
_property(raid, of(dynasty)).
_property(result, in(conquest)).
_property(tribe, of(northeast_asia)).
_relation(1, 2, _clause).
_relation(3, 5, _conj).
_relation(6, 3, _clause).
_relation(6, 5, _clause).
campaign(campaign).
caucasus(caucasus).
china(china).
conquest(conquest).
dynasty(dynasty).
end(end).
eurasia(eurasia).
event(1, come, genghis_khan, null).
event(10, accompany, null, campaign).
event(11, occupy, mongol_empire, portion).
event(11, occupy, mongol_empire, portion_of_central_asia).
event(11, occupy, mongol_empire, portion_of_china).
event(11, occupy, mongol_empire, substantial_portion).
event(2, unite, null, many).
event(2, unite, null, many_of_tribe).
event(3, found, null, mongol_empire).
event(5, proclaim, null, null).
event(6, start, genghis_khan, invasion).
event(6, start, genghis_khan, mongol_invasion).
event(7, result, invasion, null).
event(7, result, mongol_invasion, null).
event(8, include, invasion, invasion).
event(8, include, invasion, raid).
event(8, include, invasion, raid_of_dynasty).
event(8, include, mongol_invasion, invasion).
event(8, include, mongol_invasion, raid).
event(8, include, mongol_invasion, raid_of_dynasty).
genghis_khan(genghis_khan).
invasion(invasion).
land(land).
life(life).
massacre(massacre).
population(population).
portion(portion).
power(power).
raid(raid).
tribe(tribe).
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
accomplishment(X, noun_act) :- attainment(X, noun_act).
accomplishment(X, noun_act) :- deed(X, noun_act).
acquiring(X, noun_act) :- acquiring(X),not abnormal_d_act(X),not -acquiring(X, noun_act).
acquiring(X, noun_act) :- capture(X, noun_act).
acquisition(X, noun_possession) :- acquisition(X),not abnormal_d_possession(X),not -acquisition(X, noun_possession).
acquisition(X, noun_possession) :- gift(X, noun_possession).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
act(X, noun_tops) :- activity(X, noun_act).
act(X, noun_tops) :- distribution(X, noun_act).
action(X, noun_act) :- accomplishment(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
activeness(X, noun_attribute) :- activeness(X),not abnormal_d_attribute(X),not -activeness(X, noun_attribute).
activeness(X, noun_attribute) :- animation(X, noun_attribute).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- attempt(X, noun_act).
activity(X, noun_act) :- occupation(X, noun_act).
activity(X, noun_act) :- operation(X, noun_act).
activity(X, noun_act) :- role(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
activity(X, noun_act) :- wrongdoing(X, noun_act).
administrative_district(X, noun_location) :- administrative_district(X),not abnormal_d_location(X),not -administrative_district(X, noun_location).
administrative_district(X, noun_location) :- country(X, noun_location).
administrative_district(X, noun_location) :- land(X, noun_location).
allotment(X, noun_act) :- allotment(X),not abnormal_d_act(X),not -allotment(X, noun_act).
allotment(X, noun_act) :- portion(X, noun_act).
animation(X, noun_attribute) :- animation(X),not abnormal_d_attribute(X),not -animation(X, noun_attribute).
animation(X, noun_attribute) :- life(X, noun_attribute).
article(X, noun_tops) :- article(X),not abnormal_d_tops(X),not -article(X, noun_tops).
article(X, noun_tops) :- ware(X, noun_artifact).
artifact(X, noun_tops) :- article(X, noun_tops).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
asian_country(X, noun_location) :- asian_country(X),not abnormal_d_location(X),not -asian_country(X, noun_location).
asian_country(X, noun_location) :- china(X, noun_location).
assets(X, noun_possession) :- assets(X),not abnormal_d_possession(X),not -assets(X, noun_possession).
assets(X, noun_possession) :- portion(X, noun_possession).
athlete(X, noun_person) :- athlete(X),not abnormal_d_person(X),not -athlete(X, noun_person).
athlete(X, noun_person) :- football_player(X, noun_person).
attack(X, noun_act) :- attack(X),not abnormal_d_act(X),not -attack(X, noun_act).
attack(X, noun_act) :- penetration(X, noun_act).
attainment(X, noun_act) :- attainment(X),not abnormal_d_act(X),not -attainment(X, noun_act).
attainment(X, noun_act) :- success(X, noun_act).
attempt(X, noun_act) :- attempt(X),not abnormal_d_act(X),not -attempt(X, noun_act).
attempt(X, noun_act) :- contribution(X, noun_act).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
attribute(X, noun_tops) :- trait(X, noun_attribute).
beginning(X, noun_act) :- beginning(X),not abnormal_d_act(X),not -beginning(X, noun_act).
beginning(X, noun_act) :- constitution(X, noun_act).
being(X, noun_state) :- being(X),not abnormal_d_state(X),not -being(X, noun_state).
being(X, noun_state) :- life(X, noun_state).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
biological_group(X, noun_group) :- taxonomic_group(X, noun_group).
boundary(X, noun_location) :- boundary(X),not abnormal_d_location(X),not -boundary(X, noun_location).
boundary(X, noun_location) :- end(X, noun_location).
boundary(X, noun_location) :- surface(X, noun_location).
businessman(X, noun_person) :- businessman(X),not abnormal_d_person(X),not -businessman(X, noun_person).
businessman(X, noun_person) :- power(X, noun_person).
businessperson(X, noun_person) :- businessman(X, noun_person).
businessperson(X, noun_person) :- businessperson(X),not abnormal_d_person(X),not -businessperson(X, noun_person).
campaign(X, noun_act) :- campaign(X),not -campaign(X, noun_act),-campaign(X, noun_event).
campaign(X, noun_act) :- campaign(X),not abnormal_d_act(X),not -campaign(X, noun_act).
campaign(X, noun_event) :- campaign(X),not abnormal_d_event(X),not -campaign(X, noun_event).
capitalist(X, noun_person) :- businessperson(X, noun_person).
capitalist(X, noun_person) :- capitalist(X),not abnormal_d_person(X),not -capitalist(X, noun_person).
capture(X, noun_act) :- capture(X),not abnormal_d_act(X),not -capture(X, noun_act).
capture(X, noun_act) :- conquest(X, noun_act).
caucasus(X, noun_location) :- caucasus(X),not -caucasus(X, noun_location),-caucasus(X, noun_object).
caucasus(X, noun_location) :- caucasus(X),not abnormal_d_location(X),not -caucasus(X, noun_location).
caucasus(X, noun_object) :- caucasus(X),not abnormal_d_object(X),not -caucasus(X, noun_object).
causal_agent(X, noun_tops) :- causal_agent(X),not abnormal_d_tops(X),not -causal_agent(X, noun_tops).
causal_agent(X, noun_tops) :- power(X, noun_person).
ceramic_ware(X, noun_artifact) :- ceramic_ware(X),not abnormal_d_artifact(X),not -ceramic_ware(X, noun_artifact).
ceramic_ware(X, noun_artifact) :- porcelain(X, noun_artifact).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- change_of_state(X, noun_act).
change(X, noun_act) :- motion(X, noun_act).
change_of_location(X, noun_event) :- change_of_location(X),not abnormal_d_event(X),not -change_of_location(X, noun_event).
change_of_location(X, noun_event) :- entrance(X, noun_event).
change_of_location(X, noun_event) :- spread(X, noun_event).
change_of_state(X, noun_act) :- beginning(X, noun_act).
change_of_state(X, noun_act) :- change_of_state(X),not abnormal_d_act(X),not -change_of_state(X, noun_act).
change_of_state(X, noun_act) :- termination(X, noun_act).
china(X, noun_artifact) :- china(X),not -china(X, noun_artifact),-china(X, noun_location).
china(X, noun_artifact) :- china(X),not abnormal_d_artifact(X),not -china(X, noun_artifact).
china(X, noun_location) :- china(X),not abnormal_d_location(X),not -china(X, noun_location).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- power(X, noun_cognition).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- population(X, noun_cognition).
colonization(X, noun_act) :- colonization(X),not abnormal_d_act(X),not -colonization(X, noun_act).
colonization(X, noun_act) :- population(X, noun_act).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- indication(X, noun_communication).
communication(X, noun_tops) :- written_communication(X, noun_communication).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- part(X, noun_cognition).
condition(X, noun_state) :- condition(X),not abnormal_d_state(X),not -condition(X, noun_state).
condition(X, noun_state) :- portion(X, noun_state).
confederation(X, noun_group) :- confederation(X),not abnormal_d_group(X),not -confederation(X, noun_group).
confederation(X, noun_group) :- nation(X, noun_group).
conquest(X, noun_act) :- conquest(X),not abnormal_d_act(X),not -conquest(X, noun_act).
constitution(X, noun_act) :- colonization(X, noun_act).
constitution(X, noun_act) :- constitution(X),not abnormal_d_act(X),not -constitution(X, noun_act).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- end(X, noun_cognition).
content(X, noun_cognition) :- experience(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
contest(X, noun_event) :- contest(X),not abnormal_d_event(X),not -contest(X, noun_event).
contest(X, noun_event) :- race(X, noun_event).
contestant(X, noun_person) :- athlete(X, noun_person).
contestant(X, noun_person) :- contestant(X),not abnormal_d_person(X),not -contestant(X, noun_person).
continent(X, noun_object) :- continent(X),not abnormal_d_object(X),not -continent(X, noun_object).
continent(X, noun_object) :- eurasia(X, noun_object).
contribution(X, noun_act) :- contribution(X),not abnormal_d_act(X),not -contribution(X, noun_act).
contribution(X, noun_act) :- end(X, noun_act).
country(X, noun_location) :- asian_country(X, noun_location).
country(X, noun_location) :- country(X),not abnormal_d_location(X),not -country(X, noun_location).
creator(X, noun_person) :- creator(X),not abnormal_d_person(X),not -creator(X, noun_person).
creator(X, noun_person) :- inventor(X, noun_person).
crime(X, noun_act) :- crime(X),not abnormal_d_act(X),not -crime(X, noun_act).
crime(X, noun_act) :- felony(X, noun_act).
crockery(X, noun_artifact) :- china(X, noun_artifact).
crockery(X, noun_artifact) :- crockery(X),not abnormal_d_artifact(X),not -crockery(X, noun_artifact).
deed(X, noun_act) :- acquiring(X, noun_act).
deed(X, noun_act) :- deed(X),not abnormal_d_act(X),not -deed(X, noun_act).
definite_quantity(X, noun_quantity) :- definite_quantity(X),not abnormal_d_quantity(X),not -definite_quantity(X, noun_quantity).
definite_quantity(X, noun_quantity) :- number(X, noun_quantity).
distribution(X, noun_act) :- allotment(X, noun_act).
distribution(X, noun_act) :- distribution(X),not abnormal_d_act(X),not -distribution(X, noun_act).
district(X, noun_location) :- administrative_district(X, noun_location).
district(X, noun_location) :- district(X),not abnormal_d_location(X),not -district(X, noun_location).
dynasty(X, noun_group) :- dynasty(X),not abnormal_d_group(X),not -dynasty(X, noun_group).
embezzlement(X, noun_act) :- embezzlement(X),not abnormal_d_act(X),not -embezzlement(X, noun_act).
embezzlement(X, noun_act) :- raid(X, noun_act).
emperor(X, noun_person) :- emperor(X),not abnormal_d_person(X),not -emperor(X, noun_person).
emperor(X, noun_person) :- genghis_khan(X, noun_person).
end(X, noun_act) :- end(X),not -end(X, noun_act),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),-end(X, noun_state),-end(X, noun_person),-end(X, noun_location),-end(X, noun_communication),-end(X, noun_artifact).
end(X, noun_act) :- end(X),not abnormal_d_act(X),not -end(X, noun_act).
end(X, noun_artifact) :- end(X),not -end(X, noun_artifact),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),-end(X, noun_state),-end(X, noun_person),-end(X, noun_location),-end(X, noun_communication),not end(X, noun_act).
end(X, noun_artifact) :- end(X),not abnormal_d_artifact(X),not -end(X, noun_artifact).
end(X, noun_cognition) :- end(X),not -end(X, noun_cognition),-end(X, noun_time),-end(X, noun_event),not end(X, noun_state),not end(X, noun_person),not end(X, noun_location),not end(X, noun_communication),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_cognition) :- end(X),not abnormal_d_cognition(X),not -end(X, noun_cognition).
end(X, noun_communication) :- end(X),not -end(X, noun_communication),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),-end(X, noun_state),-end(X, noun_person),-end(X, noun_location),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_communication) :- end(X),not abnormal_d_communication(X),not -end(X, noun_communication).
end(X, noun_event) :- end(X),not -end(X, noun_event),-end(X, noun_time),not end(X, noun_cognition),not end(X, noun_state),not end(X, noun_person),not end(X, noun_location),not end(X, noun_communication),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_event) :- end(X),not abnormal_d_event(X),not -end(X, noun_event).
end(X, noun_location) :- end(X),not -end(X, noun_location),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),-end(X, noun_state),-end(X, noun_person),not end(X, noun_communication),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_location) :- end(X),not abnormal_d_location(X),not -end(X, noun_location).
end(X, noun_person) :- end(X),not -end(X, noun_person),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),-end(X, noun_state),not end(X, noun_location),not end(X, noun_communication),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_person) :- end(X),not abnormal_d_person(X),not -end(X, noun_person).
end(X, noun_state) :- end(X),not -end(X, noun_state),-end(X, noun_time),-end(X, noun_event),-end(X, noun_cognition),not end(X, noun_person),not end(X, noun_location),not end(X, noun_communication),not end(X, noun_artifact),not end(X, noun_act).
end(X, noun_state) :- end(X),not abnormal_d_state(X),not -end(X, noun_state).
end(X, noun_time) :- end(X),not abnormal_d_time(X),not -end(X, noun_time).
ending(X, noun_event) :- end(X, noun_event).
ending(X, noun_event) :- ending(X),not abnormal_d_event(X),not -ending(X, noun_event).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
entrance(X, noun_event) :- entrance(X),not abnormal_d_event(X),not -entrance(X, noun_event).
entrance(X, noun_event) :- invasion(X, noun_event).
environment(X, noun_state) :- environment(X),not abnormal_d_state(X),not -environment(X, noun_state).
environment(X, noun_state) :- sphere(X, noun_state).
eurasia(X, noun_object) :- eurasia(X),not abnormal_d_object(X),not -eurasia(X, noun_object).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- happening(X, noun_event).
event(X, noun_tops) :- social_event(X, noun_event).
evidence(X, noun_communication) :- evidence(X),not abnormal_d_communication(X),not -evidence(X, noun_communication).
evidence(X, noun_communication) :- record(X, noun_communication).
expedition(X, noun_act) :- campaign(X, noun_act).
expedition(X, noun_act) :- expedition(X),not abnormal_d_act(X),not -expedition(X, noun_act).
experience(X, noun_cognition) :- experience(X),not abnormal_d_cognition(X),not -experience(X, noun_cognition).
experience(X, noun_cognition) :- life(X, noun_cognition).
extremity(X, noun_location) :- boundary(X, noun_location).
extremity(X, noun_location) :- end(X, noun_location).
extremity(X, noun_location) :- extremity(X),not abnormal_d_location(X),not -extremity(X, noun_location).
family(X, noun_group) :- dynasty(X, noun_group).
family(X, noun_group) :- family(X),not abnormal_d_group(X),not -family(X, noun_group).
felony(X, noun_act) :- felony(X),not abnormal_d_act(X),not -felony(X, noun_act).
felony(X, noun_act) :- larceny(X, noun_act).
football_player(X, noun_person) :- football_player(X),not abnormal_d_person(X),not -football_player(X, noun_person).
football_player(X, noun_person) :- lineman(X, noun_person).
fundamental_quantity(X, noun_quantity) :- fundamental_quantity(X),not abnormal_d_quantity(X),not -fundamental_quantity(X, noun_quantity).
fundamental_quantity(X, noun_quantity) :- time_period(X, noun_time).
genealogy(X, noun_group) :- genealogy(X),not abnormal_d_group(X),not -genealogy(X, noun_group).
genealogy(X, noun_group) :- lineage(X, noun_group).
genghis_khan(X, noun_person) :- genghis_khan(X),not abnormal_d_person(X),not -genghis_khan(X, noun_person).
geographical_area(X, noun_location) :- caucasus(X, noun_location).
geographical_area(X, noun_location) :- geographical_area(X),not abnormal_d_location(X),not -geographical_area(X, noun_location).
geological_formation(X, noun_object) :- geological_formation(X),not abnormal_d_object(X),not -geological_formation(X, noun_object).
geological_formation(X, noun_object) :- range(X, noun_object).
gift(X, noun_possession) :- gift(X),not abnormal_d_possession(X),not -gift(X, noun_possession).
gift(X, noun_possession) :- portion(X, noun_possession).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- people(X, noun_group).
group(X, noun_tops) :- population(X, noun_group).
group(X, noun_tops) :- social_group(X, noun_group).
happening(X, noun_event) :- ending(X, noun_event).
happening(X, noun_event) :- happening(X),not abnormal_d_event(X),not -happening(X, noun_event).
happening(X, noun_event) :- movement(X, noun_event).
history(X, noun_communication) :- history(X),not abnormal_d_communication(X),not -history(X, noun_communication).
history(X, noun_communication) :- life(X, noun_communication).
homicide(X, noun_act) :- homicide(X),not abnormal_d_act(X),not -homicide(X, noun_act).
homicide(X, noun_act) :- murder(X, noun_act).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
implement(X, noun_artifact) :- implement(X),not abnormal_d_artifact(X),not -implement(X, noun_artifact).
implement(X, noun_artifact) :- utensil(X, noun_artifact).
indefinite_quantity(X, noun_quantity) :- indefinite_quantity(X),not abnormal_d_quantity(X),not -indefinite_quantity(X, noun_quantity).
indefinite_quantity(X, noun_quantity) :- small_indefinite_quantity(X, noun_quantity).
indication(X, noun_communication) :- evidence(X, noun_communication).
indication(X, noun_communication) :- indication(X),not abnormal_d_communication(X),not -indication(X, noun_communication).
instrumentality(X, noun_artifact) :- implement(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
integer(X, noun_quantity) :- integer(X),not abnormal_d_quantity(X),not -integer(X, noun_quantity).
integer(X, noun_quantity) :- population(X, noun_quantity).
invasion(X, noun_act) :- invasion(X),not abnormal_d_act(X),not -invasion(X, noun_act).
invasion(X, noun_event) :- invasion(X),not -invasion(X, noun_event),-invasion(X, noun_act).
invasion(X, noun_event) :- invasion(X),not abnormal_d_event(X),not -invasion(X, noun_event).
inventor(X, noun_person) :- inventor(X),not abnormal_d_person(X),not -inventor(X, noun_person).
inventor(X, noun_person) :- land(X, noun_person).
island(X, noun_object) :- china(X, noun_location).
island(X, noun_object) :- island(X),not abnormal_d_object(X),not -island(X, noun_object).
journey(X, noun_act) :- expedition(X, noun_act).
journey(X, noun_act) :- journey(X),not abnormal_d_act(X),not -journey(X, noun_act).
killing(X, noun_act) :- homicide(X, noun_act).
killing(X, noun_act) :- killing(X),not abnormal_d_act(X),not -killing(X, noun_act).
kin(X, noun_group) :- genealogy(X, noun_group).
kin(X, noun_group) :- kin(X),not abnormal_d_group(X),not -kin(X, noun_group).
land(X, noun_act) :- land(X),not -land(X, noun_act),-land(X, noun_object),-land(X, noun_location),-land(X, noun_state),-land(X, noun_possession),-land(X, noun_group),-land(X, noun_person).
land(X, noun_act) :- land(X),not abnormal_d_act(X),not -land(X, noun_act).
land(X, noun_group) :- land(X),not -land(X, noun_group),-land(X, noun_object),-land(X, noun_location),-land(X, noun_state),-land(X, noun_possession),not land(X, noun_person),not land(X, noun_act).
land(X, noun_group) :- land(X),not abnormal_d_group(X),not -land(X, noun_group).
land(X, noun_location) :- land(X),not -land(X, noun_location),-land(X, noun_object),not land(X, noun_state),not land(X, noun_possession),not land(X, noun_group),not land(X, noun_person),not land(X, noun_act).
land(X, noun_location) :- land(X),not abnormal_d_location(X),not -land(X, noun_location).
land(X, noun_object) :- island(X, noun_object).
land(X, noun_object) :- land(X),not abnormal_d_object(X),not -land(X, noun_object).
land(X, noun_object) :- landmass(X, noun_object).
land(X, noun_person) :- land(X),not -land(X, noun_person),-land(X, noun_object),-land(X, noun_location),-land(X, noun_state),-land(X, noun_possession),-land(X, noun_group),not land(X, noun_act).
land(X, noun_person) :- land(X),not abnormal_d_person(X),not -land(X, noun_person).
land(X, noun_possession) :- land(X),not -land(X, noun_possession),-land(X, noun_object),-land(X, noun_location),-land(X, noun_state),not land(X, noun_group),not land(X, noun_person),not land(X, noun_act).
land(X, noun_possession) :- land(X),not abnormal_d_possession(X),not -land(X, noun_possession).
land(X, noun_state) :- land(X),not -land(X, noun_state),-land(X, noun_object),-land(X, noun_location),not land(X, noun_possession),not land(X, noun_group),not land(X, noun_person),not land(X, noun_act).
land(X, noun_state) :- land(X),not abnormal_d_state(X),not -land(X, noun_state).
landmass(X, noun_object) :- continent(X, noun_object).
landmass(X, noun_object) :- landmass(X),not abnormal_d_object(X),not -landmass(X, noun_object).
larceny(X, noun_act) :- embezzlement(X, noun_act).
larceny(X, noun_act) :- larceny(X),not abnormal_d_act(X),not -larceny(X, noun_act).
life(X, noun_attribute) :- life(X),not -life(X, noun_attribute),-life(X, noun_state),-life(X, noun_cognition),-life(X, noun_time),not life(X, noun_communication),not life(X, noun_person),not life(X, noun_tops),not life(X, noun_motive),not life(X, noun_phenomenon).
life(X, noun_attribute) :- life(X),not abnormal_d_attribute(X),not -life(X, noun_attribute).
life(X, noun_cognition) :- life(X),not -life(X, noun_cognition),-life(X, noun_state),not life(X, noun_time),not life(X, noun_attribute),not life(X, noun_communication),not life(X, noun_person),not life(X, noun_tops),not life(X, noun_motive),not life(X, noun_phenomenon).
life(X, noun_cognition) :- life(X),not abnormal_d_cognition(X),not -life(X, noun_cognition).
life(X, noun_communication) :- life(X),not -life(X, noun_communication),-life(X, noun_state),-life(X, noun_cognition),-life(X, noun_time),-life(X, noun_attribute),not life(X, noun_person),not life(X, noun_tops),not life(X, noun_motive),not life(X, noun_phenomenon).
life(X, noun_communication) :- life(X),not abnormal_d_communication(X),not -life(X, noun_communication).
life(X, noun_motive) :- life(X),not -life(X, noun_motive),-life(X, noun_state),-life(X, noun_cognition),-life(X, noun_time),-life(X, noun_attribute),-life(X, noun_communication),-life(X, noun_person),-life(X, noun_tops),not life(X, noun_phenomenon).
life(X, noun_motive) :- life(X),not abnormal_d_motive(X),not -life(X, noun_motive).
life(X, noun_person) :- life(X),not -life(X, noun_person),-life(X, noun_state),-life(X, noun_cognition),-life(X, noun_time),-life(X, noun_attribute),-life(X, noun_communication),not life(X, noun_tops),not life(X, noun_motive),not life(X, noun_phenomenon).
life(X, noun_person) :- life(X),not abnormal_d_person(X),not -life(X, noun_person).
life(X, noun_phenomenon) :- life(X),not -life(X, noun_phenomenon),-life(X, noun_state),-life(X, noun_cognition),-life(X, noun_time),-life(X, noun_attribute),-life(X, noun_communication),-life(X, noun_person),-life(X, noun_tops),-life(X, noun_motive).
life(X, noun_phenomenon) :- life(X),not abnormal_d_phenomenon(X),not -life(X, noun_phenomenon).
life(X, noun_state) :- life(X),not abnormal_d_state(X),not -life(X, noun_state).
life(X, noun_time) :- life(X),not -life(X, noun_time),-life(X, noun_state),-life(X, noun_cognition),not life(X, noun_attribute),not life(X, noun_communication),not life(X, noun_person),not life(X, noun_tops),not life(X, noun_motive),not life(X, noun_phenomenon).
life(X, noun_time) :- life(X),not abnormal_d_time(X),not -life(X, noun_time).
life(X, noun_tops) :- life(X),not -life(X, noun_tops),-life(X, noun_state),-life(X, noun_cognition),-life(X, noun_time),-life(X, noun_attribute),-life(X, noun_communication),-life(X, noun_person),not life(X, noun_motive),not life(X, noun_phenomenon).
life(X, noun_tops) :- life(X),not abnormal_d_tops(X),not -life(X, noun_tops).
lineage(X, noun_group) :- family(X, noun_group).
lineage(X, noun_group) :- lineage(X),not abnormal_d_group(X),not -lineage(X, noun_group).
lineman(X, noun_act) :- end(X, noun_act).
lineman(X, noun_act) :- lineman(X),not -lineman(X, noun_act),-lineman(X, noun_person).
lineman(X, noun_act) :- lineman(X),not abnormal_d_act(X),not -lineman(X, noun_act).
lineman(X, noun_person) :- end(X, noun_person).
lineman(X, noun_person) :- lineman(X),not abnormal_d_person(X),not -lineman(X, noun_person).
living_thing(X, noun_tops) :- life(X, noun_tops).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- point(X, noun_location).
location(X, noun_tops) :- region(X, noun_location).
massacre(X, noun_act) :- massacre(X),not abnormal_d_act(X),not -massacre(X, noun_act).
mathematical_notation(X, noun_communication) :- mathematical_notation(X),not abnormal_d_communication(X),not -mathematical_notation(X, noun_communication).
mathematical_notation(X, noun_communication) :- power(X, noun_communication).
measure(X, noun_tops) :- definite_quantity(X, noun_quantity).
measure(X, noun_tops) :- fundamental_quantity(X, noun_quantity).
measure(X, noun_tops) :- indefinite_quantity(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
measure(X, noun_tops) :- point(X, noun_time).
motion(X, noun_act) :- motion(X),not abnormal_d_act(X),not -motion(X, noun_act).
motion(X, noun_act) :- travel(X, noun_act).
motivation(X, noun_tops) :- life(X, noun_motive).
motivation(X, noun_tops) :- motivation(X),not abnormal_d_tops(X),not -motivation(X, noun_tops).
movement(X, noun_event) :- change_of_location(X, noun_event).
movement(X, noun_event) :- movement(X),not abnormal_d_event(X),not -movement(X, noun_event).
murder(X, noun_act) :- massacre(X, noun_act).
murder(X, noun_act) :- murder(X),not abnormal_d_act(X),not -murder(X, noun_act).
nation(X, noun_group) :- nation(X),not abnormal_d_group(X),not -nation(X, noun_group).
nation(X, noun_group) :- tribe(X, noun_group).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- organic_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X, noun_phenomenon).
notation(X, noun_communication) :- mathematical_notation(X, noun_communication).
notation(X, noun_communication) :- notation(X),not abnormal_d_communication(X),not -notation(X, noun_communication).
number(X, noun_quantity) :- integer(X, noun_quantity).
number(X, noun_quantity) :- number(X),not abnormal_d_quantity(X),not -number(X, noun_quantity).
object(X, noun_tops) :- geological_formation(X, noun_object).
object(X, noun_tops) :- land(X, noun_object).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- part(X, noun_artifact).
object(X, noun_tops) :- portion(X, noun_artifact).
object(X, noun_tops) :- whole(X, noun_tops).
occupation(X, noun_act) :- land(X, noun_act).
occupation(X, noun_act) :- occupation(X),not abnormal_d_act(X),not -occupation(X, noun_act).
operation(X, noun_act) :- attack(X, noun_act).
operation(X, noun_act) :- campaign(X, noun_act).
operation(X, noun_act) :- operation(X),not abnormal_d_act(X),not -operation(X, noun_act).
organic_phenomenon(X, noun_phenomenon) :- life(X, noun_phenomenon).
organic_phenomenon(X, noun_phenomenon) :- organic_phenomenon(X),not abnormal_d_phenomenon(X),not -organic_phenomenon(X, noun_phenomenon).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
part(X, noun_artifact) :- part(X),not -part(X, noun_artifact),-part(X, noun_cognition).
part(X, noun_artifact) :- part(X),not abnormal_d_artifact(X),not -part(X, noun_artifact).
part(X, noun_artifact) :- piece(X, noun_artifact).
part(X, noun_cognition) :- end(X, noun_cognition).
part(X, noun_cognition) :- part(X),not abnormal_d_cognition(X),not -part(X, noun_cognition).
penetration(X, noun_act) :- invasion(X, noun_act).
penetration(X, noun_act) :- penetration(X),not abnormal_d_act(X),not -penetration(X, noun_act).
penetration(X, noun_act) :- raid(X, noun_act).
people(X, noun_group) :- land(X, noun_group).
people(X, noun_group) :- people(X),not abnormal_d_group(X),not -people(X, noun_group).
people(X, noun_group) :- population(X, noun_group).
person(X, noun_tops) :- capitalist(X, noun_person).
person(X, noun_tops) :- contestant(X, noun_person).
person(X, noun_tops) :- creator(X, noun_person).
person(X, noun_tops) :- life(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
person(X, noun_tops) :- ruler(X, noun_person).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- causal_agent(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X),not abnormal_d_phenomenon(X),not -physical_phenomenon(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- power(X, noun_phenomenon).
piece(X, noun_artifact) :- piece(X),not abnormal_d_artifact(X),not -piece(X, noun_artifact).
piece(X, noun_artifact) :- piece_of_cloth(X, noun_artifact).
piece_of_cloth(X, noun_artifact) :- end(X, noun_artifact).
piece_of_cloth(X, noun_artifact) :- piece_of_cloth(X),not abnormal_d_artifact(X),not -piece_of_cloth(X, noun_artifact).
point(X, noun_location) :- point(X),not abnormal_d_location(X),not -point(X, noun_location).
point(X, noun_location) :- topographic_point(X, noun_location).
point(X, noun_time) :- end(X, noun_time).
point(X, noun_time) :- point(X),not -point(X, noun_time),-point(X, noun_location).
point(X, noun_time) :- point(X),not abnormal_d_time(X),not -point(X, noun_time).
political_unit(X, noun_group) :- land(X, noun_group).
political_unit(X, noun_group) :- political_unit(X),not abnormal_d_group(X),not -political_unit(X, noun_group).
political_unit(X, noun_group) :- state(X, noun_group).
political_unit(X, noun_group) :- union(X, noun_group).
population(X, noun_act) :- population(X),not -population(X, noun_act),-population(X, noun_group),-population(X, noun_cognition),-population(X, noun_quantity).
population(X, noun_act) :- population(X),not abnormal_d_act(X),not -population(X, noun_act).
population(X, noun_cognition) :- population(X),not -population(X, noun_cognition),-population(X, noun_group),not population(X, noun_quantity),not population(X, noun_act).
population(X, noun_cognition) :- population(X),not abnormal_d_cognition(X),not -population(X, noun_cognition).
population(X, noun_group) :- population(X),not abnormal_d_group(X),not -population(X, noun_group).
population(X, noun_quantity) :- population(X),not -population(X, noun_quantity),-population(X, noun_group),-population(X, noun_cognition),not population(X, noun_act).
population(X, noun_quantity) :- population(X),not abnormal_d_quantity(X),not -population(X, noun_quantity).
porcelain(X, noun_artifact) :- china(X, noun_artifact).
porcelain(X, noun_artifact) :- porcelain(X),not abnormal_d_artifact(X),not -porcelain(X, noun_artifact).
portion(X, noun_act) :- portion(X),not -portion(X, noun_act),-portion(X, noun_relation),-portion(X, noun_artifact),not portion(X, noun_possession),not portion(X, noun_state),not portion(X, noun_food).
portion(X, noun_act) :- portion(X),not abnormal_d_act(X),not -portion(X, noun_act).
portion(X, noun_artifact) :- portion(X),not -portion(X, noun_artifact),-portion(X, noun_relation),not portion(X, noun_act),not portion(X, noun_possession),not portion(X, noun_state),not portion(X, noun_food).
portion(X, noun_artifact) :- portion(X),not abnormal_d_artifact(X),not -portion(X, noun_artifact).
portion(X, noun_food) :- portion(X),not -portion(X, noun_food),-portion(X, noun_relation),-portion(X, noun_artifact),-portion(X, noun_act),-portion(X, noun_possession),-portion(X, noun_state).
portion(X, noun_food) :- portion(X),not abnormal_d_food(X),not -portion(X, noun_food).
portion(X, noun_possession) :- portion(X),not -portion(X, noun_possession),-portion(X, noun_relation),-portion(X, noun_artifact),-portion(X, noun_act),not portion(X, noun_state),not portion(X, noun_food).
portion(X, noun_possession) :- portion(X),not abnormal_d_possession(X),not -portion(X, noun_possession).
portion(X, noun_relation) :- portion(X),not abnormal_d_relation(X),not -portion(X, noun_relation).
portion(X, noun_state) :- portion(X),not -portion(X, noun_state),-portion(X, noun_relation),-portion(X, noun_artifact),-portion(X, noun_act),-portion(X, noun_possession),not portion(X, noun_food).
portion(X, noun_state) :- portion(X),not abnormal_d_state(X),not -portion(X, noun_state).
position(X, noun_act) :- lineman(X, noun_act).
position(X, noun_act) :- position(X),not abnormal_d_act(X),not -position(X, noun_act).
possession(X, noun_tops) :- assets(X, noun_possession).
possession(X, noun_tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_tops).
possession(X, noun_tops) :- property(X, noun_possession).
possession(X, noun_tops) :- transferred_property(X, noun_possession).
power(X, noun_attribute) :- power(X),not abnormal_d_attribute(X),not -power(X, noun_attribute).
power(X, noun_cognition) :- power(X),not -power(X, noun_cognition),-power(X, noun_attribute),-power(X, noun_phenomenon),not power(X, noun_group),not power(X, noun_state),not power(X, noun_communication),not power(X, noun_person).
power(X, noun_cognition) :- power(X),not abnormal_d_cognition(X),not -power(X, noun_cognition).
power(X, noun_communication) :- power(X),not -power(X, noun_communication),-power(X, noun_attribute),-power(X, noun_phenomenon),-power(X, noun_cognition),-power(X, noun_group),-power(X, noun_state),not power(X, noun_person).
power(X, noun_communication) :- power(X),not abnormal_d_communication(X),not -power(X, noun_communication).
power(X, noun_group) :- power(X),not -power(X, noun_group),-power(X, noun_attribute),-power(X, noun_phenomenon),-power(X, noun_cognition),not power(X, noun_state),not power(X, noun_communication),not power(X, noun_person).
power(X, noun_group) :- power(X),not abnormal_d_group(X),not -power(X, noun_group).
power(X, noun_person) :- power(X),not -power(X, noun_person),-power(X, noun_attribute),-power(X, noun_phenomenon),-power(X, noun_cognition),-power(X, noun_group),-power(X, noun_state),-power(X, noun_communication).
power(X, noun_person) :- power(X),not abnormal_d_person(X),not -power(X, noun_person).
power(X, noun_phenomenon) :- power(X),not -power(X, noun_phenomenon),-power(X, noun_attribute),not power(X, noun_cognition),not power(X, noun_group),not power(X, noun_state),not power(X, noun_communication),not power(X, noun_person).
power(X, noun_phenomenon) :- power(X),not abnormal_d_phenomenon(X),not -power(X, noun_phenomenon).
power(X, noun_state) :- power(X),not -power(X, noun_state),-power(X, noun_attribute),-power(X, noun_phenomenon),-power(X, noun_cognition),-power(X, noun_group),not power(X, noun_communication),not power(X, noun_person).
power(X, noun_state) :- power(X),not abnormal_d_state(X),not -power(X, noun_state).
prison_term(X, noun_time) :- life(X, noun_time).
prison_term(X, noun_time) :- prison_term(X),not abnormal_d_time(X),not -prison_term(X, noun_time).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
property(X, noun_attribute) :- property(X),not -property(X, noun_attribute),-property(X, noun_possession).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
property(X, noun_attribute) :- strength(X, noun_attribute).
property(X, noun_possession) :- property(X),not abnormal_d_possession(X),not -property(X, noun_possession).
property(X, noun_possession) :- real_property(X, noun_possession).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- motivation(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
quality(X, noun_attribute) :- power(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
race(X, noun_event) :- campaign(X, noun_event).
race(X, noun_event) :- race(X),not abnormal_d_event(X),not -race(X, noun_event).
raid(X, noun_act) :- raid(X),not abnormal_d_act(X),not -raid(X, noun_act).
range(X, noun_object) :- caucasus(X, noun_object).
range(X, noun_object) :- range(X),not abnormal_d_object(X),not -range(X, noun_object).
real_property(X, noun_possession) :- land(X, noun_possession).
real_property(X, noun_possession) :- real_property(X),not abnormal_d_possession(X),not -real_property(X, noun_possession).
record(X, noun_communication) :- history(X, noun_communication).
record(X, noun_communication) :- record(X),not abnormal_d_communication(X),not -record(X, noun_communication).
region(X, noun_location) :- district(X, noun_location).
region(X, noun_location) :- extremity(X, noun_location).
region(X, noun_location) :- geographical_area(X, noun_location).
region(X, noun_location) :- land(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
relation(X, noun_tops) :- portion(X, noun_relation).
relation(X, noun_tops) :- possession(X, noun_tops).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
role(X, noun_act) :- position(X, noun_act).
role(X, noun_act) :- role(X),not abnormal_d_act(X),not -role(X, noun_act).
ruler(X, noun_person) :- ruler(X),not abnormal_d_person(X),not -ruler(X, noun_person).
ruler(X, noun_person) :- sovereign(X, noun_person).
section(X, noun_communication) :- end(X, noun_communication).
section(X, noun_communication) :- section(X),not abnormal_d_communication(X),not -section(X, noun_communication).
situation(X, noun_state) :- environment(X, noun_state).
situation(X, noun_state) :- situation(X),not abnormal_d_state(X),not -situation(X, noun_state).
small_indefinite_quantity(X, noun_quantity) :- portion(X, noun_food).
small_indefinite_quantity(X, noun_quantity) :- small_indefinite_quantity(X),not abnormal_d_quantity(X),not -small_indefinite_quantity(X, noun_quantity).
social_event(X, noun_event) :- contest(X, noun_event).
social_event(X, noun_event) :- social_event(X),not abnormal_d_event(X),not -social_event(X, noun_event).
social_group(X, noun_group) :- kin(X, noun_group).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
social_group(X, noun_group) :- tribe(X, noun_group).
sovereign(X, noun_person) :- emperor(X, noun_person).
sovereign(X, noun_person) :- sovereign(X),not abnormal_d_person(X),not -sovereign(X, noun_person).
sphere(X, noun_state) :- land(X, noun_state).
sphere(X, noun_state) :- sphere(X),not abnormal_d_state(X),not -sphere(X, noun_state).
spread(X, noun_event) :- invasion(X, noun_event).
spread(X, noun_event) :- spread(X),not abnormal_d_event(X),not -spread(X, noun_event).
state(X, noun_group) :- power(X, noun_group).
state(X, noun_group) :- state(X),not -state(X, noun_group),-state(X, noun_tops).
state(X, noun_group) :- state(X),not abnormal_d_group(X),not -state(X, noun_group).
state(X, noun_tops) :- being(X, noun_state).
state(X, noun_tops) :- condition(X, noun_state).
state(X, noun_tops) :- end(X, noun_state).
state(X, noun_tops) :- power(X, noun_state).
state(X, noun_tops) :- situation(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
strength(X, noun_attribute) :- power(X, noun_attribute).
strength(X, noun_attribute) :- strength(X),not abnormal_d_attribute(X),not -strength(X, noun_attribute).
success(X, noun_act) :- conquest(X, noun_act).
success(X, noun_act) :- success(X),not abnormal_d_act(X),not -success(X, noun_act).
surface(X, noun_location) :- end(X, noun_location).
surface(X, noun_location) :- surface(X),not abnormal_d_location(X),not -surface(X, noun_location).
tableware(X, noun_artifact) :- crockery(X, noun_artifact).
tableware(X, noun_artifact) :- tableware(X),not abnormal_d_artifact(X),not -tableware(X, noun_artifact).
taxonomic_group(X, noun_group) :- taxonomic_group(X),not abnormal_d_group(X),not -taxonomic_group(X, noun_group).
taxonomic_group(X, noun_group) :- tribe(X, noun_group).
term(X, noun_time) :- prison_term(X, noun_time).
term(X, noun_time) :- term(X),not abnormal_d_time(X),not -term(X, noun_time).
termination(X, noun_act) :- killing(X, noun_act).
termination(X, noun_act) :- termination(X),not abnormal_d_act(X),not -termination(X, noun_act).
time_period(X, noun_time) :- life(X, noun_time).
time_period(X, noun_time) :- term(X, noun_time).
time_period(X, noun_time) :- time_period(X),not abnormal_d_time(X),not -time_period(X, noun_time).
topographic_point(X, noun_location) :- end(X, noun_location).
topographic_point(X, noun_location) :- topographic_point(X),not abnormal_d_location(X),not -topographic_point(X, noun_location).
trait(X, noun_attribute) :- activeness(X, noun_attribute).
trait(X, noun_attribute) :- trait(X),not abnormal_d_attribute(X),not -trait(X, noun_attribute).
transferred_property(X, noun_possession) :- acquisition(X, noun_possession).
transferred_property(X, noun_possession) :- transferred_property(X),not abnormal_d_possession(X),not -transferred_property(X, noun_possession).
transgression(X, noun_act) :- crime(X, noun_act).
transgression(X, noun_act) :- transgression(X),not abnormal_d_act(X),not -transgression(X, noun_act).
travel(X, noun_act) :- journey(X, noun_act).
travel(X, noun_act) :- travel(X),not abnormal_d_act(X),not -travel(X, noun_act).
tribe(X, noun_group) :- tribe(X),not abnormal_d_group(X),not -tribe(X, noun_group).
undertaking(X, noun_act) :- undertaking(X),not abnormal_d_act(X),not -undertaking(X, noun_act).
undertaking(X, noun_act) :- venture(X, noun_act).
union(X, noun_group) :- confederation(X, noun_group).
union(X, noun_group) :- union(X),not abnormal_d_group(X),not -union(X, noun_group).
unit(X, noun_group) :- political_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
utensil(X, noun_artifact) :- ceramic_ware(X, noun_artifact).
utensil(X, noun_artifact) :- utensil(X),not abnormal_d_artifact(X),not -utensil(X, noun_artifact).
venture(X, noun_act) :- campaign(X, noun_act).
venture(X, noun_act) :- venture(X),not abnormal_d_act(X),not -venture(X, noun_act).
ware(X, noun_artifact) :- tableware(X, noun_artifact).
ware(X, noun_artifact) :- ware(X),not abnormal_d_artifact(X),not -ware(X, noun_artifact).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
work(X, noun_act) :- undertaking(X, noun_act).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
writing(X, noun_communication) :- notation(X, noun_communication).
writing(X, noun_communication) :- section(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).
wrongdoing(X, noun_act) :- transgression(X, noun_act).
wrongdoing(X, noun_act) :- wrongdoing(X),not abnormal_d_act(X),not -wrongdoing(X, noun_act).
