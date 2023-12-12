q(a).
q(b).
q(c).
r(b, b1).
r(c, c1).
r(a, a1).
r(a, a2).
r(a, a3).
p0(X, Y) :- q(X), r(X, Y).
p0(d, d1).

p1(X, Y) :- q(X), r(X, Y), !.
p1(d, d1).
p2(X, Y) :- q(X), !, r(X, Y).
p2(d, d1).
p3(X, Y) :- !, q(X), r(X, Y).
p3(d, d1).
