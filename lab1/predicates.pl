% task 1.3
mother(X,Y):-parent(X,Y),woman(X).
mother(X):-parent(Y,X),woman(Y),write(Y).

% task 1.5
brother(X,Y):-parent(Z,Y),parent(Z,X),man(Z),man(X),not(X=Y)
