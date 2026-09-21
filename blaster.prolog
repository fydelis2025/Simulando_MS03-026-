% SIMULACAO EDUCACIONAL - W32.BLASTER / LOVSAN
% Linguagem: Prolog
% Propósito: Demonstração histórica - SEM DANO REAL

:- initialization(main).

% Espera aproximadamente 1 segundo
espera :- sleep(1).

% Exibe linha de separação
linha :-
    write('============================================'), nl.

% Contagem regressiva
contagem(0) :-
    write('Tempo restante: 00 seg [SIMULACAO]'), nl, !.
contagem(N) :-
    write('Tempo restante: '),
    write(N),
    write(' seg [SIMULACAO]'), nl,
    espera,
    N1 is N - 1,
    contagem(N1).

% Programa principal
main :-
    nl,
    linha,
    write('            SISTEMA WINDOWS                '), nl,
    linha,
    nl,
    write('O sistema esta sendo desligado. Salve o    '), nl,
    write('trabalho em andamento e faca logoff.       '), nl,
    nl,
    write('Iniciado por: NT AUTHORITY\\SYSTEM'), nl,
    nl,
    write('Servico RPC falhou - Vulnerabilidade       '), nl,
    write('MS03-026 / CVE-2003-0352 - Buffer Overflow'), nl,
    nl,
    % Troque 10 por 60 para contagem completa
    contagem(10),
    nl,
    linha,
    write('FIM DA SIMULACAO - W32.BLASTER / LOVSAN    '), nl,
    write('Ano: 2003 - Milhoes de maquinas afetadas    '), nl,
    write('Solucao: shutdown /a + patch MS03-026       '), nl,
    linha, nl.
