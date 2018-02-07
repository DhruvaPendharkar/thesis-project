/**************************************************************************
% Cannibal Missionary Problems
% solvePuzzle(#Missionary on bank1, #Cannibal on bank1, boatBank, answerSet)
% eg solvePuzzle(3, 3, left, T).
***************************************************************************/
solvePuzzle(M, C, left, T) :- puzzleGoRight(M, C, left, [], [], T).

/**************************************************************************
% Process Right Direction for Boat
% eg puzzleGoRight(M, C, D, left, actions).
***************************************************************************/
puzzleGoRight(M, C, left, L, A, T) :- M1 is M - 1, validState(M1, C), S = state(M1, C, right), not stateIn(S, L), puzzleGoLeft(M1, C, right, [state(M, C, left)|L], [boat(1, 0, right)|A], T).
puzzleGoRight(M, C, left, L, A, T) :- C1 is C - 1, validState(M, C1), S = state(M, C1, right), not stateIn(S, L), puzzleGoLeft(M, C1, right, [state(M, C, left)|L], [boat(0, 1, right)|A], T).
puzzleGoRight(M, C, left, L, A, T) :- M1 is M - 2, validState(M1, C), S = state(M1, C, right), not stateIn(S, L), puzzleGoLeft(M1, C, right, [state(M, C, left)|L], [boat(2, 0, right)|A], T).
puzzleGoRight(M, C, left, L, A, T) :- C1 is C - 2, validState(M, C1), S = state(M, C1, right), not stateIn(S, L), puzzleGoLeft(M, C1, right, [state(M, C, left)|L], [boat(0, 2, right)|A], T).
puzzleGoRight(M, C, left, L, A, T) :- M1 is M - 1, C1 is C - 1, validState(M1, C1), S = state(M1, C1, right), not stateIn(S, L), puzzleGoLeft(M1, C1, right, [state(M, C, left)|L], [boat(1, 1, right)|A], T).

/**************************************************************************
% Process Left Direction for Boat
% eg puzzleGoLeft(M, C, right, actions).
***************************************************************************/
puzzleGoLeft(0, 0, right, _, A, A).
puzzleGoLeft(M, C, right, L, A, T) :- M1 is M + 1, validState(M1, C), S = state(M1, C, left), not stateIn(S, L), puzzleGoRight(M1, C, left, [state(M, C, right)|L], [boat(1, 0, left)|A], T).
puzzleGoLeft(M, C, right, L, A, T) :- C1 is C + 1, validState(M, C1), S = state(M, C1, left), not stateIn(S, L), puzzleGoRight(M, C1, left, [state(M, C, right)|L], [boat(0, 1, left)|A], T).
puzzleGoLeft(M, C, right, L, A, T) :- M1 is M + 2, validState(M1, C), S = state(M1, C, left), not stateIn(S, L), puzzleGoRight(M1, C, left, [state(M, C, right)|L], [boat(2, 0, left)|A], T).
puzzleGoLeft(M, C, right, L, A, T) :- C1 is C + 2, validState(M, C1), S = state(M, C1, left), not stateIn(S, L), puzzleGoRight(M, C1, left, [state(M, C, right)|L], [boat(0, 2, left)|A], T).
puzzleGoLeft(M, C, right, L, A, T) :- M1 is M + 1, C1 is C + 1, validState(M1, C1), S = state(M1, C1, left), not stateIn(S, L), puzzleGoRight(M1, C1, left, [state(M, C, right)|L], [boat(1, 1, left)|A], T).

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
validState(0, 0). validState(0, 1). validState(0, 2). validState(0, 3).
validState(1, 1). validState(2, 2). validState(3, 0). validState(3, 1).
validState(3, 2). validState(3, 3).

?- solvePuzzle(3, 3, left, T).