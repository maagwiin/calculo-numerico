%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: OK

clear; %limpa as vari�veis
clc; %limpa a command window

F = input("Digite a temperatura em Fahrenheit: ");
fprintf("\n%.2f Fahrenheit equivale a %.2f �C\n", F, conversaoCelsius(F));