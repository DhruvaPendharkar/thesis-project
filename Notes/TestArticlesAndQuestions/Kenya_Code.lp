%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_abbreviation(eac, east_african_community).
_is(capital, nairobi).
_is(city, nairobi).
_is(kenya, country).
_is(kenya, founding_member).
_is(kenya, member).
_is(largest_city, nairobi).
_mod(city, largest).
_mod(extend, roughly).
_mod(member, founding).
_mod(people, million).
_mod(south_east, further).
_mod(square_kilometre, '581,309').
_mod(terrain, diverse).
_mod(terrain, expansive).
_possess(kenya, capital).
_possess(kenya, territory).
_property(country, in(africa)).
_property(ethiopia, to(north)).
_property(extend, from(lake_victoria)).
_property(extend, to(lake_turkana)).
_property(have, in('july_2014')).
_property(lie, on(equator)).
_property(member, of(east_african_community)).
_property(population, of(million_people)).
_property(somalia, to(north_east)).
_property(south_east, to(indian_ocean)).
_property(south_sudan, to(north_west)).
_property(tanzania, to(south)).
_property(uganda, to(west)).
_relation(12, 13, _conj).
_relation(4, 5, _conj).
_relation(east_african_rift, 6, _clause).
africa(africa).
capital(capital).
city(city).
country(country).
country(kenya).
equator(equator).
ethiopia(ethiopia).
event(11, border, null, kenya).
event(12, cover, kenya, square_kilometre).
event(13, have, kenya, population).
event(13, have, kenya, population_of_people).
event(4, lie, territory, null).
event(5, overlie, territory, east_african_rift).
event(6, cover, null, diverse_expansive_terrain).
event(6, cover, null, further_south_east).
event(6, cover, null, south_east).
event(6, cover, null, south_east_to_indian_ocean).
event(6, cover, null, terrain).
event(7, extend, diverse_expansive_terrain, null).
event(7, extend, further_south_east, null).
event(7, extend, south_east, null).
event(7, extend, terrain, null).
indian_ocean(indian_ocean).
kenya(kenya).
lake_victoria(lake_victoria).
member(kenya).
member(member).
nairobi(capital).
nairobi(city).
nairobi(largest_city).
nairobi(nairobi).
north(north).
number('581,309').
number(45).
number(million).
people(people).
population(population).
republic_of_kenya(republic_of_kenya).
somalia(somalia).
south(south).
tanzania(tanzania).
terrain(terrain).
territory(territory).
time('july_2014').
uganda(uganda).
west(west).
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
act(X, noun_tops) :- act(X),not abnormal_d_tops(X),not -act(X, noun_tops).
act(X, noun_tops) :- action(X, noun_act).
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
actor(X, noun_person) :- actor(X),not abnormal_d_person(X),not -actor(X, noun_person).
actor(X, noun_person) :- actress(X, noun_person).
actress(X, noun_person) :- actress(X),not abnormal_d_person(X),not -actress(X, noun_person).
actress(X, noun_person) :- west(X, noun_person).
administrative_district(X, noun_location) :- administrative_district(X),not abnormal_d_location(X),not -administrative_district(X, noun_location).
administrative_district(X, noun_location) :- city(X, noun_location).
administrative_district(X, noun_location) :- country(X, noun_location).
africa(X, noun_object) :- africa(X),not abnormal_d_object(X),not -africa(X, noun_object).
african_country(X, noun_location) :- african_country(X),not abnormal_d_location(X),not -african_country(X, noun_location).
african_country(X, noun_location) :- ethiopia(X, noun_location).
african_country(X, noun_location) :- kenya(X, noun_location).
african_country(X, noun_location) :- republic_of_kenya(X, noun_location).
african_country(X, noun_location) :- somalia(X, noun_location).
african_country(X, noun_location) :- tanzania(X, noun_location).
african_country(X, noun_location) :- uganda(X, noun_location).
area(X, noun_cognition) :- area(X),not -area(X, noun_cognition),-area(X, noun_location).
area(X, noun_cognition) :- area(X),not abnormal_d_cognition(X),not -area(X, noun_cognition).
area(X, noun_cognition) :- territory(X, noun_cognition).
area(X, noun_location) :- area(X),not abnormal_d_location(X),not -area(X, noun_location).
area(X, noun_location) :- center(X, noun_location).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- creation(X, noun_artifact).
artist(X, noun_person) :- artist(X),not abnormal_d_person(X),not -artist(X, noun_person).
artist(X, noun_person) :- painter(X, noun_person).
assets(X, noun_possession) :- assets(X),not abnormal_d_possession(X),not -assets(X, noun_possession).
assets(X, noun_possession) :- capital(X, noun_possession).
associate(X, noun_person) :- associate(X),not abnormal_d_person(X),not -associate(X, noun_person).
associate(X, noun_person) :- member(X, noun_person).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- shape(X, noun_tops).
beginning(X, noun_act) :- beginning(X),not abnormal_d_act(X),not -beginning(X, noun_act).
beginning(X, noun_act) :- constitution(X, noun_act).
body_of_water(X, noun_object) :- body_of_water(X),not abnormal_d_object(X),not -body_of_water(X, noun_object).
body_of_water(X, noun_object) :- lake(X, noun_object).
body_of_water(X, noun_object) :- ocean(X, noun_object).
body_part(X, noun_body) :- body_part(X),not abnormal_d_body(X),not -body_part(X, noun_body).
body_part(X, noun_body) :- external_body_part(X, noun_body).
body_part(X, noun_body) :- organ(X, noun_body).
book(X, noun_communication) :- book(X),not abnormal_d_communication(X),not -book(X, noun_communication).
book(X, noun_communication) :- capital(X, noun_communication).
capital(X, noun_artifact) :- capital(X),not -capital(X, noun_artifact),-capital(X, noun_possession),-capital(X, noun_communication),-capital(X, noun_location),-capital(X, noun_group).
capital(X, noun_artifact) :- capital(X),not abnormal_d_artifact(X),not -capital(X, noun_artifact).
capital(X, noun_communication) :- capital(X),not -capital(X, noun_communication),-capital(X, noun_possession),not capital(X, noun_location),not capital(X, noun_group),not capital(X, noun_artifact).
capital(X, noun_communication) :- capital(X),not abnormal_d_communication(X),not -capital(X, noun_communication).
capital(X, noun_group) :- capital(X),not -capital(X, noun_group),-capital(X, noun_possession),-capital(X, noun_communication),-capital(X, noun_location),not capital(X, noun_artifact).
capital(X, noun_group) :- capital(X),not abnormal_d_group(X),not -capital(X, noun_group).
capital(X, noun_location) :- capital(X),not -capital(X, noun_location),-capital(X, noun_possession),-capital(X, noun_communication),not capital(X, noun_group),not capital(X, noun_artifact).
capital(X, noun_location) :- capital(X),not abnormal_d_location(X),not -capital(X, noun_location).
capital(X, noun_location) :- national_capital(X, noun_location).
capital(X, noun_possession) :- capital(X),not abnormal_d_possession(X),not -capital(X, noun_possession).
cardinal_compass_point(X, noun_relation) :- cardinal_compass_point(X),not abnormal_d_relation(X),not -cardinal_compass_point(X, noun_relation).
cardinal_compass_point(X, noun_relation) :- north(X, noun_relation).
cardinal_compass_point(X, noun_relation) :- south(X, noun_relation).
cardinal_compass_point(X, noun_relation) :- west(X, noun_relation).
center(X, noun_location) :- capital(X, noun_location).
center(X, noun_location) :- center(X),not abnormal_d_location(X),not -center(X, noun_location).
center(X, noun_location) :- seat(X, noun_location).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- change_of_state(X, noun_act).
change_of_state(X, noun_act) :- beginning(X, noun_act).
change_of_state(X, noun_act) :- change_of_state(X),not abnormal_d_act(X),not -change_of_state(X, noun_act).
character(X, noun_communication) :- capital(X, noun_communication).
character(X, noun_communication) :- character(X),not abnormal_d_communication(X),not -character(X, noun_communication).
circle(X, noun_shape) :- circle(X),not abnormal_d_shape(X),not -circle(X, noun_shape).
circle(X, noun_shape) :- equator(X, noun_shape).
city(X, noun_group) :- city(X),not -city(X, noun_group),-city(X, noun_location).
city(X, noun_group) :- city(X),not abnormal_d_group(X),not -city(X, noun_group).
city(X, noun_location) :- city(X),not abnormal_d_location(X),not -city(X, noun_location).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- content(X, noun_cognition).
collection(X, noun_group) :- collection(X),not abnormal_d_group(X),not -collection(X, noun_group).
collection(X, noun_group) :- population(X, noun_cognition).
colonization(X, noun_act) :- colonization(X),not abnormal_d_act(X),not -colonization(X, noun_act).
colonization(X, noun_act) :- population(X, noun_act).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- signal(X, noun_communication).
communicator(X, noun_person) :- communicator(X),not abnormal_d_person(X),not -communicator(X, noun_person).
communicator(X, noun_person) :- writer(X, noun_person).
compass_point(X, noun_relation) :- cardinal_compass_point(X, noun_relation).
compass_point(X, noun_relation) :- compass_point(X),not abnormal_d_relation(X),not -compass_point(X, noun_relation).
conic_section(X, noun_shape) :- conic_section(X),not abnormal_d_shape(X),not -conic_section(X, noun_shape).
conic_section(X, noun_shape) :- ellipse(X, noun_shape).
constitution(X, noun_act) :- colonization(X, noun_act).
constitution(X, noun_act) :- constitution(X),not abnormal_d_act(X),not -constitution(X, noun_act).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- topic(X, noun_cognition).
continent(X, noun_object) :- africa(X, noun_object).
continent(X, noun_object) :- continent(X),not abnormal_d_object(X),not -continent(X, noun_object).
country(X, noun_group) :- country(X),not abnormal_d_group(X),not -country(X, noun_group).
country(X, noun_location) :- african_country(X, noun_location).
country(X, noun_location) :- country(X),not -country(X, noun_location),-country(X, noun_group).
country(X, noun_location) :- country(X),not abnormal_d_location(X),not -country(X, noun_location).
country(X, noun_location) :- north_american_country(X, noun_location).
creation(X, noun_artifact) :- creation(X),not abnormal_d_artifact(X),not -creation(X, noun_artifact).
creation(X, noun_artifact) :- product(X, noun_artifact).
creator(X, noun_person) :- artist(X, noun_person).
creator(X, noun_person) :- creator(X),not abnormal_d_person(X),not -creator(X, noun_person).
definite_quantity(X, noun_quantity) :- definite_quantity(X),not abnormal_d_quantity(X),not -definite_quantity(X, noun_quantity).
definite_quantity(X, noun_quantity) :- number(X, noun_quantity).
direction(X, noun_relation) :- compass_point(X, noun_relation).
direction(X, noun_relation) :- direction(X),not abnormal_d_relation(X),not -direction(X, noun_relation).
direction(X, noun_relation) :- north(X, noun_relation).
district(X, noun_location) :- administrative_district(X, noun_location).
district(X, noun_location) :- district(X),not abnormal_d_location(X),not -district(X, noun_location).
ellipse(X, noun_shape) :- circle(X, noun_shape).
ellipse(X, noun_shape) :- ellipse(X),not abnormal_d_shape(X),not -ellipse(X, noun_shape).
entertainer(X, noun_person) :- entertainer(X),not abnormal_d_person(X),not -entertainer(X, noun_person).
entertainer(X, noun_person) :- performer(X, noun_person).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
equator(X, noun_location) :- equator(X),not abnormal_d_location(X),not -equator(X, noun_location).
equator(X, noun_shape) :- equator(X),not -equator(X, noun_shape),-equator(X, noun_location).
equator(X, noun_shape) :- equator(X),not abnormal_d_shape(X),not -equator(X, noun_shape).
erectile_organ(X, noun_body) :- erectile_organ(X),not abnormal_d_body(X),not -erectile_organ(X, noun_body).
erectile_organ(X, noun_body) :- member(X, noun_body).
ethiopia(X, noun_location) :- ethiopia(X),not abnormal_d_location(X),not -ethiopia(X, noun_location).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
external_body_part(X, noun_body) :- external_body_part(X),not abnormal_d_body(X),not -external_body_part(X, noun_body).
external_body_part(X, noun_body) :- member(X, noun_body).
family(X, noun_group) :- family(X),not abnormal_d_group(X),not -family(X, noun_group).
family(X, noun_group) :- people(X, noun_group).
federal_government(X, noun_group) :- capital(X, noun_group).
federal_government(X, noun_group) :- federal_government(X),not abnormal_d_group(X),not -federal_government(X, noun_group).
figure(X, noun_shape) :- figure(X),not abnormal_d_shape(X),not -figure(X, noun_shape).
figure(X, noun_shape) :- plane_figure(X, noun_shape).
gathering(X, noun_group) :- gathering(X),not abnormal_d_group(X),not -gathering(X, noun_group).
gathering(X, noun_group) :- municipality(X, noun_group).
genealogy(X, noun_group) :- genealogy(X),not abnormal_d_group(X),not -genealogy(X, noun_group).
genealogy(X, noun_group) :- lineage(X, noun_group).
geographical_area(X, noun_location) :- country(X, noun_location).
geographical_area(X, noun_location) :- geographical_area(X),not abnormal_d_location(X),not -geographical_area(X, noun_location).
geographical_area(X, noun_location) :- north(X, noun_location).
geographical_area(X, noun_location) :- south(X, noun_location).
geographical_area(X, noun_location) :- territory(X, noun_location).
geographical_area(X, noun_location) :- tract(X, noun_location).
geographical_area(X, noun_location) :- urban_area(X, noun_location).
geographical_area(X, noun_location) :- west(X, noun_location).
government(X, noun_group) :- federal_government(X, noun_group).
government(X, noun_group) :- government(X),not abnormal_d_group(X),not -government(X, noun_group).
great_circle(X, noun_location) :- equator(X, noun_location).
great_circle(X, noun_location) :- great_circle(X),not abnormal_d_location(X),not -great_circle(X, noun_location).
group(X, noun_tops) :- collection(X, noun_group).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- people(X, noun_group).
group(X, noun_tops) :- population(X, noun_group).
group(X, noun_tops) :- social_group(X, noun_group).
indian_ocean(X, noun_object) :- indian_ocean(X),not abnormal_d_object(X),not -indian_ocean(X, noun_object).
integer(X, noun_quantity) :- integer(X),not abnormal_d_quantity(X),not -integer(X, noun_quantity).
integer(X, noun_quantity) :- population(X, noun_quantity).
kenya(X, noun_location) :- kenya(X),not abnormal_d_location(X),not -kenya(X, noun_location).
kin(X, noun_group) :- genealogy(X, noun_group).
kin(X, noun_group) :- kin(X),not abnormal_d_group(X),not -kin(X, noun_group).
lake(X, noun_object) :- lake(X),not abnormal_d_object(X),not -lake(X, noun_object).
lake(X, noun_object) :- lake_victoria(X, noun_object).
lake_victoria(X, noun_object) :- lake_victoria(X),not abnormal_d_object(X),not -lake_victoria(X, noun_object).
land(X, noun_object) :- land(X),not abnormal_d_object(X),not -land(X, noun_object).
land(X, noun_object) :- landmass(X, noun_object).
landmass(X, noun_object) :- continent(X, noun_object).
landmass(X, noun_object) :- landmass(X),not abnormal_d_object(X),not -landmass(X, noun_object).
leader(X, noun_person) :- leader(X),not abnormal_d_person(X),not -leader(X, noun_person).
leader(X, noun_person) :- politician(X, noun_person).
line(X, noun_location) :- great_circle(X, noun_location).
line(X, noun_location) :- line(X),not abnormal_d_location(X),not -line(X, noun_location).
lineage(X, noun_group) :- family(X, noun_group).
lineage(X, noun_group) :- lineage(X),not abnormal_d_group(X),not -lineage(X, noun_group).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
location(X, noun_tops) :- line(X, noun_location).
location(X, noun_tops) :- location(X),not abnormal_d_tops(X),not -location(X, noun_tops).
location(X, noun_tops) :- region(X, noun_location).
measure(X, noun_tops) :- definite_quantity(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
member(X, noun_body) :- member(X),not -member(X, noun_body),-member(X, noun_person),-member(X, noun_group),-member(X, noun_relation).
member(X, noun_body) :- member(X),not abnormal_d_body(X),not -member(X, noun_body).
member(X, noun_group) :- member(X),not -member(X, noun_group),-member(X, noun_person),not member(X, noun_relation),not member(X, noun_body).
member(X, noun_group) :- member(X),not abnormal_d_group(X),not -member(X, noun_group).
member(X, noun_person) :- member(X),not abnormal_d_person(X),not -member(X, noun_person).
member(X, noun_relation) :- member(X),not -member(X, noun_relation),-member(X, noun_person),-member(X, noun_group),not member(X, noun_body).
member(X, noun_relation) :- member(X),not abnormal_d_relation(X),not -member(X, noun_relation).
municipality(X, noun_group) :- city(X, noun_group).
municipality(X, noun_group) :- municipality(X),not -municipality(X, noun_group),-municipality(X, noun_location).
municipality(X, noun_group) :- municipality(X),not abnormal_d_group(X),not -municipality(X, noun_group).
municipality(X, noun_location) :- city(X, noun_location).
municipality(X, noun_location) :- municipality(X),not abnormal_d_location(X),not -municipality(X, noun_location).
nairobi(X, noun_location) :- nairobi(X),not abnormal_d_location(X),not -nairobi(X, noun_location).
national_capital(X, noun_location) :- nairobi(X, noun_location).
national_capital(X, noun_location) :- national_capital(X),not abnormal_d_location(X),not -national_capital(X, noun_location).
north(X, noun_location) :- north(X),not abnormal_d_location(X),not -north(X, noun_location).
north(X, noun_person) :- north(X),not -north(X, noun_person),-north(X, noun_location),-north(X, noun_relation).
north(X, noun_person) :- north(X),not abnormal_d_person(X),not -north(X, noun_person).
north(X, noun_relation) :- north(X),not -north(X, noun_relation),-north(X, noun_location),not north(X, noun_person).
north(X, noun_relation) :- north(X),not abnormal_d_relation(X),not -north(X, noun_relation).
north_american_country(X, noun_location) :- north_american_country(X),not abnormal_d_location(X),not -north_american_country(X, noun_location).
north_american_country(X, noun_location) :- united_states(X, noun_location).
number(X, noun_quantity) :- integer(X, noun_quantity).
number(X, noun_quantity) :- number(X),not abnormal_d_quantity(X),not -number(X, noun_quantity).
object(X, noun_tops) :- land(X, noun_object).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- location(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
ocean(X, noun_object) :- indian_ocean(X, noun_object).
ocean(X, noun_object) :- ocean(X),not abnormal_d_object(X),not -ocean(X, noun_object).
organ(X, noun_body) :- erectile_organ(X, noun_body).
organ(X, noun_body) :- organ(X),not abnormal_d_body(X),not -organ(X, noun_body).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- polity(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
painter(X, noun_person) :- painter(X),not abnormal_d_person(X),not -painter(X, noun_person).
painter(X, noun_person) :- west(X, noun_person).
part(X, noun_object) :- body_part(X, noun_body).
part(X, noun_object) :- part(X),not -part(X, noun_object),-part(X, noun_relation).
part(X, noun_object) :- part(X),not abnormal_d_object(X),not -part(X, noun_object).
part(X, noun_relation) :- member(X, noun_relation).
part(X, noun_relation) :- part(X),not abnormal_d_relation(X),not -part(X, noun_relation).
peer(X, noun_person) :- associate(X, noun_person).
peer(X, noun_person) :- peer(X),not abnormal_d_person(X),not -peer(X, noun_person).
people(X, noun_group) :- country(X, noun_group).
people(X, noun_group) :- people(X),not abnormal_d_group(X),not -people(X, noun_group).
people(X, noun_group) :- population(X, noun_group).
performer(X, noun_person) :- actor(X, noun_person).
performer(X, noun_person) :- performer(X),not abnormal_d_person(X),not -performer(X, noun_person).
person(X, noun_tops) :- communicator(X, noun_person).
person(X, noun_tops) :- creator(X, noun_person).
person(X, noun_tops) :- entertainer(X, noun_person).
person(X, noun_tops) :- leader(X, noun_person).
person(X, noun_tops) :- peer(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
plane_figure(X, noun_shape) :- conic_section(X, noun_shape).
plane_figure(X, noun_shape) :- plane_figure(X),not abnormal_d_shape(X),not -plane_figure(X, noun_shape).
political_unit(X, noun_group) :- country(X, noun_group).
political_unit(X, noun_group) :- political_unit(X),not abnormal_d_group(X),not -political_unit(X, noun_group).
politician(X, noun_person) :- politician(X),not abnormal_d_person(X),not -politician(X, noun_person).
politician(X, noun_person) :- statesman(X, noun_person).
polity(X, noun_group) :- government(X, noun_group).
polity(X, noun_group) :- polity(X),not abnormal_d_group(X),not -polity(X, noun_group).
population(X, noun_act) :- population(X),not -population(X, noun_act),-population(X, noun_group),-population(X, noun_cognition),-population(X, noun_quantity).
population(X, noun_act) :- population(X),not abnormal_d_act(X),not -population(X, noun_act).
population(X, noun_cognition) :- population(X),not -population(X, noun_cognition),-population(X, noun_group),not population(X, noun_quantity),not population(X, noun_act).
population(X, noun_cognition) :- population(X),not abnormal_d_cognition(X),not -population(X, noun_cognition).
population(X, noun_group) :- population(X),not abnormal_d_group(X),not -population(X, noun_group).
population(X, noun_quantity) :- population(X),not -population(X, noun_quantity),-population(X, noun_group),-population(X, noun_cognition),not population(X, noun_act).
population(X, noun_quantity) :- population(X),not abnormal_d_quantity(X),not -population(X, noun_quantity).
position(X, noun_attribute) :- direction(X, noun_relation).
position(X, noun_attribute) :- position(X),not abnormal_d_attribute(X),not -position(X, noun_attribute).
possession(X, noun_tops) :- assets(X, noun_possession).
possession(X, noun_tops) :- possession(X),not abnormal_d_tops(X),not -possession(X, noun_tops).
product(X, noun_artifact) :- product(X),not abnormal_d_artifact(X),not -product(X, noun_artifact).
product(X, noun_artifact) :- work(X, noun_artifact).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
publication(X, noun_communication) :- book(X, noun_communication).
publication(X, noun_communication) :- publication(X),not abnormal_d_communication(X),not -publication(X, noun_communication).
region(X, noun_location) :- area(X, noun_location).
region(X, noun_location) :- country(X, noun_location).
region(X, noun_location) :- district(X, noun_location).
region(X, noun_location) :- geographical_area(X, noun_location).
region(X, noun_location) :- north(X, noun_location).
region(X, noun_location) :- region(X),not abnormal_d_location(X),not -region(X, noun_location).
region(X, noun_location) :- south(X, noun_location).
region(X, noun_location) :- territory(X, noun_location).
region(X, noun_location) :- top(X, noun_location).
region(X, noun_location) :- west(X, noun_location).
relation(X, noun_tops) :- part(X, noun_relation).
relation(X, noun_tops) :- position(X, noun_attribute).
relation(X, noun_tops) :- possession(X, noun_tops).
relation(X, noun_tops) :- relation(X),not abnormal_d_tops(X),not -relation(X, noun_tops).
republic_of_kenya(X, noun_location) :- republic_of_kenya(X),not abnormal_d_location(X),not -republic_of_kenya(X, noun_location).
seat(X, noun_location) :- capital(X, noun_location).
seat(X, noun_location) :- seat(X),not abnormal_d_location(X),not -seat(X, noun_location).
shape(X, noun_tops) :- figure(X, noun_shape).
shape(X, noun_tops) :- shape(X),not abnormal_d_tops(X),not -shape(X, noun_tops).
signal(X, noun_communication) :- signal(X),not abnormal_d_communication(X),not -signal(X, noun_communication).
signal(X, noun_communication) :- symbol(X, noun_communication).
social_group(X, noun_group) :- gathering(X, noun_group).
social_group(X, noun_group) :- kin(X, noun_group).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
somalia(X, noun_location) :- somalia(X),not abnormal_d_location(X),not -somalia(X, noun_location).
south(X, noun_location) :- south(X),not -south(X, noun_location),-south(X, noun_relation).
south(X, noun_location) :- south(X),not abnormal_d_location(X),not -south(X, noun_location).
south(X, noun_relation) :- south(X),not abnormal_d_relation(X),not -south(X, noun_relation).
statesman(X, noun_person) :- north(X, noun_person).
statesman(X, noun_person) :- statesman(X),not abnormal_d_person(X),not -statesman(X, noun_person).
symbol(X, noun_communication) :- symbol(X),not abnormal_d_communication(X),not -symbol(X, noun_communication).
symbol(X, noun_communication) :- written_symbol(X, noun_communication).
tanzania(X, noun_location) :- tanzania(X),not abnormal_d_location(X),not -tanzania(X, noun_location).
terrain(X, noun_location) :- terrain(X),not abnormal_d_location(X),not -terrain(X, noun_location).
territory(X, noun_cognition) :- territory(X),not -territory(X, noun_cognition),-territory(X, noun_location).
territory(X, noun_cognition) :- territory(X),not abnormal_d_cognition(X),not -territory(X, noun_cognition).
territory(X, noun_location) :- territory(X),not abnormal_d_location(X),not -territory(X, noun_location).
thing(X, noun_tops) :- body_of_water(X, noun_object).
thing(X, noun_tops) :- part(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
top(X, noun_location) :- capital(X, noun_artifact).
top(X, noun_location) :- top(X),not abnormal_d_location(X),not -top(X, noun_location).
topic(X, noun_cognition) :- area(X, noun_cognition).
topic(X, noun_cognition) :- topic(X),not abnormal_d_cognition(X),not -topic(X, noun_cognition).
tract(X, noun_location) :- terrain(X, noun_location).
tract(X, noun_location) :- tract(X),not abnormal_d_location(X),not -tract(X, noun_location).
uganda(X, noun_location) :- uganda(X),not abnormal_d_location(X),not -uganda(X, noun_location).
unit(X, noun_group) :- member(X, noun_group).
unit(X, noun_group) :- political_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
united_states(X, noun_location) :- north(X, noun_location).
united_states(X, noun_location) :- united_states(X),not abnormal_d_location(X),not -united_states(X, noun_location).
urban_area(X, noun_location) :- municipality(X, noun_location).
urban_area(X, noun_location) :- urban_area(X),not abnormal_d_location(X),not -urban_area(X, noun_location).
west(X, noun_location) :- west(X),not abnormal_d_location(X),not -west(X, noun_location).
west(X, noun_person) :- west(X),not -west(X, noun_person),-west(X, noun_location),-west(X, noun_relation).
west(X, noun_person) :- west(X),not abnormal_d_person(X),not -west(X, noun_person).
west(X, noun_relation) :- west(X),not -west(X, noun_relation),-west(X, noun_location),not west(X, noun_person).
west(X, noun_relation) :- west(X),not abnormal_d_relation(X),not -west(X, noun_relation).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
work(X, noun_artifact) :- publication(X, noun_communication).
work(X, noun_artifact) :- work(X),not abnormal_d_artifact(X),not -work(X, noun_artifact).
writer(X, noun_person) :- west(X, noun_person).
writer(X, noun_person) :- writer(X),not abnormal_d_person(X),not -writer(X, noun_person).
written_symbol(X, noun_communication) :- character(X, noun_communication).
written_symbol(X, noun_communication) :- written_symbol(X),not abnormal_d_communication(X),not -written_symbol(X, noun_communication).
