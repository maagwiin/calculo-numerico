% Listas de Implementa��o C�lculo Num�rico 20/1
% Magnu Windell Araujo Santos e Guilherme Lopes de Oliveira
%
% Fun��o de solu��o num�rica para EDO - M�todo de Heun
%
% Feito no Octave

function Y = heun(funcao, intervalo, passo, x0, y0)
    pontos = round(((intervalo(2)-intervalo(1))/passo)+ 1);
    Y = ones(pontos, 1);
    X = ones(pontos, 1);
    Y(1) = y0;
    X(1) = x0;
    
    for i = 2:pontos
        X(i) = X(i-1) + passo;
        pred = funcao(X(i-1), Y(i-1));
        corr = funcao(X(i), Y(i-1) + passo*pred);
        Y(i) = Y(i-1) + passo*(pred + corr)/2;
    end
    Y = transpose(Y);
end
