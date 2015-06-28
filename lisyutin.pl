assert(segment(t1, t1_1, t1_2)).
assert(segment(t2, t2_1, t2_2)).
assert(segment(t3, t3_1, t3_2)).
assert(coincide(t1_2, t2_1)).
assert(coincide(t2_2, t3_1)).
assert(coincide(t3_2, t1_1)).
assert(equal(t1, t2)).
assert(base(b, t1, t2, t3)).


assert(segment(r1, r1_1, r1_2)).
assert(segment(r2, r2_1, r2_2)).
assert(segment(r3, r3_1, r3_2)).
assert(segment(r4, r4_1, r4_2)).
assert(perpendicular(r1, r2)).
assert(perpendicular(r2, r3)).
assert(perpendicular(r3, r4)).
assert(coincide(r1_2, r2_1)).
assert(coincide(r2_2, r3_1)).
assert(coincide(r3_2, r4_1)).
assert(coincide(r4_2, r1_1)).
assert(more(r1, r2)).
assert(firstfloor(ff, r1, r2, r3, r4)).


assert(segment(q1, q1_1, q1_2)).
assert(segment(q2, q2_1, q2_2)).
assert(segment(q3, q3_1, q3_2)).
assert(segment(q4, q4_1, q4_2)).
assert(perpendicular(q1, q2)).
assert(perpendicular(q2, q3)).
assert(perpendicular(q3, q4)).
assert(coincide(q1_2, q2_1)).
assert(coincide(q2_2, q3_1)).
assert(coincide(q3_2, q4_1)).
assert(coincide(q4_2, q1_1)).
assert(more(q2, q1)).
assert(flagbase(fb, q1, q2, q3, q4)).
assert(segment(w1, w1_1, w1_2)).
assert(segment(w2, w2_1, w2_2)).
assert(segment(w3, w3_1, w3_2)).
assert(coincide(w1_2, w2_1)).
assert(coincide(w2_2, w3_1)).
assert(coincide(w3_2, w1_1)).
assert(perpendicular(w1, w2)).
assert(flag(f, w1, w2, w3)).


assert(contains(t3, r3)).
assert(over(ff, b)).
assert(contains(r1, q3)).
assert(over(fb, ff)).
assert(contains(q2, w2)).
assert(right(f, fb)).


assert(triangle(X, Y, Z, T) :- (segment(Y, Y1, Y2), segment(Z, Z1, Z2), segment(T, T1, T2), coincide(Y2, Z1), coincide(Z2, T1), coincide(T2, Y1))).
assert(rectangle(X, Y, Z, T, U) :- (segment(Y, Y1, Y2), segment(Z, Z1, Z2), segment(T, T1, T2), segment(U, U1, U2), perpendicular(Y, Z), perpendicular(Z, T), perpendicular(T, U), coincide(Y2, Z1), coincide(Z2, T1), coincide(T2, U1), coincide(U2, Y1))).
assert(base(X, Y, Z, T) :- (triangle(X, Y, Z, T), equal(Y, Z))).
assert(firstfloor(X, Y, Z, T, U) :- (rectangle(X, Y, Z, T, U), more(Y, Z))).
assert(flagbase(X, Y, Z, T, U) :- (rectangle(X, Y, Z, T, U), more(Z, Y))).
assert(flag(C, Y, Z, T) :- (triangle(X, Y, Z, T), perpendicular(Y, Z))).
assert(ship(X, Y, Z, T, U) :- (base(Y, Y1, Y2, Y3), firstfloor(Z, Z1, Z2, Z3, Z4), contains(Y3, Z3), over(Z, Y), flagbase(T, T1, T2, T3, T4), contains(Z1, T3), over(T, Z), flag(U, U1, U2, U3), contains(T2, U2), right(U, T))).

ship(s, b, ff, fb, f).