edge(5,2,4).
edge(5,4,3).
edge(2,3,1).
edge(3,4,2).

path(A,B,Len) :-
       travel(A,B,[A],Q,Len),
       reverse(Q,Path).

travel(A,B,P,[B|P],L) :-
       edge(A,B,L).
travel(A,B,Visited,Path,L) :-
       edge(A,C,D),
       C \== B,
       \+member(C,Visited),
       travel(C,B,[C|Visited],Path,L1),
       L is D+L1.
