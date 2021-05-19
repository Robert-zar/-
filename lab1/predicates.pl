% задача 1.1
men(X):-man(X),write(X),nl,fail.
women(X):-woman(X),write(X),nl,fail.

% задача 1.2
children(X):-parent(X,Y),write(Y),nl,fail.

% task 1.3
mother(X,Y):-parent(X,Y),woman(X).
mother(X):-parent(Y,X),woman(Y),write(Y).

% task 1.4
father(X,Y):-parent(X,Y),man(X).
father(X):-parent(Y,X),man(Y),write(Y).

% task 1.5
brother(X,Y):-parent(Z,Y),parent(Z,X),man(Z),man(X),not(X=Y)

% task 1.6
wife(X,Y):-parent(Y,Z),parent(X,Z),woman(X).
wife(X):-man(X),wife(Y,X),write(Y).

% task 1.7
b_s(X,Y):-parent(Z,X),parent(Z,Y),woman(Z),not(X=Y).

% task 1.8
grand_pa(X,Y):-parent(Z,Y),parent(X,Z),man(X).

% task 1.9
grand_ma(X,Y):-parent(Z,Y),parent(X,Z),woman(X).
grand_mas(X):-grand_ma(Y,X),write(Y),nl,fail.

% task 1.10
grand_pa_and_son(X,Y):-grand_pa(X,Y),man(Y).
grand_pa_and_son(X,Y):-grand_pa(Y,X),man(X).


% task 1.11
grand_ma_and_son(X,Y):-parent(X,Z),parent(Z,Y),woman(X),man(Y).
grand_ma_and_son(X,Y):-parent(Y,Z),parent(Z,X),man(X),woman(Y).

% task 1.12
uncle(X,Y):-parent(Z,Y),brother(X,Z).

% task 1.13
newphew(X,Y):-man(X),uncle(Y,X).
