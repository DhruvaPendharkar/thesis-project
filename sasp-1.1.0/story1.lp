lived(lion, in(forest)).
sleeping(lion, under(tree)).
came(mouse, there).
play(mouse, on(lion)).
saw(lion, mouse).
tremble(mouse, with(fear)).
jumped(lion, on(mouse)).
kill(lion, mouse).
requested(mouse, lion).
forgive(mouse, lion).
felt(lion, pity).
left(lion, mouse).
ran(mouse, away).
caught(lion, by(hunter)).
caught(lion, in(net)).
cut(mouse, net).
escaped(lion).
friends(mouse, lion).

do(P, A) :- sleeping(P, A).
do(P, A) :- lived(P, A).

?- do(lion, A).