%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: 

clear; %limpa as variáveis
clc; %limpa a command window


val = input("Digite o valor: ");

a = 1;
s = val + a;

while(s > val)
    a = a/2;
    s = val + a;
end

prec = 2*a;

fprintf("\nUsando o Valor %d, a precisão da máquina é: ", val);
disp(prec);

