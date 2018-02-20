%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(casimir_pulaski, general).
_is(casimir_pulaski, hero).
_is(maria_curie, first_female_recipient).
_is(maria_curie, recipient).
_is(one_of_the_most_famous_people, maria_sklodowska_curie).
_is(people, maria_sklodowska_curie).
_mod(musician, famous).
_mod(people, one_of_the_most_famous).
_mod(prize, nobel).
_mod(recognition, international).
_mod(war, american).
_mod(war, revolutionary).
_possess(chopin, family).
_possess(maria_curie, research).
_property('60_km', from(warsaw)).
_property(achieve, for(research)).
_property(achieve, on(radioactivity)).
_property(bear, about('60_km')).
_property(bear, in(village)).
_property(bear, in(warsaw)).
_property(general, of(war)).
_property(move, to(city)).
_property(move, with(family)).
_property(recipient, of(prize)).
_property(village, of(zelazowa_wola)).
_property(warsaw, in(1745)).
_relation(3, recipient, _conj).
_relation(8, 7, _clause).
_relation(people, 1, _clause).
chopin(chopin).
city(city).
event(11, bear, null, casimir_pulaski).
event(3, achieve, maria_curie, international_recognition).
event(3, achieve, maria_curie, recognition).
event(5, 'include', famous_musician, frederic_chopin).
event(5, 'include', famous_musician, wladyslaw_szpilman).
event(5, 'include', musician, frederic_chopin).
event(5, 'include', musician, wladyslaw_szpilman).
event(7, bear, null, chopin).
event(8, move, chopin, null).
family(family).
general(casimir_pulaski).
hero(casimir_pulaski).
hero(hero).
musician(musician).
people(people).
polish(polish).
prize(prize).
radioactivity(radioactivity).
recognition(recognition).
research(research).
time(1745).
village(village).
war(war).
warsaw(warsaw).
%-------------------------------------------------------%
%Rules%
%-------------------------------------------------------%
year(1745).
%%-------------------------------------------------------%%
%%Ontology%%
%%-------------------------------------------------------%%
ability(X, noun_cognition) :- ability(X),not abnormal_d_cognition(X),not -ability(X, noun_cognition).
ability(X, noun_cognition) :- creativity(X, noun_cognition).
abstract_entity(X, noun_tops) :- abstract_entity(X),not abnormal_d_tops(X),not -abstract_entity(X, noun_tops).
abstract_entity(X, noun_tops) :- abstraction(X, noun_tops).
abstraction(X, noun_tops) :- abstraction(X),not abnormal_d_tops(X),not -abstraction(X, noun_tops).
abstraction(X, noun_tops) :- attribute(X, noun_tops).
abstraction(X, noun_tops) :- communication(X, noun_tops).
abstraction(X, noun_tops) :- group(X, noun_tops).
abstraction(X, noun_tops) :- psychological_feature(X, noun_tops).
abstraction(X, noun_tops) :- relation(X, noun_tops).
acceptance(X, noun_state) :- acceptance(X),not abnormal_d_state(X),not -acceptance(X, noun_state).
acceptance(X, noun_state) :- recognition(X, noun_state).
acquisition(X, noun_possession) :- acquisition(X),not abnormal_d_possession(X),not -acquisition(X, noun_possession).
acquisition(X, noun_possession) :- gift(X, noun_possession).
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
act(X, noun_tops) :- activity(X, noun_act).
act(X, noun_tops) :- group_action(X, noun_act).
acting(X, noun_act) :- acting(X),not abnormal_d_act(X),not -acting(X, noun_act).
acting(X, noun_act) :- portrayal(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- choice(X, noun_act).
activity(X, noun_act) :- acting(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
administrative_district(X, noun_location) :- administrative_district(X),not abnormal_d_location(X),not -administrative_district(X, noun_location).
administrative_district(X, noun_location) :- city(X, noun_location).
appointment(X, noun_act) :- appointment(X),not abnormal_d_act(X),not -appointment(X, noun_act).
appointment(X, noun_act) :- recognition(X, noun_act).
approval(X, noun_communication) :- approval(X),not abnormal_d_communication(X),not -approval(X, noun_communication).
approval(X, noun_communication) :- recognition(X, noun_communication).
artist(X, noun_person) :- artist(X),not abnormal_d_person(X),not -artist(X, noun_person).
artist(X, noun_person) :- musician(X, noun_person).
association(X, noun_group) :- association(X),not abnormal_d_group(X),not -association(X, noun_group).
association(X, noun_group) :- family(X, noun_group).
attitude(X, noun_cognition) :- attitude(X),not abnormal_d_cognition(X),not -attitude(X, noun_cognition).
attitude(X, noun_cognition) :- credence(X, noun_cognition).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- property(X, noun_attribute).
attribute(X, noun_tops) :- state(X, noun_tops).
auditory_communication(X, noun_communication) :- auditory_communication(X),not abnormal_d_communication(X),not -auditory_communication(X, noun_communication).
auditory_communication(X, noun_communication) :- music(X, noun_communication).
auditory_communication(X, noun_communication) :- speech(X, noun_communication).
award(X, noun_communication) :- award(X),not abnormal_d_communication(X),not -award(X, noun_communication).
award(X, noun_communication) :- prize(X, noun_artifact).
balto_slavic(X, noun_communication) :- balto_slavic(X),not abnormal_d_communication(X),not -balto_slavic(X, noun_communication).
balto_slavic(X, noun_communication) :- slavic(X, noun_communication).
basic_cognitive_process(X, noun_cognition) :- basic_cognitive_process(X),not abnormal_d_cognition(X),not -basic_cognitive_process(X, noun_cognition).
basic_cognitive_process(X, noun_cognition) :- memory(X, noun_cognition).
biological_group(X, noun_group) :- biological_group(X),not abnormal_d_group(X),not -biological_group(X, noun_group).
biological_group(X, noun_group) :- taxonomic_group(X, noun_group).
brightness(X, noun_attribute) :- brightness(X),not abnormal_d_attribute(X),not -brightness(X, noun_attribute).
brightness(X, noun_attribute) :- radiance(X, noun_attribute).
campaign(X, noun_act) :- campaign(X),not abnormal_d_act(X),not -campaign(X, noun_act).
campaign(X, noun_act) :- war(X, noun_act).
character(X, noun_cognition) :- character(X),not abnormal_d_cognition(X),not -character(X, noun_cognition).
character(X, noun_cognition) :- hero(X, noun_cognition).
choice(X, noun_act) :- choice(X),not abnormal_d_act(X),not -choice(X, noun_act).
choice(X, noun_act) :- decision(X, noun_act).
chopin(X, noun_communication) :- chopin(X),not abnormal_d_communication(X),not -chopin(X, noun_communication).
chopin(X, noun_person) :- chopin(X),not -chopin(X, noun_person),-chopin(X, noun_communication).
chopin(X, noun_person) :- chopin(X),not abnormal_d_person(X),not -chopin(X, noun_person).
city(X, noun_group) :- city(X),not -city(X, noun_group),-city(X, noun_location).
city(X, noun_group) :- city(X),not abnormal_d_group(X),not -city(X, noun_group).
city(X, noun_location) :- city(X),not abnormal_d_location(X),not -city(X, noun_location).
cognition(X, noun_tops) :- ability(X, noun_cognition).
cognition(X, noun_tops) :- attitude(X, noun_cognition).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- process(X, noun_cognition).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- family(X, noun_group).
communication(X, noun_tops) :- auditory_communication(X, noun_communication).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- language(X, noun_communication).
communication(X, noun_tops) :- message(X, noun_communication).
communication(X, noun_tops) :- signal(X, noun_communication).
community(X, noun_group) :- community(X),not abnormal_d_group(X),not -community(X, noun_group).
community(X, noun_group) :- village(X, noun_group).
compound(X, noun_substance) :- compound(X),not abnormal_d_substance(X),not -compound(X, noun_substance).
compound(X, noun_substance) :- formulation(X, noun_substance).
conflict(X, noun_act) :- conflict(X),not abnormal_d_act(X),not -conflict(X, noun_act).
conflict(X, noun_act) :- war(X, noun_act).
creativity(X, noun_cognition) :- creativity(X),not abnormal_d_cognition(X),not -creativity(X, noun_cognition).
creativity(X, noun_cognition) :- imagination(X, noun_cognition).
creator(X, noun_person) :- artist(X, noun_person).
creator(X, noun_person) :- creator(X),not abnormal_d_person(X),not -creator(X, noun_person).
credence(X, noun_cognition) :- credence(X),not abnormal_d_cognition(X),not -credence(X, noun_cognition).
credence(X, noun_cognition) :- recognition(X, noun_cognition).
decision(X, noun_act) :- appointment(X, noun_act).
decision(X, noun_act) :- decision(X),not abnormal_d_act(X),not -decision(X, noun_act).
defender(X, noun_person) :- defender(X),not abnormal_d_person(X),not -defender(X, noun_person).
defender(X, noun_person) :- hero(X, noun_person).
diplomacy(X, noun_communication) :- diplomacy(X),not abnormal_d_communication(X),not -diplomacy(X, noun_communication).
diplomacy(X, noun_communication) :- recognition(X, noun_communication).
discussion(X, noun_communication) :- discussion(X),not abnormal_d_communication(X),not -discussion(X, noun_communication).
discussion(X, noun_communication) :- negotiation(X, noun_communication).
dish(X, noun_food) :- dish(X),not abnormal_d_food(X),not -dish(X, noun_food).
dish(X, noun_food) :- snack_food(X, noun_food).
district(X, noun_location) :- administrative_district(X, noun_location).
district(X, noun_location) :- district(X),not abnormal_d_location(X),not -district(X, noun_location).
emission(X, noun_process) :- emission(X),not abnormal_d_process(X),not -emission(X, noun_process).
emission(X, noun_process) :- radioactivity(X, noun_process).
entertainer(X, noun_person) :- entertainer(X),not abnormal_d_person(X),not -entertainer(X, noun_person).
entertainer(X, noun_person) :- performer(X, noun_person).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
family(X, noun_group) :- family(X),not abnormal_d_group(X),not -family(X, noun_group).
family(X, noun_group) :- people(X, noun_group).
family(X, noun_person) :- family(X),not -family(X, noun_person),-family(X, noun_group).
family(X, noun_person) :- family(X),not abnormal_d_person(X),not -family(X, noun_person).
food(X, noun_tops) :- food(X),not abnormal_d_tops(X),not -food(X, noun_tops).
food(X, noun_tops) :- nutriment(X, noun_food).
formulation(X, noun_substance) :- formulation(X),not abnormal_d_substance(X),not -formulation(X, noun_substance).
formulation(X, noun_substance) :- polish(X, noun_substance).
gathering(X, noun_group) :- community(X, noun_group).
gathering(X, noun_group) :- gathering(X),not abnormal_d_group(X),not -gathering(X, noun_group).
gathering(X, noun_group) :- municipality(X, noun_group).
genealogy(X, noun_group) :- genealogy(X),not abnormal_d_group(X),not -genealogy(X, noun_group).
genealogy(X, noun_group) :- lineage(X, noun_group).
geographical_area(X, noun_location) :- geographical_area(X),not abnormal_d_location(X),not -geographical_area(X, noun_location).
geographical_area(X, noun_location) :- settlement(X, noun_location).
geographical_area(X, noun_location) :- urban_area(X, noun_location).
gift(X, noun_possession) :- gift(X),not abnormal_d_possession(X),not -gift(X, noun_possession).
gift(X, noun_possession) :- prize(X, noun_possession).
group(X, noun_tops) :- biological_group(X, noun_group).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- people(X, noun_group).
group(X, noun_tops) :- social_group(X, noun_group).
group_action(X, noun_act) :- conflict(X, noun_act).
group_action(X, noun_act) :- group_action(X),not abnormal_d_act(X),not -group_action(X, noun_act).
group_action(X, noun_act) :- military_action(X, noun_act).
hero(X, noun_cognition) :- hero(X),not abnormal_d_cognition(X),not -hero(X, noun_cognition).
hero(X, noun_food) :- hero(X),not -hero(X, noun_food),-hero(X, noun_cognition),-hero(X, noun_person).
hero(X, noun_food) :- hero(X),not abnormal_d_food(X),not -hero(X, noun_food).
hero(X, noun_person) :- hero(X),not -hero(X, noun_person),-hero(X, noun_cognition),not hero(X, noun_food).
hero(X, noun_person) :- hero(X),not abnormal_d_person(X),not -hero(X, noun_person).
higher_cognitive_process(X, noun_cognition) :- higher_cognitive_process(X),not abnormal_d_cognition(X),not -higher_cognitive_process(X, noun_cognition).
higher_cognitive_process(X, noun_cognition) :- knowing(X, noun_cognition).
higher_cognitive_process(X, noun_cognition) :- thinking(X, noun_cognition).
hostility(X, noun_state) :- hostility(X),not abnormal_d_state(X),not -hostility(X, noun_state).
hostility(X, noun_state) :- war(X, noun_state).
imaginary_being(X, noun_person) :- imaginary_being(X),not abnormal_d_person(X),not -imaginary_being(X, noun_person).
imaginary_being(X, noun_person) :- mythical_being(X, noun_person).
imagination(X, noun_cognition) :- imaginary_being(X, noun_person).
imagination(X, noun_cognition) :- imagination(X),not abnormal_d_cognition(X),not -imagination(X, noun_cognition).
indo_european(X, noun_communication) :- balto_slavic(X, noun_communication).
indo_european(X, noun_communication) :- indo_european(X),not abnormal_d_communication(X),not -indo_european(X, noun_communication).
investigation(X, noun_act) :- investigation(X),not abnormal_d_act(X),not -investigation(X, noun_act).
investigation(X, noun_act) :- research(X, noun_act).
kin(X, noun_group) :- family(X, noun_group).
kin(X, noun_group) :- genealogy(X, noun_group).
kin(X, noun_group) :- kin(X),not abnormal_d_group(X),not -kin(X, noun_group).
knowing(X, noun_cognition) :- knowing(X),not abnormal_d_cognition(X),not -knowing(X, noun_cognition).
knowing(X, noun_cognition) :- understanding(X, noun_cognition).
language(X, noun_communication) :- language(X),not abnormal_d_communication(X),not -language(X, noun_communication).
language(X, noun_communication) :- natural_language(X, noun_communication).
leader(X, noun_person) :- hero(X, noun_person).
leader(X, noun_person) :- leader(X),not abnormal_d_person(X),not -leader(X, noun_person).
light(X, noun_attribute) :- brightness(X, noun_attribute).
light(X, noun_attribute) :- light(X),not abnormal_d_attribute(X),not -light(X, noun_attribute).
lineage(X, noun_group) :- family(X, noun_group).
lineage(X, noun_group) :- lineage(X),not abnormal_d_group(X),not -lineage(X, noun_group).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- region(X, noun_location).
memory(X, noun_cognition) :- memory(X),not abnormal_d_cognition(X),not -memory(X, noun_cognition).
memory(X, noun_cognition) :- recognition(X, noun_cognition).
message(X, noun_communication) :- approval(X, noun_communication).
message(X, noun_communication) :- message(X),not abnormal_d_communication(X),not -message(X, noun_communication).
military_action(X, noun_act) :- military_action(X),not abnormal_d_act(X),not -military_action(X, noun_act).
military_action(X, noun_act) :- war(X, noun_act).
municipality(X, noun_group) :- city(X, noun_group).
municipality(X, noun_group) :- municipality(X),not -municipality(X, noun_group),-municipality(X, noun_location).
municipality(X, noun_group) :- municipality(X),not abnormal_d_group(X),not -municipality(X, noun_group).
municipality(X, noun_location) :- city(X, noun_location).
municipality(X, noun_location) :- municipality(X),not abnormal_d_location(X),not -municipality(X, noun_location).
music(X, noun_communication) :- chopin(X, noun_communication).
music(X, noun_communication) :- music(X),not abnormal_d_communication(X),not -music(X, noun_communication).
musician(X, noun_person) :- musician(X),not abnormal_d_person(X),not -musician(X, noun_person).
mythical_being(X, noun_person) :- hero(X, noun_person).
mythical_being(X, noun_person) :- mythical_being(X),not abnormal_d_person(X),not -mythical_being(X, noun_person).
natural_language(X, noun_communication) :- indo_european(X, noun_communication).
natural_language(X, noun_communication) :- natural_language(X),not abnormal_d_communication(X),not -natural_language(X, noun_communication).
natural_phenomenon(X, noun_phenomenon) :- natural_phenomenon(X),not abnormal_d_phenomenon(X),not -natural_phenomenon(X, noun_phenomenon).
natural_phenomenon(X, noun_phenomenon) :- organic_phenomenon(X, noun_phenomenon).
natural_process(X, noun_process) :- natural_process(X),not abnormal_d_process(X),not -natural_process(X, noun_process).
natural_process(X, noun_process) :- release(X, noun_process).
negotiation(X, noun_communication) :- diplomacy(X, noun_communication).
negotiation(X, noun_communication) :- negotiation(X),not abnormal_d_communication(X),not -negotiation(X, noun_communication).
nutriment(X, noun_food) :- dish(X, noun_food).
nutriment(X, noun_food) :- nutriment(X),not abnormal_d_food(X),not -nutriment(X, noun_food).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
organic_phenomenon(X, noun_phenomenon) :- organic_phenomenon(X),not abnormal_d_phenomenon(X),not -organic_phenomenon(X, noun_phenomenon).
organic_phenomenon(X, noun_phenomenon) :- recognition(X, noun_phenomenon).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- association(X, noun_group).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
organized_crime(X, noun_group) :- family(X, noun_group).
organized_crime(X, noun_group) :- organized_crime(X),not abnormal_d_group(X),not -organized_crime(X, noun_group).
people(X, noun_group) :- people(X),not abnormal_d_group(X),not -people(X, noun_group).
perfection(X, noun_state) :- perfection(X),not abnormal_d_state(X),not -perfection(X, noun_state).
perfection(X, noun_state) :- polish(X, noun_state).
performer(X, noun_person) :- musician(X, noun_person).
performer(X, noun_person) :- performer(X),not abnormal_d_person(X),not -performer(X, noun_person).
person(X, noun_tops) :- creator(X, noun_person).
person(X, noun_tops) :- entertainer(X, noun_person).
person(X, noun_tops) :- leader(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
person(X, noun_tops) :- preserver(X, noun_person).
person(X, noun_tops) :- relative(X, noun_person).
phenomenon(X, noun_tops) :- natural_phenomenon(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- substance(X, noun_tops).
polish(X, noun_attribute) :- polish(X),not abnormal_d_attribute(X),not -polish(X, noun_attribute).
polish(X, noun_communication) :- polish(X),not -polish(X, noun_communication),-polish(X, noun_attribute),-polish(X, noun_state),-polish(X, noun_substance).
polish(X, noun_communication) :- polish(X),not abnormal_d_communication(X),not -polish(X, noun_communication).
polish(X, noun_state) :- polish(X),not -polish(X, noun_state),-polish(X, noun_attribute),not polish(X, noun_substance),not polish(X, noun_communication).
polish(X, noun_state) :- polish(X),not abnormal_d_state(X),not -polish(X, noun_state).
polish(X, noun_substance) :- polish(X),not -polish(X, noun_substance),-polish(X, noun_attribute),-polish(X, noun_state),not polish(X, noun_communication).
polish(X, noun_substance) :- polish(X),not abnormal_d_substance(X),not -polish(X, noun_substance).
portrayal(X, noun_act) :- character(X, noun_cognition).
portrayal(X, noun_act) :- portrayal(X),not abnormal_d_act(X),not -portrayal(X, noun_act).
possession(X, noun_tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_tops).
possession(X, noun_tops) :- transferred_property(X, noun_possession).
preserver(X, noun_person) :- defender(X, noun_person).
preserver(X, noun_person) :- preserver(X),not abnormal_d_person(X),not -preserver(X, noun_person).
prize(X, noun_artifact) :- prize(X),not -prize(X, noun_artifact),-prize(X, noun_possession).
prize(X, noun_artifact) :- prize(X),not abnormal_d_artifact(X),not -prize(X, noun_artifact).
prize(X, noun_possession) :- prize(X),not abnormal_d_possession(X),not -prize(X, noun_possession).
problem_solving(X, noun_cognition) :- problem_solving(X),not abnormal_d_cognition(X),not -problem_solving(X, noun_cognition).
problem_solving(X, noun_cognition) :- research(X, noun_cognition).
process(X, noun_cognition) :- basic_cognitive_process(X, noun_cognition).
process(X, noun_cognition) :- higher_cognitive_process(X, noun_cognition).
process(X, noun_cognition) :- process(X),not abnormal_d_cognition(X),not -process(X, noun_cognition).
process(X, noun_tops) :- natural_process(X, noun_process).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not -process(X, noun_tops),-process(X, noun_cognition).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
property(X, noun_attribute) :- property(X),not abnormal_d_attribute(X),not -property(X, noun_attribute).
property(X, noun_attribute) :- visual_property(X, noun_attribute).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
radiance(X, noun_attribute) :- polish(X, noun_attribute).
radiance(X, noun_attribute) :- radiance(X),not abnormal_d_attribute(X),not -radiance(X, noun_attribute).
radioactivity(X, noun_process) :- radioactivity(X),not abnormal_d_process(X),not -radioactivity(X, noun_process).
recognition(X, noun_act) :- recognition(X),not -recognition(X, noun_act),-recognition(X, noun_state),-recognition(X, noun_cognition),-recognition(X, noun_phenomenon),-recognition(X, noun_communication).
recognition(X, noun_act) :- recognition(X),not abnormal_d_act(X),not -recognition(X, noun_act).
recognition(X, noun_cognition) :- recognition(X),not -recognition(X, noun_cognition),-recognition(X, noun_state),not recognition(X, noun_phenomenon),not recognition(X, noun_communication),not recognition(X, noun_act).
recognition(X, noun_cognition) :- recognition(X),not abnormal_d_cognition(X),not -recognition(X, noun_cognition).
recognition(X, noun_communication) :- recognition(X),not -recognition(X, noun_communication),-recognition(X, noun_state),-recognition(X, noun_cognition),-recognition(X, noun_phenomenon),not recognition(X, noun_act).
recognition(X, noun_communication) :- recognition(X),not abnormal_d_communication(X),not -recognition(X, noun_communication).
recognition(X, noun_phenomenon) :- recognition(X),not -recognition(X, noun_phenomenon),-recognition(X, noun_state),-recognition(X, noun_cognition),not recognition(X, noun_communication),not recognition(X, noun_act).
recognition(X, noun_phenomenon) :- recognition(X),not abnormal_d_phenomenon(X),not -recognition(X, noun_phenomenon).
recognition(X, noun_state) :- recognition(X),not abnormal_d_state(X),not -recognition(X, noun_state).
region(X, noun_location) :- district(X, noun_location).
region(X, noun_location) :- geographical_area(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
relation(X, noun_tops) :- possession(X, noun_tops).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
relative(X, noun_person) :- family(X, noun_person).
relative(X, noun_person) :- relative(X),not abnormal_d_person(X),not -relative(X, noun_person).
release(X, noun_process) :- emission(X, noun_process).
release(X, noun_process) :- release(X),not abnormal_d_process(X),not -release(X, noun_process).
research(X, noun_act) :- research(X),not abnormal_d_act(X),not -research(X, noun_act).
research(X, noun_cognition) :- research(X),not -research(X, noun_cognition),-research(X, noun_act).
research(X, noun_cognition) :- research(X),not abnormal_d_cognition(X),not -research(X, noun_cognition).
sandwich(X, noun_food) :- hero(X, noun_food).
sandwich(X, noun_food) :- sandwich(X),not abnormal_d_food(X),not -sandwich(X, noun_food).
settlement(X, noun_location) :- settlement(X),not abnormal_d_location(X),not -settlement(X, noun_location).
settlement(X, noun_location) :- village(X, noun_location).
signal(X, noun_communication) :- signal(X),not abnormal_d_communication(X),not -signal(X, noun_communication).
signal(X, noun_communication) :- symbol(X, noun_communication).
situation(X, noun_state) :- acceptance(X, noun_state).
situation(X, noun_state) :- situation(X),not abnormal_d_state(X),not -situation(X, noun_state).
slavic(X, noun_communication) :- polish(X, noun_communication).
slavic(X, noun_communication) :- slavic(X),not abnormal_d_communication(X),not -slavic(X, noun_communication).
snack_food(X, noun_food) :- sandwich(X, noun_food).
snack_food(X, noun_food) :- snack_food(X),not abnormal_d_food(X),not -snack_food(X, noun_food).
social_group(X, noun_group) :- gathering(X, noun_group).
social_group(X, noun_group) :- kin(X, noun_group).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- organized_crime(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
speech(X, noun_communication) :- discussion(X, noun_communication).
speech(X, noun_communication) :- speech(X),not abnormal_d_communication(X),not -speech(X, noun_communication).
state(X, noun_tops) :- hostility(X, noun_state).
state(X, noun_tops) :- perfection(X, noun_state).
state(X, noun_tops) :- situation(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
stolen_property(X, noun_possession) :- prize(X, noun_possession).
stolen_property(X, noun_possession) :- stolen_property(X),not abnormal_d_possession(X),not -stolen_property(X, noun_possession).
substance(X, noun_tops) :- compound(X, noun_substance).
substance(X, noun_tops) :- food(X, noun_tops).
substance(X, noun_tops) :- substance(X),not abnormal_d_tops(X),not -substance(X, noun_tops).
symbol(X, noun_communication) :- award(X, noun_communication).
symbol(X, noun_communication) :- symbol(X),not abnormal_d_communication(X),not -symbol(X, noun_communication).
taxonomic_group(X, noun_group) :- family(X, noun_group).
taxonomic_group(X, noun_group) :- taxonomic_group(X),not abnormal_d_group(X),not -taxonomic_group(X, noun_group).
thinking(X, noun_cognition) :- problem_solving(X, noun_cognition).
thinking(X, noun_cognition) :- thinking(X),not abnormal_d_cognition(X),not -thinking(X, noun_cognition).
transferred_property(X, noun_possession) :- acquisition(X, noun_possession).
transferred_property(X, noun_possession) :- stolen_property(X, noun_possession).
transferred_property(X, noun_possession) :- transferred_property(X),not abnormal_d_possession(X),not -transferred_property(X, noun_possession).
understanding(X, noun_cognition) :- recognition(X, noun_cognition).
understanding(X, noun_cognition) :- understanding(X),not abnormal_d_cognition(X),not -understanding(X, noun_cognition).
undertaking(X, noun_act) :- undertaking(X),not abnormal_d_act(X),not -undertaking(X, noun_act).
undertaking(X, noun_act) :- venture(X, noun_act).
unit(X, noun_group) :- family(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
urban_area(X, noun_location) :- municipality(X, noun_location).
urban_area(X, noun_location) :- urban_area(X),not abnormal_d_location(X),not -urban_area(X, noun_location).
venture(X, noun_act) :- campaign(X, noun_act).
venture(X, noun_act) :- venture(X),not abnormal_d_act(X),not -venture(X, noun_act).
village(X, noun_group) :- village(X),not abnormal_d_group(X),not -village(X, noun_group).
village(X, noun_location) :- village(X),not -village(X, noun_location),-village(X, noun_group).
village(X, noun_location) :- village(X),not abnormal_d_location(X),not -village(X, noun_location).
visual_property(X, noun_attribute) :- light(X, noun_attribute).
visual_property(X, noun_attribute) :- visual_property(X),not abnormal_d_attribute(X),not -visual_property(X, noun_attribute).
war(X, noun_act) :- war(X),not abnormal_d_act(X),not -war(X, noun_act).
war(X, noun_state) :- war(X),not -war(X, noun_state),-war(X, noun_act).
war(X, noun_state) :- war(X),not abnormal_d_state(X),not -war(X, noun_state).
warsaw(X, noun_location) :- warsaw(X),not abnormal_d_location(X),not -warsaw(X, noun_location).
work(X, noun_act) :- investigation(X, noun_act).
work(X, noun_act) :- undertaking(X, noun_act).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
