%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: OK

clear; %limpa as variáveis
clc; %limpa a command window

fprintf("Calcuar a distancia euclidiana entre P e Q\n");
n = input("Defina a dimensão: ");

clc;

fprintf("Lendo coordenadas euclidianas do ponto P\n");
for i = 1:n
    fprintf("%d", i);
    p(i) = input("ª coordenada ponto P: ");
end
clc;

fprintf("Lendo coordenadas euclidianas do ponto Q\n");
for i = 1:n
    fprintf("%d", i);
    q(i) = input("ª coordenada ponto Q: ");
end
clc;

distancia = calcularDistanciaEuclidiana(p, q);
fprintf("Coordenadas ponto P: ");
disp(p);
fprintf("Coordenadas ponto Q: ");
disp(q);
fprintf("A distancia euclidiana entre os pontos é de: %.3f\n", distancia);

