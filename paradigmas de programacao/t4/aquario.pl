%Declarando as possibilidades

mochila(amarela).
mochila(azul).
mochila(branca).
mochila(verde).
mochila(vermelha).

nome(regina).
nome(gisele).
nome(cristina).
nome(milene).
nome(sabrina).

sobrenome(dias).
sobrenome(andrade).
sobrenome(lima).
sobrenome(rocha).
sobrenome(santos).

suco(caju).
suco(maracuja).
suco(uva).
suco(laranja).
suco(maca).

signo(cancer).
signo(peixes).
signo(escorpiao).
signo(aries).
signo(virgem).

animal(piranha).
animal(lobo-marinho).
animal(tubarao).
animal(peixe-boi).
animal(arraia).

%predicados cirados para facilitar a resolução do problema 

%X está à ao lado de Y
aoLado(X,Y,Lista) :- nextto(X,Y,Lista);nextto(Y,X,Lista).
                       
%X está à esquerda de Y (em qualquer posição à esquerda)
aEsquerda(X,Y,Lista) :- nth0(IndexX,Lista,X), 
                        nth0(IndexY,Lista,Y), 
                        IndexX < IndexY.
                        
%X está à direita de Y (em qualquer posição à direita)
aDireita(X,Y,Lista) :- aEsquerda(Y,X,Lista). 

%X está no canto se ele é o primeiro ou o último da lista
noCanto(X,Lista) :- last(Lista,X).
noCanto(X,[X|_]).

%Entre
entre(X, Y, Z, Lista) :-
    nth0(IndexX, Lista, X),
    nth0(IndexY, Lista, Y),
    nth0(IndexZ, Lista, Z),
    IndexX > IndexY,
    IndexX < IndexZ.


todosDiferentes([]).
todosDiferentes([H|T]) :- not(member(H,T)), todosDiferentes(T).

%Resolução do problema

solucao(ListaSolucao) :-
    ListaSolucao = [
        amiga(Mochila1, Nome1, Sobrenome1, Suco1, Signo1, Animal1),
        amiga(Mochila2, Nome2, Sobrenome2, Suco2, Signo2, Animal2),
        amiga(Mochila3, Nome3, Sobrenome3, Suco3, Signo3, Animal3),
        amiga(Mochila4, Nome4, Sobrenome4, Suco4, Signo4, Animal4),
        amiga(Mochila5, Nome5, Sobrenome5, Suco5, Signo5, Animal5)
    ],

    % Pistas do problema
    % 1. A menina da mochila branca tem sobrenome Andrade.
    member(amiga(branca, _, andrade, _, _, _), ListaSolucao),

    % 2. A garota da mochila amarela está em algum lugar entre a da mochila verde e a Sabrina, nessa ordem.
    entre(amiga(amarela, _, _, _, _, _), amiga(verde, _, _, _, _, _), amiga(_, sabrina, _, _, _, _), ListaSolucao),

    % 3. A menina de Câncer está exatamente à direita da que quer ver o Peixe-boi.
    aoLado(amiga(_, _, _, _, cancer, _), amiga(_, _, _, _, _, peixe-boi), ListaSolucao),

    % 4. Milene e Sabrina estão lado a lado.
    aoLado(amiga(_, milene, _, _, _, _), amiga(_, sabrina, _, _, _, _), ListaSolucao),

    % 5. A garota que quer ver a Piranha está em uma das pontas.
    noCanto(amiga(_, _, _, _, _, piranha), ListaSolucao),

    % 6. Milene é do signo de Virgem.
    member(amiga(_, milene, _, _, virgem, _), ListaSolucao),

    % 7. A garota do signo de Áries está ao lado da que quer ver o Peixe-boi.
    aoLado(amiga(_, _, _, _, aries, _), amiga(_, _, _, _, _, peixe-boi), ListaSolucao),

    % 8. Sabrina está em uma das pontas.
    noCanto(amiga(_, sabrina, _, _, _, _), ListaSolucao),

    % 9. Na terceira posição está a menina que gosta de suco de maçã.
    Suco3 = maca,

    % 10. A menina da mochila amarela está em algum lugar entre a Regina e a garota de sobrenome Andrade, nessa ordem.
    entre(amiga(amarela, _, _, _, _, _), amiga(_, regina, _, _, _, _), amiga(_, _, andrade, _, _, _), ListaSolucao),

    % 11. A garota que quer ver o Tubarão está exatamente à direita da garota da mochila amarela.
    aoLado(amiga(amarela, _, _, _, _, _), amiga(_, _, _, _, _, tubarao), ListaSolucao),

    % 12. A menina de sobrenome Lima está ao lado da garota que gosta de suco de Uva.
    aoLado(amiga(_, _, lima, _, _, _), amiga(_, _, _, uva, _, _), ListaSolucao),

    % 13. Na segunda posição está a menina que nasceu em outubro.
    Signo2 = escorpiao, % Escorpião é o signo associado a outubro.

    % 14. A garota do sobrenome Santos deseja ver o Peixe-boi.
    member(amiga(_, _, santos, _, _, peixe-boi), ListaSolucao),

    % 15. Em uma das pontas está a menina do signo de Peixes.
    noCanto(amiga(_, _, _, _, peixes, _), ListaSolucao),

    % 16. A garota do signo de Câncer tem o sobrenome Dias.
    member(amiga(_, _, dias, _, cancer, _), ListaSolucao),

    % 17. A menina da mochila azul está em algum lugar à esquerda da que gosta de suco de maracujá.
    aEsquerda(amiga(azul, _, _, _, _, _), amiga(_, _, _, maracuja, _, _), ListaSolucao),

    % 18. A menina que gosta de suco de maçã está ao lado da que quer ver o Lobo-marinho.
    aoLado(amiga(_, _, _, maca, _, _), amiga(_, _, _, _, _, lobo-marinho), ListaSolucao),

    % 19. A garota da mochila amarela está em algum lugar entre a do signo de Peixes e a Cristina, nessa ordem.
    entre(amiga(amarela, _, _, _, _, _), amiga(_, _, _, _, peixes, _), amiga(_, cristina, _, _, _, _), ListaSolucao),

    % 20. A menina que gosta de suco de Caju está em uma das pontas.
    noCanto(amiga(_, _, _, caju, _, _), ListaSolucao),

    % 21. Gisele é a dona da mochila amarela.
    member(amiga(amarela, gisele, _, _, _, _), ListaSolucao),

    % 22. Regina está em uma das pontas.
    noCanto(amiga(_, regina, _, _, _, _), ListaSolucao),

    % 23. A garota que quer ver o Tubarão está em algum lugar entre a que gosta de suco de Uva e a que quer ver a Arraia, nessa ordem.
    entre(amiga(_, _, _, _, _, tubarao), amiga(_, _, _, uva, _, _), amiga(_, _, _, _, _, arraia), ListaSolucao),

    % Testa todas as possibilidades.
    mochila(Mochila1), mochila(Mochila2), mochila(Mochila3), mochila(Mochila4), mochila(Mochila5),
    todosDiferentes([Mochila1, Mochila2, Mochila3, Mochila4, Mochila5]),

    nome(Nome1), nome(Nome2), nome(Nome3), nome(Nome4), nome(Nome5),
    todosDiferentes([Nome1, Nome2, Nome3, Nome4, Nome5]),

    sobrenome(Sobrenome1), sobrenome(Sobrenome2), sobrenome(Sobrenome3), sobrenome(Sobrenome4), sobrenome(Sobrenome5),
    todosDiferentes([Sobrenome1, Sobrenome2, Sobrenome3, Sobrenome4, Sobrenome5]),

    suco(Suco1), suco(Suco2), suco(Suco3), suco(Suco4), suco(Suco5),
    todosDiferentes([Suco1, Suco2, Suco3, Suco4, Suco5]),

    signo(Signo1), signo(Signo2), signo(Signo3), signo(Signo4), signo(Signo5),
    todosDiferentes([Signo1, Signo2, Signo3, Signo4, Signo5]),

    animal(Animal1), animal(Animal2), animal(Animal3), animal(Animal4), animal(Animal5),
    todosDiferentes([Animal1, Animal2, Animal3, Animal4, Animal5]).
