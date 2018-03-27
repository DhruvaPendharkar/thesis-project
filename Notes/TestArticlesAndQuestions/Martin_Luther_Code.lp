#include 'CommonRules.lp'.
#include 'Martin_Luther_Q_Code.lp'.

%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_end_date(martin_luther, '18_february_1546').
_is(martin_luther, german_professor).
_is(proposition, ninety_five_theses).
_mod(discussion, academic).
_mod(dispute, strongly).
_mod(teaching, several).
_possess(god, punishment).
_possess(martin_luther, excommunication).
_possess(martin_luther, ninety_five_theses).
_possess(martin_luther, proposition).
_possess(martin_luther, refusal).
_possess(martin_luther, writings).
_property(demand, of(holy_roman_emperor_charles_v)).
_property(demand, of(pope_leo_x)).
_property(diet_of_worms, in(1521)).
_property(discussion, of(power)).
_property(discussion, of(usefulness)).
_property(freedom, from(punishment)).
_property(german_professor, of(seminal_figure)).
_property(holy_roman_emperor_charles_v, at(diet_of_worms)).
_property(pope, as(outlaw)).
_property(pope_leo_x, in(1520)).
_property(power, of(indulgence)).
_property(propose, in(proposition)).
_property(proposition, of(1517)).
_property(punishment, for(sin)).
_property(purchase, with(money)).
_property(result, by(condemnation)).
_property(result, by(emperor)).
_property(result, by(pope)).
_property(result, in(excommunication)).
_property(retract, at(demand)).
_property(seminal_figure, in(protestant_reformation)).
_property(teaching, of(late_medieval_catholic_church)).
_relation(2, 3, _clcomplement).
_relation(4, 6, _clcomplement).
_relation(refusal, 8, _clause).
_start_date(martin_luther, '10_november_1483').
claim(claim).
composer(composer).
condemnation(condemnation).
demand(demand).
discussion(discussion).
emperor(emperor).
event(2, come, martin_luther, null).
event(3, reject, martin_luther, practice).
event(3, reject, martin_luther, several_teaching).
event(3, reject, martin_luther, teaching).
event(3, reject, martin_luther, teaching_of_late_medieval_catholic_church).
event(4, dispute, martin_luther, claim).
event(6, purchase, null, freedom).
event(7, propose, martin_luther, academic_discussion).
event(7, propose, martin_luther, discussion).
event(7, propose, martin_luther, discussion_of_power).
event(7, propose, martin_luther, discussion_of_usefulness).
event(8, retract, null, all).
event(8, retract, null, all_of_writings).
event(9, result, refusal, null).
excommunication(excommunication).
freedom(freedom).
god(god).
indulgence(indulgence).
martin_luther(martin_luther).
money(money).
outlaw(outlaw).
pope(pope).
power(power).
practice(practice).
priest(priest).
proposition(ninety_five_theses).
proposition(proposition).
protestant_reformation(protestant_reformation).
punishment(punishment).
refusal(refusal).
sin(sin).
teaching(teaching).
theology(theology).
time('10_november_1483').
time('18_february_1546').
time(1517).
time(1520).
time(1521).
usefulness(usefulness).
writings(writings).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
ability(X, noun_cognition) :- ability(X),not abnormal_d_cognition(X),not -ability(X, noun_cognition).
ability(X, noun_cognition) :- know_how(X, noun_cognition).
absolution(X, noun_act) :- absolution(X),not abnormal_d_act(X),not -absolution(X, noun_act).
absolution(X, noun_act) :- indulgence(X, noun_act).
abstract_entity(X, noun_tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_tops).
abstract_entity(X, noun_tops) :- abstraction(X, noun_tops).
abstraction(X, noun_cognition) :- abstraction(X),not abnormal_d_cognition(X),not -abstraction(X, noun_cognition).
abstraction(X, noun_cognition) :- right(X, noun_attribute).
abstraction(X, noun_tops) :- abstraction(X),not -abstraction(X, noun_tops),-abstraction(X, noun_cognition).
abstraction(X, noun_tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_tops).
abstraction(X, noun_tops) :- attribute(X, noun_tops).
abstraction(X, noun_tops) :- communication(X, noun_tops).
abstraction(X, noun_tops) :- group(X, noun_tops).
abstraction(X, noun_tops) :- psychological_feature(X, noun_tops).
abstraction(X, noun_tops) :- relation(X, noun_tops).
accomplishment(X, noun_act) :- accomplishment(X),not abnormal_d_act(X),not -accomplishment(X, noun_act).
accomplishment(X, noun_act) :- deed(X, noun_act).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
act(X, noun_tops) :- activity(X, noun_act).
act(X, noun_tops) :- communication(X, noun_communication).
act(X, noun_tops) :- group_action(X, noun_act).
act(X, noun_tops) :- judgment(X, noun_act).
act(X, noun_tops) :- rejection(X, noun_act).
act(X, noun_tops) :- speech_act(X, noun_communication).
action(X, noun_act) :- accomplishment(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- demand(X, noun_act).
activity(X, noun_act) :- diversion(X, noun_act).
activity(X, noun_act) :- occupation(X, noun_act).
activity(X, noun_act) :- practice(X, noun_act).
activity(X, noun_act) :- sin(X, noun_act).
activity(X, noun_act) :- teaching(X, noun_act).
activity(X, noun_act) :- training(X, noun_act).
activity(X, noun_act) :- use(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
activity(X, noun_act) :- wrongdoing(X, noun_act).
animal(X, noun_tops) :- animal(X),not abnormal_d_tops(X),not -animal(X, noun_tops).
animal(X, noun_tops) :- invertebrate(X, noun_animal).
arthropod(X, noun_animal) :- arthropod(X),not abnormal_d_animal(X),not -arthropod(X, noun_animal).
arthropod(X, noun_animal) :- insect(X, noun_animal).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- creation(X, noun_artifact).
artist(X, noun_person) :- artist(X),not abnormal_d_person(X),not -artist(X, noun_person).
artist(X, noun_person) :- musician(X, noun_person).
assertion(X, noun_communication) :- assertion(X),not abnormal_d_communication(X),not -assertion(X, noun_communication).
assertion(X, noun_communication) :- claim(X, noun_communication).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
attribute(X, noun_tops) :- trait(X, noun_attribute).
auditory_communication(X, noun_communication) :- auditory_communication(X),not abnormal_d_communication(X),not -auditory_communication(X, noun_communication).
auditory_communication(X, noun_communication) :- speech(X, noun_communication).
bad_person(X, noun_person) :- bad_person(X),not abnormal_d_person(X),not -bad_person(X, noun_person).
bad_person(X, noun_person) :- wrongdoer(X, noun_person).
banishment(X, noun_act) :- banishment(X),not abnormal_d_act(X),not -banishment(X, noun_act).
banishment(X, noun_act) :- excommunication(X, noun_act).
belief(X, noun_cognition) :- belief(X),not abnormal_d_cognition(X),not -belief(X, noun_cognition).
belief(X, noun_cognition) :- doctrine(X, noun_cognition).
belief(X, noun_cognition) :- spiritual_being(X, noun_person).
businessman(X, noun_person) :- businessman(X),not abnormal_d_person(X),not -businessman(X, noun_person).
businessman(X, noun_person) :- power(X, noun_person).
businessperson(X, noun_person) :- businessman(X, noun_person).
businessperson(X, noun_person) :- businessperson(X),not abnormal_d_person(X),not -businessperson(X, noun_person).
butterfly(X, noun_animal) :- butterfly(X),not abnormal_d_animal(X),not -butterfly(X, noun_animal).
butterfly(X, noun_animal) :- nymphalid(X, noun_animal).
capitalist(X, noun_person) :- businessperson(X, noun_person).
capitalist(X, noun_person) :- capitalist(X),not abnormal_d_person(X),not -capitalist(X, noun_person).
causal_agent(X, noun_tops) :- causal_agent(X),not abnormal_d_tops(X),not -causal_agent(X, noun_tops).
causal_agent(X, noun_tops) :- power(X, noun_person).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- satisfaction(X, noun_act).
character(X, noun_communication) :- character(X),not abnormal_d_communication(X),not -character(X, noun_communication).
character(X, noun_communication) :- letter(X, noun_communication).
claim(X, noun_act) :- claim(X),not abnormal_d_act(X),not -claim(X, noun_act).
claim(X, noun_attribute) :- claim(X),not -claim(X, noun_attribute),-claim(X, noun_act),not claim(X, noun_communication).
claim(X, noun_attribute) :- claim(X),not abnormal_d_attribute(X),not -claim(X, noun_attribute).
claim(X, noun_communication) :- claim(X),not -claim(X, noun_communication),-claim(X, noun_act),-claim(X, noun_attribute).
claim(X, noun_communication) :- claim(X),not abnormal_d_communication(X),not -claim(X, noun_communication).
clergyman(X, noun_person) :- clergyman(X),not abnormal_d_person(X),not -clergyman(X, noun_person).
clergyman(X, noun_person) :- priest(X, noun_person).
cognition(X, noun_tops) :- ability(X, noun_cognition).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- power(X, noun_cognition).
cognition(X, noun_tops) :- practice(X, noun_cognition).
communication(X, noun_communication) :- communication(X),not abnormal_d_communication(X),not -communication(X, noun_communication).
communication(X, noun_communication) :- discussion(X, noun_communication).
communication(X, noun_tops) :- auditory_communication(X, noun_communication).
communication(X, noun_tops) :- communication(X),not -communication(X, noun_tops),-communication(X, noun_communication).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- message(X, noun_communication).
communication(X, noun_tops) :- signal(X, noun_communication).
communication(X, noun_tops) :- written_communication(X, noun_communication).
communicator(X, noun_person) :- communicator(X),not abnormal_d_person(X),not -communicator(X, noun_person).
communicator(X, noun_person) :- writer(X, noun_person).
composer(X, noun_person) :- composer(X),not abnormal_d_person(X),not -composer(X, noun_person).
concept(X, noun_cognition) :- abstraction(X, noun_cognition).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
condemnation(X, noun_act) :- condemnation(X),not -condemnation(X, noun_act),-condemnation(X, noun_communication),-condemnation(X, noun_state).
condemnation(X, noun_act) :- condemnation(X),not abnormal_d_act(X),not -condemnation(X, noun_act).
condemnation(X, noun_communication) :- condemnation(X),not abnormal_d_communication(X),not -condemnation(X, noun_communication).
condemnation(X, noun_state) :- condemnation(X),not -condemnation(X, noun_state),-condemnation(X, noun_communication),not condemnation(X, noun_act).
condemnation(X, noun_state) :- condemnation(X),not abnormal_d_state(X),not -condemnation(X, noun_state).
condition(X, noun_state) :- condemnation(X, noun_state).
condition(X, noun_state) :- condition(X),not abnormal_d_state(X),not -condition(X, noun_state).
condition(X, noun_state) :- demand(X, noun_state).
condition(X, noun_state) :- unsusceptibility(X, noun_state).
content(X, noun_cognition) :- belief(X, noun_cognition).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
content(X, noun_cognition) :- knowledge_domain(X, noun_cognition).
creation(X, noun_artifact) :- creation(X),not abnormal_d_artifact(X),not -creation(X, noun_artifact).
creation(X, noun_artifact) :- representation(X, noun_artifact).
creator(X, noun_person) :- artist(X, noun_person).
creator(X, noun_person) :- creator(X),not abnormal_d_person(X),not -creator(X, noun_person).
currency(X, noun_possession) :- currency(X),not abnormal_d_possession(X),not -currency(X, noun_possession).
currency(X, noun_possession) :- money(X, noun_possession).
declaration(X, noun_communication) :- assertion(X, noun_communication).
declaration(X, noun_communication) :- declaration(X),not abnormal_d_communication(X),not -declaration(X, noun_communication).
deed(X, noun_act) :- deed(X),not abnormal_d_act(X),not -deed(X, noun_act).
deed(X, noun_act) :- implementation(X, noun_act).
deed(X, noun_act) :- recovery(X, noun_act).
deity(X, noun_person) :- deity(X),not abnormal_d_person(X),not -deity(X, noun_person).
deity(X, noun_person) :- semitic_deity(X, noun_person).
demand(X, noun_act) :- claim(X, noun_act).
demand(X, noun_act) :- demand(X),not -demand(X, noun_act),-demand(X, noun_process),-demand(X, noun_communication),-demand(X, noun_state),not demand(X, noun_cognition).
demand(X, noun_act) :- demand(X),not abnormal_d_act(X),not -demand(X, noun_act).
demand(X, noun_cognition) :- demand(X),not -demand(X, noun_cognition),-demand(X, noun_process),-demand(X, noun_communication),-demand(X, noun_state),-demand(X, noun_act).
demand(X, noun_cognition) :- demand(X),not abnormal_d_cognition(X),not -demand(X, noun_cognition).
demand(X, noun_communication) :- claim(X, noun_communication).
demand(X, noun_communication) :- demand(X),not -demand(X, noun_communication),-demand(X, noun_process),not demand(X, noun_state),not demand(X, noun_act),not demand(X, noun_cognition).
demand(X, noun_communication) :- demand(X),not abnormal_d_communication(X),not -demand(X, noun_communication).
demand(X, noun_process) :- demand(X),not abnormal_d_process(X),not -demand(X, noun_process).
demand(X, noun_state) :- demand(X),not -demand(X, noun_state),-demand(X, noun_process),-demand(X, noun_communication),not demand(X, noun_act),not demand(X, noun_cognition).
demand(X, noun_state) :- demand(X),not abnormal_d_state(X),not -demand(X, noun_state).
denial(X, noun_communication) :- denial(X),not abnormal_d_communication(X),not -denial(X, noun_communication).
denial(X, noun_communication) :- refusal(X, noun_communication).
denunciation(X, noun_communication) :- condemnation(X, noun_communication).
denunciation(X, noun_communication) :- denunciation(X),not abnormal_d_communication(X),not -denunciation(X, noun_communication).
disapproval(X, noun_act) :- condemnation(X, noun_act).
disapproval(X, noun_act) :- disapproval(X),not -disapproval(X, noun_act),-disapproval(X, noun_communication).
disapproval(X, noun_act) :- disapproval(X),not abnormal_d_act(X),not -disapproval(X, noun_act).
disapproval(X, noun_communication) :- condemnation(X, noun_communication).
disapproval(X, noun_communication) :- disapproval(X),not abnormal_d_communication(X),not -disapproval(X, noun_communication).
discipline(X, noun_cognition) :- discipline(X),not abnormal_d_cognition(X),not -discipline(X, noun_cognition).
discipline(X, noun_cognition) :- theology(X, noun_cognition).
discussion(X, noun_communication) :- discussion(X),not abnormal_d_communication(X),not -discussion(X, noun_communication).
disposition(X, noun_attribute) :- disposition(X),not abnormal_d_attribute(X),not -disposition(X, noun_attribute).
disposition(X, noun_attribute) :- permissiveness(X, noun_attribute).
diversion(X, noun_act) :- diversion(X),not abnormal_d_act(X),not -diversion(X, noun_act).
diversion(X, noun_act) :- play(X, noun_act).
doctrine(X, noun_cognition) :- doctrine(X),not abnormal_d_cognition(X),not -doctrine(X, noun_cognition).
doctrine(X, noun_cognition) :- teaching(X, noun_cognition).
duty(X, noun_act) :- demand(X, noun_cognition).
duty(X, noun_act) :- duty(X),not abnormal_d_act(X),not -duty(X, noun_act).
economic_process(X, noun_process) :- demand(X, noun_process).
economic_process(X, noun_process) :- economic_process(X),not abnormal_d_process(X),not -economic_process(X, noun_process).
edible_fruit(X, noun_food) :- edible_fruit(X),not abnormal_d_food(X),not -edible_fruit(X, noun_food).
edible_fruit(X, noun_food) :- grape(X, noun_food).
education(X, noun_act) :- education(X),not abnormal_d_act(X),not -education(X, noun_act).
education(X, noun_act) :- teaching(X, noun_act).
effigy(X, noun_artifact) :- effigy(X),not abnormal_d_artifact(X),not -effigy(X, noun_artifact).
effigy(X, noun_artifact) :- god(X, noun_artifact).
emperor(X, noun_animal) :- emperor(X),not -emperor(X, noun_animal),-emperor(X, noun_person),-emperor(X, noun_food).
emperor(X, noun_animal) :- emperor(X),not abnormal_d_animal(X),not -emperor(X, noun_animal).
emperor(X, noun_food) :- emperor(X),not -emperor(X, noun_food),-emperor(X, noun_person),not emperor(X, noun_animal).
emperor(X, noun_food) :- emperor(X),not abnormal_d_food(X),not -emperor(X, noun_food).
emperor(X, noun_person) :- emperor(X),not abnormal_d_person(X),not -emperor(X, noun_person).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
excommunication(X, noun_act) :- excommunication(X),not -excommunication(X, noun_act),-excommunication(X, noun_state).
excommunication(X, noun_act) :- excommunication(X),not abnormal_d_act(X),not -excommunication(X, noun_act).
excommunication(X, noun_state) :- excommunication(X),not abnormal_d_state(X),not -excommunication(X, noun_state).
final_judgment(X, noun_act) :- condemnation(X, noun_act).
final_judgment(X, noun_act) :- final_judgment(X),not abnormal_d_act(X),not -final_judgment(X, noun_act).
food(X, noun_food) :- food(X),not abnormal_d_food(X),not -food(X, noun_food).
food(X, noun_food) :- produce(X, noun_food).
freedom(X, noun_state) :- freedom(X),not abnormal_d_state(X),not -freedom(X, noun_state).
function(X, noun_relation) :- function(X),not abnormal_d_relation(X),not -function(X, noun_relation).
function(X, noun_relation) :- trigonometric_function(X, noun_relation).
god(X, noun_artifact) :- god(X),not -god(X, noun_artifact),-god(X, noun_person).
god(X, noun_artifact) :- god(X),not abnormal_d_artifact(X),not -god(X, noun_artifact).
god(X, noun_person) :- god(X),not abnormal_d_person(X),not -god(X, noun_person).
grape(X, noun_food) :- grape(X),not abnormal_d_food(X),not -grape(X, noun_food).
grape(X, noun_food) :- vinifera_grape(X, noun_food).
gratification(X, noun_act) :- gratification(X),not abnormal_d_act(X),not -gratification(X, noun_act).
gratification(X, noun_act) :- indulgence(X, noun_act).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- social_group(X, noun_group).
group_action(X, noun_act) :- group_action(X),not abnormal_d_act(X),not -group_action(X, noun_act).
group_action(X, noun_act) :- social_control(X, noun_act).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
immorality(X, noun_attribute) :- immorality(X),not abnormal_d_attribute(X),not -immorality(X, noun_attribute).
immorality(X, noun_attribute) :- unrighteousness(X, noun_attribute).
implementation(X, noun_act) :- implementation(X),not abnormal_d_act(X),not -implementation(X, noun_act).
implementation(X, noun_act) :- practice(X, noun_act).
indicator(X, noun_communication) :- indicator(X),not abnormal_d_communication(X),not -indicator(X, noun_communication).
indicator(X, noun_communication) :- reference_point(X, noun_communication).
indiscipline(X, noun_attribute) :- indiscipline(X),not abnormal_d_attribute(X),not -indiscipline(X, noun_attribute).
indiscipline(X, noun_attribute) :- indulgence(X, noun_attribute).
indulgence(X, noun_act) :- indulgence(X),not -indulgence(X, noun_act),-indulgence(X, noun_attribute).
indulgence(X, noun_act) :- indulgence(X),not abnormal_d_act(X),not -indulgence(X, noun_act).
indulgence(X, noun_attribute) :- indulgence(X),not abnormal_d_attribute(X),not -indulgence(X, noun_attribute).
insect(X, noun_animal) :- insect(X),not abnormal_d_animal(X),not -insect(X, noun_animal).
insect(X, noun_animal) :- lepidopterous_insect(X, noun_animal).
intellectual(X, noun_person) :- intellectual(X),not abnormal_d_person(X),not -intellectual(X, noun_person).
intellectual(X, noun_person) :- scholar(X, noun_person).
invertebrate(X, noun_animal) :- arthropod(X, noun_animal).
invertebrate(X, noun_animal) :- invertebrate(X),not abnormal_d_animal(X),not -invertebrate(X, noun_animal).
judgment(X, noun_act) :- disapproval(X, noun_act).
judgment(X, noun_act) :- final_judgment(X, noun_act).
judgment(X, noun_act) :- judgment(X),not abnormal_d_act(X),not -judgment(X, noun_act).
know_how(X, noun_cognition) :- know_how(X),not abnormal_d_cognition(X),not -know_how(X, noun_cognition).
know_how(X, noun_cognition) :- method(X, noun_cognition).
knowledge_domain(X, noun_cognition) :- discipline(X, noun_cognition).
knowledge_domain(X, noun_cognition) :- knowledge_domain(X),not abnormal_d_cognition(X),not -knowledge_domain(X, noun_cognition).
leader(X, noun_person) :- leader(X),not abnormal_d_person(X),not -leader(X, noun_person).
leader(X, noun_person) :- spiritual_leader(X, noun_person).
leader(X, noun_person) :- superior(X, noun_person).
learned_profession(X, noun_act) :- learned_profession(X),not abnormal_d_act(X),not -learned_profession(X, noun_act).
learned_profession(X, noun_act) :- theology(X, noun_act).
legal_right(X, noun_attribute) :- claim(X, noun_attribute).
legal_right(X, noun_attribute) :- legal_right(X),not abnormal_d_attribute(X),not -legal_right(X, noun_attribute).
lepidopterous_insect(X, noun_animal) :- butterfly(X, noun_animal).
lepidopterous_insect(X, noun_animal) :- lepidopterous_insect(X),not abnormal_d_animal(X),not -lepidopterous_insect(X, noun_animal).
lepidopterous_insect(X, noun_animal) :- moth(X, noun_animal).
letter(X, noun_communication) :- letter(X),not abnormal_d_communication(X),not -letter(X, noun_communication).
letter(X, noun_communication) :- sin(X, noun_communication).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
martin_luther(X, noun_person) :- martin_luther(X),not abnormal_d_person(X),not -martin_luther(X, noun_person).
mathematical_notation(X, noun_communication) :- mathematical_notation(X),not abnormal_d_communication(X),not -mathematical_notation(X, noun_communication).
mathematical_notation(X, noun_communication) :- power(X, noun_communication).
mathematical_relation(X, noun_relation) :- function(X, noun_relation).
mathematical_relation(X, noun_relation) :- mathematical_relation(X),not abnormal_d_relation(X),not -mathematical_relation(X, noun_relation).
medium_of_exchange(X, noun_possession) :- currency(X, noun_possession).
medium_of_exchange(X, noun_possession) :- medium_of_exchange(X),not abnormal_d_possession(X),not -medium_of_exchange(X, noun_possession).
medium_of_exchange(X, noun_possession) :- money(X, noun_possession).
message(X, noun_communication) :- disapproval(X, noun_communication).
message(X, noun_communication) :- message(X),not abnormal_d_communication(X),not -message(X, noun_communication).
message(X, noun_communication) :- offer(X, noun_communication).
message(X, noun_communication) :- proposal(X, noun_communication).
message(X, noun_communication) :- refusal(X, noun_communication).
message(X, noun_communication) :- request(X, noun_communication).
message(X, noun_communication) :- statement(X, noun_communication).
method(X, noun_cognition) :- method(X),not abnormal_d_cognition(X),not -method(X, noun_cognition).
method(X, noun_cognition) :- system(X, noun_cognition).
money(X, noun_possession) :- money(X),not abnormal_d_possession(X),not -money(X, noun_possession).
moth(X, noun_animal) :- moth(X),not abnormal_d_animal(X),not -moth(X, noun_animal).
moth(X, noun_animal) :- saturniid(X, noun_animal).
movement(X, noun_group) :- movement(X),not abnormal_d_group(X),not -movement(X, noun_group).
movement(X, noun_group) :- religious_movement(X, noun_group).
musician(X, noun_person) :- composer(X, noun_person).
musician(X, noun_person) :- musician(X),not abnormal_d_person(X),not -musician(X, noun_person).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X, noun_phenomenon).
nature(X, noun_attribute) :- disposition(X, noun_attribute).
nature(X, noun_attribute) :- nature(X),not abnormal_d_attribute(X),not -nature(X, noun_attribute).
notation(X, noun_communication) :- mathematical_notation(X, noun_communication).
notation(X, noun_communication) :- notation(X),not abnormal_d_communication(X),not -notation(X, noun_communication).
nymphalid(X, noun_animal) :- emperor(X, noun_animal).
nymphalid(X, noun_animal) :- nymphalid(X),not abnormal_d_animal(X),not -nymphalid(X, noun_animal).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
occupation(X, noun_act) :- occupation(X),not abnormal_d_act(X),not -occupation(X, noun_act).
occupation(X, noun_act) :- profession(X, noun_act).
offer(X, noun_communication) :- offer(X),not abnormal_d_communication(X),not -offer(X, noun_communication).
offer(X, noun_communication) :- proposition(X, noun_communication).
organism(X, noun_tops) :- animal(X, noun_tops).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
outlaw(X, noun_person) :- outlaw(X),not abnormal_d_person(X),not -outlaw(X, noun_person).
permissiveness(X, noun_attribute) :- indulgence(X, noun_attribute).
permissiveness(X, noun_attribute) :- permissiveness(X),not abnormal_d_attribute(X),not -permissiveness(X, noun_attribute).
person(X, noun_tops) :- bad_person(X, noun_person).
person(X, noun_tops) :- capitalist(X, noun_person).
person(X, noun_tops) :- communicator(X, noun_person).
person(X, noun_tops) :- creator(X, noun_person).
person(X, noun_tops) :- intellectual(X, noun_person).
person(X, noun_tops) :- leader(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
person(X, noun_tops) :- ruler(X, noun_person).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- causal_agent(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
physical_phenomenon(X, noun_phenomenon) :- physical_phenomenon(X),not abnormal_d_phenomenon(X),not -physical_phenomenon(X, noun_phenomenon).
physical_phenomenon(X, noun_phenomenon) :- power(X, noun_phenomenon).
play(X, noun_act) :- indulgence(X, noun_act).
play(X, noun_act) :- play(X),not abnormal_d_act(X),not -play(X, noun_act).
poet(X, noun_person) :- poet(X),not abnormal_d_person(X),not -poet(X, noun_person).
poet(X, noun_person) :- pope(X, noun_person).
political_unit(X, noun_group) :- political_unit(X),not abnormal_d_group(X),not -political_unit(X, noun_group).
political_unit(X, noun_group) :- state(X, noun_group).
pope(X, noun_person) :- pope(X),not abnormal_d_person(X),not -pope(X, noun_person).
possession(X, noun_tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_tops).
possession(X, noun_tops) :- property(X, noun_possession).
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
practice(X, noun_act) :- practice(X),not abnormal_d_act(X),not -practice(X, noun_act).
practice(X, noun_cognition) :- practice(X),not -practice(X, noun_cognition),-practice(X, noun_act).
practice(X, noun_cognition) :- practice(X),not abnormal_d_cognition(X),not -practice(X, noun_cognition).
priest(X, noun_person) :- priest(X),not abnormal_d_person(X),not -priest(X, noun_person).
process(X, noun_tops) :- economic_process(X, noun_process).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
produce(X, noun_food) :- edible_fruit(X, noun_food).
produce(X, noun_food) :- produce(X),not abnormal_d_food(X),not -produce(X, noun_food).
profession(X, noun_act) :- education(X, noun_act).
profession(X, noun_act) :- learned_profession(X, noun_act).
profession(X, noun_act) :- profession(X),not abnormal_d_act(X),not -profession(X, noun_act).
property(X, noun_attribute) :- property(X),not -property(X, noun_attribute),-property(X, noun_possession).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
property(X, noun_attribute) :- strength(X, noun_attribute).
property(X, noun_possession) :- property(X),not abnormal_d_possession(X),not -property(X, noun_possession).
property(X, noun_possession) :- wealth(X, noun_possession).
proposal(X, noun_communication) :- proposal(X),not abnormal_d_communication(X),not -proposal(X, noun_communication).
proposal(X, noun_communication) :- proposition(X, noun_communication).
proposition(X, noun_act) :- proposition(X),not -proposition(X, noun_act),-proposition(X, noun_communication).
proposition(X, noun_act) :- proposition(X),not abnormal_d_act(X),not -proposition(X, noun_act).
proposition(X, noun_communication) :- proposition(X),not abnormal_d_communication(X),not -proposition(X, noun_communication).
protestant_reformation(X, noun_group) :- protestant_reformation(X),not abnormal_d_group(X),not -protestant_reformation(X, noun_group).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
punishment(X, noun_act) :- punishment(X),not abnormal_d_act(X),not -punishment(X, noun_act).
quality(X, noun_attribute) :- immorality(X, noun_attribute).
quality(X, noun_attribute) :- power(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
quality(X, noun_attribute) :- usefulness(X, noun_attribute).
recovery(X, noun_act) :- recovery(X),not abnormal_d_act(X),not -recovery(X, noun_act).
recovery(X, noun_act) :- rescue(X, noun_act).
redemption(X, noun_act) :- absolution(X, noun_act).
redemption(X, noun_act) :- redemption(X),not abnormal_d_act(X),not -redemption(X, noun_act).
reference_point(X, noun_communication) :- reference_point(X),not abnormal_d_communication(X),not -reference_point(X, noun_communication).
reference_point(X, noun_communication) :- standard(X, noun_communication).
refusal(X, noun_communication) :- refusal(X),not abnormal_d_communication(X),not -refusal(X, noun_communication).
rejection(X, noun_act) :- banishment(X, noun_act).
rejection(X, noun_act) :- rejection(X),not abnormal_d_act(X),not -rejection(X, noun_act).
rejection(X, noun_state) :- excommunication(X, noun_state).
rejection(X, noun_state) :- rejection(X),not -rejection(X, noun_state),-rejection(X, noun_act).
rejection(X, noun_state) :- rejection(X),not abnormal_d_state(X),not -rejection(X, noun_state).
relation(X, noun_tops) :- mathematical_relation(X, noun_relation).
relation(X, noun_tops) :- possession(X, noun_tops).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
religious_movement(X, noun_group) :- protestant_reformation(X, noun_group).
religious_movement(X, noun_group) :- religious_movement(X),not abnormal_d_group(X),not -religious_movement(X, noun_group).
representation(X, noun_artifact) :- effigy(X, noun_artifact).
representation(X, noun_artifact) :- representation(X),not abnormal_d_artifact(X),not -representation(X, noun_artifact).
request(X, noun_communication) :- demand(X, noun_communication).
request(X, noun_communication) :- request(X),not abnormal_d_communication(X),not -request(X, noun_communication).
rescue(X, noun_act) :- redemption(X, noun_act).
rescue(X, noun_act) :- rescue(X),not abnormal_d_act(X),not -rescue(X, noun_act).
right(X, noun_attribute) :- claim(X, noun_attribute).
right(X, noun_attribute) :- legal_right(X, noun_attribute).
right(X, noun_attribute) :- right(X),not abnormal_d_attribute(X),not -right(X, noun_attribute).
ruler(X, noun_person) :- ruler(X),not abnormal_d_person(X),not -ruler(X, noun_person).
ruler(X, noun_person) :- sovereign(X, noun_person).
sacred_text(X, noun_communication) :- sacred_text(X),not abnormal_d_communication(X),not -sacred_text(X, noun_communication).
sacred_text(X, noun_communication) :- writings(X, noun_communication).
satisfaction(X, noun_act) :- gratification(X, noun_act).
satisfaction(X, noun_act) :- satisfaction(X),not abnormal_d_act(X),not -satisfaction(X, noun_act).
saturniid(X, noun_animal) :- emperor(X, noun_animal).
saturniid(X, noun_animal) :- saturniid(X),not abnormal_d_animal(X),not -saturniid(X, noun_animal).
scholar(X, noun_person) :- scholar(X),not abnormal_d_person(X),not -scholar(X, noun_person).
scholar(X, noun_person) :- theologian(X, noun_person).
semitic_deity(X, noun_person) :- semitic_deity(X),not abnormal_d_person(X),not -semitic_deity(X, noun_person).
semitic_deity(X, noun_person) :- sin(X, noun_person).
signal(X, noun_communication) :- indicator(X, noun_communication).
signal(X, noun_communication) :- signal(X),not abnormal_d_communication(X),not -signal(X, noun_communication).
signal(X, noun_communication) :- symbol(X, noun_communication).
sin(X, noun_act) :- sin(X),not -sin(X, noun_act),-sin(X, noun_attribute),-sin(X, noun_relation),-sin(X, noun_person),-sin(X, noun_communication).
sin(X, noun_act) :- sin(X),not abnormal_d_act(X),not -sin(X, noun_act).
sin(X, noun_attribute) :- sin(X),not abnormal_d_attribute(X),not -sin(X, noun_attribute).
sin(X, noun_communication) :- sin(X),not -sin(X, noun_communication),-sin(X, noun_attribute),-sin(X, noun_relation),-sin(X, noun_person),not sin(X, noun_act).
sin(X, noun_communication) :- sin(X),not abnormal_d_communication(X),not -sin(X, noun_communication).
sin(X, noun_person) :- sin(X),not -sin(X, noun_person),-sin(X, noun_attribute),-sin(X, noun_relation),not sin(X, noun_communication),not sin(X, noun_act).
sin(X, noun_person) :- sin(X),not abnormal_d_person(X),not -sin(X, noun_person).
sin(X, noun_relation) :- sin(X),not -sin(X, noun_relation),-sin(X, noun_attribute),not sin(X, noun_person),not sin(X, noun_communication),not sin(X, noun_act).
sin(X, noun_relation) :- sin(X),not abnormal_d_relation(X),not -sin(X, noun_relation).
situation(X, noun_state) :- rejection(X, noun_state).
situation(X, noun_state) :- situation(X),not abnormal_d_state(X),not -situation(X, noun_state).
social_control(X, noun_act) :- duty(X, noun_act).
social_control(X, noun_act) :- punishment(X, noun_act).
social_control(X, noun_act) :- social_control(X),not abnormal_d_act(X),not -social_control(X, noun_act).
social_group(X, noun_group) :- movement(X, noun_group).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
solid(X, noun_substance) :- food(X, noun_food).
solid(X, noun_substance) :- solid(X),not abnormal_d_substance(X),not -solid(X, noun_substance).
sovereign(X, noun_person) :- emperor(X, noun_person).
sovereign(X, noun_person) :- sovereign(X),not abnormal_d_person(X),not -sovereign(X, noun_person).
speech(X, noun_communication) :- discussion(X, noun_communication).
speech(X, noun_communication) :- speech(X),not abnormal_d_communication(X),not -speech(X, noun_communication).
speech_act(X, noun_communication) :- denial(X, noun_communication).
speech_act(X, noun_communication) :- denunciation(X, noun_communication).
speech_act(X, noun_communication) :- proposition(X, noun_communication).
speech_act(X, noun_communication) :- speech_act(X),not abnormal_d_communication(X),not -speech_act(X, noun_communication).
spiritual_being(X, noun_person) :- deity(X, noun_person).
spiritual_being(X, noun_person) :- god(X, noun_person).
spiritual_being(X, noun_person) :- spiritual_being(X),not abnormal_d_person(X),not -spiritual_being(X, noun_person).
spiritual_leader(X, noun_person) :- clergyman(X, noun_person).
spiritual_leader(X, noun_person) :- pope(X, noun_person).
spiritual_leader(X, noun_person) :- priest(X, noun_person).
spiritual_leader(X, noun_person) :- spiritual_leader(X),not abnormal_d_person(X),not -spiritual_leader(X, noun_person).
standard(X, noun_communication) :- medium_of_exchange(X, noun_possession).
standard(X, noun_communication) :- standard(X),not abnormal_d_communication(X),not -standard(X, noun_communication).
state(X, noun_group) :- power(X, noun_group).
state(X, noun_group) :- state(X),not -state(X, noun_group),-state(X, noun_tops).
state(X, noun_group) :- state(X),not abnormal_d_group(X),not -state(X, noun_group).
state(X, noun_tops) :- condition(X, noun_state).
state(X, noun_tops) :- freedom(X, noun_state).
state(X, noun_tops) :- power(X, noun_state).
state(X, noun_tops) :- situation(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
statement(X, noun_communication) :- declaration(X, noun_communication).
statement(X, noun_communication) :- proposition(X, noun_communication).
statement(X, noun_communication) :- statement(X),not abnormal_d_communication(X),not -statement(X, noun_communication).
strength(X, noun_attribute) :- power(X, noun_attribute).
strength(X, noun_attribute) :- strength(X),not abnormal_d_attribute(X),not -strength(X, noun_attribute).
substance(X, noun_tops) :- solid(X, noun_substance).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
superior(X, noun_person) :- god(X, noun_person).
superior(X, noun_person) :- superior(X),not abnormal_d_person(X),not -superior(X, noun_person).
symbol(X, noun_communication) :- symbol(X),not abnormal_d_communication(X),not -symbol(X, noun_communication).
symbol(X, noun_communication) :- written_symbol(X, noun_communication).
system(X, noun_cognition) :- system(X),not abnormal_d_cognition(X),not -system(X, noun_cognition).
system(X, noun_cognition) :- theology(X, noun_cognition).
teaching(X, noun_act) :- teaching(X),not abnormal_d_act(X),not -teaching(X, noun_act).
teaching(X, noun_cognition) :- teaching(X),not -teaching(X, noun_cognition),-teaching(X, noun_act).
teaching(X, noun_cognition) :- teaching(X),not abnormal_d_cognition(X),not -teaching(X, noun_cognition).
theologian(X, noun_person) :- martin_luther(X, noun_person).
theologian(X, noun_person) :- theologian(X),not abnormal_d_person(X),not -theologian(X, noun_person).
theology(X, noun_act) :- theology(X),not -theology(X, noun_act),-theology(X, noun_cognition).
theology(X, noun_act) :- theology(X),not abnormal_d_act(X),not -theology(X, noun_act).
theology(X, noun_cognition) :- theology(X),not abnormal_d_cognition(X),not -theology(X, noun_cognition).
training(X, noun_act) :- practice(X, noun_act).
training(X, noun_act) :- training(X),not abnormal_d_act(X),not -training(X, noun_act).
trait(X, noun_attribute) :- indiscipline(X, noun_attribute).
trait(X, noun_attribute) :- nature(X, noun_attribute).
trait(X, noun_attribute) :- trait(X),not abnormal_d_attribute(X),not -trait(X, noun_attribute).
transgression(X, noun_act) :- sin(X, noun_act).
transgression(X, noun_act) :- transgression(X),not abnormal_d_act(X),not -transgression(X, noun_act).
trigonometric_function(X, noun_relation) :- sin(X, noun_relation).
trigonometric_function(X, noun_relation) :- trigonometric_function(X),not abnormal_d_relation(X),not -trigonometric_function(X, noun_relation).
undertaking(X, noun_act) :- proposition(X, noun_act).
undertaking(X, noun_act) :- undertaking(X),not abnormal_d_act(X),not -undertaking(X, noun_act).
unit(X, noun_group) :- political_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
unrighteousness(X, noun_attribute) :- sin(X, noun_attribute).
unrighteousness(X, noun_attribute) :- unrighteousness(X),not abnormal_d_attribute(X),not -unrighteousness(X, noun_attribute).
unsusceptibility(X, noun_state) :- freedom(X, noun_state).
unsusceptibility(X, noun_state) :- unsusceptibility(X),not abnormal_d_state(X),not -unsusceptibility(X, noun_state).
use(X, noun_act) :- practice(X, noun_act).
use(X, noun_act) :- use(X),not abnormal_d_act(X),not -use(X, noun_act).
usefulness(X, noun_attribute) :- usefulness(X),not abnormal_d_attribute(X),not -usefulness(X, noun_attribute).
vinifera_grape(X, noun_food) :- emperor(X, noun_food).
vinifera_grape(X, noun_food) :- vinifera_grape(X),not abnormal_d_food(X),not -vinifera_grape(X, noun_food).
wealth(X, noun_possession) :- money(X, noun_possession).
wealth(X, noun_possession) :- wealth(X),not abnormal_d_possession(X),not -wealth(X, noun_possession).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
work(X, noun_act) :- undertaking(X, noun_act).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
writer(X, noun_person) :- poet(X, noun_person).
writer(X, noun_person) :- writer(X),not abnormal_d_person(X),not -writer(X, noun_person).
writing(X, noun_communication) :- notation(X, noun_communication).
writing(X, noun_communication) :- sacred_text(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
writings(X, noun_communication) :- writings(X),not abnormal_d_communication(X),not -writings(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).
written_symbol(X, noun_communication) :- character(X, noun_communication).
written_symbol(X, noun_communication) :- written_symbol(X),not abnormal_d_communication(X),not -written_symbol(X, noun_communication).
wrongdoer(X, noun_person) :- outlaw(X, noun_person).
wrongdoer(X, noun_person) :- wrongdoer(X),not abnormal_d_person(X),not -wrongdoer(X, noun_person).
wrongdoing(X, noun_act) :- transgression(X, noun_act).
wrongdoing(X, noun_act) :- wrongdoing(X),not abnormal_d_act(X),not -wrongdoing(X, noun_act).
