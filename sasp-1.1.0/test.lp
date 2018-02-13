%%-------------------------------------------------------%%
%%Story%%
%%-------------------------------------------------------%%
_adj(app_service, free_to_play).
_adj(business, smartphone).
_adj(game, smartphone).
_adj(information, personal).
_adj(movie, favorite).
_adj(number, large).
_adj(player, enough).
_adj(revenue_generator, major).
_adj(rival, larger).
_adj(service, social_networking).
_adj(smartphone_apps, other).
_adj(stage, early).
_adj(success, more).
_adj(user, active).
_adj(user, smartphone).
_relation(1, 2, _clcomplement).
_relation(15, 16, _clcomplement).
_relation(20, 21, _clcomplement).
_relation(22, 23, _clcomplement).
_relation(27, 28, _clcomplement).
_relation(37, 38, _clcomplement).
_relation(39, 40, _clcomplement).
_relation(4, 5, _clcomplement).
_relation(6, 8, _clcomplement).
_relation(8, 9, _clcomplement).
company(miitomo).
company(nintendo).
event(1, say, nintendo, thursday).
event(12, decline, number, null).
event(13, introduce, nintendo, march).
event(13, introduce, nintendo, miitomo).
event(14, feature, miitomo, avatar_system).
event(15, let, miitomo, null).
event(16, communicate, user, null).
event(17, exchange, null, information).
event(18, describe, company, miitomo).
event(19, view, null, miitomo).
event(19, view, null, service).
event(2, terminate, nintendo, miitomo).
event(21, gain, null, rival).
event(21, gain, null, user).
event(22, say, nintendo, null).
event(23, end, app_service, may).
event(27, say, hideki_yasuda, null).
event(28, shut, nintendo, service).
event(29, say, analyst, hideki_yasuda).
event(3, gain, miitomo, attention).
event(3, gain, miitomo, business).
event(3, gain, miitomo, game_makers_initial_foray).
event(30, say, hideki_yasuda, null).
event(31, use, number, app).
event(34, introduce, nintendo, animal_crossing_pocket_camp).
event(34, introduce, nintendo, fire_emblem_heroes).
event(34, introduce, nintendo, game_apps).
event(34, introduce, nintendo, miitomo).
event(36, have, animal_crossing_pocket_camp, miitomo).
event(36, have, animal_crossing_pocket_camp, success).
event(36, have, fire_emblem_heroes, miitomo).
event(36, have, fire_emblem_heroes, success).
event(37, have, business, null).
event(38, become, business, null).
event(39, say, executive, null).
event(4, fail, miitomo, null).
event(40, view, executive, game).
event(40, view, executive, way).
event(41, attract, null, customer).
event(42, try, customer, machine).
event(5, attract, miitomo, player).
event(6, say, nintendo_spokesman, null).
event(8, make, decision, null).
event(9, streamline, decision, resource).
event(9, streamline, decision, smartphone_apps).
time(march).
time(may).
time(thursday).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
ability(X, noun_cognition) :- ability(X),not abnormal_d_cognition(X),not -ability(X, noun_cognition).
ability(X, noun_cognition) :- creativity(X, noun_cognition).
ability(X, noun_cognition) :- faculty(X, noun_cognition).
abstract_entity(X, noun_Tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_Tops).
abstract_entity(X, noun_Tops) :- abstraction(X, noun_Tops).
abstraction(X, noun_Tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_Tops).
abstraction(X, noun_Tops) :- attribute(X, noun_Tops).
abstraction(X, noun_Tops) :- communication(X, noun_Tops).
abstraction(X, noun_Tops) :- group(X, noun_Tops).
abstraction(X, noun_Tops) :- measure(X, noun_Tops).
abstraction(X, noun_Tops) :- psychological_feature(X, noun_Tops).
abstraction(X, noun_Tops) :- relation(X, noun_Tops).
accommodation(X, noun_act) :- accommodation(X),not abnormal_d_act(X),not -accommodation(X, noun_act).
accommodation(X, noun_act) :- service(X, noun_act).
accomplishment(X, noun_act) :- accomplishment(X),not abnormal_d_act(X),not -accomplishment(X, noun_act).
accomplishment(X, noun_act) :- attainment(X, noun_act).
accomplishment(X, noun_act) :- deed(X, noun_act).
accusation(X, noun_communication) :- accusation(X),not abnormal_d_communication(X),not -accusation(X, noun_communication).
accusation(X, noun_communication) :- information(X, noun_communication).
act(X, noun_Tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_Tops).
act(X, noun_Tops) :- action(X, noun_act).
act(X, noun_Tops) :- activity(X, noun_act).
act(X, noun_Tops) :- communication(X, noun_communication).
act(X, noun_Tops) :- group_action(X, noun_act).
act(X, noun_Tops) :- nonaccomplishment(X, noun_act).
acting(X, noun_act) :- acting(X),not abnormal_d_act(X),not -acting(X, noun_act).
acting(X, noun_act) :- business(X, noun_act).
action(X, noun_act) :- accomplishment(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
action(X, noun_act) :- choice(X, noun_act).
action(X, noun_act) :- course(X, noun_act).
activity(X, noun_act) :- acting(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- aid(X, noun_act).
activity(X, noun_act) :- business(X, noun_act).
activity(X, noun_act) :- ceremony(X, noun_act).
activity(X, noun_act) :- diversion(X, noun_act).
activity(X, noun_act) :- game(X, noun_act).
activity(X, noun_act) :- occupation(X, noun_act).
activity(X, noun_act) :- service(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
administration(X, noun_group) :- administration(X),not abnormal_d_group(X),not -administration(X, noun_group).
administration(X, noun_group) :- executive(X, noun_group).
administrator(X, noun_person) :- administrator(X),not abnormal_d_person(X),not -administrator(X, noun_person).
administrator(X, noun_person) :- executive(X, noun_person).
adult(X, noun_person) :- adult(X),not abnormal_d_person(X),not -adult(X, noun_person).
adult(X, noun_person) :- professional(X, noun_person).
aid(X, noun_act) :- accommodation(X, noun_act).
aid(X, noun_act) :- aid(X),not abnormal_d_act(X),not -aid(X, noun_act).
aid(X, noun_act) :- service(X, noun_act).
aim(X, noun_cognition) :- aim(X),not abnormal_d_cognition(X),not -aim(X, noun_cognition).
aim(X, noun_cognition) :- business(X, noun_cognition).
amount(X, noun_attribute) :- amount(X),not abnormal_d_attribute(X),not -amount(X, noun_attribute).
amount(X, noun_attribute) :- number(X, noun_attribute).
analyst(X, noun_person) :- analyst(X),not abnormal_d_person(X),not -analyst(X, noun_person).
animal(X, noun_Tops) :- animal(X),not abnormal_d_tops(X),not -animal(X, noun_Tops).
animal(X, noun_Tops) :- game(X, noun_animal).
area(X, noun_location) :- area(X),not abnormal_d_location(X),not -area(X, noun_location).
area(X, noun_location) :- scene(X, noun_location).
army_unit(X, noun_group) :- army_unit(X),not abnormal_d_group(X),not -army_unit(X, noun_group).
army_unit(X, noun_group) :- company(X, noun_group).
article(X, noun_Tops) :- article(X),not abnormal_d_tops(X),not -article(X, noun_Tops).
article(X, noun_Tops) :- ware(X, noun_artifact).
artifact(X, noun_Tops) :- article(X, noun_Tops).
artifact(X, noun_Tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_Tops).
artifact(X, noun_Tops) :- commodity(X, noun_artifact).
artifact(X, noun_Tops) :- creation(X, noun_artifact).
artifact(X, noun_Tops) :- instrumentality(X, noun_artifact).
artifact(X, noun_Tops) :- surface(X, noun_artifact).
artifact(X, noun_Tops) :- way(X, noun_artifact).
asset(X, noun_attribute) :- asset(X),not abnormal_d_attribute(X),not -asset(X, noun_attribute).
asset(X, noun_attribute) :- resource(X, noun_attribute).
assets(X, noun_possession) :- assets(X),not abnormal_d_possession(X),not -assets(X, noun_possession).
assets(X, noun_possession) :- resource(X, noun_possession).
assets(X, noun_possession) :- share(X, noun_possession).
associate(X, noun_person) :- associate(X),not abnormal_d_person(X),not -associate(X, noun_person).
associate(X, noun_person) :- participant(X, noun_person).
attainment(X, noun_act) :- attainment(X),not abnormal_d_act(X),not -attainment(X, noun_act).
attainment(X, noun_act) :- success(X, noun_act).
attention(X, noun_act) :- attention(X),not abnormal_d_act(X),not -attention(X, noun_act).
attention(X, noun_attribute) :- attention(X),not -attention(X, noun_attribute),-attention(X, noun_act),-attention(X, noun_cognition).
attention(X, noun_attribute) :- attention(X),not abnormal_d_attribute(X),not -attention(X, noun_attribute).
attention(X, noun_cognition) :- attention(X),not -attention(X, noun_cognition),-attention(X, noun_act),not attention(X, noun_attribute).
attention(X, noun_cognition) :- attention(X),not abnormal_d_cognition(X),not -attention(X, noun_cognition).
attraction(X, noun_cognition) :- attention(X, noun_cognition).
attraction(X, noun_cognition) :- attraction(X),not abnormal_d_cognition(X),not -attraction(X, noun_cognition).
attribute(X, noun_Tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_Tops).
attribute(X, noun_Tops) :- property(X, noun_attribute).
attribute(X, noun_Tops) :- quality(X, noun_attribute).
attribute(X, noun_Tops) :- state(X, noun_Tops).
attribute(X, noun_Tops) :- trait(X, noun_attribute).
basic_cognitive_process(X, noun_cognition) :- attention(X, noun_cognition).
basic_cognitive_process(X, noun_cognition) :- basic_cognitive_process(X),not abnormal_d_cognition(X),not -basic_cognitive_process(X, noun_cognition).
belief(X, noun_cognition) :- belief(X),not abnormal_d_cognition(X),not -belief(X, noun_cognition).
belief(X, noun_cognition) :- opinion(X, noun_cognition).
bodily_process(X, noun_process) :- bodily_process(X),not abnormal_d_process(X),not -bodily_process(X, noun_process).
bodily_process(X, noun_process) :- sexual_activity(X, noun_act).
body(X, noun_group) :- administration(X, noun_group).
body(X, noun_group) :- body(X),not abnormal_d_group(X),not -body(X, noun_group).
body(X, noun_group) :- sector(X, noun_group).
business(X, noun_act) :- business(X),not -business(X, noun_act),-business(X, noun_group),-business(X, noun_cognition).
business(X, noun_act) :- business(X),not abnormal_d_act(X),not -business(X, noun_act).
business(X, noun_cognition) :- business(X),not -business(X, noun_cognition),-business(X, noun_group),not business(X, noun_act).
business(X, noun_cognition) :- business(X),not abnormal_d_cognition(X),not -business(X, noun_cognition).
business(X, noun_group) :- business(X),not abnormal_d_group(X),not -business(X, noun_group).
business_activity(X, noun_act) :- business(X, noun_act).
business_activity(X, noun_act) :- business_activity(X),not abnormal_d_act(X),not -business_activity(X, noun_act).
care(X, noun_act) :- care(X),not abnormal_d_act(X),not -care(X, noun_act).
care(X, noun_act) :- service(X, noun_act).
carriage(X, noun_artifact) :- carriage(X),not abnormal_d_artifact(X),not -carriage(X, noun_artifact).
carriage(X, noun_artifact) :- coach(X, noun_artifact).
category(X, noun_cognition) :- category(X),not abnormal_d_cognition(X),not -category(X, noun_cognition).
category(X, noun_cognition) :- kind(X, noun_cognition).
category(X, noun_cognition) :- way(X, noun_cognition).
ceremony(X, noun_act) :- ceremony(X),not abnormal_d_act(X),not -ceremony(X, noun_act).
ceremony(X, noun_act) :- religious_ceremony(X, noun_act).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- change_of_state(X, noun_act).
change(X, noun_act) :- motion(X, noun_act).
change(X, noun_act) :- movement(X, noun_act).
change_of_state(X, noun_act) :- change_of_state(X),not abnormal_d_act(X),not -change_of_state(X, noun_act).
change_of_state(X, noun_act) :- improvement(X, noun_act).
charge(X, noun_communication) :- accusation(X, noun_communication).
charge(X, noun_communication) :- charge(X),not abnormal_d_communication(X),not -charge(X, noun_communication).
choice(X, noun_act) :- choice(X),not abnormal_d_act(X),not -choice(X, noun_act).
choice(X, noun_act) :- decision(X, noun_act).
choice(X, noun_cognition) :- choice(X),not -choice(X, noun_cognition),-choice(X, noun_act).
choice(X, noun_cognition) :- choice(X),not abnormal_d_cognition(X),not -choice(X, noun_cognition).
choice(X, noun_cognition) :- way(X, noun_cognition).
class(X, noun_group) :- class(X),not abnormal_d_group(X),not -class(X, noun_group).
class(X, noun_group) :- grammatical_category(X, noun_communication).
coach(X, noun_artifact) :- coach(X),not abnormal_d_artifact(X),not -coach(X, noun_artifact).
coach(X, noun_artifact) :- stage(X, noun_artifact).
cognition(X, noun_Tops) :- ability(X, noun_cognition).
cognition(X, noun_Tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_Tops).
cognition(X, noun_Tops) :- content(X, noun_cognition).
cognition(X, noun_Tops) :- information(X, noun_cognition).
cognition(X, noun_Tops) :- process(X, noun_cognition).
collection(X, noun_group) :- class(X, noun_group).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- information(X, noun_group).
commerce(X, noun_act) :- business(X, noun_act).
commerce(X, noun_act) :- commerce(X),not abnormal_d_act(X),not -commerce(X, noun_act).
commodity(X, noun_artifact) :- commodity(X),not abnormal_d_artifact(X),not -commodity(X, noun_artifact).
commodity(X, noun_artifact) :- merchandise(X, noun_artifact).
communication(X, noun_Tops) :- communication(X),not -communication(X, noun_Tops),-communication(X, noun_communication).
communication(X, noun_Tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_Tops).
communication(X, noun_Tops) :- indication(X, noun_communication).
communication(X, noun_Tops) :- message(X, noun_communication).
communication(X, noun_Tops) :- signal(X, noun_communication).
communication(X, noun_communication) :- communication(X),not abnormal_d_communication(X),not -communication(X, noun_communication).
communication(X, noun_communication) :- dramaturgy(X, noun_communication).
company(X, noun_group) :- company(X),not -company(X, noun_group),-company(X, noun_state),not company(X, noun_person).
company(X, noun_group) :- company(X),not abnormal_d_group(X),not -company(X, noun_group).
company(X, noun_group) :- number(X, noun_group).
company(X, noun_group) :- service(X, noun_group).
company(X, noun_person) :- company(X),not -company(X, noun_person),-company(X, noun_state),-company(X, noun_group).
company(X, noun_person) :- company(X),not abnormal_d_person(X),not -company(X, noun_person).
company(X, noun_state) :- company(X),not abnormal_d_state(X),not -company(X, noun_state).
complement(X, noun_group) :- company(X, noun_group).
complement(X, noun_group) :- complement(X),not abnormal_d_group(X),not -complement(X, noun_group).
concept(X, noun_cognition) :- category(X, noun_cognition).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- property(X, noun_cognition).
concern(X, noun_cognition) :- business(X, noun_cognition).
concern(X, noun_cognition) :- concern(X),not abnormal_d_cognition(X),not -concern(X, noun_cognition).
condition(X, noun_state) :- condition(X),not abnormal_d_state(X),not -condition(X, noun_state).
condition(X, noun_state) :- disorder(X, noun_state).
condition(X, noun_state) :- financial_condition(X, noun_state).
condition(X, noun_state) :- fortune(X, noun_state).
condition(X, noun_state) :- way(X, noun_state).
conformity(X, noun_act) :- conformity(X),not abnormal_d_act(X),not -conformity(X, noun_act).
conformity(X, noun_act) :- formality(X, noun_act).
consumer(X, noun_person) :- consumer(X),not abnormal_d_person(X),not -consumer(X, noun_person).
consumer(X, noun_person) :- customer(X, noun_person).
content(X, noun_cognition) :- belief(X, noun_cognition).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- goal(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
contest(X, noun_event) :- contest(X),not abnormal_d_event(X),not -contest(X, noun_event).
contest(X, noun_event) :- game(X, noun_act).
contestant(X, noun_person) :- contestant(X),not abnormal_d_person(X),not -contestant(X, noun_person).
contestant(X, noun_person) :- player(X, noun_person).
contestant(X, noun_person) :- rival(X, noun_person).
conveyance(X, noun_artifact) :- conveyance(X),not abnormal_d_artifact(X),not -conveyance(X, noun_artifact).
conveyance(X, noun_artifact) :- vehicle(X, noun_artifact).
cooperation(X, noun_act) :- conformity(X, noun_act).
cooperation(X, noun_act) :- cooperation(X),not abnormal_d_act(X),not -cooperation(X, noun_act).
coupling(X, noun_act) :- coupling(X),not abnormal_d_act(X),not -coupling(X, noun_act).
coupling(X, noun_act) :- service(X, noun_act).
course(X, noun_act) :- course(X),not abnormal_d_act(X),not -course(X, noun_act).
course(X, noun_act) :- way(X, noun_act).
courtesy(X, noun_act) :- attention(X, noun_act).
courtesy(X, noun_act) :- courtesy(X),not abnormal_d_act(X),not -courtesy(X, noun_act).
creation(X, noun_artifact) :- creation(X),not abnormal_d_artifact(X),not -creation(X, noun_artifact).
creation(X, noun_artifact) :- product(X, noun_artifact).
creativity(X, noun_cognition) :- creativity(X),not abnormal_d_cognition(X),not -creativity(X, noun_cognition).
creativity(X, noun_cognition) :- inventiveness(X, noun_cognition).
customer(X, noun_person) :- customer(X),not abnormal_d_person(X),not -customer(X, noun_person).
decision(X, noun_act) :- decision(X),not -decision(X, noun_act),-decision(X, noun_cognition),not decision(X, noun_event),not decision(X, noun_attribute).
decision(X, noun_act) :- decision(X),not abnormal_d_act(X),not -decision(X, noun_act).
decision(X, noun_attribute) :- decision(X),not -decision(X, noun_attribute),-decision(X, noun_cognition),-decision(X, noun_act),-decision(X, noun_event).
decision(X, noun_attribute) :- decision(X),not abnormal_d_attribute(X),not -decision(X, noun_attribute).
decision(X, noun_cognition) :- decision(X),not abnormal_d_cognition(X),not -decision(X, noun_cognition).
decision(X, noun_event) :- decision(X),not -decision(X, noun_event),-decision(X, noun_cognition),-decision(X, noun_act),not decision(X, noun_attribute).
decision(X, noun_event) :- decision(X),not abnormal_d_event(X),not -decision(X, noun_event).
decision_making(X, noun_cognition) :- choice(X, noun_cognition).
decision_making(X, noun_cognition) :- decision_making(X),not abnormal_d_cognition(X),not -decision_making(X, noun_cognition).
deed(X, noun_act) :- deed(X),not abnormal_d_act(X),not -deed(X, noun_act).
deed(X, noun_act) :- implementation(X, noun_act).
definite_quantity(X, noun_quantity) :- definite_quantity(X),not abnormal_d_quantity(X),not -definite_quantity(X, noun_quantity).
definite_quantity(X, noun_quantity) :- number(X, noun_quantity).
delivery(X, noun_act) :- delivery(X),not abnormal_d_act(X),not -delivery(X, noun_act).
delivery(X, noun_act) :- service(X, noun_act).
device(X, noun_artifact) :- device(X),not abnormal_d_artifact(X),not -device(X, noun_artifact).
device(X, noun_artifact) :- machine(X, noun_artifact).
device(X, noun_artifact) :- mechanism(X, noun_artifact).
disorder(X, noun_state) :- disorder(X),not abnormal_d_state(X),not -disorder(X, noun_state).
disorder(X, noun_state) :- failure(X, noun_state).
distance(X, noun_attribute) :- distance(X),not abnormal_d_attribute(X),not -distance(X, noun_attribute).
distance(X, noun_attribute) :- way(X, noun_attribute).
diversion(X, noun_act) :- diversion(X),not abnormal_d_act(X),not -diversion(X, noun_act).
diversion(X, noun_act) :- game(X, noun_act).
diversion(X, noun_act) :- play(X, noun_act).
doctor(X, noun_person) :- doctor(X),not abnormal_d_person(X),not -doctor(X, noun_person).
doctor(X, noun_person) :- specialist(X, noun_person).
dramaturgy(X, noun_communication) :- dramaturgy(X),not abnormal_d_communication(X),not -dramaturgy(X, noun_communication).
dramaturgy(X, noun_communication) :- stage(X, noun_communication).
employment(X, noun_act) :- employment(X),not abnormal_d_act(X),not -employment(X, noun_act).
employment(X, noun_act) :- service(X, noun_act).
ending(X, noun_event) :- ending(X),not abnormal_d_event(X),not -ending(X, noun_event).
ending(X, noun_event) :- result(X, noun_event).
enterprise(X, noun_act) :- business_activity(X, noun_act).
enterprise(X, noun_act) :- enterprise(X),not abnormal_d_act(X),not -enterprise(X, noun_act).
enterprise(X, noun_group) :- business(X, noun_group).
enterprise(X, noun_group) :- enterprise(X),not -enterprise(X, noun_group),-enterprise(X, noun_act).
enterprise(X, noun_group) :- enterprise(X),not abnormal_d_group(X),not -enterprise(X, noun_group).
entertainer(X, noun_person) :- entertainer(X),not abnormal_d_person(X),not -entertainer(X, noun_person).
entertainer(X, noun_person) :- performer(X, noun_person).
entity(X, noun_Tops) :- abstract_entity(X, noun_Tops).
entity(X, noun_Tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_Tops).
entity(X, noun_Tops) :- physical_entity(X, noun_Tops).
equipment(X, noun_artifact) :- equipment(X),not abnormal_d_artifact(X),not -equipment(X, noun_artifact).
equipment(X, noun_artifact) :- game_equipment(X, noun_artifact).
event(X, noun_Tops) :- act(X, noun_Tops).
event(X, noun_Tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_Tops).
event(X, noun_Tops) :- happening(X, noun_event).
event(X, noun_Tops) :- social_event(X, noun_event).
evidence(X, noun_communication) :- evidence(X),not abnormal_d_communication(X),not -evidence(X, noun_communication).
evidence(X, noun_communication) :- identification(X, noun_communication).
executive(X, noun_group) :- executive(X),not abnormal_d_group(X),not -executive(X, noun_group).
executive(X, noun_person) :- executive(X),not -executive(X, noun_person),-executive(X, noun_group).
executive(X, noun_person) :- executive(X),not abnormal_d_person(X),not -executive(X, noun_person).
expert(X, noun_person) :- analyst(X, noun_person).
expert(X, noun_person) :- expert(X),not abnormal_d_person(X),not -expert(X, noun_person).
faculty(X, noun_cognition) :- attention(X, noun_cognition).
faculty(X, noun_cognition) :- faculty(X),not abnormal_d_cognition(X),not -faculty(X, noun_cognition).
failure(X, noun_act) :- failure(X),not -failure(X, noun_act),-failure(X, noun_event),-failure(X, noun_state),-failure(X, noun_person).
failure(X, noun_act) :- failure(X),not abnormal_d_act(X),not -failure(X, noun_act).
failure(X, noun_event) :- failure(X),not abnormal_d_event(X),not -failure(X, noun_event).
failure(X, noun_person) :- failure(X),not -failure(X, noun_person),-failure(X, noun_event),-failure(X, noun_state),not failure(X, noun_act).
failure(X, noun_person) :- failure(X),not abnormal_d_person(X),not -failure(X, noun_person).
failure(X, noun_state) :- failure(X),not -failure(X, noun_state),-failure(X, noun_event),not failure(X, noun_person),not failure(X, noun_act).
failure(X, noun_state) :- failure(X),not abnormal_d_state(X),not -failure(X, noun_state).
feature(X, noun_cognition) :- attraction(X, noun_cognition).
feature(X, noun_cognition) :- feature(X),not abnormal_d_cognition(X),not -feature(X, noun_cognition).
financial_condition(X, noun_state) :- financial_condition(X),not abnormal_d_state(X),not -financial_condition(X, noun_state).
financial_condition(X, noun_state) :- insolvency(X, noun_state).
food(X, noun_food) :- food(X),not abnormal_d_food(X),not -food(X, noun_food).
food(X, noun_food) :- meat(X, noun_food).
force(X, noun_group) :- force(X),not abnormal_d_group(X),not -force(X, noun_group).
force(X, noun_group) :- service(X, noun_group).
force(X, noun_group) :- work_force(X, noun_group).
formality(X, noun_act) :- formality(X),not abnormal_d_act(X),not -formality(X, noun_act).
formality(X, noun_act) :- politeness(X, noun_act).
fortune(X, noun_state) :- failure(X, noun_state).
fortune(X, noun_state) :- fortune(X),not abnormal_d_state(X),not -fortune(X, noun_state).
fortune(X, noun_state) :- good_fortune(X, noun_state).
friendship(X, noun_state) :- company(X, noun_state).
friendship(X, noun_state) :- friendship(X),not abnormal_d_state(X),not -friendship(X, noun_state).
fundamental_quantity(X, noun_quantity) :- fundamental_quantity(X),not abnormal_d_quantity(X),not -fundamental_quantity(X, noun_quantity).
fundamental_quantity(X, noun_quantity) :- time_period(X, noun_time).
game(X, noun_act) :- game(X),not -game(X, noun_act),-game(X, noun_animal),-game(X, noun_artifact),not game(X, noun_quantity),not game(X, noun_food),not game(X, noun_cognition).
game(X, noun_act) :- game(X),not abnormal_d_act(X),not -game(X, noun_act).
game(X, noun_animal) :- game(X),not abnormal_d_animal(X),not -game(X, noun_animal).
game(X, noun_artifact) :- game(X),not -game(X, noun_artifact),-game(X, noun_animal),not game(X, noun_act),not game(X, noun_quantity),not game(X, noun_food),not game(X, noun_cognition).
game(X, noun_artifact) :- game(X),not abnormal_d_artifact(X),not -game(X, noun_artifact).
game(X, noun_cognition) :- game(X),not -game(X, noun_cognition),-game(X, noun_animal),-game(X, noun_artifact),-game(X, noun_act),-game(X, noun_quantity),-game(X, noun_food).
game(X, noun_cognition) :- game(X),not abnormal_d_cognition(X),not -game(X, noun_cognition).
game(X, noun_food) :- game(X),not -game(X, noun_food),-game(X, noun_animal),-game(X, noun_artifact),-game(X, noun_act),-game(X, noun_quantity),not game(X, noun_cognition).
game(X, noun_food) :- game(X),not abnormal_d_food(X),not -game(X, noun_food).
game(X, noun_quantity) :- game(X),not -game(X, noun_quantity),-game(X, noun_animal),-game(X, noun_artifact),-game(X, noun_act),not game(X, noun_food),not game(X, noun_cognition).
game(X, noun_quantity) :- game(X),not abnormal_d_quantity(X),not -game(X, noun_quantity).
game_equipment(X, noun_artifact) :- game(X, noun_artifact).
game_equipment(X, noun_artifact) :- game_equipment(X),not abnormal_d_artifact(X),not -game_equipment(X, noun_artifact).
gathering(X, noun_group) :- body(X, noun_group).
gathering(X, noun_group) :- gathering(X),not abnormal_d_group(X),not -gathering(X, noun_group).
gathering(X, noun_group) :- social_gathering(X, noun_group).
goal(X, noun_cognition) :- aim(X, noun_cognition).
goal(X, noun_cognition) :- goal(X),not abnormal_d_cognition(X),not -goal(X, noun_cognition).
good_fortune(X, noun_state) :- good_fortune(X),not abnormal_d_state(X),not -good_fortune(X, noun_state).
good_fortune(X, noun_state) :- prosperity(X, noun_state).
grammatical_category(X, noun_communication) :- grammatical_category(X),not abnormal_d_communication(X),not -grammatical_category(X, noun_communication).
grammatical_category(X, noun_communication) :- number(X, noun_communication).
group(X, noun_Tops) :- collection(X, noun_group).
group(X, noun_Tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_Tops).
group(X, noun_Tops) :- people(X, noun_group).
group(X, noun_Tops) :- social_group(X, noun_group).
group_action(X, noun_act) :- cooperation(X, noun_act).
group_action(X, noun_act) :- group_action(X),not abnormal_d_act(X),not -group_action(X, noun_act).
group_action(X, noun_act) :- transaction(X, noun_act).
happening(X, noun_event) :- ending(X, noun_event).
happening(X, noun_event) :- failure(X, noun_event).
happening(X, noun_event) :- happening(X),not abnormal_d_event(X),not -happening(X, noun_event).
happening(X, noun_event) :- success(X, noun_event).
head(X, noun_person) :- administrator(X, noun_person).
head(X, noun_person) :- executive(X, noun_person).
head(X, noun_person) :- head(X),not abnormal_d_person(X),not -head(X, noun_person).
health_professional(X, noun_person) :- health_professional(X),not abnormal_d_person(X),not -health_professional(X, noun_person).
health_professional(X, noun_person) :- medical_practitioner(X, noun_person).
helpfulness(X, noun_attribute) :- helpfulness(X),not abnormal_d_attribute(X),not -helpfulness(X, noun_attribute).
helpfulness(X, noun_attribute) :- service(X, noun_attribute).
higher_cognitive_process(X, noun_cognition) :- decision_making(X, noun_cognition).
higher_cognitive_process(X, noun_cognition) :- higher_cognitive_process(X),not abnormal_d_cognition(X),not -higher_cognitive_process(X, noun_cognition).
horizontal_surface(X, noun_artifact) :- horizontal_surface(X),not abnormal_d_artifact(X),not -horizontal_surface(X, noun_artifact).
horizontal_surface(X, noun_artifact) :- platform(X, noun_artifact).
horse_drawn_vehicle(X, noun_artifact) :- carriage(X, noun_artifact).
horse_drawn_vehicle(X, noun_artifact) :- horse_drawn_vehicle(X),not abnormal_d_artifact(X),not -horse_drawn_vehicle(X, noun_artifact).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
idea(X, noun_cognition) :- plan(X, noun_cognition).
identification(X, noun_communication) :- identification(X),not abnormal_d_communication(X),not -identification(X, noun_communication).
identification(X, noun_communication) :- positive_identification(X, noun_communication).
implementation(X, noun_act) :- implementation(X),not abnormal_d_act(X),not -implementation(X, noun_act).
implementation(X, noun_act) :- way(X, noun_act).
improvement(X, noun_act) :- improvement(X),not abnormal_d_act(X),not -improvement(X, noun_act).
improvement(X, noun_act) :- repair(X, noun_act).
indication(X, noun_communication) :- evidence(X, noun_communication).
indication(X, noun_communication) :- indication(X),not abnormal_d_communication(X),not -indication(X, noun_communication).
information(X, noun_attribute) :- information(X),not -information(X, noun_attribute),-information(X, noun_group),-information(X, noun_cognition),not information(X, noun_communication).
information(X, noun_attribute) :- information(X),not abnormal_d_attribute(X),not -information(X, noun_attribute).
information(X, noun_cognition) :- information(X),not -information(X, noun_cognition),-information(X, noun_group),not information(X, noun_attribute),not information(X, noun_communication).
information(X, noun_cognition) :- information(X),not abnormal_d_cognition(X),not -information(X, noun_cognition).
information(X, noun_cognition) :- stimulation(X, noun_cognition).
information(X, noun_communication) :- information(X),not -information(X, noun_communication),-information(X, noun_group),-information(X, noun_cognition),-information(X, noun_attribute).
information(X, noun_communication) :- information(X),not abnormal_d_communication(X),not -information(X, noun_communication).
information(X, noun_group) :- information(X),not abnormal_d_group(X),not -information(X, noun_group).
information_measure(X, noun_quantity) :- information(X, noun_attribute).
information_measure(X, noun_quantity) :- information_measure(X),not abnormal_d_quantity(X),not -information_measure(X, noun_quantity).
insolvency(X, noun_state) :- failure(X, noun_state).
insolvency(X, noun_state) :- insolvency(X),not abnormal_d_state(X),not -insolvency(X, noun_state).
institution(X, noun_group) :- company(X, noun_group).
institution(X, noun_group) :- institution(X),not abnormal_d_group(X),not -institution(X, noun_group).
instrumentality(X, noun_artifact) :- conveyance(X, noun_artifact).
instrumentality(X, noun_artifact) :- device(X, noun_artifact).
instrumentality(X, noun_artifact) :- equipment(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
inventiveness(X, noun_cognition) :- inventiveness(X),not abnormal_d_cognition(X),not -inventiveness(X, noun_cognition).
inventiveness(X, noun_cognition) :- resource(X, noun_cognition).
journey(X, noun_act) :- journey(X),not abnormal_d_act(X),not -journey(X, noun_act).
journey(X, noun_act) :- way(X, noun_act).
judgment(X, noun_cognition) :- decision(X, noun_cognition).
judgment(X, noun_cognition) :- judgment(X),not abnormal_d_cognition(X),not -judgment(X, noun_cognition).
kind(X, noun_cognition) :- kind(X),not abnormal_d_cognition(X),not -kind(X, noun_cognition).
leader(X, noun_person) :- head(X, noun_person).
leader(X, noun_person) :- leader(X),not abnormal_d_person(X),not -leader(X, noun_person).
line(X, noun_location) :- line(X),not abnormal_d_location(X),not -line(X, noun_location).
line(X, noun_location) :- path(X, noun_location).
living_thing(X, noun_Tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_Tops).
living_thing(X, noun_Tops) :- organism(X, noun_Tops).
location(X, noun_Tops) :- line(X, noun_location).
location(X, noun_Tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_Tops).
location(X, noun_Tops) :- region(X, noun_location).
machine(X, noun_artifact) :- machine(X),not -machine(X, noun_artifact),-machine(X, noun_person),not machine(X, noun_group).
machine(X, noun_artifact) :- machine(X),not abnormal_d_artifact(X),not -machine(X, noun_artifact).
machine(X, noun_group) :- machine(X),not -machine(X, noun_group),-machine(X, noun_person),-machine(X, noun_artifact).
machine(X, noun_group) :- machine(X),not abnormal_d_group(X),not -machine(X, noun_group).
machine(X, noun_person) :- machine(X),not abnormal_d_person(X),not -machine(X, noun_person).
magnitude(X, noun_attribute) :- amount(X, noun_attribute).
magnitude(X, noun_attribute) :- magnitude(X),not abnormal_d_attribute(X),not -magnitude(X, noun_attribute).
maneuver(X, noun_act) :- maneuver(X),not abnormal_d_act(X),not -maneuver(X, noun_act).
maneuver(X, noun_act) :- stroke(X, noun_act).
measure(X, noun_Tops) :- definite_quantity(X, noun_quantity).
measure(X, noun_Tops) :- fundamental_quantity(X, noun_quantity).
measure(X, noun_Tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_Tops).
measure(X, noun_Tops) :- system_of_measurement(X, noun_quantity).
meat(X, noun_food) :- game(X, noun_food).
meat(X, noun_food) :- meat(X),not abnormal_d_food(X),not -meat(X, noun_food).
mechanical_device(X, noun_artifact) :- machine(X, noun_artifact).
mechanical_device(X, noun_artifact) :- mechanical_device(X),not abnormal_d_artifact(X),not -mechanical_device(X, noun_artifact).
mechanism(X, noun_artifact) :- mechanical_device(X, noun_artifact).
mechanism(X, noun_artifact) :- mechanism(X),not abnormal_d_artifact(X),not -mechanism(X, noun_artifact).
medical_practitioner(X, noun_person) :- doctor(X, noun_person).
medical_practitioner(X, noun_person) :- medical_practitioner(X),not abnormal_d_person(X),not -medical_practitioner(X, noun_person).
merchandise(X, noun_artifact) :- merchandise(X),not abnormal_d_artifact(X),not -merchandise(X, noun_artifact).
merchandise(X, noun_artifact) :- number(X, noun_artifact).
message(X, noun_communication) :- information(X, noun_communication).
message(X, noun_communication) :- message(X),not abnormal_d_communication(X),not -message(X, noun_communication).
message(X, noun_communication) :- statement(X, noun_communication).
military_unit(X, noun_group) :- army_unit(X, noun_group).
military_unit(X, noun_group) :- military_unit(X),not abnormal_d_group(X),not -military_unit(X, noun_group).
mistake(X, noun_act) :- mistake(X),not abnormal_d_act(X),not -mistake(X, noun_act).
mistake(X, noun_act) :- omission(X, noun_act).
motion(X, noun_act) :- maneuver(X, noun_act).
motion(X, noun_act) :- motion(X),not abnormal_d_act(X),not -motion(X, noun_act).
motion(X, noun_act) :- travel(X, noun_act).
motor_vehicle(X, noun_artifact) :- machine(X, noun_artifact).
motor_vehicle(X, noun_artifact) :- motor_vehicle(X),not abnormal_d_artifact(X),not -motor_vehicle(X, noun_artifact).
movement(X, noun_act) :- movement(X),not abnormal_d_act(X),not -movement(X, noun_act).
movement(X, noun_act) :- transportation(X, noun_act).
movie(X, noun_communication) :- movie(X),not abnormal_d_communication(X),not -movie(X, noun_communication).
negative_stimulus(X, noun_cognition) :- concern(X, noun_cognition).
negative_stimulus(X, noun_cognition) :- negative_stimulus(X),not abnormal_d_cognition(X),not -negative_stimulus(X, noun_cognition).
nonaccomplishment(X, noun_act) :- failure(X, noun_act).
nonaccomplishment(X, noun_act) :- mistake(X, noun_act).
nonaccomplishment(X, noun_act) :- nonaccomplishment(X),not abnormal_d_act(X),not -nonaccomplishment(X, noun_act).
number(X, noun_artifact) :- number(X),not -number(X, noun_artifact),-number(X, noun_attribute),-number(X, noun_quantity),-number(X, noun_communication),-number(X, noun_group).
number(X, noun_artifact) :- number(X),not abnormal_d_artifact(X),not -number(X, noun_artifact).
number(X, noun_attribute) :- number(X),not abnormal_d_attribute(X),not -number(X, noun_attribute).
number(X, noun_communication) :- number(X),not -number(X, noun_communication),-number(X, noun_attribute),-number(X, noun_quantity),not number(X, noun_group),not number(X, noun_artifact).
number(X, noun_communication) :- number(X),not abnormal_d_communication(X),not -number(X, noun_communication).
number(X, noun_group) :- number(X),not -number(X, noun_group),-number(X, noun_attribute),-number(X, noun_quantity),-number(X, noun_communication),not number(X, noun_artifact).
number(X, noun_group) :- number(X),not abnormal_d_group(X),not -number(X, noun_group).
number(X, noun_quantity) :- number(X),not -number(X, noun_quantity),-number(X, noun_attribute),not number(X, noun_communication),not number(X, noun_group),not number(X, noun_artifact).
number(X, noun_quantity) :- number(X),not abnormal_d_quantity(X),not -number(X, noun_quantity).
number(X, noun_quantity) :- score(X, noun_quantity).
object(X, noun_Tops) :- living_thing(X, noun_Tops).
object(X, noun_Tops) :- location(X, noun_Tops).
object(X, noun_Tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_Tops).
object(X, noun_Tops) :- whole(X, noun_Tops).
occupation(X, noun_act) :- employment(X, noun_act).
occupation(X, noun_act) :- game(X, noun_act).
occupation(X, noun_act) :- occupation(X),not abnormal_d_act(X),not -occupation(X, noun_act).
omission(X, noun_act) :- failure(X, noun_act).
omission(X, noun_act) :- omission(X),not abnormal_d_act(X),not -omission(X, noun_act).
opinion(X, noun_cognition) :- judgment(X, noun_cognition).
opinion(X, noun_cognition) :- opinion(X),not abnormal_d_cognition(X),not -opinion(X, noun_cognition).
organic_process(X, noun_process) :- bodily_process(X, noun_process).
organic_process(X, noun_process) :- organic_process(X),not abnormal_d_process(X),not -organic_process(X, noun_process).
organism(X, noun_Tops) :- animal(X, noun_Tops).
organism(X, noun_Tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_Tops).
organism(X, noun_Tops) :- person(X, noun_Tops).
organization(X, noun_group) :- company(X, noun_group).
organization(X, noun_group) :- enterprise(X, noun_group).
organization(X, noun_group) :- force(X, noun_group).
organization(X, noun_group) :- institution(X, noun_group).
organization(X, noun_group) :- machine(X, noun_group).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
participant(X, noun_person) :- participant(X),not abnormal_d_person(X),not -participant(X, noun_person).
participant(X, noun_person) :- player(X, noun_person).
path(X, noun_location) :- path(X),not abnormal_d_location(X),not -path(X, noun_location).
path(X, noun_location) :- way(X, noun_location).
peer(X, noun_person) :- associate(X, noun_person).
peer(X, noun_person) :- peer(X),not abnormal_d_person(X),not -peer(X, noun_person).
people(X, noun_group) :- business(X, noun_group).
people(X, noun_group) :- people(X),not abnormal_d_group(X),not -people(X, noun_group).
performance(X, noun_communication) :- number(X, noun_communication).
performance(X, noun_communication) :- performance(X),not abnormal_d_communication(X),not -performance(X, noun_communication).
performer(X, noun_person) :- performer(X),not abnormal_d_person(X),not -performer(X, noun_person).
performer(X, noun_person) :- player(X, noun_person).
periodical(X, noun_communication) :- number(X, noun_communication).
periodical(X, noun_communication) :- periodical(X),not abnormal_d_communication(X),not -periodical(X, noun_communication).
person(X, noun_Tops) :- adult(X, noun_person).
person(X, noun_Tops) :- contestant(X, noun_person).
person(X, noun_Tops) :- entertainer(X, noun_person).
person(X, noun_Tops) :- expert(X, noun_person).
person(X, noun_Tops) :- leader(X, noun_person).
person(X, noun_Tops) :- machine(X, noun_person).
person(X, noun_Tops) :- peer(X, noun_person).
person(X, noun_Tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_Tops).
person(X, noun_Tops) :- success(X, noun_person).
person(X, noun_Tops) :- traveler(X, noun_person).
person(X, noun_Tops) :- unfortunate(X, noun_person).
person(X, noun_Tops) :- unwelcome_person(X, noun_person).
person(X, noun_Tops) :- user(X, noun_person).
physical_entity(X, noun_Tops) :- object(X, noun_Tops).
physical_entity(X, noun_Tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_Tops).
physical_entity(X, noun_Tops) :- process(X, noun_Tops).
physical_entity(X, noun_Tops) :- substance(X, noun_Tops).
placement(X, noun_attribute) :- placement(X),not abnormal_d_attribute(X),not -placement(X, noun_attribute).
placement(X, noun_attribute) :- spacing(X, noun_attribute).
plan(X, noun_cognition) :- plan(X),not abnormal_d_cognition(X),not -plan(X, noun_cognition).
plan(X, noun_cognition) :- plan_of_action(X, noun_cognition).
plan_of_action(X, noun_cognition) :- plan_of_action(X),not abnormal_d_cognition(X),not -plan_of_action(X, noun_cognition).
plan_of_action(X, noun_cognition) :- scheme(X, noun_cognition).
platform(X, noun_artifact) :- platform(X),not abnormal_d_artifact(X),not -platform(X, noun_artifact).
platform(X, noun_artifact) :- stage(X, noun_artifact).
play(X, noun_act) :- game(X, noun_act).
play(X, noun_act) :- play(X),not abnormal_d_act(X),not -play(X, noun_act).
player(X, noun_person) :- player(X),not abnormal_d_person(X),not -player(X, noun_person).
pleading(X, noun_communication) :- charge(X, noun_communication).
pleading(X, noun_communication) :- pleading(X),not abnormal_d_communication(X),not -pleading(X, noun_communication).
politeness(X, noun_act) :- courtesy(X, noun_act).
politeness(X, noun_act) :- politeness(X),not abnormal_d_act(X),not -politeness(X, noun_act).
position(X, noun_attribute) :- placement(X, noun_attribute).
position(X, noun_attribute) :- position(X),not abnormal_d_attribute(X),not -position(X, noun_attribute).
position(X, noun_attribute) :- stance(X, noun_attribute).
position(X, noun_attribute) :- way(X, noun_quantity).
positive_identification(X, noun_communication) :- number(X, noun_communication).
positive_identification(X, noun_communication) :- positive_identification(X),not abnormal_d_communication(X),not -positive_identification(X, noun_communication).
possession(X, noun_Tops) :- assets(X, noun_possession).
possession(X, noun_Tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_Tops).
process(X, noun_Tops) :- organic_process(X, noun_process).
process(X, noun_Tops) :- process(X),not -process(X, noun_Tops),-process(X, noun_cognition).
process(X, noun_Tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_Tops).
process(X, noun_cognition) :- basic_cognitive_process(X, noun_cognition).
process(X, noun_cognition) :- higher_cognitive_process(X, noun_cognition).
process(X, noun_cognition) :- process(X),not abnormal_d_cognition(X),not -process(X, noun_cognition).
product(X, noun_artifact) :- product(X),not abnormal_d_artifact(X),not -product(X, noun_artifact).
product(X, noun_artifact) :- work(X, noun_artifact).
professional(X, noun_person) :- health_professional(X, noun_person).
professional(X, noun_person) :- professional(X),not abnormal_d_person(X),not -professional(X, noun_person).
property(X, noun_attribute) :- magnitude(X, noun_attribute).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
property(X, noun_attribute) :- size(X, noun_attribute).
property(X, noun_attribute) :- way(X, noun_attribute).
property(X, noun_cognition) :- feature(X, noun_cognition).
property(X, noun_cognition) :- property(X),not -property(X, noun_cognition),-property(X, noun_attribute).
property(X, noun_cognition) :- property(X),not abnormal_d_cognition(X),not -property(X, noun_cognition).
prosperity(X, noun_state) :- prosperity(X),not abnormal_d_state(X),not -prosperity(X, noun_state).
prosperity(X, noun_state) :- success(X, noun_state).
psychiatrist(X, noun_person) :- analyst(X, noun_person).
psychiatrist(X, noun_person) :- psychiatrist(X),not abnormal_d_person(X),not -psychiatrist(X, noun_person).
psychological_feature(X, noun_Tops) :- cognition(X, noun_Tops).
psychological_feature(X, noun_Tops) :- event(X, noun_Tops).
psychological_feature(X, noun_Tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_Tops).
publication(X, noun_communication) :- periodical(X, noun_communication).
publication(X, noun_communication) :- publication(X),not abnormal_d_communication(X),not -publication(X, noun_communication).
quality(X, noun_attribute) :- asset(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
quality(X, noun_attribute) :- utility(X, noun_attribute).
region(X, noun_location) :- area(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
relation(X, noun_Tops) :- position(X, noun_attribute).
relation(X, noun_Tops) :- possession(X, noun_Tops).
relation(X, noun_Tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_Tops).
relationship(X, noun_state) :- friendship(X, noun_state).
relationship(X, noun_state) :- relationship(X),not abnormal_d_state(X),not -relationship(X, noun_state).
religious_ceremony(X, noun_act) :- religious_ceremony(X),not abnormal_d_act(X),not -religious_ceremony(X, noun_act).
religious_ceremony(X, noun_act) :- service(X, noun_act).
repair(X, noun_act) :- care(X, noun_act).
repair(X, noun_act) :- repair(X),not abnormal_d_act(X),not -repair(X, noun_act).
resoluteness(X, noun_attribute) :- decision(X, noun_attribute).
resoluteness(X, noun_attribute) :- resoluteness(X),not abnormal_d_attribute(X),not -resoluteness(X, noun_attribute).
resource(X, noun_attribute) :- resource(X),not -resource(X, noun_attribute),-resource(X, noun_possession),not resource(X, noun_cognition).
resource(X, noun_attribute) :- resource(X),not abnormal_d_attribute(X),not -resource(X, noun_attribute).
resource(X, noun_cognition) :- resource(X),not -resource(X, noun_cognition),-resource(X, noun_possession),-resource(X, noun_attribute).
resource(X, noun_cognition) :- resource(X),not abnormal_d_cognition(X),not -resource(X, noun_cognition).
resource(X, noun_possession) :- resource(X),not abnormal_d_possession(X),not -resource(X, noun_possession).
result(X, noun_event) :- decision(X, noun_event).
result(X, noun_event) :- result(X),not abnormal_d_event(X),not -result(X, noun_event).
rival(X, noun_person) :- rival(X),not abnormal_d_person(X),not -rival(X, noun_person).
scene(X, noun_location) :- scene(X),not abnormal_d_location(X),not -scene(X, noun_location).
scene(X, noun_location) :- stage(X, noun_location).
scheme(X, noun_cognition) :- game(X, noun_cognition).
scheme(X, noun_cognition) :- scheme(X),not abnormal_d_cognition(X),not -scheme(X, noun_cognition).
score(X, noun_quantity) :- game(X, noun_quantity).
score(X, noun_quantity) :- score(X),not abnormal_d_quantity(X),not -score(X, noun_quantity).
sector(X, noun_group) :- business(X, noun_group).
sector(X, noun_group) :- sector(X),not abnormal_d_group(X),not -sector(X, noun_group).
self_propelled_vehicle(X, noun_artifact) :- motor_vehicle(X, noun_artifact).
self_propelled_vehicle(X, noun_artifact) :- self_propelled_vehicle(X),not abnormal_d_artifact(X),not -self_propelled_vehicle(X, noun_artifact).
selfish_person(X, noun_person) :- selfish_person(X),not abnormal_d_person(X),not -selfish_person(X, noun_person).
selfish_person(X, noun_person) :- user(X, noun_person).
service(X, noun_act) :- service(X),not -service(X, noun_act),-service(X, noun_group),not service(X, noun_artifact),not service(X, noun_person),not service(X, noun_attribute).
service(X, noun_act) :- service(X),not abnormal_d_act(X),not -service(X, noun_act).
service(X, noun_artifact) :- service(X),not -service(X, noun_artifact),-service(X, noun_group),-service(X, noun_act),not service(X, noun_person),not service(X, noun_attribute).
service(X, noun_artifact) :- service(X),not abnormal_d_artifact(X),not -service(X, noun_artifact).
service(X, noun_attribute) :- service(X),not -service(X, noun_attribute),-service(X, noun_group),-service(X, noun_act),-service(X, noun_artifact),-service(X, noun_person).
service(X, noun_attribute) :- service(X),not abnormal_d_attribute(X),not -service(X, noun_attribute).
service(X, noun_group) :- service(X),not abnormal_d_group(X),not -service(X, noun_group).
service(X, noun_person) :- service(X),not -service(X, noun_person),-service(X, noun_group),-service(X, noun_act),-service(X, noun_artifact),not service(X, noun_attribute).
service(X, noun_person) :- service(X),not abnormal_d_person(X),not -service(X, noun_person).
set(X, noun_group) :- company(X, noun_group).
set(X, noun_group) :- set(X),not abnormal_d_group(X),not -set(X, noun_group).
sexual_activity(X, noun_act) :- coupling(X, noun_act).
sexual_activity(X, noun_act) :- sexual_activity(X),not abnormal_d_act(X),not -sexual_activity(X, noun_act).
share(X, noun_possession) :- share(X),not abnormal_d_possession(X),not -share(X, noun_possession).
share(X, noun_possession) :- way(X, noun_possession).
show(X, noun_communication) :- movie(X, noun_communication).
show(X, noun_communication) :- performance(X, noun_communication).
show(X, noun_communication) :- show(X),not abnormal_d_communication(X),not -show(X, noun_communication).
signal(X, noun_communication) :- number(X, noun_communication).
signal(X, noun_communication) :- signal(X),not abnormal_d_communication(X),not -signal(X, noun_communication).
signal(X, noun_communication) :- symbol(X, noun_communication).
size(X, noun_attribute) :- number(X, noun_attribute).
size(X, noun_attribute) :- size(X),not abnormal_d_attribute(X),not -size(X, noun_attribute).
social_event(X, noun_event) :- contest(X, noun_event).
social_event(X, noun_event) :- show(X, noun_communication).
social_event(X, noun_event) :- social_event(X),not abnormal_d_event(X),not -social_event(X, noun_event).
social_gathering(X, noun_group) :- company(X, noun_group).
social_gathering(X, noun_group) :- social_gathering(X),not abnormal_d_group(X),not -social_gathering(X, noun_group).
social_group(X, noun_group) :- gathering(X, noun_group).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- set(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
solid(X, noun_substance) :- food(X, noun_food).
solid(X, noun_substance) :- solid(X),not abnormal_d_substance(X),not -solid(X, noun_substance).
spacing(X, noun_attribute) :- distance(X, noun_attribute).
spacing(X, noun_attribute) :- spacing(X),not abnormal_d_attribute(X),not -spacing(X, noun_attribute).
specialist(X, noun_person) :- psychiatrist(X, noun_person).
specialist(X, noun_person) :- specialist(X),not abnormal_d_person(X),not -specialist(X, noun_person).
stage(X, noun_act) :- stage(X),not -stage(X, noun_act),-stage(X, noun_time),-stage(X, noun_state),-stage(X, noun_communication),-stage(X, noun_location),not stage(X, noun_artifact).
stage(X, noun_act) :- stage(X),not abnormal_d_act(X),not -stage(X, noun_act).
stage(X, noun_artifact) :- stage(X),not -stage(X, noun_artifact),-stage(X, noun_time),-stage(X, noun_state),-stage(X, noun_communication),-stage(X, noun_location),-stage(X, noun_act).
stage(X, noun_artifact) :- stage(X),not abnormal_d_artifact(X),not -stage(X, noun_artifact).
stage(X, noun_communication) :- stage(X),not -stage(X, noun_communication),-stage(X, noun_time),-stage(X, noun_state),not stage(X, noun_location),not stage(X, noun_act),not stage(X, noun_artifact).
stage(X, noun_communication) :- stage(X),not abnormal_d_communication(X),not -stage(X, noun_communication).
stage(X, noun_location) :- stage(X),not -stage(X, noun_location),-stage(X, noun_time),-stage(X, noun_state),-stage(X, noun_communication),not stage(X, noun_act),not stage(X, noun_artifact).
stage(X, noun_location) :- stage(X),not abnormal_d_location(X),not -stage(X, noun_location).
stage(X, noun_state) :- stage(X),not -stage(X, noun_state),-stage(X, noun_time),not stage(X, noun_communication),not stage(X, noun_location),not stage(X, noun_act),not stage(X, noun_artifact).
stage(X, noun_state) :- stage(X),not abnormal_d_state(X),not -stage(X, noun_state).
stage(X, noun_time) :- stage(X),not abnormal_d_time(X),not -stage(X, noun_time).
stance(X, noun_attribute) :- attention(X, noun_attribute).
stance(X, noun_attribute) :- stance(X),not abnormal_d_attribute(X),not -stance(X, noun_attribute).
state(X, noun_Tops) :- condition(X, noun_state).
state(X, noun_Tops) :- relationship(X, noun_state).
state(X, noun_Tops) :- stage(X, noun_state).
state(X, noun_Tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_Tops).
statement(X, noun_communication) :- pleading(X, noun_communication).
statement(X, noun_communication) :- statement(X),not abnormal_d_communication(X),not -statement(X, noun_communication).
stimulation(X, noun_cognition) :- negative_stimulus(X, noun_cognition).
stimulation(X, noun_cognition) :- stimulation(X),not abnormal_d_cognition(X),not -stimulation(X, noun_cognition).
stroke(X, noun_act) :- stroke(X),not abnormal_d_act(X),not -stroke(X, noun_act).
stroke(X, noun_act) :- tennis_stroke(X, noun_act).
substance(X, noun_Tops) :- solid(X, noun_substance).
substance(X, noun_Tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_Tops).
success(X, noun_act) :- success(X),not -success(X, noun_act),-success(X, noun_event),not success(X, noun_state),not success(X, noun_person).
success(X, noun_act) :- success(X),not abnormal_d_act(X),not -success(X, noun_act).
success(X, noun_event) :- success(X),not abnormal_d_event(X),not -success(X, noun_event).
success(X, noun_person) :- success(X),not -success(X, noun_person),-success(X, noun_event),-success(X, noun_act),-success(X, noun_state).
success(X, noun_person) :- success(X),not abnormal_d_person(X),not -success(X, noun_person).
success(X, noun_state) :- success(X),not -success(X, noun_state),-success(X, noun_event),-success(X, noun_act),not success(X, noun_person).
success(X, noun_state) :- success(X),not abnormal_d_state(X),not -success(X, noun_state).
surface(X, noun_artifact) :- horizontal_surface(X, noun_artifact).
surface(X, noun_artifact) :- surface(X),not abnormal_d_artifact(X),not -surface(X, noun_artifact).
symbol(X, noun_communication) :- number(X, noun_communication).
symbol(X, noun_communication) :- symbol(X),not abnormal_d_communication(X),not -symbol(X, noun_communication).
system_of_measurement(X, noun_quantity) :- information_measure(X, noun_quantity).
system_of_measurement(X, noun_quantity) :- system_of_measurement(X),not abnormal_d_quantity(X),not -system_of_measurement(X, noun_quantity).
tableware(X, noun_artifact) :- service(X, noun_artifact).
tableware(X, noun_artifact) :- tableware(X),not abnormal_d_artifact(X),not -tableware(X, noun_artifact).
tennis_stroke(X, noun_act) :- service(X, noun_act).
tennis_stroke(X, noun_act) :- tennis_stroke(X),not abnormal_d_act(X),not -tennis_stroke(X, noun_act).
time_period(X, noun_time) :- stage(X, noun_time).
time_period(X, noun_time) :- time_period(X),not abnormal_d_time(X),not -time_period(X, noun_time).
trait(X, noun_attribute) :- resoluteness(X, noun_attribute).
trait(X, noun_attribute) :- trait(X),not abnormal_d_attribute(X),not -trait(X, noun_attribute).
transaction(X, noun_act) :- commerce(X, noun_act).
transaction(X, noun_act) :- transaction(X),not abnormal_d_act(X),not -transaction(X, noun_act).
transportation(X, noun_act) :- delivery(X, noun_act).
transportation(X, noun_act) :- transportation(X),not abnormal_d_act(X),not -transportation(X, noun_act).
travel(X, noun_act) :- journey(X, noun_act).
travel(X, noun_act) :- stage(X, noun_act).
travel(X, noun_act) :- travel(X),not abnormal_d_act(X),not -travel(X, noun_act).
traveler(X, noun_person) :- traveler(X),not abnormal_d_person(X),not -traveler(X, noun_person).
traveler(X, noun_person) :- visitor(X, noun_person).
undertaking(X, noun_act) :- enterprise(X, noun_act).
undertaking(X, noun_act) :- undertaking(X),not abnormal_d_act(X),not -undertaking(X, noun_act).
unfortunate(X, noun_person) :- failure(X, noun_person).
unfortunate(X, noun_person) :- unfortunate(X),not abnormal_d_person(X),not -unfortunate(X, noun_person).
unit(X, noun_group) :- company(X, noun_group).
unit(X, noun_group) :- military_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
unpleasant_person(X, noun_person) :- selfish_person(X, noun_person).
unpleasant_person(X, noun_person) :- unpleasant_person(X),not abnormal_d_person(X),not -unpleasant_person(X, noun_person).
unwelcome_person(X, noun_person) :- unpleasant_person(X, noun_person).
unwelcome_person(X, noun_person) :- unwelcome_person(X),not abnormal_d_person(X),not -unwelcome_person(X, noun_person).
user(X, noun_person) :- consumer(X, noun_person).
user(X, noun_person) :- user(X),not abnormal_d_person(X),not -user(X, noun_person).
utility(X, noun_attribute) :- helpfulness(X, noun_attribute).
utility(X, noun_attribute) :- utility(X),not abnormal_d_attribute(X),not -utility(X, noun_attribute).
vehicle(X, noun_artifact) :- vehicle(X),not abnormal_d_artifact(X),not -vehicle(X, noun_artifact).
vehicle(X, noun_artifact) :- wheeled_vehicle(X, noun_artifact).
visitor(X, noun_person) :- company(X, noun_person).
visitor(X, noun_person) :- visitor(X),not abnormal_d_person(X),not -visitor(X, noun_person).
ware(X, noun_artifact) :- tableware(X, noun_artifact).
ware(X, noun_artifact) :- ware(X),not abnormal_d_artifact(X),not -ware(X, noun_artifact).
way(X, noun_act) :- way(X),not -way(X, noun_act),-way(X, noun_attribute),-way(X, noun_state),not way(X, noun_artifact),not way(X, noun_location),not way(X, noun_cognition),not way(X, noun_quantity),not way(X, noun_possession).
way(X, noun_act) :- way(X),not abnormal_d_act(X),not -way(X, noun_act).
way(X, noun_artifact) :- way(X),not -way(X, noun_artifact),-way(X, noun_attribute),-way(X, noun_state),-way(X, noun_act),not way(X, noun_location),not way(X, noun_cognition),not way(X, noun_quantity),not way(X, noun_possession).
way(X, noun_artifact) :- way(X),not abnormal_d_artifact(X),not -way(X, noun_artifact).
way(X, noun_attribute) :- way(X),not abnormal_d_attribute(X),not -way(X, noun_attribute).
way(X, noun_cognition) :- way(X),not -way(X, noun_cognition),-way(X, noun_attribute),-way(X, noun_state),-way(X, noun_act),-way(X, noun_artifact),-way(X, noun_location),not way(X, noun_quantity),not way(X, noun_possession).
way(X, noun_cognition) :- way(X),not abnormal_d_cognition(X),not -way(X, noun_cognition).
way(X, noun_location) :- way(X),not -way(X, noun_location),-way(X, noun_attribute),-way(X, noun_state),-way(X, noun_act),-way(X, noun_artifact),not way(X, noun_cognition),not way(X, noun_quantity),not way(X, noun_possession).
way(X, noun_location) :- way(X),not abnormal_d_location(X),not -way(X, noun_location).
way(X, noun_possession) :- way(X),not -way(X, noun_possession),-way(X, noun_attribute),-way(X, noun_state),-way(X, noun_act),-way(X, noun_artifact),-way(X, noun_location),-way(X, noun_cognition),-way(X, noun_quantity).
way(X, noun_possession) :- way(X),not abnormal_d_possession(X),not -way(X, noun_possession).
way(X, noun_quantity) :- way(X),not -way(X, noun_quantity),-way(X, noun_attribute),-way(X, noun_state),-way(X, noun_act),-way(X, noun_artifact),-way(X, noun_location),-way(X, noun_cognition),not way(X, noun_possession).
way(X, noun_quantity) :- way(X),not abnormal_d_quantity(X),not -way(X, noun_quantity).
way(X, noun_state) :- way(X),not -way(X, noun_state),-way(X, noun_attribute),not way(X, noun_act),not way(X, noun_artifact),not way(X, noun_location),not way(X, noun_cognition),not way(X, noun_quantity),not way(X, noun_possession).
way(X, noun_state) :- way(X),not abnormal_d_state(X),not -way(X, noun_state).
wheeled_vehicle(X, noun_artifact) :- horse_drawn_vehicle(X, noun_artifact).
wheeled_vehicle(X, noun_artifact) :- self_propelled_vehicle(X, noun_artifact).
wheeled_vehicle(X, noun_artifact) :- wheeled_vehicle(X),not abnormal_d_artifact(X),not -wheeled_vehicle(X, noun_artifact).
whole(X, noun_Tops) :- artifact(X, noun_Tops).
whole(X, noun_Tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_Tops).
work(X, noun_act) :- attention(X, noun_act).
work(X, noun_act) :- service(X, noun_act).
work(X, noun_act) :- undertaking(X, noun_act).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
work(X, noun_artifact) :- publication(X, noun_communication).
work(X, noun_artifact) :- work(X),not -work(X, noun_artifact),-work(X, noun_act).
work(X, noun_artifact) :- work(X),not abnormal_d_artifact(X),not -work(X, noun_artifact).
work_force(X, noun_group) :- complement(X, noun_group).
work_force(X, noun_group) :- work_force(X),not abnormal_d_group(X),not -work_force(X, noun_group).