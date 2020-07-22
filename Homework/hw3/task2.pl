list_min([X],X).
list_min([Head|Tail], Min) :-
     list_min(Tail, TailMin), Min is min(TailMin, Head).
