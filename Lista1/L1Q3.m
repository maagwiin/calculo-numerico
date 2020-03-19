%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: OK

clear; %limpa as variáveis
clc; %limpa a command window

F = input("Digite a temperatura em Fahrenheit: ");
fprintf("\n%.2f Fahrenheit equivale a %.2f ºC\n", F, conversaoCelsius(F));