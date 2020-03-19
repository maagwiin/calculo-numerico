%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: OK

clear; %limpa as variáveis
clc; %limpa a command window

n1 = input("Digite um número inteiro: ");
fatorial = 1;

for i = n1:-1:1
   fatorial = fatorial*i;
end

fprintf("\nO fatorial de %d é %d\n", n1, fatorial);