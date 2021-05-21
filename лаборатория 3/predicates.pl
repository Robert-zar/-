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

% task 5
fib(1, 1) :- !.
fib(2, 1) :- !.
fib(N, X) :- N1 is N - 1, N2 is N - 2, fib(N1, X1), fib(N2, X2), X is X1 + X2.

% task 6
fib(1, _, CurX2, CurX2) :- !.
fib(2, _, CurX2, CurX2) :- !.
fib(N, CurX1, CurX2, X) :- CurX3 is CurX1 + CurX2, N1 is N - 1, fib(N1, CurX2, CurX3, X).
fibN(N, X) :- fib(N, 1, 1, X).

% task 7
sum_digitsUp(0, 0) :- !.
sum_digitsUp(Num, Sum) :- Mod is Num mod 10, Num1 is Num div 10, sum_digitsUp(Num1, Sum1), Sum is Sum1 + Mod.

% task 8
sum_digitsDown(0, CurSum, CurSum) :- !.
sum_digitsDown(Num, CurSum, Sum) :- Mod is Num mod 10, Num1 is Num div 10, CurSum1 is CurSum + Mod, sum_digitsDown(Num1, CurSum1, Sum).
sum_digitsDown_n(Num, Sum) :- sum_digitsDown(Num, 0, Sum).
