% task 1 
max(X,Y,Z):-X>=Y,Z is X,!.
max(_,Y,Y).

% task 2
max(X, Y, U, Z) :- X >= Y, X >= U, Z is X, !.
max(_, Y, U, Z) :- Y >= U, Z is Y, !.
max(_, _, U, Z) :- Z is U.

% task 3
fact(0, 1) :- !.
fact(N, X) :- N1 is N - 1, fact(N1, X1), X is X1 * N.

% task 4
fact(0, CurX, CurX) :- !.
fact(N, CurX, X) :- CurX1 is CurX * N, N1 is N - 1, fact(N1, CurX1, X).
factN(N, X) :- fact(N, 1, X).
