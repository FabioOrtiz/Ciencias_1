padrede(fabio,fabio2).
padrede(fabio,caro).
padrede(gladys,fabio2).
padrede(gladys,caro).

padrede(jose,luz).
padrede(jose,dorita).
padrede(jose,samuel).
padrede(jose,fabio).

padrede(bertha,luz).
padrede(bertha,dorita).
padrede(bertha,samuel).
padrede(bertha,fabio).

padrede(luz,sofia).
padrede(luz,melisa).

padrede(dorita,santiago).
padrede(dorita,camilo).

padrede(samuel,veronica).
padrede(samuel,angie).

padrede(armando,jose).
padrede(cecilia,jose).

padrede(mateo,bertha).
padrede(isabel,bertha).

padrede(david,gladys).
padrede(david,cesar).
padrede(david,albaluz).

padrede(gloria,gladys).
padrede(gloria,cesar).
padrede(gloria,albaluz).

padrede(cesar,eliana).
padrede(cesar,liliana).

padrede(daniel,david).
padrede(ruth,david).

padrede(job,gloria).
padrede(maria,gloria).

hermanode(X,Y):- padrede(C,X),  padrede(C,Y), X\==Y.
conyugede(X,Y):- padrede(X,A), padrede(Y,A), X\==Y.
tiode(A,B):- padrede(C,B),hermanode(C,A).
primode(A,B):- tiode(C,A), hijode(B,C).
hijode(A,B) :- padrede(B,A).
abuelode(A,B) :- padrede(C,B), padrede(A,C).
bisabuelo(A,B):- abuelode(C,B), padrede(A,C).
nietode(A,B) :- abuelode(B,A).
bisnietode(A,B) :- abuelode(C,A), padrede(B,C).
