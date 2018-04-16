question('which nfl team represented the afc at super_bowl_50?', 1).
question('which nfl team represented the afc at super_bowl_50?', certain, X1) :- event(E1, represent, X1, O1),_similar(afc, O1), _property(E1, represent, at, 'super_bowl_50'), team(X1).
question('which nfl team represented the afc at super_bowl_50?', likely, X1) :- event(E1, represent, X1, O1),_similar(afc, O1), team(X1).
question('which nfl team represented the afc at super_bowl_50?', possible, X1) :- event(E1, represent, X1, O1),team(X1).
question('which nfl team represented the afc at super_bowl_50?', guess, X1) :- team(X1).

question('where was super_bowl_50 played?', 2).
question('where was super_bowl_50 played?', certain, X1) :- event(E1, play, S1, O1),_similar('super_bowl_50', O1), _property(E1, play, in, X1), location(X1).
question('where was super_bowl_50 played?', certain, X1) :- event(E1, play, S1, O1),_similar('super_bowl_50', O1), _property(E1, play, at, X1), location(X1).
question('where was super_bowl_50 played?', possible, X1) :- _property(E1, play, in, X1), location(X1).
question('where was super_bowl_50 played?', possible, X1) :- _property(E1, play, at, X1), location(X1).
question('where was super_bowl_50 played?', guess, X1) :- location(X1).

question('what day was the game played on?', 3).
question('what day was the game played on?', certain, X1) :- event(E1, play, S1, O1),_similar(game, O1), _property(E1, play, on, X1), time(X1).
question('what day was the game played on?', certain, X1) :- event(E1, play, S1, O1),_similar(game, O1), _property(E1, play, on, T), day(T, X1), time(T).
question('what day was the game played on?', possible, X1) :- _property(E1, play, on, X1), time(X1).
question('what day was the game played on?', possible, X1) :- _property(E1, play, on, T), day(T, X1), time(T).
question('what day was the game played on?', guess, X1) :- time(X1).
question('what day was the game played on?', guess, X1) :- day(T, X1), time(T).

question('what is the nfl short for?', 4).
question('what is the nfl short for?', certain, X1) :- _abbreviation(O1, X1),_similar(nfl, X1).