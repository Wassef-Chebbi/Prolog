##### Q1
est_pair(0).                 
est_pair(N) :- N > 0,N1 is N - 2,est_pair(N1).
##### Q2
som(1, 1).
som(N, Sum) :-N > 1, N1 is N - 1,som(N1, Sum1),Sum is Sum1 + N.
##### Q3
factorielle(0, 1).
factorielle(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorielle(N1, Result1),
    Result is N * Result1.
##### Q4
% Calcul de la suite de Fibonacci
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, Result1),
    fibonacci(N2, Result2),
    Result is Result1 + Result2.