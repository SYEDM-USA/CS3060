side(west,'Apartments').
side(west,'Falcon Heights').
side(west,'Offenhauer Towers').
side(west,'Macdonald').
side(west,'Founders').

side(east,'Kohl').
side(east,'Centennial').
side(east,'Conklin').
side(east,'Greek Village').
side(east,'Kreischer').

is_real(Y):- side(_X,Y).

find_side:-
	write('Whose position do you wish to know? \n'),
	read(Input), side(Output, Input),
	write('The side of '), write(Input),
	write(' is '), write(Output), write('.').

give_count(X,N):- findall(X,side(X,_Y),L), length(L,N).
	
