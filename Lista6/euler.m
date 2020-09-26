% Listas de Implementação Cálculo Numérico 20/1
% Magnu Windell Araujo Santos e Guilherme Lopes de Oliveira
%
% Função de solução numérica para EDO - Método de Euler
%
% Feito no Octave

function Y = euler(funcao, intervalo, passo, x0, y0)
    pontos = round(((intervalo(2)-intervalo(1))/passo) + 1);
    Y = ones(pontos, 1);
    X = ones(pontos, 1);
    Y(1) = y0;
    X(1) = x0;
    
    for i = 2:pontos
        X(i) = X(i-1) + passo;
        f = funcao(X(i-1), Y(i-1));
        Y(i) = Y(i-1) + passo*f;
    end
    Y = transpose(Y);
end
