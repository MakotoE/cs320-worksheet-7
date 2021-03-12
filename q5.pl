connected(town1, town2).
connected(town2, town3).
connected(town3, town4).
connected(town4, town5).
connected(town5, town6).

can_get(A, B) :- A == B.
can_get(A, B) :- connected(A, B).
can_get(A, B) :- connected(A, X), can_get(X, B).
