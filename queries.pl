power_total(Raca, Total) :-
    character(_, Raca, _, _, _, _, _),  % fixa a raça
    findall(P, character(_, Raca, _, P, _, _, _), Lista),
    sum_list(Lista, Total).
raca_mais_forte(Raca) :-
    findall(Total-R,
        power_total(R, Total),
        Lista),
    sort(Lista, Ordenada),
    reverse(Ordenada, [ _-Raca | _]).

top_fortes(Lista) :-
    findall(P-Nome,
        (character(Nome, _, _, P, _, _, _), P > 8000),
    L),
    sort(L, Ordenado),
    reverse(Ordenado, Lista).
top_3_fortes(Tres) :-
    top_fortes(L),
    L = [A,B,C | _],
    Tres = [A,B,C].

raca(Raca) :-
    setof(R, Nome^P^G^S^A^T^character(Nome, R, G, P, S, A, T), Racas),
    member(Raca, Racas).
media_poder(Raca, Media) :-
    raca(Raca),
    findall(P, character(_, Raca, _, P, _, _, _), Lista),
    length(Lista, N),
    N > 0,
    sum_list(Lista, Total),
    Media is Total / N.