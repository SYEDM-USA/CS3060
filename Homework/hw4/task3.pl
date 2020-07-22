:- use_module(library(clpfd)).

sudoku(Puzzle, Solution):-
  Solution = Puzzle,
  append(Solution, Vs), Vs ins 1..9,
  maplist(all_distinct, Solution),
  transpose(Solution, Columns),
  maplist(all_distinct, Columns),
  Solution = [A,B,C,D,E,F,G,H,I],
  blocks(A, B, C), blocks(D, E, F), blocks(G, H, I),     
  maplist(label, Solution).



blocks([], [], []).       
blocks([A,B,C|Bs1], [D,E,F|Bs2], [G,H,I|Bs3]) :-     
  all_distinct([A,B,C,D,E,F,G,H,I]),      
  blocks(Bs1, Bs2, Bs3).

