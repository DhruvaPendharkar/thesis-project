/**************************************************************************
% Cannibal Missionary Problems
% solvePuzzle(#Missionary on bank1, #Cannibal on bank1, boatBank)
% eg solvePuzzle(3, 3, left).
***************************************************************************/
solvePuzzle() :- solvePuzzle(3, 3, left).
solvePuzzle(M, C, left) :- puzzleGoRight(M, C, left, [], []).

/**************************************************************************
% Process Right Direction for Boat
% eg puzzleGoRight(M, C, D, left, actions).
***************************************************************************/
puzzleGoRight(M, C, left, L, A) :- M1 is M - 1, validState(M1, C), S = state(M1, C, right), not(stateIn(S, L)), puzzleGoLeft(M1, C, right, [state(M, C, left)|L], [boat(1, 0, right)|A]).
puzzleGoRight(M, C, left, L, A) :- C1 is C - 1, validState(M, C1), S = state(M, C1, right), not(stateIn(S, L)), puzzleGoLeft(M, C1, right, [state(M, C, left)|L], [boat(0, 1, right)|A]).
puzzleGoRight(M, C, left, L, A) :- M1 is M - 2, validState(M1, C), S = state(M1, C, right), not(stateIn(S, L)), puzzleGoLeft(M1, C, right, [state(M, C, left)|L], [boat(2, 0, right)|A]).
puzzleGoRight(M, C, left, L, A) :- C1 is C - 2, validState(M, C1), S = state(M, C1, right), not(stateIn(S, L)), puzzleGoLeft(M, C1, right, [state(M, C, left)|L], [boat(0, 2, right)|A]).
puzzleGoRight(M, C, left, L, A) :- M1 is M - 1, C1 is C - 1, validState(M1, C1), S = state(M1, C1, right), not(stateIn(S, L)), puzzleGoLeft(M1, C1, right, [state(M, C, left)|L], [boat(1, 1, right)|A]).

/**************************************************************************
% Process Left Direction for Boat
% eg puzzleGoLeft(M, C, right, actions).
***************************************************************************/
puzzleGoLeft(0, 0, right, _, A) :- computeAction(A, bank1(["c1", "c2", "c3"], ["m1", "m2", "m3"]), bank2([], [])).
puzzleGoLeft(M, C, right, L, A) :- M1 is M + 1, validState(M1, C), S = state(M1, C, left), not(stateIn(S, L)), puzzleGoRight(M1, C, left, [state(M, C, right)|L], [boat(1, 0, left)|A]).
puzzleGoLeft(M, C, right, L, A) :- C1 is C + 1, validState(M, C1), S = state(M, C1, left), not(stateIn(S, L)), puzzleGoRight(M, C1, left, [state(M, C, right)|L], [boat(0, 1, left)|A]).
puzzleGoLeft(M, C, right, L, A) :- M1 is M + 2, validState(M1, C), S = state(M1, C, left), not(stateIn(S, L)), puzzleGoRight(M1, C, left, [state(M, C, right)|L], [boat(2, 0, left)|A]).
puzzleGoLeft(M, C, right, L, A) :- C1 is C + 2, validState(M, C1), S = state(M, C1, left), not(stateIn(S, L)), puzzleGoRight(M, C1, left, [state(M, C, right)|L], [boat(0, 2, left)|A]).
puzzleGoLeft(M, C, right, L, A) :- M1 is M + 1, C1 is C + 1, validState(M1, C1), S = state(M1, C1, left), not(stateIn(S, L)), puzzleGoRight(M1, C1, left, [state(M, C, right)|L], [boat(1, 1, left)|A]).

/**************************************************************************
% Checks if current state was already visited
% eg stateIn(state(M, C, D), L).
***************************************************************************/
stateIn(state(M, C, D), [state(M, C, D)|_]).
stateIn(state(M, C, D), [_|T]) :- stateIn(state(M, C, D), T) .

/**************************************************************************
% State
% eg validState(3, 3).
***************************************************************************/
validState(M, C) :- M >=0, C >= 0, M < 4, C < 4, M >= C.
validState(M, C) :- M = 0, C >= 0, C < 4.

/**************************************************************************
% Compute Action from Bank1 to Bank2 and vice versa
***************************************************************************/
computeAction([], _, _).
computeAction([boat(M, C, right)|T], bank1(C1, M1), bank2(C2, M2)) :- remove(M, M1, M11, M1R), add(M11, M2, M22), remove(C, C1, C11, C1R), add(C11, C2, C22), add(M11, C11, B), printBoat(B), nl, computeAction(T, bank1(C1R, M1R), bank2(C22, M22)).
computeAction([boat(M, C, left)|T], bank1(C1, M1), bank2(C2, M2)) :- remove(M, M2, M22, M2R), add(M22, M1, M11), remove(C, C2, C22, C2R), add(C22, C1, C11),  add(M22, C22, B), printBoat(B), nl, computeAction(T, bank1(C11, M11), bank2(C2R, M2R)).

/**************************************************************************
% Remove elements from list
% eg remove(1, ["c1", "c2", "c3"], ["c1"], ["c2", "c3"]).
***************************************************************************/
remove(0, L, [], L).
remove(K, [H|T], [H|L1], L1R) :- K1 is K - 1, remove(K1, T, L1, L1R).

/**************************************************************************
% Add two lists L1 + L2 = L3
% eg add(L1, L2, L3).
***************************************************************************/
add([], L, L).
add([H|T], L, [H|L1]) :- add(T, L, L1).

/**************************************************************************
% Print Boat
% eg printBoat(["m1", "c1"]).
***************************************************************************/
printBoat([]).
printBoat([H|T]) :- write(H), write(" "), printBoat(T).