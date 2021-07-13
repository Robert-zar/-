% task 1 
max(X,Y,Z):-X>=Y,Z is X,!.
max(_,Y,Y).
