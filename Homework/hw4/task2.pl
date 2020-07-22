del(_, [], []).

del(X, [X|L1], L2):-
        del(X,L1,L2).


del(X, [H|L1], [H|L2]):-
        X\=H,
        del(X,L1,L2).


myDelete(X,List1,List2):-
	del(X,List1,List2),
	write('File name to store in \n'),
	read(Input),
	write_to_file(Input,List2).

write_to_file(Input,List2):-
	open(Input,write,Stream),
	write(Stream,List2),
	close(Stream).


