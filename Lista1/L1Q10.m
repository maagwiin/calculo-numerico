%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: OK

clear; %limpa as variáveis
clc; %limpa a command window

graos = 1;

for i=1:64
    graos = graos*2;
end

fprintf("\nO monge espera receber %d grãos de trigo.\n", graos);