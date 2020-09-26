% Listas de Implementação Cálculo Numérico 20/1
% Magnu Windell Araujo Santos e Guilherme Lopes de Oliveira
%
% Função de solução numérica para EDO - Método de Runge-Kutta
%
% Feito no Octave

function Y = rungekutta(funcao, intervalo, passo, x0, y0)
    pontos = round(((intervalo(2)-intervalo(1))/passo) + 1);
    Y = ones(pontos, 1);
    X = ones(pontos, 1);
    Y(1) = y0;
    X(1) = x0;
    
    for i = 2:pontos
        X(i) = X(i-1) + passo;
        a1 = funcao(X(i-1), Y(i-1));
        a2 = funcao(X(i-1) + (passo/2), Y(i-1) + (passo/2)*a1);
        a3 = funcao(X(i-1) + (passo/2), Y(i-1) + (passo/2)*a2);
        a4 = funcao(X(i), Y(i-1) + passo*a3);
        Y(i) = Y(i-1) + passo*(a1 + 2*a2 + 2*a3 + a4)/6;
    end
    Y = transpose(Y)
end