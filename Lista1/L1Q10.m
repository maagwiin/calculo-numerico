%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: OK

clear; %limpa as vari�veis
clc; %limpa a command window

graos = 1;

for i=1:64
    graos = graos*2;
end

fprintf("\nO monge espera receber %d gr�os de trigo.\n", graos);