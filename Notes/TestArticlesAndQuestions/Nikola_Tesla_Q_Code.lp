question('when was nikola_tesla born ?').
question('when was nikola_tesla born ?', 1, X2) :- _property(E2, bear, _by, S2),_similar(nikola_tesla, S2),event(E2, bear, _, O2),time(X2).
question('when was nikola_tesla born ?', 1, X2) :- _relation(S2, E2, _clause),_similar(nikola_tesla, S2),event(E2, bear, _, _),time(X2).
question('when was nikola_tesla born ?', 1, X2) :- _similar(nikola_tesla, S2),_start_date(S2, X2),time(X2).
question('when was nikola_tesla born ?', 1, X2) :- _similar(nikola_tesla, S2),event(E2, bear, S2, O2),time(X2).
question('when was nikola_tesla born ?', 3, X2) :- _start_date(S2, X2),time(X2).
question('when was nikola_tesla born ?', 3, X2) :- time(X2).

question('when did tesla die ?').
question('when did tesla die ?', 1, X1) :- _end_date(S2, X1),_similar(tesla, S2),time(X1).
question('when did tesla die ?', 1, X1) :- _property(E2, die, _by, S2),_similar(tesla, S2),event(E2, die, _, O2),time(X1).
question('when did tesla die ?', 1, X1) :- _relation(S2, E2, _clause),_similar(tesla, S2),event(E2, die, _, _),time(X1).
question('when did tesla die ?', 1, X1) :- _similar(tesla, S2),event(E2, die, S2, O2),time(X1).
question('when did tesla die ?', 3, X1) :- _end_date(S2, X1),time(X1).
question('when did tesla die ?', 3, X1) :- time(X1).