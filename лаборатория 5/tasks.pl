sub_posl([],_):-!.
sub_posl(_,[]):-fail,!.
sub_posl([H|Sub_list],[H|List]):-sub_posl(Sub_list,List),!.
sub_posl(Sub_list,[_|List]):-sub_posl(Sub_list,List).

sub_set([],[]).
sub_set([H|Sub_set],[H|Set]):-sub_set(Sub_set,Set).
sub_set(Sub_set,[H|Set]):-sub_set(Sub_set,Set).

in_list([El|_],El).
in_list([_|T],El):-in_list(T,El).


sprava_next(A,B,[C]):-fail.
sprava_next(A,B,[A|[B|Tail]]).
sprava_next(A,B,[_|List]):-sprava_next(A,B,List).

sleva_next(A,B,[C]):-fail.
sleva_next(A,B,[B|[A|Tail]]).
sleva_next(A,B,[_|List]):-sleva_next(A,B,List).

next_to(A,B,List):-sprava_next(A,B,List).
next_to(A,B,List):-sleva_next(A,B,List).

el_no(List,Num,El):-el_no(List,Num,1,El).
el_no([H|_],Num,Num,H):-!.
el_no([_|Tail],Num,Ind,El):-Ind1 is Ind+1,el_no(Tail,Num,Ind1,El).

% task 1
pr_houses:- Houses=[_,_,_,_,_],

		in_list(Houses,[red,english,_,_,_]),
		in_list(Houses,[_,spanish,_,dog,_]),
		in_list(Houses,[green,_,coffee,_,_]),
		in_list(Houses,[_,ukrain,tea,_,_]),
		sprava_next([green,_,_,_,_],[white,_,_,_,_],Houses),
		in_list(Houses,[_,_,_,ulitka,old_gold]),
		in_list(Houses,[yellow,_,_,_,kool]),
		el_no(Houses,3,[_,_,milk,_,_]),
		el_no(Houses,1,[_,norway,_,_,_]),
		next_to([_,_,_,_,chester],[_,_,_,fox,_],Houses),
		next_to([_,_,_,_,kool],[_,_,_,horse,_],Houses),
		in_list(Houses,[_,_,orange,_,lucky]),
		in_list(Houses,[_,japan,_,_,parlament]),
		next_to([_,norway,_,_,_],[blue,_,_,_,_],Houses),


		in_list(Houses,[_,WHO1,water,_,_]),
		in_list(Houses,[_,WHO2,_,zebra,_]),
		write(Houses),
		write(WHO1),nl,write(WHO2).
		
% task 2		
pr_friends:- Friends=[_,_,_],
    
    			in_list(Friends,[belokurov,_]),
    			in_list(Friends,[chernov,_]),
    			in_list(Friends,[rizhov,_]),
    			in_list(Friends,[_,brunet]),
			in_list(Friends,[_,red]),
    			in_list(Friends,[_,blond]),
			not(in_list(Friends,[belokurov,blond])),
    			not(in_list(Friends,[belokurov,brunet])),
    			not(in_list(Friends,[rizhov,red])),
    			not(in_list(Friends,[chernov,brunet])),
		write(Friends).

% task 3
pr_girlfriends:- Girlfriends=[_,_,_],

		in_list(Girlfriends,[_,white,_]),
                in_list(Girlfriends,[_,green,_]),
                in_list(Girlfriends,[_,blue,_]),
		in_list(Girlfriends,[_,_,white]),
		in_list(Girlfriends,[_,_,green]),
		in_list(Girlfriends,[_,_,blue]),
		in_list(Girlfriends,[anya,_,_]),
                in_list(Girlfriends,[valya,_,_]),
		in_list(Girlfriends,[natasha,_,green]),
		
		not(in_list(Girlfriends,[natasha,green,_])),
		not(in_list(Girlfriends,[valya,white,white])),

		write(Girlfriends),!.
		
% task 4
pr_profession:- Profession=[_,_,_],
			
	in_list(Profession,[ivanov,_,_]),
	in_list(Profession,[borisov,_,_]),
	in_list(Profession,[semenov,_,3]),			
    	in_list(Profession,[_,slesar,1]),
	in_list(Profession,[_,tokar,_]),
	in_list(Profession,[_,svarka,_]),
  		
    	in_list(Profession,[_,_,2]),
    					
    	not(in_list(Profession,[borisov,slesar,_])),
    	not(in_list(Profession,[semenov,tokar,_])),
    			
         write(Profession).

% task 5
pr_napitki :- Napitki =[_, _, _, _],

		in_list(Napitki,[butylka,_]),
		in_list(Napitki,[stakan,_]),
		in_list(Napitki,[kuvshin,_]),
		in_list(Napitki,[banka,_]),

		in_list(Napitki,[_,moloko]),
		in_list(Napitki,[_,limonad]),
		in_list(Napitki,[_,kvas]),
		in_list(Napitki,[_,voda]),

                             not(in_list( Napitki,[butylka,moloko])),
		not(in_list( Napitki,[butylka,voda])),

		next_to([kuvshin,_],[_,limonad],Napitki),
		next_to([_,limonad],[_,kvas], Napitki),

		not(in_list(Napitki,[banka,limonad])),
		not(in_list(Napitki,[banka,voda])),

		next_to([banka,_],[stakan,_], Napitki),
		next_to([banka,_],[_,moloko],Napitki),

	write( Napitki),!.

% task 6
pr_talents:- Talents = [_,_,_,_],

		in_list(Talents,[pavlov,_]),
		in_list(Talents,[levickiy,_]),
		in_list(Talents,[voronov,_]),
		in_list(Talents,[saharov,_]),


		in_list(Talents,[_,writer]),
		in_list(Talents,[_,dancer]),
		in_list(Talents,[_,artist]),
		in_list(Talents,[_,singer]),

		not(in_list(Talents,[voronov,singer])),
		not(in_list(Talents,[levickiy,singer])),
		not(in_list(Talents,[pavlov,writer])),
		not(in_list(Talents,[pavlov,artist])),
		not(in_list(Talents,[saharov,writer])),
		not(in_list(Talents,[voronov,writer])),
		not(in_list(Talents,[voronov,artist])),

	write(Talents).
