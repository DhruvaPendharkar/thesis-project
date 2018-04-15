%-------------------------------------------------------%
%Story%
%-------------------------------------------------------%
_is(computational_complexity_theory, branch).
_is(computational_problem, task).
_is(computer, equivalent).
_is(mathematical_step, algorithm).
_is(problem, task).
_is(step, algorithm).
_is(task, amenable_principle).
_is(task, principle).
_mod(computer_science, theoretical).
_mod(difficulty, inherent).
_mod(principle, amenable).
_mod(problem, computational).
_mod(step, mathematical).
_possess(problem, difficulty).
_property(1, branch, in, computer_science).
_property(1, branch, of, theory_of_computation).
_property(11, solve, _by, computer).
_property(15, mechanical_application, of, step).
_property(15, solve, _by, mechanical_application).
_property(3, classify, according_to, difficulty).
_property(5, relate, to, other).
_relation(13, 15, _clcomplement).
_relation(2, 3, _clause).
_relation(2, 5, _clause).
_relation(3, 5, _conj).
algorithm(algorithm).
branch(branch).
branch(computational_complexity_theory).
computer(computer).
computer_science(computer_science).
difficulty(difficulty).
equivalent(computer).
event(1, be, null, null).
event(10, be, null, null).
event(11, solve, null, null).
event(12, be, null, null).
event(13, state, null, null).
event(14, be, null, null).
event(15, solve, null, problem).
event(2, focus, branch, null).
event(3, classify, null, computational_problem).
event(3, classify, null, problem).
event(4, accord, null, null).
event(5, relate, null, complexity_classes).
event(6, be, null, null).
event(7, understand, null, problem).
event(8, be, null, null).
event(9, be, null, null).
principle(principle).
principle(task).
problem(problem).
step(algorithm).
step(step).
task(computational_problem).
task(problem).
task(task).
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
action(X, noun_act) :- action(X),not abnormal_d_act(X),not -action(X, noun_act).
action(X, noun_act) :- change(X, noun_act).
action(X, noun_act) :- choice(X, noun_act).
activity(X, noun_act) :- activity(X),not abnormal_d_act(X),not -activity(X, noun_act).
activity(X, noun_act) :- procedure(X, noun_act).
activity(X, noun_act) :- work(X, noun_act).
administrative_unit(X, noun_group) :- administrative_unit(X),not abnormal_d_group(X),not -administrative_unit(X, noun_group).
administrative_unit(X, noun_group) :- division(X, noun_group).
algorithm(X, noun_cognition) :- algorithm(X),not abnormal_d_cognition(X),not -algorithm(X, noun_cognition).
artifact(X, noun_tops) :- artifact(X),not abnormal_d_tops(X),not -artifact(X, noun_tops).
artifact(X, noun_tops) :- block(X, noun_artifact).
artifact(X, noun_tops) :- instrumentality(X, noun_artifact).
artifact(X, noun_tops) :- structure(X, noun_artifact).
attribute(X, noun_tops) :- attribute(X),not abnormal_d_tops(X),not -attribute(X, noun_tops).
attribute(X, noun_tops) :- quality(X, noun_attribute).
attribute(X, noun_tops) :- shape(X, noun_tops).
attribute(X, noun_tops) :- state(X, noun_tops).
block(X, noun_artifact) :- block(X),not abnormal_d_artifact(X),not -block(X, noun_artifact).
block(X, noun_artifact) :- step(X, noun_artifact).
body_of_water(X, noun_object) :- body_of_water(X),not abnormal_d_object(X),not -body_of_water(X, noun_object).
body_of_water(X, noun_object) :- stream(X, noun_object).
branch(X, noun_artifact) :- branch(X),not -branch(X, noun_artifact),-branch(X, noun_group),-branch(X, noun_plant),-branch(X, noun_shape),-branch(X, noun_phenomenon),-branch(X, noun_object).
branch(X, noun_artifact) :- branch(X),not abnormal_d_artifact(X),not -branch(X, noun_artifact).
branch(X, noun_group) :- branch(X),not abnormal_d_group(X),not -branch(X, noun_group).
branch(X, noun_object) :- branch(X),not -branch(X, noun_object),-branch(X, noun_group),-branch(X, noun_plant),-branch(X, noun_shape),-branch(X, noun_phenomenon),not branch(X, noun_artifact).
branch(X, noun_object) :- branch(X),not abnormal_d_object(X),not -branch(X, noun_object).
branch(X, noun_phenomenon) :- branch(X),not -branch(X, noun_phenomenon),-branch(X, noun_group),-branch(X, noun_plant),-branch(X, noun_shape),not branch(X, noun_object),not branch(X, noun_artifact).
branch(X, noun_phenomenon) :- branch(X),not abnormal_d_phenomenon(X),not -branch(X, noun_phenomenon).
branch(X, noun_plant) :- branch(X),not -branch(X, noun_plant),-branch(X, noun_group),not branch(X, noun_shape),not branch(X, noun_phenomenon),not branch(X, noun_object),not branch(X, noun_artifact).
branch(X, noun_plant) :- branch(X),not abnormal_d_plant(X),not -branch(X, noun_plant).
branch(X, noun_shape) :- branch(X),not -branch(X, noun_shape),-branch(X, noun_group),-branch(X, noun_plant),not branch(X, noun_phenomenon),not branch(X, noun_object),not branch(X, noun_artifact).
branch(X, noun_shape) :- branch(X),not abnormal_d_shape(X),not -branch(X, noun_shape).
change(X, noun_act) :- change(X),not abnormal_d_act(X),not -change(X, noun_act).
change(X, noun_act) :- motion(X, noun_act).
choice(X, noun_act) :- choice(X),not abnormal_d_act(X),not -choice(X, noun_act).
choice(X, noun_act) :- decision(X, noun_act).
cognition(X, noun_tops) :- cognition(X),not abnormal_d_tops(X),not -cognition(X, noun_tops).
cognition(X, noun_tops) :- cognitive_factor(X, noun_cognition).
cognition(X, noun_tops) :- content(X, noun_cognition).
cognition(X, noun_tops) :- process(X, noun_cognition).
cognitive_factor(X, noun_cognition) :- cognitive_factor(X),not abnormal_d_cognition(X),not -cognitive_factor(X, noun_cognition).
cognitive_factor(X, noun_cognition) :- difficulty(X, noun_cognition).
communication(X, noun_tops) :- communication(X),not abnormal_d_tops(X),not -communication(X, noun_tops).
communication(X, noun_tops) :- indication(X, noun_communication).
communication(X, noun_tops) :- message(X, noun_communication).
communication(X, noun_tops) :- written_communication(X, noun_communication).
computer(X, noun_artifact) :- computer(X),not abnormal_d_artifact(X),not -computer(X, noun_artifact).
computer(X, noun_person) :- computer(X),not -computer(X, noun_person),-computer(X, noun_artifact).
computer(X, noun_person) :- computer(X),not abnormal_d_person(X),not -computer(X, noun_person).
computer_science(X, noun_cognition) :- computer_science(X),not abnormal_d_cognition(X),not -computer_science(X, noun_cognition).
concept(X, noun_cognition) :- concept(X),not abnormal_d_cognition(X),not -concept(X, noun_cognition).
concept(X, noun_cognition) :- law(X, noun_cognition).
condition(X, noun_state) :- condition(X),not abnormal_d_state(X),not -condition(X, noun_state).
condition(X, noun_state) :- difficulty(X, noun_state).
consequence(X, noun_phenomenon) :- branch(X, noun_phenomenon).
consequence(X, noun_phenomenon) :- consequence(X),not abnormal_d_phenomenon(X),not -consequence(X, noun_phenomenon).
content(X, noun_cognition) :- content(X),not abnormal_d_cognition(X),not -content(X, noun_cognition).
content(X, noun_cognition) :- idea(X, noun_cognition).
content(X, noun_cognition) :- knowledge_domain(X, noun_cognition).
decision(X, noun_act) :- decision(X),not abnormal_d_act(X),not -decision(X, noun_act).
decision(X, noun_act) :- move(X, noun_act).
device(X, noun_artifact) :- device(X),not abnormal_d_artifact(X),not -device(X, noun_artifact).
device(X, noun_artifact) :- machine(X, noun_artifact).
device(X, noun_artifact) :- support(X, noun_artifact).
difficulty(X, noun_act) :- difficulty(X),not abnormal_d_act(X),not -difficulty(X, noun_act).
difficulty(X, noun_attribute) :- difficulty(X),not -difficulty(X, noun_attribute),-difficulty(X, noun_act),-difficulty(X, noun_cognition),-difficulty(X, noun_state).
difficulty(X, noun_attribute) :- difficulty(X),not abnormal_d_attribute(X),not -difficulty(X, noun_attribute).
difficulty(X, noun_cognition) :- difficulty(X),not -difficulty(X, noun_cognition),-difficulty(X, noun_act),not difficulty(X, noun_state),not difficulty(X, noun_attribute).
difficulty(X, noun_cognition) :- difficulty(X),not abnormal_d_cognition(X),not -difficulty(X, noun_cognition).
difficulty(X, noun_cognition) :- problem(X, noun_cognition).
difficulty(X, noun_state) :- difficulty(X),not -difficulty(X, noun_state),-difficulty(X, noun_act),-difficulty(X, noun_cognition),not difficulty(X, noun_attribute).
difficulty(X, noun_state) :- difficulty(X),not abnormal_d_state(X),not -difficulty(X, noun_state).
difficulty(X, noun_state) :- problem(X, noun_state).
direction(X, noun_communication) :- direction(X),not abnormal_d_communication(X),not -direction(X, noun_communication).
direction(X, noun_communication) :- rule(X, noun_communication).
discipline(X, noun_cognition) :- discipline(X),not abnormal_d_cognition(X),not -discipline(X, noun_cognition).
discipline(X, noun_cognition) :- engineering(X, noun_cognition).
division(X, noun_group) :- branch(X, noun_group).
division(X, noun_group) :- division(X),not abnormal_d_group(X),not -division(X, noun_group).
duty(X, noun_act) :- duty(X),not abnormal_d_act(X),not -duty(X, noun_act).
duty(X, noun_act) :- task(X, noun_act).
effort(X, noun_act) :- difficulty(X, noun_act).
effort(X, noun_act) :- effort(X),not abnormal_d_act(X),not -effort(X, noun_act).
engineering(X, noun_cognition) :- computer_science(X, noun_cognition).
engineering(X, noun_cognition) :- engineering(X),not abnormal_d_cognition(X),not -engineering(X, noun_cognition).
entity(X, noun_tops) :- abstract_entity(X, noun_tops).
entity(X, noun_tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_tops).
entity(X, noun_tops) :- physical_entity(X, noun_tops).
event(X, noun_tops) :- act(X, noun_tops).
event(X, noun_tops) :- event(X),not abnormal_d_tops(X),not -event(X, noun_tops).
event(X, noun_tops) :- happening(X, noun_event).
expert(X, noun_person) :- computer(X, noun_person).
expert(X, noun_person) :- expert(X),not abnormal_d_person(X),not -expert(X, noun_person).
explanation(X, noun_cognition) :- explanation(X),not abnormal_d_cognition(X),not -explanation(X, noun_cognition).
explanation(X, noun_cognition) :- principle(X, noun_cognition).
figure(X, noun_shape) :- figure(X),not abnormal_d_shape(X),not -figure(X, noun_shape).
figure(X, noun_shape) :- subfigure(X, noun_shape).
generalization(X, noun_cognition) :- generalization(X),not abnormal_d_cognition(X),not -generalization(X, noun_cognition).
generalization(X, noun_cognition) :- principle(X, noun_cognition).
group(X, noun_tops) :- group(X),not abnormal_d_tops(X),not -group(X, noun_tops).
group(X, noun_tops) :- social_group(X, noun_group).
happening(X, noun_event) :- happening(X),not abnormal_d_event(X),not -happening(X, noun_event).
happening(X, noun_event) :- sound(X, noun_event).
higher_cognitive_process(X, noun_cognition) :- higher_cognitive_process(X),not abnormal_d_cognition(X),not -higher_cognitive_process(X, noun_cognition).
higher_cognitive_process(X, noun_cognition) :- thinking(X, noun_cognition).
idea(X, noun_cognition) :- concept(X, noun_cognition).
idea(X, noun_cognition) :- generalization(X, noun_cognition).
idea(X, noun_cognition) :- idea(X),not abnormal_d_cognition(X),not -idea(X, noun_cognition).
idea(X, noun_cognition) :- ideal(X, noun_cognition).
ideal(X, noun_cognition) :- ideal(X),not abnormal_d_cognition(X),not -ideal(X, noun_cognition).
ideal(X, noun_cognition) :- value(X, noun_cognition).
indefinite_quantity(X, noun_quantity) :- indefinite_quantity(X),not abnormal_d_quantity(X),not -indefinite_quantity(X, noun_quantity).
indefinite_quantity(X, noun_quantity) :- small_indefinite_quantity(X, noun_quantity).
indefinite_quantity(X, noun_quantity) :- step(X, noun_quantity).
indication(X, noun_communication) :- indication(X),not abnormal_d_communication(X),not -indication(X, noun_communication).
indication(X, noun_communication) :- mark(X, noun_communication).
instrumentality(X, noun_artifact) :- device(X, noun_artifact).
instrumentality(X, noun_artifact) :- instrumentality(X),not abnormal_d_artifact(X),not -instrumentality(X, noun_artifact).
interval(X, noun_communication) :- interval(X),not abnormal_d_communication(X),not -interval(X, noun_communication).
interval(X, noun_communication) :- step(X, noun_communication).
knowledge_domain(X, noun_cognition) :- discipline(X, noun_cognition).
knowledge_domain(X, noun_cognition) :- knowledge_domain(X),not abnormal_d_cognition(X),not -knowledge_domain(X, noun_cognition).
labor(X, noun_act) :- effort(X, noun_act).
labor(X, noun_act) :- labor(X),not abnormal_d_act(X),not -labor(X, noun_act).
law(X, noun_cognition) :- law(X),not abnormal_d_cognition(X),not -law(X, noun_cognition).
law(X, noun_cognition) :- principle(X, noun_cognition).
living_thing(X, noun_tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_tops).
living_thing(X, noun_tops) :- organism(X, noun_tops).
locomotion(X, noun_act) :- locomotion(X),not abnormal_d_act(X),not -locomotion(X, noun_act).
locomotion(X, noun_act) :- step(X, noun_act).
machine(X, noun_artifact) :- computer(X, noun_artifact).
machine(X, noun_artifact) :- machine(X),not abnormal_d_artifact(X),not -machine(X, noun_artifact).
maneuver(X, noun_act) :- maneuver(X),not abnormal_d_act(X),not -maneuver(X, noun_act).
maneuver(X, noun_act) :- step(X, noun_act).
mark(X, noun_communication) :- mark(X),not abnormal_d_communication(X),not -mark(X, noun_communication).
mark(X, noun_communication) :- step(X, noun_communication).
measure(X, noun_tops) :- indefinite_quantity(X, noun_quantity).
measure(X, noun_tops) :- measure(X),not abnormal_d_tops(X),not -measure(X, noun_tops).
message(X, noun_communication) :- direction(X, noun_communication).
message(X, noun_communication) :- message(X),not abnormal_d_communication(X),not -message(X, noun_communication).
message(X, noun_communication) :- subject(X, noun_communication).
motion(X, noun_act) :- locomotion(X, noun_act).
motion(X, noun_act) :- motion(X),not abnormal_d_act(X),not -motion(X, noun_act).
move(X, noun_act) :- maneuver(X, noun_act).
move(X, noun_act) :- move(X),not abnormal_d_act(X),not -move(X, noun_act).
musical_notation(X, noun_communication) :- interval(X, noun_communication).
musical_notation(X, noun_communication) :- musical_notation(X),not abnormal_d_communication(X),not -musical_notation(X, noun_communication).
natural_object(X, noun_tops) :- natural_object(X),not abnormal_d_tops(X),not -natural_object(X, noun_tops).
natural_object(X, noun_tops) :- plant_part(X, noun_plant).
notation(X, noun_communication) :- musical_notation(X, noun_communication).
notation(X, noun_communication) :- notation(X),not abnormal_d_communication(X),not -notation(X, noun_communication).
object(X, noun_tops) :- living_thing(X, noun_tops).
object(X, noun_tops) :- object(X),not abnormal_d_tops(X),not -object(X, noun_tops).
object(X, noun_tops) :- whole(X, noun_tops).
organism(X, noun_tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_tops).
organism(X, noun_tops) :- person(X, noun_tops).
organization(X, noun_group) :- organization(X),not abnormal_d_group(X),not -organization(X, noun_group).
organization(X, noun_group) :- unit(X, noun_group).
person(X, noun_tops) :- expert(X, noun_person).
person(X, noun_tops) :- person(X),not abnormal_d_tops(X),not -person(X, noun_tops).
phenomenon(X, noun_tops) :- consequence(X, noun_phenomenon).
phenomenon(X, noun_tops) :- phenomenon(X),not abnormal_d_tops(X),not -phenomenon(X, noun_tops).
physical_entity(X, noun_tops) :- object(X, noun_tops).
physical_entity(X, noun_tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_tops).
physical_entity(X, noun_tops) :- process(X, noun_tops).
physical_entity(X, noun_tops) :- thing(X, noun_tops).
plant_organ(X, noun_plant) :- plant_organ(X),not abnormal_d_plant(X),not -plant_organ(X, noun_plant).
plant_organ(X, noun_plant) :- stalk(X, noun_plant).
plant_part(X, noun_plant) :- plant_organ(X, noun_plant).
plant_part(X, noun_plant) :- plant_part(X),not abnormal_d_plant(X),not -plant_part(X, noun_plant).
principle(X, noun_cognition) :- principle(X),not abnormal_d_cognition(X),not -principle(X, noun_cognition).
principle(X, noun_communication) :- principle(X),not -principle(X, noun_communication),-principle(X, noun_cognition).
principle(X, noun_communication) :- principle(X),not abnormal_d_communication(X),not -principle(X, noun_communication).
problem(X, noun_cognition) :- problem(X),not -problem(X, noun_cognition),-problem(X, noun_state),not problem(X, noun_communication).
problem(X, noun_cognition) :- problem(X),not abnormal_d_cognition(X),not -problem(X, noun_cognition).
problem(X, noun_communication) :- problem(X),not -problem(X, noun_communication),-problem(X, noun_state),-problem(X, noun_cognition).
problem(X, noun_communication) :- problem(X),not abnormal_d_communication(X),not -problem(X, noun_communication).
problem(X, noun_state) :- problem(X),not abnormal_d_state(X),not -problem(X, noun_state).
procedure(X, noun_act) :- procedure(X),not abnormal_d_act(X),not -procedure(X, noun_act).
procedure(X, noun_act) :- rule(X, noun_cognition).
process(X, noun_cognition) :- higher_cognitive_process(X, noun_cognition).
process(X, noun_cognition) :- process(X),not abnormal_d_cognition(X),not -process(X, noun_cognition).
process(X, noun_tops) :- phenomenon(X, noun_tops).
process(X, noun_tops) :- process(X),not -process(X, noun_tops),-process(X, noun_cognition).
process(X, noun_tops) :- process(X),not abnormal_d_tops(X),not -process(X, noun_tops).
projection(X, noun_artifact) :- branch(X, noun_artifact).
projection(X, noun_artifact) :- projection(X),not abnormal_d_artifact(X),not -projection(X, noun_artifact).
psychological_feature(X, noun_tops) :- cognition(X, noun_tops).
psychological_feature(X, noun_tops) :- event(X, noun_tops).
psychological_feature(X, noun_tops) :- psychological_feature(X),not abnormal_d_tops(X),not -psychological_feature(X, noun_tops).
quality(X, noun_attribute) :- difficulty(X, noun_attribute).
quality(X, noun_attribute) :- quality(X),not abnormal_d_attribute(X),not -quality(X, noun_attribute).
question(X, noun_communication) :- problem(X, noun_communication).
question(X, noun_communication) :- question(X),not abnormal_d_communication(X),not -question(X, noun_communication).
rank(X, noun_state) :- rank(X),not abnormal_d_state(X),not -rank(X, noun_state).
rank(X, noun_state) :- step(X, noun_state).
rule(X, noun_cognition) :- algorithm(X, noun_cognition).
rule(X, noun_cognition) :- rule(X),not -rule(X, noun_cognition),-rule(X, noun_communication).
rule(X, noun_cognition) :- rule(X),not abnormal_d_cognition(X),not -rule(X, noun_cognition).
rule(X, noun_communication) :- principle(X, noun_communication).
rule(X, noun_communication) :- rule(X),not abnormal_d_communication(X),not -rule(X, noun_communication).
shape(X, noun_tops) :- figure(X, noun_shape).
shape(X, noun_tops) :- shape(X),not abnormal_d_tops(X),not -shape(X, noun_tops).
small_indefinite_quantity(X, noun_quantity) :- small_indefinite_quantity(X),not abnormal_d_quantity(X),not -small_indefinite_quantity(X, noun_quantity).
small_indefinite_quantity(X, noun_quantity) :- step(X, noun_quantity).
social_group(X, noun_group) :- organization(X, noun_group).
social_group(X, noun_group) :- social_group(X),not abnormal_d_group(X),not -social_group(X, noun_group).
sound(X, noun_event) :- sound(X),not abnormal_d_event(X),not -sound(X, noun_event).
sound(X, noun_event) :- step(X, noun_event).
stalk(X, noun_plant) :- branch(X, noun_plant).
stalk(X, noun_plant) :- stalk(X),not abnormal_d_plant(X),not -stalk(X, noun_plant).
state(X, noun_tops) :- condition(X, noun_state).
state(X, noun_tops) :- state(X),not abnormal_d_tops(X),not -state(X, noun_tops).
state(X, noun_tops) :- status(X, noun_state).
status(X, noun_state) :- rank(X, noun_state).
status(X, noun_state) :- status(X),not abnormal_d_state(X),not -status(X, noun_state).
step(X, noun_act) :- step(X),not -step(X, noun_act),-step(X, noun_quantity),-step(X, noun_artifact),-step(X, noun_state),-step(X, noun_event),-step(X, noun_communication).
step(X, noun_act) :- step(X),not abnormal_d_act(X),not -step(X, noun_act).
step(X, noun_artifact) :- step(X),not -step(X, noun_artifact),-step(X, noun_quantity),not step(X, noun_state),not step(X, noun_event),not step(X, noun_communication),not step(X, noun_act).
step(X, noun_artifact) :- step(X),not abnormal_d_artifact(X),not -step(X, noun_artifact).
step(X, noun_communication) :- step(X),not -step(X, noun_communication),-step(X, noun_quantity),-step(X, noun_artifact),-step(X, noun_state),-step(X, noun_event),not step(X, noun_act).
step(X, noun_communication) :- step(X),not abnormal_d_communication(X),not -step(X, noun_communication).
step(X, noun_event) :- step(X),not -step(X, noun_event),-step(X, noun_quantity),-step(X, noun_artifact),-step(X, noun_state),not step(X, noun_communication),not step(X, noun_act).
step(X, noun_event) :- step(X),not abnormal_d_event(X),not -step(X, noun_event).
step(X, noun_quantity) :- step(X),not abnormal_d_quantity(X),not -step(X, noun_quantity).
step(X, noun_state) :- step(X),not -step(X, noun_state),-step(X, noun_quantity),-step(X, noun_artifact),not step(X, noun_event),not step(X, noun_communication),not step(X, noun_act).
step(X, noun_state) :- step(X),not abnormal_d_state(X),not -step(X, noun_state).
stream(X, noun_object) :- branch(X, noun_object).
stream(X, noun_object) :- stream(X),not abnormal_d_object(X),not -stream(X, noun_object).
structure(X, noun_artifact) :- projection(X, noun_artifact).
structure(X, noun_artifact) :- structure(X),not abnormal_d_artifact(X),not -structure(X, noun_artifact).
subfigure(X, noun_shape) :- branch(X, noun_shape).
subfigure(X, noun_shape) :- subfigure(X),not abnormal_d_shape(X),not -subfigure(X, noun_shape).
subject(X, noun_communication) :- question(X, noun_communication).
subject(X, noun_communication) :- subject(X),not abnormal_d_communication(X),not -subject(X, noun_communication).
support(X, noun_artifact) :- step(X, noun_artifact).
support(X, noun_artifact) :- support(X),not abnormal_d_artifact(X),not -support(X, noun_artifact).
task(X, noun_act) :- task(X),not abnormal_d_act(X),not -task(X, noun_act).
thing(X, noun_tops) :- body_of_water(X, noun_object).
thing(X, noun_tops) :- thing(X),not abnormal_d_tops(X),not -thing(X, noun_tops).
thinking(X, noun_cognition) :- explanation(X, noun_cognition).
thinking(X, noun_cognition) :- thinking(X),not abnormal_d_cognition(X),not -thinking(X, noun_cognition).
unit(X, noun_group) :- administrative_unit(X, noun_group).
unit(X, noun_group) :- unit(X),not abnormal_d_group(X),not -unit(X, noun_group).
value(X, noun_cognition) :- principle(X, noun_cognition).
value(X, noun_cognition) :- value(X),not abnormal_d_cognition(X),not -value(X, noun_cognition).
whole(X, noun_tops) :- artifact(X, noun_tops).
whole(X, noun_tops) :- natural_object(X, noun_tops).
whole(X, noun_tops) :- whole(X),not abnormal_d_tops(X),not -whole(X, noun_tops).
work(X, noun_act) :- duty(X, noun_act).
work(X, noun_act) :- labor(X, noun_act).
work(X, noun_act) :- task(X, noun_act).
work(X, noun_act) :- work(X),not abnormal_d_act(X),not -work(X, noun_act).
writing(X, noun_communication) :- notation(X, noun_communication).
writing(X, noun_communication) :- writing(X),not abnormal_d_communication(X),not -writing(X, noun_communication).
written_communication(X, noun_communication) :- writing(X, noun_communication).
written_communication(X, noun_communication) :- written_communication(X),not abnormal_d_communication(X),not -written_communication(X, noun_communication).