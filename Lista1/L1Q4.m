%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: OK

clear; %limpa as vari�veis
clc; %limpa a command window

n1 = input("Digite um n�mero inteiro: ");
fatorial = 1;

for i = n1:-1:1
   fatorial = fatorial*i;
end

fprintf("\nO fatorial de %d � %d\n", n1, fatorial);