%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos e Guilherme Lopes de Oliveira

%Programa com precisão dupla

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

fprintf("\nUsando o Valor %d, a precisáo da máquina é: ", val);
disp(prec);


%
%   Por padrão, o matlab/octave declara as variáveis com precisão dupla, ou seja, cada variável tem um espaço
%   de 64 bits (8 Bytes), sendo 52 bits para a fração da variável, 11 bits para o expoente e 1 bit para o sinal.
%

