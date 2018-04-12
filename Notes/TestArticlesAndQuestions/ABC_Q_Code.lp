question('what company owns the american_broadcasting_company ?', 1).
question('what company owns the american_broadcasting_company ?', certain, X1) :- _mod(company, X1),_property(E1, own, _by, X1),_similar(american_broadcasting_company, O1),event(E1, own, _, O1).
question('what company owns the american_broadcasting_company ?', certain, X1) :- _mod(company, X1),_relation(X1, E1, _clause),event(E1, own, _, _).
question('what company owns the american_broadcasting_company ?', certain, X1) :- _mod(company, X1),_similar(american_broadcasting_company, O1),event(E1, own, X1, O1).
question('what company owns the american_broadcasting_company ?', certain, X1) :- _property(E1, own, _by, X1),_similar(american_broadcasting_company, O1),company(X1, _),event(E1, own, _, O1).
question('what company owns the american_broadcasting_company ?', certain, X1) :- _relation(X1, E1, _clause),company(X1, _),event(E1, own, _, _).
question('what company owns the american_broadcasting_company ?', certain, X1) :- _similar(american_broadcasting_company, O1),company(X1, _),event(E1, own, X1, O1).
question('what company owns the american_broadcasting_company ?', possible, X1) :- _mod(company, X1),_property(E1, own, _by, X1).
question('what company owns the american_broadcasting_company ?', possible, X1) :- _mod(company, X1),_relation(X1, E1, _clause).
question('what company owns the american_broadcasting_company ?', possible, X1) :- _mod(company, X1),event(E1, own, X1, O1).
question('what company owns the american_broadcasting_company ?', possible, X1) :- _property(E1, own, _by, X1),company(X1, _).
question('what company owns the american_broadcasting_company ?', possible, X1) :- _relation(X1, E1, _clause),company(X1, _).
question('what company owns the american_broadcasting_company ?', possible, X1) :- company(X1, _),event(E1, own, X1, O1).
question('what company owns the american_broadcasting_company ?', guess, X1) :- _mod(company, X1).
question('what company owns the american_broadcasting_company ?', guess, X1) :- company(X1, _).

question('since what year did abc stylize abc s logo , as abc ?', 2).
question('since what year did abc stylize abc s logo , as abc ?', certain, X2) :- _possess(abc, logo),_property(E2, stylize, _by, S2),_property(E2, stylize, since, X2),_similar(abc, S2),_similar(logo, O2),event(E2, stylize, _, O2),organization(abc),time(T2),year(T2, X2).
question('since what year did abc stylize abc s logo , as abc ?', certain, X2) :- _possess(abc, logo),_property(E2, stylize, since, X2),_relation(S2, E2, _clause),_similar(abc, S2),event(E2, stylize, _, _),organization(abc),time(T2),year(T2, X2).
question('since what year did abc stylize abc s logo , as abc ?', certain, X2) :- _possess(abc, logo),_property(E2, stylize, since, X2),_similar(abc, S2),_similar(logo, O2),event(E2, stylize, S2, O2),organization(abc),time(T2),year(T2, X2).
question('since what year did abc stylize abc s logo , as abc ?', likely, X2) :- _property(E2, stylize, _by, S2),_property(E2, stylize, since, X2),_similar(abc, S2),_similar(logo, O2),event(E2, stylize, _, O2),time(T2),year(T2, X2).
question('since what year did abc stylize abc s logo , as abc ?', likely, X2) :- _property(E2, stylize, since, X2),_relation(S2, E2, _clause),_similar(abc, S2),event(E2, stylize, _, _),time(T2),year(T2, X2).
question('since what year did abc stylize abc s logo , as abc ?', likely, X2) :- _property(E2, stylize, since, X2),_similar(abc, S2),_similar(logo, O2),event(E2, stylize, S2, O2),time(T2),year(T2, X2).
question('since what year did abc stylize abc s logo , as abc ?', possible, X2) :- _property(E2, stylize, since, X2),time(T2),year(T2, X2).
question('since what year did abc stylize abc s logo , as abc ?', guess, X2) :- time(T2),year(T2, X2).

question('in what borough of new_york_city is abc headquartered ?', 3).
question('in what borough of new_york_city is abc headquartered ?', certain, X2) :- _mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, _by, S2),_property(E2, headquarter, in, X2),_similar(abc, S2),event(E2, headquarter, _, O2),organization(abc).
question('in what borough of new_york_city is abc headquartered ?', certain, X2) :- _mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_relation(S2, E2, _clause),_similar(abc, S2),event(E2, headquarter, _, _),organization(abc).
question('in what borough of new_york_city is abc headquartered ?', certain, X2) :- _mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_similar(abc, S2),event(E2, headquarter, S2, O2),organization(abc).
question('in what borough of new_york_city is abc headquartered ?', certain, X2) :- _property(E2, borough, of, new_york_city),_property(E2, headquarter, _by, S2),_property(E2, headquarter, in, X2),_similar(abc, S2),borough(X2, _),event(E2, headquarter, _, O2),organization(abc).
question('in what borough of new_york_city is abc headquartered ?', certain, X2) :- _property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_relation(S2, E2, _clause),_similar(abc, S2),borough(X2, _),event(E2, headquarter, _, _),organization(abc).
question('in what borough of new_york_city is abc headquartered ?', certain, X2) :- _property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_similar(abc, S2),borough(X2, _),event(E2, headquarter, S2, O2),organization(abc).
question('in what borough of new_york_city is abc headquartered ?', likely, X2) :- _mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, _by, S2),_property(E2, headquarter, in, X2),_similar(abc, S2),event(E2, headquarter, _, O2).
question('in what borough of new_york_city is abc headquartered ?', likely, X2) :- _mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_relation(S2, E2, _clause),_similar(abc, S2),event(E2, headquarter, _, _).
question('in what borough of new_york_city is abc headquartered ?', likely, X2) :- _mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_similar(abc, S2),event(E2, headquarter, S2, O2).
question('in what borough of new_york_city is abc headquartered ?', likely, X2) :- _property(E2, borough, of, new_york_city),_property(E2, headquarter, _by, S2),_property(E2, headquarter, in, X2),_similar(abc, S2),borough(X2, _),event(E2, headquarter, _, O2).
question('in what borough of new_york_city is abc headquartered ?', likely, X2) :- _property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_relation(S2, E2, _clause),_similar(abc, S2),borough(X2, _),event(E2, headquarter, _, _).
question('in what borough of new_york_city is abc headquartered ?', likely, X2) :- _property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_similar(abc, S2),borough(X2, _),event(E2, headquarter, S2, O2).
question('in what borough of new_york_city is abc headquartered ?', possible, X2) :- _mod(borough, X2),_property(E2, headquarter, in, X2).
question('in what borough of new_york_city is abc headquartered ?', possible, X2) :- _property(E2, headquarter, in, X2),borough(X2, _).
question('in what borough of new_york_city is abc headquartered ?', guess, X2) :- _mod(borough, X2).
question('in what borough of new_york_city is abc headquartered ?', guess, X2) :- borough(X2, _).

question('on what streets is the abc s headquarter located ?', 4).
question('on what streets is the abc s headquarter located ?', certain, X) :- _mod(street, X),_possess(abc, headquarter),_property(located, on, X),organization(abc).
question('on what streets is the abc s headquarter located ?', certain, X) :- _possess(abc, headquarter),_property(located, on, X),organization(abc),street(X, _).
question('on what streets is the abc s headquarter located ?', likely, X) :- _mod(street, X),_property(located, on, X).
question('on what streets is the abc s headquarter located ?', likely, X) :- _property(located, on, X),street(X, _).
question('on what streets is the abc s headquarter located ?', guess, X) :- _mod(street, X).
question('on what streets is the abc s headquarter located ?', guess, X) :- street(X, _).

question('disney_abc_television_group is a subsidiary of what division of the_walt_disney_company ?', 5).
question('disney_abc_television_group is a subsidiary of what division of the_walt_disney_company ?', certain, X1) :- _is(disney_abc_television_group, subsidiary),_mod(division, X1),_property(E1, division, of, the_walt_disney_company),_property(E1, subsidiary, of, X1).
question('disney_abc_television_group is a subsidiary of what division of the_walt_disney_company ?', certain, X1) :- _is(disney_abc_television_group, subsidiary),_property(E1, division, of, the_walt_disney_company),_property(E1, subsidiary, of, X),division(X, _), _mod(X, X1).
question('disney_abc_television_group is a subsidiary of what division of the_walt_disney_company ?', certain, X1) :- _is(disney_abc_television_group, subsidiary),_property(E1, division, of, the_walt_disney_company),_property(E1, subsidiary, of, X1),division(X1, _).
question('disney_abc_television_group is a subsidiary of what division of the_walt_disney_company ?', likely, X1) :- _mod(division, X1),_property(E1, division, of, the_walt_disney_company),_property(E1, subsidiary, of, X1).
question('disney_abc_television_group is a subsidiary of what division of the_walt_disney_company ?', likely, X1) :- _property(E1, division, of, the_walt_disney_company),_property(E1, subsidiary, of, X1),division(X1, _).
question('disney_abc_television_group is a subsidiary of what division of the_walt_disney_company ?', possible, X1) :- _mod(division, X1),_property(E1, subsidiary, of, X1).
question('disney_abc_television_group is a subsidiary of what division of the_walt_disney_company ?', possible, X1) :- _property(E1, subsidiary, of, X1),division(X1, _).
question('disney_abc_television_group is a subsidiary of what division of the_walt_disney_company ?', guess, X1) :- _mod(division, X1).
question('disney_abc_television_group is a subsidiary of what division of the_walt_disney_company ?', guess, X1) :- division(X1, _).