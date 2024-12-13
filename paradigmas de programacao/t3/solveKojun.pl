% Predicado principal para testar se um número é seguro em uma célula.
is_safe(Matrix, Regions, Size, X, Y, Num) :-

    % encontra a região da célula
    member(_-RegionCells, Regions), % pega as células da região
    member((X, Y), RegionCells), % pega as coordenadas da célula

    % checa se o número é válido na linha, coluna e região
    length(RegionCells, RegionSize), % pega o tamanho da região
    (Num =< RegionSize),  % Ensure comparison is evaluated first

    % verifica se o número não está na linha, coluna e região
    \+ (
        member((I, J), RegionCells), % pega as coordenadas da célula
        nth0(I, Matrix, Row), % pega a linha da matriz
        nth0(J, Row, Num)
    ),

    % verifica as celular adjacentes na linha e coluna
    \+ (
        (X > 0, NX is X - 1, nth0(NX, Matrix, Row1), nth0(Y, Row1, Num)); % verifica a célula acima
        (Y > 0, NY is Y - 1, nth0(X, Matrix, Row2), nth0(NY, Row2, Num)); % verifica a célula à esquerda
        (X < Size - 1, NX is X + 1, nth0(NX, Matrix, Row3), nth0(Y, Row3, Num)); % verifica a célula abaixo
        (Y < Size - 1, NY is Y + 1, nth0(X, Matrix, Row4), nth0(NY, Row4, Num)) % verifica a célula à direita
    ),

    % verifica se o número é menor que os números acima e maiores que os números abaixo
    \+ (
        member((I, J), RegionCells),
        J =:= Y, % verifica se está na mesma coluna
        I < X, % verifica se está acima
        nth0(I, Matrix, Row), % pega a linha da matriz
        nth0(J, Row, Val), % pega o valor da célula
        Val > 0, % verifica se a célula está preenchida
        Val < Num % verifica se o valor é menor que o número
    ),

    % Verificar se há números maiores abaixo na mesma coluna dentro da região
    \+ (
        member((I, J), RegionCells),
        J =:= Y, % Verifica se está na mesma coluna
        I > X, % Verifica se está abaixo
        nth0(I, Matrix, Row), % Pega a linha da matriz
        nth0(J, Row, Val), % Pega o valor da célula
        Val > 0, % Verifica se a célula está preenchida
        Val > Num % Verifica se o valor é maior que o número
    ).

% solveKojun(+Matrix, +Regions, +Size, +X, +Y, -Solution)
solveKojun(Matrix, _, Size, X, Y, Solution) :-
    % Caso base 1: Chegamos ao final do tabuleiro.
    X =:= Size - 1, % Última linha
    Y =:= Size, % Última coluna
    Solution = Matrix, !. % Retorna a matriz como solução.

solveKojun(Matrix, Regions, Size, X, Y, Solution) :-
    % Caso base 2: Avançar para a próxima linha.
    Y =:= Size, % Última coluna
    NextX is X + 1, % Avança para a próxima linha
    solveKojun(Matrix, Regions, Size, NextX, 0, Solution), !. % Recursão para a próxima linha.

solveKojun(Matrix, Regions, Size, X, Y, Solution) :- 
    % Caso base 3: Célula já preenchida, avança para a próxima.
    nth0(X, Matrix, Row), % Pega a linha da matriz
    nth0(Y, Row, Value), % Pega o valor da célula
    Value > 0, % Verifica se a célula está preenchida
    NextY is Y + 1, % Avança para a próxima célula
    solveKojun(Matrix, Regions, Size, X, NextY, Solution), !.

solveKojun(Matrix, Regions, Size, X, Y, Solution) :-
    % Caso geral: Tenta preencher com números de 1 a Size. 
    findall(Num, between(1, Size, Num), Numbers), % Gera a lista de números de 1 a Size
    try_numbers(Numbers, Matrix, Regions, Size, X, Y, Solution). % Tenta preencher a célula com um número.

try_numbers([], _, _, _, _, _, _) :-  
    fail.  %  Falha se não for encontrado um número válido para esta posição.

try_numbers([Num | _], Matrix, Regions, Size, X, Y, Solution) :-
    nth0(X, Matrix, Row), % pega a linha da matriz
    nth0(Y, Row, Value), % pega o valor da célula
    Value =:= 0,  % Tentar colocar um número apenas numa célula vazia (Valor = 0)
    is_safe(Matrix, Regions, Size, X, Y, Num),  % Verifica se o número é seguro.
    update_matrix(Matrix, X, Y, Num, NewMatrix),  % Atualiza a matriz.
    NextY is Y + 1,
    solveKojun(NewMatrix, Regions, Size, X, NextY, Solution),  % Tenta recursivamente a célula seguinte.
    !.  % Cortar para evitar tentar mais números após uma colocação de número bem sucedida.

try_numbers([_ | Rest], Matrix, Regions, Size, X, Y, Solution) :-
    try_numbers(Rest, Matrix, Regions, Size, X, Y, Solution).  % Tenta o número seguinte se o atual falhar.


% update_matrix(+Matrix, +X, +Y, +Value, -NewMatrix)
update_matrix(Matrix, X, Y, Value, NewMatrix) :- 
    nth0(X, Matrix, Row, RestRows), % Pega a linha da matriz
    nth0(Y, Row, _, RestCols), % Pega a célula da linha
    nth0(Y, NewRow, Value, RestCols), % Atualiza a célula
    nth0(X, NewMatrix, NewRow, RestRows). % Atualiza a linha

% Nota: A função `is_safe/6` deve ser definida para verificar se é seguro colocar um número.

% Lê o arquivo e processa os dados
read_input(Path, FillMatrix, Regions, Size) :-
    open(Path, read, Stream), % Abre o arquivo
    read_lines(Stream, Lines), % Lê as linhas do arquivo
    close(Stream), % Fecha o arquivo
    filter_non_empty(Lines, FileLines), % Filtra as linhas não vazias
    nth1(2, FileLines, SizeLine), % Pega a segunda linha do arquivo
    split_string(SizeLine, " ", "", [SizeStr|_]), % Pega o tamanho do tabuleiro
    number_string(Size, SizeStr), % Converte o tamanho
    extract_matrix(Size, FileLines, "starting board", FillMatrix), % Extrai a matriz
    extract_regions(Size, FileLines, "regions", Regions). % Extrai as regiões

% Lê todas as linhas do arquivo
read_lines(Stream, Lines) :-
    read_line_to_string(Stream, Line),
    ( Line == end_of_file ->
        Lines = []
    ; read_lines(Stream, RestLines),
      Lines = [Line|RestLines]
    ).

% Filtra linhas não vazias
filter_non_empty(Lines, Filtered) :-
    exclude(=([]), Lines, Filtered).

% Extrai a matriz do arquivo
extract_matrix(Size, Lines, StartKey, Matrix) :-
    nth1(Index, Lines, StartKey),
    Start is Index + 1,
    End is Start + Size - 1,
    extract_lines(Start, End, Lines, Matrix).

extract_lines(Start, End, Lines, Matrix) :-
    findall(Row, 
            (between(Start, End, Index),
             nth1(Index, Lines, Line),
             split_string(Line, " ", "", RowStrings),
             maplist(number_string, Row, RowStrings)), 
            Matrix).

% Extrai as regiões do arquivo
extract_regions(Size, Lines, StartKey, Regions) :-
    nth1(Index, Lines, StartKey),
    Start is Index + 1,
    End is Start + Size - 1,
    extract_region_lines(Start, End, Lines, RegionPairs),
    group_by_region(RegionPairs, Regions).

extract_region_lines(Start, End, Lines, RegionPairs) :-
    findall((Region, (RowIdx, ColIdx)),
            (between(Start, End, LineIdx),
             nth1(LineIdx, Lines, Line),
             split_string(Line, " ", "", RegionStrings),
             LineOffset is LineIdx - Start, % Ajusta o índice da linha para iniciar em 1
             nth0(ColIdx, RegionStrings, Region),
             RowIdx is LineOffset),
            RegionPairs).

group_by_region(RegionPairs, Regions) :-
    findall(Region-Coords,
            setof((Row, Col), member((Region, (Row, Col)), RegionPairs), Coords),
            Regions).

solve(FilePath) :-
    % Lê os dados de entrada do arquivo
    read_input(FilePath, FillMatrix, Regions, Size),
    
    % Resolve o problema com a matriz e as regiões
    solveKojun(FillMatrix, Regions, Size, 0, 0, Solution),
    
    % Imprime a solução completa
    writeln('Solution:'),
    print_matrix(Solution).

print_matrix([]). % Caso base: matriz vazia
print_matrix([Row | Rest]) :- % Imprime a matriz linha por linha
    writeln(Row),  % imprime a linha atual
    print_matrix(Rest).  % Imprimir recursivamente o resto das linhas