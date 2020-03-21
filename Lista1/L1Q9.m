%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: OK

clear; %limpa as vari�veis
clc; %limpa a command window

fprintf("Calcuar a distancia euclidiana entre P e Q\n");
n = input("Defina a dimens�o: ");

clc;

fprintf("Lendo coordenadas euclidianas do ponto P\n");
for i = 1:n
    fprintf("%d", i);
    p(i) = input("� coordenada ponto P: ");
end
clc;

fprintf("Lendo coordenadas euclidianas do ponto Q\n");
for i = 1:n
    fprintf("%d", i);
    q(i) = input("� coordenada ponto Q: ");
end
clc;

distancia = calcularDistanciaEuclidiana(p, q);
fprintf("Coordenadas ponto P: ");
disp(p);
fprintf("Coordenadas ponto Q: ");
disp(q);
fprintf("A distancia euclidiana entre os pontos � de: %.3f\n", distancia);

