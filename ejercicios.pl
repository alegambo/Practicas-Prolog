/*
Conjunto de Ejercios para practicar Prolog
*/

/*
? Indica que Variable puede ser de Entrada o de Salida
+ Indica que la variable es unicamente de Entrada
- Indica que la variable es unicamente de Salida
*/


%El primer elemento de una lista. cabeza(?L,?X)

cabeza([X|_],X).

%cabeza([1,2,3,14,5],Y).


%El resto de una lista. resto(?L,?X)

resto([_|X],X).

%resto([1,3,5,7],X).

%Verificar si un elemento pertenece a una determinada lista(member). pertenece(?X,?L)

pertenece(X,[X|_]).
pertenece(X,[_|L]):-pertenece(X,L).

%pertenece(10,[20,480,50,10,90,99]).

%Concatenar 2 listas y retornarlas en una tercera. con(?L1,?L2,?L3).

con([],L,L).
con([X|L1],L2,[X|L3]):-con(L1,L2,L3).

%con([12,45],[23,56],L3).

%Retornar el Ultimo elemento de una lista. ultimo(?X,?L)

ultimo(X,[X]):-!.
ultimo(X,[_|L]):-ultimo(X,L).



