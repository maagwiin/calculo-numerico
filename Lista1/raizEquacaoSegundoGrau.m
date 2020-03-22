%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Referente a: L1Q4

function [x1, x2] = raizEquacaoSegundoGrau(a, b, c)
    delta = b^2 - 4*a*c;

    x1 = (-b + sqrt(delta))/(2*a);
    x2 = (-b - sqrt(delta))/(2*a);
    return;
end