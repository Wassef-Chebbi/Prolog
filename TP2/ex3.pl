



###### EXERCICE 2
###Q1
afficheL([]).
afficheL([X|Reste]) :- write(X),afficheL(Reste). 
###Q2
afficheInvL([]).
afficheInvL([X|Reste]) :-  afficheInvL(Reste), write(X).
###Q3
premierL([X|_]) :- write(X),!. 
### Q4
premierL([X|_], X).
### Q5
dernierL([X]) :- write(X),!.
dernierL([_|Reste]) :- dernierL(Reste).


dernierL_append(Liste) :-append(_, [Dernier], Liste),write(Dernier),nl.

### Q7

compteL([], 0).
compteL([_|Reste], N) :- compteL(Reste, N1),N is N1 + 1.
#### Q8

sommeL([], 0). 
sommeL([T|Q], Somme) :- sommeL(Q, ResteSomme),Somme is T + ResteSomme.

#### Q9
niemeL(1, [X|_], X).
niemeL(N, [_|Reste], X) :-  N > 1, N1 is N - 1, niemeL(N1, Reste, X).

#### Q10

occurrenceL([], _, 0).
occurrenceL([X|Reste], X, N) :-
    occurrenceL(Reste, X, N1), 
    N is N1 + 1.
occurrenceL([_|Reste], X, N) :- 
    occurrenceL(Reste, X, N). 
