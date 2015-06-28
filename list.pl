member(X,[X| _]).
member(X,[_ |T]) :- member(X,T).

length([], 0).
length([A|B],N) :- length(B,M), N is M+1 .

smallest([A],A) :- !.
smallest([A|B],N) :- smallest(B,N), N<A, !.
smallest([A| _ ], A).

depth(X,0) :- atomic(X), !.
depth([X|Y],N) :- depth(X,XD), depth(Y,YD), X1 is XD+1, max(X1,YD,N).
max(X,Y,X) :- X>Y, !.
max(_,Y,Y).
