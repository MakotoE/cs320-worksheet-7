female(helen).
female(ruth).
female(petunia).
female(lili).

male(paul).
male(albert).
male(vernon).
male(james).
male(dudley).
male(harry).

parent_of(paul,petunia).
parent_of(helen,petunia).
parent_of(paul,lili).
parent_of(helen,lili).
parent_of(albert,james).
parent_of(ruth,james).
parent_of(petunia,dudley).
parent_of(vernon,dudley).
parent_of(lili,harry).
parent_of(james,harry).

father_of(Father, Child) :- male(Father), parent_of(Father, Child).
mother_of(Mother, Child) :- female(Mother), parent_of(Mother, Child).

grandfather_of(Grandfather, Child) :- father_of(Grandfather, X), parent_of(X, Child).
grandmother_of(Grandmother, Child) :- mother_of(Grandmother, X), parent_of(X, Child).

sister_of(Sister, Person) :- female(Sister), parent_of(X, Sister), parent_of(X, Person), Sister \= Person.
brother_of(Brother, Person) :- male(Brother), parent_of(X, Brother), parent_of(X, Person), Brother \= Person.

aunt_of(Aunt, Person) :- sister_of(Aunt, X), parent_of(X, Person).
uncle_of(Uncle, Person) :- brother_of(Uncle, X), parent_of(X, Person).
