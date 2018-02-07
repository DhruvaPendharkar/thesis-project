
:-index(affect(1,1)).
:-index(after(1,1)).
:-index(causes(1,1)).
:-index(entails(1,1)).
:-index(opposite(1,1)).
:-index(preceed(1,1)).
:-index(result(1,1)).
:-index(result(1,1)).
:-index(within(1,1)).

:-['vop_affect.pl'].
:-['vop_after.pl'].
:-['vop_causes.pl'].
:-['vop_entails.pl'].
:-['vop_opposite.pl'].
:-['vop_preceed.pl'].
:-['vop_result.pl'].
:-['vop_within.pl'].


/* Very Simple verbOcean Prolog Classes made from the entailments - See Verb Ocean documentation */

verb_resource(affect, VERB, R ) :- 
	affect(VERB, R).
verb_resource(within, VERB, R ) :- 
	within(VERB, R).
verb_resource(preceed, VERB, R ) :- 
	preceed(VERB, R).
verb_resource(after, VERB, R ) :- 
	after(VERB, R).
verb_resource(entails, VERB, R ) :- 
	entails(VERB, R).
verb_resource(causes, VERB, R ) :- 
	causes(VERB, R).
verb_resource(opposite, VERB, R ) :- 
	opposite(VERB, R).

is_verb_resource(VERB) :-
	verb_resource(_,VERB, _).	
	
get_verb_resource(  verbOcean, VERB, LIST ) :- 
	is_verb_resource(VERB),
	verbMapping( VERB, LIST).		

% Input a Verb and get a list of all entailment types

verbOcean( VERB, L) :-
  findall(AFFECT,affect(VERB, AFFECT), AFFECTLIST),
  findall(WITHIN, within(VERB,WITHIN), WITHINLIST),  
  findall(PRECEED, preceed(VERB,PRECEED), PRECEEDLIST),
  findall(AFTER,after(VERB, AFTER), AFTERLIST),
  findall(ENTAILS, entails(VERB, ENTAILS), ENTAILSLIST),
  findall(CAUSES, causes(VERB, CAUSES), CAUSESLIST),
  findall(RESULT, result(VERB, RESULT), RESULTLIST),
  findall(OPPOSITE, opposite(VERB,OPPOSITE), OPPOSITELIST),
  L = [affectList(AFFECTLIST), withinList(WITHINLIST), preceedList(PRECEEDLIST), afterList(AFTERLIST), entailsList(ENTAILSLIST), causesList(CAUSESLIST), resultList(RESULTLIST), oppositeList(OPPOSITELIST)], 
  !.

get_verb_ocean(VERB, ENTAILMENT) :-
	verbOcean( VERB, [affectList(_), withinList(_), preceedList(_), afterList(_), entailsList(ENTAILSLIST), causesList(_), resultList(_), oppositeList(_)] ),
	member(ENTAILMENT, ENTAILSLIST),
	!.
	
