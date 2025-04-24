% Archivo: ejemplo.pl
padre(juan, maria).
padre(juan, pedro).
padre(pedro, ana).

abuelo(X, Y) :- padre(X, Z), padre(Z, Y).

% Hechos adicionales
madre(maria, ana).
madre(maria, pedro).
madre(luisa, juan).
madre(ana, carlos).

% Regla para hermanos
hermano(X, Y) :- padre(P, X), padre(P, Y), X \= Y.

% Regla para tíos
tio(T, S) :- hermano(T, P), padre(P, S).
tio(T, S) :- hermano(T, M), madre(M, S).

% Relación bidireccional
esposo(juan, maria).
esposa(maria, juan).

% Regla para encontrar pareja
pareja(X, Y) :- esposo(X, Y).
pareja(X, Y) :- esposa(X, Y).

% Regla de ancestros
ancestro(X, Y) :- padre(X, Y).
ancestro(X, Y) :- madre(X, Y).
ancestro(X, Y) :- padre(X, Z), ancestro(Z, Y).
ancestro(X, Y) :- madre(X, Z), ancestro(Z, Y).

% Género
hombre(juan).
hombre(pedro).
hombre(carlos).
mujer(maria).
mujer(ana).
mujer(luisa).

% Regla de género para padre y madre
padre(X, Y) :- hombre(X), padre(X, Y).
madre(X, Y) :- mujer(X), madre(X, Y).

