% aproxime a função f(x) = xcos(x) no intervalo [0, pi/2] com erro exato max < 1e-2 (0,01) pela série de Taylor

printf("Questão 1 a) ==================\n")


a = 0 ; b = pi/2; % intervalo
xi = pi/4;

% calculamos manualmente todos os coeficientes c:
% coeficiente: f(xi) ,  f'(xi)/1! , f''(xi)/2! ...
c = [pi/4 * sqrt(2)/2,  sqrt(2)/2*(1 - pi/4), (1/2)*sqrt(2)/2 * (-2 - pi/4), (1/factorial(3) * sqrt(2)/2) * (-3 +pi/4), (1/factorial(4) * sqrt(2)/2) * (4 +pi/4)]

%intervalo para gerar pontos e calcular o valor do polinomio
h = (b-a)/100;
xp = [a : h : b];

ya = valor_polinomio_taylor(xp, c , xi); % função aproximada
ye = xp.*cos(xp); % função nativa para exato
erro = abs(ya-ye); 
erro_max = max(erro)


% diminuir erro -> aumenta número de termos 
% erro maximo ->  nas extremidades do intervalo da aproximação


printf("\n\nQuestão 1 b) ==================\n\n")
% aproxime a função f(x) = xcos(x) no intervalo [0, pi/2] com erro exato max < 1e-2 (0,01) 

a = 0 ; b = pi/2; % intervalo


% Primeiro calculamos os coeficientes
% Definindo os pontos
n = 4 % Grau escolhido (chute inicial)

h = (b-a)/n; % Intervalo dos n+1 pontos exatos para "ancorar" o polinômio
x_exato = [ a:h:b ];
y_exato = x_exato.*cos(x_exato);
% Pn(x) = y(1)*1 + Δ¹y(1)(xp - x(1)) + Δ²y(1)(xp - x(1))(xp - x(2)) + ... + Δ^n y(1) * Π[j=1:n](x - x(j))
% Pn(x) = c(1)*1 + c(2)  (xp - x(1)) + c(3)  (xp - x(1))(xp - x(2)) + ... + c(n+1)   * Π[j=1:n](x - x(j))

coeficientes = coeficientes_gregory_newton(x_exato, y_exato)
wa = valor_polinomio_gregory_newton(xp, coeficientes, x_exato, y_exato); % nossa função aproximada por Gregory Newton
Erro_GN = abs(wa-ye); 
Erro_Max_GN = max(Erro_GN) %(n=3 -> Erro_Max_GN≃0.0054<0,05;  )
% erro maximo ->  no meio dos subintervalos [x(i), x(i+1)], e maior nos subintervalos das extremidades



printf("\n\nQuestão 1 c) ==================\n\n")

'Se fizermos a aproximação para n = 3, vamos obter um erro máximo de 0.059369 para a aproximação por série de Taylor e um erro máximo de 0.011136 para a aproximação por interpolação polinomial. Como o erro máximo desejado é inferior a 1e-2, aumentamos o grau da aproximação. Com isso, obtemos resultados com erro inferior ao desejado, porém ambas as aproximações apresentaram agora o mesmo grau n = 4. No entanto, a aproximação por interpolação polinomial exibe um erro menor, medindo 0.00094922, em comparação com o erro obtido pela aproximação por série de Taylor, que é de 0.0088049.'
