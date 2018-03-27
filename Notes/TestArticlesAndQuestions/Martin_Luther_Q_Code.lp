question('when did martin_luther die ?').
question('when did martin_luther die ?', 1, X1) :- _end_date(S2, X1),_similar(martin_luther, S2),time(X1).
question('when did martin_luther die ?', 1, X1) :- _property(E2, die, _by, S2),_similar(martin_luther, S2),event(E2, die, _, O2),time(X1).
question('when did martin_luther die ?', 1, X1) :- _relation(S2, E2, _clause),_similar(martin_luther, S2),event(E2, die, _, _),time(X1).
question('when did martin_luther die ?', 1, X1) :- _similar(martin_luther, S2),event(E2, die, S2, O2),time(X1).
question('when did martin_luther die ?', 3, X1) :- _end_date(S2, X1),time(X1).
question('when did martin_luther die ?', 3, X1) :- time(X1).