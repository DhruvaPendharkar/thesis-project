/**************************************************************************
% World of Blocks
% eg blocks(world([a, b, d], [c], []), world([], [d, b], [a, c]))
***************************************************************************/
blocks(world(P, Q, R), M) :- solve(P, Q, R, [], [], M).

solve([], [b, a], [], _, A, M) :- reverse(A, M).

solve([H|T], Q, R, S, A, M) :- St = state(T, [H|Q], R), not visited(St, S), solve(T, [H|Q], R, [St|S], [move(H, 1, 2)|A], M).
solve([H|T], Q, R, S, A, M) :- St = state(T, Q, [H|R]), not visited(St, S), solve(T, Q, [H|R], [St|S], [move(H, 1, 3)|A], M).

solve(P, [H|T], R, S, A, M) :- St = state([H|P], T, R), not visited(St, S), solve([H|P], T, R, [St|S], [move(H, 2, 1)|A], M).
solve(P, [H|T], R, S, A, M) :- St = state(P, T, [H|R]), not visited(St, S), solve(P, T, [H|R], [St|S], [move(H, 2, 3)|A], M).

solve(P, Q, [H|T], S, A, M) :- St = state([H|P], Q, T), not visited(St, S), solve([H|P], Q, T, [St|S], [move(H, 3, 1)|A], M).
solve(P, Q, [H|T], S, A, M) :- St = state(P,[H|Q], T), not visited(St, S), solve(P, [H|Q], T, [St|S], [move(H, 3, 2)|A], M).

visited(state(A, B, C), [state(A, B, C)|_]).
visited(S, [_|T]) :- visited(S, T).

reverse(Xs, Ys) :- reverse(Xs, [], Ys).
reverse([X|Xs], Acc, Ys) :- reverse(Xs, [X|Acc], Ys).
reverse([], Ys, Ys).

?- blocks(world([b, a], [], []), M).