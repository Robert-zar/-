% task 1
append_list([], X, X).
append_list([H|T1], X, [H|T2]) :- append_list(T1, X, T2).

read_list(N, L) :- read_list(N, 0, [], L), !.
read_list(N, N, L, L) :- !.
read_list(N, CurN, CurL, L) :- CurN1 is CurN + 1, read(X), 
append_list(CurL, [X], CurL1), read_list(N, CurN1, CurL1, L).

write_list([]) :- !.
write_list([H|T]) :- write(H), write(" "), write_list(T).

% task 2
sum_list_down([],Sum,Sum):-!.
sum_list_down([H|T],CurSum,Sum):- CurSum1 is CurSum + H, sum_list_down(T, CurSum1, Sum).
sum_list_down([H|T], Sum):- sum_list_down([H|T], 0, Sum).

% task 3
sum_list_up([], 0) :- !.
sum_list_up([H|T], Sum) :- sum_list_up(T, Sum1), Sum is Sum1 + H.

% task 4
list_el_numb([H|_],H,CurN,CurN):-!.
list_el_numb([_|T],Elem,CurN,N):-CurN1 is CurN+1,list_el_numb(T,Elem,CurN1,N).
list_el_numb([H|T],Elem,N):-list_el_numb([H|T],Elem,1,N).

% task 6
min_list_up([H],H):-!.
min_list_up([H|T],Min):-min_list_up(T,Min1), (H < Min1 -> Min is H;Min is Min1).

% task 7
min_list_down([],CurMin,CurMin):-!.
min_list_down([H|T],CurMin,Min):-(H < CurMin -> CurMin1 is H; CurMin1 is CurMin),min_list_down(T,CurMin1,Min).
min_list_down([H|T],Min):- min_list_down(T,H,Min).

% task 9
member([X|_],X):-!.
member([_|T],X):-member(T,X).

% task 10
reverse([],CurList,CurList):-!.
reverse([H|T],CurList,NewList):-reverse(T,[H|CurList],NewList).
reverse(L,NewList):-reverse(L,[],NewList).

% task 11
p([],_):-!.
p(_,[]):-fail,!.
p([H|Sub_list],[H|List]):-p(Sub_list,List),!.
p(Sub_list,[_|List]):-p(Sub_list,List).

% task 12
delete(1,[_|T],T):- !.
delete(X,[H|T1],[H|T2]) :- X1 is X-1,delete(X1,T1,T2).

% task 13
delete_E([],_,[]):-!.
delete_E([H|T],H,T1):-delete_E(T,H,T1).
delete_E([H|T],X,[H|T1]):-delete_E(T,X,T1).

% task 14
repeat([]):- !.
repeat([H|T]):- not(member(T, H)), repeat(T).

% task 15
unical([],[]):-!.
unical([H|T],T1):-member(T,H),unical(T,T1),!.
unical([H|T],[H|T1]):-not(member(T,H)),unical(T,T1),!.

% task 16
kol([],_,N,N):-!.
kol([H|T],X,N,Count):- (H is X -> N1 is (N + 1), kol(T,X,N1,Count);N1 is N, kol(T,X,N1,Count)).
kol([H|T],X,Count):-kol([H|T],X,0,Count).

% task 17
lenght([],0).
lenght([_|T],X):-lenght(T,X1), X is (X1 + 1).

