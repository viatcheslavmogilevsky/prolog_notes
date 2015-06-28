r(5,2,4).
r(5,4,3).
r(2,3,1).
r(3,4,2).

s(X,Y,L) :-
  r(X,Y,L).
s(X,Y,plus(L1,L2)) :-
  r(X,Z,L1),
  s(Z,Y,L2).
