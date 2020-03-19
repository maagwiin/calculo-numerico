%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave:

clear; %limpa as variáveis
clc; %limpa a command window

fprintf("Calcular MDC entre x e y:\n");
x = input("Digite um valor inteiro para x: ");
y = input("Digite um valor inteiro para y: ");

mdc = calcularMDC(x, y);

fprintf("O MDC entre %i e %i é: %i.\n",x, y, mdc);

