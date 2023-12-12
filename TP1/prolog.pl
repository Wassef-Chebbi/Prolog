

homme(malik).
homme(tawfik).
homme(omar).
homme(ghassen).
homme(farid).
homme(saleh).
homme(anas).
femme(mariem).
femme(najiba).
femme(ibtissem).
femme(manel).
femme(marwa).
femme(nessrine).
femme(lina).
femme(asma).
parent(mariem,farid).
parent(mariem,manel).
parent(malik,farid).
parent(malik,manel).
parent(najiba,marwa).
parent(najiba,saleh).
parent(tawfik,marwa).
parent(tawfik,saleh).
parent(ibtissem,nessrine).
parent(omar,nessrine).
parent(manel,lina).
parent(ghassen,lina).
parent(marwa,anas).
parent(farid,anas).
parent(nessrine,asma).
parent(saleh,asma).

enfant(X,Y) :- parent(Y,X),X\=Y.
fils(X,Y) :- enfant(X,Y),homme(X).
fille(X,Y) :- enfant(X,Y),femme(X).
frere(X,Y) :- fils(X,Z),enfant(Y,Z),X\=Y.
soeur(X,Y) :- fille(X,Z),enfant(Y,Z),X\=Y.
grand(X,Y) :- parent(Z,Y), parent(X,Z).
grandPere(X,Y) :- grand(X,Y),homme(X).
grandMere(X,Y) :- grand(X,Y),femme(X).
petitEnfant(X,Y) :- grand(Y,X).
oncle(X,Y) :- frere(X,Z),parent(Z,Y).
tante(X,Y) :- soeur(X,Z),parent(Z,Y).



